	.text
	.file	"rotate.bc"
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
	subq	$88, %rsp
.Ltmp3:
	.cfi_offset %rbx, -40
.Ltmp4:
	.cfi_offset %r14, -32
.Ltmp5:
	.cfi_offset %r15, -24
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rdx
	movabsq	$.L.str.13, %rcx
	movabsq	$.L.str.14, %r8
	movabsq	$.L.str.15, %r9
	xorl	%eax, %eax
	movl	%eax, %r10d
	movabsq	$.L.str.16, %r11
	movl	$1, %eax
	movl	$5, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.args, %r15
	movq	$0, (%rsp)
	movq	%r11, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$5, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r10, -32(%rbp)         # 8-byte Spill
	movl	%r14d, -36(%rbp)        # 4-byte Spill
	movl	%ebx, -40(%rbp)         # 4-byte Spill
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	addq	$88, %rsp
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
	subq	$112, %rsp
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
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	-48(%rbp), %esi
	movl	%esi, run.values+8
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.17, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.18, %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.17, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -72(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, image_ID
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, active_drawable
	movq	-8(%rbp), %rdi
	movl	$.L.str.10, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_11
# BB#3:                                 # %if.then
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	subl	$2, %ecx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	jb	.LBB1_4
	jmp	.LBB1_17
.LBB1_17:                               # %if.then
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB1_8
	jmp	.LBB1_9
.LBB1_4:                                # %sw.bb
	cmpl	$5, -12(%rbp)
	jne	.LBB1_6
# BB#5:                                 # %if.then.12
	movabsq	$.L.str.10, %rdi
	movabsq	$rotvals, %rax
	movl	$8, %edx
	movl	$4, %ecx
	movq	-24(%rbp), %rsi
	movl	128(%rsi), %r8d
	movl	%r8d, rotvals
	movl	rotvals, %r8d
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%r8d, %eax
	movl	%edx, -100(%rbp)        # 4-byte Spill
	cltd
	idivl	%ecx
	movl	%edx, rotvals
	movq	-24(%rbp), %rsi
	movl	168(%rsi), %ecx
	movl	%ecx, rotvals+4
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movl	-100(%rbp), %edx        # 4-byte Reload
	callq	gimp_procedural_db_set_data
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB1_7
.LBB1_6:                                # %if.else
	movl	$1, -48(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_10
.LBB1_8:                                # %sw.bb.20
	movabsq	$.L.str.10, %rdi
	movabsq	$rotvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	$4, %ecx
	movl	rotvals, %edx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%edx, rotvals
	jmp	.LBB1_10
.LBB1_9:                                # %sw.default
	jmp	.LBB1_10
.LBB1_10:                               # %sw.epilog
	jmp	.LBB1_12
.LBB1_11:                               # %if.else.23
	movl	$1, -48(%rbp)
.LBB1_12:                               # %if.end.24
	cmpl	$3, -48(%rbp)
	jne	.LBB1_16
# BB#13:                                # %if.then.26
	callq	rotate
	cmpl	$1, -44(%rbp)
	je	.LBB1_15
# BB#14:                                # %if.then.28
	callq	gimp_displays_flush
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB1_15:                               # %if.end.30
	jmp	.LBB1_16
.LBB1_16:                               # %if.end.31
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
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
	.type	rotate,@function
rotate:                                 # @rotate
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
	subq	$144, %rsp
	movq	$0, -48(%rbp)
	cmpl	$0, rotvals
	jne	.LBB3_2
# BB#1:                                 # %if.then
	jmp	.LBB3_60
.LBB3_2:                                # %if.end
	cmpl	$0, rotvals+4
	je	.LBB3_9
# BB#3:                                 # %if.then.1
	movl	image_ID, %edi
	callq	gimp_selection_is_empty
	cmpl	$0, %eax
	jne	.LBB3_5
# BB#4:                                 # %if.then.3
	movabsq	$.L.str.19, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_message
	movq	active_drawable, %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gimp_drawable_detach
	jmp	.LBB3_60
.LBB3_5:                                # %if.end.6
	movq	active_drawable, %rax
	movl	(%rax), %edi
	callq	gimp_item_is_layer
	cmpl	$0, %eax
	je	.LBB3_8
# BB#6:                                 # %land.lhs.true
	movq	active_drawable, %rax
	movl	(%rax), %edi
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	je	.LBB3_8
# BB#7:                                 # %if.then.12
	movabsq	$.L.str.20, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_message
	movq	active_drawable, %rdi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	gimp_drawable_detach
	jmp	.LBB3_60
.LBB3_8:                                # %if.end.15
	jmp	.LBB3_12
.LBB3_9:                                # %if.else
	movq	active_drawable, %rax
	movl	(%rax), %edi
	callq	gimp_item_is_layer
	cmpl	$0, %eax
	jne	.LBB3_11
# BB#10:                                # %if.then.19
	movabsq	$.L.str.21, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_message
	movq	active_drawable, %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_drawable_detach
	jmp	.LBB3_60
.LBB3_11:                               # %if.end.22
	jmp	.LBB3_12
.LBB3_12:                               # %if.end.23
	movabsq	$.L.str.22, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	image_ID, %edi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	gimp_image_undo_group_start
	cmpl	$0, rotvals+4
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB3_55
# BB#13:                                # %if.then.28
	movl	image_ID, %edi
	callq	gimp_image_width
	movl	%eax, -60(%rbp)
	movl	image_ID, %edi
	callq	gimp_image_height
	movl	%eax, -64(%rbp)
	movq	active_drawable, %rdi
	callq	gimp_drawable_detach
	leaq	-24(%rbp), %rsi
	movl	image_ID, %edi
	callq	gimp_image_get_layers
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB3_14:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB3_17
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB3_14 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_drawable_get
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	rotate_drawable
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_detach
# BB#16:                                # %for.inc
                                        #   in Loop: Header=BB3_14 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB3_14
.LBB3_17:                               # %for.end
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movl	$0, -28(%rbp)
.LBB3_18:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	image_ID, %edi
	movl	-28(%rbp), %esi
	callq	gimp_image_find_next_guide
	movl	%eax, -28(%rbp)
	cmpl	$0, %eax
	je	.LBB3_20
# BB#19:                                # %while.body
                                        #   in Loop: Header=BB3_18 Depth=1
	movl	$1, %eax
	movl	%eax, %edi
	movl	$12, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	movq	%rax, -40(%rbp)
	movl	-28(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movl	image_ID, %edi
	movl	-28(%rbp), %esi
	callq	gimp_image_get_guide_orientation
	movq	-40(%rbp), %rdx
	movl	%eax, 4(%rdx)
	movl	image_ID, %edi
	movl	-28(%rbp), %esi
	callq	gimp_image_get_guide_position
	movq	-40(%rbp), %rdx
	movl	%eax, 8(%rdx)
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	callq	g_list_prepend
	movq	%rax, -48(%rbp)
	jmp	.LBB3_18
.LBB3_20:                               # %while.end
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB3_21:                               # %for.cond.40
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB3_24
# BB#22:                                # %for.body.42
                                        #   in Loop: Header=BB3_21 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	image_ID, %edi
	movq	-40(%rbp), %rax
	movl	(%rax), %esi
	callq	gimp_image_delete_guide
	movl	%eax, -88(%rbp)         # 4-byte Spill
# BB#23:                                # %for.inc.45
                                        #   in Loop: Header=BB3_21 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB3_21
.LBB3_24:                               # %for.end.46
	cmpl	$2, rotvals
	je	.LBB3_26
# BB#25:                                # %if.then.48
	xorl	%eax, %eax
	movl	image_ID, %edi
	movl	-64(%rbp), %esi
	movl	-60(%rbp), %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_image_resize
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB3_26:                               # %if.end.50
	cmpq	$0, -48(%rbp)
	je	.LBB3_54
# BB#27:                                # %if.then.52
	movl	rotvals(%rip), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	je	.LBB3_28
	jmp	.LBB3_61
.LBB3_61:                               # %if.then.52
	movl	-96(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB3_36
	jmp	.LBB3_62
.LBB3_62:                               # %if.then.52
	movl	-96(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB3_44
	jmp	.LBB3_52
.LBB3_28:                               # %sw.bb
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB3_29:                               # %for.cond.53
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB3_35
# BB#30:                                # %for.body.55
                                        #   in Loop: Header=BB3_29 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 4(%rax)
	jne	.LBB3_32
# BB#31:                                # %if.then.59
                                        #   in Loop: Header=BB3_29 Depth=1
	movl	image_ID, %edi
	movl	-64(%rbp), %eax
	movq	-40(%rbp), %rcx
	subl	8(%rcx), %eax
	movl	%eax, %esi
	callq	gimp_image_add_vguide
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB3_33
.LBB3_32:                               # %if.else.62
                                        #   in Loop: Header=BB3_29 Depth=1
	movl	image_ID, %edi
	movq	-40(%rbp), %rax
	movl	8(%rax), %esi
	callq	gimp_image_add_hguide
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB3_33:                               # %if.end.65
                                        #   in Loop: Header=BB3_29 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
# BB#34:                                # %for.inc.66
                                        #   in Loop: Header=BB3_29 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB3_29
.LBB3_35:                               # %for.end.68
	jmp	.LBB3_53
.LBB3_36:                               # %sw.bb.69
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB3_37:                               # %for.cond.70
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB3_43
# BB#38:                                # %for.body.72
                                        #   in Loop: Header=BB3_37 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 4(%rax)
	jne	.LBB3_40
# BB#39:                                # %if.then.76
                                        #   in Loop: Header=BB3_37 Depth=1
	movl	image_ID, %edi
	movl	-64(%rbp), %eax
	movq	-40(%rbp), %rcx
	subl	8(%rcx), %eax
	movl	%eax, %esi
	callq	gimp_image_add_hguide
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB3_41
.LBB3_40:                               # %if.else.80
                                        #   in Loop: Header=BB3_37 Depth=1
	movl	image_ID, %edi
	movl	-60(%rbp), %eax
	movq	-40(%rbp), %rcx
	subl	8(%rcx), %eax
	movl	%eax, %esi
	callq	gimp_image_add_vguide
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB3_41:                               # %if.end.84
                                        #   in Loop: Header=BB3_37 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
# BB#42:                                # %for.inc.85
                                        #   in Loop: Header=BB3_37 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB3_37
.LBB3_43:                               # %for.end.87
	jmp	.LBB3_53
.LBB3_44:                               # %sw.bb.88
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB3_45:                               # %for.cond.89
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB3_51
# BB#46:                                # %for.body.91
                                        #   in Loop: Header=BB3_45 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 4(%rax)
	jne	.LBB3_48
# BB#47:                                # %if.then.95
                                        #   in Loop: Header=BB3_45 Depth=1
	movl	image_ID, %edi
	movq	-40(%rbp), %rax
	movl	8(%rax), %esi
	callq	gimp_image_add_vguide
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB3_49
.LBB3_48:                               # %if.else.98
                                        #   in Loop: Header=BB3_45 Depth=1
	movl	image_ID, %edi
	movl	-60(%rbp), %eax
	movq	-40(%rbp), %rcx
	subl	8(%rcx), %eax
	movl	%eax, %esi
	callq	gimp_image_add_hguide
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB3_49:                               # %if.end.102
                                        #   in Loop: Header=BB3_45 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
# BB#50:                                # %for.inc.103
                                        #   in Loop: Header=BB3_45 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB3_45
.LBB3_51:                               # %for.end.105
	jmp	.LBB3_53
.LBB3_52:                               # %sw.default
	jmp	.LBB3_53
.LBB3_53:                               # %sw.epilog
	movq	-48(%rbp), %rdi
	callq	g_list_free
.LBB3_54:                               # %if.end.106
	jmp	.LBB3_59
.LBB3_55:                               # %if.else.107
	movl	image_ID, %edi
	callq	gimp_selection_is_empty
	cmpl	$0, %eax
	jne	.LBB3_58
# BB#56:                                # %land.lhs.true.110
	movq	active_drawable, %rax
	movl	(%rax), %edi
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	jne	.LBB3_58
# BB#57:                                # %if.then.114
	xorl	%eax, %eax
	movl	image_ID, %edi
	movq	active_drawable, %rcx
	movl	(%rcx), %esi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_selection_float
	movl	%eax, %edi
	callq	gimp_drawable_get
	movq	%rax, active_drawable
.LBB3_58:                               # %if.end.118
	movq	active_drawable, %rdi
	callq	rotate_drawable
	movq	active_drawable, %rdi
	callq	gimp_drawable_detach
.LBB3_59:                               # %if.end.119
	movl	image_ID, %edi
	callq	gimp_image_undo_group_end
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB3_60:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	rotate, .Lfunc_end3-rotate
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	rotate_drawable,@function
rotate_drawable:                        # @rotate_drawable
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
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -8(%rbp)
	movl	$0, -140(%rbp)
	movq	-8(%rbp), %rdi
	movl	4(%rdi), %eax
	movl	%eax, -108(%rbp)
	movq	-8(%rbp), %rdi
	movl	8(%rdi), %eax
	movl	%eax, -112(%rbp)
	movq	-8(%rbp), %rdi
	movl	12(%rdi), %eax
	movl	%eax, -120(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_layer_get_lock_alpha
	cmpl	$0, %eax
	je	.LBB4_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movl	$1, -140(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_layer_set_lock_alpha
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB4_2:                                # %if.end
	cmpl	$2, rotvals
	jne	.LBB4_14
# BB#3:                                 # %if.then.5
	movl	-108(%rbp), %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-176(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -180(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-180(%rbp), %esi        # 4-byte Reload
	divl	%esi
	addl	$1, %eax
	shll	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	leaq	-56(%rbp), %rdi
	xorl	%eax, %eax
	movq	-8(%rbp), %rsi
	movl	-108(%rbp), %r8d
	movl	-112(%rbp), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-104(%rbp), %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-8(%rbp), %rsi
	movl	-108(%rbp), %r8d
	movl	-112(%rbp), %r9d
	movl	%eax, %edx
	movl	%ecx, -184(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	-108(%rbp), %eax
	imull	-120(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc
	movq	%rax, -160(%rbp)
	movl	-108(%rbp), %ecx
	imull	-120(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc
	movq	%rax, -168(%rbp)
	movl	$0, -124(%rbp)
.LBB4_4:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_6 Depth 2
	movl	-124(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jge	.LBB4_13
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB4_4 Depth=1
	leaq	-56(%rbp), %rdi
	xorl	%edx, %edx
	movq	-160(%rbp), %rsi
	movl	-124(%rbp), %ecx
	movl	-108(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
	movl	$0, -128(%rbp)
.LBB4_6:                                # %for.cond.15
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-128(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jge	.LBB4_9
# BB#7:                                 # %for.body.18
                                        #   in Loop: Header=BB4_6 Depth=2
	movq	-168(%rbp), %rax
	movl	-128(%rbp), %ecx
	imull	-120(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-160(%rbp), %rdx
	movl	-108(%rbp), %ecx
	subl	$1, %ecx
	subl	-128(%rbp), %ecx
	imull	-120(%rbp), %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movslq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-192(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB4_6 Depth=2
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB4_6
.LBB4_9:                                # %for.end
                                        #   in Loop: Header=BB4_4 Depth=1
	leaq	-104(%rbp), %rdi
	xorl	%edx, %edx
	movq	-168(%rbp), %rsi
	movl	-112(%rbp), %eax
	subl	-124(%rbp), %eax
	subl	$1, %eax
	movl	-108(%rbp), %r8d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_set_row
	movl	$5, %eax
	movl	-124(%rbp), %ecx
	movl	%eax, -196(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-196(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_11
# BB#10:                                # %if.then.29
                                        #   in Loop: Header=BB4_4 Depth=1
	cvtsi2sdl	-124(%rbp), %xmm0
	cvtsi2sdl	-112(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -200(%rbp)        # 4-byte Spill
.LBB4_11:                               # %if.end.34
                                        #   in Loop: Header=BB4_4 Depth=1
	jmp	.LBB4_12
.LBB4_12:                               # %for.inc.35
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB4_4
.LBB4_13:                               # %for.end.37
	movq	-160(%rbp), %rdi
	callq	g_free
	movq	-168(%rbp), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	xorl	%esi, %esi
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-108(%rbp), %ecx
	movl	-112(%rbp), %r8d
	movl	%esi, -204(%rbp)        # 4-byte Spill
	movl	-204(%rbp), %edx        # 4-byte Reload
	movl	%eax, -208(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jmp	.LBB4_33
.LBB4_14:                               # %if.else
	movl	-108(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jle	.LBB4_16
# BB#15:                                # %cond.true
	movl	-108(%rbp), %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB4_17
.LBB4_16:                               # %cond.false
	movl	-112(%rbp), %eax
	movl	%eax, -116(%rbp)
.LBB4_17:                               # %cond.end
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-116(%rbp), %esi
	movl	-116(%rbp), %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_layer_resize
	movq	-8(%rbp), %r9
	movl	(%r9), %edi
	movl	%eax, -216(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_flush
	movl	-116(%rbp), %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-220(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -224(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-224(%rbp), %esi        # 4-byte Reload
	divl	%esi
	addl	$1, %eax
	movl	-116(%rbp), %r8d
	movl	%eax, -228(%rbp)        # 4-byte Spill
	movl	%r8d, -232(%rbp)        # 4-byte Spill
	callq	gimp_tile_height
	movl	-232(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -236(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%esi, %esi
	movl	%esi, %edx
	movl	-236(%rbp), %esi        # 4-byte Reload
	divl	%esi
	addl	$1, %eax
	movl	-228(%rbp), %r8d        # 4-byte Reload
	addl	%eax, %r8d
	movl	%r8d, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	leaq	-56(%rbp), %rdi
	xorl	%eax, %eax
	movq	-8(%rbp), %rsi
	movl	-116(%rbp), %r8d
	movl	-116(%rbp), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-104(%rbp), %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-8(%rbp), %rsi
	movl	-116(%rbp), %r8d
	movl	-116(%rbp), %r9d
	movl	%eax, %edx
	movl	%ecx, -240(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	-116(%rbp), %eax
	imull	-120(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc
	movq	%rax, -152(%rbp)
	cmpl	$1, rotvals
	jne	.LBB4_25
# BB#18:                                # %if.then.61
	movl	$0, -124(%rbp)
.LBB4_19:                               # %for.cond.62
                                        # =>This Inner Loop Header: Depth=1
	movl	-124(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jge	.LBB4_24
# BB#20:                                # %for.body.65
                                        #   in Loop: Header=BB4_19 Depth=1
	leaq	-56(%rbp), %rdi
	xorl	%edx, %edx
	movq	-152(%rbp), %rsi
	movl	-124(%rbp), %ecx
	movl	-108(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
	leaq	-104(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-152(%rbp), %rsi
	movl	-112(%rbp), %edx
	subl	-124(%rbp), %edx
	subl	$1, %edx
	movl	-108(%rbp), %r8d
	callq	gimp_pixel_rgn_set_col
	movl	$5, %ecx
	movl	-124(%rbp), %eax
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_22
# BB#21:                                # %if.then.71
                                        #   in Loop: Header=BB4_19 Depth=1
	cvtsi2sdl	-124(%rbp), %xmm0
	cvtsi2sdl	-112(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -244(%rbp)        # 4-byte Spill
.LBB4_22:                               # %if.end.76
                                        #   in Loop: Header=BB4_19 Depth=1
	jmp	.LBB4_23
.LBB4_23:                               # %for.inc.77
                                        #   in Loop: Header=BB4_19 Depth=1
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB4_19
.LBB4_24:                               # %for.end.79
	jmp	.LBB4_32
.LBB4_25:                               # %if.else.80
	movl	$0, -128(%rbp)
.LBB4_26:                               # %for.cond.81
                                        # =>This Inner Loop Header: Depth=1
	movl	-128(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jge	.LBB4_31
# BB#27:                                # %for.body.84
                                        #   in Loop: Header=BB4_26 Depth=1
	leaq	-56(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-152(%rbp), %rsi
	movl	-128(%rbp), %edx
	movl	-112(%rbp), %r8d
	callq	gimp_pixel_rgn_get_col
	leaq	-104(%rbp), %rdi
	xorl	%edx, %edx
	movq	-152(%rbp), %rsi
	movl	-108(%rbp), %ecx
	subl	-128(%rbp), %ecx
	subl	$1, %ecx
	movl	-112(%rbp), %r8d
	callq	gimp_pixel_rgn_set_row
	movl	$5, %ecx
	movl	-128(%rbp), %eax
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_29
# BB#28:                                # %if.then.90
                                        #   in Loop: Header=BB4_26 Depth=1
	cvtsi2sdl	-128(%rbp), %xmm0
	cvtsi2sdl	-108(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -248(%rbp)        # 4-byte Spill
.LBB4_29:                               # %if.end.95
                                        #   in Loop: Header=BB4_26 Depth=1
	jmp	.LBB4_30
.LBB4_30:                               # %for.inc.96
                                        #   in Loop: Header=BB4_26 Depth=1
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB4_26
.LBB4_31:                               # %for.end.98
	jmp	.LBB4_32
.LBB4_32:                               # %if.end.99
	movq	-152(%rbp), %rdi
	callq	g_free
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-8(%rbp), %rdi
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	xorl	%esi, %esi
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-112(%rbp), %ecx
	movl	-108(%rbp), %r8d
	movl	%esi, -256(%rbp)        # 4-byte Spill
	movl	-256(%rbp), %edx        # 4-byte Reload
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	xorl	%ecx, %ecx
	movq	-8(%rbp), %r9
	movl	(%r9), %edi
	movl	-112(%rbp), %esi
	movl	-108(%rbp), %edx
	movl	%ecx, -264(%rbp)        # 4-byte Spill
	movl	-264(%rbp), %r8d        # 4-byte Reload
	movl	%eax, -268(%rbp)        # 4-byte Spill
	callq	gimp_layer_resize
	movq	-8(%rbp), %r9
	movl	(%r9), %edi
	movl	%eax, -272(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_flush
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	movl	-112(%rbp), %edx
	movl	-108(%rbp), %r8d
	movl	%ecx, %esi
	movl	%edx, -276(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-276(%rbp), %ecx        # 4-byte Reload
	callq	gimp_drawable_update
	movl	%eax, -280(%rbp)        # 4-byte Spill
.LBB4_33:                               # %if.end.111
	leaq	-132(%rbp), %rsi
	leaq	-136(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_offsets
	movl	image_ID, %edi
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	gimp_image_width
	movl	image_ID, %edi
	movl	%eax, -288(%rbp)        # 4-byte Spill
	callq	gimp_image_height
	leaq	-132(%rbp), %rdi
	leaq	-136(%rbp), %rsi
	movl	-108(%rbp), %r8d
	movl	-112(%rbp), %r9d
	movl	-288(%rbp), %edx        # 4-byte Reload
	movl	%eax, %ecx
	callq	rotate_compute_offsets
	movq	-8(%rbp), %rsi
	movl	(%rsi), %edi
	movl	-132(%rbp), %esi
	movl	-136(%rbp), %edx
	callq	gimp_layer_set_offsets
	cmpl	$0, -140(%rbp)
	movl	%eax, -292(%rbp)        # 4-byte Spill
	je	.LBB4_35
# BB#34:                                # %if.then.119
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_layer_set_lock_alpha
	movl	%eax, -296(%rbp)        # 4-byte Spill
.LBB4_35:                               # %if.end.122
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end4:
	.size	rotate_drawable, .Lfunc_end4-rotate_drawable
	.cfi_endproc

	.align	16, 0x90
	.type	rotate_compute_offsets,@function
rotate_compute_offsets:                 # @rotate_compute_offsets
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	cmpl	$0, rotvals+4
	je	.LBB5_6
# BB#1:                                 # %if.then
	movl	rotvals(%rip), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	je	.LBB5_2
	jmp	.LBB5_10
.LBB5_10:                               # %if.then
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB5_3
	jmp	.LBB5_11
.LBB5_11:                               # %if.then
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB5_4
	jmp	.LBB5_5
.LBB5_2:                                # %sw.bb
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movl	-24(%rbp), %ecx
	movq	-16(%rbp), %rax
	subl	(%rax), %ecx
	subl	-32(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-36(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB5_5
.LBB5_3:                                # %sw.bb.2
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	subl	(%rcx), %eax
	subl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	subl	(%rcx), %eax
	subl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB5_5
.LBB5_4:                                # %sw.bb.7
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-20(%rbp), %ecx
	subl	-36(%rbp), %ecx
	subl	-28(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
.LBB5_5:                                # %sw.epilog
	jmp	.LBB5_9
.LBB5_6:                                # %if.else
	cmpl	$2, rotvals
	je	.LBB5_8
# BB#7:                                 # %if.then.10
	movl	$2, %eax
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edx
	movl	-28(%rbp), %esi
	subl	-32(%rbp), %esi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -60(%rbp)         # 4-byte Spill
	cltd
	movl	-56(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	-60(%rbp), %edi         # 4-byte Reload
	addl	%eax, %edi
	movq	-8(%rbp), %rcx
	movl	%edi, (%rcx)
	movq	-16(%rbp), %rcx
	movl	(%rcx), %eax
	movl	-32(%rbp), %edi
	subl	-28(%rbp), %edi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movl	%edi, %eax
	cltd
	idivl	%esi
	movl	-64(%rbp), %edi         # 4-byte Reload
	addl	%eax, %edi
	movq	-16(%rbp), %rcx
	movl	%edi, (%rcx)
.LBB5_8:                                # %if.end
	jmp	.LBB5_9
.LBB5_9:                                # %if.end.15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	rotate_compute_offsets, .Lfunc_end5-rotate_compute_offsets
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
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.size	query.args, 120

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
	.asciz	"angle"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Angle { 90 (1), 180 (2), 270 (3) } degrees"
	.size	.L.str.7, 43

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"everything"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Rotate the whole image { TRUE, FALSE }"
	.size	.L.str.9, 39

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"plug-in-rotate"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Rotates a layer or the whole image by 90, 180 or 270 degrees"
	.size	.L.str.11, 61

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"This plug-in does rotate the active layer or the whole image clockwise by multiples of 90 degrees. When the whole image is choosen, the image is resized if necessary."
	.size	.L.str.12, 167

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Sven Neumann <sven@gimp.org>, Adam D. Moss <adam@gimp.org>"
	.size	.L.str.13, 59

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Sven Neumann, Adam D. Moss"
	.size	.L.str.14, 27

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"v1.0 (2000/06/18)"
	.size	.L.str.15, 18

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"RGB*, INDEXED*, GRAY*"
	.size	.L.str.16, 22

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.17, 20

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"UTF-8"
	.size	.L.str.18, 6

	.type	image_ID,@object        # @image_ID
	.data
	.align	4
image_ID:
	.long	4294967295              # 0xffffffff
	.size	image_ID, 4

	.type	active_drawable,@object # @active_drawable
	.local	active_drawable
	.comm	active_drawable,8,8
	.type	rotvals,@object         # @rotvals
	.align	4
rotvals:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.size	rotvals, 8

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"You can not rotate the whole image if there's a selection."
	.size	.L.str.19, 59

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"You can not rotate the whole image if there's a floating selection."
	.size	.L.str.20, 68

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Sorry, channels and masks can not be rotated."
	.size	.L.str.21, 46

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Rotating"
	.size	.L.str.22, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
