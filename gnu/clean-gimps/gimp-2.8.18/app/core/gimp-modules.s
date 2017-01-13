	.text
	.file	"gimp-modules.bc"
	.globl	gimp_modules_init
	.align	16, 0x90
	.type	gimp_modules_init,@function
gimp_modules_init:                      # @gimp_modules_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_modules_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_14
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpl	$0, 68(%rax)
	jne	.LBB0_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movl	56(%rax), %edi
	callq	gimp_module_db_new
	movq	-8(%rbp), %rcx
	movq	%rax, 360(%rcx)
	movq	-8(%rbp), %rax
	movl	$0, 368(%rax)
.LBB0_14:                               # %if.end.14
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_modules_init, .Lfunc_end0-gimp_modules_init
	.cfi_endproc

	.globl	gimp_modules_exit
	.align	16, 0x90
	.type	gimp_modules_exit,@function
gimp_modules_exit:                      # @gimp_modules_exit
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_modules_exit, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_14
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 360(%rax)
	je	.LBB1_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movq	$0, 360(%rax)
.LBB1_14:                               # %if.end.15
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_modules_exit, .Lfunc_end1-gimp_modules_exit
	.cfi_endproc

	.globl	gimp_modules_load
	.align	16, 0x90
	.type	gimp_modules_load,@function
gimp_modules_load:                      # @gimp_modules_load
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
	movq	$0, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_modules_load, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_38
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpl	$0, 68(%rax)
	je	.LBB2_14
# BB#13:                                # %if.then.12
	jmp	.LBB2_38
