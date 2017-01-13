	.text
	.file	"gsicc_cache.bc"
	.globl	gsicc_cache_new
	.align	16, 0x90
	.type	gsicc_cache_new,@function
gsicc_cache_new:                        # @gsicc_cache_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	(%r14), %rdi
	movl	$st_icc_linkcache, %esi
	movl	$.L.str, %edx
	callq	*72(%rdi)
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB0_5
# BB#1:                                 # %if.end
	movq	(%r14), %rdi
	callq	gx_monitor_alloc
	movq	%rax, 48(%rbx)
	movq	(%r14), %rdi
	callq	gx_semaphore_alloc
	movq	%rax, 56(%rbx)
	testq	%rax, %rax
	je	.LBB0_3
# BB#2:                                 # %if.end
	movq	48(%rbx), %rax
	testq	%rax, %rax
	je	.LBB0_3
# BB#4:                                 # %if.end.14
	movl	$0, 64(%rbx)
	movq	$1, 16(%rbx)
	movq	(%r14), %rax
	movq	%rax, 24(%rbx)
	movq	$rc_gsicc_link_cache_free, 32(%rbx)
	movq	$0, (%rbx)
	movl	$0, 8(%rbx)
	movq	%rax, 40(%rbx)
	movq	%rbx, %rax
	jmp	.LBB0_5
.LBB0_3:                                # %if.then.10
	movq	(%r14), %rdi
	movl	$.L.str, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	xorl	%eax, %eax
.LBB0_5:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	gsicc_cache_new, .Lfunc_end0-gsicc_cache_new
	.cfi_endproc

	.align	16, 0x90
	.type	rc_gsicc_link_cache_free,@function
rc_gsicc_link_cache_free:               # @rc_gsicc_link_cache_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp7:
	.cfi_def_cfa_offset 32
.Ltmp8:
	.cfi_offset %rbx, -24
.Ltmp9:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	jmp	.LBB1_2
	.align	16, 0x90
.LBB1_1:                                # %while.body
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%r14, %rsi
	callq	gsicc_remove_link
	decl	8(%rbx)
.LBB1_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	jne	.LBB1_1
# BB#3:                                 # %while.end
	movq	56(%rbx), %rdi
	callq	gx_semaphore_free
	movq	$0, 56(%rbx)
	movq	48(%rbx), %rdi
	callq	gx_monitor_free
	movq	$0, 48(%rbx)
	movq	(%r14), %rdi
	movq	24(%rdi), %rax
	movl	$.L.str.8, %edx
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.Lfunc_end1:
	.size	rc_gsicc_link_cache_free, .Lfunc_end1-rc_gsicc_link_cache_free
	.cfi_endproc

	.globl	icc_linkcache_finalize
	.align	16, 0x90
	.type	icc_linkcache_finalize,@function
icc_linkcache_finalize:                 # @icc_linkcache_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	56(%rbx), %rdi
	callq	gx_semaphore_free
	movq	$0, 56(%rbx)
	movq	48(%rbx), %rdi
	callq	gx_monitor_free
	movq	$0, 48(%rbx)
	popq	%rbx
	retq
.Lfunc_end2:
	.size	icc_linkcache_finalize, .Lfunc_end2-icc_linkcache_finalize
	.cfi_endproc

	.globl	gsicc_link_free
	.align	16, 0x90
	.type	gsicc_link_free,@function
gsicc_link_free:                        # @gsicc_link_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp12:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp14:
	.cfi_def_cfa_offset 32
.Ltmp15:
	.cfi_offset %rbx, -24
.Ltmp16:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	*24(%rbx)
	movq	96(%rbx), %rdi
	callq	gx_semaphore_free
	movq	$0, 96(%rbx)
	movq	(%r14), %rdi
	movq	24(%rdi), %rax
	movl	$.L.str.1, %edx
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.Lfunc_end3:
	.size	gsicc_link_free, .Lfunc_end3-gsicc_link_free
	.cfi_endproc

	.globl	icc_link_finalize
	.align	16, 0x90
	.type	icc_link_finalize,@function
icc_link_finalize:                      # @icc_link_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	96(%rbx), %rdi
	callq	gx_semaphore_free
	movq	$0, 96(%rbx)
	popq	%rbx
	retq
.Lfunc_end4:
	.size	icc_link_finalize, .Lfunc_end4-icc_link_finalize
	.cfi_endproc

	.globl	gsicc_get_icc_buff_hash
	.align	16, 0x90
	.type	gsicc_get_icc_buff_hash,@function
gsicc_get_icc_buff_hash:                # @gsicc_get_icc_buff_hash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp20:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 40
	subq	$104, %rsp
.Ltmp23:
	.cfi_def_cfa_offset 144
.Ltmp24:
	.cfi_offset %rbx, -40
.Ltmp25:
	.cfi_offset %r14, -32
.Ltmp26:
	.cfi_offset %r15, -24
.Ltmp27:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	16(%rsp), %r15
	movq	%r15, %rdi
	callq	gs_md5_init
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	%ebp, %edx
	callq	gs_md5_append
	leaq	(%rsp), %rsi
	movq	%r15, %rdi
	callq	gs_md5_finish
	movl	(%rsp), %r8d
	movl	8(%rsp), %r9d
	movq	(%rsp), %rbp
	movq	8(%rsp), %r10
	movl	%ebp, %edi
	andl	$16777215, %edi         # imm = 0xFFFFFF
	andl	$-16777216, %r8d        # imm = 0xFFFFFFFFFF000000
	orq	%rdi, %r8
	movabsq	$1095216660480, %rdi    # imm = 0xFF00000000
	movq	%rbp, %rax
	andq	%rdi, %rax
	andq	%r10, %rdi
	movabsq	$280375465082880, %rbx  # imm = 0xFF0000000000
	movq	%rbp, %rcx
	andq	%rbx, %rcx
	andq	%r10, %rbx
	movabsq	$71776119061217280, %rdx # imm = 0xFF000000000000
	andq	%rdx, %rbp
	andq	%r10, %rdx
	movabsq	$-72057594037927936, %rsi # imm = 0xFF00000000000000
	andq	%r10, %rsi
	andl	$16777215, %r10d        # imm = 0xFFFFFF
	andl	$-16777216, %r9d        # imm = 0xFFFFFFFFFF000000
	orq	%r10, %r9
	orq	%r8, %rax
	orq	%r9, %rdi
	orq	%rax, %rcx
	orq	%rdi, %rbx
	orq	%rcx, %rbp
	orq	%rbx, %rdx
	movzbl	7(%rsp), %eax
	shlq	$56, %rax
	orq	%rbp, %rax
	orq	%rdx, %rsi
	xorq	%rax, %rsi
	movq	%rsi, (%r14)
	addq	$104, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gsicc_get_icc_buff_hash, .Lfunc_end5-gsicc_get_icc_buff_hash
	.cfi_endproc

	.globl	gsicc_findcachelink
	.align	16, 0x90
	.type	gsicc_findcachelink,@function
gsicc_findcachelink:                    # @gsicc_findcachelink
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp31:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 48
.Ltmp33:
	.cfi_offset %rbx, -48
.Ltmp34:
	.cfi_offset %r12, -40
.Ltmp35:
	.cfi_offset %r14, -32
.Ltmp36:
	.cfi_offset %r15, -24
.Ltmp37:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movl	%esi, %r12d
	movq	%rdi, %r14
	movq	48(%rsp), %rbp
	movq	48(%r14), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	movq	(%r14), %rax
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB6_12
# BB#1:
	movq	%rax, %rdx
	.align	16, 0x90
.LBB6_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rcx
	movq	%rdx, %rbx
	cmpq	%rbp, 40(%rbx)
	jne	.LBB6_11
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpl	%r12d, 108(%rbx)
	jne	.LBB6_11
# BB#4:                                 # %land.lhs.true.5
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpl	%r15d, 112(%rbx)
	je	.LBB6_5
.LBB6_11:                               # %if.end.29
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	88(%rbx), %rdx
	testq	%rdx, %rdx
	jne	.LBB6_2
.LBB6_12:                               # %while.end.31
	movq	48(%r14), %rdi
	addq	$8, %rdi
	callq	gp_monitor_leave
	xorl	%ebx, %ebx
.LBB6_13:                               # %cleanup
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_5:                                # %if.then
	testq	%rcx, %rcx
	je	.LBB6_7
# BB#6:                                 # %if.then.9
	movq	88(%rbx), %rdx
	movq	%rdx, 88(%rcx)
	movq	%rax, 88(%rbx)
	movq	%rbx, (%r14)
.LBB6_7:                                # %if.end
	incl	80(%rbx)
	jmp	.LBB6_9
	.align	16, 0x90
