	.text
	.file	"file-gif-save.bc"
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
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.19, %rsi
	movabsq	$.L.str.20, %rdx
	movabsq	$.L.str.21, %rax
	movabsq	$.L.str.22, %r9
	movabsq	$.L.str.23, %rcx
	movabsq	$.L.str.24, %r8
	movl	$1, %r10d
	movl	$9, %r11d
	xorl	%ebx, %ebx
	movabsq	$query.save_args, %r14
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
	movl	$9, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.25, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.26, %rsi
	movabsq	$.L.str.27, %rdx
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	gimp_register_save_handler
	movl	%eax, -84(%rbp)         # 4-byte Spill
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
	movl	$3, -44(%rbp)
	movl	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, run_mode
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.28, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.28, %rdi
	movabsq	$.L.str.29, %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.28, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	textdomain
	movq	%rax, -112(%rbp)        # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	$0, run.values+8
	movq	-8(%rbp), %rdi
	movl	$.L.str.18, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_35
# BB#3:                                 # %if.then
	movl	$0, -72(%rbp)
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -80(%rbp)
	movl	%ecx, -68(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %ecx
	movl	%ecx, -76(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpl	$0, run_mode
	je	.LBB1_5
# BB#4:                                 # %lor.lhs.false
	cmpl	$2, run_mode
	jne	.LBB1_6
.LBB1_5:                                # %if.then.15
	movabsq	$.L.str.18, %rdi
	xorl	%esi, %esi
	callq	gimp_ui_init
.LBB1_6:                                # %if.end
	leaq	-68(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	-64(%rbp), %rdi
	callq	sanity_check
	movl	%eax, -44(%rbp)
	cmpl	$3, -44(%rbp)
	jne	.LBB1_18
# BB#7:                                 # %if.then.18
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	run_mode(%rip), %eax
	testl	%eax, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB1_8
	jmp	.LBB1_40
.LBB1_40:                               # %if.then.18
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB1_11
	jmp	.LBB1_41
.LBB1_41:                               # %if.then.18
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB1_15
	jmp	.LBB1_16
.LBB1_8:                                # %sw.bb
	movabsq	$.L.str.18, %rdi
	movabsq	$gsvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	-68(%rbp), %edi
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	save_dialog
	cmpl	$0, %eax
	jne	.LBB1_10
# BB#9:                                 # %if.then.21
	movl	$4, -44(%rbp)
.LBB1_10:                               # %if.end.22
	jmp	.LBB1_17
.LBB1_11:                               # %sw.bb.23
	cmpl	$9, -12(%rbp)
	je	.LBB1_13
# BB#12:                                # %if.then.25
	movl	$1, -44(%rbp)
	jmp	.LBB1_14
.LBB1_13:                               # %if.else
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-24(%rbp), %rdx
	cmpl	$0, 208(%rdx)
	movl	%eax, %esi
	cmovnel	%ecx, %esi
	movl	%esi, gsvals
	movl	$1, gsvals+4
	movq	-24(%rbp), %rdx
	cmpl	$0, 248(%rdx)
	cmovnel	%ecx, %eax
	movl	%eax, gsvals+8
	movq	-24(%rbp), %rdx
	movl	288(%rdx), %eax
	movl	%eax, gsvals+12
	movq	-24(%rbp), %rdx
	movl	328(%rdx), %eax
	movl	%eax, gsvals+16
.LBB1_14:                               # %if.end.41
	jmp	.LBB1_17
.LBB1_15:                               # %sw.bb.42
	movabsq	$.L.str.18, %rdi
	movabsq	$gsvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB1_17
.LBB1_16:                               # %sw.default
	jmp	.LBB1_17
.LBB1_17:                               # %sw.epilog
	jmp	.LBB1_18
.LBB1_18:                               # %if.end.44
	movl	run_mode(%rip), %eax
	orl	$2, %eax
	subl	$2, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB1_19
	jmp	.LBB1_26
.LBB1_19:                               # %sw.bb.45
	movl	$22, -84(%rbp)
	cmpl	$0, gsvals+28
	je	.LBB1_21
# BB#20:                                # %if.then.47
	movl	-84(%rbp), %eax
	orl	$32, %eax
	movl	%eax, -84(%rbp)
.LBB1_21:                               # %if.end.48
	leaq	-68(%rbp), %rdi
	leaq	-76(%rbp), %rsi
	movabsq	$.L.str.30, %rdx
	movl	-84(%rbp), %ecx
	callq	gimp_export_image
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	jne	.LBB1_25
# BB#22:                                # %if.then.51
	movl	$4, run.values+8
	cmpl	$0, -72(%rbp)
	je	.LBB1_24
# BB#23:                                # %if.then.53
	movl	-72(%rbp), %edi
	callq	gimp_image_delete
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB1_24:                               # %if.end.55
	jmp	.LBB1_39
.LBB1_25:                               # %if.end.56
	jmp	.LBB1_27
.LBB1_26:                               # %sw.default.57
	jmp	.LBB1_27
.LBB1_27:                               # %sw.epilog.58
	cmpl	$3, -44(%rbp)
	jne	.LBB1_32
# BB#28:                                # %if.then.60
	leaq	-56(%rbp), %r8
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	movl	-68(%rbp), %esi
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %ecx
	callq	save_image
	cmpl	$0, %eax
	je	.LBB1_30
# BB#29:                                # %if.then.66
	movabsq	$.L.str.18, %rdi
	movabsq	$gsvals, %rax
	movl	$32, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB1_31
.LBB1_30:                               # %if.else.68
	movl	$0, -44(%rbp)
.LBB1_31:                               # %if.end.69
	movl	-72(%rbp), %edi
	callq	gimp_image_delete
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB1_32:                               # %if.end.71
	cmpl	$2, -48(%rbp)
	jne	.LBB1_34
# BB#33:                                # %if.then.73
	movl	-68(%rbp), %edi
	callq	gimp_image_delete
	movl	%eax, -152(%rbp)        # 4-byte Spill
.LBB1_34:                               # %if.end.75
	jmp	.LBB1_35
.LBB1_35:                               # %if.end.76
	cmpl	$3, -44(%rbp)
	je	.LBB1_38
# BB#36:                                # %land.lhs.true
	cmpq	$0, -56(%rbp)
	je	.LBB1_38
# BB#37:                                # %if.then.79
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
.LBB1_38:                               # %if.end.80
	movl	-44(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_39:                               # %return
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

	.align	16, 0x90
	.type	sanity_check,@function
sanity_check:                           # @sanity_check
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movl	(%rdx), %edi
	callq	gimp_image_width
	movl	%eax, -48(%rbp)
	movq	-24(%rbp), %rdx
	movl	(%rdx), %edi
	callq	gimp_image_height
	movl	%eax, -52(%rbp)
	cmpl	$65535, -48(%rbp)       # imm = 0xFFFF
	jg	.LBB3_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$65535, -52(%rbp)       # imm = 0xFFFF
	jle	.LBB3_3
.LBB3_2:                                # %if.then
	movabsq	$.L.str.31, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movl	$65535, %r9d            # imm = 0xFFFF
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB3_16
.LBB3_3:                                # %if.end
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_image_duplicate
	leaq	-44(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-24(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_image_get_layers
	movq	%rax, -40(%rbp)
	movl	$0, -56(%rbp)
.LBB3_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB3_15
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB3_4 Depth=1
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movslq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_drawable_offsets
	cmpl	$0, -60(%rbp)
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jl	.LBB3_9
# BB#6:                                 # %lor.lhs.false.10
                                        #   in Loop: Header=BB3_4 Depth=1
	cmpl	$0, -64(%rbp)
	jl	.LBB3_9
# BB#7:                                 # %lor.lhs.false.12
                                        #   in Loop: Header=BB3_4 Depth=1
	movl	-60(%rbp), %eax
	movslq	-56(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	gimp_drawable_width
	movl	-88(%rbp), %edi         # 4-byte Reload
	addl	%eax, %edi
	cmpl	-48(%rbp), %edi
	jg	.LBB3_9
# BB#8:                                 # %lor.lhs.false.17
                                        #   in Loop: Header=BB3_4 Depth=1
	movl	-64(%rbp), %eax
	movslq	-56(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_drawable_height
	movl	-92(%rbp), %edi         # 4-byte Reload
	addl	%eax, %edi
	cmpl	-52(%rbp), %edi
	jle	.LBB3_13
.LBB3_9:                                # %if.then.23
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	cmpl	$1, run_mode
	je	.LBB3_11
# BB#10:                                # %lor.lhs.false.25
	callq	bad_bounds_dialog
	cmpl	$0, %eax
	je	.LBB3_12
.LBB3_11:                               # %if.then.27
	xorl	%eax, %eax
	movq	-24(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-48(%rbp), %esi
	movl	-52(%rbp), %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gimp_image_crop
	movl	$3, -4(%rbp)
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB3_16
.LBB3_12:                               # %if.else
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_image_delete
	movl	$4, -4(%rbp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB3_16
.LBB3_13:                               # %if.end.30
                                        #   in Loop: Header=BB3_4 Depth=1
	jmp	.LBB3_14
.LBB3_14:                               # %for.inc
                                        #   in Loop: Header=BB3_4 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB3_4
.LBB3_15:                               # %for.end
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movl	$3, -4(%rbp)
.LBB3_16:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	sanity_check, .Lfunc_end3-sanity_check
	.cfi_endproc

	.align	16, 0x90
	.type	save_dialog,@function
save_dialog:                            # @save_dialog
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
	pushq	%rbx
	subq	$392, %rsp              # imm = 0x188
.Ltmp20:
	.cfi_offset %rbx, -24
	leaq	-92(%rbp), %rsi
	movl	%edi, -12(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -96(%rbp)
	movl	-12(%rbp), %edi
	callq	gimp_image_get_layers
	movabsq	$.L.str.30, %rdi
	cmpl	$1, -92(%rbp)
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -96(%rbp)
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.18, %rsi
	movq	%rax, %rdi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	-120(%rbp), %rdx        # 8-byte Reload
	callq	gimp_export_dialog_new
	movq	%rax, -48(%rbp)
	callq	gtk_builder_new
	movq	%rax, -24(%rbp)
	callq	gimp_data_directory
	movabsq	$.L.str.36, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	leaq	-40(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gtk_builder_add_from_file
	cmpl	$0, %eax
	jne	.LBB4_5
# BB#1:                                 # %if.then
	movabsq	$.L.str.37, %rdi
	callq	gettext
	movq	-32(%rbp), %rsi
	cmpq	$0, -40(%rbp)
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	je	.LBB4_3
# BB#2:                                 # %cond.true
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB4_4
.LBB4_3:                                # %cond.false
	movabsq	$.L.str.38, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB4_4
.LBB4_4:                                # %cond.end
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_printerr
.LBB4_5:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-48(%rbp), %rdi
	callq	gimp_export_dialog_get_content_area
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.39, %rsi
	movq	-24(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_builder_get_object
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movabsq	$.L.str.10, %rsi
	movabsq	$gsvals, %rcx
	movq	-24(%rbp), %rdi
	movl	gsvals, %edx
	callq	file_gif_toggle_button_init
	movabsq	$.L.str.40, %rsi
	movabsq	$gsvals, %rcx
	addq	$4, %rcx
	movq	-24(%rbp), %rdi
	movl	gsvals+4, %edx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	file_gif_toggle_button_init
	movabsq	$.L.str.41, %rsi
	movabsq	$gsvals, %rcx
	addq	$28, %rcx
	movq	-24(%rbp), %rdi
	movl	gsvals+28, %edx
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	file_gif_toggle_button_init
	movabsq	$.L.str.42, %rsi
	movq	-24(%rbp), %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_builder_get_object
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_view_get_buffer
	movq	%rax, -64(%rbp)
	cmpq	$0, globalcomment
	je	.LBB4_7
# BB#6:                                 # %if.then.25
	movq	globalcomment, %rdi
	callq	g_free
.LBB4_7:                                # %if.end.26
	movabsq	$.L.str.43, %rsi
	movl	-12(%rbp), %edi
	callq	gimp_image_get_parasite
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB4_9
# BB#8:                                 # %if.then.29
	movq	-88(%rbp), %rdi
	callq	gimp_parasite_data
	movq	-88(%rbp), %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_parasite_data_size
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_strndup
	movq	%rax, globalcomment
	jmp	.LBB4_10
.LBB4_9:                                # %if.else
	callq	gimp_get_default_comment
	movq	%rax, globalcomment
.LBB4_10:                               # %if.end.34
	movq	-88(%rbp), %rdi
	callq	gimp_parasite_free
	cmpq	$0, globalcomment
	je	.LBB4_12
# BB#11:                                # %if.then.36
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-64(%rbp), %rdi
	movq	globalcomment, %rsi
	callq	gtk_text_buffer_set_text
.LBB4_12:                               # %if.end.37
	movabsq	$.L.str.44, %rsi
	movabsq	$comment_entry_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdi
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	-224(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.45, %rsi
	movabsq	$gsvals, %rcx
	addq	$8, %rcx
	movq	-24(%rbp), %rdi
	movl	gsvals+8, %edx
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	file_gif_toggle_button_init
	movabsq	$.L.str.46, %rsi
	movabsq	$gsvals, %rcx
	addq	$12, %rcx
	movq	-24(%rbp), %rdi
	movl	gsvals+12, %edx
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	file_gif_spin_button_int_init
	movabsq	$.L.str.48, %rdi
	movq	-24(%rbp), %rcx
	movl	gsvals+16, %edx
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movl	%edx, -252(%rbp)        # 4-byte Spill
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.49, %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.50, %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.47, %rsi
	movabsq	$gsvals, %rcx
	addq	$16, %rcx
	xorl	%r9d, %r9d
	movl	$1, %edx
	movl	$2, %r10d
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-264(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movl	-252(%rbp), %r11d       # 4-byte Reload
	movl	%edx, -292(%rbp)        # 4-byte Spill
	movl	%r11d, %edx
	movq	-272(%rbp), %r8         # 8-byte Reload
	movq	-280(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movl	$1, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$2, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%r10d, -296(%rbp)       # 4-byte Spill
	callq	file_gif_combo_box_int_init
	movabsq	$.L.str.51, %rsi
	movabsq	$gsvals, %rcx
	addq	$20, %rcx
	movq	-24(%rbp), %rdi
	movl	gsvals+20, %edx
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	file_gif_toggle_button_init
	movabsq	$.L.str.52, %rsi
	movabsq	$gsvals, %rcx
	addq	$24, %rcx
	movq	-24(%rbp), %rdi
	movl	gsvals+24, %edx
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	file_gif_toggle_button_init
	movabsq	$.L.str.53, %rsi
	movq	-24(%rbp), %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_builder_get_object
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.41, %rsi
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_builder_get_object
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movl	-96(%rbp), %esi
	callq	gtk_widget_set_sensitive
	cmpl	$0, -96(%rbp)
	jne	.LBB4_14
# BB#13:                                # %if.then.54
	movabsq	$.L.str.54, %rdi
	movq	-72(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
.LBB4_14:                               # %if.end.56
	movabsq	$.L.str.55, %rsi
	movabsq	$.L.str.56, %rcx
	movl	$2, %r8d
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_bind_property
	movq	-48(%rbp), %rdi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-48(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %eax
	movl	%eax, -100(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-100(%rbp), %eax
	addq	$392, %rsp              # imm = 0x188
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	save_dialog, .Lfunc_end4-save_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	save_image,@function
save_image:                             # @save_image
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$3560, %rsp             # imm = 0xDE8
.Ltmp24:
	.cfi_offset %rbx, -56
.Ltmp25:
	.cfi_offset %r12, -48
.Ltmp26:
	.cfi_offset %r13, -40
.Ltmp27:
	.cfi_offset %r14, -32
.Ltmp28:
	.cfi_offset %r15, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movq	%r8, -80(%rbp)
	movl	$0, -3256(%rbp)
	movl	$0, -3260(%rbp)
	movl	$0, -3296(%rbp)
	movb	$0, -3348(%rbp)
	movl	$-1, -3352(%rbp)
	cmpq	$0, globalcomment
	je	.LBB5_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, comment_was_edited
	je	.LBB5_3
# BB#2:                                 # %if.then
	movabsq	$.L.str.43, %rdi
	movl	$1, %esi
	movq	globalcomment, %rax
	movq	%rdi, -3376(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -3380(%rbp)       # 4-byte Spill
	callq	strlen
	addq	$1, %rax
	movl	%eax, %esi
	movq	globalcomment, %rcx
	movq	-3376(%rbp), %rdi       # 8-byte Reload
	movl	-3380(%rbp), %edx       # 4-byte Reload
	movl	%esi, -3384(%rbp)       # 4-byte Spill
	movl	%edx, %esi
	movl	-3384(%rbp), %edx       # 4-byte Reload
	callq	gimp_parasite_new
	movq	%rax, comment_parasite
	movl	-68(%rbp), %edi
	movq	comment_parasite, %rsi
	callq	gimp_image_attach_parasite
	movq	comment_parasite, %rdi
	movl	%eax, -3388(%rbp)       # 4-byte Spill
	callq	gimp_parasite_free
	movq	$0, comment_parasite
.LBB5_3:                                # %if.end
	cmpl	$0, gsvals+4
	je	.LBB5_12
# BB#4:                                 # %land.lhs.true.4
	cmpq	$0, globalcomment
	je	.LBB5_12
# BB#5:                                 # %if.then.6
	movq	globalcomment, %rax
	movq	%rax, -3360(%rbp)
	movq	-3360(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -3364(%rbp)
.LBB5_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -3364(%rbp)
	je	.LBB5_11
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-3360(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$127, %ecx
	jle	.LBB5_9
# BB#8:                                 # %if.then.13
	movabsq	$.L.str.60, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movq	globalcomment, %rdi
	callq	g_free
	movq	$0, globalcomment
	jmp	.LBB5_11
.LBB5_9:                                # %if.end.15
                                        #   in Loop: Header=BB5_6 Depth=1
	jmp	.LBB5_10
.LBB5_10:                               # %for.inc
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-3360(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -3360(%rbp)
	movl	-3364(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -3364(%rbp)
	jmp	.LBB5_6
.LBB5_11:                               # %for.end
	jmp	.LBB5_12
.LBB5_12:                               # %if.end.16
	leaq	-3292(%rbp), %rsi
	movl	-60(%rbp), %edi
	callq	gimp_image_get_layers
	movq	%rax, -3288(%rbp)
	movq	-3288(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_type
	movl	%eax, -140(%rbp)
	cmpl	$1, -3292(%rbp)
	jle	.LBB5_14
# BB#13:                                # %if.then.21
	movl	$1, -3296(%rbp)
.LBB5_14:                               # %if.end.22
	cmpl	$0, gsvals+4
	je	.LBB5_16
# BB#15:                                # %if.then.24
	movl	$1, -3296(%rbp)
.LBB5_16:                               # %if.end.25
	movl	-140(%rbp), %eax
	addl	$-2, %eax
	movl	%eax, %ecx
	subl	$3, %eax
	movq	%rcx, -3400(%rbp)       # 8-byte Spill
	movl	%eax, -3404(%rbp)       # 4-byte Spill
	ja	.LBB5_33
# BB#89:                                # %if.end.25
	movq	-3400(%rbp), %rax       # 8-byte Reload
	movq	.LJTI5_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_17:                               # %sw.bb
	movl	$1, -3296(%rbp)
.LBB5_18:                               # %sw.bb.26
	leaq	-3264(%rbp), %rsi
	movl	-60(%rbp), %edi
	callq	gimp_image_get_colormap
	leaq	-3344(%rbp), %rdi
	movq	%rax, -3240(%rbp)
	callq	gimp_context_get_background
	leaq	-3344(%rbp), %rdi
	leaq	-3345(%rbp), %rsi
	leaq	-3346(%rbp), %rdx
	leaq	-3347(%rbp), %rcx
	movl	%eax, -3408(%rbp)       # 4-byte Spill
	callq	gimp_rgb_get_uchar
	movl	$0, -3268(%rbp)
.LBB5_19:                               # %for.cond.29
                                        # =>This Inner Loop Header: Depth=1
	movl	-3268(%rbp), %eax
	cmpl	-3264(%rbp), %eax
	jge	.LBB5_22
# BB#20:                                # %for.body.32
                                        #   in Loop: Header=BB5_19 Depth=1
	movq	-3240(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -3240(%rbp)
	movzbl	(%rax), %edx
	movslq	-3268(%rbp), %rax
	movl	%edx, -1184(%rbp,%rax,4)
	movq	-3240(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -3240(%rbp)
	movzbl	(%rax), %edx
	movslq	-3268(%rbp), %rax
	movl	%edx, -2208(%rbp,%rax,4)
	movq	-3240(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -3240(%rbp)
	movzbl	(%rax), %edx
	movslq	-3268(%rbp), %rax
	movl	%edx, -3232(%rbp,%rax,4)
# BB#21:                                # %for.inc.44
                                        #   in Loop: Header=BB5_19 Depth=1
	movl	-3268(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -3268(%rbp)
	jmp	.LBB5_19
.LBB5_22:                               # %for.end.45
	jmp	.LBB5_23
.LBB5_23:                               # %for.cond.46
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -3268(%rbp)       # imm = 0x100
	jge	.LBB5_26
# BB#24:                                # %for.body.49
                                        #   in Loop: Header=BB5_23 Depth=1
	movzbl	-3345(%rbp), %eax
	movslq	-3268(%rbp), %rcx
	movl	%eax, -1184(%rbp,%rcx,4)
	movzbl	-3346(%rbp), %eax
	movslq	-3268(%rbp), %rcx
	movl	%eax, -2208(%rbp,%rcx,4)
	movzbl	-3347(%rbp), %eax
	movslq	-3268(%rbp), %rcx
	movl	%eax, -3232(%rbp,%rcx,4)
# BB#25:                                # %for.inc.59
                                        #   in Loop: Header=BB5_23 Depth=1
	movl	-3268(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -3268(%rbp)
	jmp	.LBB5_23
.LBB5_26:                               # %for.end.61
	jmp	.LBB5_34
.LBB5_27:                               # %sw.bb.62
	movl	$1, -3296(%rbp)
.LBB5_28:                               # %sw.bb.63
	movl	$256, -3264(%rbp)       # imm = 0x100
	movl	$0, -3268(%rbp)
.LBB5_29:                               # %for.cond.64
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -3268(%rbp)       # imm = 0x100
	jge	.LBB5_32
# BB#30:                                # %for.body.67
                                        #   in Loop: Header=BB5_29 Depth=1
	movl	-3268(%rbp), %eax
	movslq	-3268(%rbp), %rcx
	movl	%eax, -3232(%rbp,%rcx,4)
	movslq	-3268(%rbp), %rcx
	movl	%eax, -2208(%rbp,%rcx,4)
	movslq	-3268(%rbp), %rcx
	movl	%eax, -1184(%rbp,%rcx,4)
# BB#31:                                # %for.inc.74
                                        #   in Loop: Header=BB5_29 Depth=1
	movl	-3268(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -3268(%rbp)
	jmp	.LBB5_29
.LBB5_32:                               # %for.end.76
	jmp	.LBB5_34
.LBB5_33:                               # %sw.default
	movabsq	$.L.str.61, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$0, -44(%rbp)
	jmp	.LBB5_88
.LBB5_34:                               # %sw.epilog
	movl	$255, -3268(%rbp)
.LBB5_35:                               # %for.cond.78
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -3268(%rbp)
	jl	.LBB5_40
# BB#36:                                # %for.body.81
                                        #   in Loop: Header=BB5_35 Depth=1
	movl	$0, -3368(%rbp)
	movslq	-3268(%rbp), %rax
	movl	-1184(%rbp,%rax,4), %ecx
	movzbl	-3345(%rbp), %edx
	subl	%edx, %ecx
	movslq	-3268(%rbp), %rax
	movl	-1184(%rbp,%rax,4), %edx
	movzbl	-3345(%rbp), %esi
	subl	%esi, %edx
	imull	%edx, %ecx
	addl	-3368(%rbp), %ecx
	movl	%ecx, -3368(%rbp)
	movslq	-3268(%rbp), %rax
	movl	-2208(%rbp,%rax,4), %ecx
	movzbl	-3346(%rbp), %edx
	subl	%edx, %ecx
	movslq	-3268(%rbp), %rax
	movl	-2208(%rbp,%rax,4), %edx
	movzbl	-3346(%rbp), %esi
	subl	%esi, %edx
	imull	%edx, %ecx
	addl	-3368(%rbp), %ecx
	movl	%ecx, -3368(%rbp)
	movslq	-3268(%rbp), %rax
	movl	-3232(%rbp,%rax,4), %ecx
	movzbl	-3347(%rbp), %edx
	subl	%edx, %ecx
	movslq	-3268(%rbp), %rax
	movl	-3232(%rbp,%rax,4), %edx
	movzbl	-3347(%rbp), %esi
	subl	%esi, %edx
	imull	%edx, %ecx
	addl	-3368(%rbp), %ecx
	movl	%ecx, -3368(%rbp)
	movl	-3368(%rbp), %ecx
	cmpl	-3352(%rbp), %ecx
	ja	.LBB5_38
# BB#37:                                # %if.then.112
                                        #   in Loop: Header=BB5_35 Depth=1
	movl	-3268(%rbp), %eax
	movb	%al, %cl
	movb	%cl, -3348(%rbp)
	movl	-3368(%rbp), %eax
	movl	%eax, -3352(%rbp)
.LBB5_38:                               # %if.end.114
                                        #   in Loop: Header=BB5_35 Depth=1
	jmp	.LBB5_39
.LBB5_39:                               # %for.inc.115
                                        #   in Loop: Header=BB5_35 Depth=1
	movl	-3268(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -3268(%rbp)
	jmp	.LBB5_35
.LBB5_40:                               # %for.end.117
	movabsq	$.L.str.62, %rsi
	movq	-56(%rbp), %rdi
	callq	fopen
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB5_42
# BB#41:                                # %if.then.120
	movq	-80(%rbp), %rdi
	movq	%rdi, -3416(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -3420(%rbp)       # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.63, %rdi
	movl	%eax, -3424(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-56(%rbp), %rdi
	movq	%rax, -3432(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -3440(%rbp)       # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-3416(%rbp), %rdi       # 8-byte Reload
	movl	-3420(%rbp), %esi       # 4-byte Reload
	movl	-3424(%rbp), %edx       # 4-byte Reload
	movq	-3432(%rbp), %rcx       # 8-byte Reload
	movq	-3440(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -44(%rbp)
	jmp	.LBB5_88
.LBB5_42:                               # %if.end.128
	movabsq	$.L.str.64, %rdi
	callq	gettext
	movq	-56(%rbp), %rdi
	movq	%rax, -3448(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-3448(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	cmpl	$256, -3264(%rbp)       # imm = 0x100
	movl	%eax, -3452(%rbp)       # 4-byte Spill
	jge	.LBB5_44
# BB#43:                                # %if.then.134
	xorl	%eax, %eax
	movl	$1, %ecx
	movl	-3264(%rbp), %edx
	cmpl	$5, -140(%rbp)
	cmovel	%ecx, %eax
	addl	%eax, %edx
	movl	%edx, %edi
	callq	colors_to_bpp
	movl	%eax, -3252(%rbp)
	movl	%eax, -3256(%rbp)
	jmp	.LBB5_47
.LBB5_44:                               # %if.else
	movl	$256, %edi              # imm = 0x100
	callq	colors_to_bpp
	movl	%eax, -3252(%rbp)
	movl	%eax, -3256(%rbp)
	cmpl	$5, -140(%rbp)
	jne	.LBB5_46
# BB#45:                                # %if.then.142
	movabsq	$.L.str.65, %rdi
	movb	$0, %al
	callq	g_printerr
.LBB5_46:                               # %if.end.143
	jmp	.LBB5_47
.LBB5_47:                               # %if.end.144
	movl	-60(%rbp), %edi
	callq	gimp_image_width
	movl	%eax, -3248(%rbp)
	movl	-60(%rbp), %edi
	callq	gimp_image_height
	movabsq	$get_pixel, %rcx
	leaq	-3232(%rbp), %rdx
	leaq	-2208(%rbp), %rsi
	leaq	-1184(%rbp), %r8
	movl	%eax, -3244(%rbp)
	movl	gsvals, %eax
	movl	%eax, Interlace
	movq	-152(%rbp), %rdi
	movl	-3296(%rbp), %eax
	movl	-3248(%rbp), %r9d
	movl	-3244(%rbp), %r10d
	movzbl	-3348(%rbp), %r11d
	movl	-3252(%rbp), %ebx
	movq	%rsi, -3464(%rbp)       # 8-byte Spill
	movl	%eax, %esi
	movq	%rdx, -3472(%rbp)       # 8-byte Spill
	movl	%r9d, %edx
	movq	%rcx, -3480(%rbp)       # 8-byte Spill
	movl	%r10d, %ecx
	movq	%r8, -3488(%rbp)        # 8-byte Spill
	movl	%r11d, %r8d
	movl	%ebx, %r9d
	movq	-3488(%rbp), %r14       # 8-byte Reload
	movq	%r14, (%rsp)
	movq	-3464(%rbp), %r15       # 8-byte Reload
	movq	%r15, 8(%rsp)
	movq	-3472(%rbp), %r12       # 8-byte Reload
	movq	%r12, 16(%rsp)
	movq	-3480(%rbp), %r13       # 8-byte Reload
	movq	%r13, 24(%rsp)
	callq	gif_encode_header
	cmpl	$1, -3292(%rbp)
	jle	.LBB5_50
# BB#48:                                # %land.lhs.true.152
	cmpl	$0, gsvals+8
	je	.LBB5_50
# BB#49:                                # %if.then.154
	xorl	%esi, %esi
	movq	-152(%rbp), %rdi
	callq	gif_encode_loop_ext
.LBB5_50:                               # %if.end.155
	cmpl	$0, gsvals+4
	je	.LBB5_53
# BB#51:                                # %land.lhs.true.157
	cmpq	$0, globalcomment
	je	.LBB5_53
# BB#52:                                # %if.then.159
	movq	-152(%rbp), %rdi
	movq	globalcomment, %rsi
	callq	gif_encode_comment_ext
.LBB5_53:                               # %if.end.160
	movl	$0, cur_progress
	movl	-3292(%rbp), %eax
	imull	-3244(%rbp), %eax
	movl	%eax, max_progress
	movl	-3292(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -3268(%rbp)
.LBB5_54:                               # %for.cond.163
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -3268(%rbp)
	jl	.LBB5_87
# BB#55:                                # %for.body.166
                                        #   in Loop: Header=BB5_54 Depth=1
	movslq	-3268(%rbp), %rax
	movq	-3288(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_drawable_type
	movl	%eax, -140(%rbp)
	movslq	-3268(%rbp), %rcx
	movq	-3288(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	callq	gimp_drawable_get
	leaq	-3276(%rbp), %rsi
	leaq	-3280(%rbp), %rdx
	movq	%rax, -136(%rbp)
	movslq	-3268(%rbp), %rax
	movq	-3288(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_drawable_offsets
	leaq	-128(%rbp), %rdi
	xorl	%r8d, %r8d
	movq	-136(%rbp), %rcx
	movl	4(%rcx), %r9d
	movl	%r9d, -3248(%rbp)
	movq	-136(%rbp), %rcx
	movl	8(%rcx), %r9d
	movl	%r9d, -3244(%rbp)
	movq	-136(%rbp), %rcx
	movl	4(%rcx), %r9d
	movl	%r9d, rowstride
	movq	-136(%rbp), %rsi
	movq	-136(%rbp), %rcx
	movl	4(%rcx), %r9d
	movq	-136(%rbp), %rcx
	movl	8(%rcx), %r10d
	movl	%r8d, %edx
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -3492(%rbp)       # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movb	$1, %r11b
	movq	-136(%rbp), %rsi
	movl	4(%rsi), %eax
	movq	-136(%rbp), %rsi
	imull	8(%rsi), %eax
	cmpl	$5, -140(%rbp)
	movl	%eax, -3496(%rbp)       # 4-byte Spill
	movb	%r11b, -3497(%rbp)      # 1-byte Spill
	je	.LBB5_57
# BB#56:                                # %lor.rhs
                                        #   in Loop: Header=BB5_54 Depth=1
	cmpl	$3, -140(%rbp)
	sete	%al
	movb	%al, -3497(%rbp)        # 1-byte Spill
.LBB5_57:                               # %lor.end
                                        #   in Loop: Header=BB5_54 Depth=1
	movb	-3497(%rbp), %al        # 1-byte Reload
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	$1, %ecx
	movl	$2, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	-3496(%rbp), %edx       # 4-byte Reload
	imull	%ecx, %edx
	movl	%edx, %ecx
	movl	%ecx, %edi
	callq	g_malloc_n
	leaq	-128(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, pixels
	movq	pixels, %rsi
	movq	-136(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-136(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%ecx, %edx
	callq	gimp_pixel_rgn_get_rect
	cmpl	$5, -140(%rbp)
	je	.LBB5_59
# BB#58:                                # %lor.lhs.false
                                        #   in Loop: Header=BB5_54 Depth=1
	cmpl	$3, -140(%rbp)
	jne	.LBB5_60
.LBB5_59:                               # %if.then.196
                                        #   in Loop: Header=BB5_54 Depth=1
	movq	pixels, %rdi
	movq	-136(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-136(%rbp), %rax
	imull	8(%rax), %ecx
	movl	-3264(%rbp), %edx
	movq	%rdi, -3512(%rbp)       # 8-byte Spill
	movl	%edx, %edi
	movl	%ecx, -3516(%rbp)       # 4-byte Spill
	callq	colors_to_bpp
	movl	%eax, %edi
	callq	bpp_to_colors
	leaq	-3264(%rbp), %rcx
	movq	-3512(%rbp), %rdi       # 8-byte Reload
	movl	-3516(%rbp), %esi       # 4-byte Reload
	movl	%eax, %edx
	callq	find_unused_ia_colour
	movl	%eax, -3272(%rbp)
	movq	pixels, %rdi
	movl	-3272(%rbp), %esi
	movq	-136(%rbp), %rcx
	movl	4(%rcx), %eax
	movq	-136(%rbp), %rcx
	imull	8(%rcx), %eax
	movl	%eax, %edx
	callq	special_flatten_indexed_alpha
	jmp	.LBB5_61
.LBB5_60:                               # %if.else.206
                                        #   in Loop: Header=BB5_54 Depth=1
	movl	$-1, -3272(%rbp)
.LBB5_61:                               # %if.end.207
                                        #   in Loop: Header=BB5_54 Depth=1
	movl	-3264(%rbp), %edi
	callq	colors_to_bpp
	movl	%eax, -3252(%rbp)
	movl	-3252(%rbp), %eax
	cmpl	-3256(%rbp), %eax
	je	.LBB5_63
# BB#62:                                # %if.then.211
                                        #   in Loop: Header=BB5_54 Depth=1
	jmp	.LBB5_63
.LBB5_63:                               # %if.end.212
                                        #   in Loop: Header=BB5_54 Depth=1
	movl	-3252(%rbp), %eax
	cmpl	-3256(%rbp), %eax
	jle	.LBB5_65
# BB#64:                                # %cond.true
                                        #   in Loop: Header=BB5_54 Depth=1
	movl	-3252(%rbp), %eax
	movl	%eax, -3520(%rbp)       # 4-byte Spill
	jmp	.LBB5_66
.LBB5_65:                               # %cond.false
                                        #   in Loop: Header=BB5_54 Depth=1
	movl	-3256(%rbp), %eax
	movl	%eax, -3520(%rbp)       # 4-byte Spill
.LBB5_66:                               # %cond.end
                                        #   in Loop: Header=BB5_54 Depth=1
	movl	-3520(%rbp), %eax       # 4-byte Reload
	movl	%eax, -3260(%rbp)
	cmpl	$0, -3296(%rbp)
	je	.LBB5_82
# BB#67:                                # %if.then.217
                                        #   in Loop: Header=BB5_54 Depth=1
	cmpl	$0, -3268(%rbp)
	jle	.LBB5_70
# BB#68:                                # %land.lhs.true.220
                                        #   in Loop: Header=BB5_54 Depth=1
	cmpl	$0, gsvals+24
	jne	.LBB5_70
# BB#69:                                # %if.then.222
                                        #   in Loop: Header=BB5_54 Depth=1
	movl	-3268(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-3288(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	callq	gimp_item_get_name
	movq	%rax, -3312(%rbp)
	movq	-3312(%rbp), %rdi
	callq	parse_disposal_tag
	movl	%eax, -3304(%rbp)
	movq	-3312(%rbp), %rdi
	callq	g_free
	jmp	.LBB5_71
.LBB5_70:                               # %if.else.228
                                        #   in Loop: Header=BB5_54 Depth=1
	movl	gsvals+16, %eax
	movl	%eax, -3304(%rbp)
.LBB5_71:                               # %if.end.229
                                        #   in Loop: Header=BB5_54 Depth=1
	movslq	-3268(%rbp), %rax
	movq	-3288(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_item_get_name
	movq	%rax, -3312(%rbp)
	movq	-3312(%rbp), %rdi
	callq	parse_ms_tag
	movl	%eax, -3300(%rbp)
	movq	-3312(%rbp), %rdi
	callq	g_free
	cmpl	$0, -3300(%rbp)
	jl	.LBB5_73
# BB#72:                                # %lor.lhs.false.236
                                        #   in Loop: Header=BB5_54 Depth=1
	cmpl	$0, gsvals+20
	je	.LBB5_74
.LBB5_73:                               # %if.then.238
                                        #   in Loop: Header=BB5_54 Depth=1
	movl	$10, %eax
	movl	gsvals+12, %ecx
	addl	$5, %ecx
	movl	%eax, -3524(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-3524(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	movl	%eax, -3300(%rbp)
	jmp	.LBB5_75
.LBB5_74:                               # %if.else.240
                                        #   in Loop: Header=BB5_54 Depth=1
	movl	$10, %eax
	movl	-3300(%rbp), %ecx
	addl	$5, %ecx
	movl	%eax, -3528(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-3528(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	movl	%eax, -3300(%rbp)
.LBB5_75:                               # %if.end.243
                                        #   in Loop: Header=BB5_54 Depth=1
	cmpl	$1, -3292(%rbp)
	jle	.LBB5_81
# BB#76:                                # %land.lhs.true.246
                                        #   in Loop: Header=BB5_54 Depth=1
	cmpl	$0, gsvals+8
	je	.LBB5_81
# BB#77:                                # %land.lhs.true.248
                                        #   in Loop: Header=BB5_54 Depth=1
	cmpl	$0, -3300(%rbp)
	jne	.LBB5_81
# BB#78:                                # %if.then.251
                                        #   in Loop: Header=BB5_54 Depth=1
	cmpl	$0, save_image.onceonly
	jne	.LBB5_80
# BB#79:                                # %if.then.253
                                        #   in Loop: Header=BB5_54 Depth=1
	movabsq	$.L.str.66, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$1, save_image.onceonly
.LBB5_80:                               # %if.end.255
                                        #   in Loop: Header=BB5_54 Depth=1
	movl	$1, -3300(%rbp)
.LBB5_81:                               # %if.end.256
                                        #   in Loop: Header=BB5_54 Depth=1
	movabsq	$get_pixel, %rax
	movq	-152(%rbp), %rdi
	movl	-3304(%rbp), %esi
	movl	-3300(%rbp), %edx
	movl	-3292(%rbp), %ecx
	movl	-3248(%rbp), %r8d
	movl	-3244(%rbp), %r9d
	movl	-3272(%rbp), %r10d
	movl	-3260(%rbp), %r11d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movq	%rax, 16(%rsp)
	callq	gif_encode_graphic_control_ext
.LBB5_82:                               # %if.end.257
                                        #   in Loop: Header=BB5_54 Depth=1
	movq	-152(%rbp), %rdi
	movl	-3248(%rbp), %esi
	movl	-3244(%rbp), %edx
	cmpl	$4, -3244(%rbp)
	movq	%rdi, -3536(%rbp)       # 8-byte Spill
	movl	%esi, -3540(%rbp)       # 4-byte Spill
	movl	%edx, -3544(%rbp)       # 4-byte Spill
	jbe	.LBB5_84
# BB#83:                                # %cond.true.260
                                        #   in Loop: Header=BB5_54 Depth=1
	movl	gsvals, %eax
	movl	%eax, -3548(%rbp)       # 4-byte Spill
	jmp	.LBB5_85
.LBB5_84:                               # %cond.false.261
                                        #   in Loop: Header=BB5_54 Depth=1
	xorl	%eax, %eax
	movl	%eax, -3548(%rbp)       # 4-byte Spill
	jmp	.LBB5_85
.LBB5_85:                               # %cond.end.262
                                        #   in Loop: Header=BB5_54 Depth=1
	movl	-3548(%rbp), %eax       # 4-byte Reload
	movabsq	$get_pixel, %r9
	movl	-3260(%rbp), %r8d
	movl	-3276(%rbp), %ecx
	movl	-3280(%rbp), %edx
	movq	-3536(%rbp), %rdi       # 8-byte Reload
	movl	-3540(%rbp), %esi       # 4-byte Reload
	movl	-3544(%rbp), %r10d      # 4-byte Reload
	movl	%edx, -3552(%rbp)       # 4-byte Spill
	movl	%r10d, %edx
	movl	%ecx, -3556(%rbp)       # 4-byte Spill
	movl	%eax, %ecx
	movl	-3556(%rbp), %eax       # 4-byte Reload
	movl	%eax, (%rsp)
	movl	-3552(%rbp), %eax       # 4-byte Reload
	movl	%eax, 8(%rsp)
	callq	gif_encode_image_data
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-136(%rbp), %rdi
	movl	%eax, -3560(%rbp)       # 4-byte Spill
	callq	gimp_drawable_detach
	movq	pixels, %rdi
	callq	g_free
# BB#86:                                # %for.inc.265
                                        #   in Loop: Header=BB5_54 Depth=1
	movl	-3268(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -3268(%rbp)
	movl	-3292(%rbp), %eax
	subl	-3268(%rbp), %eax
	imull	-3244(%rbp), %eax
	movl	%eax, cur_progress
	jmp	.LBB5_54
.LBB5_87:                               # %for.end.269
	movq	-3288(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-152(%rbp), %rdi
	callq	gif_encode_close
	movl	$1, -44(%rbp)
.LBB5_88:                               # %return
	movl	-44(%rbp), %eax
	addq	$3560, %rsp             # imm = 0xDE8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	save_image, .Lfunc_end5-save_image
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_28
	.quad	.LBB5_27
	.quad	.LBB5_18
	.quad	.LBB5_17

	.text
	.align	16, 0x90
	.type	bad_bounds_dialog,@function
bad_bounds_dialog:                      # @bad_bounds_dialog
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
	subq	$64, %rsp
	movabsq	$.L.str.32, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	%ecx, %esi
	movq	%rax, %r8
	movb	$0, %al
	callq	gtk_message_dialog_new
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.33, %rsi
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movabsq	$.L.str.34, %rcx
	movl	$4294967291, %r8d       # imm = 0xFFFFFFFB
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_add_buttons
	movq	-8(%rbp), %rcx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_message_dialog_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gtk_message_dialog_format_secondary_text
	movq	-8(%rbp), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_run
	cmpl	$-5, %eax
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-12(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	bad_bounds_dialog, .Lfunc_end6-bad_bounds_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	file_gif_toggle_button_init,@function
file_gif_toggle_button_init:            # @file_gif_toggle_button_init
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gtk_builder_get_object
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movabsq	$.L.str.57, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-40(%rbp), %rcx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	file_gif_toggle_button_init, .Lfunc_end7-file_gif_toggle_button_init
	.cfi_endproc

	.align	16, 0x90
	.type	comment_entry_callback,@function
comment_entry_callback:                 # @comment_entry_callback
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
	subq	$176, %rsp
	leaq	-88(%rbp), %rsi
	leaq	-168(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_text_buffer_get_bounds
	leaq	-88(%rbp), %rsi
	leaq	-168(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	callq	gtk_text_buffer_get_text
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rdi
	callq	strlen
	cmpq	$240, %rax
	jbe	.LBB8_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.58, %rdi
	callq	gettext
	movl	$240, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	leaq	-88(%rbp), %rsi
	movl	$239, %edx
	movq	-8(%rbp), %rdi
	callq	gtk_text_buffer_get_iter_at_offset
	leaq	-168(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gtk_text_buffer_get_end_iter
	leaq	-88(%rbp), %rsi
	leaq	-168(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gtk_text_buffer_delete
	jmp	.LBB8_3
.LBB8_2:                                # %if.else
	movq	globalcomment, %rdi
	callq	g_free
	movq	-176(%rbp), %rdi
	callq	g_strdup
	movq	%rax, globalcomment
	movl	$1, comment_was_edited
.LBB8_3:                                # %if.end
	movq	-176(%rbp), %rdi
	callq	g_free
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	comment_entry_callback, .Lfunc_end8-comment_entry_callback
	.cfi_endproc

	.align	16, 0x90
	.type	file_gif_spin_button_int_init,@function
file_gif_spin_button_int_init:          # @file_gif_spin_button_int_init
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gtk_builder_get_object
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_adjustment
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	cvtsi2sdl	-20(%rbp), %xmm0
	callq	gtk_adjustment_set_value
	movabsq	$.L.str.59, %rsi
	movabsq	$gimp_int_adjustment_update, %rax
	movabsq	$gsvals, %rcx
	addq	$12, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movq	-40(%rbp), %rcx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	file_gif_spin_button_int_init, .Lfunc_end9-file_gif_spin_button_int_init
	.cfi_endproc

	.align	16, 0x90
	.type	file_gif_combo_box_int_init,@function
file_gif_combo_box_int_init:            # @file_gif_combo_box_int_init
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
	pushq	%rbx
	subq	$632, %rsp              # imm = 0x278
.Ltmp44:
	.cfi_offset %rbx, -24
	testb	%al, %al
	movaps	%xmm7, -336(%rbp)       # 16-byte Spill
	movaps	%xmm6, -352(%rbp)       # 16-byte Spill
	movaps	%xmm5, -368(%rbp)       # 16-byte Spill
	movaps	%xmm4, -384(%rbp)       # 16-byte Spill
	movaps	%xmm3, -400(%rbp)       # 16-byte Spill
	movaps	%xmm2, -416(%rbp)       # 16-byte Spill
	movaps	%xmm1, -432(%rbp)       # 16-byte Spill
	movaps	%xmm0, -448(%rbp)       # 16-byte Spill
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movl	%r9d, -460(%rbp)        # 4-byte Spill
	movq	%r8, -472(%rbp)         # 8-byte Spill
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	movl	%edx, -484(%rbp)        # 4-byte Spill
	movq	%rsi, -496(%rbp)        # 8-byte Spill
	je	.LBB10_12
# BB#11:                                # %entry
	movaps	-448(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -272(%rbp)
	movaps	-432(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -256(%rbp)
	movaps	-416(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -240(%rbp)
	movaps	-400(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -224(%rbp)
	movaps	-384(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -208(%rbp)
	movaps	-368(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -192(%rbp)
	movaps	-352(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -176(%rbp)
	movaps	-336(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -160(%rbp)
.LBB10_12:                              # %entry
	movl	-460(%rbp), %eax        # 4-byte Reload
	movq	-472(%rbp), %rcx        # 8-byte Reload
	movq	-480(%rbp), %rdx        # 8-byte Reload
	movl	-484(%rbp), %esi        # 4-byte Reload
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	-456(%rbp), %r8         # 8-byte Reload
	xorl	%r9d, %r9d
	movl	$32, %r10d
	movl	%r10d, %r11d
	leaq	-120(%rbp), %rbx
	movq	%r8, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%eax, -52(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	movq	%rbx, %rdi
	movl	%r9d, %esi
	movq	%r11, %rdx
	callq	memset
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_builder_get_object
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_combo_box_get_model
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-144(%rbp), %rcx
	movq	%rax, -72(%rbp)
	leaq	-320(%rbp), %rax
	movq	%rax, 16(%rcx)
	leaq	16(%rbp), %rax
	movq	%rax, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$48, (%rcx)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-52(%rbp), %r9d
	movl	%r9d, -84(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB10_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	-120(%rbp), %rsi
	movq	-72(%rbp), %rdi
	callq	gtk_list_store_append
	leaq	-120(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-72(%rbp), %rdi
	movl	-84(%rbp), %ecx
	movq	-80(%rbp), %r9
	movl	$-1, (%rsp)
	movl	%eax, -524(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_list_store_set
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	-144(%rbp), %rax
	movl	-144(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -536(%rbp)        # 8-byte Spill
	movl	%ecx, -540(%rbp)        # 4-byte Spill
	ja	.LBB10_5
# BB#4:                                 # %vaarg.in_reg
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-540(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-536(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -552(%rbp)        # 8-byte Spill
	jmp	.LBB10_6
.LBB10_5:                               # %vaarg.in_mem
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-536(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -552(%rbp)        # 8-byte Spill
.LBB10_6:                               # %vaarg.end
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-552(%rbp), %rax        # 8-byte Reload
	leaq	-144(%rbp), %rcx
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movl	-144(%rbp), %edx
	cmpl	$40, %edx
	movq	%rcx, -560(%rbp)        # 8-byte Spill
	movl	%edx, -564(%rbp)        # 4-byte Spill
	ja	.LBB10_8
# BB#7:                                 # %vaarg.in_reg.14
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-564(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-560(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -576(%rbp)        # 8-byte Spill
	jmp	.LBB10_9
.LBB10_8:                               # %vaarg.in_mem.16
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-560(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -576(%rbp)        # 8-byte Spill
.LBB10_9:                               # %vaarg.end.20
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-576(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, -84(%rbp)
	jmp	.LBB10_1
.LBB10_10:                              # %for.end
	movq	-72(%rbp), %rdi
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-28(%rbp), %ecx
	xorl	%edx, %edx
	movl	%edx, %esi
	leaq	-120(%rbp), %rdi
	movq	%rdi, -592(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-592(%rbp), %rax        # 8-byte Reload
	movq	%rsi, -600(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-600(%rbp), %r8         # 8-byte Reload
	movl	%edx, -604(%rbp)        # 4-byte Spill
	movq	%r8, %rdx
	callq	gtk_tree_model_iter_nth_child
	movq	-64(%rbp), %rdi
	movl	%eax, -608(%rbp)        # 4-byte Spill
	movq	%rdi, -616(%rbp)        # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	movq	-592(%rbp), %rsi        # 8-byte Reload
	callq	gtk_combo_box_set_active_iter
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movl	$.L.str.44, %r9d
	movl	%r9d, %esi
	movl	$file_gif_combo_box_int_update_value, %r9d
	movl	%r9d, %edx
	movq	-600(%rbp), %r8         # 8-byte Reload
	movl	-604(%rbp), %r9d        # 4-byte Reload
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	%rax, -624(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	addq	$632, %rsp              # imm = 0x278
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end10:
	.size	file_gif_combo_box_int_init, .Lfunc_end10-file_gif_combo_box_int_init
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	je	.LBB11_2
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
.LBB11_2:                               # %entry
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
.Lfunc_end11:
	.size	g_message, .Lfunc_end11-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	file_gif_combo_box_int_update_value,@function
file_gif_combo_box_int_update_value:    # @file_gif_combo_box_int_update_value
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_combo_box_get_active_iter
	cmpl	$0, %eax
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_combo_box_get_model
	leaq	-48(%rbp), %rsi
	xorl	%edx, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
.LBB12_2:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	file_gif_combo_box_int_update_value, .Lfunc_end12-file_gif_combo_box_int_update_value
	.cfi_endproc

	.align	16, 0x90
	.type	colors_to_bpp,@function
colors_to_bpp:                          # @colors_to_bpp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	cmpl	$2, -8(%rbp)
	jg	.LBB13_2
# BB#1:                                 # %if.then
	movl	$1, -12(%rbp)
	jmp	.LBB13_24
.LBB13_2:                               # %if.else
	cmpl	$4, -8(%rbp)
	jg	.LBB13_4
# BB#3:                                 # %if.then.2
	movl	$2, -12(%rbp)
	jmp	.LBB13_23
.LBB13_4:                               # %if.else.3
	cmpl	$8, -8(%rbp)
	jg	.LBB13_6
# BB#5:                                 # %if.then.5
	movl	$3, -12(%rbp)
	jmp	.LBB13_22
.LBB13_6:                               # %if.else.6
	cmpl	$16, -8(%rbp)
	jg	.LBB13_8
# BB#7:                                 # %if.then.8
	movl	$4, -12(%rbp)
	jmp	.LBB13_21
.LBB13_8:                               # %if.else.9
	cmpl	$32, -8(%rbp)
	jg	.LBB13_10
# BB#9:                                 # %if.then.11
	movl	$5, -12(%rbp)
	jmp	.LBB13_20
.LBB13_10:                              # %if.else.12
	cmpl	$64, -8(%rbp)
	jg	.LBB13_12
# BB#11:                                # %if.then.14
	movl	$6, -12(%rbp)
	jmp	.LBB13_19
.LBB13_12:                              # %if.else.15
	cmpl	$128, -8(%rbp)
	jg	.LBB13_14
# BB#13:                                # %if.then.17
	movl	$7, -12(%rbp)
	jmp	.LBB13_18
.LBB13_14:                              # %if.else.18
	cmpl	$256, -8(%rbp)          # imm = 0x100
	jg	.LBB13_16
# BB#15:                                # %if.then.20
	movl	$8, -12(%rbp)
	jmp	.LBB13_17
.LBB13_16:                              # %if.else.21
	movabsq	$.L.str.67, %rdi
	movl	-8(%rbp), %esi
	movb	$0, %al
	callq	g_warning
	movl	$8, -4(%rbp)
	jmp	.LBB13_25
.LBB13_17:                              # %if.end
	jmp	.LBB13_18
.LBB13_18:                              # %if.end.22
	jmp	.LBB13_19
.LBB13_19:                              # %if.end.23
	jmp	.LBB13_20
.LBB13_20:                              # %if.end.24
	jmp	.LBB13_21
.LBB13_21:                              # %if.end.25
	jmp	.LBB13_22
.LBB13_22:                              # %if.end.26
	jmp	.LBB13_23
.LBB13_23:                              # %if.end.27
	jmp	.LBB13_24
.LBB13_24:                              # %if.end.28
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB13_25:                              # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	colors_to_bpp, .Lfunc_end13-colors_to_bpp
	.cfi_endproc

	.align	16, 0x90
	.type	gif_encode_header,@function
gif_encode_header:                      # @gif_encode_header
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
.Ltmp57:
	.cfi_offset %rbx, -56
.Ltmp58:
	.cfi_offset %r12, -48
.Ltmp59:
	.cfi_offset %r13, -40
.Ltmp60:
	.cfi_offset %r14, -32
.Ltmp61:
	.cfi_offset %r15, -24
	movq	40(%rbp), %rax
	movq	32(%rbp), %r10
	movq	24(%rbp), %r11
	movq	16(%rbp), %rbx
	movl	$1, %r14d
	movl	%r14d, %r15d
	movl	$6, %r14d
	movl	%r14d, %r12d
	movabsq	$.L.str.69, %r13
	movabsq	$.L.str.68, %r14
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movl	$1, %ecx
	movq	%rdi, -48(%rbp)
	movl	%esi, -52(%rbp)
	movl	%edx, -56(%rbp)
	movl	-132(%rbp), %edx        # 4-byte Reload
	movl	%edx, -60(%rbp)
	movl	%r8d, -64(%rbp)
	movl	%r9d, -68(%rbp)
	movq	%rbx, -80(%rbp)
	movq	%r11, -88(%rbp)
	movq	%r10, -96(%rbp)
	movq	%rax, -104(%rbp)
	movl	-68(%rbp), %esi
	movl	%ecx, -136(%rbp)        # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-136(%rbp), %esi        # 4-byte Reload
	shll	%cl, %esi
	movl	%esi, -124(%rbp)
	movl	-56(%rbp), %esi
	movl	%esi, Width
	movl	%esi, -112(%rbp)
	movl	-60(%rbp), %esi
	movl	%esi, Height
	movl	%esi, -116(%rbp)
	movl	-68(%rbp), %esi
	movl	%esi, -120(%rbp)
	movslq	Width, %rax
	movslq	Height, %rdi
	imulq	%rdi, %rax
	movq	%rax, CountDown
	movl	$0, Pass
	movl	$0, cury
	movl	$0, curx
	cmpl	$0, -52(%rbp)
	cmovneq	%r14, %r13
	movq	-48(%rbp), %rcx
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	fwrite
	movl	-112(%rbp), %edi
	movq	-48(%rbp), %rsi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	put_word
	movl	-116(%rbp), %edi
	movq	-48(%rbp), %rsi
	callq	put_word
	movl	$128, -108(%rbp)
	movl	-120(%rbp), %edi
	subl	$1, %edi
	shll	$5, %edi
	orl	-108(%rbp), %edi
	movl	%edi, -108(%rbp)
	movl	-68(%rbp), %edi
	subl	$1, %edi
	orl	-108(%rbp), %edi
	movl	%edi, -108(%rbp)
	movl	-108(%rbp), %edi
	movq	-48(%rbp), %rsi
	callq	fputc
	movl	-64(%rbp), %edi
	movq	-48(%rbp), %rsi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	fputc
	xorl	%edi, %edi
	movq	-48(%rbp), %rsi
	movl	%eax, -152(%rbp)        # 4-byte Spill
	callq	fputc
	movl	$0, -128(%rbp)
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB14_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-128(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jge	.LBB14_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movslq	-128(%rbp), %rax
	movq	-80(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	movq	-48(%rbp), %rsi
	callq	fputc
	movslq	-128(%rbp), %rcx
	movq	-88(%rbp), %rsi
	movl	(%rsi,%rcx,4), %edi
	movq	-48(%rbp), %rsi
	movl	%eax, -160(%rbp)        # 4-byte Spill
	callq	fputc
	movslq	-128(%rbp), %rcx
	movq	-96(%rbp), %rsi
	movl	(%rsi,%rcx,4), %edi
	movq	-48(%rbp), %rsi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	fputc
	movl	%eax, -168(%rbp)        # 4-byte Spill
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB14_1
.LBB14_4:                               # %for.end
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gif_encode_header, .Lfunc_end14-gif_encode_header
	.cfi_endproc

	.align	16, 0x90
	.type	get_pixel,@function
get_pixel:                              # @get_pixel
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	pixels, %rax
	movslq	rowstride, %rcx
	movslq	-8(%rbp), %rdx
	imulq	%rdx, %rcx
	addq	%rcx, %rax
	movslq	-4(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	popq	%rbp
	retq
.Lfunc_end15:
	.size	get_pixel, .Lfunc_end15-get_pixel
	.cfi_endproc

	.align	16, 0x90
	.type	gif_encode_loop_ext,@function
gif_encode_loop_ext:                    # @gif_encode_loop_ext
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
	movl	$33, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	callq	fputc
	movl	$255, %edi
	movq	-8(%rbp), %rsi
	movl	%eax, -16(%rbp)         # 4-byte Spill
	callq	fputc
	movl	$11, %edi
	movq	-8(%rbp), %rsi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	fputc
	movabsq	$.L.str.70, %rdi
	movq	-8(%rbp), %rsi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	fputs
	movl	$3, %edi
	movq	-8(%rbp), %rsi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	fputc
	movl	$1, %edi
	movq	-8(%rbp), %rsi
	movl	%eax, -32(%rbp)         # 4-byte Spill
	callq	fputc
	movl	-12(%rbp), %edi
	movq	-8(%rbp), %rsi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	put_word
	xorl	%edi, %edi
	movq	-8(%rbp), %rsi
	callq	fputc
	movl	%eax, -40(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gif_encode_loop_ext, .Lfunc_end16-gif_encode_loop_ext
	.cfi_endproc

	.align	16, 0x90
	.type	gif_encode_comment_ext,@function
gif_encode_comment_ext:                 # @gif_encode_comment_ext
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB17_2
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB17_3
.LBB17_2:                               # %if.then
	jmp	.LBB17_6
.LBB17_3:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	strlen
	cmpq	$240, %rax
	jbe	.LBB17_5
# BB#4:                                 # %if.then.2
	movabsq	$.L.str.71, %rdi
	movb	$0, %al
	callq	g_printerr
	jmp	.LBB17_6
.LBB17_5:                               # %if.end.3
	movl	$33, %edi
	movq	-8(%rbp), %rsi
	callq	fputc
	movl	$254, %edi
	movq	-8(%rbp), %rsi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	fputc
	movq	-16(%rbp), %rdi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	strlen
	movl	%eax, %ecx
	movq	-8(%rbp), %rsi
	movl	%ecx, %edi
	callq	fputc
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	fputs
	xorl	%edi, %edi
	movq	-8(%rbp), %rsi
	movl	%eax, -32(%rbp)         # 4-byte Spill
	callq	fputc
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB17_6:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gif_encode_comment_ext, .Lfunc_end17-gif_encode_comment_ext
	.cfi_endproc

	.align	16, 0x90
	.type	find_unused_ia_colour,@function
find_unused_ia_colour:                  # @find_unused_ia_colour
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
	subq	$1072, %rsp             # imm = 0x430
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$0, -1060(%rbp)
.LBB18_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -1060(%rbp)       # imm = 0x100
	jge	.LBB18_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movslq	-1060(%rbp), %rax
	movl	$0, -1056(%rbp,%rax,4)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-1060(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1060(%rbp)
	jmp	.LBB18_1
.LBB18_4:                               # %for.end
	movl	$0, -1060(%rbp)
.LBB18_5:                               # %for.cond.1
                                        # =>This Inner Loop Header: Depth=1
	movl	-1060(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB18_10
# BB#6:                                 # %for.body.3
                                        #   in Loop: Header=BB18_5 Depth=1
	movl	-1060(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	cmpb	$0, (%rdx,%rcx)
	je	.LBB18_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB18_5 Depth=1
	movl	-1060(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, %ecx
	movl	$1, -1056(%rbp,%rcx,4)
.LBB18_8:                               # %if.end
                                        #   in Loop: Header=BB18_5 Depth=1
	jmp	.LBB18_9
.LBB18_9:                               # %for.inc.11
                                        #   in Loop: Header=BB18_5 Depth=1
	movl	-1060(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1060(%rbp)
	jmp	.LBB18_5
.LBB18_10:                              # %for.end.13
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -1060(%rbp)
.LBB18_11:                              # %for.cond.14
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -1060(%rbp)
	jl	.LBB18_16
# BB#12:                                # %for.body.16
                                        #   in Loop: Header=BB18_11 Depth=1
	movslq	-1060(%rbp), %rax
	cmpl	$0, -1056(%rbp,%rax,4)
	jne	.LBB18_14
# BB#13:                                # %if.then.20
	movl	-1060(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB18_19
.LBB18_14:                              # %if.end.21
                                        #   in Loop: Header=BB18_11 Depth=1
	jmp	.LBB18_15
.LBB18_15:                              # %for.inc.22
                                        #   in Loop: Header=BB18_11 Depth=1
	movl	-1060(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -1060(%rbp)
	jmp	.LBB18_11
.LBB18_16:                              # %for.end.23
	movq	-32(%rbp), %rax
	cmpl	$256, (%rax)            # imm = 0x100
	jge	.LBB18_18
# BB#17:                                # %if.then.25
	movabsq	$.L.str.72, %rdi
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %esi
	movb	$0, %al
	callq	g_printerr
	movq	-32(%rbp), %rdi
	movl	(%rdi), %ecx
	subl	$1, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB18_19
.LBB18_18:                              # %if.end.29
	movabsq	$.L.str.73, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
.LBB18_19:                              # %return
	movl	-4(%rbp), %eax
	addq	$1072, %rsp             # imm = 0x430
	popq	%rbp
	retq
.Lfunc_end18:
	.size	find_unused_ia_colour, .Lfunc_end18-find_unused_ia_colour
	.cfi_endproc

	.align	16, 0x90
	.type	bpp_to_colors,@function
bpp_to_colors:                          # @bpp_to_colors
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
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	cmpl	$8, -8(%rbp)
	jle	.LBB19_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.74, %rdi
	movl	-8(%rbp), %esi
	movb	$0, %al
	callq	g_warning
	movl	$256, -4(%rbp)          # imm = 0x100
	jmp	.LBB19_3
.LBB19_2:                               # %if.end
	movl	$1, %eax
	movl	-8(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB19_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	bpp_to_colors, .Lfunc_end19-bpp_to_colors
	.cfi_endproc

	.align	16, 0x90
	.type	special_flatten_indexed_alpha,@function
special_flatten_indexed_alpha:          # @special_flatten_indexed_alpha
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	.LBB20_6
# BB#1:                                 # %if.then
	movl	$0, -20(%rbp)
.LBB20_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jae	.LBB20_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB20_2 Depth=1
	movl	-20(%rbp), %eax
	shll	$1, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB20_2 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB20_2
.LBB20_5:                               # %for.end
	jmp	.LBB20_14
.LBB20_6:                               # %if.else
	movl	$0, -20(%rbp)
.LBB20_7:                               # %for.cond.4
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jae	.LBB20_13
# BB#8:                                 # %for.body.6
                                        #   in Loop: Header=BB20_7 Depth=1
	movl	-20(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	jne	.LBB20_10
# BB#9:                                 # %if.then.10
                                        #   in Loop: Header=BB20_7 Depth=1
	movl	-12(%rbp), %eax
	movb	%al, %cl
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.14
                                        #   in Loop: Header=BB20_7 Depth=1
	movl	-20(%rbp), %eax
	shll	$1, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB20_11:                              # %if.end
                                        #   in Loop: Header=BB20_7 Depth=1
	jmp	.LBB20_12
.LBB20_12:                              # %for.inc.20
                                        #   in Loop: Header=BB20_7 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB20_7
.LBB20_13:                              # %for.end.22
	jmp	.LBB20_14
.LBB20_14:                              # %if.end.23
	popq	%rbp
	retq
.Lfunc_end20:
	.size	special_flatten_indexed_alpha, .Lfunc_end20-special_flatten_indexed_alpha
	.cfi_endproc

	.align	16, 0x90
	.type	parse_disposal_tag,@function
parse_disposal_tag:                     # @parse_disposal_tag
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -24(%rbp)
.LBB21_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	addl	$9, %eax
	cmpl	-24(%rbp), %eax
	jg	.LBB21_7
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB21_1 Depth=1
	movabsq	$.L.str.75, %rsi
	movl	$9, %eax
	movl	%eax, %edx
	movslq	-20(%rbp), %rcx
	addq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB21_4
# BB#3:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB21_8
.LBB21_4:                               # %if.end
                                        #   in Loop: Header=BB21_1 Depth=1
	movabsq	$.L.str.76, %rsi
	movl	$9, %eax
	movl	%eax, %edx
	movslq	-20(%rbp), %rcx
	addq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB21_6
# BB#5:                                 # %if.then.10
	movl	$2, -4(%rbp)
	jmp	.LBB21_8
.LBB21_6:                               # %if.end.11
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB21_1
.LBB21_7:                               # %while.end
	movl	gsvals+16, %eax
	movl	%eax, -4(%rbp)
.LBB21_8:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	parse_disposal_tag, .Lfunc_end21-parse_disposal_tag
	.cfi_endproc

	.align	16, 0x90
	.type	parse_ms_tag,@function
parse_ms_tag:                           # @parse_ms_tag
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
.LBB22_1:                               # %find_another_bra
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_2 Depth 2
	jmp	.LBB22_2
.LBB22_2:                               # %while.cond
                                        #   Parent Loop BB22_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-24(%rbp), %eax
	cmpl	-28(%rbp), %eax
	movb	%cl, -29(%rbp)          # 1-byte Spill
	jge	.LBB22_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB22_2 Depth=2
	movslq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$40, %edx
	setne	%sil
	movb	%sil, -29(%rbp)         # 1-byte Spill
.LBB22_4:                               # %land.end
                                        #   in Loop: Header=BB22_2 Depth=2
	movb	-29(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB22_5
	jmp	.LBB22_6
.LBB22_5:                               # %while.body
                                        #   in Loop: Header=BB22_2 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB22_2
.LBB22_6:                               # %while.end
                                        #   in Loop: Header=BB22_1 Depth=1
	movl	-24(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.LBB22_8
# BB#7:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB22_21
.LBB22_8:                               # %if.end
                                        #   in Loop: Header=BB22_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, %ecx
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rcx,2), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	jne	.LBB22_10
# BB#9:                                 # %if.then.15
                                        #   in Loop: Header=BB22_1 Depth=1
	jmp	.LBB22_1
.LBB22_10:                              # %if.end.16
	jmp	.LBB22_11
.LBB22_11:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	imull	$10, -20(%rbp), %eax
	movl	%eax, -20(%rbp)
	movslq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movsbl	(%rdx,%rcx), %eax
	subl	$48, %eax
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
# BB#12:                                # %do.cond
                                        #   in Loop: Header=BB22_11 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-24(%rbp), %eax
	cmpl	-28(%rbp), %eax
	movb	%cl, -30(%rbp)          # 1-byte Spill
	jge	.LBB22_14
# BB#13:                                # %land.rhs.23
                                        #   in Loop: Header=BB22_11 Depth=1
	movslq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, %eax
	movq	g_ascii_table, %rcx
	movzwl	(%rcx,%rax,2), %edx
	andl	$8, %edx
	cmpl	$0, %edx
	setne	%sil
	movb	%sil, -30(%rbp)         # 1-byte Spill
.LBB22_14:                              # %land.end.32
                                        #   in Loop: Header=BB22_11 Depth=1
	movb	-30(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB22_11
# BB#15:                                # %do.end
	movl	-28(%rbp), %eax
	subl	-24(%rbp), %eax
	cmpl	$2, %eax
	jg	.LBB22_17
# BB#16:                                # %if.then.36
	movl	$-3, -4(%rbp)
	jmp	.LBB22_21
.LBB22_17:                              # %if.end.37
	movslq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edi
	callq	g_ascii_toupper
	movsbl	%al, %edi
	cmpl	$77, %edi
	jne	.LBB22_19
# BB#18:                                # %lor.lhs.false
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movsbl	(%rdx,%rcx), %edi
	callq	g_ascii_toupper
	movsbl	%al, %edi
	cmpl	$83, %edi
	je	.LBB22_20
.LBB22_19:                              # %if.then.51
	movl	$-4, -4(%rbp)
	jmp	.LBB22_21
.LBB22_20:                              # %if.end.52
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB22_21:                              # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	parse_ms_tag, .Lfunc_end22-parse_ms_tag
	.cfi_endproc

	.align	16, 0x90
	.type	gif_encode_graphic_control_ext,@function
gif_encode_graphic_control_ext:         # @gif_encode_graphic_control_ext
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
	subq	$96, %rsp
	movq	32(%rbp), %rax
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	%r11d, -32(%rbp)
	movl	%r10d, -36(%rbp)
	movq	%rax, -48(%rbp)
	movl	-24(%rbp), %ecx
	movl	%ecx, Width
	movl	-28(%rbp), %ecx
	movl	%ecx, Height
	movslq	Width, %rax
	movslq	Height, %rdi
	imulq	%rdi, %rax
	movq	%rax, CountDown
	movl	$0, Pass
	movl	$0, cury
	movl	$0, curx
	cmpl	$0, -32(%rbp)
	jge	.LBB23_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$1, -20(%rbp)
	jle	.LBB23_6
.LBB23_2:                               # %if.then
	movl	$33, %edi
	movq	-8(%rbp), %rsi
	callq	fputc
	movl	$249, %edi
	movq	-8(%rbp), %rsi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	fputc
	movl	$4, %edi
	movq	-8(%rbp), %rsi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	fputc
	xorl	%edi, %edi
	movl	$1, %ecx
	cmpl	$0, -32(%rbp)
	cmovgel	%ecx, %edi
	cmpl	$1, -20(%rbp)
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%edi, -64(%rbp)         # 4-byte Spill
	jle	.LBB23_4
# BB#3:                                 # %cond.true
	movl	-12(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB23_5
.LBB23_4:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB23_5
.LBB23_5:                               # %cond.end
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	-64(%rbp), %ecx         # 4-byte Reload
	orl	%eax, %ecx
	movq	-8(%rbp), %rsi
	movl	%ecx, %edi
	callq	fputc
	movl	-16(%rbp), %ecx
	andl	$255, %ecx
	movq	-8(%rbp), %rsi
	movl	%ecx, %edi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	fputc
	movl	-16(%rbp), %ecx
	sarl	$8, %ecx
	andl	$255, %ecx
	movq	-8(%rbp), %rsi
	movl	%ecx, %edi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	fputc
	movl	-32(%rbp), %edi
	movq	-8(%rbp), %rsi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	fputc
	xorl	%edi, %edi
	movq	-8(%rbp), %rsi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	fputc
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB23_6:                               # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gif_encode_graphic_control_ext, .Lfunc_end23-gif_encode_graphic_control_ext
	.cfi_endproc

	.align	16, 0x90
	.type	gif_encode_image_data,@function
gif_encode_image_data:                  # @gif_encode_image_data
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
	subq	$80, %rsp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%r9, -32(%rbp)
	movl	%r10d, -36(%rbp)
	movl	%eax, -40(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, Interlace
	movl	-12(%rbp), %eax
	movl	%eax, Width
	movl	-16(%rbp), %eax
	movl	%eax, Height
	movl	-36(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -48(%rbp)
	movslq	Width, %rdi
	movslq	Height, %r9
	imulq	%r9, %rdi
	movq	%rdi, CountDown
	movl	$0, Pass
	cmpl	$1, -24(%rbp)
	jg	.LBB24_2
# BB#1:                                 # %if.then
	movl	$2, -52(%rbp)
	jmp	.LBB24_3
.LBB24_2:                               # %if.else
	movl	-24(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB24_3:                               # %if.end
	movl	$44, %edi
	movl	$0, cury
	movl	$0, curx
	movq	-8(%rbp), %rsi
	callq	fputc
	movl	-44(%rbp), %edi
	movq	-8(%rbp), %rsi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	put_word
	movl	-48(%rbp), %edi
	movq	-8(%rbp), %rsi
	callq	put_word
	movl	Width, %edi
	movq	-8(%rbp), %rsi
	callq	put_word
	movl	Height, %edi
	movq	-8(%rbp), %rsi
	callq	put_word
	cmpl	$0, Interlace
	je	.LBB24_5
# BB#4:                                 # %if.then.3
	movl	$64, %edi
	movq	-8(%rbp), %rsi
	callq	fputc
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB24_6
.LBB24_5:                               # %if.else.5
	xorl	%edi, %edi
	movq	-8(%rbp), %rsi
	callq	fputc
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB24_6:                               # %if.end.7
	movl	-52(%rbp), %edi
	movq	-8(%rbp), %rsi
	callq	fputc
	movl	-52(%rbp), %edi
	addl	$1, %edi
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	compress
	xorl	%edi, %edi
	movq	-8(%rbp), %rsi
	callq	fputc
	movl	%eax, -72(%rbp)         # 4-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gif_encode_image_data, .Lfunc_end24-gif_encode_image_data
	.cfi_endproc

	.align	16, 0x90
	.type	gif_encode_close,@function
gif_encode_close:                       # @gif_encode_close
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
	subq	$16, %rsp
	movl	$59, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	callq	fputc
	movq	-8(%rbp), %rdi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	fclose
	movl	%eax, -16(%rbp)         # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gif_encode_close, .Lfunc_end25-gif_encode_close
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB26_2
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
.LBB26_2:                               # %entry
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
.Lfunc_end26:
	.size	g_warning, .Lfunc_end26-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	put_word,@function
put_word:                               # @put_word
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	andl	$255, %edi
	movq	-16(%rbp), %rsi
	callq	fputc
	movl	$256, %edi              # imm = 0x100
	movl	-4(%rbp), %ecx
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	%edi
	andl	$255, %eax
	movq	-16(%rbp), %rsi
	movl	%eax, %edi
	callq	fputc
	movl	%eax, -24(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	put_word, .Lfunc_end27-put_word
	.cfi_endproc

	.align	16, 0x90
	.type	compress,@function
compress:                               # @compress
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	normal_compress
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	compress, .Lfunc_end28-compress
	.cfi_endproc

	.align	16, 0x90
	.type	normal_compress,@function
normal_compress:                        # @normal_compress
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
	subq	$64, %rsp
	movl	$1, %eax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, g_init_bits
	movq	-16(%rbp), %rdx
	movq	%rdx, g_outfile
	movl	$0, cur_bits
	movq	$0, cur_accum
	movl	$0, offset
	movq	$0, out_count
	movl	$0, clear_flg
	movq	$1, in_count
	movl	-4(%rbp), %edi
	subl	$1, %edi
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	%eax, %edi
	shll	%cl, %edi
	movl	%edi, ClearCode
	movl	ClearCode, %edi
	addl	$1, %edi
	movl	%edi, EOFCode
	movl	ClearCode, %edi
	addl	$2, %edi
	movl	%edi, free_ent
	movl	g_init_bits, %edi
	movl	%edi, n_bits
	movl	n_bits, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	subl	$1, %eax
	movl	%eax, maxcode
	callq	char_init
	movq	-24(%rbp), %rdi
	callq	gif_next_pixel
	movl	%eax, -44(%rbp)
	movl	$0, -56(%rbp)
	movq	$5003, -32(%rbp)        # imm = 0x138B
.LBB29_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$65536, -32(%rbp)       # imm = 0x10000
	jge	.LBB29_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB29_1 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB29_1 Depth=1
	movq	-32(%rbp), %rax
	shlq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB29_1
.LBB29_4:                               # %for.end
	movl	$8, %eax
	subl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	$5003, -52(%rbp)        # imm = 0x138B
	movslq	-52(%rbp), %rdi
	callq	cl_hash
	movl	ClearCode, %edi
	callq	output
.LBB29_5:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_14 Depth 2
	movq	-24(%rbp), %rdi
	callq	gif_next_pixel
	movl	%eax, -40(%rbp)
	cmpl	$-1, %eax
	je	.LBB29_25
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB29_5 Depth=1
	movq	in_count, %rax
	addq	$1, %rax
	movq	%rax, in_count
	movslq	-40(%rbp), %rax
	movl	maxbits, %ecx
                                        # kill: RCX<def> ECX<kill>
                                        # kill: CL<def> RCX<kill>
	shlq	%cl, %rax
	movslq	-44(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movl	-40(%rbp), %esi
	movl	-56(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	-44(%rbp), %esi
	movl	%esi, -36(%rbp)
	movslq	-36(%rbp), %rax
	movq	htab(,%rax,8), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB29_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB29_5 Depth=1
	movslq	-36(%rbp), %rax
	movzwl	codetab(,%rax,2), %ecx
	movl	%ecx, -44(%rbp)
	jmp	.LBB29_5
.LBB29_8:                               # %if.else
                                        #   in Loop: Header=BB29_5 Depth=1
	movslq	-36(%rbp), %rax
	cmpq	$0, htab(,%rax,8)
	jge	.LBB29_10
# BB#9:                                 # %if.then.23
                                        #   in Loop: Header=BB29_5 Depth=1
	jmp	.LBB29_21
.LBB29_10:                              # %if.end
                                        #   in Loop: Header=BB29_5 Depth=1
	jmp	.LBB29_11
.LBB29_11:                              # %if.end.24
                                        #   in Loop: Header=BB29_5 Depth=1
	movl	-52(%rbp), %eax
	subl	-36(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.LBB29_13
# BB#12:                                # %if.then.28
                                        #   in Loop: Header=BB29_5 Depth=1
	movl	$1, -48(%rbp)
.LBB29_13:                              # %if.end.29
                                        #   in Loop: Header=BB29_5 Depth=1
	jmp	.LBB29_14
.LBB29_14:                              # %probe
                                        #   Parent Loop BB29_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	movl	-36(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %ecx
	jge	.LBB29_16
# BB#15:                                # %if.then.33
                                        #   in Loop: Header=BB29_14 Depth=2
	movl	-52(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB29_16:                              # %if.end.35
                                        #   in Loop: Header=BB29_14 Depth=2
	movslq	-36(%rbp), %rax
	movq	htab(,%rax,8), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB29_18
# BB#17:                                # %if.then.40
                                        #   in Loop: Header=BB29_5 Depth=1
	movslq	-36(%rbp), %rax
	movzwl	codetab(,%rax,2), %ecx
	movl	%ecx, -44(%rbp)
	jmp	.LBB29_5
.LBB29_18:                              # %if.end.44
                                        #   in Loop: Header=BB29_14 Depth=2
	movslq	-36(%rbp), %rax
	cmpq	$0, htab(,%rax,8)
	jle	.LBB29_20
# BB#19:                                # %if.then.49
                                        #   in Loop: Header=BB29_14 Depth=2
	jmp	.LBB29_14
.LBB29_20:                              # %if.end.50
                                        #   in Loop: Header=BB29_5 Depth=1
	jmp	.LBB29_21
.LBB29_21:                              # %nomatch
                                        #   in Loop: Header=BB29_5 Depth=1
	movl	-44(%rbp), %edi
	callq	output
	movq	out_count, %rax
	addq	$1, %rax
	movq	%rax, out_count
	movl	-40(%rbp), %edi
	movl	%edi, -44(%rbp)
	movl	free_ent, %edi
	cmpl	maxmaxcode, %edi
	jge	.LBB29_23
# BB#22:                                # %if.then.54
                                        #   in Loop: Header=BB29_5 Depth=1
	movl	free_ent, %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, free_ent
	movw	%ax, %dx
	movslq	-36(%rbp), %rsi
	movw	%dx, codetab(,%rsi,2)
	movq	-32(%rbp), %rsi
	movslq	-36(%rbp), %rdi
	movq	%rsi, htab(,%rdi,8)
	jmp	.LBB29_24
.LBB29_23:                              # %if.else.61
                                        #   in Loop: Header=BB29_5 Depth=1
	callq	cl_block
.LBB29_24:                              # %if.end.62
                                        #   in Loop: Header=BB29_5 Depth=1
	jmp	.LBB29_5
.LBB29_25:                              # %while.end
	movl	-44(%rbp), %edi
	callq	output
	movq	out_count, %rax
	addq	$1, %rax
	movq	%rax, out_count
	movl	EOFCode, %edi
	callq	output
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	normal_compress, .Lfunc_end29-normal_compress
	.cfi_endproc

	.align	16, 0x90
	.type	char_init,@function
char_init:                              # @char_init
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
	movl	$0, a_count
	popq	%rbp
	retq
.Lfunc_end30:
	.size	char_init, .Lfunc_end30-char_init
	.cfi_endproc

	.align	16, 0x90
	.type	gif_next_pixel,@function
gif_next_pixel:                         # @gif_next_pixel
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, CountDown
	jne	.LBB31_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB31_3
.LBB31_2:                               # %if.end
	movq	CountDown, %rax
	addq	$-1, %rax
	movq	%rax, CountDown
	movq	-16(%rbp), %rax
	movl	curx, %edi
	movl	cury, %esi
	callq	*%rax
	movl	%eax, -20(%rbp)
	callq	bump_pixel
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB31_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gif_next_pixel, .Lfunc_end31-gif_next_pixel
	.cfi_endproc

	.align	16, 0x90
	.type	cl_hash,@function
cl_hash:                                # @cl_hash
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
	movabsq	$htab, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	shlq	$3, %rdi
	addq	%rdi, %rax
	movq	%rax, -16(%rbp)
	movq	$-1, -32(%rbp)
	movq	-8(%rbp), %rax
	subq	$16, %rax
	movq	%rax, -24(%rbp)
.LBB32_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -128(%rcx)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -120(%rcx)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -112(%rcx)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -104(%rcx)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -96(%rcx)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -88(%rcx)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -80(%rcx)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -72(%rcx)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -64(%rcx)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -56(%rcx)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -48(%rcx)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -40(%rcx)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -32(%rcx)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -24(%rcx)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -16(%rcx)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -8(%rcx)
	movq	-16(%rbp), %rax
	addq	$-128, %rax
	movq	%rax, -16(%rbp)
# BB#2:                                 # %do.cond
                                        #   in Loop: Header=BB32_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$16, %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	jge	.LBB32_1
# BB#3:                                 # %do.end
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -24(%rbp)
.LBB32_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	jle	.LBB32_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB32_4 Depth=1
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$-8, %rdx
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rcx)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB32_4 Depth=1
	movq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB32_4
.LBB32_7:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end32:
	.size	cl_hash, .Lfunc_end32-cl_hash
	.cfi_endproc

	.align	16, 0x90
	.type	output,@function
output:                                 # @output
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movslq	cur_bits, %rax
	movq	masks(,%rax,8), %rax
	andq	cur_accum, %rax
	movq	%rax, cur_accum
	cmpl	$0, cur_bits
	jle	.LBB33_2
# BB#1:                                 # %if.then
	movslq	-4(%rbp), %rax
	movl	cur_bits, %ecx
                                        # kill: RCX<def> ECX<kill>
                                        # kill: CL<def> RCX<kill>
	shlq	%cl, %rax
	orq	cur_accum, %rax
	movq	%rax, cur_accum
	jmp	.LBB33_3
.LBB33_2:                               # %if.else
	movslq	-4(%rbp), %rax
	movq	%rax, cur_accum
.LBB33_3:                               # %if.end
	movl	n_bits, %eax
	addl	cur_bits, %eax
	movl	%eax, cur_bits
.LBB33_4:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, cur_bits
	jl	.LBB33_6
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB33_4 Depth=1
	movq	cur_accum, %rax
	andq	$255, %rax
	movl	%eax, %ecx
	movl	%ecx, %edi
	callq	char_out
	movq	cur_accum, %rax
	shrq	$8, %rax
	movq	%rax, cur_accum
	movl	cur_bits, %ecx
	subl	$8, %ecx
	movl	%ecx, cur_bits
	jmp	.LBB33_4
.LBB33_6:                               # %while.end
	movl	free_ent, %eax
	cmpl	maxcode, %eax
	jg	.LBB33_8
# BB#7:                                 # %lor.lhs.false
	cmpl	$0, clear_flg
	je	.LBB33_15
.LBB33_8:                               # %if.then.8
	cmpl	$0, clear_flg
	je	.LBB33_10
# BB#9:                                 # %if.then.10
	movl	$1, %eax
	movl	g_init_bits, %ecx
	movl	%ecx, n_bits
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	subl	$1, %eax
	movl	%eax, maxcode
	movl	$0, clear_flg
	jmp	.LBB33_14
.LBB33_10:                              # %if.else.13
	movl	n_bits, %eax
	addl	$1, %eax
	movl	%eax, n_bits
	movl	n_bits, %eax
	cmpl	maxbits, %eax
	jne	.LBB33_12
# BB#11:                                # %if.then.16
	movl	maxmaxcode, %eax
	movl	%eax, maxcode
	jmp	.LBB33_13
.LBB33_12:                              # %if.else.17
	movl	$1, %eax
	movl	n_bits, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	subl	$1, %eax
	movl	%eax, maxcode
.LBB33_13:                              # %if.end.20
	jmp	.LBB33_14
.LBB33_14:                              # %if.end.21
	jmp	.LBB33_15
.LBB33_15:                              # %if.end.22
	movl	-4(%rbp), %eax
	cmpl	EOFCode, %eax
	jne	.LBB33_22
# BB#16:                                # %if.then.25
	jmp	.LBB33_17
.LBB33_17:                              # %while.cond.26
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, cur_bits
	jle	.LBB33_19
# BB#18:                                # %while.body.29
                                        #   in Loop: Header=BB33_17 Depth=1
	movq	cur_accum, %rax
	andq	$255, %rax
	movl	%eax, %ecx
	movl	%ecx, %edi
	callq	char_out
	movq	cur_accum, %rax
	shrq	$8, %rax
	movq	%rax, cur_accum
	movl	cur_bits, %ecx
	subl	$8, %ecx
	movl	%ecx, cur_bits
	jmp	.LBB33_17
.LBB33_19:                              # %while.end.34
	callq	flush_char
	movq	g_outfile, %rdi
	callq	fflush
	movq	g_outfile, %rdi
	movl	%eax, -8(%rbp)          # 4-byte Spill
	callq	ferror
	cmpl	$0, %eax
	je	.LBB33_21
# BB#20:                                # %if.then.37
	callq	write_err
.LBB33_21:                              # %if.end.38
	jmp	.LBB33_22
.LBB33_22:                              # %if.end.39
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	output, .Lfunc_end33-output
	.cfi_endproc

	.align	16, 0x90
	.type	cl_block,@function
cl_block:                               # @cl_block
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
	movl	$5003, %eax             # imm = 0x138B
	movl	%eax, %edi
	callq	cl_hash
	movl	ClearCode, %eax
	addl	$2, %eax
	movl	%eax, free_ent
	movl	$1, clear_flg
	movl	ClearCode, %edi
	callq	output
	popq	%rbp
	retq
.Lfunc_end34:
	.size	cl_block, .Lfunc_end34-cl_block
	.cfi_endproc

	.align	16, 0x90
	.type	bump_pixel,@function
bump_pixel:                             # @bump_pixel
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
	subq	$32, %rsp
	movl	curx, %eax
	addl	$1, %eax
	movl	%eax, curx
	movl	curx, %eax
	cmpl	Width, %eax
	jne	.LBB35_18
# BB#1:                                 # %if.then
	movl	$20, %eax
	movl	cur_progress, %ecx
	addl	$1, %ecx
	movl	%ecx, cur_progress
	movl	cur_progress, %ecx
	movl	%eax, -4(%rbp)          # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-4(%rbp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB35_3
# BB#2:                                 # %if.then.3
	cvtsi2sdl	cur_progress, %xmm0
	cvtsi2sdl	max_progress, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -8(%rbp)          # 4-byte Spill
.LBB35_3:                               # %if.end
	movl	$0, curx
	cmpl	$0, Interlace
	jne	.LBB35_5
# BB#4:                                 # %if.then.5
	movl	cury, %eax
	addl	$1, %eax
	movl	%eax, cury
	jmp	.LBB35_17
.LBB35_5:                               # %if.else
	movl	Pass(%rip), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$3, %rdx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	ja	.LBB35_16
# BB#19:                                # %if.else
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	.LJTI35_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB35_6:                               # %sw.bb
	movl	cury, %eax
	addl	$8, %eax
	movl	%eax, cury
	movl	cury, %eax
	cmpl	Height, %eax
	jl	.LBB35_8
# BB#7:                                 # %if.then.9
	movl	Pass, %eax
	addl	$1, %eax
	movl	%eax, Pass
	movl	$4, cury
.LBB35_8:                               # %if.end.11
	jmp	.LBB35_16
.LBB35_9:                               # %sw.bb.12
	movl	cury, %eax
	addl	$8, %eax
	movl	%eax, cury
	movl	cury, %eax
	cmpl	Height, %eax
	jl	.LBB35_11
# BB#10:                                # %if.then.16
	movl	Pass, %eax
	addl	$1, %eax
	movl	%eax, Pass
	movl	$2, cury
.LBB35_11:                              # %if.end.18
	jmp	.LBB35_16
.LBB35_12:                              # %sw.bb.19
	movl	cury, %eax
	addl	$4, %eax
	movl	%eax, cury
	movl	cury, %eax
	cmpl	Height, %eax
	jl	.LBB35_14
# BB#13:                                # %if.then.23
	movl	Pass, %eax
	addl	$1, %eax
	movl	%eax, Pass
	movl	$1, cury
.LBB35_14:                              # %if.end.25
	jmp	.LBB35_16
.LBB35_15:                              # %sw.bb.26
	movl	cury, %eax
	addl	$2, %eax
	movl	%eax, cury
.LBB35_16:                              # %sw.epilog
	jmp	.LBB35_17
.LBB35_17:                              # %if.end.28
	jmp	.LBB35_18
.LBB35_18:                              # %if.end.29
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	bump_pixel, .Lfunc_end35-bump_pixel
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI35_0:
	.quad	.LBB35_6
	.quad	.LBB35_9
	.quad	.LBB35_12
	.quad	.LBB35_15

	.text
	.align	16, 0x90
	.type	char_out,@function
char_out:                               # @char_out
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movb	%dil, %al
	movl	a_count, %edi
	movl	%edi, %ecx
	addl	$1, %ecx
	movl	%ecx, a_count
	movslq	%edi, %rdx
	movb	%al, accum(,%rdx)
	cmpl	$254, a_count
	jl	.LBB36_2
# BB#1:                                 # %if.then
	callq	flush_char
.LBB36_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	char_out, .Lfunc_end36-char_out
	.cfi_endproc

	.align	16, 0x90
	.type	flush_char,@function
flush_char:                             # @flush_char
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
	subq	$16, %rsp
	cmpl	$0, a_count
	jle	.LBB37_2
# BB#1:                                 # %if.then
	movl	a_count, %edi
	movq	g_outfile, %rsi
	callq	fputc
	movabsq	$accum, %rdi
	movl	$1, %ecx
	movl	%ecx, %esi
	movslq	a_count, %rdx
	movq	g_outfile, %rcx
	movl	%eax, -4(%rbp)          # 4-byte Spill
	callq	fwrite
	movl	$0, a_count
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB37_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	flush_char, .Lfunc_end37-flush_char
	.cfi_endproc

	.align	16, 0x90
	.type	write_err,@function
write_err:                              # @write_err
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
	movabsq	$.L.str.77, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	popq	%rbp
	retq
.Lfunc_end38:
	.size	write_err, .Lfunc_end38-write_err
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
	.quad	.L.str.9
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.11
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.12
	.quad	.L.str.13
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.14
	.quad	.L.str.15
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.17
	.size	query.save_args, 216

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
	.asciz	"Image to save"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"drawable"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Drawable to save"
	.size	.L.str.5, 17

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
	.asciz	"The name entered"
	.size	.L.str.9, 17

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"interlace"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Try to save as interlaced"
	.size	.L.str.11, 26

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"loop"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"(animated gif) loop infinitely"
	.size	.L.str.13, 31

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"default-delay"
	.size	.L.str.14, 14

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"(animated gif) Default delay between framese in milliseconds"
	.size	.L.str.15, 61

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"default-dispose"
	.size	.L.str.16, 16

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"(animated gif) Default disposal type (0=`don't care`, 1=combine, 2=replace)"
	.size	.L.str.17, 76

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"file-gif-save"
	.size	.L.str.18, 14

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"saves files in Compuserve GIF file format"
	.size	.L.str.19, 42

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Save a file in Compuserve GIF format, with possible animation, transparency, and comment.  To save an animation, operate on a multi-layer file.  The plug-in will intrepret <50% alpha as transparent.  When run non-interactively, the value for the comment is taken from the 'gimp-comment' parasite.  "
	.size	.L.str.20, 299

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Spencer Kimball, Peter Mattis, Adam Moss, David Koblas"
	.size	.L.str.21, 55

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"1995-1997"
	.size	.L.str.22, 10

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"GIF image"
	.size	.L.str.23, 10

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"INDEXED*, GRAY*"
	.size	.L.str.24, 16

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"image/gif"
	.size	.L.str.25, 10

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gif"
	.size	.L.str.26, 4

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.zero	1
	.size	.L.str.27, 1

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	run_mode,@object        # @run_mode
	.local	run_mode
	.comm	run_mode,4,4
	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.28, 20

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"UTF-8"
	.size	.L.str.29, 6

	.type	gsvals,@object          # @gsvals
	.data
	.align	4
gsvals:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	100                     # 0x64
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	gsvals, 32

	.type	.L.str.30,@object       # @.str.30
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.30:
	.asciz	"GIF"
	.size	.L.str.30, 4

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Unable to save '%s'.  The GIF file format does not support images that are more than %d pixels wide or tall."
	.size	.L.str.31, 109

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"The image you are trying to save as a GIF contains layers which extend beyond the actual borders of the image."
	.size	.L.str.32, 111

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gtk-cancel"
	.size	.L.str.33, 11

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gimp-tool-crop"
	.size	.L.str.34, 15

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"The GIF file format does not allow this.  You may choose whether to crop all of the layers to the image borders, or cancel this save."
	.size	.L.str.35, 134

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"ui/plug-ins/plug-in-file-gif.ui"
	.size	.L.str.36, 32

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Error loading UI file '%s':\n%s"
	.size	.L.str.37, 31

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"???"
	.size	.L.str.38, 4

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"main-vbox"
	.size	.L.str.39, 10

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"save-comment"
	.size	.L.str.40, 13

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"as-animation"
	.size	.L.str.41, 13

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"comment"
	.size	.L.str.42, 8

	.type	globalcomment,@object   # @globalcomment
	.local	globalcomment
	.comm	globalcomment,8,8
	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"gimp-comment"
	.size	.L.str.43, 13

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"changed"
	.size	.L.str.44, 8

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"loop-forever"
	.size	.L.str.45, 13

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"delay-spin"
	.size	.L.str.46, 11

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"dispose-combo"
	.size	.L.str.47, 14

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"I don't care"
	.size	.L.str.48, 13

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Cumulative layers (combine)"
	.size	.L.str.49, 28

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"One frame per layer (replace)"
	.size	.L.str.50, 30

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"use-default-delay"
	.size	.L.str.51, 18

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"use-default-dispose"
	.size	.L.str.52, 20

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"animation-frame"
	.size	.L.str.53, 16

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"You can only export as animation when the image has more than one layer. The image you are trying to export only has one layer."
	.size	.L.str.54, 128

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"active"
	.size	.L.str.55, 7

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"sensitive"
	.size	.L.str.56, 10

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"toggled"
	.size	.L.str.57, 8

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"The default comment is limited to %d characters."
	.size	.L.str.58, 49

	.type	comment_was_edited,@object # @comment_was_edited
	.local	comment_was_edited
	.comm	comment_was_edited,4,4
	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"value-changed"
	.size	.L.str.59, 14

	.type	comment_parasite,@object # @comment_parasite
	.local	comment_parasite
	.comm	comment_parasite,8,8
	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"The GIF format only supports comments in 7bit ASCII encoding. No comment is saved."
	.size	.L.str.60, 83

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Cannot save RGB color images. Convert to indexed color or grayscale first."
	.size	.L.str.61, 75

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"wb"
	.size	.L.str.62, 3

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.63, 36

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Saving '%s'"
	.size	.L.str.64, 12

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"GIF: Too many colours?\n"
	.size	.L.str.65, 24

	.type	Interlace,@object       # @Interlace
	.local	Interlace
	.comm	Interlace,4,4
	.type	cur_progress,@object    # @cur_progress
	.local	cur_progress
	.comm	cur_progress,4,4
	.type	max_progress,@object    # @max_progress
	.local	max_progress
	.comm	max_progress,4,4
	.type	rowstride,@object       # @rowstride
	.local	rowstride
	.comm	rowstride,4,4
	.type	pixels,@object          # @pixels
	.local	pixels
	.comm	pixels,8,8
	.type	save_image.onceonly,@object # @save_image.onceonly
	.local	save_image.onceonly
	.comm	save_image.onceonly,4,4
	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Delay inserted to prevent evil CPU-sucking animation."
	.size	.L.str.66, 54

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"GIF: colors_to_bpp - Eep! too many colours: %d\n"
	.size	.L.str.67, 48

	.type	Width,@object           # @Width
	.local	Width
	.comm	Width,4,4
	.type	Height,@object          # @Height
	.local	Height
	.comm	Height,4,4
	.type	CountDown,@object       # @CountDown
	.local	CountDown
	.comm	CountDown,8,8
	.type	Pass,@object            # @Pass
	.local	Pass
	.comm	Pass,4,4
	.type	cury,@object            # @cury
	.local	cury
	.comm	cury,4,4
	.type	curx,@object            # @curx
	.local	curx
	.comm	curx,4,4
	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"GIF89a"
	.size	.L.str.68, 7

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"GIF87a"
	.size	.L.str.69, 7

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"NETSCAPE2.0"
	.size	.L.str.70, 12

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"GIF: warning:comment too large - comment block not written.\n"
	.size	.L.str.71, 61

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"GIF: 2nd pass - Increasing bounds and using colour index %d.\n"
	.size	.L.str.72, 62

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Couldn't simply reduce colors further. Saving as opaque."
	.size	.L.str.73, 57

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"GIF: bpp_to_colors - Eep! bpp==%d !\n"
	.size	.L.str.74, 37

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"(combine)"
	.size	.L.str.75, 10

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"(replace)"
	.size	.L.str.76, 10

	.type	g_init_bits,@object     # @g_init_bits
	.local	g_init_bits
	.comm	g_init_bits,4,4
	.type	g_outfile,@object       # @g_outfile
	.local	g_outfile
	.comm	g_outfile,8,8
	.type	cur_bits,@object        # @cur_bits
	.local	cur_bits
	.comm	cur_bits,4,4
	.type	cur_accum,@object       # @cur_accum
	.local	cur_accum
	.comm	cur_accum,8,8
	.type	offset,@object          # @offset
	.local	offset
	.comm	offset,4,4
	.type	out_count,@object       # @out_count
	.local	out_count
	.comm	out_count,8,8
	.type	clear_flg,@object       # @clear_flg
	.local	clear_flg
	.comm	clear_flg,4,4
	.type	in_count,@object        # @in_count
	.data
	.align	8
in_count:
	.quad	1                       # 0x1
	.size	in_count, 8

	.type	ClearCode,@object       # @ClearCode
	.local	ClearCode
	.comm	ClearCode,4,4
	.type	EOFCode,@object         # @EOFCode
	.local	EOFCode
	.comm	EOFCode,4,4
	.type	free_ent,@object        # @free_ent
	.local	free_ent
	.comm	free_ent,4,4
	.type	n_bits,@object          # @n_bits
	.local	n_bits
	.comm	n_bits,4,4
	.type	maxcode,@object         # @maxcode
	.local	maxcode
	.comm	maxcode,4,4
	.type	maxbits,@object         # @maxbits
	.align	4
maxbits:
	.long	12                      # 0xc
	.size	maxbits, 4

	.type	htab,@object            # @htab
	.local	htab
	.comm	htab,40024,16
	.type	codetab,@object         # @codetab
	.local	codetab
	.comm	codetab,10006,16
	.type	maxmaxcode,@object      # @maxmaxcode
	.align	4
maxmaxcode:
	.long	4096                    # 0x1000
	.size	maxmaxcode, 4

	.type	a_count,@object         # @a_count
	.local	a_count
	.comm	a_count,4,4
	.type	masks,@object           # @masks
	.align	16
masks:
	.quad	0                       # 0x0
	.quad	1                       # 0x1
	.quad	3                       # 0x3
	.quad	7                       # 0x7
	.quad	15                      # 0xf
	.quad	31                      # 0x1f
	.quad	63                      # 0x3f
	.quad	127                     # 0x7f
	.quad	255                     # 0xff
	.quad	511                     # 0x1ff
	.quad	1023                    # 0x3ff
	.quad	2047                    # 0x7ff
	.quad	4095                    # 0xfff
	.quad	8191                    # 0x1fff
	.quad	16383                   # 0x3fff
	.quad	32767                   # 0x7fff
	.quad	65535                   # 0xffff
	.size	masks, 136

	.type	accum,@object           # @accum
	.local	accum
	.comm	accum,256,16
	.type	.L.str.77,@object       # @.str.77
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.77:
	.asciz	"Error writing output file."
	.size	.L.str.77, 27


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
