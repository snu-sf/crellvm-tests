	.text
	.file	"script-fu-scripts.bc"
	.globl	script_fu_find_scripts
	.align	16, 0x90
	.type	script_fu_find_scripts,@function
script_fu_find_scripts:                 # @script_fu_find_scripts
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, script_tree
	je	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$script_fu_remove_script, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	script_tree, %rdi
	movq	%rax, %rsi
	callq	g_tree_foreach
	movq	script_tree, %rdi
	callq	g_tree_destroy
.LBB0_2:                                # %if.end
	cmpq	$0, -8(%rbp)
	jne	.LBB0_4
# BB#3:                                 # %if.then.1
	jmp	.LBB0_5
.LBB0_4:                                # %if.end.2
	movabsq	$g_utf8_collate, %rdi
	callq	g_tree_new
	movl	$1, %esi
	movabsq	$script_fu_load_script, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, script_tree
	movq	-8(%rbp), %rdi
	callq	gimp_datafiles_read_directories
	movabsq	$script_fu_install_script, %rax
	xorl	%esi, %esi
	movl	%esi, %edx
	movq	script_tree, %rdi
	movq	%rax, %rsi
	callq	g_tree_foreach
	movabsq	$script_fu_menu_compare, %rsi
	movq	script_menu_list, %rdi
	callq	g_list_sort
	movabsq	$script_fu_install_menu, %rcx
	movq	%rax, script_menu_list
	movq	script_menu_list, %rdi
	movq	%rcx, %rsi
	callq	g_list_free_full
	movq	$0, script_menu_list
