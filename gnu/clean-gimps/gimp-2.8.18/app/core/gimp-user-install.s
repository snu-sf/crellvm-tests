	.text
	.file	"gimp-user-install.bc"
	.globl	gimp_user_install_new
	.align	16, 0x90
	.type	gimp_user_install_new,@function
gimp_user_install_new:                  # @gimp_user_install_new
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
	movl	$48, %eax
	movl	%eax, %ecx
	movl	%edi, -4(%rbp)
	movq	%rcx, %rdi
	callq	g_slice_alloc0
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_directory
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_user_install_detect_old
	movq	-16(%rbp), %rcx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_user_install_new, .Lfunc_end0-gimp_user_install_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_user_install_detect_old,@function
gimp_user_install_detect_old:           # @gimp_user_install_detect_old
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movabsq	$.L.str.4, %rsi
	movq	%rax, -24(%rbp)
	movl	$0, -36(%rbp)
	movq	-24(%rbp), %rdi
	callq	strstr
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB1_8
# BB#1:                                 # %if.then
	movl	$8, -40(%rbp)
.LBB1_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -40(%rbp)
	jl	.LBB1_7
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$2, %eax
	movl	%eax, %esi
	movabsq	$.L.str.5, %rdx
	movq	-32(%rbp), %rcx
	addq	$2, %rcx
	movl	-40(%rbp), %eax
	movq	%rcx, %rdi
	movl	%eax, %ecx
	movb	$0, %al
	callq	g_snprintf
	movl	$4, %esi
	movq	-24(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_file_test
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB1_5
# BB#4:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movl	$2, 16(%rax)
	movl	-40(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 20(%rax)
	jmp	.LBB1_7
.LBB1_5:                                # %if.end
                                        #   in Loop: Header=BB1_2 Depth=1
	jmp	.LBB1_6
.LBB1_6:                                # %for.inc
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	-40(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB1_2
.LBB1_7:                                # %for.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	cmpl	$0, -36(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	.LBB1_11
.LBB1_10:                               # %if.else
	movq	-24(%rbp), %rdi
	callq	g_free
.LBB1_11:                               # %if.end.10
	movl	-36(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_user_install_detect_old, .Lfunc_end1-gimp_user_install_detect_old
	.cfi_endproc

	.globl	gimp_user_install_run
	.align	16, 0x90
	.type	gimp_user_install_run,@function
gimp_user_install_run:                  # @gimp_user_install_run
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_user_install_run, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB2_15
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	callq	gimp_directory
	movq	%rax, %rdi
	callq	g_filename_display_name
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB2_7
# BB#6:                                 # %if.then.2
	movabsq	$.L.str.2, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	24(%rdi), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	user_install_log
	jmp	.LBB2_8
.LBB2_7:                                # %if.else.5
	movabsq	$.L.str.3, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	user_install_log
.LBB2_8:                                # %if.end.7
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rdi
	callq	user_install_log_newline
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_directory
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	user_install_mkdir_with_parents
	cmpl	$0, %eax
	jne	.LBB2_10
# BB#9:                                 # %if.then.11
	movl	$0, -4(%rbp)
	jmp	.LBB2_15
.LBB2_10:                               # %if.end.12
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB2_14
# BB#11:                                # %if.then.15
	movq	-16(%rbp), %rdi
	callq	user_install_migrate_files
	cmpl	$0, %eax
	jne	.LBB2_13
# BB#12:                                # %if.then.18
	movl	$0, -4(%rbp)
	jmp	.LBB2_15
.LBB2_13:                               # %if.end.19
	jmp	.LBB2_14
.LBB2_14:                               # %if.end.20
	movq	-16(%rbp), %rdi
	callq	user_install_create_files
	movl	%eax, -4(%rbp)
.LBB2_15:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_user_install_run, .Lfunc_end2-gimp_user_install_run
	.cfi_endproc

	.align	16, 0x90
	.type	user_install_log,@function
user_install_log:                       # @user_install_log
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
	subq	$416, %rsp              # imm = 0x1A0
	testb	%al, %al
	movaps	%xmm7, -256(%rbp)       # 16-byte Spill
	movaps	%xmm6, -272(%rbp)       # 16-byte Spill
	movaps	%xmm5, -288(%rbp)       # 16-byte Spill
	movaps	%xmm4, -304(%rbp)       # 16-byte Spill
	movaps	%xmm3, -320(%rbp)       # 16-byte Spill
	movaps	%xmm2, -336(%rbp)       # 16-byte Spill
	movaps	%xmm1, -352(%rbp)       # 16-byte Spill
	movaps	%xmm0, -368(%rbp)       # 16-byte Spill
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%r9, -384(%rbp)         # 8-byte Spill
	movq	%r8, -392(%rbp)         # 8-byte Spill
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	je	.LBB3_8
# BB#7:                                 # %entry
	movaps	-368(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -192(%rbp)
	movaps	-352(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -176(%rbp)
	movaps	-336(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -160(%rbp)
	movaps	-320(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -144(%rbp)
	movaps	-304(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -128(%rbp)
	movaps	-288(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -112(%rbp)
	movaps	-272(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -96(%rbp)
	movaps	-256(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -80(%rbp)
.LBB3_8:                                # %entry
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -208(%rbp)
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -216(%rbp)
	movq	-408(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -224(%rbp)
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	-376(%rbp), %r8         # 8-byte Reload
	leaq	-48(%rbp), %r9
	movq	%r8, -8(%rbp)
	movq	%rdi, -16(%rbp)
	leaq	-240(%rbp), %rdi
	movq	%rdi, 16(%r9)
	leaq	16(%rbp), %rdi
	movq	%rdi, 8(%r9)
	movl	$48, 4(%r9)
	movl	$16, (%r9)
	cmpq	$0, -16(%rbp)
	je	.LBB3_6
# BB#1:                                 # %if.then
	leaq	-48(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	g_strdup_vprintf
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB3_3
# BB#2:                                 # %if.then.4
	movabsq	$.L.str.6, %rdi
	movq	-56(%rbp), %rsi
	movb	$0, %al
	callq	g_print
.LBB3_3:                                # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB3_5
# BB#4:                                 # %if.then.6
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rdx
	callq	*%rax
.LBB3_5:                                # %if.end.8
	movq	-56(%rbp), %rdi
	callq	g_free
.LBB3_6:                                # %if.end.9
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end3:
	.size	user_install_log, .Lfunc_end3-user_install_log
	.cfi_endproc

	.align	16, 0x90
	.type	user_install_log_newline,@function
user_install_log_newline:               # @user_install_log_newline
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, (%rdi)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.7, %rdi
	movb	$0, %al
	callq	g_print
.LBB4_2:                                # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB4_4
# BB#3:                                 # %if.then.2
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%esi, %esi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	callq	*%rcx
.LBB4_4:                                # %if.end.4
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	user_install_log_newline, .Lfunc_end4-user_install_log_newline
	.cfi_endproc

	.align	16, 0x90
	.type	user_install_mkdir_with_parents,@function
user_install_mkdir_with_parents:        # @user_install_mkdir_with_parents
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
	subq	$80, %rsp
	movabsq	$.L.str.8, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	user_install_log
	movl	$493, %esi              # imm = 0x1ED
	movq	-24(%rbp), %rdi
	callq	g_mkdir_with_parents
	cmpl	$-1, %eax
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movq	$0, -32(%rbp)
	callq	g_file_error_quark
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.9, %rdi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	leaq	-32(%rbp), %rdi
	movl	-52(%rbp), %esi         # 4-byte Reload
	movl	-56(%rbp), %edx         # 4-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	leaq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	user_install_log_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_3
.LBB5_2:                                # %if.end
	movl	$1, -4(%rbp)
.LBB5_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	user_install_mkdir_with_parents, .Lfunc_end5-user_install_mkdir_with_parents
	.cfi_endproc

	.align	16, 0x90
	.type	user_install_migrate_files,@function
user_install_migrate_files:             # @user_install_migrate_files
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
	subq	$1136, %rsp             # imm = 0x470
	xorl	%esi, %esi
	leaq	-1072(%rbp), %rdx
	movq	%rdi, -16(%rbp)
	movq	$0, -1072(%rbp)
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	g_dir_open
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	leaq	-1072(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	user_install_log_error
	movl	$0, -4(%rbp)
	jmp	.LBB6_24
.LBB6_2:                                # %if.end
	jmp	.LBB6_3
.LBB6_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rdi
	callq	g_dir_read_name
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	je	.LBB6_23
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB6_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-32(%rbp), %rsi
	movb	$0, %al
	callq	g_build_filename
	movl	$1, %esi
	movq	%rax, -1080(%rbp)
	movq	-1080(%rbp), %rdi
	callq	g_file_test
	cmpl	$0, %eax
	je	.LBB6_15
# BB#5:                                 # %if.then.6
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-32(%rbp), %rdi
	movl	$.L.str.38, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB6_10
# BB#6:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB6_3 Depth=1
	movabsq	$.L.str.39, %rsi
	movq	-32(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	jne	.LBB6_10
# BB#7:                                 # %lor.lhs.false.11
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-32(%rbp), %rdi
	movl	$.L.str.40, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB6_10
# BB#8:                                 # %lor.lhs.false.14
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-32(%rbp), %rdi
	movl	$.L.str.41, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB6_10
# BB#9:                                 # %lor.lhs.false.17
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-32(%rbp), %rdi
	movl	$.L.str.42, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB6_11
.LBB6_10:                               # %if.then.20
                                        #   in Loop: Header=BB6_3 Depth=1
	jmp	.LBB6_22
.LBB6_11:                               # %if.end.21
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 20(%rax)
	jne	.LBB6_14
# BB#12:                                # %land.lhs.true
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-32(%rbp), %rdi
	movl	$.L.str.15, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB6_14
# BB#13:                                # %if.then.25
                                        #   in Loop: Header=BB6_3 Depth=1
	jmp	.LBB6_22
.LBB6_14:                               # %if.end.26
                                        #   in Loop: Header=BB6_3 Depth=1
	leaq	-1056(%rbp), %rdi
	movq	%rdi, -1088(%rbp)       # 8-byte Spill
	callq	gimp_directory
	movl	$1024, %ecx             # imm = 0x400
	movl	%ecx, %esi
	movabsq	$.L.str.12, %rdx
	movl	$47, %r8d
	movq	-32(%rbp), %r9
	movq	-1088(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_snprintf
	leaq	-1056(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-1080(%rbp), %rsi
	movl	%eax, -1092(%rbp)       # 4-byte Spill
	callq	user_install_file_copy
	movl	%eax, -1096(%rbp)       # 4-byte Spill
	jmp	.LBB6_21
.LBB6_15:                               # %if.else
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	$4, %esi
	movq	-1080(%rbp), %rdi
	callq	g_file_test
	cmpl	$0, %eax
	je	.LBB6_20
# BB#16:                                # %if.then.33
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-32(%rbp), %rdi
	movl	$.L.str.30, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB6_18
# BB#17:                                # %lor.lhs.false.36
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-32(%rbp), %rdi
	movl	$.L.str.43, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB6_19
.LBB6_18:                               # %if.then.39
                                        #   in Loop: Header=BB6_3 Depth=1
	jmp	.LBB6_22
.LBB6_19:                               # %if.end.40
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-16(%rbp), %rdi
	movq	-1080(%rbp), %rsi
	movq	%rdi, -1104(%rbp)       # 8-byte Spill
	movq	%rsi, -1112(%rbp)       # 8-byte Spill
	callq	gimp_directory
	movq	-1104(%rbp), %rdi       # 8-byte Reload
	movq	-1112(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	user_install_dir_copy
	movl	%eax, -1116(%rbp)       # 4-byte Spill
.LBB6_20:                               # %if.end.43
                                        #   in Loop: Header=BB6_3 Depth=1
	jmp	.LBB6_21
.LBB6_21:                               # %if.end.44
                                        #   in Loop: Header=BB6_3 Depth=1
	jmp	.LBB6_22
.LBB6_22:                               # %next_file
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-1080(%rbp), %rdi
	callq	g_free
	jmp	.LBB6_3
.LBB6_23:                               # %while.end
	leaq	-1056(%rbp), %rdi
	movq	%rdi, -1128(%rbp)       # 8-byte Spill
	callq	gimp_directory
	movl	$1024, %ecx             # imm = 0x400
	movl	%ecx, %esi
	movabsq	$.L.str.12, %rdx
	movl	$47, %r8d
	movabsq	$.L.str.30, %r9
	movq	-1128(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_snprintf
	leaq	-1056(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movl	%eax, -1132(%rbp)       # 4-byte Spill
	callq	user_install_mkdir
	movq	-24(%rbp), %rdi
	movl	%eax, -1136(%rbp)       # 4-byte Spill
	callq	g_dir_close
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	gimp_templates_migrate
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorl	%edx, %edx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	gimp_rc_new
	movq	%rax, -1064(%rbp)
	movq	-1064(%rbp), %rdi
	callq	gimp_rc_migrate
	movq	-1064(%rbp), %rdi
	callq	gimp_rc_save
	movq	-1064(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	$1, -4(%rbp)
.LBB6_24:                               # %return
	movl	-4(%rbp), %eax
	addq	$1136, %rsp             # imm = 0x470
	popq	%rbp
	retq
.Lfunc_end6:
	.size	user_install_migrate_files, .Lfunc_end6-user_install_migrate_files
	.cfi_endproc

	.align	16, 0x90
	.type	user_install_create_files,@function
user_install_create_files:              # @user_install_create_files
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
	subq	$2128, %rsp             # imm = 0x850
	movq	%rdi, -16(%rbp)
	movl	$0, -2068(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-2068(%rbp), %rax
	cmpq	$23, %rax
	jae	.LBB7_13
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	leaq	-1040(%rbp), %rdi
	movq	%rdi, -2080(%rbp)       # 8-byte Spill
	callq	gimp_directory
	movl	$1024, %ecx             # imm = 0x400
	movl	%ecx, %esi
	movabsq	$.L.str.12, %rdx
	movl	$47, %r8d
	movabsq	$gimp_user_install_items, %rdi
	movslq	-2068(%rbp), %r9
	shlq	$4, %r9
	addq	%r9, %rdi
	movq	(%rdi), %r9
	movq	-2080(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_snprintf
	movl	$16, %esi
	leaq	-1040(%rbp), %rdi
	movl	%eax, -2084(%rbp)       # 4-byte Spill
	callq	g_file_test
	cmpl	$0, %eax
	je	.LBB7_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_12
.LBB7_4:                                # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	movslq	-2068(%rbp), %rax
	shlq	$4, %rax
	movl	gimp_user_install_items+8(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -2088(%rbp)       # 4-byte Spill
	je	.LBB7_5
	jmp	.LBB7_19
.LBB7_19:                               # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-2088(%rbp), %eax       # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -2092(%rbp)       # 4-byte Spill
	je	.LBB7_8
	jmp	.LBB7_11
.LBB7_5:                                # %sw.bb
                                        #   in Loop: Header=BB7_1 Depth=1
	leaq	-1040(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	user_install_mkdir
	cmpl	$0, %eax
	jne	.LBB7_7
# BB#6:                                 # %if.then.10
	movl	$0, -4(%rbp)
	jmp	.LBB7_18
.LBB7_7:                                # %if.end.11
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_11
.LBB7_8:                                # %sw.bb.12
                                        #   in Loop: Header=BB7_1 Depth=1
	leaq	-2064(%rbp), %rdi
	movq	%rdi, -2104(%rbp)       # 8-byte Spill
	callq	gimp_sysconf_directory
	movl	$1024, %ecx             # imm = 0x400
	movl	%ecx, %esi
	movabsq	$.L.str.12, %rdx
	movl	$47, %r8d
	movabsq	$gimp_user_install_items, %rdi
	movslq	-2068(%rbp), %r9
	shlq	$4, %r9
	addq	%r9, %rdi
	movq	(%rdi), %r9
	movq	-2104(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_snprintf
	leaq	-1040(%rbp), %rdx
	leaq	-2064(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movl	%eax, -2108(%rbp)       # 4-byte Spill
	callq	user_install_file_copy
	cmpl	$0, %eax
	jne	.LBB7_10
# BB#9:                                 # %if.then.23
	movl	$0, -4(%rbp)
	jmp	.LBB7_18
.LBB7_10:                               # %if.end.24
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_11
.LBB7_11:                               # %sw.epilog
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_12
.LBB7_12:                               # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-2068(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -2068(%rbp)
	jmp	.LBB7_1
.LBB7_13:                               # %for.end
	leaq	-1040(%rbp), %rdi
	movq	%rdi, -2120(%rbp)       # 8-byte Spill
	callq	gimp_directory
	movl	$1024, %ecx             # imm = 0x400
	movl	%ecx, %esi
	movabsq	$.L.str.12, %rdx
	movl	$47, %r8d
	movabsq	$.L.str.13, %r9
	movq	-2120(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_snprintf
	movl	$1, %esi
	leaq	-1040(%rbp), %rdi
	movl	%eax, -2124(%rbp)       # 4-byte Spill
	callq	g_file_test
	cmpl	$0, %eax
	jne	.LBB7_17
# BB#14:                                # %if.then.31
	callq	gimp_tags_user_install
	cmpl	$0, %eax
	jne	.LBB7_16
# BB#15:                                # %if.then.34
	movl	$0, -4(%rbp)
	jmp	.LBB7_18
.LBB7_16:                               # %if.end.35
	jmp	.LBB7_17
.LBB7_17:                               # %if.end.36
	movl	$1, -4(%rbp)
.LBB7_18:                               # %return
	movl	-4(%rbp), %eax
	addq	$2128, %rsp             # imm = 0x850
	popq	%rbp
	retq
.Lfunc_end7:
	.size	user_install_create_files, .Lfunc_end7-user_install_create_files
	.cfi_endproc

	.globl	gimp_user_install_free
	.align	16, 0x90
	.type	gimp_user_install_free,@function
gimp_user_install_free:                 # @gimp_user_install_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB8_3
# BB#2:                                 # %if.then
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_user_install_free, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_7
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %do.end
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free
# BB#6:                                 # %do.body.1
	movl	$48, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
.LBB8_7:                                # %do.end.2
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_user_install_free, .Lfunc_end8-gimp_user_install_free
	.cfi_endproc

	.globl	gimp_user_install_set_log_handler
	.align	16, 0x90
	.type	gimp_user_install_set_log_handler,@function
gimp_user_install_set_log_handler:      # @gimp_user_install_set_log_handler
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB9_3
# BB#2:                                 # %if.then
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_user_install_set_log_handler, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_6
.LBB9_4:                                # %if.end
	jmp	.LBB9_5
.LBB9_5:                                # %do.end
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
.LBB9_6:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_user_install_set_log_handler, .Lfunc_end9-gimp_user_install_set_log_handler
	.cfi_endproc

	.align	16, 0x90
	.type	user_install_log_error,@function
user_install_log_error:                 # @user_install_log_error
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB10_9
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_9
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB10_4
# BB#3:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB10_5
.LBB10_4:                               # %cond.false
	movabsq	$.L.str.10, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB10_5
.LBB10_5:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB10_7
# BB#6:                                 # %if.then.6
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rdx
	callq	*%rax
	jmp	.LBB10_8
.LBB10_7:                               # %if.else
	movabsq	$.L.str.11, %rdi
	movq	-24(%rbp), %rsi
	movb	$0, %al
	callq	g_print
.LBB10_8:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	g_clear_error
.LBB10_9:                               # %if.end.8
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	user_install_log_error, .Lfunc_end10-user_install_log_error
	.cfi_endproc

	.align	16, 0x90
	.type	user_install_mkdir,@function
user_install_mkdir:                     # @user_install_mkdir
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
	subq	$80, %rsp
	movabsq	$.L.str.8, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	user_install_log
	movl	$493, %esi              # imm = 0x1ED
	movq	-24(%rbp), %rdi
	callq	mkdir
	cmpl	$-1, %eax
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movq	$0, -32(%rbp)
	callq	g_file_error_quark
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.9, %rdi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	leaq	-32(%rbp), %rdi
	movl	-52(%rbp), %esi         # 4-byte Reload
	movl	-56(%rbp), %edx         # 4-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	leaq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	user_install_log_error
	movl	$0, -4(%rbp)
	jmp	.LBB11_3
.LBB11_2:                               # %if.end
	movl	$1, -4(%rbp)
.LBB11_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	user_install_mkdir, .Lfunc_end11-user_install_mkdir
	.cfi_endproc

	.align	16, 0x90
	.type	user_install_file_copy,@function
user_install_file_copy:                 # @user_install_file_copy
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
	subq	$64, %rsp
	movabsq	$.L.str.37, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-16(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	user_install_log
	leaq	-32(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_config_file_copy
	leaq	-32(%rbp), %rsi
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rdi
	callq	user_install_log_error
	movl	-36(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	user_install_file_copy, .Lfunc_end12-user_install_file_copy
	.cfi_endproc

	.align	16, 0x90
	.type	user_install_dir_copy,@function
user_install_dir_copy:                  # @user_install_dir_copy
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
	subq	$1136, %rsp             # imm = 0x470
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -1104(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_path_get_basename
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -1112(%rbp)
	movq	-24(%rbp), %rdi
	movq	-1112(%rbp), %rsi
	movb	$0, %al
	callq	g_build_filename
	movq	%rax, -1088(%rbp)
	movq	-1112(%rbp), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	movq	-1088(%rbp), %rsi
	callq	user_install_mkdir
	movl	%eax, -1092(%rbp)
	cmpl	$0, -1092(%rbp)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	jmp	.LBB13_14
.LBB13_2:                               # %if.end
	xorl	%esi, %esi
	leaq	-1104(%rbp), %rdx
	movq	-1088(%rbp), %rdi
	callq	g_dir_open
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movl	%esi, -1092(%rbp)
	cmpl	$0, -1092(%rbp)
	jne	.LBB13_4
# BB#3:                                 # %if.then.6
	jmp	.LBB13_14
.LBB13_4:                               # %if.end.7
	xorl	%esi, %esi
	leaq	-1104(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	g_dir_open
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movl	%esi, -1092(%rbp)
	cmpl	$0, -1092(%rbp)
	jne	.LBB13_6
# BB#5:                                 # %if.then.12
	jmp	.LBB13_14
.LBB13_6:                               # %if.end.13
	jmp	.LBB13_7
.LBB13_7:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rdi
	callq	g_dir_read_name
	movq	%rax, -1080(%rbp)
	cmpq	$0, %rax
	je	.LBB13_13
# BB#8:                                 # %while.body
                                        #   in Loop: Header=BB13_7 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	movq	-1080(%rbp), %rsi
	movb	$0, %al
	callq	g_build_filename
	movl	$1, %esi
	movq	%rax, -1120(%rbp)
	movq	-1120(%rbp), %rdi
	callq	g_file_test
	cmpl	$0, %eax
	je	.LBB13_12
# BB#9:                                 # %if.then.20
                                        #   in Loop: Header=BB13_7 Depth=1
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %esi
	movabsq	$.L.str.12, %rdx
	movl	$47, %r8d
	leaq	-1072(%rbp), %rdi
	movq	-1088(%rbp), %rcx
	movq	-1080(%rbp), %r9
	movb	$0, %al
	callq	g_snprintf
	leaq	-1072(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-1120(%rbp), %rsi
	movl	%eax, -1124(%rbp)       # 4-byte Spill
	callq	user_install_file_copy
	cmpl	$0, %eax
	jne	.LBB13_11
# BB#10:                                # %if.then.25
	movq	-1120(%rbp), %rdi
	callq	g_free
	jmp	.LBB13_14
.LBB13_11:                              # %if.end.26
                                        #   in Loop: Header=BB13_7 Depth=1
	jmp	.LBB13_12
.LBB13_12:                              # %if.end.27
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-1120(%rbp), %rdi
	callq	g_free
	jmp	.LBB13_7
.LBB13_13:                              # %while.end
	jmp	.LBB13_14
.LBB13_14:                              # %error.28
	leaq	-1104(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	user_install_log_error
	cmpq	$0, -32(%rbp)
	je	.LBB13_16
# BB#15:                                # %if.then.30
	movq	-32(%rbp), %rdi
	callq	g_dir_close
.LBB13_16:                              # %if.end.31
	cmpq	$0, -40(%rbp)
	je	.LBB13_18
# BB#17:                                # %if.then.33
	movq	-40(%rbp), %rdi
	callq	g_dir_close
.LBB13_18:                              # %if.end.34
	movq	-1088(%rbp), %rdi
	callq	g_free
	movl	-1092(%rbp), %eax
	addq	$1136, %rsp             # imm = 0x470
	popq	%rbp
	retq
.Lfunc_end13:
	.size	user_install_dir_copy, .Lfunc_end13-user_install_dir_copy
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_user_install_run,@object # @__func__.gimp_user_install_run
.L__func__.gimp_user_install_run:
	.asciz	"gimp_user_install_run"
	.size	.L__func__.gimp_user_install_run, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"install != NULL"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"It seems you have used GIMP %s before.  GIMP will now migrate your user settings to '%s'."
	.size	.L.str.2, 90

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"It appears that you are using GIMP for the first time.  GIMP will now create a folder named '%s' and copy some files to it."
	.size	.L.str.3, 124

	.type	.L__func__.gimp_user_install_free,@object # @__func__.gimp_user_install_free
.L__func__.gimp_user_install_free:
	.asciz	"gimp_user_install_free"
	.size	.L__func__.gimp_user_install_free, 23

	.type	.L__func__.gimp_user_install_set_log_handler,@object # @__func__.gimp_user_install_set_log_handler
.L__func__.gimp_user_install_set_log_handler:
	.asciz	"gimp_user_install_set_log_handler"
	.size	.L__func__.gimp_user_install_set_log_handler, 34

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"2.8"
	.size	.L.str.4, 4

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%d"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%s\n"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\n"
	.size	.L.str.7, 2

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Creating folder '%s'..."
	.size	.L.str.8, 24

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Cannot create folder '%s': %s"
	.size	.L.str.9, 30

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"(unknown error)"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"error: %s\n"
	.size	.L.str.11, 11

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%s%c%s"
	.size	.L.str.12, 7

	.type	gimp_user_install_items,@object # @gimp_user_install_items
	.section	.rodata,"a",@progbits
	.align	16
gimp_user_install_items:
	.quad	.L.str.14
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.15
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.16
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.17
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.18
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.19
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.20
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.21
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.22
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.23
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.24
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.25
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.26
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.27
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.28
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.29
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.30
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.31
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.32
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.33
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.34
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.35
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.36
	.long	0                       # 0x0
	.zero	4
	.size	gimp_user_install_items, 368

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"tags.xml"
	.size	.L.str.13, 9

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gtkrc"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"menurc"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"brushes"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"dynamics"
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"fonts"
	.size	.L.str.18, 6

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gradients"
	.size	.L.str.19, 10

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"palettes"
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"patterns"
	.size	.L.str.21, 9

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"tool-presets"
	.size	.L.str.22, 13

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"plug-ins"
	.size	.L.str.23, 9

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"modules"
	.size	.L.str.24, 8

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"interpreters"
	.size	.L.str.25, 13

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"environ"
	.size	.L.str.26, 8

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"scripts"
	.size	.L.str.27, 8

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"templates"
	.size	.L.str.28, 10

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"themes"
	.size	.L.str.29, 7

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"tmp"
	.size	.L.str.30, 4

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"curves"
	.size	.L.str.31, 7

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"levels"
	.size	.L.str.32, 7

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"fractalexplorer"
	.size	.L.str.33, 16

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gfig"
	.size	.L.str.34, 5

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gflare"
	.size	.L.str.35, 7

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gimpressionist"
	.size	.L.str.36, 15

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Copying file '%s' from '%s'..."
	.size	.L.str.37, 31

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"documents"
	.size	.L.str.38, 10

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gimpswap."
	.size	.L.str.39, 10

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"pluginrc"
	.size	.L.str.40, 9

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"themerc"
	.size	.L.str.41, 8

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"toolrc"
	.size	.L.str.42, 7

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"tool-options"
	.size	.L.str.43, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
