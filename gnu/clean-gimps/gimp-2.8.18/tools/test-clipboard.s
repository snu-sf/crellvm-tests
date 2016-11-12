	.text
	.file	"test-clipboard.bc"
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
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
	subq	$48, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	%rcx, %rdi
	callq	g_option_context_new
	movabsq	$main_entries, %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_option_context_add_main_entries
	movl	$1, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_get_option_group
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_option_context_add_group
	leaq	-8(%rbp), %rsi
	leaq	-16(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdi
	callq	g_option_context_parse
	cmpl	$0, %eax
	jne	.LBB0_5
# BB#1:                                 # %if.then
	cmpq	$0, -40(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then.4
	movabsq	$.L.str, %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_printerr
	movq	-40(%rbp), %rdi
	callq	g_error_free
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L.str.1, %rsi
	movb	$0, %al
	callq	g_print
.LBB0_4:                                # %if.end
	movl	$1, -4(%rbp)
	jmp	.LBB0_37
.LBB0_5:                                # %if.end.5
	leaq	-8(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	gtk_init
	callq	gdk_display_get_default
	movq	option_selection_type, %rsi
	movq	%rax, %rdi
	callq	gtk_clipboard_get_for_display
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_7
# BB#6:                                 # %if.then.9
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	g_error
.LBB0_7:                                # %if.end.10
	cmpl	$0, option_list_targets
	je	.LBB0_11
# BB#8:                                 # %if.then.12
	movq	-32(%rbp), %rdi
	callq	test_clipboard_list_targets
	cmpl	$0, %eax
	jne	.LBB0_10
# BB#9:                                 # %if.then.15
	movl	$1, -4(%rbp)
	jmp	.LBB0_37
.LBB0_10:                               # %if.end.16
	movl	$0, -4(%rbp)
	jmp	.LBB0_37
.LBB0_11:                               # %if.end.17
	cmpq	$0, option_copy_filename
	je	.LBB0_13
# BB#12:                                # %land.lhs.true
	cmpq	$0, option_paste_filename
	jne	.LBB0_17
.LBB0_13:                               # %lor.lhs.false
	cmpq	$0, option_copy_filename
	je	.LBB0_15
# BB#14:                                # %land.lhs.true.21
	cmpq	$0, option_store_filename
	jne	.LBB0_17
.LBB0_15:                               # %lor.lhs.false.23
	cmpq	$0, option_paste_filename
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.25
	cmpq	$0, option_store_filename
	je	.LBB0_18
.LBB0_17:                               # %if.then.27
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	g_printerr
	movl	$1, -4(%rbp)
	jmp	.LBB0_37
.LBB0_18:                               # %if.end.28
	cmpq	$0, option_copy_filename
	je	.LBB0_24
# BB#19:                                # %if.then.30
	cmpq	$0, option_target
	jne	.LBB0_21
# BB#20:                                # %if.then.32
	movabsq	$.L.str.4, %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movb	$0, %al
	callq	g_printerr
	movl	$1, -4(%rbp)
	jmp	.LBB0_37
.LBB0_21:                               # %if.end.33
	movq	-32(%rbp), %rdi
	movq	option_target, %rsi
	movq	option_copy_filename, %rdx
	callq	test_clipboard_copy
	cmpl	$0, %eax
	jne	.LBB0_23
# BB#22:                                # %if.then.36
	movl	$1, -4(%rbp)
	jmp	.LBB0_37
.LBB0_23:                               # %if.end.37
	jmp	.LBB0_24
.LBB0_24:                               # %if.end.38
	cmpq	$0, option_store_filename
	je	.LBB0_30
# BB#25:                                # %if.then.40
	cmpq	$0, option_target
	jne	.LBB0_27
# BB#26:                                # %if.then.42
	movabsq	$.L.str.5, %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movb	$0, %al
	callq	g_printerr
	movl	$1, -4(%rbp)
	jmp	.LBB0_37
.LBB0_27:                               # %if.end.44
	movq	-32(%rbp), %rdi
	movq	option_target, %rsi
	movq	option_store_filename, %rdx
	callq	test_clipboard_store
	cmpl	$0, %eax
	jne	.LBB0_29
# BB#28:                                # %if.then.47
	movl	$1, -4(%rbp)
	jmp	.LBB0_37
.LBB0_29:                               # %if.end.48
	jmp	.LBB0_30
.LBB0_30:                               # %if.end.49
	cmpq	$0, option_paste_filename
	je	.LBB0_36
# BB#31:                                # %if.then.51
	cmpq	$0, option_target
	jne	.LBB0_33
# BB#32:                                # %if.then.53
	movabsq	$.L.str.6, %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movb	$0, %al
	callq	g_printerr
	movl	$1, -4(%rbp)
	jmp	.LBB0_37
.LBB0_33:                               # %if.end.55
	movq	-32(%rbp), %rdi
	movq	option_target, %rsi
	movq	option_paste_filename, %rdx
	callq	test_clipboard_paste
	cmpl	$0, %eax
	jne	.LBB0_35
# BB#34:                                # %if.then.58
	movl	$1, -4(%rbp)
	jmp	.LBB0_37
.LBB0_35:                               # %if.end.59
	jmp	.LBB0_36
.LBB0_36:                               # %if.end.60
	movl	$0, -4(%rbp)
.LBB0_37:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.align	16, 0x90
	.type	g_error,@function
g_error:                                # @g_error
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
	subq	$400, %rsp              # imm = 0x190
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
	je	.LBB1_3
# BB#2:                                 # %entry
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
.LBB1_3:                                # %entry
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
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$4, %esi
	leaq	-32(%rbp), %r10
	movq	%r8, -8(%rbp)
	movq	%r10, %r8
	leaq	-208(%rbp), %r11
	movq	%r11, 16(%r8)
	leaq	16(%rbp), %r11
	movq	%r11, 8(%r8)
	movl	$48, 4(%r8)
	movl	$8, (%r8)
	movq	-8(%rbp), %rdx
	movq	%r10, %rcx
	callq	g_logv
	leaq	-32(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB1_1
.Lfunc_end1:
	.size	g_error, .Lfunc_end1-g_error
	.cfi_endproc

	.align	16, 0x90
	.type	test_clipboard_list_targets,@function
test_clipboard_list_targets:            # @test_clipboard_list_targets
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
	subq	$48, %rsp
	movabsq	$.L.str.29, %rax
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gdk_atom_intern
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_clipboard_wait_for_contents
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB2_8
# BB#1:                                 # %if.then
	leaq	-24(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gtk_selection_data_get_targets
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_selection_data_free
	cmpl	$0, -32(%rbp)
	je	.LBB2_7
# BB#2:                                 # %if.then.4
	movl	$0, -36(%rbp)
.LBB2_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB2_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB2_3 Depth=1
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	gdk_atom_name
	movabsq	$.L.str, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB2_3
.LBB2_6:                                # %for.end
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	$1, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	test_clipboard_list_targets, .Lfunc_end2-test_clipboard_list_targets
	.cfi_endproc

	.align	16, 0x90
	.type	test_clipboard_copy,@function
test_clipboard_copy:                    # @test_clipboard_copy
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_strdup
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	movabsq	$test_clipboard_copy_callback, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	leaq	-72(%rbp), %rdi
	movq	%rax, -48(%rbp)
	movl	$0, -40(%rbp)
	movl	$1, -36(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-80(%rbp), %r9          # 8-byte Reload
	callq	gtk_clipboard_set_with_data
	cmpl	$0, %eax
	jne	.LBB3_2
# BB#1:                                 # %if.then
	callq	g_get_prgname
	movabsq	$.L.str.30, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_printerr
	movl	$0, -4(%rbp)
	jmp	.LBB3_8
.LBB3_2:                                # %if.end
	callq	gtk_main
	cmpl	$0, -64(%rbp)
	jne	.LBB3_7
# BB#3:                                 # %if.then.8
	cmpq	$0, -56(%rbp)
	je	.LBB3_5
# BB#4:                                 # %if.then.11
	callq	g_get_prgname
	movabsq	$.L.str.31, %rdi
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_printerr
	movq	-56(%rbp), %rdi
	callq	g_error_free
	jmp	.LBB3_6
.LBB3_5:                                # %if.else
	callq	g_get_prgname
	movabsq	$.L.str.32, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_printerr
.LBB3_6:                                # %if.end.16
	movl	$0, -4(%rbp)
	jmp	.LBB3_8
.LBB3_7:                                # %if.end.17
	movl	$1, -4(%rbp)
.LBB3_8:                                # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	test_clipboard_copy, .Lfunc_end3-test_clipboard_copy
	.cfi_endproc

	.align	16, 0x90
	.type	test_clipboard_store,@function
test_clipboard_store:                   # @test_clipboard_store
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_strdup
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	movabsq	$test_clipboard_copy_callback, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	leaq	-72(%rbp), %rdi
	movq	%rax, -48(%rbp)
	movl	$0, -40(%rbp)
	movl	$1, -36(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-80(%rbp), %r9          # 8-byte Reload
	callq	gtk_clipboard_set_with_data
	cmpl	$0, %eax
	jne	.LBB4_2
# BB#1:                                 # %if.then
	callq	g_get_prgname
	movabsq	$.L.str.30, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_printerr
	movl	$0, -4(%rbp)
	jmp	.LBB4_8
.LBB4_2:                                # %if.end
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	callq	gtk_clipboard_set_can_store
	movq	-16(%rbp), %rdi
	callq	gtk_clipboard_store
	cmpl	$0, -64(%rbp)
	jne	.LBB4_7
# BB#3:                                 # %if.then.8
	cmpq	$0, -56(%rbp)
	je	.LBB4_5
# BB#4:                                 # %if.then.11
	callq	g_get_prgname
	movabsq	$.L.str.34, %rdi
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_printerr
	movq	-56(%rbp), %rdi
	callq	g_error_free
	jmp	.LBB4_6
.LBB4_5:                                # %if.else
	callq	g_get_prgname
	movabsq	$.L.str.35, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_printerr
.LBB4_6:                                # %if.end.16
	movl	$0, -4(%rbp)
	jmp	.LBB4_8
.LBB4_7:                                # %if.end.17
	movl	$1, -4(%rbp)
.LBB4_8:                                # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	test_clipboard_store, .Lfunc_end4-test_clipboard_store
	.cfi_endproc

	.align	16, 0x90
	.type	test_clipboard_paste,@function
test_clipboard_paste:                   # @test_clipboard_paste
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
	subq	$96, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	%eax, %esi
	callq	gdk_atom_intern
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_clipboard_wait_for_contents
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB5_11
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	movl	$.L.str.36, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB5_3
# BB#2:                                 # %if.then.4
	movl	$1, -56(%rbp)
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movl	$577, %esi              # imm = 0x241
	movl	$438, %edx              # imm = 0x1B6
	movq	-32(%rbp), %rdi
	movb	$0, %al
	callq	open
	movl	%eax, -56(%rbp)
.LBB5_4:                                # %if.end
	cmpl	$0, -56(%rbp)
	jge	.LBB5_6
# BB#5:                                 # %if.then.6
	callq	g_get_prgname
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movabsq	$.L.str.37, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_printerr
	movl	$0, -4(%rbp)
	jmp	.LBB5_12
.LBB5_6:                                # %if.end.10
	movq	-40(%rbp), %rdi
	callq	gtk_selection_data_get_data
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_selection_data_get_length
	movl	%eax, -52(%rbp)
	movl	-56(%rbp), %edi
	movq	-48(%rbp), %rsi
	movslq	-52(%rbp), %rdx
	callq	write
	movslq	-52(%rbp), %rdx
	cmpq	%rdx, %rax
	jge	.LBB5_8
# BB#7:                                 # %if.then.17
	movl	-56(%rbp), %edi
	callq	close
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	g_get_prgname
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movabsq	$.L.str.38, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_printerr
	movl	$0, -4(%rbp)
	jmp	.LBB5_12
.LBB5_8:                                # %if.end.22
	movl	-56(%rbp), %edi
	callq	close
	cmpl	$0, %eax
	jge	.LBB5_10
# BB#9:                                 # %if.then.26
	callq	g_get_prgname
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movabsq	$.L.str.39, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_printerr
	movl	$0, -4(%rbp)
	jmp	.LBB5_12
.LBB5_10:                               # %if.end.30
	movq	-40(%rbp), %rdi
	callq	gtk_selection_data_free
.LBB5_11:                               # %if.end.31
	movl	$1, -4(%rbp)
.LBB5_12:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	test_clipboard_paste, .Lfunc_end5-test_clipboard_paste
	.cfi_endproc

	.align	16, 0x90
	.type	test_clipboard_parse_selection,@function
test_clipboard_parse_selection:         # @test_clipboard_parse_selection
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rdi
	movl	$.L.str.24, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %ecx
	movq	%rcx, option_selection_type
	jmp	.LBB6_9
.LBB6_2:                                # %if.else
	movq	-24(%rbp), %rdi
	movl	$.L.str.25, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB6_4
# BB#3:                                 # %if.then.3
	movl	$2, %eax
	movl	%eax, %ecx
	movq	%rcx, option_selection_type
	jmp	.LBB6_8
.LBB6_4:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movl	$.L.str.26, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB6_6
# BB#5:                                 # %if.then.7
	movl	$69, %eax
	movl	%eax, %ecx
	movq	%rcx, option_selection_type
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.8
	movl	$0, -4(%rbp)
	jmp	.LBB6_10
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.9
	jmp	.LBB6_9
.LBB6_9:                                # %if.end.10
	movl	$1, -4(%rbp)
.LBB6_10:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	test_clipboard_parse_selection, .Lfunc_end6-test_clipboard_parse_selection
	.cfi_endproc

	.align	16, 0x90
	.type	test_clipboard_show_version,@function
test_clipboard_show_version:            # @test_clipboard_show_version
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
	movabsq	$.L.str.27, %rdi
	movabsq	$.L.str.28, %rsi
	movb	$0, %al
	callq	g_print
	xorl	%edi, %edi
	callq	exit
.Lfunc_end7:
	.size	test_clipboard_show_version, .Lfunc_end7-test_clipboard_show_version
	.cfi_endproc

	.align	16, 0x90
	.type	test_clipboard_copy_callback,@function
test_clipboard_copy_callback:           # @test_clipboard_copy_callback
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
	subq	$80, %rsp
	leaq	-48(%rbp), %rax
	leaq	-56(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-40(%rbp), %rcx
	addq	$16, %rcx
	movq	%rax, %rsi
	movq	%r8, %rdx
	callq	g_file_get_contents
	cmpl	$0, %eax
	jne	.LBB8_4
# BB#1:                                 # %if.then
	cmpq	$0, option_store_filename
	jne	.LBB8_3
# BB#2:                                 # %if.then.2
	callq	gtk_main_quit
.LBB8_3:                                # %if.end
	jmp	.LBB8_5
.LBB8_4:                                # %if.end.3
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_selection_data_get_target
	movl	$8, %edx
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdi
	movl	%edi, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	%esi, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movl	-68(%rbp), %r8d         # 4-byte Reload
	callq	gtk_selection_data_set
	movq	-48(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.33, %rdi
	movabsq	$.L__func__.test_clipboard_copy_callback, %rsi
	movq	-40(%rbp), %rax
	movl	$1, 8(%rax)
	movb	$0, %al
	callq	g_print
.LBB8_5:                                # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	test_clipboard_copy_callback, .Lfunc_end8-test_clipboard_copy_callback
	.cfi_endproc

	.type	main_entries,@object    # @main_entries
	.section	.rodata,"a",@progbits
	.align	16
main_entries:
	.quad	.L.str.7
	.byte	115                     # 0x73
	.zero	3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.zero	4
	.quad	test_clipboard_parse_selection
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.byte	108                     # 0x6c
	.zero	3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	option_list_targets
	.quad	.L.str.11
	.quad	0
	.quad	.L.str.12
	.byte	116                     # 0x74
	.zero	3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	option_target
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.15
	.byte	99                      # 0x63
	.zero	3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	option_copy_filename
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.18
	.byte	83                      # 0x53
	.zero	3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	option_store_filename
	.quad	.L.str.19
	.quad	.L.str.17
	.quad	.L.str.20
	.byte	112                     # 0x70
	.zero	3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	option_paste_filename
	.quad	.L.str.21
	.quad	.L.str.17
	.quad	.L.str.22
	.byte	118                     # 0x76
	.zero	3
	.long	8                       # 0x8
	.long	3                       # 0x3
	.zero	4
	.quad	test_clipboard_show_version
	.quad	.L.str.23
	.quad	0
	.zero	48
	.size	main_entries, 384

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s\n"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Could not initialize the graphical user interface.\nMake sure a proper setup for your display environment exists."
	.size	.L.str.1, 113

	.type	option_selection_type,@object # @option_selection_type
	.data
	.align	8
option_selection_type:
	.quad	69
	.size	option_selection_type, 8

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"gtk_clipboard_get_for_display"
	.size	.L.str.2, 30

	.type	option_list_targets,@object # @option_list_targets
	.local	option_list_targets
	.comm	option_list_targets,4,4
	.type	option_copy_filename,@object # @option_copy_filename
	.local	option_copy_filename
	.comm	option_copy_filename,8,8
	.type	option_paste_filename,@object # @option_paste_filename
	.local	option_paste_filename
	.comm	option_paste_filename,8,8
	.type	option_store_filename,@object # @option_store_filename
	.local	option_store_filename
	.comm	option_store_filename,8,8
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Can't perform two operations at the same time\n"
	.size	.L.str.3, 47

	.type	option_target,@object   # @option_target
	.local	option_target
	.comm	option_target,8,8
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Usage: %s -t <target> -c <file>\n"
	.size	.L.str.4, 33

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Usage: %s -t <target> -S <file>\n"
	.size	.L.str.5, 33

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Usage: %s -t <target> -p <file>\n"
	.size	.L.str.6, 33

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"selection-type"
	.size	.L.str.7, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Selection type (primary|secondary|clipboard)"
	.size	.L.str.8, 45

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"<type>"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"list-targets"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"List the targets offered by the clipboard"
	.size	.L.str.11, 42

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"target"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"The target format to copy or paste"
	.size	.L.str.13, 35

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"<target>"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"copy"
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Copy <file> to clipboard"
	.size	.L.str.16, 25

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"<file>"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"store"
	.size	.L.str.18, 6

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Store <file> in the clipboard manager"
	.size	.L.str.19, 38

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"paste"
	.size	.L.str.20, 6

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Paste clipoard into <file> ('-' pastes to STDOUT)"
	.size	.L.str.21, 50

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"version"
	.size	.L.str.22, 8

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Show version information and exit"
	.size	.L.str.23, 34

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"primary"
	.size	.L.str.24, 8

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"secondary"
	.size	.L.str.25, 10

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"clipboard"
	.size	.L.str.26, 10

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"test-clipboard (GIMP clipboard testbed) version %s\n"
	.size	.L.str.27, 52

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"2.8.18"
	.size	.L.str.28, 7

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"TARGETS"
	.size	.L.str.29, 8

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"%s: gtk_clipboard_set_with_data() failed\n"
	.size	.L.str.30, 42

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"%s: copying failed: %s\n"
	.size	.L.str.31, 24

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%s: copying failed\n"
	.size	.L.str.32, 20

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"%s: data transfer in progress, hit <ctrl>+c when pasted..."
	.size	.L.str.33, 59

	.type	.L__func__.test_clipboard_copy_callback,@object # @__func__.test_clipboard_copy_callback
.L__func__.test_clipboard_copy_callback:
	.asciz	"test_clipboard_copy_callback"
	.size	.L__func__.test_clipboard_copy_callback, 29

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"%s: storing failed: %s\n"
	.size	.L.str.34, 24

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"%s: could not contact clipboard manager\n"
	.size	.L.str.35, 41

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"-"
	.size	.L.str.36, 2

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"%s: open() filed: %s"
	.size	.L.str.37, 21

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"%s: write() failed: %s"
	.size	.L.str.38, 23

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"%s: close() failed: %s"
	.size	.L.str.39, 23


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
