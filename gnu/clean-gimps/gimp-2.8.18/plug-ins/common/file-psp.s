	.text
	.file	"file-psp.bc"
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
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %rsi
	movabsq	$.L.str.9, %rdx
	movabsq	$.L.str.10, %rax
	movabsq	$.L.str.11, %r9
	movabsq	$.L.str.12, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movl	$1, %r8d
	movl	$3, %r11d
	movabsq	$query.load_args, %rbx
	movabsq	$query.load_return_vals, %r14
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movl	%r8d, -28(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	%r14, 48(%rsp)
	movq	%r10, -40(%rbp)         # 8-byte Spill
	movl	%r11d, -44(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.13, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.14, %rsi
	movabsq	$.L.str.15, %rdx
	movabsq	$.L.str.16, %rcx
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	gimp_register_magic_load_handler
	movl	%eax, -52(%rbp)         # 4-byte Spill
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
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
.Ltmp5:
	.cfi_def_cfa_offset 16
.Ltmp6:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp7:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -48(%rbp)
	movl	$0, -60(%rbp)
	movq	$0, -72(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.17, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.18, %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.17, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -96(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %edx
	movl	%edx, -44(%rbp)
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	$0, run.values+8
	movq	-8(%rbp), %rdi
	movl	$.L.str.7, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_7
# BB#3:                                 # %if.then
	leaq	-72(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	load_image
	movl	%eax, -52(%rbp)
	cmpl	$-1, -52(%rbp)
	je	.LBB1_5
# BB#4:                                 # %if.then.9
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$13, run.values+40
	movl	-52(%rbp), %ecx
	movl	%ecx, run.values+48
	jmp	.LBB1_6
.LBB1_5:                                # %if.else
	movl	$0, -48(%rbp)
.LBB1_6:                                # %if.end
	jmp	.LBB1_36
.LBB1_7:                                # %if.else.10
	movq	-8(%rbp), %rdi
	movl	$.L.str.19, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_34
# BB#8:                                 # %if.then.13
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movl	-44(%rbp), %ecx
	orl	$2, %ecx
	subl	$2, %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	je	.LBB1_9
	jmp	.LBB1_12
.LBB1_9:                                # %sw.bb
	movabsq	$.L.str.20, %rdi
	xorl	%esi, %esi
	callq	gimp_ui_init
	leaq	-52(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	movabsq	$.L.str.21, %rdx
	movl	$55, %ecx
	callq	gimp_export_image
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.LBB1_11
# BB#10:                                # %if.then.22
	movl	$4, run.values+8
	jmp	.LBB1_40
.LBB1_11:                               # %if.end.23
	jmp	.LBB1_13
.LBB1_12:                               # %sw.default
	jmp	.LBB1_13
.LBB1_13:                               # %sw.epilog
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB1_14
	jmp	.LBB1_41
.LBB1_41:                               # %sw.epilog
	movl	-104(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB1_17
	jmp	.LBB1_42
.LBB1_42:                               # %sw.epilog
	movl	-104(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB1_24
	jmp	.LBB1_25
.LBB1_14:                               # %sw.bb.24
	movabsq	$.L.str.19, %rdi
	movabsq	$psvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	save_dialog
	cmpl	$0, %eax
	jne	.LBB1_16
# BB#15:                                # %if.then.27
	movl	$4, -48(%rbp)
.LBB1_16:                               # %if.end.28
	jmp	.LBB1_26
.LBB1_17:                               # %sw.bb.29
	cmpl	$6, -12(%rbp)
	je	.LBB1_19
# BB#18:                                # %if.then.31
	movl	$1, -48(%rbp)
	jmp	.LBB1_23
.LBB1_19:                               # %if.else.32
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-24(%rbp), %rdx
	cmpl	$0, 208(%rdx)
	cmovnel	%ecx, %eax
	movl	%eax, psvals
	movq	-24(%rbp), %rdx
	cmpl	$0, 208(%rdx)
	jl	.LBB1_21
# BB#20:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpl	$2, 208(%rax)
	jle	.LBB1_22
.LBB1_21:                               # %if.then.45
	movl	$1, -48(%rbp)
.LBB1_22:                               # %if.end.46
	jmp	.LBB1_23
.LBB1_23:                               # %if.end.47
	jmp	.LBB1_24
.LBB1_24:                               # %sw.bb.48
	movabsq	$.L.str.19, %rdi
	movabsq	$psvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB1_26
.LBB1_25:                               # %sw.default.50
	jmp	.LBB1_26
.LBB1_26:                               # %sw.epilog.51
	cmpl	$3, -48(%rbp)
	jne	.LBB1_31
# BB#27:                                # %if.then.53
	leaq	-72(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	callq	save_image
	cmpl	$0, %eax
	je	.LBB1_29
# BB#28:                                # %if.then.59
	movabsq	$.L.str.19, %rdi
	movabsq	$psvals, %rax
	movl	$4, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB1_30
.LBB1_29:                               # %if.else.61
	movl	$0, -48(%rbp)
.LBB1_30:                               # %if.end.62
	jmp	.LBB1_31
.LBB1_31:                               # %if.end.63
	cmpl	$2, -60(%rbp)
	jne	.LBB1_33
# BB#32:                                # %if.then.65
	movl	-52(%rbp), %edi
	callq	gimp_image_delete
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB1_33:                               # %if.end.67
	jmp	.LBB1_35
.LBB1_34:                               # %if.else.68
	movl	$1, -48(%rbp)
.LBB1_35:                               # %if.end.69
	jmp	.LBB1_36
.LBB1_36:                               # %if.end.70
	cmpl	$3, -48(%rbp)
	je	.LBB1_39
# BB#37:                                # %land.lhs.true
	cmpq	$0, -72(%rbp)
	je	.LBB1_39
# BB#38:                                # %if.then.73
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
.LBB1_39:                               # %if.end.74
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_40:                               # %return
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
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
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
	.type	load_image,@function
load_image:                             # @load_image
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
	subq	$352, %rsp              # imm = 0x160
	leaq	-176(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$-1, -260(%rbp)
	movl	$-1, -268(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	stat
	cmpl	$-1, %eax
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB3_63
.LBB3_2:                                # %if.end
	movabsq	$.L.str.22, %rsi
	movq	-16(%rbp), %rdi
	callq	fopen
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB3_4
# BB#3:                                 # %if.then.3
	movq	-24(%rbp), %rdi
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.23, %rdi
	movl	%eax, -288(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movl	-284(%rbp), %esi        # 4-byte Reload
	movl	-288(%rbp), %edx        # 4-byte Reload
	movq	-296(%rbp), %rcx        # 8-byte Reload
	movq	-304(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB3_63
.LBB3_4:                                # %if.end.11
	movl	$32, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-208(%rbp), %rdi
	movq	-32(%rbp), %rcx
	callq	fread
	cmpq	$1, %rax
	jb	.LBB3_7
# BB#5:                                 # %lor.lhs.false
	movabsq	$psp_ver_major, %rax
	movl	$2, %ecx
	movl	%ecx, %esi
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	-32(%rbp), %rcx
	movq	%rax, %rdi
	callq	fread
	cmpq	$1, %rax
	jb	.LBB3_7
# BB#6:                                 # %lor.lhs.false.16
	movabsq	$psp_ver_minor, %rax
	movl	$2, %ecx
	movl	%ecx, %esi
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	-32(%rbp), %rcx
	movq	%rax, %rdi
	callq	fread
	cmpq	$1, %rax
	jae	.LBB3_8
.LBB3_7:                                # %if.then.19
	movabsq	$.L.str.24, %rdi
	movb	$0, %al
	callq	g_message
	jmp	.LBB3_59
.LBB3_8:                                # %if.end.20
	leaq	-208(%rbp), %rdi
	movl	$.L.str.25, %eax
	movl	%eax, %esi
	movl	$32, %eax
	movl	%eax, %edx
	callq	memcmp
	cmpl	$0, %eax
	je	.LBB3_10
# BB#9:                                 # %if.then.24
	movabsq	$.L.str.26, %rdi
	movb	$0, %al
	callq	g_message
	jmp	.LBB3_59
.LBB3_10:                               # %if.end.25
	movw	psp_ver_major, %ax
	movw	%ax, psp_ver_major
	movw	psp_ver_minor, %ax
	movw	%ax, psp_ver_minor
	movzwl	psp_ver_major, %ecx
	cmpl	$3, %ecx
	jge	.LBB3_12
# BB#11:                                # %if.then.28
	movabsq	$.L.str.27, %rdi
	movzwl	psp_ver_major, %esi
	movzwl	psp_ver_minor, %edx
	movb	$0, %al
	callq	g_message
	jmp	.LBB3_59
.LBB3_12:                               # %if.else
	movzwl	psp_ver_major, %eax
	cmpl	$3, %eax
	je	.LBB3_16
# BB#13:                                # %lor.lhs.false.34
	movzwl	psp_ver_major, %eax
	cmpl	$4, %eax
	je	.LBB3_16
# BB#14:                                # %lor.lhs.false.38
	movzwl	psp_ver_major, %eax
	cmpl	$5, %eax
	je	.LBB3_16
# BB#15:                                # %lor.lhs.false.42
	movzwl	psp_ver_major, %eax
	cmpl	$6, %eax
	jne	.LBB3_17
.LBB3_16:                               # %if.then.46
	jmp	.LBB3_18
.LBB3_17:                               # %if.else.47
	movabsq	$.L.str.28, %rdi
	movzwl	psp_ver_major, %esi
	movzwl	psp_ver_minor, %edx
	movb	$0, %al
	callq	g_message
	jmp	.LBB3_59
.LBB3_18:                               # %if.end.50
	jmp	.LBB3_19
.LBB3_19:                               # %if.end.51
	movl	$0, -264(%rbp)
.LBB3_20:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rdi
	callq	ftell
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpq	-128(%rbp), %rax
	movb	%dl, -305(%rbp)         # 1-byte Spill
	je	.LBB3_22
# BB#21:                                # %land.rhs
                                        #   in Loop: Header=BB3_20 Depth=1
	leaq	-244(%rbp), %rsi
	leaq	-248(%rbp), %rdx
	movq	-32(%rbp), %rdi
	callq	read_block_header
	movl	%eax, -260(%rbp)
	cmpl	$-1, %eax
	setne	%cl
	movb	%cl, -305(%rbp)         # 1-byte Spill
.LBB3_22:                               # %land.end
                                        #   in Loop: Header=BB3_20 Depth=1
	movb	-305(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_23
	jmp	.LBB3_57
.LBB3_23:                               # %while.body
                                        #   in Loop: Header=BB3_20 Depth=1
	movq	-32(%rbp), %rdi
	callq	ftell
	movq	%rax, -256(%rbp)
	cmpl	$0, -260(%rbp)
	jne	.LBB3_31
# BB#24:                                # %if.then.61
                                        #   in Loop: Header=BB3_20 Depth=1
	cmpl	$0, -264(%rbp)
	je	.LBB3_26
# BB#25:                                # %if.then.64
	movabsq	$.L.str.29, %rdi
	movb	$0, %al
	callq	g_message
	jmp	.LBB3_59
.LBB3_26:                               # %if.end.65
                                        #   in Loop: Header=BB3_20 Depth=1
	leaq	-240(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movl	-244(%rbp), %esi
	movl	-248(%rbp), %edx
	callq	read_general_image_attribute_block
	cmpl	$-1, %eax
	jne	.LBB3_28
# BB#27:                                # %if.then.69
	jmp	.LBB3_59
.LBB3_28:                               # %if.end.70
                                        #   in Loop: Header=BB3_20 Depth=1
	xorl	%eax, %eax
	movl	$1, %ecx
	movl	-240(%rbp), %edi
	movl	-236(%rbp), %esi
	movzbl	-218(%rbp), %edx
	cmpl	$0, %edx
	cmovnel	%ecx, %eax
	movl	%eax, %edx
	callq	gimp_image_new
	movl	%eax, -268(%rbp)
	cmpl	$-1, -268(%rbp)
	jne	.LBB3_30
# BB#29:                                # %if.then.75
	jmp	.LBB3_59
.LBB3_30:                               # %if.end.76
                                        #   in Loop: Header=BB3_20 Depth=1
	movl	-268(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	gimp_image_set_filename
	movl	-268(%rbp), %edi
	movsd	-232(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-232(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	%eax, -312(%rbp)        # 4-byte Spill
	callq	gimp_image_set_resolution
	movl	%eax, -316(%rbp)        # 4-byte Spill
	jmp	.LBB3_52
.LBB3_31:                               # %if.else.80
                                        #   in Loop: Header=BB3_20 Depth=1
	cmpl	$0, -264(%rbp)
	jne	.LBB3_33
# BB#32:                                # %if.then.83
	movabsq	$.L.str.30, %rdi
	movb	$0, %al
	callq	g_message
	jmp	.LBB3_59
.LBB3_33:                               # %if.end.84
                                        #   in Loop: Header=BB3_20 Depth=1
	movl	-260(%rbp), %eax
	decl	%eax
	movl	%eax, %ecx
	subl	$17, %eax
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	movl	%eax, -332(%rbp)        # 4-byte Spill
	ja	.LBB3_50
# BB#64:                                # %if.end.84
                                        #   in Loop: Header=BB3_20 Depth=1
	movq	-328(%rbp), %rax        # 8-byte Reload
	movq	.LJTI3_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB3_34:                               # %sw.bb
                                        #   in Loop: Header=BB3_20 Depth=1
	leaq	-240(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movl	-268(%rbp), %esi
	movl	-248(%rbp), %edx
	callq	read_creator_block
	cmpl	$-1, %eax
	jne	.LBB3_36
# BB#35:                                # %if.then.88
	jmp	.LBB3_59
.LBB3_36:                               # %if.end.89
                                        #   in Loop: Header=BB3_20 Depth=1
	jmp	.LBB3_51
.LBB3_37:                               # %sw.bb.90
                                        #   in Loop: Header=BB3_20 Depth=1
	jmp	.LBB3_51
.LBB3_38:                               # %sw.bb.91
                                        #   in Loop: Header=BB3_20 Depth=1
	leaq	-240(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movl	-268(%rbp), %esi
	movl	-248(%rbp), %edx
	callq	read_layer_block
	cmpl	$-1, %eax
	jne	.LBB3_40
# BB#39:                                # %if.then.95
	jmp	.LBB3_59
.LBB3_40:                               # %if.end.96
                                        #   in Loop: Header=BB3_20 Depth=1
	jmp	.LBB3_51
.LBB3_41:                               # %sw.bb.97
                                        #   in Loop: Header=BB3_20 Depth=1
	jmp	.LBB3_51
.LBB3_42:                               # %sw.bb.98
                                        #   in Loop: Header=BB3_20 Depth=1
	jmp	.LBB3_51
.LBB3_43:                               # %sw.bb.99
                                        #   in Loop: Header=BB3_20 Depth=1
	jmp	.LBB3_51
.LBB3_44:                               # %sw.bb.100
                                        #   in Loop: Header=BB3_20 Depth=1
	jmp	.LBB3_51
.LBB3_45:                               # %sw.bb.101
                                        #   in Loop: Header=BB3_20 Depth=1
	leaq	-240(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movl	-268(%rbp), %esi
	movl	-248(%rbp), %edx
	callq	read_tube_block
	cmpl	$-1, %eax
	jne	.LBB3_47
# BB#46:                                # %if.then.105
	jmp	.LBB3_59
.LBB3_47:                               # %if.end.106
                                        #   in Loop: Header=BB3_20 Depth=1
	jmp	.LBB3_51
.LBB3_48:                               # %sw.bb.107
                                        #   in Loop: Header=BB3_20 Depth=1
	jmp	.LBB3_51
.LBB3_49:                               # %sw.bb.108
                                        #   in Loop: Header=BB3_20 Depth=1
	movl	-260(%rbp), %edi
	callq	block_name
	movabsq	$.L.str.31, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	jmp	.LBB3_51
.LBB3_50:                               # %sw.default
                                        #   in Loop: Header=BB3_20 Depth=1
	movabsq	$.L.str.32, %rdi
	movl	-260(%rbp), %esi
	movb	$0, %al
	callq	g_message
.LBB3_51:                               # %sw.epilog
                                        #   in Loop: Header=BB3_20 Depth=1
	jmp	.LBB3_52
.LBB3_52:                               # %if.end.110
                                        #   in Loop: Header=BB3_20 Depth=1
	movq	-256(%rbp), %rax
	movl	-248(%rbp), %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	cmpq	-128(%rbp), %rax
	jl	.LBB3_54
# BB#53:                                # %if.then.115
	jmp	.LBB3_57
.LBB3_54:                               # %if.end.116
                                        #   in Loop: Header=BB3_20 Depth=1
	xorl	%edx, %edx
	movq	-32(%rbp), %rdi
	movq	-256(%rbp), %rax
	movl	-248(%rbp), %ecx
	movl	%ecx, %esi
	addq	%rsi, %rax
	movq	%rax, %rsi
	callq	try_fseek
	cmpl	$0, %eax
	jge	.LBB3_56
# BB#55:                                # %if.then.122
	jmp	.LBB3_59
.LBB3_56:                               # %if.end.123
                                        #   in Loop: Header=BB3_20 Depth=1
	movl	-264(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -264(%rbp)
	jmp	.LBB3_20
.LBB3_57:                               # %while.end
	cmpl	$-1, -260(%rbp)
	jne	.LBB3_62
# BB#58:                                # %if.then.126
	jmp	.LBB3_59
.LBB3_59:                               # %error.127
	movq	-32(%rbp), %rdi
	callq	fclose
	cmpl	$-1, -268(%rbp)
	movl	%eax, -336(%rbp)        # 4-byte Spill
	je	.LBB3_61
# BB#60:                                # %if.then.131
	movl	-268(%rbp), %edi
	callq	gimp_image_delete
	movl	%eax, -340(%rbp)        # 4-byte Spill
.LBB3_61:                               # %if.end.133
	movl	$-1, -4(%rbp)
	jmp	.LBB3_63
.LBB3_62:                               # %if.end.134
	movq	-32(%rbp), %rdi
	callq	fclose
	movl	-268(%rbp), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -344(%rbp)        # 4-byte Spill
.LBB3_63:                               # %return
	movl	-4(%rbp), %eax
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end3:
	.size	load_image, .Lfunc_end3-load_image
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_34
	.quad	.LBB3_37
	.quad	.LBB3_38
	.quad	.LBB3_49
	.quad	.LBB3_49
	.quad	.LBB3_41
	.quad	.LBB3_42
	.quad	.LBB3_49
	.quad	.LBB3_43
	.quad	.LBB3_44
	.quad	.LBB3_45
	.quad	.LBB3_49
	.quad	.LBB3_49
	.quad	.LBB3_49
	.quad	.LBB3_49
	.quad	.LBB3_48
	.quad	.LBB3_49
	.quad	.LBB3_49

	.text
	.align	16, 0x90
	.type	save_dialog,@function
save_dialog:                            # @save_dialog
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$176, %rsp
.Ltmp17:
	.cfi_offset %rbx, -48
.Ltmp18:
	.cfi_offset %r12, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
	movabsq	$.L.str.21, %rdi
	callq	gettext
	movabsq	$.L.str.20, %rsi
	movabsq	$.L.str.19, %rdx
	movq	%rax, %rdi
	callq	gimp_export_dialog_new
	movabsq	$.L.str.106, %rdi
	movq	%rax, -40(%rbp)
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.107, %rsi
	movl	$12, %ecx
	movl	%ecx, %edx
	movl	psvals, %r8d
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	%r8d, -68(%rbp)         # 4-byte Spill
	callq	g_dpgettext
	movabsq	$.L.str.108, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.109, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$gimp_radio_button_update, %rdx
	movabsq	$psvals, %rsi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movl	$2, %r8d
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%r10, %rsi
	movq	-96(%rbp), %r11         # 8-byte Reload
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movq	%r11, %rcx
	movl	-68(%rbp), %ebx         # 4-byte Reload
	movl	%r8d, -104(%rbp)        # 4-byte Spill
	movl	%ebx, %r8d
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	%r9, -112(%rbp)         # 8-byte Spill
	movq	%r14, %r9
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	-88(%rbp), %r15         # 8-byte Reload
	movq	%r15, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	%rax, 40(%rsp)
	movl	$2, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movb	$0, %al
	callq	gimp_int_radio_group_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-40(%rbp), %rdi
	callq	gimp_export_dialog_get_content_area
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movl	$1, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r12b
	andb	$1, %r12b
	movzbl	%r12b, %eax
	movl	%eax, -52(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-52(%rbp), %eax
	addq	$176, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	save_dialog, .Lfunc_end4-save_dialog
	.cfi_endproc

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
	subq	$32, %rsp
	movabsq	$.L.str.110, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	save_image, .Lfunc_end5-save_image
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	je	.LBB6_2
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
.LBB6_2:                                # %entry
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
.Lfunc_end6:
	.size	g_message, .Lfunc_end6-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	read_block_header,@function
read_block_header:                      # @read_block_header
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
	movl	$4, %eax
	movl	%eax, %ecx
	movl	$1, %eax
	movl	%eax, %r8d
	leaq	-36(%rbp), %r9
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%r9, %rdi
	movq	%rcx, %rsi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%r8, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB7_5
# BB#1:                                 # %lor.lhs.false
	movl	$2, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-38(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB7_5
# BB#2:                                 # %lor.lhs.false.3
	movl	$4, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-52(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-80(%rbp), %rcx         # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB7_5
# BB#3:                                 # %lor.lhs.false.6
	movzwl	psp_ver_major, %eax
	cmpl	$4, %eax
	jge	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movl	$4, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-88(%rbp), %rcx         # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jae	.LBB7_6
.LBB7_5:                                # %if.then
	movabsq	$.L.str.33, %rdi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB7_12
.LBB7_6:                                # %if.end
	leaq	-36(%rbp), %rax
	movl	(%rax), %ecx
	subl	$4932222, %ecx          # imm = 0x4B427E
	setne	%dl
	movzbl	%dl, %esi
	cmpl	$0, %esi
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	je	.LBB7_8
# BB#7:                                 # %if.then.16
	movabsq	$.L.str.35, %rdi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB7_12
.LBB7_8:                                # %if.end.17
	movzwl	psp_ver_major, %eax
	cmpl	$4, %eax
	jge	.LBB7_10
# BB#9:                                 # %if.then.21
	movl	-52(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-32(%rbp), %rcx
	movl	(%rcx), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB7_11
.LBB7_10:                               # %if.else
	movq	-24(%rbp), %rax
	movl	$-559038737, (%rax)     # imm = 0xFFFFFFFFDEADBEEF
	movl	-52(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
.LBB7_11:                               # %if.end.22
	movzwl	-38(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB7_12:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	read_block_header, .Lfunc_end7-read_block_header
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4612901990326777938     # double 2.54
	.text
	.align	16, 0x90
	.type	read_general_image_attribute_block,@function
read_general_image_attribute_block:     # @read_general_image_attribute_block
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpl	$38, -20(%rbp)
	jb	.LBB8_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$38, -24(%rbp)
	jae	.LBB8_3
.LBB8_2:                                # %if.then
	movabsq	$.L.str.36, %rdi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB8_26
.LBB8_3:                                # %if.end
	movzwl	psp_ver_major, %eax
	cmpl	$4, %eax
	jl	.LBB8_5
# BB#4:                                 # %if.then.4
	movl	$4, %eax
	movl	%eax, %esi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	callq	fseek
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB8_5:                                # %if.end.5
	movl	$4, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB8_18
# BB#6:                                 # %lor.lhs.false.9
	movl	$4, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	addq	$4, %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB8_18
# BB#7:                                 # %lor.lhs.false.13
	movl	$8, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-80(%rbp), %rcx         # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB8_18
# BB#8:                                 # %lor.lhs.false.17
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	addq	$16, %rdx
	movq	-16(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB8_18
# BB#9:                                 # %lor.lhs.false.21
	movl	$2, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	addq	$18, %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-96(%rbp), %rcx         # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB8_18
# BB#10:                                # %lor.lhs.false.25
	movl	$2, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	addq	$20, %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB8_18
# BB#11:                                # %lor.lhs.false.29
	movl	$6, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-38(%rbp), %rdi
	movq	-16(%rbp), %rcx
	callq	fread
	cmpq	$1, %rax
	jb	.LBB8_18
# BB#12:                                # %lor.lhs.false.33
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	addq	$22, %rdx
	movq	-16(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB8_18
# BB#13:                                # %lor.lhs.false.37
	movl	$4, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-38(%rbp), %rdi
	movq	-16(%rbp), %rcx
	callq	fread
	cmpq	$1, %rax
	jb	.LBB8_18
# BB#14:                                # %lor.lhs.false.42
	movl	$4, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	addq	$24, %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-120(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB8_18
# BB#15:                                # %lor.lhs.false.46
	movl	$2, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	addq	$28, %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-128(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB8_18
# BB#16:                                # %lor.lhs.false.50
	movzwl	psp_ver_major, %eax
	cmpl	$4, %eax
	jl	.LBB8_19
# BB#17:                                # %land.lhs.true
	movl	$4, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-52(%rbp), %rdi
	movq	-16(%rbp), %rcx
	callq	fread
	cmpq	$1, %rax
	jae	.LBB8_19
.LBB8_18:                               # %if.then.58
	movabsq	$.L.str.37, %rdi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB8_26
.LBB8_19:                               # %if.end.59
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	movzbl	16(%rax), %ecx
	cmpl	$2, %ecx
	jne	.LBB8_21
# BB#20:                                # %if.then.68
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rax)
.LBB8_21:                               # %if.end.70
	movq	-32(%rbp), %rax
	movw	18(%rax), %cx
	movq	-32(%rbp), %rax
	movw	%cx, 18(%rax)
	movq	-32(%rbp), %rax
	movzwl	18(%rax), %edx
	cmpl	$2, %edx
	jle	.LBB8_23
# BB#22:                                # %if.then.77
	movabsq	$.L.str.38, %rdi
	movq	-32(%rbp), %rax
	movzwl	18(%rax), %esi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB8_26
.LBB8_23:                               # %if.end.80
	movq	-32(%rbp), %rax
	movw	20(%rax), %cx
	movq	-32(%rbp), %rax
	movw	%cx, 20(%rax)
	movq	-32(%rbp), %rax
	movzwl	20(%rax), %edx
	cmpl	$24, %edx
	je	.LBB8_25
# BB#24:                                # %if.then.87
	movabsq	$.L.str.39, %rdi
	movq	-32(%rbp), %rax
	movzwl	20(%rax), %esi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB8_26
.LBB8_25:                               # %if.end.90
	movq	-32(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 24(%rax)
	movq	-32(%rbp), %rax
	movw	28(%rax), %dx
	movq	-32(%rbp), %rax
	movw	%dx, 28(%rax)
	movl	$0, -4(%rbp)
.LBB8_26:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	read_general_image_attribute_block, .Lfunc_end8-read_general_image_attribute_block
	.cfi_endproc

	.align	16, 0x90
	.type	read_creator_block,@function
read_creator_block:                     # @read_creator_block
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
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	movl	$0, -104(%rbp)
	movl	$0, -108(%rbp)
	movq	-16(%rbp), %rdi
	callq	ftell
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	%rax, -40(%rbp)
	callq	g_string_new
	movq	%rax, -128(%rbp)
.LBB9_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	ftell
	movq	-40(%rbp), %rdi
	movl	-24(%rbp), %ecx
	movl	%ecx, %edx
	addq	%rdx, %rdi
	cmpq	%rdi, %rax
	jge	.LBB9_30
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$4, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-44(%rbp), %rdi
	movq	-16(%rbp), %rcx
	callq	fread
	cmpq	$1, %rax
	jb	.LBB9_5
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$2, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-46(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-144(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB9_5
# BB#4:                                 # %lor.lhs.false.10
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$4, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-52(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-152(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jae	.LBB9_6
.LBB9_5:                                # %if.then
	movabsq	$.L.str.40, %rdi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB9_41
.LBB9_6:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	-44(%rbp), %rax
	movl	(%rax), %ecx
	subl	$4998782, %ecx          # imm = 0x4C467E
	setne	%dl
	movzbl	%dl, %esi
	cmpl	$0, %esi
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	je	.LBB9_8
# BB#7:                                 # %if.then.18
	movabsq	$.L.str.42, %rdi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB9_41
.LBB9_8:                                # %if.end.19
                                        #   in Loop: Header=BB9_1 Depth=1
	movzwl	-46(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	je	.LBB9_9
	jmp	.LBB9_42
.LBB9_42:                               # %if.end.19
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-160(%rbp), %eax        # 4-byte Reload
	decl	%eax
	subl	$2, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jb	.LBB9_18
	jmp	.LBB9_43
.LBB9_43:                               # %if.end.19
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-160(%rbp), %eax        # 4-byte Reload
	addl	$-3, %eax
	subl	$3, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jb	.LBB9_9
	jmp	.LBB9_44
.LBB9_44:                               # %if.end.19
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-160(%rbp), %eax        # 4-byte Reload
	addl	$-6, %eax
	subl	$2, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jb	.LBB9_18
	jmp	.LBB9_26
.LBB9_9:                                # %sw.bb
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	g_malloc
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movl	-52(%rbp), %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rcx
	callq	fread
	cmpq	$1, %rax
	jae	.LBB9_11
# BB#10:                                # %if.then.28
	movabsq	$.L.str.43, %rdi
	movb	$0, %al
	callq	g_message
	movq	-64(%rbp), %rdi
	callq	g_free
	movl	$-1, -4(%rbp)
	jmp	.LBB9_41
.LBB9_11:                               # %if.end.29
                                        #   in Loop: Header=BB9_1 Depth=1
	movzwl	-46(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$5, %rdx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	ja	.LBB9_16
# BB#46:                                # %if.end.29
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	.LJTI9_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB9_12:                               # %sw.bb.31
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	-64(%rbp), %rdi
	movq	%rdi, -72(%rbp)
	jmp	.LBB9_17
.LBB9_13:                               # %sw.bb.32
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-64(%rbp), %rdi
	movq	%rdi, -80(%rbp)
	jmp	.LBB9_17
.LBB9_14:                               # %sw.bb.33
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-88(%rbp), %rdi
	callq	g_free
	movq	-64(%rbp), %rdi
	movq	%rdi, -88(%rbp)
	jmp	.LBB9_17
.LBB9_15:                               # %sw.bb.34
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-96(%rbp), %rdi
	callq	g_free
	movq	-64(%rbp), %rdi
	movq	%rdi, -96(%rbp)
	jmp	.LBB9_17
.LBB9_16:                               # %sw.default
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-64(%rbp), %rdi
	callq	g_free
.LBB9_17:                               # %sw.epilog
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_29
.LBB9_18:                               # %sw.bb.35
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$4, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-100(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-200(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jae	.LBB9_20
# BB#19:                                # %if.then.39
	movabsq	$.L.str.43, %rdi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB9_41
.LBB9_20:                               # %if.end.40
                                        #   in Loop: Header=BB9_1 Depth=1
	movzwl	-46(%rbp), %eax
	decl	%eax
	movl	%eax, %ecx
	subl	$6, %eax
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	movl	%eax, -212(%rbp)        # 4-byte Spill
	ja	.LBB9_25
# BB#45:                                # %if.end.40
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	.LJTI9_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB9_21:                               # %sw.bb.42
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB9_25
.LBB9_22:                               # %sw.bb.43
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-100(%rbp), %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB9_25
.LBB9_23:                               # %sw.bb.44
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-100(%rbp), %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB9_25
.LBB9_24:                               # %sw.bb.45
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-100(%rbp), %eax
	movl	%eax, -116(%rbp)
.LBB9_25:                               # %sw.epilog.46
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_29
.LBB9_26:                               # %sw.default.47
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	callq	try_fseek
	cmpl	$0, %eax
	jge	.LBB9_28
# BB#27:                                # %if.then.52
	movl	$-1, -4(%rbp)
	jmp	.LBB9_41
.LBB9_28:                               # %if.end.53
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_29
.LBB9_29:                               # %sw.epilog.54
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_1
.LBB9_30:                               # %while.end
	cmpq	$0, -72(%rbp)
	je	.LBB9_32
# BB#31:                                # %if.then.55
	movq	-128(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_string_append
	movq	-72(%rbp), %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	g_free
	movabsq	$.L.str.44, %rsi
	movq	-128(%rbp), %rdi
	callq	g_string_append
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB9_32:                               # %if.end.58
	cmpq	$0, -80(%rbp)
	je	.LBB9_34
# BB#33:                                # %if.then.60
	movq	-128(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_string_append
	movq	-80(%rbp), %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	g_free
	movabsq	$.L.str.44, %rsi
	movq	-128(%rbp), %rdi
	callq	g_string_append
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB9_34:                               # %if.end.63
	cmpq	$0, -88(%rbp)
	je	.LBB9_36
# BB#35:                                # %if.then.65
	movabsq	$.L.str.45, %rsi
	movq	-128(%rbp), %rdi
	callq	g_string_append
	movq	-128(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	g_string_append
	movq	-88(%rbp), %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	g_free
	movabsq	$.L.str.44, %rsi
	movq	-128(%rbp), %rdi
	callq	g_string_append
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB9_36:                               # %if.end.69
	cmpq	$0, -96(%rbp)
	je	.LBB9_38
# BB#37:                                # %if.then.71
	movq	-128(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_string_append
	movq	-96(%rbp), %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	g_free
	movabsq	$.L.str.44, %rsi
	movq	-128(%rbp), %rdi
	callq	g_string_append
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB9_38:                               # %if.end.74
	movq	-128(%rbp), %rax
	cmpq	$0, 8(%rax)
	jbe	.LBB9_40
# BB#39:                                # %if.then.77
	movabsq	$.L.str.46, %rdi
	movl	$1, %esi
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -300(%rbp)        # 4-byte Spill
	callq	strlen
	addq	$1, %rax
	movl	%eax, %esi
	movq	-128(%rbp), %rax
	movq	(%rax), %rcx
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movl	-300(%rbp), %edx        # 4-byte Reload
	movl	%esi, -304(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-304(%rbp), %edx        # 4-byte Reload
	callq	gimp_parasite_new
	movq	%rax, -136(%rbp)
	movl	-20(%rbp), %edi
	movq	-136(%rbp), %rsi
	callq	gimp_image_attach_parasite
	movq	-136(%rbp), %rdi
	movl	%eax, -308(%rbp)        # 4-byte Spill
	callq	gimp_parasite_free
.LBB9_40:                               # %if.end.84
	xorl	%esi, %esi
	movq	-128(%rbp), %rdi
	callq	g_string_free
	movl	$0, -4(%rbp)
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB9_41:                               # %return
	movl	-4(%rbp), %eax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end9:
	.size	read_creator_block, .Lfunc_end9-read_creator_block
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI9_0:
	.quad	.LBB9_21
	.quad	.LBB9_22
	.quad	.LBB9_25
	.quad	.LBB9_25
	.quad	.LBB9_25
	.quad	.LBB9_23
	.quad	.LBB9_24
.LJTI9_1:
	.quad	.LBB9_12
	.quad	.LBB9_16
	.quad	.LBB9_16
	.quad	.LBB9_13
	.quad	.LBB9_14
	.quad	.LBB9_15

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4643176031446892544     # double 255
.LCPI10_1:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	read_layer_block,@function
read_layer_block:                       # @read_layer_block
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
	subq	$624, %rsp              # imm = 0x270
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	$0, -88(%rbp)
	movl	$0, -180(%rbp)
	movl	$0, -192(%rbp)
	movq	-16(%rbp), %rdi
	callq	ftell
	movq	%rax, -48(%rbp)
.LBB10_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_87 Depth 2
                                        #     Child Loop BB10_92 Depth 2
	movq	-16(%rbp), %rdi
	callq	ftell
	movq	-48(%rbp), %rdi
	movl	-24(%rbp), %ecx
	movl	%ecx, %edx
	addq	%rdx, %rdi
	cmpq	%rdi, %rax
	jge	.LBB10_123
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	-72(%rbp), %rsi
	leaq	-76(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	read_block_header
	movl	%eax, -68(%rbp)
	cmpl	$-1, -68(%rbp)
	jne	.LBB10_4
# BB#3:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB10_126
.LBB10_4:                               # %if.end
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpl	$4, -68(%rbp)
	je	.LBB10_6
# BB#5:                                 # %if.then.8
	movl	-68(%rbp), %edi
	callq	block_name
	movabsq	$.L.str.47, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB10_126
.LBB10_6:                               # %if.end.10
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	ftell
	movq	%rax, -56(%rbp)
	movzwl	psp_ver_major, %ecx
	cmpl	$4, %ecx
	jl	.LBB10_30
# BB#7:                                 # %if.then.15
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$4, %eax
	movl	%eax, %esi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	callq	fseek
	cmpl	$0, %eax
	jl	.LBB10_28
# BB#8:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$2, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-90(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-312(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB10_28
# BB#9:                                 # %lor.lhs.false.22
                                        #   in Loop: Header=BB10_1 Depth=1
	movw	-90(%rbp), %ax
	movw	%ax, -90(%rbp)
	movzwl	%ax, %ecx
	cmpl	$0, %ecx
	je	.LBB10_11
# BB#10:                                # %land.lhs.true
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_28
	jmp	.LBB10_11
.LBB10_11:                              # %lor.lhs.false.24
                                        #   in Loop: Header=BB10_1 Depth=1
	movzwl	-90(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	g_malloc
	movq	%rax, -88(%rbp)
	cmpq	$0, %rax
	je	.LBB10_28
# BB#12:                                # %lor.lhs.false.31
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movq	-88(%rbp), %rdi
	movzwl	-90(%rbp), %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	callq	fread
	cmpq	$1, %rax
	jb	.LBB10_28
# BB#13:                                # %lor.lhs.false.36
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	-91(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, -320(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-320(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB10_28
# BB#14:                                # %lor.lhs.false.40
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$16, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-128(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-328(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB10_28
# BB#15:                                # %lor.lhs.false.44
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$16, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-144(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-336(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB10_28
# BB#16:                                # %lor.lhs.false.48
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	-92(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, -344(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-344(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB10_28
# BB#17:                                # %lor.lhs.false.52
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	-93(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-352(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB10_28
# BB#18:                                # %lor.lhs.false.56
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	-94(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, -360(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-360(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB10_28
# BB#19:                                # %lor.lhs.false.60
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	-95(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, -368(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-368(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB10_28
# BB#20:                                # %lor.lhs.false.64
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	-96(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-376(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB10_28
# BB#21:                                # %lor.lhs.false.68
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$16, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-160(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-384(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB10_28
# BB#22:                                # %lor.lhs.false.72
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$16, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-176(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-392(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB10_28
# BB#23:                                # %lor.lhs.false.76
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	-97(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, -400(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-400(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB10_28
# BB#24:                                # %lor.lhs.false.80
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	-98(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-408(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB10_28
# BB#25:                                # %lor.lhs.false.84
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$47, %eax
	movl	%eax, %esi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	callq	fseek
	cmpl	$0, %eax
	jl	.LBB10_28
# BB#26:                                # %lor.lhs.false.88
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$2, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-182(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-416(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB10_28
# BB#27:                                # %lor.lhs.false.92
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$2, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-184(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-424(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jae	.LBB10_29
.LBB10_28:                              # %if.then.96
	movabsq	$.L.str.48, %rdi
	movb	$0, %al
	callq	g_message
	movq	-88(%rbp), %rdi
	callq	g_free
	movl	$-1, -4(%rbp)
	jmp	.LBB10_126
.LBB10_29:                              # %if.end.97
                                        #   in Loop: Header=BB10_1 Depth=1
	movzwl	-90(%rbp), %eax
	movl	%eax, %ecx
	movq	-88(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
	movb	$0, -91(%rbp)
	jmp	.LBB10_48
.LBB10_30:                              # %if.else
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$257, %eax              # imm = 0x101
	movl	%eax, %edi
	callq	g_malloc
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %esi
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movb	$0, 256(%rax)
	movq	-88(%rbp), %rdi
	movq	-16(%rbp), %rcx
	callq	fread
	cmpq	$1, %rax
	jb	.LBB10_46
# BB#31:                                # %lor.lhs.false.103
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	-91(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, -432(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-432(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB10_46
# BB#32:                                # %lor.lhs.false.107
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$16, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-128(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-440(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB10_46
# BB#33:                                # %lor.lhs.false.111
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$16, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-144(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-448(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB10_46
# BB#34:                                # %lor.lhs.false.115
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	-92(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, -456(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-456(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB10_46
# BB#35:                                # %lor.lhs.false.119
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	-93(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, -464(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-464(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB10_46
# BB#36:                                # %lor.lhs.false.123
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	-94(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, -472(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-472(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB10_46
# BB#37:                                # %lor.lhs.false.127
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	-95(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, -480(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-480(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB10_46
# BB#38:                                # %lor.lhs.false.131
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	-96(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, -488(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-488(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB10_46
# BB#39:                                # %lor.lhs.false.135
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$16, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-160(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -496(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-496(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB10_46
# BB#40:                                # %lor.lhs.false.139
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$16, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-176(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-504(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB10_46
# BB#41:                                # %lor.lhs.false.143
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	-97(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, -512(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-512(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB10_46
# BB#42:                                # %lor.lhs.false.147
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	-98(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, -520(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-520(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB10_46
# BB#43:                                # %lor.lhs.false.151
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$43, %eax
	movl	%eax, %esi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	callq	fseek
	cmpl	$0, %eax
	jl	.LBB10_46
# BB#44:                                # %lor.lhs.false.155
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$2, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-182(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-528(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB10_46
# BB#45:                                # %lor.lhs.false.159
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$2, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-184(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-536(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jae	.LBB10_47
.LBB10_46:                              # %if.then.163
	movabsq	$.L.str.48, %rdi
	movb	$0, %al
	callq	g_message
	movq	-88(%rbp), %rdi
	callq	g_free
	movl	$-1, -4(%rbp)
	jmp	.LBB10_126
.LBB10_47:                              # %if.end.164
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_48
.LBB10_48:                              # %if.end.165
                                        #   in Loop: Header=BB10_1 Depth=1
	movzbl	-91(%rbp), %eax
	cmpl	$1, %eax
	jne	.LBB10_50
# BB#49:                                # %if.then.169
                                        #   in Loop: Header=BB10_1 Depth=1
	movabsq	$.L.str.49, %rdi
	movb	$0, %al
	callq	g_message
.LBB10_50:                              # %if.end.170
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	-128(%rbp), %rdi
	callq	swab_rect
	leaq	-144(%rbp), %rdi
	callq	swab_rect
	leaq	-160(%rbp), %rdi
	callq	swab_rect
	leaq	-176(%rbp), %rdi
	callq	swab_rect
	movw	-182(%rbp), %ax
	movw	%ax, -182(%rbp)
	movw	-184(%rbp), %ax
	movw	%ax, -184(%rbp)
	movzbl	-93(%rbp), %edi
	callq	gimp_layer_mode_from_psp_blend_mode
	movl	%eax, -196(%rbp)
	cmpl	$-1, -196(%rbp)
	jne	.LBB10_52
# BB#51:                                # %if.then.178
                                        #   in Loop: Header=BB10_1 Depth=1
	movzbl	-93(%rbp), %edi
	callq	blend_mode_name
	movabsq	$.L.str.50, %rdi
	movq	-88(%rbp), %rdx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movl	$0, -196(%rbp)
	movb	$0, -94(%rbp)
.LBB10_52:                              # %if.end.181
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-136(%rbp), %eax
	subl	-144(%rbp), %eax
	movl	%eax, -220(%rbp)
	movl	-132(%rbp), %eax
	subl	-140(%rbp), %eax
	movl	%eax, -224(%rbp)
	cmpl	$0, -220(%rbp)
	jl	.LBB10_57
# BB#53:                                # %lor.lhs.false.189
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpl	$262144, -220(%rbp)     # imm = 0x40000
	jg	.LBB10_57
# BB#54:                                # %lor.lhs.false.192
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpl	$0, -224(%rbp)
	jl	.LBB10_57
# BB#55:                                # %lor.lhs.false.195
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpl	$262144, -224(%rbp)     # imm = 0x40000
	jg	.LBB10_57
# BB#56:                                # %lor.lhs.false.198
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$256, %eax              # imm = 0x100
	movl	-220(%rbp), %ecx
	movl	%eax, -540(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-540(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	-224(%rbp), %esi
	movl	%eax, -544(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	-544(%rbp), %esi        # 4-byte Reload
	imull	%eax, %esi
	cmpl	$8192, %esi             # imm = 0x2000
	jl	.LBB10_58
.LBB10_57:                              # %if.then.202
	movabsq	$.L.str.51, %rdi
	movl	-220(%rbp), %esi
	movl	-224(%rbp), %edx
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB10_126
.LBB10_58:                              # %if.end.203
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpl	$0, -220(%rbp)
	jne	.LBB10_60
# BB#59:                                # %if.then.206
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-220(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -220(%rbp)
	movl	$1, -180(%rbp)
.LBB10_60:                              # %if.end.207
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpl	$0, -224(%rbp)
	jne	.LBB10_62
# BB#61:                                # %if.then.210
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-224(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -224(%rbp)
	movl	$1, -180(%rbp)
.LBB10_62:                              # %if.end.212
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-32(%rbp), %rax
	cmpb	$0, 22(%rax)
	je	.LBB10_68
# BB#63:                                # %if.then.214
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpl	$0, -180(%rbp)
	jne	.LBB10_66
# BB#64:                                # %land.lhs.true.216
                                        #   in Loop: Header=BB10_1 Depth=1
	movzwl	-182(%rbp), %eax
	cmpl	$1, %eax
	jne	.LBB10_66
# BB#65:                                # %if.then.220
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$2, -188(%rbp)
	movl	$1, -228(%rbp)
	jmp	.LBB10_67
.LBB10_66:                              # %if.else.221
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$3, -188(%rbp)
	movl	$1, -228(%rbp)
.LBB10_67:                              # %if.end.222
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_73
.LBB10_68:                              # %if.else.223
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpl	$0, -180(%rbp)
	jne	.LBB10_71
# BB#69:                                # %land.lhs.true.225
                                        #   in Loop: Header=BB10_1 Depth=1
	movzwl	-182(%rbp), %eax
	cmpl	$1, %eax
	jne	.LBB10_71
# BB#70:                                # %if.then.229
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$0, -188(%rbp)
	movl	$3, -228(%rbp)
	jmp	.LBB10_72
.LBB10_71:                              # %if.else.230
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$1, -188(%rbp)
	movl	$4, -228(%rbp)
.LBB10_72:                              # %if.end.231
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_73
.LBB10_73:                              # %if.end.232
                                        #   in Loop: Header=BB10_1 Depth=1
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI10_1, %xmm1        # xmm1 = mem[0],zero
	movl	-20(%rbp), %edi
	movq	-88(%rbp), %rsi
	movl	-220(%rbp), %edx
	movl	-224(%rbp), %ecx
	movl	-188(%rbp), %r8d
	movzbl	-92(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	divsd	%xmm0, %xmm1
	movl	-196(%rbp), %r9d
	movaps	%xmm1, %xmm0
	callq	gimp_layer_new
	movl	%eax, -192(%rbp)
	cmpl	$-1, -192(%rbp)
	jne	.LBB10_75
# BB#74:                                # %if.then.240
	movabsq	$.L.str.52, %rdi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB10_126
.LBB10_75:                              # %if.end.241
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-88(%rbp), %rdi
	callq	g_free
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	-20(%rbp), %edi
	movl	-192(%rbp), %esi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_image_insert_layer
	cmpl	$0, -144(%rbp)
	movl	%eax, -548(%rbp)        # 4-byte Spill
	jne	.LBB10_77
# BB#76:                                # %lor.lhs.false.246
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpl	$0, -140(%rbp)
	je	.LBB10_78
.LBB10_77:                              # %if.then.250
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-192(%rbp), %edi
	movl	-144(%rbp), %esi
	movl	-140(%rbp), %edx
	callq	gimp_layer_set_offsets
	movl	%eax, -552(%rbp)        # 4-byte Spill
.LBB10_78:                              # %if.end.254
                                        #   in Loop: Header=BB10_1 Depth=1
	cmpb	$0, -94(%rbp)
	jne	.LBB10_80
# BB#79:                                # %if.then.256
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%esi, %esi
	movl	-192(%rbp), %edi
	callq	gimp_item_set_visible
	movl	%eax, -556(%rbp)        # 4-byte Spill
.LBB10_80:                              # %if.end.258
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-192(%rbp), %edi
	movzbl	-95(%rbp), %esi
	callq	gimp_layer_set_lock_alpha
	movzwl	psp_ver_major, %esi
	cmpl	$4, %esi
	movl	%eax, -560(%rbp)        # 4-byte Spill
	jge	.LBB10_84
# BB#81:                                # %if.then.264
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rax
	movl	-72(%rbp), %ecx
	movl	%ecx, %esi
	addq	%rsi, %rax
	movq	%rax, %rsi
	callq	try_fseek
	cmpl	$0, %eax
	jge	.LBB10_83
# BB#82:                                # %if.then.270
	movl	$-1, -4(%rbp)
	jmp	.LBB10_126
.LBB10_83:                              # %if.end.271
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_84
.LBB10_84:                              # %if.end.272
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-224(%rbp), %eax
	imull	-220(%rbp), %eax
	imull	-228(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc0
	movq	%rax, -248(%rbp)
	cmpl	$0, -180(%rbp)
	je	.LBB10_86
# BB#85:                                # %if.then.278
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	$0, -240(%rbp)
	jmp	.LBB10_91
.LBB10_86:                              # %if.else.279
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$8, %eax
	movl	%eax, %esi
	movslq	-224(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -240(%rbp)
	movl	$0, -36(%rbp)
.LBB10_87:                              # %for.cond
                                        #   Parent Loop BB10_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	-224(%rbp), %eax
	jge	.LBB10_90
# BB#88:                                # %for.body
                                        #   in Loop: Header=BB10_87 Depth=2
	movq	-248(%rbp), %rax
	movl	-220(%rbp), %ecx
	imull	-228(%rbp), %ecx
	imull	-36(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movslq	-36(%rbp), %rdx
	movq	-240(%rbp), %rsi
	movq	%rax, (%rsi,%rdx,8)
# BB#89:                                # %for.inc
                                        #   in Loop: Header=BB10_87 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB10_87
.LBB10_90:                              # %for.end
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_91
.LBB10_91:                              # %if.end.289
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-192(%rbp), %edi
	callq	gimp_drawable_get
	leaq	-304(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rsi
	movl	-220(%rbp), %r8d
	movl	-224(%rbp), %r9d
	movl	%edx, -564(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	callq	gimp_tile_height
	imull	-220(%rbp), %eax
	imull	-228(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_size
.LBB10_92:                              # %while.cond.295
                                        #   Parent Loop BB10_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rdi
	callq	ftell
	movq	-56(%rbp), %rdi
	movl	-76(%rbp), %ecx
	movl	%ecx, %edx
	addq	%rdx, %rdi
	cmpq	%rdi, %rax
	jge	.LBB10_122
# BB#93:                                # %while.body.301
                                        #   in Loop: Header=BB10_92 Depth=2
	leaq	-200(%rbp), %rsi
	leaq	-204(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	read_block_header
	movl	%eax, -68(%rbp)
	cmpl	$-1, -68(%rbp)
	jne	.LBB10_95
# BB#94:                                # %if.then.305
	movl	-20(%rbp), %edi
	callq	gimp_image_delete
	movl	$-1, -4(%rbp)
	movl	%eax, -568(%rbp)        # 4-byte Spill
	jmp	.LBB10_126
.LBB10_95:                              # %if.end.307
                                        #   in Loop: Header=BB10_92 Depth=2
	cmpl	$5, -68(%rbp)
	je	.LBB10_97
# BB#96:                                # %if.then.310
	movl	-68(%rbp), %edi
	callq	block_name
	movabsq	$.L.str.53, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB10_126
.LBB10_97:                              # %if.end.312
                                        #   in Loop: Header=BB10_92 Depth=2
	movq	-16(%rbp), %rdi
	callq	ftell
	movq	%rax, -64(%rbp)
	movzwl	psp_ver_major, %ecx
	cmpl	$4, %ecx
	jne	.LBB10_99
# BB#98:                                # %if.then.317
                                        #   in Loop: Header=BB10_92 Depth=2
	movl	$4, %eax
	movl	%eax, %esi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	callq	fseek
	movl	%eax, -572(%rbp)        # 4-byte Spill
.LBB10_99:                              # %if.end.319
                                        #   in Loop: Header=BB10_92 Depth=2
	movl	$4, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-208(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-584(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB10_103
# BB#100:                               # %lor.lhs.false.323
                                        #   in Loop: Header=BB10_92 Depth=2
	movl	$4, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-212(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -592(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-592(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB10_103
# BB#101:                               # %lor.lhs.false.327
                                        #   in Loop: Header=BB10_92 Depth=2
	movl	$2, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-214(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-600(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB10_103
# BB#102:                               # %lor.lhs.false.331
                                        #   in Loop: Header=BB10_92 Depth=2
	movl	$2, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-216(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -608(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-608(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jae	.LBB10_104
.LBB10_103:                             # %if.then.335
	movabsq	$.L.str.54, %rdi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB10_126
.LBB10_104:                             # %if.end.336
                                        #   in Loop: Header=BB10_92 Depth=2
	movl	-208(%rbp), %eax
	movl	%eax, -208(%rbp)
	movl	-212(%rbp), %eax
	movl	%eax, -212(%rbp)
	movw	-214(%rbp), %cx
	movw	%cx, -214(%rbp)
	movw	-216(%rbp), %cx
	movw	%cx, -216(%rbp)
	movzwl	-214(%rbp), %eax
	cmpl	$2, %eax
	jle	.LBB10_106
# BB#105:                               # %if.then.340
	movabsq	$.L.str.55, %rdi
	movzwl	-214(%rbp), %esi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB10_126
.LBB10_106:                             # %if.end.342
                                        #   in Loop: Header=BB10_92 Depth=2
	movzwl	-216(%rbp), %eax
	cmpl	$3, %eax
	jle	.LBB10_108
# BB#107:                               # %if.then.346
	movabsq	$.L.str.56, %rdi
	movzwl	-216(%rbp), %esi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB10_126
.LBB10_108:                             # %if.end.348
                                        #   in Loop: Header=BB10_92 Depth=2
	movzwl	-214(%rbp), %eax
	cmpl	$1, %eax
	jne	.LBB10_110
# BB#109:                               # %if.then.352
                                        #   in Loop: Header=BB10_92 Depth=2
	movl	$3, -232(%rbp)
	jmp	.LBB10_111
.LBB10_110:                             # %if.else.353
                                        #   in Loop: Header=BB10_92 Depth=2
	movzwl	-216(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -232(%rbp)
.LBB10_111:                             # %if.end.356
                                        #   in Loop: Header=BB10_92 Depth=2
	movzwl	psp_ver_major, %eax
	cmpl	$4, %eax
	jge	.LBB10_115
# BB#112:                               # %if.then.360
                                        #   in Loop: Header=BB10_92 Depth=2
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rax
	movl	-200(%rbp), %ecx
	movl	%ecx, %esi
	addq	%rsi, %rax
	movq	%rax, %rsi
	callq	try_fseek
	cmpl	$0, %eax
	jge	.LBB10_114
# BB#113:                               # %if.then.366
	movl	$-1, -4(%rbp)
	jmp	.LBB10_126
.LBB10_114:                             # %if.end.367
                                        #   in Loop: Header=BB10_92 Depth=2
	jmp	.LBB10_115
.LBB10_115:                             # %if.end.368
                                        #   in Loop: Header=BB10_92 Depth=2
	cmpl	$0, -180(%rbp)
	jne	.LBB10_119
# BB#116:                               # %if.then.370
                                        #   in Loop: Header=BB10_92 Depth=2
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-240(%rbp), %rdx
	movl	-228(%rbp), %ecx
	movl	-232(%rbp), %r8d
	movq	-256(%rbp), %r9
	movl	-208(%rbp), %eax
	movl	%eax, (%rsp)
	callq	read_channel_data
	cmpl	$-1, %eax
	jne	.LBB10_118
# BB#117:                               # %if.then.374
	movl	$-1, -4(%rbp)
	jmp	.LBB10_126
.LBB10_118:                             # %if.end.375
                                        #   in Loop: Header=BB10_92 Depth=2
	jmp	.LBB10_119
.LBB10_119:                             # %if.end.376
                                        #   in Loop: Header=BB10_92 Depth=2
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rax
	movl	-204(%rbp), %ecx
	movl	%ecx, %esi
	addq	%rsi, %rax
	movq	%rax, %rsi
	callq	try_fseek
	cmpl	$0, %eax
	jge	.LBB10_121
# BB#120:                               # %if.then.382
	movl	$-1, -4(%rbp)
	jmp	.LBB10_126
.LBB10_121:                             # %if.end.383
                                        #   in Loop: Header=BB10_92 Depth=2
	jmp	.LBB10_92
.LBB10_122:                             # %while.end
                                        #   in Loop: Header=BB10_1 Depth=1
	leaq	-304(%rbp), %rdi
	xorl	%eax, %eax
	movq	-248(%rbp), %rsi
	movl	-220(%rbp), %r8d
	movl	-224(%rbp), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_set_rect
	movq	-256(%rbp), %rdi
	callq	gimp_drawable_flush
	movq	-256(%rbp), %rdi
	callq	gimp_drawable_detach
	movq	-240(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_free
	movq	-248(%rbp), %rdi
	callq	g_free
	jmp	.LBB10_1
.LBB10_123:                             # %while.end.384
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	-24(%rbp), %ecx
	movl	%ecx, %esi
	addq	%rsi, %rax
	movq	%rax, %rsi
	callq	try_fseek
	cmpl	$0, %eax
	jge	.LBB10_125
# BB#124:                               # %if.then.390
	movl	$-1, -4(%rbp)
	jmp	.LBB10_126
.LBB10_125:                             # %if.end.391
	movl	-192(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB10_126:                             # %return
	movl	-4(%rbp), %eax
	addq	$624, %rsp              # imm = 0x270
	popq	%rbp
	retq
.Lfunc_end10:
	.size	read_layer_block, .Lfunc_end10-read_layer_block
	.cfi_endproc

	.align	16, 0x90
	.type	read_tube_block,@function
read_tube_block:                        # @read_tube_block
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
	subq	$832, %rsp              # imm = 0x340
	leaq	-696(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%rax, %rdi
	callq	gimp_pixpipe_params_init
	movl	$2, %edx
	movl	%edx, %esi
	movl	$1, %edx
                                        # kill: RDX<def> EDX<kill>
	leaq	-34(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	callq	fread
	cmpq	$1, %rax
	jb	.LBB11_8
# BB#1:                                 # %lor.lhs.false
	movl	$513, %eax              # imm = 0x201
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-560(%rbp), %rdi
	movq	-16(%rbp), %rcx
	callq	fread
	cmpq	$1, %rax
	jb	.LBB11_8
# BB#2:                                 # %lor.lhs.false.3
	movl	$4, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-564(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -720(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-720(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB11_8
# BB#3:                                 # %lor.lhs.false.6
	movl	$4, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-568(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -728(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-728(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB11_8
# BB#4:                                 # %lor.lhs.false.9
	movl	$4, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-572(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -736(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-736(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB11_8
# BB#5:                                 # %lor.lhs.false.12
	movl	$4, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-576(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -744(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-744(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB11_8
# BB#6:                                 # %lor.lhs.false.15
	movl	$4, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-580(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -752(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-752(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jb	.LBB11_8
# BB#7:                                 # %lor.lhs.false.18
	movl	$4, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-584(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -760(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-760(%rbp), %rcx        # 8-byte Reload
	callq	fread
	cmpq	$1, %rax
	jae	.LBB11_9
.LBB11_8:                               # %if.then
	movabsq	$.L.str.77, %rdi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB11_33
.LBB11_9:                               # %if.end
	movb	$0, -47(%rbp)
	movw	-34(%rbp), %ax
	movw	%ax, -34(%rbp)
	movl	-564(%rbp), %ecx
	movl	%ecx, -696(%rbp)
	movl	-568(%rbp), %ecx
	movl	%ecx, -684(%rbp)
	movl	-572(%rbp), %ecx
	movl	%ecx, -680(%rbp)
	movl	-576(%rbp), %ecx
	movl	%ecx, -692(%rbp)
	movl	-580(%rbp), %ecx
	movl	%ecx, -580(%rbp)
	movl	-584(%rbp), %ecx
	movl	%ecx, -584(%rbp)
	movl	$1, -588(%rbp)
.LBB11_10:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-588(%rbp), %eax
	cmpl	-684(%rbp), %eax
	jge	.LBB11_13
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB11_10 Depth=1
	movl	-20(%rbp), %edi
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	imull	-588(%rbp), %ecx
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	-684(%rbp)
	movl	%eax, %esi
	callq	gimp_image_add_vguide
	movl	%eax, -764(%rbp)        # 4-byte Spill
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB11_10 Depth=1
	movl	-588(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -588(%rbp)
	jmp	.LBB11_10
.LBB11_13:                              # %for.end
	movl	$1, -588(%rbp)
.LBB11_14:                              # %for.cond.25
                                        # =>This Inner Loop Header: Depth=1
	movl	-588(%rbp), %eax
	cmpl	-680(%rbp), %eax
	jge	.LBB11_17
# BB#15:                                # %for.body.28
                                        #   in Loop: Header=BB11_14 Depth=1
	movl	-20(%rbp), %edi
	movq	-32(%rbp), %rax
	movl	4(%rax), %ecx
	imull	-588(%rbp), %ecx
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	-680(%rbp)
	movl	%eax, %esi
	callq	gimp_image_add_hguide
	movl	%eax, -768(%rbp)        # 4-byte Spill
# BB#16:                                # %for.inc.33
                                        #   in Loop: Header=BB11_14 Depth=1
	movl	-588(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -588(%rbp)
	jmp	.LBB11_14
.LBB11_17:                              # %for.end.35
	movl	$1, -688(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	xorl	%edx, %edx
	divl	-684(%rbp)
	movl	%eax, -676(%rbp)
	movq	-32(%rbp), %rcx
	movl	4(%rcx), %eax
	xorl	%esi, %esi
	movl	%esi, %edx
	divl	-680(%rbp)
	movl	%eax, -672(%rbp)
	cmpl	$0, -580(%rbp)
	jne	.LBB11_19
# BB#18:                                # %cond.true
	movabsq	$.L.str.78, %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	jmp	.LBB11_20
.LBB11_19:                              # %cond.false
	movabsq	$.L.str.80, %rax
	movabsq	$.L.str.79, %rcx
	cmpl	$1, -580(%rbp)
	cmoveq	%rcx, %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
.LBB11_20:                              # %cond.end
	movq	-776(%rbp), %rax        # 8-byte Reload
	movq	%rax, -664(%rbp)
	movl	-692(%rbp), %ecx
	movl	%ecx, -652(%rbp)
	cmpl	$0, -584(%rbp)
	jne	.LBB11_22
# BB#21:                                # %cond.true.48
	movabsq	$.L.str.78, %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	jmp	.LBB11_32
.LBB11_22:                              # %cond.false.49
	cmpl	$1, -584(%rbp)
	jne	.LBB11_24
# BB#23:                                # %cond.true.51
	movabsq	$.L.str.81, %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
	jmp	.LBB11_31
.LBB11_24:                              # %cond.false.52
	cmpl	$2, -584(%rbp)
	jne	.LBB11_26
# BB#25:                                # %cond.true.54
	movabsq	$.L.str.82, %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	jmp	.LBB11_30
.LBB11_26:                              # %cond.false.55
	cmpl	$3, -584(%rbp)
	jne	.LBB11_28
# BB#27:                                # %cond.true.57
	movabsq	$.L.str.83, %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	jmp	.LBB11_29
.LBB11_28:                              # %cond.false.58
	movabsq	$.L.str.80, %rax
	movabsq	$.L.str.84, %rcx
	cmpl	$4, -584(%rbp)
	cmoveq	%rcx, %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
.LBB11_29:                              # %cond.end.61
	movq	-808(%rbp), %rax        # 8-byte Reload
	movq	%rax, -800(%rbp)        # 8-byte Spill
.LBB11_30:                              # %cond.end.63
	movq	-800(%rbp), %rax        # 8-byte Reload
	movq	%rax, -792(%rbp)        # 8-byte Spill
.LBB11_31:                              # %cond.end.65
	movq	-792(%rbp), %rax        # 8-byte Reload
	movq	%rax, -784(%rbp)        # 8-byte Spill
.LBB11_32:                              # %cond.end.67
	movq	-784(%rbp), %rax        # 8-byte Reload
	leaq	-696(%rbp), %rdi
	movq	%rax, -632(%rbp)
	callq	gimp_pixpipe_params_build
	movabsq	$.L.str.85, %rdi
	movl	$1, %esi
	movq	%rax, -712(%rbp)
	movq	-712(%rbp), %rax
	movq	%rdi, -816(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -820(%rbp)        # 4-byte Spill
	callq	strlen
	addq	$1, %rax
	movl	%eax, %esi
	movq	-712(%rbp), %rcx
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movl	-820(%rbp), %edx        # 4-byte Reload
	movl	%esi, -824(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-824(%rbp), %edx        # 4-byte Reload
	callq	gimp_parasite_new
	movq	%rax, -704(%rbp)
	movl	-20(%rbp), %edi
	movq	-704(%rbp), %rsi
	callq	gimp_image_attach_parasite
	movq	-704(%rbp), %rdi
	movl	%eax, -828(%rbp)        # 4-byte Spill
	callq	gimp_parasite_free
	movq	-712(%rbp), %rdi
	callq	g_free
	movl	$0, -4(%rbp)
.LBB11_33:                              # %return
	movl	-4(%rbp), %eax
	addq	$832, %rsp              # imm = 0x340
	popq	%rbp
	retq
.Lfunc_end11:
	.size	read_tube_block, .Lfunc_end11-read_tube_block
	.cfi_endproc

	.align	16, 0x90
	.type	block_name,@function
block_name:                             # @block_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jl	.LBB12_3
# BB#1:                                 # %land.lhs.true
	cmpl	$18, -12(%rbp)
	jg	.LBB12_3
# BB#2:                                 # %if.then
	movslq	-12(%rbp), %rax
	movq	block_name.block_names(,%rax,8), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB12_4
.LBB12_3:                               # %if.end
	movq	block_name.err_name, %rdi
	callq	g_free
	movabsq	$.L.str.104, %rdi
	movl	-12(%rbp), %esi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, block_name.err_name
	movq	block_name.err_name, %rax
	movq	%rax, -8(%rbp)
.LBB12_4:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	block_name, .Lfunc_end12-block_name
	.cfi_endproc

	.align	16, 0x90
	.type	try_fseek,@function
try_fseek:                              # @try_fseek
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	callq	fseek
	cmpl	$0, %eax
	jge	.LBB13_2
# BB#1:                                 # %if.then
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movabsq	$.L.str.105, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movq	-16(%rbp), %rdi
	callq	fclose
	movl	$-1, -4(%rbp)
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jmp	.LBB13_3
.LBB13_2:                               # %if.end
	movl	$0, -4(%rbp)
.LBB13_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	try_fseek, .Lfunc_end13-try_fseek
	.cfi_endproc

	.align	16, 0x90
	.type	swab_rect,@function
swab_rect:                              # @swab_rect
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, (%rdi)
	movq	-8(%rbp), %rdi
	movl	4(%rdi), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 4(%rdi)
	movq	-8(%rbp), %rdi
	movl	8(%rdi), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 8(%rdi)
	movq	-8(%rbp), %rdi
	movl	12(%rdi), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, 12(%rdi)
	popq	%rbp
	retq
.Lfunc_end14:
	.size	swab_rect, .Lfunc_end14-swab_rect
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_mode_from_psp_blend_mode,@function
gimp_layer_mode_from_psp_blend_mode:    # @gimp_layer_mode_from_psp_blend_mode
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
	movl	%edi, -8(%rbp)
	movl	%edi, %eax
	testl	%edi, %edi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	je	.LBB15_1
	jmp	.LBB15_25
.LBB15_25:                              # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -16(%rbp)         # 4-byte Spill
	je	.LBB15_2
	jmp	.LBB15_26
.LBB15_26:                              # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	je	.LBB15_3
	jmp	.LBB15_27
.LBB15_27:                              # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB15_4
	jmp	.LBB15_28
.LBB15_28:                              # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB15_5
	jmp	.LBB15_29
.LBB15_29:                              # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$5, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB15_6
	jmp	.LBB15_30
.LBB15_30:                              # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$6, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB15_7
	jmp	.LBB15_31
.LBB15_31:                              # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$7, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB15_8
	jmp	.LBB15_32
.LBB15_32:                              # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB15_9
	jmp	.LBB15_33
.LBB15_33:                              # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$9, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB15_10
	jmp	.LBB15_34
.LBB15_34:                              # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$10, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB15_11
	jmp	.LBB15_35
.LBB15_35:                              # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$11, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB15_12
	jmp	.LBB15_36
.LBB15_36:                              # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$12, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB15_13
	jmp	.LBB15_37
.LBB15_37:                              # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$13, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB15_14
	jmp	.LBB15_38
.LBB15_38:                              # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$14, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB15_15
	jmp	.LBB15_39
.LBB15_39:                              # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$15, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB15_16
	jmp	.LBB15_40
.LBB15_40:                              # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$16, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB15_17
	jmp	.LBB15_41
.LBB15_41:                              # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$17, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB15_19
	jmp	.LBB15_42
.LBB15_42:                              # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$18, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB15_20
	jmp	.LBB15_43
.LBB15_43:                              # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$19, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB15_21
	jmp	.LBB15_44
.LBB15_44:                              # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$20, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB15_22
	jmp	.LBB15_45
.LBB15_45:                              # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$255, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB15_18
	jmp	.LBB15_23
.LBB15_1:                               # %sw.bb
	movl	$0, -4(%rbp)
	jmp	.LBB15_24
.LBB15_2:                               # %sw.bb.1
	movl	$9, -4(%rbp)
	jmp	.LBB15_24
.LBB15_3:                               # %sw.bb.2
	movl	$10, -4(%rbp)
	jmp	.LBB15_24
.LBB15_4:                               # %sw.bb.3
	movl	$11, -4(%rbp)
	jmp	.LBB15_24
.LBB15_5:                               # %sw.bb.4
	movl	$12, -4(%rbp)
	jmp	.LBB15_24
.LBB15_6:                               # %sw.bb.5
	movl	$13, -4(%rbp)
	jmp	.LBB15_24
.LBB15_7:                               # %sw.bb.6
	movl	$14, -4(%rbp)
	jmp	.LBB15_24
.LBB15_8:                               # %sw.bb.7
	movl	$3, -4(%rbp)
	jmp	.LBB15_24
.LBB15_9:                               # %sw.bb.8
	movl	$4, -4(%rbp)
	jmp	.LBB15_24
.LBB15_10:                              # %sw.bb.9
	movl	$1, -4(%rbp)
	jmp	.LBB15_24
.LBB15_11:                              # %sw.bb.10
	movl	$5, -4(%rbp)
	jmp	.LBB15_24
.LBB15_12:                              # %sw.bb.11
	movl	$18, -4(%rbp)
	jmp	.LBB15_24
.LBB15_13:                              # %sw.bb.12
	movl	$19, -4(%rbp)
	jmp	.LBB15_24
.LBB15_14:                              # %sw.bb.13
	movl	$6, -4(%rbp)
	jmp	.LBB15_24
.LBB15_15:                              # %sw.bb.14
	movl	$16, -4(%rbp)
	jmp	.LBB15_24
.LBB15_16:                              # %sw.bb.15
	movl	$17, -4(%rbp)
	jmp	.LBB15_24
.LBB15_17:                              # %sw.bb.16
	movl	$-1, -4(%rbp)
	jmp	.LBB15_24
.LBB15_18:                              # %sw.bb.17
	movl	$-1, -4(%rbp)
	jmp	.LBB15_24
.LBB15_19:                              # %sw.bb.18
	movl	$-1, -4(%rbp)
	jmp	.LBB15_24
.LBB15_20:                              # %sw.bb.19
	movl	$-1, -4(%rbp)
	jmp	.LBB15_24
.LBB15_21:                              # %sw.bb.20
	movl	$-1, -4(%rbp)
	jmp	.LBB15_24
.LBB15_22:                              # %sw.bb.21
	movl	$-1, -4(%rbp)
	jmp	.LBB15_24
.LBB15_23:                              # %sw.epilog
	movl	$-1, -4(%rbp)
.LBB15_24:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_layer_mode_from_psp_blend_mode, .Lfunc_end15-gimp_layer_mode_from_psp_blend_mode
	.cfi_endproc

	.align	16, 0x90
	.type	blend_mode_name,@function
blend_mode_name:                        # @blend_mode_name
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
	subq	$16, %rsp
	movl	%edi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jb	.LBB16_3
# BB#1:                                 # %land.lhs.true
	cmpl	$16, -12(%rbp)
	ja	.LBB16_3
# BB#2:                                 # %if.then
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	blend_mode_name.blend_mode_names(,%rcx,8), %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB16_4
.LBB16_3:                               # %if.end
	movq	blend_mode_name.err_name, %rdi
	callq	g_free
	movabsq	$.L.str.74, %rdi
	movl	-12(%rbp), %esi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, blend_mode_name.err_name
	movq	blend_mode_name.err_name, %rax
	movq	%rax, -8(%rbp)
.LBB16_4:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	blend_mode_name, .Lfunc_end16-blend_mode_name
	.cfi_endproc

	.align	16, 0x90
	.type	read_channel_data,@function
read_channel_data:                      # @read_channel_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$400, %rsp              # imm = 0x190
	movl	16(%rbp), %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	%eax, -52(%rbp)
	movq	-48(%rbp), %rdx
	movl	4(%rdx), %eax
	movl	%eax, -64(%rbp)
	movq	-48(%rbp), %rdx
	movl	8(%rdx), %eax
	movl	%eax, -68(%rbp)
	movl	-64(%rbp), %ecx
	imull	%eax, %ecx
	movl	%ecx, -72(%rbp)
	movq	$0, -88(%rbp)
	movq	-24(%rbp), %rdx
	movzwl	18(%rdx), %eax
	testl	%eax, %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
	je	.LBB17_1
	jmp	.LBB17_55
.LBB17_55:                              # %entry
	movl	-268(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
	je	.LBB17_22
	jmp	.LBB17_56
.LBB17_56:                              # %entry
	movl	-268(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -276(%rbp)        # 4-byte Spill
	je	.LBB17_39
	jmp	.LBB17_53
.LBB17_1:                               # %sw.bb
	cmpl	$1, -36(%rbp)
	jne	.LBB17_10
# BB#2:                                 # %if.then
	movl	$4, %eax
	movl	-64(%rbp), %ecx
	movl	%eax, -280(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-280(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB17_4
# BB#3:                                 # %if.then.6
	movl	$1, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rdi
	movl	-68(%rbp), %eax
	imull	-64(%rbp), %eax
	movslq	%eax, %rsi
	movq	-16(%rbp), %rcx
	callq	fread
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB17_9
.LBB17_4:                               # %if.else
	movl	$0, -60(%rbp)
.LBB17_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB17_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB17_5 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movslq	-60(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	(%rsi,%rcx,8), %rdi
	movslq	-64(%rbp), %rsi
	movq	-16(%rbp), %rcx
	callq	fread
	movl	$1, %edx
	movl	$4, %r8d
	movq	-16(%rbp), %rdi
	movl	-64(%rbp), %r9d
	movq	%rax, -296(%rbp)        # 8-byte Spill
	movl	%r9d, %eax
	movl	%edx, -300(%rbp)        # 4-byte Spill
	cltd
	idivl	%r8d
	subl	%edx, %r8d
	movslq	%r8d, %rsi
	movl	-300(%rbp), %edx        # 4-byte Reload
	callq	fseek
	movl	%eax, -304(%rbp)        # 4-byte Spill
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB17_5 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB17_5
.LBB17_8:                               # %for.end
	jmp	.LBB17_9
.LBB17_9:                               # %if.end
	jmp	.LBB17_21
.LBB17_10:                              # %if.else.17
	movslq	-64(%rbp), %rdi
	callq	g_malloc
	movq	%rax, -80(%rbp)
	movl	$0, -60(%rbp)
.LBB17_11:                              # %for.cond.20
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_15 Depth 2
	movl	-60(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB17_20
# BB#12:                                # %for.body.23
                                        #   in Loop: Header=BB17_11 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rdi
	movslq	-64(%rbp), %rsi
	movq	-16(%rbp), %rcx
	callq	fread
	movl	$4, %r8d
	movl	-64(%rbp), %r9d
	movq	%rax, -312(%rbp)        # 8-byte Spill
	movl	%r9d, %eax
	cltd
	idivl	%r8d
	cmpl	$0, %edx
	je	.LBB17_14
# BB#13:                                # %if.then.27
                                        #   in Loop: Header=BB17_11 Depth=1
	movl	$1, %edx
	movl	$4, %eax
	movq	-16(%rbp), %rdi
	movl	-64(%rbp), %ecx
	movl	%eax, -316(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	movl	%edx, -320(%rbp)        # 4-byte Spill
	cltd
	movl	-316(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	subl	%edx, %ecx
	movslq	%ecx, %rsi
	movl	-320(%rbp), %edx        # 4-byte Reload
	callq	fseek
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB17_14:                              # %if.end.32
                                        #   in Loop: Header=BB17_11 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -216(%rbp)
	movslq	-60(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	-40(%rbp), %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movq	%rax, -224(%rbp)
	movl	$0, -56(%rbp)
.LBB17_15:                              # %for.cond.35
                                        #   Parent Loop BB17_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-56(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB17_18
# BB#16:                                # %for.body.38
                                        #   in Loop: Header=BB17_15 Depth=2
	movq	-216(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -216(%rbp)
	movb	(%rax), %dl
	movq	-224(%rbp), %rax
	movb	%dl, (%rax)
	movl	-36(%rbp), %esi
	movq	-224(%rbp), %rax
	movl	%esi, %esi
	movl	%esi, %ecx
	addq	%rcx, %rax
	movq	%rax, -224(%rbp)
# BB#17:                                # %for.inc.41
                                        #   in Loop: Header=BB17_15 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB17_15
.LBB17_18:                              # %for.end.43
                                        #   in Loop: Header=BB17_11 Depth=1
	jmp	.LBB17_19
.LBB17_19:                              # %for.inc.44
                                        #   in Loop: Header=BB17_11 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB17_11
.LBB17_20:                              # %for.end.46
	movq	-80(%rbp), %rdi
	callq	g_free
.LBB17_21:                              # %if.end.47
	jmp	.LBB17_53
.LBB17_22:                              # %sw.bb.48
	movl	$127, %eax
	movl	%eax, %edi
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	-40(%rbp), %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -232(%rbp)
	movq	-232(%rbp), %rcx
	movl	-72(%rbp), %eax
	imull	-36(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -240(%rbp)
	callq	g_malloc
	movq	%rax, -80(%rbp)
.LBB17_23:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_33 Depth 2
	movq	-232(%rbp), %rax
	cmpq	-240(%rbp), %rax
	jae	.LBB17_38
# BB#24:                                # %while.body
                                        #   in Loop: Header=BB17_23 Depth=1
	leaq	-89(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-336(%rbp), %rcx        # 8-byte Reload
	callq	fread
	movzbl	-89(%rbp), %r8d
	cmpl	$128, %r8d
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jle	.LBB17_26
# BB#25:                                # %if.then.63
                                        #   in Loop: Header=BB17_23 Depth=1
	leaq	-90(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %ecx
	movzbl	-89(%rbp), %eax
	subl	$128, %eax
	movb	%al, %dl
	movb	%dl, -89(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -352(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	-352(%rbp), %rcx        # 8-byte Reload
	callq	fread
	movq	-80(%rbp), %rdi
	movzbl	-90(%rbp), %r8d
	movb	%r8b, %r9b
	movzbl	-89(%rbp), %r8d
	movl	%r8d, %edx
	movzbl	%r9b, %esi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	memset
	jmp	.LBB17_27
.LBB17_26:                              # %if.else.70
                                        #   in Loop: Header=BB17_23 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movq	-80(%rbp), %rdi
	movzbl	-89(%rbp), %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	callq	fread
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB17_27:                              # %if.end.73
                                        #   in Loop: Header=BB17_23 Depth=1
	movzbl	-89(%rbp), %eax
	movl	%eax, %ecx
	movq	-240(%rbp), %rdx
	movq	-232(%rbp), %rsi
	subq	%rsi, %rdx
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rax
	cqto
	idivq	%rsi
	cmpq	%rax, %rcx
	jge	.LBB17_29
# BB#28:                                # %cond.true
                                        #   in Loop: Header=BB17_23 Depth=1
	movzbl	-89(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	jmp	.LBB17_30
.LBB17_29:                              # %cond.false
                                        #   in Loop: Header=BB17_23 Depth=1
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rcx
	subq	%rcx, %rax
	movl	-36(%rbp), %edx
	movl	%edx, %ecx
	cqto
	idivq	%rcx
	movq	%rax, -376(%rbp)        # 8-byte Spill
.LBB17_30:                              # %cond.end
                                        #   in Loop: Header=BB17_23 Depth=1
	movq	-376(%rbp), %rax        # 8-byte Reload
	movb	%al, %cl
	movb	%cl, -89(%rbp)
	cmpl	$1, -36(%rbp)
	jne	.LBB17_32
# BB#31:                                # %if.then.87
                                        #   in Loop: Header=BB17_23 Depth=1
	movq	-232(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movzbl	-89(%rbp), %eax
	movl	%eax, %edx
	callq	memmove
	movzbl	-89(%rbp), %eax
	movq	-232(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -232(%rbp)
	jmp	.LBB17_37
.LBB17_32:                              # %if.else.92
                                        #   in Loop: Header=BB17_23 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -248(%rbp)
	movl	$0, -56(%rbp)
.LBB17_33:                              # %for.cond.94
                                        #   Parent Loop BB17_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-56(%rbp), %eax
	movzbl	-89(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB17_36
# BB#34:                                # %for.body.98
                                        #   in Loop: Header=BB17_33 Depth=2
	movq	-248(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -248(%rbp)
	movb	(%rax), %dl
	movq	-232(%rbp), %rax
	movb	%dl, (%rax)
	movl	-36(%rbp), %esi
	movq	-232(%rbp), %rax
	movl	%esi, %esi
	movl	%esi, %ecx
	addq	%rcx, %rax
	movq	%rax, -232(%rbp)
# BB#35:                                # %for.inc.102
                                        #   in Loop: Header=BB17_33 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB17_33
.LBB17_36:                              # %for.end.104
                                        #   in Loop: Header=BB17_23 Depth=1
	jmp	.LBB17_37
.LBB17_37:                              # %if.end.105
                                        #   in Loop: Header=BB17_23 Depth=1
	jmp	.LBB17_23
.LBB17_38:                              # %while.end
	movq	-80(%rbp), %rdi
	callq	g_free
	jmp	.LBB17_53
.LBB17_39:                              # %sw.bb.106
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	callq	g_malloc
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movl	-52(%rbp), %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rcx
	callq	fread
	leaq	-208(%rbp), %rdi
	movabsq	$.L.str.75, %rsi
	movl	$112, %edx
	movabsq	$psp_zfree, %rcx
	movabsq	$psp_zalloc, %r8
	movq	-80(%rbp), %r9
	movq	%r9, -208(%rbp)
	movl	-52(%rbp), %r10d
	movl	%r10d, -200(%rbp)
	movq	%r8, -144(%rbp)
	movq	%rcx, -136(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -128(%rbp)
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	inflateInit_
	cmpl	$0, %eax
	je	.LBB17_41
# BB#40:                                # %if.then.114
	movabsq	$.L.str.76, %rdi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB17_54
.LBB17_41:                              # %if.end.115
	cmpl	$1, -36(%rbp)
	jne	.LBB17_43
# BB#42:                                # %if.then.118
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	jmp	.LBB17_44
.LBB17_43:                              # %if.else.120
	movslq	-72(%rbp), %rdi
	callq	g_malloc
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -184(%rbp)
.LBB17_44:                              # %if.end.124
	leaq	-208(%rbp), %rdi
	movl	$4, %esi
	movl	-72(%rbp), %eax
	movl	%eax, -176(%rbp)
	callq	inflate
	cmpl	$1, %eax
	je	.LBB17_46
# BB#45:                                # %if.then.128
	movabsq	$.L.str.76, %rdi
	movb	$0, %al
	callq	g_message
	leaq	-208(%rbp), %rdi
	callq	inflateEnd
	movl	$-1, -4(%rbp)
	movl	%eax, -388(%rbp)        # 4-byte Spill
	jmp	.LBB17_54
.LBB17_46:                              # %if.end.130
	leaq	-208(%rbp), %rdi
	callq	inflateEnd
	movq	-80(%rbp), %rdi
	movl	%eax, -392(%rbp)        # 4-byte Spill
	callq	g_free
	cmpl	$1, -36(%rbp)
	jbe	.LBB17_52
# BB#47:                                # %if.then.134
	movq	-88(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -264(%rbp)
	movl	$0, -56(%rbp)
.LBB17_48:                              # %for.cond.140
                                        # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB17_51
# BB#49:                                # %for.body.143
                                        #   in Loop: Header=BB17_48 Depth=1
	movq	-256(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -256(%rbp)
	movb	(%rax), %dl
	movq	-264(%rbp), %rax
	movb	%dl, (%rax)
	movl	-36(%rbp), %esi
	movq	-264(%rbp), %rax
	movl	%esi, %esi
	movl	%esi, %ecx
	addq	%rcx, %rax
	movq	%rax, -264(%rbp)
# BB#50:                                # %for.inc.147
                                        #   in Loop: Header=BB17_48 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB17_48
.LBB17_51:                              # %for.end.149
	movq	-88(%rbp), %rdi
	callq	g_free
.LBB17_52:                              # %if.end.150
	jmp	.LBB17_53
.LBB17_53:                              # %sw.epilog
	movl	$0, -4(%rbp)
.LBB17_54:                              # %return
	movl	-4(%rbp), %eax
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end17:
	.size	read_channel_data, .Lfunc_end17-read_channel_data
	.cfi_endproc

	.align	16, 0x90
	.type	psp_zalloc,@function
psp_zalloc:                             # @psp_zalloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %edx
	imull	-16(%rbp), %edx
	movl	%edx, %edx
	movl	%edx, %edi
	callq	g_malloc
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	psp_zalloc, .Lfunc_end18-psp_zalloc
	.cfi_endproc

	.align	16, 0x90
	.type	psp_zfree,@function
psp_zfree:                              # @psp_zfree
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	psp_zfree, .Lfunc_end19-psp_zfree
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
	.quad	.L.str.3
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

	.type	query.load_return_vals,@object # @query.load_return_vals
	.section	.rodata,"a",@progbits
	.align	16
query.load_return_vals:
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.5
	.quad	.L.str.6
	.size	query.load_return_vals, 24

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"image"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Output image"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"file-psp-load"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"loads images from the Paint Shop Pro PSP file format"
	.size	.L.str.8, 53

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"This plug-in loads and saves images in Paint Shop Pro's native PSP format. Vector layers aren't handled. Saving isn't yet implemented."
	.size	.L.str.9, 135

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Tor Lillqvist"
	.size	.L.str.10, 14

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"1999"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Paint Shop Pro image"
	.size	.L.str.12, 21

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"image/x-psp"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"psp,tub,pspimage"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.zero	1
	.size	.L.str.15, 1

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"0,string,Paint\\040Shop\\040Pro\\040Image\\040File\n\032"
	.size	.L.str.16, 49

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.17, 20

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"UTF-8"
	.size	.L.str.18, 6

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"file-psp-save"
	.size	.L.str.19, 14

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"file-psp"
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"PSP"
	.size	.L.str.21, 4

	.type	psvals,@object          # @psvals
	.data
	.align	4
psvals:
	.long	2                       # 0x2
	.size	psvals, 4

	.type	.L.str.22,@object       # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"rb"
	.size	.L.str.22, 3

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.23, 36

	.type	psp_ver_major,@object   # @psp_ver_major
	.local	psp_ver_major
	.comm	psp_ver_major,2,2
	.type	psp_ver_minor,@object   # @psp_ver_minor
	.local	psp_ver_minor
	.comm	psp_ver_minor,2,2
	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Error reading file header"
	.size	.L.str.24, 26

	.type	.L.str.25,@object       # @.str.25
	.section	.rodata,"a",@progbits
.L.str.25:
	.asciz	"Paint Shop Pro Image File\n\032\000\000\000\000\000"
	.size	.L.str.25, 33

	.type	.L.str.26,@object       # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"Incorrect file signature"
	.size	.L.str.26, 25

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Unsupported PSP file format version %d.%d, only knows 3.0 (and later?)"
	.size	.L.str.27, 71

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Unsupported PSP file format version %d.%d"
	.size	.L.str.28, 42

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Duplicate General Image Attributes block"
	.size	.L.str.29, 41

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Missing General Image Attributes block"
	.size	.L.str.30, 39

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Sub-block %s should not occur at main level of file"
	.size	.L.str.31, 52

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Unrecognized block id %d"
	.size	.L.str.32, 25

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Error reading block header"
	.size	.L.str.33, 27

	.type	.L.str.34,@object       # @.str.34
	.section	.rodata,"a",@progbits
.L.str.34:
	.asciz	"~BK\000"
	.size	.L.str.34, 5

	.type	.L.str.35,@object       # @.str.35
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.35:
	.asciz	"Invalid block header"
	.size	.L.str.35, 21

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Invalid general image attribute chunk size"
	.size	.L.str.36, 43

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Error reading general image attribute block"
	.size	.L.str.37, 44

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Unknown compression type %d"
	.size	.L.str.38, 28

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Unsupported bit depth %d"
	.size	.L.str.39, 25

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Error reading creator keyword chunk"
	.size	.L.str.40, 36

	.type	.L.str.41,@object       # @.str.41
	.section	.rodata,"a",@progbits
.L.str.41:
	.asciz	"~FL\000"
	.size	.L.str.41, 5

	.type	.L.str.42,@object       # @.str.42
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.42:
	.asciz	"Invalid keyword chunk header"
	.size	.L.str.42, 29

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Error reading creator keyword data"
	.size	.L.str.43, 35

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"\n"
	.size	.L.str.44, 2

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Copyright "
	.size	.L.str.45, 11

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"gimp-comment"
	.size	.L.str.46, 13

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Invalid layer sub-block %s, should be LAYER"
	.size	.L.str.47, 44

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Error reading layer information chunk"
	.size	.L.str.48, 38

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Floating selection restored as normal layer"
	.size	.L.str.49, 44

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Unsupported PSP layer blend mode %s for layer %s, setting layer invisible"
	.size	.L.str.50, 74

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Invalid layer dimensions: %dx%d"
	.size	.L.str.51, 32

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Error creating layer"
	.size	.L.str.52, 21

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Invalid layer sub-block %s, should be CHANNEL"
	.size	.L.str.53, 46

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Error reading channel information chunk"
	.size	.L.str.54, 40

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Invalid bitmap type %d in channel information chunk"
	.size	.L.str.55, 52

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Invalid channel type %d in channel information chunk"
	.size	.L.str.56, 53

	.type	blend_mode_name.blend_mode_names,@object # @blend_mode_name.blend_mode_names
	.data
	.align	16
blend_mode_name.blend_mode_names:
	.quad	.L.str.57
	.quad	.L.str.58
	.quad	.L.str.59
	.quad	.L.str.60
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	.L.str.63
	.quad	.L.str.64
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	.L.str.67
	.quad	.L.str.68
	.quad	.L.str.69
	.quad	.L.str.70
	.quad	.L.str.71
	.quad	.L.str.72
	.quad	.L.str.73
	.size	blend_mode_name.blend_mode_names, 136

	.type	.L.str.57,@object       # @.str.57
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.57:
	.asciz	"NORMAL"
	.size	.L.str.57, 7

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"DARKEN"
	.size	.L.str.58, 7

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"LIGHTEN"
	.size	.L.str.59, 8

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"HUE"
	.size	.L.str.60, 4

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"SATURATION"
	.size	.L.str.61, 11

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"COLOR"
	.size	.L.str.62, 6

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"LUMINOSITY"
	.size	.L.str.63, 11

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"MULTIPLY"
	.size	.L.str.64, 9

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"SCREEN"
	.size	.L.str.65, 7

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"DISSOLVE"
	.size	.L.str.66, 9

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"OVERLAY"
	.size	.L.str.67, 8

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"HARD_LIGHT"
	.size	.L.str.68, 11

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"SOFT_LIGHT"
	.size	.L.str.69, 11

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"DIFFERENCE"
	.size	.L.str.70, 11

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"DODGE"
	.size	.L.str.71, 6

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"BURN"
	.size	.L.str.72, 5

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"EXCLUSION"
	.size	.L.str.73, 10

	.type	blend_mode_name.err_name,@object # @blend_mode_name.err_name
	.local	blend_mode_name.err_name
	.comm	blend_mode_name.err_name,8,8
	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"unknown layer blend mode %d"
	.size	.L.str.74, 28

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"1.2.7"
	.size	.L.str.75, 6

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"zlib error"
	.size	.L.str.76, 11

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"Error reading tube data chunk"
	.size	.L.str.77, 30

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"random"
	.size	.L.str.78, 7

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"constant"
	.size	.L.str.79, 9

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"default"
	.size	.L.str.80, 8

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"incremental"
	.size	.L.str.81, 12

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"angular"
	.size	.L.str.82, 8

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"pressure"
	.size	.L.str.83, 9

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"velocity"
	.size	.L.str.84, 9

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"gimp-brush-pipe-parameters"
	.size	.L.str.85, 27

	.type	block_name.block_names,@object # @block_name.block_names
	.data
	.align	16
block_name.block_names:
	.quad	.L.str.86
	.quad	.L.str.87
	.quad	.L.str.62
	.quad	.L.str.88
	.quad	.L.str.89
	.quad	.L.str.90
	.quad	.L.str.91
	.quad	.L.str.92
	.quad	.L.str.93
	.quad	.L.str.94
	.quad	.L.str.95
	.quad	.L.str.96
	.quad	.L.str.97
	.quad	.L.str.98
	.quad	.L.str.99
	.quad	.L.str.100
	.quad	.L.str.101
	.quad	.L.str.102
	.quad	.L.str.103
	.size	block_name.block_names, 152

	.type	.L.str.86,@object       # @.str.86
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.86:
	.asciz	"IMAGE"
	.size	.L.str.86, 6

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"CREATOR"
	.size	.L.str.87, 8

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"LAYER_START"
	.size	.L.str.88, 12

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"LAYER"
	.size	.L.str.89, 6

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"CHANNEL"
	.size	.L.str.90, 8

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"SELECTION"
	.size	.L.str.91, 10

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"ALPHA_BANK"
	.size	.L.str.92, 11

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"ALPHA_CHANNEL"
	.size	.L.str.93, 14

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"THUMBNAIL"
	.size	.L.str.94, 10

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"EXTENDED_DATA"
	.size	.L.str.95, 14

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"TUBE"
	.size	.L.str.96, 5

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"ADJUSTMENT_EXTENSION"
	.size	.L.str.97, 21

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"VECTOR_EXTENSION_BLOCK"
	.size	.L.str.98, 23

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"SHAPE_BLOCK"
	.size	.L.str.99, 12

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"PAINTSTYLE_BLOCK"
	.size	.L.str.100, 17

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"COMPOSITE_IMAGE_BANK_BLOCK"
	.size	.L.str.101, 27

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"COMPOSITE_ATTRIBUTES_BLOCK"
	.size	.L.str.102, 27

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"JPEG_BLOCK"
	.size	.L.str.103, 11

	.type	block_name.err_name,@object # @block_name.err_name
	.local	block_name.err_name
	.comm	block_name.err_name,8,8
	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"id=%d"
	.size	.L.str.104, 6

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"Seek error: %s"
	.size	.L.str.105, 15

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"Data Compression"
	.size	.L.str.106, 17

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"compression\004None"
	.size	.L.str.107, 17

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"RLE"
	.size	.L.str.108, 4

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"LZ77"
	.size	.L.str.109, 5

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"Saving not implemented yet"
	.size	.L.str.110, 27


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
