	.text
	.file	"xbackupfile.bc"
	.globl	xfind_backup_file_name
	.align	16, 0x90
	.type	xfind_backup_file_name,@function
xfind_backup_file_name:                 # @xfind_backup_file_name
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
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	find_backup_file_name
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movq	%rax, %rdx
	movb	$0, %al
	callq	error
.LBB0_2:                                # %if.end
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	xfind_backup_file_name, .Lfunc_end0-xfind_backup_file_name
	.cfi_endproc

	.globl	create_file_for_backup
	.align	16, 0x90
	.type	create_file_for_backup,@function
create_file_for_backup:                 # @create_file_for_backup
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
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	-20(%rbp), %ecx
	andl	$64, %ecx
	cmpl	$0, %ecx
	je	.LBB1_2
# BB#1:                                 # %cond.true
	jmp	.LBB1_3
.LBB1_2:                                # %cond.false
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.2, %rsi
	movl	$153, %edx
	movabsq	$.L__PRETTY_FUNCTION__.create_file_for_backup, %rcx
	callq	__assert_fail
.LBB1_3:                                # %cond.end
	cmpl	$0, -28(%rbp)
	jne	.LBB1_5
# BB#4:                                 # %if.then
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movb	$0, %al
	callq	open
	movl	%eax, -4(%rbp)
	jmp	.LBB1_14
.LBB1_5:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %eax
	orl	$128, %eax
	movl	-24(%rbp), %edx
	movl	%eax, %esi
	movb	$0, %al
	callq	open
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jge	.LBB1_13
# BB#6:                                 # %land.lhs.true
	callq	__errno_location
	cmpl	$17, (%rax)
	jne	.LBB1_13
