	.text
	.file	"file-png.bc"
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
	subq	$216, %rsp
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
	movabsq	$.L.str.32, %rcx
	movabsq	$.L.str.33, %r8
	movabsq	$.L.str.34, %r9
	movabsq	$.L.str.35, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movl	$1, %r10d
	movl	$3, %ebx
	movabsq	$query.load_args, %r14
	movabsq	$query.load_return_vals, %r15
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	%r15, 48(%rsp)
	movl	%r10d, -44(%rbp)        # 4-byte Spill
	movq	%r11, -56(%rbp)         # 8-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.29, %rdi
	movabsq	$.L.str.36, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.29, %rdi
	movabsq	$.L.str.37, %rsi
	movabsq	$.L.str.38, %rdx
	movabsq	$.L.str.39, %rcx
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	gimp_register_magic_load_handler
	movabsq	$.L.str.40, %rdi
	movabsq	$.L.str.41, %rsi
	movabsq	$.L.str.42, %rdx
	movabsq	$.L.str.32, %rcx
	movabsq	$.L.str.33, %r8
	movabsq	$.L.str.34, %r9
	movabsq	$.L.str.35, %r11
	movabsq	$.L.str.43, %r14
	movl	$1, %r10d
	movl	$12, %ebx
	xorl	%r12d, %r12d
	movabsq	$query.save_args, %r15
	xorl	%r13d, %r13d
                                        # kill: R13<def> R13D<kill>
	movq	%r11, (%rsp)
	movq	%r14, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$12, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movq	%r13, -80(%rbp)         # 8-byte Spill
	movl	%r10d, -84(%rbp)        # 4-byte Spill
	movl	%r12d, -88(%rbp)        # 4-byte Spill
	movl	%ebx, -92(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.44, %rdi
	movabsq	$.L.str.41, %rsi
	movabsq	$.L.str.45, %rdx
	movabsq	$.L.str.32, %rcx
	movabsq	$.L.str.33, %r8
	movabsq	$.L.str.34, %r9
	movabsq	$.L.str.35, %r11
	movabsq	$.L.str.43, %r14
	movl	$1, %eax
	movl	$14, %r10d
	xorl	%ebx, %ebx
	movabsq	$query.save_args2, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%r11, (%rsp)
	movq	%r14, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$14, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -104(%rbp)        # 8-byte Spill
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movl	%ebx, -112(%rbp)        # 4-byte Spill
	movl	%r10d, -116(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.46, %rdi
	movabsq	$.L.str.41, %rsi
	movabsq	$.L.str.47, %rdx
	movabsq	$.L.str.32, %rcx
	movabsq	$.L.str.33, %r8
	movabsq	$.L.str.34, %r9
	movabsq	$.L.str.35, %r11
	movabsq	$.L.str.43, %r14
	movl	$1, %eax
	movl	$5, %r10d
	xorl	%ebx, %ebx
	movabsq	$query.save_args_defaults, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%r11, (%rsp)
	movq	%r14, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$5, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -128(%rbp)        # 8-byte Spill
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movl	%ebx, -136(%rbp)        # 4-byte Spill
	movl	%r10d, -140(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.46, %rdi
	movabsq	$.L.str.36, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.46, %rdi
	movabsq	$.L.str.37, %rsi
	movabsq	$.L.str.38, %rdx
	movl	%eax, -144(%rbp)        # 4-byte Spill
	callq	gimp_register_save_handler
	movabsq	$.L.str.48, %rdi
	movabsq	$.L.str.49, %rsi
	movabsq	$.L.str.50, %rdx
	movabsq	$.L.str.32, %rcx
	movabsq	$.L.str.33, %r8
	movabsq	$.L.str.34, %r9
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movl	$1, %r10d
	xorl	%ebx, %ebx
	movl	$9, %r12d
	movabsq	$query.save_get_defaults_return_vals, %r14
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	$9, 32(%rsp)
	movq	$0, 40(%rsp)
	movq	%r14, 48(%rsp)
	movl	%eax, -148(%rbp)        # 4-byte Spill
	movq	%r11, -160(%rbp)        # 8-byte Spill
	movl	%r12d, -164(%rbp)       # 4-byte Spill
	movl	%ebx, -168(%rbp)        # 4-byte Spill
	movl	%r10d, -172(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.51, %rdi
	movabsq	$.L.str.52, %rsi
	movabsq	$.L.str.53, %rdx
	movabsq	$.L.str.32, %rcx
	movabsq	$.L.str.33, %r8
	movabsq	$.L.str.34, %r9
	xorl	%eax, %eax
	movl	%eax, %r11d
	movl	$1, %eax
	movl	$9, %r10d
	xorl	%ebx, %ebx
	movabsq	$query.save_args_set_defaults, %r14
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$9, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r11, -184(%rbp)        # 8-byte Spill
	movl	%ebx, -188(%rbp)        # 4-byte Spill
	movl	%r10d, -192(%rbp)       # 4-byte Spill
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	addq	$216, %rsp
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -48(%rbp)
	movl	$0, -64(%rbp)
	movq	$0, -72(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.54, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.54, %rdi
	movabsq	$.L.str.55, %rsi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.54, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -104(%rbp)        # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	$0, run.values+8
	movq	-8(%rbp), %rdi
	movl	$.L.str.29, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_7
# BB#3:                                 # %if.then
	leaq	-72(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	cmpl	$0, -44(%rbp)
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %esi
	callq	load_image
	movl	%eax, -52(%rbp)
	cmpl	$-1, -52(%rbp)
	je	.LBB1_5
# BB#4:                                 # %if.then.11
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$13, run.values+40
	movl	-52(%rbp), %ecx
	movl	%ecx, run.values+48
	jmp	.LBB1_6
.LBB1_5:                                # %if.else
	movl	$0, -48(%rbp)
.LBB1_6:                                # %if.end
	jmp	.LBB1_73
.LBB1_7:                                # %if.else.12
	movq	-8(%rbp), %rdi
	movl	$.L.str.40, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB1_10
# BB#8:                                 # %lor.lhs.false
	movq	-8(%rbp), %rdi
	movl	$.L.str.44, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB1_10
# BB#9:                                 # %lor.lhs.false.19
	movq	-8(%rbp), %rdi
	movl	$.L.str.46, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_44
.LBB1_10:                               # %if.then.23
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movl	%ecx, -52(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %ecx
	movl	%ecx, -56(%rbp)
	callq	load_defaults
	movl	-44(%rbp), %ecx
	orl	$2, %ecx
	subl	$2, %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	je	.LBB1_11
	jmp	.LBB1_14
.LBB1_11:                               # %sw.bb
	movabsq	$.L.str.56, %rdi
	xorl	%esi, %esi
	callq	gimp_ui_init
	leaq	-52(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	movabsq	$.L.str.57, %rdx
	movl	$23, %ecx
	callq	gimp_export_image
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	jne	.LBB1_13
# BB#12:                                # %if.then.36
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movl	$4, run.values+8
	jmp	.LBB1_77
.LBB1_13:                               # %if.end.37
	jmp	.LBB1_15
.LBB1_14:                               # %sw.default
	jmp	.LBB1_15
.LBB1_15:                               # %sw.epilog
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB1_16
	jmp	.LBB1_78
.LBB1_78:                               # %sw.epilog
	movl	-112(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB1_21
	jmp	.LBB1_79
.LBB1_79:                               # %sw.epilog
	movl	-112(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB1_34
	jmp	.LBB1_35
.LBB1_16:                               # %sw.bb.38
	movabsq	$.L.str.40, %rdi
	movabsq	$pngvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	-56(%rbp), %edi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gimp_drawable_has_alpha
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jne	.LBB1_18
# BB#17:                                # %if.then.41
	movl	$0, pngvals+4
.LBB1_18:                               # %if.end.42
	movl	-60(%rbp), %edi
	movl	-76(%rbp), %esi
	callq	save_dialog
	cmpl	$0, %eax
	jne	.LBB1_20
# BB#19:                                # %if.then.45
	movl	$4, -48(%rbp)
.LBB1_20:                               # %if.end.46
	jmp	.LBB1_36
.LBB1_21:                               # %sw.bb.47
	cmpl	$5, -12(%rbp)
	je	.LBB1_33
# BB#22:                                # %if.then.50
	cmpl	$12, -12(%rbp)
	je	.LBB1_25
# BB#23:                                # %land.lhs.true
	cmpl	$14, -12(%rbp)
	je	.LBB1_25
# BB#24:                                # %if.then.55
	movl	$1, -48(%rbp)
	jmp	.LBB1_32
.LBB1_25:                               # %if.else.56
	movq	-24(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, pngvals
	movq	-24(%rbp), %rax
	movl	248(%rax), %ecx
	movl	%ecx, pngvals+32
	movq	-24(%rbp), %rax
	movl	288(%rax), %ecx
	movl	%ecx, pngvals+4
	movq	-24(%rbp), %rax
	movl	328(%rax), %ecx
	movl	%ecx, pngvals+8
	movq	-24(%rbp), %rax
	movl	368(%rax), %ecx
	movl	%ecx, pngvals+12
	movq	-24(%rbp), %rax
	movl	408(%rax), %ecx
	movl	%ecx, pngvals+16
	movq	-24(%rbp), %rax
	movl	448(%rax), %ecx
	movl	%ecx, pngvals+20
	cmpl	$14, -12(%rbp)
	jne	.LBB1_27
# BB#26:                                # %if.then.80
	movq	-24(%rbp), %rax
	movl	488(%rax), %ecx
	movl	%ecx, pngvals+24
	movq	-24(%rbp), %rax
	movl	528(%rax), %ecx
	movl	%ecx, pngvals+28
	jmp	.LBB1_28
.LBB1_27:                               # %if.else.87
	movl	$1, pngvals+24
	movl	$1, pngvals+28
.LBB1_28:                               # %if.end.88
	cmpl	$0, pngvals+32
	jl	.LBB1_30
# BB#29:                                # %lor.lhs.false.91
	cmpl	$9, pngvals+32
	jle	.LBB1_31
.LBB1_30:                               # %if.then.94
	movl	$1, -48(%rbp)
.LBB1_31:                               # %if.end.95
	jmp	.LBB1_32
.LBB1_32:                               # %if.end.96
	jmp	.LBB1_33
.LBB1_33:                               # %if.end.97
	jmp	.LBB1_36
.LBB1_34:                               # %sw.bb.98
	movabsq	$.L.str.40, %rdi
	movabsq	$pngvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB1_36
.LBB1_35:                               # %sw.default.100
	jmp	.LBB1_36
.LBB1_36:                               # %sw.epilog.101
	cmpl	$3, -48(%rbp)
	jne	.LBB1_41
# BB#37:                                # %if.then.104
	leaq	-72(%rbp), %r8
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	movl	-60(%rbp), %ecx
	callq	save_image
	cmpl	$0, %eax
	je	.LBB1_39
# BB#38:                                # %if.then.110
	movabsq	$.L.str.40, %rdi
	movabsq	$pngvals, %rax
	movl	$36, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB1_40
.LBB1_39:                               # %if.else.112
	movl	$0, -48(%rbp)
.LBB1_40:                               # %if.end.113
	jmp	.LBB1_41
.LBB1_41:                               # %if.end.114
	cmpl	$2, -64(%rbp)
	jne	.LBB1_43
# BB#42:                                # %if.then.117
	movl	-52(%rbp), %edi
	callq	gimp_image_delete
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB1_43:                               # %if.end.119
	jmp	.LBB1_72
.LBB1_44:                               # %if.else.120
	movq	-8(%rbp), %rdi
	movl	$.L.str.48, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_64
# BB#45:                                # %if.then.124
	callq	load_defaults
	movq	-32(%rbp), %rax
	movl	$10, (%rax)
# BB#46:                                # %do.body.125
	movl	$0, run.values+40
	movl	pngvals, %eax
	movl	%eax, run.values+48
# BB#47:                                # %do.end.126
	jmp	.LBB1_48
.LBB1_48:                               # %do.body.127
	movl	$0, run.values+80
	movl	pngvals+32, %eax
	movl	%eax, run.values+88
# BB#49:                                # %do.end.128
	jmp	.LBB1_50
.LBB1_50:                               # %do.body.129
	movl	$0, run.values+120
	movl	pngvals+4, %eax
	movl	%eax, run.values+128
# BB#51:                                # %do.end.130
	jmp	.LBB1_52
.LBB1_52:                               # %do.body.131
	movl	$0, run.values+160
	movl	pngvals+8, %eax
	movl	%eax, run.values+168
# BB#53:                                # %do.end.132
	jmp	.LBB1_54
.LBB1_54:                               # %do.body.133
	movl	$0, run.values+200
	movl	pngvals+12, %eax
	movl	%eax, run.values+208
# BB#55:                                # %do.end.134
	jmp	.LBB1_56
.LBB1_56:                               # %do.body.135
	movl	$0, run.values+240
	movl	pngvals+16, %eax
	movl	%eax, run.values+248
# BB#57:                                # %do.end.136
	jmp	.LBB1_58
.LBB1_58:                               # %do.body.137
	movl	$0, run.values+280
	movl	pngvals+20, %eax
	movl	%eax, run.values+288
# BB#59:                                # %do.end.138
	jmp	.LBB1_60
.LBB1_60:                               # %do.body.139
	movl	$0, run.values+320
	movl	pngvals+24, %eax
	movl	%eax, run.values+328
# BB#61:                                # %do.end.140
	jmp	.LBB1_62
.LBB1_62:                               # %do.body.141
	movl	$0, run.values+360
	movl	pngvals+28, %eax
	movl	%eax, run.values+368
# BB#63:                                # %do.end.142
	jmp	.LBB1_71
.LBB1_64:                               # %if.else.143
	movq	-8(%rbp), %rdi
	movl	$.L.str.51, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_69
# BB#65:                                # %if.then.147
	cmpl	$9, -12(%rbp)
	jne	.LBB1_67
# BB#66:                                # %if.then.150
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, pngvals
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, pngvals+32
	movq	-24(%rbp), %rax
	movl	88(%rax), %ecx
	movl	%ecx, pngvals+4
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, pngvals+8
	movq	-24(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, pngvals+12
	movq	-24(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, pngvals+16
	movq	-24(%rbp), %rax
	movl	248(%rax), %ecx
	movl	%ecx, pngvals+20
	movq	-24(%rbp), %rax
	movl	288(%rax), %ecx
	movl	%ecx, pngvals+24
	movq	-24(%rbp), %rax
	movl	328(%rax), %ecx
	movl	%ecx, pngvals+28
	callq	save_defaults
	jmp	.LBB1_68
.LBB1_67:                               # %if.else.178
	movl	$1, -48(%rbp)
.LBB1_68:                               # %if.end.179
	jmp	.LBB1_70
.LBB1_69:                               # %if.else.180
	movl	$1, -48(%rbp)
.LBB1_70:                               # %if.end.181
	jmp	.LBB1_71
.LBB1_71:                               # %if.end.182
	jmp	.LBB1_72
.LBB1_72:                               # %if.end.183
	jmp	.LBB1_73
.LBB1_73:                               # %if.end.184
	cmpl	$3, -48(%rbp)
	je	.LBB1_76
# BB#74:                                # %land.lhs.true.187
	cmpq	$0, -72(%rbp)
	je	.LBB1_76
# BB#75:                                # %if.then.189
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
.LBB1_76:                               # %if.end.190
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_77:                               # %return
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
	.quad	4582978272962677414     # double 0.025399999999999999
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
	subq	$1168, %rsp             # imm = 0x490
	movabsq	$.L.str.58, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$-1, -92(%rbp)
	movq	%rax, %rdi
	movq	%r8, %rsi
	movq	%r8, %rdx
	movq	%r8, %rcx
	callq	png_create_read_struct
	movq	%rax, -160(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.59, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	-720(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB3_131
.LBB3_2:                                # %if.end
	movq	-160(%rbp), %rdi
	callq	png_create_info_struct
	movabsq	$longjmp, %rsi
	movl	$200, %ecx
	movl	%ecx, %edx
	movq	%rax, -168(%rbp)
	movq	-160(%rbp), %rdi
	callq	png_set_longjmp_fn
	movq	%rax, %rdi
	callq	_setjmp
	cmpl	$0, %eax
	je	.LBB3_4
# BB#3:                                 # %if.then.7
	movq	-32(%rbp), %rdi
	movq	%rdi, -728(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.60, %rdi
	movl	%eax, -732(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movl	-732(%rbp), %esi        # 4-byte Reload
	movq	-744(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	-92(%rbp), %edx
	movl	%edx, -4(%rbp)
	jmp	.LBB3_131
.LBB3_4:                                # %if.end.11
	movl	$1, %esi
	movq	-160(%rbp), %rdi
	callq	png_set_benign_errors
	movabsq	$.L.str.61, %rsi
	movq	-16(%rbp), %rdi
	callq	fopen
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB3_6
# BB#5:                                 # %if.then.13
	movq	-32(%rbp), %rdi
	movq	%rdi, -752(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -756(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.62, %rdi
	movl	%eax, -760(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movl	-756(%rbp), %esi        # 4-byte Reload
	movl	-760(%rbp), %edx        # 4-byte Reload
	movq	-768(%rbp), %rcx        # 8-byte Reload
	movq	-776(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB3_131
.LBB3_6:                                # %if.end.21
	movq	-160(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	png_init_io
	movl	$512, %eax              # imm = 0x200
	movl	%eax, %esi
	movq	-160(%rbp), %rdi
	callq	png_set_compression_buffer_size
	movabsq	$.L.str.63, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-784(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	%eax, -788(%rbp)        # 4-byte Spill
	callq	png_read_info
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	png_get_bit_depth
	movzbl	%al, %ecx
	cmpl	$16, %ecx
	jne	.LBB3_8
# BB#7:                                 # %if.then.28
	movq	-160(%rbp), %rdi
	callq	png_set_strip_16
.LBB3_8:                                # %if.end.29
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	png_get_color_type
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	jne	.LBB3_11
# BB#9:                                 # %land.lhs.true
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	png_get_bit_depth
	movzbl	%al, %ecx
	cmpl	$8, %ecx
	jge	.LBB3_11
# BB#10:                                # %if.then.38
	movq	-160(%rbp), %rdi
	callq	png_set_expand
.LBB3_11:                               # %if.end.39
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	png_get_color_type
	movzbl	%al, %ecx
	cmpl	$3, %ecx
	jne	.LBB3_14
# BB#12:                                # %land.lhs.true.44
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	png_get_bit_depth
	movzbl	%al, %ecx
	cmpl	$8, %ecx
	jge	.LBB3_14
# BB#13:                                # %if.then.49
	movq	-160(%rbp), %rdi
	callq	png_set_packing
.LBB3_14:                               # %if.end.50
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	png_get_color_type
	movzbl	%al, %ecx
	cmpl	$3, %ecx
	je	.LBB3_17
# BB#15:                                # %land.lhs.true.55
	movl	$16, %edx
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	png_get_valid
	cmpl	$0, %eax
	je	.LBB3_17
# BB#16:                                # %if.then.58
	movq	-160(%rbp), %rdi
	callq	png_set_expand
.LBB3_17:                               # %if.end.59
	movq	-160(%rbp), %rdi
	callq	png_set_interlace_handling
	movl	$16, %edx
	movl	%eax, -60(%rbp)
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	png_get_valid
	cmpl	$0, %eax
	je	.LBB3_28
# BB#18:                                # %land.lhs.true.63
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	png_get_color_type
	movzbl	%al, %ecx
	cmpl	$3, %ecx
	jne	.LBB3_28
# BB#19:                                # %if.then.68
	leaq	-456(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	png_get_tRNS
	movl	$0, -36(%rbp)
	movl	%eax, -792(%rbp)        # 4-byte Spill
.LBB3_20:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB3_23
# BB#21:                                # %for.body
                                        #   in Loop: Header=BB3_20 Depth=1
	movslq	-36(%rbp), %rax
	movq	-456(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-36(%rbp), %rax
	movb	%dl, -448(%rbp,%rax)
# BB#22:                                # %for.inc
                                        #   in Loop: Header=BB3_20 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB3_20
.LBB3_23:                               # %for.end
	movl	-80(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB3_24:                               # %for.cond.74
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -36(%rbp)         # imm = 0x100
	jge	.LBB3_27
# BB#25:                                # %for.body.77
                                        #   in Loop: Header=BB3_24 Depth=1
	movslq	-36(%rbp), %rax
	movb	$-1, -448(%rbp,%rax)
# BB#26:                                # %for.inc.80
                                        #   in Loop: Header=BB3_24 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB3_24
.LBB3_27:                               # %for.end.82
	movl	$1, -40(%rbp)
	jmp	.LBB3_29
.LBB3_28:                               # %if.else
	movl	$0, -40(%rbp)
.LBB3_29:                               # %if.end.83
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	png_read_update_info
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	png_get_color_type
	movzbl	%al, %ecx
	movl	%ecx, %esi
	subl	$6, %ecx
	movq	%rsi, -800(%rbp)        # 8-byte Spill
	movl	%ecx, -804(%rbp)        # 4-byte Spill
	ja	.LBB3_35
# BB#132:                               # %if.end.83
	movq	-800(%rbp), %rax        # 8-byte Reload
	movq	.LJTI3_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB3_30:                               # %sw.bb
	movl	$3, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	jmp	.LBB3_36
.LBB3_31:                               # %sw.bb.86
	movl	$4, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	$1, -52(%rbp)
	jmp	.LBB3_36
.LBB3_32:                               # %sw.bb.87
	movl	$1, -44(%rbp)
	movl	$1, -48(%rbp)
	movl	$2, -52(%rbp)
	jmp	.LBB3_36
.LBB3_33:                               # %sw.bb.88
	movl	$2, -44(%rbp)
	movl	$1, -48(%rbp)
	movl	$3, -52(%rbp)
	jmp	.LBB3_36
.LBB3_34:                               # %sw.bb.89
	movl	$1, -44(%rbp)
	movl	$2, -48(%rbp)
	movl	$4, -52(%rbp)
	jmp	.LBB3_36
.LBB3_35:                               # %sw.default
	movabsq	$.L.str.64, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	-824(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB3_131
.LBB3_36:                               # %sw.epilog
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	png_get_image_width
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	%eax, -828(%rbp)        # 4-byte Spill
	callq	png_get_image_height
	movl	-48(%rbp), %edx
	movl	-828(%rbp), %edi        # 4-byte Reload
	movl	%eax, %esi
	callq	gimp_image_new
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	cmpl	$-1, %eax
	jne	.LBB3_38
# BB#37:                                # %if.then.97
	movabsq	$.L.str.65, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -856(%rbp)        # 8-byte Spill
	callq	gimp_get_pdb_error
	xorl	%ecx, %ecx
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	-848(%rbp), %rcx        # 8-byte Reload
	movq	-856(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB3_131
.LBB3_38:                               # %if.end.101
	movabsq	$.L.str.66, %rdi
	movl	-92(%rbp), %eax
	movl	%eax, -860(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	png_get_image_width
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	%eax, -876(%rbp)        # 4-byte Spill
	callq	png_get_image_height
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movl	-52(%rbp), %r8d
	movl	-860(%rbp), %edi        # 4-byte Reload
	movq	-872(%rbp), %rsi        # 8-byte Reload
	movl	-876(%rbp), %edx        # 4-byte Reload
	movl	%eax, %ecx
	callq	gimp_layer_new
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	%eax, -96(%rbp)
	movl	-92(%rbp), %edi
	movl	-96(%rbp), %esi
	callq	gimp_image_insert_layer
	movl	$1, %edx
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	%eax, -880(%rbp)        # 4-byte Spill
	callq	png_get_valid
	cmpl	$0, %eax
	je	.LBB3_40
# BB#39:                                # %if.then.109
	leaq	-584(%rbp), %rdx
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	png_get_gAMA
	movl	$39, %esi
	leaq	-576(%rbp), %rdi
	movsd	-584(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	%eax, -884(%rbp)        # 4-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.67, %rdi
	movl	$1, %esi
	leaq	-576(%rbp), %rdx
	movq	%rdi, -896(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -904(%rbp)        # 8-byte Spill
	movq	%rdx, -912(%rbp)        # 8-byte Spill
	movl	%esi, -916(%rbp)        # 4-byte Spill
	callq	strlen
	addq	$1, %rax
	movl	%eax, %esi
	movq	-896(%rbp), %rdi        # 8-byte Reload
	movl	-916(%rbp), %ecx        # 4-byte Reload
	movl	%esi, -920(%rbp)        # 4-byte Spill
	movl	%ecx, %esi
	movl	-920(%rbp), %edx        # 4-byte Reload
	movq	-912(%rbp), %rcx        # 8-byte Reload
	callq	gimp_parasite_new
	movq	%rax, -536(%rbp)
	movl	-92(%rbp), %edi
	movq	-536(%rbp), %rsi
	callq	gimp_image_attach_parasite
	movq	-536(%rbp), %rdi
	movl	%eax, -924(%rbp)        # 4-byte Spill
	callq	gimp_parasite_free
.LBB3_40:                               # %if.end.119
	movl	$256, %edx              # imm = 0x100
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	png_get_valid
	cmpl	$0, %eax
	je	.LBB3_50
# BB#41:                                # %if.then.122
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	png_get_x_offset_pixels
	movl	%eax, -588(%rbp)
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	png_get_y_offset_pixels
	movl	%eax, -592(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB3_43
# BB#42:                                # %if.then.126
	movl	-96(%rbp), %edi
	movl	-588(%rbp), %esi
	movl	-592(%rbp), %edx
	callq	gimp_layer_set_offsets
	movl	%eax, -928(%rbp)        # 4-byte Spill
	jmp	.LBB3_49
.LBB3_43:                               # %if.else.128
	movl	-588(%rbp), %edi
	movl	-592(%rbp), %esi
	callq	offsets_dialog
	cmpl	$0, %eax
	je	.LBB3_48
# BB#44:                                # %if.then.131
	movl	-96(%rbp), %edi
	movl	-588(%rbp), %esi
	movl	-592(%rbp), %edx
	callq	gimp_layer_set_offsets
	movl	-588(%rbp), %edi
	movl	%eax, -932(%rbp)        # 4-byte Spill
	callq	abs
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	%eax, -936(%rbp)        # 4-byte Spill
	callq	png_get_image_width
	movl	-936(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	ja	.LBB3_46
# BB#45:                                # %lor.lhs.false
	movl	-592(%rbp), %edi
	callq	abs
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	%eax, -940(%rbp)        # 4-byte Spill
	callq	png_get_image_height
	movl	-940(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jbe	.LBB3_47
.LBB3_46:                               # %if.then.141
	movabsq	$.L.str.68, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
.LBB3_47:                               # %if.end.143
	jmp	.LBB3_48
.LBB3_48:                               # %if.end.144
	jmp	.LBB3_49
.LBB3_49:                               # %if.end.145
	jmp	.LBB3_50
.LBB3_50:                               # %if.end.146
	movl	$128, %edx
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	png_get_valid
	cmpl	$0, %eax
	je	.LBB3_63
# BB#51:                                # %if.then.149
	leaq	-596(%rbp), %rdx
	leaq	-600(%rbp), %rcx
	leaq	-604(%rbp), %r8
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	png_get_pHYs
	cmpl	$0, %eax
	je	.LBB3_62
# BB#52:                                # %land.lhs.true.152
	cmpl	$0, -596(%rbp)
	jbe	.LBB3_62
# BB#53:                                # %land.lhs.true.155
	cmpl	$0, -600(%rbp)
	jbe	.LBB3_62
# BB#54:                                # %if.then.158
	movl	-604(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -944(%rbp)        # 4-byte Spill
	je	.LBB3_55
	jmp	.LBB3_133
.LBB3_133:                              # %if.then.158
	movl	-944(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -948(%rbp)        # 4-byte Spill
	je	.LBB3_59
	jmp	.LBB3_60
.LBB3_55:                               # %sw.bb.159
	leaq	-616(%rbp), %rsi
	leaq	-624(%rbp), %rdx
	movl	-92(%rbp), %edi
	callq	gimp_image_get_resolution
	movl	-596(%rbp), %edi
	cmpl	-600(%rbp), %edi
	movl	%eax, -952(%rbp)        # 4-byte Spill
	jbe	.LBB3_57
# BB#56:                                # %if.then.163
	movsd	-624(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-596(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm1
	mulsd	%xmm1, %xmm0
	movl	-600(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -616(%rbp)
	jmp	.LBB3_58
.LBB3_57:                               # %if.else.166
	movsd	-616(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-600(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm1
	mulsd	%xmm1, %xmm0
	movl	-596(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -624(%rbp)
.LBB3_58:                               # %if.end.171
	movl	-92(%rbp), %edi
	movsd	-616(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-624(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_image_set_resolution
	movl	%eax, -956(%rbp)        # 4-byte Spill
	jmp	.LBB3_61
.LBB3_59:                               # %sw.bb.173
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movl	-92(%rbp), %edi
	movl	-596(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm1
	movsd	.LCPI3_1(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	movl	-600(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm2
	mulsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	gimp_image_set_resolution
	movl	%eax, -960(%rbp)        # 4-byte Spill
	jmp	.LBB3_61
.LBB3_60:                               # %sw.default.179
	jmp	.LBB3_61
.LBB3_61:                               # %sw.epilog.180
	jmp	.LBB3_62
.LBB3_62:                               # %if.end.181
	jmp	.LBB3_63
.LBB3_63:                               # %if.end.182
	movl	-92(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	gimp_image_set_filename
	movl	$0, -56(%rbp)
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	%eax, -964(%rbp)        # 4-byte Spill
	callq	png_get_color_type
	movzbl	%al, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB3_77
# BB#64:                                # %if.then.187
	leaq	-632(%rbp), %rdx
	leaq	-636(%rbp), %rcx
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	png_get_PLTE
	movl	$16, %edx
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	%eax, -968(%rbp)        # 4-byte Spill
	callq	png_get_valid
	cmpl	$0, %eax
	je	.LBB3_75
# BB#65:                                # %if.then.191
	movl	$0, -56(%rbp)
.LBB3_66:                               # %for.cond.192
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$256, -56(%rbp)         # imm = 0x100
	movb	%cl, -969(%rbp)         # 1-byte Spill
	jge	.LBB3_68
# BB#67:                                # %land.rhs
                                        #   in Loop: Header=BB3_66 Depth=1
	movslq	-56(%rbp), %rax
	movzbl	-448(%rbp,%rax), %ecx
	cmpl	$0, %ecx
	sete	%dl
	movb	%dl, -969(%rbp)         # 1-byte Spill
.LBB3_68:                               # %land.end
                                        #   in Loop: Header=BB3_66 Depth=1
	movb	-969(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_69
	jmp	.LBB3_71
.LBB3_69:                               # %for.body.200
                                        #   in Loop: Header=BB3_66 Depth=1
	jmp	.LBB3_70
.LBB3_70:                               # %for.inc.201
                                        #   in Loop: Header=BB3_66 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB3_66
.LBB3_71:                               # %for.end.203
	movl	-56(%rbp), %eax
	movl	-636(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB3_73
# BB#72:                                # %cond.true
	movl	-56(%rbp), %eax
	movl	%eax, -976(%rbp)        # 4-byte Spill
	jmp	.LBB3_74
.LBB3_73:                               # %cond.false
	movl	-636(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -976(%rbp)        # 4-byte Spill
.LBB3_74:                               # %cond.end
	movl	-976(%rbp), %eax        # 4-byte Reload
	movl	%eax, -56(%rbp)
	movl	-92(%rbp), %edi
	movq	-632(%rbp), %rcx
	movslq	-56(%rbp), %rdx
	imulq	$3, %rdx, %rdx
	addq	%rdx, %rcx
	movl	-636(%rbp), %eax
	subl	-56(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edx
	callq	gimp_image_set_colormap
	movl	%eax, -980(%rbp)        # 4-byte Spill
	jmp	.LBB3_76
.LBB3_75:                               # %if.else.209
	movl	-92(%rbp), %edi
	movq	-632(%rbp), %rax
	movl	-636(%rbp), %edx
	movq	%rax, %rsi
	callq	gimp_image_set_colormap
	movl	%eax, -984(%rbp)        # 4-byte Spill
.LBB3_76:                               # %if.end.211
	jmp	.LBB3_77
.LBB3_77:                               # %if.end.212
	movl	-96(%rbp), %edi
	callq	gimp_drawable_get
	leaq	-152(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rsi
	movq	-104(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-104(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%edx, -988(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	callq	gimp_tile_height
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	%eax, -992(%rbp)        # 4-byte Spill
	callq	png_get_image_width
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	-992(%rbp), %ecx        # 4-byte Reload
	imull	%eax, %ecx
	imull	-44(%rbp), %ecx
	movl	%ecx, %eax
	movl	%eax, %edi
	callq	g_malloc0_n
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	%rax, -184(%rbp)
	movslq	-68(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -176(%rbp)
	movl	$0, -36(%rbp)
.LBB3_78:                               # %for.cond.222
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB3_81
# BB#79:                                # %for.body.225
                                        #   in Loop: Header=BB3_78 Depth=1
	movq	-184(%rbp), %rax
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	png_get_image_width
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	%eax, -1004(%rbp)       # 4-byte Spill
	callq	png_get_channels
	movzbl	%al, %ecx
	movl	-1004(%rbp), %edx       # 4-byte Reload
	imull	%ecx, %edx
	imull	-36(%rbp), %edx
	movl	%edx, %ecx
	movl	%ecx, %esi
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	addq	%rsi, %rdi
	movslq	-36(%rbp), %rsi
	movq	-176(%rbp), %r8
	movq	%rdi, (%r8,%rsi,8)
# BB#80:                                # %for.inc.235
                                        #   in Loop: Header=BB3_78 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB3_78
.LBB3_81:                               # %for.end.237
	movq	-104(%rbp), %rax
	movq	%rax, -496(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, -504(%rbp)
	movl	-68(%rbp), %ecx
	movl	%ecx, -476(%rbp)
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	png_get_image_width
	movl	%eax, -488(%rbp)
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	png_get_image_height
	movabsq	$on_read_error, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	leaq	-512(%rbp), %rsi
	leaq	-152(%rbp), %rdi
	movl	%eax, -484(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -480(%rbp)
	movq	%rdi, -512(%rbp)
	movq	-160(%rbp), %rdi
	callq	png_set_error_fn
	movl	$0, -64(%rbp)
.LBB3_82:                               # %for.cond.247
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_84 Depth 2
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB3_93
# BB#83:                                # %for.body.250
                                        #   in Loop: Header=BB3_82 Depth=1
	movl	$0, -72(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -76(%rbp)
.LBB3_84:                               # %for.cond.251
                                        #   Parent Loop BB3_82 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-72(%rbp), %eax
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	%eax, -1008(%rbp)       # 4-byte Spill
	callq	png_get_image_height
	movl	-1008(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jae	.LBB3_91
# BB#85:                                # %for.body.255
                                        #   in Loop: Header=BB3_84 Depth=2
	movl	-76(%rbp), %eax
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	%eax, -1012(%rbp)       # 4-byte Spill
	callq	png_get_image_height
	movl	-1012(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jbe	.LBB3_87
# BB#86:                                # %if.then.259
                                        #   in Loop: Header=BB3_84 Depth=2
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	png_get_image_height
	movl	%eax, -76(%rbp)
.LBB3_87:                               # %if.end.261
                                        #   in Loop: Header=BB3_84 Depth=2
	movl	-76(%rbp), %eax
	subl	-72(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB3_89
# BB#88:                                # %if.then.265
                                        #   in Loop: Header=BB3_84 Depth=2
	leaq	-152(%rbp), %rdi
	xorl	%edx, %edx
	movq	-184(%rbp), %rsi
	movl	-72(%rbp), %ecx
	movq	-104(%rbp), %rax
	movl	4(%rax), %r8d
	movl	-80(%rbp), %r9d
	callq	gimp_pixel_rgn_get_rect
.LBB3_89:                               # %if.end.267
                                        #   in Loop: Header=BB3_84 Depth=2
	movl	-72(%rbp), %eax
	movl	%eax, -472(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -468(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -464(%rbp)
	movq	-160(%rbp), %rdi
	movq	-176(%rbp), %rsi
	movl	-80(%rbp), %ecx
	xorl	%eax, %eax
	movl	%eax, %edx
	movl	%eax, -1016(%rbp)       # 4-byte Spill
	callq	png_read_rows
	movq	-184(%rbp), %rsi
	movl	-72(%rbp), %ecx
	movq	-104(%rbp), %rdx
	movl	4(%rdx), %r8d
	movl	-80(%rbp), %r9d
	leaq	-152(%rbp), %rdi
	movl	-1016(%rbp), %edx       # 4-byte Reload
	callq	gimp_pixel_rgn_set_rect
	movq	-184(%rbp), %rdi
	movl	-68(%rbp), %eax
	movq	-160(%rbp), %rsi
	movq	-168(%rbp), %r10
	movq	%rdi, -1024(%rbp)       # 8-byte Spill
	movq	%rsi, %rdi
	movq	%r10, %rsi
	movl	%eax, -1028(%rbp)       # 4-byte Spill
	callq	png_get_image_width
	movl	-1028(%rbp), %ecx       # 4-byte Reload
	imull	%eax, %ecx
	movl	-44(%rbp), %eax
	imull	%eax, %ecx
	movl	%ecx, %edx
	movq	-1024(%rbp), %rdi       # 8-byte Reload
	movl	-1016(%rbp), %esi       # 4-byte Reload
	callq	memset
	cvtsi2sdl	-64(%rbp), %xmm0
	cvtsi2sdl	-76(%rbp), %xmm1
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movsd	%xmm0, -1040(%rbp)      # 8-byte Spill
	movsd	%xmm1, -1048(%rbp)      # 8-byte Spill
	callq	png_get_image_height
	movl	%eax, %eax
	movl	%eax, %edx
	cvtsi2sdq	%rdx, %xmm0
	movsd	-1048(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	-1040(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvtsi2sdl	-60(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -1052(%rbp)       # 4-byte Spill
# BB#90:                                # %for.inc.285
                                        #   in Loop: Header=BB3_84 Depth=2
	movl	-68(%rbp), %eax
	addl	-72(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-68(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB3_84
.LBB3_91:                               # %for.end.288
                                        #   in Loop: Header=BB3_82 Depth=1
	jmp	.LBB3_92
.LBB3_92:                               # %for.inc.289
                                        #   in Loop: Header=BB3_82 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB3_82
.LBB3_93:                               # %for.end.291
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-160(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	png_set_error_fn
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	png_read_end
	leaq	-520(%rbp), %rdx
	leaq	-524(%rbp), %rcx
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	png_get_text
	cmpl	$0, %eax
	je	.LBB3_112
# BB#94:                                # %if.then.294
	movq	$0, -648(%rbp)
	movl	$0, -36(%rbp)
.LBB3_95:                               # %for.cond.295
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-36(%rbp), %eax
	cmpl	-524(%rbp), %eax
	movb	%cl, -1053(%rbp)        # 1-byte Spill
	jge	.LBB3_97
# BB#96:                                # %land.rhs.298
                                        #   in Loop: Header=BB3_95 Depth=1
	cmpq	$0, -648(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -1053(%rbp)        # 1-byte Spill
.LBB3_97:                               # %land.end.300
                                        #   in Loop: Header=BB3_95 Depth=1
	movb	-1053(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_98
	jmp	.LBB3_108
.LBB3_98:                               # %for.body.301
                                        #   in Loop: Header=BB3_95 Depth=1
	movq	-520(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB3_100
# BB#99:                                # %lor.lhs.false.304
                                        #   in Loop: Header=BB3_95 Depth=1
	movq	-520(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.69, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB3_101
.LBB3_100:                              # %if.then.308
                                        #   in Loop: Header=BB3_95 Depth=1
	jmp	.LBB3_107
.LBB3_101:                              # %if.end.309
                                        #   in Loop: Header=BB3_95 Depth=1
	movq	-520(%rbp), %rax
	cmpq	$0, 24(%rax)
	jbe	.LBB3_103
# BB#102:                               # %if.then.312
                                        #   in Loop: Header=BB3_95 Depth=1
	movq	$-1, %rsi
	movabsq	$.L.str.55, %rdx
	movabsq	$.L.str.70, %rcx
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-520(%rbp), %r8
	movq	16(%r8), %r8
	movq	%rdi, -1064(%rbp)       # 8-byte Spill
	movq	%r8, %rdi
	movq	-1064(%rbp), %r8        # 8-byte Reload
	movq	-1064(%rbp), %r9        # 8-byte Reload
	movq	$0, (%rsp)
	callq	g_convert
	movq	%rax, -648(%rbp)
	jmp	.LBB3_106
.LBB3_103:                              # %if.else.315
                                        #   in Loop: Header=BB3_95 Depth=1
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-520(%rbp), %rcx
	movq	16(%rcx), %rdi
	callq	g_utf8_validate
	cmpl	$0, %eax
	je	.LBB3_105
# BB#104:                               # %if.then.319
                                        #   in Loop: Header=BB3_95 Depth=1
	movq	-520(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_strdup
	movq	%rax, -648(%rbp)
.LBB3_105:                              # %if.end.322
                                        #   in Loop: Header=BB3_95 Depth=1
	jmp	.LBB3_106
.LBB3_106:                              # %if.end.323
                                        #   in Loop: Header=BB3_95 Depth=1
	jmp	.LBB3_107
.LBB3_107:                              # %for.inc.324
                                        #   in Loop: Header=BB3_95 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movq	-520(%rbp), %rcx
	addq	$56, %rcx
	movq	%rcx, -520(%rbp)
	jmp	.LBB3_95
.LBB3_108:                              # %for.end.326
	cmpq	$0, -648(%rbp)
	je	.LBB3_111
# BB#109:                               # %land.lhs.true.328
	movq	-648(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB3_111
# BB#110:                               # %if.then.331
	movabsq	$.L.str.71, %rdi
	movl	$1, %esi
	movq	-648(%rbp), %rax
	movq	%rdi, -1072(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -1076(%rbp)       # 4-byte Spill
	callq	strlen
	addq	$1, %rax
	movl	%eax, %esi
	movq	-648(%rbp), %rcx
	movq	-1072(%rbp), %rdi       # 8-byte Reload
	movl	-1076(%rbp), %edx       # 4-byte Reload
	movl	%esi, -1080(%rbp)       # 4-byte Spill
	movl	%edx, %esi
	movl	-1080(%rbp), %edx       # 4-byte Reload
	callq	gimp_parasite_new
	movq	%rax, -656(%rbp)
	movl	-92(%rbp), %edi
	movq	-656(%rbp), %rsi
	callq	gimp_image_attach_parasite
	movq	-656(%rbp), %rdi
	movl	%eax, -1084(%rbp)       # 4-byte Spill
	callq	gimp_parasite_free
.LBB3_111:                              # %if.end.338
	movq	-648(%rbp), %rdi
	callq	g_free
.LBB3_112:                              # %if.end.339
	leaq	-672(%rbp), %rdx
	leaq	-684(%rbp), %rcx
	leaq	-680(%rbp), %r8
	leaq	-660(%rbp), %r9
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	png_get_iCCP
	cmpl	$0, %eax
	je	.LBB3_118
# BB#113:                               # %if.then.342
	movabsq	$.L.str.72, %rdi
	movl	$3, %esi
	movl	-660(%rbp), %edx
	movq	-680(%rbp), %rcx
	callq	gimp_parasite_new
	movq	%rax, -696(%rbp)
	movl	-92(%rbp), %edi
	movq	-696(%rbp), %rsi
	callq	gimp_image_attach_parasite
	movq	-696(%rbp), %rdi
	movl	%eax, -1088(%rbp)       # 4-byte Spill
	callq	gimp_parasite_free
	cmpq	$0, -672(%rbp)
	je	.LBB3_117
# BB#114:                               # %if.then.347
	movabsq	$.L.str.70, %rdx
	movabsq	$.L.str.55, %rcx
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-672(%rbp), %rdi
	movq	-672(%rbp), %r8
	movq	%rdi, -1096(%rbp)       # 8-byte Spill
	movq	%r8, %rdi
	movq	%rdx, -1104(%rbp)       # 8-byte Spill
	movq	%rcx, -1112(%rbp)       # 8-byte Spill
	movq	%rsi, -1120(%rbp)       # 8-byte Spill
	callq	strlen
	movq	-1096(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movq	-1104(%rbp), %rdx       # 8-byte Reload
	movq	-1112(%rbp), %rcx       # 8-byte Reload
	movq	-1120(%rbp), %r8        # 8-byte Reload
	movq	-1120(%rbp), %r9        # 8-byte Reload
	movq	$0, (%rsp)
	callq	g_convert
	movq	%rax, -704(%rbp)
	cmpq	$0, -704(%rbp)
	je	.LBB3_116
# BB#115:                               # %if.then.351
	movabsq	$.L.str.73, %rdi
	movl	$3, %esi
	movq	-704(%rbp), %rax
	movq	%rdi, -1128(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -1132(%rbp)       # 4-byte Spill
	callq	strlen
	movl	%eax, %esi
	movq	-704(%rbp), %rcx
	movq	-1128(%rbp), %rdi       # 8-byte Reload
	movl	-1132(%rbp), %edx       # 4-byte Reload
	movl	%esi, -1136(%rbp)       # 4-byte Spill
	movl	%edx, %esi
	movl	-1136(%rbp), %edx       # 4-byte Reload
	callq	gimp_parasite_new
	movq	%rax, -696(%rbp)
	movl	-92(%rbp), %edi
	movq	-696(%rbp), %rsi
	callq	gimp_image_attach_parasite
	movq	-696(%rbp), %rdi
	movl	%eax, -1140(%rbp)       # 4-byte Spill
	callq	gimp_parasite_free
	movq	-704(%rbp), %rdi
	callq	g_free
.LBB3_116:                              # %if.end.356
	jmp	.LBB3_117
.LBB3_117:                              # %if.end.357
	jmp	.LBB3_118
.LBB3_118:                              # %if.end.358
	leaq	-160(%rbp), %rdi
	leaq	-168(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	png_destroy_read_struct
	movq	-184(%rbp), %rdi
	callq	g_free
	movq	-176(%rbp), %rdx
	movq	%rdx, %rdi
	callq	g_free
	movq	-160(%rbp), %rdx
	movq	%rdx, %rdi
	callq	free
	movq	-168(%rbp), %rdx
	movq	%rdx, %rdi
	callq	free
	movq	-88(%rbp), %rdi
	callq	fclose
	cmpl	$0, -40(%rbp)
	movl	%eax, -1144(%rbp)       # 4-byte Spill
	je	.LBB3_130
# BB#119:                               # %if.then.361
	movl	-96(%rbp), %edi
	callq	gimp_layer_add_alpha
	movl	-96(%rbp), %edi
	movl	%eax, -1148(%rbp)       # 4-byte Spill
	callq	gimp_drawable_get
	leaq	-152(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rsi
	movq	-104(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-104(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%edx, -1152(%rbp)       # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	-68(%rbp), %ecx
	movq	-104(%rbp), %rax
	imull	4(%rax), %ecx
	shll	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	callq	g_malloc_n
	movq	%rax, -184(%rbp)
	movl	$0, -72(%rbp)
	movl	-68(%rbp), %ecx
	movl	%ecx, -76(%rbp)
.LBB3_120:                              # %for.cond.371
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_124 Depth 2
	movl	-72(%rbp), %eax
	movq	-104(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB3_129
# BB#121:                               # %for.body.375
                                        #   in Loop: Header=BB3_120 Depth=1
	movl	-76(%rbp), %eax
	movq	-104(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jbe	.LBB3_123
# BB#122:                               # %if.then.379
                                        #   in Loop: Header=BB3_120 Depth=1
	movq	-104(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -76(%rbp)
.LBB3_123:                              # %if.end.381
                                        #   in Loop: Header=BB3_120 Depth=1
	leaq	-152(%rbp), %rdi
	xorl	%edx, %edx
	movl	-76(%rbp), %eax
	subl	-72(%rbp), %eax
	movl	%eax, -80(%rbp)
	movq	-184(%rbp), %rsi
	movl	-72(%rbp), %ecx
	movq	-104(%rbp), %r8
	movl	4(%r8), %r8d
	movl	-80(%rbp), %r9d
	callq	gimp_pixel_rgn_get_rect
	movl	$0, -36(%rbp)
.LBB3_124:                              # %for.cond.384
                                        #   Parent Loop BB3_120 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	movl	-68(%rbp), %ecx
	movq	-104(%rbp), %rdx
	imull	4(%rdx), %ecx
	cmpl	%ecx, %eax
	jae	.LBB3_127
# BB#125:                               # %for.body.389
                                        #   in Loop: Header=BB3_124 Depth=2
	movl	-36(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rcx
	movq	-184(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, %ecx
	movb	-448(%rbp,%rcx), %sil
	movl	-36(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-184(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movl	-56(%rbp), %eax
	movl	-36(%rbp), %edi
	shll	$1, %edi
	movslq	%edi, %rcx
	movq	-184(%rbp), %rdx
	movzbl	(%rdx,%rcx), %edi
	subl	%eax, %edi
	movb	%dil, %sil
	movb	%sil, (%rdx,%rcx)
# BB#126:                               # %for.inc.405
                                        #   in Loop: Header=BB3_124 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB3_124
.LBB3_127:                              # %for.end.407
                                        #   in Loop: Header=BB3_120 Depth=1
	leaq	-152(%rbp), %rdi
	xorl	%edx, %edx
	movq	-184(%rbp), %rsi
	movl	-72(%rbp), %ecx
	movq	-104(%rbp), %rax
	movl	4(%rax), %r8d
	movl	-80(%rbp), %r9d
	callq	gimp_pixel_rgn_set_rect
# BB#128:                               # %for.inc.409
                                        #   in Loop: Header=BB3_120 Depth=1
	movl	-68(%rbp), %eax
	addl	-72(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-68(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB3_120
.LBB3_129:                              # %for.end.412
	movq	-184(%rbp), %rdi
	callq	g_free
.LBB3_130:                              # %if.end.413
	movq	-104(%rbp), %rdi
	callq	gimp_drawable_flush
	movq	-104(%rbp), %rdi
	callq	gimp_drawable_detach
	movl	-92(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB3_131:                              # %return
	movl	-4(%rbp), %eax
	addq	$1168, %rsp             # imm = 0x490
	popq	%rbp
	retq
.Lfunc_end3:
	.size	load_image, .Lfunc_end3-load_image
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_32
	.quad	.LBB3_35
	.quad	.LBB3_30
	.quad	.LBB3_34
	.quad	.LBB3_33
	.quad	.LBB3_35
	.quad	.LBB3_31

	.text
	.align	16, 0x90
	.type	load_defaults,@function
load_defaults:                          # @load_defaults
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
.Ltmp20:
	.cfi_offset %rbx, -48
.Ltmp21:
	.cfi_offset %r12, -40
.Ltmp22:
	.cfi_offset %r14, -32
.Ltmp23:
	.cfi_offset %r15, -24
	movabsq	$.L.str.81, %rdi
	callq	gimp_get_parasite
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB4_4
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	callq	gimp_parasite_data
	movq	-40(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_parasite_data_size
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_strndup
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_parasite_free
	movabsq	$.L.str.82, %rsi
	leaq	-88(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rax, %r8
	addq	$12, %r8
	movq	%rax, %r9
	addq	$16, %r9
	movq	%rax, %r10
	addq	$20, %r10
	movq	%rax, %r11
	addq	$24, %r11
	movq	%rax, %rbx
	addq	$28, %rbx
	movq	%rax, %r14
	addq	$32, %r14
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%r8, -120(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	-120(%rbp), %r15        # 8-byte Reload
	movq	%r9, -128(%rbp)         # 8-byte Spill
	movq	%r15, %r9
	movq	-128(%rbp), %r12        # 8-byte Reload
	movq	%r12, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%r14, 32(%rsp)
	movb	$0, %al
	callq	__isoc99_sscanf
	movl	%eax, -92(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_free
	cmpl	$9, -92(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then.5
	movabsq	$pngvals, %rax
	movl	$36, %ecx
	movl	%ecx, %edx
	leaq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	memcpy
	jmp	.LBB4_5
.LBB4_3:                                # %if.end
	jmp	.LBB4_4
.LBB4_4:                                # %if.end.6
	movabsq	$pngvals, %rax
	movabsq	$defaults, %rcx
	movl	$36, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
.LBB4_5:                                # %return
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	load_defaults, .Lfunc_end4-load_defaults
	.cfi_endproc

	.align	16, 0x90
	.type	save_dialog,@function
save_dialog:                            # @save_dialog
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
	subq	$288, %rsp              # imm = 0x120
	movabsq	$.L.str.57, %rax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	$0, -128(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movabsq	$.L.str.56, %rsi
	movabsq	$.L.str.40, %rdx
	movq	%rax, %rdi
	callq	gimp_export_dialog_new
	movabsq	$.L.str.83, %rsi
	movabsq	$save_dialog_response, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	leaq	-88(%rbp), %rdi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-144(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.84, %rsi
	movabsq	$gtk_main_quit, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdi
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movq	-152(%rbp), %r8         # 8-byte Reload
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_builder_new
	movq	%rax, -104(%rbp)
	callq	gimp_data_directory
	movabsq	$.L.str.85, %rsi
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	leaq	-128(%rbp), %rdx
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	gtk_builder_add_from_file
	cmpl	$0, %eax
	jne	.LBB5_5
# BB#1:                                 # %if.then
	movq	-112(%rbp), %rdi
	callq	g_filename_display_name
	movabsq	$.L.str.86, %rdi
	movq	%rax, -136(%rbp)
	callq	gettext
	movq	-136(%rbp), %rsi
	cmpq	$0, -128(%rbp)
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	je	.LBB5_3
# BB#2:                                 # %cond.true
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB5_4
.LBB5_3:                                # %cond.false
	movabsq	$.L.str.87, %rdi
	callq	gettext
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB5_4:                                # %cond.end
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_printerr
	movq	-136(%rbp), %rdi
	callq	g_free
.LBB5_5:                                # %if.end
	movq	-112(%rbp), %rdi
	callq	g_free
	movq	-96(%rbp), %rdi
	callq	gimp_export_dialog_get_content_area
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.88, %rsi
	movq	-104(%rbp), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_builder_get_object
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movabsq	$.L.str.11, %rsi
	movabsq	$pngvals, %rcx
	movq	-104(%rbp), %rdi
	movl	pngvals, %edx
	callq	toggle_button_init
	movabsq	$.L.str.89, %rsi
	movabsq	$pngvals, %rcx
	addq	$4, %rcx
	movq	%rax, -80(%rbp)
	movq	-104(%rbp), %rdi
	movl	pngvals+4, %edx
	callq	toggle_button_init
	movabsq	$.L.str.90, %rsi
	movabsq	$pngvals, %rcx
	addq	$8, %rcx
	movq	%rax, -72(%rbp)
	movq	-104(%rbp), %rdi
	movl	pngvals+8, %edx
	callq	toggle_button_init
	movabsq	$.L.str.91, %rsi
	movabsq	$pngvals, %rcx
	addq	$12, %rcx
	movq	%rax, -64(%rbp)
	movq	-104(%rbp), %rdi
	movl	pngvals+12, %edx
	callq	toggle_button_init
	movabsq	$.L.str.92, %rsi
	movabsq	$pngvals, %rcx
	addq	$16, %rcx
	movq	%rax, -56(%rbp)
	movq	-104(%rbp), %rdi
	movl	pngvals+16, %edx
	callq	toggle_button_init
	movabsq	$.L.str.93, %rsi
	movabsq	$pngvals, %rcx
	addq	$20, %rcx
	movq	%rax, -48(%rbp)
	movq	-104(%rbp), %rdi
	movl	pngvals+20, %edx
	callq	toggle_button_init
	movabsq	$.L.str.71, %rsi
	movq	%rax, -40(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_image_get_parasite
	xorl	%edx, %edx
	movb	%dl, %r9b
	movq	%rax, -120(%rbp)
	movq	-104(%rbp), %rdi
	cmpl	$0, pngvals+24
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movb	%r9b, -225(%rbp)        # 1-byte Spill
	je	.LBB5_7
# BB#6:                                 # %land.rhs
	cmpq	$0, -120(%rbp)
	setne	%al
	movb	%al, -225(%rbp)         # 1-byte Spill
.LBB5_7:                                # %land.end
	movb	-225(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.94, %rsi
	movabsq	$pngvals, %rcx
	addq	$24, %rcx
	andb	$1, %al
	movzbl	%al, %edx
	movq	-224(%rbp), %rdi        # 8-byte Reload
	callq	toggle_button_init
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	cmpq	$0, -120(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	callq	gtk_widget_set_sensitive
	movq	-120(%rbp), %rdi
	callq	gimp_parasite_free
	xorl	%edx, %edx
	movb	%dl, %r8b
	movq	-104(%rbp), %rdi
	cmpl	$0, -8(%rbp)
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movb	%r8b, -241(%rbp)        # 1-byte Spill
	je	.LBB5_9
# BB#8:                                 # %land.rhs.30
	cmpl	$0, pngvals+28
	setne	%al
	movb	%al, -241(%rbp)         # 1-byte Spill
.LBB5_9:                                # %land.end.32
	movb	-241(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.95, %rsi
	movabsq	$pngvals, %rcx
	addq	$28, %rcx
	andb	$1, %al
	movzbl	%al, %edx
	movq	-240(%rbp), %rdi        # 8-byte Reload
	callq	toggle_button_init
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	-8(%rbp), %esi
	callq	gtk_widget_set_sensitive
	movabsq	$.L.str.96, %rsi
	movq	-104(%rbp), %rdi
	callq	gtk_builder_get_object
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	cvtsi2sdl	pngvals+32, %xmm0
	callq	gtk_adjustment_set_value
	movabsq	$.L.str.97, %rsi
	movabsq	$gimp_int_adjustment_update, %rax
	movabsq	$pngvals, %rcx
	addq	$32, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movabsq	$.L.str.98, %rsi
	movq	-104(%rbp), %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_builder_get_object
	movabsq	$.L.str.99, %rsi
	movabsq	$load_gui_defaults, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	leaq	-88(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-272(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.100, %rsi
	movq	-104(%rbp), %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_builder_get_object
	movabsq	$.L.str.99, %rsi
	movabsq	$save_defaults, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	leaq	-88(%rbp), %rcx
	movq	%rax, %rdi
	callq	g_signal_connect_data
	movq	-96(%rbp), %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movl	$0, -88(%rbp)
	callq	gtk_main
	movl	-88(%rbp), %eax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end5:
	.size	save_dialog, .Lfunc_end5-save_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4601859982876761367     # double 0.45454545454545453
.LCPI6_1:
	.quad	4582978272962677414     # double 0.025399999999999999
.LCPI6_2:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	save_image,@function
save_image:                             # @save_image
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
	subq	$1184, %rsp             # imm = 0x4A0
	movabsq	$.L.str.58, %rax
	xorl	%r9d, %r9d
	movl	%r9d, %r10d
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movl	$0, -52(%rbp)
	movq	$0, -536(%rbp)
	movq	%rax, %rdi
	movq	%r10, %rsi
	movq	%r10, %rdx
	movq	%r10, %rcx
	callq	png_create_write_struct
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.102, %rdi
	movq	-40(%rbp), %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -912(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	-912(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB6_118
.LBB6_2:                                # %if.end
	movq	-152(%rbp), %rdi
	callq	png_create_info_struct
	movabsq	$longjmp, %rsi
	movl	$200, %ecx
	movl	%ecx, %edx
	movq	%rax, -160(%rbp)
	movq	-152(%rbp), %rdi
	callq	png_set_longjmp_fn
	movq	%rax, %rdi
	callq	_setjmp
	cmpl	$0, %eax
	je	.LBB6_4
# BB#3:                                 # %if.then.7
	movabsq	$.L.str.103, %rdi
	movq	-40(%rbp), %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movq	-920(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	-928(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB6_118
.LBB6_4:                                # %if.end.10
	movl	$1, %esi
	movq	-152(%rbp), %rdi
	callq	png_set_benign_errors
	movabsq	$.L.str.104, %rsi
	movq	-16(%rbp), %rdi
	callq	fopen
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB6_6
# BB#5:                                 # %if.then.12
	movq	-40(%rbp), %rdi
	movq	%rdi, -936(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -940(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.105, %rdi
	movl	%eax, -944(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -952(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-936(%rbp), %rdi        # 8-byte Reload
	movl	-940(%rbp), %esi        # 4-byte Reload
	movl	-944(%rbp), %edx        # 4-byte Reload
	movq	-952(%rbp), %rcx        # 8-byte Reload
	movq	-960(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB6_118
.LBB6_6:                                # %if.end.20
	movq	-152(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	png_init_io
	movabsq	$.L.str.106, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	movl	-24(%rbp), %edi
	movl	%eax, -972(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get
	movq	%rax, -96(%rbp)
	movl	-24(%rbp), %edi
	callq	gimp_drawable_type
	movl	%eax, -56(%rbp)
	movl	$0, -44(%rbp)
.LBB6_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -44(%rbp)         # imm = 0x100
	jge	.LBB6_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	-44(%rbp), %eax
	movb	%al, %cl
	movslq	-44(%rbp), %rdx
	movb	%cl, -528(%rbp,%rdx)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_7
.LBB6_10:                               # %for.end
	movl	$8, -264(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$5, %rdx
	movq	%rcx, -984(%rbp)        # 8-byte Spill
	movq	%rdx, -992(%rbp)        # 8-byte Spill
	ja	.LBB6_17
# BB#119:                               # %for.end
	movq	-984(%rbp), %rax        # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_11:                               # %sw.bb
	movl	$2, -260(%rbp)
	movl	$3, -52(%rbp)
	jmp	.LBB6_18
.LBB6_12:                               # %sw.bb.27
	movl	$6, -260(%rbp)
	movl	$4, -52(%rbp)
	jmp	.LBB6_18
.LBB6_13:                               # %sw.bb.28
	movl	$0, -260(%rbp)
	movl	$1, -52(%rbp)
	jmp	.LBB6_18
.LBB6_14:                               # %sw.bb.29
	movl	$4, -260(%rbp)
	movl	$2, -52(%rbp)
	jmp	.LBB6_18
.LBB6_15:                               # %sw.bb.30
	movabsq	$pngg, %rax
	addq	$32, %rax
	movl	$1, -52(%rbp)
	movl	$3, -260(%rbp)
	movl	$1, pngg+20
	movl	-20(%rbp), %edi
	movq	%rax, %rsi
	callq	gimp_image_get_colormap
	movq	%rax, pngg+24
	movl	pngg+32, %edi
	callq	get_bit_depth_for_palette
	movl	%eax, -264(%rbp)
	jmp	.LBB6_18
.LBB6_16:                               # %sw.bb.33
	leaq	-528(%rbp), %rdx
	movl	$2, -52(%rbp)
	movl	$3, -260(%rbp)
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movl	-20(%rbp), %ecx
	movq	-96(%rbp), %r8
	callq	respin_cmap
	movl	%eax, -264(%rbp)
	jmp	.LBB6_18
.LBB6_17:                               # %sw.default
	xorl	%eax, %eax
	movabsq	$.L.str.107, %rcx
	movq	-40(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB6_118
.LBB6_18:                               # %sw.epilog
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movq	-96(%rbp), %rdx
	movl	4(%rdx), %edx
	movq	-96(%rbp), %r8
	movl	8(%r8), %r9d
	movl	-264(%rbp), %r8d
	movl	-260(%rbp), %r10d
	cmpl	$0, pngvals
	cmovnel	%ecx, %eax
	movl	%r9d, %ecx
	movl	%r10d, %r9d
	movl	%eax, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	callq	png_set_IHDR
	cmpl	$0, pngg
	je	.LBB6_20
# BB#19:                                # %if.then.38
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movq	pngg+8, %rdx
	movl	pngg+16, %ecx
	callq	png_set_tRNS
.LBB6_20:                               # %if.end.39
	cmpl	$0, pngg+20
	je	.LBB6_22
# BB#21:                                # %if.then.41
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movq	pngg+24, %rdx
	movl	pngg+32, %ecx
	callq	png_set_PLTE
.LBB6_22:                               # %if.end.42
	movq	-152(%rbp), %rdi
	movl	pngvals+32, %esi
	callq	png_set_compression_level
	cmpl	$0, pngvals+4
	je	.LBB6_24
# BB#23:                                # %if.then.44
	leaq	-224(%rbp), %rdx
	leaq	-568(%rbp), %rax
	movq	%rax, %rdi
	movq	%rdx, -1000(%rbp)       # 8-byte Spill
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	callq	gimp_context_get_background
	leaq	-233(%rbp), %rsi
	leaq	-234(%rbp), %rdx
	leaq	-235(%rbp), %rcx
	movq	-1008(%rbp), %rdi       # 8-byte Reload
	movl	%eax, -1012(%rbp)       # 4-byte Spill
	callq	gimp_rgb_get_uchar
	movb	$0, -224(%rbp)
	movzbl	-233(%rbp), %eax
	movw	%ax, %r8w
	movw	%r8w, -222(%rbp)
	movzbl	-234(%rbp), %eax
	movw	%ax, %r8w
	movw	%r8w, -220(%rbp)
	movzbl	-235(%rbp), %eax
	movw	%ax, %r8w
	movw	%r8w, -218(%rbp)
	movq	-1008(%rbp), %rdi       # 8-byte Reload
	callq	gimp_rgb_luminance_uchar
	movb	%al, %r9b
	movzbl	%al, %r10d
	movw	%r10w, %r8w
	movw	%r8w, -216(%rbp)
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movq	-1000(%rbp), %rdx       # 8-byte Reload
	movb	%r9b, -1013(%rbp)       # 1-byte Spill
	callq	png_set_bKGD
	jmp	.LBB6_25
.LBB6_24:                               # %if.else
	movb	$0, -235(%rbp)
	movb	$0, -234(%rbp)
	movb	$0, -233(%rbp)
.LBB6_25:                               # %if.end.54
	cmpl	$0, pngvals+8
	je	.LBB6_29
# BB#26:                                # %if.then.56
	movabsq	$.L.str.67, %rsi
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -584(%rbp)
	movl	-28(%rbp), %edi
	callq	gimp_image_get_parasite
	movq	%rax, -576(%rbp)
	cmpq	$0, -576(%rbp)
	je	.LBB6_28
# BB#27:                                # %if.then.59
	movq	-576(%rbp), %rdi
	callq	gimp_parasite_data
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	g_ascii_strtod
	movsd	%xmm0, -584(%rbp)
	movq	-576(%rbp), %rdi
	callq	gimp_parasite_free
.LBB6_28:                               # %if.end.62
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movsd	-584(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	png_set_gAMA
.LBB6_29:                               # %if.end.63
	cmpl	$0, pngvals+12
	je	.LBB6_34
# BB#30:                                # %if.then.65
	leaq	-164(%rbp), %rsi
	leaq	-168(%rbp), %rdx
	movl	-24(%rbp), %edi
	callq	gimp_drawable_offsets
	cmpl	$0, -164(%rbp)
	movl	%eax, -1020(%rbp)       # 4-byte Spill
	jne	.LBB6_32
# BB#31:                                # %lor.lhs.false
	cmpl	$0, -168(%rbp)
	je	.LBB6_33
.LBB6_32:                               # %if.then.71
	xorl	%r8d, %r8d
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movl	-164(%rbp), %edx
	movl	-168(%rbp), %ecx
	callq	png_set_oFFs
.LBB6_33:                               # %if.end.72
	jmp	.LBB6_34
.LBB6_34:                               # %if.end.73
	cmpl	$0, pngvals+16
	je	.LBB6_36
# BB#35:                                # %if.then.75
	movl	$1, %r8d
	movl	-28(%rbp), %edi
	leaq	-200(%rbp), %rsi
	leaq	-208(%rbp), %rdx
	movl	%r8d, -1024(%rbp)       # 4-byte Spill
	callq	gimp_image_get_resolution
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movsd	-200(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	.LCPI6_1(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movl	%eax, -1028(%rbp)       # 4-byte Spill
	movq	%rdi, -1040(%rbp)       # 8-byte Spill
	movq	%rsi, -1048(%rbp)       # 8-byte Spill
	movsd	%xmm1, -1056(%rbp)      # 8-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %rdx
	movl	%edx, %eax
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-1056(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movl	%eax, -1060(%rbp)       # 4-byte Spill
	callq	rint
	cvttsd2si	%xmm0, %rdx
	movl	%edx, %eax
	movq	-1040(%rbp), %rdi       # 8-byte Reload
	movq	-1048(%rbp), %rsi       # 8-byte Reload
	movl	-1060(%rbp), %edx       # 4-byte Reload
	movl	%eax, %ecx
	movl	-1024(%rbp), %r8d       # 4-byte Reload
	callq	png_set_pHYs
.LBB6_36:                               # %if.end.82
	cmpl	$0, pngvals+20
	je	.LBB6_38
# BB#37:                                # %if.then.84
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	time
	leaq	-248(%rbp), %rdi
	movq	%rax, -248(%rbp)
	callq	gmtime
	leaq	-232(%rbp), %rdx
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movl	20(%rax), %ecx
	addl	$1900, %ecx             # imm = 0x76C
	movw	%cx, %si
	movw	%si, -232(%rbp)
	movq	-256(%rbp), %rax
	movl	16(%rax), %ecx
	addl	$1, %ecx
	movb	%cl, %r8b
	movb	%r8b, -230(%rbp)
	movq	-256(%rbp), %rax
	movl	12(%rax), %ecx
	movb	%cl, %r8b
	movb	%r8b, -229(%rbp)
	movq	-256(%rbp), %rax
	movl	8(%rax), %ecx
	movb	%cl, %r8b
	movb	%r8b, -228(%rbp)
	movq	-256(%rbp), %rax
	movl	4(%rax), %ecx
	movb	%cl, %r8b
	movb	%r8b, -227(%rbp)
	movq	-256(%rbp), %rax
	movl	(%rax), %ecx
	movb	%cl, %r8b
	movb	%r8b, -226(%rbp)
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	png_set_tIME
.LBB6_38:                               # %if.end.94
	movabsq	$.L.str.72, %rsi
	movq	$0, -600(%rbp)
	movl	-28(%rbp), %edi
	callq	gimp_image_get_parasite
	movq	%rax, -592(%rbp)
	cmpq	$0, -592(%rbp)
	je	.LBB6_45
# BB#39:                                # %if.then.97
	movabsq	$.L.str.73, %rsi
	movl	-28(%rbp), %edi
	callq	gimp_image_get_parasite
	movq	%rax, -608(%rbp)
	cmpq	$0, -608(%rbp)
	je	.LBB6_41
# BB#40:                                # %if.then.101
	movq	-608(%rbp), %rdi
	callq	gimp_parasite_data
	movq	-608(%rbp), %rdi
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	callq	gimp_parasite_data_size
	movabsq	$.L.str.55, %rdx
	movabsq	$.L.str.70, %rcx
	xorl	%esi, %esi
	movl	%esi, %edi
	movq	-1072(%rbp), %r8        # 8-byte Reload
	movq	%rdi, -1080(%rbp)       # 8-byte Spill
	movq	%r8, %rdi
	movq	%rax, %rsi
	movq	-1080(%rbp), %r8        # 8-byte Reload
	movq	-1080(%rbp), %r9        # 8-byte Reload
	movq	$0, (%rsp)
	callq	g_convert
	movq	%rax, -600(%rbp)
.LBB6_41:                               # %if.end.105
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	cmpq	$0, -600(%rbp)
	movq	%rdi, -1088(%rbp)       # 8-byte Spill
	movq	%rsi, -1096(%rbp)       # 8-byte Spill
	je	.LBB6_43
# BB#42:                                # %cond.true
	movq	-600(%rbp), %rax
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	jmp	.LBB6_44
.LBB6_43:                               # %cond.false
	movabsq	$.L.str.108, %rax
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	jmp	.LBB6_44
.LBB6_44:                               # %cond.end
	movq	-1104(%rbp), %rax       # 8-byte Reload
	movq	-592(%rbp), %rdi
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	callq	gimp_parasite_data
	movq	-592(%rbp), %rdi
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	callq	gimp_parasite_data_size
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movq	-1088(%rbp), %rdi       # 8-byte Reload
	movq	-1096(%rbp), %rsi       # 8-byte Reload
	movq	-1112(%rbp), %rax       # 8-byte Reload
	movl	%edx, -1124(%rbp)       # 4-byte Spill
	movq	%rax, %rdx
	movq	-1120(%rbp), %r8        # 8-byte Reload
	movl	-1124(%rbp), %r9d       # 4-byte Reload
	callq	png_set_iCCP
	movq	-600(%rbp), %rdi
	callq	g_free
.LBB6_45:                               # %if.end.111
	cmpl	$0, pngvals+24
	je	.LBB6_51
# BB#46:                                # %if.then.113
	movabsq	$.L.str.71, %rsi
	movl	-28(%rbp), %edi
	callq	gimp_image_get_parasite
	movq	%rax, -616(%rbp)
	cmpq	$0, -616(%rbp)
	je	.LBB6_50
# BB#47:                                # %if.then.117
	movq	-616(%rbp), %rdi
	callq	gimp_parasite_data
	movq	-616(%rbp), %rdi
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	callq	gimp_parasite_data_size
	movq	-1136(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_strndup
	movq	%rax, -624(%rbp)
	movq	-616(%rbp), %rdi
	callq	gimp_parasite_free
	movl	$1, %ecx
	movl	%ecx, %edi
	movl	$56, %ecx
	movl	%ecx, %esi
	callq	g_malloc0_n
	movabsq	$.L.str.69, %rsi
	movq	%rax, -536(%rbp)
	movq	-536(%rbp), %rax
	movq	%rsi, 8(%rax)
	movq	-536(%rbp), %rax
	movl	$1, (%rax)
	movq	-624(%rbp), %rax
	movq	-536(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movq	-624(%rbp), %rdi
	callq	strlen
	movq	-536(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-536(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB6_49
# BB#48:                                # %if.then.126
	movq	-536(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	$0, -536(%rbp)
.LBB6_49:                               # %if.end.127
	jmp	.LBB6_50
.LBB6_50:                               # %if.end.128
	jmp	.LBB6_51
.LBB6_51:                               # %if.end.129
	cmpq	$0, -536(%rbp)
	je	.LBB6_53
# BB#52:                                # %if.then.131
	movl	$1, %ecx
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movq	-536(%rbp), %rdx
	callq	png_set_text
.LBB6_53:                               # %if.end.132
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	png_write_info
	cmpl	$0, pngvals
	je	.LBB6_55
# BB#54:                                # %if.then.134
	movq	-152(%rbp), %rdi
	callq	png_set_interlace_handling
	movl	%eax, -60(%rbp)
	jmp	.LBB6_56
.LBB6_55:                               # %if.else.136
	movl	$1, -60(%rbp)
.LBB6_56:                               # %if.end.137
	cmpl	$3, -260(%rbp)
	jne	.LBB6_59
# BB#57:                                # %land.lhs.true
	cmpl	$8, -264(%rbp)
	jge	.LBB6_59
# BB#58:                                # %if.then.142
	movq	-152(%rbp), %rdi
	callq	png_set_packing
.LBB6_59:                               # %if.end.143
	callq	gimp_tile_height
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movq	-96(%rbp), %rdx
	imull	4(%rdx), %eax
	imull	-52(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	g_malloc_n
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	%rax, -192(%rbp)
	movslq	-68(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -176(%rbp)
	movl	$0, -44(%rbp)
.LBB6_60:                               # %for.cond.151
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB6_63
# BB#61:                                # %for.body.154
                                        #   in Loop: Header=BB6_60 Depth=1
	movq	-192(%rbp), %rax
	movq	-96(%rbp), %rcx
	movl	4(%rcx), %edx
	imull	-52(%rbp), %edx
	imull	-44(%rbp), %edx
	movl	%edx, %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movslq	-44(%rbp), %rcx
	movq	-176(%rbp), %rsi
	movq	%rax, (%rsi,%rcx,8)
# BB#62:                                # %for.inc.160
                                        #   in Loop: Header=BB6_60 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_60
.LBB6_63:                               # %for.end.162
	leaq	-144(%rbp), %rdi
	xorl	%eax, %eax
	movq	-96(%rbp), %rsi
	movq	-96(%rbp), %rcx
	movl	4(%rcx), %r8d
	movq	-96(%rbp), %rcx
	movl	8(%rcx), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$0, -64(%rbp)
.LBB6_64:                               # %for.cond.165
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_66 Depth 2
                                        #       Child Loop BB6_72 Depth 3
                                        #         Child Loop BB6_74 Depth 4
                                        #       Child Loop BB6_84 Depth 3
                                        #       Child Loop BB6_88 Depth 3
                                        #         Child Loop BB6_90 Depth 4
                                        #       Child Loop BB6_102 Depth 3
                                        #         Child Loop BB6_104 Depth 4
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB6_115
# BB#65:                                # %for.body.168
                                        #   in Loop: Header=BB6_64 Depth=1
	movl	$0, -72(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -76(%rbp)
.LBB6_66:                               # %for.cond.169
                                        #   Parent Loop BB6_64 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_72 Depth 3
                                        #         Child Loop BB6_74 Depth 4
                                        #       Child Loop BB6_84 Depth 3
                                        #       Child Loop BB6_88 Depth 3
                                        #         Child Loop BB6_90 Depth 4
                                        #       Child Loop BB6_102 Depth 3
                                        #         Child Loop BB6_104 Depth 4
	movl	-72(%rbp), %eax
	movq	-96(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB6_113
# BB#67:                                # %for.body.173
                                        #   in Loop: Header=BB6_66 Depth=2
	movl	-76(%rbp), %eax
	movq	-96(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jbe	.LBB6_69
# BB#68:                                # %if.then.177
                                        #   in Loop: Header=BB6_66 Depth=2
	movq	-96(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -76(%rbp)
.LBB6_69:                               # %if.end.179
                                        #   in Loop: Header=BB6_66 Depth=2
	leaq	-144(%rbp), %rdi
	xorl	%edx, %edx
	movl	-76(%rbp), %eax
	subl	-72(%rbp), %eax
	movl	%eax, -80(%rbp)
	movq	-192(%rbp), %rsi
	movl	-72(%rbp), %ecx
	movq	-96(%rbp), %r8
	movl	4(%r8), %r8d
	movl	-80(%rbp), %r9d
	callq	gimp_pixel_rgn_get_rect
	cmpl	$4, -52(%rbp)
	jne	.LBB6_82
# BB#70:                                # %land.lhs.true.183
                                        #   in Loop: Header=BB6_66 Depth=2
	cmpl	$0, pngvals+28
	jne	.LBB6_82
# BB#71:                                # %if.then.185
                                        #   in Loop: Header=BB6_66 Depth=2
	movl	$0, -44(%rbp)
.LBB6_72:                               # %for.cond.186
                                        #   Parent Loop BB6_64 Depth=1
                                        #     Parent Loop BB6_66 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_74 Depth 4
	movl	-44(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB6_81
# BB#73:                                # %for.body.189
                                        #   in Loop: Header=BB6_72 Depth=3
	movslq	-44(%rbp), %rax
	movq	-176(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -184(%rbp)
	movl	$0, -48(%rbp)
.LBB6_74:                               # %for.cond.192
                                        #   Parent Loop BB6_64 Depth=1
                                        #     Parent Loop BB6_66 Depth=2
                                        #       Parent Loop BB6_72 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jae	.LBB6_79
# BB#75:                                # %for.body.196
                                        #   in Loop: Header=BB6_74 Depth=4
	movl	-48(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -628(%rbp)
	movl	-628(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-184(%rbp), %rdx
	cmpb	$0, (%rdx,%rcx)
	jne	.LBB6_77
# BB#76:                                # %if.then.201
                                        #   in Loop: Header=BB6_74 Depth=4
	movb	-233(%rbp), %al
	movl	-628(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rdx
	movq	-184(%rbp), %rsi
	movb	%al, (%rsi,%rdx)
	movb	-234(%rbp), %al
	movl	-628(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-184(%rbp), %rsi
	movb	%al, (%rsi,%rdx)
	movb	-235(%rbp), %al
	movl	-628(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdx
	movq	-184(%rbp), %rsi
	movb	%al, (%rsi,%rdx)
.LBB6_77:                               # %if.end.211
                                        #   in Loop: Header=BB6_74 Depth=4
	jmp	.LBB6_78
.LBB6_78:                               # %for.inc.212
                                        #   in Loop: Header=BB6_74 Depth=4
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB6_74
.LBB6_79:                               # %for.end.214
                                        #   in Loop: Header=BB6_72 Depth=3
	jmp	.LBB6_80
.LBB6_80:                               # %for.inc.215
                                        #   in Loop: Header=BB6_72 Depth=3
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_72
.LBB6_81:                               # %for.end.217
                                        #   in Loop: Header=BB6_66 Depth=2
	jmp	.LBB6_82
.LBB6_82:                               # %if.end.218
                                        #   in Loop: Header=BB6_66 Depth=2
	movl	$16, %edx
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	png_get_valid
	cmpl	$0, %eax
	je	.LBB6_99
# BB#83:                                # %if.then.221
                                        #   in Loop: Header=BB6_66 Depth=2
	movl	$0, -44(%rbp)
.LBB6_84:                               # %for.cond.222
                                        #   Parent Loop BB6_64 Depth=1
                                        #     Parent Loop BB6_66 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$256, -44(%rbp)         # imm = 0x100
	jge	.LBB6_87
# BB#85:                                # %for.body.225
                                        #   in Loop: Header=BB6_84 Depth=3
	movl	-44(%rbp), %eax
	movb	%al, %cl
	movslq	-44(%rbp), %rdx
	movzbl	-528(%rbp,%rdx), %eax
	movl	%eax, %edx
	movb	%cl, -896(%rbp,%rdx)
# BB#86:                                # %for.inc.231
                                        #   in Loop: Header=BB6_84 Depth=3
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_84
.LBB6_87:                               # %for.end.233
                                        #   in Loop: Header=BB6_66 Depth=2
	movl	$0, -44(%rbp)
.LBB6_88:                               # %for.cond.234
                                        #   Parent Loop BB6_64 Depth=1
                                        #     Parent Loop BB6_66 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_90 Depth 4
	movl	-44(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB6_98
# BB#89:                                # %for.body.237
                                        #   in Loop: Header=BB6_88 Depth=3
	movslq	-44(%rbp), %rax
	movq	-176(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -184(%rbp)
	movl	$0, -48(%rbp)
.LBB6_90:                               # %for.cond.240
                                        #   Parent Loop BB6_64 Depth=1
                                        #     Parent Loop BB6_66 Depth=2
                                        #       Parent Loop BB6_88 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jae	.LBB6_96
# BB#91:                                # %for.body.244
                                        #   in Loop: Header=BB6_90 Depth=4
	movl	-48(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-184(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$127, %eax
	jle	.LBB6_93
# BB#92:                                # %cond.true.252
                                        #   in Loop: Header=BB6_90 Depth=4
	movl	-48(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rcx
	movq	-184(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, %ecx
	movzbl	-896(%rbp,%rcx), %eax
	movl	%eax, -1140(%rbp)       # 4-byte Spill
	jmp	.LBB6_94
.LBB6_93:                               # %cond.false.259
                                        #   in Loop: Header=BB6_90 Depth=4
	xorl	%eax, %eax
	movl	%eax, -1140(%rbp)       # 4-byte Spill
	jmp	.LBB6_94
.LBB6_94:                               # %cond.end.260
                                        #   in Loop: Header=BB6_90 Depth=4
	movl	-1140(%rbp), %eax       # 4-byte Reload
	movb	%al, %cl
	movslq	-48(%rbp), %rdx
	movq	-184(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#95:                                # %for.inc.265
                                        #   in Loop: Header=BB6_90 Depth=4
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB6_90
.LBB6_96:                               # %for.end.267
                                        #   in Loop: Header=BB6_88 Depth=3
	jmp	.LBB6_97
.LBB6_97:                               # %for.inc.268
                                        #   in Loop: Header=BB6_88 Depth=3
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_88
.LBB6_98:                               # %for.end.270
                                        #   in Loop: Header=BB6_66 Depth=2
	jmp	.LBB6_111
.LBB6_99:                               # %if.else.271
                                        #   in Loop: Header=BB6_66 Depth=2
	movl	$8, %edx
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	png_get_valid
	cmpl	$0, %eax
	je	.LBB6_110
# BB#100:                               # %land.lhs.true.274
                                        #   in Loop: Header=BB6_66 Depth=2
	cmpl	$2, -52(%rbp)
	jne	.LBB6_110
# BB#101:                               # %if.then.277
                                        #   in Loop: Header=BB6_66 Depth=2
	movl	$0, -44(%rbp)
.LBB6_102:                              # %for.cond.278
                                        #   Parent Loop BB6_64 Depth=1
                                        #     Parent Loop BB6_66 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_104 Depth 4
	movl	-44(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB6_109
# BB#103:                               # %for.body.281
                                        #   in Loop: Header=BB6_102 Depth=3
	movslq	-44(%rbp), %rax
	movq	-176(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -184(%rbp)
	movl	$0, -48(%rbp)
.LBB6_104:                              # %for.cond.284
                                        #   Parent Loop BB6_64 Depth=1
                                        #     Parent Loop BB6_66 Depth=2
                                        #       Parent Loop BB6_102 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-48(%rbp), %eax
	movq	-96(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jae	.LBB6_107
# BB#105:                               # %for.body.288
                                        #   in Loop: Header=BB6_104 Depth=4
	movl	-48(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rcx
	movq	-184(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movslq	-48(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
# BB#106:                               # %for.inc.294
                                        #   in Loop: Header=BB6_104 Depth=4
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB6_104
.LBB6_107:                              # %for.end.296
                                        #   in Loop: Header=BB6_102 Depth=3
	jmp	.LBB6_108
.LBB6_108:                              # %for.inc.297
                                        #   in Loop: Header=BB6_102 Depth=3
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_102
.LBB6_109:                              # %for.end.299
                                        #   in Loop: Header=BB6_66 Depth=2
	jmp	.LBB6_110
.LBB6_110:                              # %if.end.300
                                        #   in Loop: Header=BB6_66 Depth=2
	jmp	.LBB6_111
.LBB6_111:                              # %if.end.301
                                        #   in Loop: Header=BB6_66 Depth=2
	movq	-152(%rbp), %rdi
	movq	-176(%rbp), %rsi
	movl	-80(%rbp), %edx
	callq	png_write_rows
	cvtsi2sdl	-64(%rbp), %xmm0
	cvtsi2sdl	-76(%rbp), %xmm1
	movq	-96(%rbp), %rsi
	movl	8(%rsi), %edx
	movl	%edx, %esi
	cvtsi2sdq	%rsi, %xmm2
	divsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	cvtsi2sdl	-60(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -1144(%rbp)       # 4-byte Spill
# BB#112:                               # %for.inc.311
                                        #   in Loop: Header=BB6_66 Depth=2
	movl	-68(%rbp), %eax
	addl	-72(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-68(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB6_66
.LBB6_113:                              # %for.end.314
                                        #   in Loop: Header=BB6_64 Depth=1
	jmp	.LBB6_114
.LBB6_114:                              # %for.inc.315
                                        #   in Loop: Header=BB6_64 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB6_64
.LBB6_115:                              # %for.end.317
	movsd	.LCPI6_2, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movl	%eax, -1148(%rbp)       # 4-byte Spill
	callq	png_write_end
	leaq	-152(%rbp), %rdi
	leaq	-160(%rbp), %rsi
	callq	png_destroy_write_struct
	movq	-192(%rbp), %rdi
	callq	g_free
	movq	-176(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_free
	cmpq	$0, -536(%rbp)
	je	.LBB6_117
# BB#116:                               # %if.then.320
	movq	-536(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free
	movq	-536(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB6_117:                              # %if.end.322
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movq	-88(%rbp), %rdi
	callq	fclose
	movl	$1, -4(%rbp)
	movl	%eax, -1152(%rbp)       # 4-byte Spill
.LBB6_118:                              # %return
	movl	-4(%rbp), %eax
	addq	$1184, %rsp             # imm = 0x4A0
	popq	%rbp
	retq
.Lfunc_end6:
	.size	save_image, .Lfunc_end6-save_image
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_11
	.quad	.LBB6_12
	.quad	.LBB6_13
	.quad	.LBB6_14
	.quad	.LBB6_15
	.quad	.LBB6_16

	.text
	.align	16, 0x90
	.type	save_defaults,@function
save_defaults:                          # @save_defaults
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
	pushq	%rbx
	subq	$72, %rsp
.Ltmp33:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.82, %rdi
	movl	pngvals, %esi
	movl	pngvals+4, %edx
	movl	pngvals+8, %ecx
	movl	pngvals+12, %r8d
	movl	pngvals+16, %r9d
	movl	pngvals+20, %eax
	movl	pngvals+24, %r10d
	movl	pngvals+28, %r11d
	movl	pngvals+32, %ebx
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%ebx, 24(%rsp)
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.81, %rdi
	movl	$1, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -36(%rbp)         # 4-byte Spill
	callq	strlen
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movl	-36(%rbp), %esi         # 4-byte Reload
	movl	%ecx, %edx
	movq	%rax, %rcx
	callq	gimp_parasite_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_attach_parasite
	movq	-16(%rbp), %rdi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	gimp_parasite_free
	movq	-24(%rbp), %rdi
	callq	g_free
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	save_defaults, .Lfunc_end7-save_defaults
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI8_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	offsets_dialog,@function
offsets_dialog:                         # @offsets_dialog
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
	pushq	%r14
	pushq	%rbx
	subq	$240, %rsp
.Ltmp37:
	.cfi_offset %rbx, -32
.Ltmp38:
	.cfi_offset %r14, -24
	movabsq	$.L.str.56, %rax
	xorl	%ecx, %ecx
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gimp_ui_init
	movabsq	$.L.str.74, %rdi
	callq	gettext
	movabsq	$.L.str.76, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.77, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.75, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.29, %r9
	movl	$4294967287, %r10d      # imm = 0xFFFFFFF7
	movl	$4294967288, %r11d      # imm = 0xFFFFFFF8
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, (%rsp)
	movl	$-9, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$-8, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%r10d, -92(%rbp)        # 4-byte Spill
	movl	%r11d, -96(%rbp)        # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967288, %esi       # imm = 0xFFFFFFF8
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967288, %esi       # imm = 0xFFFFFFF8
	movl	$4294967287, %edx       # imm = 0xFFFFFFF7
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-32(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_resizable
	xorl	%edi, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movl	-156(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.78, %rdi
	movl	$6, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movl	-180(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.79, %rdi
	callq	gettext
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gtk_label_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-56(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_line_wrap
	movq	-40(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-8, %eax
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %eax
	movl	%eax, -68(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-68(%rbp), %eax
	addq	$240, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end8:
	.size	offsets_dialog, .Lfunc_end8-offsets_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	je	.LBB9_2
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
.LBB9_2:                                # %entry
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
.Lfunc_end9:
	.size	g_message, .Lfunc_end9-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	on_read_error,@function
on_read_error:                          # @on_read_error
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	png_get_error_ptr
	movabsq	$.L.str.80, %rdi
	movq	%rax, -24(%rbp)
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_warning
	xorl	%edx, %edx
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	-24(%rbp), %rcx
	movl	40(%rcx), %ecx
	movq	-24(%rbp), %r8
	movq	16(%r8), %r8
	movl	4(%r8), %r8d
	movq	-24(%rbp), %r9
	movl	48(%r9), %r9d
	callq	gimp_pixel_rgn_set_rect
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	-24(%rbp), %r10
	movl	36(%r10), %ecx
	movq	-24(%rbp), %r10
	imull	24(%r10), %ecx
	movq	-24(%rbp), %r10
	imull	32(%r10), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	callq	memset
	movq	-24(%rbp), %rdx
	movl	40(%rdx), %ecx
	movq	-24(%rbp), %rdx
	addl	36(%rdx), %ecx
	movl	%ecx, -28(%rbp)
	movq	-24(%rbp), %rdx
	movl	44(%rdx), %ecx
	movq	-24(%rbp), %rdx
	addl	36(%rdx), %ecx
	movl	%ecx, -32(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	28(%rcx), %eax
	jae	.LBB10_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	28(%rcx), %eax
	jbe	.LBB10_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-24(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, -32(%rbp)
.LBB10_4:                               # %if.end
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%edx, %edx
	movl	-32(%rbp), %eax
	subl	-28(%rbp), %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rsi
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %r8
	movq	16(%r8), %r8
	movl	4(%r8), %r8d
	movl	-36(%rbp), %r9d
	callq	gimp_pixel_rgn_set_rect
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-24(%rbp), %rax
	movl	36(%rax), %ecx
	addl	-28(%rbp), %ecx
	movl	%ecx, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	36(%rax), %ecx
	addl	-32(%rbp), %ecx
	movl	%ecx, -32(%rbp)
	jmp	.LBB10_1
.LBB10_6:                               # %for.end
	movabsq	$longjmp, %rsi
	movl	$200, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	callq	png_set_longjmp_fn
	movl	$1, %esi
	movq	%rax, %rdi
	callq	longjmp
.Lfunc_end10:
	.size	on_read_error, .Lfunc_end10-on_read_error
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end11:
	.size	g_warning, .Lfunc_end11-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	save_dialog_response,@function
save_dialog_response:                   # @save_dialog_response
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	-12(%rbp), %esi
	subl	$-5, %esi
	movl	%esi, -36(%rbp)         # 4-byte Spill
	jne	.LBB12_2
	jmp	.LBB12_1
.LBB12_1:                               # %sw.bb
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
.LBB12_2:                               # %sw.default
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
# BB#3:                                 # %sw.epilog
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	save_dialog_response, .Lfunc_end12-save_dialog_response
	.cfi_endproc

	.align	16, 0x90
	.type	toggle_button_init,@function
toggle_button_init:                     # @toggle_button_init
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
	movabsq	$.L.str.101, %rsi
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
.Lfunc_end13:
	.size	toggle_button_init, .Lfunc_end13-toggle_button_init
	.cfi_endproc

	.align	16, 0x90
	.type	load_gui_defaults,@function
load_gui_defaults:                      # @load_gui_defaults
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	callq	load_defaults
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	gtk_widget_is_sensitive
	cmpl	$0, %eax
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	pngvals, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
.LBB14_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_is_sensitive
	cmpl	$0, %eax
	je	.LBB14_4
# BB#3:                                 # %if.then.6
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	pngvals+4, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
.LBB14_4:                               # %if.end.10
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gtk_widget_is_sensitive
	cmpl	$0, %eax
	je	.LBB14_6
# BB#5:                                 # %if.then.13
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	pngvals+8, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
.LBB14_6:                               # %if.end.17
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gtk_widget_is_sensitive
	cmpl	$0, %eax
	je	.LBB14_8
# BB#7:                                 # %if.then.20
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	pngvals+12, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
.LBB14_8:                               # %if.end.24
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gtk_widget_is_sensitive
	cmpl	$0, %eax
	je	.LBB14_10
# BB#9:                                 # %if.then.27
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	pngvals+16, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
.LBB14_10:                              # %if.end.31
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gtk_widget_is_sensitive
	cmpl	$0, %eax
	je	.LBB14_12
# BB#11:                                # %if.then.34
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	pngvals+20, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
.LBB14_12:                              # %if.end.38
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gtk_widget_is_sensitive
	cmpl	$0, %eax
	je	.LBB14_14
# BB#13:                                # %if.then.41
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	pngvals+24, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
.LBB14_14:                              # %if.end.45
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	callq	gtk_widget_is_sensitive
	cmpl	$0, %eax
	je	.LBB14_16
# BB#15:                                # %if.then.48
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	pngvals+28, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
.LBB14_16:                              # %if.end.52
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	cvtsi2sdl	pngvals+32, %xmm0
	callq	gtk_adjustment_set_value
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	load_gui_defaults, .Lfunc_end14-load_gui_defaults
	.cfi_endproc

	.align	16, 0x90
	.type	get_bit_depth_for_palette,@function
get_bit_depth_for_palette:              # @get_bit_depth_for_palette
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
	movl	%edi, -8(%rbp)
	cmpl	$2, -8(%rbp)
	jg	.LBB15_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB15_7
.LBB15_2:                               # %if.else
	cmpl	$4, -8(%rbp)
	jg	.LBB15_4
# BB#3:                                 # %if.then.2
	movl	$2, -4(%rbp)
	jmp	.LBB15_7
.LBB15_4:                               # %if.else.3
	cmpl	$16, -8(%rbp)
	jg	.LBB15_6
# BB#5:                                 # %if.then.5
	movl	$4, -4(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.6
	movl	$8, -4(%rbp)
.LBB15_7:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end15:
	.size	get_bit_depth_for_palette, .Lfunc_end15-get_bit_depth_for_palette
	.cfi_endproc

	.align	16, 0x90
	.type	respin_cmap,@function
respin_cmap:                            # @respin_cmap
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
	subq	$64, %rsp
	leaq	-44(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movl	-28(%rbp), %edi
	movq	%rax, %rsi
	callq	gimp_image_get_colormap
	movq	%rax, -56(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	movl	$3, %eax
	movl	%eax, %edi
	movl	$1, %eax
	movl	%eax, %esi
	callq	g_malloc0_n
	movq	%rax, -56(%rbp)
	movl	$1, -44(%rbp)
.LBB16_2:                               # %if.end
	movq	-40(%rbp), %rdi
	callq	ia_has_transparent_pixels
	cmpl	$0, %eax
	je	.LBB16_15
# BB#3:                                 # %if.then.3
	leaq	-44(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	find_unused_ia_color
	movl	%eax, -60(%rbp)
	cmpl	$-1, -60(%rbp)
	je	.LBB16_13
# BB#4:                                 # %if.then.6
	movabsq	$respin_cmap.trans, %rax
	movl	$1, pngg
	movq	%rax, pngg+8
	movl	$1, pngg+16
	movl	-60(%rbp), %ecx
	movb	%cl, %dl
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
	movl	$1, -64(%rbp)
.LBB16_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jg	.LBB16_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB16_5 Depth=1
	movl	-64(%rbp), %eax
	subl	$1, %eax
	movb	%al, %cl
	movslq	-64(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB16_5 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB16_5
.LBB16_8:                               # %for.end
	movl	$0, -64(%rbp)
.LBB16_9:                               # %for.cond.11
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB16_12
# BB#10:                                # %for.body.14
                                        #   in Loop: Header=BB16_9 Depth=1
	movabsq	$respin_cmap.palette, %rax
	movslq	-64(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	imull	$3, %esi, %esi
	movslq	%esi, %rcx
	movq	-56(%rbp), %rdx
	movb	(%rdx,%rcx), %dil
	movslq	-64(%rbp), %rcx
	imulq	$3, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movb	%dil, (%rdx)
	movslq	-64(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	imull	$3, %esi, %esi
	addl	$1, %esi
	movslq	%esi, %rcx
	movq	-56(%rbp), %rdx
	movb	(%rdx,%rcx), %dil
	movslq	-64(%rbp), %rcx
	imulq	$3, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movb	%dil, 1(%rdx)
	movslq	-64(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	imull	$3, %esi, %esi
	addl	$2, %esi
	movslq	%esi, %rcx
	movq	-56(%rbp), %rdx
	movb	(%rdx,%rcx), %dil
	movslq	-64(%rbp), %rcx
	imulq	$3, %rcx, %rcx
	addq	%rcx, %rax
	movb	%dil, 2(%rax)
# BB#11:                                # %for.inc.39
                                        #   in Loop: Header=BB16_9 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB16_9
.LBB16_12:                              # %for.end.41
	movabsq	$respin_cmap.palette, %rax
	movl	$1, pngg+20
	movq	%rax, pngg+24
	movl	-44(%rbp), %ecx
	movl	%ecx, pngg+32
	jmp	.LBB16_14
.LBB16_13:                              # %if.else
	movabsq	$.L.str.109, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$1, pngg+20
	movq	-56(%rbp), %rdi
	movq	%rdi, pngg+24
	movl	-44(%rbp), %ecx
	movl	%ecx, pngg+32
.LBB16_14:                              # %if.end.43
	jmp	.LBB16_16
.LBB16_15:                              # %if.else.44
	movl	$1, pngg+20
	movq	-56(%rbp), %rax
	movq	%rax, pngg+24
	movl	-44(%rbp), %ecx
	movl	%ecx, pngg+32
.LBB16_16:                              # %if.end.45
	movl	-44(%rbp), %edi
	callq	get_bit_depth_for_palette
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	respin_cmap, .Lfunc_end16-respin_cmap
	.cfi_endproc

	.align	16, 0x90
	.type	ia_has_transparent_pixels,@function
ia_has_transparent_pixels:              # @ia_has_transparent_pixels
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
	subq	$112, %rsp
	leaq	-64(%rbp), %rax
	xorl	%ecx, %ecx
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movl	4(%rdi), %r8d
	movq	-16(%rbp), %rdi
	movl	8(%rdi), %r9d
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$1, %edi
	leaq	-64(%rbp), %rsi
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -72(%rbp)
.LBB17_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_3 Depth 2
                                        #       Child Loop BB17_5 Depth 3
	cmpq	$0, -72(%rbp)
	je	.LBB17_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$0, -84(%rbp)
.LBB17_3:                               # %for.cond.1
                                        #   Parent Loop BB17_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_5 Depth 3
	movl	-84(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB17_12
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB17_3 Depth=2
	movq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	movl	$0, -88(%rbp)
.LBB17_5:                               # %for.cond.4
                                        #   Parent Loop BB17_1 Depth=1
                                        #     Parent Loop BB17_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-88(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB17_10
# BB#6:                                 # %for.body.6
                                        #   in Loop: Header=BB17_5 Depth=3
	movq	-96(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$127, %ecx
	jg	.LBB17_8
# BB#7:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB17_15
.LBB17_8:                               # %if.end
                                        #   in Loop: Header=BB17_5 Depth=3
	movq	-96(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -96(%rbp)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB17_5 Depth=3
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB17_5
.LBB17_10:                              # %for.end
                                        #   in Loop: Header=BB17_3 Depth=2
	movl	-44(%rbp), %eax
	movq	-80(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
# BB#11:                                # %for.inc.10
                                        #   in Loop: Header=BB17_3 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB17_3
.LBB17_12:                              # %for.end.12
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_13
.LBB17_13:                              # %for.inc.13
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-72(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -72(%rbp)
	jmp	.LBB17_1
.LBB17_14:                              # %for.end.15
	movl	$0, -4(%rbp)
.LBB17_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	ia_has_transparent_pixels, .Lfunc_end17-ia_has_transparent_pixels
	.cfi_endproc

	.align	16, 0x90
	.type	find_unused_ia_color,@function
find_unused_ia_color:                   # @find_unused_ia_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$1168, %rsp             # imm = 0x490
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -1060(%rbp)
	movl	$0, -1132(%rbp)
.LBB18_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-1132(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB18_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movslq	-1132(%rbp), %rax
	movl	$0, -1056(%rbp,%rax,4)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-1132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1132(%rbp)
	jmp	.LBB18_1
.LBB18_4:                               # %for.end
	leaq	-1112(%rbp), %rdi
	xorl	%eax, %eax
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %r8d
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$1, %edi
	leaq	-1112(%rbp), %rsi
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -1120(%rbp)
.LBB18_5:                               # %for.cond.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_7 Depth 2
                                        #       Child Loop BB18_9 Depth 3
	cmpq	$0, -1120(%rbp)
	je	.LBB18_19
# BB#6:                                 # %for.body.3
                                        #   in Loop: Header=BB18_5 Depth=1
	movq	-1112(%rbp), %rax
	movq	%rax, -1144(%rbp)
	movl	$0, -1124(%rbp)
.LBB18_7:                               # %for.cond.4
                                        #   Parent Loop BB18_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_9 Depth 3
	movl	-1124(%rbp), %eax
	cmpl	-1076(%rbp), %eax
	jge	.LBB18_17
# BB#8:                                 # %for.body.6
                                        #   in Loop: Header=BB18_7 Depth=2
	movq	-1144(%rbp), %rax
	movq	%rax, -1152(%rbp)
	movl	$0, -1128(%rbp)
.LBB18_9:                               # %for.cond.7
                                        #   Parent Loop BB18_5 Depth=1
                                        #     Parent Loop BB18_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-1128(%rbp), %eax
	cmpl	-1080(%rbp), %eax
	jge	.LBB18_15
# BB#10:                                # %for.body.9
                                        #   in Loop: Header=BB18_9 Depth=3
	movq	-1152(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	$127, %ecx
	jle	.LBB18_12
# BB#11:                                # %if.then
                                        #   in Loop: Header=BB18_9 Depth=3
	movq	-1152(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movl	$1, -1056(%rbp,%rax,4)
	jmp	.LBB18_13
.LBB18_12:                              # %if.else
                                        #   in Loop: Header=BB18_9 Depth=3
	movl	$1, -1060(%rbp)
.LBB18_13:                              # %if.end
                                        #   in Loop: Header=BB18_9 Depth=3
	movq	-1152(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -1152(%rbp)
# BB#14:                                # %for.inc.16
                                        #   in Loop: Header=BB18_9 Depth=3
	movl	-1128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1128(%rbp)
	jmp	.LBB18_9
.LBB18_15:                              # %for.end.18
                                        #   in Loop: Header=BB18_7 Depth=2
	movl	-1092(%rbp), %eax
	movq	-1144(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -1144(%rbp)
# BB#16:                                # %for.inc.20
                                        #   in Loop: Header=BB18_7 Depth=2
	movl	-1124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1124(%rbp)
	jmp	.LBB18_7
.LBB18_17:                              # %for.end.22
                                        #   in Loop: Header=BB18_5 Depth=1
	jmp	.LBB18_18
.LBB18_18:                              # %for.inc.23
                                        #   in Loop: Header=BB18_5 Depth=1
	movq	-1120(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -1120(%rbp)
	jmp	.LBB18_5
.LBB18_19:                              # %for.end.25
	cmpl	$0, -1060(%rbp)
	jne	.LBB18_21
# BB#20:                                # %if.then.28
	movl	$-1, -4(%rbp)
	jmp	.LBB18_30
.LBB18_21:                              # %if.end.29
	movl	$0, -1132(%rbp)
.LBB18_22:                              # %for.cond.30
                                        # =>This Inner Loop Header: Depth=1
	movl	-1132(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB18_27
# BB#23:                                # %for.body.33
                                        #   in Loop: Header=BB18_22 Depth=1
	movslq	-1132(%rbp), %rax
	cmpl	$0, -1056(%rbp,%rax,4)
	jne	.LBB18_25
# BB#24:                                # %if.then.38
	movl	-1132(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB18_30
.LBB18_25:                              # %if.end.39
                                        #   in Loop: Header=BB18_22 Depth=1
	jmp	.LBB18_26
.LBB18_26:                              # %for.inc.40
                                        #   in Loop: Header=BB18_22 Depth=1
	movl	-1132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1132(%rbp)
	jmp	.LBB18_22
.LBB18_27:                              # %for.end.42
	movq	-24(%rbp), %rax
	cmpl	$256, (%rax)            # imm = 0x100
	jge	.LBB18_29
# BB#28:                                # %if.then.45
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB18_30
.LBB18_29:                              # %if.end.47
	movl	$-1, -4(%rbp)
.LBB18_30:                              # %return
	movl	-4(%rbp), %eax
	addq	$1168, %rsp             # imm = 0x490
	popq	%rbp
	retq
.Lfunc_end18:
	.size	find_unused_ia_color, .Lfunc_end18-find_unused_ia_color
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
	.quad	.L.str.5
	.quad	.L.str.7
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.10
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.10
	.long	0                       # 0x0
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
	.quad	.L.str.16
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.17
	.quad	.L.str.18
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.19
	.quad	.L.str.20
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.21
	.quad	.L.str.22
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.23
	.quad	.L.str.24
	.size	query.save_args, 288

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"Input image"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"drawable"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Drawable to save"
	.size	.L.str.9, 17

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"The name of the file to save the image in"
	.size	.L.str.10, 42

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"interlace"
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Use Adam7 interlacing?"
	.size	.L.str.12, 23

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"compression"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Deflate Compression factor (0--9)"
	.size	.L.str.14, 34

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"bkgd"
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Write bKGD chunk?"
	.size	.L.str.16, 18

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gama"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Write gAMA chunk?"
	.size	.L.str.18, 18

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"offs"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Write oFFs chunk?"
	.size	.L.str.20, 18

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"phys"
	.size	.L.str.21, 5

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Write pHYs chunk?"
	.size	.L.str.22, 18

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"time"
	.size	.L.str.23, 5

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Write tIME chunk?"
	.size	.L.str.24, 18

	.type	query.save_args2,@object # @query.save_args2
	.section	.rodata,"a",@progbits
	.align	16
query.save_args2:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.5
	.quad	.L.str.7
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.10
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.10
	.long	0                       # 0x0
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
	.quad	.L.str.16
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.17
	.quad	.L.str.18
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.19
	.quad	.L.str.20
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.21
	.quad	.L.str.22
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.23
	.quad	.L.str.24
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.25
	.quad	.L.str.26
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.27
	.quad	.L.str.28
	.size	query.save_args2, 336

	.type	.L.str.25,@object       # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"comment"
	.size	.L.str.25, 8

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Write comment?"
	.size	.L.str.26, 15

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"svtrans"
	.size	.L.str.27, 8

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Preserve color of transparent pixels?"
	.size	.L.str.28, 38

	.type	query.save_args_defaults,@object # @query.save_args_defaults
	.section	.rodata,"a",@progbits
	.align	16
query.save_args_defaults:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.5
	.quad	.L.str.7
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.10
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.10
	.size	query.save_args_defaults, 120

	.type	query.save_get_defaults_return_vals,@object # @query.save_get_defaults_return_vals
	.align	16
query.save_get_defaults_return_vals:
	.long	0                       # 0x0
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
	.quad	.L.str.16
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.17
	.quad	.L.str.18
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.19
	.quad	.L.str.20
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.21
	.quad	.L.str.22
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.23
	.quad	.L.str.24
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.25
	.quad	.L.str.26
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.27
	.quad	.L.str.28
	.size	query.save_get_defaults_return_vals, 216

	.type	query.save_args_set_defaults,@object # @query.save_args_set_defaults
	.align	16
query.save_args_set_defaults:
	.long	0                       # 0x0
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
	.quad	.L.str.16
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.17
	.quad	.L.str.18
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.19
	.quad	.L.str.20
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.21
	.quad	.L.str.22
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.23
	.quad	.L.str.24
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.25
	.quad	.L.str.26
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.27
	.quad	.L.str.28
	.size	query.save_args_set_defaults, 216

	.type	.L.str.29,@object       # @.str.29
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.29:
	.asciz	"file-png-load"
	.size	.L.str.29, 14

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Loads files in PNG file format"
	.size	.L.str.30, 31

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"This plug-in loads Portable Network Graphics (PNG) files."
	.size	.L.str.31, 58

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Michael Sweet <mike@easysw.com>, Daniel Skarda <0rfelyus@atrey.karlin.mff.cuni.cz>"
	.size	.L.str.32, 83

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Michael Sweet <mike@easysw.com>, Daniel Skarda <0rfelyus@atrey.karlin.mff.cuni.cz>, Nick Lamb <njl195@zepler.org.uk>"
	.size	.L.str.33, 117

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"1.3.4 - 03 September 2002"
	.size	.L.str.34, 26

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"PNG image"
	.size	.L.str.35, 10

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"image/png"
	.size	.L.str.36, 10

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"png"
	.size	.L.str.37, 4

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.zero	1
	.size	.L.str.38, 1

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"0,string,\211PNG\r\n\032\n"
	.size	.L.str.39, 18

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"file-png-save"
	.size	.L.str.40, 14

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Saves files in PNG file format"
	.size	.L.str.41, 31

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"This plug-in saves Portable Network Graphics (PNG) files."
	.size	.L.str.42, 58

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"RGB*,GRAY*,INDEXED*"
	.size	.L.str.43, 20

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"file-png-save2"
	.size	.L.str.44, 15

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"This plug-in saves Portable Network Graphics (PNG) files. This procedure adds 2 extra parameters to file-png-save that allows to control whether image comments are saved and whether transparent pixels are saved or nullified."
	.size	.L.str.45, 225

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"file-png-save-defaults"
	.size	.L.str.46, 23

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"This plug-in saves Portable Network Graphics (PNG) files, using the default settings stored as a parasite."
	.size	.L.str.47, 107

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"file-png-get-defaults"
	.size	.L.str.48, 22

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Get the current set of defaults used by the PNG file save plug-in"
	.size	.L.str.49, 66

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"This procedure returns the current set of defaults stored as a parasite for the PNG save plug-in. These defaults are used to seed the UI, by the file_png_save_defaults procedure, and by gimp_file_save when it detects to use PNG."
	.size	.L.str.50, 229

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"file-png-set-defaults"
	.size	.L.str.51, 22

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Set the current set of defaults used by the PNG file save plug-in"
	.size	.L.str.52, 66

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"This procedure set the current set of defaults stored as a parasite for the PNG save plug-in. These defaults are used to seed the UI, by the file_png_save_defaults procedure, and by gimp_file_save when it detects to use PNG."
	.size	.L.str.53, 225

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,400,16
	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.54, 20

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"UTF-8"
	.size	.L.str.55, 6

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"file-png"
	.size	.L.str.56, 9

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"PNG"
	.size	.L.str.57, 4

	.type	pngvals,@object         # @pngvals
	.local	pngvals
	.comm	pngvals,36,4
	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"1.5.13"
	.size	.L.str.58, 7

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Error creating PNG read struct while saving '%s'."
	.size	.L.str.59, 50

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Error while reading '%s'. File corrupted?"
	.size	.L.str.60, 42

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"rb"
	.size	.L.str.61, 3

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.62, 36

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Opening '%s'"
	.size	.L.str.63, 13

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Unknown color model in PNG file '%s'."
	.size	.L.str.64, 38

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Could not create new image for '%s': %s"
	.size	.L.str.65, 40

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Background"
	.size	.L.str.66, 11

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"gamma"
	.size	.L.str.67, 6

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"The PNG file specifies an offset that caused the layer to be positioned outside the image."
	.size	.L.str.68, 91

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Comment"
	.size	.L.str.69, 8

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"ISO-8859-1"
	.size	.L.str.70, 11

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"gimp-comment"
	.size	.L.str.71, 13

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"icc-profile"
	.size	.L.str.72, 12

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"icc-profile-name"
	.size	.L.str.73, 17

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Apply PNG Offset"
	.size	.L.str.74, 17

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"gimp-file-png"
	.size	.L.str.75, 14

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Ignore PNG offset"
	.size	.L.str.76, 18

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"Apply PNG offset to layer"
	.size	.L.str.77, 26

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"gimp-question"
	.size	.L.str.78, 14

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"The PNG image you are importing specifies an offset of %d, %d. Do you want to apply this offset to the layer?"
	.size	.L.str.79, 110

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"Error loading PNG file: %s"
	.size	.L.str.80, 27

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"png-save-defaults"
	.size	.L.str.81, 18

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"%d %d %d %d %d %d %d %d %d"
	.size	.L.str.82, 27

	.type	defaults,@object        # @defaults
	.section	.rodata,"a",@progbits
	.align	4
defaults:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	9                       # 0x9
	.size	defaults, 36

	.type	.L.str.83,@object       # @.str.83
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.83:
	.asciz	"response"
	.size	.L.str.83, 9

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"destroy"
	.size	.L.str.84, 8

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"ui/plug-ins/plug-in-file-png.ui"
	.size	.L.str.85, 32

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Error loading UI file '%s': %s"
	.size	.L.str.86, 31

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Unknown error"
	.size	.L.str.87, 14

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"table"
	.size	.L.str.88, 6

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"save-background-color"
	.size	.L.str.89, 22

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"save-gamma"
	.size	.L.str.90, 11

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"save-layer-offset"
	.size	.L.str.91, 18

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"save-resolution"
	.size	.L.str.92, 16

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"save-creation-time"
	.size	.L.str.93, 19

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"save-comment"
	.size	.L.str.94, 13

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"save-transparent-pixels"
	.size	.L.str.95, 24

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"compression-level"
	.size	.L.str.96, 18

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"value-changed"
	.size	.L.str.97, 14

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"load-defaults"
	.size	.L.str.98, 14

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"clicked"
	.size	.L.str.99, 8

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"save-defaults"
	.size	.L.str.100, 14

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"toggled"
	.size	.L.str.101, 8

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"Error creating PNG write struct while saving '%s'."
	.size	.L.str.102, 51

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"Error while saving '%s'. Could not save image."
	.size	.L.str.103, 47

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"wb"
	.size	.L.str.104, 3

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.105, 36

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"Saving '%s'"
	.size	.L.str.106, 12

	.type	pngg,@object            # @pngg
	.local	pngg
	.comm	pngg,40,8
	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"Image type can't be saved as PNG"
	.size	.L.str.107, 33

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"ICC profile"
	.size	.L.str.108, 12

	.type	respin_cmap.trans,@object # @respin_cmap.trans
	.local	respin_cmap.trans
	.comm	respin_cmap.trans,1,1
	.type	respin_cmap.palette,@object # @respin_cmap.palette
	.local	respin_cmap.palette
	.comm	respin_cmap.palette,768,16
	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"Couldn't losslessly save transparency, saving opacity instead."
	.size	.L.str.109, 63


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
