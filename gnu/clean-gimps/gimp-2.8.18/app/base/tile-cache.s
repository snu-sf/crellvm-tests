	.text
	.file	"tile-cache.bc"
	.globl	tile_cache_init
	.align	16, 0x90
	.type	tile_cache_init,@function
tile_cache_init:                        # @tile_cache_init
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, tile_cache_mutex
	jne	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tile_cache_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_6
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	callq	g_mutex_new
	movq	%rax, tile_cache_mutex
	movq	$0, tile_list+8
	movq	$0, tile_list
	movq	$0, idle_scan_last
	movq	-8(%rbp), %rax
	movq	%rax, max_cache_size
.LBB0_6:                                # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tile_cache_init, .Lfunc_end0-tile_cache_init
	.cfi_endproc

	.globl	tile_cache_exit
	.align	16, 0x90
	.type	tile_cache_exit,@function
tile_cache_exit:                        # @tile_cache_exit
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
	subq	$16, %rsp
	cmpl	$0, idle_swapper
	je	.LBB1_2
# BB#1:                                 # %if.then
	movl	idle_swapper, %edi
	callq	g_source_remove
	movl	$0, idle_swapper
	movl	%eax, -4(%rbp)          # 4-byte Spill
.LBB1_2:                                # %if.end
	cmpq	$0, cur_cache_size
	jbe	.LBB1_4
# BB#3:                                 # %if.then.1
	movabsq	$.L.str.2, %rdi
	movq	cur_cache_size, %rsi
	movb	$0, %al
	callq	g_warning
.LBB1_4:                                # %if.end.2
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	tile_cache_set_size
	movq	tile_cache_mutex, %rdi
	callq	g_mutex_free
	movq	$0, tile_cache_mutex
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	tile_cache_exit, .Lfunc_end1-tile_cache_exit
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	movl	$.L.str, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end2:
	.size	g_warning, .Lfunc_end2-g_warning
	.cfi_endproc

	.globl	tile_cache_set_size
	.align	16, 0x90
	.type	tile_cache_set_size,@function
tile_cache_set_size:                    # @tile_cache_set_size
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	tile_cache_mutex, %rdi
	callq	g_mutex_lock
	movl	$1, idle_delay
	movq	-8(%rbp), %rdi
	movq	%rdi, max_cache_size
.LBB3_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	cur_cache_size, %rax
	cmpq	max_cache_size, %rax
	jbe	.LBB3_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB3_1 Depth=1
	callq	tile_cache_zorch_next
	cmpl	$0, %eax
	jne	.LBB3_4
# BB#3:                                 # %if.then
	jmp	.LBB3_5
.LBB3_4:                                # %if.end
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_1
.LBB3_5:                                # %while.end
	movq	tile_cache_mutex, %rdi
	callq	g_mutex_unlock
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	tile_cache_set_size, .Lfunc_end3-tile_cache_set_size
	.cfi_endproc

	.globl	tile_cache_suspend_idle_swapper
	.align	16, 0x90
	.type	tile_cache_suspend_idle_swapper,@function
tile_cache_suspend_idle_swapper:        # @tile_cache_suspend_idle_swapper
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
	movl	$1, idle_delay
	popq	%rbp
	retq
.Lfunc_end4:
	.size	tile_cache_suspend_idle_swapper, .Lfunc_end4-tile_cache_suspend_idle_swapper
	.cfi_endproc

	.globl	tile_cache_insert
	.align	16, 0x90
	.type	tile_cache_insert,@function
tile_cache_insert:                      # @tile_cache_insert
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	tile_cache_mutex, %rdi
	callq	g_mutex_lock
	movq	-8(%rbp), %rdi
	cmpq	$0, 32(%rdi)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_32
