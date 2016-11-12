	.text
	.file	"pixel-processor.bc"
	.globl	pixel_processor_init
	.align	16, 0x90
	.type	pixel_processor_init,@function
pixel_processor_init:                   # @pixel_processor_init
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	pixel_processor_set_num_threads
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pixel_processor_init, .Lfunc_end0-pixel_processor_init
	.cfi_endproc

	.globl	pixel_processor_set_num_threads
	.align	16, 0x90
	.type	pixel_processor_set_num_threads,@function
pixel_processor_set_num_threads:        # @pixel_processor_set_num_threads
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
	movl	%edi, -4(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -4(%rbp)
	jle	.LBB1_4
# BB#2:                                 # %land.lhs.true
	cmpl	$16, -4(%rbp)
	jg	.LBB1_4
# BB#3:                                 # %if.then
	jmp	.LBB1_5
.LBB1_4:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.pixel_processor_set_num_threads, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_16
.LBB1_5:                                # %if.end
	jmp	.LBB1_6
.LBB1_6:                                # %do.end
	cmpl	$2, -4(%rbp)
	jge	.LBB1_10
# BB#7:                                 # %if.then.3
	cmpq	$0, pool
	je	.LBB1_9
# BB#8:                                 # %if.then.4
	movl	$1, %eax
	movq	pool, %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	g_thread_pool_free
	movq	$0, pool
	movq	pool_cond, %rdi
	callq	g_cond_free
	movq	$0, pool_cond
	movq	pool_mutex, %rdi
	callq	g_mutex_free
	movq	$0, pool_mutex
.LBB1_9:                                # %if.end.5
	jmp	.LBB1_16
.LBB1_10:                               # %if.else.6
	movq	$0, -16(%rbp)
	cmpq	$0, pool
	je	.LBB1_12
# BB#11:                                # %if.then.8
	leaq	-16(%rbp), %rdx
	movq	pool, %rdi
	movl	-4(%rbp), %esi
	callq	g_thread_pool_set_max_threads
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jmp	.LBB1_13
.LBB1_12:                               # %if.else.9
	movabsq	$do_parallel_regions, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %ecx
	leaq	-16(%rbp), %r8
	movl	-4(%rbp), %edx
	movq	%rax, %rdi
	callq	g_thread_pool_new
	movq	%rax, pool
	callq	g_mutex_new
	movq	%rax, pool_mutex
	callq	g_cond_new
	movq	%rax, pool_cond
.LBB1_13:                               # %if.end.13
	cmpq	$0, -16(%rbp)
	je	.LBB1_15
# BB#14:                                # %if.then.15
	movabsq	$.L.str.2, %rdi
	movl	-4(%rbp), %esi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movb	$0, %al
	callq	g_warning
	leaq	-16(%rbp), %rdi
	callq	g_clear_error
.LBB1_15:                               # %if.end.16
	jmp	.LBB1_16
.LBB1_16:                               # %if.end.17
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	pixel_processor_set_num_threads, .Lfunc_end1-pixel_processor_set_num_threads
	.cfi_endproc

	.align	16, 0x90
	.type	do_parallel_regions,@function
do_parallel_regions:                    # @do_parallel_regions
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
	subq	$496, %rsp              # imm = 0x1F0
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	g_mutex_lock
	movq	-8(%rbp), %rdi
	cmpl	$0, 28(%rdi)
	jne	.LBB2_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB2_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	pixel_regions_process
	movq	-8(%rbp), %rdi
	movq	%rax, 32(%rdi)
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movq	-8(%rbp), %rax
	movl	$0, 28(%rax)
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
                                        #     Child Loop BB2_51 Depth 2
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB2_61
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	16(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	imull	20(%rax), %ecx
	movl	%ecx, -280(%rbp)
	movl	$0, -276(%rbp)
.LBB2_7:                                # %for.cond
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-276(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	40(%rcx), %eax
	jge	.LBB2_14
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB2_7 Depth=2
	movslq	-276(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	$0, 48(%rcx,%rax,8)
	je	.LBB2_12
# BB#9:                                 # %if.then.10
                                        #   in Loop: Header=BB2_7 Depth=2
	leaq	-272(%rbp), %rax
	movl	$64, %ecx
	movl	%ecx, %edx
	movslq	-276(%rbp), %rsi
	shlq	$6, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movslq	-276(%rbp), %rsi
	movq	-8(%rbp), %r8
	movq	48(%r8,%rsi,8), %rsi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	memcpy
	movslq	-276(%rbp), %rax
	shlq	$6, %rax
	movq	-288(%rbp), %rdx        # 8-byte Reload
	addq	%rax, %rdx
	cmpq	$0, 8(%rdx)
	je	.LBB2_11
# BB#10:                                # %if.then.19
                                        #   in Loop: Header=BB2_7 Depth=2
	leaq	-272(%rbp), %rax
	movslq	-276(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movq	16(%rax), %rdi
	callq	tile_lock
.LBB2_11:                               # %if.end.22
                                        #   in Loop: Header=BB2_7 Depth=2
	jmp	.LBB2_12
.LBB2_12:                               # %if.end.23
                                        #   in Loop: Header=BB2_7 Depth=2
	jmp	.LBB2_13
.LBB2_13:                               # %for.inc
                                        #   in Loop: Header=BB2_7 Depth=2
	movl	-276(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -276(%rbp)
	jmp	.LBB2_7
.LBB2_14:                               # %for.end
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_mutex_unlock
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -296(%rbp)        # 8-byte Spill
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	ja	.LBB2_49
# BB#65:                                # %for.end
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	.LJTI2_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB2_15:                               # %sw.bb
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-8(%rbp), %rcx
	cmpq	$0, 48(%rcx)
	movq	%rax, -312(%rbp)        # 8-byte Spill
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	je	.LBB2_17
# BB#16:                                # %cond.true
                                        #   in Loop: Header=BB2_5 Depth=1
	leaq	-272(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jmp	.LBB2_18
.LBB2_17:                               # %cond.false
                                        #   in Loop: Header=BB2_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	jmp	.LBB2_18
.LBB2_18:                               # %cond.end
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	-328(%rbp), %rax        # 8-byte Reload
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	-312(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	jmp	.LBB2_50
.LBB2_19:                               # %sw.bb.30
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-8(%rbp), %rcx
	cmpq	$0, 48(%rcx)
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	je	.LBB2_21
# BB#20:                                # %cond.true.36
                                        #   in Loop: Header=BB2_5 Depth=1
	leaq	-272(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB2_22
.LBB2_21:                               # %cond.false.38
                                        #   in Loop: Header=BB2_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	jmp	.LBB2_22
.LBB2_22:                               # %cond.end.39
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx
	cmpq	$0, 56(%rcx)
	movq	%rax, -360(%rbp)        # 8-byte Spill
	je	.LBB2_24
# BB#23:                                # %cond.true.44
                                        #   in Loop: Header=BB2_5 Depth=1
	leaq	-272(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB2_25
.LBB2_24:                               # %cond.false.46
                                        #   in Loop: Header=BB2_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	jmp	.LBB2_25
.LBB2_25:                               # %cond.end.47
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	-360(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movq	-336(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	jmp	.LBB2_50
.LBB2_26:                               # %sw.bb.49
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-8(%rbp), %rcx
	cmpq	$0, 48(%rcx)
	movq	%rax, -376(%rbp)        # 8-byte Spill
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	je	.LBB2_28
# BB#27:                                # %cond.true.55
                                        #   in Loop: Header=BB2_5 Depth=1
	leaq	-272(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	jmp	.LBB2_29
.LBB2_28:                               # %cond.false.57
                                        #   in Loop: Header=BB2_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	jmp	.LBB2_29
.LBB2_29:                               # %cond.end.58
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	-392(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx
	cmpq	$0, 56(%rcx)
	movq	%rax, -400(%rbp)        # 8-byte Spill
	je	.LBB2_31
# BB#30:                                # %cond.true.63
                                        #   in Loop: Header=BB2_5 Depth=1
	leaq	-272(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jmp	.LBB2_32
.LBB2_31:                               # %cond.false.65
                                        #   in Loop: Header=BB2_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	jmp	.LBB2_32
.LBB2_32:                               # %cond.end.66
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	-408(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx
	cmpq	$0, 64(%rcx)
	movq	%rax, -416(%rbp)        # 8-byte Spill
	je	.LBB2_34
# BB#33:                                # %cond.true.71
                                        #   in Loop: Header=BB2_5 Depth=1
	leaq	-272(%rbp), %rax
	addq	$128, %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	jmp	.LBB2_35
.LBB2_34:                               # %cond.false.73
                                        #   in Loop: Header=BB2_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	jmp	.LBB2_35
.LBB2_35:                               # %cond.end.74
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	-424(%rbp), %rax        # 8-byte Reload
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	-400(%rbp), %rsi        # 8-byte Reload
	movq	-416(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movq	-376(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	jmp	.LBB2_50
.LBB2_36:                               # %sw.bb.76
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-8(%rbp), %rcx
	cmpq	$0, 48(%rcx)
	movq	%rax, -432(%rbp)        # 8-byte Spill
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	je	.LBB2_38
# BB#37:                                # %cond.true.82
                                        #   in Loop: Header=BB2_5 Depth=1
	leaq	-272(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jmp	.LBB2_39
.LBB2_38:                               # %cond.false.84
                                        #   in Loop: Header=BB2_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	jmp	.LBB2_39
.LBB2_39:                               # %cond.end.85
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	-448(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx
	cmpq	$0, 56(%rcx)
	movq	%rax, -456(%rbp)        # 8-byte Spill
	je	.LBB2_41
# BB#40:                                # %cond.true.90
                                        #   in Loop: Header=BB2_5 Depth=1
	leaq	-272(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	jmp	.LBB2_42
.LBB2_41:                               # %cond.false.92
                                        #   in Loop: Header=BB2_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	jmp	.LBB2_42
.LBB2_42:                               # %cond.end.93
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	-464(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx
	cmpq	$0, 64(%rcx)
	movq	%rax, -472(%rbp)        # 8-byte Spill
	je	.LBB2_44
# BB#43:                                # %cond.true.98
                                        #   in Loop: Header=BB2_5 Depth=1
	leaq	-272(%rbp), %rax
	addq	$128, %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jmp	.LBB2_45
.LBB2_44:                               # %cond.false.100
                                        #   in Loop: Header=BB2_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	jmp	.LBB2_45
.LBB2_45:                               # %cond.end.101
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	-480(%rbp), %rax        # 8-byte Reload
	movq	-8(%rbp), %rcx
	cmpq	$0, 72(%rcx)
	movq	%rax, -488(%rbp)        # 8-byte Spill
	je	.LBB2_47
# BB#46:                                # %cond.true.106
                                        #   in Loop: Header=BB2_5 Depth=1
	leaq	-272(%rbp), %rax
	addq	$192, %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jmp	.LBB2_48
.LBB2_47:                               # %cond.false.108
                                        #   in Loop: Header=BB2_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	jmp	.LBB2_48
.LBB2_48:                               # %cond.end.109
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	-496(%rbp), %rax        # 8-byte Reload
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	-456(%rbp), %rsi        # 8-byte Reload
	movq	-472(%rbp), %rdx        # 8-byte Reload
	movq	-488(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movq	-432(%rbp), %rax        # 8-byte Reload
	callq	*%rax
	jmp	.LBB2_50
.LBB2_49:                               # %sw.default
                                        #   in Loop: Header=BB2_5 Depth=1
	movabsq	$.L.str.3, %rdi
	movq	-8(%rbp), %rax
	movl	40(%rax), %esi
	movb	$0, %al
	callq	g_warning
.LBB2_50:                               # %sw.epilog
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_mutex_lock
	movl	$0, -276(%rbp)
.LBB2_51:                               # %for.cond.113
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-276(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	40(%rcx), %eax
	jge	.LBB2_58
# BB#52:                                # %for.body.116
                                        #   in Loop: Header=BB2_51 Depth=2
	movslq	-276(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	$0, 48(%rcx,%rax,8)
	je	.LBB2_56
# BB#53:                                # %if.then.121
                                        #   in Loop: Header=BB2_51 Depth=2
	leaq	-272(%rbp), %rax
	movslq	-276(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	cmpq	$0, 8(%rax)
	je	.LBB2_55
# BB#54:                                # %if.then.126
                                        #   in Loop: Header=BB2_51 Depth=2
	leaq	-272(%rbp), %rax
	movslq	-276(%rbp), %rcx
	shlq	$6, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	16(%rdx), %rdi
	movslq	-276(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movl	56(%rax), %esi
	callq	tile_release
.LBB2_55:                               # %if.end.132
                                        #   in Loop: Header=BB2_51 Depth=2
	jmp	.LBB2_56
.LBB2_56:                               # %if.end.133
                                        #   in Loop: Header=BB2_51 Depth=2
	jmp	.LBB2_57
.LBB2_57:                               # %for.inc.134
                                        #   in Loop: Header=BB2_51 Depth=2
	movl	-276(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -276(%rbp)
	jmp	.LBB2_51
.LBB2_58:                               # %for.end.136
                                        #   in Loop: Header=BB2_5 Depth=1
	movl	-280(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	addq	80(%rdx), %rcx
	movq	%rcx, 80(%rdx)
	movq	-8(%rbp), %rcx
	cmpq	$0, 32(%rcx)
	je	.LBB2_60
# BB#59:                                # %if.then.139
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	pixel_regions_process
	movq	-8(%rbp), %rdi
	movq	%rax, 32(%rdi)
.LBB2_60:                               # %if.end.143
                                        #   in Loop: Header=BB2_5 Depth=1
	jmp	.LBB2_5
.LBB2_61:                               # %while.end
	movq	-8(%rbp), %rax
	movl	24(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 24(%rax)
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB2_63
# BB#62:                                # %if.then.147
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_mutex_unlock
	movq	pool_mutex, %rdi
	callq	g_mutex_lock
	movq	pool_cond, %rdi
	callq	g_cond_signal
	movq	pool_mutex, %rdi
	callq	g_mutex_unlock
	jmp	.LBB2_64
.LBB2_63:                               # %if.else.149
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_mutex_unlock
.LBB2_64:                               # %if.end.151
	addq	$496, %rsp              # imm = 0x1F0
	popq	%rbp
	retq
.Lfunc_end2:
	.size	do_parallel_regions, .Lfunc_end2-do_parallel_regions
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_15
	.quad	.LBB2_19
	.quad	.LBB2_26
	.quad	.LBB2_36

	.text
	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB3_2
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
.LBB3_2:                                # %entry
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
	movl	$.L.str, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end3:
	.size	g_warning, .Lfunc_end3-g_warning
	.cfi_endproc

	.globl	pixel_processor_exit
	.align	16, 0x90
	.type	pixel_processor_exit,@function
pixel_processor_exit:                   # @pixel_processor_exit
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
	movl	$1, %edi
	callq	pixel_processor_set_num_threads
	popq	%rbp
	retq
.Lfunc_end4:
	.size	pixel_processor_exit, .Lfunc_end4-pixel_processor_exit
	.cfi_endproc

	.globl	pixel_regions_process_parallel
	.align	16, 0x90
	.type	pixel_regions_process_parallel,@function
pixel_regions_process_parallel:         # @pixel_regions_process_parallel
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
	subq	$400, %rsp              # imm = 0x190
	testb	%al, %al
	movaps	%xmm7, -240(%rbp)       # 16-byte Spill
	movaps	%xmm6, -256(%rbp)       # 16-byte Spill
	movaps	%xmm5, -272(%rbp)       # 16-byte Spill
	movaps	%xmm4, -288(%rbp)       # 16-byte Spill
	movaps	%xmm3, -304(%rbp)       # 16-byte Spill
	movaps	%xmm2, -320(%rbp)       # 16-byte Spill
	movaps	%xmm1, -336(%rbp)       # 16-byte Spill
	movaps	%xmm0, -352(%rbp)       # 16-byte Spill
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%r9, -368(%rbp)         # 8-byte Spill
	movq	%r8, -376(%rbp)         # 8-byte Spill
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	movl	%edx, -388(%rbp)        # 4-byte Spill
	movq	%rsi, -400(%rbp)        # 8-byte Spill
	je	.LBB5_2
# BB#1:                                 # %entry
	movaps	-352(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -176(%rbp)
	movaps	-336(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -160(%rbp)
	movaps	-320(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -144(%rbp)
	movaps	-304(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -128(%rbp)
	movaps	-288(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -112(%rbp)
	movaps	-272(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -96(%rbp)
	movaps	-256(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -80(%rbp)
	movaps	-240(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -64(%rbp)
.LBB5_2:                                # %entry
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, -184(%rbp)
	movq	-376(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -192(%rbp)
	movq	-384(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -200(%rbp)
	movl	-388(%rbp), %esi        # 4-byte Reload
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	-360(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	leaq	-224(%rbp), %rdi
	movq	%rdi, -32(%rbp)
	leaq	16(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	movl	$48, -44(%rbp)
	movl	$24, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %r10d
	leaq	-48(%rbp), %r9
	movq	%r10, %rdx
	movq	%r10, %rcx
	callq	pixel_regions_process_parallel_valist
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end5:
	.size	pixel_regions_process_parallel, .Lfunc_end5-pixel_regions_process_parallel
	.cfi_endproc

	.align	16, 0x90
	.type	pixel_regions_process_parallel_valist,@function
pixel_regions_process_parallel_valist:  # @pixel_regions_process_parallel_valist
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
	pushq	%rbx
	subq	$184, %rsp
.Ltmp21:
	.cfi_offset %rbx, -24
	xorl	%eax, %eax
	movl	$88, %r10d
	movl	%r10d, %r11d
	leaq	-144(%rbp), %rbx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	%r9, -56(%rbp)
	movq	%rbx, %rdi
	movl	%eax, %esi
	movq	%r11, %rdx
	callq	memset
	movl	$0, -148(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-148(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB6_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	ja	.LBB6_4
# BB#3:                                 # %vaarg.in_reg
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-164(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-160(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB6_5
.LBB6_4:                                # %vaarg.in_mem
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -176(%rbp)        # 8-byte Spill
.LBB6_5:                                # %vaarg.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movslq	-148(%rbp), %rcx
	movq	%rax, -96(%rbp,%rcx,8)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB6_1
.LBB6_7:                                # %for.end
	movl	-44(%rbp), %eax
	decl	%eax
	movl	%eax, %ecx
	subl	$3, %eax
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movl	%eax, -188(%rbp)        # 4-byte Spill
	ja	.LBB6_12
# BB#17:                                # %for.end
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_8:                                # %sw.bb
	movl	-44(%rbp), %edi
	movq	-96(%rbp), %rsi
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -112(%rbp)
	jmp	.LBB6_13
.LBB6_9:                                # %sw.bb.3
	movl	-44(%rbp), %edi
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rdx
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -112(%rbp)
	jmp	.LBB6_13
.LBB6_10:                               # %sw.bb.10
	movl	-44(%rbp), %edi
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -112(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %sw.bb.19
	movl	-44(%rbp), %edi
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %r8
	movb	$0, %al
	callq	pixel_regions_register
	movq	%rax, -112(%rbp)
	jmp	.LBB6_13
.LBB6_12:                               # %sw.default
	movabsq	$.L.str.4, %rdi
	movl	-104(%rbp), %esi
	movb	$0, %al
	callq	g_warning
.LBB6_13:                               # %sw.epilog
	cmpq	$0, -112(%rbp)
	jne	.LBB6_15
# BB#14:                                # %if.then
	jmp	.LBB6_16
.LBB6_15:                               # %if.end
	leaq	-144(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)
	movl	-44(%rbp), %ecx
	movl	%ecx, -104(%rbp)
	movl	$0, -120(%rbp)
	movq	$0, -64(%rbp)
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	pixel_regions_do_parallel
.LBB6_16:                               # %return
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	pixel_regions_process_parallel_valist, .Lfunc_end6-pixel_regions_process_parallel_valist
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_8
	.quad	.LBB6_9
	.quad	.LBB6_10
	.quad	.LBB6_11

	.text
	.globl	pixel_regions_process_parallel_progress
	.align	16, 0x90
	.type	pixel_regions_process_parallel_progress,@function
pixel_regions_process_parallel_progress: # @pixel_regions_process_parallel_progress
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
	subq	$416, %rsp              # imm = 0x1A0
	testb	%al, %al
	movaps	%xmm7, -256(%rbp)       # 16-byte Spill
	movaps	%xmm6, -272(%rbp)       # 16-byte Spill
	movaps	%xmm5, -288(%rbp)       # 16-byte Spill
	movaps	%xmm4, -304(%rbp)       # 16-byte Spill
	movaps	%xmm3, -320(%rbp)       # 16-byte Spill
	movaps	%xmm2, -336(%rbp)       # 16-byte Spill
	movaps	%xmm1, -352(%rbp)       # 16-byte Spill
	movaps	%xmm0, -368(%rbp)       # 16-byte Spill
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%r9, -384(%rbp)         # 8-byte Spill
	movl	%r8d, -388(%rbp)        # 4-byte Spill
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	je	.LBB7_2
# BB#1:                                 # %entry
	movaps	-368(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -192(%rbp)
	movaps	-352(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -176(%rbp)
	movaps	-336(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -160(%rbp)
	movaps	-320(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -144(%rbp)
	movaps	-304(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -128(%rbp)
	movaps	-288(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -112(%rbp)
	movaps	-272(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -96(%rbp)
	movaps	-256(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -80(%rbp)
.LBB7_2:                                # %entry
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, -200(%rbp)
	movl	-388(%rbp), %ecx        # 4-byte Reload
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movq	-408(%rbp), %rsi        # 8-byte Reload
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	-376(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	leaq	-240(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	leaq	16(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movl	$48, -60(%rbp)
	movl	$40, -64(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-36(%rbp), %r8d
	leaq	-64(%rbp), %r9
	callq	pixel_regions_process_parallel_valist
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end7:
	.size	pixel_regions_process_parallel_progress, .Lfunc_end7-pixel_regions_process_parallel_progress
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI8_1:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI8_2:
	.quad	4841369599423283200     # double 4.503600e+15
	.quad	4985484787499139072     # double 1.934281e+25
	.text
	.align	16, 0x90
	.type	pixel_regions_do_parallel,@function
pixel_regions_do_parallel:              # @pixel_regions_do_parallel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movl	8(%rdx), %eax
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	imull	12(%rdx), %eax
	movslq	%eax, %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	shrq	$12, %rdx
	movq	%rdx, -40(%rbp)
	cmpq	$0, pool
	je	.LBB8_20
# BB#1:                                 # %land.lhs.true
	cmpq	$8, -40(%rbp)
	jbe	.LBB8_20
# BB#2:                                 # %if.then
	movq	$0, -48(%rbp)
	movq	-40(%rbp), %rax
	shrq	$3, %rax
	movq	pool, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_thread_pool_get_max_threads
	movslq	%eax, %rdi
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rdi, %rcx
	jae	.LBB8_4
# BB#3:                                 # %cond.true
	movq	-40(%rbp), %rax
	shrq	$3, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB8_5
.LBB8_4:                                # %cond.false
	movq	pool, %rdi
	callq	g_thread_pool_get_max_threads
	movslq	%eax, %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
.LBB8_5:                                # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, 28(%rax)
	movl	-52(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 24(%rax)
	callq	g_mutex_new
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	pool_mutex, %rdi
	callq	g_mutex_lock
.LBB8_6:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %eax
	je	.LBB8_10
# BB#7:                                 # %while.body
                                        #   in Loop: Header=BB8_6 Depth=1
	leaq	-48(%rbp), %rdx
	movq	pool, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	g_thread_pool_push
	cmpq	$0, -48(%rbp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB8_9
# BB#8:                                 # %if.then.15
                                        #   in Loop: Header=BB8_6 Depth=1
	movabsq	$.L.str.5, %rdi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_warning
	leaq	-48(%rbp), %rdi
	callq	g_clear_error
	movq	-8(%rbp), %rsi
	movl	24(%rsi), %ecx
	addl	$-1, %ecx
	movl	%ecx, 24(%rsi)
.LBB8_9:                                # %if.end
                                        #   in Loop: Header=BB8_6 Depth=1
	jmp	.LBB8_6
.LBB8_10:                               # %while.end
	cmpq	$0, -16(%rbp)
	je	.LBB8_15
# BB#11:                                # %if.then.19
	jmp	.LBB8_12
.LBB8_12:                               # %while.cond.20
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	je	.LBB8_14
# BB#13:                                # %while.body.24
                                        #   in Loop: Header=BB8_12 Depth=1
	leaq	-72(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_get_current_time
	movl	$65536, %ecx            # imm = 0x10000
	movl	%ecx, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	callq	g_time_val_add
	movq	pool_cond(%rip), %rdi
	movq	pool_mutex(%rip), %rsi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	g_cond_timed_wait
	movq	-8(%rbp), %rdx
	movq	16(%rdx), %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	g_mutex_lock
	movq	-8(%rbp), %rdx
	movq	80(%rdx), %rdx
	movq	%rdx, -80(%rbp)
	movq	-8(%rbp), %rdx
	movq	16(%rdx), %rdi
	callq	g_mutex_unlock
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movaps	.LCPI8_1(%rip), %xmm0   # xmm0 = [1127219200,1160773632,0,0]
	movq	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movapd	.LCPI8_2(%rip), %xmm2   # xmm2 = [4.503600e+15,1.934281e+25]
	subpd	%xmm2, %xmm1
	pshufd	$78, %xmm1, %xmm3       # xmm3 = xmm1[2,3,0,1]
	addpd	%xmm1, %xmm3
	movq	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	subpd	%xmm2, %xmm1
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	addpd	%xmm1, %xmm0
	divsd	%xmm0, %xmm3
	movaps	%xmm3, %xmm0
	callq	*%rdx
	jmp	.LBB8_12
.LBB8_14:                               # %while.end.32
	jmp	.LBB8_19
.LBB8_15:                               # %if.else
	jmp	.LBB8_16
.LBB8_16:                               # %while.cond.33
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	je	.LBB8_18
# BB#17:                                # %while.body.37
                                        #   in Loop: Header=BB8_16 Depth=1
	movq	pool_cond, %rdi
	movq	pool_mutex, %rsi
	callq	g_cond_wait
	jmp	.LBB8_16
.LBB8_18:                               # %while.end.38
	jmp	.LBB8_19
.LBB8_19:                               # %if.end.39
	movq	pool_mutex, %rdi
	callq	g_mutex_unlock
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	g_mutex_free
	jmp	.LBB8_21
.LBB8_20:                               # %if.else.41
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	do_parallel_regions_single
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB8_21:                               # %if.end.43
	cmpq	$0, -16(%rbp)
	je	.LBB8_23
# BB#22:                                # %if.then.45
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
.LBB8_23:                               # %if.end.46
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	pixel_regions_do_parallel, .Lfunc_end8-pixel_regions_do_parallel
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI9_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI9_1:
	.quad	4841369599423283200     # double 4.503600e+15
	.quad	4985484787499139072     # double 1.934281e+25
	.text
	.align	16, 0x90
	.type	do_parallel_regions_single,@function
do_parallel_regions_single:             # @do_parallel_regions_single
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB9_2
# BB#1:                                 # %if.then
	leaq	-48(%rbp), %rdi
	callq	g_get_current_time
.LBB9_2:                                # %if.end
	jmp	.LBB9_3
.LBB9_3:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movl	40(%rax), %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	ja	.LBB9_8
# BB#18:                                # %do.body
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	.LJTI9_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB9_4:                                # %sw.bb
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rsi
	callq	*%rax
	jmp	.LBB9_9
.LBB9_5:                                # %sw.bb.1
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rsi
	movq	-8(%rbp), %rcx
	movq	56(%rcx), %rdx
	callq	*%rax
	jmp	.LBB9_9
.LBB9_6:                                # %sw.bb.8
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rsi
	movq	-8(%rbp), %rcx
	movq	56(%rcx), %rdx
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rcx
	callq	*%rax
	jmp	.LBB9_9
.LBB9_7:                                # %sw.bb.17
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rsi
	movq	-8(%rbp), %rcx
	movq	56(%rcx), %rdx
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	-8(%rbp), %r8
	movq	72(%r8), %r8
	callq	*%rax
	jmp	.LBB9_9
.LBB9_8:                                # %sw.default
                                        #   in Loop: Header=BB9_3 Depth=1
	movabsq	$.L.str.6, %rdi
	movq	-8(%rbp), %rax
	movl	40(%rax), %esi
	movb	$0, %al
	callq	g_warning
.LBB9_9:                                # %sw.epilog
                                        #   in Loop: Header=BB9_3 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB9_13
# BB#10:                                # %if.then.30
                                        #   in Loop: Header=BB9_3 Depth=1
	leaq	-64(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	16(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	imull	20(%rax), %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdx
	addq	80(%rdx), %rax
	movq	%rax, 80(%rdx)
	callq	g_get_current_time
	movl	$1024, %ecx             # imm = 0x400
	movl	%ecx, %eax
	movq	-64(%rbp), %rdx
	subq	-48(%rbp), %rdx
	shlq	$10, %rdx
	movq	-56(%rbp), %rdi
	subq	-40(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rdi, %rax
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	cqto
	movq	-88(%rbp), %rdi         # 8-byte Reload
	idivq	%rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	addq	%rax, %rsi
	cmpq	$64, %rsi
	jle	.LBB9_12
# BB#11:                                # %if.then.38
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	80(%rcx), %xmm0         # xmm0 = mem[0],zero
	movaps	.LCPI9_0(%rip), %xmm1   # xmm1 = [1127219200,1160773632,0,0]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movapd	.LCPI9_1(%rip), %xmm2   # xmm2 = [4.503600e+15,1.934281e+25]
	subpd	%xmm2, %xmm0
	pshufd	$78, %xmm0, %xmm3       # xmm3 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm3
	movq	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	subpd	%xmm2, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm1
	divsd	%xmm1, %xmm3
	movaps	%xmm3, %xmm0
	callq	*%rax
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB9_12:                               # %if.end.43
                                        #   in Loop: Header=BB9_3 Depth=1
	jmp	.LBB9_13
.LBB9_13:                               # %if.end.44
                                        #   in Loop: Header=BB9_3 Depth=1
	jmp	.LBB9_14
.LBB9_14:                               # %do.cond
                                        #   in Loop: Header=BB9_3 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	cmpq	$0, 32(%rdx)
	movb	%cl, -97(%rbp)          # 1-byte Spill
	je	.LBB9_16
# BB#15:                                # %land.rhs
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	pixel_regions_process
	movq	-8(%rbp), %rdi
	movq	%rax, 32(%rdi)
	cmpq	$0, %rax
	setne	%cl
	movb	%cl, -97(%rbp)          # 1-byte Spill
.LBB9_16:                               # %land.end
                                        #   in Loop: Header=BB9_3 Depth=1
	movb	-97(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB9_3
# BB#17:                                # %do.end
	xorl	%eax, %eax
                                        # kill: RAX<def> EAX<kill>
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	do_parallel_regions_single, .Lfunc_end9-do_parallel_regions_single
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI9_0:
	.quad	.LBB9_4
	.quad	.LBB9_5
	.quad	.LBB9_6
	.quad	.LBB9_7

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Base"
	.size	.L.str, 10

	.type	.L__func__.pixel_processor_set_num_threads,@object # @__func__.pixel_processor_set_num_threads
.L__func__.pixel_processor_set_num_threads:
	.asciz	"pixel_processor_set_num_threads"
	.size	.L__func__.pixel_processor_set_num_threads, 32

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"num_threads > 0 && num_threads <= GIMP_MAX_NUM_THREADS"
	.size	.L.str.1, 55

	.type	pool,@object            # @pool
	.local	pool
	.comm	pool,8,8
	.type	pool_cond,@object       # @pool_cond
	.local	pool_cond
	.comm	pool_cond,8,8
	.type	pool_mutex,@object      # @pool_mutex
	.local	pool_mutex
	.comm	pool_mutex,8,8
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"changing the number of threads to %d failed: %s"
	.size	.L.str.2, 48

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"do_parallel_regions: Bad number of regions %d\n"
	.size	.L.str.3, 47

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"pixel_regions_process_parallel: bad number of regions (%d)"
	.size	.L.str.4, 59

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"thread creation failed: %s"
	.size	.L.str.5, 27

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"do_parallel_regions_single: Bad number of regions %d\n"
	.size	.L.str.6, 54


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
