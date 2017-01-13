	.text
	.file	"time_rz.bc"
	.globl	tzalloc
	.align	16, 0x90
	.type	tzalloc,@function
tzalloc:                                # @tzalloc
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
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB0_2
# BB#1:                                 # %cond.true
	movq	-8(%rbp), %rdi
	callq	strlen
	addq	$1, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB0_3
.LBB0_2:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB0_3
.LBB0_3:                                # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	cmpq	$119, -16(%rbp)
	jae	.LBB0_5
# BB#4:                                 # %cond.true.1
	movl	$119, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB0_6
.LBB0_5:                                # %cond.false.2
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB0_6:                                # %cond.end.4
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$9, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB0_10
# BB#7:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	cmpq	$0, -8(%rbp)
	setne	%cl
	xorb	$-1, %cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movb	%dl, %cl
	movq	-32(%rbp), %rax
	movb	%cl, 8(%rax)
	movq	-32(%rbp), %rax
	movb	$0, 9(%rax)
	cmpq	$0, -8(%rbp)
	je	.LBB0_9
# BB#8:                                 # %if.then.12
	movq	-32(%rbp), %rax
	addq	$9, %rax
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	extend_abbrs
.LBB0_9:                                # %if.end
	jmp	.LBB0_10
.LBB0_10:                               # %if.end.14
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tzalloc, .Lfunc_end0-tzalloc
	.cfi_endproc

	.align	16, 0x90
	.type	extend_abbrs,@function