.LBB0_5:                                # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	script_fu_find_scripts, .Lfunc_end0-script_fu_find_scripts
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_remove_script,@function
script_fu_remove_script:                # @script_fu_remove_script
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -32(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB1_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	script_fu_script_uninstall_proc
	movq	-40(%rbp), %rdi
	callq	script_fu_script_free
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB1_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB1_6
.LBB1_5:                                # %cond.false
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB1_6
.LBB1_6:                                # %cond.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB1_1
.LBB1_7:                                # %for.end
	movq	-16(%rbp), %rdi
	callq	g_list_free
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	script_fu_remove_script, .Lfunc_end1-script_fu_remove_script
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_load_script,@function
script_fu_load_script:                  # @script_fu_load_script
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
	subq	$64, %rsp
	movabsq	$.L.str.28, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rax, %rsi
	callq	gimp_datafiles_check_extension
	cmpl	$0, %eax
	je	.LBB2_4
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	script_fu_strescape
	movabsq	$.L.str.29, %rdi
	movq	%rax, -24(%rbp)
	movq	$0, -40(%rbp)
	movq	-24(%rbp), %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_free
	leaq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	script_fu_run_command
	cmpl	$0, %eax
	jne	.LBB2_3
# BB#2:                                 # %if.then.6
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_filename_display_name
	movabsq	$.L.str.30, %rdi
	movq	%rax, -48(%rbp)
	callq	gettext
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.31, %rdi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movb	$0, %al
	callq	g_message
	leaq	-40(%rbp), %rdi
	callq	g_clear_error
	movq	-56(%rbp), %rdi
	callq	g_free
	movq	-48(%rbp), %rdi
	callq	g_free
.LBB2_3:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	g_free
.LBB2_4:                                # %if.end.12
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	script_fu_load_script, .Lfunc_end2-script_fu_load_script
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_install_script,@function
script_fu_install_script:               # @script_fu_install_script
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -32(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB3_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movabsq	$script_fu_script_proc, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	script_fu_script_install_proc
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB3_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB3_6
.LBB3_5:                                # %cond.false
                                        #   in Loop: Header=BB3_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB3_6
.LBB3_6:                                # %cond.end
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB3_1
.LBB3_7:                                # %for.end
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	script_fu_install_script, .Lfunc_end3-script_fu_install_script
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_menu_compare,@function
script_fu_menu_compare:                 # @script_fu_menu_compare
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-24(%rbp), %rsi
	cmpq	$0, 8(%rsi)
	je	.LBB4_7
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB4_7
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_utf8_collate
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.LBB4_6
# BB#3:                                 # %land.lhs.true.8
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true.10
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB4_6
# BB#5:                                 # %if.then.14
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdi
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	8(%rdi), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_utf8_collate
	movl	%eax, -36(%rbp)
.LBB4_6:                                # %if.end
	jmp	.LBB4_7
.LBB4_7:                                # %if.end.22
	movl	-36(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	script_fu_menu_compare, .Lfunc_end4-script_fu_menu_compare
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_install_menu,@function
script_fu_install_menu:                 # @script_fu_install_menu
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	callq	gimp_plugin_menu_register
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rdi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	g_free
# BB#1:                                 # %do.body
	movl	$16, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#2:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	script_fu_install_menu, .Lfunc_end5-script_fu_install_menu
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	script_fu_add_script
	.align	16, 0x90
	.type	script_fu_add_script,@function
script_fu_add_script:                   # @script_fu_add_script
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
	subq	$880, %rsp              # imm = 0x370
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	5608(%rsi), %rsi
	movq	232(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-216(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	cmpl	$7, %eax
	jge	.LBB6_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movq	-16(%rbp), %rdi
	movq	936(%rdi), %rdi
	movq	%rdi, -8(%rbp)
	jmp	.LBB6_113
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-224(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	296(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-232(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	296(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-240(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	296(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-248(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	296(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-256(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	296(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-264(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	296(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	280(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB6_4
# BB#3:                                 # %if.then.55
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-272(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	296(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	%rax, -24(%rbp)
	jmp	.LBB6_5
.LBB6_4:                                # %if.else
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB6_5:                                # %if.end.69
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	232(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -92(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %r8
	movq	-64(%rbp), %rcx
	movq	-72(%rbp), %r9
	movq	-80(%rbp), %r10
	movq	-88(%rbp), %r11
	movl	-92(%rbp), %eax
	movq	%r8, %rdx
	movq	%r9, %r8
	movq	%r10, %r9
	movq	%r11, (%rsp)
	movl	%eax, 8(%rsp)
	callq	script_fu_script_new
	movq	%rax, -32(%rbp)
	movl	$0, -96(%rbp)
.LBB6_6:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_86 Depth 2
	movl	-96(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	56(%rcx), %eax
	jge	.LBB6_108
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB6_6 Depth=1
	movslq	-96(%rbp), %rax
	movq	-32(%rbp), %rcx
	shlq	$7, %rax
	addq	64(%rcx), %rax
	movq	%rax, -104(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB6_11
# BB#8:                                 # %if.then.78
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	184(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-280(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB6_10
# BB#9:                                 # %if.then.85
	movabsq	$.L.str.1, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	foreign_error
	movq	%rax, -8(%rbp)
	jmp	.LBB6_113
.LBB6_10:                               # %if.end.87
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-288(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	296(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	%rax, -24(%rbp)
	jmp	.LBB6_12
.LBB6_11:                               # %if.else.96
	movabsq	$.L.str.2, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	foreign_error
	movq	%rax, -8(%rbp)
	jmp	.LBB6_113
.LBB6_12:                               # %if.end.98
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB6_16
# BB#13:                                # %if.then.102
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	128(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-296(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB6_15
# BB#14:                                # %if.then.109
	movabsq	$.L.str.3, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	foreign_error
	movq	%rax, -8(%rbp)
	jmp	.LBB6_113
.LBB6_15:                               # %if.end.111
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-304(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	%rax, %rdi
	callq	g_strdup
	movq	-104(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	296(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	%rax, -24(%rbp)
	jmp	.LBB6_17
.LBB6_16:                               # %if.else.122
	movabsq	$.L.str.4, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	foreign_error
	movq	%rax, -8(%rbp)
	jmp	.LBB6_113
.LBB6_17:                               # %if.end.124
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB6_105
# BB#18:                                # %if.then.128
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-104(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$20, %rdx
	movq	%rax, -312(%rbp)        # 8-byte Spill
	movq	%rdx, -320(%rbp)        # 8-byte Spill
	ja	.LBB6_104
# BB#114:                               # %if.then.128
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_19:                               # %sw.bb
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	184(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-328(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB6_21
# BB#20:                                # %if.then.137
	movabsq	$.L.str.5, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	foreign_error
	movq	%rax, -8(%rbp)
	jmp	.LBB6_113
.LBB6_21:                               # %if.end.139
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-336(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 16(%rax)
	jmp	.LBB6_104
.LBB6_22:                               # %sw.bb.147
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	128(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-344(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB6_26
# BB#23:                                # %if.then.155
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-104(%rbp), %rax
	addq	$16, %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	144(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	288(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	callq	*%rdx
	movq	%rax, %rdi
	movq	-360(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_rgb_parse_css
	cmpl	$0, %eax
	jne	.LBB6_25
# BB#24:                                # %if.then.165
	movabsq	$.L.str.6, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	foreign_error
	movq	%rax, -8(%rbp)
	jmp	.LBB6_113
.LBB6_25:                               # %if.end.167
                                        #   in Loop: Header=BB6_6 Depth=1
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movq	-104(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	callq	gimp_rgb_set_alpha
	jmp	.LBB6_49
.LBB6_26:                               # %if.else.170
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	216(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	-376(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB6_47
# BB#27:                                # %land.lhs.true
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	232(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdx
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	-392(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	cmpl	$3, %eax
	jne	.LBB6_47
# BB#28:                                # %if.then.185
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	288(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	%rax, -112(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	5608(%rdi), %rdi
	movq	288(%rdi), %rdi
	movq	-112(%rbp), %rcx
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-400(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-408(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	cmpq	$255, %rax
	jle	.LBB6_30
# BB#29:                                # %cond.true
                                        #   in Loop: Header=BB6_6 Depth=1
	movl	$255, %eax
	movl	%eax, %ecx
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	jmp	.LBB6_34
.LBB6_30:                               # %cond.false
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-112(%rbp), %rdi
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-424(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	cmpq	$0, %rax
	jge	.LBB6_32
# BB#31:                                # %cond.true.205
                                        #   in Loop: Header=BB6_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	jmp	.LBB6_33
.LBB6_32:                               # %cond.false.206
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-112(%rbp), %rdi
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-440(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
.LBB6_33:                               # %cond.end
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	%rax, -416(%rbp)        # 8-byte Spill
.LBB6_34:                               # %cond.end.213
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-416(%rbp), %rax        # 8-byte Reload
	movb	%al, %cl
	movb	%cl, -113(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	296(%rax), %rax
	movq	-112(%rbp), %rdi
	callq	*%rax
	movq	%rax, -112(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	5608(%rdi), %rdi
	movq	288(%rdi), %rdi
	movq	-112(%rbp), %rdx
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-448(%rbp), %rdx        # 8-byte Reload
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	*%rdx
	movq	%rax, %rdi
	movq	-456(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	cmpq	$255, %rax
	jle	.LBB6_36
# BB#35:                                # %cond.true.227
                                        #   in Loop: Header=BB6_6 Depth=1
	movl	$255, %eax
	movl	%eax, %ecx
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	jmp	.LBB6_40
.LBB6_36:                               # %cond.false.228
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-112(%rbp), %rdi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-472(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	cmpq	$0, %rax
	jge	.LBB6_38
# BB#37:                                # %cond.true.237
                                        #   in Loop: Header=BB6_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	jmp	.LBB6_39
.LBB6_38:                               # %cond.false.238
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-112(%rbp), %rdi
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-488(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
.LBB6_39:                               # %cond.end.245
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-480(%rbp), %rax        # 8-byte Reload
	movq	%rax, -464(%rbp)        # 8-byte Spill
.LBB6_40:                               # %cond.end.247
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-464(%rbp), %rax        # 8-byte Reload
	movb	%al, %cl
	movb	%cl, -114(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	296(%rax), %rax
	movq	-112(%rbp), %rdi
	callq	*%rax
	movq	%rax, -112(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	5608(%rdi), %rdi
	movq	288(%rdi), %rdi
	movq	-112(%rbp), %rdx
	movq	%rdi, -496(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-496(%rbp), %rdx        # 8-byte Reload
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	*%rdx
	movq	%rax, %rdi
	movq	-504(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	cmpq	$255, %rax
	jle	.LBB6_42
# BB#41:                                # %cond.true.261
                                        #   in Loop: Header=BB6_6 Depth=1
	movl	$255, %eax
	movl	%eax, %ecx
	movq	%rcx, -512(%rbp)        # 8-byte Spill
	jmp	.LBB6_46
.LBB6_42:                               # %cond.false.262
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-112(%rbp), %rdi
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-520(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	cmpq	$0, %rax
	jge	.LBB6_44
# BB#43:                                # %cond.true.271
                                        #   in Loop: Header=BB6_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	jmp	.LBB6_45
.LBB6_44:                               # %cond.false.272
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-112(%rbp), %rdi
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-536(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
.LBB6_45:                               # %cond.end.279
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-528(%rbp), %rax        # 8-byte Reload
	movq	%rax, -512(%rbp)        # 8-byte Spill
.LBB6_46:                               # %cond.end.281
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-512(%rbp), %rax        # 8-byte Reload
	movb	%al, %cl
	movb	%cl, -115(%rbp)
	movq	-104(%rbp), %rax
	addq	$16, %rax
	movb	-113(%rbp), %cl
	movb	-114(%rbp), %dl
	movq	%rax, %rdi
	movzbl	%cl, %esi
	movzbl	%dl, %edx
	movzbl	-115(%rbp), %ecx
	callq	gimp_rgb_set_uchar
	jmp	.LBB6_48
.LBB6_47:                               # %if.else.286
	movabsq	$.L.str.7, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	foreign_error
	movq	%rax, -8(%rbp)
	jmp	.LBB6_113
.LBB6_48:                               # %if.end.288
                                        #   in Loop: Header=BB6_6 Depth=1
	jmp	.LBB6_49
.LBB6_49:                               # %if.end.289
                                        #   in Loop: Header=BB6_6 Depth=1
	jmp	.LBB6_104
.LBB6_50:                               # %sw.bb.290
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	184(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-544(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB6_52
# BB#51:                                # %if.then.298
	movabsq	$.L.str.8, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	foreign_error
	movq	%rax, -8(%rbp)
	jmp	.LBB6_113
.LBB6_52:                               # %if.end.300
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-552(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	xorl	%edx, %edx
	movl	$1, %esi
	cmpq	$0, %rax
	cmovnel	%esi, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 16(%rax)
	jmp	.LBB6_104
.LBB6_53:                               # %sw.bb.310
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	128(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-560(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB6_55
# BB#54:                                # %if.then.318
	movabsq	$.L.str.9, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	foreign_error
	movq	%rax, -8(%rbp)
	jmp	.LBB6_113
.LBB6_55:                               # %if.end.320
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-568(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	%rax, %rdi
	callq	g_strdup
	movq	-104(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB6_104
.LBB6_56:                               # %sw.bb.329
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	128(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-576(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB6_58
# BB#57:                                # %if.then.337
	movabsq	$.L.str.10, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	foreign_error
	movq	%rax, -8(%rbp)
	jmp	.LBB6_113
.LBB6_58:                               # %if.end.339
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-584(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	%rax, %rdi
	callq	g_strdup
	movq	-104(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB6_104
.LBB6_59:                               # %sw.bb.349
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	216(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB6_61
# BB#60:                                # %if.then.354
	movabsq	$.L.str.11, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	foreign_error
	movq	%rax, -8(%rbp)
	jmp	.LBB6_113
.LBB6_61:                               # %if.end.356
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	288(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	%rax, -128(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	176(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	5608(%rdi), %rdi
	movq	288(%rdi), %rdi
	movq	-128(%rbp), %rcx
	movq	%rdi, -592(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-592(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-600(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-104(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	296(%rax), %rax
	movq	-128(%rbp), %rdi
	callq	*%rax
	movq	%rax, -128(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	176(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-128(%rbp), %rdi
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-608(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-104(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	296(%rax), %rax
	movq	-128(%rbp), %rdi
	callq	*%rax
	movq	%rax, -128(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	176(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-128(%rbp), %rdi
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-616(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-104(%rbp), %rax
	movsd	%xmm0, 40(%rax)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	296(%rax), %rax
	movq	-128(%rbp), %rdi
	callq	*%rax
	movq	%rax, -128(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	176(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-128(%rbp), %rdi
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-624(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-104(%rbp), %rax
	movsd	%xmm0, 48(%rax)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	296(%rax), %rax
	movq	-128(%rbp), %rdi
	callq	*%rax
	movq	%rax, -128(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	176(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-128(%rbp), %rdi
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-632(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-104(%rbp), %rax
	movsd	%xmm0, 56(%rax)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	296(%rax), %rax
	movq	-128(%rbp), %rdi
	callq	*%rax
	movq	%rax, -128(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-128(%rbp), %rdi
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-640(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 64(%rax)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	296(%rax), %rax
	movq	-128(%rbp), %rdi
	callq	*%rax
	movq	%rax, -128(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-128(%rbp), %rdi
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-648(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 68(%rax)
	jmp	.LBB6_104
.LBB6_62:                               # %sw.bb.435
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	128(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-656(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB6_64
# BB#63:                                # %if.then.443
	movabsq	$.L.str.12, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	foreign_error
	movq	%rax, -8(%rbp)
	jmp	.LBB6_113
.LBB6_64:                               # %if.end.445
                                        #   in Loop: Header=BB6_6 Depth=1
	jmp	.LBB6_65
.LBB6_65:                               # %sw.bb.446
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	128(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-664(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB6_67
# BB#66:                                # %if.then.454
	movabsq	$.L.str.13, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	foreign_error
	movq	%rax, -8(%rbp)
	jmp	.LBB6_113
.LBB6_67:                               # %if.end.456
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-672(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	%rax, %rdi
	callq	g_strdup
	movq	-104(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB6_104
.LBB6_68:                               # %sw.bb.465
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	128(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-680(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB6_70
# BB#69:                                # %if.then.473
	movabsq	$.L.str.14, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	foreign_error
	movq	%rax, -8(%rbp)
	jmp	.LBB6_113
.LBB6_70:                               # %if.end.475
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-688(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	%rax, %rdi
	callq	g_strdup
	movq	-104(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB6_104
.LBB6_71:                               # %sw.bb.484
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	128(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-696(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB6_73
# BB#72:                                # %if.then.492
	movabsq	$.L.str.15, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	foreign_error
	movq	%rax, -8(%rbp)
	jmp	.LBB6_113
.LBB6_73:                               # %if.end.494
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-704(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	%rax, %rdi
	callq	g_strdup
	movq	-104(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB6_104
.LBB6_74:                               # %sw.bb.503
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	128(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-712(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB6_76
# BB#75:                                # %if.then.511
	movabsq	$.L.str.16, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	foreign_error
	movq	%rax, -8(%rbp)
	jmp	.LBB6_113
.LBB6_76:                               # %if.end.513
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-720(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	%rax, %rdi
	callq	g_strdup
	movq	-104(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB6_104
.LBB6_77:                               # %sw.bb.522
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	216(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB6_79
# BB#78:                                # %if.then.527
	movabsq	$.L.str.17, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	foreign_error
	movq	%rax, -8(%rbp)
	jmp	.LBB6_113
.LBB6_79:                               # %if.end.529
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	288(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	%rax, -136(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	5608(%rdi), %rdi
	movq	288(%rdi), %rdi
	movq	-136(%rbp), %rcx
	movq	%rdi, -728(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-728(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-736(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	%rax, %rdi
	callq	g_strdup
	movq	-104(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	296(%rax), %rax
	movq	-136(%rbp), %rdi
	callq	*%rax
	movq	%rax, -136(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	176(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-136(%rbp), %rdi
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-744(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-104(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	296(%rax), %rax
	movq	-136(%rbp), %rdi
	callq	*%rax
	movq	%rax, -136(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-136(%rbp), %rdi
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-752(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	296(%rax), %rax
	movq	-136(%rbp), %rdi
	callq	*%rax
	movq	%rax, -136(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-136(%rbp), %rdi
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-760(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	movl	%edx, 36(%rax)
	jmp	.LBB6_104
.LBB6_80:                               # %sw.bb.577
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	128(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-768(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB6_82
# BB#81:                                # %if.then.585
	movabsq	$.L.str.18, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	foreign_error
	movq	%rax, -8(%rbp)
	jmp	.LBB6_113
.LBB6_82:                               # %if.end.587
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-776(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	%rax, %rdi
	callq	g_strdup
	movq	-104(%rbp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB6_104
.LBB6_83:                               # %sw.bb.596
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	216(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB6_85
# BB#84:                                # %if.then.601
	movabsq	$.L.str.19, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	foreign_error
	movq	%rax, -8(%rbp)
	jmp	.LBB6_113
.LBB6_85:                               # %if.end.603
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	288(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	%rax, -144(%rbp)
.LBB6_86:                               # %for.cond.607
                                        #   Parent Loop BB6_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-144(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	936(%rcx), %rax
	je	.LBB6_89
# BB#87:                                # %for.body.611
                                        #   in Loop: Header=BB6_86 Depth=2
	movq	-104(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-144(%rbp), %rdx
	movq	%rdi, -784(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-792(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	%rax, %rdi
	callq	g_strdup
	movq	-784(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_slist_append
	movq	-104(%rbp), %rcx
	movq	%rax, 16(%rcx)
# BB#88:                                # %for.inc
                                        #   in Loop: Header=BB6_86 Depth=2
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	296(%rax), %rax
	movq	-144(%rbp), %rdi
	callq	*%rax
	movq	%rax, -144(%rbp)
	jmp	.LBB6_86
.LBB6_89:                               # %for.end
                                        #   in Loop: Header=BB6_6 Depth=1
	jmp	.LBB6_104
.LBB6_90:                               # %sw.bb.627
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	216(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB6_92
# BB#91:                                # %if.then.633
	movabsq	$.L.str.20, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	foreign_error
	movq	%rax, -8(%rbp)
	jmp	.LBB6_113
.LBB6_92:                               # %if.end.635
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	288(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	%rax, -152(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	128(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	5608(%rdi), %rdi
	movq	288(%rdi), %rdi
	movq	-152(%rbp), %rcx
	movq	%rdi, -800(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-800(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-808(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB6_94
# BB#93:                                # %if.then.646
	movabsq	$.L.str.21, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	foreign_error
	movq	%rax, -8(%rbp)
	jmp	.LBB6_113
.LBB6_94:                               # %if.end.648
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-152(%rbp), %rdi
	movq	%rax, -816(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-816(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movabsq	$.L.str.22, %rsi
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB6_96
# BB#95:                                # %if.then.657
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-160(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -168(%rbp)
	jmp	.LBB6_97
.LBB6_96:                               # %if.else.659
                                        #   in Loop: Header=BB6_6 Depth=1
	movabsq	$.L.str.22, %rdi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-160(%rbp), %rsi
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -168(%rbp)
.LBB6_97:                               # %if.end.661
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-168(%rbp), %rdi
	callq	g_type_from_name
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rdi
	callq	g_type_fundamental
	cmpq	$48, %rax
	je	.LBB6_99
# BB#98:                                # %if.then.666
	movq	-168(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.23, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	foreign_error
	movq	%rax, -8(%rbp)
	jmp	.LBB6_113
.LBB6_99:                               # %if.end.668
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-168(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	296(%rax), %rax
	movq	-152(%rbp), %rdi
	callq	*%rax
	movq	%rax, -152(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	128(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-152(%rbp), %rdi
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-824(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB6_101
# BB#100:                               # %if.then.681
	movabsq	$.L.str.24, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	foreign_error
	movq	%rax, -8(%rbp)
	jmp	.LBB6_113
.LBB6_101:                              # %if.end.683
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-184(%rbp), %rdi
	callq	g_type_class_peek
	movq	-16(%rbp), %rdi
	movq	5608(%rdi), %rdi
	movq	144(%rdi), %rdi
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-152(%rbp), %rdx
	movq	%rdi, -832(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-832(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_enum_get_value_by_nick
	movq	%rax, -176(%rbp)
	cmpq	$0, -176(%rbp)
	je	.LBB6_103
# BB#102:                               # %if.then.693
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-176(%rbp), %rax
	movl	(%rax), %ecx
	movq	-104(%rbp), %rax
	movl	%ecx, 24(%rax)
.LBB6_103:                              # %if.end.697
                                        #   in Loop: Header=BB6_6 Depth=1
	jmp	.LBB6_104
.LBB6_104:                              # %sw.epilog
                                        #   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	296(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	%rax, -24(%rbp)
	jmp	.LBB6_106
.LBB6_105:                              # %if.else.701
	movabsq	$.L.str.25, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	foreign_error
	movq	%rax, -8(%rbp)
	jmp	.LBB6_113
.LBB6_106:                              # %if.end.703
                                        #   in Loop: Header=BB6_6 Depth=1
	jmp	.LBB6_107
.LBB6_107:                              # %for.inc.704
                                        #   in Loop: Header=BB6_6 Depth=1
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB6_6
.LBB6_108:                              # %for.end.705
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	callq	script_fu_script_reset
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rdi
	movsbl	(%rdi), %esi
	cmpl	$60, %esi
	jne	.LBB6_112
# BB#109:                               # %if.then.711
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	script_fu_menu_map
	movq	%rax, -192(%rbp)
	cmpq	$0, -192(%rbp)
	je	.LBB6_111
# BB#110:                               # %if.then.715
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free
	movq	-192(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, 8(%rdi)
.LBB6_111:                              # %if.end.718
	jmp	.LBB6_112
.LBB6_112:                              # %if.end.719
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gettext
	movq	%rax, -200(%rbp)
	movq	script_tree, %rdi
	movq	-200(%rbp), %rsi
	callq	g_tree_lookup
	movq	%rax, -208(%rbp)
	movq	script_tree, %rdi
	movq	-200(%rbp), %rsi
	movq	-208(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rdi, -848(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -856(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	callq	g_list_append
	movq	-848(%rbp), %rdi        # 8-byte Reload
	movq	-856(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_tree_insert
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB6_113:                              # %return
	movq	-8(%rbp), %rax
	addq	$880, %rsp              # imm = 0x370
	popq	%rbp
	retq
.Lfunc_end6:
	.size	script_fu_add_script, .Lfunc_end6-script_fu_add_script
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_19
	.quad	.LBB6_19
	.quad	.LBB6_19
	.quad	.LBB6_19
	.quad	.LBB6_19
	.quad	.LBB6_22
	.quad	.LBB6_50
	.quad	.LBB6_53
	.quad	.LBB6_56
	.quad	.LBB6_59
	.quad	.LBB6_68
	.quad	.LBB6_74
	.quad	.LBB6_77
	.quad	.LBB6_80
	.quad	.LBB6_62
	.quad	.LBB6_65
	.quad	.LBB6_83
	.quad	.LBB6_71
	.quad	.LBB6_56
	.quad	.LBB6_90
	.quad	.LBB6_19

	.text
	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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

	.align	16, 0x90
	.type	script_fu_menu_map,@function
script_fu_menu_map:                     # @script_fu_menu_map
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	cmpq	$8, %rax
	jae	.LBB8_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$script_fu_menu_map.mapping, %rax
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rsi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB8_6
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB8_1 Depth=1
	movabsq	$script_fu_menu_map.mapping, %rax
	movq	-16(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdi
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-40(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	setne	%sil
	xorb	$-1, %sil
	andb	$1, %sil
	movzbl	%sil, %r8d
	cmpl	$47, %r8d
	jne	.LBB8_5
# BB#4:                                 # %if.then.9
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_7
.LBB8_5:                                # %if.end
	xorl	%eax, %eax
	movl	%eax, %edx
	movabsq	$script_fu_menu_map.mapping, %rcx
	movslq	-20(%rbp), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rcx
	movq	8(%rcx), %rdi
	movq	-32(%rbp), %rsi
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -8(%rbp)
	jmp	.LBB8_9
.LBB8_6:                                # %if.end.13
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_7
.LBB8_7:                                # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB8_1
.LBB8_8:                                # %for.end
	movq	$0, -8(%rbp)
.LBB8_9:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	script_fu_menu_map, .Lfunc_end8-script_fu_menu_map
	.cfi_endproc

	.globl	script_fu_add_menu
	.align	16, 0x90
	.type	script_fu_add_menu,@function
script_fu_add_menu:                     # @script_fu_add_menu
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	5608(%rsi), %rsi
	movq	232(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-64(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	cmpl	$2, %eax
	je	.LBB9_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.26, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	foreign_error
	movq	%rax, -8(%rbp)
	jmp	.LBB9_7
.LBB9_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	288(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-72(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	296(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rdi
	callq	script_fu_find_script
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB9_4
# BB#3:                                 # %if.then.9
	movabsq	$.L.str.27, %rdi
	movq	-48(%rbp), %rsi
	movb	$0, %al
	callq	g_message
	movq	-16(%rbp), %rsi
	movq	936(%rsi), %rsi
	movq	%rsi, -8(%rbp)
	jmp	.LBB9_7
.LBB9_4:                                # %if.end.10
	movl	$16, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	5608(%rdi), %rdi
	movq	288(%rdi), %rdi
	movq	-24(%rbp), %rcx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	*%rcx
	movq	%rax, %rdi
	movq	-88(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	script_fu_menu_map
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB9_6
# BB#5:                                 # %if.then.22
	movq	-56(%rbp), %rdi
	callq	g_strdup
	movq	-40(%rbp), %rdi
	movq	%rax, 8(%rdi)
.LBB9_6:                                # %if.end.25
	movq	script_menu_list, %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, script_menu_list
	movq	-16(%rbp), %rax
	movq	936(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB9_7:                                # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	script_fu_add_menu, .Lfunc_end9-script_fu_add_menu
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_find_script,@function
script_fu_find_script:                  # @script_fu_find_script
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
	movabsq	$script_fu_lookup_script, %rax
	leaq	-24(%rbp), %rcx
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	script_tree, %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_tree_foreach
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB10_3
.LBB10_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB10_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	script_fu_find_script, .Lfunc_end10-script_fu_find_script
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_run_command,@function
script_fu_run_command:                  # @script_fu_run_command
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
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -28(%rbp)
	movq	%rcx, %rdi
	callq	g_string_new
	movabsq	$ts_gstring_output_func, %rdi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	ts_register_output_func
	movq	-8(%rbp), %rdi
	callq	ts_interpret_string
	cmpl	$0, %eax
	je	.LBB11_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movabsq	$.L.str.32, %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	(%rdx), %r8
	movl	%eax, %esi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB11_3
.LBB11_2:                               # %if.else
	movl	$1, -28(%rbp)
.LBB11_3:                               # %if.end
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	callq	g_string_free
	movl	-28(%rbp), %esi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movl	%esi, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	script_fu_run_command, .Lfunc_end11-script_fu_run_command
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_script_proc,@function
script_fu_script_proc:                  # @script_fu_script_proc
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -44(%rbp)
	movq	$0, -64(%rbp)
	cmpl	$4, script_fu_script_proc.values+40
	jne	.LBB12_3
# BB#1:                                 # %land.lhs.true
	cmpq	$0, script_fu_script_proc.values+48
	je	.LBB12_3
# BB#2:                                 # %if.then
	movq	script_fu_script_proc.values+48, %rdi
	callq	g_free
	movq	$0, script_fu_script_proc.values+48
.LBB12_3:                               # %if.end
	movabsq	$script_fu_script_proc.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, script_fu_script_proc.values
	movq	-8(%rbp), %rdi
	callq	script_fu_find_script
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB12_5
# BB#4:                                 # %if.then.2
	movl	$1, -44(%rbp)
.LBB12_5:                               # %if.end.3
	cmpl	$3, -44(%rbp)
	jne	.LBB12_22
# BB#6:                                 # %if.then.5
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movl	%ecx, %edi
	callq	ts_set_run_mode
	movl	-68(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	je	.LBB12_7
	jmp	.LBB12_23
.LBB12_23:                              # %if.then.5
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB12_10
	jmp	.LBB12_24
.LBB12_24:                              # %if.then.5
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB12_17
	jmp	.LBB12_20
.LBB12_7:                               # %sw.bb
	movl	$0, -72(%rbp)
	movq	-56(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	script_fu_script_collect_standard_args
	movl	%eax, -72(%rbp)
	movq	-56(%rbp), %rdx
	movl	56(%rdx), %eax
	cmpl	-72(%rbp), %eax
	jle	.LBB12_9
# BB#8:                                 # %if.then.8
	movq	-56(%rbp), %rdi
	movl	-72(%rbp), %esi
	callq	script_fu_interface
	movl	%eax, -44(%rbp)
	jmp	.LBB12_21
.LBB12_9:                               # %if.end.10
	jmp	.LBB12_10
.LBB12_10:                              # %sw.bb.11
	movl	-12(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	56(%rcx), %edx
	addl	$1, %edx
	cmpl	%edx, %eax
	je	.LBB12_12
# BB#11:                                # %if.then.14
	movl	$1, -44(%rbp)
.LBB12_12:                              # %if.end.15
	cmpl	$3, -44(%rbp)
	jne	.LBB12_16
# BB#13:                                # %if.then.17
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	script_fu_script_get_command_from_params
	leaq	-64(%rbp), %rsi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	script_fu_run_command
	cmpl	$0, %eax
	jne	.LBB12_15
# BB#14:                                # %if.then.21
	movl	$0, -44(%rbp)
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, script_fu_script_proc.values+40
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, script_fu_script_proc.values+48
	movq	-64(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-64(%rbp), %rdi
	callq	g_error_free
.LBB12_15:                              # %if.end.23
	movq	-80(%rbp), %rdi
	callq	g_free
.LBB12_16:                              # %if.end.24
	jmp	.LBB12_21
.LBB12_17:                              # %sw.bb.25
	movq	-56(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	script_fu_script_collect_standard_args
	movq	-56(%rbp), %rdi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	script_fu_script_get_command
	leaq	-64(%rbp), %rsi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	script_fu_run_command
	cmpl	$0, %eax
	jne	.LBB12_19
# BB#18:                                # %if.then.31
	movl	$0, -44(%rbp)
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, script_fu_script_proc.values+40
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, script_fu_script_proc.values+48
	movq	-64(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-64(%rbp), %rdi
	callq	g_error_free
.LBB12_19:                              # %if.end.34
	movq	-88(%rbp), %rdi
	callq	g_free
	jmp	.LBB12_21
.LBB12_20:                              # %sw.default
	jmp	.LBB12_21
.LBB12_21:                              # %sw.epilog
	jmp	.LBB12_22
.LBB12_22:                              # %if.end.35
	movl	-44(%rbp), %eax
	movl	%eax, script_fu_script_proc.values+8
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	script_fu_script_proc, .Lfunc_end12-script_fu_script_proc
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_lookup_script,@function
script_fu_lookup_script:                # @script_fu_lookup_script
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB13_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_4
# BB#3:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$1, -4(%rbp)
	jmp	.LBB13_10
.LBB13_4:                               # %if.end
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_5
.LBB13_5:                               # %for.inc
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB13_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB13_8
.LBB13_7:                               # %cond.false
                                        #   in Loop: Header=BB13_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB13_8
.LBB13_8:                               # %cond.end
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB13_1
.LBB13_9:                               # %for.end
	movl	$0, -4(%rbp)
.LBB13_10:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	script_fu_lookup_script, .Lfunc_end13-script_fu_lookup_script
	.cfi_endproc

	.type	script_tree,@object     # @script_tree
	.local	script_tree
	.comm	script_tree,8,8
	.type	script_menu_list,@object # @script_menu_list
	.local	script_menu_list
	.comm	script_menu_list,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Too few arguments to 'script-fu-register' call"
	.size	.L.str, 47

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"script-fu-register: argument types must be integer values"
	.size	.L.str.1, 58

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"script-fu-register: missing type specifier"
	.size	.L.str.2, 43

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"script-fu-register: argument labels must be strings"
	.size	.L.str.3, 52

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"script-fu-register: missing arguments label"
	.size	.L.str.4, 44

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"script-fu-register: default IDs must be integer values"
	.size	.L.str.5, 55

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"script-fu-register: invalid default color name"
	.size	.L.str.6, 47

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"script-fu-register: color defaults must be a list of 3 integers or a color name"
	.size	.L.str.7, 80

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"script-fu-register: toggle default must be an integer value"
	.size	.L.str.8, 60

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"script-fu-register: value defaults must be string values"
	.size	.L.str.9, 57

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"script-fu-register: string defaults must be string values"
	.size	.L.str.10, 58

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"script-fu-register: adjustment defaults must be a list"
	.size	.L.str.11, 55

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"script-fu-register: filename defaults must be string values"
	.size	.L.str.12, 60

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"script-fu-register: dirname defaults must be string values"
	.size	.L.str.13, 59

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"script-fu-register: font defaults must be string values"
	.size	.L.str.14, 56

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"script-fu-register: palette defaults must be string values"
	.size	.L.str.15, 59

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"script-fu-register: pattern defaults must be string values"
	.size	.L.str.16, 59

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"script-fu-register: brush defaults must be a list"
	.size	.L.str.17, 50

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"script-fu-register: gradient defaults must be string values"
	.size	.L.str.18, 60

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"script-fu-register: option defaults must be a list"
	.size	.L.str.19, 51

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"script-fu-register: enum defaults must be a list"
	.size	.L.str.20, 49

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"script-fu-register: first element in enum defaults must be a type-name"
	.size	.L.str.21, 71

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Gimp"
	.size	.L.str.22, 5

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"script-fu-register: first element in enum defaults must be the name of a registered type"
	.size	.L.str.23, 89

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"script-fu-register: second element in enum defaults must be a string"
	.size	.L.str.24, 69

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"script-fu-register: missing default argument"
	.size	.L.str.25, 45

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Incorrect number of arguments for script-fu-menu-register"
	.size	.L.str.26, 58

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Procedure %s in script-fu-menu-register does not exist"
	.size	.L.str.27, 55

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	".scm"
	.size	.L.str.28, 5

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"(load \"%s\")"
	.size	.L.str.29, 12

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Error while loading %s:"
	.size	.L.str.30, 24

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"%s\n\n%s"
	.size	.L.str.31, 7

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%s"
	.size	.L.str.32, 3

	.type	script_fu_script_proc.values,@object # @script_fu_script_proc.values
	.local	script_fu_script_proc.values
	.comm	script_fu_script_proc.values,80,16
	.type	script_fu_menu_map.mapping,@object # @script_fu_menu_map.mapping
	.section	.rodata,"a",@progbits
	.align	16
script_fu_menu_map.mapping:
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	.L.str.36
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	.L.str.41
	.quad	.L.str.42
	.quad	.L.str.43
	.quad	.L.str.44
	.quad	.L.str.45
	.quad	.L.str.46
	.quad	.L.str.47
	.quad	.L.str.40
	.size	script_fu_menu_map.mapping, 128

	.type	.L.str.33,@object       # @.str.33
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.33:
	.asciz	"<Image>/Script-Fu/Alchemy"
	.size	.L.str.33, 26

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"<Image>/Filters/Artistic"
	.size	.L.str.34, 25

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"<Image>/Script-Fu/Alpha to Logo"
	.size	.L.str.35, 32

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"<Image>/Filters/Alpha to Logo"
	.size	.L.str.36, 30

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"<Image>/Script-Fu/Animators"
	.size	.L.str.37, 28

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"<Image>/Filters/Animation/Animators"
	.size	.L.str.38, 36

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"<Image>/Script-Fu/Decor"
	.size	.L.str.39, 24

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"<Image>/Filters/Decor"
	.size	.L.str.40, 22

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"<Image>/Script-Fu/Render"
	.size	.L.str.41, 25

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"<Image>/Filters/Render"
	.size	.L.str.42, 23

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"<Image>/Script-Fu/Selection"
	.size	.L.str.43, 28

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"<Image>/Select/Modify"
	.size	.L.str.44, 22

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"<Image>/Script-Fu/Shadow"
	.size	.L.str.45, 25

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"<Image>/Filters/Light and Shadow/Shadow"
	.size	.L.str.46, 40

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"<Image>/Script-Fu/Stencil Ops"
	.size	.L.str.47, 30


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
