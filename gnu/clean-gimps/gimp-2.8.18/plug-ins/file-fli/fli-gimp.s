	.text
	.file	"fli-gimp.bc"
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
	subq	$168, %rsp
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
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.1, %rsi
	movabsq	$.L.str.2, %rdx
	movabsq	$.L.str.3, %rax
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movl	$1, %r8d
	movl	$3, %r11d
	movabsq	$load_args, %rbx
	movabsq	$load_return_vals, %r14
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
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.6, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rcx
	movq	%rcx, %rdx
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	gimp_register_magic_load_handler
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.2, %rdx
	movabsq	$.L.str.3, %rcx
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %r8
	movabsq	$.L.str.11, %r10
	movl	$1, %r11d
	movl	$7, %r15d
	xorl	%r12d, %r12d
	movabsq	$save_args, %rbx
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
	movl	$7, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movq	%r14, -104(%rbp)        # 8-byte Spill
	movl	%r12d, -108(%rbp)       # 4-byte Spill
	movl	%r15d, -112(%rbp)       # 4-byte Spill
	movl	%r11d, -116(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.6, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rdx
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	gimp_register_save_handler
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.14, %rdx
	movabsq	$.L.str.3, %rcx
	movabsq	$.L.str.4, %r9
	xorl	%r11d, %r11d
	movl	%r11d, %r8d
	movl	$1, %r11d
	movl	$3, %r15d
	movabsq	$info_args, %r10
	movabsq	$info_return_vals, %rbx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movq	-128(%rbp), %r14        # 8-byte Reload
	movq	%r8, -136(%rbp)         # 8-byte Spill
	movq	%r14, %r8
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$1, 24(%rsp)
	movl	$3, 32(%rsp)
	movq	%r10, 40(%rsp)
	movq	%rbx, 48(%rsp)
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movl	%r11d, -144(%rbp)       # 4-byte Spill
	movl	%r15d, -148(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	addq	$168, %rsp
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
	movl	$0, -68(%rbp)
	movq	$0, -80(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -48(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.40, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.40, %rdi
	movabsq	$.L.str.41, %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.40, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	textdomain
	movq	%rax, -120(%rbp)        # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	$0, run.values+8
	movq	-8(%rbp), %rdi
	movl	$.L.str, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_38
# BB#3:                                 # %if.then
	movl	-48(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB1_29
	jmp	.LBB1_89
.LBB1_89:                               # %if.then
	movl	-124(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB1_4
	jmp	.LBB1_90
.LBB1_90:                               # %if.then
	movl	-124(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB1_36
	jmp	.LBB1_37
.LBB1_4:                                # %sw.bb
	movslq	-12(%rbp), %rax
	cmpq	$3, %rax
	jb	.LBB1_6
# BB#5:                                 # %lor.lhs.false
	movl	$5, %eax
	movl	%eax, %ecx
	movslq	-12(%rbp), %rdx
	cmpq	%rdx, %rcx
	jae	.LBB1_7
.LBB1_6:                                # %if.then.10
	movl	$1, -44(%rbp)
	jmp	.LBB1_37
.LBB1_7:                                # %if.end
	movl	$0, -52(%rbp)
.LBB1_8:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-52(%rbp), %rax
	cmpq	$3, %rax
	jae	.LBB1_13
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB1_8 Depth=1
	movabsq	$load_args, %rax
	movslq	-52(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	(%rax), %edx
	movslq	-52(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-24(%rbp), %rax
	cmpl	(%rax), %edx
	je	.LBB1_11
# BB#10:                                # %if.then.20
	movl	$1, -44(%rbp)
	jmp	.LBB1_13
.LBB1_11:                               # %if.end.21
                                        #   in Loop: Header=BB1_8 Depth=1
	jmp	.LBB1_12
.LBB1_12:                               # %for.inc
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB1_8
.LBB1_13:                               # %for.end
	movl	$3, -52(%rbp)
.LBB1_14:                               # %for.cond.22
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB1_19
# BB#15:                                # %for.body.25
                                        #   in Loop: Header=BB1_14 Depth=1
	movabsq	$load_args, %rax
	movslq	-52(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	(%rax), %edx
	movslq	-52(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-24(%rbp), %rax
	cmpl	(%rax), %edx
	je	.LBB1_17
# BB#16:                                # %if.then.34
	movl	$1, -44(%rbp)
	jmp	.LBB1_19
.LBB1_17:                               # %if.end.35
                                        #   in Loop: Header=BB1_14 Depth=1
	jmp	.LBB1_18
.LBB1_18:                               # %for.inc.36
                                        #   in Loop: Header=BB1_14 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB1_14
.LBB1_19:                               # %for.end.38
	movslq	-12(%rbp), %rax
	cmpq	$4, %rax
	jae	.LBB1_21
# BB#20:                                # %cond.true
	movl	$1, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB1_22
.LBB1_21:                               # %cond.false
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -136(%rbp)        # 4-byte Spill
.LBB1_22:                               # %cond.end
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, to_frame
	movslq	-12(%rbp), %rcx
	cmpq	$5, %rcx
	jae	.LBB1_24
# BB#23:                                # %cond.true.48
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB1_25
.LBB1_24:                               # %cond.false.49
	movq	-24(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
.LBB1_25:                               # %cond.end.53
	movl	-140(%rbp), %eax        # 4-byte Reload
	leaq	-80(%rbp), %rcx
	movl	%eax, from_frame
	movq	-24(%rbp), %rdx
	movq	48(%rdx), %rdi
	movl	from_frame, %esi
	movl	to_frame, %edx
	callq	load_image
	movl	%eax, -56(%rbp)
	cmpl	$-1, -56(%rbp)
	je	.LBB1_27
# BB#26:                                # %if.then.60
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$13, run.values+40
	movl	-56(%rbp), %ecx
	movl	%ecx, run.values+48
	jmp	.LBB1_28
.LBB1_27:                               # %if.else
	movl	$0, -44(%rbp)
.LBB1_28:                               # %if.end.61
	jmp	.LBB1_37
.LBB1_29:                               # %sw.bb.62
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	load_dialog
	cmpl	$0, %eax
	je	.LBB1_34
# BB#30:                                # %if.then.67
	leaq	-80(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	movl	from_frame, %esi
	movl	to_frame, %edx
	callq	load_image
	movl	%eax, -56(%rbp)
	cmpl	$-1, -56(%rbp)
	je	.LBB1_32
# BB#31:                                # %if.then.74
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$13, run.values+40
	movl	-56(%rbp), %ecx
	movl	%ecx, run.values+48
	jmp	.LBB1_33
.LBB1_32:                               # %if.else.75
	movl	$0, -44(%rbp)
.LBB1_33:                               # %if.end.76
	jmp	.LBB1_35
.LBB1_34:                               # %if.else.77
	movl	$4, -44(%rbp)
.LBB1_35:                               # %if.end.78
	jmp	.LBB1_37
.LBB1_36:                               # %sw.bb.79
	movl	$1, -44(%rbp)
.LBB1_37:                               # %sw.epilog
	jmp	.LBB1_82
.LBB1_38:                               # %if.else.80
	movq	-8(%rbp), %rdi
	movl	$.L.str.9, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_62
# BB#39:                                # %if.then.84
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -64(%rbp)
	movl	%ecx, -56(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movl	-48(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -144(%rbp)        # 4-byte Spill
	je	.LBB1_51
	jmp	.LBB1_87
.LBB1_87:                               # %if.then.84
	movl	-144(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	je	.LBB1_40
	jmp	.LBB1_88
.LBB1_88:                               # %if.then.84
	movl	-144(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	je	.LBB1_51
	jmp	.LBB1_59
.LBB1_40:                               # %sw.bb.91
	movslq	-12(%rbp), %rax
	cmpq	$7, %rax
	je	.LBB1_42
# BB#41:                                # %if.then.95
	movl	$1, -44(%rbp)
	jmp	.LBB1_59
.LBB1_42:                               # %if.end.96
	movl	$0, -52(%rbp)
.LBB1_43:                               # %for.cond.97
                                        # =>This Inner Loop Header: Depth=1
	movslq	-52(%rbp), %rax
	cmpq	$7, %rax
	jae	.LBB1_48
# BB#44:                                # %for.body.101
                                        #   in Loop: Header=BB1_43 Depth=1
	movabsq	$save_args, %rax
	movslq	-52(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	(%rax), %edx
	movslq	-52(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-24(%rbp), %rax
	cmpl	(%rax), %edx
	je	.LBB1_46
# BB#45:                                # %if.then.110
	movl	$1, -44(%rbp)
	jmp	.LBB1_48
.LBB1_46:                               # %if.end.111
                                        #   in Loop: Header=BB1_43 Depth=1
	jmp	.LBB1_47
.LBB1_47:                               # %for.inc.112
                                        #   in Loop: Header=BB1_43 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB1_43
.LBB1_48:                               # %for.end.114
	leaq	-80(%rbp), %r8
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	movl	-56(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	208(%rax), %edx
	movq	-24(%rbp), %rax
	movl	248(%rax), %ecx
	callq	save_image
	cmpl	$0, %eax
	jne	.LBB1_50
# BB#49:                                # %if.then.126
	movl	$0, -44(%rbp)
.LBB1_50:                               # %if.end.127
	jmp	.LBB1_59
.LBB1_51:                               # %sw.bb.128
	movabsq	$.L.str.42, %rdi
	xorl	%esi, %esi
	callq	gimp_ui_init
	leaq	-56(%rbp), %rdi
	leaq	-60(%rbp), %rsi
	movabsq	$.L.str.43, %rdx
	movl	$54, %ecx
	callq	gimp_export_image
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.LBB1_53
# BB#52:                                # %if.then.132
	movl	$4, run.values+8
	jmp	.LBB1_86
.LBB1_53:                               # %if.end.133
	movq	-24(%rbp), %rax
	movl	48(%rax), %edi
	callq	save_dialog
	cmpl	$0, %eax
	je	.LBB1_57
# BB#54:                                # %if.then.138
	leaq	-80(%rbp), %r8
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	movl	-56(%rbp), %esi
	movl	from_frame, %edx
	movl	to_frame, %ecx
	callq	save_image
	cmpl	$0, %eax
	jne	.LBB1_56
# BB#55:                                # %if.then.144
	movl	$0, -44(%rbp)
.LBB1_56:                               # %if.end.145
	jmp	.LBB1_58
.LBB1_57:                               # %if.else.146
	movl	$4, -44(%rbp)
.LBB1_58:                               # %if.end.147
	jmp	.LBB1_59
.LBB1_59:                               # %sw.epilog.148
	cmpl	$2, -68(%rbp)
	jne	.LBB1_61
# BB#60:                                # %if.then.151
	movl	-56(%rbp), %edi
	callq	gimp_image_delete
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB1_61:                               # %if.end.153
	jmp	.LBB1_81
.LBB1_62:                               # %if.else.154
	movq	-8(%rbp), %rdi
	movl	$.L.str.12, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_79
# BB#63:                                # %if.then.158
	movslq	-12(%rbp), %rax
	cmpq	$1, %rax
	je	.LBB1_65
# BB#64:                                # %if.then.162
	movl	$1, -44(%rbp)
.LBB1_65:                               # %if.end.163
	cmpl	$3, -44(%rbp)
	jne	.LBB1_73
# BB#66:                                # %if.then.166
	movl	$0, -52(%rbp)
.LBB1_67:                               # %for.cond.167
                                        # =>This Inner Loop Header: Depth=1
	movslq	-52(%rbp), %rax
	cmpq	$7, %rax
	jae	.LBB1_72
# BB#68:                                # %for.body.171
                                        #   in Loop: Header=BB1_67 Depth=1
	movabsq	$info_args, %rax
	movslq	-52(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	(%rax), %edx
	movslq	-52(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-24(%rbp), %rax
	cmpl	(%rax), %edx
	je	.LBB1_70
# BB#69:                                # %if.then.180
	movl	$1, -44(%rbp)
	jmp	.LBB1_72
.LBB1_70:                               # %if.end.181
                                        #   in Loop: Header=BB1_67 Depth=1
	jmp	.LBB1_71
.LBB1_71:                               # %for.inc.182
                                        #   in Loop: Header=BB1_67 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB1_67
.LBB1_72:                               # %for.end.184
	jmp	.LBB1_73
.LBB1_73:                               # %if.end.185
	cmpl	$3, -44(%rbp)
	jne	.LBB1_78
# BB#74:                                # %if.then.188
	leaq	-84(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	leaq	-92(%rbp), %rcx
	leaq	-80(%rbp), %r8
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	get_info
	cmpl	$0, %eax
	je	.LBB1_76
# BB#75:                                # %if.then.194
	movq	-32(%rbp), %rax
	movl	$4, (%rax)
	movl	$0, run.values+40
	movl	-84(%rbp), %ecx
	movl	%ecx, run.values+48
	movl	$0, run.values+80
	movl	-88(%rbp), %ecx
	movl	%ecx, run.values+88
	movl	$0, run.values+120
	movl	-92(%rbp), %ecx
	movl	%ecx, run.values+128
	jmp	.LBB1_77
.LBB1_76:                               # %if.else.195
	movl	$0, -44(%rbp)
.LBB1_77:                               # %if.end.196
	jmp	.LBB1_78
.LBB1_78:                               # %if.end.197
	jmp	.LBB1_80
.LBB1_79:                               # %if.else.198
	movl	$1, -44(%rbp)
.LBB1_80:                               # %if.end.199
	jmp	.LBB1_81
.LBB1_81:                               # %if.end.200
	jmp	.LBB1_82
.LBB1_82:                               # %if.end.201
	cmpl	$3, -44(%rbp)
	je	.LBB1_85
# BB#83:                                # %land.lhs.true
	cmpq	$0, -80(%rbp)
	je	.LBB1_85
# BB#84:                                # %if.then.205
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
.LBB1_85:                               # %if.end.206
	movl	-44(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_86:                               # %return
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

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
.LCPI3_1:
	.quad	4636737291354636288     # double 100
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
	subq	$1856, %rsp             # imm = 0x740
	movabsq	$.L.str.44, %rax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	fopen
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	movq	%rdi, -1768(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -1772(%rbp)       # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.45, %rdi
	movl	%eax, -1776(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -1784(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -1792(%rbp)       # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-1768(%rbp), %rdi       # 8-byte Reload
	movl	-1772(%rbp), %esi       # 4-byte Reload
	movl	-1776(%rbp), %edx       # 4-byte Reload
	movq	-1784(%rbp), %rcx       # 8-byte Reload
	movq	-1792(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB3_31
.LBB3_2:                                # %if.end
	movabsq	$.L.str.46, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -1800(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-1800(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	leaq	-1744(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movl	%eax, -1804(%rbp)       # 4-byte Spill
	callq	fli_read_header
	movzwl	-1736(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB3_4
# BB#3:                                 # %if.then.12
	movl	$-1, -4(%rbp)
	jmp	.LBB3_31
.LBB3_4:                                # %if.else
	movl	$128, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	movq	-40(%rbp), %rdi
	callq	fseek
	movl	%eax, -1808(%rbp)       # 4-byte Spill
# BB#5:                                 # %if.end.14
	cmpl	$-1, -20(%rbp)
	jne	.LBB3_8
# BB#6:                                 # %land.lhs.true
	cmpl	$-1, -24(%rbp)
	jne	.LBB3_8
# BB#7:                                 # %if.then.19
	movl	$1, -20(%rbp)
	movzwl	-1734(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB3_8:                                # %if.end.21
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB3_10
# BB#9:                                 # %if.then.24
	movzwl	-1734(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB3_10:                               # %if.end.27
	cmpl	$1, -20(%rbp)
	jge	.LBB3_12
# BB#11:                                # %if.then.30
	movl	$1, -20(%rbp)
.LBB3_12:                               # %if.end.31
	cmpl	$1, -24(%rbp)
	jge	.LBB3_14
# BB#13:                                # %if.then.34
	movl	$-1, -4(%rbp)
	jmp	.LBB3_31
.LBB3_14:                               # %if.end.35
	movl	-20(%rbp), %eax
	movzwl	-1734(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	.LBB3_16
# BB#15:                                # %if.then.40
	movl	$-1, -4(%rbp)
	jmp	.LBB3_31
.LBB3_16:                               # %if.end.41
	movl	-24(%rbp), %eax
	movzwl	-1734(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB3_18
# BB#17:                                # %if.then.46
	movzwl	-1734(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB3_18:                               # %if.end.49
	movl	$2, %edx
	movzwl	-1732(%rbp), %edi
	movzwl	-1730(%rbp), %esi
	callq	gimp_image_new
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	gimp_image_set_filename
	movzwl	-1732(%rbp), %edx
	movzwl	-1730(%rbp), %edi
	imull	%edi, %edx
	movslq	%edx, %rdi
	movl	%eax, -1812(%rbp)       # 4-byte Spill
	callq	g_malloc
	movq	%rax, -64(%rbp)
	movzwl	-1732(%rbp), %edx
	movzwl	-1730(%rbp), %ecx
	imull	%ecx, %edx
	movslq	%edx, %rdi
	callq	g_malloc
	movq	%rax, -72(%rbp)
	movl	$1, -1748(%rbp)
.LBB3_19:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-1748(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB3_22
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB3_19 Depth=1
	leaq	-1744(%rbp), %rsi
	leaq	-848(%rbp), %r9
	leaq	-1616(%rbp), %rcx
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %r8
	callq	fli_read_frame
	movl	$768, %eax              # imm = 0x300
	movl	%eax, %edx
	leaq	-848(%rbp), %rcx
	leaq	-1616(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	-64(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rcx, -72(%rbp)
# BB#21:                                # %for.inc
                                        #   in Loop: Header=BB3_19 Depth=1
	movl	-1748(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1748(%rbp)
	jmp	.LBB3_19
.LBB3_22:                               # %for.end
	movl	-20(%rbp), %eax
	movl	%eax, -1748(%rbp)
.LBB3_23:                               # %for.cond.70
                                        # =>This Inner Loop Header: Depth=1
	movl	-1748(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jg	.LBB3_30
# BB#24:                                # %for.body.73
                                        #   in Loop: Header=BB3_23 Depth=1
	movabsq	$.L.str.47, %rdi
	callq	gettext
	movl	-1748(%rbp), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movl	$4, %r8d
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movq	%rax, -1760(%rbp)
	movl	-52(%rbp), %edi
	movq	-1760(%rbp), %rsi
	movzwl	-1732(%rbp), %edx
	movzwl	-1730(%rbp), %ecx
	callq	gimp_layer_new
	movl	%eax, -56(%rbp)
	movq	-1760(%rbp), %rdi
	callq	g_free
	movl	-56(%rbp), %edi
	callq	gimp_drawable_get
	leaq	-1744(%rbp), %rsi
	leaq	-848(%rbp), %r9
	leaq	-1616(%rbp), %rcx
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %r8
	callq	fli_read_frame
	leaq	-1664(%rbp), %rdi
	xorl	%r10d, %r10d
	movl	$1, %r11d
	movq	-48(%rbp), %rsi
	movzwl	-1732(%rbp), %r8d
	movzwl	-1730(%rbp), %r9d
	movl	%r10d, %edx
	movl	%r10d, %ecx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	movl	%r11d, -1816(%rbp)      # 4-byte Spill
	callq	gimp_pixel_rgn_init
	leaq	-1664(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movzwl	-1732(%rbp), %r8d
	movzwl	-1730(%rbp), %r9d
	movl	%ecx, %edx
	callq	gimp_pixel_rgn_set_rect
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_flush
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	cmpl	$0, -1748(%rbp)
	jle	.LBB3_26
# BB#25:                                # %if.then.94
                                        #   in Loop: Header=BB3_23 Depth=1
	movl	-56(%rbp), %edi
	callq	gimp_layer_add_alpha
	movl	%eax, -1820(%rbp)       # 4-byte Spill
.LBB3_26:                               # %if.end.96
                                        #   in Loop: Header=BB3_23 Depth=1
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	-52(%rbp), %edi
	movl	-56(%rbp), %esi
	callq	gimp_image_insert_layer
	movl	-1748(%rbp), %ecx
	cmpl	-24(%rbp), %ecx
	movl	%eax, -1824(%rbp)       # 4-byte Spill
	jge	.LBB3_28
# BB#27:                                # %if.then.100
                                        #   in Loop: Header=BB3_23 Depth=1
	movl	$768, %eax              # imm = 0x300
	movl	%eax, %edx
	leaq	-848(%rbp), %rcx
	leaq	-1616(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	-64(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rcx, -72(%rbp)
.LBB3_28:                               # %if.end.101
                                        #   in Loop: Header=BB3_23 Depth=1
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-1748(%rbp), %xmm1
	movl	-24(%rbp), %eax
	subl	-20(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -1828(%rbp)       # 4-byte Spill
# BB#29:                                # %for.inc.105
                                        #   in Loop: Header=BB3_23 Depth=1
	movl	-1748(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1748(%rbp)
	jmp	.LBB3_23
.LBB3_30:                               # %for.end.107
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	$256, %edx              # imm = 0x100
	leaq	-848(%rbp), %rsi
	movl	-52(%rbp), %edi
	movl	%eax, -1832(%rbp)       # 4-byte Spill
	callq	gimp_image_set_colormap
	movq	-40(%rbp), %rdi
	movl	%eax, -1836(%rbp)       # 4-byte Spill
	callq	fclose
	movq	-64(%rbp), %rdi
	movl	%eax, -1840(%rbp)       # 4-byte Spill
	callq	g_free
	movq	-72(%rbp), %rdi
	callq	g_free
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB3_31:                               # %return
	movl	-4(%rbp), %eax
	addq	$1856, %rsp             # imm = 0x740
	popq	%rbp
	retq
.Lfunc_end3:
	.size	load_image, .Lfunc_end3-load_image
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
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	load_dialog,@function
load_dialog:                            # @load_dialog
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
	subq	$288, %rsp              # imm = 0x120
.Ltmp20:
	.cfi_offset %rbx, -32
.Ltmp21:
	.cfi_offset %r14, -24
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	leaq	-68(%rbp), %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	get_info
	movabsq	$.L.str.42, %rdi
	xorl	%esi, %esi
	movl	$1, from_frame
	movl	-68(%rbp), %r9d
	movl	%r9d, to_frame
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_ui_init
	movabsq	$.L.str.48, %rdi
	callq	gettext
	movabsq	$.L.str.49, %rsi
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str, %r9
	movabsq	$.L.str.50, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.51, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -92(%rbp)         # 4-byte Spill
	movl	%r10d, -96(%rbp)        # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movl	$2, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	movl	-148(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-56(%rbp), %rdi
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_2, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	xorl	%esi, %esi
	cvtsi2sdl	from_frame, %xmm1
	cvtsi2sdl	-68(%rbp), %xmm2
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-160(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-160(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.52, %rsi
	movl	$12, %ecx
	movl	%ecx, %edx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-48(%rbp), %r8
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.53, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$from_frame, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r11
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rcx, %rdx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	leaq	-56(%rbp), %rdi
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_2, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	xorl	%esi, %esi
	cvtsi2sdl	to_frame, %xmm1
	cvtsi2sdl	-68(%rbp), %xmm2
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-200(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-200(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-200(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_spin_button_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movabsq	$.L.str.54, %rsi
	movl	$12, %r9d
	movl	%r9d, %edx
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	xorl	%esi, %esi
	movl	$1, %r9d
	xorps	%xmm0, %xmm0
	movss	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-48(%rbp), %r8
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %edx
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.53, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$to_frame, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r11
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rcx, %rdx
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-32(%rbp), %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %eax
	movl	%eax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-72(%rbp), %eax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	load_dialog, .Lfunc_end4-load_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4596827742536767164     # double 0.21260000000000001
.LCPI5_1:
	.quad	4604617168452267173     # double 0.71519999999999995
.LCPI5_2:
	.quad	4589866978952703325     # double 0.0722
.LCPI5_3:
	.quad	4602678819172646912     # double 0.5
.LCPI5_4:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	save_image,@function
save_image:                             # @save_image
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
	subq	$1248, %rsp             # imm = 0x4E0
	leaq	-68(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movl	-20(%rbp), %edi
	movq	%rax, %rsi
	callq	gimp_image_get_layers
	movq	%rax, -64(%rbp)
	cmpl	$-1, -24(%rbp)
	jne	.LBB5_3
# BB#1:                                 # %land.lhs.true
	cmpl	$-1, -28(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -24(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB5_3:                                # %if.end
	movl	-28(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB5_5
# BB#4:                                 # %if.then.3
	movl	-68(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB5_5:                                # %if.end.4
	cmpl	$1, -24(%rbp)
	jge	.LBB5_7
# BB#6:                                 # %if.then.6
	movl	$1, -24(%rbp)
.LBB5_7:                                # %if.end.7
	cmpl	$1, -28(%rbp)
	jge	.LBB5_9
# BB#8:                                 # %if.then.9
	movl	$0, -4(%rbp)
	jmp	.LBB5_64
.LBB5_9:                                # %if.end.10
	movl	-24(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jle	.LBB5_11
# BB#10:                                # %if.then.12
	movl	$0, -4(%rbp)
	jmp	.LBB5_64
.LBB5_11:                               # %if.end.13
	movl	-28(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jle	.LBB5_13
# BB#12:                                # %if.then.15
	movl	-68(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB5_13:                               # %if.end.16
	leaq	-1024(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	callq	gimp_context_get_background
	leaq	-90(%rbp), %rsi
	leaq	-91(%rbp), %rdx
	leaq	-92(%rbp), %rcx
	movq	-1120(%rbp), %rdi       # 8-byte Reload
	movl	%eax, -1124(%rbp)       # 4-byte Spill
	callq	gimp_rgb_get_uchar
	movl	-20(%rbp), %edi
	callq	gimp_image_base_type
	movl	%eax, %edi
	subl	$1, %eax
	movl	%edi, -1128(%rbp)       # 4-byte Spill
	movl	%eax, -1132(%rbp)       # 4-byte Spill
	je	.LBB5_14
	jmp	.LBB5_65
.LBB5_65:                               # %if.end.16
	movl	-1128(%rbp), %eax       # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -1136(%rbp)       # 4-byte Spill
	je	.LBB5_19
	jmp	.LBB5_33
.LBB5_14:                               # %sw.bb
	movl	$0, -76(%rbp)
.LBB5_15:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -76(%rbp)         # imm = 0x100
	jge	.LBB5_18
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB5_15 Depth=1
	movl	-76(%rbp), %eax
	movb	%al, %cl
	imull	$3, -76(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movb	%cl, -944(%rbp,%rdx)
	imull	$3, -76(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movb	%cl, -944(%rbp,%rdx)
	imull	$3, -76(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movb	%cl, -944(%rbp,%rdx)
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB5_15 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB5_15
.LBB5_18:                               # %for.end
	movzbl	-90(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI5_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movzbl	-91(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	.LCPI5_1(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movzbl	-92(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	.LCPI5_2(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	.LCPI5_3(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movb	%cl, -89(%rbp)
	jmp	.LBB5_34
.LBB5_19:                               # %sw.bb.41
	leaq	-72(%rbp), %rsi
	movl	$195075, -104(%rbp)     # imm = 0x2FA03
	movb	$0, -89(%rbp)
	movl	-20(%rbp), %edi
	callq	gimp_image_get_colormap
	movq	%rax, -88(%rbp)
	movl	$0, -76(%rbp)
.LBB5_20:                               # %for.cond.43
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	cmpl	$256, -72(%rbp)         # imm = 0x100
	movl	%eax, -1140(%rbp)       # 4-byte Spill
	jge	.LBB5_22
# BB#21:                                # %cond.true
                                        #   in Loop: Header=BB5_20 Depth=1
	movl	-72(%rbp), %eax
	movl	%eax, -1144(%rbp)       # 4-byte Spill
	jmp	.LBB5_23
.LBB5_22:                               # %cond.false
                                        #   in Loop: Header=BB5_20 Depth=1
	movl	$256, %eax              # imm = 0x100
	movl	%eax, -1144(%rbp)       # 4-byte Spill
	jmp	.LBB5_23
.LBB5_23:                               # %cond.end
                                        #   in Loop: Header=BB5_20 Depth=1
	movl	-1144(%rbp), %eax       # 4-byte Reload
	movl	-1140(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB5_28
# BB#24:                                # %for.body.48
                                        #   in Loop: Header=BB5_20 Depth=1
	imull	$3, -76(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	imull	$3, -76(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movb	%sil, -944(%rbp,%rcx)
	imull	$3, -76(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	imull	$3, -76(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movb	%sil, -944(%rbp,%rcx)
	imull	$3, -76(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	imull	$3, -76(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movb	%sil, -944(%rbp,%rcx)
	movzbl	-90(%rbp), %eax
	imull	$3, -76(%rbp), %edi
	addl	$0, %edi
	movslq	%edi, %rcx
	movzbl	-944(%rbp,%rcx), %edi
	subl	%edi, %eax
	movl	%eax, -96(%rbp)
	movl	-96(%rbp), %eax
	imull	-96(%rbp), %eax
	movl	%eax, -100(%rbp)
	movzbl	-91(%rbp), %eax
	imull	$3, -76(%rbp), %edi
	addl	$1, %edi
	movslq	%edi, %rcx
	movzbl	-944(%rbp,%rcx), %edi
	subl	%edi, %eax
	movl	%eax, -96(%rbp)
	movl	-96(%rbp), %eax
	imull	-96(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
	movzbl	-92(%rbp), %eax
	imull	$3, -76(%rbp), %edi
	addl	$2, %edi
	movslq	%edi, %rcx
	movzbl	-944(%rbp,%rcx), %edi
	subl	%edi, %eax
	movl	%eax, -96(%rbp)
	movl	-96(%rbp), %eax
	imull	-96(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jge	.LBB5_26
# BB#25:                                # %if.then.100
                                        #   in Loop: Header=BB5_20 Depth=1
	movl	-76(%rbp), %eax
	movb	%al, %cl
	movb	%cl, -89(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
.LBB5_26:                               # %if.end.102
                                        #   in Loop: Header=BB5_20 Depth=1
	jmp	.LBB5_27
.LBB5_27:                               # %for.inc.103
                                        #   in Loop: Header=BB5_20 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB5_20
.LBB5_28:                               # %for.end.105
	movl	-72(%rbp), %eax
	movl	%eax, -76(%rbp)
.LBB5_29:                               # %for.cond.106
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -76(%rbp)         # imm = 0x100
	jge	.LBB5_32
# BB#30:                                # %for.body.109
                                        #   in Loop: Header=BB5_29 Depth=1
	movl	-76(%rbp), %eax
	movb	%al, %cl
	imull	$3, -76(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movb	%cl, -944(%rbp,%rdx)
	imull	$3, -76(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movb	%cl, -944(%rbp,%rdx)
	imull	$3, -76(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rdx
	movb	%cl, -944(%rbp,%rdx)
# BB#31:                                # %for.inc.123
                                        #   in Loop: Header=BB5_29 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB5_29
.LBB5_32:                               # %for.end.125
	jmp	.LBB5_34
.LBB5_33:                               # %sw.default
	movabsq	$.L.str.55, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$0, -4(%rbp)
	jmp	.LBB5_64
.LBB5_34:                               # %sw.epilog
	movabsq	$.L.str.56, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-1152(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	movq	$0, -1104(%rbp)
	movw	$0, -1094(%rbp)
	movl	-20(%rbp), %edi
	movl	%eax, -1156(%rbp)       # 4-byte Spill
	callq	gimp_image_width
	movw	%ax, %cx
	movw	%cx, -1092(%rbp)
	movl	-20(%rbp), %edi
	callq	gimp_image_height
	movw	%ax, %cx
	movw	%cx, -1090(%rbp)
	movzwl	-1092(%rbp), %eax
	cmpl	$320, %eax              # imm = 0x140
	jne	.LBB5_37
# BB#35:                                # %land.lhs.true.138
	movzwl	-1090(%rbp), %eax
	cmpl	$200, %eax
	jne	.LBB5_37
# BB#36:                                # %if.then.143
	movw	$-20719, -1096(%rbp)    # imm = 0xFFFFFFFFFFFFAF11
	jmp	.LBB5_38
.LBB5_37:                               # %if.else
	movw	$-20718, -1096(%rbp)    # imm = 0xFFFFFFFFFFFFAF12
.LBB5_38:                               # %if.end.145
	movabsq	$.L.str.57, %rsi
	movw	$8, -1088(%rbp)
	movw	$3, -1086(%rbp)
	movq	$40, -1080(%rbp)
	movq	$0, -1072(%rbp)
	movq	$0, -1056(%rbp)
	movw	$1, -1048(%rbp)
	movw	$1, -1046(%rbp)
	movq	$0, -1032(%rbp)
	movq	$0, -1040(%rbp)
	movq	-16(%rbp), %rdi
	callq	fopen
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_40
# BB#39:                                # %if.then.147
	movq	-40(%rbp), %rdi
	movq	%rdi, -1168(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -1172(%rbp)       # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.58, %rdi
	movl	%eax, -1176(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-1168(%rbp), %rdi       # 8-byte Reload
	movl	-1172(%rbp), %esi       # 4-byte Reload
	movl	-1176(%rbp), %edx       # 4-byte Reload
	movq	-1184(%rbp), %rcx       # 8-byte Reload
	movq	-1192(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_64
.LBB5_40:                               # %if.end.155
	movl	$128, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	movq	-48(%rbp), %rdi
	callq	fseek
	movzwl	-1092(%rbp), %edx
	movzwl	-1090(%rbp), %ecx
	imull	%ecx, %edx
	movslq	%edx, %rdi
	movl	%eax, -1196(%rbp)       # 4-byte Spill
	callq	g_malloc
	movq	%rax, -160(%rbp)
	movzwl	-1092(%rbp), %ecx
	movzwl	-1090(%rbp), %edx
	imull	%edx, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc
	movq	%rax, -168(%rbp)
	movq	-160(%rbp), %rdi
	movzbl	-89(%rbp), %ecx
	movb	%cl, %r8b
	movzwl	-1092(%rbp), %ecx
	movzwl	-1090(%rbp), %edx
	imull	%edx, %ecx
	movslq	%ecx, %rdx
	movzbl	%r8b, %esi
	callq	memset
	movl	-24(%rbp), %ecx
	movl	%ecx, -1108(%rbp)
.LBB5_41:                               # %for.cond.178
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_43 Depth 2
                                        #       Child Loop BB5_47 Depth 3
	movl	-1108(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB5_63
# BB#42:                                # %for.body.181
                                        #   in Loop: Header=BB5_41 Depth=1
	movl	-68(%rbp), %eax
	subl	-1108(%rbp), %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	callq	gimp_drawable_get
	leaq	-108(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	movq	%rax, -56(%rbp)
	movl	-68(%rbp), %edi
	subl	-1108(%rbp), %edi
	movslq	%edi, %rax
	movq	-64(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_drawable_offsets
	leaq	-992(%rbp), %rdi
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rcx
	movl	4(%rcx), %r9d
	movl	%r9d, -136(%rbp)
	movq	-56(%rbp), %rcx
	movl	8(%rcx), %r9d
	movl	%r9d, -132(%rbp)
	movq	-56(%rbp), %rcx
	movl	12(%rcx), %r9d
	movl	%r9d, -140(%rbp)
	movq	-56(%rbp), %rsi
	movl	-136(%rbp), %r9d
	movl	-132(%rbp), %r10d
	movl	%r8d, %edx
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -1200(%rbp)       # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	-136(%rbp), %eax
	imull	-140(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	g_malloc
	movq	%rax, -152(%rbp)
	movl	$0, -120(%rbp)
	movl	-112(%rbp), %ecx
	movl	%ecx, -128(%rbp)
.LBB5_43:                               # %for.cond.195
                                        #   Parent Loop BB5_41 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_47 Depth 3
	movl	-120(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jae	.LBB5_56
# BB#44:                                # %for.body.198
                                        #   in Loop: Header=BB5_43 Depth=2
	cmpl	$0, -128(%rbp)
	jl	.LBB5_54
# BB#45:                                # %land.lhs.true.201
                                        #   in Loop: Header=BB5_43 Depth=2
	movl	-128(%rbp), %eax
	movzwl	-1090(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_54
# BB#46:                                # %if.then.206
                                        #   in Loop: Header=BB5_43 Depth=2
	leaq	-992(%rbp), %rdi
	xorl	%edx, %edx
	movq	-152(%rbp), %rsi
	movl	-120(%rbp), %ecx
	movl	-136(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
	movl	$0, -116(%rbp)
	movl	-108(%rbp), %ecx
	movl	%ecx, -124(%rbp)
.LBB5_47:                               # %for.cond.207
                                        #   Parent Loop BB5_41 Depth=1
                                        #     Parent Loop BB5_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-116(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jae	.LBB5_53
# BB#48:                                # %for.body.210
                                        #   in Loop: Header=BB5_47 Depth=3
	cmpl	$0, -124(%rbp)
	jl	.LBB5_51
# BB#49:                                # %land.lhs.true.213
                                        #   in Loop: Header=BB5_47 Depth=3
	movl	-124(%rbp), %eax
	movzwl	-1092(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_51
# BB#50:                                # %if.then.218
                                        #   in Loop: Header=BB5_47 Depth=3
	movl	-116(%rbp), %eax
	imull	-140(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-152(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-128(%rbp), %eax
	movzwl	-1092(%rbp), %edi
	imull	%edi, %eax
	addl	-124(%rbp), %eax
	movslq	%eax, %rcx
	movq	-160(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB5_51:                               # %if.end.228
                                        #   in Loop: Header=BB5_47 Depth=3
	jmp	.LBB5_52
.LBB5_52:                               # %for.inc.229
                                        #   in Loop: Header=BB5_47 Depth=3
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB5_47
.LBB5_53:                               # %for.end.232
                                        #   in Loop: Header=BB5_43 Depth=2
	jmp	.LBB5_54
.LBB5_54:                               # %if.end.233
                                        #   in Loop: Header=BB5_43 Depth=2
	jmp	.LBB5_55
.LBB5_55:                               # %for.inc.234
                                        #   in Loop: Header=BB5_43 Depth=2
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB5_43
.LBB5_56:                               # %for.end.237
                                        #   in Loop: Header=BB5_41 Depth=1
	movq	-152(%rbp), %rdi
	callq	g_free
	movl	-1108(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.LBB5_58
# BB#57:                                # %if.then.240
                                        #   in Loop: Header=BB5_41 Depth=1
	leaq	-1104(%rbp), %rsi
	movl	$65535, %eax            # imm = 0xFFFF
	leaq	-944(%rbp), %rcx
	movq	-48(%rbp), %rdi
	movq	-168(%rbp), %rdx
	movq	-160(%rbp), %r8
	movq	%rcx, -1208(%rbp)       # 8-byte Spill
	movq	-1208(%rbp), %r9        # 8-byte Reload
	movl	$65535, (%rsp)          # imm = 0xFFFF
	movl	%eax, -1212(%rbp)       # 4-byte Spill
	callq	fli_write_frame
	jmp	.LBB5_59
.LBB5_58:                               # %if.else.242
                                        #   in Loop: Header=BB5_41 Depth=1
	leaq	-1104(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$65535, %eax            # imm = 0xFFFF
	leaq	-944(%rbp), %r9
	movq	-48(%rbp), %rdi
	movq	-160(%rbp), %r8
	movq	%rcx, %rdx
	movl	$65535, (%rsp)          # imm = 0xFFFF
	movl	%eax, -1216(%rbp)       # 4-byte Spill
	callq	fli_write_frame
.LBB5_59:                               # %if.end.244
                                        #   in Loop: Header=BB5_41 Depth=1
	movl	-1108(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB5_61
# BB#60:                                # %if.then.247
                                        #   in Loop: Header=BB5_41 Depth=1
	movq	-168(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movzwl	-1092(%rbp), %eax
	movzwl	-1090(%rbp), %ecx
	imull	%ecx, %eax
	movslq	%eax, %rdx
	callq	memcpy
.LBB5_61:                               # %if.end.254
                                        #   in Loop: Header=BB5_41 Depth=1
	movsd	.LCPI5_4, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-1108(%rbp), %xmm1
	movl	-28(%rbp), %eax
	subl	-24(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -1220(%rbp)       # 4-byte Spill
# BB#62:                                # %for.inc.260
                                        #   in Loop: Header=BB5_41 Depth=1
	movl	-1108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1108(%rbp)
	jmp	.LBB5_41
.LBB5_63:                               # %for.end.262
	movsd	.LCPI5_4, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	leaq	-1104(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movl	%eax, -1224(%rbp)       # 4-byte Spill
	callq	fli_write_header
	movq	-48(%rbp), %rdi
	callq	fclose
	movq	-160(%rbp), %rdi
	movl	%eax, -1228(%rbp)       # 4-byte Spill
	callq	g_free
	movq	-168(%rbp), %rdi
	callq	g_free
	movq	-64(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_free
	movl	$1, -4(%rbp)
.LBB5_64:                               # %return
	movl	-4(%rbp), %eax
	addq	$1248, %rsp             # imm = 0x4E0
	popq	%rbp
	retq
.Lfunc_end5:
	.size	save_image, .Lfunc_end5-save_image
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI6_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_1:
	.quad	4607182418800017408     # double 1
.LCPI6_2:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	save_dialog,@function
save_dialog:                            # @save_dialog
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
	subq	$208, %rsp
	leaq	-44(%rbp), %rsi
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_image_get_layers
	movq	%rax, %rdi
	callq	g_free
	movabsq	$.L.str.59, %rdi
	movl	$1, from_frame
	movl	-44(%rbp), %ecx
	movl	%ecx, to_frame
	callq	gettext
	movabsq	$.L.str.42, %rsi
	movabsq	$.L.str.9, %rdx
	movq	%rax, %rdi
	callq	gimp_export_dialog_new
	movl	$2, %ecx
	xorl	%edx, %edx
	movq	%rax, -16(%rbp)
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-16(%rbp), %rdi
	callq	gimp_export_dialog_get_content_area
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movl	-84(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-40(%rbp), %rdi
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI6_2, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	xorl	%esi, %esi
	cvtsi2sdl	from_frame, %xmm1
	cvtsi2sdl	-44(%rbp), %xmm2
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-96(%rbp), %xmm6        # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.52, %rsi
	movl	$12, %ecx
	movl	%ecx, %edx
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-32(%rbp), %r8
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.53, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$from_frame, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %r10
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rcx, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	leaq	-40(%rbp), %rdi
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI6_2, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	xorl	%esi, %esi
	cvtsi2sdl	to_frame, %xmm1
	cvtsi2sdl	-44(%rbp), %xmm2
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-136(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_spin_button_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movabsq	$.L.str.54, %rsi
	movl	$12, %r9d
	movl	%r9d, %edx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	xorl	%esi, %esi
	movl	$1, %r9d
	xorps	%xmm0, %xmm0
	movss	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-32(%rbp), %r8
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %edx
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.53, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$to_frame, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %r10
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rcx, %rdx
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-16(%rbp), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %eax
	movl	%eax, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-48(%rbp), %eax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	save_dialog, .Lfunc_end6-save_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	get_info,@function
get_info:                               # @get_info
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
	subq	$176, %rsp
	movabsq	$.L.str.44, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-24(%rbp), %rcx
	movl	$0, (%rcx)
	movq	-32(%rbp), %rcx
	movl	$0, (%rcx)
	movq	-40(%rbp), %rcx
	movl	$0, (%rcx)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	fopen
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.45, %rdi
	movl	%eax, -152(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	-148(%rbp), %esi        # 4-byte Reload
	movl	-152(%rbp), %edx        # 4-byte Reload
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	-168(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB7_3
.LBB7_2:                                # %if.end
	leaq	-136(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	fli_read_header
	movq	-56(%rbp), %rdi
	callq	fclose
	movzwl	-124(%rbp), %ecx
	movq	-24(%rbp), %rsi
	movl	%ecx, (%rsi)
	movzwl	-122(%rbp), %ecx
	movq	-32(%rbp), %rsi
	movl	%ecx, (%rsi)
	movzwl	-126(%rbp), %ecx
	movq	-40(%rbp), %rsi
	movl	%ecx, (%rsi)
	movl	$1, -4(%rbp)
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB7_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	get_info, .Lfunc_end7-get_info
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	je	.LBB8_2
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
.LBB8_2:                                # %entry
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
.Lfunc_end8:
	.size	g_message, .Lfunc_end8-g_message
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

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"file-fli-load"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"load FLI-movies"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"This is an experimantal plug-in to handle FLI movies"
	.size	.L.str.2, 53

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Jens Ch. Restemeier"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"1997"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"AutoDesk FLIC animation"
	.size	.L.str.5, 24

	.type	load_args,@object       # @load_args
	.section	.rodata,"a",@progbits
	.align	16
load_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.15
	.quad	.L.str.16
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.17
	.quad	.L.str.18
	.long	4                       # 0x4
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
	.size	load_args, 120

	.type	load_return_vals,@object # @load_return_vals
	.align	16
load_return_vals:
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.25
	.quad	.L.str.26
	.size	load_return_vals, 24

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"image/x-flic"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"fli,flc"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.zero	1
	.size	.L.str.8, 1

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"file-fli-save"
	.size	.L.str.9, 14

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"save FLI-movies"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"INDEXED,GRAY"
	.size	.L.str.11, 13

	.type	save_args,@object       # @save_args
	.section	.rodata,"a",@progbits
	.align	16
save_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.15
	.quad	.L.str.16
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.25
	.quad	.L.str.27
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.28
	.quad	.L.str.29
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.17
	.quad	.L.str.30
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.19
	.quad	.L.str.20
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.21
	.quad	.L.str.31
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.23
	.quad	.L.str.32
	.size	save_args, 168

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"file-fli-info"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Get information about a Fli movie"
	.size	.L.str.13, 34

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"This is a experimantal plug-in to handle FLI movies"
	.size	.L.str.14, 52

	.type	info_args,@object       # @info_args
	.section	.rodata,"a",@progbits
	.align	16
info_args:
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.17
	.quad	.L.str.33
	.size	info_args, 24

	.type	info_return_vals,@object # @info_return_vals
	.align	16
info_return_vals:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.34
	.quad	.L.str.35
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.36
	.quad	.L.str.37
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.38
	.quad	.L.str.39
	.size	info_return_vals, 72

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"run-mode"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }"
	.size	.L.str.16, 61

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"filename"
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"The name of the file to load"
	.size	.L.str.18, 29

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"raw-filename"
	.size	.L.str.19, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"The name entered"
	.size	.L.str.20, 17

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"from-frame"
	.size	.L.str.21, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Load beginning from this frame"
	.size	.L.str.22, 31

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"to-frame"
	.size	.L.str.23, 9

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"End loading with this frame"
	.size	.L.str.24, 28

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"image"
	.size	.L.str.25, 6

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Output image"
	.size	.L.str.26, 13

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Input image"
	.size	.L.str.27, 12

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"drawable"
	.size	.L.str.28, 9

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Input drawable (unused)"
	.size	.L.str.29, 24

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"The name of the file to save"
	.size	.L.str.30, 29

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Save beginning from this frame"
	.size	.L.str.31, 31

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"End saving with this frame"
	.size	.L.str.32, 27

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"The name of the file to get info"
	.size	.L.str.33, 33

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"width"
	.size	.L.str.34, 6

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Width of one frame"
	.size	.L.str.35, 19

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"height"
	.size	.L.str.36, 7

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Height of one frame"
	.size	.L.str.37, 20

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"frames"
	.size	.L.str.38, 7

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Number of Frames"
	.size	.L.str.39, 17

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,200,16
	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.40, 20

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"UTF-8"
	.size	.L.str.41, 6

	.type	to_frame,@object        # @to_frame
	.local	to_frame
	.comm	to_frame,4,4
	.type	from_frame,@object      # @from_frame
	.local	from_frame
	.comm	from_frame,4,4
	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"file-fli"
	.size	.L.str.42, 9

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"FLI"
	.size	.L.str.43, 4

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"rb"
	.size	.L.str.44, 3

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.45, 36

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Opening '%s'"
	.size	.L.str.46, 13

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Frame (%i)"
	.size	.L.str.47, 11

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"GFLI 1.3 - Load framestack"
	.size	.L.str.48, 27

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"gimp-file-fli"
	.size	.L.str.49, 14

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"gtk-cancel"
	.size	.L.str.50, 11

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"gtk-open"
	.size	.L.str.51, 9

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"frame-range\004From:"
	.size	.L.str.52, 18

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"value-changed"
	.size	.L.str.53, 14

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"frame-range\004To:"
	.size	.L.str.54, 16

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Sorry, I can save only INDEXED and GRAY images."
	.size	.L.str.55, 48

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Saving '%s'"
	.size	.L.str.56, 12

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"wb"
	.size	.L.str.57, 3

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.58, 36

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"GFLI 1.3"
	.size	.L.str.59, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
