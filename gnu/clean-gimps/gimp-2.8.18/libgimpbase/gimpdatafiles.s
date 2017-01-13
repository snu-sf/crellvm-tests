	.text
	.file	"gimpdatafiles.bc"
	.globl	gimp_datafiles_check_extension
	.align	16, 0x90
	.type	gimp_datafiles_check_extension,@function
gimp_datafiles_check_extension:         # @gimp_datafiles_check_extension
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_datafiles_check_extension(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_15
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
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_datafiles_check_extension(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_15
.LBB0_9:                                # %if.end.5
	jmp	.LBB0_10
.LBB0_10:                               # %do.end.6
	movq	-16(%rbp), %rdi
	callq	strlen@PLT
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movq	-24(%rbp), %rdi
	callq	strlen@PLT
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB0_13
# BB#11:                                # %land.lhs.true
	cmpl	$0, -32(%rbp)
	je	.LBB0_13
# BB#12:                                # %land.lhs.true.10
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jg	.LBB0_14
.LBB0_13:                               # %if.then.13
	movl	$0, -4(%rbp)
	jmp	.LBB0_15
.LBB0_14:                               # %if.end.14
	movl	-28(%rbp), %eax
	subl	-32(%rbp), %eax
	movslq	%eax, %rcx
	addq	-16(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_ascii_strcasecmp@PLT
	cmpl	$0, %eax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movl	%eax, -4(%rbp)
.LBB0_15:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_datafiles_check_extension, .Lfunc_end0-gimp_datafiles_check_extension
	.cfi_endproc

	.globl	gimp_datafiles_read_directories
	.align	16, 0x90
	.type	gimp_datafiles_read_directories,@function
gimp_datafiles_read_directories:        # @gimp_datafiles_read_directories
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_datafiles_read_directories(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB1_47
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	jmp	.LBB1_6
.LBB1_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.3
	jmp	.LBB1_9
.LBB1_8:                                # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_datafiles_read_directories(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB1_47
.LBB1_9:                                # %if.end.5
	jmp	.LBB1_10
.LBB1_10:                               # %do.end.6
	movq	-8(%rbp), %rdi
	callq	g_strdup@PLT
	movl	$256, %esi              # imm = 0x100
	movl	$1, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_path_parse@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB1_11:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_14 Depth 2
	cmpq	$0, -56(%rbp)
	je	.LBB1_46
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB1_11 Depth=1
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	g_dir_open@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB1_41
# BB#13:                                # %if.then.10
                                        #   in Loop: Header=BB1_11 Depth=1
	jmp	.LBB1_14
.LBB1_14:                               # %while.cond
                                        #   Parent Loop BB1_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-72(%rbp), %rdi
	callq	g_dir_read_name@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, %rax
	je	.LBB1_40
# BB#15:                                # %while.body
                                        #   in Loop: Header=BB1_14 Depth=2
	movq	-80(%rbp), %rdi
	callq	is_hidden
	cmpl	$0, %eax
	je	.LBB1_17
# BB#16:                                # %if.then.15
                                        #   in Loop: Header=BB1_14 Depth=2
	jmp	.LBB1_14
.LBB1_17:                               # %if.end.16
                                        #   in Loop: Header=BB1_14 Depth=2
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movb	$0, %al
	callq	g_build_filename@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	g_file_new_for_path@PLT
	leaq	.L.str.5(%rip), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	-168(%rbp), %r8         # 8-byte Reload
	callq	g_file_query_info@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB1_39
# BB#18:                                # %if.then.21
                                        #   in Loop: Header=BB1_14 Depth=2
	leaq	.L.str.6(%rip), %rsi
	movq	-88(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-104(%rbp), %rdi
	callq	g_file_info_get_attribute_uint64@PLT
	leaq	.L.str.7(%rip), %rsi
	movq	%rax, -128(%rbp)
	movq	-104(%rbp), %rdi
	callq	g_file_info_get_attribute_uint64@PLT
	leaq	.L.str.8(%rip), %rsi
	movq	%rax, -120(%rbp)
	movq	-104(%rbp), %rdi
	callq	g_file_info_get_attribute_uint64@PLT
	leaq	.L.str.9(%rip), %rsi
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rdi
	callq	g_file_info_get_attribute_uint32@PLT
	movl	%eax, -156(%rbp)
	movl	-12(%rbp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB1_20
# BB#19:                                # %if.then.29
                                        #   in Loop: Header=BB1_14 Depth=2
	leaq	-152(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rsi
	callq	*%rax
	jmp	.LBB1_38
.LBB1_20:                               # %if.else.30
                                        #   in Loop: Header=BB1_14 Depth=2
	movl	-12(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB1_23
# BB#21:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_14 Depth=2
	cmpl	$1, -156(%rbp)
	jne	.LBB1_23
# BB#22:                                # %if.then.34
                                        #   in Loop: Header=BB1_14 Depth=2
	leaq	-152(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rsi
	callq	*%rax
	jmp	.LBB1_37
.LBB1_23:                               # %if.else.35
                                        #   in Loop: Header=BB1_14 Depth=2
	movl	-12(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB1_26
# BB#24:                                # %land.lhs.true.38
                                        #   in Loop: Header=BB1_14 Depth=2
	cmpl	$2, -156(%rbp)
	jne	.LBB1_26
# BB#25:                                # %if.then.40
                                        #   in Loop: Header=BB1_14 Depth=2
	leaq	-152(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rsi
	callq	*%rax
	jmp	.LBB1_36
.LBB1_26:                               # %if.else.41
                                        #   in Loop: Header=BB1_14 Depth=2
	movl	-12(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB1_29
# BB#27:                                # %land.lhs.true.44
                                        #   in Loop: Header=BB1_14 Depth=2
	cmpl	$3, -156(%rbp)
	jne	.LBB1_29
# BB#28:                                # %if.then.46
                                        #   in Loop: Header=BB1_14 Depth=2
	leaq	-152(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rsi
	callq	*%rax
	jmp	.LBB1_35
.LBB1_29:                               # %if.else.47
                                        #   in Loop: Header=BB1_14 Depth=2
	movl	-12(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB1_34
# BB#30:                                # %land.lhs.true.50
                                        #   in Loop: Header=BB1_14 Depth=2
	leaq	.L.str.10(%rip), %rsi
	movq	-104(%rbp), %rdi
	callq	g_file_info_get_attribute_boolean@PLT
	cmpl	$0, %eax
	jne	.LBB1_33
# BB#31:                                # %lor.lhs.false
                                        #   in Loop: Header=BB1_14 Depth=2
	cmpl	$1, -156(%rbp)
	jne	.LBB1_34
# BB#32:                                # %land.lhs.true.54
                                        #   in Loop: Header=BB1_14 Depth=2
	movq	-88(%rbp), %rdi
	callq	is_script
	cmpl	$0, %eax
	je	.LBB1_34
.LBB1_33:                               # %if.then.57
                                        #   in Loop: Header=BB1_14 Depth=2
	leaq	-152(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rsi
	callq	*%rax
.LBB1_34:                               # %if.end.58
                                        #   in Loop: Header=BB1_14 Depth=2
	jmp	.LBB1_35
.LBB1_35:                               # %if.end.59
                                        #   in Loop: Header=BB1_14 Depth=2
	jmp	.LBB1_36
.LBB1_36:                               # %if.end.60
                                        #   in Loop: Header=BB1_14 Depth=2
	jmp	.LBB1_37
.LBB1_37:                               # %if.end.61
                                        #   in Loop: Header=BB1_14 Depth=2
	jmp	.LBB1_38
.LBB1_38:                               # %if.end.62
                                        #   in Loop: Header=BB1_14 Depth=2
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
.LBB1_39:                               # %if.end.63
                                        #   in Loop: Header=BB1_14 Depth=2
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
	movq	-88(%rbp), %rdi
	callq	g_free@PLT
	jmp	.LBB1_14
.LBB1_40:                               # %while.end
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-72(%rbp), %rdi
	callq	g_dir_close@PLT
.LBB1_41:                               # %if.end.64
                                        #   in Loop: Header=BB1_11 Depth=1
	jmp	.LBB1_42
.LBB1_42:                               # %for.inc
                                        #   in Loop: Header=BB1_11 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB1_44
# BB#43:                                # %cond.true
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB1_45
.LBB1_44:                               # %cond.false
                                        #   in Loop: Header=BB1_11 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB1_45
.LBB1_45:                               # %cond.end
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB1_11
.LBB1_46:                               # %for.end
	movq	-48(%rbp), %rdi
	callq	gimp_path_free@PLT
	movq	-40(%rbp), %rdi
	callq	g_free@PLT
.LBB1_47:                               # %return
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_datafiles_read_directories, .Lfunc_end1-gimp_datafiles_read_directories
	.cfi_endproc

	.align	16, 0x90
	.type	is_hidden,@function
is_hidden:                              # @is_hidden
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movsbl	(%rdi), %eax
	cmpl	$46, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	is_hidden, .Lfunc_end2-is_hidden
	.cfi_endproc

	.align	16, 0x90
	.type	is_script,@function
is_script:                              # @is_script
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	is_script, .Lfunc_end3-is_script
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimpBase"
	.size	.L.str, 12

	.type	.L__func__.gimp_datafiles_check_extension,@object # @__func__.gimp_datafiles_check_extension
.L__func__.gimp_datafiles_check_extension:
	.asciz	"gimp_datafiles_check_extension"
	.size	.L__func__.gimp_datafiles_check_extension, 31

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"filename != NULL"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"extension != NULL"
	.size	.L.str.2, 18

	.type	.L__func__.gimp_datafiles_read_directories,@object # @__func__.gimp_datafiles_read_directories
.L__func__.gimp_datafiles_read_directories:
	.asciz	"gimp_datafiles_read_directories"
	.size	.L__func__.gimp_datafiles_read_directories, 32

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"path_str != NULL"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"loader_func != NULL"
	.size	.L.str.4, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"standard::type,access::can-execute,time::*"
	.size	.L.str.5, 43

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"time::access"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"time::modified"
	.size	.L.str.7, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"time::created"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"standard::type"
	.size	.L.str.9, 15

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"access::can-execute"
	.size	.L.str.10, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
