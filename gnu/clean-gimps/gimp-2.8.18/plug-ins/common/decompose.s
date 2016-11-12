	.text
	.file	"decompose.bc"
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
	pushq	%r12
	pushq	%rbx
	subq	$192, %rsp
.Ltmp3:
	.cfi_offset %rbx, -48
.Ltmp4:
	.cfi_offset %r12, -40
.Ltmp5:
	.cfi_offset %r14, -32
.Ltmp6:
	.cfi_offset %r15, -24
	movabsq	$.L.str.12, %rdi
	callq	g_string_new
	movl	$34, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_string_append_c_inline
	movq	-40(%rbp), %rdi
	movq	extract, %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	g_string_append
	movl	$34, %esi
	movq	-40(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	g_string_append_c_inline
	movl	$1, -44(%rbp)
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-44(%rbp), %rax
	cmpq	$27, %rax
	jae	.LBB0_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movabsq	$.L.str.13, %rsi
	movq	-40(%rbp), %rdi
	callq	g_string_append
	movl	$34, %esi
	movq	-40(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_string_append_c_inline
	movabsq	$extract, %rdi
	movq	-40(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	imulq	$56, %rdx, %rdx
	addq	%rdx, %rdi
	movq	(%rdi), %rsi
	movq	%rcx, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_string_append
	movl	$34, %esi
	movq	-40(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_string_append_c_inline
	movq	%rax, -104(%rbp)        # 8-byte Spill
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_1
.LBB0_4:                                # %for.end
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.16, %rdx
	movabsq	$.L.str.17, %rax
	movabsq	$.L.str.18, %r9
	movabsq	$.L.str.19, %rcx
	movabsq	$.L.str.20, %r8
	movl	$1, %r10d
	movl	$5, %r11d
	movl	$4, %ebx
	movabsq	$query.args, %r14
	movabsq	$query.return_vals, %r15
	movq	-40(%rbp), %r12
	movq	(%r12), %r12
	movq	%r12, query.args+88
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	%r8, -120(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-120(%rbp), %r12        # 8-byte Reload
	movq	%r12, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$5, 24(%rsp)
	movl	$4, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	%r15, 48(%rsp)
	movl	%ebx, -124(%rbp)        # 4-byte Spill
	movl	%r10d, -128(%rbp)       # 4-byte Spill
	movl	%r11d, -132(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.22, %rdx
	movabsq	$.L.str.17, %rcx
	movabsq	$.L.str.23, %r8
	movabsq	$.L.str.18, %r9
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.20, %r14
	movl	$1, %r10d
	movl	$5, %r11d
	movl	$4, %ebx
	movabsq	$query.args, %r15
	movabsq	$query.return_vals, %r12
	movq	%rax, (%rsp)
	movq	%r14, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$5, 24(%rsp)
	movl	$4, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	%r12, 48(%rsp)
	movl	%r11d, -136(%rbp)       # 4-byte Spill
	movl	%r10d, -140(%rbp)       # 4-byte Spill
	movl	%ebx, -144(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.24, %rsi
	callq	gimp_plugin_menu_register
	movl	$1, %esi
	movq	-40(%rbp), %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	g_string_free
	movq	%rax, -160(%rbp)        # 8-byte Spill
	addq	$192, %rsp
	popq	%rbx
	popq	%r12
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
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -44(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.84, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.84, %rdi
	movabsq	$.L.str.85, %rsi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.84, %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	textdomain
	movq	%rax, -136(%rbp)        # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %edx
	movl	%edx, run_mode
	movq	-24(%rbp), %rcx
	movl	48(%rcx), %edx
	movl	%edx, -96(%rbp)
	movq	-24(%rbp), %rcx
	movl	88(%rcx), %edx
	movl	%edx, -88(%rbp)
	movq	-32(%rbp), %rcx
	movl	$5, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	-44(%rbp), %edx
	movl	%edx, run.values+8
	movl	$0, -84(%rbp)
.LBB1_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -84(%rbp)
	jge	.LBB1_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB1_3 Depth=1
	movabsq	$run.values, %rax
	movl	-84(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	imulq	$40, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movl	$13, (%rsi)
	movl	-84(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	imulq	$40, %rdx, %rdx
	addq	%rdx, %rax
	movl	$-1, 8(%rax)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB1_3
.LBB1_6:                                # %for.end
	movl	run_mode(%rip), %eax
	testl	%eax, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	je	.LBB1_7
	jmp	.LBB1_42
.LBB1_42:                               # %for.end
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	je	.LBB1_10
	jmp	.LBB1_43
.LBB1_43:                               # %for.end
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	je	.LBB1_19
	jmp	.LBB1_20
.LBB1_7:                                # %sw.bb
	movabsq	$.L.str.14, %rdi
	movabsq	$decovals, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -152(%rbp)        # 4-byte Spill
	callq	decompose_dialog
	cmpl	$0, %eax
	jne	.LBB1_9
# BB#8:                                 # %if.then
	jmp	.LBB1_41
.LBB1_9:                                # %if.end
	jmp	.LBB1_21
.LBB1_10:                               # %sw.bb.16
	cmpl	$4, -12(%rbp)
	je	.LBB1_14
# BB#11:                                # %land.lhs.true
	cmpl	$5, -12(%rbp)
	je	.LBB1_14
# BB#12:                                # %land.lhs.true.19
	cmpl	$6, -12(%rbp)
	je	.LBB1_14
# BB#13:                                # %if.then.21
	movl	$1, -44(%rbp)
	jmp	.LBB1_18
.LBB1_14:                               # %if.else
	movabsq	$decovals, %rdi
	movl	$32, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	128(%rcx), %rsi
	callq	strncpy
	movb	$0, decovals+31
	cmpl	$4, -12(%rbp)
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jle	.LBB1_16
# BB#15:                                # %cond.true
	movq	-24(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	jmp	.LBB1_17
.LBB1_16:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB1_17
.LBB1_17:                               # %cond.end
	movl	-164(%rbp), %eax        # 4-byte Reload
	movl	%eax, decovals+32
	movq	-8(%rbp), %rdi
	movl	$.L.str.21, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, decovals+36
.LBB1_18:                               # %if.end.31
	jmp	.LBB1_21
.LBB1_19:                               # %sw.bb.32
	movabsq	$.L.str.14, %rdi
	movabsq	$decovals, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB1_21
.LBB1_20:                               # %sw.default
	jmp	.LBB1_21
.LBB1_21:                               # %sw.epilog
	movl	-88(%rbp), %edi
	callq	gimp_drawable_type_with_alpha
	cmpl	$1, %eax
	je	.LBB1_23
# BB#22:                                # %if.then.37
	movabsq	$.L.str.86, %rdi
	movb	$0, %al
	callq	g_message
	movl	$1, -44(%rbp)
.LBB1_23:                               # %if.end.38
	cmpl	$3, -44(%rbp)
	jne	.LBB1_40
# BB#24:                                # %if.then.41
	movabsq	$.L.str.87, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movabsq	$decovals, %rdx
	leaq	-92(%rbp), %r8
	leaq	-80(%rbp), %r9
	leaq	-64(%rbp), %rcx
	movl	-96(%rbp), %edi
	movl	-88(%rbp), %esi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	decompose
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	jg	.LBB1_26
# BB#25:                                # %if.then.48
	movl	$0, -44(%rbp)
	jmp	.LBB1_39
.LBB1_26:                               # %if.else.49
	movabsq	$.L.str.88, %rdi
	callq	g_string_new
	movabsq	$.L.str.89, %rsi
	movabsq	$decovals, %rcx
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	movl	-88(%rbp), %edx
	movb	$0, %al
	callq	g_string_printf
	movl	$0, -84(%rbp)
.LBB1_27:                               # %for.cond.52
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB1_30
# BB#28:                                # %for.body.55
                                        #   in Loop: Header=BB1_27 Depth=1
	movabsq	$.L.str.90, %rsi
	movq	-104(%rbp), %rdi
	movslq	-84(%rbp), %rax
	movl	-80(%rbp,%rax,4), %edx
	movb	$0, %al
	callq	g_string_append_printf
# BB#29:                                # %for.inc.58
                                        #   in Loop: Header=BB1_27 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB1_27
.LBB1_30:                               # %for.end.60
	movl	$0, -84(%rbp)
.LBB1_31:                               # %for.cond.61
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB1_36
# BB#32:                                # %for.body.64
                                        #   in Loop: Header=BB1_31 Depth=1
	movabsq	$run.values, %rax
	movslq	-84(%rbp), %rcx
	movl	-64(%rbp,%rcx,4), %edx
	movl	-84(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movl	%edx, 8(%rax)
	movslq	-84(%rbp), %rax
	movl	-64(%rbp,%rax,4), %edi
	callq	gimp_image_undo_enable
	movslq	-84(%rbp), %rcx
	movl	-64(%rbp,%rcx,4), %edi
	movl	%eax, -176(%rbp)        # 4-byte Spill
	callq	gimp_image_clean_all
	movabsq	$.L.str.91, %rdi
	xorl	%esi, %esi
	movq	-104(%rbp), %rcx
	movq	8(%rcx), %rcx
	addq	$1, %rcx
	movl	%ecx, %edx
	movq	-104(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	gimp_parasite_new
	movq	%rax, -112(%rbp)
	movslq	-84(%rbp), %rax
	movl	-64(%rbp,%rax,4), %edi
	movq	-112(%rbp), %rsi
	callq	gimp_image_attach_parasite
	movq	-112(%rbp), %rdi
	movl	%eax, -184(%rbp)        # 4-byte Spill
	callq	gimp_parasite_free
	cmpl	$1, run_mode
	je	.LBB1_34
# BB#33:                                # %if.then.86
                                        #   in Loop: Header=BB1_31 Depth=1
	movslq	-84(%rbp), %rax
	movl	-64(%rbp,%rax,4), %edi
	callq	gimp_display_new
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB1_34:                               # %if.end.90
                                        #   in Loop: Header=BB1_31 Depth=1
	jmp	.LBB1_35
.LBB1_35:                               # %for.inc.91
                                        #   in Loop: Header=BB1_31 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB1_31
.LBB1_36:                               # %for.end.93
	cmpl	$0, run_mode
	jne	.LBB1_38
# BB#37:                                # %if.then.96
	movabsq	$.L.str.14, %rdi
	movabsq	$decovals, %rsi
	movl	$40, %edx
	callq	gimp_procedural_db_set_data
	movl	%eax, -192(%rbp)        # 4-byte Spill
.LBB1_38:                               # %if.end.98
	jmp	.LBB1_39
.LBB1_39:                               # %if.end.99
	callq	gimp_progress_end
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB1_40:                               # %if.end.101
	movl	-44(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_41:                               # %return
	addq	$208, %rsp
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
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
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
	.type	g_string_append_c_inline,@function
g_string_append_c_inline:               # @g_string_append_c_inline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
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
	jae	.LBB3_2
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
	jmp	.LBB3_3
.LBB3_2:                                # %if.else
	movq	$-1, %rsi
	movq	-8(%rbp), %rdi
	movsbl	-9(%rbp), %edx
	callq	g_string_insert_c
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB3_3:                                # %if.end
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	g_string_append_c_inline, .Lfunc_end3-g_string_append_c_inline
	.cfi_endproc

	.align	16, 0x90
	.type	extract_rgb,@function
extract_rgb:                            # @extract_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, -60(%rbp)
	movl	-12(%rbp), %edx
	subl	$3, %edx
	movl	%edx, -64(%rbp)
.LBB4_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -60(%rbp)
	cmpl	$0, %eax
	jle	.LBB4_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %dl
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %dl
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %dl
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	%dl, (%rax)
	movl	-64(%rbp), %esi
	movq	-32(%rbp), %rax
	movslq	%esi, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB4_1
.LBB4_3:                                # %while.end
	popq	%rbp
	retq
.Lfunc_end4:
	.size	extract_rgb, .Lfunc_end4-extract_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	extract_red,@function
extract_red:                            # @extract_red
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, -44(%rbp)
	movl	-12(%rbp), %edx
	movl	%edx, -48(%rbp)
.LBB5_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, %eax
	jle	.LBB5_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-32(%rbp), %rax
	movb	(%rax), %cl
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movb	%cl, (%rax)
	movl	-48(%rbp), %esi
	movq	-32(%rbp), %rax
	movslq	%esi, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB5_1
.LBB5_3:                                # %while.end
	popq	%rbp
	retq
.Lfunc_end5:
	.size	extract_red, .Lfunc_end5-extract_red
	.cfi_endproc

	.align	16, 0x90
	.type	extract_green,@function
extract_green:                          # @extract_green
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, -44(%rbp)
	movl	-12(%rbp), %edx
	movl	%edx, -48(%rbp)
.LBB6_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, %eax
	jle	.LBB6_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-32(%rbp), %rax
	movb	(%rax), %cl
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movb	%cl, (%rax)
	movl	-48(%rbp), %esi
	movq	-32(%rbp), %rax
	movslq	%esi, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB6_1
.LBB6_3:                                # %while.end
	popq	%rbp
	retq
.Lfunc_end6:
	.size	extract_green, .Lfunc_end6-extract_green
	.cfi_endproc

	.align	16, 0x90
	.type	extract_blue,@function
extract_blue:                           # @extract_blue
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, -44(%rbp)
	movl	-12(%rbp), %edx
	movl	%edx, -48(%rbp)
.LBB7_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, %eax
	jle	.LBB7_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-32(%rbp), %rax
	movb	(%rax), %cl
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movb	%cl, (%rax)
	movl	-48(%rbp), %esi
	movq	-32(%rbp), %rax
	movslq	%esi, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB7_1
.LBB7_3:                                # %while.end
	popq	%rbp
	retq
.Lfunc_end7:
	.size	extract_blue, .Lfunc_end7-extract_blue
	.cfi_endproc

	.align	16, 0x90
	.type	extract_rgba,@function
extract_rgba:                           # @extract_rgba
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movq	-24(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, -68(%rbp)
	movl	-12(%rbp), %edx
	subl	$4, %edx
	movl	%edx, -72(%rbp)
.LBB8_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -68(%rbp)
	cmpl	$0, %eax
	jle	.LBB8_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %dl
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %dl
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %dl
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	%dl, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %dl
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	%dl, (%rax)
	movl	-72(%rbp), %esi
	movq	-32(%rbp), %rax
	movslq	%esi, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB8_1
.LBB8_3:                                # %while.end
	popq	%rbp
	retq
.Lfunc_end8:
	.size	extract_rgba, .Lfunc_end8-extract_rgba
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4643211180634609287     # double 255.999
	.text
	.align	16, 0x90
	.type	extract_hsv,@function
extract_hsv:                            # @extract_hsv
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, -60(%rbp)
	movl	-12(%rbp), %edx
	movl	%edx, -64(%rbp)
.LBB9_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -60(%rbp)
	cmpl	$0, %eax
	jle	.LBB9_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-32(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	callq	gimp_rgb_to_hsv4
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI9_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %r8b
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdx
	incq	%rdx
	movq	%rdx, -40(%rbp)
	movb	%r8b, (%rcx)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %r8b
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdx
	incq	%rdx
	movq	%rdx, -48(%rbp)
	movb	%r8b, (%rcx)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %r8b
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movb	%r8b, (%rcx)
	movl	-64(%rbp), %eax
	movq	-32(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB9_1
.LBB9_3:                                # %while.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	extract_hsv, .Lfunc_end9-extract_hsv
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4643211180634609287     # double 255.999
	.text
	.align	16, 0x90
	.type	extract_hue,@function
extract_hue:                            # @extract_hue
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, -44(%rbp)
	movl	-12(%rbp), %edx
	movl	%edx, -48(%rbp)
.LBB10_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, %eax
	jle	.LBB10_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-32(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	leaq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	%rax, %rcx
	callq	gimp_rgb_to_hsv4
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI10_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r8d
	movb	%r8b, %r9b
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	%r9b, (%rax)
	movl	-48(%rbp), %r8d
	movq	-32(%rbp), %rax
	movslq	%r8d, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB10_1
.LBB10_3:                               # %while.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	extract_hue, .Lfunc_end10-extract_hue
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4643211180634609287     # double 255.999
	.text
	.align	16, 0x90
	.type	extract_sat,@function
extract_sat:                            # @extract_sat
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, -44(%rbp)
	movl	-12(%rbp), %edx
	movl	%edx, -48(%rbp)
.LBB11_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, %eax
	jle	.LBB11_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-32(%rbp), %rdi
	leaq	-56(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rax, %rcx
	callq	gimp_rgb_to_hsv4
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI11_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r8d
	movb	%r8b, %r9b
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	%r9b, (%rax)
	movl	-48(%rbp), %r8d
	movq	-32(%rbp), %rax
	movslq	%r8d, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB11_1
.LBB11_3:                               # %while.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	extract_sat, .Lfunc_end11-extract_sat
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4643211180634609287     # double 255.999
	.text
	.align	16, 0x90
	.type	extract_val,@function
extract_val:                            # @extract_val
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, -44(%rbp)
	movl	-12(%rbp), %edx
	movl	%edx, -48(%rbp)
.LBB12_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, %eax
	jle	.LBB12_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-32(%rbp), %rdi
	leaq	-64(%rbp), %rax
	leaq	-56(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rax, %rdx
	callq	gimp_rgb_to_hsv4
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI12_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r8d
	movb	%r8b, %r9b
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	%r9b, (%rax)
	movl	-48(%rbp), %r8d
	movq	-32(%rbp), %rax
	movslq	%r8d, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB12_1
.LBB12_3:                               # %while.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	extract_val, .Lfunc_end12-extract_val
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4643211180634609287     # double 255.999
	.text
	.align	16, 0x90
	.type	extract_hsl,@function
extract_hsl:                            # @extract_hsl
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, -60(%rbp)
	movl	-12(%rbp), %edx
	movl	%edx, -64(%rbp)
.LBB13_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -60(%rbp)
	cmpl	$0, %eax
	jle	.LBB13_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %ecx
	movzbl	1(%rax), %edx
	movzbl	(%rax), %esi
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_rgb_set_uchar
	leaq	-128(%rbp), %rsi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	callq	gimp_rgb_to_hsl
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	.LCPI13_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %r8b
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	incq	%rsi
	movq	%rsi, -40(%rbp)
	movb	%r8b, (%rax)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %r8b
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	incq	%rsi
	movq	%rsi, -48(%rbp)
	movb	%r8b, (%rax)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %r8b
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -56(%rbp)
	movb	%r8b, (%rax)
	movl	-64(%rbp), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB13_1
.LBB13_3:                               # %while.end
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	extract_hsl, .Lfunc_end13-extract_hsl
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4643211180634609287     # double 255.999
	.text
	.align	16, 0x90
	.type	extract_huel,@function
extract_huel:                           # @extract_huel
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, -44(%rbp)
	movl	-12(%rbp), %edx
	movl	%edx, -48(%rbp)
.LBB14_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, %eax
	jle	.LBB14_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %ecx
	movzbl	1(%rax), %edx
	movzbl	(%rax), %esi
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_rgb_set_uchar
	leaq	-112(%rbp), %rsi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	callq	gimp_rgb_to_hsl
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	.LCPI14_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %r8b
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -40(%rbp)
	movb	%r8b, (%rax)
	movl	-48(%rbp), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB14_1
.LBB14_3:                               # %while.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	extract_huel, .Lfunc_end14-extract_huel
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4643211180634609287     # double 255.999
	.text
	.align	16, 0x90
	.type	extract_satl,@function
extract_satl:                           # @extract_satl
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, -44(%rbp)
	movl	-12(%rbp), %edx
	movl	%edx, -48(%rbp)
.LBB15_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, %eax
	jle	.LBB15_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %ecx
	movzbl	1(%rax), %edx
	movzbl	(%rax), %esi
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_rgb_set_uchar
	leaq	-112(%rbp), %rsi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	callq	gimp_rgb_to_hsl
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	.LCPI15_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %r8b
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -40(%rbp)
	movb	%r8b, (%rax)
	movl	-48(%rbp), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB15_1
.LBB15_3:                               # %while.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	extract_satl, .Lfunc_end15-extract_satl
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4643211180634609287     # double 255.999
	.text
	.align	16, 0x90
	.type	extract_lightness,@function
extract_lightness:                      # @extract_lightness
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, -44(%rbp)
	movl	-12(%rbp), %edx
	movl	%edx, -48(%rbp)
.LBB16_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, %eax
	jle	.LBB16_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %ecx
	movzbl	1(%rax), %edx
	movzbl	(%rax), %esi
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_rgb_set_uchar
	leaq	-112(%rbp), %rsi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	callq	gimp_rgb_to_hsl
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI16_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %r8b
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -40(%rbp)
	movb	%r8b, (%rax)
	movl	-48(%rbp), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB16_1
.LBB16_3:                               # %while.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	extract_lightness, .Lfunc_end16-extract_lightness
	.cfi_endproc

	.align	16, 0x90
	.type	extract_cmy,@function
extract_cmy:                            # @extract_cmy
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, -60(%rbp)
	movl	-12(%rbp), %edx
	subl	$3, %edx
	movl	%edx, -64(%rbp)
.LBB17_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -60(%rbp)
	cmpl	$0, %eax
	jle	.LBB17_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	$255, %eax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rcx), %esi
	movl	%eax, %edi
	subl	%esi, %edi
	movb	%dil, %r8b
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movb	%r8b, (%rcx)
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rcx), %esi
	movl	%eax, %edi
	subl	%esi, %edi
	movb	%dil, %r8b
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -48(%rbp)
	movb	%r8b, (%rcx)
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rcx), %esi
	subl	%esi, %eax
	movb	%al, %r8b
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movb	%r8b, (%rcx)
	movl	-64(%rbp), %eax
	movq	-32(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB17_1
.LBB17_3:                               # %while.end
	popq	%rbp
	retq
.Lfunc_end17:
	.size	extract_cmy, .Lfunc_end17-extract_cmy
	.cfi_endproc

	.align	16, 0x90
	.type	extract_cyan,@function
extract_cyan:                           # @extract_cyan
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, -44(%rbp)
	movl	-12(%rbp), %edx
	subl	$1, %edx
	movl	%edx, -48(%rbp)
.LBB18_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, %eax
	jle	.LBB18_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	$255, %eax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rcx), %esi
	subl	%esi, %eax
	movb	%al, %dil
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movb	%dil, (%rcx)
	movl	-48(%rbp), %eax
	movq	-32(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB18_1
.LBB18_3:                               # %while.end
	popq	%rbp
	retq
.Lfunc_end18:
	.size	extract_cyan, .Lfunc_end18-extract_cyan
	.cfi_endproc

	.align	16, 0x90
	.type	extract_magenta,@function
extract_magenta:                        # @extract_magenta
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, -44(%rbp)
	movl	-12(%rbp), %edx
	subl	$1, %edx
	movl	%edx, -48(%rbp)
.LBB19_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, %eax
	jle	.LBB19_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	$255, %eax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rcx), %esi
	subl	%esi, %eax
	movb	%al, %dil
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movb	%dil, (%rcx)
	movl	-48(%rbp), %eax
	movq	-32(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB19_1
.LBB19_3:                               # %while.end
	popq	%rbp
	retq
.Lfunc_end19:
	.size	extract_magenta, .Lfunc_end19-extract_magenta
	.cfi_endproc

	.align	16, 0x90
	.type	extract_yellow,@function
extract_yellow:                         # @extract_yellow
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp66:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, -44(%rbp)
	movl	-12(%rbp), %edx
	subl	$1, %edx
	movl	%edx, -48(%rbp)
.LBB20_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, %eax
	jle	.LBB20_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	$255, %eax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -32(%rbp)
	movzbl	(%rcx), %esi
	subl	%esi, %eax
	movb	%al, %dil
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movb	%dil, (%rcx)
	movl	-48(%rbp), %eax
	movq	-32(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB20_1
.LBB20_3:                               # %while.end
	popq	%rbp
	retq
.Lfunc_end20:
	.size	extract_yellow, .Lfunc_end20-extract_yellow
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	extract_cmyk,@function
extract_cmyk:                           # @extract_cmyk
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$184, %rsp
.Ltmp70:
	.cfi_offset %rbx, -24
	leaq	-120(%rbp), %rax
	xorps	%xmm0, %xmm0
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	-32(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, -72(%rbp)
	movl	-24(%rbp), %edx
	movl	%edx, -76(%rbp)
	movl	-20(%rbp), %edx
	subl	$3, %edx
	movl	%edx, -80(%rbp)
	movq	%rax, %rdi
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movsd	-168(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-168(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-168(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_cmyk_set
.LBB21_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$0, %eax
	jle	.LBB21_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB21_1 Depth=1
	leaq	-152(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	(%rax), %dl
	movb	%dl, -153(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	(%rax), %dl
	movb	%dl, -154(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	(%rax), %dl
	movb	%dl, -155(%rbp)
	movb	-153(%rbp), %dl
	movb	-154(%rbp), %sil
	movzbl	%dl, %r8d
	movb	%sil, -169(%rbp)        # 1-byte Spill
	movl	%r8d, %esi
	movb	-169(%rbp), %dl         # 1-byte Reload
	movzbl	%dl, %edx
	movzbl	-155(%rbp), %ecx
	callq	gimp_rgb_set_uchar
	leaq	-152(%rbp), %rdi
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	leaq	-120(%rbp), %rsi
	callq	gimp_rgb_to_cmyk
	leaq	-120(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -48(%rbp)
	movq	-56(%rbp), %rsi
	movq	%rsi, %r9
	addq	$1, %r9
	movq	%r9, -56(%rbp)
	movq	-64(%rbp), %r9
	movq	%r9, %r10
	addq	$1, %r10
	movq	%r10, -64(%rbp)
	movq	-72(%rbp), %r10
	movq	%r10, %r11
	addq	$1, %r11
	movq	%r11, -72(%rbp)
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-184(%rbp), %rdx        # 8-byte Reload
	movq	%r9, %rcx
	movq	%r10, %r8
	callq	gimp_cmyk_get_uchar
	movl	-80(%rbp), %ebx
	movq	-40(%rbp), %rax
	movslq	%ebx, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB21_1
.LBB21_3:                               # %while.end
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end21:
	.size	extract_cmyk, .Lfunc_end21-extract_cmyk
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	extract_cyank,@function
extract_cyank:                          # @extract_cyank
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
	subq	$144, %rsp
	leaq	-88(%rbp), %rax
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, -44(%rbp)
	movl	-12(%rbp), %edx
	subl	$3, %edx
	movl	%edx, -48(%rbp)
	movq	%rax, %rdi
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-136(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_cmyk_set
.LBB22_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, %eax
	jle	.LBB22_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB22_1 Depth=1
	leaq	-120(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %dl
	movb	%dl, -121(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %dl
	movb	%dl, -122(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %dl
	movb	%dl, -123(%rbp)
	movb	-121(%rbp), %dl
	movb	-122(%rbp), %sil
	movzbl	%dl, %r8d
	movb	%sil, -137(%rbp)        # 1-byte Spill
	movl	%r8d, %esi
	movb	-137(%rbp), %dl         # 1-byte Reload
	movzbl	%dl, %edx
	movzbl	-123(%rbp), %ecx
	callq	gimp_rgb_set_uchar
	leaq	-120(%rbp), %rdi
	movsd	.LCPI22_0, %xmm0        # xmm0 = mem[0],zero
	leaq	-88(%rbp), %rsi
	callq	gimp_rgb_to_cmyk
	leaq	-88(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-40(%rbp), %rsi
	movq	%rsi, %r9
	addq	$1, %r9
	movq	%r9, -40(%rbp)
	movq	%rax, %rdx
	movq	%rax, %rcx
	movq	%rax, %r8
	callq	gimp_cmyk_get_uchar
	movl	-48(%rbp), %r10d
	movq	-32(%rbp), %rax
	movslq	%r10d, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB22_1
.LBB22_3:                               # %while.end
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	extract_cyank, .Lfunc_end22-extract_cyank
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI23_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	extract_magentak,@function
extract_magentak:                       # @extract_magentak
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
	subq	$160, %rsp
	leaq	-88(%rbp), %rax
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, -44(%rbp)
	movl	-12(%rbp), %edx
	subl	$3, %edx
	movl	%edx, -48(%rbp)
	movq	%rax, %rdi
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-136(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_cmyk_set
.LBB23_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, %eax
	jle	.LBB23_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB23_1 Depth=1
	leaq	-120(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %dl
	movb	%dl, -121(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %dl
	movb	%dl, -122(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %dl
	movb	%dl, -123(%rbp)
	movb	-121(%rbp), %dl
	movb	-122(%rbp), %sil
	movzbl	%dl, %r8d
	movb	%sil, -137(%rbp)        # 1-byte Spill
	movl	%r8d, %esi
	movb	-137(%rbp), %dl         # 1-byte Reload
	movzbl	%dl, %edx
	movzbl	-123(%rbp), %ecx
	callq	gimp_rgb_set_uchar
	leaq	-120(%rbp), %rdi
	movsd	.LCPI23_0, %xmm0        # xmm0 = mem[0],zero
	leaq	-88(%rbp), %rsi
	callq	gimp_rgb_to_cmyk
	leaq	-88(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-40(%rbp), %rsi
	movq	%rsi, %r9
	addq	$1, %r9
	movq	%r9, -40(%rbp)
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	%rax, %r8
	callq	gimp_cmyk_get_uchar
	movl	-48(%rbp), %r10d
	movq	-32(%rbp), %rax
	movslq	%r10d, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB23_1
.LBB23_3:                               # %while.end
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	extract_magentak, .Lfunc_end23-extract_magentak
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI24_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	extract_yellowk,@function
extract_yellowk:                        # @extract_yellowk
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
	subq	$160, %rsp
	leaq	-88(%rbp), %rax
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, -44(%rbp)
	movl	-12(%rbp), %edx
	subl	$3, %edx
	movl	%edx, -48(%rbp)
	movq	%rax, %rdi
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-136(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_cmyk_set
.LBB24_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, %eax
	jle	.LBB24_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB24_1 Depth=1
	leaq	-120(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %dl
	movb	%dl, -121(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %dl
	movb	%dl, -122(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %dl
	movb	%dl, -123(%rbp)
	movb	-121(%rbp), %dl
	movb	-122(%rbp), %sil
	movzbl	%dl, %r8d
	movb	%sil, -137(%rbp)        # 1-byte Spill
	movl	%r8d, %esi
	movb	-137(%rbp), %dl         # 1-byte Reload
	movzbl	%dl, %edx
	movzbl	-123(%rbp), %ecx
	callq	gimp_rgb_set_uchar
	leaq	-120(%rbp), %rdi
	movsd	.LCPI24_0, %xmm0        # xmm0 = mem[0],zero
	leaq	-88(%rbp), %rsi
	callq	gimp_rgb_to_cmyk
	leaq	-88(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-40(%rbp), %rsi
	movq	%rsi, %r9
	addq	$1, %r9
	movq	%r9, -40(%rbp)
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	%rax, %rdx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	gimp_cmyk_get_uchar
	movl	-48(%rbp), %r10d
	movq	-32(%rbp), %rax
	movslq	%r10d, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB24_1
.LBB24_3:                               # %while.end
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	extract_yellowk, .Lfunc_end24-extract_yellowk
	.cfi_endproc

	.align	16, 0x90
	.type	extract_alpha,@function
extract_alpha:                          # @extract_alpha
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, -44(%rbp)
	movl	-12(%rbp), %edx
	movl	%edx, -48(%rbp)
.LBB25_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, %eax
	jle	.LBB25_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-32(%rbp), %rax
	movb	(%rax), %cl
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movb	%cl, (%rax)
	movl	-48(%rbp), %esi
	movq	-32(%rbp), %rax
	movslq	%esi, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB25_1
.LBB25_3:                               # %while.end
	popq	%rbp
	retq
.Lfunc_end25:
	.size	extract_alpha, .Lfunc_end25-extract_alpha
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI26_0:
	.quad	4594137509534530454     # double 0.13793103448275862
.LCPI26_1:
	.quad	4576258758203452558     # double 0.0088559999999999993
.LCPI26_2:
	.quad	4607182418800017408     # double 1
.LCPI26_3:
	.quad	4606632979645478207     # double 0.93899999999999995
.LCPI26_4:
	.quad	4593851763903000740     # double 0.13
.LCPI26_5:
	.quad	4581421828931458171     # double 0.02
.LCPI26_6:
	.quad	4589780509839857811     # double 0.070999999999999994
.LCPI26_7:
	.quad	4604543309418378297     # double 0.70699999999999996
.LCPI26_8:
	.quad	4597166413228745425     # double 0.222
.LCPI26_9:
	.quad	4595581146159911010     # double 0.17799999999999999
.LCPI26_10:
	.quad	4599832544208148759     # double 0.34200000000000003
.LCPI26_11:
	.quad	4601435825675492655     # double 0.43099999999999999
.LCPI26_12:
	.quad	4643176031446892544     # double 255
.LCPI26_13:
	.quad	4620445519702623519     # double 7.7800000000000002
.LCPI26_14:
	.quad	4651156726645941862     # double 903.29999999999995
.LCPI26_15:
	.quad	4625196817309499392     # double 16
.LCPI26_16:
	.quad	4637863191261478912     # double 116
.LCPI26_17:
	.quad	4606741066036535099     # double 0.95099999999999996
.LCPI26_18:
	.quad	4607583239166853382     # double 1.089
.LCPI26_19:
	.quad	4643211215818981376     # double 256
.LCPI26_20:
	.quad	4612946801143070274     # double 2.5598999999999998
.LCPI26_21:
	.quad	4638707616191610880     # double 128
.LCPI26_22:
	.quad	4648796734888083456     # double 635
.LCPI26_23:
	.quad	4643140847074803712     # double 254
	.text
	.align	16, 0x90
	.type	extract_lab,@function
extract_lab:                            # @extract_lab
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
	subq	$240, %rsp
	movsd	.LCPI26_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, -60(%rbp)
	movl	-12(%rbp), %edx
	movl	%edx, -64(%rbp)
	movsd	%xmm0, -176(%rbp)
.LBB26_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -60(%rbp)
	cmpl	$0, %eax
	jle	.LBB26_30
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	.LCPI26_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI26_2, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI26_3, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI26_4, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI26_5, %xmm4        # xmm4 = mem[0],zero
	movsd	.LCPI26_6, %xmm5        # xmm5 = mem[0],zero
	movsd	.LCPI26_7, %xmm6        # xmm6 = mem[0],zero
	movsd	.LCPI26_8, %xmm7        # xmm7 = mem[0],zero
	movsd	.LCPI26_9, %xmm8        # xmm8 = mem[0],zero
	movsd	.LCPI26_10, %xmm9       # xmm9 = mem[0],zero
	movsd	.LCPI26_11, %xmm10      # xmm10 = mem[0],zero
	movsd	.LCPI26_12, %xmm11      # xmm11 = mem[0],zero
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm12
	divsd	%xmm11, %xmm12
	movsd	%xmm12, -72(%rbp)
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm12
	divsd	%xmm11, %xmm12
	movsd	%xmm12, -80(%rbp)
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm12
	divsd	%xmm11, %xmm12
	movsd	%xmm12, -88(%rbp)
	mulsd	-72(%rbp), %xmm10
	mulsd	-80(%rbp), %xmm9
	addsd	%xmm9, %xmm10
	mulsd	-88(%rbp), %xmm8
	addsd	%xmm8, %xmm10
	movsd	%xmm10, -96(%rbp)
	mulsd	-72(%rbp), %xmm7
	mulsd	-80(%rbp), %xmm6
	addsd	%xmm6, %xmm7
	mulsd	-88(%rbp), %xmm5
	addsd	%xmm5, %xmm7
	movsd	%xmm7, -104(%rbp)
	mulsd	-72(%rbp), %xmm4
	mulsd	-80(%rbp), %xmm3
	addsd	%xmm3, %xmm4
	mulsd	-88(%rbp), %xmm2
	addsd	%xmm2, %xmm4
	movsd	%xmm4, -112(%rbp)
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -136(%rbp)
	ucomisd	%xmm0, %xmm2
	jbe	.LBB26_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	cbrt
	movsd	.LCPI26_15, %xmm1       # xmm1 = mem[0],zero
	movsd	.LCPI26_16, %xmm2       # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	movsd	%xmm2, -120(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	cbrt
	movsd	%xmm0, -160(%rbp)
	jmp	.LBB26_5
.LBB26_4:                               # %if.else
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	.LCPI26_13, %xmm0       # xmm0 = mem[0],zero
	movsd	.LCPI26_14, %xmm1       # xmm1 = mem[0],zero
	mulsd	-136(%rbp), %xmm1
	movsd	%xmm1, -120(%rbp)
	mulsd	-136(%rbp), %xmm0
	addsd	-176(%rbp), %xmm0
	movsd	%xmm0, -160(%rbp)
.LBB26_5:                               # %if.end
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	.LCPI26_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI26_17, %xmm1       # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -128(%rbp)
	ucomisd	%xmm0, %xmm2
	jbe	.LBB26_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	cbrt
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	jmp	.LBB26_8
.LBB26_7:                               # %cond.false
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	.LCPI26_13, %xmm0       # xmm0 = mem[0],zero
	mulsd	-128(%rbp), %xmm0
	addsd	-176(%rbp), %xmm0
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
.LBB26_8:                               # %cond.end
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI26_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI26_18, %xmm2       # xmm2 = mem[0],zero
	movsd	%xmm0, -152(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	%xmm2, %xmm0
	movsd	%xmm0, -144(%rbp)
	ucomisd	%xmm1, %xmm0
	jbe	.LBB26_10
# BB#9:                                 # %cond.true.43
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	cbrt
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	jmp	.LBB26_11
.LBB26_10:                              # %cond.false.45
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	.LCPI26_13, %xmm0       # xmm0 = mem[0],zero
	mulsd	-144(%rbp), %xmm0
	addsd	-176(%rbp), %xmm0
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
.LBB26_11:                              # %cond.end.48
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	-192(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI26_19, %xmm1       # xmm1 = mem[0],zero
	movsd	.LCPI26_20, %xmm2       # xmm2 = mem[0],zero
	movsd	%xmm0, -168(%rbp)
	mulsd	-120(%rbp), %xmm2
	ucomisd	%xmm1, %xmm2
	jbe	.LBB26_13
# BB#12:                                # %cond.true.53
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	.LCPI26_19, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	jmp	.LBB26_17
.LBB26_13:                              # %cond.false.54
                                        #   in Loop: Header=BB26_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI26_20, %xmm1       # xmm1 = mem[0],zero
	mulsd	-120(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB26_15
# BB#14:                                # %cond.true.58
                                        #   in Loop: Header=BB26_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	jmp	.LBB26_16
.LBB26_15:                              # %cond.false.59
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	.LCPI26_20, %xmm0       # xmm0 = mem[0],zero
	mulsd	-120(%rbp), %xmm0
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
.LBB26_16:                              # %cond.end.61
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	-208(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
.LBB26_17:                              # %cond.end.63
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	-200(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI26_19, %xmm1       # xmm1 = mem[0],zero
	movsd	.LCPI26_21, %xmm2       # xmm2 = mem[0],zero
	movsd	.LCPI26_22, %xmm3       # xmm3 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -40(%rbp)
	movb	%cl, (%rdx)
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-160(%rbp), %xmm0
	mulsd	%xmm3, %xmm0
	addsd	%xmm0, %xmm2
	ucomisd	%xmm1, %xmm2
	jbe	.LBB26_19
# BB#18:                                # %cond.true.71
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	.LCPI26_19, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
	jmp	.LBB26_23
.LBB26_19:                              # %cond.false.72
                                        #   in Loop: Header=BB26_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI26_21, %xmm1       # xmm1 = mem[0],zero
	movsd	.LCPI26_22, %xmm2       # xmm2 = mem[0],zero
	movsd	-152(%rbp), %xmm3       # xmm3 = mem[0],zero
	subsd	-160(%rbp), %xmm3
	mulsd	%xmm2, %xmm3
	addsd	%xmm3, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB26_21
# BB#20:                                # %cond.true.78
                                        #   in Loop: Header=BB26_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	jmp	.LBB26_22
.LBB26_21:                              # %cond.false.79
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	.LCPI26_21, %xmm0       # xmm0 = mem[0],zero
	movsd	.LCPI26_22, %xmm1       # xmm1 = mem[0],zero
	movsd	-152(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-160(%rbp), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm0
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
.LBB26_22:                              # %cond.end.83
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	-224(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)       # 8-byte Spill
.LBB26_23:                              # %cond.end.85
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	-216(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI26_19, %xmm1       # xmm1 = mem[0],zero
	movsd	.LCPI26_21, %xmm2       # xmm2 = mem[0],zero
	movsd	.LCPI26_23, %xmm3       # xmm3 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -48(%rbp)
	movb	%cl, (%rdx)
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
	subsd	-168(%rbp), %xmm0
	mulsd	%xmm3, %xmm0
	addsd	%xmm0, %xmm2
	ucomisd	%xmm1, %xmm2
	jbe	.LBB26_25
# BB#24:                                # %cond.true.94
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	.LCPI26_19, %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	jmp	.LBB26_29
.LBB26_25:                              # %cond.false.95
                                        #   in Loop: Header=BB26_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	.LCPI26_21, %xmm1       # xmm1 = mem[0],zero
	movsd	.LCPI26_23, %xmm2       # xmm2 = mem[0],zero
	movsd	-160(%rbp), %xmm3       # xmm3 = mem[0],zero
	subsd	-168(%rbp), %xmm3
	mulsd	%xmm2, %xmm3
	addsd	%xmm3, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB26_27
# BB#26:                                # %cond.true.101
                                        #   in Loop: Header=BB26_1 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	jmp	.LBB26_28
.LBB26_27:                              # %cond.false.102
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	.LCPI26_21, %xmm0       # xmm0 = mem[0],zero
	movsd	.LCPI26_23, %xmm1       # xmm1 = mem[0],zero
	movsd	-160(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-168(%rbp), %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm0
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
.LBB26_28:                              # %cond.end.106
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	-240(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
.LBB26_29:                              # %cond.end.108
                                        #   in Loop: Header=BB26_1 Depth=1
	movsd	-232(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -56(%rbp)
	movb	%cl, (%rdx)
	movl	-64(%rbp), %eax
	movq	-32(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -32(%rbp)
	jmp	.LBB26_1
.LBB26_30:                              # %while.end
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	extract_lab, .Lfunc_end26-extract_lab
	.cfi_endproc

	.align	16, 0x90
	.type	extract_ycbcr470,@function
extract_ycbcr470:                       # @extract_ycbcr470
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, -60(%rbp)
	movl	-12(%rbp), %edx
	subl	$3, %edx
	movl	%edx, -64(%rbp)
.LBB27_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -60(%rbp)
	cmpl	$0, %eax
	jle	.LBB27_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -68(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -76(%rbp)
	imull	$16823, -68(%rbp), %edx # imm = 0x41B7
	imull	$33016, -72(%rbp), %esi # imm = 0x80F8
	addl	%esi, %edx
	imull	$6445, -76(%rbp), %esi  # imm = 0x192D
	addl	%esi, %edx
	addl	$1081344, %edx          # imm = 0x108000
	sarl	$16, %edx
	movb	%dl, %dil
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	%dil, (%rax)
	imull	$4294957578, -68(%rbp), %edx # imm = 0xFFFFDA0A
	imull	$19067, -72(%rbp), %esi # imm = 0x4A7B
	subl	%esi, %edx
	imull	$28784, -76(%rbp), %esi # imm = 0x7070
	addl	%esi, %edx
	addl	$8421376, %edx          # imm = 0x808000
	sarl	$16, %edx
	movb	%dl, %dil
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	%dil, (%rax)
	imull	$28784, -68(%rbp), %edx # imm = 0x7070
	imull	$24087, -72(%rbp), %esi # imm = 0x5E17
	subl	%esi, %edx
	imull	$4698, -76(%rbp), %esi  # imm = 0x125A
	subl	%esi, %edx
	addl	$8421376, %edx          # imm = 0x808000
	sarl	$16, %edx
	movb	%dl, %dil
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	%dil, (%rax)
	movl	-64(%rbp), %edx
	movq	-32(%rbp), %rax
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB27_1
.LBB27_3:                               # %while.end
	popq	%rbp
	retq
.Lfunc_end27:
	.size	extract_ycbcr470, .Lfunc_end27-extract_ycbcr470
	.cfi_endproc

	.align	16, 0x90
	.type	extract_ycbcr709,@function
extract_ycbcr709:                       # @extract_ycbcr709
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, -60(%rbp)
	movl	-12(%rbp), %edx
	subl	$3, %edx
	movl	%edx, -64(%rbp)
.LBB28_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -60(%rbp)
	cmpl	$0, %eax
	jle	.LBB28_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB28_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -68(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -76(%rbp)
	imull	$11966, -68(%rbp), %edx # imm = 0x2EBE
	imull	$40254, -72(%rbp), %esi # imm = 0x9D3E
	addl	%esi, %edx
	imull	$4064, -76(%rbp), %esi  # imm = 0xFE0
	addl	%esi, %edx
	addl	$1081344, %edx          # imm = 0x108000
	sarl	$16, %edx
	movb	%dl, %dil
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	%dil, (%rax)
	imull	$4294960676, -68(%rbp), %edx # imm = 0xFFFFE624
	imull	$22222, -72(%rbp), %esi # imm = 0x56CE
	subl	%esi, %edx
	imull	$28784, -76(%rbp), %esi # imm = 0x7070
	addl	%esi, %edx
	addl	$8421376, %edx          # imm = 0x808000
	sarl	$16, %edx
	movb	%dl, %dil
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	%dil, (%rax)
	imull	$28784, -68(%rbp), %edx # imm = 0x7070
	imull	$26136, -72(%rbp), %esi # imm = 0x6618
	subl	%esi, %edx
	imull	$2648, -76(%rbp), %esi  # imm = 0xA58
	subl	%esi, %edx
	addl	$8421376, %edx          # imm = 0x808000
	sarl	$16, %edx
	movb	%dl, %dil
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	%dil, (%rax)
	movl	-64(%rbp), %edx
	movq	-32(%rbp), %rax
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB28_1
.LBB28_3:                               # %while.end
	popq	%rbp
	retq
.Lfunc_end28:
	.size	extract_ycbcr709, .Lfunc_end28-extract_ycbcr709
	.cfi_endproc

	.align	16, 0x90
	.type	extract_ycbcr470f,@function
extract_ycbcr470f:                      # @extract_ycbcr470f
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, -60(%rbp)
	movl	-12(%rbp), %edx
	subl	$3, %edx
	movl	%edx, -64(%rbp)
.LBB29_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -60(%rbp)
	cmpl	$0, %eax
	jle	.LBB29_7
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB29_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -68(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -76(%rbp)
	imull	$19589, -68(%rbp), %edx # imm = 0x4C85
	imull	$38443, -72(%rbp), %esi # imm = 0x962B
	addl	%esi, %edx
	imull	$7504, -76(%rbp), %esi  # imm = 0x1D50
	addl	%esi, %edx
	addl	$32768, %edx            # imm = 0x8000
	sarl	$16, %edx
	movb	%dl, %dil
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	%dil, (%rax)
	imull	$4294956234, -68(%rbp), %edx # imm = 0xFFFFD4CA
	imull	$21706, -72(%rbp), %esi # imm = 0x54CA
	subl	%esi, %edx
	movl	-76(%rbp), %esi
	shll	$15, %esi
	addl	%esi, %edx
	addl	$8421376, %edx          # imm = 0x808000
	sarl	$16, %edx
	movl	%edx, -80(%rbp)
	movl	-68(%rbp), %edx
	shll	$15, %edx
	imull	$27420, -72(%rbp), %esi # imm = 0x6B1C
	subl	%esi, %edx
	imull	$5348, -76(%rbp), %esi  # imm = 0x14E4
	subl	%esi, %edx
	addl	$8421376, %edx          # imm = 0x808000
	sarl	$16, %edx
	movl	%edx, -84(%rbp)
	cmpl	$255, -80(%rbp)
	jle	.LBB29_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB29_1 Depth=1
	movl	$255, -80(%rbp)
.LBB29_4:                               # %if.end
                                        #   in Loop: Header=BB29_1 Depth=1
	cmpl	$255, -84(%rbp)
	jle	.LBB29_6
# BB#5:                                 # %if.then.31
                                        #   in Loop: Header=BB29_1 Depth=1
	movl	$255, -84(%rbp)
.LBB29_6:                               # %if.end.32
                                        #   in Loop: Header=BB29_1 Depth=1
	movl	-80(%rbp), %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -48(%rbp)
	movb	%cl, (%rdx)
	movl	-84(%rbp), %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -56(%rbp)
	movb	%cl, (%rdx)
	movl	-64(%rbp), %eax
	movq	-32(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -32(%rbp)
	jmp	.LBB29_1
.LBB29_7:                               # %while.end
	popq	%rbp
	retq
.Lfunc_end29:
	.size	extract_ycbcr470f, .Lfunc_end29-extract_ycbcr470f
	.cfi_endproc

	.align	16, 0x90
	.type	extract_ycbcr709f,@function
extract_ycbcr709f:                      # @extract_ycbcr709f
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, -60(%rbp)
	movl	-12(%rbp), %edx
	subl	$3, %edx
	movl	%edx, -64(%rbp)
.LBB30_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -60(%rbp)
	cmpl	$0, %eax
	jle	.LBB30_7
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -68(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -76(%rbp)
	imull	$13933, -68(%rbp), %edx # imm = 0x366D
	imull	$46871, -72(%rbp), %esi # imm = 0xB717
	addl	%esi, %edx
	imull	$4732, -76(%rbp), %esi  # imm = 0x127C
	addl	%esi, %edx
	addl	$32768, %edx            # imm = 0x8000
	sarl	$16, %edx
	movb	%dl, %dil
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	%dil, (%rax)
	imull	$4294959759, -68(%rbp), %edx # imm = 0xFFFFE28F
	imull	$25297, -72(%rbp), %esi # imm = 0x62D1
	subl	%esi, %edx
	movl	-76(%rbp), %esi
	shll	$15, %esi
	addl	%esi, %edx
	addl	$8421376, %edx          # imm = 0x808000
	sarl	$16, %edx
	movl	%edx, -80(%rbp)
	movl	-68(%rbp), %edx
	shll	$15, %edx
	imull	$29753, -72(%rbp), %esi # imm = 0x7439
	subl	%esi, %edx
	imull	$3015, -76(%rbp), %esi  # imm = 0xBC7
	subl	%esi, %edx
	addl	$8421376, %edx          # imm = 0x808000
	sarl	$16, %edx
	movl	%edx, -84(%rbp)
	cmpl	$255, -80(%rbp)
	jle	.LBB30_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	$255, -80(%rbp)
.LBB30_4:                               # %if.end
                                        #   in Loop: Header=BB30_1 Depth=1
	cmpl	$255, -84(%rbp)
	jle	.LBB30_6
# BB#5:                                 # %if.then.31
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	$255, -84(%rbp)
.LBB30_6:                               # %if.end.32
                                        #   in Loop: Header=BB30_1 Depth=1
	movl	-80(%rbp), %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -48(%rbp)
	movb	%cl, (%rdx)
	movl	-84(%rbp), %eax
	movb	%al, %cl
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -56(%rbp)
	movb	%cl, (%rdx)
	movl	-64(%rbp), %eax
	movq	-32(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -32(%rbp)
	jmp	.LBB30_1
.LBB30_7:                               # %while.end
	popq	%rbp
	retq
.Lfunc_end30:
	.size	extract_ycbcr709f, .Lfunc_end30-extract_ycbcr709f
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI31_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	decompose_dialog,@function
decompose_dialog:                       # @decompose_dialog
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
	pushq	%rbx
	subq	$408, %rsp              # imm = 0x198
.Ltmp101:
	.cfi_offset %rbx, -24
	movl	$0, -80(%rbp)
	movl	$0, -76(%rbp)
.LBB31_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-76(%rbp), %rax
	cmpq	$27, %rax
	jae	.LBB31_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB31_1 Depth=1
	movabsq	$extract, %rax
	movslq	-76(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$0, 8(%rax)
	je	.LBB31_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB31_1 Depth=1
	movabsq	$decovals, %rdi
	movabsq	$extract, %rax
	movslq	-76(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rsi
	callq	g_ascii_strcasecmp
	cmpl	$0, %eax
	jne	.LBB31_5
# BB#4:                                 # %if.then
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB31_7
.LBB31_5:                               # %if.end
                                        #   in Loop: Header=BB31_1 Depth=1
	jmp	.LBB31_6
.LBB31_6:                               # %for.inc
                                        #   in Loop: Header=BB31_1 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB31_1
.LBB31_7:                               # %for.end
	movabsq	$.L.str.92, %rdi
	xorl	%esi, %esi
	callq	gimp_ui_init
	movabsq	$.L.str.93, %rdi
	callq	gettext
	movabsq	$.L.str.94, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.14, %r9
	movabsq	$.L.str.95, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.96, %r11
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
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
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
	movq	-16(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_resizable
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.97, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	movl	-196(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.98, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI31_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-48(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	movl	-220(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_int_combo_box_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -64(%rbp)
	movl	$0, -76(%rbp)
.LBB31_8:                               # %for.cond.41
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_11 Depth 2
	movslq	-76(%rbp), %rax
	cmpq	$27, %rax
	jae	.LBB31_20
# BB#9:                                 # %for.body.45
                                        #   in Loop: Header=BB31_8 Depth=1
	movabsq	$extract, %rax
	movslq	-76(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$0, 8(%rax)
	je	.LBB31_18
# BB#10:                                # %if.then.50
                                        #   in Loop: Header=BB31_8 Depth=1
	movabsq	$extract, %rax
	movslq	-76(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
.LBB31_11:                              # %for.cond.57
                                        #   Parent Loop BB31_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-104(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB31_17
# BB#12:                                # %for.body.59
                                        #   in Loop: Header=BB31_11 Depth=2
	movq	-104(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	je	.LBB31_14
# BB#13:                                # %lor.lhs.false
                                        #   in Loop: Header=BB31_11 Depth=2
	movq	-104(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$95, %ecx
	jne	.LBB31_15
.LBB31_14:                              # %if.then.66
                                        #   in Loop: Header=BB31_11 Depth=2
	movq	-104(%rbp), %rax
	movb	$32, (%rax)
.LBB31_15:                              # %if.end.67
                                        #   in Loop: Header=BB31_11 Depth=2
	jmp	.LBB31_16
.LBB31_16:                              # %for.inc.68
                                        #   in Loop: Header=BB31_11 Depth=2
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB31_11
.LBB31_17:                              # %for.end.69
                                        #   in Loop: Header=BB31_8 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	xorl	%ecx, %ecx
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movq	-96(%rbp), %rdx
	movl	-76(%rbp), %r8d
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_int_combo_box_append
	movq	-96(%rbp), %rdi
	callq	g_free
.LBB31_18:                              # %if.end.72
                                        #   in Loop: Header=BB31_8 Depth=1
	jmp	.LBB31_19
.LBB31_19:                              # %for.inc.73
                                        #   in Loop: Header=BB31_8 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB31_8
.LBB31_20:                              # %for.end.75
	movq	-48(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movq	-64(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_int_combo_box_get_active, %rsi
	leaq	-80(%rbp), %rdi
	movl	-80(%rbp), %ecx
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	-272(%rbp), %rdx        # 8-byte Reload
	movq	-264(%rbp), %rcx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movabsq	$.L.str.99, %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	decovals+32, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-24(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.100, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$decovals, %rdi
	addq	$32, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r10
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-304(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.101, %rdi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movabsq	$.L.str.102, %rdi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.14, %rdx
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-72(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	decovals+36, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-24(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.100, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$decovals, %rdi
	addq	$36, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r10
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-344(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-16(%rbp), %rdi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %eax
	movl	%eax, -84(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_destroy
	cmpl	$0, -84(%rbp)
	je	.LBB31_22
# BB#21:                                # %if.then.104
	movabsq	$decovals, %rdi
	movl	$31, %eax
	movl	%eax, %edx
	movabsq	$extract, %rcx
	movslq	-80(%rbp), %rsi
	imulq	$56, %rsi, %rsi
	addq	%rsi, %rcx
	movq	(%rcx), %rsi
	callq	strncpy
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB31_22:                              # %if.end.109
	movl	-84(%rbp), %eax
	addq	$408, %rsp              # imm = 0x198
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end31:
	.size	decompose_dialog, .Lfunc_end31-decompose_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
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
	je	.LBB32_2
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
.LBB32_2:                               # %entry
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
.Lfunc_end32:
	.size	g_message, .Lfunc_end32-g_message
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI33_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	decompose,@function
decompose:                              # @decompose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	subq	$608, %rsp              # imm = 0x260
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$-1, -68(%rbp)
	movl	$0, -64(%rbp)
.LBB33_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-64(%rbp), %rax
	cmpq	$27, %rax
	jae	.LBB33_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB33_1 Depth=1
	movabsq	$extract, %rax
	movq	-24(%rbp), %rdi
	movslq	-64(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rsi
	callq	g_ascii_strcasecmp
	cmpl	$0, %eax
	jne	.LBB33_4
# BB#3:                                 # %if.then
	movl	-64(%rbp), %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB33_6
.LBB33_4:                               # %if.end
                                        #   in Loop: Header=BB33_1 Depth=1
	jmp	.LBB33_5
.LBB33_5:                               # %for.inc
                                        #   in Loop: Header=BB33_1 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB33_1
.LBB33_6:                               # %for.end
	cmpl	$0, -68(%rbp)
	jge	.LBB33_8
# BB#7:                                 # %if.then.6
	movl	$-1, -4(%rbp)
	jmp	.LBB33_63
.LBB33_8:                               # %if.end.7
	movl	-12(%rbp), %edi
	callq	gimp_drawable_get
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	cmpl	$3, 12(%rax)
	jae	.LBB33_10
# BB#9:                                 # %if.then.11
	movabsq	$.L.str.103, %rdi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB33_63
.LBB33_10:                              # %if.end.12
	movabsq	$extract_alpha, %rax
	movabsq	$extract, %rcx
	movslq	-68(%rbp), %rdx
	imulq	$56, %rdx, %rdx
	addq	%rdx, %rcx
	cmpq	%rax, 48(%rcx)
	je	.LBB33_12
# BB#11:                                # %lor.lhs.false
	movabsq	$extract_rgba, %rax
	movabsq	$extract, %rcx
	movslq	-68(%rbp), %rdx
	imulq	$56, %rdx, %rdx
	addq	%rdx, %rcx
	cmpq	%rax, 48(%rcx)
	jne	.LBB33_14
.LBB33_12:                              # %land.lhs.true
	movl	-12(%rbp), %edi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	jne	.LBB33_14
# BB#13:                                # %if.then.23
	movabsq	$.L.str.104, %rdi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB33_63
.LBB33_14:                              # %if.end.24
	movq	-152(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -80(%rbp)
	movq	-152(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -76(%rbp)
	callq	gimp_tile_height
	leaq	-240(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%eax, -84(%rbp)
	movq	-152(%rbp), %rsi
	movl	-80(%rbp), %r8d
	movl	-76(%rbp), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$1, %eax
	movl	%eax, %esi
	movl	-84(%rbp), %eax
	imull	-80(%rbp), %eax
	movq	-152(%rbp), %rdi
	imull	12(%rdi), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	g_malloc_n
	movabsq	$extract, %rsi
	movq	%rax, -104(%rbp)
	movslq	-68(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	%rax, %rsi
	movl	12(%rsi), %ecx
	movl	%ecx, -88(%rbp)
	cmpl	$4, -88(%rbp)
	jle	.LBB33_16
# BB#15:                                # %if.then.36
	movl	$4, -88(%rbp)
.LBB33_16:                              # %if.end.37
	movl	$0, -64(%rbp)
.LBB33_17:                              # %for.cond.38
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_20 Depth 2
	movl	-64(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB33_43
# BB#18:                                # %for.body.41
                                        #   in Loop: Header=BB33_17 Depth=1
	movl	-8(%rbp), %edi
	callq	gimp_image_get_filename
	movq	%rax, -440(%rbp)
	cmpq	$0, -440(%rbp)
	je	.LBB33_34
# BB#19:                                # %if.then.44
                                        #   in Loop: Header=BB33_17 Depth=1
	movq	-440(%rbp), %rax
	movq	-440(%rbp), %rdi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-472(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	addq	$-1, %rdi
	movq	%rdi, -448(%rbp)
.LBB33_20:                              # %while.cond
                                        #   Parent Loop BB33_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-448(%rbp), %rax
	cmpq	-440(%rbp), %rax
	jb	.LBB33_24
# BB#21:                                # %while.body
                                        #   in Loop: Header=BB33_20 Depth=2
	movq	-448(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB33_23
# BB#22:                                # %if.then.52
                                        #   in Loop: Header=BB33_17 Depth=1
	jmp	.LBB33_24
.LBB33_23:                              # %if.end.53
                                        #   in Loop: Header=BB33_20 Depth=2
	movq	-448(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -448(%rbp)
	jmp	.LBB33_20
.LBB33_24:                              # %while.end
                                        #   in Loop: Header=BB33_17 Depth=1
	movq	-448(%rbp), %rax
	cmpq	-440(%rbp), %rax
	jb	.LBB33_29
# BB#25:                                # %if.then.56
                                        #   in Loop: Header=BB33_17 Depth=1
	movq	-448(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -448(%rbp)
	movb	$0, (%rax)
	cmpl	$0, decovals+32
	je	.LBB33_27
# BB#26:                                # %if.then.59
                                        #   in Loop: Header=BB33_17 Depth=1
	movabsq	$extract, %rax
	movq	-440(%rbp), %rsi
	movslq	-68(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rdi
	movq	%rsi, -480(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.105, %rdi
	movq	-448(%rbp), %rcx
	movq	-480(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -96(%rbp)
	jmp	.LBB33_28
.LBB33_27:                              # %if.else
                                        #   in Loop: Header=BB33_17 Depth=1
	movabsq	$extract, %rax
	movq	-440(%rbp), %rsi
	movslq	-64(%rbp), %rcx
	movslq	-68(%rbp), %rdx
	imulq	$56, %rdx, %rdx
	addq	%rdx, %rax
	movq	16(%rax,%rcx,8), %rdi
	movq	%rsi, -488(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.105, %rdi
	movq	-448(%rbp), %rcx
	movq	-488(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -96(%rbp)
.LBB33_28:                              # %if.end.71
                                        #   in Loop: Header=BB33_17 Depth=1
	jmp	.LBB33_33
.LBB33_29:                              # %if.else.72
                                        #   in Loop: Header=BB33_17 Depth=1
	cmpl	$0, decovals+32
	je	.LBB33_31
# BB#30:                                # %if.then.74
                                        #   in Loop: Header=BB33_17 Depth=1
	movabsq	$extract, %rax
	movq	-440(%rbp), %rsi
	movslq	-68(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rdi
	movq	%rsi, -496(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.106, %rdi
	movq	-496(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -96(%rbp)
	jmp	.LBB33_32
.LBB33_31:                              # %if.else.80
                                        #   in Loop: Header=BB33_17 Depth=1
	movabsq	$extract, %rax
	movq	-440(%rbp), %rsi
	movslq	-64(%rbp), %rcx
	movslq	-68(%rbp), %rdx
	imulq	$56, %rdx, %rdx
	addq	%rdx, %rax
	movq	16(%rax,%rcx,8), %rdi
	movq	%rsi, -504(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.106, %rdi
	movq	-504(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -96(%rbp)
.LBB33_32:                              # %if.end.88
                                        #   in Loop: Header=BB33_17 Depth=1
	jmp	.LBB33_33
.LBB33_33:                              # %if.end.89
                                        #   in Loop: Header=BB33_17 Depth=1
	jmp	.LBB33_35
.LBB33_34:                              # %if.else.90
                                        #   in Loop: Header=BB33_17 Depth=1
	movabsq	$extract, %rax
	movslq	-64(%rbp), %rcx
	movslq	-68(%rbp), %rdx
	imulq	$56, %rdx, %rdx
	addq	%rdx, %rax
	movq	16(%rax,%rcx,8), %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -96(%rbp)
.LBB33_35:                              # %if.end.98
                                        #   in Loop: Header=BB33_17 Depth=1
	leaq	-456(%rbp), %rsi
	leaq	-464(%rbp), %rdx
	movl	-8(%rbp), %edi
	callq	gimp_image_get_resolution
	cmpl	$0, decovals+32
	movl	%eax, -508(%rbp)        # 4-byte Spill
	je	.LBB33_40
# BB#36:                                # %if.then.101
                                        #   in Loop: Header=BB33_17 Depth=1
	movabsq	$extract, %rax
	movslq	-64(%rbp), %rcx
	movslq	-68(%rbp), %rdx
	imulq	$56, %rdx, %rdx
	addq	%rdx, %rax
	movq	16(%rax,%rcx,8), %rdi
	callq	gettext
	movq	%rax, -56(%rbp)
	cmpl	$0, -64(%rbp)
	jne	.LBB33_38
# BB#37:                                # %if.then.110
                                        #   in Loop: Header=BB33_17 Depth=1
	movl	$1, %r8d
	leaq	-432(%rbp), %rax
	leaq	-192(%rbp), %rcx
	movq	-96(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	-80(%rbp), %edx
	movl	-76(%rbp), %r9d
	movsd	-456(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-464(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-48(%rbp), %r10
	movslq	-64(%rbp), %r11
	shlq	$2, %r11
	addq	%r11, %r10
	movslq	-64(%rbp), %r11
	shlq	$3, %r11
	addq	%r11, %rcx
	movslq	-64(%rbp), %r11
	imulq	$48, %r11, %r11
	addq	%r11, %rax
	movq	%rcx, -520(%rbp)        # 8-byte Spill
	movl	%r9d, %ecx
	movq	%r10, %r9
	movq	-520(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	callq	create_new_image
	movslq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movl	%eax, (%rdi,%rsi,4)
	jmp	.LBB33_39
.LBB33_38:                              # %if.else.120
                                        #   in Loop: Header=BB33_17 Depth=1
	movl	$1, %r9d
	leaq	-432(%rbp), %rax
	leaq	-192(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	(%rdx), %edi
	movl	-64(%rbp), %esi
	movq	-56(%rbp), %rdx
	movl	-80(%rbp), %r8d
	movl	-76(%rbp), %r10d
	movslq	-64(%rbp), %r11
	shlq	$3, %r11
	addq	%r11, %rcx
	movslq	-64(%rbp), %r11
	imulq	$48, %r11, %r11
	addq	%r11, %rax
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movl	%r10d, %r8d
	movq	-528(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	%rax, 8(%rsp)
	callq	create_new_layer
	movslq	-64(%rbp), %rdx
	movq	-48(%rbp), %r11
	movl	%eax, (%r11,%rdx,4)
.LBB33_39:                              # %if.end.131
                                        #   in Loop: Header=BB33_17 Depth=1
	jmp	.LBB33_41
.LBB33_40:                              # %if.else.132
                                        #   in Loop: Header=BB33_17 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$1, %r8d
	leaq	-432(%rbp), %rcx
	leaq	-192(%rbp), %rdx
	movq	-96(%rbp), %rdi
	movl	-80(%rbp), %eax
	movl	-76(%rbp), %r9d
	movsd	-456(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-464(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-48(%rbp), %r10
	movslq	-64(%rbp), %r11
	shlq	$2, %r11
	addq	%r11, %r10
	movslq	-64(%rbp), %r11
	shlq	$3, %r11
	addq	%r11, %rdx
	movslq	-64(%rbp), %r11
	imulq	$48, %r11, %r11
	addq	%r11, %rcx
	movq	%rdx, -536(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	movl	%r9d, %ecx
	movq	%r10, %r9
	movq	-536(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	-544(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	create_new_image
	movslq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movl	%eax, (%rdi,%rsi,4)
.LBB33_41:                              # %if.end.144
                                        #   in Loop: Header=BB33_17 Depth=1
	movq	-96(%rbp), %rdi
	callq	g_free
	movq	-440(%rbp), %rdi
	callq	g_free
	movl	$1, %eax
	movl	%eax, %esi
	movl	-84(%rbp), %eax
	imull	-80(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movslq	-64(%rbp), %rsi
	movq	%rax, -144(%rbp,%rsi,8)
# BB#42:                                # %for.inc.150
                                        #   in Loop: Header=BB33_17 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB33_17
.LBB33_43:                              # %for.end.152
	movl	$0, -60(%rbp)
.LBB33_44:                              # %while.cond.153
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_51 Depth 2
	movl	-60(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB33_55
# BB#45:                                # %while.body.156
                                        #   in Loop: Header=BB33_44 Depth=1
	movl	-60(%rbp), %eax
	addl	-84(%rbp), %eax
	subl	$1, %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB33_47
# BB#46:                                # %cond.true
                                        #   in Loop: Header=BB33_44 Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, -548(%rbp)        # 4-byte Spill
	jmp	.LBB33_48
.LBB33_47:                              # %cond.false
                                        #   in Loop: Header=BB33_44 Depth=1
	movl	-76(%rbp), %eax
	subl	-60(%rbp), %eax
	movl	%eax, -548(%rbp)        # 4-byte Spill
.LBB33_48:                              # %cond.end
                                        #   in Loop: Header=BB33_44 Depth=1
	movl	-548(%rbp), %eax        # 4-byte Reload
	leaq	-240(%rbp), %rdi
	xorl	%edx, %edx
	movl	%eax, -72(%rbp)
	movq	-104(%rbp), %rsi
	movl	-60(%rbp), %ecx
	movl	-80(%rbp), %r8d
	movl	-72(%rbp), %r9d
	callq	gimp_pixel_rgn_get_rect
	leaq	-144(%rbp), %rcx
	movabsq	$extract, %rsi
	movslq	-68(%rbp), %rdi
	imulq	$56, %rdi, %rdi
	addq	%rdi, %rsi
	movq	48(%rsi), %rsi
	movq	-104(%rbp), %rdi
	movq	-152(%rbp), %r10
	movl	12(%r10), %eax
	movl	-72(%rbp), %edx
	imull	-80(%rbp), %edx
	movq	%rsi, -560(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	-560(%rbp), %r10        # 8-byte Reload
	callq	*%r10
	cmpl	$0, decovals+36
	je	.LBB33_50
# BB#49:                                # %if.then.167
                                        #   in Loop: Header=BB33_44 Depth=1
	movabsq	$extract, %rax
	leaq	-144(%rbp), %rcx
	movq	-104(%rbp), %rdi
	movq	-152(%rbp), %rdx
	movl	12(%rdx), %esi
	movl	-72(%rbp), %r8d
	imull	-80(%rbp), %r8d
	movslq	-68(%rbp), %rdx
	imulq	$56, %rdx, %rdx
	addq	%rdx, %rax
	movl	12(%rax), %r9d
	movl	%r8d, %edx
	movl	%r9d, %r8d
	callq	transfer_registration_color
.LBB33_50:                              # %if.end.174
                                        #   in Loop: Header=BB33_44 Depth=1
	movl	$0, -64(%rbp)
.LBB33_51:                              # %for.cond.175
                                        #   Parent Loop BB33_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB33_54
# BB#52:                                # %for.body.178
                                        #   in Loop: Header=BB33_51 Depth=2
	xorl	%edx, %edx
	leaq	-432(%rbp), %rax
	movslq	-64(%rbp), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-64(%rbp), %rcx
	movq	-144(%rbp,%rcx,8), %rsi
	movl	-60(%rbp), %ecx
	movl	-80(%rbp), %r8d
	movl	-72(%rbp), %r9d
	movq	%rax, %rdi
	callq	gimp_pixel_rgn_set_rect
# BB#53:                                # %for.inc.183
                                        #   in Loop: Header=BB33_51 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB33_51
.LBB33_54:                              # %for.end.185
                                        #   in Loop: Header=BB33_44 Depth=1
	movl	-72(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	cvtsi2sdl	-60(%rbp), %xmm0
	cvtsi2sdl	-76(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -564(%rbp)        # 4-byte Spill
	jmp	.LBB33_44
.LBB33_55:                              # %while.end.190
	movsd	.LCPI33_0, %xmm0        # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-104(%rbp), %rdi
	movl	%eax, -568(%rbp)        # 4-byte Spill
	callq	g_free
	movl	$0, -64(%rbp)
.LBB33_56:                              # %for.cond.192
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB33_59
# BB#57:                                # %for.body.195
                                        #   in Loop: Header=BB33_56 Depth=1
	movslq	-64(%rbp), %rax
	movq	-192(%rbp,%rax,8), %rdi
	callq	gimp_drawable_detach
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rdi
	movl	(%rdi,%rax,4), %edi
	movslq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edi, -572(%rbp)        # 4-byte Spill
	movl	%edx, %edi
	callq	gimp_drawable_width
	movslq	-64(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movl	(%rsi,%rcx,4), %edi
	movl	%eax, -576(%rbp)        # 4-byte Spill
	callq	gimp_drawable_height
	xorl	%edx, %edx
	movl	-572(%rbp), %edi        # 4-byte Reload
	movl	%edx, %esi
	movl	-576(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_update
	movslq	-64(%rbp), %r9
	movq	-48(%rbp), %r10
	movl	(%r10,%r9,4), %edi
	movl	%eax, -580(%rbp)        # 4-byte Spill
	callq	gimp_layer_add_alpha
	movslq	-64(%rbp), %r9
	movq	-144(%rbp,%r9,8), %rdi
	movl	%eax, -584(%rbp)        # 4-byte Spill
	callq	g_free
# BB#58:                                # %for.inc.212
                                        #   in Loop: Header=BB33_56 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB33_56
.LBB33_59:                              # %for.end.214
	movq	-152(%rbp), %rdi
	callq	gimp_drawable_detach
	movl	-88(%rbp), %eax
	movq	-40(%rbp), %rdi
	movl	%eax, (%rdi)
	cmpl	$0, decovals+32
	je	.LBB33_61
# BB#60:                                # %cond.true.216
	movl	$1, %eax
	movl	%eax, -588(%rbp)        # 4-byte Spill
	jmp	.LBB33_62
.LBB33_61:                              # %cond.false.217
	movl	-88(%rbp), %eax
	movl	%eax, -588(%rbp)        # 4-byte Spill
.LBB33_62:                              # %cond.end.218
	movl	-588(%rbp), %eax        # 4-byte Reload
	movl	%eax, -4(%rbp)
.LBB33_63:                              # %return
	movl	-4(%rbp), %eax
	addq	$608, %rsp              # imm = 0x260
	popq	%rbp
	retq
.Lfunc_end33:
	.size	decompose, .Lfunc_end33-decompose
	.cfi_endproc

	.align	16, 0x90
	.type	create_new_image,@function
create_new_image:                       # @create_new_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%r10, -64(%rbp)
	movq	%rax, -72(%rbp)
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	callq	gimp_image_new
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %edi
	callq	gimp_image_undo_disable
	movl	-76(%rbp), %edi
	movq	-8(%rbp), %rsi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	gimp_image_set_filename
	movl	-76(%rbp), %edi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_image_set_resolution
	xorl	%esi, %esi
	movl	-76(%rbp), %edi
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	-28(%rbp), %r9d
	movq	-64(%rbp), %r10
	movq	-72(%rbp), %r11
	movq	%r10, (%rsp)
	movq	%r11, 8(%rsp)
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	create_new_layer
	movq	-56(%rbp), %rdx
	movl	%eax, (%rdx)
	movl	-76(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	create_new_image, .Lfunc_end34-create_new_image
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI35_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	create_new_layer,@function
create_new_layer:                       # @create_new_layer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movq	%r10, -40(%rbp)
	movq	%rax, -48(%rbp)
	movl	$0, -56(%rbp)
	movl	-28(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	je	.LBB35_1
	jmp	.LBB35_7
.LBB35_7:                               # %entry
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB35_2
	jmp	.LBB35_8
.LBB35_8:                               # %entry
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB35_3
	jmp	.LBB35_4
.LBB35_1:                               # %sw.bb
	movl	$0, -56(%rbp)
	jmp	.LBB35_4
.LBB35_2:                               # %sw.bb.1
	movl	$2, -56(%rbp)
	jmp	.LBB35_4
.LBB35_3:                               # %sw.bb.2
	movl	$4, -56(%rbp)
.LBB35_4:                               # %sw.epilog
	cmpq	$0, -16(%rbp)
	jne	.LBB35_6
# BB#5:                                 # %if.then
	movabsq	$.L.str.107, %rdi
	callq	gettext
	movq	%rax, -16(%rbp)
.LBB35_6:                               # %if.end
	movsd	.LCPI35_0, %xmm0        # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-56(%rbp), %r8d
	callq	gimp_layer_new
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	%eax, -52(%rbp)
	movl	-4(%rbp), %edi
	movl	-52(%rbp), %esi
	movl	-8(%rbp), %ecx
	callq	gimp_image_insert_layer
	movl	-52(%rbp), %edi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	gimp_drawable_get
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-40(%rbp), %r10
	movq	%rax, (%r10)
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %r8d
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %r9d
	movl	%edx, -76(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	-52(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	create_new_layer, .Lfunc_end35-create_new_layer
	.cfi_endproc

	.align	16, 0x90
	.type	transfer_registration_color,@function
transfer_registration_color:            # @transfer_registration_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	leaq	-120(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, -84(%rbp)
	movq	%rax, %rdi
	callq	gimp_context_get_foreground
	leaq	-120(%rbp), %rdi
	leaq	-121(%rbp), %rsi
	leaq	-122(%rbp), %rdx
	leaq	-123(%rbp), %rcx
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	gimp_rgb_get_uchar
	movl	$0, -88(%rbp)
.LBB36_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-88(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB36_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB36_1 Depth=1
	movslq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movslq	-88(%rbp), %rcx
	movq	%rax, -80(%rbp,%rcx,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB36_1
.LBB36_4:                               # %for.end
	jmp	.LBB36_5
.LBB36_5:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB36_10 Depth 2
                                        #     Child Loop BB36_15 Depth 2
	movl	-84(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -84(%rbp)
	cmpl	$0, %eax
	jle	.LBB36_20
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB36_5 Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	movzbl	-121(%rbp), %edx
	cmpl	%edx, %ecx
	jne	.LBB36_14
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB36_5 Depth=1
	movq	-40(%rbp), %rax
	movzbl	1(%rax), %ecx
	movzbl	-122(%rbp), %edx
	cmpl	%edx, %ecx
	jne	.LBB36_14
# BB#8:                                 # %land.lhs.true.13
                                        #   in Loop: Header=BB36_5 Depth=1
	movq	-40(%rbp), %rax
	movzbl	2(%rax), %ecx
	movzbl	-123(%rbp), %edx
	cmpl	%edx, %ecx
	jne	.LBB36_14
# BB#9:                                 # %if.then
                                        #   in Loop: Header=BB36_5 Depth=1
	movl	$0, -88(%rbp)
.LBB36_10:                              # %for.cond.19
                                        #   Parent Loop BB36_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-88(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB36_13
# BB#11:                                # %for.body.22
                                        #   in Loop: Header=BB36_10 Depth=2
	movslq	-88(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -80(%rbp,%rax,8)
	movb	$-1, (%rcx)
# BB#12:                                # %for.inc.25
                                        #   in Loop: Header=BB36_10 Depth=2
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB36_10
.LBB36_13:                              # %for.end.27
                                        #   in Loop: Header=BB36_5 Depth=1
	jmp	.LBB36_19
.LBB36_14:                              # %if.else
                                        #   in Loop: Header=BB36_5 Depth=1
	movl	$0, -88(%rbp)
.LBB36_15:                              # %for.cond.28
                                        #   Parent Loop BB36_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-88(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB36_18
# BB#16:                                # %for.body.31
                                        #   in Loop: Header=BB36_15 Depth=2
	movslq	-88(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp,%rax,8)
# BB#17:                                # %for.inc.35
                                        #   in Loop: Header=BB36_15 Depth=2
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB36_15
.LBB36_18:                              # %for.end.37
                                        #   in Loop: Header=BB36_5 Depth=1
	jmp	.LBB36_19
.LBB36_19:                              # %if.end
                                        #   in Loop: Header=BB36_5 Depth=1
	movl	-12(%rbp), %eax
	movq	-40(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
	jmp	.LBB36_5
.LBB36_20:                              # %while.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	transfer_registration_color, .Lfunc_end36-transfer_registration_color
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
	.data
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
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.6
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.7
	.quad	.L.str.8
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
	.asciz	"Input image (unused)"
	.size	.L.str.3, 21

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
	.asciz	"decompose-type"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"layers-mode"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Create channels as layers in a single image"
	.size	.L.str.8, 44

	.type	query.return_vals,@object # @query.return_vals
	.section	.rodata,"a",@progbits
	.align	16
query.return_vals:
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.9
	.quad	.L.str.10
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.9
	.quad	.L.str.11
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.9
	.quad	.L.str.11
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.9
	.quad	.L.str.11
	.size	query.return_vals, 96

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"new-image"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Output gray image"
	.size	.L.str.10, 18

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Output gray image (N/A for single channel extract)"
	.size	.L.str.11, 51

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"What to decompose: "
	.size	.L.str.12, 20

	.type	extract,@object         # @extract
	.data
	.align	16
extract:
	.quad	.L.str.25
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	0
	.quad	extract_rgb
	.quad	.L.str.29
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.26
	.quad	0
	.quad	0
	.quad	0
	.quad	extract_red
	.quad	.L.str.30
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.27
	.quad	0
	.quad	0
	.quad	0
	.quad	extract_green
	.quad	.L.str.31
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.28
	.quad	0
	.quad	0
	.quad	0
	.quad	extract_blue
	.quad	.L.str.32
	.long	1                       # 0x1
	.long	4                       # 0x4
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.33
	.quad	extract_rgba
	.quad	.L.str.34
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	.L.str.35
	.quad	.L.str.36
	.quad	.L.str.37
	.quad	0
	.quad	extract_hsv
	.quad	.L.str.38
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.35
	.quad	0
	.quad	0
	.quad	0
	.quad	extract_hue
	.quad	.L.str.39
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.36
	.quad	0
	.quad	0
	.quad	0
	.quad	extract_sat
	.quad	.L.str.40
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.37
	.quad	0
	.quad	0
	.quad	0
	.quad	extract_val
	.quad	.L.str.41
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	.L.str.42
	.quad	.L.str.43
	.quad	.L.str.44
	.quad	0
	.quad	extract_hsl
	.quad	.L.str.45
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.42
	.quad	0
	.quad	0
	.quad	0
	.quad	extract_huel
	.quad	.L.str.46
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.43
	.quad	0
	.quad	0
	.quad	0
	.quad	extract_satl
	.quad	.L.str.47
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.44
	.quad	0
	.quad	0
	.quad	0
	.quad	extract_lightness
	.quad	.L.str.48
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	.L.str.49
	.quad	.L.str.50
	.quad	.L.str.51
	.quad	0
	.quad	extract_cmy
	.quad	.L.str.52
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.49
	.quad	0
	.quad	0
	.quad	0
	.quad	extract_cyan
	.quad	.L.str.53
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.50
	.quad	0
	.quad	0
	.quad	0
	.quad	extract_magenta
	.quad	.L.str.54
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.51
	.quad	0
	.quad	0
	.quad	0
	.quad	extract_yellow
	.quad	.L.str.55
	.long	1                       # 0x1
	.long	4                       # 0x4
	.quad	.L.str.56
	.quad	.L.str.57
	.quad	.L.str.58
	.quad	.L.str.59
	.quad	extract_cmyk
	.quad	.L.str.60
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.56
	.quad	0
	.quad	0
	.quad	0
	.quad	extract_cyank
	.quad	.L.str.61
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.57
	.quad	0
	.quad	0
	.quad	0
	.quad	extract_magentak
	.quad	.L.str.62
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.58
	.quad	0
	.quad	0
	.quad	0
	.quad	extract_yellowk
	.quad	.L.str.63
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.33
	.quad	0
	.quad	0
	.quad	0
	.quad	extract_alpha
	.quad	.L.str.64
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	.L.str.67
	.quad	0
	.quad	extract_lab
	.quad	.L.str.68
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	.L.str.69
	.quad	.L.str.70
	.quad	.L.str.71
	.quad	0
	.quad	extract_ycbcr470
	.quad	.L.str.72
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	.L.str.73
	.quad	.L.str.74
	.quad	.L.str.75
	.quad	0
	.quad	extract_ycbcr709
	.quad	.L.str.76
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	.L.str.77
	.quad	.L.str.78
	.quad	.L.str.79
	.quad	0
	.quad	extract_ycbcr470f
	.quad	.L.str.80
	.long	1                       # 0x1
	.long	3                       # 0x3
	.quad	.L.str.81
	.quad	.L.str.82
	.quad	.L.str.83
	.quad	0
	.quad	extract_ycbcr709f
	.size	extract, 1512

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	", "
	.size	.L.str.13, 3

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"plug-in-decompose"
	.size	.L.str.14, 18

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Decompose an image into separate colorspace components"
	.size	.L.str.15, 55

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"This function creates new gray images with different channel information in each of them"
	.size	.L.str.16, 89

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Peter Kirchgessner"
	.size	.L.str.17, 19

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"1997"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"_Decompose..."
	.size	.L.str.19, 14

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"RGB*"
	.size	.L.str.20, 5

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"plug-in-decompose-registered"
	.size	.L.str.21, 29

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"This function creates new gray images with different channel information in each of them. Pixels in the foreground color will appear black in all output images.  This can be used for things like crop marks that have to show up on all channels."
	.size	.L.str.22, 244

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Peter Kirchgessner, Clarence Risher"
	.size	.L.str.23, 36

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"<Image>/Colors/Components"
	.size	.L.str.24, 26

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"RGB"
	.size	.L.str.25, 4

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"red"
	.size	.L.str.26, 4

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"green"
	.size	.L.str.27, 6

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"blue"
	.size	.L.str.28, 5

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Red"
	.size	.L.str.29, 4

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Green"
	.size	.L.str.30, 6

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Blue"
	.size	.L.str.31, 5

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"RGBA"
	.size	.L.str.32, 5

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"alpha"
	.size	.L.str.33, 6

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"HSV"
	.size	.L.str.34, 4

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"hue"
	.size	.L.str.35, 4

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"saturation"
	.size	.L.str.36, 11

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"value"
	.size	.L.str.37, 6

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Hue"
	.size	.L.str.38, 4

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Saturation"
	.size	.L.str.39, 11

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Value"
	.size	.L.str.40, 6

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"HSL"
	.size	.L.str.41, 4

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"hue_l"
	.size	.L.str.42, 6

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"saturation_l"
	.size	.L.str.43, 13

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"lightness"
	.size	.L.str.44, 10

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Hue (HSL)"
	.size	.L.str.45, 10

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Saturation (HSL)"
	.size	.L.str.46, 17

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Lightness"
	.size	.L.str.47, 10

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"CMY"
	.size	.L.str.48, 4

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"cyan"
	.size	.L.str.49, 5

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"magenta"
	.size	.L.str.50, 8

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"yellow"
	.size	.L.str.51, 7

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Cyan"
	.size	.L.str.52, 5

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Magenta"
	.size	.L.str.53, 8

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Yellow"
	.size	.L.str.54, 7

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"CMYK"
	.size	.L.str.55, 5

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"cyan-k"
	.size	.L.str.56, 7

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"magenta-k"
	.size	.L.str.57, 10

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"yellow-k"
	.size	.L.str.58, 9

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"black"
	.size	.L.str.59, 6

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Cyan_K"
	.size	.L.str.60, 7

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Magenta_K"
	.size	.L.str.61, 10

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Yellow_K"
	.size	.L.str.62, 9

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Alpha"
	.size	.L.str.63, 6

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"LAB"
	.size	.L.str.64, 4

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"L"
	.size	.L.str.65, 2

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"A"
	.size	.L.str.66, 2

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"B"
	.size	.L.str.67, 2

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"YCbCr_ITU_R470"
	.size	.L.str.68, 15

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"luma-y470"
	.size	.L.str.69, 10

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"blueness-cb470"
	.size	.L.str.70, 15

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"redness-cr470"
	.size	.L.str.71, 14

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"YCbCr_ITU_R709"
	.size	.L.str.72, 15

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"luma-y709"
	.size	.L.str.73, 10

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"blueness-cb709"
	.size	.L.str.74, 15

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"redness-cr709"
	.size	.L.str.75, 14

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"YCbCr_ITU_R470_256"
	.size	.L.str.76, 19

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"luma-y470f"
	.size	.L.str.77, 11

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"blueness-cb470f"
	.size	.L.str.78, 16

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"redness-cr470f"
	.size	.L.str.79, 15

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"YCbCr_ITU_R709_256"
	.size	.L.str.80, 19

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"luma-y709f"
	.size	.L.str.81, 11

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"blueness-cb709f"
	.size	.L.str.82, 16

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"redness-cr709f"
	.size	.L.str.83, 15

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,200,16
	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.84, 20

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"UTF-8"
	.size	.L.str.85, 6

	.type	run_mode,@object        # @run_mode
	.local	run_mode
	.comm	run_mode,4,4
	.type	decovals,@object        # @decovals
	.data
	.align	4
decovals:
	.asciz	"rgb\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	1                       # 0x1
	.long	0                       # 0x0
	.size	decovals, 40

	.type	.L.str.86,@object       # @.str.86
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.86:
	.asciz	"Can only work on RGB images."
	.size	.L.str.86, 29

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Decomposing"
	.size	.L.str.87, 12

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.zero	1
	.size	.L.str.88, 1

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"source=%d type=%s "
	.size	.L.str.89, 19

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"%d "
	.size	.L.str.90, 4

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"decompose-data"
	.size	.L.str.91, 15

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"decompose"
	.size	.L.str.92, 10

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"Decompose"
	.size	.L.str.93, 10

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"gimp-decompose"
	.size	.L.str.94, 15

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"gtk-cancel"
	.size	.L.str.95, 11

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"gtk-ok"
	.size	.L.str.96, 7

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"Extract Channels"
	.size	.L.str.97, 17

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"Color _model:"
	.size	.L.str.98, 14

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"_Decompose to layers"
	.size	.L.str.99, 21

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"toggled"
	.size	.L.str.100, 8

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"_Foreground as registration color"
	.size	.L.str.101, 34

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"Pixels in the foreground color will appear black in all output images.  This can be used for things like crop marks that have to show up on all channels."
	.size	.L.str.102, 154

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"Not an RGB image."
	.size	.L.str.103, 18

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"No alpha channel available."
	.size	.L.str.104, 28

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"%s-%s.%s"
	.size	.L.str.105, 9

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"%s-%s"
	.size	.L.str.106, 6

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"Background"
	.size	.L.str.107, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
