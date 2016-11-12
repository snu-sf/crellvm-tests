	.text
	.file	"file-xbm.bc"
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
	movabsq	$.L.str.26, %rdi
	movabsq	$.L.str.27, %rsi
	movabsq	$.L.str.28, %rdx
	movabsq	$.L.str.29, %rax
	movabsq	$.L.str.30, %r9
	movabsq	$.L.str.31, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movl	$1, %r8d
	movl	$3, %r11d
	movabsq	$query.load_args, %rbx
	movabsq	$query.load_return_vals, %r14
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
	movabsq	$.L.str.26, %rdi
	movabsq	$.L.str.32, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.26, %rdi
	movabsq	$.L.str.33, %rsi
	movabsq	$.L.str.34, %rdx
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	gimp_register_load_handler
	movabsq	$.L.str.35, %rdi
	movabsq	$.L.str.36, %rsi
	movabsq	$.L.str.37, %rdx
	movabsq	$.L.str.29, %rcx
	movabsq	$.L.str.30, %r9
	movabsq	$.L.str.31, %r8
	movabsq	$.L.str.38, %r10
	movl	$1, %r11d
	movl	$12, %r15d
	xorl	%r12d, %r12d
	movabsq	$query.save_args, %rbx
	xorl	%r13d, %r13d
	movl	%r13d, %r14d
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	-80(%rbp), %r13         # 8-byte Reload
	movq	%r8, -88(%rbp)          # 8-byte Spill
	movq	%r13, %r8
	movq	-88(%rbp), %r13         # 8-byte Reload
	movq	%r13, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$12, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movq	%r14, -104(%rbp)        # 8-byte Spill
	movl	%r12d, -108(%rbp)       # 4-byte Spill
	movl	%r15d, -112(%rbp)       # 4-byte Spill
	movl	%r11d, -116(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.35, %rdi
	movabsq	$.L.str.32, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.35, %rdi
	movabsq	$.L.str.33, %rsi
	movabsq	$.L.str.34, %rdx
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	gimp_register_save_handler
	movl	%eax, -124(%rbp)        # 4-byte Spill
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
	subq	$352, %rsp              # imm = 0x160
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -48(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movl	$0, -84(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.39, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.39, %rdi
	movabsq	$.L.str.40, %rsi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.39, %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	textdomain
	movq	%rax, -152(%rbp)        # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$xsvals, %rdi
	movabsq	$.L.str.41, %rsi
	movl	$72, %eax
	movl	%eax, %edx
	callq	strncpy
	movabsq	$run.values, %rdx
	movq	-24(%rbp), %rsi
	movl	8(%rsi), %ecx
	movl	%ecx, -44(%rbp)
	movq	-32(%rbp), %rsi
	movl	$1, (%rsi)
	movq	-40(%rbp), %rsi
	movq	%rdx, (%rsi)
	movl	$21, run.values
	movl	$0, run.values+8
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %ecx
	movl	%ecx, %esi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_7
# BB#3:                                 # %if.then
	leaq	-80(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	load_image
	movl	%eax, -52(%rbp)
	cmpl	$-1, -52(%rbp)
	je	.LBB1_5
# BB#4:                                 # %if.then.10
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$13, run.values+40
	movl	-52(%rbp), %ecx
	movl	%ecx, run.values+48
	jmp	.LBB1_6
.LBB1_5:                                # %if.else
	movl	$0, -48(%rbp)
.LBB1_6:                                # %if.end
	jmp	.LBB1_75
.LBB1_7:                                # %if.else.11
	movq	-8(%rbp), %rdi
	movl	$.L.str.35, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_73
# BB#8:                                 # %if.then.14
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movl	-44(%rbp), %ecx
	orl	$2, %ecx
	subl	$2, %ecx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	je	.LBB1_9
	jmp	.LBB1_12
.LBB1_9:                                # %sw.bb
	movabsq	$.L.str.42, %rdi
	xorl	%esi, %esi
	callq	gimp_ui_init
	leaq	-52(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	movabsq	$.L.str.43, %rdx
	movl	$24, %ecx
	callq	gimp_export_image
	movl	%eax, -84(%rbp)
	cmpl	$0, -84(%rbp)
	jne	.LBB1_11
# BB#10:                                # %if.then.23
	movl	$4, run.values+8
	jmp	.LBB1_79
.LBB1_11:                               # %if.end.24
	jmp	.LBB1_13
.LBB1_12:                               # %sw.default
	jmp	.LBB1_13
.LBB1_13:                               # %sw.epilog
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	je	.LBB1_14
	jmp	.LBB1_80
.LBB1_80:                               # %sw.epilog
	movl	-168(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	je	.LBB1_15
	jmp	.LBB1_81
.LBB1_81:                               # %sw.epilog
	movl	-168(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jne	.LBB1_31
	jmp	.LBB1_14
.LBB1_14:                               # %sw.bb.25
	movabsq	$.L.str.35, %rdi
	movabsq	$xsvals, %rsi
	callq	gimp_procedural_db_get_data
	movq	-24(%rbp), %rsi
	movq	128(%rsi), %rdi
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	init_prefix
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -72(%rbp)
	jmp	.LBB1_32
.LBB1_15:                               # %sw.bb.32
	cmpl	$5, -12(%rbp)
	jge	.LBB1_17
# BB#16:                                # %if.then.34
	movl	$1, -48(%rbp)
	jmp	.LBB1_30
.LBB1_17:                               # %if.else.35
	movl	$5, -88(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jle	.LBB1_19
# BB#18:                                # %if.then.37
	movabsq	$xsvals, %rax
	movl	$72, %ecx
	movl	%ecx, %edx
	xorl	%esi, %esi
	movl	$73, %ecx
	movl	%ecx, %edi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-192(%rbp), %r8         # 8-byte Reload
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	memset
	movslq	-88(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	-200(%rbp), %rdx        # 8-byte Reload
	callq	strncpy
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB1_19:                               # %if.end.42
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jle	.LBB1_21
# BB#20:                                # %if.then.44
	xorl	%eax, %eax
	movl	$1, %ecx
	movslq	-88(%rbp), %rdx
	imulq	$40, %rdx, %rdx
	addq	-24(%rbp), %rdx
	cmpl	$0, 8(%rdx)
	cmovnel	%ecx, %eax
	movl	%eax, xsvals+76
.LBB1_21:                               # %if.end.49
	movl	-88(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -88(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jle	.LBB1_23
# BB#22:                                # %if.then.51
	movl	$1, xsvals+80
	movl	-88(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-24(%rbp), %rcx
	movl	8(%rcx), %eax
	movl	%eax, xsvals+84
	movslq	-88(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	-24(%rbp), %rcx
	movl	8(%rcx), %eax
	movl	%eax, xsvals+88
.LBB1_23:                               # %if.end.60
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	callq	init_prefix
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -72(%rbp)
	movl	-88(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -88(%rbp)
	movl	-12(%rbp), %ecx
	cmpl	-88(%rbp), %ecx
	jle	.LBB1_25
# BB#24:                                # %if.then.68
	movabsq	$xsvals, %rax
	addq	$92, %rax
	movl	$64, %ecx
	movl	%ecx, %edx
	xorl	%esi, %esi
	movl	$65, %ecx
	movl	%ecx, %edi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-224(%rbp), %r8         # 8-byte Reload
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	memset
	movslq	-88(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	-232(%rbp), %rdx        # 8-byte Reload
	callq	strncpy
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB1_25:                               # %if.end.74
	movl	-88(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -88(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jle	.LBB1_27
# BB#26:                                # %if.then.77
	movabsq	$xsvals, %rax
	addq	$164, %rax
	movl	$32, %ecx
	movl	%ecx, %edx
	xorl	%esi, %esi
	movl	$33, %ecx
	movl	%ecx, %edi
	movl	-88(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %r8
	imulq	$40, %r8, %r8
	addq	-24(%rbp), %r8
	movl	8(%r8), %ecx
	movl	%ecx, xsvals+160
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-256(%rbp), %r8         # 8-byte Reload
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	memset
	movslq	-88(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	-264(%rbp), %rdx        # 8-byte Reload
	callq	strncpy
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB1_27:                               # %if.end.88
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jle	.LBB1_29
# BB#28:                                # %if.then.91
	movl	$1, -48(%rbp)
.LBB1_29:                               # %if.end.92
	jmp	.LBB1_30
.LBB1_30:                               # %if.end.93
	jmp	.LBB1_32
.LBB1_31:                               # %sw.default.94
	jmp	.LBB1_32
.LBB1_32:                               # %sw.epilog.95
	cmpl	$0, -44(%rbp)
	jne	.LBB1_48
# BB#33:                                # %if.then.97
	movabsq	$.L.str.44, %rsi
	movl	-52(%rbp), %edi
	callq	gimp_image_get_parasite
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB1_41
# BB#34:                                # %if.then.100
	movq	-64(%rbp), %rdi
	callq	gimp_parasite_data_size
	movl	%eax, %ecx
	movl	%ecx, -92(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_parasite_data
	cmpl	$72, -92(%rbp)
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jge	.LBB1_36
# BB#35:                                # %cond.true
	movl	-92(%rbp), %eax
	movl	%eax, -292(%rbp)        # 4-byte Spill
	jmp	.LBB1_37
.LBB1_36:                               # %cond.false
	movl	$72, %eax
	movl	%eax, -292(%rbp)        # 4-byte Spill
	jmp	.LBB1_37
.LBB1_37:                               # %cond.end
	movl	-292(%rbp), %eax        # 4-byte Reload
	movabsq	$xsvals, %rdi
	movslq	%eax, %rdx
	movq	-288(%rbp), %rsi        # 8-byte Reload
	callq	strncpy
	cmpl	$72, -92(%rbp)
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jge	.LBB1_39
# BB#38:                                # %cond.true.110
	movl	-92(%rbp), %eax
	movl	%eax, -308(%rbp)        # 4-byte Spill
	jmp	.LBB1_40
.LBB1_39:                               # %cond.false.111
	movl	$72, %eax
	movl	%eax, -308(%rbp)        # 4-byte Spill
	jmp	.LBB1_40
.LBB1_40:                               # %cond.end.112
	movl	-308(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	movslq	%eax, %rcx
	movb	$0, xsvals(,%rcx)
	movq	-64(%rbp), %rdi
	callq	gimp_parasite_free
.LBB1_41:                               # %if.end.117
	movabsq	$.L.str.45, %rsi
	movl	-52(%rbp), %edi
	callq	gimp_image_get_parasite
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB1_45
# BB#42:                                # %if.then.120
	movq	-64(%rbp), %rdi
	callq	gimp_parasite_data
	movabsq	$.L.str.46, %rsi
	leaq	-96(%rbp), %rdx
	leaq	-100(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	__isoc99_sscanf
	cmpl	$2, %eax
	jne	.LBB1_44
# BB#43:                                # %if.then.125
	movl	$1, xsvals+80
	movl	-96(%rbp), %eax
	movl	%eax, xsvals+84
	movl	-100(%rbp), %eax
	movl	%eax, xsvals+88
.LBB1_44:                               # %if.end.126
	movq	-64(%rbp), %rdi
	callq	gimp_parasite_free
.LBB1_45:                               # %if.end.127
	movl	-56(%rbp), %edi
	callq	save_dialog
	cmpl	$0, %eax
	jne	.LBB1_47
# BB#46:                                # %if.then.130
	movl	$4, -48(%rbp)
.LBB1_47:                               # %if.end.131
	jmp	.LBB1_48
.LBB1_48:                               # %if.end.132
	cmpl	$3, -48(%rbp)
	jne	.LBB1_70
# BB#49:                                # %if.then.135
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	callq	g_path_get_dirname
	movq	%rax, -128(%rbp)
	cmpq	$0, %rax
	je	.LBB1_51
# BB#50:                                # %if.then.142
	movabsq	$.L.str.47, %rdi
	movabsq	$xsvals, %rax
	addq	$164, %rax
	movq	-128(%rbp), %rsi
	movq	-112(%rbp), %rdx
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -72(%rbp)
	movq	-128(%rbp), %rdi
	callq	g_free
	jmp	.LBB1_52
.LBB1_51:                               # %if.else.144
	movabsq	$.L.str.48, %rdi
	movabsq	$xsvals, %rax
	addq	$164, %rax
	movq	-112(%rbp), %rsi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -72(%rbp)
.LBB1_52:                               # %if.end.146
	movq	-112(%rbp), %rdi
	callq	g_free
	movabsq	$xsvals, %rdi
	addq	$92, %rdi
	movq	%rdi, -112(%rbp)
.LBB1_53:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-112(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB1_58
# BB#54:                                # %for.body
                                        #   in Loop: Header=BB1_53 Depth=1
	movq	-112(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rax,2), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	jne	.LBB1_56
# BB#55:                                # %if.then.153
                                        #   in Loop: Header=BB1_53 Depth=1
	movq	-112(%rbp), %rax
	movb	$95, (%rax)
.LBB1_56:                               # %if.end.154
                                        #   in Loop: Header=BB1_53 Depth=1
	jmp	.LBB1_57
.LBB1_57:                               # %for.inc
                                        #   in Loop: Header=BB1_53 Depth=1
	movq	-112(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB1_53
.LBB1_58:                               # %for.end
	movabsq	$.L.str.49, %rdi
	movabsq	$xsvals, %rax
	movq	%rax, %rcx
	addq	$92, %rcx
	addq	$164, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -112(%rbp)
.LBB1_59:                               # %for.cond.156
                                        # =>This Inner Loop Header: Depth=1
	movq	-112(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB1_64
# BB#60:                                # %for.body.158
                                        #   in Loop: Header=BB1_59 Depth=1
	movq	-112(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rax,2), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	jne	.LBB1_62
# BB#61:                                # %if.then.165
                                        #   in Loop: Header=BB1_59 Depth=1
	movq	-112(%rbp), %rax
	movb	$95, (%rax)
.LBB1_62:                               # %if.end.166
                                        #   in Loop: Header=BB1_59 Depth=1
	jmp	.LBB1_63
.LBB1_63:                               # %for.inc.167
                                        #   in Loop: Header=BB1_59 Depth=1
	movq	-112(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB1_59
.LBB1_64:                               # %for.end.169
	movabsq	$xsvals, %rax
	movq	%rax, %rcx
	addq	$92, %rcx
	xorl	%edx, %edx
	leaq	-80(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	128(%rdi), %rdi
	movl	-52(%rbp), %r8d
	movl	-56(%rbp), %r9d
	movq	%rsi, -320(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -324(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movl	-324(%rbp), %ecx        # 4-byte Reload
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	save_image
	cmpl	$0, %eax
	je	.LBB1_68
# BB#65:                                # %land.lhs.true
	cmpl	$0, xsvals+160
	je	.LBB1_67
# BB#66:                                # %lor.lhs.false
	movabsq	$xsvals, %rdx
	movl	$1, %ecx
	leaq	-80(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movl	-52(%rbp), %r8d
	movl	-56(%rbp), %r9d
	movq	%rax, (%rsp)
	callq	save_image
	cmpl	$0, %eax
	je	.LBB1_68
.LBB1_67:                               # %if.then.178
	movabsq	$.L.str.35, %rdi
	movabsq	$xsvals, %rsi
	movl	$200, %edx
	callq	gimp_procedural_db_set_data
	movl	%eax, -328(%rbp)        # 4-byte Spill
	jmp	.LBB1_69
.LBB1_68:                               # %if.else.180
	movl	$0, -48(%rbp)
.LBB1_69:                               # %if.end.181
	movq	-120(%rbp), %rdi
	callq	g_free
	movq	-72(%rbp), %rdi
	callq	g_free
.LBB1_70:                               # %if.end.182
	cmpl	$2, -84(%rbp)
	jne	.LBB1_72
# BB#71:                                # %if.then.185
	movl	-52(%rbp), %edi
	callq	gimp_image_delete
	movl	%eax, -332(%rbp)        # 4-byte Spill
.LBB1_72:                               # %if.end.187
	jmp	.LBB1_74
.LBB1_73:                               # %if.else.188
	movl	$1, -48(%rbp)
.LBB1_74:                               # %if.end.189
	jmp	.LBB1_75
.LBB1_75:                               # %if.end.190
	cmpl	$3, -48(%rbp)
	je	.LBB1_78
# BB#76:                                # %land.lhs.true.193
	cmpq	$0, -80(%rbp)
	je	.LBB1_78
# BB#77:                                # %if.then.195
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
.LBB1_78:                               # %if.end.196
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_79:                               # %return
	addq	$352, %rsp              # imm = 0x160
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

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4636737291354636288     # double 100
.LCPI3_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	load_image,@function
load_image:                             # @load_image
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
	subq	$400, %rsp              # imm = 0x190
	movabsq	$.L.str.50, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -112(%rbp)
	movl	$0, -116(%rbp)
	movl	$0, -120(%rbp)
	movl	$0, -124(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	fopen
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.51, %rdi
	movl	%eax, -200(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movl	-196(%rbp), %esi        # 4-byte Reload
	movl	-200(%rbp), %edx        # 4-byte Reload
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	-216(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB3_86
.LBB3_2:                                # %if.end
	movabsq	$.L.str.52, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	movq	-88(%rbp), %rdi
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	fgetcomment
	movq	%rax, -160(%rbp)
	movl	$0, -112(%rbp)
	movl	$0, -116(%rbp)
	movl	$0, -108(%rbp)
	movl	$32, -128(%rbp)
.LBB3_3:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-128(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, %edx
	movq	g_ascii_table, %rsi
	movzwl	(%rsi,%rdx,2), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	je	.LBB3_14
# BB#4:                                 # %if.then.14
                                        #   in Loop: Header=BB3_3 Depth=1
	movabsq	$.L.str.53, %rsi
	movq	-88(%rbp), %rdi
	callq	match
	cmpl	$0, %eax
	je	.LBB3_8
# BB#5:                                 # %if.then.17
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-88(%rbp), %rdi
	callq	fgetc
	movl	%eax, -128(%rbp)
	movl	-128(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, %edi
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rdi,2), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	je	.LBB3_7
# BB#6:                                 # %if.then.26
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	$8, -108(%rbp)
	jmp	.LBB3_36
.LBB3_7:                                # %if.end.27
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_13
.LBB3_8:                                # %if.else
                                        #   in Loop: Header=BB3_3 Depth=1
	movabsq	$.L.str.54, %rsi
	movq	-88(%rbp), %rdi
	callq	match
	cmpl	$0, %eax
	je	.LBB3_12
# BB#9:                                 # %if.then.30
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-88(%rbp), %rdi
	callq	fgetc
	movl	%eax, -128(%rbp)
	movl	-128(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, %edi
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rdi,2), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	je	.LBB3_11
# BB#10:                                # %if.then.39
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	$16, -108(%rbp)
	jmp	.LBB3_36
.LBB3_11:                               # %if.end.40
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_12
.LBB3_12:                               # %if.end.41
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_13
.LBB3_13:                               # %if.end.42
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_14
.LBB3_14:                               # %if.end.43
                                        #   in Loop: Header=BB3_3 Depth=1
	cmpl	$95, -128(%rbp)
	jne	.LBB3_35
# BB#15:                                # %if.then.46
                                        #   in Loop: Header=BB3_3 Depth=1
	movabsq	$.L.str.55, %rsi
	movq	-88(%rbp), %rdi
	callq	match
	cmpl	$0, %eax
	je	.LBB3_19
# BB#16:                                # %if.then.49
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-88(%rbp), %rdi
	callq	fgetc
	movl	%eax, -128(%rbp)
	movl	-128(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, %edi
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rdi,2), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	je	.LBB3_18
# BB#17:                                # %if.then.58
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-88(%rbp), %rdi
	callq	get_int
	movl	%eax, -112(%rbp)
	jmp	.LBB3_36
.LBB3_18:                               # %if.end.60
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_34
.LBB3_19:                               # %if.else.61
                                        #   in Loop: Header=BB3_3 Depth=1
	movabsq	$.L.str.56, %rsi
	movq	-88(%rbp), %rdi
	callq	match
	cmpl	$0, %eax
	je	.LBB3_23
# BB#20:                                # %if.then.64
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-88(%rbp), %rdi
	callq	fgetc
	movl	%eax, -128(%rbp)
	movl	-128(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, %edi
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rdi,2), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	je	.LBB3_22
# BB#21:                                # %if.then.73
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-88(%rbp), %rdi
	callq	get_int
	movl	%eax, -116(%rbp)
	jmp	.LBB3_36
.LBB3_22:                               # %if.end.75
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_33
.LBB3_23:                               # %if.else.76
                                        #   in Loop: Header=BB3_3 Depth=1
	movabsq	$.L.str.57, %rsi
	movq	-88(%rbp), %rdi
	callq	match
	cmpl	$0, %eax
	je	.LBB3_27
# BB#24:                                # %if.then.79
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-88(%rbp), %rdi
	callq	fgetc
	movl	%eax, -128(%rbp)
	movl	-128(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, %edi
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rdi,2), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	je	.LBB3_26
# BB#25:                                # %if.then.88
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-88(%rbp), %rdi
	callq	get_int
	movl	%eax, -120(%rbp)
	jmp	.LBB3_36
.LBB3_26:                               # %if.end.90
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_32
.LBB3_27:                               # %if.else.91
                                        #   in Loop: Header=BB3_3 Depth=1
	movabsq	$.L.str.58, %rsi
	movq	-88(%rbp), %rdi
	callq	match
	cmpl	$0, %eax
	je	.LBB3_31
# BB#28:                                # %if.then.94
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-88(%rbp), %rdi
	callq	fgetc
	movl	%eax, -128(%rbp)
	movl	-128(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, %edi
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rdi,2), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	je	.LBB3_30
# BB#29:                                # %if.then.103
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-88(%rbp), %rdi
	callq	get_int
	movl	%eax, -124(%rbp)
	jmp	.LBB3_36
.LBB3_30:                               # %if.end.105
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_31
.LBB3_31:                               # %if.end.106
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_32
.LBB3_32:                               # %if.end.107
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_33
.LBB3_33:                               # %if.end.108
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_34
.LBB3_34:                               # %if.end.109
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_35
.LBB3_35:                               # %if.end.110
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-88(%rbp), %rdi
	callq	cpp_fgetc
	movl	%eax, -128(%rbp)
.LBB3_36:                               # %do.cond
                                        #   in Loop: Header=BB3_3 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$123, -128(%rbp)
	movb	%cl, -229(%rbp)         # 1-byte Spill
	je	.LBB3_38
# BB#37:                                # %land.rhs
                                        #   in Loop: Header=BB3_3 Depth=1
	cmpl	$-1, -128(%rbp)
	setne	%al
	movb	%al, -229(%rbp)         # 1-byte Spill
.LBB3_38:                               # %land.end
                                        #   in Loop: Header=BB3_3 Depth=1
	movb	-229(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_3
# BB#39:                                # %do.end
	cmpl	$-1, -128(%rbp)
	jne	.LBB3_41
# BB#40:                                # %if.then.118
	movabsq	$.L.str.59, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-88(%rbp), %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	ftell
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	-248(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB3_86
.LBB3_41:                               # %if.end.122
	cmpl	$0, -112(%rbp)
	jg	.LBB3_43
# BB#42:                                # %if.then.125
	movabsq	$.L.str.60, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB3_86
.LBB3_43:                               # %if.end.128
	cmpl	$262144, -112(%rbp)     # imm = 0x40000
	jle	.LBB3_45
# BB#44:                                # %if.then.131
	movabsq	$.L.str.61, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB3_86
.LBB3_45:                               # %if.end.134
	cmpl	$0, -116(%rbp)
	jg	.LBB3_47
# BB#46:                                # %if.then.137
	movabsq	$.L.str.62, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB3_86
.LBB3_47:                               # %if.end.140
	cmpl	$262144, -116(%rbp)     # imm = 0x40000
	jle	.LBB3_49
# BB#48:                                # %if.then.143
	movabsq	$.L.str.63, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB3_86
.LBB3_49:                               # %if.end.146
	cmpl	$0, -108(%rbp)
	jne	.LBB3_51
# BB#50:                                # %if.then.149
	movabsq	$.L.str.64, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB3_86
.LBB3_51:                               # %if.end.152
	movl	$2, %edx
	movl	-112(%rbp), %edi
	movl	-116(%rbp), %esi
	callq	gimp_image_new
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	gimp_image_set_filename
	cmpq	$0, -160(%rbp)
	movl	%eax, -292(%rbp)        # 4-byte Spill
	je	.LBB3_53
# BB#52:                                # %if.then.156
	movabsq	$.L.str.44, %rdi
	movl	$1, %esi
	movq	-160(%rbp), %rax
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -308(%rbp)        # 4-byte Spill
	callq	strlen
	addq	$1, %rax
	movl	%eax, %esi
	movq	-160(%rbp), %rcx
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movl	-308(%rbp), %edx        # 4-byte Reload
	movl	%esi, -312(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-312(%rbp), %edx        # 4-byte Reload
	callq	gimp_parasite_new
	movq	%rax, -168(%rbp)
	movl	-92(%rbp), %edi
	movq	-168(%rbp), %rsi
	callq	gimp_image_attach_parasite
	movq	-168(%rbp), %rdi
	movl	%eax, -316(%rbp)        # 4-byte Spill
	callq	gimp_parasite_free
	movq	-160(%rbp), %rdi
	callq	g_free
.LBB3_53:                               # %if.end.161
	movl	-120(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jle	.LBB3_55
# BB#54:                                # %cond.true
	movl	-112(%rbp), %eax
	movl	%eax, -320(%rbp)        # 4-byte Spill
	jmp	.LBB3_59
.LBB3_55:                               # %cond.false
	cmpl	$0, -120(%rbp)
	jge	.LBB3_57
# BB#56:                                # %cond.true.166
	xorl	%eax, %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
	jmp	.LBB3_58
.LBB3_57:                               # %cond.false.167
	movl	-120(%rbp), %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB3_58:                               # %cond.end
	movl	-324(%rbp), %eax        # 4-byte Reload
	movl	%eax, -320(%rbp)        # 4-byte Spill
.LBB3_59:                               # %cond.end.168
	movl	-320(%rbp), %eax        # 4-byte Reload
	movl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jle	.LBB3_61
# BB#60:                                # %cond.true.172
	movl	-116(%rbp), %eax
	movl	%eax, -328(%rbp)        # 4-byte Spill
	jmp	.LBB3_65
.LBB3_61:                               # %cond.false.173
	cmpl	$0, -124(%rbp)
	jge	.LBB3_63
# BB#62:                                # %cond.true.176
	xorl	%eax, %eax
	movl	%eax, -332(%rbp)        # 4-byte Spill
	jmp	.LBB3_64
.LBB3_63:                               # %cond.false.177
	movl	-124(%rbp), %eax
	movl	%eax, -332(%rbp)        # 4-byte Spill
.LBB3_64:                               # %cond.end.178
	movl	-332(%rbp), %eax        # 4-byte Reload
	movl	%eax, -328(%rbp)        # 4-byte Spill
.LBB3_65:                               # %cond.end.180
	movl	-328(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)
	cmpl	$0, -120(%rbp)
	jg	.LBB3_67
# BB#66:                                # %lor.lhs.false
	cmpl	$0, -124(%rbp)
	jle	.LBB3_68
.LBB3_67:                               # %if.then.186
	movabsq	$.L.str.65, %rdi
	movl	-120(%rbp), %esi
	movl	-124(%rbp), %edx
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.45, %rdi
	movl	$1, %esi
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -348(%rbp)        # 4-byte Spill
	callq	strlen
	addq	$1, %rax
	movl	%eax, %edx
	movq	-184(%rbp), %rcx
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movl	-348(%rbp), %esi        # 4-byte Reload
	callq	gimp_parasite_new
	movq	%rax, -176(%rbp)
	movq	-184(%rbp), %rdi
	callq	g_free
	movl	-92(%rbp), %edi
	movq	-176(%rbp), %rsi
	callq	gimp_image_attach_parasite
	movq	-176(%rbp), %rdi
	movl	%eax, -352(%rbp)        # 4-byte Spill
	callq	gimp_parasite_free
.LBB3_68:                               # %if.end.194
	movabsq	$load_image.cmap, %rsi
	movl	$2, %edx
	movl	-92(%rbp), %edi
	callq	gimp_image_set_colormap
	movabsq	$.L.str.66, %rdi
	movl	-92(%rbp), %edx
	movl	%eax, -356(%rbp)        # 4-byte Spill
	movl	%edx, -360(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$4, %r8d
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movl	-112(%rbp), %edx
	movl	-116(%rbp), %ecx
	movl	-360(%rbp), %edi        # 4-byte Reload
	movq	%rax, %rsi
	callq	gimp_layer_new
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	%eax, -96(%rbp)
	movl	-92(%rbp), %edi
	movl	-96(%rbp), %esi
	callq	gimp_image_insert_layer
	movl	-96(%rbp), %edi
	movl	%eax, -364(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get
	leaq	-72(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rsi
	movl	-112(%rbp), %r8d
	movl	-116(%rbp), %r9d
	movl	%edx, -368(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	callq	gimp_tile_height
	movl	%eax, -144(%rbp)
	movl	-112(%rbp), %eax
	imull	-144(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc
	movq	%rax, -104(%rbp)
	movl	$0, -132(%rbp)
.LBB3_69:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_74 Depth 2
                                        #       Child Loop BB3_76 Depth 3
	movl	-132(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jge	.LBB3_85
# BB#70:                                # %for.body
                                        #   in Loop: Header=BB3_69 Depth=1
	movl	-144(%rbp), %eax
	movl	-116(%rbp), %ecx
	subl	-132(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB3_72
# BB#71:                                # %cond.true.207
                                        #   in Loop: Header=BB3_69 Depth=1
	movl	-144(%rbp), %eax
	movl	%eax, -372(%rbp)        # 4-byte Spill
	jmp	.LBB3_73
.LBB3_72:                               # %cond.false.208
                                        #   in Loop: Header=BB3_69 Depth=1
	movl	-116(%rbp), %eax
	subl	-132(%rbp), %eax
	movl	%eax, -372(%rbp)        # 4-byte Spill
.LBB3_73:                               # %cond.end.210
                                        #   in Loop: Header=BB3_69 Depth=1
	movl	-372(%rbp), %eax        # 4-byte Reload
	movl	%eax, -144(%rbp)
	movl	$0, -136(%rbp)
.LBB3_74:                               # %for.cond.212
                                        #   Parent Loop BB3_69 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_76 Depth 3
	movl	-136(%rbp), %eax
	cmpl	-144(%rbp), %eax
	jge	.LBB3_83
# BB#75:                                # %for.body.215
                                        #   in Loop: Header=BB3_74 Depth=2
	movl	-136(%rbp), %eax
	imull	-112(%rbp), %eax
	movl	%eax, -148(%rbp)
	movl	$0, -140(%rbp)
.LBB3_76:                               # %for.cond.217
                                        #   Parent Loop BB3_69 Depth=1
                                        #     Parent Loop BB3_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-140(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jge	.LBB3_81
# BB#77:                                # %for.body.220
                                        #   in Loop: Header=BB3_76 Depth=3
	movl	-140(%rbp), %eax
	cltd
	idivl	-108(%rbp)
	cmpl	$0, %edx
	jne	.LBB3_79
# BB#78:                                # %if.then.223
                                        #   in Loop: Header=BB3_76 Depth=3
	movq	-88(%rbp), %rdi
	callq	get_int
	movl	%eax, -128(%rbp)
	movl	-128(%rbp), %eax
	xorl	$65535, %eax            # imm = 0xFFFF
	movl	%eax, -128(%rbp)
.LBB3_79:                               # %if.end.225
                                        #   in Loop: Header=BB3_76 Depth=3
	movl	-128(%rbp), %eax
	andl	$1, %eax
	movb	%al, %cl
	movl	-148(%rbp), %eax
	addl	-140(%rbp), %eax
	movslq	%eax, %rdx
	movq	-104(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-128(%rbp), %eax
	sarl	$1, %eax
	movl	%eax, -128(%rbp)
# BB#80:                                # %for.inc
                                        #   in Loop: Header=BB3_76 Depth=3
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB3_76
.LBB3_81:                               # %for.end
                                        #   in Loop: Header=BB3_74 Depth=2
	jmp	.LBB3_82
.LBB3_82:                               # %for.inc.231
                                        #   in Loop: Header=BB3_74 Depth=2
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB3_74
.LBB3_83:                               # %for.end.233
                                        #   in Loop: Header=BB3_69 Depth=1
	movl	-132(%rbp), %eax
	addl	-144(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-116(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	leaq	-72(%rbp), %rdi
	xorl	%edx, %edx
	movq	-104(%rbp), %rsi
	movl	-132(%rbp), %ecx
	movl	-112(%rbp), %r8d
	movl	-144(%rbp), %r9d
	movl	%eax, -376(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_set_rect
# BB#84:                                # %for.inc.238
                                        #   in Loop: Header=BB3_69 Depth=1
	movl	-144(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB3_69
.LBB3_85:                               # %for.end.240
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-104(%rbp), %rdi
	movl	%eax, -380(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-80(%rbp), %rdi
	callq	gimp_drawable_flush
	movq	-80(%rbp), %rdi
	callq	gimp_drawable_detach
	movq	-88(%rbp), %rdi
	callq	fclose
	movl	-92(%rbp), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -384(%rbp)        # 4-byte Spill
.LBB3_86:                               # %return
	movl	-4(%rbp), %eax
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end3:
	.size	load_image, .Lfunc_end3-load_image
	.cfi_endproc

	.align	16, 0x90
	.type	init_prefix,@function
init_prefix:                            # @init_prefix
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_path_get_basename
	movabsq	$xsvals, %rdi
	addq	$92, %rdi
	xorl	%esi, %esi
	movl	$65, %ecx
	movl	%ecx, %edx
	movq	%rax, -24(%rbp)
	callq	memset
	cmpq	$0, -24(%rbp)
	je	.LBB4_9
# BB#1:                                 # %if.then
	movl	$46, %esi
	movq	-24(%rbp), %rdi
	callq	strrchr
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_7
# BB#2:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB4_7
# BB#3:                                 # %if.then.3
	movl	$64, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	subq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB4_5
# BB#4:                                 # %cond.true
	movl	$64, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB4_6
.LBB4_5:                                # %cond.false
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB4_6:                                # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	jmp	.LBB4_8
.LBB4_7:                                # %if.else
	movl	$64, -28(%rbp)
.LBB4_8:                                # %if.end
	movabsq	$xsvals, %rax
	addq	$92, %rax
	movq	-24(%rbp), %rsi
	movslq	-28(%rbp), %rdx
	movq	%rax, %rdi
	callq	strncpy
	movq	-24(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_free
.LBB4_9:                                # %if.end.10
	movabsq	$xsvals, %rax
	addq	$92, %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	init_prefix, .Lfunc_end4-init_prefix
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_1:
	.quad	4607182418800017408     # double 1
.LCPI5_2:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	save_dialog,@function
save_dialog:                            # @save_dialog
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
	subq	$608, %rsp              # imm = 0x260
	movabsq	$.L.str.43, %rax
	movl	%edi, -4(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movabsq	$.L.str.42, %rsi
	movabsq	$.L.str.35, %rdx
	movq	%rax, %rdi
	callq	gimp_export_dialog_new
	movabsq	$.L.str.68, %rdi
	movq	%rax, -16(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-16(%rbp), %rdi
	callq	gimp_export_dialog_get_content_area
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
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movabsq	$.L.str.69, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	-116(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	xsvals+76, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.70, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$xsvals, %rdi
	addq	$76, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %r10
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-136(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movl	$2, %r9d
	xorl	%edx, %edx
	movl	%r9d, %edi
	movl	%r9d, %esi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
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
	callq	gtk_entry_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$64, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_max_length
	movq	-56(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$xsvals, %rsi
	addq	$92, %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movq	-48(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.71, %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-56(%rbp), %r8
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.72, %rsi
	movabsq	$prefix_entry_callback, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r8
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rcx, %rdx
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movq	-216(%rbp), %r8         # 8-byte Reload
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.73, %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	xsvals+80, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.70, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$xsvals, %rdi
	addq	$80, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %r10
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-256(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movl	$2, %r9d
	xorl	%edx, %edx
	movl	%r9d, %edi
	movl	%r9d, %esi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-32(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -292(%rbp)        # 4-byte Spill
	movl	-292(%rbp), %ecx        # 4-byte Reload
	movl	-292(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.74, %rsi
	movabsq	$.L.str.75, %rcx
	movl	$2, %r8d
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-304(%rbp), %rdx        # 8-byte Reload
	callq	g_object_bind_property
	cvtsi2sdl	xsvals+84, %xmm0
	movl	-4(%rbp), %edi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	callq	gimp_drawable_width
	leaq	-72(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI5_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI5_2, %xmm4         # xmm4 = mem[0],zero
	xorl	%esi, %esi
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm2
	movsd	-320(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -328(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-328(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-328(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-328(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.76, %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r8d, %r8d
	xorps	%xmm0, %xmm0
	movss	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-64(%rbp), %rcx
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movl	%r8d, %esi
	movl	%r8d, %edx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-352(%rbp), %r8         # 8-byte Reload
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.77, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$xsvals, %rdi
	addq	$84, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r10
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rcx, %rdx
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	cvtsi2sdl	xsvals+88, %xmm0
	movl	-4(%rbp), %edi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	movsd	%xmm0, -384(%rbp)       # 8-byte Spill
	callq	gimp_drawable_height
	leaq	-72(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI5_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI5_2, %xmm4         # xmm4 = mem[0],zero
	xorl	%esi, %esi
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm2
	movsd	-384(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -392(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-392(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-392(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-392(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.78, %rdi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %r9d
	xorps	%xmm0, %xmm0
	movss	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-64(%rbp), %r8
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %edx
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.77, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$xsvals, %rdi
	addq	$88, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r10
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rcx, %rdx
	movq	-416(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.79, %rdi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movl	$2, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-24(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.80, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$2, %edx
	movl	$1, %r9d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -476(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-476(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -480(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-480(%rbp), %r8d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-40(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	xsvals+160, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.70, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$xsvals, %rdi
	addq	$160, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %r10
	movq	%rdi, -496(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-496(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gtk_entry_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$32, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_max_length
	movq	-56(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$xsvals, %rcx
	addq	$164, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gtk_entry_set_text
	movq	-48(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.81, %rdi
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %r9d
	xorps	%xmm0, %xmm0
	movss	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-56(%rbp), %r8
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %edx
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.72, %rsi
	movabsq	$mask_ext_entry_callback, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r8
	movq	%rdi, -544(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rcx, %rdx
	movq	-544(%rbp), %rcx        # 8-byte Reload
	movq	-544(%rbp), %r8         # 8-byte Reload
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.74, %rsi
	movabsq	$.L.str.75, %rcx
	movl	$2, %r8d
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -560(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-560(%rbp), %rdx        # 8-byte Reload
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	g_object_bind_property
	movq	-24(%rbp), %rdi
	movl	-4(%rbp), %r8d
	movq	%rdi, -576(%rbp)        # 8-byte Spill
	movl	%r8d, %edi
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gimp_drawable_has_alpha
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gtk_widget_set_sensitive
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rcx
	movq	%rcx, -592(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %eax
	movl	%eax, -76(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-76(%rbp), %eax
	addq	$608, %rsp              # imm = 0x260
	popq	%rbp
	retq
.Lfunc_end5:
	.size	save_dialog, .Lfunc_end5-save_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	save_image,@function
save_image:                             # @save_image
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
	subq	$352, %rsp              # imm = 0x160
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movl	%r9d, -44(%rbp)
	movq	%rax, -56(%rbp)
	movl	-44(%rbp), %edi
	callq	gimp_drawable_get
	leaq	-132(%rbp), %rsi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -124(%rbp)
	movq	-64(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -128(%rbp)
	movl	-40(%rbp), %edi
	callq	gimp_image_get_colormap
	movq	%rax, -208(%rbp)
	movl	-44(%rbp), %edi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB6_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$2, -132(%rbp)
	jle	.LBB6_3
.LBB6_2:                                # %if.then
	movabsq	$.L.str.82, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$0, -4(%rbp)
	jmp	.LBB6_53
.LBB6_3:                                # %if.end
	movl	-44(%rbp), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	jne	.LBB6_6
# BB#4:                                 # %land.lhs.true
	cmpl	$0, -36(%rbp)
	je	.LBB6_6
# BB#5:                                 # %if.then.9
	movabsq	$.L.str.83, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$0, -4(%rbp)
	jmp	.LBB6_53
.LBB6_6:                                # %if.end.11
	movl	-44(%rbp), %edi
	callq	gimp_drawable_bpp
	movl	%eax, -188(%rbp)
	movl	$0, -136(%rbp)
	cmpl	$1, -132(%rbp)
	jle	.LBB6_10
# BB#7:                                 # %if.then.14
	movq	-208(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-208(%rbp), %rax
	movzbl	(%rax), %edx
	imull	%edx, %ecx
	movq	-208(%rbp), %rax
	movzbl	1(%rax), %edx
	movq	-208(%rbp), %rax
	movzbl	1(%rax), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movq	-208(%rbp), %rax
	movzbl	2(%rax), %edx
	movq	-208(%rbp), %rax
	movzbl	2(%rax), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movl	%ecx, -220(%rbp)
	movq	-208(%rbp), %rax
	movzbl	3(%rax), %ecx
	movq	-208(%rbp), %rax
	movzbl	3(%rax), %edx
	imull	%edx, %ecx
	movq	-208(%rbp), %rax
	movzbl	4(%rax), %edx
	movq	-208(%rbp), %rax
	movzbl	4(%rax), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movq	-208(%rbp), %rax
	movzbl	5(%rax), %edx
	movq	-208(%rbp), %rax
	movzbl	5(%rax), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movl	%ecx, -224(%rbp)
	movl	-224(%rbp), %ecx
	cmpl	-220(%rbp), %ecx
	jge	.LBB6_9
# BB#8:                                 # %if.then.47
	movl	$1, -136(%rbp)
.LBB6_9:                                # %if.end.48
	jmp	.LBB6_10
.LBB6_10:                               # %if.end.49
	movabsq	$.L.str.84, %rsi
	movq	-16(%rbp), %rdi
	callq	fopen
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB6_12
# BB#11:                                # %if.then.52
	movq	-56(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -236(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.85, %rdi
	movl	%eax, -240(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movl	-236(%rbp), %esi        # 4-byte Reload
	movl	-240(%rbp), %edx        # 4-byte Reload
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movq	-256(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB6_53
.LBB6_12:                               # %if.end.60
	movabsq	$.L.str.86, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	movabsq	$.L.str.87, %rsi
	movq	-120(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	-124(%rbp), %ecx
	movl	%eax, -268(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.88, %rsi
	movq	-120(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	-128(%rbp), %ecx
	movl	%eax, -272(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	cmpl	$0, xsvals+80
	movl	%eax, -276(%rbp)        # 4-byte Spill
	je	.LBB6_14
# BB#13:                                # %if.then.67
	movabsq	$.L.str.89, %rsi
	movq	-120(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	xsvals+84, %ecx
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.90, %rsi
	movq	-120(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movl	xsvals+88, %ecx
	movl	%eax, -280(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	%eax, -284(%rbp)        # 4-byte Spill
.LBB6_14:                               # %if.end.70
	cmpl	$0, xsvals+76
	je	.LBB6_16
# BB#15:                                # %if.then.72
	movabsq	$.L.str.91, %rax
	movl	$9, -144(%rbp)
	movl	$16, -140(%rbp)
	movq	%rax, -216(%rbp)
	jmp	.LBB6_17
.LBB6_16:                               # %if.else
	movabsq	$.L.str.92, %rax
	movl	$12, -144(%rbp)
	movl	$8, -140(%rbp)
	movq	%rax, -216(%rbp)
.LBB6_17:                               # %if.end.73
	movabsq	$.L.str.93, %rsi
	movabsq	$.L.str.95, %rax
	movabsq	$.L.str.94, %rcx
	movq	-120(%rbp), %rdi
	cmpl	$0, xsvals+76
	cmovneq	%rcx, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -288(%rbp)        # 4-byte Spill
	callq	gimp_tile_height
	movl	%eax, -160(%rbp)
	movl	-124(%rbp), %eax
	imull	-160(%rbp), %eax
	imull	-188(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc
	leaq	-112(%rbp), %rdi
	xorl	%r8d, %r8d
	movq	%rax, -200(%rbp)
	movq	-64(%rbp), %rsi
	movl	-124(%rbp), %r9d
	movl	-128(%rbp), %r10d
	movl	%r8d, %edx
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$0, -148(%rbp)
	movl	$0, -152(%rbp)
	movl	$0, -168(%rbp)
.LBB6_18:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_23 Depth 2
                                        #       Child Loop BB6_25 Depth 3
	movl	-168(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jge	.LBB6_52
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB6_18 Depth=1
	movl	-160(%rbp), %eax
	movl	-128(%rbp), %ecx
	subl	-168(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_21
# BB#20:                                # %cond.true
                                        #   in Loop: Header=BB6_18 Depth=1
	movl	-160(%rbp), %eax
	movl	%eax, -292(%rbp)        # 4-byte Spill
	jmp	.LBB6_22
.LBB6_21:                               # %cond.false
                                        #   in Loop: Header=BB6_18 Depth=1
	movl	-128(%rbp), %eax
	subl	-168(%rbp), %eax
	movl	%eax, -292(%rbp)        # 4-byte Spill
.LBB6_22:                               # %cond.end
                                        #   in Loop: Header=BB6_18 Depth=1
	movl	-292(%rbp), %eax        # 4-byte Reload
	leaq	-112(%rbp), %rdi
	xorl	%edx, %edx
	movl	%eax, -160(%rbp)
	movq	-200(%rbp), %rsi
	movl	-168(%rbp), %ecx
	movl	-124(%rbp), %r8d
	movl	-160(%rbp), %r9d
	callq	gimp_pixel_rgn_get_rect
	movl	$0, -172(%rbp)
.LBB6_23:                               # %for.cond.87
                                        #   Parent Loop BB6_18 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_25 Depth 3
	movl	-172(%rbp), %eax
	cmpl	-160(%rbp), %eax
	jge	.LBB6_50
# BB#24:                                # %for.body.90
                                        #   in Loop: Header=BB6_23 Depth=2
	movl	-172(%rbp), %eax
	imull	-124(%rbp), %eax
	imull	-188(%rbp), %eax
	movl	%eax, -156(%rbp)
	movl	$0, -164(%rbp)
	movl	$0, -180(%rbp)
	movl	$0, -176(%rbp)
.LBB6_25:                               # %for.cond.93
                                        #   Parent Loop BB6_18 Depth=1
                                        #     Parent Loop BB6_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-176(%rbp), %eax
	movl	-124(%rbp), %ecx
	imull	-188(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_42
# BB#26:                                # %for.body.97
                                        #   in Loop: Header=BB6_25 Depth=3
	cmpl	$0, -176(%rbp)
	je	.LBB6_33
# BB#27:                                # %land.lhs.true.100
                                        #   in Loop: Header=BB6_25 Depth=3
	movl	-180(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jne	.LBB6_33
# BB#28:                                # %if.then.103
                                        #   in Loop: Header=BB6_25 Depth=3
	cmpl	$0, -148(%rbp)
	je	.LBB6_30
# BB#29:                                # %if.then.105
                                        #   in Loop: Header=BB6_25 Depth=3
	movl	$44, %edi
	movq	-120(%rbp), %rsi
	callq	fputc
	movl	%eax, -296(%rbp)        # 4-byte Spill
.LBB6_30:                               # %if.end.107
                                        #   in Loop: Header=BB6_25 Depth=3
	movl	$1, -148(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -152(%rbp)
	cmpl	-144(%rbp), %eax
	jl	.LBB6_32
# BB#31:                                # %if.then.110
                                        #   in Loop: Header=BB6_25 Depth=3
	movabsq	$.L.str.96, %rdi
	movl	$1, -152(%rbp)
	movq	-120(%rbp), %rsi
	callq	fputs
	movl	%eax, -300(%rbp)        # 4-byte Spill
.LBB6_32:                               # %if.end.112
                                        #   in Loop: Header=BB6_25 Depth=3
	movq	-120(%rbp), %rdi
	movq	-216(%rbp), %rsi
	movl	-164(%rbp), %edx
	movb	$0, %al
	callq	fprintf
	movl	$0, -164(%rbp)
	movl	$0, -180(%rbp)
	movl	%eax, -304(%rbp)        # 4-byte Spill
.LBB6_33:                               # %if.end.114
                                        #   in Loop: Header=BB6_25 Depth=3
	cmpl	$0, -36(%rbp)
	je	.LBB6_35
# BB#34:                                # %if.then.116
                                        #   in Loop: Header=BB6_25 Depth=3
	movl	$1, %eax
	xorl	%ecx, %ecx
	movl	-156(%rbp), %edx
	addl	-176(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rsi
	movq	-200(%rbp), %rdi
	movzbl	(%rdi,%rsi), %edx
	cmpl	$128, %edx
	cmovll	%ecx, %eax
	movl	-180(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -180(%rbp)
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	orl	-164(%rbp), %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB6_40
.LBB6_35:                               # %if.else.125
                                        #   in Loop: Header=BB6_25 Depth=3
	cmpl	$0, -184(%rbp)
	je	.LBB6_38
# BB#36:                                # %land.lhs.true.127
                                        #   in Loop: Header=BB6_25 Depth=3
	movl	-156(%rbp), %eax
	addl	-176(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-200(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$128, %eax
	jge	.LBB6_38
# BB#37:                                # %if.then.135
                                        #   in Loop: Header=BB6_25 Depth=3
	xorl	%eax, %eax
	movl	-180(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -180(%rbp)
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	orl	-164(%rbp), %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB6_39
.LBB6_38:                               # %if.else.139
                                        #   in Loop: Header=BB6_25 Depth=3
	xorl	%eax, %eax
	movl	$1, %ecx
	movl	-156(%rbp), %edx
	addl	-176(%rbp), %edx
	movslq	%edx, %rsi
	movq	-200(%rbp), %rdi
	movzbl	(%rdi,%rsi), %edx
	cmpl	-136(%rbp), %edx
	cmovel	%ecx, %eax
	movl	-180(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -180(%rbp)
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	orl	-164(%rbp), %eax
	movl	%eax, -164(%rbp)
.LBB6_39:                               # %if.end.150
                                        #   in Loop: Header=BB6_25 Depth=3
	jmp	.LBB6_40
.LBB6_40:                               # %if.end.151
                                        #   in Loop: Header=BB6_25 Depth=3
	jmp	.LBB6_41
.LBB6_41:                               # %for.inc
                                        #   in Loop: Header=BB6_25 Depth=3
	movl	-188(%rbp), %eax
	addl	-176(%rbp), %eax
	movl	%eax, -176(%rbp)
	jmp	.LBB6_25
.LBB6_42:                               # %for.end
                                        #   in Loop: Header=BB6_23 Depth=2
	cmpl	$0, -180(%rbp)
	je	.LBB6_48
# BB#43:                                # %if.then.155
                                        #   in Loop: Header=BB6_23 Depth=2
	cmpl	$0, -148(%rbp)
	je	.LBB6_45
# BB#44:                                # %if.then.157
                                        #   in Loop: Header=BB6_23 Depth=2
	movl	$44, %edi
	movq	-120(%rbp), %rsi
	callq	fputc
	movl	%eax, -308(%rbp)        # 4-byte Spill
.LBB6_45:                               # %if.end.159
                                        #   in Loop: Header=BB6_23 Depth=2
	movl	$1, -148(%rbp)
	movl	-152(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -152(%rbp)
	cmpl	-144(%rbp), %eax
	jne	.LBB6_47
# BB#46:                                # %if.then.163
                                        #   in Loop: Header=BB6_23 Depth=2
	movabsq	$.L.str.96, %rdi
	movl	$1, -152(%rbp)
	movq	-120(%rbp), %rsi
	callq	fputs
	movl	%eax, -312(%rbp)        # 4-byte Spill
.LBB6_47:                               # %if.end.165
                                        #   in Loop: Header=BB6_23 Depth=2
	movq	-120(%rbp), %rdi
	movq	-216(%rbp), %rsi
	movl	-164(%rbp), %edx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -316(%rbp)        # 4-byte Spill
.LBB6_48:                               # %if.end.167
                                        #   in Loop: Header=BB6_23 Depth=2
	jmp	.LBB6_49
.LBB6_49:                               # %for.inc.168
                                        #   in Loop: Header=BB6_23 Depth=2
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -172(%rbp)
	jmp	.LBB6_23
.LBB6_50:                               # %for.end.170
                                        #   in Loop: Header=BB6_18 Depth=1
	movl	-168(%rbp), %eax
	addl	-160(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-128(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -320(%rbp)        # 4-byte Spill
# BB#51:                                # %for.inc.175
                                        #   in Loop: Header=BB6_18 Depth=1
	movl	-160(%rbp), %eax
	addl	-168(%rbp), %eax
	movl	%eax, -168(%rbp)
	jmp	.LBB6_18
.LBB6_52:                               # %for.end.177
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movabsq	$.L.str.97, %rsi
	movq	-120(%rbp), %rdi
	movl	%eax, -324(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movq	-120(%rbp), %rdi
	movl	%eax, -328(%rbp)        # 4-byte Spill
	callq	fclose
	movl	$1, -4(%rbp)
	movl	%eax, -332(%rbp)        # 4-byte Spill
.LBB6_53:                               # %return
	movl	-4(%rbp), %eax
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end6:
	.size	save_image, .Lfunc_end6-save_image
	.cfi_endproc

	.align	16, 0x90
	.type	fgetcomment,@function
fgetcomment:                            # @fgetcomment
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB7_1:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	fgetc
	movl	%eax, -32(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB7_10
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpl	$42, -32(%rbp)
	jne	.LBB7_4
# BB#3:                                 # %if.then.1
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$1, -28(%rbp)
	jmp	.LBB7_9
.LBB7_4:                                # %if.else
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpl	$1, -28(%rbp)
	jne	.LBB7_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpl	$47, -32(%rbp)
	jne	.LBB7_7
# BB#6:                                 # %if.then.4
	movl	$0, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_strdup
	movq	%rax, %rdi
	callq	g_strchug
	movq	%rax, %rdi
	callq	g_strchomp
	movl	$1, %esi
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_string_free
	movq	-40(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB7_27
.LBB7_7:                                # %if.else.11
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$2, -28(%rbp)
	movq	-24(%rbp), %rdi
	movl	-32(%rbp), %eax
	movb	%al, %cl
	movsbl	%cl, %esi
	callq	g_string_append_c_inline
	movq	%rax, -56(%rbp)         # 8-byte Spill
# BB#8:                                 # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_9
.LBB7_9:                                # %if.end.13
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_20
.LBB7_10:                               # %if.else.14
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpl	$47, -32(%rbp)
	jne	.LBB7_15
# BB#11:                                # %if.then.17
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	fgetc
	movl	%eax, -32(%rbp)
	cmpl	$42, -32(%rbp)
	jne	.LBB7_13
# BB#12:                                # %if.then.21
                                        #   in Loop: Header=BB7_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$2, -28(%rbp)
	callq	g_string_new
	movq	%rax, -24(%rbp)
	jmp	.LBB7_14
.LBB7_13:                               # %if.else.23
	movl	-32(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	ungetc
	movl	$47, -32(%rbp)
	movl	-32(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	ungetc
	movq	$0, -8(%rbp)
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB7_27
.LBB7_14:                               # %if.end.26
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_19
.LBB7_15:                               # %if.else.27
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpl	$-1, -32(%rbp)
	je	.LBB7_18
# BB#16:                                # %land.lhs.true.30
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-32(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, %edx
	movq	g_ascii_table, %rsi
	movzwl	(%rsi,%rdx,2), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	je	.LBB7_18
# BB#17:                                # %if.then.35
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_21
.LBB7_18:                               # %if.end.36
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_19
.LBB7_19:                               # %if.end.37
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_20
.LBB7_20:                               # %if.end.38
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_21
.LBB7_21:                               # %do.cond
                                        #   in Loop: Header=BB7_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -28(%rbp)
	movb	%cl, -65(%rbp)          # 1-byte Spill
	je	.LBB7_23
# BB#22:                                # %land.rhs
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpl	$-1, -32(%rbp)
	setne	%al
	movb	%al, -65(%rbp)          # 1-byte Spill
.LBB7_23:                               # %land.end
                                        #   in Loop: Header=BB7_1 Depth=1
	movb	-65(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB7_1
# BB#24:                                # %do.end
	cmpq	$0, -24(%rbp)
	je	.LBB7_26
# BB#25:                                # %if.then.43
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	callq	g_string_free
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB7_26:                               # %if.end.45
	movq	$0, -8(%rbp)
.LBB7_27:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	fgetcomment, .Lfunc_end7-fgetcomment
	.cfi_endproc

	.align	16, 0x90
	.type	match,@function
match:                                  # @match
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
.LBB8_1:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	fgetc
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdi
	movsbl	(%rdi), %ecx
	cmpl	%ecx, %eax
	jne	.LBB8_3
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	jmp	.LBB8_8
.LBB8_4:                                # %if.end
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_5
.LBB8_5:                                # %do.cond
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$-1, -28(%rbp)
	movb	%cl, -29(%rbp)          # 1-byte Spill
	je	.LBB8_7
# BB#6:                                 # %land.rhs
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	setne	%dl
	movb	%dl, -29(%rbp)          # 1-byte Spill
.LBB8_7:                                # %land.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movb	-29(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_1
.LBB8_8:                                # %do.end
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB8_10
# BB#9:                                 # %if.then.6
	movl	$1, -4(%rbp)
	jmp	.LBB8_13
.LBB8_10:                               # %if.end.7
	cmpl	$-1, -28(%rbp)
	je	.LBB8_12
# BB#11:                                # %if.then.10
	movl	-28(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	ungetc
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB8_12:                               # %if.end.12
	movl	$0, -4(%rbp)
.LBB8_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	match, .Lfunc_end8-match
	.cfi_endproc

	.align	16, 0x90
	.type	get_int,@function
get_int:                                # @get_int
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
.LBB9_1:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	cpp_fgetc
	movl	%eax, -32(%rbp)
# BB#2:                                 # %do.cond
                                        #   in Loop: Header=BB9_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$-1, -32(%rbp)
	movb	%cl, -33(%rbp)          # 1-byte Spill
	je	.LBB9_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-32(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, %edx
	movq	g_ascii_table, %rsi
	movzwl	(%rsi,%rdx,2), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -33(%rbp)          # 1-byte Spill
.LBB9_4:                                # %land.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movb	-33(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB9_1
# BB#5:                                 # %do.end
	cmpl	$-1, -32(%rbp)
	jne	.LBB9_7
# BB#6:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB9_22
.LBB9_7:                                # %if.end
	cmpl	$48, -32(%rbp)
	jne	.LBB9_16
# BB#8:                                 # %if.then.8
	movq	-16(%rbp), %rdi
	callq	fgetc
	movl	%eax, -32(%rbp)
	cmpl	$120, -32(%rbp)
	je	.LBB9_10
# BB#9:                                 # %lor.lhs.false
	cmpl	$88, -32(%rbp)
	jne	.LBB9_11
.LBB9_10:                               # %if.then.14
	movq	-16(%rbp), %rdi
	callq	fgetc
	movl	%eax, -32(%rbp)
	movl	$16, -24(%rbp)
	jmp	.LBB9_15
.LBB9_11:                               # %if.else
	movl	-32(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, %edx
	movq	g_ascii_table, %rsi
	movzwl	(%rsi,%rdx,2), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB9_13
# BB#12:                                # %if.then.23
	movl	$8, -24(%rbp)
	jmp	.LBB9_14
.LBB9_13:                               # %if.else.24
	movl	-32(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	ungetc
	movl	$0, -4(%rbp)
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB9_22
.LBB9_14:                               # %if.end.26
	jmp	.LBB9_15
.LBB9_15:                               # %if.end.27
	jmp	.LBB9_17
.LBB9_16:                               # %if.else.28
	movl	$10, -24(%rbp)
.LBB9_17:                               # %if.end.29
	movl	$0, -28(%rbp)
.LBB9_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %edi
	movl	-24(%rbp), %esi
	callq	getval
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	.LBB9_20
# BB#19:                                # %if.then.33
	movl	-32(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	ungetc
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB9_21
.LBB9_20:                               # %if.end.35
                                        #   in Loop: Header=BB9_18 Depth=1
	movl	-24(%rbp), %eax
	imull	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	fgetc
	movl	%eax, -32(%rbp)
	jmp	.LBB9_18
.LBB9_21:                               # %for.end
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB9_22:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	get_int, .Lfunc_end9-get_int
	.cfi_endproc

	.align	16, 0x90
	.type	cpp_fgetc,@function
cpp_fgetc:                              # @cpp_fgetc
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB10_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	callq	fgetc
	movl	%eax, -16(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB10_10
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpl	$42, -16(%rbp)
	jne	.LBB10_4
# BB#3:                                 # %if.then.1
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$1, -12(%rbp)
	jmp	.LBB10_9
.LBB10_4:                               # %if.else
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpl	$1, -12(%rbp)
	jne	.LBB10_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpl	$47, -16(%rbp)
	jne	.LBB10_7
# BB#6:                                 # %if.then.4
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$0, -12(%rbp)
	jmp	.LBB10_8
.LBB10_7:                               # %if.else.5
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$2, -12(%rbp)
.LBB10_8:                               # %if.end
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_9
.LBB10_9:                               # %if.end.6
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_16
.LBB10_10:                              # %if.else.7
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpl	$47, -16(%rbp)
	jne	.LBB10_15
# BB#11:                                # %if.then.9
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	fgetc
	movl	%eax, -16(%rbp)
	cmpl	$42, -16(%rbp)
	jne	.LBB10_13
# BB#12:                                # %if.then.12
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$2, -12(%rbp)
	jmp	.LBB10_14
.LBB10_13:                              # %if.else.13
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-16(%rbp), %edi
	movq	-8(%rbp), %rsi
	callq	ungetc
	movl	$47, -16(%rbp)
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB10_14:                              # %if.end.15
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_15
.LBB10_15:                              # %if.end.16
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_16
.LBB10_16:                              # %if.end.17
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_17
.LBB10_17:                              # %do.cond
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -12(%rbp)
	movb	%cl, -21(%rbp)          # 1-byte Spill
	je	.LBB10_19
# BB#18:                                # %land.rhs
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpl	$-1, -16(%rbp)
	setne	%al
	movb	%al, -21(%rbp)          # 1-byte Spill
.LBB10_19:                              # %land.end
                                        #   in Loop: Header=BB10_1 Depth=1
	movb	-21(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB10_1
# BB#20:                                # %do.end
	movl	-16(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	cpp_fgetc, .Lfunc_end10-cpp_fgetc
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	.type	g_string_append_c_inline,@function
g_string_append_c_inline:               # @g_string_append_c_inline
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
	subq	$32, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	addq	$1, %rdi
	movq	-8(%rbp), %rcx
	cmpq	16(%rcx), %rdi
	jae	.LBB12_2
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
	jmp	.LBB12_3
.LBB12_2:                               # %if.else
	movq	$-1, %rsi
	movq	-8(%rbp), %rdi
	movsbl	-9(%rbp), %edx
	callq	g_string_insert_c
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB12_3:                               # %if.end
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	g_string_append_c_inline, .Lfunc_end12-g_string_append_c_inline
	.cfi_endproc

	.align	16, 0x90
	.type	getval,@function
getval:                                 # @getval
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
	movabsq	$.L.str.67, %rax
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rax, -24(%rbp)
	cmpl	$16, -12(%rbp)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movl	$22, -12(%rbp)
.LBB13_2:                               # %if.end
	movl	$0, -28(%rbp)
.LBB13_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB13_11
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB13_3 Depth=1
	movl	-8(%rbp), %eax
	movslq	-28(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movsbl	(%rdx,%rcx), %esi
	cmpl	%esi, %eax
	jne	.LBB13_9
# BB#5:                                 # %if.then.4
	cmpl	$16, -28(%rbp)
	jge	.LBB13_7
# BB#6:                                 # %cond.true
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jmp	.LBB13_8
.LBB13_7:                               # %cond.false
	movl	-28(%rbp), %eax
	subl	$6, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB13_8:                               # %cond.end
	movl	-32(%rbp), %eax         # 4-byte Reload
	movl	%eax, -4(%rbp)
	jmp	.LBB13_12
.LBB13_9:                               # %if.end.7
                                        #   in Loop: Header=BB13_3 Depth=1
	jmp	.LBB13_10
.LBB13_10:                              # %for.inc
                                        #   in Loop: Header=BB13_3 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB13_3
.LBB13_11:                              # %for.end
	movl	$-1, -4(%rbp)
.LBB13_12:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end13:
	.size	getval, .Lfunc_end13-getval
	.cfi_endproc

	.align	16, 0x90
	.type	prefix_entry_callback,@function
prefix_entry_callback:                  # @prefix_entry_callback
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
	subq	$48, %rsp
	movabsq	$xsvals, %rax
	addq	$92, %rax
	xorl	%ecx, %ecx
	movl	$65, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	memset
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movabsq	$xsvals, %rdx
	addq	$92, %rdx
	movl	$64, %ecx
	movl	%ecx, %esi
	movq	%rdx, %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	callq	strncpy
	movq	%rax, -40(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	prefix_entry_callback, .Lfunc_end14-prefix_entry_callback
	.cfi_endproc

	.align	16, 0x90
	.type	mask_ext_entry_callback,@function
mask_ext_entry_callback:                # @mask_ext_entry_callback
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
	subq	$48, %rsp
	movabsq	$xsvals, %rax
	addq	$164, %rax
	xorl	%ecx, %ecx
	movl	$33, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	memset
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movabsq	$xsvals, %rdx
	addq	$164, %rdx
	movl	$32, %ecx
	movl	%ecx, %esi
	movq	%rdx, %rdi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	callq	strncpy
	movq	%rax, -40(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	mask_ext_entry_callback, .Lfunc_end15-mask_ext_entry_callback
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

	.type	query.load_args,@object # @query.load_args
	.align	16
query.load_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.5
	.size	query.load_args, 72

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
	.asciz	"filename"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"The name of the file to load"
	.size	.L.str.3, 29

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"raw-filename"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"The name entered"
	.size	.L.str.5, 17

	.type	query.load_return_vals,@object # @query.load_return_vals
	.section	.rodata,"a",@progbits
	.align	16
query.load_return_vals:
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.size	query.load_return_vals, 24

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"image"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Output image"
	.size	.L.str.7, 13

	.type	query.save_args,@object # @query.save_args
	.section	.rodata,"a",@progbits
	.align	16
query.save_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.8
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.9
	.quad	.L.str.10
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.11
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.5
	.long	4                       # 0x4
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
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.18
	.quad	.L.str.19
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.20
	.quad	.L.str.21
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.22
	.quad	.L.str.23
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.24
	.quad	.L.str.25
	.size	query.save_args, 288

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"Input image"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"drawable"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Drawable to save"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"The name of the file to save"
	.size	.L.str.11, 29

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"comment"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Image description (maximum 72 bytes)"
	.size	.L.str.13, 37

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"x10"
	.size	.L.str.14, 4

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Save in X10 format"
	.size	.L.str.15, 19

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"x-hot"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"X coordinate of hotspot"
	.size	.L.str.17, 24

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"y-hot"
	.size	.L.str.18, 6

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Y coordinate of hotspot"
	.size	.L.str.19, 24

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"prefix"
	.size	.L.str.20, 7

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Identifier prefix [determined from filename]"
	.size	.L.str.21, 45

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"write-mask"
	.size	.L.str.22, 11

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"(0 = ignore, 1 = save as extra file)"
	.size	.L.str.23, 37

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"mask-extension"
	.size	.L.str.24, 15

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Extension of the mask file"
	.size	.L.str.25, 27

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"file-xbm-load"
	.size	.L.str.26, 14

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Load a file in X10 or X11 bitmap (XBM) file format"
	.size	.L.str.27, 51

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Load a file in X10 or X11 bitmap (XBM) file format.  XBM is a lossless format for flat black-and-white (two color indexed) images."
	.size	.L.str.28, 131

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Gordon Matzigkeit"
	.size	.L.str.29, 18

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"1998"
	.size	.L.str.30, 5

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"X BitMap image"
	.size	.L.str.31, 15

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"image/x-xbitmap"
	.size	.L.str.32, 16

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"xbm,icon,bitmap"
	.size	.L.str.33, 16

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.zero	1
	.size	.L.str.34, 1

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"file-xbm-save"
	.size	.L.str.35, 14

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Save a file in X10 or X11 bitmap (XBM) file format"
	.size	.L.str.36, 51

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Save a file in X10 or X11 bitmap (XBM) file format.  XBM is a lossless format for flat black-and-white (two color indexed) images."
	.size	.L.str.37, 131

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"INDEXED"
	.size	.L.str.38, 8

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.39, 20

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"UTF-8"
	.size	.L.str.40, 6

	.type	xsvals,@object          # @xsvals
	.data
	.align	4
xsvals:
	.asciz	"###\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.asciz	"bitmap\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	3
	.long	0                       # 0x0
	.asciz	"-mask\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.zero	3
	.size	xsvals, 200

	.type	.L.str.41,@object       # @.str.41
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.41:
	.asciz	"Created with GIMP"
	.size	.L.str.41, 18

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"file-xbm"
	.size	.L.str.42, 9

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"XBM"
	.size	.L.str.43, 4

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"gimp-comment"
	.size	.L.str.44, 13

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"hot-spot"
	.size	.L.str.45, 9

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"%i %i"
	.size	.L.str.46, 6

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"%s/%s%s.xbm"
	.size	.L.str.47, 12

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"%s%s.xbm"
	.size	.L.str.48, 9

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"%s%s"
	.size	.L.str.49, 5

	.type	load_image.cmap,@object # @load_image.cmap
	.section	.rodata,"a",@progbits
load_image.cmap:
	.ascii	"\000\000\000\377\377\377"
	.size	load_image.cmap, 6

	.type	.L.str.50,@object       # @.str.50
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.50:
	.asciz	"rb"
	.size	.L.str.50, 3

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
	.asciz	"char"
	.size	.L.str.53, 5

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"short"
	.size	.L.str.54, 6

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"width"
	.size	.L.str.55, 6

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"height"
	.size	.L.str.56, 7

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"x_hot"
	.size	.L.str.57, 6

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"y_hot"
	.size	.L.str.58, 6

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"'%s':\nCould not read header (ftell == %ld)"
	.size	.L.str.59, 43

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"'%s':\nNo image width specified"
	.size	.L.str.60, 31

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"'%s':\nImage width is larger than GIMP can handle"
	.size	.L.str.61, 49

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"'%s':\nNo image height specified"
	.size	.L.str.62, 32

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"'%s':\nImage height is larger than GIMP can handle"
	.size	.L.str.63, 50

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"'%s':\nNo image data type specified"
	.size	.L.str.64, 35

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"%d %d"
	.size	.L.str.65, 6

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Background"
	.size	.L.str.66, 11

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"0123456789abcdefABCDEF"
	.size	.L.str.67, 23

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"XBM Options"
	.size	.L.str.68, 12

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"_X10 format bitmap"
	.size	.L.str.69, 19

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"toggled"
	.size	.L.str.70, 8

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"_Identifier prefix:"
	.size	.L.str.71, 20

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"changed"
	.size	.L.str.72, 8

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"_Write hot spot values"
	.size	.L.str.73, 23

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"active"
	.size	.L.str.74, 7

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"sensitive"
	.size	.L.str.75, 10

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Hot spot _X:"
	.size	.L.str.76, 13

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"value-changed"
	.size	.L.str.77, 14

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Hot spot _Y:"
	.size	.L.str.78, 13

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"Mask File"
	.size	.L.str.79, 10

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"W_rite extra mask file"
	.size	.L.str.80, 23

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"_Mask file extension:"
	.size	.L.str.81, 22

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"The image which you are trying to save as an XBM contains more than two colors.\n\nPlease convert it to a black and white (1-bit) indexed image and try again."
	.size	.L.str.82, 157

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"You cannot save a cursor mask for an image\nwhich has no alpha channel."
	.size	.L.str.83, 71

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"w"
	.size	.L.str.84, 2

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.85, 36

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Saving '%s'"
	.size	.L.str.86, 12

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"#define %s_width %d\n"
	.size	.L.str.87, 21

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"#define %s_height %d\n"
	.size	.L.str.88, 22

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"#define %s_x_hot %d\n"
	.size	.L.str.89, 21

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"#define %s_y_hot %d\n"
	.size	.L.str.90, 21

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	" 0x%04x"
	.size	.L.str.91, 8

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	" 0x%02x"
	.size	.L.str.92, 8

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"static %s %s_bits[] = {\n  "
	.size	.L.str.93, 27

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"unsigned short"
	.size	.L.str.94, 15

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"unsigned char"
	.size	.L.str.95, 14

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"\n  "
	.size	.L.str.96, 4

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	" };\n"
	.size	.L.str.97, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