.LBB6_8:                                # %while.body.16
                                        #   in Loop: Header=BB6_9 Depth=1
	incl	104(%rbx)
	movq	48(%r14), %rdi
	addq	$8, %rdi
	callq	gp_monitor_leave
	movq	96(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_semaphore_wait
	movq	48(%r14), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
.LBB6_9:                                # %while.body.16
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 120(%rbx)
	je	.LBB6_8
# BB#10:                                # %while.end
	movq	48(%r14), %rdi
	addq	$8, %rdi
	callq	gp_monitor_leave
	jmp	.LBB6_13
.Lfunc_end6:
	.size	gsicc_findcachelink, .Lfunc_end6-gsicc_findcachelink
	.cfi_endproc

	.globl	gsicc_get_link
	.align	16, 0x90
	.type	gsicc_get_link,@function
gsicc_get_link:                         # @gsicc_get_link
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp39:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp41:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp42:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp44:
	.cfi_def_cfa_offset 112
.Ltmp45:
	.cfi_offset %rbx, -56
.Ltmp46:
	.cfi_offset %r12, -48
.Ltmp47:
	.cfi_offset %r13, -40
.Ltmp48:
	.cfi_offset %r14, -32
.Ltmp49:
	.cfi_offset %r15, -24
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, %rbx
	movq	%rcx, %rbp
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	$0, 48(%rsp)
	testq	%r15, %r15
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	1872(%r12), %r15
.LBB7_2:                                # %if.end
	movq	64(%rdx), %r13
	testq	%r13, %r13
	jne	.LBB7_6
# BB#3:                                 # %if.then.2
	movq	48(%rdx), %rax
	testq	%rax, %rax
	je	.LBB7_5
# BB#4:                                 # %if.then.4
	movq	64(%rax), %r13
	jmp	.LBB7_6
.LBB7_5:                                # %if.else.7
	movq	336(%r12), %rsi
	movq	%rdx, %rdi
	callq	gsicc_get_gscs_profile
	movq	%rax, %r13
.LBB7_6:                                # %if.end.11
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	callq	*1680(%r15)
	movq	336(%r12), %rax
	testq	%rax, %rax
	je	.LBB7_24
# BB#7:                                 # %land.lhs.true
	movq	72(%rax), %rdx
	testq	%rdx, %rdx
	je	.LBB7_24
# BB#8:                                 # %if.then.17
	movl	16(%r13), %edi
	movl	%edi, %eax
	andl	$-2, %eax
	cmpl	$2, %eax
	jne	.LBB7_24
# BB#9:                                 # %if.then.21
	movl	1112(%r15), %esi
	leaq	48(%rsp), %rcx
	leaq	16(%rsp), %r8
	callq	gsicc_get_srcprofile
	cmpq	$0, 48(%rsp)
	je	.LBB7_15
# BB#10:                                # %if.then.26
	movq	%r13, %rdi
	callq	gsicc_get_default_type
	decl	%eax
	cmpl	$2, %eax
	jb	.LBB7_12
# BB#11:                                # %if.then.26
	movl	36(%rsp), %eax
	testl	%eax, %eax
	je	.LBB7_13
.LBB7_12:                               # %if.then.32
	movq	48(%rsp), %r13
	movq	32(%rsp), %rax
	movq	%rax, 16(%rbx)
	movups	16(%rsp), %xmm0
	movups	%xmm0, (%rbx)
.LBB7_13:                               # %if.end.33
	cmpl	$0, 8(%r13)
	je	.LBB7_24
# BB#14:                                # %cleanup
	movl	16(%rsp), %eax
	andl	$3, %eax
	movl	%eax, (%rbx)
	movl	20(%rsp), %eax
	andl	$3, %eax
	movl	%eax, 4(%rbx)
	movq	8(%rsp), %rax
	movq	(%rax), %rcx
	movl	$0, (%rsp)
	jmp	.LBB7_42
.LBB7_15:                               # %if.else.41
	movl	32(%rsp), %eax
	cmpl	$2, %eax
	jne	.LBB7_16
# BB#23:                                # %if.then.69
	movl	16(%r13), %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	gsicc_rcm_get_link
	jmp	.LBB7_43
.LBB7_16:                               # %if.else.41
	cmpl	$1, %eax
	jne	.LBB7_24
# BB#17:                                # %if.then.43
	cmpl	$2, 16(%r13)
	jne	.LBB7_19
# BB#18:                                # %if.then.46
	movl	$3, %edx
	jmp	.LBB7_20
.LBB7_19:                               # %if.else.48
	movl	$4, %edx
.LBB7_20:                               # %if.end.50
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	gsicc_nocm_get_link
	testq	%rax, %rax
	je	.LBB7_24
# BB#21:                                # %if.then.52
	movq	8(%rsp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%r13), %edx
	movzbl	(%rcx), %ecx
	cmpl	%ecx, %edx
	jne	.LBB7_43
# BB#22:                                # %if.then.59
	movl	$1, 116(%rax)
	jmp	.LBB7_43
.LBB7_24:                               # %if.end.76
	testq	%rbp, %rbp
	je	.LBB7_26
# BB#25:                                # %if.then.79
	movq	64(%rbp), %rcx
	movq	%rcx, 40(%rsp)
	movl	(%rbx), %eax
	movl	4(%rbx), %edx
	movl	8(%rbx), %esi
	xorl	%edi, %edi
	jmp	.LBB7_41
.LBB7_26:                               # %if.else.81
	movq	%r13, %rdi
	callq	gsicc_get_default_type
	movl	%eax, %ebp
	leaq	8(%rsp), %rsi
	movq	%r15, %rdi
	callq	*1680(%r15)
	cmpl	$2, %ebp
	ja	.LBB7_31
# BB#27:                                # %land.lhs.true.88
	movq	8(%rsp), %rax
	cmpl	$0, 164(%rax)
	je	.LBB7_31
# BB#28:                                # %if.then.90
	movzbl	(%r13), %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	gsicc_nocm_get_link
	testq	%rax, %rax
	je	.LBB7_31
# BB#29:                                # %if.then.97
	movq	8(%rsp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%r13), %edx
	movzbl	(%rcx), %ecx
	cmpl	%ecx, %edx
	jne	.LBB7_43
# BB#30:                                # %if.then.106
	movl	$1, 116(%rax)
	jmp	.LBB7_43
.LBB7_31:                               # %if.end.113
	movl	1112(%r15), %edi
	movq	8(%rsp), %rsi
	leaq	40(%rsp), %rdx
	leaq	16(%rsp), %rcx
	callq	gsicc_extract_profile
	movl	(%rbx), %eax
	testb	$4, %al
	jne	.LBB7_34
# BB#32:                                # %if.then.118
	movl	16(%rsp), %ecx
	cmpl	$8, %ecx
	je	.LBB7_34
# BB#33:                                # %if.then.122
	movl	%ecx, (%rbx)
	movl	%ecx, %eax
.LBB7_34:                               # %if.end.126
	movl	4(%rbx), %edx
	testb	$4, %dl
	jne	.LBB7_37
# BB#35:                                # %if.then.130
	movl	20(%rsp), %ecx
	cmpl	$8, %ecx
	je	.LBB7_37
# BB#36:                                # %if.then.134
	movl	%ecx, 4(%rbx)
	movl	%ecx, %edx
.LBB7_37:                               # %if.end.138
	movl	8(%rbx), %esi
	testb	$4, %sil
	jne	.LBB7_40
# BB#38:                                # %if.then.141
	movl	24(%rsp), %ecx
	cmpl	$8, %ecx
	je	.LBB7_40
# BB#39:                                # %if.then.145
	movl	%ecx, 8(%rbx)
	movl	%ecx, %esi
.LBB7_40:                               # %cleanup.151.thread
	movq	8(%rsp), %rcx
	movl	152(%rcx), %edi
	movq	40(%rsp), %rcx
.LBB7_41:                               # %if.end.154
	andl	$3, %eax
	movl	%eax, (%rbx)
	andl	$3, %edx
	movl	%edx, 4(%rbx)
	andl	$3, %esi
	movl	%esi, 8(%rbx)
	movl	%edi, (%rsp)
.LBB7_42:                               # %cleanup.165
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	movq	%rbx, %r8
	movq	%r14, %r9
	callq	gsicc_get_link_profile
.LBB7_43:                               # %cleanup.165
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gsicc_get_link, .Lfunc_end7-gsicc_get_link
	.cfi_endproc

	.globl	gsicc_get_link_profile
	.align	16, 0x90
	.type	gsicc_get_link_profile,@function
gsicc_get_link_profile:                 # @gsicc_get_link_profile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp52:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp53:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp54:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp55:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp56:
	.cfi_def_cfa_offset 56
	subq	$392, %rsp              # imm = 0x188
.Ltmp57:
	.cfi_def_cfa_offset 448
.Ltmp58:
	.cfi_offset %rbx, -56
.Ltmp59:
	.cfi_offset %r12, -48
.Ltmp60:
	.cfi_offset %r13, -40
.Ltmp61:
	.cfi_offset %r14, -32
.Ltmp62:
	.cfi_offset %r15, -24
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%r9, 72(%rsp)           # 8-byte Spill
	movq	%r8, 160(%rsp)          # 8-byte Spill
	movq	%rcx, %r13
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movq	336(%rdi), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	344(%rdi), %rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	movq	40(%rax), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movl	8(%r15), %eax
	movl	%eax, 116(%rsp)         # 4-byte Spill
	xorl	%esi, %esi
	testq	%rbx, %rbx
	movl	$0, %r12d
	movl	$0, %ebp
	movl	$0, %edi
	movl	$0, %edx
	je	.LBB8_6
# BB#1:                                 # %if.then
	leaq	192(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*1680(%rbx)
	movq	192(%rsp), %rcx
	xorl	%edx, %edx
	testq	%rcx, %rcx
	movl	$0, %edi
	movl	$0, %esi
	movl	$0, %ebp
	je	.LBB8_5
# BB#2:                                 # %if.end
	movq	32(%rcx), %rax
	movq	40(%rcx), %rdi
	movl	160(%rcx), %edx
	xorl	%esi, %esi
	testq	%rax, %rax
	je	.LBB8_3
# BB#4:                                 # %if.then.10
	movq	144(%rax), %rcx
	xorl	%ebp, %ebp
	cmpq	144(%r15), %rcx
	setne	%cl
	movzbl	%cl, %esi
	cmovneq	%rax, %rbp
	jmp	.LBB8_5
.LBB8_3:
	xorl	%ebp, %ebp
.LBB8_5:                                # %if.end.15
	testq	%rdi, %rdi
	setne	%al
	movzbl	%al, %r12d
.LBB8_6:                                # %if.end.i.i
	movq	%rbx, 120(%rsp)         # 8-byte Spill
	movq	%rsi, 184(%rsp)         # 8-byte Spill
	movabsq	$-4278190081, %r14      # imm = 0xFFFFFFFF00FFFFFF
	cmpl	$0, 152(%r15)
	je	.LBB8_8
# BB#7:                                 # %if.then.1.i.i
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movq	%r15, 128(%rsp)         # 8-byte Spill
	movq	144(%r15), %r15
	movq	%r15, 216(%rsp)
	jmp	.LBB8_9
.LBB8_8:                                # %if.else.i.i
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movq	256(%r15), %rbx
	movl	220(%r15), %ebp
	movl	%r12d, 140(%rsp)        # 4-byte Spill
	leaq	304(%rsp), %r12
	movq	%r12, %rdi
	callq	gs_md5_init
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movl	%ebp, %edx
	callq	gs_md5_append
	leaq	240(%rsp), %rsi
	movq	%r12, %rdi
	movl	140(%rsp), %r12d        # 4-byte Reload
	callq	gs_md5_finish
	movl	248(%rsp), %eax
	andl	$-16777216, %eax        # imm = 0xFFFFFFFFFF000000
	movq	%r15, %rbx
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	movq	248(%rsp), %r15
	andq	%r14, %r15
	orq	%rax, %r15
	xorq	240(%rsp), %r15
	movq	%r15, 216(%rsp)
	movq	%r15, 144(%rbx)
	movl	$1, 152(%rbx)
.LBB8_9:                                # %gsicc_get_cspace_hash.exit.i
	testq	%r13, %r13
	je	.LBB8_10
# BB#11:                                # %if.end.i.12.i
	cmpl	$0, 152(%r13)
	je	.LBB8_13
# BB#12:                                # %if.then.1.i.14.i
	movq	144(%r13), %r14
	movq	%r13, 88(%rsp)          # 8-byte Spill
	movq	%r14, 224(%rsp)
	jmp	.LBB8_14
.LBB8_10:                               # %if.then.i.9.i
	movq	%r13, 88(%rsp)          # 8-byte Spill
	leaq	280(%rsp), %rsi
	movq	120(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	callq	*1680(%rbx)
	movl	1112(%rbx), %edi
	movq	280(%rsp), %rsi
	leaq	272(%rsp), %rdx
	leaq	240(%rsp), %rcx
	callq	gsicc_extract_profile
	movq	272(%rsp), %rax
	movq	144(%rax), %r14
	movq	%r14, 224(%rsp)
	jmp	.LBB8_14
.LBB8_13:                               # %if.else.i.18.i
	movq	256(%r13), %rbx
	movq	%r13, %rbp
	movq	%rbp, 88(%rsp)          # 8-byte Spill
	movl	220(%rbp), %r13d
	movl	%r12d, 140(%rsp)        # 4-byte Spill
	leaq	304(%rsp), %r12
	movq	%r12, %rdi
	callq	gs_md5_init
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movl	%r13d, %edx
	callq	gs_md5_append
	leaq	288(%rsp), %rsi
	movq	%r12, %rdi
	movl	140(%rsp), %r12d        # 4-byte Reload
	callq	gs_md5_finish
	movl	296(%rsp), %eax
	andl	$-16777216, %eax        # imm = 0xFFFFFFFFFF000000
	andq	296(%rsp), %r14
	orq	%rax, %r14
	xorq	288(%rsp), %r14
	movq	%r14, 224(%rsp)
	movq	%r14, 144(%rbp)
	movl	$1, 152(%rbp)
.LBB8_14:                               # %gsicc_compute_linkhash.exit
	movq	160(%rsp), %rdx         # 8-byte Reload
	movl	(%rdx), %eax
	movl	8(%rdx), %ecx
	shll	$8, %eax
	addl	4(%rdx), %eax
	shll	$16, %ecx
	addl	%eax, %ecx
	movq	%rcx, 232(%rsp)
	sarq	%r14
	xorq	%r14, %r15
	xorq	%rcx, %r15
	movq	%r15, 208(%rsp)
	movdqa	208(%rsp), %xmm0
	movaps	224(%rsp), %xmm1
	movups	%xmm1, 16(%rsp)
	movdqu	%xmm0, (%rsp)
	movq	144(%rsp), %r14         # 8-byte Reload
	movq	%r14, %rdi
	movq	184(%rsp), %rsi         # 8-byte Reload
	movl	%r12d, %edx
	movl	%r12d, %ebx
	callq	gsicc_findcachelink
	movq	%rax, %r12
	testq	%r12, %r12
	jne	.LBB8_83
# BB#15:                                # %if.end.29
	movq	128(%rsp), %rbp         # 8-byte Reload
	cmpq	$0, 280(%rbp)
	je	.LBB8_17
# BB#16:
	movq	184(%rsp), %r15         # 8-byte Reload
	jmp	.LBB8_31
.LBB8_17:                               # %land.lhs.true
	cmpq	$0, 256(%rbp)
	je	.LBB8_19
# BB#18:
	movq	184(%rsp), %r15         # 8-byte Reload
	jmp	.LBB8_31
.LBB8_19:                               # %land.lhs.true.32
	cmpq	$0, 264(%rbp)
	movq	184(%rsp), %r15         # 8-byte Reload
	je	.LBB8_31
# BB#20:                                # %if.then.35
	movq	328(%rbp), %rsi
	movq	%rbp, %rdi
	callq	gsicc_get_profile_handle_clist
	movq	%rax, 280(%rbp)
	cmpl	$0, 224(%rbp)
	je	.LBB8_30
# BB#21:                                # %land.lhs.true.39
	movl	244(%rbp), %eax
	cmpl	$2, %eax
	jne	.LBB8_22
# BB#29:                                # %if.then.65
	movl	16(%rbp), %edx
	movq	56(%rsp), %rdi          # 8-byte Reload
	movq	120(%rsp), %rsi         # 8-byte Reload
	callq	gsicc_rcm_get_link
	movq	%rax, %r12
	jmp	.LBB8_83
.LBB8_22:                               # %land.lhs.true.39
	cmpl	$1, %eax
	jne	.LBB8_30
# BB#23:                                # %if.then.41
	cmpl	$2, 16(%rbp)
	jne	.LBB8_25
# BB#24:                                # %if.then.43
	movl	$3, %edx
	jmp	.LBB8_26
.LBB8_25:                               # %if.else.45
	movl	$4, %edx
.LBB8_26:                               # %if.end.47
	movq	56(%rsp), %rdi          # 8-byte Reload
	movq	120(%rsp), %rsi         # 8-byte Reload
	callq	gsicc_nocm_get_link
	movq	%rax, %r12
	movq	%r12, 200(%rsp)
	testq	%r12, %r12
	je	.LBB8_30
# BB#27:                                # %if.then.49
	movq	192(%rsp), %rax
	movq	(%rax), %rax
	movzbl	(%rbp), %ecx
	movzbl	(%rax), %eax
	cmpl	%eax, %ecx
	jne	.LBB8_83
# BB#28:                                # %if.then.54
	movl	$1, 116(%r12)
	jmp	.LBB8_83
.LBB8_30:                               # %if.end.69
	movl	8(%rbp), %eax
	movl	%eax, 116(%rsp)         # 4-byte Spill
.LBB8_31:                               # %if.end.71
	movdqa	208(%rsp), %xmm0
	movaps	224(%rsp), %xmm1
	movups	%xmm1, 16(%rsp)
	movdqu	%xmm0, (%rsp)
	leaq	200(%rsp), %rsi
	movq	%r14, %rdi
	movl	%r15d, %edx
	movl	%ebx, %ecx
	callq	gsicc_alloc_link_entry
	movq	200(%rsp), %r15
	testl	%eax, %eax
	je	.LBB8_33
# BB#32:
	movq	%r15, %r12
	jmp	.LBB8_83
.LBB8_33:                               # %if.end.75
	movl	%ebx, 140(%rsp)         # 4-byte Spill
	xorl	%ebx, %ebx
	testq	%r15, %r15
	movl	$0, %r12d
	je	.LBB8_83
# BB#34:                                # %if.end.79
	movq	%rbp, %rdi
	movq	280(%rdi), %r13
	callq	gsicc_profile_from_ps
	testl	%eax, %eax
	je	.LBB8_36
# BB#35:                                # %if.then.83
	callq	gscms_avoid_white_fix_flag
	movl	%eax, %ebx
.LBB8_36:                               # %if.end.85
	testq	%r13, %r13
	jne	.LBB8_40
# BB#37:                                # %if.then.88
	movq	256(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB8_84
# BB#38:                                # %if.then.92
	movl	220(%rbp), %esi
	movq	72(%rsp), %rdx          # 8-byte Reload
	callq	gsicc_get_profile_handle_buffer
	movq	%rax, %r13
	xorl	%r12d, %r12d
	testq	%r13, %r13
	je	.LBB8_83
# BB#39:                                # %if.end.98
	movq	%rbp, %rdi
	movq	%r13, 280(%rdi)
	callq	gsicc_initialize_default_profile
	xorl	%r12d, %r12d
	testl	%eax, %eax
	js	.LBB8_83
.LBB8_40:                               # %if.end.111
	xorl	%eax, %eax
	cmpl	$0, 116(%rsp)           # 4-byte Folded Reload
	jne	.LBB8_46
# BB#41:                                # %if.end.115
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	280(%rax), %rax
	testq	%rax, %rax
	jne	.LBB8_46
# BB#42:                                # %if.then.120
	movq	88(%rsp), %r12          # 8-byte Reload
	movq	256(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB8_44
# BB#43:                                # %if.then.124
	movl	220(%r12), %esi
	movq	72(%rsp), %rdx          # 8-byte Reload
	callq	gsicc_get_profile_handle_buffer
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movq	%rax, 280(%r12)
	movq	%r12, %rdi
	callq	gsicc_initialize_default_profile
	xorl	%r12d, %r12d
	testl	%eax, %eax
	movq	120(%rsp), %rax         # 8-byte Reload
	jns	.LBB8_46
	jmp	.LBB8_83
.LBB8_44:                               # %if.else.134
	cmpq	$0, 264(%r12)
	je	.LBB8_84
# BB#45:                                # %if.then.138
	movq	328(%r12), %rsi
	movq	%r12, %rdi
	callq	gsicc_get_profile_handle_clist
	movq	%rax, 280(%r12)
.LBB8_46:                               # %if.end.147
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movq	%rax, 120(%rsp)         # 8-byte Spill
	xorl	%r12d, %r12d
	movq	184(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB8_50
# BB#47:                                # %if.then.149
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	280(%rax), %r12
	testq	%r12, %r12
	jne	.LBB8_50
# BB#48:                                # %if.then.153
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	256(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB8_84
# BB#49:                                # %if.then.157
	movl	220(%rax), %esi
	movq	72(%rsp), %rdx          # 8-byte Reload
	movq	%rax, %rbx
	callq	gsicc_get_profile_handle_buffer
	movq	%rax, %r15
	movq	%r15, 280(%rbx)
	movq	336(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	movq	%r15, %r12
.LBB8_50:                               # %if.end.168
	xorl	%ebx, %ebx
	cmpl	$0, 140(%rsp)           # 4-byte Folded Reload
	je	.LBB8_54
# BB#51:                                # %if.then.170
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	280(%rax), %rbx
	testq	%rbx, %rbx
	jne	.LBB8_54
# BB#52:                                # %if.then.174
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	256(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB8_81
# BB#53:                                # %if.then.178
	movl	220(%rax), %esi
	movq	72(%rsp), %rdx          # 8-byte Reload
	movq	%rax, %r15
	callq	gsicc_get_profile_handle_buffer
	movq	%rax, 280(%r15)
	movq	336(%r15), %rdi
	movq	%rax, %rbx
	addq	$8, %rdi
	callq	gp_monitor_enter
.LBB8_54:                               # %if.end.191
	movq	336(%rbp), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	movl	116(%rsp), %eax         # 4-byte Reload
	testl	%eax, %eax
	je	.LBB8_56
# BB#55:
	movq	%rbx, 72(%rsp)          # 8-byte Spill
	movq	%r13, %r15
	movq	40(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB8_66
.LBB8_84:                               # %if.else.109
	movq	%r15, %rdi
	jmp	.LBB8_82
.LBB8_56:                               # %if.then.196
	movq	%rbx, 72(%rsp)          # 8-byte Spill
	movq	%r13, %r15
	movq	88(%rsp), %rbp          # 8-byte Reload
	movq	336(%rbp), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	cmpl	$3, 16(%rbp)
	jne	.LBB8_57
# BB#58:                                # %land.lhs.true.206
	movq	128(%rsp), %rax         # 8-byte Reload
	cmpl	$1, 16(%rax)
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%rax, %rcx
	jne	.LBB8_66
# BB#59:                                # %land.lhs.true.210
	movl	448(%rsp), %eax
	testl	%eax, %eax
	je	.LBB8_66
# BB#60:                                # %land.lhs.true.210
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	336(%rax), %rbp
	testq	%rbp, %rbp
	je	.LBB8_66
# BB#61:                                # %if.then.216
	movq	%r12, %r13
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.LBB8_63
# BB#62:                                # %if.then.219
	movl	$.L.str.2, %edi
	callq	strlen
	movq	80(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	$.L.str.2, %edi
	movl	%eax, %esi
	movq	%rbp, %rdx
	callq	gsicc_set_iccsmaskprofile
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 40(%rcx)
	xorl	%r12d, %r12d
	testq	%rax, %rax
	je	.LBB8_83
.LBB8_63:                               # %if.end.232
	movq	48(%rsp), %rbx          # 8-byte Reload
	movq	56(%rbx), %rcx
	testq	%rcx, %rcx
	jne	.LBB8_65
# BB#64:                                # %if.then.235
	movq	%rbx, %rdi
	callq	gsicc_initialize_iccsmask
	movq	40(%rbx), %rax
	movq	56(%rbx), %rcx
.LBB8_65:                               # %if.end.237
	movq	(%rcx), %rcx
	movq	280(%rcx), %r15
	movq	280(%rax), %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movq	160(%rsp), %rax         # 8-byte Reload
	movl	$0, 4(%rax)
	xorl	%ecx, %ecx
	movq	%r13, %r12
	jmp	.LBB8_66
.LBB8_57:
	movq	40(%rsp), %rcx          # 8-byte Reload
.LBB8_66:                               # %if.end.242
	movl	140(%rsp), %r13d        # 4-byte Reload
	movq	184(%rsp), %rbx         # 8-byte Reload
	orl	%ebx, %r13d
	movl	116(%rsp), %r9d         # 4-byte Reload
	movl	%r9d, %eax
	orl	%r13d, %eax
	je	.LBB8_71
# BB#67:                                # %if.then.247
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	200(%rax), %rax
	movq	%rax, 8(%rsp)
	movl	%ecx, (%rsp)
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	120(%rsp), %rdx         # 8-byte Reload
	movq	72(%rsp), %rcx          # 8-byte Reload
	movq	160(%rsp), %r8          # 8-byte Reload
	movl	%r9d, %r12d
	callq	gscms_get_link_proof_devlink
	movq	%rax, %r15
	testl	%ebx, %ebx
	je	.LBB8_69
# BB#68:                                # %if.then.250
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	336(%rax), %rdi
	addq	$8, %rdi
	callq	gp_monitor_leave
.LBB8_69:                               # %if.end.254
	cmpl	$0, 140(%rsp)           # 4-byte Folded Reload
	movq	128(%rsp), %rbp         # 8-byte Reload
	je	.LBB8_72
# BB#70:                                # %if.then.256
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	336(%rax), %rdi
	addq	$8, %rdi
	callq	gp_monitor_leave
	jmp	.LBB8_72
.LBB8_71:                               # %if.else.261
	movl	%r9d, %r12d
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	200(%rax), %r8
	movq	%r15, %rdi
	movq	120(%rsp), %rsi         # 8-byte Reload
	movq	160(%rsp), %rdx         # 8-byte Reload
	callq	gscms_get_link
	movq	%rax, %r15
	movq	128(%rsp), %rbp         # 8-byte Reload
.LBB8_72:                               # %if.end.264
	testl	%r12d, %r12d
	jne	.LBB8_74
# BB#73:                                # %if.then.266
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	336(%rax), %rdi
	addq	$8, %rdi
	callq	gp_monitor_leave
.LBB8_74:                               # %if.end.270
	movq	336(%rbp), %rdi
	addq	$8, %rdi
	callq	gp_monitor_leave
	testq	%r15, %r15
	je	.LBB8_81
# BB#75:                                # %if.then.276
	movl	16(%rbp), %ebp
	movq	200(%rsp), %r12
	movq	48(%r14), %r14
	movaps	208(%rsp), %xmm0
	movaps	%xmm0, 144(%rsp)        # 16-byte Spill
	movaps	224(%rsp), %xmm0
	movaps	%xmm0, 160(%rsp)        # 16-byte Spill
	addq	$8, %r14
	movq	%r14, %rdi
	callq	gp_monitor_enter
	movq	%r15, (%r12)
	leaq	164(%r12), %rsi
	leaq	168(%r12), %rdx
	movq	%r15, %rdi
	callq	gscms_get_link_dim
	movdqa	144(%rsp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, 40(%r12)
	movaps	160(%rsp), %xmm1        # 16-byte Reload
	movups	%xmm1, 56(%r12)
	movl	%ebx, 108(%r12)
	movl	140(%rsp), %eax         # 4-byte Reload
	movl	%eax, 112(%r12)
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %rax
	movd	%xmm1, %rcx
	cmpq	%rcx, %rax
	setne	%al
	testl	%r13d, %r13d
	setne	%cl
	orb	%al, %cl
	movzbl	%cl, %eax
	xorl	$1, %eax
	movl	%eax, 116(%r12)
	movl	$1, 120(%r12)
	movl	%ebp, 160(%r12)
	movq	64(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	je	.LBB8_78
# BB#76:                                # %if.then.276
	cmpl	$1, %ebp
	je	.LBB8_78
# BB#77:                                # %if.then.19.i
	movq	%r12, %rdi
	callq	gsicc_mcm_set_link
.LBB8_78:                               # %while.cond.preheader.i
	cmpl	$0, 104(%r12)
	jle	.LBB8_80
	.align	16, 0x90
.LBB8_79:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	96(%r12), %rdi
	addq	$8, %rdi
	callq	gp_semaphore_signal
	movl	104(%r12), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 104(%r12)
	cmpl	$1, %eax
	jg	.LBB8_79
.LBB8_80:                               # %gsicc_set_link_data.exit
	movq	%r14, %rdi
	callq	gp_monitor_leave
	jmp	.LBB8_83
.LBB8_81:                               # %if.else.293
	movq	200(%rsp), %rdi
.LBB8_82:                               # %cleanup
	movq	104(%rsp), %rsi         # 8-byte Reload
	callq	gsicc_remove_link
	decl	8(%r14)
	xorl	%r12d, %r12d
.LBB8_83:                               # %cleanup
	movq	%r12, %rax
	addq	$392, %rsp              # imm = 0x188
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gsicc_get_link_profile, .Lfunc_end8-gsicc_get_link_profile
	.cfi_endproc

	.globl	gsicc_alloc_link_entry
	.align	16, 0x90
	.type	gsicc_alloc_link_entry,@function
gsicc_alloc_link_entry:                 # @gsicc_alloc_link_entry
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp65:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp66:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp67:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp68:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp69:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp70:
	.cfi_def_cfa_offset 96
.Ltmp71:
	.cfi_offset %rbx, -56
.Ltmp72:
	.cfi_offset %r12, -48
.Ltmp73:
	.cfi_offset %r13, -40
.Ltmp74:
	.cfi_offset %r14, -32
.Ltmp75:
	.cfi_offset %r15, -24
.Ltmp76:
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movl	%edx, %ebp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	96(%rsp), %r13
	movq	40(%rbx), %r12
	movq	48(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	cmpl	$50, 8(%rbx)
	jl	.LBB9_8
	jmp	.LBB9_1
	.align	16, 0x90
.LBB9_6:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	48(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
.LBB9_1:                                # %while.cond.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_2 Depth 2
	movq	(%rbx), %rdi
	jmp	.LBB9_2
	.align	16, 0x90
.LBB9_4:                                # %if.end.i
                                        #   in Loop: Header=BB9_2 Depth=2
	movq	88(%rdi), %rdi
.LBB9_2:                                # %while.cond.1
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rdi, %rdi
	je	.LBB9_5
# BB#3:                                 # %while.body.i
                                        #   in Loop: Header=BB9_2 Depth=2
	cmpl	$0, 80(%rdi)
	jne	.LBB9_4
# BB#7:                                 # %while.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$1, 80(%rdi)
	movq	%r12, %rsi
	callq	gsicc_remove_link
	movl	8(%rbx), %eax
	decl	%eax
	movl	%eax, 8(%rbx)
	cmpl	$49, %eax
	jg	.LBB9_1
	jmp	.LBB9_8
	.align	16, 0x90
.LBB9_5:                                # %while.body.4
                                        #   in Loop: Header=BB9_1 Depth=1
	incl	64(%rbx)
	movq	48(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_leave
	movq	56(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_semaphore_wait
	movups	(%r13), %xmm0
	movups	16(%r13), %xmm1
	movups	%xmm1, 16(%rsp)
	movups	%xmm0, (%rsp)
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movl	%r15d, %edx
	callq	gsicc_findcachelink
	movq	%rax, %rcx
	movq	%rcx, (%r14)
	movl	$1, %eax
	testq	%rcx, %rcx
	je	.LBB9_6
	jmp	.LBB9_14
.LBB9_8:                                # %while.end.16
	movq	(%r12), %r12
	movq	(%r13), %r15
	movq	(%r12), %rdi
	movl	$st_icc_link, %esi
	movl	$.L.str.9, %edx
	callq	*72(%rdi)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB9_11
# BB#9:                                 # %if.end.i.26
	movq	(%r12), %rdi
	callq	gx_semaphore_alloc
	movq	%rax, 96(%rbp)
	testq	%rax, %rax
	je	.LBB9_10
# BB#12:                                # %if.then.18
	movl	$0, 124(%rbp)
	movq	$0, 128(%rbp)
	movq	$0, 136(%rbp)
	movq	$0, 144(%rbp)
	movq	$0, 88(%rbp)
	movq	$0, (%rbp)
	movq	$gscms_transform_color_buffer, 8(%rbp)
	movq	$gscms_transform_color, 16(%rbp)
	movq	$gscms_release_link, 24(%rbp)
	movq	%r15, 40(%rbp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 48(%rbp)
	movq	$0, 64(%rbp)
	movl	$1, 80(%rbp)
	movl	$0, 108(%rbp)
	movl	$0, 112(%rbp)
	movl	$0, 116(%rbp)
	movl	$0, 120(%rbp)
	movl	$0, 104(%rbp)
	movq	%rbp, (%r14)
	movq	%rbx, 72(%rbp)
	movq	(%rbx), %rax
	movq	(%r14), %rcx
	movq	%rax, 88(%rcx)
	movq	(%r14), %rax
	movq	%rax, (%rbx)
	incl	8(%rbx)
	jmp	.LBB9_13
.LBB9_10:                               # %if.then.6.i
	movq	(%r12), %rdi
	movl	$.L.str.10, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
.LBB9_11:                               # %gsicc_alloc_link.exit.thread
	movq	$0, (%r14)
.LBB9_13:                               # %if.end.23
	movq	48(%rbx), %rdi
	addq	$8, %rdi
	callq	gp_monitor_leave
	xorl	%eax, %eax
.LBB9_14:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gsicc_alloc_link_entry, .Lfunc_end9-gsicc_alloc_link_entry
	.cfi_endproc

	.align	16, 0x90
	.type	gsicc_remove_link,@function
gsicc_remove_link:                      # @gsicc_remove_link
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp77:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp78:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp79:
	.cfi_def_cfa_offset 32
.Ltmp80:
	.cfi_offset %rbx, -32
.Ltmp81:
	.cfi_offset %r14, -24
.Ltmp82:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	72(%rbx), %r15
	movq	48(%r15), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	movq	(%r15), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB10_6
	.align	16, 0x90
.LBB10_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rdx
	cmpq	%rbx, %rdx
	je	.LBB10_2
# BB#5:                                 # %if.end.8
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	88(%rdx), %rcx
	testq	%rcx, %rcx
	movq	%rdx, %rax
	jne	.LBB10_1
	jmp	.LBB10_6
.LBB10_2:                               # %if.then
	movq	88(%rbx), %rcx
	testq	%rax, %rax
	je	.LBB10_3
# BB#4:                                 # %if.else
	movq	%rcx, 88(%rax)
	jmp	.LBB10_6
.LBB10_3:                               # %if.then.4
	movq	%rcx, (%r15)
.LBB10_6:                               # %while.end
	movq	48(%r15), %rdi
	addq	$8, %rdi
	callq	gp_monitor_leave
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	96(%rbx), %rdi
	callq	gx_semaphore_free
	movq	$0, 96(%rbx)
	movq	(%r14), %rdi
	movq	24(%rdi), %rax
	movl	$.L.str.1, %edx
	movq	%rbx, %rsi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmpq	*%rax                   # TAILCALL
.Lfunc_end10:
	.size	gsicc_remove_link, .Lfunc_end10-gsicc_remove_link
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI11_0:
	.long	1199570688              # float 65535
.LCPI11_1:
	.long	1120403456              # float 100
.LCPI11_7:
	.long	0                       # float 0
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_2:
	.quad	4638707616191610880     # double 128
.LCPI11_3:
	.quad	4679239875398991872     # double 65535
.LCPI11_4:
	.quad	4643176031446892544     # double 255
.LCPI11_5:
	.quad	4607182418800017408     # double 1
.LCPI11_6:
	.quad	4674736138332667904     # double 32767
	.text
	.globl	gsicc_transform_named_color
	.align	16, 0x90
	.type	gsicc_transform_named_color,@function
gsicc_transform_named_color:            # @gsicc_transform_named_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp84:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp85:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp86:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp87:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp88:
	.cfi_def_cfa_offset 56
	subq	$680, %rsp              # imm = 0x2A8
.Ltmp89:
	.cfi_def_cfa_offset 736
.Ltmp90:
	.cfi_offset %rbx, -56
.Ltmp91:
	.cfi_offset %r12, -48
.Ltmp92:
	.cfi_offset %r13, -40
.Ltmp93:
	.cfi_offset %r14, -32
.Ltmp94:
	.cfi_offset %r15, -24
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%r9, %r12
	movq	%r8, %r15
	movq	%rcx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movq	336(%r15), %rcx
	movl	$-1, %eax
	testq	%rcx, %rcx
	je	.LBB11_64
# BB#1:                                 # %if.then
	movq	(%rcx), %r14
	testq	%r14, %r14
	je	.LBB11_2
# BB#3:                                 # %if.then.3
	cmpq	$0, 256(%r14)
	movq	280(%r14), %rax
	je	.LBB11_33
# BB#4:                                 # %land.lhs.true
	testq	%rax, %rax
	jne	.LBB11_35
# BB#5:                                 # %if.then.8
	movl	%edx, 84(%rsp)          # 4-byte Spill
	movq	8(%r15), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	$1, %esi
	movl	$16, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	testq	%rax, %rax
	je	.LBB11_6
# BB#7:                                 # %if.end
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	movq	%r15, %rbp
	movq	256(%r14), %r15
	movl	220(%r14), %ebx
	leaq	676(%rsp), %rdx
	movl	$.L.str.4, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	__isoc99_sscanf
	testl	%eax, %eax
	je	.LBB11_12
# BB#8:                                 # %if.end
	movl	676(%rsp), %esi
	testl	%esi, %esi
	je	.LBB11_12
# BB#9:                                 # %while.body.i.preheader
	incl	%ebx
	incq	%r15
	.align	16, 0x90
.LBB11_10:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%r15), %eax
	cmpl	$59, %eax
	je	.LBB11_13
# BB#11:                                # %if.end.i
                                        #   in Loop: Header=BB11_10 Depth=1
	decl	%ebx
	incq	%r15
	cmpl	$1, %ebx
	jg	.LBB11_10
.LBB11_12:                              # %if.then.18
	movq	8(%rbp), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	movq	72(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movl	$-1, %eax
	jmp	.LBB11_64
.LBB11_2:
	movl	$-1, %eax
	jmp	.LBB11_64
.LBB11_33:                              # %if.else.174
	testq	%rax, %rax
	je	.LBB11_34
.LBB11_35:                              # %if.then.178
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	movl	8(%rax), %ebx
	movl	%ebx, 676(%rsp)
.LBB11_36:                              # %if.end.183
	testl	%edx, %edx
	je	.LBB11_52
# BB#37:                                # %for.cond.188.preheader.lr.ph
	testl	%ebx, %ebx
	je	.LBB11_38
# BB#39:                                # %for.body.191.lr.ph.preheader
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	movq	%r15, 64(%rsp)          # 8-byte Spill
	movq	%r12, 40(%rsp)          # 8-byte Spill
	movq	%r13, 32(%rsp)          # 8-byte Spill
	movq	(%rax), %r14
	movq	%rax, 72(%rsp)          # 8-byte Spill
	addq	$8, %r14
	movq	%r14, 56(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
.LBB11_40:                              # %for.body.191.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_41 Depth 2
	movl	%edx, 84(%rsp)          # 4-byte Spill
	leaq	(%r15,%r15,2), %rax
	movq	88(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rax,8), %r12
	movl	8(%rcx,%rax,8), %ebp
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB11_41:                              # %for.body.191
                                        #   Parent Loop BB11_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	(%r14), %ebp
	jne	.LBB11_43
# BB#42:                                # %if.then.201
                                        #   in Loop: Header=BB11_41 Depth=2
	movq	-8(%r14), %rdi
	movq	(%r12), %rsi
	movq	%rbp, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB11_45
.LBB11_43:                              # %for.inc.219
                                        #   in Loop: Header=BB11_41 Depth=2
	incq	%r13
	addq	$24, %r14
	cmpl	%ebx, %r13d
	jb	.LBB11_41
	jmp	.LBB11_44
.LBB11_45:                              # %if.then.223
                                        #   in Loop: Header=BB11_40 Depth=1
	movl	%r13d, 96(%rsp,%r15,4)
	incq	%r15
	movl	84(%rsp), %edx          # 4-byte Reload
	cmpl	%edx, %r15d
	movq	56(%rsp), %r14          # 8-byte Reload
	jb	.LBB11_40
# BB#46:                                # %for.cond.231.preheader
	testl	%edx, %edx
	movq	32(%rsp), %r13          # 8-byte Reload
	movq	40(%rsp), %r12          # 8-byte Reload
	movq	64(%rsp), %r15          # 8-byte Reload
	movq	48(%rsp), %r10          # 8-byte Reload
	movq	72(%rsp), %rax          # 8-byte Reload
	je	.LBB11_52
# BB#47:                                # %for.cond.235.preheader.lr.ph
	movq	(%rax), %rax
	movl	%edx, %r9d
	xorl	%edx, %edx
	movsd	.LCPI11_5(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI11_3(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI11_6(%rip), %xmm2  # xmm2 = mem[0],zero
	movl	$2147516417, %r8d       # imm = 0x80008001
.LBB11_48:                              # %for.cond.235.preheader
                                        # =>This Inner Loop Header: Depth=1
	movslq	96(%rsp,%rdx,4), %rdi
	movss	(%r10,%rdx,4), %xmm4    # xmm4 = mem[0],zero,zero,zero
	xorps	%xmm5, %xmm5
	cvtss2sd	%xmm4, %xmm5
	movapd	%xmm0, %xmm3
	subsd	%xmm5, %xmm3
	leaq	(%rdi,%rdi,2), %rdi
	movzwl	12(%rax,%rdi,8), %ebp
	xorps	%xmm5, %xmm5
	cvtsi2ssl	%ebp, %xmm5
	mulss	%xmm4, %xmm5
	cvtss2sd	%xmm5, %xmm5
	movapd	%xmm3, %xmm6
	mulsd	%xmm1, %xmm6
	addsd	%xmm5, %xmm6
	xorps	%xmm5, %xmm5
	cvtsd2ss	%xmm6, %xmm5
	cvttss2si	%xmm5, %ebx
	movzwl	14(%rax,%rdi,8), %ebp
	xorps	%xmm5, %xmm5
	cvtsi2ssl	%ebp, %xmm5
	mulss	%xmm4, %xmm5
	cvtss2sd	%xmm5, %xmm5
	mulsd	%xmm2, %xmm3
	addsd	%xmm3, %xmm5
	cvtsd2ss	%xmm5, %xmm5
	cvttss2si	%xmm5, %ebp
	movzwl	16(%rax,%rdi,8), %edi
	xorps	%xmm5, %xmm5
	cvtsi2ssl	%edi, %xmm5
	mulss	%xmm4, %xmm5
	cvtss2sd	%xmm5, %xmm4
	addsd	%xmm3, %xmm4
	xorps	%xmm3, %xmm3
	cvtsd2ss	%xmm4, %xmm3
	cvttss2si	%xmm3, %edi
	testl	%edx, %edx
	je	.LBB11_49
# BB#50:                                # %if.else.282
                                        #   in Loop: Header=BB11_48 Depth=1
	movq	528(%rsp), %rsi
	movzwl	%si, %ecx
	movzwl	%bx, %ebx
	imull	%ecx, %ebx
	imulq	%r8, %rbx
	shrq	$47, %rbx
	movw	%bx, 528(%rsp)
	movl	%esi, %ecx
	shrl	$16, %ecx
	movzwl	%bp, %ebp
	addl	%ecx, %ebp
	shrl	%ebp
	movw	%bp, 530(%rsp)
	shrq	$32, %rsi
	movzwl	%si, %ecx
	movzwl	%di, %edi
	addl	%ecx, %edi
	shrl	%edi
	jmp	.LBB11_51
.LBB11_49:                              # %for.cond.271.preheader
                                        #   in Loop: Header=BB11_48 Depth=1
	movw	%bx, 528(%rsp)
	movw	%bp, 530(%rsp)
.LBB11_51:                              # %for.inc.310
                                        #   in Loop: Header=BB11_48 Depth=1
	movw	%di, 532(%rsp)
	incq	%rdx
	cmpl	%edx, %r9d
	jne	.LBB11_48
.LBB11_52:                              # %for.end.312
	movq	744(%rsp), %rbp
	movq	736(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB11_54
# BB#53:                                # %if.then.315
	movq	%rcx, 392(%rsp)
	jmp	.LBB11_55
.LBB11_44:
	movl	$-1, %eax
	jmp	.LBB11_64
.LBB11_38:
	movl	$-1, %eax
	jmp	.LBB11_64
.LBB11_34:
	movl	$-1, %eax
	jmp	.LBB11_64
.LBB11_54:                              # %if.else.316
	leaq	360(%rsp), %rsi
	movq	%r12, %rdi
	callq	*1680(%r12)
	movl	1112(%r12), %edi
	movq	360(%rsp), %rsi
	leaq	392(%rsp), %rdx
	leaq	368(%rsp), %rcx
	callq	gsicc_extract_profile
	movq	392(%rsp), %rcx
.LBB11_55:                              # %if.end.319
	movq	8(%r15), %r9
	movq	336(%r15), %rax
	movq	32(%rax), %rdx
	movl	$0, (%rsp)
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbp, %r8
	callq	gsicc_get_link_profile
	movq	%rax, %rbp
	cmpl	$0, 116(%rbp)
	je	.LBB11_57
# BB#56:
	leaq	528(%rsp), %rbx
	jmp	.LBB11_58
.LBB11_57:                              # %if.else.326
	leaq	528(%rsp), %rdx
	leaq	400(%rsp), %rbx
	movl	$2, %r8d
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rcx
	callq	*16(%rbp)
.LBB11_58:                              # %if.end.329
	movq	%rbp, %rdi
	callq	gsicc_release_link
	movq	392(%rsp), %rax
	movzbl	(%rax), %ebp
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.LBB11_64
# BB#59:                                # %for.body.334.lr.ph
	movl	%ebp, %edx
	andl	$15, %edx
	xorl	%eax, %eax
	cmpl	%edx, %ebp
	movl	$0, %ecx
	je	.LBB11_62
# BB#60:                                # %vector.body.preheader
	movq	%rbp, %rcx
	subq	%rdx, %rcx
	leaq	16(%rbx), %rdx
	leaq	16(%r13), %rsi
	movl	%ebp, %r8d
	andl	$15, %r8d
	movq	%rbp, %rdi
	subq	%r8, %rdi
	.align	16, 0x90
.LBB11_61:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movaps	-16(%rdx), %xmm0
	movaps	(%rdx), %xmm1
	movups	%xmm0, -16(%rsi)
	movups	%xmm1, (%rsi)
	addq	$32, %rdx
	addq	$32, %rsi
	addq	$-16, %rdi
	jne	.LBB11_61
.LBB11_62:                              # %middle.block
	cmpq	%rcx, %rbp
	je	.LBB11_64
	.align	16, 0x90
.LBB11_63:                              # %for.body.334
                                        # =>This Inner Loop Header: Depth=1
	movw	(%rbx,%rcx,2), %dx
	movw	%dx, (%r13,%rcx,2)
	incq	%rcx
	cmpq	%rbp, %rcx
	jl	.LBB11_63
	jmp	.LBB11_64
.LBB11_6:
	movl	$-25, %eax
.LBB11_64:                              # %cleanup
	addq	$680, %rsp              # imm = 0x2A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_13:                              # %if.end.34
	movq	8(%rbp), %rax
	movq	(%rax), %rax
	movq	200(%rax), %rdi
	movl	$24, %edx
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	testq	%rax, %rax
	je	.LBB11_14
# BB#15:                                # %if.end.52
	movq	%rbp, 64(%rsp)          # 8-byte Spill
	movq	%r12, 40(%rsp)          # 8-byte Spill
	movl	676(%rsp), %edx
	movq	72(%rsp), %rcx          # 8-byte Reload
	movl	%edx, 8(%rcx)
	movq	%rax, (%rcx)
	xorl	%ebx, %ebx
	cmpl	$0, 676(%rsp)
	movl	84(%rsp), %edx          # 4-byte Reload
	je	.LBB11_71
# BB#16:                                # %for.body.lr.ph
	xorl	%r12d, %r12d
.LBB11_17:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_21 Depth 2
	movq	%rax, %rbx
	testl	%r12d, %r12d
	je	.LBB11_18
# BB#19:                                # %if.else
                                        #   in Loop: Header=BB11_17 Depth=1
	xorl	%edi, %edi
	movl	$.L.str.5, %esi
	jmp	.LBB11_20
.LBB11_18:                              # %if.then.55
                                        #   in Loop: Header=BB11_17 Depth=1
	movl	$.L.str.5, %esi
	movq	%r15, %rdi
.LBB11_20:                              # %while.cond.outer
                                        #   in Loop: Header=BB11_17 Depth=1
	callq	strtok
	movq	%rax, %rbp
	jmp	.LBB11_21
	.align	16, 0x90
.LBB11_23:                              # %if.then.65
                                        #   in Loop: Header=BB11_21 Depth=2
	incq	%rbp
.LBB11_21:                              # %while.cond.outer
                                        #   Parent Loop BB11_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rbp), %eax
	cmpl	$13, %eax
	je	.LBB11_23
# BB#22:                                # %while.cond.outer
                                        #   in Loop: Header=BB11_21 Depth=2
	movzbl	%al, %eax
	cmpl	$10, %eax
	je	.LBB11_23
# BB#24:                                # %while.end
                                        #   in Loop: Header=BB11_17 Depth=1
	movq	%rbp, %rdi
	callq	strlen
	movq	%r12, 56(%rsp)          # 8-byte Spill
	leaq	(%r12,%r12,2), %r12
	movl	%eax, 8(%rbx,%r12,8)
	movq	64(%rsp), %rcx          # 8-byte Reload
	movq	8(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	200(%rcx), %rdi
	leal	1(%rax), %edx
	movl	$1, %esi
	movl	$.L.str.3, %ecx
	callq	*88(%rdi)
	movq	%rax, (%rbx,%r12,8)
	testq	%rax, %rax
	je	.LBB11_25
# BB#26:                                # %if.end.87
                                        #   in Loop: Header=BB11_17 Depth=1
	leaq	8(%rbx,%r12,8), %rcx
	movl	(%rcx), %edx
	incl	%edx
	movq	%rax, %rdi
	movq	%rbp, %rsi
	callq	strncpy
	xorl	%edi, %edi
	movl	$.L.str.5, %esi
	callq	strtok
	movq	%rax, %rcx
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdi
	leaq	664(%rsp), %rdx
	callq	__isoc99_sscanf
	xorl	%edi, %edi
	movl	$.L.str.5, %esi
	callq	strtok
	movq	%rax, %rcx
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdi
	leaq	668(%rsp), %rdx
	callq	__isoc99_sscanf
	xorl	%edi, %edi
	movl	$.L.str.5, %esi
	callq	strtok
	movq	%rax, %rcx
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdi
	leaq	672(%rsp), %rdx
	callq	__isoc99_sscanf
	movss	664(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI11_0(%rip), %xmm3  # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm2
	divss	.LCPI11_1(%rip), %xmm2
	movss	%xmm2, 664(%rsp)
	movss	668(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI11_2(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm4
	addsd	%xmm4, %xmm0
	movsd	.LCPI11_3(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm5
	mulsd	%xmm5, %xmm0
	movsd	.LCPI11_4(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm6
	divsd	%xmm6, %xmm0
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm0, %xmm1
	movss	%xmm1, 668(%rsp)
	movss	672(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm4, %xmm0
	mulsd	%xmm5, %xmm0
	divsd	%xmm6, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 672(%rsp)
	ucomiss	%xmm3, %xmm2
	jbe	.LBB11_28
# BB#27:                                # %if.end.134.thread
                                        #   in Loop: Header=BB11_17 Depth=1
	movl	$1199570688, 664(%rsp)  # imm = 0x477FFF00
	movaps	%xmm3, %xmm2
	movl	84(%rsp), %edx          # 4-byte Reload
	jmp	.LBB11_30
.LBB11_28:                              # %if.end.134
                                        #   in Loop: Header=BB11_17 Depth=1
	xorpd	%xmm4, %xmm4
	ucomiss	%xmm2, %xmm4
	movl	84(%rsp), %edx          # 4-byte Reload
	jbe	.LBB11_30
# BB#29:                                # %if.then.139
                                        #   in Loop: Header=BB11_17 Depth=1
	movl	$0, 664(%rsp)
	xorps	%xmm2, %xmm2
.LBB11_30:                              # %if.end.142
                                        #   in Loop: Header=BB11_17 Depth=1
	cvttss2si	%xmm2, %ecx
	movq	%rbx, %rax
	movw	%cx, 12(%rax,%r12,8)
	ucomiss	.LCPI11_0(%rip), %xmm1
	jbe	.LBB11_31
# BB#65:                                # %if.end.134.thread.1
                                        #   in Loop: Header=BB11_17 Depth=1
	movl	$1199570688, 668(%rsp)  # imm = 0x477FFF00
	movaps	%xmm3, %xmm1
	jmp	.LBB11_66
.LBB11_31:                              # %if.end.134.1
                                        #   in Loop: Header=BB11_17 Depth=1
	xorps	%xmm2, %xmm2
	ucomiss	%xmm1, %xmm2
	jbe	.LBB11_66
# BB#32:                                # %if.then.139.1
                                        #   in Loop: Header=BB11_17 Depth=1
	movl	$0, 668(%rsp)
	xorps	%xmm1, %xmm1
.LBB11_66:                              # %if.end.142.1
                                        #   in Loop: Header=BB11_17 Depth=1
	cvttss2si	%xmm1, %ecx
	movw	%cx, 14(%rax,%r12,8)
	ucomiss	.LCPI11_0(%rip), %xmm0
	jbe	.LBB11_67
# BB#69:                                # %if.end.134.thread.2
                                        #   in Loop: Header=BB11_17 Depth=1
	movl	$1199570688, 672(%rsp)  # imm = 0x477FFF00
	movaps	%xmm3, %xmm0
	jmp	.LBB11_70
.LBB11_67:                              # %if.end.134.2
                                        #   in Loop: Header=BB11_17 Depth=1
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB11_70
# BB#68:                                # %if.then.139.2
                                        #   in Loop: Header=BB11_17 Depth=1
	movl	$0, 672(%rsp)
	xorps	%xmm0, %xmm0
.LBB11_70:                              # %if.end.142.2
                                        #   in Loop: Header=BB11_17 Depth=1
	cvttss2si	%xmm0, %ecx
	movw	%cx, 16(%rax,%r12,8)
	movq	56(%rsp), %r12          # 8-byte Reload
	incq	%r12
	movl	676(%rsp), %ebx
	cmpl	%ebx, %r12d
	jb	.LBB11_17
.LBB11_71:                              # %for.end.172
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	%rax, 280(%r14)
	movq	40(%rsp), %r12          # 8-byte Reload
	movq	64(%rsp), %r15          # 8-byte Reload
	movq	48(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB11_36
.LBB11_14:                              # %if.then.45
	movq	8(%rbp), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.3, %edx
	movq	72(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movl	$-25, %eax
	jmp	.LBB11_64
.LBB11_25:
	movl	$-25, %eax
	jmp	.LBB11_64
.Lfunc_end11:
	.size	gsicc_transform_named_color, .Lfunc_end11-gsicc_transform_named_color
	.cfi_endproc

	.globl	gsicc_release_link
	.align	16, 0x90
	.type	gsicc_release_link,@function
gsicc_release_link:                     # @gsicc_release_link
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp96:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp97:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp98:
	.cfi_def_cfa_offset 32
.Ltmp99:
	.cfi_offset %rbx, -24
.Ltmp100:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	72(%rbx), %r14
	movq	48(%r14), %rdi
	addq	$8, %rdi
	callq	gp_monitor_enter
	decl	80(%rbx)
	jne	.LBB12_15
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movq	%r14, %rdx
	.align	16, 0x90
.LBB12_2:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	movq	(%rdx), %rax
	leaq	88(%rax), %rdx
	cmpq	%rbx, %rax
	jne	.LBB12_2
# BB#3:                                 # %while.end
	movq	88(%rbx), %rax
	testq	%rcx, %rcx
	je	.LBB12_4
# BB#5:                                 # %if.else
	movq	%rax, 88(%rcx)
	movq	(%r14), %rax
	jmp	.LBB12_6
.LBB12_4:                               # %if.then.4
	movq	%rax, (%r14)
.LBB12_6:                               # %while.cond.10.preheader
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB12_12
# BB#7:
	xorl	%edx, %edx
	.align	16, 0x90
.LBB12_8:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rsi
	cmpl	$0, 80(%rsi)
	jle	.LBB12_11
# BB#9:                                 # %while.body.14
                                        #   in Loop: Header=BB12_8 Depth=1
	movq	88(%rsi), %rax
	testq	%rax, %rax
	movq	%rsi, %rcx
	jne	.LBB12_8
	jmp	.LBB12_10
.LBB12_11:                              # %while.end.16
	testq	%rcx, %rcx
	movq	%rsi, %rdx
	je	.LBB12_12
.LBB12_10:                              # %if.else.23
	movq	%rbx, 88(%rcx)
	movq	%rdx, 88(%rbx)
	jmp	.LBB12_13
.LBB12_12:                              # %if.then.18
	movq	%rbx, (%r14)
.LBB12_13:                              # %while.cond.27.preheader
	movq	72(%rbx), %rax
	cmpl	$0, 64(%rax)
	jle	.LBB12_15
	.align	16, 0x90
.LBB12_14:                              # %while.body.30
                                        # =>This Inner Loop Header: Depth=1
	movq	56(%rax), %rdi
	addq	$8, %rdi
	callq	gp_semaphore_signal
	movq	72(%rbx), %rax
	movl	64(%rax), %ecx
	leal	-1(%rcx), %edx
	movl	%edx, 64(%rax)
	cmpl	$1, %ecx
	jg	.LBB12_14
.LBB12_15:                              # %if.end.38
	movq	48(%r14), %rdi
	addq	$8, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	gp_monitor_leave        # TAILCALL
.Lfunc_end12:
	.size	gsicc_release_link, .Lfunc_end12-gsicc_release_link
	.cfi_endproc

	.globl	gsicc_init_buffer
	.align	16, 0x90
	.type	gsicc_init_buffer,@function
gsicc_init_buffer:                      # @gsicc_init_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp101:
	.cfi_def_cfa_offset 16
.Ltmp102:
	.cfi_offset %rbx, -16
	movl	40(%rsp), %r10d
	movl	32(%rsp), %r11d
	movl	24(%rsp), %eax
	movl	16(%rsp), %ebx
	movb	%sil, (%rdi)
	movb	%dl, 1(%rdi)
	movl	%ecx, 4(%rdi)
	movl	%r8d, 8(%rdi)
	movl	%r9d, 16(%rdi)
	movl	%ebx, 20(%rdi)
	movl	%eax, 24(%rdi)
	movl	%r11d, 28(%rdi)
	movl	%r10d, 32(%rdi)
	movl	$1, 12(%rdi)
	popq	%rbx
	retq
.Lfunc_end13:
	.size	gsicc_init_buffer, .Lfunc_end13-gsicc_init_buffer
	.cfi_endproc

	.globl	gsicc_get_device_profile_comps
	.align	16, 0x90
	.type	gsicc_get_device_profile_comps,@function
gsicc_get_device_profile_comps:         # @gsicc_get_device_profile_comps
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rax
	testq	%rax, %rax
	je	.LBB14_1
# BB#2:                                 # %if.else
	incq	%rax
	movzbl	(%rax), %eax
	retq
.LBB14_1:                               # %if.then
	movq	(%rdi), %rax
	movzbl	(%rax), %eax
	retq
.Lfunc_end14:
	.size	gsicc_get_device_profile_comps, .Lfunc_end14-gsicc_get_device_profile_comps
	.cfi_endproc

	.type	st_icc_linkcache,@object # @st_icc_linkcache
	.section	.rodata,"a",@progbits
	.align	8
st_icc_linkcache:
	.long	72                      # 0x48
	.zero	4
	.quad	.L.str.7
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	icc_linkcache_finalize
	.quad	icc_linkcache_reloc_ptrs
	.size	st_icc_linkcache, 64

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gsicc_cache_new"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gsicc_link_free"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gray_to_k.icc"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gsicc_transform_named_color"
	.size	.L.str.3, 28

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%d"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	",;"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%f"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gsiccmanage_linkcache"
	.size	.L.str.7, 22

	.type	icc_linkcache_reloc_ptrs,@object # @icc_linkcache_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
icc_linkcache_reloc_ptrs:
	.short	3                       # 0x3
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	icc_linkcache_enum_ptrs
	.size	icc_linkcache_reloc_ptrs, 24

	.type	icc_linkcache_enum_ptrs,@object # @icc_linkcache_enum_ptrs
	.align	2
icc_linkcache_enum_ptrs:
	.zero	4
	.short	0                       # 0x0
	.short	48                      # 0x30
	.short	0                       # 0x0
	.short	56                      # 0x38
	.size	icc_linkcache_enum_ptrs, 12

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"rc_gsicc_link_cache_free"
	.size	.L.str.8, 25

	.type	st_icc_link,@object     # @st_icc_link
	.section	.rodata,"a",@progbits
	.align	8
st_icc_link:
	.long	176                     # 0xb0
	.zero	4
	.quad	.L.str.11
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	icc_link_finalize
	.quad	icc_link_reloc_ptrs
	.size	st_icc_link, 64

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"gsicc_alloc_link"
	.size	.L.str.9, 17

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gsicc_alloc_link(wait)"
	.size	.L.str.10, 23

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gsiccmanage_link"
	.size	.L.str.11, 17

	.type	icc_link_reloc_ptrs,@object # @icc_link_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
icc_link_reloc_ptrs:
	.short	3                       # 0x3
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	icc_link_enum_ptrs
	.size	icc_link_reloc_ptrs, 24

	.type	icc_link_enum_ptrs,@object # @icc_link_enum_ptrs
	.align	2
icc_link_enum_ptrs:
	.short	0                       # 0x0
	.short	72                      # 0x48
	.short	0                       # 0x0
	.short	88                      # 0x58
	.short	0                       # 0x0
	.short	96                      # 0x60
	.size	icc_link_enum_ptrs, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
