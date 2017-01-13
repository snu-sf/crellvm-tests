	.text
	.file	"file-glob.bc"
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
	pushq	%rbx
	subq	$88, %rsp
.Ltmp3:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	movabsq	$.L.str.11, %rax
	movabsq	$.L.str.12, %r9
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$1, %ecx
	movl	$2, %r10d
	movabsq	$query.glob_args, %r11
	movabsq	$query.glob_return_vals, %rbx
	movl	%ecx, -12(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movq	%r8, -24(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$2, 24(%rsp)
	movl	$2, 32(%rsp)
	movq	%r11, 40(%rsp)
	movq	%rbx, 48(%rsp)
	movl	%r10d, -28(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	addq	$88, %rsp
	popq	%rbx
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
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp6:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movabsq	$run.values, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	$1, run.values+8
	movq	-8(%rbp), %rdi
	movl	$.L.str.8, %esi
                                        # kill: RSI<def> ESI<kill>
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_7
# BB#1:                                 # %land.lhs.true
	cmpl	$1, -12(%rbp)
	jl	.LBB1_7
# BB#2:                                 # %if.then
	movl	$0, -56(%rbp)
	cmpl	$1, -12(%rbp)
	jle	.LBB1_4
# BB#3:                                 # %if.then.3
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-24(%rbp), %rdx
	cmpl	$0, 8(%rdx)
	cmovnel	%ecx, %eax
	movl	%eax, -56(%rbp)
.LBB1_4:                                # %if.end
	leaq	-52(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movl	-56(%rbp), %esi
	callq	glob_match
	cmpl	$0, %eax
	jne	.LBB1_6
# BB#5:                                 # %if.then.8
	movl	$0, run.values+8
	jmp	.LBB1_7
.LBB1_6:                                # %if.end.9
	movq	-32(%rbp), %rax
	movl	$3, (%rax)
	movl	$21, run.values
	movl	$3, run.values+8
	movl	$0, run.values+40
	movl	-52(%rbp), %ecx
	movl	%ecx, run.values+48
	movl	$9, run.values+80
	movq	-48(%rbp), %rax
	movq	%rax, run.values+88
.LBB1_7:                                # %if.end.10
	addq	$64, %rsp
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
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
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
	.type	glob_match,@function
glob_match:                             # @glob_match
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.glob_match, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_35
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.body.1
	cmpq	$0, -32(%rbp)
	je	.LBB3_8
# BB#7:                                 # %if.then.3
	jmp	.LBB3_9
.LBB3_8:                                # %if.else.4
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.glob_match, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_35
.LBB3_9:                                # %if.end.5
	jmp	.LBB3_10
.LBB3_10:                               # %do.end.6
	jmp	.LBB3_11
.LBB3_11:                               # %do.body.7
	cmpq	$0, -40(%rbp)
	je	.LBB3_13
# BB#12:                                # %if.then.9
	jmp	.LBB3_14
.LBB3_13:                               # %if.else.10
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.glob_match, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_35
.LBB3_14:                               # %if.end.11
	jmp	.LBB3_15
.LBB3_15:                               # %do.end.12
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movl	$0, (%rdx)
	movq	-40(%rbp), %rdx
	movq	$0, (%rdx)
	movq	-16(%rbp), %rdi
	movq	%rcx, %rdx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movq	-104(%rbp), %r8         # 8-byte Reload
	callq	g_filename_from_utf8
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB3_17
# BB#16:                                # %if.then.13
	movl	$0, -4(%rbp)
	jmp	.LBB3_35
.LBB3_17:                               # %if.end.14
	movq	-80(%rbp), %rdi
	callq	g_path_get_dirname
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	g_dir_open
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rdi
	callq	g_free
	cmpq	$0, -48(%rbp)
	jne	.LBB3_19
# BB#18:                                # %if.then.18
	movq	-72(%rbp), %rdi
	callq	g_free
	movl	$1, -4(%rbp)
	jmp	.LBB3_35
.LBB3_19:                               # %if.end.19
	movq	-16(%rbp), %rdi
	callq	g_path_get_basename
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB3_21
# BB#20:                                # %if.then.23
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	$0, -72(%rbp)
.LBB3_21:                               # %if.end.24
	movq	-80(%rbp), %rdi
	callq	g_free
	callq	g_ptr_array_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_dir_read_name
	movq	%rax, -64(%rbp)
.LBB3_22:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB3_34
# BB#23:                                # %for.body
                                        #   in Loop: Header=BB3_22 Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB3_25
# BB#24:                                # %if.then.31
                                        #   in Loop: Header=BB3_22 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movb	$0, %al
	callq	g_build_filename
	movq	%rax, -88(%rbp)
	jmp	.LBB3_26
.LBB3_25:                               # %if.else.33
                                        #   in Loop: Header=BB3_22 Depth=1
	movq	-64(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -88(%rbp)
.LBB3_26:                               # %if.end.35
                                        #   in Loop: Header=BB3_22 Depth=1
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-88(%rbp), %rdi
	movq	%rcx, %rdx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movq	-112(%rbp), %r8         # 8-byte Reload
	callq	g_filename_to_utf8
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB3_32
# BB#27:                                # %land.lhs.true
                                        #   in Loop: Header=BB3_22 Depth=1
	movq	-16(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	glob_fnmatch
	cmpl	$0, %eax
	je	.LBB3_32
# BB#28:                                # %if.then.40
                                        #   in Loop: Header=BB3_22 Depth=1
	cmpl	$0, -20(%rbp)
	je	.LBB3_30
# BB#29:                                # %if.then.42
                                        #   in Loop: Header=BB3_22 Depth=1
	movq	-56(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_ptr_array_add
	movq	$0, -88(%rbp)
	jmp	.LBB3_31
.LBB3_30:                               # %if.else.43
                                        #   in Loop: Header=BB3_22 Depth=1
	movq	-56(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_ptr_array_add
	movq	$0, -96(%rbp)
.LBB3_31:                               # %if.end.44
                                        #   in Loop: Header=BB3_22 Depth=1
	jmp	.LBB3_32
.LBB3_32:                               # %if.end.45
                                        #   in Loop: Header=BB3_22 Depth=1
	movq	-88(%rbp), %rdi
	callq	g_free
	movq	-96(%rbp), %rdi
	callq	g_free
# BB#33:                                # %for.inc
                                        #   in Loop: Header=BB3_22 Depth=1
	movq	-48(%rbp), %rdi
	callq	g_dir_read_name
	movq	%rax, -64(%rbp)
	jmp	.LBB3_22
.LBB3_34:                               # %for.end
	movq	-48(%rbp), %rdi
	callq	g_dir_close
	movq	-72(%rbp), %rdi
	callq	g_free
	xorl	%esi, %esi
	movq	-56(%rbp), %rdi
	movl	8(%rdi), %eax
	movq	-32(%rbp), %rdi
	movl	%eax, (%rdi)
	movq	-56(%rbp), %rdi
	callq	g_ptr_array_free
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	movl	$1, -4(%rbp)
.LBB3_35:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	glob_match, .Lfunc_end3-glob_match
	.cfi_endproc

	.align	16, 0x90
	.type	glob_fnmatch,@function
glob_fnmatch:                           # @glob_fnmatch
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
	subq	$16, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	fnmatch_intern
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	glob_fnmatch, .Lfunc_end4-glob_fnmatch
	.cfi_endproc

	.align	16, 0x90
	.type	fnmatch_intern,@function
fnmatch_intern:                         # @fnmatch_intern
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -48(%rbp)
.LBB5_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_61 Depth 2
                                        #     Child Loop BB5_80 Depth 2
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB5_93
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	leaq	-40(%rbp), %rdi
	callq	get_char
	movl	%eax, -60(%rbp)
	leaq	-48(%rbp), %rdi
	callq	get_char
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	subl	$42, %ecx
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	je	.LBB5_17
	jmp	.LBB5_97
.LBB5_97:                               # %while.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$63, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB5_3
	jmp	.LBB5_98
.LBB5_98:                               # %while.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$91, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB5_49
	jmp	.LBB5_99
.LBB5_99:                               # %while.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$92, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB5_14
	jmp	.LBB5_89
.LBB5_3:                                # %sw.bb
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	$0, -64(%rbp)
	jne	.LBB5_5
# BB#4:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB5_96
.LBB5_5:                                # %if.else
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	$47, -64(%rbp)
	jne	.LBB5_7
# BB#6:                                 # %if.then.3
	movl	$0, -4(%rbp)
	jmp	.LBB5_96
.LBB5_7:                                # %if.else.4
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	$46, -64(%rbp)
	jne	.LBB5_11
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	$0, -28(%rbp)
	je	.LBB5_11
# BB#9:                                 # %land.lhs.true.7
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	$0, -32(%rbp)
	je	.LBB5_11
# BB#10:                                # %if.then.9
	movl	$0, -4(%rbp)
	jmp	.LBB5_96
.LBB5_11:                               # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_12
.LBB5_12:                               # %if.end.10
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_13
.LBB5_13:                               # %if.end.11
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_92
.LBB5_14:                               # %sw.bb.12
                                        #   in Loop: Header=BB5_1 Depth=1
	leaq	-40(%rbp), %rdi
	callq	get_char
	movl	%eax, -60(%rbp)
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	je	.LBB5_16
# BB#15:                                # %if.then.15
	movl	$0, -4(%rbp)
	jmp	.LBB5_96
.LBB5_16:                               # %if.end.16
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_92
.LBB5_17:                               # %sw.bb.17
	cmpl	$46, -64(%rbp)
	jne	.LBB5_21
# BB#18:                                # %land.lhs.true.19
	cmpl	$0, -28(%rbp)
	je	.LBB5_21
# BB#19:                                # %land.lhs.true.21
	cmpl	$0, -32(%rbp)
	je	.LBB5_21
# BB#20:                                # %if.then.23
	movl	$0, -4(%rbp)
	jmp	.LBB5_96
.LBB5_21:                               # %if.end.24
	leaq	-40(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	get_char
	movl	%eax, -60(%rbp)
.LBB5_22:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movb	$1, %al
	cmpl	$63, -60(%rbp)
	movb	%al, -109(%rbp)         # 1-byte Spill
	je	.LBB5_24
# BB#23:                                # %lor.rhs
                                        #   in Loop: Header=BB5_22 Depth=1
	cmpl	$42, -60(%rbp)
	sete	%al
	movb	%al, -109(%rbp)         # 1-byte Spill
.LBB5_24:                               # %lor.end
                                        #   in Loop: Header=BB5_22 Depth=1
	movb	-109(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_25
	jmp	.LBB5_35
.LBB5_25:                               # %for.body
                                        #   in Loop: Header=BB5_22 Depth=1
	cmpl	$63, -60(%rbp)
	jne	.LBB5_33
# BB#26:                                # %if.then.29
                                        #   in Loop: Header=BB5_22 Depth=1
	cmpl	$0, -64(%rbp)
	jne	.LBB5_28
# BB#27:                                # %if.then.31
	movl	$0, -4(%rbp)
	jmp	.LBB5_96
.LBB5_28:                               # %if.else.32
                                        #   in Loop: Header=BB5_22 Depth=1
	cmpl	$47, -64(%rbp)
	jne	.LBB5_30
# BB#29:                                # %if.then.34
	movl	$0, -4(%rbp)
	jmp	.LBB5_96
.LBB5_30:                               # %if.else.35
                                        #   in Loop: Header=BB5_22 Depth=1
	leaq	-48(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	get_char
	movl	%eax, -64(%rbp)
# BB#31:                                # %if.end.37
                                        #   in Loop: Header=BB5_22 Depth=1
	jmp	.LBB5_32
.LBB5_32:                               # %if.end.38
                                        #   in Loop: Header=BB5_22 Depth=1
	jmp	.LBB5_33
.LBB5_33:                               # %if.end.39
                                        #   in Loop: Header=BB5_22 Depth=1
	jmp	.LBB5_34
.LBB5_34:                               # %for.inc
                                        #   in Loop: Header=BB5_22 Depth=1
	leaq	-40(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	get_char
	movl	%eax, -60(%rbp)
	jmp	.LBB5_22
.LBB5_35:                               # %for.end
	cmpl	$0, -60(%rbp)
	jne	.LBB5_39
# BB#36:                                # %if.then.42
	movl	$47, %esi
	movq	-56(%rbp), %rdi
	callq	strchr
	cmpq	$0, %rax
	je	.LBB5_38
# BB#37:                                # %if.then.45
	movl	$0, -4(%rbp)
	jmp	.LBB5_96
.LBB5_38:                               # %if.else.46
	movl	$1, -4(%rbp)
	jmp	.LBB5_96
.LBB5_39:                               # %if.end.47
	cmpl	$92, -60(%rbp)
	jne	.LBB5_41
# BB#40:                                # %if.then.49
	leaq	-40(%rbp), %rdi
	callq	get_char
	movl	%eax, -60(%rbp)
.LBB5_41:                               # %if.end.51
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB5_42:                               # %for.cond.52
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -64(%rbp)
	je	.LBB5_48
# BB#43:                                # %for.body.54
                                        #   in Loop: Header=BB5_42 Depth=1
	cmpl	$91, -60(%rbp)
	je	.LBB5_45
# BB#44:                                # %lor.lhs.false
                                        #   in Loop: Header=BB5_42 Depth=1
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jne	.LBB5_47
.LBB5_45:                               # %land.lhs.true.57
                                        #   in Loop: Header=BB5_42 Depth=1
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	callq	fnmatch_intern
	cmpl	$0, %eax
	je	.LBB5_47
# BB#46:                                # %if.then.60
	movl	$1, -4(%rbp)
	jmp	.LBB5_96
.LBB5_47:                               # %if.end.61
                                        #   in Loop: Header=BB5_42 Depth=1
	leaq	-48(%rbp), %rdi
	cmpl	$47, -64(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -28(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	callq	get_char
	movl	%eax, -64(%rbp)
	jmp	.LBB5_42
.LBB5_48:                               # %for.end.64
	movl	$0, -4(%rbp)
	jmp	.LBB5_96
.LBB5_49:                               # %sw.bb.65
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	$0, -64(%rbp)
	je	.LBB5_51
# BB#50:                                # %lor.lhs.false.68
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	$47, -64(%rbp)
	jne	.LBB5_52
.LBB5_51:                               # %if.then.71
	movl	$0, -4(%rbp)
	jmp	.LBB5_96
.LBB5_52:                               # %if.end.72
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	$46, -64(%rbp)
	jne	.LBB5_56
# BB#53:                                # %land.lhs.true.75
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	$0, -28(%rbp)
	je	.LBB5_56
# BB#54:                                # %land.lhs.true.77
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	$0, -32(%rbp)
	je	.LBB5_56
# BB#55:                                # %if.then.79
	movl	$0, -4(%rbp)
	jmp	.LBB5_96
.LBB5_56:                               # %if.end.80
                                        #   in Loop: Header=BB5_1 Depth=1
	movb	$1, %al
	movq	-40(%rbp), %rcx
	movsbl	(%rcx), %edx
	cmpl	$33, %edx
	movb	%al, -110(%rbp)         # 1-byte Spill
	je	.LBB5_58
# BB#57:                                # %lor.rhs.84
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$94, %ecx
	sete	%dl
	movb	%dl, -110(%rbp)         # 1-byte Spill
.LBB5_58:                               # %lor.end.88
                                        #   in Loop: Header=BB5_1 Depth=1
	movb	-110(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$0, -76(%rbp)
	je	.LBB5_60
# BB#59:                                # %if.then.90
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
.LBB5_60:                               # %if.end.91
                                        #   in Loop: Header=BB5_1 Depth=1
	leaq	-40(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	callq	get_unescaped_char
	movl	%eax, -60(%rbp)
.LBB5_61:                               # %for.cond.93
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.LBB5_63
# BB#62:                                # %if.then.96
	movl	$0, -4(%rbp)
	jmp	.LBB5_96
.LBB5_63:                               # %if.end.97
                                        #   in Loop: Header=BB5_61 Depth=2
	leaq	-40(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	callq	get_unescaped_char
	movl	%eax, -60(%rbp)
	cmpl	$0, -80(%rbp)
	jne	.LBB5_69
# BB#64:                                # %land.lhs.true.100
                                        #   in Loop: Header=BB5_61 Depth=2
	cmpl	$45, -60(%rbp)
	jne	.LBB5_69
# BB#65:                                # %land.lhs.true.103
                                        #   in Loop: Header=BB5_61 Depth=2
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$93, %ecx
	je	.LBB5_69
# BB#66:                                # %if.then.107
                                        #   in Loop: Header=BB5_61 Depth=2
	leaq	-40(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	callq	get_unescaped_char
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	jne	.LBB5_68
# BB#67:                                # %if.then.111
	movl	$0, -4(%rbp)
	jmp	.LBB5_96
.LBB5_68:                               # %if.end.112
                                        #   in Loop: Header=BB5_61 Depth=2
	leaq	-40(%rbp), %rdi
	callq	get_char
	movl	%eax, -60(%rbp)
.LBB5_69:                               # %if.end.114
                                        #   in Loop: Header=BB5_61 Depth=2
	movl	-64(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jb	.LBB5_72
# BB#70:                                # %land.lhs.true.117
                                        #   in Loop: Header=BB5_61 Depth=2
	movl	-64(%rbp), %eax
	cmpl	-88(%rbp), %eax
	ja	.LBB5_72
# BB#71:                                # %if.then.120
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_79
.LBB5_72:                               # %if.end.121
                                        #   in Loop: Header=BB5_61 Depth=2
	cmpl	$0, -80(%rbp)
	jne	.LBB5_75
# BB#73:                                # %land.lhs.true.123
                                        #   in Loop: Header=BB5_61 Depth=2
	cmpl	$93, -60(%rbp)
	jne	.LBB5_75
# BB#74:                                # %if.then.126
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_76
.LBB5_75:                               # %if.end.127
                                        #   in Loop: Header=BB5_61 Depth=2
	jmp	.LBB5_61
.LBB5_76:                               # %for.end.128
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	$0, -76(%rbp)
	jne	.LBB5_78
# BB#77:                                # %if.then.130
	movl	$0, -4(%rbp)
	jmp	.LBB5_96
.LBB5_78:                               # %if.end.131
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_92
.LBB5_79:                               # %matched
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_80
.LBB5_80:                               # %while.cond.132
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	$1, %al
	cmpl	$0, -80(%rbp)
	movb	%al, -111(%rbp)         # 1-byte Spill
	jne	.LBB5_82
# BB#81:                                # %lor.rhs.134
                                        #   in Loop: Header=BB5_80 Depth=2
	cmpl	$93, -60(%rbp)
	setne	%al
	movb	%al, -111(%rbp)         # 1-byte Spill
.LBB5_82:                               # %lor.end.137
                                        #   in Loop: Header=BB5_80 Depth=2
	movb	-111(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_83
	jmp	.LBB5_86
.LBB5_83:                               # %while.body.139
                                        #   in Loop: Header=BB5_80 Depth=2
	cmpl	$0, -60(%rbp)
	jne	.LBB5_85
# BB#84:                                # %if.then.142
	movl	$0, -4(%rbp)
	jmp	.LBB5_96
.LBB5_85:                               # %if.end.143
                                        #   in Loop: Header=BB5_80 Depth=2
	leaq	-40(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	callq	get_unescaped_char
	movl	%eax, -60(%rbp)
	jmp	.LBB5_80
.LBB5_86:                               # %while.end
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	$0, -76(%rbp)
	je	.LBB5_88
# BB#87:                                # %if.then.146
	movl	$0, -4(%rbp)
	jmp	.LBB5_96
.LBB5_88:                               # %if.end.147
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_92
.LBB5_89:                               # %sw.default
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-60(%rbp), %eax
	cmpl	-64(%rbp), %eax
	je	.LBB5_91
# BB#90:                                # %if.then.150
	movl	$0, -4(%rbp)
	jmp	.LBB5_96
.LBB5_91:                               # %if.end.151
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_92
.LBB5_92:                               # %sw.epilog
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	$47, -64(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -28(%rbp)
	jmp	.LBB5_1
.LBB5_93:                               # %while.end.154
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB5_95
# BB#94:                                # %if.then.158
	movl	$1, -4(%rbp)
	jmp	.LBB5_96
.LBB5_95:                               # %if.end.159
	movl	$0, -4(%rbp)
.LBB5_96:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	fnmatch_intern, .Lfunc_end5-fnmatch_intern
	.cfi_endproc

	.align	16, 0x90
	.type	get_char,@function
get_char:                               # @get_char
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	g_utf8_get_char
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx), %eax
	movl	%eax, %ecx
	movq	g_utf8_skip, %rdx
	movsbl	(%rdx,%rcx), %eax
	movslq	%eax, %rcx
	addq	%rcx, %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, (%rcx)
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	get_char, .Lfunc_end6-get_char
	.cfi_endproc

	.align	16, 0x90
	.type	get_unescaped_char,@function
get_unescaped_char:                     # @get_unescaped_char
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	get_char
	movl	%eax, -20(%rbp)
	cmpl	$92, -20(%rbp)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movq	-16(%rbp), %rsi
	movl	%eax, (%rsi)
	movq	-16(%rbp), %rsi
	cmpl	$0, (%rsi)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	get_char
	movl	%eax, -20(%rbp)
.LBB7_2:                                # %if.end
	movl	-20(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	get_unescaped_char, .Lfunc_end7-get_unescaped_char
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

	.type	query.glob_args,@object # @query.glob_args
	.align	16
query.glob_args:
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.size	query.glob_args, 48

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pattern"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"The glob pattern (in UTF-8 encoding)"
	.size	.L.str.1, 37

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"encoding"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Encoding of the returned names: { UTF-8 (0), filename encoding (1) }"
	.size	.L.str.3, 69

	.type	query.glob_return_vals,@object # @query.glob_return_vals
	.section	.rodata,"a",@progbits
	.align	16
query.glob_return_vals:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.5
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.size	query.glob_return_vals, 48

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"num-files"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"The number of returned names"
	.size	.L.str.5, 29

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"files"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The list of matching names"
	.size	.L.str.7, 27

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"file-glob"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Returns a list of matching filenames"
	.size	.L.str.9, 37

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"This can be useful in scripts and other plugins (e.g., batch-conversion). See the glob(7) manpage for more info. Note however that this isn't a full-featured glob implementation. It only handles simple patterns like \"/home/foo/bar/*.jpg\"."
	.size	.L.str.10, 239

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Sven Neumann"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"2004"
	.size	.L.str.12, 5

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,120,16
	.type	.L__func__.glob_match,@object # @__func__.glob_match
.L__func__.glob_match:
	.asciz	"glob_match"
	.size	.L__func__.glob_match, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"pattern != NULL"
	.size	.L.str.13, 16

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"num_matches != NULL"
	.size	.L.str.14, 20

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"matches != NULL"
	.size	.L.str.15, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
