	.text
	.file	"file-procedure.bc"
	.globl	file_procedure_find
	.align	16, 0x90
	.type	file_procedure_find,@function
file_procedure_find:                    # @file_procedure_find
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
	subq	$432, %rsp              # imm = 0x1B0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -48(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_procedure_find, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_50
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB0_8
# BB#7:                                 # %if.then.3
	jmp	.LBB0_9
.LBB0_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_procedure_find, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_50
.LBB0_9:                                # %if.end.5
	jmp	.LBB0_10
.LBB0_10:                               # %do.end.6
	jmp	.LBB0_11
.LBB0_11:                               # %do.body.7
	cmpq	$0, -32(%rbp)
	je	.LBB0_13
# BB#12:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_14
.LBB0_13:                               # %if.then.10
	jmp	.LBB0_15
.LBB0_14:                               # %if.else.11
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_procedure_find, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_50
.LBB0_15:                               # %if.end.12
	jmp	.LBB0_16
.LBB0_16:                               # %do.end.13
	movl	$1, %edx
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	file_proc_find_by_name
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB0_18
# BB#17:                                # %if.then.14
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_50
.LBB0_18:                               # %if.end.15
	movq	-24(%rbp), %rdi
	callq	file_utils_filename_from_uri
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB0_43
# BB#19:                                # %if.then.18
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -84(%rbp)
.LBB0_20:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB0_36
# BB#21:                                # %while.body
                                        #   in Loop: Header=BB0_20 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 272(%rax)
	je	.LBB0_35
# BB#22:                                # %if.then.21
                                        #   in Loop: Header=BB0_20 Depth=1
	cmpl	$0, -76(%rbp)
	jne	.LBB0_27
# BB#23:                                # %if.then.23
                                        #   in Loop: Header=BB0_20 Depth=1
	movabsq	$.L.str.4, %rsi
	movq	-56(%rbp), %rdi
	callq	fopen
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB0_25
# BB#24:                                # %if.then.26
                                        #   in Loop: Header=BB0_20 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %edx
	leaq	-352(%rbp), %rdi
	movq	-72(%rbp), %rcx
	callq	fread
	movl	%eax, %r8d
	movl	%r8d, -80(%rbp)
	jmp	.LBB0_26