.LBB2_14:                               # %if.end.13
	movabsq	$.L.str.2, %rdi
	movq	-8(%rbp), %rax
	movl	56(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	movl	%ecx, 40(%rax)
	callq	gimp_personal_rc_file
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB2_16
# BB#15:                                # %if.then.17
	movq	-16(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.3, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB2_16:                               # %if.end.19
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_scanner_new_file
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_free
	cmpq	$0, -32(%rbp)
	je	.LBB2_35
# BB#17:                                # %if.then.22
	xorl	%esi, %esi
	movabsq	$.L.str.4, %rdx
	movl	$1, %eax
	movl	%eax, %ecx
	movq	$0, -80(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_scanner_scope_add_symbol
	movl	$40, -68(%rbp)
.LBB2_18:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rdi
	callq	g_scanner_peek_next_token
	cmpl	-68(%rbp), %eax
	jne	.LBB2_29
# BB#19:                                # %while.body
                                        #   in Loop: Header=BB2_18 Depth=1
	movq	-32(%rbp), %rdi
	callq	g_scanner_get_next_token
	movl	%eax, -68(%rbp)
	movl	%eax, %ecx
	subl	$40, %eax
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB2_20
	jmp	.LBB2_39
.LBB2_39:                               # %while.body
                                        #   in Loop: Header=BB2_18 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$41, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB2_26
	jmp	.LBB2_40
.LBB2_40:                               # %while.body
                                        #   in Loop: Header=BB2_18 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$265, %eax              # imm = 0x109
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB2_21
	jmp	.LBB2_27
.LBB2_20:                               # %sw.bb
                                        #   in Loop: Header=BB2_18 Depth=1
	movl	$265, -68(%rbp)         # imm = 0x109
	jmp	.LBB2_28
.LBB2_21:                               # %sw.bb.28
                                        #   in Loop: Header=BB2_18 Depth=1
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	cmpq	%rcx, 48(%rdx)
	jne	.LBB2_25
# BB#22:                                # %if.then.30
                                        #   in Loop: Header=BB2_18 Depth=1
	leaq	-40(%rbp), %rsi
	movl	$264, -68(%rbp)         # imm = 0x108
	movq	-32(%rbp), %rdi
	callq	gimp_scanner_parse_string_no_validate
	cmpl	$0, %eax
	jne	.LBB2_24
# BB#23:                                # %if.then.33
	jmp	.LBB2_32
.LBB2_24:                               # %if.end.34
                                        #   in Loop: Header=BB2_18 Depth=1
	jmp	.LBB2_25
.LBB2_25:                               # %if.end.35
                                        #   in Loop: Header=BB2_18 Depth=1
	movl	$41, -68(%rbp)
	jmp	.LBB2_28
.LBB2_26:                               # %sw.bb.36
                                        #   in Loop: Header=BB2_18 Depth=1
	movl	$40, -68(%rbp)
	jmp	.LBB2_28
.LBB2_27:                               # %sw.default
                                        #   in Loop: Header=BB2_18 Depth=1
	jmp	.LBB2_28
.LBB2_28:                               # %sw.epilog
                                        #   in Loop: Header=BB2_18 Depth=1
	jmp	.LBB2_18
.LBB2_29:                               # %while.end
	cmpl	$40, -68(%rbp)
	je	.LBB2_31
# BB#30:                                # %if.then.38
	movq	-32(%rbp), %rdi
	callq	g_scanner_get_next_token
	movabsq	$.L.str.5, %rdi
	movq	-32(%rbp), %rcx
	movl	-68(%rbp), %esi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%esi, -104(%rbp)        # 4-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$1, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-104(%rbp), %edx        # 4-byte Reload
	movl	%esi, -116(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movq	%rcx, %rdx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movq	-128(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movl	$1, (%rsp)
	callq	g_scanner_unexp_token
.LBB2_31:                               # %if.end.41
	jmp	.LBB2_32
.LBB2_32:                               # %error.42
	cmpq	$0, -80(%rbp)
	je	.LBB2_34
# BB#33:                                # %if.then.44
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movq	-8(%rbp), %rdi
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
	leaq	-80(%rbp), %rdi
	callq	g_clear_error
.LBB2_34:                               # %if.end.45
	movq	-32(%rbp), %rdi
	callq	gimp_scanner_destroy
.LBB2_35:                               # %if.end.46
	cmpq	$0, -40(%rbp)
	je	.LBB2_37
# BB#36:                                # %if.then.48
	movq	-8(%rbp), %rax
	movq	360(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_module_db_set_load_inhibit
	movq	-40(%rbp), %rdi
	callq	g_free
.LBB2_37:                               # %if.end.50
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	80(%rcx), %rdi
	callq	gimp_config_path_expand
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	360(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_module_db_load
	movq	-24(%rbp), %rdi
	callq	g_free
.LBB2_38:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_modules_load, .Lfunc_end2-gimp_modules_load
	.cfi_endproc

	.globl	gimp_modules_unload
	.align	16, 0x90
	.type	gimp_modules_unload,@function
gimp_modules_unload:                    # @gimp_modules_unload
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_modules_unload, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_24
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpl	$0, 68(%rax)
	jne	.LBB3_24
# BB#13:                                # %land.lhs.true.12
	movq	-8(%rbp), %rax
	cmpl	$0, 368(%rax)
	je	.LBB3_24
# BB#14:                                # %if.then.14
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	$0, -72(%rbp)
	callq	g_string_new
	movabsq	$add_to_inhibit_string, %rsi
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	360(%rax), %rax
	movq	24(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	callq	g_list_foreach
	movq	-48(%rbp), %rax
	cmpq	$0, 8(%rax)
	jbe	.LBB3_16
# BB#15:                                # %if.then.22
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB3_17
.LBB3_16:                               # %if.else.24
	movabsq	$.L.str.6, %rax
	movq	%rax, -56(%rbp)
.LBB3_17:                               # %if.end.25
	movabsq	$.L.str.2, %rdi
	callq	gimp_personal_rc_file
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB3_19
# BB#18:                                # %if.then.28
	movq	-64(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.7, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB3_19:                               # %if.end.30
	movl	$1, %esi
	movabsq	$.L.str.8, %rdx
	leaq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdi
	callq	gimp_config_writer_new_file
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rdi
	callq	g_free
	cmpq	$0, -40(%rbp)
	je	.LBB3_21
# BB#20:                                # %if.then.33
	movabsq	$.L.str.4, %rsi
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_open
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_config_writer_string
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_close
	movabsq	$.L.str.9, %rsi
	leaq	-72(%rbp), %rdx
	movq	-40(%rbp), %rdi
	callq	gimp_config_writer_finish
	movq	-8(%rbp), %rdx
	movl	$0, 368(%rdx)
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB3_21:                               # %if.end.36
	movl	$1, %esi
	movq	-48(%rbp), %rdi
	callq	g_string_free
	cmpq	$0, -72(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	je	.LBB3_23
# BB#22:                                # %if.then.39
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movq	-8(%rbp), %rdi
	movq	-72(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
	leaq	-72(%rbp), %rdi
	callq	g_clear_error
.LBB3_23:                               # %if.end.40
	jmp	.LBB3_24
.LBB3_24:                               # %if.end.41
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_modules_unload, .Lfunc_end3-gimp_modules_unload
	.cfi_endproc

	.align	16, 0x90
	.type	add_to_inhibit_string,@function
add_to_inhibit_string:                  # @add_to_inhibit_string
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	cmpl	$0, 76(%rsi)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movl	$58, %esi
	movq	-32(%rbp), %rdi
	callq	g_string_append_c_inline
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	56(%rcx), %rsi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_string_append
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB4_2:                                # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	add_to_inhibit_string, .Lfunc_end4-add_to_inhibit_string
	.cfi_endproc

	.globl	gimp_modules_refresh
	.align	16, 0x90
	.type	gimp_modules_refresh,@function
gimp_modules_refresh:                   # @gimp_modules_refresh
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_modules_refresh, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_14
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpl	$0, 68(%rax)
	jne	.LBB5_14
# BB#13:                                # %if.then.12
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	80(%rcx), %rdi
	callq	gimp_config_path_expand
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	360(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_module_db_refresh
	movq	-40(%rbp), %rdi
	callq	g_free
.LBB5_14:                               # %if.end.15
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_modules_refresh, .Lfunc_end5-gimp_modules_refresh
	.cfi_endproc

	.align	16, 0x90
	.type	g_string_append_c_inline,@function
g_string_append_c_inline:               # @g_string_append_c_inline
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

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_modules_init,@object # @__func__.gimp_modules_init
.L__func__.gimp_modules_init:
	.asciz	"gimp_modules_init"
	.size	.L__func__.gimp_modules_init, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	.L__func__.gimp_modules_exit,@object # @__func__.gimp_modules_exit
.L__func__.gimp_modules_exit:
	.asciz	"gimp_modules_exit"
	.size	.L__func__.gimp_modules_exit, 18

	.type	.L__func__.gimp_modules_load,@object # @__func__.gimp_modules_load
.L__func__.gimp_modules_load:
	.asciz	"gimp_modules_load"
	.size	.L__func__.gimp_modules_load, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"modulerc"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Parsing '%s'\n"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"module-load-inhibit"
	.size	.L.str.4, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"fatal parse error"
	.size	.L.str.5, 18

	.type	.L__func__.gimp_modules_unload,@object # @__func__.gimp_modules_unload
.L__func__.gimp_modules_unload:
	.asciz	"gimp_modules_unload"
	.size	.L__func__.gimp_modules_unload, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.zero	1
	.size	.L.str.6, 1

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Writing '%s'\n"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP modulerc"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"end of modulerc"
	.size	.L.str.9, 16

	.type	.L__func__.gimp_modules_refresh,@object # @__func__.gimp_modules_refresh
.L__func__.gimp_modules_refresh:
	.asciz	"gimp_modules_refresh"
	.size	.L__func__.gimp_modules_refresh, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
