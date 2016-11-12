	.text
	.file	"file-xmc.bc"
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
	movabsq	$.L.str.43, %rdi
	movabsq	$.L.str.44, %rsi
	movabsq	$.L.str.45, %rdx
	movabsq	$.L.str.46, %rcx
	movabsq	$.L.str.47, %r8
	movabsq	$.L.str.48, %r9
	movabsq	$.L.str.49, %rax
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
	movabsq	$.L.str.43, %rdi
	movabsq	$.L.str.50, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.43, %rdi
	movabsq	$.L.str.51, %rsi
	movabsq	$.L.str.52, %rdx
	movabsq	$.L.str.53, %rcx
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	gimp_register_magic_load_handler
	movabsq	$.L.str.54, %rdi
	movabsq	$.L.str.55, %rsi
	movabsq	$.L.str.52, %rdx
	movabsq	$.L.str.46, %rcx
	movabsq	$.L.str.47, %r8
	movabsq	$.L.str.48, %r9
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movl	$1, %r10d
	movl	$2, %ebx
	movl	$5, %r12d
	movabsq	$query.thumb_args, %r14
	movabsq	$query.thumb_return_vals, %r15
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$2, 24(%rsp)
	movl	$5, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	%r15, 48(%rsp)
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movq	%r11, -80(%rbp)         # 8-byte Spill
	movl	%r12d, -84(%rbp)        # 4-byte Spill
	movl	%ebx, -88(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.43, %rdi
	movabsq	$.L.str.54, %rsi
	callq	gimp_register_thumbnail_loader
	movabsq	$.L.str.56, %rdi
	movabsq	$.L.str.57, %rsi
	movabsq	$.L.str.58, %rdx
	movabsq	$.L.str.46, %rcx
	movabsq	$.L.str.47, %r8
	movabsq	$.L.str.48, %r9
	movabsq	$.L.str.49, %r11
	movabsq	$.L.str.59, %r14
	movl	$1, %r10d
	movl	$15, %ebx
	xorl	%r12d, %r12d
	movabsq	$query.save_args, %r15
	xorl	%r13d, %r13d
                                        # kill: R13<def> R13D<kill>
	movq	%r11, (%rsp)
	movq	%r14, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$15, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movq	%r13, -104(%rbp)        # 8-byte Spill
	movl	%r10d, -108(%rbp)       # 4-byte Spill
	movl	%r12d, -112(%rbp)       # 4-byte Spill
	movl	%ebx, -116(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.56, %rdi
	movabsq	$.L.str.50, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.56, %rdi
	movabsq	$.L.str.51, %rsi
	movabsq	$.L.str.52, %rdx
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -48(%rbp)
	movl	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -96(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.60, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.60, %rdi
	movabsq	$.L.str.61, %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.60, %rdi
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
	movl	$.L.str.43, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_7
# BB#3:                                 # %if.then
	leaq	-96(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	load_image
	movl	%eax, -52(%rbp)
	cmpl	$-1, -52(%rbp)
	je	.LBB1_5
# BB#4:                                 # %if.then.7
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$13, run.values+40
	movl	-52(%rbp), %ecx
	movl	%ecx, run.values+48
	jmp	.LBB1_6
.LBB1_5:                                # %if.else
	movl	$0, -48(%rbp)
.LBB1_6:                                # %if.end
	jmp	.LBB1_58
.LBB1_7:                                # %if.else.8
	movq	-8(%rbp), %rdi
	movl	$.L.str.54, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_12
# BB#8:                                 # %if.then.11
	leaq	-80(%rbp), %rdx
	leaq	-84(%rbp), %rcx
	leaq	-88(%rbp), %r8
	leaq	-96(%rbp), %r9
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	48(%rax), %esi
	callq	load_thumbnail
	movl	%eax, -52(%rbp)
	cmpl	$-1, -52(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.19
	movq	-32(%rbp), %rax
	movl	$6, (%rax)
	movl	$13, run.values+40
	movl	-52(%rbp), %ecx
	movl	%ecx, run.values+48
	movl	$0, run.values+80
	movl	-80(%rbp), %ecx
	movl	%ecx, run.values+88
	movl	$0, run.values+120
	movl	-84(%rbp), %ecx
	movl	%ecx, run.values+128
	movl	$0, run.values+160
	movl	$1, run.values+168
	movl	$0, run.values+200
	movl	-88(%rbp), %ecx
	movl	%ecx, run.values+208
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.20
	movl	$0, -48(%rbp)
.LBB1_11:                               # %if.end.21
	jmp	.LBB1_57
.LBB1_12:                               # %if.else.22
	movq	-8(%rbp), %rdi
	movl	$.L.str.56, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_55
# BB#13:                                # %if.then.25
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
	movl	-52(%rbp), %edi
	callq	get_intersection_of_frames
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB1_15
# BB#14:                                # %if.then.36
	movabsq	$.L.str.62, %rdi
	callq	gettext
	leaq	-96(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	movq	-32(%rbp), %rcx
	movl	$2, (%rcx)
	movl	$4, run.values+40
	movq	-96(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, run.values+48
	movl	$0, run.values+8
	jmp	.LBB1_62
.LBB1_15:                               # %if.end.38
	movl	-44(%rbp), %eax
	orl	$2, %eax
	subl	$2, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB1_16
	jmp	.LBB1_19
.LBB1_16:                               # %sw.bb
	movabsq	$.L.str.63, %rdi
	xorl	%esi, %esi
	callq	gimp_ui_init
	leaq	-52(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	movabsq	$.L.str.64, %rdx
	movl	$305, %ecx              # imm = 0x131
	callq	gimp_export_image
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	jne	.LBB1_18
# BB#17:                                # %if.then.41
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movl	$4, run.values+8
	jmp	.LBB1_62
.LBB1_18:                               # %if.end.42
	jmp	.LBB1_20
.LBB1_19:                               # %sw.default
	jmp	.LBB1_20
.LBB1_20:                               # %sw.epilog
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB1_21
	jmp	.LBB1_63
.LBB1_63:                               # %sw.epilog
	movl	-128(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB1_24
	jmp	.LBB1_64
.LBB1_64:                               # %sw.epilog
	movl	-128(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	je	.LBB1_41
	jmp	.LBB1_42
.LBB1_21:                               # %sw.bb.43
	movabsq	$.L.str.56, %rdi
	movabsq	$xmcvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	-52(%rbp), %edi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	load_comments
	movl	-52(%rbp), %edi
	movq	-72(%rbp), %rsi
	callq	load_default_hotspot
	movl	-52(%rbp), %edi
	movq	-72(%rbp), %rsi
	movl	%eax, -144(%rbp)        # 4-byte Spill
	callq	save_dialog
	cmpl	$0, %eax
	jne	.LBB1_23
# BB#22:                                # %if.then.48
	movl	$4, -48(%rbp)
.LBB1_23:                               # %if.end.49
	jmp	.LBB1_43
.LBB1_24:                               # %sw.bb.50
	cmpl	$15, -12(%rbp)
	je	.LBB1_26
# BB#25:                                # %if.then.52
	movl	$1, -48(%rbp)
	jmp	.LBB1_40
.LBB1_26:                               # %if.else.53
	movq	-24(%rbp), %rax
	movl	208(%rax), %edi
	movq	-24(%rbp), %rax
	movl	248(%rax), %esi
	movq	-72(%rbp), %rdx
	callq	pix_in_region
	cmpl	$0, %eax
	je	.LBB1_28
# BB#27:                                # %if.then.62
	movq	-24(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, xmcparas
	movq	-24(%rbp), %rax
	movl	248(%rax), %ecx
	movl	%ecx, xmcparas+4
	jmp	.LBB1_29
.LBB1_28:                               # %if.else.69
	movl	-52(%rbp), %edi
	movq	-72(%rbp), %rsi
	callq	load_default_hotspot
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB1_29:                               # %if.end.71
	movq	-24(%rbp), %rax
	movl	288(%rax), %ecx
	movl	%ecx, xmcvals
	movq	-24(%rbp), %rax
	movl	328(%rax), %ecx
	movl	%ecx, xmcvals+4
	movq	-24(%rbp), %rax
	movl	368(%rax), %ecx
	movl	%ecx, xmcvals+8
	movq	-24(%rbp), %rax
	cmpl	$5, 408(%rax)
	jge	.LBB1_31
# BB#30:                                # %if.then.85
	movl	$50, xmcvals+12
	jmp	.LBB1_32
.LBB1_31:                               # %if.else.86
	movq	-24(%rbp), %rax
	movl	408(%rax), %ecx
	movl	%ecx, xmcvals+12
.LBB1_32:                               # %if.end.90
	movq	-24(%rbp), %rax
	movl	448(%rax), %ecx
	movl	%ecx, xmcvals+16
	movl	-52(%rbp), %edi
	callq	load_comments
	movl	$0, -76(%rbp)
.LBB1_33:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -76(%rbp)
	jge	.LBB1_39
# BB#34:                                # %for.body
                                        #   in Loop: Header=BB1_33 Depth=1
	movl	-76(%rbp), %eax
	addl	$12, %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-24(%rbp), %rcx
	cmpq	$0, 8(%rcx)
	je	.LBB1_37
# BB#35:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_33 Depth=1
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movl	-76(%rbp), %eax
	addl	$12, %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-24(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_utf8_validate
	cmpl	$0, %eax
	je	.LBB1_37
# BB#36:                                # %if.then.106
                                        #   in Loop: Header=BB1_33 Depth=1
	movl	-76(%rbp), %eax
	addl	$12, %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-24(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_strdup
	movslq	-76(%rbp), %rcx
	movq	%rax, xmcparas+8(,%rcx,8)
.LBB1_37:                               # %if.end.115
                                        #   in Loop: Header=BB1_33 Depth=1
	jmp	.LBB1_38
.LBB1_38:                               # %for.inc
                                        #   in Loop: Header=BB1_33 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB1_33
.LBB1_39:                               # %for.end
	jmp	.LBB1_40
.LBB1_40:                               # %if.end.116
	jmp	.LBB1_43
.LBB1_41:                               # %sw.bb.117
	movabsq	$.L.str.56, %rdi
	movabsq	$xmcvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	-52(%rbp), %edi
	movl	%eax, -152(%rbp)        # 4-byte Spill
	callq	load_comments
	movl	-52(%rbp), %edi
	movq	-72(%rbp), %rsi
	callq	load_default_hotspot
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB1_43
.LBB1_42:                               # %sw.default.120
	jmp	.LBB1_43
.LBB1_43:                               # %sw.epilog.121
	cmpl	$3, -48(%rbp)
	jne	.LBB1_48
# BB#44:                                # %if.then.123
	leaq	-96(%rbp), %r8
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	movl	-60(%rbp), %ecx
	callq	save_image
	cmpl	$0, %eax
	je	.LBB1_46
# BB#45:                                # %if.then.129
	movabsq	$.L.str.56, %rdi
	movabsq	$xmcvals, %rax
	movl	$20, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -160(%rbp)        # 4-byte Spill
	jmp	.LBB1_47
.LBB1_46:                               # %if.else.131
	movl	$0, -48(%rbp)
.LBB1_47:                               # %if.end.132
	jmp	.LBB1_48
.LBB1_48:                               # %if.end.133
	cmpl	$2, -64(%rbp)
	jne	.LBB1_50
# BB#49:                                # %if.then.135
	movl	-52(%rbp), %edi
	callq	gimp_image_delete
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB1_50:                               # %if.end.137
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movl	$0, -76(%rbp)
.LBB1_51:                               # %for.cond.138
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -76(%rbp)
	jge	.LBB1_54
# BB#52:                                # %for.body.140
                                        #   in Loop: Header=BB1_51 Depth=1
	movslq	-76(%rbp), %rax
	movq	xmcparas+8(,%rax,8), %rdi
	callq	g_free
	movslq	-76(%rbp), %rax
	movq	$0, xmcparas+8(,%rax,8)
# BB#53:                                # %for.inc.145
                                        #   in Loop: Header=BB1_51 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB1_51
.LBB1_54:                               # %for.end.147
	jmp	.LBB1_56
.LBB1_55:                               # %if.else.148
	movl	$1, -48(%rbp)
.LBB1_56:                               # %if.end.149
	jmp	.LBB1_57
.LBB1_57:                               # %if.end.150
	jmp	.LBB1_58
.LBB1_58:                               # %if.end.151
	cmpl	$3, -48(%rbp)
	je	.LBB1_61
# BB#59:                                # %land.lhs.true.153
	cmpq	$0, -96(%rbp)
	je	.LBB1_61
# BB#60:                                # %if.then.155
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
.LBB1_61:                               # %if.end.157
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_62:                               # %return
	addq	$176, %rsp
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
	subq	$336, %rsp              # imm = 0x150
	movabsq	$.L.str.65, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	fopen
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.66, %rdi
	movl	%eax, -168(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	-164(%rbp), %esi        # 4-byte Reload
	movl	-168(%rbp), %edx        # 4-byte Reload
	movq	-176(%rbp), %rcx        # 8-byte Reload
	movq	-184(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB3_38
.LBB3_2:                                # %if.end
	leaq	-120(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	movq	-48(%rbp), %rdi
	callq	XcursorFileLoad
	cmpl	$0, %eax
	jne	.LBB3_4
# BB#3:                                 # %if.then.9
	movabsq	$.L.str.67, %rdi
	movq	-24(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB3_38
.LBB3_4:                                # %if.end.12
	movabsq	$.L.str.68, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	movl	$0, -28(%rbp)
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB3_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-128(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB3_12
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB3_5 Depth=1
	movslq	-28(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	cmpl	$512, 8(%rax)           # imm = 0x200
	jbe	.LBB3_8
# BB#7:                                 # %if.then.18
	movabsq	$.L.str.69, %rdi
	movq	-24(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gettext
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	movq	-16(%rbp), %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movl	-236(%rbp), %r8d        # 4-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB3_38
.LBB3_8:                                # %if.end.21
                                        #   in Loop: Header=BB3_5 Depth=1
	movslq	-28(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	cmpl	$512, 12(%rax)          # imm = 0x200
	jbe	.LBB3_10
# BB#9:                                 # %if.then.26
	movabsq	$.L.str.70, %rdi
	movq	-24(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gettext
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	movq	-16(%rbp), %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movl	-260(%rbp), %r8d        # 4-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB3_38
.LBB3_10:                               # %if.end.30
                                        #   in Loop: Header=BB3_5 Depth=1
	jmp	.LBB3_11
.LBB3_11:                               # %for.inc
                                        #   in Loop: Header=BB3_5 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB3_5
.LBB3_12:                               # %for.end
	movabsq	$xmcparas, %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	leaq	-36(%rbp), %rdx
	leaq	-40(%rbp), %r8
	movq	-128(%rbp), %rdi
	movq	%rax, %rsi
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-272(%rbp), %rcx        # 8-byte Reload
	callq	find_hotspots_and_dimensions
	xorl	%edx, %edx
	movl	-36(%rbp), %edi
	movl	-40(%rbp), %esi
	callq	gimp_image_new
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	gimp_image_set_filename
	movl	-52(%rbp), %edi
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	set_hotspot_to_parasite
	cmpl	$0, %eax
	jne	.LBB3_14
# BB#13:                                # %if.then.35
	movl	$-1, -4(%rbp)
	jmp	.LBB3_38
.LBB3_14:                               # %if.end.36
	movl	$4, %eax
	movl	%eax, %esi
	movl	-36(%rbp), %eax
	imull	-40(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -152(%rbp)
	movl	$0, -28(%rbp)
.LBB3_15:                               # %for.cond.38
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_24 Depth 2
	movl	-28(%rbp), %eax
	movq	-128(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB3_29
# BB#16:                                # %for.body.42
                                        #   in Loop: Header=BB3_15 Depth=1
	movslq	-28(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	24(%rax), %edx
	movl	%edx, -132(%rbp)
	cmpl	$5, -132(%rbp)
	jae	.LBB3_18
# BB#17:                                # %if.then.49
                                        #   in Loop: Header=BB3_15 Depth=1
	movl	$50, -132(%rbp)
.LBB3_18:                               # %if.end.50
                                        #   in Loop: Header=BB3_15 Depth=1
	movslq	-28(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	4(%rax), %edi
	movl	-132(%rbp), %esi
	movq	-128(%rbp), %rax
	cmpl	$100, (%rax)
	movl	%edi, -280(%rbp)        # 4-byte Spill
	movl	%esi, -284(%rbp)        # 4-byte Spill
	jle	.LBB3_20
# BB#19:                                # %cond.true
                                        #   in Loop: Header=BB3_15 Depth=1
	movl	$3, %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
	jmp	.LBB3_21
.LBB3_20:                               # %cond.false
                                        #   in Loop: Header=BB3_15 Depth=1
	movl	$1, %eax
	movl	$2, %ecx
	movq	-128(%rbp), %rdx
	cmpl	$10, (%rdx)
	cmovgl	%ecx, %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
.LBB3_21:                               # %cond.end
                                        #   in Loop: Header=BB3_15 Depth=1
	movl	-288(%rbp), %eax        # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	-280(%rbp), %edi        # 4-byte Reload
	movl	-284(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	make_framename
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB3_23
# BB#22:                                # %if.then.63
	movl	$-1, -4(%rbp)
	jmp	.LBB3_38
.LBB3_23:                               # %if.end.64
                                        #   in Loop: Header=BB3_15 Depth=1
	movl	$1, %r8d
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movl	-52(%rbp), %edi
	movq	-144(%rbp), %rsi
	movslq	-28(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	8(%rax), %edx
	movslq	-28(%rbp), %rax
	movq	-128(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	12(%rax), %ecx
	callq	gimp_layer_new
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	%eax, -56(%rbp)
	movl	-52(%rbp), %edi
	movl	-56(%rbp), %esi
	callq	gimp_image_insert_layer
	movl	-56(%rbp), %edi
	movl	xmcparas, %ecx
	movslq	-28(%rbp), %r10
	movq	-128(%rbp), %r11
	movq	8(%r11), %r11
	movq	(%r11,%r10,8), %r10
	subl	16(%r10), %ecx
	movl	xmcparas+4, %edx
	movslq	-28(%rbp), %r10
	movq	-128(%rbp), %r11
	movq	8(%r11), %r11
	movq	(%r11,%r10,8), %r10
	subl	20(%r10), %edx
	movl	%ecx, %esi
	movl	%eax, -292(%rbp)        # 4-byte Spill
	callq	gimp_layer_translate
	movq	-144(%rbp), %rdi
	movl	%eax, -296(%rbp)        # 4-byte Spill
	callq	g_free
	movl	-56(%rbp), %edi
	callq	gimp_drawable_get
	leaq	-112(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rsi
	movq	-64(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-64(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%edx, -300(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$0, -32(%rbp)
.LBB3_24:                               # %for.cond.86
                                        #   Parent Loop BB3_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	4(%rcx), %edx
	movq	-64(%rbp), %rcx
	imull	8(%rcx), %edx
	cmpl	%edx, %eax
	jae	.LBB3_27
# BB#25:                                # %for.body.92
                                        #   in Loop: Header=BB3_24 Depth=2
	movslq	-32(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	-128(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	32(%rcx), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	separate_alpha
	movslq	-32(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
# BB#26:                                # %for.inc.101
                                        #   in Loop: Header=BB3_24 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB3_24
.LBB3_27:                               # %for.end.103
                                        #   in Loop: Header=BB3_15 Depth=1
	leaq	-112(%rbp), %rdi
	xorl	%eax, %eax
	movq	-152(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movl	4(%rdx), %r8d
	movq	-64(%rbp), %rdx
	movl	8(%rdx), %r9d
	movq	%rcx, %rsi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_set_rect
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movq	-128(%rbp), %rsi
	cltd
	idivl	(%rsi)
	cvtsi2sdl	%eax, %xmm0
	callq	gimp_progress_update
	movq	-64(%rbp), %rdi
	movl	%eax, -304(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_detach
# BB#28:                                # %for.inc.110
                                        #   in Loop: Header=BB3_15 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB3_15
.LBB3_29:                               # %for.end.112
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-152(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -308(%rbp)        # 4-byte Spill
	callq	g_free
	cmpq	$0, -120(%rbp)
	je	.LBB3_37
# BB#30:                                # %if.then.115
	movl	$0, -28(%rbp)
.LBB3_31:                               # %for.cond.116
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-120(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB3_36
# BB#32:                                # %for.body.119
                                        #   in Loop: Header=BB3_31 Depth=1
	movl	-52(%rbp), %edi
	movslq	-28(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	8(%rax), %rsi
	movslq	-28(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	4(%rax), %edx
	subl	$1, %edx
	movl	%edx, %edx
	movl	%edx, %eax
	movq	parasiteName(,%rax,8), %rdx
	callq	set_comment_to_pname
	cmpl	$0, %eax
	jne	.LBB3_34
# BB#33:                                # %if.then.130
	movl	$-1, -4(%rbp)
	jmp	.LBB3_38
.LBB3_34:                               # %if.end.131
                                        #   in Loop: Header=BB3_31 Depth=1
	jmp	.LBB3_35
.LBB3_35:                               # %for.inc.132
                                        #   in Loop: Header=BB3_31 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB3_31
.LBB3_36:                               # %for.end.134
	jmp	.LBB3_37
.LBB3_37:                               # %if.end.135
	movq	-128(%rbp), %rdi
	callq	XcursorImagesDestroy
	movq	-120(%rbp), %rdi
	callq	XcursorCommentsDestroy
	movq	-48(%rbp), %rdi
	callq	fclose
	movl	%eax, -312(%rbp)        # 4-byte Spill
	callq	gimp_progress_end
	movl	-52(%rbp), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -316(%rbp)        # 4-byte Spill
.LBB3_38:                               # %return
	movl	-4(%rbp), %eax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end3:
	.size	load_image, .Lfunc_end3-load_image
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	load_thumbnail,@function
load_thumbnail:                         # @load_thumbnail
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
	subq	$352, %rsp              # imm = 0x160
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movl	$0, -64(%rbp)
	movl	$-1, -68(%rbp)
	movq	$0, -80(%rbp)
	movl	$32767, -108(%rbp)      # imm = 0x7FFF
	movq	$0, -120(%rbp)
	movl	$-1, -124(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -32(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.load_thumbnail, %rsi
	movabsq	$.L.str.83, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB4_62
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	jmp	.LBB4_6
.LBB4_6:                                # %do.body.1
	cmpq	$0, -40(%rbp)
	je	.LBB4_8
# BB#7:                                 # %if.then.3
	jmp	.LBB4_9
.LBB4_8:                                # %if.else.4
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.load_thumbnail, %rsi
	movabsq	$.L.str.84, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB4_62
.LBB4_9:                                # %if.end.5
	jmp	.LBB4_10
.LBB4_10:                               # %do.end.6
	jmp	.LBB4_11
.LBB4_11:                               # %do.body.7
	cmpq	$0, -48(%rbp)
	je	.LBB4_13
# BB#12:                                # %if.then.9
	jmp	.LBB4_14
.LBB4_13:                               # %if.else.10
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.load_thumbnail, %rsi
	movabsq	$.L.str.85, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB4_62
.LBB4_14:                               # %if.end.11
	jmp	.LBB4_15
.LBB4_15:                               # %do.end.12
	movabsq	$.L.str.65, %rsi
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rdi
	callq	fopen
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB4_17
# BB#16:                                # %if.then.13
	movq	-56(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.66, %rdi
	movl	%eax, -208(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movl	-204(%rbp), %esi        # 4-byte Reload
	movl	-208(%rbp), %edx        # 4-byte Reload
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movq	-224(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB4_62
.LBB4_17:                               # %if.end.21
	movl	$12, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	movq	-120(%rbp), %rdi
	callq	fseek
	movq	-120(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	read32
	movl	%eax, -64(%rbp)
	movq	-56(%rbp), %rsi
	cmpq	$0, (%rsi)
	je	.LBB4_19
# BB#18:                                # %if.then.25
	movl	$-1, -4(%rbp)
	jmp	.LBB4_62
.LBB4_19:                               # %if.end.26
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	shlq	$2, %rcx
	movq	%rcx, %rdi
	callq	g_malloc
	movq	%rax, -96(%rbp)
.LBB4_20:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -64(%rbp)
	jbe	.LBB4_37
# BB#21:                                # %for.body
                                        #   in Loop: Header=BB4_20 Depth=1
	movq	-120(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	read32
	movl	%eax, -112(%rbp)
	movq	-56(%rbp), %rsi
	cmpq	$0, (%rsi)
	je	.LBB4_23
# BB#22:                                # %if.then.32
	movl	$-1, -4(%rbp)
	jmp	.LBB4_62
.LBB4_23:                               # %if.end.33
                                        #   in Loop: Header=BB4_20 Depth=1
	cmpl	$-196606, -112(%rbp)    # imm = 0xFFFFFFFFFFFD0002
	je	.LBB4_25
# BB#24:                                # %if.then.36
                                        #   in Loop: Header=BB4_20 Depth=1
	movl	$8, %eax
	movl	%eax, %esi
	movl	$1, %edx
	movq	-120(%rbp), %rdi
	callq	fseek
	movl	%eax, -232(%rbp)        # 4-byte Spill
	jmp	.LBB4_35
.LBB4_25:                               # %if.else.38
                                        #   in Loop: Header=BB4_20 Depth=1
	movq	-120(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	read32
	movl	%eax, -100(%rbp)
	movq	-56(%rbp), %rsi
	cmpq	$0, (%rsi)
	je	.LBB4_27
# BB#26:                                # %if.then.41
	movl	$-1, -4(%rbp)
	jmp	.LBB4_62
.LBB4_27:                               # %if.end.42
                                        #   in Loop: Header=BB4_20 Depth=1
	movq	-120(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	read32
	movq	-48(%rbp), %rsi
	movslq	(%rsi), %rsi
	movq	-96(%rbp), %rdi
	movl	%eax, (%rdi,%rsi,4)
	movq	-56(%rbp), %rsi
	cmpq	$0, (%rsi)
	je	.LBB4_29
# BB#28:                                # %if.then.45
	movl	$-1, -4(%rbp)
	jmp	.LBB4_62
.LBB4_29:                               # %if.end.46
                                        #   in Loop: Header=BB4_20 Depth=1
	movl	-20(%rbp), %eax
	subl	-100(%rbp), %eax
	cmpl	$0, %eax
	jae	.LBB4_31
# BB#30:                                # %cond.true
                                        #   in Loop: Header=BB4_20 Depth=1
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	subl	-100(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	jmp	.LBB4_32
.LBB4_31:                               # %cond.false
                                        #   in Loop: Header=BB4_20 Depth=1
	movl	-20(%rbp), %eax
	subl	-100(%rbp), %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB4_32:                               # %cond.end
                                        #   in Loop: Header=BB4_20 Depth=1
	movl	-236(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jae	.LBB4_34
# BB#33:                                # %if.then.54
                                        #   in Loop: Header=BB4_20 Depth=1
	movl	-104(%rbp), %eax
	movl	%eax, -108(%rbp)
	movq	-48(%rbp), %rcx
	movl	(%rcx), %eax
	movl	%eax, -68(%rbp)
.LBB4_34:                               # %if.end.55
                                        #   in Loop: Header=BB4_20 Depth=1
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
.LBB4_35:                               # %if.end.56
                                        #   in Loop: Header=BB4_20 Depth=1
	jmp	.LBB4_36
.LBB4_36:                               # %for.inc
                                        #   in Loop: Header=BB4_20 Depth=1
	movl	-64(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB4_20
.LBB4_37:                               # %for.end
	cmpl	$0, -68(%rbp)
	jge	.LBB4_39
# BB#38:                                # %if.then.59
	movabsq	$.L.str.86, %rdi
	movq	-56(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB4_62
.LBB4_39:                               # %if.end.62
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	XcursorImagesCreate
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	movq	-80(%rbp), %rax
	movl	%edi, (%rax)
	movl	$0, -60(%rbp)
.LBB4_40:                               # %for.cond.64
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movq	-80(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB4_51
# BB#41:                                # %for.body.68
                                        #   in Loop: Header=BB4_40 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	callq	XcursorImageCreate
	xorl	%edx, %edx
	movq	%rax, -88(%rbp)
	movq	-120(%rbp), %rdi
	movslq	-60(%rbp), %rax
	movq	-96(%rbp), %rcx
	movl	(%rcx,%rax,4), %esi
                                        # kill: RSI<def> ESI<kill>
	callq	fseek
	movl	$16, %edx
	movl	%edx, %esi
	movl	$1, %edx
	movq	-120(%rbp), %rdi
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	fseek
	movq	-120(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	%eax, -264(%rbp)        # 4-byte Spill
	callq	read32
	movq	-88(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movq	-56(%rbp), %rcx
	cmpq	$0, (%rcx)
	je	.LBB4_43
# BB#42:                                # %if.then.77
	movl	$-1, -4(%rbp)
	jmp	.LBB4_62
.LBB4_43:                               # %if.end.78
                                        #   in Loop: Header=BB4_40 Depth=1
	movq	-120(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	read32
	movq	-88(%rbp), %rsi
	movl	%eax, 12(%rsi)
	movq	-56(%rbp), %rsi
	cmpq	$0, (%rsi)
	je	.LBB4_45
# BB#44:                                # %if.then.81
	movl	$-1, -4(%rbp)
	jmp	.LBB4_62
.LBB4_45:                               # %if.end.82
                                        #   in Loop: Header=BB4_40 Depth=1
	movq	-120(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	read32
	movq	-88(%rbp), %rsi
	movl	%eax, 16(%rsi)
	movq	-56(%rbp), %rsi
	cmpq	$0, (%rsi)
	je	.LBB4_47
# BB#46:                                # %if.then.85
	movl	$-1, -4(%rbp)
	jmp	.LBB4_62
.LBB4_47:                               # %if.end.86
                                        #   in Loop: Header=BB4_40 Depth=1
	movq	-120(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	read32
	movq	-88(%rbp), %rsi
	movl	%eax, 20(%rsi)
	movq	-56(%rbp), %rsi
	cmpq	$0, (%rsi)
	je	.LBB4_49
# BB#48:                                # %if.then.89
	movl	$-1, -4(%rbp)
	jmp	.LBB4_62
.LBB4_49:                               # %if.end.90
                                        #   in Loop: Header=BB4_40 Depth=1
	movq	-88(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#50:                                # %for.inc.93
                                        #   in Loop: Header=BB4_40 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB4_40
.LBB4_51:                               # %for.end.95
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-80(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %r8
	movq	%rcx, %rsi
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-272(%rbp), %rcx        # 8-byte Reload
	callq	find_hotspots_and_dimensions
	movq	-32(%rbp), %rcx
	cmpl	$512, (%rcx)            # imm = 0x200
	jle	.LBB4_53
# BB#52:                                # %if.then.98
	movabsq	$.L.str.87, %rdi
	movq	-56(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	-288(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB4_62
.LBB4_53:                               # %if.end.101
	movq	-40(%rbp), %rax
	cmpl	$512, (%rax)            # imm = 0x200
	jle	.LBB4_55
# BB#54:                                # %if.then.104
	movabsq	$.L.str.88, %rdi
	movq	-56(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	-304(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB4_62
.LBB4_55:                               # %if.end.107
	xorl	%edx, %edx
	movslq	-68(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	8(%rax), %edi
	movslq	-68(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	12(%rax), %esi
	callq	gimp_image_new
	xorl	%edx, %edx
	movl	%edx, %esi
	movl	$1, %r8d
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %edi
	movslq	-68(%rbp), %rcx
	movq	-80(%rbp), %r10
	movq	8(%r10), %r10
	movq	(%r10,%rcx,8), %rcx
	movl	8(%rcx), %edx
	movslq	-68(%rbp), %rcx
	movq	-80(%rbp), %r10
	movq	8(%r10), %r10
	movq	(%r10,%rcx,8), %rcx
	movl	12(%rcx), %ecx
	callq	gimp_layer_new
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	%eax, -128(%rbp)
	movl	-124(%rbp), %edi
	movl	-128(%rbp), %esi
	callq	gimp_image_insert_layer
	movl	-128(%rbp), %edi
	movl	%eax, -308(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get
	leaq	-184(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rsi
	movslq	-68(%rbp), %rax
	movq	-80(%rbp), %r10
	movq	8(%r10), %r10
	movq	(%r10,%rax,8), %rax
	movl	8(%rax), %r8d
	movslq	-68(%rbp), %rax
	movq	-80(%rbp), %r10
	movq	8(%r10), %r10
	movq	(%r10,%rax,8), %rax
	movl	12(%rax), %r9d
	movl	%edx, -312(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$4, %ecx
	movl	%ecx, %esi
	movslq	-68(%rbp), %rax
	movq	-80(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	(%rdi,%rax,8), %rax
	movl	8(%rax), %ecx
	movslq	-68(%rbp), %rax
	movq	-80(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	(%rdi,%rax,8), %rax
	imull	12(%rax), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	callq	g_malloc_n
	xorl	%edx, %edx
	movq	%rax, -192(%rbp)
	movq	-120(%rbp), %rdi
	movslq	-68(%rbp), %rax
	movq	-96(%rbp), %rsi
	movl	(%rsi,%rax,4), %ecx
	movl	%ecx, %esi
	callq	fseek
	movl	$36, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-120(%rbp), %rdi
	movl	%eax, -316(%rbp)        # 4-byte Spill
	callq	fseek
	movl	$0, -60(%rbp)
	movl	%eax, -320(%rbp)        # 4-byte Spill
.LBB4_56:                               # %for.cond.152
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movslq	-68(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	8(%rcx), %esi
	movslq	-68(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	imull	12(%rcx), %esi
	cmpl	%esi, %eax
	jae	.LBB4_61
# BB#57:                                # %for.body.164
                                        #   in Loop: Header=BB4_56 Depth=1
	movq	-120(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	read32
	movslq	-60(%rbp), %rsi
	movq	-192(%rbp), %rdi
	movl	%eax, (%rdi,%rsi,4)
	movq	-56(%rbp), %rsi
	cmpq	$0, (%rsi)
	je	.LBB4_59
# BB#58:                                # %if.then.169
	movl	$-1, -4(%rbp)
	jmp	.LBB4_62
.LBB4_59:                               # %if.end.170
                                        #   in Loop: Header=BB4_56 Depth=1
	movslq	-60(%rbp), %rax
	movq	-192(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	separate_alpha
	movslq	-60(%rbp), %rcx
	movq	-192(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
# BB#60:                                # %for.inc.176
                                        #   in Loop: Header=BB4_56 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB4_56
.LBB4_61:                               # %for.end.178
	leaq	-184(%rbp), %rdi
	xorl	%eax, %eax
	movq	-192(%rbp), %rcx
	movq	-136(%rbp), %rdx
	movl	4(%rdx), %r8d
	movq	-136(%rbp), %rdx
	movl	8(%rdx), %r9d
	movq	%rcx, %rsi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_set_rect
	movq	-192(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_free
	movq	-96(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_free
	movq	-120(%rbp), %rdi
	callq	fclose
	movq	-136(%rbp), %rdi
	movl	%eax, -324(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movq	-136(%rbp), %rdi
	callq	gimp_drawable_detach
	movl	-124(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB4_62:                               # %return
	movl	-4(%rbp), %eax
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end4:
	.size	load_thumbnail, .Lfunc_end4-load_thumbnail
	.cfi_endproc

	.align	16, 0x90
	.type	get_intersection_of_frames,@function
get_intersection_of_frames:             # @get_intersection_of_frames
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
	subq	$96, %rsp
	movl	%edi, -12(%rbp)
	movl	$-2147483648, -32(%rbp) # imm = 0xFFFFFFFF80000000
	movl	$2147483647, -36(%rbp)  # imm = 0x7FFFFFFF
	movl	$-2147483648, -40(%rbp) # imm = 0xFFFFFFFF80000000
	movl	$2147483647, -44(%rbp)  # imm = 0x7FFFFFFF
# BB#1:                                 # %do.body
	cmpl	$-1, -12(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.get_intersection_of_frames, %rsi
	movabsq	$.L.str.72, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_27
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	leaq	-56(%rbp), %rsi
	movl	-12(%rbp), %edi
	callq	gimp_image_get_layers
	movq	%rax, -64(%rbp)
	movl	$0, -28(%rbp)
.LBB5_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB5_23
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB5_6 Depth=1
	movslq	-28(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_drawable_get
	leaq	-48(%rbp), %rsi
	leaq	-52(%rbp), %rdx
	movq	%rax, -72(%rbp)
	movslq	-28(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_drawable_offsets
	cmpl	$0, %eax
	jne	.LBB5_9
# BB#8:                                 # %if.then.6
	movq	$0, -8(%rbp)
	jmp	.LBB5_27
.LBB5_9:                                # %if.end.7
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	-32(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jle	.LBB5_11
# BB#10:                                # %cond.true
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB5_12
.LBB5_11:                               # %cond.false
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB5_12:                               # %cond.end
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -32(%rbp)
	movl	-40(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jle	.LBB5_14
# BB#13:                                # %cond.true.10
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	-40(%rbp), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB5_15
.LBB5_14:                               # %cond.false.11
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB5_15:                               # %cond.end.12
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	movl	-48(%rbp), %ecx
	movq	-72(%rbp), %rdx
	addl	4(%rdx), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jae	.LBB5_17
# BB#16:                                # %cond.true.15
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB5_18
.LBB5_17:                               # %cond.false.16
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	-48(%rbp), %eax
	movq	-72(%rbp), %rcx
	addl	4(%rcx), %eax
	subl	$1, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB5_18:                               # %cond.end.20
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -36(%rbp)
	movl	-44(%rbp), %eax
	movl	-52(%rbp), %ecx
	movq	-72(%rbp), %rdx
	addl	8(%rdx), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jae	.LBB5_20
# BB#19:                                # %cond.true.25
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB5_21
.LBB5_20:                               # %cond.false.26
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	-52(%rbp), %eax
	movq	-72(%rbp), %rcx
	addl	8(%rcx), %eax
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB5_21:                               # %cond.end.30
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)
# BB#22:                                # %for.inc
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB5_6
.LBB5_23:                               # %for.end
	movl	-32(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jg	.LBB5_25
# BB#24:                                # %lor.lhs.false
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.LBB5_26
.LBB5_25:                               # %if.then.34
	movq	$0, -8(%rbp)
	jmp	.LBB5_27
.LBB5_26:                               # %if.end.35
	movl	$1, %eax
	movl	%eax, %edi
	movl	$16, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	movq	%rax, -24(%rbp)
	movl	-32(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-40(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 4(%rax)
	movl	-36(%rbp), %ecx
	subl	-32(%rbp), %ecx
	addl	$1, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 8(%rax)
	movl	-44(%rbp), %ecx
	subl	-40(%rbp), %ecx
	addl	$1, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 12(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB5_27:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	get_intersection_of_frames, .Lfunc_end5-get_intersection_of_frames
	.cfi_endproc

	.align	16, 0x90
	.type	load_comments,@function
load_comments:                          # @load_comments
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
	movl	%edi, -4(%rbp)
# BB#1:                                 # %do.body
	cmpl	$-1, -4(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.load_comments, %rsi
	movabsq	$.L.str.72, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_9
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	movl	$0, -8(%rbp)
.LBB6_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -8(%rbp)
	jge	.LBB6_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB6_6 Depth=1
	movl	-4(%rbp), %edi
	movslq	-8(%rbp), %rax
	movq	parasiteName(,%rax,8), %rsi
	callq	get_comment_from_pname
	movslq	-8(%rbp), %rsi
	movq	%rax, xmcparas+8(,%rsi,8)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB6_6 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB6_6
.LBB6_9:                                # %for.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	load_comments, .Lfunc_end6-load_comments
	.cfi_endproc

	.align	16, 0x90
	.type	load_default_hotspot,@function
load_default_hotspot:                   # @load_default_hotspot
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
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB7_3
# BB#2:                                 # %if.then
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.load_default_hotspot, %rsi
	movabsq	$.L.str.91, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_9
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	movl	-8(%rbp), %edi
	callq	get_hotspot_from_parasite
	cmpl	$0, %eax
	je	.LBB7_7
# BB#6:                                 # %lor.lhs.false
	movl	xmcparas, %edi
	movl	xmcparas+4, %esi
	movq	-16(%rbp), %rdx
	callq	pix_in_region
	cmpl	$0, %eax
	jne	.LBB7_8
.LBB7_7:                                # %if.then.4
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, xmcparas
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, xmcparas+4
.LBB7_8:                                # %if.end.5
	movl	$1, -4(%rbp)
.LBB7_9:                                # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	load_default_hotspot, .Lfunc_end7-load_default_hotspot
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI8_0:
	.long	1056964608              # float 0.5
.LCPI8_1:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_2:
	.quad	4607182418800017408     # double 1
.LCPI8_3:
	.quad	4617315517961601024     # double 5
.LCPI8_4:
	.quad	4726483295884279808     # double 1.0E+8
	.text
	.align	16, 0x90
	.type	save_dialog,@function
save_dialog:                            # @save_dialog
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1080, %rsp             # imm = 0x438
.Ltmp32:
	.cfi_offset %rbx, -56
.Ltmp33:
	.cfi_offset %r12, -48
.Ltmp34:
	.cfi_offset %r13, -40
.Ltmp35:
	.cfi_offset %r14, -32
.Ltmp36:
	.cfi_offset %r15, -24
	leaq	-168(%rbp), %rax
	movl	$60, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movl	$24, %r8d
	movl	%r8d, %r9d
	movl	%edi, -44(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rax, %rsi
	movq	%rsi, %rdi
	movl	%ecx, %esi
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movq	%r9, %rdx
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	memset
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	callq	g_value_init
	movabsq	$.L.str.49, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.63, %rsi
	movabsq	$.L.str.56, %rdx
	movq	%rax, %rdi
	callq	gimp_export_dialog_new
	movabsq	$.L.str.93, %rdi
	movq	%rax, -80(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-80(%rbp), %rdi
	callq	gimp_export_dialog_get_content_area
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movl	$9, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movq	-96(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-96(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-96(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-88(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	leaq	-112(%rbp), %rdi
	movsd	.LCPI8_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI8_3, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm0, %xmm0
	xorl	%esi, %esi
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-56(%rbp), %rax
	addl	(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -64(%rbp)
	cvtsi2sdl	xmcparas, %xmm1
	cvtsi2sdl	-60(%rbp), %xmm2
	cvtsi2sdl	-64(%rbp), %xmm5
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm5, %xmm2
	movsd	-256(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-256(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-168(%rbp), %rdi
	movsd	.LCPI8_2, %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.94, %rsi
	leaq	-168(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_property
	movabsq	$.L.str.95, %rsi
	movabsq	$gimp_int_adjustment_update, %rax
	movabsq	$xmcparas, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-112(%rbp), %rdi
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-264(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.96, %rdi
	movq	-128(%rbp), %rcx
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-96(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.97, %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	xorps	%xmm0, %xmm0
	movss	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r10d
	movq	-128(%rbp), %r8
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movl	%r9d, %edx
	movq	%rax, %rcx
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	leaq	-112(%rbp), %rdi
	movsd	.LCPI8_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI8_3, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm0, %xmm0
	xorl	%esi, %esi
	movq	-56(%rbp), %rcx
	movl	4(%rcx), %edx
	movl	%edx, -68(%rbp)
	movq	-56(%rbp), %rcx
	movl	12(%rcx), %edx
	movq	-56(%rbp), %rcx
	addl	4(%rcx), %edx
	subl	$1, %edx
	movl	%edx, -72(%rbp)
	cvtsi2sdl	xmcparas+4, %xmm1
	cvtsi2sdl	-68(%rbp), %xmm2
	cvtsi2sdl	-72(%rbp), %xmm5
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm5, %xmm2
	movsd	-304(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-304(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_spin_button_new
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-168(%rbp), %rdi
	movsd	.LCPI8_2, %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
	movl	$80, %edx
	movl	%edx, %esi
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.94, %rsi
	leaq	-168(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_property
	movabsq	$.L.str.95, %rsi
	movabsq	$gimp_int_adjustment_update, %rax
	movabsq	$xmcparas, %rcx
	addq	$4, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-112(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movabsq	$.L.str.98, %rdi
	movq	-128(%rbp), %rcx
	movq	%rax, -320(%rbp)        # 8-byte Spill
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-96(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%edx, %edx
	movabsq	$.L.str.99, %rcx
	movss	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-128(%rbp), %r8
	movq	%rax, %rdi
	movl	%r9d, %esi
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.100, %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -128(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$3, %ecx
	movl	$1, %r8d
	movl	$2, %r9d
	movl	$4, %r10d
	movl	$10, %r11d
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$10, 24(%rsp)
	movl	%r11d, -356(%rbp)       # 4-byte Spill
	movl	%r10d, -360(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
	movq	-128(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	xmcvals, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.101, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$xmcvals, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-128(%rbp), %rbx
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-376(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.102, %rdi
	movq	-128(%rbp), %rcx
	movq	%rax, -384(%rbp)        # 8-byte Spill
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.103, %rdi
	movl	$12, %esi
	movabsq	$.L.str.104, %rdx
	movl	$16, %ecx
	movabsq	$.L.str.105, %r8
	movl	$24, %r9d
	movabsq	$.L.str.106, %rax
	movl	$32, %r10d
	movabsq	$.L.str.107, %rbx
	movl	$36, %r11d
	movabsq	$.L.str.108, %r14
	movl	$40, %r15d
	movabsq	$.L.str.109, %r12
	movl	$48, %r13d
	movq	%rax, -400(%rbp)        # 8-byte Spill
	movabsq	$.L.str.110, %rax
	movl	%ecx, -404(%rbp)        # 4-byte Spill
	movl	$64, %ecx
	movl	%ecx, -408(%rbp)        # 4-byte Spill
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%r8, -416(%rbp)         # 8-byte Spill
	movl	-404(%rbp), %r8d        # 4-byte Reload
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movq	-416(%rbp), %r8         # 8-byte Reload
	movq	%rax, -432(%rbp)        # 8-byte Spill
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$32, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movl	$36, 24(%rsp)
	movq	%r14, 32(%rsp)
	movl	$40, 40(%rsp)
	movq	%r12, 48(%rsp)
	movl	$48, 56(%rsp)
	movq	-432(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 64(%rsp)
	movl	$64, 72(%rsp)
	movq	$0, 80(%rsp)
	movb	$0, %al
	movl	%r10d, -436(%rbp)       # 4-byte Spill
	movl	%r15d, -440(%rbp)       # 4-byte Spill
	movl	%r13d, -444(%rbp)       # 4-byte Spill
	movl	%r11d, -448(%rbp)       # 4-byte Spill
	callq	gimp_int_combo_box_new
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$32, %esi
	movabsq	$gimp_int_combo_box_get_active, %rdx
	movabsq	$xmcvals, %rdi
	addq	$4, %rdi
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-464(%rbp), %rcx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movq	-128(%rbp), %rdi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movabsq	$.L.str.111, %rdi
	movq	-128(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	%esi, %edx
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-96(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.112, %rdi
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$3, %r9d
	movl	$1, %r10d
	movq	-128(%rbp), %r8
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$1, (%rsp)
	movl	%r10d, -500(%rbp)       # 4-byte Spill
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.113, %rdi
	movl	xmcvals+8, %r8d
	movq	%rax, -512(%rbp)        # 8-byte Spill
	movl	%r8d, -516(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.114, %rdi
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edi, %edi
	xorl	%edx, %edx
	movl	%edx, %esi
	movabsq	$gimp_radio_button_update, %rcx
	movabsq	$xmcvals, %rbx
	addq	$8, %rbx
	movl	$1, %edx
	movl	%edx, -532(%rbp)        # 4-byte Spill
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	movl	-516(%rbp), %r8d        # 4-byte Reload
	movq	-528(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	callq	gimp_int_radio_group_new
	movss	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI8_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, -128(%rbp)
	movss	%xmm0, -536(%rbp)       # 4-byte Spill
	movss	-536(%rbp), %xmm2       # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	%xmm1, -540(%rbp)       # 4-byte Spill
	movaps	%xmm2, %xmm1
	movss	-540(%rbp), %xmm2       # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	-540(%rbp), %xmm3       # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	callq	gtk_alignment_new
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movq	-96(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$3, %r8d
	movl	$4, %r9d
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-120(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gtk_alignment_get_type
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$6, %edx
	movl	$20, %r8d
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, -564(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-564(%rbp), %r8d        # 4-byte Reload
	callq	gtk_alignment_set_padding
	movq	-120(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-112(%rbp), %rdi
	movsd	.LCPI8_3, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI8_2, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm5, %xmm5
	xorl	%esi, %esi
	cvtsi2sdl	xmcvals+12, %xmm3
	movsd	%xmm0, -584(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-584(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -592(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-592(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-584(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-592(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-168(%rbp), %rdi
	movsd	.LCPI8_2, %xmm0         # xmm0 = mem[0],zero
	callq	g_value_set_double
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.94, %rsi
	leaq	-168(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_property
	movq	-104(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movabsq	$.L.str.95, %rsi
	movabsq	$gimp_int_adjustment_update, %rax
	movabsq	$xmcvals, %rdi
	addq	$12, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-112(%rbp), %rbx
	movq	%rdi, -608(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-608(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.115, %rdi
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_label_new
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-104(%rbp), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.116, %rdi
	movq	-104(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-96(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.117, %rdi
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$4, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$3, %r9d
	movl	$1, %ecx
	movq	-104(%rbp), %r8
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, -660(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.118, %rdi
	movl	xmcvals+16, %r8d
	movq	%rax, -672(%rbp)        # 8-byte Spill
	movl	%r8d, -676(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.119, %rdi
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edi, %edi
	xorl	%edx, %edx
	movl	%edx, %esi
	movabsq	$gimp_radio_button_update, %rcx
	movabsq	$xmcvals, %rbx
	addq	$16, %rbx
	movl	$1, %edx
	movl	%edx, -692(%rbp)        # 4-byte Spill
	movq	%rcx, %rdx
	movq	%rbx, %rcx
	movl	-676(%rbp), %r8d        # 4-byte Reload
	movq	-688(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	callq	gimp_int_radio_group_new
	movss	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI8_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, -128(%rbp)
	movss	%xmm0, -696(%rbp)       # 4-byte Spill
	movss	-696(%rbp), %xmm2       # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	%xmm1, -700(%rbp)       # 4-byte Spill
	movaps	%xmm2, %xmm1
	movss	-700(%rbp), %xmm2       # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	-700(%rbp), %xmm3       # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	callq	gtk_alignment_new
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	callq	gtk_widget_show
	movq	-96(%rbp), %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$3, %ecx
	movl	$5, %r8d
	movl	$6, %r9d
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-120(%rbp), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gtk_alignment_get_type
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$6, %edx
	movl	$20, %r8d
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, -724(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-724(%rbp), %r8d        # 4-byte Reload
	callq	gtk_alignment_set_padding
	movq	-120(%rbp), %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_entry_new
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1048576, %esi          # imm = 0x100000
	movq	%rax, %rdi
	callq	gtk_entry_set_max_length
	cmpq	$0, xmcparas+8
	je	.LBB8_4
# BB#1:                                 # %if.then
	movq	-128(%rbp), %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-752(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	$-1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	xmcparas+8, %rdi
	movq	%rax, -760(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	gimp_any_to_utf8
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_entry_set_text
	movq	-128(%rbp), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, %rdi
	callq	strlen
	cmpq	$65535, %rax            # imm = 0xFFFF
	jb	.LBB8_3
# BB#2:                                 # %if.then.108
	movabsq	$.L.str.120, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
.LBB8_3:                                # %if.end
	jmp	.LBB8_4
.LBB8_4:                                # %if.end.110
	movabsq	$.L.str.121, %rsi
	movabsq	$comment_entry_callback, %rax
	movabsq	$xmcparas, %rcx
	addq	$8, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-128(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movq	-128(%rbp), %rdi
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movabsq	$.L.str.122, %rdi
	movq	-128(%rbp), %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-784(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-96(%rbp), %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-792(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.123, %rdi
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$6, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$3, %r9d
	movq	-128(%rbp), %r8
	movq	-800(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	gtk_entry_new
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1048576, %esi          # imm = 0x100000
	movq	%rax, %rdi
	callq	gtk_entry_set_max_length
	cmpq	$0, xmcparas+16
	je	.LBB8_8
# BB#5:                                 # %if.then.121
	movq	-128(%rbp), %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	$-1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	xmcparas+16, %rdi
	movq	%rax, -832(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	gimp_any_to_utf8
	movq	-832(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_entry_set_text
	movq	-128(%rbp), %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, %rdi
	callq	strlen
	cmpq	$65535, %rax            # imm = 0xFFFF
	jb	.LBB8_7
# BB#6:                                 # %if.then.131
	movabsq	$.L.str.124, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
.LBB8_7:                                # %if.end.133
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.134
	movabsq	$.L.str.121, %rsi
	movabsq	$comment_entry_callback, %rax
	movabsq	$xmcparas, %rcx
	addq	$16, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-128(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movq	-128(%rbp), %rdi
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movabsq	$.L.str.125, %rdi
	movq	-128(%rbp), %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-856(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-96(%rbp), %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-864(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.126, %rdi
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$7, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$3, %r9d
	movq	-128(%rbp), %r8
	movq	-872(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.127, %rdi
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show
	movq	-136(%rbp), %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	movss	%xmm0, -892(%rbp)       # 4-byte Spill
	movss	-892(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	gtk_misc_set_alignment
	movq	-96(%rbp), %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$8, %r8d
	movl	$9, %r9d
	movl	$4, %r10d
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -908(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gtk_scrolled_window_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-920(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_shadow_type
	movq	-104(%rbp), %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-928(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_scrolled_window_set_policy
	movq	-96(%rbp), %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-936(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$3, %ecx
	movl	$8, %r8d
	movl	$9, %r9d
	movl	$4, %r10d
	xorl	%r11d, %r11d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r11d, -940(%rbp)       # 4-byte Spill
	movl	%r10d, -944(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_text_buffer_new
	movq	%rax, -144(%rbp)
	cmpq	$0, xmcparas+24
	je	.LBB8_10
# BB#9:                                 # %if.then.156
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-144(%rbp), %rdi
	movq	xmcparas+24, %rcx
	movq	%rdi, -952(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movb	$0, %al
	callq	gimp_any_to_utf8
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-952(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_text_buffer_set_text
.LBB8_10:                               # %if.end.158
	movabsq	$.L.str.121, %rsi
	movabsq	$text_view_callback, %rax
	movabsq	$xmcparas, %rcx
	addq	$24, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-144(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movq	-144(%rbp), %rcx
	movq	%rax, -960(%rbp)        # 8-byte Spill
	movq	%rcx, -968(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-968(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_text_view_new_with_buffer
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_text_view_set_accepts_tab
	movq	-128(%rbp), %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-984(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_text_view_set_wrap_mode
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-128(%rbp), %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
	callq	gtk_text_view_get_type
	movq	-992(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_text_view_set_wrap_mode
	movq	-104(%rbp), %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-128(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.128, %rdi
	movq	-128(%rbp), %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-1008(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-136(%rbp), %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	callq	gtk_label_get_type
	movq	-1016(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movq	-80(%rbp), %rax
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-1024(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %eax
	movl	%eax, -172(%rbp)
	movq	-80(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-172(%rbp), %eax
	addq	$1080, %rsp             # imm = 0x438
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	save_dialog, .Lfunc_end8-save_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	pix_in_region,@function
pix_in_region:                          # @pix_in_region
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
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB9_3
# BB#2:                                 # %if.then
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.pix_in_region, %rsi
	movabsq	$.L.str.133, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB9_11
.LBB9_4:                                # %if.end
	jmp	.LBB9_5
.LBB9_5:                                # %do.end
	movl	-8(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	(%rcx), %eax
	jl	.LBB9_9
# BB#6:                                 # %lor.lhs.false
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jl	.LBB9_9
# BB#7:                                 # %lor.lhs.false.4
	movl	-8(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	(%rcx), %edx
	movq	-24(%rbp), %rcx
	addl	8(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB9_9
# BB#8:                                 # %lor.lhs.false.7
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	4(%rcx), %edx
	movq	-24(%rbp), %rcx
	addl	12(%rcx), %edx
	cmpl	%edx, %eax
	jl	.LBB9_10
.LBB9_9:                                # %if.then.11
	movl	$0, -4(%rbp)
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.12
	movl	$1, -4(%rbp)
.LBB9_11:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	pix_in_region, .Lfunc_end9-pix_in_region
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	save_image,@function
save_image:                             # @save_image
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
	pushq	%rbx
	subq	$262552, %rsp           # imm = 0x40198
.Ltmp43:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.134, %rax
	movl	$8193, %r9d             # imm = 0x2001
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	%r8, -48(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -72(%rbp)
	movq	%rax, %rdi
	movl	%r9d, %esi
	movl	%r10d, %edx
	movq	%rbx, %rcx
	callq	g_regex_new
	movabsq	$.L.str.135, %rsi
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rdi
	callq	fopen
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rdi
	movq	%rdi, -262360(%rbp)     # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -262364(%rbp)     # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.136, %rdi
	movl	%eax, -262368(%rbp)     # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -262376(%rbp)     # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -262384(%rbp)     # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-262360(%rbp), %rdi     # 8-byte Reload
	movl	-262364(%rbp), %esi     # 4-byte Reload
	movl	-262368(%rbp), %edx     # 4-byte Reload
	movq	-262376(%rbp), %rcx     # 8-byte Reload
	movq	-262384(%rbp), %r8      # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -12(%rbp)
	jmp	.LBB10_68
.LBB10_2:                               # %if.end
	movabsq	$.L.str.137, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -262392(%rbp)     # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-262392(%rbp), %rdi     # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	leaq	-172(%rbp), %rsi
	movl	-36(%rbp), %edi
	movl	%eax, -262396(%rbp)     # 4-byte Spill
	callq	gimp_image_get_layers
	leaq	-172(%rbp), %rsi
	movq	%rax, -168(%rbp)
	movl	-28(%rbp), %edi
	callq	gimp_image_get_layers
	movq	%rax, -160(%rbp)
	movl	-172(%rbp), %edi
	callq	XcursorImagesCreate
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB10_4
# BB#3:                                 # %if.then.15
	movl	$0, -12(%rbp)
	jmp	.LBB10_68
.LBB10_4:                               # %if.end.16
	movl	-172(%rbp), %eax
	movq	-152(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	$0, -52(%rbp)
.LBB10_5:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_38 Depth 2
	movl	-52(%rbp), %eax
	cmpl	-172(%rbp), %eax
	jge	.LBB10_48
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB10_5 Depth=1
	movl	-172(%rbp), %eax
	subl	$1, %eax
	subl	-52(%rbp), %eax
	movslq	%eax, %rcx
	movq	-160(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	callq	gimp_drawable_get
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpl	$4, 12(%rax)
	je	.LBB10_8
# BB#7:                                 # %if.then.21
	movabsq	$.L.str.138, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, -262408(%rbp)     # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movq	-262408(%rbp), %rdi     # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	movl	$0, -12(%rbp)
	jmp	.LBB10_68
.LBB10_8:                               # %if.end.23
                                        #   in Loop: Header=BB10_5 Depth=1
	movl	-172(%rbp), %eax
	subl	$1, %eax
	subl	-52(%rbp), %eax
	movslq	%eax, %rcx
	movq	-160(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	callq	gimp_item_get_name
	leaq	-204(%rbp), %rsi
	leaq	-208(%rbp), %rdx
	movq	%rax, -184(%rbp)
	movl	-172(%rbp), %edi
	subl	$1, %edi
	subl	-52(%rbp), %edi
	movslq	%edi, %rax
	movq	-160(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_drawable_offsets
	movq	-88(%rbp), %rcx
	cmpl	$256, 4(%rcx)           # imm = 0x100
	movl	%eax, -262412(%rbp)     # 4-byte Spill
	jbe	.LBB10_10
# BB#9:                                 # %if.then.35
	movabsq	$.L.str.139, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, -262424(%rbp)     # 8-byte Spill
	callq	gettext
	movq	$-1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-184(%rbp), %rdi
	movq	%rax, -262432(%rbp)     # 8-byte Spill
	movb	$0, %al
	callq	gimp_any_to_utf8
	xorl	%ecx, %ecx
	movl	$256, %r9d              # imm = 0x100
	movq	-262424(%rbp), %rdi     # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	-262432(%rbp), %rcx     # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$0, -12(%rbp)
	jmp	.LBB10_68
.LBB10_10:                              # %if.end.38
                                        #   in Loop: Header=BB10_5 Depth=1
	movq	-88(%rbp), %rax
	cmpl	$256, 8(%rax)           # imm = 0x100
	jbe	.LBB10_12
# BB#11:                                # %if.then.40
	movabsq	$.L.str.140, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, -262440(%rbp)     # 8-byte Spill
	callq	gettext
	movq	$-1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-184(%rbp), %rdi
	movq	%rax, -262448(%rbp)     # 8-byte Spill
	movb	$0, %al
	callq	gimp_any_to_utf8
	xorl	%ecx, %ecx
	movl	$256, %r9d              # imm = 0x100
	movq	-262440(%rbp), %rdi     # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	-262448(%rbp), %rcx     # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$0, -12(%rbp)
	jmp	.LBB10_68
.LBB10_12:                              # %if.end.43
                                        #   in Loop: Header=BB10_5 Depth=1
	movq	-88(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB10_14
# BB#13:                                # %lor.lhs.false
                                        #   in Loop: Header=BB10_5 Depth=1
	movq	-88(%rbp), %rax
	cmpl	$0, 4(%rax)
	jne	.LBB10_15
.LBB10_14:                              # %if.then.48
	movabsq	$.L.str.141, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, -262456(%rbp)     # 8-byte Spill
	callq	gettext
	movq	$-1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-184(%rbp), %rdi
	movq	%rax, -262464(%rbp)     # 8-byte Spill
	movb	$0, %al
	callq	gimp_any_to_utf8
	xorl	%ecx, %ecx
	movq	-262456(%rbp), %rdi     # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	-262464(%rbp), %rcx     # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$0, -12(%rbp)
	jmp	.LBB10_68
.LBB10_15:                              # %if.end.51
                                        #   in Loop: Header=BB10_5 Depth=1
	leaq	-136(%rbp), %rdi
	xorl	%eax, %eax
	movq	-88(%rbp), %rsi
	movq	-88(%rbp), %rcx
	movl	4(%rcx), %r8d
	movq	-88(%rbp), %rcx
	movl	8(%rcx), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	cmpl	$0, xmcvals
	je	.LBB10_24
# BB#16:                                # %if.then.55
                                        #   in Loop: Header=BB10_5 Depth=1
	leaq	-200(%rbp), %rdi
	leaq	-136(%rbp), %rsi
	callq	get_cropped_region
	cmpl	$0, -192(%rbp)
	je	.LBB10_18
# BB#17:                                # %lor.lhs.false.58
                                        #   in Loop: Header=BB10_5 Depth=1
	cmpl	$0, -188(%rbp)
	jne	.LBB10_21
.LBB10_18:                              # %if.then.61
                                        #   in Loop: Header=BB10_5 Depth=1
	movl	$1, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	callq	XcursorImageCreate
	movslq	-52(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movslq	-52(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB10_20
# BB#19:                                # %if.then.69
	movl	$0, -12(%rbp)
	jmp	.LBB10_68
.LBB10_20:                              # %if.end.70
                                        #   in Loop: Header=BB10_5 Depth=1
	leaq	-72(%rbp), %r8
	movslq	-52(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	32(%rax), %rax
	movl	$0, (%rax)
	movslq	-52(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	$0, 16(%rax)
	movslq	-52(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	$0, 20(%rax)
	movq	-184(%rbp), %rdi
	movslq	-52(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	addq	$4, %rax
	movslq	-52(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	addq	$24, %rcx
	movq	-80(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -262472(%rbp)     # 8-byte Spill
	movq	%rcx, %rdx
	movq	-262472(%rbp), %rcx     # 8-byte Reload
	callq	set_size_and_delay
	jmp	.LBB10_47
.LBB10_21:                              # %if.end.87
                                        #   in Loop: Header=BB10_5 Depth=1
	leaq	-200(%rbp), %rdx
	movl	xmcparas, %eax
	subl	-204(%rbp), %eax
	movl	xmcparas+4, %ecx
	subl	-208(%rbp), %ecx
	movl	%eax, %edi
	movl	%ecx, %esi
	callq	pix_in_region
	cmpl	$0, %eax
	jne	.LBB10_23
# BB#22:                                # %if.then.92
	movabsq	$.L.str.142, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, -262480(%rbp)     # 8-byte Spill
	callq	gettext
	movq	$-1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-184(%rbp), %rdi
	movq	%rax, -262488(%rbp)     # 8-byte Spill
	movb	$0, %al
	callq	gimp_any_to_utf8
	xorl	%ecx, %ecx
	movq	-262480(%rbp), %rdi     # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	-262488(%rbp), %rcx     # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$0, -12(%rbp)
	jmp	.LBB10_68
.LBB10_23:                              # %if.end.95
                                        #   in Loop: Header=BB10_5 Depth=1
	jmp	.LBB10_25
.LBB10_24:                              # %if.else
                                        #   in Loop: Header=BB10_5 Depth=1
	movq	-88(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -192(%rbp)
	movq	-88(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -188(%rbp)
	movl	$0, -200(%rbp)
	movl	$0, -196(%rbp)
.LBB10_25:                              # %if.end.100
                                        #   in Loop: Header=BB10_5 Depth=1
	cmpl	$0, -68(%rbp)
	jne	.LBB10_30
# BB#26:                                # %if.then.102
                                        #   in Loop: Header=BB10_5 Depth=1
	cmpl	$64, -192(%rbp)
	jg	.LBB10_28
# BB#27:                                # %lor.lhs.false.105
                                        #   in Loop: Header=BB10_5 Depth=1
	cmpl	$64, -188(%rbp)
	jle	.LBB10_29
.LBB10_28:                              # %if.then.108
                                        #   in Loop: Header=BB10_5 Depth=1
	movl	$1, -68(%rbp)
.LBB10_29:                              # %if.end.109
                                        #   in Loop: Header=BB10_5 Depth=1
	jmp	.LBB10_30
.LBB10_30:                              # %if.end.110
                                        #   in Loop: Header=BB10_5 Depth=1
	movl	-192(%rbp), %edi
	movl	-188(%rbp), %esi
	callq	XcursorImageCreate
	movslq	-52(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movslq	-52(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB10_32
# BB#31:                                # %if.then.121
	movl	$0, -12(%rbp)
	jmp	.LBB10_68
.LBB10_32:                              # %if.end.122
                                        #   in Loop: Header=BB10_5 Depth=1
	leaq	-136(%rbp), %rdi
	leaq	-262352(%rbp), %rax
	movl	xmcparas, %ecx
	subl	-204(%rbp), %ecx
	subl	-200(%rbp), %ecx
	movslq	-52(%rbp), %rdx
	movq	-152(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movl	%ecx, 16(%rdx)
	movl	xmcparas+4, %ecx
	subl	-208(%rbp), %ecx
	subl	-196(%rbp), %ecx
	movslq	-52(%rbp), %rdx
	movq	-152(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movl	%ecx, 20(%rdx)
	movl	-200(%rbp), %edx
	movl	-196(%rbp), %ecx
	movl	-192(%rbp), %r8d
	movl	-188(%rbp), %r9d
	movq	%rax, %rsi
	callq	gimp_pixel_rgn_get_rect
# BB#33:                                # %do.body
                                        #   in Loop: Header=BB10_5 Depth=1
	movl	-192(%rbp), %eax
	imull	-188(%rbp), %eax
	cmpl	$65536, %eax            # imm = 0x10000
	jge	.LBB10_35
# BB#34:                                # %if.then.144
                                        #   in Loop: Header=BB10_5 Depth=1
	jmp	.LBB10_36
.LBB10_35:                              # %if.else.145
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.143, %rsi
	movl	$1617, %edx             # imm = 0x651
	movabsq	$.L__func__.save_image, %rcx
	movabsq	$.L.str.144, %r8
	callq	g_assertion_message_expr
.LBB10_36:                              # %if.end.146
                                        #   in Loop: Header=BB10_5 Depth=1
	jmp	.LBB10_37
.LBB10_37:                              # %do.end
                                        #   in Loop: Header=BB10_5 Depth=1
	movl	$0, -56(%rbp)
.LBB10_38:                              # %for.cond.147
                                        #   Parent Loop BB10_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-56(%rbp), %eax
	movl	-192(%rbp), %ecx
	imull	-188(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB10_41
# BB#39:                                # %for.body.152
                                        #   in Loop: Header=BB10_38 Depth=2
	movslq	-56(%rbp), %rax
	movl	-262352(%rbp,%rax,4), %edi
	callq	premultiply_alpha
	movslq	-56(%rbp), %rcx
	movslq	-52(%rbp), %rdx
	movq	-152(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	(%rsi,%rdx,8), %rdx
	movq	32(%rdx), %rdx
	movl	%eax, (%rdx,%rcx,4)
# BB#40:                                # %for.inc
                                        #   in Loop: Header=BB10_38 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB10_38
.LBB10_41:                              # %for.end
                                        #   in Loop: Header=BB10_5 Depth=1
	leaq	-72(%rbp), %r8
	movq	-184(%rbp), %rdi
	movslq	-52(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	addq	$4, %rax
	movslq	-52(%rbp), %rcx
	movq	-152(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	addq	$24, %rcx
	movq	-80(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -262496(%rbp)     # 8-byte Spill
	movq	%rcx, %rdx
	movq	-262496(%rbp), %rcx     # 8-byte Reload
	callq	set_size_and_delay
	movq	-184(%rbp), %rdi
	callq	g_free
	movslq	-52(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	4(%rax), %edi
	movslq	-52(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	24(%rax), %esi
	movq	-152(%rbp), %rax
	cmpl	$100, (%rax)
	movl	%edi, -262500(%rbp)     # 4-byte Spill
	movl	%esi, -262504(%rbp)     # 4-byte Spill
	jle	.LBB10_43
# BB#42:                                # %cond.true
                                        #   in Loop: Header=BB10_5 Depth=1
	movl	$3, %eax
	movl	%eax, -262508(%rbp)     # 4-byte Spill
	jmp	.LBB10_44
.LBB10_43:                              # %cond.false
                                        #   in Loop: Header=BB10_5 Depth=1
	movl	$1, %eax
	movl	$2, %ecx
	movq	-152(%rbp), %rdx
	cmpl	$10, (%rdx)
	cmovgl	%ecx, %eax
	movl	%eax, -262508(%rbp)     # 4-byte Spill
.LBB10_44:                              # %cond.end
                                        #   in Loop: Header=BB10_5 Depth=1
	movl	-262508(%rbp), %eax     # 4-byte Reload
	movq	-48(%rbp), %rcx
	movl	-262500(%rbp), %edi     # 4-byte Reload
	movl	-262504(%rbp), %esi     # 4-byte Reload
	movl	%eax, %edx
	callq	make_framename
	movq	%rax, -184(%rbp)
	cmpq	$0, -184(%rbp)
	jne	.LBB10_46
# BB#45:                                # %if.then.185
	movl	$0, -12(%rbp)
	jmp	.LBB10_68
.LBB10_46:                              # %if.end.186
                                        #   in Loop: Header=BB10_5 Depth=1
	movl	-172(%rbp), %eax
	subl	$1, %eax
	subl	-52(%rbp), %eax
	movslq	%eax, %rcx
	movq	-168(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	movq	-184(%rbp), %rsi
	callq	gimp_item_set_name
	movq	-184(%rbp), %rdi
	movl	%eax, -262512(%rbp)     # 4-byte Spill
	callq	g_free
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movq	-152(%rbp), %rcx
	cltd
	idivl	(%rcx)
	cvtsi2sdl	%eax, %xmm0
	callq	gimp_progress_update
	movl	%eax, -262516(%rbp)     # 4-byte Spill
.LBB10_47:                              # %for.inc.194
                                        #   in Loop: Header=BB10_5 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB10_5
.LBB10_48:                              # %for.end.196
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	%eax, -262520(%rbp)     # 4-byte Spill
	callq	set_cursor_comments
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB10_52
# BB#49:                                # %if.then.200
	movq	-64(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movq	-152(%rbp), %rdx
	callq	XcursorFileSave
	cmpl	$0, %eax
	jne	.LBB10_51
# BB#50:                                # %if.then.203
	movl	$0, -12(%rbp)
	jmp	.LBB10_68
.LBB10_51:                              # %if.end.204
	jmp	.LBB10_55
.LBB10_52:                              # %if.else.205
	movq	-64(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	XcursorFileSaveImages
	cmpl	$0, %eax
	jne	.LBB10_54
# BB#53:                                # %if.then.208
	movl	$0, -12(%rbp)
	jmp	.LBB10_68
.LBB10_54:                              # %if.end.209
	jmp	.LBB10_55
.LBB10_55:                              # %if.end.210
	cmpl	$0, -68(%rbp)
	je	.LBB10_57
# BB#56:                                # %if.then.212
	movabsq	$.L.str.145, %rdi
	callq	gettext
	movl	$64, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
.LBB10_57:                              # %if.end.214
	cmpl	$0, -72(%rbp)
	je	.LBB10_59
# BB#58:                                # %if.then.216
	movabsq	$.L.str.146, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
.LBB10_59:                              # %if.end.218
	movq	-80(%rbp), %rdi
	callq	g_regex_unref
	movq	-64(%rbp), %rdi
	callq	fclose
	movq	-152(%rbp), %rdi
	movl	%eax, -262524(%rbp)     # 4-byte Spill
	callq	XcursorImagesDestroy
	movq	-144(%rbp), %rdi
	callq	XcursorCommentsDestroy
	callq	gimp_progress_end
	movl	$0, -52(%rbp)
	movl	%eax, -262528(%rbp)     # 4-byte Spill
.LBB10_60:                              # %for.cond.221
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -52(%rbp)
	jge	.LBB10_67
# BB#61:                                # %for.body.224
                                        #   in Loop: Header=BB10_60 Depth=1
	movl	-36(%rbp), %edi
	movslq	-52(%rbp), %rax
	movq	parasiteName(,%rax,8), %rsi
	callq	gimp_image_detach_parasite
	movslq	-52(%rbp), %rsi
	cmpq	$0, xmcparas+8(,%rsi,8)
	movl	%eax, -262532(%rbp)     # 4-byte Spill
	je	.LBB10_65
# BB#62:                                # %if.then.231
                                        #   in Loop: Header=BB10_60 Depth=1
	movl	-36(%rbp), %edi
	movslq	-52(%rbp), %rax
	movq	xmcparas+8(,%rax,8), %rsi
	movslq	-52(%rbp), %rax
	movq	parasiteName(,%rax,8), %rdx
	callq	set_comment_to_pname
	cmpl	$0, %eax
	jne	.LBB10_64
# BB#63:                                # %if.then.238
                                        #   in Loop: Header=BB10_60 Depth=1
	jmp	.LBB10_64
.LBB10_64:                              # %if.end.239
                                        #   in Loop: Header=BB10_60 Depth=1
	jmp	.LBB10_65
.LBB10_65:                              # %if.end.240
                                        #   in Loop: Header=BB10_60 Depth=1
	jmp	.LBB10_66
.LBB10_66:                              # %for.inc.241
                                        #   in Loop: Header=BB10_60 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB10_60
.LBB10_67:                              # %for.end.243
	movl	-36(%rbp), %edi
	callq	set_hotspot_to_parasite
	movl	$1, -12(%rbp)
	movl	%eax, -262536(%rbp)     # 4-byte Spill
.LBB10_68:                              # %return
	movl	-12(%rbp), %eax
	addq	$262552, %rsp           # imm = 0x40198
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end10:
	.size	save_image, .Lfunc_end10-save_image
	.cfi_endproc

	.align	16, 0x90
	.type	find_hotspots_and_dimensions,@function
find_hotspots_and_dimensions:           # @find_hotspots_and_dimensions
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB11_3
# BB#2:                                 # %if.then
	jmp	.LBB11_4
.LBB11_3:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.find_hotspots_and_dimensions, %rsi
	movabsq	$.L.str.71, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_29
.LBB11_4:                               # %if.end
	jmp	.LBB11_5
.LBB11_5:                               # %do.end
	movl	$0, -52(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -44(%rbp)
.LBB11_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB11_21
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB11_6 Depth=1
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	16(%rax), %edx
	cmpl	-56(%rbp), %edx
	jbe	.LBB11_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB11_6 Depth=1
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	16(%rax), %edx
	movl	%edx, -64(%rbp)         # 4-byte Spill
	jmp	.LBB11_10
.LBB11_9:                               # %cond.false
                                        #   in Loop: Header=BB11_6 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB11_10:                              # %cond.end
                                        #   in Loop: Header=BB11_6 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)
	movslq	-44(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	20(%rcx), %eax
	cmpl	-60(%rbp), %eax
	jbe	.LBB11_12
# BB#11:                                # %cond.true.10
                                        #   in Loop: Header=BB11_6 Depth=1
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	20(%rax), %edx
	movl	%edx, -68(%rbp)         # 4-byte Spill
	jmp	.LBB11_13
.LBB11_12:                              # %cond.false.15
                                        #   in Loop: Header=BB11_6 Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB11_13:                              # %cond.end.16
                                        #   in Loop: Header=BB11_6 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -60(%rbp)
	movl	-48(%rbp), %eax
	movslq	-44(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	8(%rcx), %esi
	movslq	-44(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	subl	16(%rcx), %esi
	cmpl	%esi, %eax
	jbe	.LBB11_15
# BB#14:                                # %cond.true.26
                                        #   in Loop: Header=BB11_6 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB11_16
.LBB11_15:                              # %cond.false.27
                                        #   in Loop: Header=BB11_6 Depth=1
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	8(%rax), %edx
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	subl	16(%rax), %edx
	movl	%edx, -72(%rbp)         # 4-byte Spill
.LBB11_16:                              # %cond.end.37
                                        #   in Loop: Header=BB11_6 Depth=1
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	movslq	-44(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	12(%rcx), %esi
	movslq	-44(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	subl	20(%rcx), %esi
	cmpl	%esi, %eax
	jbe	.LBB11_18
# BB#17:                                # %cond.true.48
                                        #   in Loop: Header=BB11_6 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB11_19
.LBB11_18:                              # %cond.false.49
                                        #   in Loop: Header=BB11_6 Depth=1
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	12(%rax), %edx
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	subl	20(%rax), %edx
	movl	%edx, -76(%rbp)         # 4-byte Spill
.LBB11_19:                              # %cond.end.59
                                        #   in Loop: Header=BB11_6 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB11_6 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB11_6
.LBB11_21:                              # %for.end
	cmpq	$0, -16(%rbp)
	je	.LBB11_23
# BB#22:                                # %if.then.62
	movl	-56(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB11_23:                              # %if.end.63
	cmpq	$0, -24(%rbp)
	je	.LBB11_25
# BB#24:                                # %if.then.65
	movl	-60(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB11_25:                              # %if.end.66
	cmpq	$0, -32(%rbp)
	je	.LBB11_27
# BB#26:                                # %if.then.68
	movl	-48(%rbp), %eax
	addl	-56(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB11_27:                              # %if.end.69
	cmpq	$0, -40(%rbp)
	je	.LBB11_29
# BB#28:                                # %if.then.71
	movl	-52(%rbp), %eax
	addl	-60(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB11_29:                              # %if.end.73
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	find_hotspots_and_dimensions, .Lfunc_end11-find_hotspots_and_dimensions
	.cfi_endproc

	.align	16, 0x90
	.type	set_hotspot_to_parasite,@function
set_hotspot_to_parasite:                # @set_hotspot_to_parasite
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
	movl	%edi, -8(%rbp)
	movl	$0, -12(%rbp)
# BB#1:                                 # %do.body
	cmpl	$-1, -8(%rbp)
	je	.LBB12_3
# BB#2:                                 # %if.then
	jmp	.LBB12_4
.LBB12_3:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.set_hotspot_to_parasite, %rsi
	movabsq	$.L.str.72, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB12_8
.LBB12_4:                               # %if.end
	jmp	.LBB12_5
.LBB12_5:                               # %do.end
	movabsq	$.L.str.73, %rdi
	movl	xmcparas, %esi
	movl	xmcparas+4, %edx
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.74, %rdi
	movl	$1, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	callq	strlen
	addq	$1, %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movl	-44(%rbp), %esi         # 4-byte Reload
	callq	gimp_parasite_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_free
	cmpq	$0, -32(%rbp)
	je	.LBB12_7
# BB#6:                                 # %if.then.3
	movl	-8(%rbp), %edi
	movq	-32(%rbp), %rsi
	callq	gimp_image_attach_parasite
	movl	%eax, -12(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_parasite_free
.LBB12_7:                               # %if.end.5
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB12_8:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	set_hotspot_to_parasite, .Lfunc_end12-set_hotspot_to_parasite
	.cfi_endproc

	.align	16, 0x90
	.type	make_framename,@function
make_framename:                         # @make_framename
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
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -12(%rbp)
	jbe	.LBB13_3
# BB#2:                                 # %if.then
	jmp	.LBB13_4
.LBB13_3:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.make_framename, %rsi
	movabsq	$.L.str.75, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB13_14
.LBB13_4:                               # %if.end
	jmp	.LBB13_5
.LBB13_5:                               # %do.end
	movl	$0, -36(%rbp)
.LBB13_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-36(%rbp), %rax
	movl	make_framename.Counter(,%rax,8), %ecx
	cmpl	-12(%rbp), %ecx
	je	.LBB13_13
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB13_6 Depth=1
	movslq	-36(%rbp), %rax
	cmpl	$0, make_framename.Counter(,%rax,8)
	jne	.LBB13_11
# BB#8:                                 # %if.then.7
	cmpl	$8, -36(%rbp)
	jle	.LBB13_10
# BB#9:                                 # %if.then.9
	movabsq	$.L.str.76, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$8, %r8d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	movq	$0, -8(%rbp)
	jmp	.LBB13_14
.LBB13_10:                              # %if.else.10
	movl	-12(%rbp), %eax
	movslq	-36(%rbp), %rcx
	movl	%eax, make_framename.Counter(,%rcx,8)
	jmp	.LBB13_13
.LBB13_11:                              # %if.end.14
                                        #   in Loop: Header=BB13_6 Depth=1
	jmp	.LBB13_12
.LBB13_12:                              # %for.inc
                                        #   in Loop: Header=BB13_6 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB13_6
.LBB13_13:                              # %for.end
	movabsq	$.L.str.77, %rdi
	movslq	-36(%rbp), %rax
	movl	make_framename.Counter+4(,%rax,8), %ecx
	addl	$1, %ecx
	movl	%ecx, make_framename.Counter+4(,%rax,8)
	movl	-12(%rbp), %esi
	movl	-20(%rbp), %edx
	movslq	-36(%rbp), %rax
	movl	make_framename.Counter+4(,%rax,8), %ecx
	movl	-16(%rbp), %r8d
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -8(%rbp)
.LBB13_14:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	make_framename, .Lfunc_end13-make_framename
	.cfi_endproc

	.align	16, 0x90
	.type	separate_alpha,@function
separate_alpha:                         # @separate_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	movl	-8(%rbp), %edi
	andl	$255, %edi
	movl	%edi, -24(%rbp)
	movl	-8(%rbp), %edi
	shrl	$8, %edi
	andl	$255, %edi
	movl	%edi, -20(%rbp)
	movl	-8(%rbp), %edi
	shrl	$16, %edi
	andl	$255, %edi
	movl	%edi, -16(%rbp)
	movl	-8(%rbp), %edi
	shrl	$24, %edi
	andl	$255, %edi
	movl	%edi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB14_21
.LBB14_2:                               # %if.end
	imull	$255, -16(%rbp), %eax
	xorl	%edx, %edx
	divl	-12(%rbp)
	cmpl	$255, %eax
	jbe	.LBB14_4
# BB#3:                                 # %cond.true
	movl	$255, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jmp	.LBB14_8
.LBB14_4:                               # %cond.false
	imull	$255, -16(%rbp), %eax
	xorl	%edx, %edx
	divl	-12(%rbp)
	cmpl	$0, %eax
	jae	.LBB14_6
# BB#5:                                 # %cond.true.11
	xorl	%eax, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB14_7
.LBB14_6:                               # %cond.false.12
	imull	$255, -16(%rbp), %eax
	xorl	%edx, %edx
	divl	-12(%rbp)
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB14_7:                               # %cond.end
	movl	-36(%rbp), %eax         # 4-byte Reload
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB14_8:                               # %cond.end.15
	movl	-32(%rbp), %eax         # 4-byte Reload
	movl	%eax, -16(%rbp)
	imull	$255, -24(%rbp), %eax
	xorl	%edx, %edx
	divl	-12(%rbp)
	cmpl	$255, %eax
	jbe	.LBB14_10
# BB#9:                                 # %cond.true.20
	movl	$255, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB14_14
.LBB14_10:                              # %cond.false.21
	imull	$255, -24(%rbp), %eax
	xorl	%edx, %edx
	divl	-12(%rbp)
	cmpl	$0, %eax
	jae	.LBB14_12
# BB#11:                                # %cond.true.25
	xorl	%eax, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB14_13
.LBB14_12:                              # %cond.false.26
	imull	$255, -24(%rbp), %eax
	xorl	%edx, %edx
	divl	-12(%rbp)
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB14_13:                              # %cond.end.29
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB14_14:                              # %cond.end.31
	movl	-40(%rbp), %eax         # 4-byte Reload
	movl	%eax, -24(%rbp)
	imull	$255, -20(%rbp), %eax
	xorl	%edx, %edx
	divl	-12(%rbp)
	cmpl	$255, %eax
	jbe	.LBB14_16
# BB#15:                                # %cond.true.36
	movl	$255, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB14_20
.LBB14_16:                              # %cond.false.37
	imull	$255, -20(%rbp), %eax
	xorl	%edx, %edx
	divl	-12(%rbp)
	cmpl	$0, %eax
	jae	.LBB14_18
# BB#17:                                # %cond.true.41
	xorl	%eax, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB14_19
.LBB14_18:                              # %cond.false.42
	imull	$255, -20(%rbp), %eax
	xorl	%edx, %edx
	divl	-12(%rbp)
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB14_19:                              # %cond.end.45
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB14_20:                              # %cond.end.47
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, -20(%rbp)
	movl	-16(%rbp), %eax
	movl	-20(%rbp), %ecx
	shll	$8, %ecx
	addl	%ecx, %eax
	movl	-24(%rbp), %ecx
	shll	$16, %ecx
	addl	%ecx, %eax
	movl	-12(%rbp), %ecx
	shll	$24, %ecx
	addl	%ecx, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB14_21:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end14:
	.size	separate_alpha, .Lfunc_end14-separate_alpha
	.cfi_endproc

	.align	16, 0x90
	.type	set_comment_to_pname,@function
set_comment_to_pname:                   # @set_comment_to_pname
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
# BB#1:                                 # %do.body
	cmpl	$-1, -8(%rbp)
	je	.LBB15_3
# BB#2:                                 # %if.then
	jmp	.LBB15_4
.LBB15_3:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.set_comment_to_pname, %rsi
	movabsq	$.L.str.72, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB15_16
.LBB15_4:                               # %if.end
	jmp	.LBB15_5
.LBB15_5:                               # %do.end
	jmp	.LBB15_6
.LBB15_6:                               # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB15_8
# BB#7:                                 # %if.then.2
	jmp	.LBB15_9
.LBB15_8:                               # %if.else.3
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.set_comment_to_pname, %rsi
	movabsq	$.L.str.78, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB15_16
.LBB15_9:                               # %if.end.4
	jmp	.LBB15_10
.LBB15_10:                              # %do.end.5
	movl	-8(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	gimp_image_get_parasite
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB15_12
# BB#11:                                # %if.then.7
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -68(%rbp)         # 4-byte Spill
	callq	strlen
	addq	$1, %rax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	-68(%rbp), %edx         # 4-byte Reload
	movl	%esi, -72(%rbp)         # 4-byte Spill
	movl	%edx, %esi
	movl	-72(%rbp), %edx         # 4-byte Reload
	callq	gimp_parasite_new
	movq	%rax, -56(%rbp)
	jmp	.LBB15_13
.LBB15_12:                              # %if.else.10
	movq	-56(%rbp), %rdi
	callq	gimp_parasite_data
	movq	-56(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_parasite_data_size
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_strndup
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_parasite_free
	movabsq	$.L.str.79, %rdi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	g_strjoin
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_free
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -92(%rbp)         # 4-byte Spill
	callq	strlen
	addq	$1, %rax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movl	%esi, -96(%rbp)         # 4-byte Spill
	movl	%r8d, %esi
	movl	-96(%rbp), %edx         # 4-byte Reload
	callq	gimp_parasite_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_free
.LBB15_13:                              # %if.end.19
	cmpq	$0, -56(%rbp)
	je	.LBB15_15
# BB#14:                                # %if.then.21
	movl	-8(%rbp), %edi
	movq	-56(%rbp), %rsi
	callq	gimp_image_attach_parasite
	movl	%eax, -28(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_parasite_free
.LBB15_15:                              # %if.end.23
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB15_16:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	set_comment_to_pname, .Lfunc_end15-set_comment_to_pname
	.cfi_endproc

	.align	16, 0x90
	.type	read32,@function
read32:                                 # @read32
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$4, %eax
	movl	%eax, %edx
	leaq	-28(%rbp), %r8
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%r8, %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-40(%rbp), %rcx         # 8-byte Reload
	callq	fread
	cmpq	$4, %rax
	je	.LBB16_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.89, %rdi
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB16_3
.LBB16_2:                               # %if.end
	movzbl	-28(%rbp), %eax
	movzbl	-27(%rbp), %ecx
	shll	$8, %ecx
	addl	%ecx, %eax
	movzbl	-26(%rbp), %ecx
	shll	$16, %ecx
	addl	%ecx, %eax
	movzbl	-25(%rbp), %ecx
	shll	$24, %ecx
	addl	%ecx, %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB16_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	read32, .Lfunc_end16-read32
	.cfi_endproc

	.align	16, 0x90
	.type	get_comment_from_pname,@function
get_comment_from_pname:                 # @get_comment_from_pname
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
	subq	$64, %rsp
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -32(%rbp)
# BB#1:                                 # %do.body
	cmpl	$-1, -12(%rbp)
	je	.LBB17_3
# BB#2:                                 # %if.then
	jmp	.LBB17_4
.LBB17_3:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.get_comment_from_pname, %rsi
	movabsq	$.L.str.72, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB17_10
.LBB17_4:                               # %if.end
	jmp	.LBB17_5
.LBB17_5:                               # %do.end
	movl	-12(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	gimp_image_get_parasite
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_parasite_data_size
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB17_9
# BB#6:                                 # %if.then.2
	cmpq	$1048576, -48(%rbp)     # imm = 0x100000
	jle	.LBB17_8
# BB#7:                                 # %if.then.4
	movabsq	$.L.str.90, %rdi
	movq	$1048576, -48(%rbp)     # imm = 0x100000
	callq	gettext
	movq	$-1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movb	$0, %al
	callq	gimp_any_to_utf8
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
.LBB17_8:                               # %if.end.7
	movq	-40(%rbp), %rdi
	callq	gimp_parasite_data
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_strndup
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_parasite_free
.LBB17_9:                               # %if.end.10
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB17_10:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	get_comment_from_pname, .Lfunc_end17-get_comment_from_pname
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
	je	.LBB18_2
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
.LBB18_2:                               # %entry
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
.Lfunc_end18:
	.size	g_message, .Lfunc_end18-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	get_hotspot_from_parasite,@function
get_hotspot_from_parasite:              # @get_hotspot_from_parasite
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
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movq	$0, -16(%rbp)
# BB#1:                                 # %do.body
	cmpl	$-1, -8(%rbp)
	je	.LBB19_3
# BB#2:                                 # %if.then
	jmp	.LBB19_4
.LBB19_3:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.get_hotspot_from_parasite, %rsi
	movabsq	$.L.str.72, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB19_10
.LBB19_4:                               # %if.end
	jmp	.LBB19_5
.LBB19_5:                               # %do.end
	movabsq	$.L.str.74, %rsi
	movl	-8(%rbp), %edi
	callq	gimp_image_get_parasite
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB19_7
# BB#6:                                 # %if.then.1
	movl	$0, -4(%rbp)
	jmp	.LBB19_10
.LBB19_7:                               # %if.end.2
	movq	-16(%rbp), %rdi
	callq	gimp_parasite_data
	movabsq	$.L.str.92, %rsi
	movabsq	$xmcparas, %rdi
	movq	%rdi, %rcx
	addq	$4, %rcx
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movb	$0, %al
	callq	__isoc99_sscanf
	cmpl	$2, %eax
	jge	.LBB19_9
# BB#8:                                 # %if.then.6
	movl	$0, -4(%rbp)
	jmp	.LBB19_10
.LBB19_9:                               # %if.end.7
	movl	$1, -4(%rbp)
.LBB19_10:                              # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	get_hotspot_from_parasite, .Lfunc_end19-get_hotspot_from_parasite
	.cfi_endproc

	.align	16, 0x90
	.type	comment_entry_callback,@function
comment_entry_callback:                 # @comment_entry_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB20_3
# BB#2:                                 # %if.then
	jmp	.LBB20_4
.LBB20_3:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.comment_entry_callback, %rsi
	movabsq	$.L.str.129, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_11
.LBB20_4:                               # %if.end
	jmp	.LBB20_5
.LBB20_5:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, -24(%rbp)
# BB#6:                                 # %do.body.3
	movq	-24(%rbp), %rdi
	callq	strlen
	cmpq	$1048576, %rax          # imm = 0x100000
	ja	.LBB20_8
# BB#7:                                 # %if.then.5
	jmp	.LBB20_9
.LBB20_8:                               # %if.else.6
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.comment_entry_callback, %rsi
	movabsq	$.L.str.130, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_11
.LBB20_9:                               # %if.end.7
	jmp	.LBB20_10
.LBB20_10:                              # %do.end.8
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	-16(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB20_11:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	comment_entry_callback, .Lfunc_end20-comment_entry_callback
	.cfi_endproc

	.align	16, 0x90
	.type	text_view_callback,@function
text_view_callback:                     # @text_view_callback
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB21_3
# BB#2:                                 # %if.then
	jmp	.LBB21_4
.LBB21_3:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.text_view_callback, %rsi
	movabsq	$.L.str.131, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_8
.LBB21_4:                               # %if.end
	jmp	.LBB21_5
.LBB21_5:                               # %do.end
	leaq	-96(%rbp), %rsi
	leaq	-176(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gtk_text_buffer_get_bounds
	leaq	-96(%rbp), %rsi
	leaq	-176(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	callq	gtk_text_buffer_get_text
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rdi
	callq	strlen
	cmpq	$1048576, %rax          # imm = 0x100000
	jbe	.LBB21_7
# BB#6:                                 # %if.then.3
	movabsq	$.L.str.132, %rdi
	callq	gettext
	movl	$1048576, %esi          # imm = 0x100000
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	leaq	-96(%rbp), %rsi
	movl	$1048575, %edx          # imm = 0xFFFFF
	movq	-8(%rbp), %rdi
	callq	gtk_text_buffer_get_iter_at_offset
	leaq	-176(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gtk_text_buffer_get_end_iter
	leaq	-96(%rbp), %rsi
	leaq	-176(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gtk_text_buffer_delete
	jmp	.LBB21_8
.LBB21_7:                               # %if.else.5
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_free
	movq	-184(%rbp), %rdi
	callq	g_strdup
	movq	-16(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB21_8:                               # %if.end.7
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	text_view_callback, .Lfunc_end21-text_view_callback
	.cfi_endproc

	.align	16, 0x90
	.type	get_cropped_region,@function
get_cropped_region:                     # @get_cropped_region
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	32(%rsi), %eax
	movq	-16(%rbp), %rsi
	cmpl	36(%rsi), %eax
	jle	.LBB22_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	jmp	.LBB22_3
.LBB22_2:                               # %cond.false
	movq	-16(%rbp), %rax
	movl	36(%rax), %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
.LBB22_3:                               # %cond.end
	movl	-36(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	shlq	$2, %rcx
	movq	%rcx, %rdi
	callq	g_malloc
	movq	%rax, -32(%rbp)
# BB#4:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB22_6
# BB#5:                                 # %if.then
	jmp	.LBB22_7
.LBB22_6:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.get_cropped_region, %rsi
	movabsq	$.L.str.147, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB22_59
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %do.end
	movq	-16(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	gimp_tile_width
	movl	-40(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-44(%rbp), %esi         # 4-byte Reload
	divl	%esi
	movq	-16(%rbp), %rdi
	movl	36(%rdi), %r8d
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%r8d, -52(%rbp)         # 4-byte Spill
	callq	gimp_tile_height
	movl	-52(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	xorl	%esi, %esi
	movl	%esi, %edx
	movl	-56(%rbp), %esi         # 4-byte Reload
	divl	%esi
	movl	-48(%rbp), %r8d         # 4-byte Reload
	cmpl	%eax, %r8d
	jbe	.LBB22_10
# BB#9:                                 # %cond.true.10
	movq	-16(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_tile_width
	movl	-60(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-64(%rbp), %esi         # 4-byte Reload
	divl	%esi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB22_11
.LBB22_10:                              # %cond.false.14
	movq	-16(%rbp), %rax
	movl	36(%rax), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	gimp_tile_height
	movl	-72(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-76(%rbp), %esi         # 4-byte Reload
	divl	%esi
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB22_11:                              # %cond.end.18
	movl	-68(%rbp), %eax         # 4-byte Reload
	addl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movl	$0, -20(%rbp)
.LBB22_12:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_14 Depth 2
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jae	.LBB22_21
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB22_12 Depth=1
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	24(%rcx), %edx
	addl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movl	28(%rcx), %ecx
	movq	-16(%rbp), %rsi
	movl	36(%rsi), %r8d
	movq	%rax, %rsi
	callq	gimp_pixel_rgn_get_col
	movl	$0, -24(%rbp)
.LBB22_14:                              # %for.cond.26
                                        #   Parent Loop BB22_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jae	.LBB22_19
# BB#15:                                # %for.body.30
                                        #   in Loop: Header=BB22_14 Depth=2
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	callq	pix_is_opaque
	cmpl	$0, %eax
	je	.LBB22_17
# BB#16:                                # %if.then.33
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	addl	-20(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB22_22
.LBB22_17:                              # %if.end.37
                                        #   in Loop: Header=BB22_14 Depth=2
	jmp	.LBB22_18
.LBB22_18:                              # %for.inc
                                        #   in Loop: Header=BB22_14 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB22_14
.LBB22_19:                              # %for.end
                                        #   in Loop: Header=BB22_12 Depth=1
	jmp	.LBB22_20
.LBB22_20:                              # %for.inc.38
                                        #   in Loop: Header=BB22_12 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB22_12
.LBB22_21:                              # %for.end.40
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	jmp	.LBB22_59
.LBB22_22:                              # %find_right
	movl	$0, -20(%rbp)
.LBB22_23:                              # %for.cond.41
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_25 Depth 2
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jae	.LBB22_32
# BB#24:                                # %for.body.45
                                        #   in Loop: Header=BB22_23 Depth=1
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	24(%rcx), %edx
	movq	-16(%rbp), %rcx
	addl	32(%rcx), %edx
	subl	$1, %edx
	subl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movl	28(%rcx), %ecx
	movq	-16(%rbp), %rsi
	movl	36(%rsi), %r8d
	movq	%rax, %rsi
	callq	gimp_pixel_rgn_get_col
	movl	$0, -24(%rbp)
.LBB22_25:                              # %for.cond.52
                                        #   Parent Loop BB22_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jae	.LBB22_30
# BB#26:                                # %for.body.56
                                        #   in Loop: Header=BB22_25 Depth=2
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	callq	pix_is_opaque
	cmpl	$0, %eax
	je	.LBB22_28
# BB#27:                                # %if.then.61
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	movq	-16(%rbp), %rax
	addl	32(%rax), %ecx
	subl	-20(%rbp), %ecx
	movq	-8(%rbp), %rax
	subl	(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 8(%rax)
	jmp	.LBB22_34
.LBB22_28:                              # %if.end.69
                                        #   in Loop: Header=BB22_25 Depth=2
	jmp	.LBB22_29
.LBB22_29:                              # %for.inc.70
                                        #   in Loop: Header=BB22_25 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB22_25
.LBB22_30:                              # %for.end.72
                                        #   in Loop: Header=BB22_23 Depth=1
	jmp	.LBB22_31
.LBB22_31:                              # %for.inc.73
                                        #   in Loop: Header=BB22_23 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB22_23
.LBB22_32:                              # %for.end.75
	jmp	.LBB22_33
.LBB22_33:                              # %do.body.76
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$8, %esi
	movabsq	$.L.str.148, %rdx
	movabsq	$.L.str.143, %rcx
	movl	$2231, %r8d             # imm = 0x8B7
	movabsq	$.L__func__.get_cropped_region, %r9
	movb	$0, %al
	callq	g_log
	jmp	.LBB22_59
.LBB22_34:                              # %find_top
	movl	$0, -24(%rbp)
.LBB22_35:                              # %for.cond.78
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_37 Depth 2
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jae	.LBB22_44
# BB#36:                                # %for.body.82
                                        #   in Loop: Header=BB22_35 Depth=1
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	24(%rcx), %edx
	movq	-16(%rbp), %rcx
	movl	28(%rcx), %esi
	addl	-24(%rbp), %esi
	movq	-16(%rbp), %rcx
	movl	32(%rcx), %r8d
	movl	%esi, -80(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movl	-80(%rbp), %ecx         # 4-byte Reload
	callq	gimp_pixel_rgn_get_row
	movl	$0, -20(%rbp)
.LBB22_37:                              # %for.cond.87
                                        #   Parent Loop BB22_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jae	.LBB22_42
# BB#38:                                # %for.body.91
                                        #   in Loop: Header=BB22_37 Depth=2
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	callq	pix_is_opaque
	cmpl	$0, %eax
	je	.LBB22_40
# BB#39:                                # %if.then.96
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	addl	-24(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 4(%rax)
	jmp	.LBB22_46
.LBB22_40:                              # %if.end.100
                                        #   in Loop: Header=BB22_37 Depth=2
	jmp	.LBB22_41
.LBB22_41:                              # %for.inc.101
                                        #   in Loop: Header=BB22_37 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB22_37
.LBB22_42:                              # %for.end.103
                                        #   in Loop: Header=BB22_35 Depth=1
	jmp	.LBB22_43
.LBB22_43:                              # %for.inc.104
                                        #   in Loop: Header=BB22_35 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB22_35
.LBB22_44:                              # %for.end.106
	jmp	.LBB22_45
.LBB22_45:                              # %do.body.107
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$8, %esi
	movabsq	$.L.str.148, %rdx
	movabsq	$.L.str.143, %rcx
	movl	$2251, %r8d             # imm = 0x8CB
	movabsq	$.L__func__.get_cropped_region, %r9
	movb	$0, %al
	callq	g_log
	jmp	.LBB22_59
.LBB22_46:                              # %find_bottom
	movl	$0, -24(%rbp)
.LBB22_47:                              # %for.cond.109
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_49 Depth 2
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jae	.LBB22_56
# BB#48:                                # %for.body.113
                                        #   in Loop: Header=BB22_47 Depth=1
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	24(%rcx), %edx
	movq	-16(%rbp), %rcx
	movl	28(%rcx), %esi
	movq	-16(%rbp), %rcx
	addl	36(%rcx), %esi
	subl	$1, %esi
	subl	-24(%rbp), %esi
	movq	-16(%rbp), %rcx
	movl	32(%rcx), %r8d
	movl	%esi, -84(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movl	-84(%rbp), %ecx         # 4-byte Reload
	callq	gimp_pixel_rgn_get_row
	movl	$0, -20(%rbp)
.LBB22_49:                              # %for.cond.121
                                        #   Parent Loop BB22_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jae	.LBB22_54
# BB#50:                                # %for.body.125
                                        #   in Loop: Header=BB22_49 Depth=2
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movl	(%rdx,%rcx,4), %edi
	callq	pix_is_opaque
	cmpl	$0, %eax
	je	.LBB22_52
# BB#51:                                # %if.then.130
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	movq	-16(%rbp), %rax
	addl	36(%rax), %ecx
	subl	-24(%rbp), %ecx
	movq	-8(%rbp), %rax
	subl	4(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 12(%rax)
	jmp	.LBB22_58
.LBB22_52:                              # %if.end.137
                                        #   in Loop: Header=BB22_49 Depth=2
	jmp	.LBB22_53
.LBB22_53:                              # %for.inc.138
                                        #   in Loop: Header=BB22_49 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB22_49
.LBB22_54:                              # %for.end.140
                                        #   in Loop: Header=BB22_47 Depth=1
	jmp	.LBB22_55
.LBB22_55:                              # %for.inc.141
                                        #   in Loop: Header=BB22_47 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB22_47
.LBB22_56:                              # %for.end.143
	jmp	.LBB22_57
.LBB22_57:                              # %do.body.144
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$8, %esi
	movabsq	$.L.str.148, %rdx
	movabsq	$.L.str.143, %rcx
	movl	$2271, %r8d             # imm = 0x8DF
	movabsq	$.L__func__.get_cropped_region, %r9
	movb	$0, %al
	callq	g_log
	jmp	.LBB22_59
.LBB22_58:                              # %end_trim
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB22_59:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	get_cropped_region, .Lfunc_end22-get_cropped_region
	.cfi_endproc

	.align	16, 0x90
	.type	set_size_and_delay,@function
set_size_and_delay:                     # @set_size_and_delay
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB23_3
# BB#2:                                 # %if.then
	jmp	.LBB23_4
.LBB23_3:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.set_size_and_delay, %rsi
	movabsq	$.L.str.149, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_60
.LBB23_4:                               # %if.end
	jmp	.LBB23_5
.LBB23_5:                               # %do.end
	jmp	.LBB23_6
.LBB23_6:                               # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB23_8
# BB#7:                                 # %if.then.3
	jmp	.LBB23_9
.LBB23_8:                               # %if.else.4
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.set_size_and_delay, %rsi
	movabsq	$.L.str.150, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_60
.LBB23_9:                               # %if.end.5
	jmp	.LBB23_10
.LBB23_10:                              # %do.end.6
	jmp	.LBB23_11
.LBB23_11:                              # %do.body.7
	cmpq	$0, -24(%rbp)
	je	.LBB23_13
# BB#12:                                # %if.then.9
	jmp	.LBB23_14
.LBB23_13:                              # %if.else.10
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.set_size_and_delay, %rsi
	movabsq	$.L.str.151, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_60
.LBB23_14:                              # %if.end.11
	jmp	.LBB23_15
.LBB23_15:                              # %do.end.12
	jmp	.LBB23_16
.LBB23_16:                              # %do.body.13
	cmpq	$0, -32(%rbp)
	je	.LBB23_18
# BB#17:                                # %if.then.15
	jmp	.LBB23_19
.LBB23_18:                              # %if.else.16
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.set_size_and_delay, %rsi
	movabsq	$.L.str.152, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_60
.LBB23_19:                              # %if.end.17
	jmp	.LBB23_20
.LBB23_20:                              # %do.end.18
	xorl	%edx, %edx
	leaq	-72(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	g_regex_match
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB23_21:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rdi
	callq	g_match_info_matches
	cmpl	$0, %eax
	je	.LBB23_42
# BB#22:                                # %while.body
                                        #   in Loop: Header=BB23_21 Depth=1
	movl	$1, %esi
	movq	-72(%rbp), %rdi
	callq	g_match_info_fetch
	movl	$2, %esi
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rdi
	callq	g_match_info_fetch
	movabsq	$.L.str.153, %rsi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	g_ascii_strcasecmp
	cmpl	$0, %eax
	jne	.LBB23_32
# BB#23:                                # %if.then.24
                                        #   in Loop: Header=BB23_21 Depth=1
	cmpl	$0, -44(%rbp)
	jne	.LBB23_31
# BB#24:                                # %if.then.26
                                        #   in Loop: Header=BB23_21 Depth=1
	movq	-56(%rbp), %rdi
	callq	strlen
	cmpq	$8, %rax
	jbe	.LBB23_26
# BB#25:                                # %if.then.29
                                        #   in Loop: Header=BB23_21 Depth=1
	movl	$64, -44(%rbp)
	jmp	.LBB23_30
.LBB23_26:                              # %if.else.30
                                        #   in Loop: Header=BB23_21 Depth=1
	movq	-56(%rbp), %rdi
	callq	atoi
	movl	$64, %ecx
	cmpl	%eax, %ecx
	jge	.LBB23_28
# BB#27:                                # %cond.true
                                        #   in Loop: Header=BB23_21 Depth=1
	movl	$64, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB23_29
.LBB23_28:                              # %cond.false
                                        #   in Loop: Header=BB23_21 Depth=1
	movq	-56(%rbp), %rdi
	callq	atoi
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB23_29:                              # %cond.end
                                        #   in Loop: Header=BB23_21 Depth=1
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	%eax, -44(%rbp)
.LBB23_30:                              # %if.end.34
                                        #   in Loop: Header=BB23_21 Depth=1
	jmp	.LBB23_31
.LBB23_31:                              # %if.end.35
                                        #   in Loop: Header=BB23_21 Depth=1
	jmp	.LBB23_41
.LBB23_32:                              # %if.else.36
                                        #   in Loop: Header=BB23_21 Depth=1
	cmpl	$0, -48(%rbp)
	jne	.LBB23_40
# BB#33:                                # %if.then.38
                                        #   in Loop: Header=BB23_21 Depth=1
	movq	-56(%rbp), %rdi
	callq	strlen
	cmpq	$8, %rax
	jbe	.LBB23_35
# BB#34:                                # %if.then.41
                                        #   in Loop: Header=BB23_21 Depth=1
	movl	$100000000, -48(%rbp)   # imm = 0x5F5E100
	jmp	.LBB23_39
.LBB23_35:                              # %if.else.42
                                        #   in Loop: Header=BB23_21 Depth=1
	movq	-56(%rbp), %rdi
	callq	atoi
	movl	$100000000, %ecx        # imm = 0x5F5E100
	cmpl	%eax, %ecx
	jge	.LBB23_37
# BB#36:                                # %cond.true.45
                                        #   in Loop: Header=BB23_21 Depth=1
	movl	$100000000, %eax        # imm = 0x5F5E100
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB23_38
.LBB23_37:                              # %cond.false.46
                                        #   in Loop: Header=BB23_21 Depth=1
	movq	-56(%rbp), %rdi
	callq	atoi
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB23_38:                              # %cond.end.48
                                        #   in Loop: Header=BB23_21 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)
.LBB23_39:                              # %if.end.50
                                        #   in Loop: Header=BB23_21 Depth=1
	jmp	.LBB23_40
.LBB23_40:                              # %if.end.51
                                        #   in Loop: Header=BB23_21 Depth=1
	jmp	.LBB23_41
.LBB23_41:                              # %if.end.52
                                        #   in Loop: Header=BB23_21 Depth=1
	movq	-56(%rbp), %rdi
	callq	g_free
	movq	-64(%rbp), %rdi
	callq	g_free
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-72(%rbp), %rdi
	callq	g_match_info_next
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB23_21
.LBB23_42:                              # %while.end
	movq	-72(%rbp), %rdi
	callq	g_match_info_free
	cmpl	$0, -44(%rbp)
	je	.LBB23_44
# BB#43:                                # %lor.lhs.false
	cmpl	$1, xmcvals+8
	jne	.LBB23_45
.LBB23_44:                              # %if.then.56
	movl	xmcvals+4, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB23_56
.LBB23_45:                              # %if.else.57
	movq	-40(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB23_55
# BB#46:                                # %land.lhs.true
	cmpl	$12, -44(%rbp)
	je	.LBB23_55
# BB#47:                                # %land.lhs.true.60
	cmpl	$16, -44(%rbp)
	je	.LBB23_55
# BB#48:                                # %land.lhs.true.62
	cmpl	$24, -44(%rbp)
	je	.LBB23_55
# BB#49:                                # %land.lhs.true.64
	cmpl	$32, -44(%rbp)
	je	.LBB23_55
# BB#50:                                # %land.lhs.true.66
	cmpl	$36, -44(%rbp)
	je	.LBB23_55
# BB#51:                                # %land.lhs.true.68
	cmpl	$40, -44(%rbp)
	je	.LBB23_55
# BB#52:                                # %land.lhs.true.70
	cmpl	$48, -44(%rbp)
	je	.LBB23_55
# BB#53:                                # %land.lhs.true.72
	cmpl	$64, -44(%rbp)
	je	.LBB23_55
# BB#54:                                # %if.then.74
	movq	-40(%rbp), %rax
	movl	$1, (%rax)
.LBB23_55:                              # %if.end.75
	jmp	.LBB23_56
.LBB23_56:                              # %if.end.76
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	cmpl	$0, -48(%rbp)
	je	.LBB23_58
# BB#57:                                # %lor.lhs.false.78
	cmpl	$1, xmcvals+16
	jne	.LBB23_59
.LBB23_58:                              # %if.then.80
	movl	xmcvals+12, %eax
	movl	%eax, -48(%rbp)
.LBB23_59:                              # %if.end.81
	movl	-48(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB23_60:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	set_size_and_delay, .Lfunc_end23-set_size_and_delay
	.cfi_endproc

	.align	16, 0x90
	.type	premultiply_alpha,@function
premultiply_alpha:                      # @premultiply_alpha
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	andl	$255, %edi
	movl	%edi, -12(%rbp)
	movl	-4(%rbp), %edi
	shrl	$8, %edi
	andl	$255, %edi
	movl	%edi, -16(%rbp)
	movl	-4(%rbp), %edi
	shrl	$16, %edi
	andl	$255, %edi
	movl	%edi, -20(%rbp)
	movl	-4(%rbp), %edi
	shrl	$24, %edi
	andl	$255, %edi
	movl	%edi, -8(%rbp)
	movl	-12(%rbp), %edi
	imull	-8(%rbp), %edi
	addl	$128, %edi
	movl	-12(%rbp), %eax
	imull	-8(%rbp), %eax
	addl	$128, %eax
	shrl	$8, %eax
	addl	%eax, %edi
	shrl	$8, %edi
	movl	%edi, -12(%rbp)
	movl	-16(%rbp), %eax
	imull	-8(%rbp), %eax
	addl	$128, %eax
	movl	-16(%rbp), %edi
	imull	-8(%rbp), %edi
	addl	$128, %edi
	shrl	$8, %edi
	addl	%edi, %eax
	shrl	$8, %eax
	movl	%eax, -16(%rbp)
	movl	-20(%rbp), %eax
	imull	-8(%rbp), %eax
	addl	$128, %eax
	movl	-20(%rbp), %edi
	imull	-8(%rbp), %edi
	addl	$128, %edi
	shrl	$8, %edi
	addl	%edi, %eax
	shrl	$8, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	-16(%rbp), %edi
	shll	$8, %edi
	addl	%edi, %eax
	movl	-12(%rbp), %edi
	shll	$16, %edi
	addl	%edi, %eax
	movl	-8(%rbp), %edi
	shll	$24, %edi
	addl	%edi, %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end24:
	.size	premultiply_alpha, .Lfunc_end24-premultiply_alpha
	.cfi_endproc

	.align	16, 0x90
	.type	set_cursor_comments,@function
set_cursor_comments:                    # @set_cursor_comments
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
	subq	$112, %rsp
	xorl	%eax, %eax
	movl	$8, %edx
	movl	$24, %ecx
	movl	%ecx, %esi
	leaq	-64(%rbp), %rdi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movl	%eax, %esi
	movq	-80(%rbp), %r8          # 8-byte Reload
	movl	%edx, -84(%rbp)         # 4-byte Spill
	movq	%r8, %rdx
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	memset
	movl	-88(%rbp), %edi         # 4-byte Reload
	movl	-88(%rbp), %esi         # 4-byte Reload
	movl	-84(%rbp), %edx         # 4-byte Reload
	callq	g_array_new
	movq	%rax, -32(%rbp)
	movl	$0, -12(%rbp)
.LBB25_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -12(%rbp)
	jge	.LBB25_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB25_1 Depth=1
	movslq	-12(%rbp), %rax
	cmpq	$0, xmcparas+8(,%rax,8)
	je	.LBB25_9
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB25_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	xmcparas+8(,%rax,8), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -16(%rbp)
	cmpl	$0, -16(%rbp)
	jbe	.LBB25_8
# BB#4:                                 # %if.then.6
                                        #   in Loop: Header=BB25_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	-16(%rbp), %esi
	movl	%eax, %edi
	callq	XcursorCommentCreate
	movslq	-12(%rbp), %rcx
	movq	%rax, -64(%rbp,%rcx,8)
	movslq	-12(%rbp), %rax
	cmpq	$0, -64(%rbp,%rax,8)
	jne	.LBB25_6
# BB#5:                                 # %if.then.13
	movabsq	$.L.str.154, %rdi
	movl	-12(%rbp), %esi
	movb	$0, %al
	callq	g_warning
	movq	$0, -8(%rbp)
	jmp	.LBB25_18
.LBB25_6:                               # %if.else
                                        #   in Loop: Header=BB25_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-64(%rbp,%rax,8), %rax
	movq	8(%rax), %rdi
	movslq	-12(%rbp), %rax
	movq	xmcparas+8(,%rax,8), %rsi
	callq	g_stpcpy
	movl	$1, %edx
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movslq	-12(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_array_append_vals
	movq	%rax, -104(%rbp)        # 8-byte Spill
# BB#7:                                 # %if.end
                                        #   in Loop: Header=BB25_1 Depth=1
	jmp	.LBB25_8
.LBB25_8:                               # %if.end.22
                                        #   in Loop: Header=BB25_1 Depth=1
	jmp	.LBB25_9
.LBB25_9:                               # %if.end.23
                                        #   in Loop: Header=BB25_1 Depth=1
	jmp	.LBB25_10
.LBB25_10:                              # %for.inc
                                        #   in Loop: Header=BB25_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB25_1
.LBB25_11:                              # %for.end
	movq	-32(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB25_13
# BB#12:                                # %if.then.26
	movq	$0, -8(%rbp)
	jmp	.LBB25_18
.LBB25_13:                              # %if.end.27
	movl	-20(%rbp), %edi
	callq	XcursorCommentsCreate
	movq	%rax, -72(%rbp)
	movl	-20(%rbp), %edi
	movq	-72(%rbp), %rax
	movl	%edi, (%rax)
	movl	$0, -12(%rbp)
.LBB25_14:                              # %for.cond.29
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jae	.LBB25_17
# BB#15:                                # %for.body.32
                                        #   in Loop: Header=BB25_14 Depth=1
	movslq	-12(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movslq	-12(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#16:                                # %for.inc.37
                                        #   in Loop: Header=BB25_14 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB25_14
.LBB25_17:                              # %for.end.39
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB25_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	set_cursor_comments, .Lfunc_end25-set_cursor_comments
	.cfi_endproc

	.align	16, 0x90
	.type	pix_is_opaque,@function
pix_is_opaque:                          # @pix_is_opaque
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	shrl	$24, %edi
	cmpl	$0, %edi
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end26:
	.size	pix_is_opaque, .Lfunc_end26-pix_is_opaque
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB27_2
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
.LBB27_2:                               # %entry
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
.Lfunc_end27:
	.size	g_warning, .Lfunc_end27-g_warning
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

	.type	query.thumb_args,@object # @query.thumb_args
	.section	.rodata,"a",@progbits
	.align	16
query.thumb_args:
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.7
	.quad	.L.str.8
	.size	query.thumb_args, 48

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"thumb-size"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Preferred thumbnail size"
	.size	.L.str.8, 25

	.type	query.thumb_return_vals,@object # @query.thumb_return_vals
	.section	.rodata,"a",@progbits
	.align	16
query.thumb_return_vals:
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.5
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
	.size	query.thumb_return_vals, 120

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"Thumbnail image"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"image-width"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"The width of image"
	.size	.L.str.11, 19

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"image-height"
	.size	.L.str.12, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"The height of image"
	.size	.L.str.13, 20

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"image-type"
	.size	.L.str.14, 11

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"The color type of image"
	.size	.L.str.15, 24

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"image-num-layers"
	.size	.L.str.16, 17

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"The number of layeres"
	.size	.L.str.17, 22

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
	.quad	.L.str.18
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.19
	.quad	.L.str.20
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.21
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.4
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
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.29
	.quad	.L.str.30
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.31
	.quad	.L.str.32
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.33
	.quad	.L.str.34
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.35
	.quad	.L.str.36
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.37
	.quad	.L.str.38
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.39
	.quad	.L.str.40
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.41
	.quad	.L.str.42
	.size	query.save_args, 360

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"Input image"
	.size	.L.str.18, 12

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"drawable"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Drawable to save"
	.size	.L.str.20, 17

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"The name of the file to save the image in"
	.size	.L.str.21, 42

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"The name entered"
	.size	.L.str.22, 17

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"x_hot"
	.size	.L.str.23, 6

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"X-coordinate of hot spot"
	.size	.L.str.24, 25

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"y_hot"
	.size	.L.str.25, 6

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Y-coordinate of hot spot\nUse (-1, -1) to keep original hot spot."
	.size	.L.str.26, 65

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"crop"
	.size	.L.str.27, 5

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Auto-crop or not"
	.size	.L.str.28, 17

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"size"
	.size	.L.str.29, 5

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Default nominal size"
	.size	.L.str.30, 21

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"size_replace"
	.size	.L.str.31, 13

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Replace existent size or not."
	.size	.L.str.32, 30

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"delay"
	.size	.L.str.33, 6

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Default delay"
	.size	.L.str.34, 14

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"delay_replace"
	.size	.L.str.35, 14

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Replace existent delay or not."
	.size	.L.str.36, 31

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"copyright"
	.size	.L.str.37, 10

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Copyright information."
	.size	.L.str.38, 23

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"license"
	.size	.L.str.39, 8

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"License information."
	.size	.L.str.40, 21

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"other"
	.size	.L.str.41, 6

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Other comment.(taken from \"gimp-comment\" parasite)"
	.size	.L.str.42, 51

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"file-xmc-load"
	.size	.L.str.43, 14

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Loads files of X11 Mouse Cursor file format"
	.size	.L.str.44, 44

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"This plug-in loads X11 Mouse Cursor (XMC) files."
	.size	.L.str.45, 49

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Takeshi Matsuyama <tksmashiw@gmail.com>"
	.size	.L.str.46, 40

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Takeshi Matsuyama"
	.size	.L.str.47, 18

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"26 May 2009"
	.size	.L.str.48, 12

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"X11 Mouse Cursor"
	.size	.L.str.49, 17

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"image/x-xcursor"
	.size	.L.str.50, 16

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"xmc"
	.size	.L.str.51, 4

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.zero	1
	.size	.L.str.52, 1

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"0,string,Xcur"
	.size	.L.str.53, 14

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"file-xmc-load-thumb"
	.size	.L.str.54, 20

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Loads only first frame of X11 Mouse Cursor's animation sequence which nominal size is the closest of thumb-size to be used as a thumbnail"
	.size	.L.str.55, 138

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"file-xmc-save"
	.size	.L.str.56, 14

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Saves files of X11 cursor file"
	.size	.L.str.57, 31

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"This plug-in saves X11 Mouse Cursor (XMC) files"
	.size	.L.str.58, 48

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"RGBA"
	.size	.L.str.59, 5

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,240,16
	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.60, 20

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"UTF-8"
	.size	.L.str.61, 6

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Cannot set the hot spot!\nYou must arrange layers so that all of them have an intersection."
	.size	.L.str.62, 91

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"file-xmc"
	.size	.L.str.63, 9

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"XMC"
	.size	.L.str.64, 4

	.type	xmcvals,@object         # @xmcvals
	.data
	.align	4
xmcvals:
	.long	0                       # 0x0
	.long	32                      # 0x20
	.long	0                       # 0x0
	.long	50                      # 0x32
	.long	0                       # 0x0
	.size	xmcvals, 20

	.type	xmcparas,@object        # @xmcparas
	.local	xmcparas
	.comm	xmcparas,32,8
	.type	.L.str.65,@object       # @.str.65
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.65:
	.asciz	"rb"
	.size	.L.str.65, 3

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.66, 36

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"'%s' is not a valid X cursor."
	.size	.L.str.67, 30

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Opening '%s'"
	.size	.L.str.68, 13

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Frame %d of '%s' is too wide for an X cursor."
	.size	.L.str.69, 46

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"Frame %d of '%s' is too high for an X cursor."
	.size	.L.str.70, 46

	.type	parasiteName,@object    # @parasiteName
	.data
	.align	16
parasiteName:
	.quad	.L.str.80
	.quad	.L.str.81
	.quad	.L.str.82
	.size	parasiteName, 24

	.type	.L__func__.find_hotspots_and_dimensions,@object # @__func__.find_hotspots_and_dimensions
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.find_hotspots_and_dimensions:
	.asciz	"find_hotspots_and_dimensions"
	.size	.L__func__.find_hotspots_and_dimensions, 29

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"xcIs"
	.size	.L.str.71, 5

	.type	.L__func__.set_hotspot_to_parasite,@object # @__func__.set_hotspot_to_parasite
.L__func__.set_hotspot_to_parasite:
	.asciz	"set_hotspot_to_parasite"
	.size	.L__func__.set_hotspot_to_parasite, 24

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"image_ID != -1"
	.size	.L.str.72, 15

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"%d %d"
	.size	.L.str.73, 6

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"hot-spot"
	.size	.L.str.74, 9

	.type	make_framename.Counter,@object # @make_framename.Counter
	.local	make_framename.Counter
	.comm	make_framename.Counter,72,16
	.type	.L__func__.make_framename,@object # @__func__.make_framename
.L__func__.make_framename:
	.asciz	"make_framename"
	.size	.L__func__.make_framename, 15

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"size > 0"
	.size	.L.str.75, 9

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Sorry, this plug-in cannot handle a cursor which contains over %i different nominal sizes."
	.size	.L.str.76, 91

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"(%dpx)_%0*d (%dms) (replace)"
	.size	.L.str.77, 29

	.type	.L__func__.set_comment_to_pname,@object # @__func__.set_comment_to_pname
.L__func__.set_comment_to_pname:
	.asciz	"set_comment_to_pname"
	.size	.L__func__.set_comment_to_pname, 21

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"content"
	.size	.L.str.78, 8

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"\n"
	.size	.L.str.79, 2

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"xmc-copyright"
	.size	.L.str.80, 14

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"xmc-license"
	.size	.L.str.81, 12

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"gimp-comment"
	.size	.L.str.82, 13

	.type	.L__func__.load_thumbnail,@object # @__func__.load_thumbnail
.L__func__.load_thumbnail:
	.asciz	"load_thumbnail"
	.size	.L__func__.load_thumbnail, 15

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"thumb_width"
	.size	.L.str.83, 12

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"thumb_height"
	.size	.L.str.84, 13

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"thumb_num_layers"
	.size	.L.str.85, 17

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"there is no image chunk in \"%s\"."
	.size	.L.str.86, 33

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"'%s' is too wide for an X cursor."
	.size	.L.str.87, 34

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"'%s' is too high for an X cursor."
	.size	.L.str.88, 34

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"A read error occurred."
	.size	.L.str.89, 23

	.type	.L__func__.get_intersection_of_frames,@object # @__func__.get_intersection_of_frames
.L__func__.get_intersection_of_frames:
	.asciz	"get_intersection_of_frames"
	.size	.L__func__.get_intersection_of_frames, 27

	.type	.L__func__.load_comments,@object # @__func__.load_comments
.L__func__.load_comments:
	.asciz	"load_comments"
	.size	.L__func__.load_comments, 14

	.type	.L__func__.get_comment_from_pname,@object # @__func__.get_comment_from_pname
.L__func__.get_comment_from_pname:
	.asciz	"get_comment_from_pname"
	.size	.L__func__.get_comment_from_pname, 23

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"The parasite \"%s\" is too long for an X cursor comment. It was cut off to fit."
	.size	.L.str.90, 78

	.type	.L__func__.load_default_hotspot,@object # @__func__.load_default_hotspot
.L__func__.load_default_hotspot:
	.asciz	"load_default_hotspot"
	.size	.L__func__.load_default_hotspot, 21

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"hotspotRange"
	.size	.L.str.91, 13

	.type	.L__func__.get_hotspot_from_parasite,@object # @__func__.get_hotspot_from_parasite
.L__func__.get_hotspot_from_parasite:
	.asciz	"get_hotspot_from_parasite"
	.size	.L__func__.get_hotspot_from_parasite, 26

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"%i %i"
	.size	.L.str.92, 6

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"XMC Options"
	.size	.L.str.93, 12

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"xalign"
	.size	.L.str.94, 7

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"value-changed"
	.size	.L.str.95, 14

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"Enter the X coordinate of the hot spot. The origin is top left corner."
	.size	.L.str.96, 71

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"Hot spot _X:"
	.size	.L.str.97, 13

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"Enter the Y coordinate of the hot spot. The origin is top left corner."
	.size	.L.str.98, 71

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"_Y:"
	.size	.L.str.99, 4

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"_Auto-Crop all frames."
	.size	.L.str.100, 23

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"toggled"
	.size	.L.str.101, 8

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"Remove the empty borders of all frames.\nThis reduces the file size and may fix the problem that some large cursors disorder the screen.\nUncheck if you plan to edit the exported cursor using other programs."
	.size	.L.str.102, 206

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"12px"
	.size	.L.str.103, 5

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"16px"
	.size	.L.str.104, 5

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"24px"
	.size	.L.str.105, 5

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"32px"
	.size	.L.str.106, 5

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"36px"
	.size	.L.str.107, 5

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"40px"
	.size	.L.str.108, 5

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"48px"
	.size	.L.str.109, 5

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"64px"
	.size	.L.str.110, 5

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"Choose the nominal size of frames.\nIf you don't have plans to make multi-sized cursor, or you have no idea, leave it \"32px\".\nNominal size has no relation with the actual size (width or height).\nIt is only used to determine which frame depends on which animation sequence, and which sequence is used based on the value of \"gtk-cursor-theme-size\"."
	.size	.L.str.111, 346

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"_Size:"
	.size	.L.str.112, 7

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"_Use this value only for a frame which size is not specified."
	.size	.L.str.113, 62

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"_Replace the size of all frames even if it is specified."
	.size	.L.str.114, 57

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"ms"
	.size	.L.str.115, 3

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"Enter time span in milliseconds in which each frame is rendered."
	.size	.L.str.116, 65

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"_Delay:"
	.size	.L.str.117, 8

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"_Use this value only for a frame which delay is not specified."
	.size	.L.str.118, 63

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"_Replace the delay of all frames even if it is specified."
	.size	.L.str.119, 58

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"The part of copyright information that exceeded 65535 characters was removed."
	.size	.L.str.120, 78

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"changed"
	.size	.L.str.121, 8

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"Enter copyright information."
	.size	.L.str.122, 29

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"_Copyright:"
	.size	.L.str.123, 12

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"The part of license information that exceeded 65535 characters was removed."
	.size	.L.str.124, 76

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"Enter license information."
	.size	.L.str.125, 27

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"_License:"
	.size	.L.str.126, 10

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"_Other:"
	.size	.L.str.127, 8

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"Enter other comment if you want."
	.size	.L.str.128, 33

	.type	.L__func__.comment_entry_callback,@object # @__func__.comment_entry_callback
.L__func__.comment_entry_callback:
	.asciz	"comment_entry_callback"
	.size	.L__func__.comment_entry_callback, 23

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"commentp"
	.size	.L.str.129, 9

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"strlen (text) <= XCURSOR_COMMENT_MAX_LEN"
	.size	.L.str.130, 41

	.type	.L__func__.text_view_callback,@object # @__func__.text_view_callback
.L__func__.text_view_callback:
	.asciz	"text_view_callback"
	.size	.L__func__.text_view_callback, 19

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"commentp != NULL"
	.size	.L.str.131, 17

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"Comment is limited to %d characters."
	.size	.L.str.132, 37

	.type	.L__func__.pix_in_region,@object # @__func__.pix_in_region
.L__func__.pix_in_region:
	.asciz	"pix_in_region"
	.size	.L__func__.pix_in_region, 14

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"xmcrp"
	.size	.L.str.133, 6

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"[(][ ]*(\\d+)[ ]*(px|ms)[ ]*[)]"
	.size	.L.str.134, 31

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"wb"
	.size	.L.str.135, 3

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.136, 36

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"Saving '%s'"
	.size	.L.str.137, 12

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"This plug-in can only handle RGBA image files with 8bit color depth."
	.size	.L.str.138, 69

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"Frame '%s' is too wide. Please reduce to no more than %dpx."
	.size	.L.str.139, 60

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"Frame '%s' is too high. Please reduce to no more than %dpx."
	.size	.L.str.140, 60

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"Width and/or height of frame '%s' is zero!"
	.size	.L.str.141, 43

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"Cannot save the cursor because the hot spot is not on frame '%s'.\nTry to change the hot spot position, layer geometry or save without auto-crop."
	.size	.L.str.142, 145

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"file-xmc.c"
	.size	.L.str.143, 11

	.type	.L__func__.save_image,@object # @__func__.save_image
.L__func__.save_image:
	.asciz	"save_image"
	.size	.L__func__.save_image, 11

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"save_rgn.width * save_rgn.height < SQR(MAX_SAVE_DIMENSION)"
	.size	.L.str.144, 59

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"Your cursor was successfully saved but it contains one or more frames whose width or height is more than %ipx.\nIt will clutter the screen in some environments."
	.size	.L.str.145, 160

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"Your cursor was successfully saved but it contains one or more frames whose nominal size is not supported by GNOME settings.\nYou can satisfy it by checking \"Replace the size of all frames...\" in the save dialog, or your cursor may not appear in GNOME settings."
	.size	.L.str.146, 261

	.type	.L__func__.get_cropped_region,@object # @__func__.get_cropped_region
.L__func__.get_cropped_region:
	.asciz	"get_cropped_region"
	.size	.L__func__.get_cropped_region, 19

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"pr"
	.size	.L.str.147, 3

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"file %s: line %d (%s): should not be reached"
	.size	.L.str.148, 45

	.type	.L__func__.set_size_and_delay,@object # @__func__.set_size_and_delay
.L__func__.set_size_and_delay:
	.asciz	"set_size_and_delay"
	.size	.L__func__.set_size_and_delay, 19

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"framename"
	.size	.L.str.149, 10

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"sizep"
	.size	.L.str.150, 6

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"delayp"
	.size	.L.str.151, 7

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"re"
	.size	.L.str.152, 3

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"px"
	.size	.L.str.153, 3

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"Cannot create xcCommentp[%i]\n"
	.size	.L.str.154, 30


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
