	.text
	.file	"ftx.bc"
	.globl	foreign_fileexists
	.align	16, 0x90
	.type	foreign_fileexists,@function
foreign_fileexists:                     # @foreign_fileexists
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	cmpq	936(%rdi), %rsi
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_7
.LBB0_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	288(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	128(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB0_4
# BB#3:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_7
.LBB0_4:                                # %if.end.5
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	movq	$-1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %r8          # 8-byte Reload
	callq	g_filename_from_utf8
	movl	$16, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_file_test
	cmpl	$0, %eax
	je	.LBB0_6
# BB#5:                                 # %if.then.11
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.end.12
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB0_7:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	foreign_fileexists, .Lfunc_end0-foreign_fileexists
	.cfi_endproc

	.globl	foreign_filetype
	.align	16, 0x90
	.type	foreign_filetype,@function
foreign_filetype:                       # @foreign_filetype
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
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	cmpq	936(%rdi), %rsi
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_14
.LBB1_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	288(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	128(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB1_4
# BB#3:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_14
.LBB1_4:                                # %if.end.5
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	movq	$-1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-56(%rbp), %r8          # 8-byte Reload
	callq	g_filename_from_utf8
	movl	$2, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_file_test
	cmpl	$0, %eax
	je	.LBB1_6
# BB#5:                                 # %if.then.11
	movl	$3, -44(%rbp)
	jmp	.LBB1_13
.LBB1_6:                                # %if.else
	movl	$1, %esi
	movq	-40(%rbp), %rdi
	callq	g_file_test
	cmpl	$0, %eax
	je	.LBB1_8
# BB#7:                                 # %if.then.14
	movl	$1, -44(%rbp)
	jmp	.LBB1_12
.LBB1_8:                                # %if.else.15
	movl	$4, %esi
	movq	-40(%rbp), %rdi
	callq	g_file_test
	cmpl	$0, %eax
	je	.LBB1_10
# BB#9:                                 # %if.then.18
	movl	$2, -44(%rbp)
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.19
	movl	$0, -44(%rbp)
.LBB1_11:                               # %if.end.20
	jmp	.LBB1_12
.LBB1_12:                               # %if.end.21
	jmp	.LBB1_13
.LBB1_13:                               # %if.end.22
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rdi
	movslq	-44(%rbp), %rsi
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB1_14:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	foreign_filetype, .Lfunc_end1-foreign_filetype
	.cfi_endproc

	.globl	foreign_filesize
	.align	16, 0x90
	.type	foreign_filesize,@function
foreign_filesize:                       # @foreign_filesize
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
	subq	$208, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	cmpq	936(%rdi), %rsi
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_8
.LBB2_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	288(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	128(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB2_4
# BB#3:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_8
.LBB2_4:                                # %if.end.5
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	movq	$-1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-208(%rbp), %rdx        # 8-byte Reload
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	-208(%rbp), %r8         # 8-byte Reload
	callq	g_filename_from_utf8
	leaq	-184(%rbp), %rsi
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rdi
	callq	stat
	movl	%eax, -196(%rbp)
	cmpl	$0, -196(%rbp)
	jne	.LBB2_6
# BB#5:                                 # %if.then.11
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	*%rax
	movq	%rax, -40(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB2_7:                                # %if.end.15
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB2_8:                                # %return
	movq	-8(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	foreign_filesize, .Lfunc_end2-foreign_filesize
	.cfi_endproc

	.globl	foreign_filedelete
	.align	16, 0x90
	.type	foreign_filedelete,@function
foreign_filedelete:                     # @foreign_filedelete
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	cmpq	936(%rdi), %rsi
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_8
.LBB3_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	288(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	128(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB3_4
# BB#3:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_8
.LBB3_4:                                # %if.end.5
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	movq	$-1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	g_filename_from_utf8
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	unlink
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.LBB3_6
# BB#5:                                 # %if.then.11
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB3_7:                                # %if.end.13
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_8:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	foreign_filedelete, .Lfunc_end3-foreign_filedelete
	.cfi_endproc

	.globl	foreign_diropenstream
	.align	16, 0x90
	.type	foreign_diropenstream,@function
foreign_diropenstream:                  # @foreign_diropenstream
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	cmpq	936(%rdi), %rsi
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_7
.LBB4_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	288(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	128(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB4_4
# BB#3:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_7
.LBB4_4:                                # %if.end.5
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	movq	$-1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-56(%rbp), %r8          # 8-byte Reload
	callq	g_filename_from_utf8
	xorl	%esi, %esi
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_dir_open
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_6
# BB#5:                                 # %if.then.11
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.end.13
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB4_7:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	foreign_diropenstream, .Lfunc_end4-foreign_diropenstream
	.cfi_endproc

	.globl	foreign_dirreadentry
	.align	16, 0x90
	.type	foreign_dirreadentry,@function
foreign_dirreadentry:                   # @foreign_dirreadentry
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	cmpq	936(%rdi), %rsi
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_9
.LBB5_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	288(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	184(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB5_4
# BB#3:                                 # %if.then.4
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_9
.LBB5_4:                                # %if.end.6
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB5_6
# BB#5:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_9
.LBB5_6:                                # %if.end.12
	movq	-40(%rbp), %rdi
	callq	g_dir_read_name
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_8
# BB#7:                                 # %if.then.15
	movq	-16(%rbp), %rax
	movq	1032(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_9
.LBB5_8:                                # %if.end.16
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdi
	movq	%rcx, %rdx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %r8          # 8-byte Reload
	callq	g_filename_to_utf8
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	64(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	*%rax
	movq	%rax, -8(%rbp)
.LBB5_9:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	foreign_dirreadentry, .Lfunc_end5-foreign_dirreadentry
	.cfi_endproc

	.globl	foreign_dirrewind
	.align	16, 0x90
	.type	foreign_dirrewind,@function
foreign_dirrewind:                      # @foreign_dirrewind
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
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	cmpq	936(%rdi), %rsi
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_7
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	288(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	184(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB6_4
# BB#3:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_7
.LBB6_4:                                # %if.end.5
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB6_6
# BB#5:                                 # %if.then.9
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.end.11
	movq	-40(%rbp), %rdi
	callq	g_dir_rewind
	movq	-16(%rbp), %rdi
	movq	968(%rdi), %rdi
	movq	%rdi, -8(%rbp)
.LBB6_7:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	foreign_dirrewind, .Lfunc_end6-foreign_dirrewind
	.cfi_endproc

	.globl	foreign_dirclosestream
	.align	16, 0x90
	.type	foreign_dirclosestream,@function
foreign_dirclosestream:                 # @foreign_dirclosestream
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	cmpq	936(%rdi), %rsi
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_7
.LBB7_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	288(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	184(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB7_4
# BB#3:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_7
.LBB7_4:                                # %if.end.5
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB7_6
# BB#5:                                 # %if.then.9
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.end.11
	movq	-40(%rbp), %rdi
	callq	g_dir_close
	movq	-16(%rbp), %rdi
	movq	968(%rdi), %rdi
	movq	%rdi, -8(%rbp)
.LBB7_7:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	foreign_dirclosestream, .Lfunc_end7-foreign_dirclosestream
	.cfi_endproc

	.globl	foreign_getenv
	.align	16, 0x90
	.type	foreign_getenv,@function
foreign_getenv:                         # @foreign_getenv
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	cmpq	936(%rdi), %rsi
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_8
.LBB8_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	288(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	128(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB8_4
# BB#3:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_8
.LBB8_4:                                # %if.end.5
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	144(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_getenv
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB8_6
# BB#5:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	64(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	*%rax
	movq	%rax, -40(%rbp)
.LBB8_7:                                # %if.end.14
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB8_8:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	foreign_getenv, .Lfunc_end8-foreign_getenv
	.cfi_endproc

	.globl	foreign_time
	.align	16, 0x90
	.type	foreign_time,@function
foreign_time:                           # @foreign_time
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
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	cmpq	936(%rdi), %rsi
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB9_3
.LBB9_2:                                # %if.end
	leaq	-32(%rbp), %rdi
	callq	time
	leaq	-32(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	localtime
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	32(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movslq	20(%rsi), %rsi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	*%rcx
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %r8
	movslq	16(%r8), %r8
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	%r8, %rsi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	*%rdx
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %r8
	movslq	12(%r8), %r8
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	%r8, %rsi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	*%rdx
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %r8
	movslq	8(%r8), %r8
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	%r8, %rsi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	*%rdx
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %r8
	movslq	4(%r8), %r8
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	%r8, %rsi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	callq	*%rdx
	movq	-16(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %r8
	movslq	(%r8), %r8
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	%r8, %rsi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	callq	*%rdx
	movq	-16(%rbp), %rcx
	movq	936(%rcx), %rdx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	-192(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movq	-168(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movq	-144(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movq	-120(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movq	-96(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movq	-72(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB9_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	foreign_time, .Lfunc_end9-foreign_time
	.cfi_endproc

	.globl	foreign_gettimeofday
	.align	16, 0x90
	.type	foreign_gettimeofday,@function
foreign_gettimeofday:                   # @foreign_gettimeofday
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
	subq	$96, %rsp
	leaq	-32(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	callq	g_get_current_time
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	5608(%rsi), %rsi
	movq	32(%rsi), %rsi
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	*%rcx
	movq	-8(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %r8
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	%r8, %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	*%rdx
	movq	-8(%rbp), %rcx
	movq	936(%rcx), %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movq	-88(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movq	-64(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	foreign_gettimeofday, .Lfunc_end10-foreign_gettimeofday
	.cfi_endproc

	.globl	foreign_usleep
	.align	16, 0x90
	.type	foreign_usleep,@function
foreign_usleep:                         # @foreign_usleep
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdi
	cmpq	936(%rdi), %rsi
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB11_5
.LBB11_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	288(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	184(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB11_4
# BB#3:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	1000(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB11_5
.LBB11_4:                               # %if.end.5
	movq	-16(%rbp), %rax
	movq	5608(%rax), %rax
	movq	168(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_usleep
	movq	-16(%rbp), %rax
	movq	968(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB11_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	foreign_usleep, .Lfunc_end11-foreign_usleep
	.cfi_endproc

	.globl	init_ftx
	.align	16, 0x90
	.type	init_ftx,@function
init_ftx:                               # @init_ftx
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
	subq	$528, %rsp              # imm = 0x210
	movabsq	$.L.str.4, %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	5608(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	1048(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	-8(%rbp), %r8
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	*%rdx
	movabsq	$foreign_getenv, %rcx
	movq	-8(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	96(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	*%rdx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	-120(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movabsq	$.L.str.5, %rsi
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	1048(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	-8(%rbp), %r8
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	*%rdx
	movabsq	$foreign_time, %rcx
	movq	-8(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	96(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	*%rdx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movq	-176(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	-168(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movabsq	$.L.str.6, %rsi
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	1048(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	-8(%rbp), %r8
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	*%rdx
	movabsq	$foreign_gettimeofday, %rcx
	movq	-8(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	96(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	*%rdx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	-192(%rbp), %rsi        # 8-byte Reload
	movq	-208(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	-200(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movabsq	$.L.str.7, %rsi
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	1048(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	-8(%rbp), %r8
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	*%rdx
	movabsq	$foreign_usleep, %rcx
	movq	-8(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	96(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	*%rdx
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movq	-240(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	-232(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movabsq	$.L.str.8, %rsi
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	1048(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	-8(%rbp), %r8
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	*%rdx
	movabsq	$foreign_fileexists, %rcx
	movq	-8(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	96(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	*%rdx
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	-256(%rbp), %rsi        # 8-byte Reload
	movq	-272(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	-264(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movabsq	$.L.str.9, %rsi
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	1048(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	-8(%rbp), %r8
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	*%rdx
	movabsq	$foreign_filetype, %rcx
	movq	-8(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	96(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rcx, -64(%rbp)
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	*%rdx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	-288(%rbp), %rsi        # 8-byte Reload
	movq	-304(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	-296(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movabsq	$.L.str.10, %rsi
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	1048(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	-8(%rbp), %r8
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	*%rdx
	movabsq	$foreign_filesize, %rcx
	movq	-8(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	96(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rcx, -72(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	*%rdx
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	-320(%rbp), %rsi        # 8-byte Reload
	movq	-336(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	-328(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movabsq	$.L.str.11, %rsi
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	1048(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	-8(%rbp), %r8
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	*%rdx
	movabsq	$foreign_filedelete, %rcx
	movq	-8(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	96(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rcx, -80(%rbp)
	movq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	*%rdx
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	-352(%rbp), %rsi        # 8-byte Reload
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	-360(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movabsq	$.L.str.12, %rsi
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	1048(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	-8(%rbp), %r8
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	*%rdx
	movabsq	$foreign_diropenstream, %rcx
	movq	-8(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	96(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rcx, -88(%rbp)
	movq	-88(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	*%rdx
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	-384(%rbp), %rsi        # 8-byte Reload
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	-392(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movabsq	$.L.str.13, %rsi
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	1048(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	-8(%rbp), %r8
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	*%rdx
	movabsq	$foreign_dirreadentry, %rcx
	movq	-8(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	96(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rcx, -96(%rbp)
	movq	-96(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	*%rdx
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	-416(%rbp), %rsi        # 8-byte Reload
	movq	-432(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	-424(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movabsq	$.L.str.14, %rsi
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	1048(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	-8(%rbp), %r8
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	*%rdx
	movabsq	$foreign_dirrewind, %rcx
	movq	-8(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	96(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rcx, -104(%rbp)
	movq	-104(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	*%rdx
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	-448(%rbp), %rsi        # 8-byte Reload
	movq	-464(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	-456(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movabsq	$.L.str.15, %rsi
	movq	-8(%rbp), %rax
	movq	5608(%rax), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	1048(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	-8(%rbp), %r8
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	*%rdx
	movabsq	$foreign_dirclosestream, %rcx
	movq	-8(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	96(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	*%rdx
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	-480(%rbp), %rsi        # 8-byte Reload
	movq	-496(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	-488(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	movl	$0, -12(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$file_type_constants, %rax
	movslq	-12(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB12_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movabsq	$file_type_constants, %rax
	movq	-8(%rbp), %rcx
	movq	5608(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	1048(%rdx), %rsi
	movq	-8(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	-8(%rbp), %r8
	movslq	-12(%rbp), %r9
	shlq	$4, %r9
	addq	%r9, %rax
	movq	(%rax), %rax
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -512(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	%rcx, -520(%rbp)        # 8-byte Spill
	callq	*%rdx
	movabsq	$file_type_constants, %rcx
	movq	-8(%rbp), %rdx
	movq	5608(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rcx
	movl	8(%rcx), %r10d
	movl	%r10d, %esi
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	*%rdx
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	-512(%rbp), %rsi        # 8-byte Reload
	movq	-528(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	-520(%rbp), %rax        # 8-byte Reload
	callq	*%rax
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB12_1
.LBB12_4:                               # %for.end
	addq	$528, %rsp              # imm = 0x210
	popq	%rbp
	retq
.Lfunc_end12:
	.size	init_ftx, .Lfunc_end12-init_ftx
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"FILE-TYPE-UNKNOWN"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"FILE-TYPE-FILE"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"FILE-TYPE-DIR"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"FILE-TYPE-LINK"
	.size	.L.str.3, 15

	.type	file_type_constants,@object # @file_type_constants
	.data
	.globl	file_type_constants
	.align	16
file_type_constants:
	.quad	.L.str
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.1
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.2
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.3
	.long	3                       # 0x3
	.zero	4
	.zero	16
	.size	file_type_constants, 80

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"getenv"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"time"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gettimeofday"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"usleep"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"file-exists?"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"file-type"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"file-size"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"file-delete"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"dir-open-stream"
	.size	.L.str.12, 16

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"dir-read-entry"
	.size	.L.str.13, 15

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"dir-rewind"
	.size	.L.str.14, 11

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"dir-close-stream"
	.size	.L.str.15, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