# BB#7:                                 # %if.then.5
	leaq	-176(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	stat
	cmpl	$0, %eax
	jne	.LBB1_12
# BB#8:                                 # %land.lhs.true.8
	movl	-152(%rbp), %eax
	andl	$61440, %eax            # imm = 0xF000
	cmpl	$32768, %eax            # imm = 0x8000
	jne	.LBB1_12
# BB#9:                                 # %if.then.11
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	find_backup_file_name
	movq	%rax, -184(%rbp)
	movq	-16(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	rename
	cmpl	$0, %eax
	je	.LBB1_11
# BB#10:                                # %if.then.15
	movl	$-1, -4(%rbp)
	jmp	.LBB1_14
.LBB1_11:                               # %if.end.16
	movq	-184(%rbp), %rdi
	callq	free
.LBB1_12:                               # %if.end.17
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movb	$0, %al
	callq	open
	movl	%eax, -32(%rbp)
.LBB1_13:                               # %if.end.19
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB1_14:                               # %return
	movl	-4(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	create_file_for_backup, .Lfunc_end1-create_file_for_backup
	.cfi_endproc

	.globl	fopen_backup
	.align	16, 0x90
	.type	fopen_backup,@function
fopen_backup:                           # @fopen_backup
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
	subq	$288, %rsp              # imm = 0x120
	leaq	-168(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	stat
	cmpl	$0, %eax
	je	.LBB2_6
# BB#1:                                 # %if.then
	callq	__errno_location
	cmpl	$2, (%rax)
	je	.LBB2_3
# BB#2:                                 # %lor.lhs.false
	callq	__errno_location
	cmpl	$20, (%rax)
	jne	.LBB2_4
.LBB2_3:                                # %if.then.4
	movl	$0, -12(%rbp)
	jmp	.LBB2_5
.LBB2_4:                                # %if.else
	callq	__errno_location
	movabsq	$.L.str.3, %rdi
	movl	(%rax), %esi
	movl	%esi, -180(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	movl	-180(%rbp), %esi        # 4-byte Reload
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
.LBB2_5:                                # %if.end
	jmp	.LBB2_6
.LBB2_6:                                # %if.end.8
	movl	-144(%rbp), %eax
	andl	$61440, %eax            # imm = 0xF000
	cmpl	$32768, %eax            # imm = 0x8000
	jne	.LBB2_8
# BB#7:                                 # %lor.lhs.false.10
	movl	$2, %esi
	movq	-8(%rbp), %rdi
	callq	access
	cmpl	$0, %eax
	je	.LBB2_9
.LBB2_8:                                # %if.then.13
	movl	$0, -12(%rbp)
.LBB2_9:                                # %if.end.14
	cmpl	$0, -12(%rbp)
	je	.LBB2_13
# BB#10:                                # %if.then.16
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	xfind_backup_file_name
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	rename
	cmpl	$0, %eax
	je	.LBB2_12
# BB#11:                                # %if.then.20
	callq	__errno_location
	movabsq	$.L.str.4, %rdi
	movl	(%rax), %esi
	movl	%esi, -196(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	quotearg
	movq	-24(%rbp), %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	movl	-196(%rbp), %esi        # 4-byte Reload
	movq	-208(%rbp), %rdx        # 8-byte Reload
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	error
.LBB2_12:                               # %if.end.25
	jmp	.LBB2_13
.LBB2_13:                               # %if.end.26
	movabsq	$.L.str.5, %rsi
	movq	-8(%rbp), %rdi
	callq	fopen
	movq	%rax, -176(%rbp)
	cmpq	$0, -176(%rbp)
	jne	.LBB2_20
# BB#14:                                # %if.then.29
	callq	__errno_location
	movabsq	$.L.str.6, %rdi
	movl	(%rax), %esi
	movl	%esi, -220(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	quotearg
	xorl	%edi, %edi
	movl	-220(%rbp), %esi        # 4-byte Reload
	movq	-232(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
	cmpq	$0, -24(%rbp)
	je	.LBB2_19
# BB#15:                                # %if.then.34
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	rename
	cmpl	$0, %eax
	je	.LBB2_17
# BB#16:                                # %if.then.37
	callq	__errno_location
	movabsq	$.L.str.4, %rdi
	movl	(%rax), %esi
	movl	%esi, -236(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	quotearg
	movq	-24(%rbp), %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	quotearg
	xorl	%edi, %edi
	movl	-236(%rbp), %esi        # 4-byte Reload
	movq	-248(%rbp), %rdx        # 8-byte Reload
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	error
	jmp	.LBB2_18
.LBB2_17:                               # %if.else.42
	movabsq	$.L.str.7, %rdi
	movq	stderr, %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	quotearg
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	-272(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -276(%rbp)        # 4-byte Spill
.LBB2_18:                               # %if.end.46
	jmp	.LBB2_19
.LBB2_19:                               # %if.end.47
	movl	$1, %edi
	callq	exit
.LBB2_20:                               # %if.end.48
	cmpq	$0, -24(%rbp)
	je	.LBB2_22
# BB#21:                                # %if.then.50
	movq	-24(%rbp), %rdi
	callq	free
.LBB2_22:                               # %if.end.51
	movq	-176(%rbp), %rax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end2:
	.size	fopen_backup, .Lfunc_end2-fopen_backup
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Memory exhausted"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"oflag & 0100"
	.size	.L.str.1, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"xbackupfile.c"
	.size	.L.str.2, 14

	.type	.L__PRETTY_FUNCTION__.create_file_for_backup,@object # @__PRETTY_FUNCTION__.create_file_for_backup
.L__PRETTY_FUNCTION__.create_file_for_backup:
	.asciz	"int create_file_for_backup(const char *, int, mode_t, enum backup_type)"
	.size	.L__PRETTY_FUNCTION__.create_file_for_backup, 72

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"cannot get informations on file `%s'"
	.size	.L.str.3, 37

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"cannot rename file `%s' as `%s'"
	.size	.L.str.4, 32

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"w"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"cannot create file `%s'"
	.size	.L.str.6, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"restored file `%s'"
	.size	.L.str.7, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