.LBB5_2:                                # %if.end
	movq	-8(%rbp), %rax
	movb	8(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB5_15
# BB#3:                                 # %if.then.2
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB5_5
# BB#4:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	56(%rcx), %rcx
	movq	%rax, 64(%rcx)
	jmp	.LBB5_6
.LBB5_5:                                # %if.else
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, tile_list+8
.LBB5_6:                                # %if.end.8
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB5_8
# BB#7:                                 # %if.then.11
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	%rax, 56(%rcx)
	jmp	.LBB5_9
.LBB5_8:                                # %if.else.15
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, tile_list
.LBB5_9:                                # %if.end.17
	movq	-8(%rbp), %rax
	movb	8(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB5_11
# BB#10:                                # %lor.lhs.false
	movq	-8(%rbp), %rax
	cmpq	$-1, 40(%rax)
	jne	.LBB5_12
.LBB5_11:                               # %if.then.22
	movq	-8(%rbp), %rax
	movslq	16(%rax), %rax
	movq	cur_cache_dirty, %rcx
	subq	%rax, %rcx
	movq	%rcx, cur_cache_dirty
.LBB5_12:                               # %if.end.23
	movq	-8(%rbp), %rax
	cmpq	idle_scan_last, %rax
	jne	.LBB5_14
# BB#13:                                # %if.then.26
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, idle_scan_last
.LBB5_14:                               # %if.end.28
	jmp	.LBB5_21
.LBB5_15:                               # %if.else.29
	jmp	.LBB5_16
.LBB5_16:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	cur_cache_size, %rax
	movq	-8(%rbp), %rcx
	movslq	16(%rcx), %rcx
	addq	%rcx, %rax
	cmpq	max_cache_size, %rax
	jbe	.LBB5_20
# BB#17:                                # %while.body
                                        #   in Loop: Header=BB5_16 Depth=1
	callq	tile_cache_zorch_next
	cmpl	$0, %eax
	jne	.LBB5_19
# BB#18:                                # %if.then.35
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB5_32
.LBB5_19:                               # %if.end.36
                                        #   in Loop: Header=BB5_16 Depth=1
	jmp	.LBB5_16
.LBB5_20:                               # %while.end
	movq	-8(%rbp), %rax
	movslq	16(%rax), %rax
	addq	cur_cache_size, %rax
	movq	%rax, cur_cache_size
.LBB5_21:                               # %if.end.40
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
	movq	tile_list+8, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 64(%rcx)
	cmpq	$0, tile_list+8
	je	.LBB5_23
# BB#22:                                # %if.then.44
	movq	-8(%rbp), %rax
	movq	tile_list+8, %rcx
	movq	%rax, 56(%rcx)
	jmp	.LBB5_24
.LBB5_23:                               # %if.else.46
	movq	-8(%rbp), %rax
	movq	%rax, tile_list
.LBB5_24:                               # %if.end.47
	movq	-8(%rbp), %rax
	movq	%rax, tile_list+8
	movq	-8(%rbp), %rax
	movb	8(%rax), %cl
	andb	$-5, %cl
	orb	$4, %cl
	movb	%cl, 8(%rax)
	movl	$1, idle_delay
	movq	-8(%rbp), %rax
	movb	8(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB5_26
# BB#25:                                # %lor.lhs.false.56
	movq	-8(%rbp), %rax
	cmpq	$-1, 40(%rax)
	jne	.LBB5_31
.LBB5_26:                               # %if.then.60
	movq	-8(%rbp), %rax
	movslq	16(%rax), %rax
	addq	cur_cache_dirty, %rax
	movq	%rax, cur_cache_dirty
	cmpq	$0, idle_scan_last
	jne	.LBB5_28
# BB#27:                                # %if.then.65
	movq	-8(%rbp), %rax
	movq	%rax, idle_scan_last
.LBB5_28:                               # %if.end.66
	cmpl	$0, idle_swapper
	jne	.LBB5_30
# BB#29:                                # %if.then.68
	movl	$300, %edi              # imm = 0x12C
	movl	$1000, %esi             # imm = 0x3E8
	movabsq	$tile_idle_preswap, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$0, idle_delay
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	movq	-16(%rbp), %r8          # 8-byte Reload
	callq	g_timeout_add_full
	movl	%eax, idle_swapper
.LBB5_30:                               # %if.end.70
	jmp	.LBB5_31
.LBB5_31:                               # %if.end.71
	jmp	.LBB5_32
.LBB5_32:                               # %out
	movq	tile_cache_mutex, %rdi
	callq	g_mutex_unlock
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	tile_cache_insert, .Lfunc_end5-tile_cache_insert
	.cfi_endproc

	.align	16, 0x90
	.type	tile_cache_zorch_next,@function
tile_cache_zorch_next:                  # @tile_cache_zorch_next
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
	subq	$16, %rsp
	movq	tile_list, %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB6_8
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	tile_cache_flush_internal
	movq	-16(%rbp), %rdi
	movb	8(%rdi), %al
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	jne	.LBB6_4
# BB#3:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpq	$-1, 40(%rax)
	jne	.LBB6_5
.LBB6_4:                                # %if.then.2
	movl	$1, idle_delay
	movq	-16(%rbp), %rdi
	callq	tile_swap_out
.LBB6_5:                                # %if.end.3
	movq	-16(%rbp), %rax
	movb	8(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB6_7
# BB#6:                                 # %if.then.9
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB6_8
.LBB6_7:                                # %if.end.11
	movl	$0, -4(%rbp)
.LBB6_8:                                # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	tile_cache_zorch_next, .Lfunc_end6-tile_cache_zorch_next
	.cfi_endproc

	.align	16, 0x90
	.type	tile_idle_preswap,@function
tile_idle_preswap:                      # @tile_idle_preswap
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	cmpl	$0, idle_delay
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	$0, idle_delay
	movl	$1, -4(%rbp)
	jmp	.LBB7_3
.LBB7_2:                                # %if.end
	movl	$300, %edi              # imm = 0x12C
	movl	$20, %esi
	movabsq	$tile_idle_preswap_run, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	movq	-24(%rbp), %r8          # 8-byte Reload
	callq	g_timeout_add_full
	movl	%eax, idle_swapper
	movl	$0, -4(%rbp)
.LBB7_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	tile_idle_preswap, .Lfunc_end7-tile_idle_preswap
	.cfi_endproc

	.globl	tile_cache_flush
	.align	16, 0x90
	.type	tile_cache_flush,@function
tile_cache_flush:                       # @tile_cache_flush
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	tile_cache_mutex, %rdi
	callq	g_mutex_lock
	movq	-8(%rbp), %rdi
	movb	8(%rdi), %al
	shrb	$2, %al
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	tile_cache_flush_internal
.LBB8_2:                                # %if.end
	movq	tile_cache_mutex, %rdi
	callq	g_mutex_unlock
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	tile_cache_flush, .Lfunc_end8-tile_cache_flush
	.cfi_endproc

	.align	16, 0x90
	.type	tile_cache_flush_internal,@function
tile_cache_flush_internal:              # @tile_cache_flush_internal
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movb	8(%rdi), %al
	andb	$-5, %al
	movb	%al, 8(%rdi)
	movq	-8(%rbp), %rdi
	movb	8(%rdi), %al
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	jne	.LBB9_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	cmpq	$-1, 40(%rax)
	jne	.LBB9_3
.LBB9_2:                                # %if.then
	movq	-8(%rbp), %rax
	movslq	16(%rax), %rax
	movq	cur_cache_dirty, %rcx
	subq	%rax, %rcx
	movq	%rcx, cur_cache_dirty
.LBB9_3:                                # %if.end
	movq	-8(%rbp), %rax
	movslq	16(%rax), %rax
	movq	cur_cache_size, %rcx
	subq	%rax, %rcx
	movq	%rcx, cur_cache_size
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB9_5
# BB#4:                                 # %if.then.7
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	56(%rcx), %rcx
	movq	%rax, 64(%rcx)
	jmp	.LBB9_6
.LBB9_5:                                # %if.else
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, tile_list+8
.LBB9_6:                                # %if.end.11
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB9_8
# BB#7:                                 # %if.then.14
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	%rax, 56(%rcx)
	jmp	.LBB9_9
.LBB9_8:                                # %if.else.18
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, tile_list
.LBB9_9:                                # %if.end.20
	movq	-8(%rbp), %rax
	cmpq	idle_scan_last, %rax
	jne	.LBB9_11
# BB#10:                                # %if.then.23
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, idle_scan_last
.LBB9_11:                               # %if.end.25
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
	popq	%rbp
	retq
.Lfunc_end9:
	.size	tile_cache_flush_internal, .Lfunc_end9-tile_cache_flush_internal
	.cfi_endproc

	.align	16, 0x90
	.type	tile_idle_preswap_run,@function
tile_idle_preswap_run:                  # @tile_idle_preswap_run
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -28(%rbp)
	cmpl	$0, idle_delay
	je	.LBB10_2
# BB#1:                                 # %if.then
	movl	$300, %edi              # imm = 0x12C
	movl	$1000, %esi             # imm = 0x3E8
	movabsq	$tile_idle_preswap, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$0, idle_delay
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movq	-40(%rbp), %r8          # 8-byte Reload
	callq	g_timeout_add_full
	movl	%eax, idle_swapper
	movl	$0, -4(%rbp)
	jmp	.LBB10_14
.LBB10_2:                               # %if.end
	movq	tile_cache_mutex, %rdi
	callq	g_mutex_lock
	movq	idle_scan_last, %rdi
	movq	%rdi, -24(%rbp)
.LBB10_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB10_13
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-24(%rbp), %rax
	movb	8(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB10_6
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$-1, 40(%rax)
	jne	.LBB10_12
.LBB10_6:                               # %if.then.3
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, idle_scan_last
	movq	-24(%rbp), %rdi
	callq	tile_swap_out
	movq	-24(%rbp), %rax
	movb	8(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB10_9
# BB#7:                                 # %lor.lhs.false.9
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$-1, 40(%rax)
	je	.LBB10_9
# BB#8:                                 # %if.then.12
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-24(%rbp), %rax
	movslq	16(%rax), %rax
	movq	cur_cache_dirty, %rcx
	subq	%rax, %rcx
	movq	%rcx, cur_cache_dirty
.LBB10_9:                               # %if.end.13
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	cmpl	$10, -28(%rbp)
	jl	.LBB10_11
# BB#10:                                # %if.then.16
	movq	tile_cache_mutex, %rdi
	callq	g_mutex_unlock
	movl	$1, -4(%rbp)
	jmp	.LBB10_14
.LBB10_11:                              # %if.end.17
                                        #   in Loop: Header=BB10_3 Depth=1
	jmp	.LBB10_12
.LBB10_12:                              # %if.end.18
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB10_3
.LBB10_13:                              # %while.end
	movq	$0, idle_scan_last
	movl	$0, idle_swapper
	movq	tile_cache_mutex, %rdi
	callq	g_mutex_unlock
	movl	$0, -4(%rbp)
.LBB10_14:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	tile_idle_preswap_run, .Lfunc_end10-tile_idle_preswap_run
	.cfi_endproc

	.type	tile_cache_mutex,@object # @tile_cache_mutex
	.local	tile_cache_mutex
	.comm	tile_cache_mutex,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Base"
	.size	.L.str, 10

	.type	.L__func__.tile_cache_init,@object # @__func__.tile_cache_init
.L__func__.tile_cache_init:
	.asciz	"tile_cache_init"
	.size	.L__func__.tile_cache_init, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"tile_cache_mutex == NULL"
	.size	.L.str.1, 25

	.type	tile_list,@object       # @tile_list
	.local	tile_list
	.comm	tile_list,16,8
	.type	idle_scan_last,@object  # @idle_scan_last
	.local	idle_scan_last
	.comm	idle_scan_last,8,8
	.type	max_cache_size,@object  # @max_cache_size
	.local	max_cache_size
	.comm	max_cache_size,8,8
	.type	idle_swapper,@object    # @idle_swapper
	.local	idle_swapper
	.comm	idle_swapper,4,4
	.type	cur_cache_size,@object  # @cur_cache_size
	.local	cur_cache_size
	.comm	cur_cache_size,8,8
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"tile cache not empty (%lu bytes left)"
	.size	.L.str.2, 38

	.type	idle_delay,@object      # @idle_delay
	.local	idle_delay
	.comm	idle_delay,4,4
	.type	cur_cache_dirty,@object # @cur_cache_dirty
	.local	cur_cache_dirty
	.comm	cur_cache_dirty,8,8
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"cache: unable to find room for a tile"
	.size	.L.str.3, 38


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
