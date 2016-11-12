	.text
	.file	"gimp-test-session-utils.bc"
	.globl	gimp_test_session_load_and_write_session_files
	.align	16, 0x90
	.type	gimp_test_session_load_and_write_session_files,@function
gimp_test_session_load_and_write_session_files: # @gimp_test_session_load_and_write_session_files
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
	subq	$264, %rsp              # imm = 0x108
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
	movabsq	$.L.str, %rax
	movabsq	$.L.str.1, %r9
	xorl	%r10d, %r10d
	movl	$32, %r11d
	movl	%r11d, %ebx
	leaq	-216(%rbp), %r14
	leaq	-184(%rbp), %r15
	leaq	-152(%rbp), %r12
	leaq	-120(%rbp), %r13
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movl	%r8d, -76(%rbp)
	movq	%r13, %rdi
	movl	%r10d, %esi
	movq	%rbx, %rdx
	movq	%r14, -240(%rbp)        # 8-byte Spill
	movq	%r15, -248(%rbp)        # 8-byte Spill
	movq	%r12, -256(%rbp)        # 8-byte Spill
	movl	%r10d, -260(%rbp)       # 4-byte Spill
	movq	%rbx, -272(%rbp)        # 8-byte Spill
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movq	%r9, -288(%rbp)         # 8-byte Spill
	callq	memset
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	movl	-260(%rbp), %esi        # 4-byte Reload
	movq	-272(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	movl	-260(%rbp), %esi        # 4-byte Reload
	movq	-272(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	movl	-260(%rbp), %esi        # 4-byte Reload
	movq	-272(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movq	$0, -224(%rbp)
	movq	$0, -232(%rbp)
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	-288(%rbp), %rsi        # 8-byte Reload
	callq	gimp_test_utils_set_gimp2_directory
	callq	gimp_test_utils_setup_menus_dir
	movq	-64(%rbp), %rdi
	callq	gimp_personal_rc_file
	movq	%rax, -224(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_personal_rc_file
	movq	%rax, -232(%rbp)
# BB#1:                                 # %do.body
	leaq	-120(%rbp), %rsi
	movq	-224(%rbp), %rdi
	callq	gimp_test_get_file_state_verbose
	cmpl	$0, %eax
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.2, %rsi
	movl	$191, %edx
	movabsq	$.L__func__.gimp_test_session_load_and_write_session_files, %rcx
	movabsq	$.L.str.3, %r8
	callq	g_assertion_message_expr
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.3
	leaq	-152(%rbp), %rsi
	movq	-232(%rbp), %rdi
	callq	gimp_test_get_file_state_verbose
	cmpl	$0, %eax
	je	.LBB0_8
# BB#7:                                 # %if.then.6
	jmp	.LBB0_9
.LBB0_8:                                # %if.else.7
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.2, %rsi
	movl	$193, %edx
	movabsq	$.L__func__.gimp_test_session_load_and_write_session_files, %rcx
	movabsq	$.L.str.4, %r8
	callq	g_assertion_message_expr
.LBB0_9:                                # %if.end.8
	jmp	.LBB0_10
.LBB0_10:                               # %do.end.9
	movabsq	$.L.str.5, %rdi
	movl	$1, %edx
	movq	-48(%rbp), %rsi
	callq	g_setenv
	movabsq	$.L.str.6, %rdi
	movl	$1, %edx
	movq	-56(%rbp), %rsi
	movl	%eax, -292(%rbp)        # 4-byte Spill
	callq	g_setenv
	movl	$1, %edi
	movl	%eax, -296(%rbp)        # 4-byte Spill
	callq	gimp_init_for_gui_testing
	movq	%rax, -88(%rbp)
	callq	gimp_test_run_mainloop_until_idle
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %rsi
	callq	gimp_test_utils_set_gimp2_directory
	movabsq	$.L.str.5, %rdi
	callq	g_unsetenv
	movabsq	$.L.str.6, %rdi
	callq	g_unsetenv
	movq	-224(%rbp), %rdi
	callq	g_free
	movq	-232(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.9, %rdi
	callq	gimp_personal_rc_file
	movabsq	$.L.str.10, %rdi
	movq	%rax, -224(%rbp)
	callq	gimp_personal_rc_file
	movl	$1, %esi
	movq	%rax, -232(%rbp)
	movq	-88(%rbp), %rdi
	callq	gimp_exit
# BB#11:                                # %do.body.15
	leaq	-184(%rbp), %rsi
	movq	-224(%rbp), %rdi
	callq	gimp_test_get_file_state_verbose
	cmpl	$0, %eax
	je	.LBB0_13
# BB#12:                                # %if.then.18
	jmp	.LBB0_14
.LBB0_13:                               # %if.else.19
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.2, %rsi
	movl	$228, %edx
	movabsq	$.L__func__.gimp_test_session_load_and_write_session_files, %rcx
	movabsq	$.L.str.11, %r8
	callq	g_assertion_message_expr
.LBB0_14:                               # %if.end.20
	jmp	.LBB0_15
.LBB0_15:                               # %do.end.21
	jmp	.LBB0_16
.LBB0_16:                               # %do.body.22
	leaq	-216(%rbp), %rsi
	movq	-232(%rbp), %rdi
	callq	gimp_test_get_file_state_verbose
	cmpl	$0, %eax
	je	.LBB0_18
# BB#17:                                # %if.then.25
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.26
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.2, %rsi
	movl	$230, %edx
	movabsq	$.L__func__.gimp_test_session_load_and_write_session_files, %rcx
	movabsq	$.L.str.12, %r8
	callq	g_assertion_message_expr
.LBB0_19:                               # %if.end.27
	jmp	.LBB0_20
.LBB0_20:                               # %do.end.28
	jmp	.LBB0_21
.LBB0_21:                               # %do.body.29
	movabsq	$.L.str.9, %rdi
	leaq	-120(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	callq	gimp_test_file_state_changes
	cmpl	$0, %eax
	je	.LBB0_23
# BB#22:                                # %if.then.32
	jmp	.LBB0_24
.LBB0_23:                               # %if.else.33
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.2, %rsi
	movl	$240, %edx
	movabsq	$.L__func__.gimp_test_session_load_and_write_session_files, %rcx
	movabsq	$.L.str.13, %r8
	callq	g_assertion_message_expr
.LBB0_24:                               # %if.end.34
	jmp	.LBB0_25
.LBB0_25:                               # %do.end.35
	jmp	.LBB0_26
.LBB0_26:                               # %do.body.36
	movabsq	$.L.str.10, %rdi
	leaq	-152(%rbp), %rsi
	leaq	-216(%rbp), %rdx
	callq	gimp_test_file_state_changes
	cmpl	$0, %eax
	je	.LBB0_28
# BB#27:                                # %if.then.39
	jmp	.LBB0_29
.LBB0_28:                               # %if.else.40
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.2, %rsi
	movl	$243, %edx
	movabsq	$.L__func__.gimp_test_session_load_and_write_session_files, %rcx
	movabsq	$.L.str.14, %r8
	callq	g_assertion_message_expr
.LBB0_29:                               # %if.end.41
	jmp	.LBB0_30
.LBB0_30:                               # %do.end.42
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_test_session_load_and_write_session_files, .Lfunc_end0-gimp_test_session_load_and_write_session_files
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_test_get_file_state_verbose,@function
gimp_test_get_file_state_verbose:       # @gimp_test_get_file_state_verbose
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, -20(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_strdup
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi)
	cmpl	$0, -20(%rbp)
	je	.LBB1_4
# BB#1:                                 # %if.then
	leaq	-32(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_file_get_contents
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then.4
	xorl	%edi, %edi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	g_compute_checksum_for_string
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
.LBB1_3:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	g_free
.LBB1_4:                                # %if.end.6
	cmpl	$0, -20(%rbp)
	je	.LBB1_9
# BB#5:                                 # %if.then.8
	movq	-8(%rbp), %rdi
	callq	g_file_new_for_path
	movabsq	$.L.str.15, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	g_file_query_info
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB1_7
# BB#6:                                 # %if.then.12
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rsi
	callq	g_file_info_get_modification_time
	movl	$1, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	jmp	.LBB1_8
.LBB1_7:                                # %if.else
	movl	$0, -20(%rbp)
.LBB1_8:                                # %if.end.13
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB1_9:                                # %if.end.14
	cmpl	$0, -20(%rbp)
	jne	.LBB1_11
# BB#10:                                # %if.then.16
	movabsq	$.L.str.16, %rdi
	movq	-8(%rbp), %rsi
	movb	$0, %al
	callq	g_printerr
.LBB1_11:                               # %if.end.17
	movl	-20(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_test_get_file_state_verbose, .Lfunc_end1-gimp_test_get_file_state_verbose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_test_file_state_changes,@function
gimp_test_file_state_changes:           # @gimp_test_file_state_changes
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	-32(%rbp), %rsi
	cmpq	16(%rsi), %rdx
	jne	.LBB2_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movabsq	$.L.str.17, %rdi
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	g_printerr
	movl	$0, -4(%rbp)
	jmp	.LBB2_6
.LBB2_3:                                # %if.end
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB2_5
# BB#4:                                 # %if.then.9
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.18, %rcx
	movq	%rcx, -80(%rbp)
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	g_printerr
	xorl	%edx, %edx
	movl	%edx, %ecx
	movl	$4, %edx
	leaq	-80(%rbp), %rsi
	movq	%rcx, %rdi
	movl	%edx, -84(%rbp)         # 4-byte Spill
	movq	%rcx, %rdx
	movl	-84(%rbp), %r8d         # 4-byte Reload
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movl	%r8d, %ecx
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	g_spawn_sync
	movl	$0, -4(%rbp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB2_6
.LBB2_5:                                # %if.end.16
	movl	$1, -4(%rbp)
.LBB2_6:                                # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_test_file_state_changes, .Lfunc_end2-gimp_test_file_state_changes
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GIMP_TESTING_ABS_TOP_SRCDIR"
	.size	.L.str, 28

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"app/tests/gimpdir"
	.size	.L.str.1, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-test-session-utils.c"
	.size	.L.str.2, 26

	.type	.L__func__.gimp_test_session_load_and_write_session_files,@object # @__func__.gimp_test_session_load_and_write_session_files
.L__func__.gimp_test_session_load_and_write_session_files:
	.asciz	"gimp_test_session_load_and_write_session_files"
	.size	.L__func__.gimp_test_session_load_and_write_session_files, 47

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp_test_get_file_state_verbose (sessionrc_filename, &initial_sessionrc_state)"
	.size	.L.str.3, 80

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp_test_get_file_state_verbose (dockrc_filename, &initial_dockrc_state)"
	.size	.L.str.4, 74

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_TESTING_SESSIONRC_NAME"
	.size	.L.str.5, 28

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_TESTING_DOCKRC_NAME"
	.size	.L.str.6, 25

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_TESTING_ABS_TOP_BUILDDIR"
	.size	.L.str.7, 30

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"app/tests/gimpdir-output"
	.size	.L.str.8, 25

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"sessionrc"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"dockrc"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp_test_get_file_state_verbose (sessionrc_filename, &final_sessionrc_state)"
	.size	.L.str.11, 78

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp_test_get_file_state_verbose (dockrc_filename, &final_dockrc_state)"
	.size	.L.str.12, 72

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp_test_file_state_changes (\"sessionrc\", &initial_sessionrc_state, &final_sessionrc_state)"
	.size	.L.str.13, 93

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp_test_file_state_changes (\"dockrc\", &initial_dockrc_state, &final_dockrc_state)"
	.size	.L.str.14, 84

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"time::modified"
	.size	.L.str.15, 15

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Failed to get initial file info for '%s'\n"
	.size	.L.str.16, 42

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"A new '%s' was not created\n"
	.size	.L.str.17, 28

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"diff"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"-u"
	.size	.L.str.19, 3

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"'%s' was changed but should not have been. Reason, using `diff -u $expected $actual`\n"
	.size	.L.str.20, 86


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