extend_abbrs:                           # @extend_abbrs
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
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	memcpy
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movb	$0, (%rsi,%rdx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	extend_abbrs, .Lfunc_end1-extend_abbrs
	.cfi_endproc

	.globl	tzfree
	.align	16, 0x90
	.type	tzfree,@function
tzfree:                                 # @tzfree
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	local_tz, %rdi
	je	.LBB2_5
# BB#1:                                 # %if.then
	jmp	.LBB2_2
.LBB2_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB2_4
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_2
.LBB2_4:                                # %while.end
	jmp	.LBB2_5
.LBB2_5:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	tzfree, .Lfunc_end2-tzfree
	.cfi_endproc

	.globl	localtime_rz
	.align	16, 0x90
	.type	localtime_rz,@function
localtime_rz:                           # @localtime_rz
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gmtime_r
	movq	%rax, -8(%rbp)
	jmp	.LBB3_10
.LBB3_2:                                # %if.else
	movq	-16(%rbp), %rdi
	callq	set_tz
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB3_9
# BB#3:                                 # %if.then.3
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	localtime_r
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpq	$0, %rax
	movb	%dl, -42(%rbp)          # 1-byte Spill
	je	.LBB3_5
# BB#4:                                 # %land.rhs
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	save_abbr
	movb	%al, -42(%rbp)          # 1-byte Spill
.LBB3_5:                                # %land.end
	movb	-42(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movb	%al, -41(%rbp)
	movq	-40(%rbp), %rdi
	callq	revert_tz
	testb	$1, %al
	jne	.LBB3_6
	jmp	.LBB3_8
.LBB3_6:                                # %land.lhs.true
	testb	$1, -41(%rbp)
	je	.LBB3_8
# BB#7:                                 # %if.then.9
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_10
.LBB3_8:                                # %if.end
	jmp	.LBB3_9
.LBB3_9:                                # %if.end.10
	movq	$0, -8(%rbp)
.LBB3_10:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	localtime_rz, .Lfunc_end3-localtime_rz
	.cfi_endproc

	.align	16, 0x90
	.type	set_tz,@function
set_tz:                                 # @set_tz
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
	movq	%rdi, -16(%rbp)
	callq	emacs_getenv_TZ
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB4_3
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movsbl	8(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB4_5
# BB#2:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	addq	$9, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB4_4
	jmp	.LBB4_5
.LBB4_3:                                # %cond.false
	movq	-16(%rbp), %rax
	cmpb	$0, 8(%rax)
	jne	.LBB4_5
.LBB4_4:                                # %if.then
	movq	local_tz, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_10
.LBB4_5:                                # %if.else
	movq	-24(%rbp), %rdi
	callq	tzalloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_7
# BB#6:                                 # %if.then.8
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_10
.LBB4_7:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	change_env
	testb	$1, %al
	jne	.LBB4_9
# BB#8:                                 # %if.then.10
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-32(%rbp), %rdi
	callq	tzfree
	movl	-36(%rbp), %ecx
	movl	%ecx, -40(%rbp)         # 4-byte Spill
	callq	__errno_location
	movl	-40(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, (%rax)
	movq	$0, -8(%rbp)
	jmp	.LBB4_10
.LBB4_9:                                # %if.end.13
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_10:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	set_tz, .Lfunc_end4-set_tz
	.cfi_endproc

	.align	16, 0x90
	.type	save_abbr,@function
save_abbr:                              # @save_abbr
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
	movabsq	$.L.str, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB5_3
# BB#1:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	ja	.LBB5_4
# BB#2:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	$56, %rcx
	cmpq	%rcx, %rax
	jae	.LBB5_4
.LBB5_3:                                # %if.then
	movb	$1, -1(%rbp)
	jmp	.LBB5_22
.LBB5_4:                                # %if.end
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB5_21
# BB#5:                                 # %if.then.3
	movq	-16(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -40(%rbp)
.LBB5_6:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB5_20
# BB#7:                                 # %while.body
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB5_16
# BB#8:                                 # %lor.lhs.false.6
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$9, %rcx
	cmpq	%rcx, %rax
	jne	.LBB5_10
# BB#9:                                 # %land.lhs.true.11
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-16(%rbp), %rax
	movsbl	8(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB5_16
.LBB5_10:                               # %if.then.14
	movq	-32(%rbp), %rdi
	callq	strlen
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdi
	addq	$9, %rdi
	addq	$119, %rdi
	movq	-40(%rbp), %rcx
	subq	%rcx, %rdi
	cmpq	%rdi, %rax
	jae	.LBB5_12
# BB#11:                                # %if.then.21
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	extend_abbrs
	jmp	.LBB5_15
.LBB5_12:                               # %if.else
	movq	-32(%rbp), %rdi
	callq	tzalloc
	movq	-16(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB5_14
# BB#13:                                # %if.then.24
	movb	$0, -1(%rbp)
	jmp	.LBB5_22
.LBB5_14:                               # %if.end.25
	movq	-16(%rbp), %rax
	movb	$0, 8(%rax)
	movq	-16(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -40(%rbp)
.LBB5_15:                               # %if.end.29
	jmp	.LBB5_20
.LBB5_16:                               # %if.end.30
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-40(%rbp), %rdi
	callq	strlen
	addq	$1, %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB5_19
# BB#17:                                # %land.lhs.true.35
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_19
# BB#18:                                # %if.then.38
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -40(%rbp)
.LBB5_19:                               # %if.end.42
                                        #   in Loop: Header=BB5_6 Depth=1
	jmp	.LBB5_6
.LBB5_20:                               # %while.end
	jmp	.LBB5_21
.LBB5_21:                               # %if.end.43
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movb	$1, -1(%rbp)
.LBB5_22:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	save_abbr, .Lfunc_end5-save_abbr
	.cfi_endproc

	.align	16, 0x90
	.type	revert_tz,@function
revert_tz:                              # @revert_tz
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	local_tz, %rdi
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movb	$1, -1(%rbp)
	jmp	.LBB6_5
.LBB6_2:                                # %if.else
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	change_env
	andb	$1, %al
	movb	%al, -21(%rbp)
	testb	$1, -21(%rbp)
	jne	.LBB6_4
# BB#3:                                 # %if.then.2
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -20(%rbp)
.LBB6_4:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	tzfree
	movl	-20(%rbp), %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	__errno_location
	movl	-28(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, (%rax)
	movb	-21(%rbp), %dl
	andb	$1, %dl
	movb	%dl, -1(%rbp)
.LBB6_5:                                # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	revert_tz, .Lfunc_end6-revert_tz
	.cfi_endproc

	.globl	mktime_z
	.align	16, 0x90
	.type	mktime_z,@function
mktime_z:                               # @mktime_z
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	timegm
	movq	%rax, -8(%rbp)
	jmp	.LBB7_12
.LBB7_2:                                # %if.else
	movq	-16(%rbp), %rdi
	callq	set_tz
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB7_11
# BB#3:                                 # %if.then.3
	movq	-24(%rbp), %rdi
	callq	mktime
	movq	%rax, -40(%rbp)
	movq	$-1, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB7_6
# BB#4:                                 # %lor.lhs.false
	leaq	-40(%rbp), %rdi
	leaq	-104(%rbp), %rsi
	callq	localtime_r
	cmpq	$0, %rax
	je	.LBB7_8
# BB#5:                                 # %land.lhs.true
	leaq	-104(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	equal_tm
	cmpl	$0, %eax
	je	.LBB7_8
.LBB7_6:                                # %land.lhs.true.9
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	save_abbr
	testb	$1, %al
	jne	.LBB7_8
# BB#7:                                 # %if.then.11
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB7_8:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	revert_tz
	testb	$1, %al
	jne	.LBB7_9
	jmp	.LBB7_10
.LBB7_9:                                # %if.then.13
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_12
.LBB7_10:                               # %if.end.14
	jmp	.LBB7_11
.LBB7_11:                               # %if.end.15
	movq	$-1, -8(%rbp)
.LBB7_12:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	mktime_z, .Lfunc_end7-mktime_z
	.cfi_endproc

	.align	16, 0x90
	.type	equal_tm,@function
equal_tm:                               # @equal_tm
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	(%rsi), %eax
	movq	-16(%rbp), %rsi
	xorl	(%rsi), %eax
	movq	-8(%rbp), %rsi
	movl	4(%rsi), %ecx
	movq	-16(%rbp), %rsi
	xorl	4(%rsi), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rsi
	movl	8(%rsi), %ecx
	movq	-16(%rbp), %rsi
	xorl	8(%rsi), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rsi
	movl	12(%rsi), %ecx
	movq	-16(%rbp), %rsi
	xorl	12(%rsi), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rsi
	movl	16(%rsi), %ecx
	movq	-16(%rbp), %rsi
	xorl	16(%rsi), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rsi
	movl	20(%rsi), %ecx
	movq	-16(%rbp), %rsi
	xorl	20(%rsi), %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rsi
	movl	32(%rsi), %edi
	movq	-16(%rbp), %rsi
	movl	32(%rsi), %esi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	isdst_differ
	andb	$1, %al
	movzbl	%al, %ecx
	movl	-20(%rbp), %esi         # 4-byte Reload
	orl	%ecx, %esi
	cmpl	$0, %esi
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	equal_tm, .Lfunc_end8-equal_tm
	.cfi_endproc

	.align	16, 0x90
	.type	change_env,@function
change_env:                             # @change_env
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movsbl	8(%rdi), %eax
	cmpl	$0, %eax
	je	.LBB9_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	addq	$9, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB9_3
.LBB9_2:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	jmp	.LBB9_3
.LBB9_3:                                # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	emacs_setenv_TZ
	cmpl	$0, %eax
	je	.LBB9_5
# BB#4:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB9_6
.LBB9_5:                                # %if.end
	callq	tzset
	movb	$1, -1(%rbp)
.LBB9_6:                                # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	change_env, .Lfunc_end9-change_env
	.cfi_endproc

	.align	16, 0x90
	.type	isdst_differ,@function
isdst_differ:                           # @isdst_differ
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
	xorl	%eax, %eax
	movb	%al, %cl
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -4(%rbp)
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, -8(%rbp)
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	cmpl	%esi, %eax
	movb	%cl, -9(%rbp)           # 1-byte Spill
	je	.LBB10_3
# BB#1:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	xorl	%eax, %eax
	cmpl	-4(%rbp), %eax
	movb	%cl, -9(%rbp)           # 1-byte Spill
	jg	.LBB10_3
# BB#2:                                 # %land.rhs
	xorl	%eax, %eax
	cmpl	-8(%rbp), %eax
	setle	%cl
	movb	%cl, -9(%rbp)           # 1-byte Spill
.LBB10_3:                               # %land.end
	movb	-9(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end10:
	.size	isdst_differ, .Lfunc_end10-isdst_differ
	.cfi_endproc

	.type	local_tz,@object        # @local_tz
	.section	.rodata,"a",@progbits
	.align	8
local_tz:
	.quad	1
	.size	local_tz, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.zero	1
	.size	.L.str, 1


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
