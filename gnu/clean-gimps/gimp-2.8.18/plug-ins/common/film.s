	.text
	.file	"film.bc"
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
	subq	$72, %rsp
.Ltmp3:
	.cfi_offset %rbx, -40
.Ltmp4:
	.cfi_offset %r14, -32
.Ltmp5:
	.cfi_offset %r15, -24
	movabsq	$.L.str.26, %rdi
	movabsq	$.L.str.27, %rsi
	movabsq	$.L.str.28, %rdx
	movabsq	$.L.str.29, %rcx
	movabsq	$.L.str.30, %r8
	movabsq	$.L.str.31, %r9
	movabsq	$.L.str.32, %rax
	movabsq	$.L.str.33, %r10
	movl	$1, %r11d
	movl	$12, %ebx
	movabsq	$query.args, %r14
	movabsq	$query.return_vals, %r15
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$12, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	%r15, 48(%rsp)
	movl	%ebx, -28(%rbp)         # 4-byte Spill
	movl	%r11d, -32(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.26, %rdi
	movabsq	$.L.str.34, %rsi
	callq	gimp_plugin_menu_register
	movl	%eax, -36(%rbp)         # 4-byte Spill
	addq	$72, %rsp
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -44(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.35, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.35, %rdi
	movabsq	$.L.str.36, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.35, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, run_mode(%rip)
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movq	-40(%rbp), %rax
	movq	$run.values, (%rax)
	movl	$21, run.values(%rip)
	movl	-44(%rbp), %ecx
	movl	%ecx, run.values+8(%rip)
	movl	$13, run.values+40(%rip)
	movl	$-1, run.values+48(%rip)
	movl	run_mode(%rip), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_35
.LBB1_35:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_36
.LBB1_36:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_20
	jmp	.LBB1_21
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.26, %rdi
	movabsq	$filmvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-24(%rbp), %rsi
	movl	48(%rsi), %edi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	film_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	jmp	.LBB1_34
.LBB1_5:                                # %if.end
	jmp	.LBB1_22
.LBB1_6:                                # %sw.bb.9
	cmpl	$12, -12(%rbp)
	jne	.LBB1_8
# BB#7:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpl	$1, 408(%rax)
	jge	.LBB1_9
.LBB1_8:                                # %if.then.14
	movl	$1, -44(%rbp)
	jmp	.LBB1_19
.LBB1_9:                                # %if.else
	movq	-24(%rbp), %rax
	cmpl	$0, 128(%rax)
	setle	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, filmvals+400
	cmpl	$0, filmvals+400
	je	.LBB1_11
# BB#10:                                # %cond.true
	movl	$128, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_12
.LBB1_11:                               # %cond.false
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
.LBB1_12:                               # %cond.end
	movl	-100(%rbp), %eax        # 4-byte Reload
	movabsq	$filmvals, %rcx
	addq	$136, %rcx
	movl	$256, %edx              # imm = 0x100
                                        # kill: RDX<def> EDX<kill>
	movl	%eax, filmvals
	movq	-24(%rbp), %rsi
	movq	168(%rsi), %rdi
	movq	%rdi, filmvals+8
	movq	176(%rsi), %rdi
	movq	%rdi, filmvals+16
	movq	184(%rsi), %rdi
	movq	%rdi, filmvals+24
	movq	192(%rsi), %rsi
	movq	%rsi, filmvals+32
	movq	-24(%rbp), %rsi
	movl	208(%rsi), %eax
	movl	%eax, filmvals+96
	movq	-24(%rbp), %rsi
	movq	248(%rsi), %rsi
	movq	%rcx, %rdi
	callq	g_strlcpy
	movq	-24(%rbp), %rcx
	movq	288(%rcx), %rdx
	movq	%rdx, filmvals+104
	movq	296(%rcx), %rdx
	movq	%rdx, filmvals+112
	movq	304(%rcx), %rdx
	movq	%rdx, filmvals+120
	movq	312(%rcx), %rcx
	movq	%rcx, filmvals+128
	movq	-24(%rbp), %rcx
	movl	328(%rcx), %r8d
	movl	%r8d, filmvals+392
	movq	-24(%rbp), %rcx
	movl	368(%rcx), %r8d
	movl	%r8d, filmvals+396
	movq	-24(%rbp), %rcx
	movl	408(%rcx), %r8d
	movl	%r8d, filmvals+404
	cmpl	$64, filmvals+404
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jle	.LBB1_14
# BB#13:                                # %if.then.45
	movl	$64, filmvals+404
.LBB1_14:                               # %if.end.46
	movl	$0, -52(%rbp)
.LBB1_15:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	filmvals+404, %eax
	jge	.LBB1_18
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB1_15 Depth=1
	movslq	-52(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	448(%rcx), %rcx
	movl	(%rcx,%rax,4), %edx
	movslq	-52(%rbp), %rax
	movl	%edx, filmvals+408(,%rax,4)
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB1_15 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB1_15
.LBB1_18:                               # %for.end
	jmp	.LBB1_19
.LBB1_19:                               # %if.end.54
	jmp	.LBB1_22
.LBB1_20:                               # %sw.bb.55
	movabsq	$.L.str.26, %rdi
	movabsq	$filmvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB1_22
.LBB1_21:                               # %sw.default
	jmp	.LBB1_22
.LBB1_22:                               # %sw.epilog
	callq	check_filmvals
	cmpl	$0, %eax
	jne	.LBB1_24
# BB#23:                                # %if.then.59
	movl	$1, -44(%rbp)
.LBB1_24:                               # %if.end.60
	cmpl	$3, -44(%rbp)
	jne	.LBB1_33
# BB#25:                                # %if.then.63
	movabsq	$.L.str.37, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	film
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	jge	.LBB1_27
# BB#26:                                # %if.then.69
	movl	$0, -44(%rbp)
	jmp	.LBB1_30
.LBB1_27:                               # %if.else.70
	movl	-48(%rbp), %eax
	movl	%eax, run.values+48
	movl	-48(%rbp), %edi
	callq	gimp_image_undo_enable
	movl	-48(%rbp), %edi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gimp_image_clean_all
	cmpl	$1, run_mode
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB1_29
# BB#28:                                # %if.then.75
	movl	-48(%rbp), %edi
	callq	gimp_display_new
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB1_29:                               # %if.end.77
	jmp	.LBB1_30
.LBB1_30:                               # %if.end.78
	cmpl	$0, run_mode
	jne	.LBB1_32
# BB#31:                                # %if.then.81
	movabsq	$.L.str.26, %rdi
	movabsq	$filmvals, %rax
	movl	$664, %edx              # imm = 0x298
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB1_32:                               # %if.end.83
	jmp	.LBB1_33
.LBB1_33:                               # %if.end.84
	movl	-44(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_34:                               # %return
	addq	$144, %rsp
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
	.type	film_dialog,@function
film_dialog:                            # @film_dialog
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
	pushq	%r14
	pushq	%rbx
	subq	$208, %rsp
.Ltmp15:
	.cfi_offset %rbx, -32
.Ltmp16:
	.cfi_offset %r14, -24
	movabsq	$.L.str.38, %rax
	movl	$1, %esi
	movl	%edi, -20(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.39, %rdi
	callq	gettext
	movabsq	$.L.str.40, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.26, %r9
	movabsq	$.L.str.41, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.42, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -116(%rbp)        # 4-byte Spill
	movl	%r10d, -120(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-32(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_notebook_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	create_selection_tab
	movq	-48(%rbp), %rdi
	callq	create_advanced_tab
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB3_9
# BB#1:                                 # %if.then
	leaq	-96(%rbp), %rsi
	movl	$0, -56(%rbp)
	movq	filmint+64, %rdi
	callq	gtk_tree_model_get_iter_first
	movl	%eax, -60(%rbp)
.LBB3_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -60(%rbp)
	je	.LBB3_8
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB3_2 Depth=1
	leaq	-96(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-100(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	filmint+64, %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	cmpl	$0, -100(%rbp)
	jl	.LBB3_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB3_2 Depth=1
	cmpl	$64, -56(%rbp)
	jge	.LBB3_6
# BB#5:                                 # %if.then.27
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	-100(%rbp), %eax
	movl	-56(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -56(%rbp)
	movslq	%ecx, %rsi
	movl	%eax, filmvals+408(,%rsi,4)
.LBB3_6:                                # %if.end
                                        #   in Loop: Header=BB3_2 Depth=1
	jmp	.LBB3_7
.LBB3_7:                                # %for.inc
                                        #   in Loop: Header=BB3_2 Depth=1
	leaq	-96(%rbp), %rsi
	movq	filmint+64, %rdi
	callq	gtk_tree_model_iter_next
	movl	%eax, -60(%rbp)
	jmp	.LBB3_2
.LBB3_8:                                # %for.end
	movl	-56(%rbp), %eax
	movl	%eax, filmvals+404
.LBB3_9:                                # %if.end.29
	movq	-32(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-52(%rbp), %eax
	addq	$208, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	film_dialog, .Lfunc_end3-film_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	check_filmvals,@function
check_filmvals:                         # @check_filmvals
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
	cmpl	$10, filmvals
	jge	.LBB4_2
# BB#1:                                 # %if.then
	movl	$10, filmvals
.LBB4_2:                                # %if.end
	cmpl	$0, filmvals+96
	jge	.LBB4_4
# BB#3:                                 # %if.then.2
	movl	$0, filmvals+96
.LBB4_4:                                # %if.end.3
	movsbl	filmvals+136, %eax
	cmpl	$0, %eax
	jne	.LBB4_6
# BB#5:                                 # %if.then.6
	movl	$.L.str.78, %eax
	movl	%eax, %esi
	movl	$filmvals+136, %eax
	movl	%eax, %edi
	callq	strcpy
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB4_6:                                # %if.end.7
	cmpl	$1, filmvals+404
	jge	.LBB4_8
# BB#7:                                 # %if.then.10
	movl	$0, -4(%rbp)
	jmp	.LBB4_9
.LBB4_8:                                # %if.end.11
	movl	$1, -4(%rbp)
.LBB4_9:                                # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	check_filmvals, .Lfunc_end4-check_filmvals
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4602678819172646912     # double 0.5
.LCPI5_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	film,@function
film:                                   # @film
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
	subq	$336, %rsp              # imm = 0x150
	movabsq	$filmvals, %rax
	addq	$408, %rax              # imm = 0x198
	movq	$0, -144(%rbp)
	movl	filmvals+404, %ecx
	movl	%ecx, -80(%rbp)
	movq	%rax, -120(%rbp)
	cmpl	$0, -80(%rbp)
	jg	.LBB5_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB5_49
.LBB5_2:                                # %if.end
	callq	gimp_context_push
	movabsq	$filmvals, %rcx
	addq	$104, %rcx
	movq	%rcx, %rdi
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	gimp_context_set_foreground
	movabsq	$filmvals, %rcx
	addq	$8, %rcx
	movq	%rcx, %rdi
	movl	%eax, -216(%rbp)        # 4-byte Spill
	callq	gimp_context_set_background
	cmpl	$0, filmvals+400
	movl	%eax, -220(%rbp)        # 4-byte Spill
	je	.LBB5_10
# BB#3:                                 # %if.then.3
	movl	$0, -40(%rbp)
	movl	$0, -88(%rbp)
.LBB5_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-88(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB5_9
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB5_4 Depth=1
	movslq	-88(%rbp), %rax
	movq	-120(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_image_height
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jle	.LBB5_7
# BB#6:                                 # %if.then.7
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB5_7:                                # %if.end.8
                                        #   in Loop: Header=BB5_4 Depth=1
	jmp	.LBB5_8
.LBB5_8:                                # %for.inc
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB5_4
.LBB5_9:                                # %for.end
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-40(%rbp), %xmm1
	divsd	filmvals+40, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, filmvals
	jmp	.LBB5_11
.LBB5_10:                               # %if.else
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movl	filmvals, %eax
	movl	%eax, -28(%rbp)
	cvtsi2sdl	-28(%rbp), %xmm1
	mulsd	filmvals+40, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -40(%rbp)
.LBB5_11:                               # %if.end.13
	movl	$2, %eax
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm1
	mulsd	filmvals+48, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -44(%rbp)
	movl	-28(%rbp), %ecx
	subl	-40(%rbp), %ecx
	movl	%eax, -224(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-224(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -52(%rbp)
	cvtsi2sdl	-28(%rbp), %xmm0
	mulsd	filmvals+88, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
.LBB5_12:                               # %for.cond.22
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_14 Depth 2
	movl	-88(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB5_21
# BB#13:                                # %for.body.25
                                        #   in Loop: Header=BB5_12 Depth=1
	leaq	-108(%rbp), %rsi
	movslq	-88(%rbp), %rax
	movq	-120(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_image_get_layers
	movq	%rax, -144(%rbp)
	movslq	-88(%rbp), %rax
	movq	-120(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_image_width
	movl	%eax, -8(%rbp)
	movslq	-88(%rbp), %rcx
	movq	-120(%rbp), %rsi
	movl	(%rsi,%rcx,4), %edi
	callq	gimp_image_height
	movl	%eax, -12(%rbp)
	cvtsi2sdl	-40(%rbp), %xmm0
	cvtsi2sdl	-12(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	cvtsi2sdl	-8(%rbp), %xmm0
	mulsd	-104(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -36(%rbp)
	movl	$0, -92(%rbp)
.LBB5_14:                               # %for.cond.41
                                        #   Parent Loop BB5_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-92(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jge	.LBB5_19
# BB#15:                                # %for.body.44
                                        #   in Loop: Header=BB5_14 Depth=2
	movslq	-92(%rbp), %rax
	movq	-144(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	je	.LBB5_17
# BB#16:                                # %if.then.49
                                        #   in Loop: Header=BB5_14 Depth=2
	jmp	.LBB5_18
.LBB5_17:                               # %if.end.50
                                        #   in Loop: Header=BB5_14 Depth=2
	movl	$2, %eax
	movl	-44(%rbp), %ecx
	movl	%eax, -228(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-228(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-44(%rbp), %eax
	cltd
	idivl	%ecx
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
.LBB5_18:                               # %for.inc.57
                                        #   in Loop: Header=BB5_14 Depth=2
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB5_14
.LBB5_19:                               # %for.end.59
                                        #   in Loop: Header=BB5_12 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
# BB#20:                                # %for.inc.60
                                        #   in Loop: Header=BB5_12 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB5_12
.LBB5_21:                               # %for.end.62
	movabsq	$.L.str.79, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	leaq	-132(%rbp), %r8
	leaq	-152(%rbp), %r9
	leaq	-200(%rbp), %rdi
	movl	-32(%rbp), %esi
	movl	-28(%rbp), %edx
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	create_new_image
	movl	$1, %esi
	movl	%eax, -124(%rbp)
	movl	-132(%rbp), %edi
	callq	gimp_drawable_fill
	movl	$2, %ecx
	cvtsi2sdl	-28(%rbp), %xmm0
	mulsd	filmvals+56, %xmm0
	cvttsd2si	%xmm0, %edx
	movl	%edx, -56(%rbp)
	cvtsi2sdl	-28(%rbp), %xmm0
	mulsd	filmvals+64, %xmm0
	cvttsd2si	%xmm0, %edx
	movl	%edx, -60(%rbp)
	cvtsi2sdl	-28(%rbp), %xmm0
	mulsd	filmvals+72, %xmm0
	cvttsd2si	%xmm0, %edx
	movl	%edx, -64(%rbp)
	cvtsi2sdl	-28(%rbp), %xmm0
	mulsd	filmvals+80, %xmm0
	cvttsd2si	%xmm0, %edx
	movl	%edx, -68(%rbp)
	movl	-68(%rbp), %edx
	movl	%eax, -244(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%eax, -72(%rbp)
	movl	-60(%rbp), %edi
	movl	-64(%rbp), %esi
	callq	create_hole_rgb
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB5_26
# BB#22:                                # %if.then.81
	jmp	.LBB5_23
.LBB5_23:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-72(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB5_25
# BB#24:                                # %while.body
                                        #   in Loop: Header=BB5_23 Depth=1
	movq	-152(%rbp), %rdi
	movl	-72(%rbp), %esi
	movl	-56(%rbp), %edx
	movl	-60(%rbp), %ecx
	movl	-64(%rbp), %r8d
	movq	-24(%rbp), %r9
	callq	draw_hole_rgb
	movq	-152(%rbp), %rdi
	movl	-72(%rbp), %esi
	movl	-28(%rbp), %ecx
	subl	-56(%rbp), %ecx
	subl	-64(%rbp), %ecx
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %r8d
	movq	-24(%rbp), %r9
	movl	%edx, -248(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-248(%rbp), %ecx        # 4-byte Reload
	callq	draw_hole_rgb
	movl	-60(%rbp), %ecx
	addl	-68(%rbp), %ecx
	addl	-72(%rbp), %ecx
	movl	%ecx, -72(%rbp)
	jmp	.LBB5_23
.LBB5_25:                               # %while.end
	movq	-24(%rbp), %rdi
	callq	g_free
.LBB5_26:                               # %if.end.88
	movq	-152(%rbp), %rdi
	callq	gimp_drawable_detach
	movl	$0, -48(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -88(%rbp)
.LBB5_27:                               # %for.cond.89
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_31 Depth 2
	movl	-88(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB5_46
# BB#28:                                # %for.body.92
                                        #   in Loop: Header=BB5_27 Depth=1
	movslq	-88(%rbp), %rax
	movq	-120(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_image_duplicate
	movl	%eax, -136(%rbp)
	movl	-136(%rbp), %edi
	callq	gimp_image_width
	movl	%eax, -8(%rbp)
	movl	-136(%rbp), %edi
	callq	gimp_image_height
	movl	%eax, -12(%rbp)
	cvtsi2sdl	-40(%rbp), %xmm0
	cvtsi2sdl	-12(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	cvtsi2sdl	-8(%rbp), %xmm0
	mulsd	-104(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -36(%rbp)
	movl	-136(%rbp), %edi
	callq	gimp_image_base_type
	cmpl	$0, %eax
	je	.LBB5_30
# BB#29:                                # %if.then.107
                                        #   in Loop: Header=BB5_27 Depth=1
	movl	-136(%rbp), %edi
	callq	gimp_image_convert_rgb
	movl	%eax, -252(%rbp)        # 4-byte Spill
.LBB5_30:                               # %if.end.109
                                        #   in Loop: Header=BB5_27 Depth=1
	movl	-136(%rbp), %edi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	callq	gimp_image_scale
	leaq	-108(%rbp), %rsi
	movl	-136(%rbp), %edi
	movl	%eax, -256(%rbp)        # 4-byte Spill
	callq	gimp_image_get_layers
	movq	%rax, -144(%rbp)
	movl	$0, -92(%rbp)
.LBB5_31:                               # %for.cond.112
                                        #   Parent Loop BB5_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-92(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jge	.LBB5_44
# BB#32:                                # %for.body.115
                                        #   in Loop: Header=BB5_31 Depth=2
	movslq	-92(%rbp), %rax
	movq	-144(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	je	.LBB5_34
# BB#33:                                # %if.then.120
                                        #   in Loop: Header=BB5_31 Depth=2
	jmp	.LBB5_43
.LBB5_34:                               # %if.end.121
                                        #   in Loop: Header=BB5_31 Depth=2
	movl	$2, %eax
	movl	-44(%rbp), %ecx
	movl	%eax, -260(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-260(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	movslq	-92(%rbp), %rsi
	movq	-144(%rbp), %rdi
	movl	(%rdi,%rsi,4), %eax
	movl	%eax, -128(%rbp)
	movl	-128(%rbp), %edi
	callq	gimp_layer_resize_to_image_size
	movl	-128(%rbp), %edi
	movl	-124(%rbp), %esi
	movl	%eax, -264(%rbp)        # 4-byte Spill
	callq	gimp_layer_new_from_drawable
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	%eax, -204(%rbp)
	movl	-124(%rbp), %edi
	movl	-204(%rbp), %esi
	movl	%ecx, %edx
	callq	gimp_image_insert_layer
	movl	-204(%rbp), %edi
	movl	-48(%rbp), %esi
	movl	-52(%rbp), %edx
	movl	%eax, -268(%rbp)        # 4-byte Spill
	callq	gimp_layer_set_offsets
	cmpl	$0, -76(%rbp)
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jle	.LBB5_42
# BB#35:                                # %land.lhs.true
                                        #   in Loop: Header=BB5_31 Depth=2
	cmpl	$0, filmvals+392
	jne	.LBB5_37
# BB#36:                                # %lor.lhs.false
                                        #   in Loop: Header=BB5_31 Depth=2
	cmpl	$0, filmvals+396
	je	.LBB5_42
.LBB5_37:                               # %if.then.134
                                        #   in Loop: Header=BB5_31 Depth=2
	cmpl	$0, filmvals+392
	je	.LBB5_39
# BB#38:                                # %if.then.136
                                        #   in Loop: Header=BB5_31 Depth=2
	movl	$2, %eax
	movl	-132(%rbp), %edi
	movl	filmvals+96, %ecx
	addl	-96(%rbp), %ecx
	movl	-48(%rbp), %edx
	movl	-36(%rbp), %esi
	movl	%eax, -276(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -280(%rbp)        # 4-byte Spill
	cltd
	movl	-276(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	-280(%rbp), %r8d        # 4-byte Reload
	addl	%eax, %r8d
	movl	-56(%rbp), %eax
	subl	-76(%rbp), %eax
	cltd
	idivl	%esi
	movl	-76(%rbp), %r9d
	movl	%ecx, %esi
	movl	%r8d, %edx
	movl	%eax, %ecx
	movl	%r9d, %r8d
	callq	draw_number
.LBB5_39:                               # %if.end.142
                                        #   in Loop: Header=BB5_31 Depth=2
	cmpl	$0, filmvals+396
	je	.LBB5_41
# BB#40:                                # %if.then.144
                                        #   in Loop: Header=BB5_31 Depth=2
	movl	$2, %eax
	movl	-132(%rbp), %edi
	movl	filmvals+96, %ecx
	addl	-96(%rbp), %ecx
	movl	-48(%rbp), %edx
	movl	-36(%rbp), %esi
	movl	%eax, -284(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -288(%rbp)        # 4-byte Spill
	cltd
	movl	-284(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	-288(%rbp), %r8d        # 4-byte Reload
	addl	%eax, %r8d
	movl	-28(%rbp), %eax
	movl	-56(%rbp), %r9d
	addl	-76(%rbp), %r9d
	movl	%eax, -292(%rbp)        # 4-byte Spill
	movl	%r9d, %eax
	cltd
	idivl	%esi
	movl	-292(%rbp), %r9d        # 4-byte Reload
	subl	%eax, %r9d
	movl	-76(%rbp), %eax
	movl	%ecx, %esi
	movl	%r8d, %edx
	movl	%r9d, %ecx
	movl	%eax, %r8d
	callq	draw_number
.LBB5_41:                               # %if.end.151
                                        #   in Loop: Header=BB5_31 Depth=2
	jmp	.LBB5_42
.LBB5_42:                               # %if.end.152
                                        #   in Loop: Header=BB5_31 Depth=2
	movl	$2, %eax
	movl	-36(%rbp), %ecx
	movl	-44(%rbp), %edx
	movl	%eax, -296(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-296(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	addl	-48(%rbp), %ecx
	movl	%ecx, -48(%rbp)
	movl	-96(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-84(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	-96(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -96(%rbp)
	movl	%eax, -300(%rbp)        # 4-byte Spill
.LBB5_43:                               # %for.inc.162
                                        #   in Loop: Header=BB5_31 Depth=2
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB5_31
.LBB5_44:                               # %for.end.164
                                        #   in Loop: Header=BB5_27 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movl	-136(%rbp), %edi
	callq	gimp_image_delete
	movl	%eax, -304(%rbp)        # 4-byte Spill
# BB#45:                                # %for.inc.166
                                        #   in Loop: Header=BB5_27 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB5_27
.LBB5_46:                               # %for.end.168
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	-124(%rbp), %edi
	movl	%eax, -308(%rbp)        # 4-byte Spill
	callq	gimp_image_flatten
	movl	-124(%rbp), %edi
	movl	%eax, -312(%rbp)        # 4-byte Spill
	callq	gimp_image_get_floating_sel
	movl	%eax, -208(%rbp)
	cmpl	$-1, -208(%rbp)
	je	.LBB5_48
# BB#47:                                # %if.then.174
	movl	-208(%rbp), %edi
	callq	gimp_floating_sel_anchor
	movl	%eax, -316(%rbp)        # 4-byte Spill
.LBB5_48:                               # %if.end.176
	callq	gimp_context_pop
	movl	-124(%rbp), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -320(%rbp)        # 4-byte Spill
.LBB5_49:                               # %return
	movl	-4(%rbp), %eax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end5:
	.size	film, .Lfunc_end5-film
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI6_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_1:
	.quad	4688247212092686336     # double 262144
.LCPI6_2:
	.quad	4607182418800017408     # double 1
.LCPI6_3:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	create_selection_tab,@function
create_selection_tab:                   # @create_selection_tab
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
	subq	$624, %rsp              # imm = 0x270
	xorl	%eax, %eax
	movl	$12, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%eax, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.43, %rdi
	movq	-48(%rbp), %rsi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movq	-48(%rbp), %rdi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movl	-180(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	callq	gtk_size_group_new
	movabsq	$.L.str.39, %rdi
	movq	%rax, -24(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	movl	-196(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.44, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	movl	-220(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.45, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$filmvals, %rdi
	addq	$400, %rdi              # imm = 0x190
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %r10
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-232(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movl	$2, %r9d
	xorl	%edx, %edx
	movl	%r9d, %edi
	movl	%r9d, %esi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-32(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -268(%rbp)        # 4-byte Spill
	movl	-268(%rbp), %ecx        # 4-byte Reload
	movl	-268(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-96(%rbp), %rdi
	movsd	.LCPI6_3, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI6_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI6_2, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm5, %xmm5
	xorl	%esi, %esi
	cvtsi2sdl	filmvals, %xmm3
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-280(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -288(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-288(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-280(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-288(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.46, %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-88(%rbp), %r8
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$.L.str.47, %rsi
	movabsq	$gimp_int_adjustment_update, %rax
	movabsq	$filmvals, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movabsq	$.L.str.48, %rsi
	movabsq	$.L.str.49, %rcx
	movl	$6, %r8d
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rdi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-312(%rbp), %rdx        # 8-byte Reload
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	g_object_bind_property
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	movq	%rdx, -344(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movl	$1, %esi
	movq	%rax, %rdi
	callq	g_list_nth_data
	movabsq	$.L.str.48, %rsi
	movabsq	$.L.str.49, %rcx
	movl	$6, %r8d
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_bind_property
	movq	-80(%rbp), %rcx
	movq	%rax, -352(%rbp)        # 8-byte Spill
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	filmvals+400, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movabsq	$.L.str.50, %rdi
	callq	gettext
	movl	$50, %esi
	movl	$20, %edx
	movabsq	$filmvals, %rcx
	addq	$8, %rcx
	xorl	%r8d, %r8d
	movq	%rax, %rdi
	callq	gimp_color_button_new
	movq	%rax, -104(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.51, %rdi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-104(%rbp), %r8
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movl	%edx, -380(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-380(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movabsq	$.L.str.52, %rsi
	movabsq	$gimp_color_button_get_color, %rax
	movabsq	$filmvals, %rcx
	addq	$8, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-104(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movabsq	$.L.str.53, %rdi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-32(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -436(%rbp)        # 4-byte Spill
	movl	-436(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-96(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI6_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI6_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI6_3, %xmm4         # xmm4 = mem[0],zero
	xorl	%esi, %esi
	cvtsi2sdl	filmvals+96, %xmm3
	movsd	%xmm0, -448(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-448(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -456(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-456(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-448(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-456(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.54, %rdi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-88(%rbp), %r8
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movabsq	$.L.str.47, %rsi
	movabsq	$gimp_int_adjustment_update, %rax
	movabsq	$filmvals, %rcx
	addq	$96, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movabsq	$filmvals, %rcx
	addq	$136, %rcx
	movq	%rcx, %rsi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gimp_font_select_button_new
	movabsq	$.L.str.55, %rsi
	movabsq	$film_font_select_callback, %rcx
	movabsq	$filmvals, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	movq	%rdx, -488(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-488(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -496(%rbp)        # 8-byte Spill
	movq	%rcx, -504(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.56, %rdi
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %r9d
	xorps	%xmm0, %xmm0
	movss	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-112(%rbp), %r8
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %edx
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movabsq	$.L.str.57, %rdi
	callq	gettext
	movl	$50, %esi
	movl	$20, %edx
	movabsq	$filmvals, %rcx
	addq	$104, %rcx
	xorl	%r8d, %r8d
	movq	%rax, %rdi
	callq	gimp_color_button_new
	movq	%rax, -104(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.51, %rdi
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-104(%rbp), %r8
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movabsq	$.L.str.52, %rsi
	movabsq	$gimp_color_button_get_color, %rax
	movabsq	$filmvals, %rcx
	addq	$104, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-104(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movl	$0, -128(%rbp)
	movq	%rax, -536(%rbp)        # 8-byte Spill
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, -128(%rbp)
	jge	.LBB6_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	cmpl	$0, -128(%rbp)
	je	.LBB6_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB6_1 Depth=1
	movabsq	$.L.str.58, %rdi
	callq	gettext
	movq	%rax, -544(%rbp)        # 8-byte Spill
	jmp	.LBB6_5
.LBB6_4:                                # %cond.false
                                        #   in Loop: Header=BB6_1 Depth=1
	movabsq	$.L.str.59, %rdi
	callq	gettext
	movq	%rax, -544(%rbp)        # 8-byte Spill
.LBB6_5:                                # %cond.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-544(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -556(%rbp)        # 4-byte Spill
	movl	-556(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movslq	-128(%rbp), %rsi
	movl	filmvals+392(,%rsi,4), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.45, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movabsq	$filmvals, %rdi
	addq	$392, %rdi              # imm = 0x188
	movq	-80(%rbp), %r10
	movslq	-128(%rbp), %r11
	shlq	$2, %r11
	addq	%r11, %rdi
	movq	%rdi, -576(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-576(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -584(%rbp)        # 8-byte Spill
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB6_1
.LBB6_7:                                # %for.end
	movabsq	$.L.str.60, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	movq	-72(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	leaq	-124(%rbp), %rdi
	callq	gimp_image_list
	movl	$1, %edi
	movq	%rax, -120(%rbp)
	movl	-124(%rbp), %esi
	movq	-120(%rbp), %rdx
	movq	-48(%rbp), %rcx
	callq	add_image_list
	xorl	%edi, %edi
	movl	$1, %esi
	leaq	-12(%rbp), %rdx
	movq	%rax, filmint+56
	movq	-48(%rbp), %rcx
	callq	add_image_list
	movq	%rax, filmint+64
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	addq	$624, %rsp              # imm = 0x270
	popq	%rbp
	retq
.Lfunc_end6:
	.size	create_selection_tab, .Lfunc_end6-create_selection_tab
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
.LCPI7_1:
	.quad	4562254508917369340     # double 0.001
.LCPI7_2:
	.quad	4576918229304087675     # double 0.01
	.text
	.align	16, 0x90
	.type	create_advanced_tab,@function
create_advanced_tab:                    # @create_advanced_tab
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
	pushq	%r14
	pushq	%rbx
	subq	$688, %rsp              # imm = 0x2B0
.Ltmp29:
	.cfi_offset %rbx, -32
.Ltmp30:
	.cfi_offset %r14, -24
	movabsq	$.L.str.68, %rax
	movq	%rdi, -24(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.69, %rdi
	movq	-56(%rbp), %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movq	-56(%rbp), %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movl	$7, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$12, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$5, %esi
	movl	$12, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-32(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -172(%rbp)        # 4-byte Spill
	movl	-172(%rbp), %ecx        # 4-byte Reload
	movl	-172(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movl	$0, -76(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.70, %rdi
	movl	-76(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -76(%rbp)
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movsd	.LCPI7_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI7_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI7_2, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %edx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movsd	filmvals+40, %xmm1      # xmm1 = mem[0],zero
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	-188(%rbp), %r9d        # 4-byte Reload
	movl	%edx, -212(%rbp)        # 4-byte Spill
	movl	%r9d, %edx
	movl	%ecx, -216(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-216(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -220(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-232(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-232(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-232(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.47, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$filmvals, %rdi
	addq	$40, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	%rax, filmint
	movq	-64(%rbp), %rax
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-240(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-48(%rbp), %rcx
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.71, %rdi
	movl	-76(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -76(%rbp)
	movl	%r9d, -260(%rbp)        # 4-byte Spill
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI7_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI7_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI7_2, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %r10d
	movl	$1, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	filmvals+48, %xmm1      # xmm1 = mem[0],zero
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movl	-260(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movl	%r9d, %r8d
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-288(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-288(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-288(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -292(%rbp)       # 4-byte Spill
	movl	%r11d, -296(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.47, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$filmvals, %rdi
	addq	$48, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	%rax, filmint+8
	movq	-64(%rbp), %rax
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-304(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-48(%rbp), %rcx
	movq	%rax, -312(%rbp)        # 8-byte Spill
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.72, %rdi
	movl	-76(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -76(%rbp)
	movl	%r9d, -324(%rbp)        # 4-byte Spill
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI7_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI7_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI7_2, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %r10d
	movl	$1, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	filmvals+56, %xmm1      # xmm1 = mem[0],zero
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movl	-324(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movl	%r9d, %r8d
	movsd	%xmm0, -352(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-352(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-352(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-352(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -356(%rbp)       # 4-byte Spill
	movl	%r11d, -360(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.47, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$filmvals, %rdi
	addq	$56, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	%rax, filmint+16
	movq	-64(%rbp), %rax
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-368(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-48(%rbp), %rcx
	movq	%rax, -376(%rbp)        # 8-byte Spill
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.73, %rdi
	movl	-76(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -76(%rbp)
	movl	%r9d, -388(%rbp)        # 4-byte Spill
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI7_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI7_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI7_2, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %r10d
	movl	$1, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	filmvals+64, %xmm1      # xmm1 = mem[0],zero
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movl	-388(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movl	%r9d, %r8d
	movsd	%xmm0, -416(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-416(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-416(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-416(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -420(%rbp)       # 4-byte Spill
	movl	%r11d, -424(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.47, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$filmvals, %rdi
	addq	$64, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	%rax, filmint+24
	movq	-64(%rbp), %rax
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-432(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-48(%rbp), %rcx
	movq	%rax, -440(%rbp)        # 8-byte Spill
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.74, %rdi
	movl	-76(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -76(%rbp)
	movl	%r9d, -452(%rbp)        # 4-byte Spill
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI7_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI7_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI7_2, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %r10d
	movl	$1, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	filmvals+72, %xmm1      # xmm1 = mem[0],zero
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movl	-452(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movl	%r9d, %r8d
	movsd	%xmm0, -480(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-480(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-480(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-480(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -484(%rbp)       # 4-byte Spill
	movl	%r11d, -488(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.47, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$filmvals, %rdi
	addq	$72, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	%rax, filmint+32
	movq	-64(%rbp), %rax
	movq	%rdi, -496(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-496(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-48(%rbp), %rcx
	movq	%rax, -504(%rbp)        # 8-byte Spill
	movq	%rcx, -512(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.75, %rdi
	movl	-76(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -76(%rbp)
	movl	%r9d, -516(%rbp)        # 4-byte Spill
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI7_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI7_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI7_2, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %r10d
	movl	$1, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	filmvals+80, %xmm1      # xmm1 = mem[0],zero
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movl	-516(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -536(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movl	%r9d, %r8d
	movsd	%xmm0, -544(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-544(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-544(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-544(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -548(%rbp)       # 4-byte Spill
	movl	%r11d, -552(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.47, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$filmvals, %rdi
	addq	$80, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	%rax, filmint+40
	movq	-64(%rbp), %rax
	movq	%rdi, -560(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-560(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-48(%rbp), %rcx
	movq	%rax, -568(%rbp)        # 8-byte Spill
	movq	%rcx, -576(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.76, %rdi
	movl	-76(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -76(%rbp)
	movl	%r9d, -580(%rbp)        # 4-byte Spill
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI7_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI7_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI7_2, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %r10d
	movl	$1, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	filmvals+88, %xmm1      # xmm1 = mem[0],zero
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movl	-580(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -600(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movl	%r9d, %r8d
	movsd	%xmm0, -608(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-608(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-608(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-608(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -612(%rbp)       # 4-byte Spill
	movl	%r11d, -616(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.47, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$filmvals, %rdi
	addq	$88, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	%rax, filmint+48
	movq	-64(%rbp), %rax
	movq	%rdi, -624(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-624(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	%r9d, %esi
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_end
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.77, %rdi
	callq	gtk_button_new_from_stock
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -652(%rbp)        # 4-byte Spill
	movl	-652(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.66, %rsi
	movabsq	$film_reset_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r14
	movq	%rdi, -664(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, %rdx
	movq	-664(%rbp), %rcx        # 8-byte Reload
	movq	-664(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -672(%rbp)        # 8-byte Spill
	addq	$688, %rsp              # imm = 0x2B0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	create_advanced_tab, .Lfunc_end7-create_advanced_tab
	.cfi_endproc

	.align	16, 0x90
	.type	film_font_select_callback,@function
film_font_select_callback:              # @film_font_select_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	addq	$136, %rcx
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%r8, %rdx
	callq	g_strlcpy
	movq	%rax, -48(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	film_font_select_callback, .Lfunc_end8-film_font_select_callback
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI9_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	add_image_list,@function
add_image_list:                         # @add_image_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$320, %rsp              # imm = 0x140
	movl	$1, %eax
	movl	$12, %r8d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%eax, %edi
	movl	%r8d, %esi
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	cmpl	$0, -4(%rbp)
	je	.LBB9_2
# BB#1:                                 # %cond.true
	movabsq	$.L.str.61, %rdi
	callq	gettext
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB9_3
.LBB9_2:                                # %cond.false
	movabsq	$.L.str.62, %rdi
	callq	gettext
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB9_3:                                # %cond.end
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	movl	-164(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gtk_scrolled_window_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_shadow_type
	movq	-48(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_scrolled_window_set_policy
	movq	-32(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movl	$2, %edi
	movl	$24, %ecx
	movl	%ecx, %esi
	movl	$64, %ecx
	movl	%ecx, %edx
	movb	$0, %al
	callq	gtk_list_store_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_new_with_model
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-56(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_tree_view_set_headers_visible
	cmpl	$0, -4(%rbp)
	jne	.LBB9_5
# BB#4:                                 # %if.then
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_tree_view_set_reorderable
.LBB9_5:                                # %if.end
	movq	-56(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_cell_renderer_text_new
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movabsq	$.L.str.63, %r8
	movl	$1, %r9d
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gtk_tree_view_insert_column_with_attributes
	movq	-48(%rbp), %rcx
	movl	%eax, -236(%rbp)        # 4-byte Spill
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	movl	$3, %esi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	gtk_tree_selection_set_mode
	movl	$0, -84(%rbp)
.LBB9_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB9_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB9_6 Depth=1
	leaq	-120(%rbp), %rsi
	movq	-72(%rbp), %rdi
	callq	gtk_list_store_append
	movslq	-84(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movl	(%rdi,%rsi,4), %edi
	callq	compose_image_name
	leaq	-120(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movq	%rax, -128(%rbp)
	movq	-72(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movq	-16(%rbp), %r9
	movl	(%r9,%rcx,4), %ecx
	movq	-128(%rbp), %r9
	movl	%edi, -260(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	$-1, (%rsp)
	movb	$0, %al
	callq	gtk_list_store_set
	movq	-128(%rbp), %rdi
	callq	g_free
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB9_6 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB9_6
.LBB9_9:                                # %for.end
	movabsq	$.L.str.65, %rax
	movabsq	$.L.str.64, %rcx
	cmpl	$0, -4(%rbp)
	cmovneq	%rcx, %rax
	movq	%rax, %rdi
	callq	gtk_button_new_from_stock
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -276(%rbp)        # 4-byte Spill
	movl	-276(%rbp), %ecx        # 4-byte Reload
	movl	-276(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.66, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movabsq	$del_list_item_callback, %rax
	movabsq	$add_list_item_callback, %rdi
	movq	-64(%rbp), %r10
	cmpl	$0, -4(%rbp)
	cmovneq	%rdi, %rax
	movq	-80(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-288(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -296(%rbp)        # 8-byte Spill
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end9:
	.size	add_image_list, .Lfunc_end9-add_image_list
	.cfi_endproc

	.align	16, 0x90
	.type	compose_image_name,@function
compose_image_name:                     # @compose_image_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_image_get_name
	movabsq	$.L.str.67, %rdi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movl	-4(%rbp), %edx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	compose_image_name, .Lfunc_end10-compose_image_name
	.cfi_endproc

	.align	16, 0x90
	.type	add_list_item_callback,@function
add_list_item_callback:                 # @add_list_item_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	leaq	-24(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	gtk_tree_selection_get_selected_rows
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB11_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	leaq	-72(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	callq	gtk_tree_model_get_iter
	cmpl	$0, %eax
	je	.LBB11_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB11_1 Depth=1
	leaq	-72(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-76(%rbp), %rcx
	movl	$1, %r8d
	leaq	-88(%rbp), %r9
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	movl	$-1, (%rsp)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	filmint+64, %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_list_store_append
	movq	filmint+64, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-72(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$4294967295, %r10d      # imm = 0xFFFFFFFF
	movl	-76(%rbp), %ecx
	movq	-88(%rbp), %r9
	movq	%rax, %rdi
	movl	$-1, (%rsp)
	movb	$0, %al
	movl	%r10d, -116(%rbp)       # 4-byte Spill
	callq	gtk_list_store_set
	movq	-88(%rbp), %rdi
	callq	g_free
.LBB11_4:                               # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gtk_tree_path_free
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB11_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB11_8
.LBB11_7:                               # %cond.false
                                        #   in Loop: Header=BB11_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB11_8
.LBB11_8:                               # %cond.end
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB11_1
.LBB11_9:                               # %for.end
	movq	-32(%rbp), %rdi
	callq	g_list_free
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	add_list_item_callback, .Lfunc_end11-add_list_item_callback
	.cfi_endproc

	.align	16, 0x90
	.type	del_list_item_callback,@function
del_list_item_callback:                 # @del_list_item_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	leaq	-24(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	gtk_tree_selection_get_selected_rows
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB12_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gtk_tree_row_reference_new
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gtk_tree_path_free
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB12_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB12_6
.LBB12_5:                               # %cond.false
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB12_6
.LBB12_6:                               # %cond.end
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB12_1
.LBB12_7:                               # %for.end
	movq	-32(%rbp), %rdi
	callq	g_list_free
	movq	-40(%rbp), %rdi
	movq	%rdi, -48(%rbp)
.LBB12_8:                               # %for.cond.5
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB12_16
# BB#9:                                 # %for.body.7
                                        #   in Loop: Header=BB12_8 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gtk_tree_row_reference_get_path
	leaq	-96(%rbp), %rsi
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rdx
	callq	gtk_tree_model_get_iter
	cmpl	$0, %eax
	je	.LBB12_11
# BB#10:                                # %if.then
                                        #   in Loop: Header=BB12_8 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_list_store_remove
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB12_11:                              # %if.end
                                        #   in Loop: Header=BB12_8 Depth=1
	movq	-64(%rbp), %rdi
	callq	gtk_tree_path_free
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	gtk_tree_row_reference_free
# BB#12:                                # %for.inc.16
                                        #   in Loop: Header=BB12_8 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB12_14
# BB#13:                                # %cond.true.18
                                        #   in Loop: Header=BB12_8 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB12_15
.LBB12_14:                              # %cond.false.20
                                        #   in Loop: Header=BB12_8 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB12_15
.LBB12_15:                              # %cond.end.21
                                        #   in Loop: Header=BB12_8 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB12_8
.LBB12_16:                              # %for.end.23
	movq	-40(%rbp), %rdi
	callq	g_list_free
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	del_list_item_callback, .Lfunc_end12-del_list_item_callback
	.cfi_endproc

	.align	16, 0x90
	.type	film_reset_callback,@function
film_reset_callback:                    # @film_reset_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	cmpq	$7, %rax
	jae	.LBB13_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	filmint(,%rax,8), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movslq	-20(%rbp), %rsi
	movsd	advanced_defaults(,%rsi,8), %xmm0 # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB13_1
.LBB13_4:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	film_reset_callback, .Lfunc_end13-film_reset_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	create_new_image,@function
create_new_image:                       # @create_new_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	%rax, -48(%rbp)
	cmpl	$2, -20(%rbp)
	je	.LBB14_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$3, -20(%rbp)
	jne	.LBB14_3
.LBB14_2:                               # %if.then
	movl	$1, -56(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	cmpl	$4, -20(%rbp)
	je	.LBB14_5
# BB#4:                                 # %lor.lhs.false.3
	cmpl	$5, -20(%rbp)
	jne	.LBB14_6
.LBB14_5:                               # %if.then.5
	movl	$2, -56(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.6
	movl	$0, -56(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.7
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	movl	-56(%rbp), %edx
	callq	gimp_image_new
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %edi
	movq	-8(%rbp), %rsi
	callq	gimp_image_set_filename
	movl	-52(%rbp), %edi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_image_undo_disable
	movabsq	$.L.str.80, %rdi
	movl	-52(%rbp), %edx
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movl	%edx, -68(%rbp)         # 4-byte Spill
	callq	gettext
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	-68(%rbp), %edi         # 4-byte Reload
	movq	%rax, %rsi
	callq	gimp_layer_new
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movl	%eax, (%rsi)
	movl	-52(%rbp), %edi
	movq	-32(%rbp), %rsi
	movl	(%rsi), %esi
	callq	gimp_image_insert_layer
	cmpq	$0, -40(%rbp)
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB14_12
# BB#9:                                 # %if.then.13
	movq	-32(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_get
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	cmpq	$0, -48(%rbp)
	je	.LBB14_11
# BB#10:                                # %if.then.16
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	4(%rdx), %r8d
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	8(%rdx), %r9d
	movl	%eax, %edx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	%eax, %ecx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
.LBB14_11:                              # %if.end.19
	jmp	.LBB14_12
.LBB14_12:                              # %if.end.20
	movl	-52(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	create_new_image, .Lfunc_end14-create_new_image
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	create_hole_rgb,@function
create_hole_rgb:                        # @create_hole_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	imull	$3, %eax, %eax
	movslq	%eax, %rdi
	movq	%rcx, %rsi
	callq	g_malloc_n
	movl	$2, %edx
	movl	$4, %r8d
	movl	$255, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	-4(%rbp), %r9d
	imull	-8(%rbp), %r9d
	imull	$3, %r9d, %r9d
	movslq	%r9d, %rax
	movl	%edx, -48(%rbp)         # 4-byte Spill
	movq	%rax, %rdx
	movl	%r8d, -52(%rbp)         # 4-byte Spill
	callq	memset
	movl	-8(%rbp), %eax
	cltd
	movl	-52(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	-4(%rbp), %r8d
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movl	%r8d, %eax
	cltd
	movl	-48(%rbp), %r8d         # 4-byte Reload
	idivl	%r8d
	movl	-56(%rbp), %r9d         # 4-byte Reload
	cmpl	%eax, %r9d
	jle	.LBB15_2
# BB#1:                                 # %if.then
	movl	$2, %eax
	movl	-4(%rbp), %ecx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-60(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -36(%rbp)
.LBB15_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	-8(%rbp), %ecx
	subl	$1, %ecx
	imull	-4(%rbp), %ecx
	imull	$3, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -44(%rbp)
.LBB15_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -44(%rbp)
	jle	.LBB15_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB15_3 Depth=1
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-36(%rbp), %xmm1
	movl	-36(%rbp), %eax
	imull	-36(%rbp), %eax
	movl	-44(%rbp), %ecx
	imull	-44(%rbp), %ecx
	subl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm2
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -80(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jle	.LBB15_6
# BB#5:                                 # %if.then.24
                                        #   in Loop: Header=BB15_3 Depth=1
	movabsq	$filmvals, %rax
	addq	$8, %rax
	movl	-40(%rbp), %edi
	movq	-24(%rbp), %rsi
	movq	%rax, %rdx
	callq	set_pixels
	movabsq	$filmvals, %rax
	addq	$8, %rax
	movl	-40(%rbp), %edi
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %ecx
	subl	-40(%rbp), %ecx
	imull	$3, %ecx, %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	set_pixels
	movabsq	$filmvals, %rax
	addq	$8, %rax
	movl	-40(%rbp), %edi
	movq	-32(%rbp), %rsi
	movq	%rax, %rdx
	callq	set_pixels
	movabsq	$filmvals, %rax
	addq	$8, %rax
	movl	-40(%rbp), %edi
	movq	-32(%rbp), %rdx
	movl	-4(%rbp), %ecx
	subl	-40(%rbp), %ecx
	imull	$3, %ecx, %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	set_pixels
.LBB15_6:                               # %if.end.33
                                        #   in Loop: Header=BB15_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	imull	$3, -4(%rbp), %eax
	movq	-24(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -24(%rbp)
	imull	$3, -4(%rbp), %eax
	movq	-32(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -32(%rbp)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB15_3 Depth=1
	movl	-44(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB15_3
.LBB15_8:                               # %for.end
	movq	-16(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	create_hole_rgb, .Lfunc_end15-create_hole_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	draw_hole_rgb,@function
draw_hole_rgb:                          # @draw_hole_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%r9, -32(%rbp)
	callq	gimp_tile_height
	movl	%eax, -92(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_width
	movl	%eax, -108(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.LBB16_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -24(%rbp)
	jg	.LBB16_3
.LBB16_2:                               # %if.then
	jmp	.LBB16_22
.LBB16_3:                               # %if.end
	movl	-12(%rbp), %eax
	addl	-20(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB16_5
# BB#4:                                 # %lor.lhs.false.4
	movl	-12(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jl	.LBB16_6
.LBB16_5:                               # %if.then.6
	jmp	.LBB16_22
.LBB16_6:                               # %if.end.7
	movl	-20(%rbp), %eax
	movl	%eax, -112(%rbp)
	movl	-12(%rbp), %eax
	addl	-112(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jl	.LBB16_8
# BB#7:                                 # %if.then.10
	movl	-108(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -112(%rbp)
.LBB16_8:                               # %if.end.11
	movl	$1, %eax
	movl	%eax, %esi
	movl	-112(%rbp), %eax
	imull	-92(%rbp), %eax
	movq	-8(%rbp), %rcx
	imull	12(%rcx), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	g_malloc_n
	leaq	-80(%rbp), %rdi
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	%rax, -88(%rbp)
	movq	-8(%rbp), %rsi
	movl	-12(%rbp), %r9d
	movl	-16(%rbp), %ecx
	movl	-112(%rbp), %r10d
	movl	-24(%rbp), %r11d
	movl	%edx, -116(%rbp)        # 4-byte Spill
	movl	%r9d, %edx
	movl	%r8d, -120(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	%r11d, %r9d
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$0, -96(%rbp)
.LBB16_9:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_16 Depth 2
	movl	-96(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB16_21
# BB#10:                                # %while.body
                                        #   in Loop: Header=BB16_9 Depth=1
	movl	-96(%rbp), %eax
	addl	-92(%rbp), %eax
	subl	$1, %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB16_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB16_9 Depth=1
	movl	-92(%rbp), %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB16_13
.LBB16_12:                              # %cond.false
                                        #   in Loop: Header=BB16_9 Depth=1
	movl	-24(%rbp), %eax
	subl	-96(%rbp), %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB16_13:                              # %cond.end
                                        #   in Loop: Header=BB16_9 Depth=1
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)
	movl	-112(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jne	.LBB16_15
# BB#14:                                # %if.then.23
                                        #   in Loop: Header=BB16_9 Depth=1
	movq	-88(%rbp), %rdi
	movq	-32(%rbp), %rax
	imull	$3, -20(%rbp), %ecx
	imull	-96(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-20(%rbp), %ecx
	imull	-104(%rbp), %ecx
	imull	$3, %ecx, %ecx
	movslq	%ecx, %rdx
	movq	%rax, %rsi
	callq	memcpy
	jmp	.LBB16_20
.LBB16_15:                              # %if.else
                                        #   in Loop: Header=BB16_9 Depth=1
	movl	$0, -100(%rbp)
.LBB16_16:                              # %for.cond
                                        #   Parent Loop BB16_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-100(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jge	.LBB16_19
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB16_16 Depth=2
	movq	-88(%rbp), %rax
	movl	-100(%rbp), %ecx
	imull	-112(%rbp), %ecx
	imull	$3, %ecx, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-32(%rbp), %rdx
	movl	-96(%rbp), %ecx
	addl	-100(%rbp), %ecx
	imull	-20(%rbp), %ecx
	imull	$3, %ecx, %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	imull	$3, -112(%rbp), %ecx
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-136(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
# BB#18:                                # %for.inc
                                        #   in Loop: Header=BB16_16 Depth=2
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB16_16
.LBB16_19:                              # %for.end
                                        #   in Loop: Header=BB16_9 Depth=1
	jmp	.LBB16_20
.LBB16_20:                              # %if.end.42
                                        #   in Loop: Header=BB16_9 Depth=1
	leaq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %eax
	addl	-96(%rbp), %eax
	movl	-112(%rbp), %r8d
	movl	-104(%rbp), %r9d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_set_rect
	movl	-104(%rbp), %eax
	addl	-96(%rbp), %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB16_9
.LBB16_21:                              # %while.end
	movq	-88(%rbp), %rdi
	callq	g_free
.LBB16_22:                              # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	draw_hole_rgb, .Lfunc_end16-draw_hole_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	draw_number,@function
draw_number:                            # @draw_number
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
	pushq	%rbx
	subq	$152, %rsp
.Ltmp61:
	.cfi_offset %rbx, -24
	movl	$32, %eax
	movl	%eax, %r9d
	movabsq	$.L.str.81, %r10
	leaq	-64(%rbp), %r11
	movabsq	$filmvals, %rbx
	addq	$136, %rbx
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%rbx, -120(%rbp)
	movl	-16(%rbp), %ecx
	movq	%r11, %rdi
	movq	%r9, %rsi
	movq	%r10, %rdx
	movb	$0, %al
	callq	g_snprintf
	movl	-12(%rbp), %edi
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get
	movq	%rax, -72(%rbp)
	movl	-12(%rbp), %edi
	callq	gimp_item_get_image
	movl	$10, %ecx
	movl	%eax, -88(%rbp)
	movl	-28(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -84(%rbp)
	cmpl	$1, -84(%rbp)
	jge	.LBB17_2
# BB#1:                                 # %if.then
	movl	$1, -84(%rbp)
.LBB17_2:                               # %if.end
	movl	$0, -76(%rbp)
.LBB17_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	movl	-84(%rbp), %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB17_10
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB17_3 Depth=1
	movl	$2, %eax
	movl	-76(%rbp), %ecx
	addl	$1, %ecx
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-132(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -80(%rbp)
	movl	-76(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB17_6
# BB#5:                                 # %if.then.7
                                        #   in Loop: Header=BB17_3 Depth=1
	xorl	%eax, %eax
	subl	-80(%rbp), %eax
	movl	%eax, -80(%rbp)
.LBB17_6:                               # %if.end.8
                                        #   in Loop: Header=BB17_3 Depth=1
	xorl	%esi, %esi
	leaq	-96(%rbp), %rcx
	leaq	-100(%rbp), %r8
	leaq	-104(%rbp), %r9
	leaq	-108(%rbp), %rax
	leaq	-64(%rbp), %rdi
	movl	-28(%rbp), %edx
	addl	-80(%rbp), %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-120(%rbp), %rdx
	movq	%rax, (%rsp)
	callq	gimp_text_get_extents_fontname
	movl	%eax, -124(%rbp)
	cmpl	$0, -124(%rbp)
	je	.LBB17_8
# BB#7:                                 # %if.then.12
	movl	-80(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB17_10
.LBB17_8:                               # %if.end.14
                                        #   in Loop: Header=BB17_3 Depth=1
	jmp	.LBB17_9
.LBB17_9:                               # %for.inc
                                        #   in Loop: Header=BB17_3 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB17_3
.LBB17_10:                              # %for.end
	movl	$1, %ecx
	xorl	%eax, %eax
	leaq	-64(%rbp), %rdx
	movl	$2, %esi
	movl	-88(%rbp), %edi
	movl	-12(%rbp), %r8d
	cvtsi2sdl	-20(%rbp), %xmm0
	movl	-24(%rbp), %r9d
	movl	-108(%rbp), %r10d
	movl	%eax, -136(%rbp)        # 4-byte Spill
	movl	%r10d, %eax
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	cltd
	idivl	%esi
	addl	%eax, %r9d
	cvtsi2sdl	%r9d, %xmm1
	cvtsi2sdl	-28(%rbp), %xmm2
	movq	-120(%rbp), %r11
	movl	%r8d, %esi
	movq	-144(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, %rdx
	movl	-136(%rbp), %r8d        # 4-byte Reload
	movl	-136(%rbp), %r9d        # 4-byte Reload
	movq	%r11, (%rsp)
	callq	gimp_text_fontname
	movl	%eax, -92(%rbp)
	cmpl	$-1, -92(%rbp)
	jne	.LBB17_12
# BB#11:                                # %if.then.24
	movabsq	$.L.str.82, %rdi
	movb	$0, %al
	callq	g_message
.LBB17_12:                              # %if.end.25
	movq	-72(%rbp), %rdi
	callq	gimp_drawable_detach
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end17:
	.size	draw_number, .Lfunc_end17-draw_number
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4643211180634609287     # double 255.999
	.text
	.align	16, 0x90
	.type	set_pixels,@function
set_pixels:                             # @set_pixels
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI18_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edi
	movb	%dil, %al
	movb	%al, -29(%rbp)
	movq	-24(%rbp), %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edi
	movb	%dil, %al
	movb	%al, -30(%rbp)
	movq	-24(%rbp), %rdx
	movsd	16(%rdx), %xmm0         # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edi
	movb	%dil, %al
	movb	%al, -31(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -40(%rbp)
.LBB18_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	jle	.LBB18_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movb	-29(%rbp), %al
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movb	%al, (%rcx)
	movb	-30(%rbp), %al
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movb	%al, (%rcx)
	movb	-31(%rbp), %al
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movb	%al, (%rcx)
	jmp	.LBB18_1
.LBB18_3:                               # %while.end
	popq	%rbp
	retq
.Lfunc_end18:
	.size	set_pixels, .Lfunc_end18-set_pixels
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	je	.LBB19_2
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
.LBB19_2:                               # %entry
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
.Lfunc_end19:
	.size	g_message, .Lfunc_end19-g_message
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
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.11
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.12
	.quad	.L.str.13
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.14
	.quad	.L.str.15
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.17
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.18
	.quad	.L.str.19
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.20
	.quad	.L.str.21
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.22
	.quad	.L.str.23
	.size	query.args, 288

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
	.asciz	"Input image (only used as default image in interactive mode)"
	.size	.L.str.3, 61

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"drawable"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Input drawable (not used)"
	.size	.L.str.5, 26

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"film-height"
	.size	.L.str.6, 12

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Height of film (0: fit to images)"
	.size	.L.str.7, 34

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"film-color"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Color of the film"
	.size	.L.str.9, 18

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"number-start"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Start index for numbering"
	.size	.L.str.11, 26

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"number-font"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Font for drawing numbers"
	.size	.L.str.13, 25

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"number-color"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Color for numbers"
	.size	.L.str.15, 18

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"at-top"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Flag for drawing numbers at top of film"
	.size	.L.str.17, 40

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"at-bottom"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Flag for drawing numbers at bottom of film"
	.size	.L.str.19, 43

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"num-images"
	.size	.L.str.20, 11

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Number of images to be used for film"
	.size	.L.str.21, 37

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"image-ids"
	.size	.L.str.22, 10

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"num-images image IDs to be used for film"
	.size	.L.str.23, 41

	.type	query.return_vals,@object # @query.return_vals
	.section	.rodata,"a",@progbits
	.align	16
query.return_vals:
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.24
	.quad	.L.str.25
	.size	query.return_vals, 24

	.type	.L.str.24,@object       # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"new-image"
	.size	.L.str.24, 10

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Output image"
	.size	.L.str.25, 13

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"plug-in-film"
	.size	.L.str.26, 13

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Combine several images on a film strip"
	.size	.L.str.27, 39

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Compose several images to a roll film"
	.size	.L.str.28, 38

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Peter Kirchgessner"
	.size	.L.str.29, 19

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Peter Kirchgessner (peter@kirchgessner.net)"
	.size	.L.str.30, 44

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"1997"
	.size	.L.str.31, 5

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"_Filmstrip..."
	.size	.L.str.32, 14

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"INDEXED*, GRAY*, RGB*"
	.size	.L.str.33, 22

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"<Image>/Filters/Combine"
	.size	.L.str.34, 24

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.35, 20

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"UTF-8"
	.size	.L.str.36, 6

	.type	run_mode,@object        # @run_mode
	.local	run_mode
	.comm	run_mode,4,4
	.type	filmvals,@object        # @filmvals
	.data
	.align	8
filmvals:
	.long	256                     # 0x100
	.zero	4
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	4604435223027321405     # double 0.69499999999999995
	.quad	4585925428558828667     # double 0.040000000000000001
	.quad	4588519501944194073     # double 0.058000000000000003
	.quad	4587654810815738937     # double 0.051999999999999998
	.quad	4590501085780237091     # double 0.081000000000000003
	.quad	4590501085780237091     # double 0.081000000000000003
	.quad	4587654810815738937     # double 0.051999999999999998
	.long	1                       # 0x1
	.zero	4
	.quad	4606551914852185539     # double 0.93000000000000005
	.quad	4603669611090668421     # double 0.60999999999999999
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.asciz	"Monospace\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	256
	.size	filmvals, 664

	.type	.L.str.37,@object       # @.str.37
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.37:
	.asciz	"Composing images"
	.size	.L.str.37, 17

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"film"
	.size	.L.str.38, 5

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Filmstrip"
	.size	.L.str.39, 10

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gimp-film"
	.size	.L.str.40, 10

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gtk-cancel"
	.size	.L.str.41, 11

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gtk-ok"
	.size	.L.str.42, 7

	.type	filmint,@object         # @filmint
	.local	filmint
	.comm	filmint,72,8
	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Selection"
	.size	.L.str.43, 10

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"_Fit height to images"
	.size	.L.str.44, 22

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"toggled"
	.size	.L.str.45, 8

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"_Height:"
	.size	.L.str.46, 9

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"value-changed"
	.size	.L.str.47, 14

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"active"
	.size	.L.str.48, 7

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"sensitive"
	.size	.L.str.49, 10

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Select Film Color"
	.size	.L.str.50, 18

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Co_lor:"
	.size	.L.str.51, 8

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"color-changed"
	.size	.L.str.52, 14

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Numbering"
	.size	.L.str.53, 10

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Start _index:"
	.size	.L.str.54, 14

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"font-set"
	.size	.L.str.55, 9

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"_Font:"
	.size	.L.str.56, 7

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Select Number Color"
	.size	.L.str.57, 20

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"At _bottom"
	.size	.L.str.58, 11

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"At _top"
	.size	.L.str.59, 8

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Image Selection"
	.size	.L.str.60, 16

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Available images:"
	.size	.L.str.61, 18

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"On film:"
	.size	.L.str.62, 9

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"text"
	.size	.L.str.63, 5

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"gtk-add"
	.size	.L.str.64, 8

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"gtk-remove"
	.size	.L.str.65, 11

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"clicked"
	.size	.L.str.66, 8

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"%s-%d"
	.size	.L.str.67, 6

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"All Values are Fractions of the Strip Height"
	.size	.L.str.68, 45

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Ad_vanced"
	.size	.L.str.69, 10

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"Image _height:"
	.size	.L.str.70, 15

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"Image spac_ing:"
	.size	.L.str.71, 16

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"_Hole offset:"
	.size	.L.str.72, 14

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Ho_le width:"
	.size	.L.str.73, 13

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Hol_e height:"
	.size	.L.str.74, 14

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"Hole sp_acing:"
	.size	.L.str.75, 15

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"_Number height:"
	.size	.L.str.76, 16

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"gimp-reset"
	.size	.L.str.77, 11

	.type	advanced_defaults,@object # @advanced_defaults
	.data
	.align	16
advanced_defaults:
	.quad	4604435223027321405     # double 6.950000e-01
	.quad	4585925428558828667     # double 4.000000e-02
	.quad	4588519501944194073     # double 5.800000e-02
	.quad	4587654810815738937     # double 5.200000e-02
	.quad	4590501085780237091     # double 8.100000e-02
	.quad	4590501085780237091     # double 8.100000e-02
	.quad	4587654810815738937     # double 5.200000e-02
	.size	advanced_defaults, 56

	.type	.L.str.78,@object       # @.str.78
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.78:
	.asciz	"Monospace"
	.size	.L.str.78, 10

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"Untitled"
	.size	.L.str.79, 9

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"Background"
	.size	.L.str.80, 11

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"%d"
	.size	.L.str.81, 3

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"draw_number: Error in drawing text\n"
	.size	.L.str.82, 36


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