.LBB0_25:                               # %if.else.28
                                        #   in Loop: Header=BB0_20 Depth=1
	movq	-32(%rbp), %rdi
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -372(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movl	%eax, -376(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movl	-372(%rbp), %esi        # 4-byte Reload
	movl	-376(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
.LBB0_26:                               # %if.end.34
                                        #   in Loop: Header=BB0_20 Depth=1
	movl	$1, -76(%rbp)
.LBB0_27:                               # %if.end.35
                                        #   in Loop: Header=BB0_20 Depth=1
	cmpl	$4, -80(%rbp)
	jl	.LBB0_34
# BB#28:                                # %if.then.38
                                        #   in Loop: Header=BB0_20 Depth=1
	leaq	-352(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	272(%rax), %rdi
	movl	-80(%rbp), %edx
	movq	-72(%rbp), %rcx
	callq	file_check_magic_list
	movl	%eax, -356(%rbp)
	cmpl	$2, -356(%rbp)
	jne	.LBB0_30
# BB#29:                                # %if.then.44
                                        #   in Loop: Header=BB0_20 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	jmp	.LBB0_33
.LBB0_30:                               # %if.else.45
                                        #   in Loop: Header=BB0_20 Depth=1
	cmpl	$0, -356(%rbp)
	je	.LBB0_32
# BB#31:                                # %if.then.48
	movq	-72(%rbp), %rdi
	callq	fclose
	movq	-56(%rbp), %rdi
	movl	%eax, -380(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-40(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	jmp	.LBB0_50
.LBB0_32:                               # %if.end.50
                                        #   in Loop: Header=BB0_20 Depth=1
	jmp	.LBB0_33
.LBB0_33:                               # %if.end.51
                                        #   in Loop: Header=BB0_20 Depth=1
	jmp	.LBB0_34
.LBB0_34:                               # %if.end.52
                                        #   in Loop: Header=BB0_20 Depth=1
	jmp	.LBB0_35
.LBB0_35:                               # %if.end.53
                                        #   in Loop: Header=BB0_20 Depth=1
	jmp	.LBB0_20
.LBB0_36:                               # %while.end
	cmpq	$0, -72(%rbp)
	je	.LBB0_40
# BB#37:                                # %if.then.55
	movq	-72(%rbp), %rdi
	callq	ferror
	cmpl	$0, %eax
	je	.LBB0_39
# BB#38:                                # %if.then.58
	movq	-32(%rbp), %rdi
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -396(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movl	%eax, -400(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movl	-396(%rbp), %esi        # 4-byte Reload
	movl	-400(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
.LBB0_39:                               # %if.end.64
	movq	-72(%rbp), %rdi
	callq	fclose
	movl	%eax, -404(%rbp)        # 4-byte Spill
.LBB0_40:                               # %if.end.66
	movq	-56(%rbp), %rdi
	callq	g_free
	cmpl	$1, -84(%rbp)
	jne	.LBB0_42
# BB#41:                                # %if.then.69
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_50
.LBB0_42:                               # %if.end.70
	jmp	.LBB0_43
.LBB0_43:                               # %if.end.71
	xorl	%edx, %edx
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	file_proc_find_by_name
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB0_45
# BB#44:                                # %if.then.74
	movq	-32(%rbp), %rdi
	callq	g_clear_error
	jmp	.LBB0_49
.LBB0_45:                               # %if.else.75
	cmpq	$0, -32(%rbp)
	je	.LBB0_48
# BB#46:                                # %land.lhs.true
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_48
# BB#47:                                # %if.then.79
	movq	-32(%rbp), %rdi
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.5, %rdi
	movl	%eax, -420(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$24, %edx
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movl	-420(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
.LBB0_48:                               # %if.end.82
	jmp	.LBB0_49
.LBB0_49:                               # %if.end.83
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_50:                               # %return
	movq	-8(%rbp), %rax
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	file_procedure_find, .Lfunc_end0-file_procedure_find
	.cfi_endproc

	.align	16, 0x90
	.type	file_proc_find_by_name,@function
file_proc_find_by_name:                 # @file_proc_find_by_name
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
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	file_proc_find_by_prefix
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	file_proc_find_by_extension
	movq	%rax, -32(%rbp)
.LBB1_2:                                # %if.end
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	file_proc_find_by_name, .Lfunc_end1-file_proc_find_by_name
	.cfi_endproc

	.align	16, 0x90
	.type	file_check_magic_list,@function
file_check_magic_list:                  # @file_check_magic_list
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -72(%rbp)
.LBB2_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB2_21
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, %rax
	jne	.LBB2_4
# BB#3:                                 # %if.then
	jmp	.LBB2_21
.LBB2_4:                                # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.2
	jmp	.LBB2_21
.LBB2_6:                                # %if.end.3
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, %rax
	jne	.LBB2_8
# BB#7:                                 # %if.then.6
	jmp	.LBB2_21
.LBB2_8:                                # %if.end.7
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB2_10
# BB#9:                                 # %if.then.10
	jmp	.LBB2_21
.LBB2_10:                               # %if.end.11
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, %rax
	jne	.LBB2_12
# BB#11:                                # %if.then.14
	jmp	.LBB2_21
.LBB2_12:                               # %if.end.15
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %r8d
	movq	-40(%rbp), %r9
	callq	file_check_single_magic
	movl	%eax, -76(%rbp)
	cmpl	$0, -68(%rbp)
	je	.LBB2_16
# BB#13:                                # %if.then.18
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -72(%rbp)
	movb	%cl, -77(%rbp)          # 1-byte Spill
	je	.LBB2_15
# BB#14:                                # %land.rhs
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$0, -76(%rbp)
	setne	%al
	movb	%al, -77(%rbp)          # 1-byte Spill
.LBB2_15:                               # %land.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movb	-77(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -72(%rbp)
	jmp	.LBB2_17
.LBB2_16:                               # %if.else
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$0, -76(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -72(%rbp)
.LBB2_17:                               # %if.end.22
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$38, %esi
	movq	-48(%rbp), %rdi
	callq	strchr
	cmpq	$0, %rax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movl	%esi, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.LBB2_20
# BB#18:                                # %land.lhs.true
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$0, -72(%rbp)
	je	.LBB2_20
# BB#19:                                # %if.then.28
	movl	-76(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB2_22
.LBB2_20:                               # %if.end.29
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_1
.LBB2_21:                               # %while.end
	movl	$0, -4(%rbp)
.LBB2_22:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	file_check_magic_list, .Lfunc_end2-file_check_magic_list
	.cfi_endproc

	.globl	file_procedure_find_by_prefix
	.align	16, 0x90
	.type	file_procedure_find_by_prefix,@function
file_procedure_find_by_prefix:          # @file_procedure_find_by_prefix
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_procedure_find_by_prefix, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_6
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	file_proc_find_by_prefix
	movq	%rax, -8(%rbp)
.LBB3_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	file_procedure_find_by_prefix, .Lfunc_end3-file_procedure_find_by_prefix
	.cfi_endproc

	.align	16, 0x90
	.type	file_proc_find_by_prefix,@function
file_proc_find_by_prefix:               # @file_proc_find_by_prefix
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
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_6 Depth 2
	cmpq	$0, -40(%rbp)
	je	.LBB4_19
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB4_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 272(%rax)
	je	.LBB4_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_15
.LBB4_5:                                # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-48(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB4_6:                                # %for.cond.3
                                        #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -56(%rbp)
	je	.LBB4_14
# BB#7:                                 # %for.body.5
                                        #   in Loop: Header=BB4_6 Depth=2
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB4_9
# BB#8:                                 # %if.then.8
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_20
.LBB4_9:                                # %if.end.9
                                        #   in Loop: Header=BB4_6 Depth=2
	jmp	.LBB4_10
.LBB4_10:                               # %for.inc
                                        #   in Loop: Header=BB4_6 Depth=2
	cmpq	$0, -56(%rbp)
	je	.LBB4_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB4_6 Depth=2
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB4_13
.LBB4_12:                               # %cond.false
                                        #   in Loop: Header=BB4_6 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB4_13
.LBB4_13:                               # %cond.end
                                        #   in Loop: Header=BB4_6 Depth=2
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB4_6
.LBB4_14:                               # %for.end
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_15
.LBB4_15:                               # %for.inc.11
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB4_17
# BB#16:                                # %cond.true.13
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB4_18
.LBB4_17:                               # %cond.false.15
                                        #   in Loop: Header=BB4_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB4_18
.LBB4_18:                               # %cond.end.16
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB4_1
.LBB4_19:                               # %for.end.18
	movq	$0, -8(%rbp)
.LBB4_20:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	file_proc_find_by_prefix, .Lfunc_end4-file_proc_find_by_prefix
	.cfi_endproc

	.globl	file_procedure_find_by_extension
	.align	16, 0x90
	.type	file_procedure_find_by_extension,@function
file_procedure_find_by_extension:       # @file_procedure_find_by_extension
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -24(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.file_procedure_find_by_extension, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_6
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	file_proc_find_by_extension
	movq	%rax, -8(%rbp)
.LBB5_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	file_procedure_find_by_extension, .Lfunc_end5-file_procedure_find_by_extension
	.cfi_endproc

	.align	16, 0x90
	.type	file_proc_find_by_extension,@function
file_proc_find_by_extension:            # @file_proc_find_by_extension
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-24(%rbp), %rdi
	callq	file_utils_uri_get_ext
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB6_2
# BB#1:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	je	.LBB6_3
.LBB6_2:                                # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB6_33
.LBB6_3:                                # %if.end
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB6_4:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_9 Depth 2
                                        #       Child Loop BB6_13 Depth 3
	cmpq	$0, -40(%rbp)
	je	.LBB6_32
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB6_8
# BB#6:                                 # %land.lhs.true.4
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	-56(%rbp), %rax
	cmpq	$0, 272(%rax)
	je	.LBB6_8
# BB#7:                                 # %if.then.6
                                        #   in Loop: Header=BB6_4 Depth=1
	jmp	.LBB6_28
.LBB6_8:                                # %if.end.7
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	-56(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB6_9:                                # %for.cond.8
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_13 Depth 3
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -48(%rbp)
	movb	%cl, -81(%rbp)          # 1-byte Spill
	je	.LBB6_11
# BB#10:                                # %land.rhs
                                        #   in Loop: Header=BB6_9 Depth=2
	cmpq	$0, -64(%rbp)
	setne	%al
	movb	%al, -81(%rbp)          # 1-byte Spill
.LBB6_11:                               # %land.end
                                        #   in Loop: Header=BB6_9 Depth=2
	movb	-81(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_12
	jmp	.LBB6_27
.LBB6_12:                               # %for.body.11
                                        #   in Loop: Header=BB6_9 Depth=2
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB6_13:                               # %while.cond
                                        #   Parent Loop BB6_4 Depth=1
                                        #     Parent Loop BB6_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-72(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -82(%rbp)          # 1-byte Spill
	je	.LBB6_15
# BB#14:                                # %land.rhs.15
                                        #   in Loop: Header=BB6_13 Depth=3
	movq	-80(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	setne	%dl
	movb	%dl, -82(%rbp)          # 1-byte Spill
.LBB6_15:                               # %land.end.18
                                        #   in Loop: Header=BB6_13 Depth=3
	movb	-82(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_16
	jmp	.LBB6_19
.LBB6_16:                               # %while.body
                                        #   in Loop: Header=BB6_13 Depth=3
	movq	-72(%rbp), %rax
	movsbl	(%rax), %edi
	callq	g_ascii_tolower
	movsbl	%al, %edi
	movq	-80(%rbp), %rcx
	movsbl	(%rcx), %edx
	movl	%edi, -88(%rbp)         # 4-byte Spill
	movl	%edx, %edi
	callq	g_ascii_tolower
	movsbl	%al, %edx
	movl	-88(%rbp), %edi         # 4-byte Reload
	cmpl	%edx, %edi
	je	.LBB6_18
# BB#17:                                # %if.then.25
                                        #   in Loop: Header=BB6_9 Depth=2
	jmp	.LBB6_19
.LBB6_18:                               # %if.end.26
                                        #   in Loop: Header=BB6_13 Depth=3
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB6_13
.LBB6_19:                               # %while.end
                                        #   in Loop: Header=BB6_9 Depth=2
	movq	-72(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB6_22
# BB#20:                                # %land.lhs.true.30
                                        #   in Loop: Header=BB6_9 Depth=2
	movq	-80(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB6_22
# BB#21:                                # %if.then.32
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_33
.LBB6_22:                               # %if.end.33
                                        #   in Loop: Header=BB6_9 Depth=2
	jmp	.LBB6_23
.LBB6_23:                               # %for.inc
                                        #   in Loop: Header=BB6_9 Depth=2
	cmpq	$0, -64(%rbp)
	je	.LBB6_25
# BB#24:                                # %cond.true
                                        #   in Loop: Header=BB6_9 Depth=2
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB6_26
.LBB6_25:                               # %cond.false
                                        #   in Loop: Header=BB6_9 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB6_26
.LBB6_26:                               # %cond.end
                                        #   in Loop: Header=BB6_9 Depth=2
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)
	jmp	.LBB6_9
.LBB6_27:                               # %for.end
                                        #   in Loop: Header=BB6_4 Depth=1
	jmp	.LBB6_28
.LBB6_28:                               # %for.inc.35
                                        #   in Loop: Header=BB6_4 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB6_30
# BB#29:                                # %cond.true.37
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB6_31
.LBB6_30:                               # %cond.false.39
                                        #   in Loop: Header=BB6_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB6_31
.LBB6_31:                               # %cond.end.40
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB6_4
.LBB6_32:                               # %for.end.42
	movq	$0, -8(%rbp)
.LBB6_33:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	file_proc_find_by_extension, .Lfunc_end6-file_proc_find_by_extension
	.cfi_endproc

	.globl	file_procedure_in_group
	.align	16, 0x90
	.type	file_procedure_in_group,@function
file_procedure_in_group:                # @file_procedure_in_group
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_object_get_name
	movb	$1, %cl
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movq	-32(%rbp), %rdi
	movl	$.L.str.6, %esi
                                        # kill: RSI<def> ESI<kill>
	movb	%cl, -45(%rbp)          # 1-byte Spill
	callq	strcmp
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rdi
	movl	$.L.str.7, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	movb	-45(%rbp), %cl          # 1-byte Reload
	movb	%cl, -46(%rbp)          # 1-byte Spill
	je	.LBB7_2
# BB#1:                                 # %lor.rhs
	movq	-32(%rbp), %rdi
	movl	$.L.str.8, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	sete	%cl
	movb	%cl, -46(%rbp)          # 1-byte Spill
.LBB7_2:                                # %lor.end
	movb	-46(%rbp), %al          # 1-byte Reload
	movzbl	%al, %ecx
	andl	$1, %ecx
	movl	%ecx, -40(%rbp)
	movq	-32(%rbp), %rdi
	movl	$.L.str.9, %ecx
	movl	%ecx, %esi
	callq	strcmp
	testl	%eax, %eax
	sete	%dl
	movzbl	%dl, %eax
	movl	%eax, -44(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movq	%rsi, %rdi
	subq	$3, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	ja	.LBB7_11
# BB#14:                                # %lor.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	.LJTI7_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_3:                                # %sw.bb
	movb	$1, %al
	cmpl	$0, -36(%rbp)
	movb	%al, -65(%rbp)          # 1-byte Spill
	jne	.LBB7_6
# BB#4:                                 # %lor.lhs.false
	movb	$1, %al
	cmpl	$0, -40(%rbp)
	movb	%al, -65(%rbp)          # 1-byte Spill
	jne	.LBB7_6
# BB#5:                                 # %lor.rhs.12
	cmpl	$0, -44(%rbp)
	setne	%al
	movb	%al, -65(%rbp)          # 1-byte Spill
.LBB7_6:                                # %lor.end.14
	movb	-65(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB7_13
.LBB7_7:                                # %sw.bb.16
	movb	$1, %al
	cmpl	$0, -36(%rbp)
	movb	%al, -66(%rbp)          # 1-byte Spill
	je	.LBB7_9
# BB#8:                                 # %lor.rhs.18
	cmpl	$0, -44(%rbp)
	setne	%al
	movb	%al, -66(%rbp)          # 1-byte Spill
.LBB7_9:                                # %lor.end.20
	movb	-66(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB7_13
.LBB7_10:                               # %sw.bb.22
	movl	$1, -4(%rbp)
	jmp	.LBB7_13
.LBB7_11:                               # %sw.default
	jmp	.LBB7_12
.LBB7_12:                               # %sw.bb.23
	movl	$1, -4(%rbp)
.LBB7_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	file_procedure_in_group, .Lfunc_end7-file_procedure_in_group
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_12
	.quad	.LBB7_10
	.quad	.LBB7_3
	.quad	.LBB7_7

	.text
	.align	16, 0x90
	.type	file_check_single_magic,@function
file_check_single_magic:                # @file_check_single_magic
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
	subq	$560, %rsp              # imm = 0x230
	movabsq	$.L.str.10, %rax
	leaq	-72(%rbp), %r10
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	%r9, -56(%rbp)
	movl	$0, -60(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	movq	%r10, %rdx
	movb	$0, %al
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	je	.LBB8_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB8_87
.LBB8_2:                                # %if.end
	movabsq	$.L.str.11, %rsi
	movq	$0, -104(%rbp)
	movb	$0, -105(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB8_4
# BB#3:                                 # %if.then.2
	movl	$1, -92(%rbp)
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB8_17
.LBB8_4:                                # %if.else
	movabsq	$.L.str.12, %rsi
	movq	-24(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB8_6
# BB#5:                                 # %if.then.5
	movl	$2, -92(%rbp)
	movq	-24(%rbp), %rax
	addq	$5, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB8_16
.LBB8_6:                                # %if.else.7
	movabsq	$.L.str.13, %rsi
	movq	-24(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB8_8
# BB#7:                                 # %if.then.10
	movl	$4, -92(%rbp)
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB8_15
.LBB8_8:                                # %if.else.12
	movabsq	$.L.str.14, %rsi
	movq	-24(%rbp), %rdi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB8_10
# BB#9:                                 # %if.then.15
	movl	$5, -92(%rbp)
	jmp	.LBB8_14
.LBB8_10:                               # %if.else.16
	movq	-24(%rbp), %rdi
	movl	$.L.str.15, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB8_12
# BB#11:                                # %if.then.19
	movl	$0, -92(%rbp)
	jmp	.LBB8_13
.LBB8_12:                               # %if.else.20
	movl	$0, -4(%rbp)
	jmp	.LBB8_87
.LBB8_13:                               # %if.end.21
	jmp	.LBB8_14
.LBB8_14:                               # %if.end.22
	jmp	.LBB8_15
.LBB8_15:                               # %if.end.23
	jmp	.LBB8_16
.LBB8_16:                               # %if.end.24
	jmp	.LBB8_17
.LBB8_17:                               # %if.end.25
	cmpq	$0, -104(%rbp)
	je	.LBB8_28
# BB#18:                                # %land.lhs.true
	movq	-104(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$38, %ecx
	jne	.LBB8_28
# BB#19:                                # %if.then.29
	movq	-104(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, %eax
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rax,2), %ecx
	andl	$8, %ecx
	cmpl	$0, %ecx
	je	.LBB8_27
# BB#20:                                # %if.then.34
	movq	-104(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$48, %ecx
	je	.LBB8_22
# BB#21:                                # %if.then.39
	movabsq	$.L.str.16, %rsi
	leaq	-88(%rbp), %rdx
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	__isoc99_sscanf
	movl	%eax, -536(%rbp)        # 4-byte Spill
	jmp	.LBB8_26
.LBB8_22:                               # %if.else.42
	movq	-104(%rbp), %rax
	movsbl	2(%rax), %ecx
	cmpl	$120, %ecx
	jne	.LBB8_24
# BB#23:                                # %if.then.47
	movabsq	$.L.str.17, %rsi
	leaq	-88(%rbp), %rdx
	movq	-104(%rbp), %rax
	addq	$3, %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	__isoc99_sscanf
	movl	%eax, -540(%rbp)        # 4-byte Spill
	jmp	.LBB8_25
.LBB8_24:                               # %if.else.50
	movabsq	$.L.str.18, %rsi
	leaq	-88(%rbp), %rdx
	movq	-104(%rbp), %rax
	addq	$2, %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	__isoc99_sscanf
	movl	%eax, -544(%rbp)        # 4-byte Spill
.LBB8_25:                               # %if.end.53
	jmp	.LBB8_26
.LBB8_26:                               # %if.end.54
	movq	-104(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -105(%rbp)
.LBB8_27:                               # %if.end.55
	jmp	.LBB8_28
.LBB8_28:                               # %if.end.56
	cmpl	$0, -92(%rbp)
	jle	.LBB8_67
# BB#29:                                # %if.then.59
	movb	$61, -106(%rbp)
	movq	$0, -120(%rbp)
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$62, %ecx
	je	.LBB8_31
# BB#30:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$60, %ecx
	jne	.LBB8_32
.LBB8_31:                               # %if.then.68
	movq	-32(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -106(%rbp)
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
.LBB8_32:                               # %if.end.70
	callq	__errno_location
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%edx, %edx
	movl	$0, (%rax)
	movq	-32(%rbp), %rdi
	callq	strtol
	movq	%rax, -80(%rbp)
	callq	__errno_location
	cmpl	$0, (%rax)
	je	.LBB8_34
# BB#33:                                # %if.then.76
	movl	$0, -4(%rbp)
	jmp	.LBB8_87
.LBB8_34:                               # %if.end.77
	cmpl	$5, -92(%rbp)
	jne	.LBB8_38
# BB#35:                                # %if.then.80
	movq	-56(%rbp), %rdi
	callq	fileno
	leaq	-264(%rbp), %rsi
	movl	%eax, %edi
	callq	fstat
	cmpl	$0, %eax
	jge	.LBB8_37
# BB#36:                                # %if.then.85
	movl	$0, -4(%rbp)
	jmp	.LBB8_87
.LBB8_37:                               # %if.end.86
	movq	-216(%rbp), %rax
	movq	%rax, -120(%rbp)
	jmp	.LBB8_55
.LBB8_38:                               # %if.else.87
	cmpq	$0, -72(%rbp)
	jl	.LBB8_45
# BB#39:                                # %land.lhs.true.90
	movq	-72(%rbp), %rax
	movslq	-92(%rbp), %rcx
	addq	%rcx, %rax
	movslq	-44(%rbp), %rcx
	cmpq	%rcx, %rax
	jg	.LBB8_45
# BB#40:                                # %if.then.95
	movl	$0, -96(%rbp)
.LBB8_41:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-96(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB8_44
# BB#42:                                # %for.body
                                        #   in Loop: Header=BB8_41 Depth=1
	movq	-120(%rbp), %rax
	shlq	$8, %rax
	movq	-72(%rbp), %rcx
	movslq	-96(%rbp), %rdx
	addq	%rdx, %rcx
	movq	-40(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	movl	%esi, %ecx
	orq	%rcx, %rax
	movq	%rax, -120(%rbp)
# BB#43:                                # %for.inc
                                        #   in Loop: Header=BB8_41 Depth=1
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB8_41
.LBB8_44:                               # %for.end
	jmp	.LBB8_54
.LBB8_45:                               # %if.else.102
	movl	$2, %eax
	xorl	%ecx, %ecx
	movl	$0, -268(%rbp)
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rsi
	cmpq	$0, -72(%rbp)
	cmovgel	%ecx, %eax
	movl	%eax, %edx
	callq	fseek
	cmpl	$0, %eax
	jge	.LBB8_47
# BB#46:                                # %if.then.108
	movl	$0, -4(%rbp)
	jmp	.LBB8_87
.LBB8_47:                               # %if.end.109
	movl	$0, -96(%rbp)
.LBB8_48:                               # %for.cond.110
                                        # =>This Inner Loop Header: Depth=1
	movl	-96(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB8_51
# BB#49:                                # %for.body.113
                                        #   in Loop: Header=BB8_48 Depth=1
	movq	-120(%rbp), %rax
	shlq	$8, %rax
	movq	-56(%rbp), %rdi
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	_IO_getc
	movl	%eax, -268(%rbp)
	movslq	%eax, %rdi
	movq	-552(%rbp), %rcx        # 8-byte Reload
	orq	%rdi, %rcx
	movq	%rcx, -120(%rbp)
# BB#50:                                # %for.inc.118
                                        #   in Loop: Header=BB8_48 Depth=1
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB8_48
.LBB8_51:                               # %for.end.120
	cmpl	$-1, -268(%rbp)
	jne	.LBB8_53
# BB#52:                                # %if.then.123
	movl	$0, -4(%rbp)
	jmp	.LBB8_87
.LBB8_53:                               # %if.end.124
	jmp	.LBB8_54
.LBB8_54:                               # %if.end.125
	jmp	.LBB8_55
.LBB8_55:                               # %if.end.126
	movsbl	-105(%rbp), %eax
	cmpl	$38, %eax
	jne	.LBB8_57
# BB#56:                                # %if.then.130
	movq	-88(%rbp), %rax
	andq	-120(%rbp), %rax
	movq	%rax, -120(%rbp)
.LBB8_57:                               # %if.end.132
	movsbl	-106(%rbp), %eax
	cmpl	$60, %eax
	jne	.LBB8_59
# BB#58:                                # %if.then.136
	movq	-120(%rbp), %rax
	cmpq	-80(%rbp), %rax
	setb	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -60(%rbp)
	jmp	.LBB8_63
.LBB8_59:                               # %if.else.139
	movsbl	-106(%rbp), %eax
	cmpl	$62, %eax
	jne	.LBB8_61
# BB#60:                                # %if.then.143
	movq	-120(%rbp), %rax
	cmpq	-80(%rbp), %rax
	seta	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -60(%rbp)
	jmp	.LBB8_62
.LBB8_61:                               # %if.else.146
	movq	-120(%rbp), %rax
	cmpq	-80(%rbp), %rax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -60(%rbp)
.LBB8_62:                               # %if.end.149
	jmp	.LBB8_63
.LBB8_63:                               # %if.end.150
	cmpl	$0, -60(%rbp)
	je	.LBB8_66
# BB#64:                                # %land.lhs.true.152
	cmpl	$5, -92(%rbp)
	jne	.LBB8_66
# BB#65:                                # %if.then.155
	movl	$2, -60(%rbp)
.LBB8_66:                               # %if.end.156
	jmp	.LBB8_86
.LBB8_67:                               # %if.else.157
	cmpl	$0, -92(%rbp)
	jne	.LBB8_85
# BB#68:                                # %if.then.160
	movl	$256, %edx              # imm = 0x100
	leaq	-92(%rbp), %rcx
	leaq	-528(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	file_convert_string
	cmpl	$0, -92(%rbp)
	jg	.LBB8_70
# BB#69:                                # %if.then.163
	movl	$0, -4(%rbp)
	jmp	.LBB8_87
.LBB8_70:                               # %if.end.164
	cmpq	$0, -72(%rbp)
	jl	.LBB8_73
# BB#71:                                # %land.lhs.true.167
	movq	-72(%rbp), %rax
	movslq	-92(%rbp), %rcx
	addq	%rcx, %rax
	movslq	-44(%rbp), %rcx
	cmpq	%rcx, %rax
	jg	.LBB8_73
# BB#72:                                # %if.then.173
	leaq	-528(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	-72(%rbp), %rax
	movslq	-92(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcmp
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB8_84
.LBB8_73:                               # %if.else.180
	movl	$2, %eax
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rsi
	cmpq	$0, -72(%rbp)
	cmovgel	%ecx, %eax
	movl	%eax, %edx
	callq	fseek
	cmpl	$0, %eax
	jge	.LBB8_75
# BB#74:                                # %if.then.187
	movl	$0, -4(%rbp)
	jmp	.LBB8_87
.LBB8_75:                               # %if.end.188
	movl	$1, -60(%rbp)
	movl	$0, -96(%rbp)
.LBB8_76:                               # %for.cond.189
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -60(%rbp)
	movb	%cl, -553(%rbp)         # 1-byte Spill
	je	.LBB8_78
# BB#77:                                # %land.rhs
                                        #   in Loop: Header=BB8_76 Depth=1
	movl	-96(%rbp), %eax
	cmpl	-92(%rbp), %eax
	setl	%cl
	movb	%cl, -553(%rbp)         # 1-byte Spill
.LBB8_78:                               # %land.end
                                        #   in Loop: Header=BB8_76 Depth=1
	movb	-553(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_79
	jmp	.LBB8_83
.LBB8_79:                               # %for.body.193
                                        #   in Loop: Header=BB8_76 Depth=1
	movq	-56(%rbp), %rdi
	callq	_IO_getc
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -532(%rbp)
	cmpl	$-1, -532(%rbp)
	movb	%dl, -554(%rbp)         # 1-byte Spill
	je	.LBB8_81
# BB#80:                                # %land.rhs.198
                                        #   in Loop: Header=BB8_76 Depth=1
	movl	-532(%rbp), %eax
	movslq	-96(%rbp), %rcx
	movsbl	-528(%rbp,%rcx), %edx
	cmpl	%edx, %eax
	sete	%sil
	movb	%sil, -554(%rbp)        # 1-byte Spill
.LBB8_81:                               # %land.end.204
                                        #   in Loop: Header=BB8_76 Depth=1
	movb	-554(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -60(%rbp)
# BB#82:                                # %for.inc.205
                                        #   in Loop: Header=BB8_76 Depth=1
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB8_76
.LBB8_83:                               # %for.end.207
	jmp	.LBB8_84
.LBB8_84:                               # %if.end.208
	jmp	.LBB8_85
.LBB8_85:                               # %if.end.209
	jmp	.LBB8_86
.LBB8_86:                               # %if.end.210
	movl	-60(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB8_87:                               # %return
	movl	-4(%rbp), %eax
	addq	$560, %rsp              # imm = 0x230
	popq	%rbp
	retq
.Lfunc_end8:
	.size	file_check_single_magic, .Lfunc_end8-file_check_single_magic
	.cfi_endproc

	.align	16, 0x90
	.type	file_convert_string,@function
file_convert_string:                    # @file_convert_string
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -48(%rbp)
.LBB9_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_10 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -69(%rbp)          # 1-byte Spill
	je	.LBB9_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	movslq	-20(%rbp), %rcx
	cmpq	%rcx, %rax
	setl	%dl
	movb	%dl, -69(%rbp)          # 1-byte Spill
.LBB9_3:                                # %land.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movb	-69(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB9_4
	jmp	.LBB9_27
.LBB9_4:                                # %while.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$92, %ecx
	je	.LBB9_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	(%rax), %dl
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB9_1
.LBB9_6:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movzbl	1(%rax), %edx
	cmpl	$0, %edx
	jne	.LBB9_8
# BB#7:                                 # %if.then.15
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	$92, (%rax)
	jmp	.LBB9_27
.LBB9_8:                                # %if.end.17
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %edx
	addl	$-48, %edx
	subl	$4, %edx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	%edx, -80(%rbp)         # 4-byte Spill
	jb	.LBB9_9
	jmp	.LBB9_28
.LBB9_28:                               # %if.end.17
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$97, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB9_18
	jmp	.LBB9_29
.LBB9_29:                               # %if.end.17
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$98, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB9_19
	jmp	.LBB9_30
.LBB9_30:                               # %if.end.17
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$102, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB9_23
	jmp	.LBB9_31
.LBB9_31:                               # %if.end.17
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$110, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB9_21
	jmp	.LBB9_32
.LBB9_32:                               # %if.end.17
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$114, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB9_24
	jmp	.LBB9_33
.LBB9_33:                               # %if.end.17
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$116, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB9_20
	jmp	.LBB9_34
.LBB9_34:                               # %if.end.17
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$118, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB9_22
	jmp	.LBB9_25
.LBB9_9:                                # %sw.bb
                                        #   in Loop: Header=BB9_1 Depth=1
	leaq	-53(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB9_10:                               # %for.cond
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-53(%rbp), %rax
	movq	-64(%rbp), %rcx
	subq	%rax, %rcx
	cmpq	$3, %rcx
	jg	.LBB9_17
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB9_10 Depth=2
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	(%rax), %dl
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	%dl, (%rax)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %esi
	cmpl	$0, %esi
	je	.LBB9_15
# BB#12:                                # %lor.lhs.false
                                        #   in Loop: Header=BB9_10 Depth=2
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movq	g_ascii_table, %rdx
	movzwl	(%rdx,%rax,2), %ecx
	andl	$8, %ecx
	cmpl	$0, %ecx
	je	.LBB9_15
# BB#13:                                # %lor.lhs.false.33
                                        #   in Loop: Header=BB9_10 Depth=2
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$56, %ecx
	je	.LBB9_15
# BB#14:                                # %lor.lhs.false.37
                                        #   in Loop: Header=BB9_10 Depth=2
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$57, %ecx
	jne	.LBB9_16
.LBB9_15:                               # %if.then.41
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_17
.LBB9_16:                               # %if.end.42
                                        #   in Loop: Header=BB9_10 Depth=2
	jmp	.LBB9_10
.LBB9_17:                               # %for.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movabsq	$.L.str.19, %rsi
	leaq	-68(%rbp), %rdx
	leaq	-53(%rbp), %rdi
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
	movb	$0, %al
	callq	__isoc99_sscanf
	movl	-68(%rbp), %ecx
	movb	%cl, %r8b
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -48(%rbp)
	movb	%r8b, (%rdx)
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB9_26
.LBB9_18:                               # %sw.bb.46
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	$7, (%rax)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB9_26
.LBB9_19:                               # %sw.bb.49
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	$8, (%rax)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB9_26
.LBB9_20:                               # %sw.bb.52
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	$9, (%rax)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB9_26
.LBB9_21:                               # %sw.bb.55
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	$10, (%rax)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB9_26
.LBB9_22:                               # %sw.bb.58
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	$11, (%rax)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB9_26
.LBB9_23:                               # %sw.bb.61
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	$12, (%rax)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB9_26
.LBB9_24:                               # %sw.bb.64
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	$13, (%rax)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB9_26
.LBB9_25:                               # %sw.default
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	(%rax), %dl
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	%dl, (%rax)
.LBB9_26:                               # %sw.epilog
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_1
.LBB9_27:                               # %while.end
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	file_convert_string, .Lfunc_end9-file_convert_string
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-File"
	.size	.L.str, 10

	.type	.L__func__.file_procedure_find,@object # @__func__.file_procedure_find
.L__func__.file_procedure_find:
	.asciz	"file_procedure_find"
	.size	.L__func__.file_procedure_find, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"procs != NULL"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"uri != NULL"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.3, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"rb"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Unknown file type"
	.size	.L.str.5, 18

	.type	.L__func__.file_procedure_find_by_prefix,@object # @__func__.file_procedure_find_by_prefix
.L__func__.file_procedure_find_by_prefix:
	.asciz	"file_procedure_find_by_prefix"
	.size	.L__func__.file_procedure_find_by_prefix, 30

	.type	.L__func__.file_procedure_find_by_extension,@object # @__func__.file_procedure_find_by_extension
.L__func__.file_procedure_find_by_extension:
	.asciz	"file_procedure_find_by_extension"
	.size	.L__func__.file_procedure_find_by_extension, 33

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-xcf-save"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"file-gz-save"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"file-bz2-save"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"file-uri-save"
	.size	.L.str.9, 14

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%ld"
	.size	.L.str.10, 4

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"byte"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"short"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"long"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"size"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"string"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%lu"
	.size	.L.str.16, 4

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%lx"
	.size	.L.str.17, 4

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%lo"
	.size	.L.str.18, 4

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%o"
	.size	.L.str.19, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
