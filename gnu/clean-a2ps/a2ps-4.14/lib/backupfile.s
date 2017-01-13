	.text
	.file	"backupfile.bc"
	.globl	find_backup_file_name
	.align	16, 0x90
	.type	find_backup_file_name,@function
find_backup_file_name:                  # @find_backup_file_name
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen
	movq	%rax, -32(%rbp)
	movq	$15, -40(%rbp)
	movq	simple_backup_suffix, %rax
	movq	%rax, -56(%rbp)
	movq	simple_backup_suffix, %rdi
	callq	strlen
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jae	.LBB0_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB0_2:                                # %if.end
	movq	-32(%rbp), %rax
	addq	-24(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB0_9
# BB#3:                                 # %if.then.5
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	strcpy
	cmpl	$1, -12(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	je	.LBB0_8
# BB#4:                                 # %if.then.8
	movq	-48(%rbp), %rdi
	callq	base_name
	movq	-48(%rbp), %rdi
	subq	%rdi, %rax
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	addq	-72(%rbp), %rax
	movl	$.L.str.1, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcpy
	movq	-8(%rbp), %rsi
	addq	-72(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	max_backup_version
	movl	%eax, -60(%rbp)
	cmpl	$2, -12(%rbp)
	jne	.LBB0_6
# BB#5:                                 # %land.lhs.true
	cmpl	$0, -60(%rbp)
	je	.LBB0_7
.LBB0_6:                                # %if.then.15
	movabsq	$.L.str.2, %rsi
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	-24(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movl	-60(%rbp), %edx
	addl	$1, %edx
	movb	$0, %al
	callq	sprintf
	movq	-80(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB0_7:                                # %if.end.20
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	strcpy
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB0_8:                                # %if.end.22
	movl	$126, %edx
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	addext
.LBB0_9:                                # %if.end.23
	movq	-48(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	find_backup_file_name, .Lfunc_end0-find_backup_file_name
	.cfi_endproc

	.align	16, 0x90
	.type	max_backup_version,@function
max_backup_version:                     # @max_backup_version
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
	movq	-24(%rbp), %rdi
	callq	opendir
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB1_12
.LBB1_2:                                # %if.end
	movl	$0, -44(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	movq	%rax, -56(%rbp)
.LBB1_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rdi
	callq	readdir
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB1_9
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	-40(%rbp), %rax
	addq	$19, %rax
	movq	%rax, %rdi
	callq	strlen
	movq	-56(%rbp), %rdi
	addq	$4, %rdi
	cmpq	%rdi, %rax
	jae	.LBB1_6
# BB#5:                                 # %if.then.5
                                        #   in Loop: Header=BB1_3 Depth=1
	jmp	.LBB1_3
.LBB1_6:                                # %if.end.6
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	addq	$19, %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	callq	version_number
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.LBB1_8
# BB#7:                                 # %if.then.11
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB1_8:                                # %if.end.12
                                        #   in Loop: Header=BB1_3 Depth=1
	jmp	.LBB1_3
.LBB1_9:                                # %while.end
	movq	-32(%rbp), %rdi
	callq	closedir
	cmpl	$0, %eax
	je	.LBB1_11
# BB#10:                                # %if.then.15
	movl	$0, -4(%rbp)
	jmp	.LBB1_12
.LBB1_11:                               # %if.end.16
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB1_12:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	max_backup_version, .Lfunc_end1-max_backup_version
	.cfi_endproc

	.globl	get_version
	.align	16, 0x90
	.type	get_version,@function
get_version:                            # @get_version
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB2_2
# BB#1:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB2_3
.LBB2_2:                                # %if.then
	movl	$2, -4(%rbp)
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movabsq	$backup_args, %rdx
	movabsq	$backup_types, %rax
	movl	$4, %ecx
	movl	%ecx, %r8d
	movl	$1, %r9d
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	argmatch_die, %r10
	movq	%rax, %rcx
	movq	%r10, (%rsp)
	callq	__xargmatch_internal
	movslq	%eax, %rcx
	movl	backup_types(,%rcx,4), %eax
	movl	%eax, -4(%rbp)
.LBB2_4:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	get_version, .Lfunc_end2-get_version
	.cfi_endproc

	.globl	xget_version
	.align	16, 0x90
	.type	xget_version,@function
xget_version:                           # @xget_version
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
	cmpq	$0, -24(%rbp)
	je	.LBB3_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB3_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	get_version
	movl	%eax, -4(%rbp)
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str.4, %rdi
	callq	getenv
	movabsq	$.L.str.3, %rdi
	movq	%rax, %rsi
	callq	get_version
	movl	%eax, -4(%rbp)
.LBB3_4:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	xget_version, .Lfunc_end3-xget_version
	.cfi_endproc

	.align	16, 0x90
	.type	version_number,@function
version_number:                         # @version_number
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
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB4_11
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$46, %edx
	jne	.LBB4_11
# BB#2:                                 # %land.lhs.true.3
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	1(%rcx,%rax), %edx
	cmpl	$126, %edx
	jne	.LBB4_11
# BB#3:                                 # %if.then
	movq	-24(%rbp), %rax
	addq	$2, %rax
	addq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB4_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	subl	$48, %ecx
	cmpl	$9, %ecx
	ja	.LBB4_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB4_4 Depth=1
	imull	$10, -28(%rbp), %eax
	movq	-40(%rbp), %rcx
	movsbl	(%rcx), %edx
	addl	%edx, %eax
	subl	$48, %eax
	movl	%eax, -28(%rbp)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB4_4
.LBB4_7:                                # %for.end
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$126, %ecx
	jne	.LBB4_9
# BB#8:                                 # %lor.lhs.false
	movq	-40(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB4_10
.LBB4_9:                                # %if.then.22
	movl	$0, -28(%rbp)
.LBB4_10:                               # %if.end
	jmp	.LBB4_11
.LBB4_11:                               # %if.end.23
	movl	-28(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	version_number, .Lfunc_end4-version_number
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"~"
	.size	.L.str, 2

	.type	simple_backup_suffix,@object # @simple_backup_suffix
	.data
	.globl	simple_backup_suffix
	.align	8
simple_backup_suffix:
	.quad	.L.str
	.size	simple_backup_suffix, 8

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"."
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	".~%d~"
	.size	.L.str.2, 6

	.type	backup_args,@object     # @backup_args
	.section	.rodata,"a",@progbits
	.align	16
backup_args:
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	0
	.size	backup_args, 72

	.type	backup_types,@object    # @backup_types
	.align	16
backup_types:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.size	backup_types, 32

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"$VERSION_CONTROL"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"VERSION_CONTROL"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"none"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"off"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"simple"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"never"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"existing"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"nil"
	.size	.L.str.10, 4

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"numbered"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"t"
	.size	.L.str.12, 2


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
