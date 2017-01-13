	.text
	.file	"file-gih.bc"
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
	movabsq	$.L.str.29, %rdi
	movabsq	$.L.str.30, %rsi
	movabsq	$.L.str.31, %rdx
	movabsq	$.L.str.32, %rax
	movabsq	$.L.str.33, %r9
	movabsq	$.L.str.34, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movl	$1, %r8d
	movl	$3, %r11d
	movabsq	$query.gih_load_args, %rbx
	movabsq	$query.gih_load_return_vals, %r14
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movl	%r8d, -52(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	%r14, 48(%rsp)
	movq	%r10, -64(%rbp)         # 8-byte Spill
	movl	%r11d, -68(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.29, %rdi
	xorl	%esi, %esi
	movabsq	$.L.str.35, %rdx
	callq	gimp_plugin_icon_register
	movabsq	$.L.str.29, %rdi
	movabsq	$.L.str.36, %rsi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.29, %rdi
	movabsq	$.L.str.37, %rsi
	movabsq	$.L.str.38, %rcx
	movq	%rcx, %rdx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_register_magic_load_handler
	movabsq	$.L.str.39, %rdi
	movabsq	$.L.str.40, %rsi
	movabsq	$.L.str.41, %rdx
	movabsq	$.L.str.42, %rcx
	movabsq	$.L.str.43, %r9
	movabsq	$.L.str.34, %r8
	movabsq	$.L.str.44, %r10
	movl	$1, %r11d
	movl	$15, %r15d
	xorl	%r12d, %r12d
	movabsq	$query.gih_save_args, %rbx
	xorl	%r13d, %r13d
	movl	%r13d, %r14d
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	-88(%rbp), %r13         # 8-byte Reload
	movq	%r8, -96(%rbp)          # 8-byte Spill
	movq	%r13, %r8
	movq	-96(%rbp), %r13         # 8-byte Reload
	movq	%r13, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$15, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movq	%r14, -112(%rbp)        # 8-byte Spill
	movl	%r12d, -116(%rbp)       # 4-byte Spill
	movl	%r15d, -120(%rbp)       # 4-byte Spill
	movl	%r11d, -124(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.39, %rdi
	xorl	%esi, %esi
	movabsq	$.L.str.35, %rdx
	callq	gimp_plugin_icon_register
	movabsq	$.L.str.45, %rdi
	movabsq	$.L.str.36, %rsi
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.39, %rdi
	movabsq	$.L.str.37, %rsi
	movabsq	$.L.str.38, %rdx
	movl	%eax, -132(%rbp)        # 4-byte Spill
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
	subq	$160, %rsp
	movabsq	$run.values, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -48(%rbp)
	movl	$0, -76(%rbp)
	movq	$0, -88(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -44(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movl	$21, run.values
	movl	$0, run.values+8
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.46, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.46, %rdi
	movabsq	$.L.str.47, %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.46, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	textdomain
	movq	%rax, -112(%rbp)        # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-8(%rbp), %rdi
	movl	$.L.str.29, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_7
# BB#3:                                 # %if.then
	leaq	-88(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gih_load_image
	movl	%eax, -60(%rbp)
	cmpl	$-1, -60(%rbp)
	je	.LBB1_5
# BB#4:                                 # %if.then.9
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$13, run.values+40
	movl	-60(%rbp), %ecx
	movl	%ecx, run.values+48
	jmp	.LBB1_6
.LBB1_5:                                # %if.else
	movl	$0, -48(%rbp)
.LBB1_6:                                # %if.end
	jmp	.LBB1_50
.LBB1_7:                                # %if.else.10
	movq	-8(%rbp), %rdi
	movl	$.L.str.39, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_48
# BB#8:                                 # %if.then.13
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -64(%rbp)
	movl	%ecx, -60(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movl	-44(%rbp), %ecx
	orl	$2, %ecx
	subl	$2, %ecx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	je	.LBB1_9
	jmp	.LBB1_12
.LBB1_9:                                # %sw.bb
	movabsq	$.L.str.48, %rdi
	xorl	%esi, %esi
	callq	gimp_ui_init
	leaq	-60(%rbp), %rdi
	leaq	-68(%rbp), %rsi
	movabsq	$.L.str.49, %rdx
	movl	$51, %ecx
	callq	gimp_export_image
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jne	.LBB1_11
# BB#10:                                # %if.then.22
	movl	$4, run.values+8
	jmp	.LBB1_54
.LBB1_11:                               # %if.end.23
	jmp	.LBB1_13
.LBB1_12:                               # %sw.default
	jmp	.LBB1_13
.LBB1_13:                               # %sw.epilog
	movl	-60(%rbp), %edi
	movl	$num_layers, %eax
	movl	%eax, %esi
	callq	gimp_image_get_layers
	movq	%rax, %rdi
	callq	g_free
	movl	-44(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	je	.LBB1_14
	jmp	.LBB1_55
.LBB1_55:                               # %sw.epilog
	movl	-120(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB1_26
	jmp	.LBB1_56
.LBB1_56:                               # %sw.epilog
	movl	-120(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB1_37
	jmp	.LBB1_40
.LBB1_14:                               # %sw.bb.25
	movabsq	$.L.str.39, %rdi
	movabsq	$info, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movabsq	$gihparams, %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	gimp_pixpipe_params_init
	cmpl	$1, gihparams+16
	jge	.LBB1_16
# BB#15:                                # %if.then.28
	movl	$1, gihparams+16
.LBB1_16:                               # %if.end.29
	cmpl	$1, gihparams+12
	jge	.LBB1_18
# BB#17:                                # %if.then.31
	movl	$1, gihparams+12
.LBB1_18:                               # %if.end.32
	movl	num_layers, %eax
	imull	gihparams+16, %eax
	imull	gihparams+12, %eax
	movl	%eax, gihparams+4
	cmpl	$1, gihparams+20
	jne	.LBB1_21
# BB#19:                                # %land.lhs.true
	cmpl	$1, gihparams+24
	jne	.LBB1_21
# BB#20:                                # %if.then.36
	movl	-60(%rbp), %edi
	callq	gimp_image_width
	cltd
	idivl	gihparams+12
	movl	%eax, gihparams+20
	movl	-60(%rbp), %edi
	callq	gimp_image_height
	cltd
	idivl	gihparams+16
	movl	%eax, gihparams+24
.LBB1_21:                               # %if.end.40
	movabsq	$.L.str.50, %rsi
	movl	-64(%rbp), %edi
	callq	gimp_image_get_parasite
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB1_23
# BB#22:                                # %if.then.42
	movq	-56(%rbp), %rdi
	callq	gimp_parasite_data
	movabsq	$gihparams, %rsi
	movq	%rax, %rdi
	callq	gimp_pixpipe_params_parse
.LBB1_23:                               # %if.end.44
	movl	-60(%rbp), %edi
	callq	gih_save_dialog
	cmpl	$0, %eax
	jne	.LBB1_25
# BB#24:                                # %if.then.47
	movl	$4, -48(%rbp)
.LBB1_25:                               # %if.end.48
	jmp	.LBB1_40
.LBB1_26:                               # %sw.bb.49
	cmpl	$15, -12(%rbp)
	je	.LBB1_28
# BB#27:                                # %if.then.51
	movl	$1, -48(%rbp)
	jmp	.LBB1_36
.LBB1_28:                               # %if.else.52
	movabsq	$info, %rax
	addq	$4, %rax
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %edx
	movq	-24(%rbp), %rsi
	movl	208(%rsi), %ecx
	movl	%ecx, info
	movq	-24(%rbp), %rsi
	movq	248(%rsi), %rsi
	movq	%rax, %rdi
	callq	strncpy
	movabsq	$gihparams, %rdi
	movb	$0, info+260
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_pixpipe_params_init
	movq	-24(%rbp), %rax
	movl	288(%rax), %ecx
	movl	%ecx, gihparams+20
	movq	-24(%rbp), %rax
	movl	328(%rax), %ecx
	movl	%ecx, gihparams+24
	movq	-24(%rbp), %rax
	movzbl	368(%rax), %ecx
	movl	%ecx, gihparams+12
	movq	-24(%rbp), %rax
	movzbl	408(%rax), %ecx
	movl	%ecx, gihparams+16
	movq	-24(%rbp), %rax
	movl	448(%rax), %ecx
	movl	%ecx, gihparams+8
	movl	$1, gihparams+4
	movq	-24(%rbp), %rax
	movl	528(%rax), %ecx
	cmpl	gihparams+8, %ecx
	je	.LBB1_30
# BB#29:                                # %if.then.80
	movl	$1, -48(%rbp)
	jmp	.LBB1_35
.LBB1_30:                               # %if.else.81
	movl	$0, -72(%rbp)
.LBB1_31:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-72(%rbp), %eax
	cmpl	gihparams+8, %eax
	jge	.LBB1_34
# BB#32:                                # %for.body
                                        #   in Loop: Header=BB1_31 Depth=1
	movslq	-72(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	488(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-72(%rbp), %rax
	movl	%edx, gihparams+44(,%rax,4)
	movslq	-72(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	568(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_strdup
	movslq	-72(%rbp), %rcx
	movq	%rax, gihparams+64(,%rcx,8)
	movslq	-72(%rbp), %rax
	movl	gihparams+44(,%rax,4), %edx
	imull	gihparams+4, %edx
	movl	%edx, gihparams+4
# BB#33:                                # %for.inc
                                        #   in Loop: Header=BB1_31 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB1_31
.LBB1_34:                               # %for.end
	jmp	.LBB1_35
.LBB1_35:                               # %if.end.100
	jmp	.LBB1_36
.LBB1_36:                               # %if.end.101
	jmp	.LBB1_40
.LBB1_37:                               # %sw.bb.102
	movabsq	$.L.str.39, %rdi
	movabsq	$info, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movabsq	$.L.str.50, %rsi
	movl	-64(%rbp), %edi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gimp_image_get_parasite
	movabsq	$gihparams, %rdi
	movq	%rax, -56(%rbp)
	callq	gimp_pixpipe_params_init
	cmpq	$0, -56(%rbp)
	je	.LBB1_39
# BB#38:                                # %if.then.106
	movq	-56(%rbp), %rdi
	callq	gimp_parasite_data
	movabsq	$gihparams, %rsi
	movq	%rax, %rdi
	callq	gimp_pixpipe_params_parse
.LBB1_39:                               # %if.end.108
	jmp	.LBB1_40
.LBB1_40:                               # %sw.epilog.109
	cmpl	$3, -48(%rbp)
	jne	.LBB1_45
# BB#41:                                # %if.then.112
	leaq	-88(%rbp), %r8
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edx
	movl	-68(%rbp), %ecx
	callq	gih_save_image
	cmpl	$0, %eax
	je	.LBB1_43
# BB#42:                                # %if.then.118
	movabsq	$.L.str.39, %rdi
	movabsq	$info, %rax
	movl	$264, %edx              # imm = 0x108
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB1_44
.LBB1_43:                               # %if.else.120
	movl	$0, -48(%rbp)
.LBB1_44:                               # %if.end.121
	jmp	.LBB1_45
.LBB1_45:                               # %if.end.122
	cmpl	$2, -76(%rbp)
	jne	.LBB1_47
# BB#46:                                # %if.then.125
	movl	-60(%rbp), %edi
	callq	gimp_image_delete
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB1_47:                               # %if.end.127
	jmp	.LBB1_49
.LBB1_48:                               # %if.else.128
	movl	$1, -48(%rbp)
.LBB1_49:                               # %if.end.129
	jmp	.LBB1_50
.LBB1_50:                               # %if.end.130
	cmpl	$3, -48(%rbp)
	je	.LBB1_53
# BB#51:                                # %land.lhs.true.133
	cmpq	$0, -88(%rbp)
	je	.LBB1_53
# BB#52:                                # %if.then.135
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
.LBB1_53:                               # %if.end.136
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_54:                               # %return
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
	.type	gih_load_image,@function
gih_load_image:                         # @gih_load_image
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
	subq	$256, %rsp              # imm = 0x100
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -68(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	movb	$0, %al
	callq	open
	movl	%eax, -28(%rbp)
	cmpl	$-1, -28(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.51, %rdi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-100(%rbp), %esi        # 4-byte Reload
	movl	-104(%rbp), %edx        # 4-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	-120(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB3_40
.LBB3_2:                                # %if.end
	movabsq	$.L.str.52, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	g_string_new
	movq	%rax, -48(%rbp)
.LBB3_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	leaq	-49(%rbp), %rsi
	movl	$1, %eax
	movl	%eax, %edx
	movl	-28(%rbp), %edi
	callq	read
	xorl	%edi, %edi
	movb	%dil, %cl
	cmpq	$1, %rax
	movb	%cl, -133(%rbp)         # 1-byte Spill
	jne	.LBB3_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB3_3 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movsbl	-49(%rbp), %eax
	cmpl	$10, %eax
	movb	%cl, -133(%rbp)         # 1-byte Spill
	je	.LBB3_6
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$1024, 8(%rax)          # imm = 0x400
	setb	%cl
	movb	%cl, -133(%rbp)         # 1-byte Spill
.LBB3_6:                                # %land.end
                                        #   in Loop: Header=BB3_3 Depth=1
	movb	-133(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_7
	jmp	.LBB3_8
.LBB3_7:                                # %while.body
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-48(%rbp), %rdi
	movsbl	-49(%rbp), %esi
	callq	g_string_append_c_inline
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB3_3
.LBB3_8:                                # %while.end
	movq	-48(%rbp), %rax
	cmpq	$0, 8(%rax)
	jbe	.LBB3_11
# BB#9:                                 # %land.lhs.true.22
	movq	-48(%rbp), %rax
	cmpq	$1024, 8(%rax)          # imm = 0x400
	jae	.LBB3_11
# BB#10:                                # %if.then.26
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB3_11:                               # %if.end.27
	xorl	%esi, %esi
	movq	-48(%rbp), %rdi
	callq	g_string_free
	cmpq	$0, -64(%rbp)
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jne	.LBB3_13
# BB#12:                                # %if.then.29
	movq	-16(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.53, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movl	-28(%rbp), %edi
	callq	close
	movl	$-1, -4(%rbp)
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB3_40
.LBB3_13:                               # %if.end.32
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	g_string_new
	movq	%rax, -48(%rbp)
.LBB3_14:                               # %while.cond.34
                                        # =>This Inner Loop Header: Depth=1
	leaq	-49(%rbp), %rsi
	movl	$1, %eax
	movl	%eax, %edx
	movl	-28(%rbp), %edi
	callq	read
	xorl	%edi, %edi
	movb	%dil, %cl
	cmpq	$1, %rax
	movb	%cl, -157(%rbp)         # 1-byte Spill
	jne	.LBB3_17
# BB#15:                                # %land.lhs.true.38
                                        #   in Loop: Header=BB3_14 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movsbl	-49(%rbp), %eax
	cmpl	$10, %eax
	movb	%cl, -157(%rbp)         # 1-byte Spill
	je	.LBB3_17
# BB#16:                                # %land.rhs.42
                                        #   in Loop: Header=BB3_14 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$1024, 8(%rax)          # imm = 0x400
	setb	%cl
	movb	%cl, -157(%rbp)         # 1-byte Spill
.LBB3_17:                               # %land.end.46
                                        #   in Loop: Header=BB3_14 Depth=1
	movb	-157(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_18
	jmp	.LBB3_19
.LBB3_18:                               # %while.body.47
                                        #   in Loop: Header=BB3_14 Depth=1
	movq	-48(%rbp), %rdi
	movsbl	-49(%rbp), %esi
	callq	g_string_append_c_inline
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB3_14
.LBB3_19:                               # %while.end.49
	movq	-48(%rbp), %rax
	cmpq	$0, 8(%rax)
	jbe	.LBB3_22
# BB#20:                                # %land.lhs.true.53
	movq	-48(%rbp), %rax
	cmpq	$1024, 8(%rax)          # imm = 0x400
	jae	.LBB3_22
# BB#21:                                # %if.then.57
	leaq	-80(%rbp), %rsi
	movl	$10, %edx
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	callq	strtol
	movl	%eax, %edx
	movl	%edx, -68(%rbp)
.LBB3_22:                               # %if.end.61
	cmpl	$1, -68(%rbp)
	jge	.LBB3_24
# BB#23:                                # %if.then.64
	movabsq	$.L.str.54, %rdi
	movb	$0, %al
	callq	g_message
	movl	-28(%rbp), %edi
	callq	close
	movq	-64(%rbp), %rdi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	g_free
	movl	$1, %esi
	movq	-48(%rbp), %rdi
	callq	g_string_free
	movl	$-1, -4(%rbp)
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB3_40
.LBB3_24:                               # %if.end.67
	movl	$1, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	gimp_image_new
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	gimp_image_set_filename
	movl	$0, -32(%rbp)
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB3_25:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB3_30
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB3_25 Depth=1
	movl	-28(%rbp), %edi
	movl	-36(%rbp), %esi
	callq	gih_load_one_brush
	cmpl	$0, %eax
	jne	.LBB3_28
# BB#27:                                # %if.then.74
	movq	-24(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.56, %rdi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$24, %edx
	movabsq	$.L.str.55, %rcx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movl	-204(%rbp), %esi        # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	-28(%rbp), %edi
	callq	close
	movq	-64(%rbp), %rdi
	movl	%eax, -208(%rbp)        # 4-byte Spill
	callq	g_free
	movl	$1, %esi
	movq	-48(%rbp), %rdi
	callq	g_string_free
	movl	$-1, -4(%rbp)
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB3_40
.LBB3_28:                               # %if.end.79
                                        #   in Loop: Header=BB3_25 Depth=1
	cvtsi2sdl	-32(%rbp), %xmm0
	cvtsi2sdl	-68(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -220(%rbp)        # 4-byte Spill
# BB#29:                                # %for.inc
                                        #   in Loop: Header=BB3_25 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB3_25
.LBB3_30:                               # %for.end
	jmp	.LBB3_31
.LBB3_31:                               # %while.cond.83
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-80(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -221(%rbp)         # 1-byte Spill
	je	.LBB3_33
# BB#32:                                # %land.rhs.86
                                        #   in Loop: Header=BB3_31 Depth=1
	movq	-80(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rax,2), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	setne	%sil
	movb	%sil, -221(%rbp)        # 1-byte Spill
.LBB3_33:                               # %land.end.90
                                        #   in Loop: Header=BB3_31 Depth=1
	movb	-221(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_34
	jmp	.LBB3_35
.LBB3_34:                               # %while.body.91
                                        #   in Loop: Header=BB3_31 Depth=1
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB3_31
.LBB3_35:                               # %while.end.92
	movq	-80(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB3_39
# BB#36:                                # %if.then.94
	movabsq	$gihparams, %rsi
	movq	-80(%rbp), %rdi
	callq	gimp_pixpipe_params_parse
	movl	-36(%rbp), %edi
	callq	gimp_image_width
	movl	%eax, gihparams+20
	movl	-36(%rbp), %edi
	callq	gimp_image_height
	movabsq	$gihparams, %rdi
	movl	%eax, gihparams+24
	movl	$1, gihparams+12
	movl	$1, gihparams+16
	callq	gimp_pixpipe_params_build
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB3_38
# BB#37:                                # %if.then.99
	movabsq	$.L.str.50, %rdi
	movl	$1, %esi
	movq	-80(%rbp), %rax
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -236(%rbp)        # 4-byte Spill
	callq	strlen
	addq	$1, %rax
	movl	%eax, %esi
	movq	-80(%rbp), %rcx
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movl	-236(%rbp), %edx        # 4-byte Reload
	movl	%esi, -240(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-240(%rbp), %edx        # 4-byte Reload
	callq	gimp_parasite_new
	movq	%rax, -88(%rbp)
	movl	-36(%rbp), %edi
	movq	-88(%rbp), %rsi
	callq	gimp_image_attach_parasite
	movq	-88(%rbp), %rdi
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	gimp_parasite_free
	movq	-80(%rbp), %rdi
	callq	g_free
.LBB3_38:                               # %if.end.104
	jmp	.LBB3_39
.LBB3_39:                               # %if.end.105
	movl	$1, %esi
	movq	-48(%rbp), %rdi
	callq	g_string_free
	movl	-36(%rbp), %esi
	movl	%esi, -4(%rbp)
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB3_40:                               # %return
	movl	-4(%rbp), %eax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gih_load_image, .Lfunc_end3-gih_load_image
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_1:
	.quad	4607182418800017408     # double 1
.LCPI4_2:
	.quad	4652007308841189376     # double 1000
.LCPI4_3:
	.quad	4621819117588971520     # double 10
.LCPI4_4:
	.quad	4611686018427387904     # double 2
.LCPI4_5:
	.quad	4616189618054758400     # double 4
.LCPI4_6:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	gih_save_dialog,@function
gih_save_dialog:                        # @gih_save_dialog
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
	pushq	%r14
	pushq	%rbx
	subq	$1248, %rsp             # imm = 0x4E0
.Ltmp20:
	.cfi_offset %rbx, -32
.Ltmp21:
	.cfi_offset %r14, -24
	leaq	-64(%rbp), %rax
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_3, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	xorl	%esi, %esi
	movl	%edi, -20(%rbp)
	movl	$.L.str.63, %edi
                                        # kill: RDI<def> EDI<kill>
	movl	%esi, -524(%rbp)        # 4-byte Spill
	movq	%rax, -536(%rbp)        # 8-byte Spill
	movsd	%xmm0, -544(%rbp)       # 8-byte Spill
	movsd	%xmm2, -552(%rbp)       # 8-byte Spill
	movsd	%xmm4, -560(%rbp)       # 8-byte Spill
	movsd	%xmm5, -568(%rbp)       # 8-byte Spill
	callq	gettext
	movl	$.L.str.48, %esi
                                        # kill: RSI<def> ESI<kill>
	movl	$.L.str.39, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	gimp_export_dialog_new
	movq	%rax, -32(%rbp)
	movl	$8, %edi
	movl	$2, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%ecx, -572(%rbp)        # 4-byte Spill
	callq	gtk_table_new
	movq	%rax, -40(%rbp)
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, -588(%rbp)        # 4-byte Spill
	callq	gtk_table_set_row_spacings
	movq	-40(%rbp), %rdi
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	movl	-588(%rbp), %esi        # 4-byte Reload
	callq	gtk_table_set_col_spacings
	movq	-40(%rbp), %rdi
	movq	%rdi, -608(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-32(%rbp), %rdi
	callq	gimp_export_dialog_get_content_area
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	-572(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movl	info(%rip), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm0
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movsd	-544(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-552(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-544(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-560(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-568(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-544(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movl	-524(%rbp), %esi        # 4-byte Reload
	callq	gimp_spin_button_new
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.64, %rdi
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-72(%rbp), %r8
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.65, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$info, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r10
	movq	%rdi, -640(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rcx, %rdx
	movq	-640(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gtk_entry_new
	movl	$200, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-80(%rbp), %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$info, %rcx
	addq	$4, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gtk_entry_set_text
	movq	-40(%rbp), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.66, %rdi
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-80(%rbp), %r8
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movl	%edx, -684(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-684(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.67, %rsi
	movabsq	$entry_callback, %rcx
	movabsq	$info, %rdi
	addq	$4, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %r10
	movq	%rdi, -696(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rcx, %rdx
	movq	-696(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$4, %esi
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -88(%rbp)
	cvtsi2sdl	gihparams+20, %xmm0
	movl	-20(%rbp), %edi
	movsd	%xmm0, -720(%rbp)       # 8-byte Spill
	callq	gimp_image_width
	leaq	-64(%rbp), %rdi
	movsd	.LCPI4_4, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_3, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	xorl	%esi, %esi
	cvtsi2sdl	%eax, %xmm2
	movsd	-720(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm0, -728(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-728(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-728(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-508(%rbp), %rsi
	movl	-20(%rbp), %edi
	callq	gimp_image_get_layers
	movabsq	$.L.str.65, %rsi
	movabsq	$size_adjustment_callback, %r10
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	leaq	-352(%rbp), %r11
	movabsq	$gihparams, %rbx
	addq	$20, %rbx
	movq	%rax, -504(%rbp)
	movl	$1, -352(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, -348(%rbp)
	movl	-508(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-504(%rbp), %r14
	movl	(%r14,%rax,4), %ecx
	movl	%ecx, -344(%rbp)
	movl	$0, -340(%rbp)
	movq	$0, -336(%rbp)
	movq	%rbx, -328(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	movq	%r10, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.68, %rdi
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	gtk_label_new
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	cvtsi2sdl	gihparams+24, %xmm0
	movl	-20(%rbp), %edi
	movsd	%xmm0, -760(%rbp)       # 8-byte Spill
	callq	gimp_image_height
	leaq	-64(%rbp), %rdi
	movsd	.LCPI4_4, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_3, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	xorl	%esi, %esi
	cvtsi2sdl	%eax, %xmm2
	movsd	-760(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm0, -768(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-768(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-768(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -780(%rbp)        # 4-byte Spill
	movl	-780(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.65, %rsi
	movabsq	$size_adjustment_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	leaq	-496(%rbp), %rdi
	movabsq	$gihparams, %r10
	addq	$24, %r10
	movl	$0, -496(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, -492(%rbp)
	movl	-508(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %r11
	movq	-504(%rbp), %rbx
	movl	(%rbx,%r11,4), %ecx
	movl	%ecx, -488(%rbp)
	movl	$0, -484(%rbp)
	movq	$0, -480(%rbp)
	movq	%r10, -472(%rbp)
	movq	-64(%rbp), %r10
	movq	%rdi, -792(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-792(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.69, %rdi
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-808(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.70, %rdi
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-88(%rbp), %r8
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	-504(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -832(%rbp)        # 8-byte Spill
	callq	g_free
	leaq	-64(%rbp), %rdi
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_3, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	xorl	%esi, %esi
	cvtsi2sdl	gihparams+4, %xmm1
	movsd	%xmm0, -840(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-840(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-840(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-840(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-848(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.71, %rdi
	movq	%rax, -856(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$3, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-72(%rbp), %r8
	movq	-856(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.65, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$gihparams, %rdi
	addq	$4, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r10
	movq	%rdi, -864(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rcx, %rdx
	movq	-864(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	cmpl	$1, gihparams+8
	movq	%rax, -880(%rbp)        # 8-byte Spill
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -440(%rbp)
	movq	%rax, -296(%rbp)
	jmp	.LBB4_3
.LBB4_2:                                # %if.else
	movq	$0, -440(%rbp)
	movq	$0, -296(%rbp)
.LBB4_3:                                # %if.end
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	callq	gtk_box_new
	movl	$100, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.72, %rdx
	leaq	-208(%rbp), %rdi
	movq	%rax, -88(%rbp)
	movl	gihparams+16, %ecx
	movb	$0, %al
	callq	g_snprintf
	leaq	-208(%rbp), %rdi
	movl	%eax, -884(%rbp)        # 4-byte Spill
	callq	gtk_label_new
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-896(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -900(%rbp)        # 4-byte Spill
	movl	-900(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movabsq	$gihparams, %rax
	movq	%rax, %rsi
	addq	$12, %rsi
	addq	$16, %rax
	movq	-56(%rbp), %rdi
	movq	%rdi, -464(%rbp)
	movq	%rax, -456(%rbp)
	movq	%rsi, -448(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.73, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -916(%rbp)        # 4-byte Spill
	movl	-916(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$100, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.72, %rdx
	leaq	-208(%rbp), %rdi
	movl	gihparams+12, %ecx
	movb	$0, %al
	callq	g_snprintf
	leaq	-208(%rbp), %rdi
	movl	%eax, -920(%rbp)        # 4-byte Spill
	callq	gtk_label_new
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-928(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -932(%rbp)        # 4-byte Spill
	movl	-932(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movabsq	$gihparams, %rax
	movq	%rax, %rsi
	addq	$16, %rsi
	addq	$12, %rax
	movq	-56(%rbp), %rdi
	movq	%rdi, -320(%rbp)
	movq	%rax, -312(%rbp)
	movq	%rsi, -304(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.74, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -944(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-944(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -948(%rbp)        # 4-byte Spill
	movl	-948(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.75, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -964(%rbp)        # 4-byte Spill
	movl	-964(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movabsq	$.L.str.76, %rdi
	movq	-56(%rbp), %rax
	movq	%rax, -280(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -980(%rbp)        # 4-byte Spill
	movl	-980(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rax
	movq	%rax, -424(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-992(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.77, %rdi
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$4, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-88(%rbp), %r8
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	leaq	-64(%rbp), %rdi
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_5, %xmm2         # xmm2 = mem[0],zero
	xorps	%xmm5, %xmm5
	xorl	%esi, %esi
	cvtsi2sdl	gihparams+8, %xmm1
	movsd	%xmm0, -1008(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-1008(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-1008(%rbp), %xmm3      # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-1008(%rbp), %xmm4      # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-1008(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	callq	gimp_spin_button_new
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1024(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.78, %rdi
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$5, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-72(%rbp), %r8
	movq	-1032(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.65, %rsi
	movabsq	$dim_callback, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	leaq	-352(%rbp), %rdi
	movq	-64(%rbp), %r10
	movq	%rdi, -1040(%rbp)       # 8-byte Spill
	movq	%r10, %rdi
	movq	%rcx, %rdx
	movq	-1040(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movl	$2, %edi
	movl	$4, %esi
	xorl	%edx, %edx
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1064(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movl	$0, -100(%rbp)
.LBB4_4:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_13 Depth 2
                                        #     Child Loop BB4_18 Depth 2
	cmpl	$4, -100(%rbp)
	jge	.LBB4_28
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB4_4 Depth=1
	leaq	-64(%rbp), %rdi
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_6, %xmm2         # xmm2 = mem[0],zero
	xorps	%xmm5, %xmm5
	xorl	%esi, %esi
	movslq	-100(%rbp), %rax
	cvtsi2sdl	gihparams+44(,%rax,4), %xmm1
	movsd	%xmm0, -1072(%rbp)      # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-1072(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-1072(%rbp), %xmm3      # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-1072(%rbp), %xmm4      # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-1072(%rbp), %xmm6      # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1080(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$5, %r8d
	movq	-72(%rbp), %rsi
	movl	-100(%rbp), %r9d
	movl	-100(%rbp), %r10d
	addl	$1, %r10d
	movq	%rax, %rdi
	movl	%r8d, -1084(%rbp)       # 4-byte Spill
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movl	-100(%rbp), %ecx
	cmpl	gihparams+8, %ecx
	jl	.LBB4_7
# BB#6:                                 # %if.then.130
                                        #   in Loop: Header=BB4_4 Depth=1
	xorl	%esi, %esi
	movq	-72(%rbp), %rdi
	callq	gtk_widget_set_sensitive
.LBB4_7:                                # %if.end.131
                                        #   in Loop: Header=BB4_4 Depth=1
	movabsq	$.L.str.65, %rsi
	movabsq	$gimp_int_adjustment_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movabsq	$gihparams, %rdx
	addq	$44, %rdx
	movq	-64(%rbp), %rdi
	movslq	-100(%rbp), %r10
	shlq	$2, %r10
	addq	%r10, %rdx
	movq	%rdx, -1096(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	-1096(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movslq	-100(%rbp), %rdx
	movq	%rcx, -416(%rbp,%rdx,8)
	movslq	-100(%rbp), %rdx
	movq	%rcx, -272(%rbp,%rdx,8)
	cmpl	$0, -100(%rbp)
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	jne	.LBB4_12
# BB#8:                                 # %if.then.142
                                        #   in Loop: Header=BB4_4 Depth=1
	cmpl	$1, gihparams+8
	jne	.LBB4_10
# BB#9:                                 # %if.then.145
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -432(%rbp)
	movq	%rax, -288(%rbp)
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.147
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	$0, -432(%rbp)
	movq	$0, -288(%rbp)
.LBB4_11:                               # %if.end.150
                                        #   in Loop: Header=BB4_4 Depth=1
	jmp	.LBB4_12
.LBB4_12:                               # %if.end.151
                                        #   in Loop: Header=BB4_4 Depth=1
	callq	gtk_combo_box_text_new
	movq	%rax, -96(%rbp)
	movl	$0, -516(%rbp)
.LBB4_13:                               # %for.cond.153
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-516(%rbp), %rax
	cmpq	$7, %rax
	jae	.LBB4_16
# BB#14:                                # %for.body.157
                                        #   in Loop: Header=BB4_13 Depth=2
	movq	-96(%rbp), %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	callq	gtk_combo_box_text_get_type
	movq	-1112(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movslq	-516(%rbp), %rsi
	movq	selection_modes(,%rsi,8), %rsi
	movq	%rax, %rdi
	callq	gtk_combo_box_text_append_text
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB4_13 Depth=2
	movl	-516(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -516(%rbp)
	jmp	.LBB4_13
.LBB4_16:                               # %for.end
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-1120(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_combo_box_set_active
	movslq	-100(%rbp), %rax
	cmpq	$0, gihparams+64(,%rax,8)
	je	.LBB4_24
# BB#17:                                # %if.then.166
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	$0, -516(%rbp)
.LBB4_18:                               # %for.cond.167
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-516(%rbp), %rax
	cmpq	$7, %rax
	jae	.LBB4_23
# BB#19:                                # %for.body.171
                                        #   in Loop: Header=BB4_18 Depth=2
	movslq	-100(%rbp), %rax
	movq	gihparams+64(,%rax,8), %rdi
	movslq	-516(%rbp), %rax
	movq	selection_modes(,%rax,8), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB4_21
# BB#20:                                # %if.then.178
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-1128(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-516(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_combo_box_set_active
	jmp	.LBB4_23
.LBB4_21:                               # %if.end.181
                                        #   in Loop: Header=BB4_18 Depth=2
	jmp	.LBB4_22
.LBB4_22:                               # %for.inc.182
                                        #   in Loop: Header=BB4_18 Depth=2
	movl	-516(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -516(%rbp)
	jmp	.LBB4_18
.LBB4_23:                               # %for.end.184
                                        #   in Loop: Header=BB4_4 Depth=1
	jmp	.LBB4_24
.LBB4_24:                               # %if.end.185
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1136(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %ecx
	movl	$5, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rsi
	movl	-100(%rbp), %r10d
	movl	-100(%rbp), %r11d
	addl	$1, %r11d
	movq	%rax, %rdi
	movl	%r8d, -1140(%rbp)       # 4-byte Spill
	movl	%r10d, %r8d
	movl	%r9d, -1144(%rbp)       # 4-byte Spill
	movl	%r11d, %r9d
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movl	-100(%rbp), %ecx
	cmpl	gihparams+8, %ecx
	jl	.LBB4_26
# BB#25:                                # %if.then.191
                                        #   in Loop: Header=BB4_4 Depth=1
	xorl	%esi, %esi
	movq	-96(%rbp), %rdi
	callq	gtk_widget_set_sensitive
.LBB4_26:                               # %if.end.192
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-1152(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.67, %rsi
	movabsq	$cb_callback, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movabsq	$gihparams, %rdx
	addq	$64, %rdx
	movslq	-100(%rbp), %r10
	shlq	$3, %r10
	addq	%r10, %rdx
	movq	%rdi, -1160(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	-1160(%rbp), %rax       # 8-byte Reload
	movq	%rdx, -1168(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	-1168(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movq	-96(%rbp), %rcx
	movslq	-100(%rbp), %rdx
	movq	%rcx, -384(%rbp,%rdx,8)
	movslq	-100(%rbp), %rdx
	movq	%rcx, -240(%rbp,%rdx,8)
	movq	%rax, -1176(%rbp)       # 8-byte Spill
# BB#27:                                # %for.inc.203
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB4_4
.LBB4_28:                               # %for.end.205
	movq	-40(%rbp), %rax
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	callq	gtk_table_get_type
	movq	-1184(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.79, %rdi
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$6, %edx
	xorps	%xmm0, %xmm0
	movl	$1, %r9d
	movq	-48(%rbp), %r8
	movq	-1192(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rcx
	movss	%xmm0, -1196(%rbp)      # 4-byte Spill
	movss	-1196(%rbp), %xmm1      # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	-32(%rbp), %rdi
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-1216(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %eax
	movl	%eax, -512(%rbp)
	cmpl	$0, -512(%rbp)
	je	.LBB4_37
# BB#29:                                # %if.then.216
	movl	$0, -520(%rbp)
.LBB4_30:                               # %for.cond.218
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -520(%rbp)
	jge	.LBB4_33
# BB#31:                                # %for.body.221
                                        #   in Loop: Header=BB4_30 Depth=1
	movslq	-520(%rbp), %rax
	movq	gihparams+64(,%rax,8), %rdi
	callq	g_strdup
	movslq	-520(%rbp), %rdi
	movq	%rax, gihparams+64(,%rdi,8)
# BB#32:                                # %for.inc.227
                                        #   in Loop: Header=BB4_30 Depth=1
	movl	-520(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -520(%rbp)
	jmp	.LBB4_30
.LBB4_33:                               # %for.end.229
	movl	gihparams+4, %eax
	movl	num_layers, %ecx
	imull	gihparams+16, %ecx
	imull	gihparams+12, %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_35
# BB#34:                                # %cond.true
	movl	gihparams+4, %eax
	movl	%eax, -1220(%rbp)       # 4-byte Spill
	jmp	.LBB4_36
.LBB4_35:                               # %cond.false
	movl	num_layers, %eax
	imull	gihparams+16, %eax
	imull	gihparams+12, %eax
	movl	%eax, -1220(%rbp)       # 4-byte Spill
.LBB4_36:                               # %cond.end
	movl	-1220(%rbp), %eax       # 4-byte Reload
	movl	%eax, gihparams+4
.LBB4_37:                               # %if.end.235
	movq	-32(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	$0, -100(%rbp)
.LBB4_38:                               # %for.cond.236
                                        # =>This Inner Loop Header: Depth=1
	movl	-100(%rbp), %eax
	cmpl	-340(%rbp), %eax
	jge	.LBB4_41
# BB#39:                                # %for.body.240
                                        #   in Loop: Header=BB4_38 Depth=1
	movl	-20(%rbp), %edi
	movslq	-100(%rbp), %rax
	movq	-336(%rbp), %rcx
	movl	(%rcx,%rax,4), %esi
	callq	gimp_image_delete_guide
	movl	%eax, -1224(%rbp)       # 4-byte Spill
# BB#40:                                # %for.inc.245
                                        #   in Loop: Header=BB4_38 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB4_38
.LBB4_41:                               # %for.end.247
	movl	$0, -100(%rbp)
.LBB4_42:                               # %for.cond.248
                                        # =>This Inner Loop Header: Depth=1
	movl	-100(%rbp), %eax
	cmpl	-484(%rbp), %eax
	jge	.LBB4_45
# BB#43:                                # %for.body.252
                                        #   in Loop: Header=BB4_42 Depth=1
	movl	-20(%rbp), %edi
	movslq	-100(%rbp), %rax
	movq	-480(%rbp), %rcx
	movl	(%rcx,%rax,4), %esi
	callq	gimp_image_delete_guide
	movl	%eax, -1228(%rbp)       # 4-byte Spill
# BB#44:                                # %for.inc.257
                                        #   in Loop: Header=BB4_42 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB4_42
.LBB4_45:                               # %for.end.259
	movl	-512(%rbp), %eax
	addq	$1248, %rsp             # imm = 0x4E0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gih_save_dialog, .Lfunc_end4-gih_save_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gih_save_image,@function
gih_save_image:                         # @gih_save_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$368, %rsp              # imm = 0x170
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	cmpl	$1, gihparams+4
	jge	.LBB5_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB5_33
.LBB5_2:                                # %if.end
	movl	-20(%rbp), %edi
	callq	gimp_image_width
	movl	%eax, -96(%rbp)
	movl	-20(%rbp), %edi
	callq	gimp_image_height
	movl	%eax, -100(%rbp)
	callq	gimp_tile_height
	imull	-96(%rbp), %eax
	shll	$2, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_size
	movl	$577, %esi              # imm = 0x241
	movl	$438, %edx              # imm = 0x1B6
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	open
	movl	%eax, -76(%rbp)
	cmpl	$-1, -76(%rbp)
	jne	.LBB5_4
# BB#3:                                 # %if.then.7
	movq	-40(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.87, %rdi
	movl	%eax, -224(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movl	-220(%rbp), %esi        # 4-byte Reload
	movl	-224(%rbp), %edx        # 4-byte Reload
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	-240(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_33
.LBB5_4:                                # %if.end.15
	movabsq	$.L.str.88, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	movabsq	$gihparams, %rdi
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	gimp_pixpipe_params_build
	movabsq	$.L.str.89, %rdi
	movabsq	$info, %rsi
	addq	$4, %rsi
	movq	%rax, -64(%rbp)
	movl	gihparams+4, %edx
	movq	-64(%rbp), %rcx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -56(%rbp)
	movl	-76(%rbp), %edi
	movq	-56(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	%edi, -256(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	callq	strlen
	movl	-256(%rbp), %edi        # 4-byte Reload
	movq	-264(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	write
	movq	-56(%rbp), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB5_6
# BB#5:                                 # %if.then.26
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-56(%rbp), %rdi
	callq	g_free
	movl	-76(%rbp), %edi
	callq	close
	movl	$0, -4(%rbp)
	movl	%eax, -276(%rbp)        # 4-byte Spill
	jmp	.LBB5_33
.LBB5_6:                                # %if.end.28
	movq	-56(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.50, %rdi
	movl	$1, %esi
	movq	-64(%rbp), %rax
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -292(%rbp)        # 4-byte Spill
	callq	strlen
	addq	$1, %rax
	movl	%eax, %esi
	movq	-64(%rbp), %rcx
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movl	-292(%rbp), %edx        # 4-byte Reload
	movl	%esi, -296(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-296(%rbp), %edx        # 4-byte Reload
	callq	gimp_parasite_new
	movq	%rax, -48(%rbp)
	movl	-24(%rbp), %edi
	movq	-48(%rbp), %rsi
	callq	gimp_image_attach_parasite
	movq	-48(%rbp), %rdi
	movl	%eax, -300(%rbp)        # 4-byte Spill
	callq	gimp_parasite_free
	movq	-64(%rbp), %rdi
	callq	g_free
	leaq	-80(%rbp), %rsi
	movl	-20(%rbp), %edi
	callq	gimp_image_get_layers
	movq	%rax, -72(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -112(%rbp)
.LBB5_7:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_9 Depth 2
                                        #       Child Loop BB5_17 Depth 3
	movl	-84(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB5_32
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB5_7 Depth=1
	movslq	-84(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_drawable_get
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_item_get_name
	leaq	-104(%rbp), %rsi
	leaq	-108(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_offsets
	movl	$0, -88(%rbp)
	movl	%eax, -304(%rbp)        # 4-byte Spill
.LBB5_9:                                # %for.cond.40
                                        #   Parent Loop BB5_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_17 Depth 3
	movl	-88(%rbp), %eax
	cmpl	gihparams+16, %eax
	jge	.LBB5_30
# BB#10:                                # %for.body.43
                                        #   in Loop: Header=BB5_9 Depth=2
	xorl	%eax, %eax
	movl	-88(%rbp), %ecx
	imull	-100(%rbp), %ecx
	movl	%eax, -308(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	gihparams+16
	movl	%eax, -132(%rbp)
	movl	-88(%rbp), %eax
	addl	$1, %eax
	imull	-100(%rbp), %eax
	cltd
	idivl	gihparams+16
	movl	%eax, -136(%rbp)
	movl	-132(%rbp), %eax
	subl	-108(%rbp), %eax
	movl	-308(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB5_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB5_9 Depth=2
	xorl	%eax, %eax
	movl	%eax, -312(%rbp)        # 4-byte Spill
	jmp	.LBB5_13
.LBB5_12:                               # %cond.false
                                        #   in Loop: Header=BB5_9 Depth=2
	movl	-132(%rbp), %eax
	subl	-108(%rbp), %eax
	movl	%eax, -312(%rbp)        # 4-byte Spill
.LBB5_13:                               # %cond.end
                                        #   in Loop: Header=BB5_9 Depth=2
	movl	-312(%rbp), %eax        # 4-byte Reload
	movl	%eax, -140(%rbp)
	movl	-136(%rbp), %eax
	subl	-108(%rbp), %eax
	subl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	movl	-144(%rbp), %eax
	movq	-120(%rbp), %rcx
	movl	8(%rcx), %edx
	subl	-140(%rbp), %edx
	cmpl	%edx, %eax
	jae	.LBB5_15
# BB#14:                                # %cond.true.56
                                        #   in Loop: Header=BB5_9 Depth=2
	movl	-144(%rbp), %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jmp	.LBB5_16
.LBB5_15:                               # %cond.false.57
                                        #   in Loop: Header=BB5_9 Depth=2
	movq	-120(%rbp), %rax
	movl	8(%rax), %ecx
	subl	-140(%rbp), %ecx
	movl	%ecx, -316(%rbp)        # 4-byte Spill
.LBB5_16:                               # %cond.end.60
                                        #   in Loop: Header=BB5_9 Depth=2
	movl	-316(%rbp), %eax        # 4-byte Reload
	movl	%eax, -144(%rbp)
	movl	$0, -92(%rbp)
.LBB5_17:                               # %for.cond.62
                                        #   Parent Loop BB5_7 Depth=1
                                        #     Parent Loop BB5_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-92(%rbp), %eax
	cmpl	gihparams+12, %eax
	jge	.LBB5_28
# BB#18:                                # %for.body.65
                                        #   in Loop: Header=BB5_17 Depth=3
	xorl	%eax, %eax
	movl	-92(%rbp), %ecx
	imull	-96(%rbp), %ecx
	movl	%eax, -320(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	gihparams+12
	movl	%eax, -196(%rbp)
	movl	-92(%rbp), %eax
	addl	$1, %eax
	imull	-96(%rbp), %eax
	cltd
	idivl	gihparams+12
	movl	%eax, -200(%rbp)
	movl	-196(%rbp), %eax
	subl	-104(%rbp), %eax
	movl	-320(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB5_20
# BB#19:                                # %cond.true.74
                                        #   in Loop: Header=BB5_17 Depth=3
	xorl	%eax, %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
	jmp	.LBB5_21
.LBB5_20:                               # %cond.false.75
                                        #   in Loop: Header=BB5_17 Depth=3
	movl	-196(%rbp), %eax
	subl	-104(%rbp), %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB5_21:                               # %cond.end.77
                                        #   in Loop: Header=BB5_17 Depth=3
	movl	-324(%rbp), %eax        # 4-byte Reload
	movl	%eax, -204(%rbp)
	movl	-200(%rbp), %eax
	subl	-104(%rbp), %eax
	subl	-204(%rbp), %eax
	movl	%eax, -208(%rbp)
	movl	-208(%rbp), %eax
	movq	-120(%rbp), %rcx
	movl	4(%rcx), %edx
	subl	-204(%rbp), %edx
	cmpl	%edx, %eax
	jae	.LBB5_23
# BB#22:                                # %cond.true.84
                                        #   in Loop: Header=BB5_17 Depth=3
	movl	-208(%rbp), %eax
	movl	%eax, -328(%rbp)        # 4-byte Spill
	jmp	.LBB5_24
.LBB5_23:                               # %cond.false.85
                                        #   in Loop: Header=BB5_17 Depth=3
	movq	-120(%rbp), %rax
	movl	4(%rax), %ecx
	subl	-204(%rbp), %ecx
	movl	%ecx, -328(%rbp)        # 4-byte Spill
.LBB5_24:                               # %cond.end.88
                                        #   in Loop: Header=BB5_17 Depth=3
	movl	-328(%rbp), %eax        # 4-byte Reload
	leaq	-192(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%eax, -208(%rbp)
	movq	-120(%rbp), %rsi
	movl	-204(%rbp), %edx
	movl	-140(%rbp), %eax
	movl	-208(%rbp), %r8d
	movl	-144(%rbp), %r9d
	movl	%ecx, -332(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-192(%rbp), %rsi
	movl	-76(%rbp), %edi
	movq	-128(%rbp), %rdx
	callq	gih_save_one_brush
	cmpl	$0, %eax
	jne	.LBB5_26
# BB#25:                                # %if.then.91
	movl	-76(%rbp), %edi
	callq	close
	movl	$0, -4(%rbp)
	movl	%eax, -336(%rbp)        # 4-byte Spill
	jmp	.LBB5_33
.LBB5_26:                               # %if.end.93
                                        #   in Loop: Header=BB5_17 Depth=3
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	cvtsi2sdl	-112(%rbp), %xmm0
	cvtsi2sdl	gihparams+4, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -340(%rbp)        # 4-byte Spill
# BB#27:                                # %for.inc
                                        #   in Loop: Header=BB5_17 Depth=3
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB5_17
.LBB5_28:                               # %for.end
                                        #   in Loop: Header=BB5_9 Depth=2
	jmp	.LBB5_29
.LBB5_29:                               # %for.inc.99
                                        #   in Loop: Header=BB5_9 Depth=2
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB5_9
.LBB5_30:                               # %for.end.101
                                        #   in Loop: Header=BB5_7 Depth=1
	movq	-128(%rbp), %rdi
	callq	g_free
	movq	-120(%rbp), %rdi
	callq	gimp_drawable_detach
# BB#31:                                # %for.inc.102
                                        #   in Loop: Header=BB5_7 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB5_7
.LBB5_32:                               # %for.end.104
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-72(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -344(%rbp)        # 4-byte Spill
	callq	g_free
	movl	-76(%rbp), %edi
	callq	close
	movl	$1, -4(%rbp)
	movl	%eax, -348(%rbp)        # 4-byte Spill
.LBB5_33:                               # %return
	movl	-4(%rbp), %eax
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gih_save_image, .Lfunc_end5-gih_save_image
	.cfi_endproc

	.align	16, 0x90
	.type	g_string_append_c_inline,@function
g_string_append_c_inline:               # @g_string_append_c_inline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	addq	$1, %rdi
	movq	-8(%rbp), %rcx
	cmpq	16(%rcx), %rdi
	jae	.LBB6_2
# BB#1:                                 # %if.then
	movb	-9(%rbp), %al
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 8(%rcx)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	%al, (%rcx,%rdx)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movb	$0, (%rdx,%rcx)
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	movq	$-1, %rsi
	movq	-8(%rbp), %rdi
	movsbl	-9(%rbp), %edx
	callq	g_string_insert_c
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB6_3:                                # %if.end
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	g_string_append_c_inline, .Lfunc_end6-g_string_append_c_inline
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
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

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	gih_load_one_brush,@function
gih_load_one_brush:                     # @gih_load_one_brush
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
	subq	$272, %rsp              # imm = 0x110
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -64(%rbp)
# BB#1:                                 # %do.body
	cmpl	$-1, -8(%rbp)
	je	.LBB8_3
# BB#2:                                 # %if.then
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.gih_load_one_brush, %rsi
	movabsq	$.L.str.57, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_67
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %do.end
	jmp	.LBB8_6
.LBB8_6:                                # %do.body.1
	cmpl	$-1, -12(%rbp)
	je	.LBB8_8
# BB#7:                                 # %if.then.3
	jmp	.LBB8_9
.LBB8_8:                                # %if.else.4
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.gih_load_one_brush, %rsi
	movabsq	$.L.str.58, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_67
.LBB8_9:                                # %if.end.5
	jmp	.LBB8_10
.LBB8_10:                               # %do.end.6
	movl	$28, %eax
	movl	%eax, %edx
	leaq	-56(%rbp), %rcx
	movl	-8(%rbp), %edi
	movq	%rcx, %rsi
	callq	read
	cmpq	$28, %rax
	je	.LBB8_12
# BB#11:                                # %if.then.8
	movl	$0, -4(%rbp)
	jmp	.LBB8_67
.LBB8_12:                               # %if.end.9
	movl	-56(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-56(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-56(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-56(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -56(%rbp)
	movl	-52(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-52(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-52(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-52(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -52(%rbp)
	movl	-48(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-48(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-48(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-48(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-44(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-44(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-44(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-40(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-40(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-40(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-36(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-36(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-36(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-32(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-32(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-32(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -32(%rbp)
	cmpl	$1, -52(%rbp)
	jne	.LBB8_14
# BB#13:                                # %if.then.115
	movq	$-8, %rsi
	movl	$1, %edx
	movl	$25, -32(%rbp)
	movl	-8(%rbp), %edi
	callq	lseek
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB8_14:                               # %if.end.118
	cmpl	$1, -52(%rbp)
	je	.LBB8_17
# BB#15:                                # %land.lhs.true
	cmpl	$1195986256, -36(%rbp)  # imm = 0x47494D50
	jne	.LBB8_18
# BB#16:                                # %lor.lhs.false
	cmpl	$2, -52(%rbp)
	jne	.LBB8_18
.LBB8_17:                               # %lor.lhs.false.125
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	cmpq	$28, %rcx
	ja	.LBB8_19
.LBB8_18:                               # %if.then.129
	movl	$0, -4(%rbp)
	jmp	.LBB8_67
.LBB8_19:                               # %if.end.130
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	subq	$28, %rcx
	movl	%ecx, %eax
	movl	%eax, -132(%rbp)
	cmpl	$0, %eax
	jle	.LBB8_23
# BB#20:                                # %if.then.136
	movl	$1, %eax
	movl	%eax, %esi
	movslq	-132(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -24(%rbp)
	movl	-8(%rbp), %edi
	movq	-24(%rbp), %rsi
	movslq	-132(%rbp), %rdx
	callq	read
	movslq	-132(%rbp), %rdx
	cmpq	%rdx, %rax
	jge	.LBB8_22
# BB#21:                                # %if.then.144
	movabsq	$.L.str.59, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movq	-24(%rbp), %rdi
	callq	g_free
	movl	$0, -4(%rbp)
	jmp	.LBB8_67
.LBB8_22:                               # %if.end.146
	jmp	.LBB8_24
.LBB8_23:                               # %if.else.147
	movabsq	$.L.str.60, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -24(%rbp)
.LBB8_24:                               # %if.end.150
	movl	-48(%rbp), %eax
	imull	-44(%rbp), %eax
	imull	-40(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	g_malloc
	movq	%rax, -64(%rbp)
	movl	-8(%rbp), %edi
	movq	-64(%rbp), %rsi
	movl	-48(%rbp), %ecx
	imull	-44(%rbp), %ecx
	imull	-40(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	callq	read
	movl	-48(%rbp), %ecx
	imull	-44(%rbp), %ecx
	imull	-40(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	je	.LBB8_26
# BB#25:                                # %if.then.172
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_free
	movl	$0, -4(%rbp)
	jmp	.LBB8_67
.LBB8_26:                               # %if.end.173
	cmpl	$1, -40(%rbp)
	jne	.LBB8_47
# BB#27:                                # %if.then.177
	movl	$24, %eax
	movl	%eax, %edx
	leaq	-176(%rbp), %rcx
	movl	-8(%rbp), %edi
	movq	%rcx, %rsi
	callq	read
	cmpq	$24, %rax
	jne	.LBB8_46
# BB#28:                                # %if.then.181
	movl	-176(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-176(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-176(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-176(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -176(%rbp)
	movl	-172(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-172(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-172(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-172(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -172(%rbp)
	movl	-168(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-168(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-168(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-168(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -168(%rbp)
	movl	-164(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-164(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-164(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-164(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -164(%rbp)
	movl	-160(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-160(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-160(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-160(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -160(%rbp)
	movl	-156(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-156(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-156(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-156(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -156(%rbp)
	cmpl	$1196441940, -156(%rbp) # imm = 0x47504154
	jne	.LBB8_42
# BB#29:                                # %land.lhs.true.281
	cmpl	$1, -172(%rbp)
	jne	.LBB8_42
# BB#30:                                # %land.lhs.true.285
	movl	-176(%rbp), %eax
	movl	%eax, %ecx
	cmpq	$24, %rcx
	jbe	.LBB8_42
# BB#31:                                # %land.lhs.true.290
	cmpl	$3, -160(%rbp)
	jne	.LBB8_42
# BB#32:                                # %land.lhs.true.294
	movl	-168(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jne	.LBB8_42
# BB#33:                                # %land.lhs.true.299
	movl	-164(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jne	.LBB8_42
# BB#34:                                # %land.lhs.true.304
	movl	$1, %edx
	movl	-8(%rbp), %edi
	movl	-176(%rbp), %eax
	movl	%eax, %ecx
	subq	$24, %rcx
	movq	%rcx, %rsi
	callq	lseek
	cmpq	$0, %rax
	jle	.LBB8_42
# BB#35:                                # %if.then.311
	movq	-64(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	$4, -40(%rbp)
	movl	-48(%rbp), %ecx
	shll	$2, %ecx
	imull	-44(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	callq	g_malloc
	movq	%rax, -64(%rbp)
	movl	$0, -188(%rbp)
.LBB8_36:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-188(%rbp), %eax
	movl	-168(%rbp), %ecx
	imull	-164(%rbp), %ecx
	cmpl	%ecx, %eax
	jae	.LBB8_41
# BB#37:                                # %for.body
                                        #   in Loop: Header=BB8_36 Depth=1
	movl	$3, %eax
	movl	%eax, %edx
	movl	-8(%rbp), %edi
	movq	-64(%rbp), %rcx
	movl	-188(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rsi
	addq	%rsi, %rcx
	movq	%rcx, %rsi
	callq	read
	cmpq	$3, %rax
	je	.LBB8_39
# BB#38:                                # %if.then.328
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	-184(%rbp), %rdi
	callq	g_free
	movq	-64(%rbp), %rdi
	callq	g_free
	movl	$0, -4(%rbp)
	jmp	.LBB8_67
.LBB8_39:                               # %if.end.329
                                        #   in Loop: Header=BB8_36 Depth=1
	movslq	-188(%rbp), %rax
	movq	-184(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movl	-188(%rbp), %esi
	shll	$2, %esi
	addl	$3, %esi
	movslq	%esi, %rax
	movq	-64(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#40:                                # %for.inc
                                        #   in Loop: Header=BB8_36 Depth=1
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB8_36
.LBB8_41:                               # %for.end
	movq	-184(%rbp), %rdi
	callq	g_free
	jmp	.LBB8_45
.LBB8_42:                               # %if.else.333
	movq	$-24, %rsi
	movl	$1, %edx
	movl	-8(%rbp), %edi
	callq	lseek
	cmpq	$0, %rax
	jge	.LBB8_44
# BB#43:                                # %if.then.337
	movabsq	$.L.str.61, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	-64(%rbp), %rdi
	callq	g_free
	movl	$0, -4(%rbp)
	jmp	.LBB8_67
.LBB8_44:                               # %if.end.339
	jmp	.LBB8_45
.LBB8_45:                               # %if.end.340
	jmp	.LBB8_46
.LBB8_46:                               # %if.end.341
	jmp	.LBB8_47
.LBB8_47:                               # %if.end.342
	movl	-40(%rbp), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -204(%rbp)        # 4-byte Spill
	movl	%ecx, -208(%rbp)        # 4-byte Spill
	je	.LBB8_48
	jmp	.LBB8_68
.LBB8_68:                               # %if.end.342
	movl	-204(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	je	.LBB8_49
	jmp	.LBB8_52
.LBB8_48:                               # %sw.bb
	movl	$2, -136(%rbp)
	jmp	.LBB8_53
.LBB8_49:                               # %sw.bb.344
	movl	$1, -136(%rbp)
	movl	-12(%rbp), %edi
	callq	gimp_image_base_type
	cmpl	$1, %eax
	jne	.LBB8_51
# BB#50:                                # %if.then.348
	movl	-12(%rbp), %edi
	callq	gimp_image_convert_rgb
	movl	%eax, -216(%rbp)        # 4-byte Spill
.LBB8_51:                               # %if.end.350
	jmp	.LBB8_53
.LBB8_52:                               # %sw.default
	movabsq	$.L.str.62, %rdi
	movl	-40(%rbp), %esi
	movb	$0, %al
	callq	g_message
	movq	-24(%rbp), %rdi
	callq	g_free
	movl	$0, -4(%rbp)
	jmp	.LBB8_67
.LBB8_53:                               # %sw.epilog
	movl	-12(%rbp), %edi
	callq	gimp_image_width
	movl	%eax, -140(%rbp)
	movl	%eax, -148(%rbp)
	movl	-12(%rbp), %edi
	callq	gimp_image_height
	movl	%eax, -144(%rbp)
	movl	%eax, -152(%rbp)
	movl	-48(%rbp), %eax
	cmpl	-140(%rbp), %eax
	ja	.LBB8_55
# BB#54:                                # %lor.lhs.false.357
	movl	-44(%rbp), %eax
	cmpl	-144(%rbp), %eax
	jbe	.LBB8_62
.LBB8_55:                               # %if.then.361
	movl	-140(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jbe	.LBB8_57
# BB#56:                                # %cond.true
	movl	-140(%rbp), %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB8_58
.LBB8_57:                               # %cond.false
	movl	-48(%rbp), %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
.LBB8_58:                               # %cond.end
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	%eax, -148(%rbp)
	movl	-144(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jbe	.LBB8_60
# BB#59:                                # %cond.true.369
	movl	-144(%rbp), %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jmp	.LBB8_61
.LBB8_60:                               # %cond.false.370
	movl	-44(%rbp), %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
.LBB8_61:                               # %cond.end.372
	movl	-224(%rbp), %eax        # 4-byte Reload
	movl	$2, %ecx
	movl	%eax, -152(%rbp)
	movl	-12(%rbp), %edi
	movl	-148(%rbp), %esi
	movl	-152(%rbp), %edx
	movl	-140(%rbp), %eax
	subl	-148(%rbp), %eax
	movl	%edx, -228(%rbp)        # 4-byte Spill
	cltd
	idivl	%ecx
	movl	-144(%rbp), %r8d
	subl	-152(%rbp), %r8d
	movl	%eax, -232(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movl	-228(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, %edx
	movl	-232(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_image_resize
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB8_62:                               # %if.end.378
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movl	-12(%rbp), %edi
	movq	-24(%rbp), %rsi
	movl	-48(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	-136(%rbp), %r8d
	callq	gimp_layer_new
	movl	%eax, -68(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_free
	cmpl	$-1, -68(%rbp)
	je	.LBB8_66
# BB#63:                                # %if.then.384
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	-12(%rbp), %edi
	movl	-68(%rbp), %esi
	movl	num_layers, %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, num_layers
	movl	%eax, %ecx
	callq	gimp_image_insert_layer
	movl	-68(%rbp), %edi
	movl	-148(%rbp), %ecx
	subl	-48(%rbp), %ecx
	shrl	$1, %ecx
	movl	-152(%rbp), %edx
	subl	-44(%rbp), %edx
	shrl	$1, %edx
	movl	%ecx, %esi
	movl	%eax, -240(%rbp)        # 4-byte Spill
	callq	gimp_layer_set_offsets
	movl	-68(%rbp), %edi
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get
	leaq	-128(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rsi
	movq	-80(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-80(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%edx, -248(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-128(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movl	-48(%rbp), %r8d
	movl	-44(%rbp), %r9d
	movl	%ecx, %edx
	callq	gimp_pixel_rgn_set_rect
	cmpl	$2, -136(%rbp)
	jne	.LBB8_65
# BB#64:                                # %if.then.401
	movl	-68(%rbp), %edi
	callq	gimp_invert
	movl	%eax, -252(%rbp)        # 4-byte Spill
.LBB8_65:                               # %if.end.403
	jmp	.LBB8_66
.LBB8_66:                               # %if.end.404
	movq	-64(%rbp), %rdi
	callq	g_free
	movl	$1, -4(%rbp)
.LBB8_67:                               # %return
	movl	-4(%rbp), %eax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gih_load_one_brush, .Lfunc_end8-gih_load_one_brush
	.cfi_endproc

	.align	16, 0x90
	.type	entry_callback,@function
entry_callback:                         # @entry_callback
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
	subq	$32, %rsp
	movabsq	$info, %rax
	addq	$4, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	%rax, -16(%rbp)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movabsq	$info, %rsi
	addq	$4, %rsi
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %edx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	strncpy
	movb	$0, info+260
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB9_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	entry_callback, .Lfunc_end9-entry_callback
	.cfi_endproc

	.align	16, 0x90
	.type	size_adjustment_callback,@function
size_adjustment_callback:               # @size_adjustment_callback
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)
	movl	$0, -20(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB10_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-48(%rbp), %rax
	movl	4(%rax), %edi
	movslq	-20(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	16(%rcx), %rcx
	movl	(%rcx,%rax,4), %esi
	callq	gimp_image_delete_guide
	movl	%eax, -52(%rbp)         # 4-byte Spill
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB10_1
.LBB10_4:                               # %for.end
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-48(%rbp), %rax
	movq	$0, 16(%rax)
	callq	gimp_displays_flush
	movq	-8(%rbp), %rdi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	cvttsd2si	%xmm0, %ecx
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	%ecx, (%rax)
	movq	-48(%rbp), %rax
	cmpl	$1, (%rax)
	jne	.LBB10_10
# BB#5:                                 # %if.then
	movq	-48(%rbp), %rax
	movl	4(%rax), %edi
	callq	gimp_image_width
	movl	$4, %edi
	movl	%edi, %esi
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	movq	-48(%rbp), %rcx
	movq	24(%rcx), %rcx
	cltd
	idivl	(%rcx)
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 12(%rcx)
	movq	-48(%rbp), %rcx
	movslq	12(%rcx), %rdi
	callq	g_malloc_n
	movq	-48(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movl	$0, -20(%rbp)
.LBB10_6:                               # %for.cond.17
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB10_9
# BB#7:                                 # %for.body.21
                                        #   in Loop: Header=BB10_6 Depth=1
	movq	-48(%rbp), %rax
	movl	4(%rax), %edi
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %ecx
	movl	-20(%rbp), %edx
	addl	$1, %edx
	imull	%edx, %ecx
	movl	%ecx, %esi
	callq	gimp_image_add_vguide
	movslq	-20(%rbp), %r8
	movq	-48(%rbp), %r9
	movq	16(%r9), %r9
	movl	%eax, (%r9,%r8,4)
# BB#8:                                 # %for.inc.28
                                        #   in Loop: Header=BB10_6 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB10_6
.LBB10_9:                               # %for.end.30
	jmp	.LBB10_15
.LBB10_10:                              # %if.else
	movq	-48(%rbp), %rax
	movl	4(%rax), %edi
	callq	gimp_image_height
	movl	$4, %edi
	movl	%edi, %esi
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	movq	-48(%rbp), %rcx
	movq	24(%rcx), %rcx
	cltd
	idivl	(%rcx)
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 12(%rcx)
	movq	-48(%rbp), %rcx
	movslq	12(%rcx), %rdi
	callq	g_malloc_n
	movq	-48(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movl	$0, -20(%rbp)
.LBB10_11:                              # %for.cond.41
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB10_14
# BB#12:                                # %for.body.45
                                        #   in Loop: Header=BB10_11 Depth=1
	movq	-48(%rbp), %rax
	movl	4(%rax), %edi
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %ecx
	movl	-20(%rbp), %edx
	addl	$1, %edx
	imull	%edx, %ecx
	movl	%ecx, %esi
	callq	gimp_image_add_hguide
	movslq	-20(%rbp), %r8
	movq	-48(%rbp), %r9
	movq	16(%r9), %r9
	movl	%eax, (%r9,%r8,4)
# BB#13:                                # %for.inc.54
                                        #   in Loop: Header=BB10_11 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB10_11
.LBB10_14:                              # %for.end.56
	jmp	.LBB10_15
.LBB10_15:                              # %if.end
	callq	gimp_displays_flush
	movabsq	$.L.str.72, %rsi
	leaq	-38(%rbp), %rdi
	movl	-28(%rbp), %edx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	sprintf
	movq	-48(%rbp), %rsi
	movq	32(%rsi), %rsi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-38(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movl	-28(%rbp), %edx
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	movl	%edx, (%rax)
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-28(%rbp), %edx
	movq	-48(%rbp), %rsi
	movq	24(%rsi), %rsi
	imull	(%rsi), %edx
	cmpl	-24(%rbp), %edx
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_visible
	movq	-48(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB10_17
# BB#16:                                # %if.then.70
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	48(%rsi), %rsi
	movl	(%rsi), %ecx
	movq	-48(%rbp), %rsi
	movq	40(%rsi), %rsi
	imull	(%rsi), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
.LBB10_17:                              # %if.end.77
	movq	-48(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB10_19
# BB#18:                                # %if.then.80
	movq	-48(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	48(%rsi), %rsi
	movl	(%rsi), %ecx
	movq	-48(%rbp), %rsi
	movq	40(%rsi), %rsi
	imull	(%rsi), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
.LBB10_19:                              # %if.end.88
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	size_adjustment_callback, .Lfunc_end10-size_adjustment_callback
	.cfi_endproc

	.align	16, 0x90
	.type	dim_callback,@function
dim_callback:                           # @dim_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	callq	rint
	cvttsd2si	%xmm0, %eax
	movl	%eax, gihparams+8
	movl	$0, -20(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -20(%rbp)
	jge	.LBB11_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	80(%rcx,%rax,8), %rdi
	movl	-20(%rbp), %edx
	cmpl	gihparams+8, %edx
	setl	%sil
	andb	$1, %sil
	movzbl	%sil, %esi
	callq	gtk_widget_set_sensitive
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	112(%rcx,%rax,8), %rdi
	movl	-20(%rbp), %edx
	cmpl	gihparams+8, %edx
	setl	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	callq	gtk_widget_set_sensitive
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB11_1
.LBB11_4:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	dim_callback, .Lfunc_end11-dim_callback
	.cfi_endproc

	.align	16, 0x90
	.type	cb_callback,@function
cb_callback:                            # @cb_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_combo_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_combo_box_get_active
	movl	%eax, -20(%rbp)
	movslq	-20(%rbp), %rsi
	movq	selection_modes(,%rsi,8), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, (%rdi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	cb_callback, .Lfunc_end12-cb_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gih_save_one_brush,@function
gih_save_one_brush:                     # @gih_save_one_brush
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
	subq	$176, %rsp
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	cmpl	$-1, -8(%rbp)
	je	.LBB13_3
# BB#2:                                 # %if.then
	jmp	.LBB13_4
.LBB13_3:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.gih_save_one_brush, %rsi
	movabsq	$.L.str.57, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB13_51
.LBB13_4:                               # %if.end
	jmp	.LBB13_5
.LBB13_5:                               # %do.end
	jmp	.LBB13_6
.LBB13_6:                               # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB13_8
# BB#7:                                 # %if.then.3
	jmp	.LBB13_9
.LBB13_8:                               # %if.else.4
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.gih_save_one_brush, %rsi
	movabsq	$.L.str.90, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB13_51
.LBB13_9:                               # %if.end.5
	jmp	.LBB13_10
.LBB13_10:                              # %do.end.6
	movq	-16(%rbp), %rax
	cmpl	$1, 32(%rax)
	jl	.LBB13_12
# BB#11:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpl	$1, 36(%rax)
	jge	.LBB13_13
.LBB13_12:                              # %if.then.9
	movl	$0, -4(%rbp)
	jmp	.LBB13_51
.LBB13_13:                              # %if.end.10
	cmpq	$0, -24(%rbp)
	jne	.LBB13_15
# BB#14:                                # %if.then.11
	movabsq	$.L.str.60, %rdi
	callq	gettext
	movq	%rax, -24(%rbp)
.LBB13_15:                              # %if.end.12
	movl	$28, %eax
	movl	%eax, %edx
	leaq	-56(%rbp), %rcx
	movl	$1, %eax
	movl	$4, %esi
	movq	-24(%rbp), %rdi
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%esi, -104(%rbp)        # 4-byte Spill
	callq	strlen
	addq	$28, %rax
	addq	$1, %rax
	movl	%eax, %esi
	andl	$255, %esi
	shll	$24, %esi
	movq	-24(%rbp), %rdi
	movl	%esi, -108(%rbp)        # 4-byte Spill
	callq	strlen
	addq	$28, %rax
	addq	$1, %rax
	movl	%eax, %esi
	andl	$65280, %esi            # imm = 0xFF00
	shll	$8, %esi
	movl	-108(%rbp), %r8d        # 4-byte Reload
	orl	%esi, %r8d
	movq	-24(%rbp), %rdi
	movl	%r8d, -112(%rbp)        # 4-byte Spill
	callq	strlen
	addq	$28, %rax
	addq	$1, %rax
	movl	%eax, %esi
	andl	$16711680, %esi         # imm = 0xFF0000
	shrl	$8, %esi
	movl	-112(%rbp), %r8d        # 4-byte Reload
	orl	%esi, %r8d
	movq	-24(%rbp), %rdi
	movl	%r8d, -116(%rbp)        # 4-byte Spill
	callq	strlen
	addq	$28, %rax
	addq	$1, %rax
	movl	%eax, %esi
	andl	$-16777216, %esi        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %esi
	movl	-116(%rbp), %r8d        # 4-byte Reload
	orl	%esi, %r8d
	movl	%r8d, -56(%rbp)
	movl	$33554432, -52(%rbp)    # imm = 0x2000000
	movq	-16(%rbp), %rax
	movl	32(%rax), %esi
	andl	$255, %esi
	shll	$24, %esi
	movq	-16(%rbp), %rax
	movl	32(%rax), %r8d
	andl	$65280, %r8d            # imm = 0xFF00
	shll	$8, %r8d
	orl	%r8d, %esi
	movq	-16(%rbp), %rax
	movl	32(%rax), %r8d
	andl	$16711680, %r8d         # imm = 0xFF0000
	shrl	$8, %r8d
	orl	%r8d, %esi
	movq	-16(%rbp), %rax
	movl	32(%rax), %r8d
	andl	$-16777216, %r8d        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %r8d
	orl	%r8d, %esi
	movl	%esi, -48(%rbp)
	movq	-16(%rbp), %rax
	movl	36(%rax), %esi
	andl	$255, %esi
	shll	$24, %esi
	movq	-16(%rbp), %rax
	movl	36(%rax), %r8d
	andl	$65280, %r8d            # imm = 0xFF00
	shll	$8, %r8d
	orl	%r8d, %esi
	movq	-16(%rbp), %rax
	movl	36(%rax), %r8d
	andl	$16711680, %r8d         # imm = 0xFF0000
	shrl	$8, %r8d
	orl	%r8d, %esi
	movq	-16(%rbp), %rax
	movl	36(%rax), %r8d
	andl	$-16777216, %r8d        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %r8d
	orl	%r8d, %esi
	movl	%esi, -44(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$2, 16(%rax)
	movl	-100(%rbp), %esi        # 4-byte Reload
	movl	-104(%rbp), %r8d        # 4-byte Reload
	cmovgl	%r8d, %esi
	andl	$255, %esi
	shll	$24, %esi
	movq	-16(%rbp), %rax
	cmpl	$2, 16(%rax)
	movl	-100(%rbp), %r9d        # 4-byte Reload
	cmovgl	%r8d, %r9d
	andl	$65280, %r9d            # imm = 0xFF00
	shll	$8, %r9d
	orl	%r9d, %esi
	movq	-16(%rbp), %rax
	cmpl	$2, 16(%rax)
	movl	-100(%rbp), %r9d        # 4-byte Reload
	cmovgl	%r8d, %r9d
	andl	$16711680, %r9d         # imm = 0xFF0000
	shrl	$8, %r9d
	orl	%r9d, %esi
	movq	-16(%rbp), %rax
	cmpl	$2, 16(%rax)
	movl	-100(%rbp), %r9d        # 4-byte Reload
	cmovgl	%r8d, %r9d
	andl	$-16777216, %r9d        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %r9d
	orl	%r9d, %esi
	movl	%esi, -40(%rbp)
	movl	$1347242311, -36(%rbp)  # imm = 0x504D4947
	movl	info, %esi
	andl	$255, %esi
	shll	$24, %esi
	movl	info, %r9d
	andl	$65280, %r9d            # imm = 0xFF00
	shll	$8, %r9d
	orl	%r9d, %esi
	movl	info, %r9d
	andl	$16711680, %r9d         # imm = 0xFF0000
	shrl	$8, %r9d
	orl	%r9d, %esi
	movl	info, %r9d
	andl	$-16777216, %r9d        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %r9d
	orl	%r9d, %esi
	movl	%esi, -32(%rbp)
	movl	-8(%rbp), %edi
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rsi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	callq	write
	cmpq	$28, %rax
	je	.LBB13_17
# BB#16:                                # %if.then.103
	movl	$0, -4(%rbp)
	jmp	.LBB13_51
.LBB13_17:                              # %if.end.104
	movl	-8(%rbp), %edi
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%edi, -120(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	strlen
	addq	$1, %rax
	movl	-120(%rbp), %edi        # 4-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	write
	movq	-24(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	strlen
	addq	$1, %rax
	movq	-136(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB13_19
# BB#18:                                # %if.then.112
	movl	$0, -4(%rbp)
	jmp	.LBB13_51
.LBB13_19:                              # %if.end.113
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-16(%rbp), %rax
	imull	16(%rax), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc
	movq	%rax, -64(%rbp)
	movl	$0, -68(%rbp)
.LBB13_20:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_37 Depth 2
                                        #     Child Loop BB13_30 Depth 2
                                        #     Child Loop BB13_23 Depth 2
	movl	-68(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jae	.LBB13_50
# BB#21:                                # %for.body
                                        #   in Loop: Header=BB13_20 Depth=1
	movq	-16(%rbp), %rax
	movq	-64(%rbp), %rsi
	movl	-68(%rbp), %ecx
	movl	24(%rax), %edx
	movl	28(%rax), %edi
	addl	%edi, %ecx
	movl	32(%rax), %r8d
	movq	%rax, %rdi
	callq	gimp_pixel_rgn_get_row
	movq	-16(%rbp), %rax
	movl	16(%rax), %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	ja	.LBB13_46
# BB#52:                                # %for.body
                                        #   in Loop: Header=BB13_20 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	.LJTI13_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB13_22:                              # %sw.bb
                                        #   in Loop: Header=BB13_20 Depth=1
	movl	$0, -72(%rbp)
.LBB13_23:                              # %for.cond.127
                                        #   Parent Loop BB13_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jae	.LBB13_28
# BB#24:                                # %for.body.131
                                        #   in Loop: Header=BB13_23 Depth=2
	leaq	-73(%rbp), %rsi
	movl	$1, %eax
	movl	%eax, %edx
	movl	$255, %eax
	movl	-72(%rbp), %ecx
	movl	%ecx, %edi
	movq	-64(%rbp), %r8
	movzbl	(%r8,%rdi), %ecx
	subl	%ecx, %eax
	movb	%al, %r9b
	movb	%r9b, -73(%rbp)
	movl	-8(%rbp), %edi
	callq	write
	cmpq	$1, %rax
	je	.LBB13_26
# BB#25:                                # %if.then.137
	movq	-64(%rbp), %rdi
	callq	g_free
	movl	$0, -4(%rbp)
	jmp	.LBB13_51
.LBB13_26:                              # %if.end.138
                                        #   in Loop: Header=BB13_23 Depth=2
	jmp	.LBB13_27
.LBB13_27:                              # %for.inc
                                        #   in Loop: Header=BB13_23 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB13_23
.LBB13_28:                              # %for.end
                                        #   in Loop: Header=BB13_20 Depth=1
	jmp	.LBB13_48
.LBB13_29:                              # %sw.bb.139
                                        #   in Loop: Header=BB13_20 Depth=1
	movl	$0, -72(%rbp)
.LBB13_30:                              # %for.cond.140
                                        #   Parent Loop BB13_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jae	.LBB13_35
# BB#31:                                # %for.body.144
                                        #   in Loop: Header=BB13_30 Depth=2
	leaq	-74(%rbp), %rsi
	movl	$1, %eax
	movl	%eax, %edx
	movl	$255, %eax
	movl	-72(%rbp), %ecx
	shll	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-64(%rbp), %r8
	movzbl	(%r8,%rdi), %ecx
	subl	%ecx, %eax
	movb	%al, %r9b
	movb	%r9b, -74(%rbp)
	movl	-8(%rbp), %edi
	callq	write
	cmpq	$1, %rax
	je	.LBB13_33
# BB#32:                                # %if.then.155
	movq	-64(%rbp), %rdi
	callq	g_free
	movl	$0, -4(%rbp)
	jmp	.LBB13_51
.LBB13_33:                              # %if.end.156
                                        #   in Loop: Header=BB13_30 Depth=2
	jmp	.LBB13_34
.LBB13_34:                              # %for.inc.157
                                        #   in Loop: Header=BB13_30 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB13_30
.LBB13_35:                              # %for.end.159
                                        #   in Loop: Header=BB13_20 Depth=1
	jmp	.LBB13_48
.LBB13_36:                              # %sw.bb.160
                                        #   in Loop: Header=BB13_20 Depth=1
	movl	$0, -72(%rbp)
.LBB13_37:                              # %for.cond.161
                                        #   Parent Loop BB13_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jae	.LBB13_42
# BB#38:                                # %for.body.165
                                        #   in Loop: Header=BB13_37 Depth=2
	movl	$4, %eax
	movl	%eax, %edx
	leaq	-78(%rbp), %rsi
	imull	$3, -72(%rbp), %eax
	addl	$0, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdi
	movb	(%rdi,%rcx), %r8b
	movb	%r8b, -78(%rbp)
	imull	$3, -72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdi
	movb	(%rdi,%rcx), %r8b
	movb	%r8b, -77(%rbp)
	imull	$3, -72(%rbp), %eax
	addl	$2, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdi
	movb	(%rdi,%rcx), %r8b
	movb	%r8b, -76(%rbp)
	movb	$-1, -75(%rbp)
	movl	-8(%rbp), %edi
	callq	write
	cmpq	$4, %rax
	je	.LBB13_40
# BB#39:                                # %if.then.186
	movq	-64(%rbp), %rdi
	callq	g_free
	movl	$0, -4(%rbp)
	jmp	.LBB13_51
.LBB13_40:                              # %if.end.187
                                        #   in Loop: Header=BB13_37 Depth=2
	jmp	.LBB13_41
.LBB13_41:                              # %for.inc.188
                                        #   in Loop: Header=BB13_37 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB13_37
.LBB13_42:                              # %for.end.190
                                        #   in Loop: Header=BB13_20 Depth=1
	jmp	.LBB13_48
.LBB13_43:                              # %sw.bb.191
                                        #   in Loop: Header=BB13_20 Depth=1
	movl	-8(%rbp), %edi
	movq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-16(%rbp), %rax
	imull	16(%rax), %ecx
	movslq	%ecx, %rdx
	callq	write
	movq	-16(%rbp), %rdx
	movl	32(%rdx), %ecx
	movq	-16(%rbp), %rdx
	imull	16(%rdx), %ecx
	movslq	%ecx, %rdx
	cmpq	%rdx, %rax
	je	.LBB13_45
# BB#44:                                # %if.then.203
	movq	-64(%rbp), %rdi
	callq	g_free
	movl	$0, -4(%rbp)
	jmp	.LBB13_51
.LBB13_45:                              # %if.end.204
                                        #   in Loop: Header=BB13_20 Depth=1
	jmp	.LBB13_48
.LBB13_46:                              # %sw.default
	jmp	.LBB13_47
.LBB13_47:                              # %do.body.205
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.91, %rsi
	movl	$1220, %edx             # imm = 0x4C4
	movabsq	$.L__func__.gih_save_one_brush, %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-160(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-168(%rbp), %r8         # 8-byte Reload
	callq	g_assertion_message_expr
.LBB13_48:                              # %sw.epilog
                                        #   in Loop: Header=BB13_20 Depth=1
	jmp	.LBB13_49
.LBB13_49:                              # %for.inc.207
                                        #   in Loop: Header=BB13_20 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB13_20
.LBB13_50:                              # %for.end.209
	movq	-64(%rbp), %rdi
	callq	g_free
	movl	$1, -4(%rbp)
.LBB13_51:                              # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gih_save_one_brush, .Lfunc_end13-gih_save_one_brush
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI13_0:
	.quad	.LBB13_22
	.quad	.LBB13_29
	.quad	.LBB13_36
	.quad	.LBB13_43

	.type	PLUG_IN_INFO,@object    # @PLUG_IN_INFO
	.globl	PLUG_IN_INFO
	.align	8
PLUG_IN_INFO:
	.quad	0
	.quad	0
	.quad	query
	.quad	run
	.size	PLUG_IN_INFO, 32

	.type	query.gih_save_args,@object # @query.gih_save_args
	.align	16
query.gih_save_args:
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
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.11
	.quad	.L.str.12
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.13
	.quad	.L.str.14
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.15
	.quad	.L.str.14
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.17
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.18
	.quad	.L.str.19
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.20
	.quad	.L.str.21
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.22
	.quad	.L.str.23
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.20
	.quad	.L.str.24
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.25
	.quad	.L.str.26
	.size	query.gih_save_args, 360

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
	.asciz	"Drawable to save"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"filename"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The name of the file to save the brush pipe in"
	.size	.L.str.7, 47

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"raw-filename"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"spacing"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Spacing of the brush"
	.size	.L.str.10, 21

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"description"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Short description of the brush pipe"
	.size	.L.str.12, 36

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"cell-width"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Width of the brush cells"
	.size	.L.str.14, 25

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"cell-height"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"display-cols"
	.size	.L.str.16, 13

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Display column number"
	.size	.L.str.17, 22

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"display-rows"
	.size	.L.str.18, 13

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Display row number"
	.size	.L.str.19, 19

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"dimension"
	.size	.L.str.20, 10

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Dimension of the brush pipe"
	.size	.L.str.21, 28

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"rank"
	.size	.L.str.22, 5

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Ranks of the dimensions"
	.size	.L.str.23, 24

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Dimension (again)"
	.size	.L.str.24, 18

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"sel"
	.size	.L.str.25, 4

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Selection modes"
	.size	.L.str.26, 16

	.type	query.gih_load_args,@object # @query.gih_load_args
	.section	.rodata,"a",@progbits
	.align	16
query.gih_load_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.27
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.27
	.size	query.gih_load_args, 72

	.type	.L.str.27,@object       # @.str.27
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.27:
	.asciz	"The name of the file to load"
	.size	.L.str.27, 29

	.type	query.gih_load_return_vals,@object # @query.gih_load_return_vals
	.section	.rodata,"a",@progbits
	.align	16
query.gih_load_return_vals:
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.28
	.size	query.gih_load_return_vals, 24

	.type	.L.str.28,@object       # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"Output image"
	.size	.L.str.28, 13

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"file-gih-load"
	.size	.L.str.29, 14

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"loads images in GIMP brush pipe format"
	.size	.L.str.30, 39

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"This plug-in loads a GIMP brush pipe as an image."
	.size	.L.str.31, 50

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Jens Lautenbacher, Sven Neumann"
	.size	.L.str.32, 32

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"2000"
	.size	.L.str.33, 5

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"GIMP brush (animated)"
	.size	.L.str.34, 22

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gimp-tool-paintbrush"
	.size	.L.str.35, 21

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"image/x-gimp-gih"
	.size	.L.str.36, 17

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"gih"
	.size	.L.str.37, 4

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.zero	1
	.size	.L.str.38, 1

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"file-gih-save"
	.size	.L.str.39, 14

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"saves images in GIMP brush pipe format"
	.size	.L.str.40, 39

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"This plug-in saves an image in the GIMP brush pipe format. For a colored brush pipe, RGBA layers are used, otherwise the layers should be grayscale masks. The image can be multi-layered, and additionally the layers can be divided into a rectangular array of brushes."
	.size	.L.str.41, 267

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Tor Lillqvist"
	.size	.L.str.42, 14

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"1999"
	.size	.L.str.43, 5

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.44, 12

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"file_gih_save"
	.size	.L.str.45, 14

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.46, 20

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"UTF-8"
	.size	.L.str.47, 6

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"file-gih"
	.size	.L.str.48, 9

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"GIH"
	.size	.L.str.49, 4

	.type	num_layers,@object      # @num_layers
	.local	num_layers
	.comm	num_layers,4,4
	.type	info,@object            # @info
	.data
	.align	4
info:
	.long	20                      # 0x14
	.asciz	"GIMP Brush Pipe\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	3
	.size	info, 264

	.type	gihparams,@object       # @gihparams
	.local	gihparams
	.comm	gihparams,104,8
	.type	.L.str.50,@object       # @.str.50
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.50:
	.asciz	"gimp-brush-pipe-parameters"
	.size	.L.str.50, 27

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.51, 36

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Opening '%s'"
	.size	.L.str.52, 13

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Couldn't read name for brush pipe from '%s'"
	.size	.L.str.53, 44

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Brush pipes should have at least one brush."
	.size	.L.str.54, 44

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"%s"
	.size	.L.str.55, 3

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Couldn't load one brush in the pipe, giving up."
	.size	.L.str.56, 48

	.type	.L__func__.gih_load_one_brush,@object # @__func__.gih_load_one_brush
.L__func__.gih_load_one_brush:
	.asciz	"gih_load_one_brush"
	.size	.L__func__.gih_load_one_brush, 19

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"fd != -1"
	.size	.L.str.57, 9

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"image_ID != -1"
	.size	.L.str.58, 15

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Error in GIMP brush pipe file."
	.size	.L.str.59, 31

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Unnamed"
	.size	.L.str.60, 8

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"GIMP brush file appears to be corrupted."
	.size	.L.str.61, 41

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Unsupported brush depth: %d\nGIMP Brushes must be GRAY or RGBA\n"
	.size	.L.str.62, 63

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Brush Pipe"
	.size	.L.str.63, 11

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Spacing (percent):"
	.size	.L.str.64, 19

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"value-changed"
	.size	.L.str.65, 14

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Description:"
	.size	.L.str.66, 13

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"changed"
	.size	.L.str.67, 8

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"x"
	.size	.L.str.68, 2

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Pixels"
	.size	.L.str.69, 7

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"Cell size:"
	.size	.L.str.70, 11

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"Number of cells:"
	.size	.L.str.71, 17

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"%2d"
	.size	.L.str.72, 4

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	" Rows of "
	.size	.L.str.73, 10

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	" Columns on each layer"
	.size	.L.str.74, 23

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	" (Width Mismatch!) "
	.size	.L.str.75, 20

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	" (Height Mismatch!) "
	.size	.L.str.76, 21

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"Display as:"
	.size	.L.str.77, 12

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Dimension:"
	.size	.L.str.78, 11

	.type	selection_modes,@object # @selection_modes
	.data
	.align	16
selection_modes:
	.quad	.L.str.80
	.quad	.L.str.81
	.quad	.L.str.82
	.quad	.L.str.83
	.quad	.L.str.84
	.quad	.L.str.85
	.quad	.L.str.86
	.size	selection_modes, 56

	.type	.L.str.79,@object       # @.str.79
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.79:
	.asciz	"Ranks:"
	.size	.L.str.79, 7

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"incremental"
	.size	.L.str.80, 12

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"angular"
	.size	.L.str.81, 8

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"random"
	.size	.L.str.82, 7

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"velocity"
	.size	.L.str.83, 9

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"pressure"
	.size	.L.str.84, 9

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"xtilt"
	.size	.L.str.85, 6

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"ytilt"
	.size	.L.str.86, 6

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.87, 36

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"Saving '%s'"
	.size	.L.str.88, 12

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"%s\n%d %s\n"
	.size	.L.str.89, 10

	.type	.L__func__.gih_save_one_brush,@object # @__func__.gih_save_one_brush
.L__func__.gih_save_one_brush:
	.asciz	"gih_save_one_brush"
	.size	.L__func__.gih_save_one_brush, 19

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"pixel_rgn != NULL"
	.size	.L.str.90, 18

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"file-gih.c"
	.size	.L.str.91, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
