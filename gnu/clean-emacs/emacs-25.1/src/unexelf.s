	.text
	.file	"unexelf.bc"
	.globl	unexec
	.align	16, 0x90
	.type	unexec,@function
unexec:                                 # @unexec
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
	subq	$672, %rsp              # imm = 0x2A0
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	emacs_open
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jge	.LBB0_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rsi
	movq	%rsi, -496(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movabsq	$.L.str, %rdi
	movq	-496(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fatal
.LBB0_2:                                # %if.end
	leaq	-344(%rbp), %rsi
	movl	-24(%rbp), %edi
	callq	fstat
	cmpl	$0, %eax
	je	.LBB0_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rsi
	movq	%rsi, -504(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movabsq	$.L.str.1, %rdi
	movq	-504(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fatal
.LBB0_4:                                # %if.end.8
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-296(%rbp), %rdx
	movq	%rdx, -352(%rbp)
	cmpq	-352(%rbp), %rcx
	jg	.LBB0_6
# BB#5:                                 # %land.lhs.true
	cmpq	$-1, -352(%rbp)
	jbe	.LBB0_7
.LBB0_6:                                # %if.then.11
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	fatal
.LBB0_7:                                # %if.end.12
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$34, %eax
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-352(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rcx, -512(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	movq	-512(%rbp), %r9         # 8-byte Reload
	callq	mmap
	movq	$-1, %rsi
	movq	%rax, -48(%rbp)
	cmpq	%rsi, -48(%rbp)
	jne	.LBB0_9
# BB#8:                                 # %if.then.15
	movq	-16(%rbp), %rsi
	movq	%rsi, -520(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movabsq	$.L.str.3, %rdi
	movq	-520(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fatal
.LBB0_9:                                # %if.end.18
	movl	-24(%rbp), %edi
	movq	-48(%rbp), %rsi
	movq	-352(%rbp), %rdx
	callq	read
	cmpq	-352(%rbp), %rax
	je	.LBB0_11
# BB#10:                                # %if.then.21
	movq	-16(%rbp), %rsi
	movq	%rsi, -528(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movabsq	$.L.str.4, %rdi
	movq	-528(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fatal
.LBB0_11:                               # %if.end.24
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	32(%rcx), %rax
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rcx
	addq	40(%rcx), %rax
	movq	%rax, -96(%rbp)
	movq	-48(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzwl	62(%rdx), %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-64(%rbp), %rdx
	movzwl	58(%rdx), %edi
	movl	%edi, %edx
	movq	%rcx, %rdi
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	entry_address
	movq	-536(%rbp), %rcx        # 8-byte Reload
	addq	24(%rax), %rcx
	movq	%rcx, -112(%rbp)
	movq	$0, -128(%rbp)
	movq	-64(%rbp), %rax
	movzwl	56(%rax), %r8d
	movl	%r8d, %eax
	movq	%rax, -192(%rbp)
.LBB0_12:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-192(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -192(%rbp)
	cmpq	$0, %rax
	jl	.LBB0_18
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB0_12 Depth=1
	movq	-80(%rbp), %rax
	movq	-192(%rbp), %rsi
	movq	-64(%rbp), %rcx
	movzwl	54(%rcx), %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	entry_address
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rax
	cmpl	$1, (%rax)
	jne	.LBB0_17
# BB#14:                                # %land.lhs.true.36
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpq	$0, -128(%rbp)
	je	.LBB0_16
# BB#15:                                # %lor.lhs.false
                                        #   in Loop: Header=BB0_12 Depth=1
	movq	-360(%rbp), %rax
	movq	16(%rax), %rax
	movq	-128(%rbp), %rcx
	cmpq	16(%rcx), %rax
	jbe	.LBB0_17
.LBB0_16:                               # %if.then.42
                                        #   in Loop: Header=BB0_12 Depth=1
	movq	-360(%rbp), %rax
	movq	%rax, -128(%rbp)
.LBB0_17:                               # %if.end.43
                                        #   in Loop: Header=BB0_12 Depth=1
	jmp	.LBB0_12
.LBB0_18:                               # %for.end
	movq	-128(%rbp), %rax
	movq	16(%rax), %rax
	movq	-128(%rbp), %rcx
	addq	32(%rcx), %rax
	movq	%rax, -144(%rbp)
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	movq	-128(%rbp), %rcx
	addq	32(%rcx), %rax
	movq	%rax, -176(%rbp)
	movq	-128(%rbp), %rax
	movq	40(%rax), %rax
	movq	-128(%rbp), %rcx
	subq	32(%rcx), %rax
	movl	%eax, %edx
	movl	%edx, -156(%rbp)
	movq	$-1, -200(%rbp)
	movq	-64(%rbp), %rax
	movzwl	60(%rax), %edx
	movl	%edx, %eax
	movq	%rax, -192(%rbp)
.LBB0_19:                               # %for.cond.50
                                        # =>This Inner Loop Header: Depth=1
	movq	-192(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -192(%rbp)
	cmpq	$0, %rax
	jle	.LBB0_27
# BB#20:                                # %for.body.54
                                        #   in Loop: Header=BB0_19 Depth=1
	movq	-96(%rbp), %rax
	movq	-192(%rbp), %rsi
	movq	-64(%rbp), %rcx
	movzwl	58(%rcx), %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	entry_address
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rax
	cmpl	$8, 4(%rax)
	jne	.LBB0_26
# BB#21:                                # %land.lhs.true.60
                                        #   in Loop: Header=BB0_19 Depth=1
	movq	-368(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-144(%rbp), %rax
	jb	.LBB0_26
# BB#22:                                # %land.lhs.true.63
                                        #   in Loop: Header=BB0_19 Depth=1
	movq	-368(%rbp), %rax
	movq	16(%rax), %rax
	movq	-368(%rbp), %rcx
	addq	32(%rcx), %rax
	movq	-144(%rbp), %rcx
	movl	-156(%rbp), %edx
	movl	%edx, %esi
	addq	%rsi, %rcx
	cmpq	%rcx, %rax
	ja	.LBB0_26
# BB#23:                                # %land.lhs.true.70
                                        #   in Loop: Header=BB0_19 Depth=1
	cmpq	$-1, -200(%rbp)
	je	.LBB0_25
# BB#24:                                # %lor.lhs.false.73
                                        #   in Loop: Header=BB0_19 Depth=1
	movq	-96(%rbp), %rax
	movq	-200(%rbp), %rsi
	movq	-64(%rbp), %rcx
	movzwl	58(%rcx), %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	entry_address
	movq	16(%rax), %rax
	movq	-368(%rbp), %rcx
	cmpq	16(%rcx), %rax
	jae	.LBB0_26
.LBB0_25:                               # %if.then.81
                                        #   in Loop: Header=BB0_19 Depth=1
	movq	-192(%rbp), %rax
	movq	%rax, -200(%rbp)
.LBB0_26:                               # %if.end.82
                                        #   in Loop: Header=BB0_19 Depth=1
	jmp	.LBB0_19
.LBB0_27:                               # %for.end.83
	cmpq	$-1, -200(%rbp)
	jne	.LBB0_29
# BB#28:                                # %if.then.86
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	fatal
.LBB0_29:                               # %if.end.87
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	sbrk
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	subq	-144(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -160(%rbp)
	movl	-160(%rbp), %ecx
	movl	%ecx, -164(%rbp)
	movl	-164(%rbp), %ecx
	movl	%ecx, %eax
	addq	$7, %rax
	movl	%eax, %ecx
	movl	%ecx, -164(%rbp)
	movl	-164(%rbp), %ecx
	movl	%ecx, %eax
	andq	$7, %rax
	movl	-164(%rbp), %ecx
	movl	%ecx, %edi
	subq	%rax, %rdi
	movl	%edi, %ecx
	movl	%ecx, -164(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-152(%rbp), %rax
	movq	-144(%rbp), %rdi
	movl	-156(%rbp), %ecx
	movl	%ecx, %edx
	addq	%rdx, %rdi
	cmpq	%rdi, %rax
	jae	.LBB0_31
# BB#30:                                # %if.then.102
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	fatal
.LBB0_31:                               # %if.end.103
	movl	$66, %esi
	movl	$511, %edx              # imm = 0x1FF
	movq	-8(%rbp), %rdi
	callq	emacs_open
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jge	.LBB0_33
# BB#32:                                # %if.then.107
	movq	-8(%rbp), %rsi
	movq	%rsi, -544(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movabsq	$.L.str.7, %rdi
	movq	-544(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fatal
.LBB0_33:                               # %if.end.110
	movq	-352(%rbp), %rax
	movl	-164(%rbp), %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movl	-20(%rbp), %edi
	movq	-32(%rbp), %rsi
	callq	ftruncate
	cmpl	$0, %eax
	je	.LBB0_35
# BB#34:                                # %if.then.114
	movq	-8(%rbp), %rsi
	movq	%rsi, -552(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movabsq	$.L.str.8, %rdi
	movq	-552(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fatal
.LBB0_35:                               # %if.end.117
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$3, %edx
	movl	$34, %eax
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rcx, -560(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	movq	-560(%rbp), %r9         # 8-byte Reload
	callq	mmap
	movq	$-1, %rsi
	movq	%rax, -56(%rbp)
	cmpq	%rsi, -56(%rbp)
	jne	.LBB0_37
# BB#36:                                # %if.then.121
	movq	-16(%rbp), %rsi
	movq	%rsi, -568(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movabsq	$.L.str.3, %rdi
	movq	-568(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fatal
.LBB0_37:                               # %if.end.124
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movzwl	52(%rdx), %esi
	movl	%esi, %edx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	-176(%rbp), %rax
	jb	.LBB0_39
# BB#38:                                # %if.then.129
	movl	-164(%rbp), %eax
	movl	%eax, %ecx
	movq	-72(%rbp), %rdx
	addq	40(%rdx), %rcx
	movq	%rcx, 40(%rdx)
.LBB0_39:                               # %if.end.133
	movl	$56, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rsi
	addq	32(%rsi), %rdx
	movq	%rdx, -88(%rbp)
	movq	-56(%rbp), %rdx
	movq	-72(%rbp), %rsi
	addq	40(%rsi), %rdx
	movq	%rdx, -104(%rbp)
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movq	-64(%rbp), %rdi
	movzwl	56(%rdi), %eax
	movq	-64(%rbp), %rdi
	movzwl	54(%rdi), %r8d
	imull	%r8d, %eax
	movslq	%eax, %rdi
	movq	%rdi, -576(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-576(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, -584(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-104(%rbp), %rcx
	movq	-96(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movzwl	60(%rsi), %eax
	movq	-64(%rbp), %rsi
	movzwl	58(%rsi), %r8d
	imull	%r8d, %eax
	movslq	%eax, %rsi
	movq	%rcx, %rdi
	movq	%rsi, -592(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-592(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movq	-88(%rbp), %rcx
	movq	-128(%rbp), %rdx
	movq	-80(%rbp), %rsi
	subq	%rsi, %rdx
	movq	%rdx, %rax
	cqto
	movq	-584(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	imulq	$56, %rax, %rax
	addq	%rax, %rcx
	movq	%rcx, -136(%rbp)
	movq	-152(%rbp), %rax
	movq	-136(%rbp), %rcx
	subq	16(%rcx), %rax
	movq	-136(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-136(%rbp), %rax
	movq	32(%rax), %rax
	movq	-136(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-56(%rbp), %rax
	addq	-184(%rbp), %rax
	movq	-144(%rbp), %rsi
	movl	-160(%rbp), %r8d
	movl	%r8d, %ecx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	memcpy
	movq	$1, -192(%rbp)
.LBB0_40:                               # %for.cond.157
                                        # =>This Inner Loop Header: Depth=1
	movq	-192(%rbp), %rax
	movq	-64(%rbp), %rcx
	movzwl	60(%rcx), %edx
	movl	%edx, %ecx
	cmpq	%rcx, %rax
	jge	.LBB0_64
# BB#41:                                # %for.body.162
                                        #   in Loop: Header=BB0_40 Depth=1
	movq	-96(%rbp), %rax
	movq	-192(%rbp), %rsi
	movq	-64(%rbp), %rcx
	movzwl	58(%rcx), %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	entry_address
	movq	%rax, -384(%rbp)
	movq	-104(%rbp), %rax
	movq	-192(%rbp), %rsi
	movq	-72(%rbp), %rcx
	movzwl	58(%rcx), %r8d
	movl	%r8d, %edx
	movq	%rax, %rdi
	callq	entry_address
	movq	%rax, -392(%rbp)
	movq	-392(%rbp), %rax
	cmpl	$8, 4(%rax)
	jne	.LBB0_49
# BB#42:                                # %land.lhs.true.172
                                        #   in Loop: Header=BB0_40 Depth=1
	movq	-392(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-144(%rbp), %rax
	jb	.LBB0_49
# BB#43:                                # %land.lhs.true.176
                                        #   in Loop: Header=BB0_40 Depth=1
	movq	-392(%rbp), %rax
	movq	16(%rax), %rax
	movq	-392(%rbp), %rcx
	addq	32(%rcx), %rax
	movq	-144(%rbp), %rcx
	movl	-156(%rbp), %edx
	movl	%edx, %esi
	addq	%rsi, %rcx
	cmpq	%rcx, %rax
	ja	.LBB0_49
# BB#44:                                # %if.then.184
                                        #   in Loop: Header=BB0_40 Depth=1
	movq	-392(%rbp), %rax
	movl	$1, 4(%rax)
	movq	-392(%rbp), %rax
	movq	16(%rax), %rax
	movq	-136(%rbp), %rcx
	subq	16(%rcx), %rax
	movq	-136(%rbp), %rcx
	addq	8(%rcx), %rax
	movq	-392(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-112(%rbp), %rax
	movq	-392(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movl	$.L.str.9, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_46
# BB#45:                                # %if.then.196
                                        #   in Loop: Header=BB0_40 Depth=1
	xorl	%esi, %esi
	movq	-392(%rbp), %rax
	movq	24(%rax), %rax
	addq	-56(%rbp), %rax
	movq	-392(%rbp), %rcx
	movq	32(%rcx), %rdx
	movq	%rax, %rdi
	callq	memset
.LBB0_46:                               # %if.end.200
                                        #   in Loop: Header=BB0_40 Depth=1
	movq	-192(%rbp), %rax
	cmpq	-200(%rbp), %rax
	jne	.LBB0_48
# BB#47:                                # %if.then.203
                                        #   in Loop: Header=BB0_40 Depth=1
	movq	-152(%rbp), %rax
	movq	-392(%rbp), %rcx
	subq	16(%rcx), %rax
	movq	-392(%rbp), %rcx
	movq	%rax, 32(%rcx)
.LBB0_48:                               # %if.end.207
                                        #   in Loop: Header=BB0_40 Depth=1
	jmp	.LBB0_63
.LBB0_49:                               # %if.end.208
                                        #   in Loop: Header=BB0_40 Depth=1
	movq	-392(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-176(%rbp), %rax
	jb	.LBB0_51
# BB#50:                                # %if.then.212
                                        #   in Loop: Header=BB0_40 Depth=1
	movl	-164(%rbp), %eax
	movl	%eax, %ecx
	movq	-392(%rbp), %rdx
	addq	24(%rdx), %rcx
	movq	%rcx, 24(%rdx)
.LBB0_51:                               # %if.end.216
                                        #   in Loop: Header=BB0_40 Depth=1
	movq	-392(%rbp), %rax
	cmpl	$0, 4(%rax)
	je	.LBB0_53
# BB#52:                                # %lor.lhs.false.220
                                        #   in Loop: Header=BB0_40 Depth=1
	movq	-392(%rbp), %rax
	cmpl	$8, 4(%rax)
	jne	.LBB0_54
.LBB0_53:                               # %if.then.224
                                        #   in Loop: Header=BB0_40 Depth=1
	jmp	.LBB0_63
.LBB0_54:                               # %if.end.225
                                        #   in Loop: Header=BB0_40 Depth=1
	movq	-112(%rbp), %rax
	movq	-392(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movl	$.L.str.10, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB0_60
# BB#55:                                # %lor.lhs.false.231
                                        #   in Loop: Header=BB0_40 Depth=1
	movq	-112(%rbp), %rax
	movq	-392(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movl	$.L.str.11, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB0_60
# BB#56:                                # %lor.lhs.false.237
                                        #   in Loop: Header=BB0_40 Depth=1
	movq	-112(%rbp), %rax
	movq	-392(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movl	$.L.str.12, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB0_60
# BB#57:                                # %lor.lhs.false.243
                                        #   in Loop: Header=BB0_40 Depth=1
	movq	-112(%rbp), %rax
	movq	-392(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movl	$.L.str.13, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB0_60
# BB#58:                                # %lor.lhs.false.249
                                        #   in Loop: Header=BB0_40 Depth=1
	movq	-112(%rbp), %rax
	movq	-392(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movl	$.L.str.14, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB0_60
# BB#59:                                # %lor.lhs.false.255
                                        #   in Loop: Header=BB0_40 Depth=1
	movq	-112(%rbp), %rax
	movq	-392(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movl	$.L.str.15, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_61
.LBB0_60:                               # %if.then.261
                                        #   in Loop: Header=BB0_40 Depth=1
	movq	-384(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -376(%rbp)
	jmp	.LBB0_62
.LBB0_61:                               # %if.else
                                        #   in Loop: Header=BB0_40 Depth=1
	movq	-48(%rbp), %rax
	movq	-384(%rbp), %rcx
	addq	24(%rcx), %rax
	movq	%rax, -376(%rbp)
.LBB0_62:                               # %if.end.265
                                        #   in Loop: Header=BB0_40 Depth=1
	movq	-392(%rbp), %rax
	movq	24(%rax), %rax
	addq	-56(%rbp), %rax
	movq	-376(%rbp), %rsi
	movq	-392(%rbp), %rcx
	movq	32(%rcx), %rdx
	movq	%rax, %rdi
	callq	memcpy
.LBB0_63:                               # %for.inc
                                        #   in Loop: Header=BB0_40 Depth=1
	movq	-192(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -192(%rbp)
	jmp	.LBB0_40
.LBB0_64:                               # %for.end.269
	movq	-72(%rbp), %rax
	movzwl	60(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, -192(%rbp)
.LBB0_65:                               # %for.cond.272
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_70 Depth 2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-192(%rbp), %rdx
	addq	$-1, %rdx
	movq	%rdx, -192(%rbp)
	cmpq	%rdx, %rcx
	jge	.LBB0_79
# BB#66:                                # %for.body.276
                                        #   in Loop: Header=BB0_65 Depth=1
	movq	-104(%rbp), %rax
	movq	-192(%rbp), %rsi
	movq	-72(%rbp), %rcx
	movzwl	58(%rcx), %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	entry_address
	movq	%rax, -424(%rbp)
	movq	-424(%rbp), %rax
	cmpl	$11, 4(%rax)
	je	.LBB0_69
# BB#67:                                # %land.lhs.true.283
                                        #   in Loop: Header=BB0_65 Depth=1
	movq	-424(%rbp), %rax
	cmpl	$2, 4(%rax)
	je	.LBB0_69
# BB#68:                                # %if.then.287
                                        #   in Loop: Header=BB0_65 Depth=1
	jmp	.LBB0_65
.LBB0_69:                               # %if.end.288
                                        #   in Loop: Header=BB0_65 Depth=1
	movq	-56(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	-424(%rbp), %rdx
	movl	40(%rdx), %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-72(%rbp), %rdx
	movzwl	58(%rdx), %edi
	movl	%edi, %edx
	movq	%rcx, %rdi
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	entry_address
	movq	-600(%rbp), %rcx        # 8-byte Reload
	addq	24(%rax), %rcx
	movq	%rcx, -400(%rbp)
	movq	-424(%rbp), %rax
	movq	24(%rax), %rax
	addq	-56(%rbp), %rax
	movq	%rax, -408(%rbp)
	movq	-408(%rbp), %rax
	movq	-424(%rbp), %rcx
	addq	32(%rcx), %rax
	movq	%rax, -416(%rbp)
.LBB0_70:                               # %for.cond.299
                                        #   Parent Loop BB0_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-408(%rbp), %rax
	cmpq	-416(%rbp), %rax
	jae	.LBB0_78
# BB#71:                                # %for.body.302
                                        #   in Loop: Header=BB0_70 Depth=2
	movq	-400(%rbp), %rax
	movq	-408(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movl	$.L.str.16, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB0_75
# BB#72:                                # %lor.lhs.false.308
                                        #   in Loop: Header=BB0_70 Depth=2
	movq	-400(%rbp), %rax
	movq	-408(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movl	$.L.str.17, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB0_75
# BB#73:                                # %lor.lhs.false.315
                                        #   in Loop: Header=BB0_70 Depth=2
	movq	-400(%rbp), %rax
	movq	-408(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movl	$.L.str.18, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB0_75
# BB#74:                                # %lor.lhs.false.322
                                        #   in Loop: Header=BB0_70 Depth=2
	movq	-400(%rbp), %rax
	movq	-408(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movl	$.L.str.19, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_76
.LBB0_75:                               # %if.then.329
                                        #   in Loop: Header=BB0_70 Depth=2
	movq	-408(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	%rcx, 8(%rax)
.LBB0_76:                               # %if.end.330
                                        #   in Loop: Header=BB0_70 Depth=2
	jmp	.LBB0_77
.LBB0_77:                               # %for.inc.331
                                        #   in Loop: Header=BB0_70 Depth=2
	movq	-408(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -408(%rbp)
	jmp	.LBB0_70
.LBB0_78:                               # %for.end.332
                                        #   in Loop: Header=BB0_65 Depth=1
	jmp	.LBB0_65
.LBB0_79:                               # %for.end.333
	movq	-56(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movzwl	62(%rdx), %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-72(%rbp), %rdx
	movzwl	58(%rdx), %edi
	movl	%edi, %edx
	movq	%rcx, %rdi
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	entry_address
	movq	-608(%rbp), %rcx        # 8-byte Reload
	addq	24(%rax), %rcx
	movq	%rcx, -120(%rbp)
	movq	-72(%rbp), %rax
	movzwl	60(%rax), %r8d
	movl	%r8d, %eax
	movq	%rax, -192(%rbp)
.LBB0_80:                               # %for.cond.343
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-192(%rbp), %rdx
	addq	$-1, %rdx
	movq	%rdx, -192(%rbp)
	cmpq	%rdx, %rcx
	jge	.LBB0_85
# BB#81:                                # %for.body.347
                                        #   in Loop: Header=BB0_80 Depth=1
	movq	-96(%rbp), %rax
	movq	-192(%rbp), %rsi
	movq	-64(%rbp), %rcx
	movzwl	58(%rcx), %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	entry_address
	movq	%rax, -432(%rbp)
	movq	-104(%rbp), %rax
	movq	-192(%rbp), %rsi
	movq	-72(%rbp), %rcx
	movzwl	58(%rcx), %r8d
	movl	%r8d, %edx
	movq	%rax, %rdi
	callq	entry_address
	movq	%rax, -440(%rbp)
	movq	-432(%rbp), %rax
	cmpl	$8, 4(%rax)
	jne	.LBB0_84
# BB#82:                                # %land.lhs.true.359
                                        #   in Loop: Header=BB0_80 Depth=1
	movq	-440(%rbp), %rax
	cmpl	$1, 4(%rax)
	jne	.LBB0_84
# BB#83:                                # %if.then.363
                                        #   in Loop: Header=BB0_80 Depth=1
	movq	-120(%rbp), %rax
	movq	-440(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, %ecx
	movb	$44, (%rax,%rcx)
.LBB0_84:                               # %if.end.367
                                        #   in Loop: Header=BB0_80 Depth=1
	jmp	.LBB0_80
.LBB0_85:                               # %for.end.368
	movq	-72(%rbp), %rax
	movzwl	60(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, -192(%rbp)
.LBB0_86:                               # %for.cond.371
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_96 Depth 2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-192(%rbp), %rdx
	addq	$-1, %rdx
	movq	%rdx, -192(%rbp)
	cmpq	%rdx, %rcx
	jge	.LBB0_104
# BB#87:                                # %for.body.375
                                        #   in Loop: Header=BB0_86 Depth=1
	movq	-104(%rbp), %rdi
	movq	-192(%rbp), %rsi
	movq	-72(%rbp), %rax
	movzwl	58(%rax), %ecx
	movl	%ecx, %edx
	callq	entry_address
	movq	%rax, -448(%rbp)
	movl	4(%rax), %ecx
	movl	%ecx, %r8d
	subl	$4, %r8d
	movl	%ecx, -612(%rbp)        # 4-byte Spill
	movl	%r8d, -616(%rbp)        # 4-byte Spill
	je	.LBB0_89
	jmp	.LBB0_111
.LBB0_111:                              # %for.body.375
                                        #   in Loop: Header=BB0_86 Depth=1
	movl	-612(%rbp), %eax        # 4-byte Reload
	subl	$9, %eax
	movl	%eax, -620(%rbp)        # 4-byte Spill
	je	.LBB0_89
	jmp	.LBB0_88
.LBB0_88:                               # %sw.default
                                        #   in Loop: Header=BB0_86 Depth=1
	jmp	.LBB0_103
.LBB0_89:                               # %sw.bb
                                        #   in Loop: Header=BB0_86 Depth=1
	movq	-104(%rbp), %rax
	movq	-448(%rbp), %rcx
	movl	44(%rcx), %edx
	movl	%edx, %esi
	movq	-72(%rbp), %rcx
	movzwl	58(%rcx), %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	entry_address
	movq	%rax, -456(%rbp)
	movq	-112(%rbp), %rax
	movq	-456(%rbp), %rcx
	movl	(%rcx), %r8d
	movl	%r8d, %ecx
	addq	%rcx, %rax
	movl	$.L.str.10, %r8d
	movl	%r8d, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB0_95
# BB#90:                                # %lor.lhs.false.390
                                        #   in Loop: Header=BB0_86 Depth=1
	movq	-112(%rbp), %rax
	movq	-456(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movl	$.L.str.11, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB0_95
# BB#91:                                # %lor.lhs.false.396
                                        #   in Loop: Header=BB0_86 Depth=1
	movq	-112(%rbp), %rax
	movq	-456(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movl	$.L.str.12, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB0_95
# BB#92:                                # %lor.lhs.false.402
                                        #   in Loop: Header=BB0_86 Depth=1
	movq	-112(%rbp), %rax
	movq	-456(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movl	$.L.str.13, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB0_95
# BB#93:                                # %lor.lhs.false.408
                                        #   in Loop: Header=BB0_86 Depth=1
	movq	-112(%rbp), %rax
	movq	-456(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movl	$.L.str.14, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB0_95
# BB#94:                                # %lor.lhs.false.414
                                        #   in Loop: Header=BB0_86 Depth=1
	movq	-112(%rbp), %rax
	movq	-456(%rbp), %rcx
	movl	(%rcx), %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movl	$.L.str.15, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_102
.LBB0_95:                               # %if.then.420
                                        #   in Loop: Header=BB0_86 Depth=1
	movq	-456(%rbp), %rax
	movq	16(%rax), %rax
	movq	-456(%rbp), %rcx
	subq	24(%rcx), %rax
	movq	%rax, -464(%rbp)
	movq	-48(%rbp), %rax
	movq	-448(%rbp), %rcx
	addq	24(%rcx), %rax
	movq	%rax, -472(%rbp)
	movq	-472(%rbp), %rax
	movq	-448(%rbp), %rcx
	addq	32(%rcx), %rax
	movq	%rax, -480(%rbp)
.LBB0_96:                               # %for.cond.428
                                        #   Parent Loop BB0_86 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-472(%rbp), %rax
	cmpq	-480(%rbp), %rax
	jae	.LBB0_101
# BB#97:                                # %for.body.431
                                        #   in Loop: Header=BB0_96 Depth=2
	movq	-472(%rbp), %rax
	movq	(%rax), %rax
	subq	-464(%rbp), %rax
	movq	%rax, -488(%rbp)
	movq	-472(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_99
# BB#98:                                # %if.then.436
                                        #   in Loop: Header=BB0_96 Depth=2
	jmp	.LBB0_100
.LBB0_99:                               # %if.end.437
                                        #   in Loop: Header=BB0_96 Depth=2
	movq	-56(%rbp), %rax
	movq	-488(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-488(%rbp), %rsi
	movq	(%rdx,%rsi), %rdx
	movq	%rdx, (%rax,%rcx)
.LBB0_100:                              # %for.inc.440
                                        #   in Loop: Header=BB0_96 Depth=2
	movq	-448(%rbp), %rax
	movq	56(%rax), %rax
	addq	-472(%rbp), %rax
	movq	%rax, -472(%rbp)
	jmp	.LBB0_96
.LBB0_101:                              # %for.end.442
                                        #   in Loop: Header=BB0_86 Depth=1
	jmp	.LBB0_102
.LBB0_102:                              # %if.end.443
                                        #   in Loop: Header=BB0_86 Depth=1
	jmp	.LBB0_103
.LBB0_103:                              # %sw.epilog
                                        #   in Loop: Header=BB0_86 Depth=1
	jmp	.LBB0_86
.LBB0_104:                              # %for.end.444
	movl	-20(%rbp), %edi
	movq	-56(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	write
	cmpq	-32(%rbp), %rax
	je	.LBB0_106
# BB#105:                               # %if.then.448
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movq	%rsi, -632(%rbp)        # 8-byte Spill
	movq	%rdx, -640(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movabsq	$.L.str.20, %rdi
	movq	-632(%rbp), %rsi        # 8-byte Reload
	movq	-640(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	fatal
.LBB0_106:                              # %if.end.451
	movq	-48(%rbp), %rdi
	movq	-352(%rbp), %rsi
	callq	munmap
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	%eax, -644(%rbp)        # 4-byte Spill
	callq	munmap
	movl	-24(%rbp), %edi
	movl	%eax, -648(%rbp)        # 4-byte Spill
	callq	emacs_close
	cmpl	$0, %eax
	je	.LBB0_108
# BB#107:                               # %if.then.457
	movq	-16(%rbp), %rsi
	movq	%rsi, -656(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movabsq	$.L.str.21, %rdi
	movq	-656(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fatal
.LBB0_108:                              # %if.end.460
	movl	-20(%rbp), %edi
	callq	emacs_close
	cmpl	$0, %eax
	je	.LBB0_110
# BB#109:                               # %if.then.464
	movq	-8(%rbp), %rsi
	movq	%rsi, -664(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movabsq	$.L.str.21, %rdi
	movq	-664(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fatal
.LBB0_110:                              # %if.end.467
	addq	$672, %rsp              # imm = 0x2A0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	unexec, .Lfunc_end0-unexec
	.cfi_endproc

	.align	16, 0x90
	.type	entry_address,@function
entry_address:                          # @entry_address
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rsi
	imulq	-24(%rbp), %rsi
	addq	%rsi, %rdx
	movq	%rdx, %rax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	entry_address, .Lfunc_end1-entry_address
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Can't open %s for reading: %s"
	.size	.L.str, 30

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Can't fstat (%s): %s"
	.size	.L.str.1, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"File size out of range"
	.size	.L.str.2, 23

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Can't allocate buffer for %s: %s"
	.size	.L.str.3, 33

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Didn't read all of %s: %s"
	.size	.L.str.4, 26

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"no bss section found"
	.size	.L.str.5, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	".bss shrank when undumping"
	.size	.L.str.6, 27

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Can't creat (%s): %s"
	.size	.L.str.7, 21

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Can't ftruncate (%s): %s"
	.size	.L.str.8, 25

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	".plt"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	".data"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	".sdata"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	".lit4"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	".lit8"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	".sdata1"
	.size	.L.str.14, 8

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	".data1"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"_end"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"end"
	.size	.L.str.17, 4

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"_edata"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"edata"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Didn't write %lu bytes to %s: %s"
	.size	.L.str.20, 33

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Can't close (%s): %s"
	.size	.L.str.21, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
