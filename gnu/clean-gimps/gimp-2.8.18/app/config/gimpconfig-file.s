	.text
	.file	"gimpconfig-file.bc"
	.globl	gimp_config_file_copy
	.align	16, 0x90
	.type	gimp_config_file_copy,@function
gimp_config_file_copy:                  # @gimp_config_file_copy
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
	subq	$8592, %rsp             # imm = 0x2190
	movabsq	$.L.str, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	fopen
	movq	%rax, -8232(%rbp)
	cmpq	$0, -8232(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	movq	%rdi, -8400(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -8404(%rbp)       # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.1, %rdi
	movl	%eax, -8408(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -8416(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -8424(%rbp)       # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-8400(%rbp), %rdi       # 8-byte Reload
	movl	-8404(%rbp), %esi       # 4-byte Reload
	movl	-8408(%rbp), %edx       # 4-byte Reload
	movq	-8416(%rbp), %rcx       # 8-byte Reload
	movq	-8424(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB0_16
.LBB0_2:                                # %if.end
	movabsq	$.L.str.2, %rsi
	movq	-24(%rbp), %rdi
	callq	fopen
	movq	%rax, -8240(%rbp)
	cmpq	$0, -8240(%rbp)
	jne	.LBB0_4
# BB#3:                                 # %if.then.10
	movq	-32(%rbp), %rdi
	movq	%rdi, -8432(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -8436(%rbp)       # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.3, %rdi
	movl	%eax, -8440(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -8448(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -8456(%rbp)       # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-8432(%rbp), %rdi       # 8-byte Reload
	movl	-8436(%rbp), %esi       # 4-byte Reload
	movl	-8440(%rbp), %edx       # 4-byte Reload
	movq	-8448(%rbp), %rcx       # 8-byte Reload
	movq	-8456(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movq	-8232(%rbp), %rdi
	callq	fclose
	movl	$0, -4(%rbp)
	movl	%eax, -8460(%rbp)       # 4-byte Spill
	jmp	.LBB0_16
.LBB0_4:                                # %if.end.19
	jmp	.LBB0_5
.LBB0_5:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movl	$8192, %eax             # imm = 0x2000
	movl	%eax, %edx
	leaq	-8224(%rbp), %rdi
	movq	-8232(%rbp), %rcx
	callq	fread
	movl	%eax, %r8d
	movl	%r8d, -8388(%rbp)
	cmpl	$0, %r8d
	jle	.LBB0_9
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	leaq	-8224(%rbp), %rdi
	movslq	-8388(%rbp), %rdx
	movq	-8240(%rbp), %rcx
	callq	fwrite
	movslq	-8388(%rbp), %rcx
	cmpq	%rcx, %rax
	jae	.LBB0_8
# BB#7:                                 # %if.then.29
	movq	-32(%rbp), %rdi
	movq	%rdi, -8472(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -8476(%rbp)       # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.4, %rdi
	movl	%eax, -8480(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -8488(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -8496(%rbp)       # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-8472(%rbp), %rdi       # 8-byte Reload
	movl	-8476(%rbp), %esi       # 4-byte Reload
	movl	-8480(%rbp), %edx       # 4-byte Reload
	movq	-8488(%rbp), %rcx       # 8-byte Reload
	movq	-8496(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movq	-8232(%rbp), %rdi
	callq	fclose
	movq	-8240(%rbp), %rdi
	movl	%eax, -8500(%rbp)       # 4-byte Spill
	callq	fclose
	movl	$0, -4(%rbp)
	movl	%eax, -8504(%rbp)       # 4-byte Spill
	jmp	.LBB0_16
.LBB0_8:                                # %if.end.39
                                        #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_5
.LBB0_9:                                # %while.end
	movq	-8232(%rbp), %rdi
	callq	ferror
	cmpl	$0, %eax
	je	.LBB0_11
# BB#10:                                # %if.then.41
	movq	-32(%rbp), %rdi
	movq	%rdi, -8512(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -8516(%rbp)       # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.5, %rdi
	movl	%eax, -8520(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -8528(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -8536(%rbp)       # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-8512(%rbp), %rdi       # 8-byte Reload
	movl	-8516(%rbp), %esi       # 4-byte Reload
	movl	-8520(%rbp), %edx       # 4-byte Reload
	movq	-8528(%rbp), %rcx       # 8-byte Reload
	movq	-8536(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movq	-8232(%rbp), %rdi
	callq	fclose
	movq	-8240(%rbp), %rdi
	movl	%eax, -8540(%rbp)       # 4-byte Spill
	callq	fclose
	movl	$0, -4(%rbp)
	movl	%eax, -8544(%rbp)       # 4-byte Spill
	jmp	.LBB0_16
.LBB0_11:                               # %if.end.51
	movq	-8232(%rbp), %rdi
	callq	fclose
	movq	-8240(%rbp), %rdi
	movl	%eax, -8548(%rbp)       # 4-byte Spill
	callq	fclose
	cmpl	$-1, %eax
	jne	.LBB0_13
# BB#12:                                # %if.then.56
	movq	-32(%rbp), %rdi
	movq	%rdi, -8560(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -8564(%rbp)       # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.4, %rdi
	movl	%eax, -8568(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -8576(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -8584(%rbp)       # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-8560(%rbp), %rdi       # 8-byte Reload
	movl	-8564(%rbp), %esi       # 4-byte Reload
	movl	-8568(%rbp), %edx       # 4-byte Reload
	movq	-8576(%rbp), %rcx       # 8-byte Reload
	movq	-8584(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB0_16
.LBB0_13:                               # %if.end.64
	leaq	-8384(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	stat
	cmpl	$0, %eax
	jne	.LBB0_15
# BB#14:                                # %if.then.68
	movq	-24(%rbp), %rdi
	movl	-8360(%rbp), %esi
	callq	chmod
	movl	%eax, -8588(%rbp)       # 4-byte Spill
.LBB0_15:                               # %if.end.70
	movl	$1, -4(%rbp)
.LBB0_16:                               # %return
	movl	-4(%rbp), %eax
	addq	$8592, %rsp             # imm = 0x2190
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_config_file_copy, .Lfunc_end0-gimp_config_file_copy
	.cfi_endproc

	.globl	gimp_config_file_backup_on_error
	.align	16, 0x90
	.type	gimp_config_file_backup_on_error,@function
gimp_config_file_backup_on_error:       # @gimp_config_file_backup_on_error
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movabsq	$.L.str.6, %rdi
	movabsq	$.L__func__.gimp_config_file_backup_on_error, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB1_19
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
	movabsq	$.L.str.6, %rdi
	movabsq	$.L__func__.gimp_config_file_backup_on_error, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB1_19
.LBB1_9:                                # %if.end.5
	jmp	.LBB1_10
.LBB1_10:                               # %do.end.6
	jmp	.LBB1_11
.LBB1_11:                               # %do.body.7
	cmpq	$0, -32(%rbp)
	je	.LBB1_13
# BB#12:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB1_14
.LBB1_13:                               # %if.then.10
	jmp	.LBB1_15
.LBB1_14:                               # %if.else.11
	movabsq	$.L.str.6, %rdi
	movabsq	$.L__func__.gimp_config_file_backup_on_error, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB1_19
.LBB1_15:                               # %if.end.12
	jmp	.LBB1_16
.LBB1_16:                               # %do.end.13
	movabsq	$.L.str.10, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	gimp_config_file_copy
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB1_18
# BB#17:                                # %if.then.15
	movabsq	$.L.str.11, %rdi
	callq	gettext
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_message
.LBB1_18:                               # %if.end.18
	movq	-40(%rbp), %rdi
	callq	g_free
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB1_19:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_config_file_backup_on_error, .Lfunc_end1-gimp_config_file_backup_on_error
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	je	.LBB2_2
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
.LBB2_2:                                # %entry
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
	movl	$.L.str.6, %r9d
	movl	%r9d, %edi
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end2:
	.size	g_message, .Lfunc_end2-g_message
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rb"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.1, 36

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"wb"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.3, 36

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Error writing '%s': %s"
	.size	.L.str.4, 23

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Error reading '%s': %s"
	.size	.L.str.5, 23

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Gimp-Config"
	.size	.L.str.6, 12

	.type	.L__func__.gimp_config_file_backup_on_error,@object # @__func__.gimp_config_file_backup_on_error
.L__func__.gimp_config_file_backup_on_error:
	.asciz	"gimp_config_file_backup_on_error"
	.size	.L__func__.gimp_config_file_backup_on_error, 33

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"filename != NULL"
	.size	.L.str.7, 17

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"name != NULL"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.9, 32

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"~"
	.size	.L.str.10, 2

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"There was an error parsing your '%s' file. Default values will be used. A backup of your configuration has been created at '%s'."
	.size	.L.str.11, 129


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
