	.text
	.file	"darray.bc"
	.globl	da_new
	.align	16, 0x90
	.type	da_new,@function
da_new:                                 # @da_new
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movabsq	$.L.str, %rdx
	movl	da_exit_error, %edi
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %r8
	movb	$0, %al
	callq	error
.LBB0_2:                                # %if.end
	cmpq	$0, -32(%rbp)
	jne	.LBB0_5
# BB#3:                                 # %land.lhs.true
	cmpl	$0, -20(%rbp)
	je	.LBB0_5
# BB#4:                                 # %if.then.4
	xorl	%esi, %esi
	movabsq	$.L.str.1, %rdx
	movl	da_exit_error, %edi
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %r8
	movb	$0, %al
	callq	error
.LBB0_5:                                # %if.end.5
	movl	$72, %eax
	movl	%eax, %edi
	callq	xmalloc
	movl	$8, %ecx
	movl	%ecx, %edi
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rsi
	callq	xcalloc
	movq	-56(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movl	-20(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 24(%rax)
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-56(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, 64(%rdx)
	movq	-56(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	da_new, .Lfunc_end0-da_new
	.cfi_endproc

	.globl	da_erase
	.align	16, 0x90
	.type	da_erase,@function
da_erase:                               # @da_erase
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_da_erase
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	da_erase, .Lfunc_end1-da_erase
	.cfi_endproc

	.align	16, 0x90
	.type	_da_erase,@function
_da_erase:                              # @_da_erase
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
	cmpq	$0, -8(%rbp)
	je	.LBB2_6
# BB#1:                                 # %if.then
	jmp	.LBB2_2
.LBB2_2:                                # %do.body
	movq	-8(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB2_4
# BB#3:                                 # %if.then.2
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	callq	free
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB2_6:                                # %if.end.4
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	_da_erase, .Lfunc_end2-_da_erase
	.cfi_endproc

	.globl	da_free_content
	.align	16, 0x90
	.type	da_free_content,@function
da_free_content:                        # @da_free_content
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_da_free_content
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	da_free_content, .Lfunc_end3-da_free_content
	.cfi_endproc

	.align	16, 0x90
	.type	_da_free_content,@function
_da_free_content:                       # @_da_free_content
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_6
# BB#1:                                 # %if.then
	movq	$0, -24(%rbp)
.LBB4_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB4_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	*%rax
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB4_2
.LBB4_5:                                # %for.end
	jmp	.LBB4_6
.LBB4_6:                                # %if.end
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	_da_free_content, .Lfunc_end4-_da_free_content
	.cfi_endproc

	.globl	da_free
	.align	16, 0x90
	.type	da_free,@function
da_free:                                # @da_free
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_da_free_content
	movq	-8(%rbp), %rdi
	callq	_da_erase
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	da_free, .Lfunc_end5-da_free
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI6_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI6_1:
	.quad	4841369599423283200     # double 4.503600e+15
	.quad	4985484787499139072     # double 1.934281e+25
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_2:
	.quad	4636737291354636288     # double 100
	.text
	.globl	da_print_stats
	.align	16, 0x90
	.type	da_print_stats,@function
da_print_stats:                         # @da_print_stats
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	$.L.str.2, %eax
	movl	%eax, %esi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	callq	gettext
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdx
	xorl	%ecx, %ecx
	movb	%cl, %r8b
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	%r8b, %al
	callq	fprintf
	movq	-16(%rbp), %rdi
	movl	$.L.str.3, %ecx
	movl	%ecx, %edx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rsi
	movq	40(%rdx), %rdx
	movd	%rdx, %xmm0
	movaps	.LCPI6_0(%rip), %xmm1   # xmm1 = [1127219200,1160773632,0,0]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movapd	.LCPI6_1(%rip), %xmm2   # xmm2 = [4.503600e+15,1.934281e+25]
	subpd	%xmm2, %xmm0
	pshufd	$78, %xmm0, %xmm3       # xmm3 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm3
	movsd	.LCPI6_2(%rip), %xmm0   # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm3
	movd	%rsi, %xmm0
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	subpd	%xmm2, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm1
	divsd	%xmm1, %xmm3
	movb	$1, %r8b
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movaps	%xmm3, %xmm0
	movb	%r8b, %al
	callq	fprintf
	movq	-8(%rbp), %rcx
	movl	24(%rcx), %r9d
	testl	%r9d, %r9d
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%r9d, -64(%rbp)         # 4-byte Spill
	je	.LBB6_1
	jmp	.LBB6_6
.LBB6_6:                                # %entry
	movl	-64(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB6_2
	jmp	.LBB6_7
.LBB6_7:                                # %entry
	movl	-64(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB6_3
	jmp	.LBB6_4
.LBB6_1:                                # %sw.bb
	movabsq	$.L.str.4, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB6_5
.LBB6_2:                                # %sw.bb.7
	movabsq	$.L.str.5, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB6_5
.LBB6_3:                                # %sw.bb.8
	movabsq	$.L.str.6, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB6_5
.LBB6_4:                                # %sw.default
	callq	abort
.LBB6_5:                                # %sw.epilog
	movabsq	$.L.str.7, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdx
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %r8
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -84(%rbp)         # 4-byte Spill
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	da_print_stats, .Lfunc_end6-da_print_stats
	.cfi_endproc

	.globl	da_resize
	.align	16, 0x90
	.type	da_resize,@function
da_resize:                              # @da_resize
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rsi
	addq	$1, %rsi
	cmpq	-16(%rbp), %rsi
	jae	.LBB7_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	shlq	$3, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	xrealloc
	movq	-8(%rbp), %rcx
	movq	%rax, 48(%rcx)
.LBB7_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	da_resize, .Lfunc_end7-da_resize
	.cfi_endproc

	.globl	da_grow
	.align	16, 0x90
	.type	da_grow,@function
da_grow:                                # @da_grow
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
	movl	24(%rdi), %eax
	testl	%eax, %eax
	movl	%eax, -12(%rbp)         # 4-byte Spill
	je	.LBB8_1
	jmp	.LBB8_7
.LBB8_7:                                # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -16(%rbp)         # 4-byte Spill
	je	.LBB8_2
	jmp	.LBB8_8
.LBB8_8:                                # %entry
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	je	.LBB8_3
	jmp	.LBB8_4
.LBB8_1:                                # %sw.bb
	jmp	.LBB8_6
.LBB8_2:                                # %sw.bb.1
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	8(%rcx), %rax
	movq	%rax, 8(%rcx)
	jmp	.LBB8_5
.LBB8_3:                                # %sw.bb.2
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rcx
	imulq	8(%rcx), %rax
	movq	%rax, 8(%rcx)
	jmp	.LBB8_5
.LBB8_4:                                # %sw.default
	callq	abort
.LBB8_5:                                # %sw.epilog
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	shlq	$3, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	xrealloc
	movq	-8(%rbp), %rcx
	movq	%rax, 48(%rcx)
.LBB8_6:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	da_grow, .Lfunc_end8-da_grow
	.cfi_endproc

	.globl	da_clone
	.align	16, 0x90
	.type	da_clone,@function
da_clone:                               # @da_clone
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
	movl	$72, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	xmalloc
	movl	$72, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	memcpy
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	memcpy
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	da_clone, .Lfunc_end9-da_clone
	.cfi_endproc

	.globl	da_is_sorted
	.align	16, 0x90
	.type	da_is_sorted,@function
da_is_sorted:                           # @da_is_sorted
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	$1, -24(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB10_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movq	-24(%rbp), %rcx
	subq	$1, %rcx
	movq	-16(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rsi
	callq	*%rax
	cmpl	$0, %eax
	jge	.LBB10_4
# BB#3:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB10_7
.LBB10_4:                               # %if.end
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_5
.LBB10_5:                               # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB10_1
.LBB10_6:                               # %for.end
	movl	$1, -4(%rbp)
.LBB10_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	da_is_sorted, .Lfunc_end10-da_is_sorted
	.cfi_endproc

	.globl	da_equal
	.align	16, 0x90
	.type	da_equal,@function
da_equal:                               # @da_equal
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	-24(%rbp), %rdi
	cmpq	40(%rdi), %rsi
	je	.LBB11_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB11_9
.LBB11_2:                               # %if.end
	movq	$0, -32(%rbp)
.LBB11_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB11_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	48(%rdx), %rdx
	cmpq	(%rdx,%rcx,8), %rax
	je	.LBB11_6
# BB#5:                                 # %if.then.7
	movl	$0, -4(%rbp)
	jmp	.LBB11_9
.LBB11_6:                               # %if.end.8
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_7
.LBB11_7:                               # %for.inc
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB11_3
.LBB11_8:                               # %for.end
	movl	$1, -4(%rbp)
.LBB11_9:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end11:
	.size	da_equal, .Lfunc_end11-da_equal
	.cfi_endproc

	.globl	da_cmp_equal
	.align	16, 0x90
	.type	da_cmp_equal,@function
da_cmp_equal:                           # @da_cmp_equal
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	-24(%rbp), %rdi
	cmpq	40(%rdi), %rsi
	je	.LBB12_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB12_9
.LBB12_2:                               # %if.end
	movq	$0, -32(%rbp)
.LBB12_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB12_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB12_3 Depth=1
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rsi
	callq	*%rax
	cmpl	$0, %eax
	je	.LBB12_6
# BB#5:                                 # %if.then.7
	movl	$0, -4(%rbp)
	jmp	.LBB12_9
.LBB12_6:                               # %if.end.8
                                        #   in Loop: Header=BB12_3 Depth=1
	jmp	.LBB12_7
.LBB12_7:                               # %for.inc
                                        #   in Loop: Header=BB12_3 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB12_3
.LBB12_8:                               # %for.end
	movl	$1, -4(%rbp)
.LBB12_9:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	da_cmp_equal, .Lfunc_end12-da_cmp_equal
	.cfi_endproc

	.globl	da_where
	.align	16, 0x90
	.type	da_where,@function
da_where:                               # @da_where
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -32(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB13_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB13_4
# BB#3:                                 # %if.then
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB13_7
.LBB13_4:                               # %if.end
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_5
.LBB13_5:                               # %for.inc
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB13_1
.LBB13_6:                               # %for.end
	movl	$-1, -4(%rbp)
.LBB13_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	da_where, .Lfunc_end13-da_where
	.cfi_endproc

	.globl	da_includes
	.align	16, 0x90
	.type	da_includes,@function
da_includes:                            # @da_includes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	da_where
	cmpl	$-1, %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	da_includes, .Lfunc_end14-da_includes
	.cfi_endproc

	.globl	da_append
	.align	16, 0x90
	.type	da_append,@function
da_append:                              # @da_append
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rsi
	addq	$1, %rsi
	movq	-8(%rbp), %rdi
	cmpq	8(%rdi), %rsi
	jb	.LBB15_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	da_grow
.LBB15_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 40(%rcx)
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	%rax, (%rcx,%rdx,8)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	da_append, .Lfunc_end15-da_append
	.cfi_endproc

	.globl	da_insert_at
	.align	16, 0x90
	.type	da_insert_at,@function
da_insert_at:                           # @da_insert_at
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	cmpq	40(%rsi), %rdx
	jbe	.LBB16_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movabsq	$.L.str.8, %rdx
	movl	da_exit_error, %edi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %r8
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	subq	$1, %rax
	movq	%rax, %r9
	movb	$0, %al
	callq	error
.LBB16_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	addq	$1, %rax
	movq	-8(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jb	.LBB16_4
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	callq	da_grow
.LBB16_4:                               # %if.end.5
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB16_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jae	.LBB16_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB16_5 Depth=1
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB16_5 Depth=1
	movq	-32(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB16_5
.LBB16_8:                               # %for.end
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 40(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	da_insert_at, .Lfunc_end16-da_insert_at
	.cfi_endproc

	.globl	da_remove_at
	.align	16, 0x90
	.type	da_remove_at,@function
da_remove_at:                           # @da_remove_at
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	cmpq	40(%rsi), %rdx
	jb	.LBB17_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movabsq	$.L.str.9, %rdx
	movl	da_exit_error, %edi
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %r8
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	subq	$1, %rax
	movq	%rax, %r9
	movb	$0, %al
	callq	error
.LBB17_2:                               # %if.end
	cmpq	$0, -24(%rbp)
	je	.LBB17_4
# BB#3:                                 # %if.then.2
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	*%rax
.LBB17_4:                               # %if.end.3
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
.LBB17_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB17_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-32(%rbp), %rcx
	subq	$1, %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB17_5 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB17_5
.LBB17_8:                               # %for.end
	movq	-8(%rbp), %rax
	movq	40(%rax), %rcx
	addq	$-1, %rcx
	movq	%rcx, 40(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	da_remove_at, .Lfunc_end17-da_remove_at
	.cfi_endproc

	.globl	da_concat
	.align	16, 0x90
	.type	da_concat,@function
da_concat:                              # @da_concat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	-16(%rbp), %rdi
	addq	40(%rdi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdi
	cmpq	8(%rdi), %rsi
	jbe	.LBB18_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	shlq	$3, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	xrealloc
	movq	-8(%rbp), %rcx
	movq	%rax, 48(%rcx)
.LBB18_2:                               # %if.end
	movq	$0, -24(%rbp)
.LBB18_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB18_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB18_3 Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 40(%rcx)
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	%rax, (%rcx,%rdx,8)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB18_3 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB18_3
.LBB18_6:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	da_concat, .Lfunc_end18-da_concat
	.cfi_endproc

	.globl	da_prefix
	.align	16, 0x90
	.type	da_prefix,@function
da_prefix:                              # @da_prefix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	-16(%rbp), %rdi
	addq	40(%rdi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdi
	cmpq	8(%rdi), %rsi
	jbe	.LBB19_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	shlq	$3, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	xrealloc
	movq	-8(%rbp), %rcx
	movq	%rax, 48(%rcx)
.LBB19_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%ecx, -20(%rbp)
.LBB19_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -20(%rbp)
	jl	.LBB19_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB19_3 Depth=1
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	40(%rdx), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB19_3 Depth=1
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB19_3
.LBB19_6:                               # %for.end
	movl	$0, -20(%rbp)
.LBB19_7:                               # %for.cond.16
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rcx
	movl	%ecx, %edx
	cmpl	%edx, %eax
	jge	.LBB19_10
# BB#8:                                 # %for.body.21
                                        #   in Loop: Header=BB19_7 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#9:                                 # %for.inc.28
                                        #   in Loop: Header=BB19_7 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB19_7
.LBB19_10:                              # %for.end.29
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	40(%rcx), %rax
	movq	%rax, 40(%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	da_prefix, .Lfunc_end19-da_prefix
	.cfi_endproc

	.globl	da_qsort
	.align	16, 0x90
	.type	da_qsort,@function
da_qsort:                               # @da_qsort
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$1, 40(%rdi)
	ja	.LBB20_2
# BB#1:                                 # %if.then
	jmp	.LBB20_51
.LBB20_2:                               # %if.end
	movl	$400, %eax              # imm = 0x190
	movl	%eax, %edi
	callq	xmalloc
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	subq	$1, %rax
	movl	%eax, %ecx
	movl	%ecx, -12(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -32(%rbp)
.LBB20_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_5 Depth 2
                                        #       Child Loop BB20_7 Depth 3
                                        #     Child Loop BB20_32 Depth 2
                                        #       Child Loop BB20_33 Depth 3
                                        #       Child Loop BB20_36 Depth 3
	movl	-12(%rbp), %eax
	subl	-24(%rbp), %eax
	cmpl	$37, %eax
	jge	.LBB20_17
# BB#4:                                 # %if.then.5
                                        #   in Loop: Header=BB20_3 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
.LBB20_5:                               # %for.cond.6
                                        #   Parent Loop BB20_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB20_7 Depth 3
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	.LBB20_14
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB20_5 Depth=2
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -48(%rbp)
	movl	-16(%rbp), %edx
	subl	$1, %edx
	movl	%edx, -28(%rbp)
.LBB20_7:                               # %for.cond.10
                                        #   Parent Loop BB20_3 Depth=1
                                        #     Parent Loop BB20_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-28(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.LBB20_12
# BB#8:                                 # %for.body.13
                                        #   in Loop: Header=BB20_7 Depth=3
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movslq	-28(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movq	-48(%rbp), %rsi
	callq	*%rax
	cmpl	$0, %eax
	jg	.LBB20_10
# BB#9:                                 # %if.then.21
                                        #   in Loop: Header=BB20_5 Depth=2
	jmp	.LBB20_12
.LBB20_10:                              # %if.end.22
                                        #   in Loop: Header=BB20_7 Depth=3
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	-28(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rax, (%rsi,%rcx,8)
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB20_7 Depth=3
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB20_7
.LBB20_12:                              # %for.end
                                        #   in Loop: Header=BB20_5 Depth=2
	movq	-48(%rbp), %rax
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rax, (%rsi,%rdx,8)
# BB#13:                                # %for.inc.34
                                        #   in Loop: Header=BB20_5 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB20_5
.LBB20_14:                              # %for.end.35
                                        #   in Loop: Header=BB20_3 Depth=1
	cmpl	$0, -32(%rbp)
	jne	.LBB20_16
# BB#15:                                # %if.then.38
	jmp	.LBB20_50
.LBB20_16:                              # %if.end.39
                                        #   in Loop: Header=BB20_3 Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -32(%rbp)
	movslq	%eax, %rdx
	movq	-40(%rbp), %rsi
	movl	(%rsi,%rdx,4), %eax
	movl	%eax, -12(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -32(%rbp)
	movslq	%eax, %rdx
	movq	-40(%rbp), %rsi
	movl	(%rsi,%rdx,4), %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB20_49
.LBB20_17:                              # %if.else
                                        #   in Loop: Header=BB20_3 Depth=1
	movl	$2, %eax
	movl	-24(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-60(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -20(%rbp)
# BB#18:                                # %do.body
                                        #   in Loop: Header=BB20_3 Depth=1
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -56(%rbp)
	movl	-24(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rax, (%rsi,%rcx,8)
	movq	-56(%rbp), %rax
	movl	-24(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rax, (%rsi,%rcx,8)
# BB#19:                                # %do.end
                                        #   in Loop: Header=BB20_3 Depth=1
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movslq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rsi
	callq	*%rax
	cmpl	$0, %eax
	jle	.LBB20_23
# BB#20:                                # %if.then.71
                                        #   in Loop: Header=BB20_3 Depth=1
	jmp	.LBB20_21
.LBB20_21:                              # %do.body.72
                                        #   in Loop: Header=BB20_3 Depth=1
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -56(%rbp)
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movslq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-56(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#22:                                # %do.end.85
                                        #   in Loop: Header=BB20_3 Depth=1
	jmp	.LBB20_23
.LBB20_23:                              # %if.end.86
                                        #   in Loop: Header=BB20_3 Depth=1
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movl	-24(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	(%rsi,%rdx,8), %rdi
	movslq	-12(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	(%rsi,%rdx,8), %rsi
	callq	*%rax
	cmpl	$0, %eax
	jle	.LBB20_27
# BB#24:                                # %if.then.98
                                        #   in Loop: Header=BB20_3 Depth=1
	jmp	.LBB20_25
.LBB20_25:                              # %do.body.99
                                        #   in Loop: Header=BB20_3 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -56(%rbp)
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rcx, (%rsi,%rdx,8)
	movq	-56(%rbp), %rcx
	movslq	-12(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rcx, (%rsi,%rdx,8)
# BB#26:                                # %do.end.114
                                        #   in Loop: Header=BB20_3 Depth=1
	jmp	.LBB20_27
.LBB20_27:                              # %if.end.115
                                        #   in Loop: Header=BB20_3 Depth=1
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movslq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movl	-24(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rsi
	callq	*%rax
	cmpl	$0, %eax
	jle	.LBB20_31
# BB#28:                                # %if.then.127
                                        #   in Loop: Header=BB20_3 Depth=1
	jmp	.LBB20_29
.LBB20_29:                              # %do.body.128
                                        #   in Loop: Header=BB20_3 Depth=1
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -56(%rbp)
	movl	-24(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movslq	-24(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rax, (%rsi,%rcx,8)
	movq	-56(%rbp), %rax
	movl	-24(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rax, (%rsi,%rcx,8)
# BB#30:                                # %do.end.143
                                        #   in Loop: Header=BB20_3 Depth=1
	jmp	.LBB20_31
.LBB20_31:                              # %if.end.144
                                        #   in Loop: Header=BB20_3 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -48(%rbp)
.LBB20_32:                              # %for.cond.150
                                        #   Parent Loop BB20_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB20_33 Depth 3
                                        #       Child Loop BB20_36 Depth 3
	jmp	.LBB20_33
.LBB20_33:                              # %do.body.151
                                        #   Parent Loop BB20_3 Depth=1
                                        #     Parent Loop BB20_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
# BB#34:                                # %do.cond
                                        #   in Loop: Header=BB20_33 Depth=3
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movslq	-28(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movq	-48(%rbp), %rsi
	callq	*%rax
	cmpl	$0, %eax
	jl	.LBB20_33
# BB#35:                                # %do.end.160
                                        #   in Loop: Header=BB20_32 Depth=2
	jmp	.LBB20_36
.LBB20_36:                              # %do.body.161
                                        #   Parent Loop BB20_3 Depth=1
                                        #     Parent Loop BB20_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
# BB#37:                                # %do.cond.163
                                        #   in Loop: Header=BB20_36 Depth=3
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movslq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movq	-48(%rbp), %rsi
	callq	*%rax
	cmpl	$0, %eax
	jg	.LBB20_36
# BB#38:                                # %do.end.171
                                        #   in Loop: Header=BB20_32 Depth=2
	movl	-16(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB20_40
# BB#39:                                # %if.then.174
                                        #   in Loop: Header=BB20_3 Depth=1
	jmp	.LBB20_43
.LBB20_40:                              # %if.end.175
                                        #   in Loop: Header=BB20_32 Depth=2
	jmp	.LBB20_41
.LBB20_41:                              # %do.body.176
                                        #   in Loop: Header=BB20_32 Depth=2
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -56(%rbp)
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movslq	-28(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-56(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#42:                                # %do.end.190
                                        #   in Loop: Header=BB20_32 Depth=2
	jmp	.LBB20_32
.LBB20_43:                              # %for.end.191
                                        #   in Loop: Header=BB20_3 Depth=1
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	-24(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rax, (%rsi,%rcx,8)
	movq	-48(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rax, (%rsi,%rcx,8)
	movl	-32(%rbp), %edx
	addl	$2, %edx
	movl	%edx, -32(%rbp)
	cmpl	$100, -32(%rbp)
	jle	.LBB20_45
# BB#44:                                # %if.then.205
                                        #   in Loop: Header=BB20_3 Depth=1
	xorl	%esi, %esi
	movabsq	$.L.str.10, %rdx
	movl	$100, %ecx
	movl	da_exit_error, %edi
	movb	$0, %al
	callq	error
.LBB20_45:                              # %if.end.206
                                        #   in Loop: Header=BB20_3 Depth=1
	movl	-12(%rbp), %eax
	subl	-28(%rbp), %eax
	addl	$1, %eax
	movl	-16(%rbp), %ecx
	subl	-24(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	.LBB20_47
# BB#46:                                # %if.then.212
                                        #   in Loop: Header=BB20_3 Depth=1
	movl	-12(%rbp), %eax
	movslq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movl	-28(%rbp), %eax
	movl	-32(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rcx
	movq	-40(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB20_48
.LBB20_47:                              # %if.else.219
                                        #   in Loop: Header=BB20_3 Depth=1
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movslq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movl	-24(%rbp), %eax
	movl	-32(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rcx
	movq	-40(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movl	-28(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB20_48:                              # %if.end.226
                                        #   in Loop: Header=BB20_3 Depth=1
	jmp	.LBB20_49
.LBB20_49:                              # %if.end.227
                                        #   in Loop: Header=BB20_3 Depth=1
	jmp	.LBB20_3
.LBB20_50:                              # %for.end.228
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB20_51:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	da_qsort, .Lfunc_end20-da_qsort
	.cfi_endproc

	.globl	da_qsort_with_arg
	.align	16, 0x90
	.type	da_qsort_with_arg,@function
da_qsort_with_arg:                      # @da_qsort_with_arg
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	cmpq	$1, 40(%rdx)
	ja	.LBB21_2
# BB#1:                                 # %if.then
	jmp	.LBB21_51
.LBB21_2:                               # %if.end
	movl	$400, %eax              # imm = 0x190
	movl	%eax, %edi
	callq	xmalloc
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	subq	$1, %rax
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -48(%rbp)
.LBB21_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_5 Depth 2
                                        #       Child Loop BB21_7 Depth 3
                                        #     Child Loop BB21_32 Depth 2
                                        #       Child Loop BB21_33 Depth 3
                                        #       Child Loop BB21_36 Depth 3
	movl	-28(%rbp), %eax
	subl	-40(%rbp), %eax
	cmpl	$37, %eax
	jge	.LBB21_17
# BB#4:                                 # %if.then.6
                                        #   in Loop: Header=BB21_3 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
.LBB21_5:                               # %for.cond.7
                                        #   Parent Loop BB21_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB21_7 Depth 3
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB21_14
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB21_5 Depth=2
	movslq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -64(%rbp)
	movl	-32(%rbp), %edx
	subl	$1, %edx
	movl	%edx, -44(%rbp)
.LBB21_7:                               # %for.cond.11
                                        #   Parent Loop BB21_3 Depth=1
                                        #     Parent Loop BB21_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-44(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jl	.LBB21_12
# BB#8:                                 # %for.body.14
                                        #   in Loop: Header=BB21_7 Depth=3
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movq	-64(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
	cmpl	$0, %eax
	jg	.LBB21_10
# BB#9:                                 # %if.then.21
                                        #   in Loop: Header=BB21_5 Depth=2
	jmp	.LBB21_12
.LBB21_10:                              # %if.end.22
                                        #   in Loop: Header=BB21_7 Depth=3
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	-44(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rax, (%rsi,%rcx,8)
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB21_7 Depth=3
	movl	-44(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB21_7
.LBB21_12:                              # %for.end
                                        #   in Loop: Header=BB21_5 Depth=2
	movq	-64(%rbp), %rax
	movl	-44(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rax, (%rsi,%rdx,8)
# BB#13:                                # %for.inc.34
                                        #   in Loop: Header=BB21_5 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB21_5
.LBB21_14:                              # %for.end.35
                                        #   in Loop: Header=BB21_3 Depth=1
	cmpl	$0, -48(%rbp)
	jne	.LBB21_16
# BB#15:                                # %if.then.38
	jmp	.LBB21_50
.LBB21_16:                              # %if.end.39
                                        #   in Loop: Header=BB21_3 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -48(%rbp)
	movslq	%eax, %rdx
	movq	-56(%rbp), %rsi
	movl	(%rsi,%rdx,4), %eax
	movl	%eax, -28(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -48(%rbp)
	movslq	%eax, %rdx
	movq	-56(%rbp), %rsi
	movl	(%rsi,%rdx,4), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB21_49
.LBB21_17:                              # %if.else
                                        #   in Loop: Header=BB21_3 Depth=1
	movl	$2, %eax
	movl	-40(%rbp), %ecx
	addl	-28(%rbp), %ecx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-76(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -36(%rbp)
# BB#18:                                # %do.body
                                        #   in Loop: Header=BB21_3 Depth=1
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -72(%rbp)
	movl	-40(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movslq	-36(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rax, (%rsi,%rcx,8)
	movq	-72(%rbp), %rax
	movl	-40(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rax, (%rsi,%rcx,8)
# BB#19:                                # %do.end
                                        #   in Loop: Header=BB21_3 Depth=1
	movq	-16(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movslq	-28(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
	cmpl	$0, %eax
	jle	.LBB21_23
# BB#20:                                # %if.then.70
                                        #   in Loop: Header=BB21_3 Depth=1
	jmp	.LBB21_21
.LBB21_21:                              # %do.body.71
                                        #   in Loop: Header=BB21_3 Depth=1
	movslq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -72(%rbp)
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movslq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-72(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#22:                                # %do.end.84
                                        #   in Loop: Header=BB21_3 Depth=1
	jmp	.LBB21_23
.LBB21_23:                              # %if.end.85
                                        #   in Loop: Header=BB21_3 Depth=1
	movq	-16(%rbp), %rax
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	(%rsi,%rdx,8), %rdi
	movslq	-28(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	(%rsi,%rdx,8), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
	cmpl	$0, %eax
	jle	.LBB21_27
# BB#24:                                # %if.then.96
                                        #   in Loop: Header=BB21_3 Depth=1
	jmp	.LBB21_25
.LBB21_25:                              # %do.body.97
                                        #   in Loop: Header=BB21_3 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -72(%rbp)
	movslq	-28(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rcx, (%rsi,%rdx,8)
	movq	-72(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rcx, (%rsi,%rdx,8)
# BB#26:                                # %do.end.112
                                        #   in Loop: Header=BB21_3 Depth=1
	jmp	.LBB21_27
.LBB21_27:                              # %if.end.113
                                        #   in Loop: Header=BB21_3 Depth=1
	movq	-16(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movl	-40(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
	cmpl	$0, %eax
	jle	.LBB21_31
# BB#28:                                # %if.then.124
                                        #   in Loop: Header=BB21_3 Depth=1
	jmp	.LBB21_29
.LBB21_29:                              # %do.body.125
                                        #   in Loop: Header=BB21_3 Depth=1
	movslq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -72(%rbp)
	movl	-40(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movslq	-40(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rax, (%rsi,%rcx,8)
	movq	-72(%rbp), %rax
	movl	-40(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rax, (%rsi,%rcx,8)
# BB#30:                                # %do.end.140
                                        #   in Loop: Header=BB21_3 Depth=1
	jmp	.LBB21_31
.LBB21_31:                              # %if.end.141
                                        #   in Loop: Header=BB21_3 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -64(%rbp)
.LBB21_32:                              # %for.cond.147
                                        #   Parent Loop BB21_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB21_33 Depth 3
                                        #       Child Loop BB21_36 Depth 3
	jmp	.LBB21_33
.LBB21_33:                              # %do.body.148
                                        #   Parent Loop BB21_3 Depth=1
                                        #     Parent Loop BB21_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
# BB#34:                                # %do.cond
                                        #   in Loop: Header=BB21_33 Depth=3
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movq	-64(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
	cmpl	$0, %eax
	jl	.LBB21_33
# BB#35:                                # %do.end.156
                                        #   in Loop: Header=BB21_32 Depth=2
	jmp	.LBB21_36
.LBB21_36:                              # %do.body.157
                                        #   Parent Loop BB21_3 Depth=1
                                        #     Parent Loop BB21_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-32(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -32(%rbp)
# BB#37:                                # %do.cond.159
                                        #   in Loop: Header=BB21_36 Depth=3
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movq	-64(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
	cmpl	$0, %eax
	jg	.LBB21_36
# BB#38:                                # %do.end.166
                                        #   in Loop: Header=BB21_32 Depth=2
	movl	-32(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB21_40
# BB#39:                                # %if.then.169
                                        #   in Loop: Header=BB21_3 Depth=1
	jmp	.LBB21_43
.LBB21_40:                              # %if.end.170
                                        #   in Loop: Header=BB21_32 Depth=2
	jmp	.LBB21_41
.LBB21_41:                              # %do.body.171
                                        #   in Loop: Header=BB21_32 Depth=2
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -72(%rbp)
	movslq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movslq	-44(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-72(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#42:                                # %do.end.185
                                        #   in Loop: Header=BB21_32 Depth=2
	jmp	.LBB21_32
.LBB21_43:                              # %for.end.186
                                        #   in Loop: Header=BB21_3 Depth=1
	movslq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movl	-40(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rax, (%rsi,%rcx,8)
	movq	-64(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rax, (%rsi,%rcx,8)
	movl	-48(%rbp), %edx
	addl	$2, %edx
	movl	%edx, -48(%rbp)
	cmpl	$100, -48(%rbp)
	jle	.LBB21_45
# BB#44:                                # %if.then.200
                                        #   in Loop: Header=BB21_3 Depth=1
	xorl	%esi, %esi
	movabsq	$.L.str.10, %rdx
	movl	$100, %ecx
	movl	da_exit_error, %edi
	movb	$0, %al
	callq	error
.LBB21_45:                              # %if.end.201
                                        #   in Loop: Header=BB21_3 Depth=1
	movl	-28(%rbp), %eax
	subl	-44(%rbp), %eax
	addl	$1, %eax
	movl	-32(%rbp), %ecx
	subl	-40(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	.LBB21_47
# BB#46:                                # %if.then.207
                                        #   in Loop: Header=BB21_3 Depth=1
	movl	-28(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movl	-44(%rbp), %eax
	movl	-48(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rcx
	movq	-56(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movl	-32(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB21_48
.LBB21_47:                              # %if.else.214
                                        #   in Loop: Header=BB21_3 Depth=1
	movl	-32(%rbp), %eax
	subl	$1, %eax
	movslq	-48(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movl	-40(%rbp), %eax
	movl	-48(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rcx
	movq	-56(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movl	-44(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB21_48:                              # %if.end.221
                                        #   in Loop: Header=BB21_3 Depth=1
	jmp	.LBB21_49
.LBB21_49:                              # %if.end.222
                                        #   in Loop: Header=BB21_3 Depth=1
	jmp	.LBB21_3
.LBB21_50:                              # %for.end.223
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB21_51:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	da_qsort_with_arg, .Lfunc_end21-da_qsort_with_arg
	.cfi_endproc

	.globl	da_unique
	.align	16, 0x90
	.type	da_unique,@function
da_unique:                              # @da_unique
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$1, -24(%rbp)
.LBB22_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB22_6
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	-24(%rbp), %rcx
	subq	$1, %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rsi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB22_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	da_remove_at
	jmp	.LBB22_5
.LBB22_4:                               # %if.else
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
.LBB22_5:                               # %if.end
                                        #   in Loop: Header=BB22_1 Depth=1
	jmp	.LBB22_1
.LBB22_6:                               # %while.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	da_unique, .Lfunc_end22-da_unique
	.cfi_endproc

	.globl	da_merge
	.align	16, 0x90
	.type	da_merge,@function
da_merge:                               # @da_merge
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
.LBB23_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_5 Depth 2
                                        #     Child Loop BB23_12 Depth 2
                                        #     Child Loop BB23_27 Depth 2
	movb	$1, %al
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	cmpq	40(%rdx), %rcx
	movb	%al, -49(%rbp)          # 1-byte Spill
	jne	.LBB23_3
# BB#2:                                 # %lor.rhs
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	40(%rcx), %rax
	setne	%dl
	movb	%dl, -49(%rbp)          # 1-byte Spill
.LBB23_3:                               # %lor.end
                                        #   in Loop: Header=BB23_1 Depth=1
	movb	-49(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB23_4
	jmp	.LBB23_34
.LBB23_4:                               # %while.body
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_5
.LBB23_5:                               # %while.cond.3
                                        #   Parent Loop BB23_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rsi
	cmpq	40(%rsi), %rdx
	movb	%cl, -50(%rbp)          # 1-byte Spill
	jae	.LBB23_9
# BB#6:                                 # %land.rhs
                                        #   in Loop: Header=BB23_5 Depth=2
	movb	$1, %al
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdx
	cmpq	40(%rdx), %rcx
	movb	%al, -51(%rbp)          # 1-byte Spill
	je	.LBB23_8
# BB#7:                                 # %lor.rhs.8
                                        #   in Loop: Header=BB23_5 Depth=2
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rsi
	callq	*%rax
	cmpl	$0, %eax
	setl	%r8b
	movb	%r8b, -51(%rbp)         # 1-byte Spill
.LBB23_8:                               # %lor.end.13
                                        #   in Loop: Header=BB23_5 Depth=2
	movb	-51(%rbp), %al          # 1-byte Reload
	movb	%al, -50(%rbp)          # 1-byte Spill
.LBB23_9:                               # %land.end
                                        #   in Loop: Header=BB23_5 Depth=2
	movb	-50(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB23_10
	jmp	.LBB23_11
.LBB23_10:                              # %while.body.14
                                        #   in Loop: Header=BB23_5 Depth=2
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB23_5
.LBB23_11:                              # %while.end
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_12
.LBB23_12:                              # %while.cond.15
                                        #   Parent Loop BB23_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rsi
	cmpq	40(%rsi), %rdx
	movb	%cl, -52(%rbp)          # 1-byte Spill
	jae	.LBB23_15
# BB#13:                                # %land.lhs.true
                                        #   in Loop: Header=BB23_12 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rsi
	cmpq	40(%rsi), %rdx
	movb	%cl, -52(%rbp)          # 1-byte Spill
	jae	.LBB23_15
# BB#14:                                # %land.rhs.20
                                        #   in Loop: Header=BB23_12 Depth=2
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rsi
	callq	*%rax
	cmpl	$0, %eax
	sete	%r8b
	movb	%r8b, -52(%rbp)         # 1-byte Spill
.LBB23_15:                              # %land.end.28
                                        #   in Loop: Header=BB23_12 Depth=2
	movb	-52(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB23_16
	jmp	.LBB23_26
.LBB23_16:                              # %while.body.29
                                        #   in Loop: Header=BB23_12 Depth=2
	cmpl	$0, -28(%rbp)
	jne	.LBB23_21
# BB#17:                                # %if.then
                                        #   in Loop: Header=BB23_12 Depth=2
	cmpq	$0, -24(%rbp)
	je	.LBB23_19
# BB#18:                                # %if.then.31
                                        #   in Loop: Header=BB23_12 Depth=2
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	da_remove_at
	jmp	.LBB23_20
.LBB23_19:                              # %if.else
                                        #   in Loop: Header=BB23_12 Depth=2
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
.LBB23_20:                              # %if.end
                                        #   in Loop: Header=BB23_12 Depth=2
	jmp	.LBB23_25
.LBB23_21:                              # %if.else.33
                                        #   in Loop: Header=BB23_12 Depth=2
	cmpq	$0, -24(%rbp)
	je	.LBB23_23
# BB#22:                                # %if.then.35
                                        #   in Loop: Header=BB23_12 Depth=2
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	da_remove_at
	jmp	.LBB23_24
.LBB23_23:                              # %if.else.36
                                        #   in Loop: Header=BB23_12 Depth=2
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
.LBB23_24:                              # %if.end.38
                                        #   in Loop: Header=BB23_12 Depth=2
	jmp	.LBB23_25
.LBB23_25:                              # %if.end.39
                                        #   in Loop: Header=BB23_12 Depth=2
	jmp	.LBB23_12
.LBB23_26:                              # %while.end.40
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_27
.LBB23_27:                              # %while.cond.41
                                        #   Parent Loop BB23_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rsi
	cmpq	40(%rsi), %rdx
	movb	%cl, -53(%rbp)          # 1-byte Spill
	jae	.LBB23_31
# BB#28:                                # %land.rhs.44
                                        #   in Loop: Header=BB23_27 Depth=2
	movb	$1, %al
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	cmpq	40(%rdx), %rcx
	movb	%al, -54(%rbp)          # 1-byte Spill
	je	.LBB23_30
# BB#29:                                # %lor.rhs.47
                                        #   in Loop: Header=BB23_27 Depth=2
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rsi
	callq	*%rax
	cmpl	$0, %eax
	setge	%r8b
	movb	%r8b, -54(%rbp)         # 1-byte Spill
.LBB23_30:                              # %lor.end.55
                                        #   in Loop: Header=BB23_27 Depth=2
	movb	-54(%rbp), %al          # 1-byte Reload
	movb	%al, -53(%rbp)          # 1-byte Spill
.LBB23_31:                              # %land.end.56
                                        #   in Loop: Header=BB23_27 Depth=2
	movb	-53(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB23_32
	jmp	.LBB23_33
.LBB23_32:                              # %while.body.57
                                        #   in Loop: Header=BB23_27 Depth=2
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rsi
	movq	-40(%rbp), %rdx
	callq	da_insert_at
	jmp	.LBB23_27
.LBB23_33:                              # %while.end.61
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_1
.LBB23_34:                              # %while.end.62
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	da_merge, .Lfunc_end23-da_merge
	.cfi_endproc

	.globl	da_self_print
	.align	16, 0x90
	.type	da_self_print,@function
da_self_print:                          # @da_self_print
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$.L.str.2, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movq	-8(%rbp), %rdx
	cmpq	$0, 56(%rdx)
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jne	.LBB24_2
# BB#1:                                 # %if.then
	callq	abort
.LBB24_2:                               # %if.end
	movq	$0, -24(%rbp)
.LBB24_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB24_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB24_3 Depth=1
	movabsq	$.L.str.11, %rsi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movq	-8(%rbp), %rdx
	movq	56(%rdx), %rdx
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	(%rdi,%rsi,8), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	*%rdx
	movabsq	$.L.str.12, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -44(%rbp)         # 4-byte Spill
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB24_3 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB24_3
.LBB24_6:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	da_self_print, .Lfunc_end24-da_self_print
	.cfi_endproc

	.globl	da_map
	.align	16, 0x90
	.type	da_map,@function
da_map:                                 # @da_map
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
.LBB25_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB25_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	*%rax
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB25_1
.LBB25_4:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	da_map, .Lfunc_end25-da_map
	.cfi_endproc

	.globl	da_maparg
	.align	16, 0x90
	.type	da_maparg,@function
da_maparg:                              # @da_maparg
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
.LBB26_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB26_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB26_1
.LBB26_4:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	da_maparg, .Lfunc_end26-da_maparg
	.cfi_endproc

	.globl	da_str_cmp
	.align	16, 0x90
	.type	da_str_cmp,@function
da_str_cmp:                             # @da_str_cmp
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	strcmp
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	da_str_cmp, .Lfunc_end27-da_str_cmp
	.cfi_endproc

	.globl	da_str_print
	.align	16, 0x90
	.type	da_str_print,@function
da_str_print:                           # @da_str_print
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
	movl	%eax, -20(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	da_str_print, .Lfunc_end28-da_str_print
	.cfi_endproc

	.globl	da_str_printnl
	.align	16, 0x90
	.type	da_str_printnl,@function
da_str_printnl:                         # @da_str_printnl
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movl	%eax, -24(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	da_str_printnl, .Lfunc_end29-da_str_printnl
	.cfi_endproc

	.type	da_exit_error,@object   # @da_exit_error
	.data
	.globl	da_exit_error
	.align	4
da_exit_error:
	.long	1                       # 0x1
	.size	da_exit_error, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"invalid size for dynamic array `%s': %d"
	.size	.L.str, 40

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"invalid increment for dynamic array `%s': %d"
	.size	.L.str.1, 45

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Dynamic array `%s':\n"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"\tload: %d/%d (%2.1f%%)\n"
	.size	.L.str.3, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"[const]"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"+="
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"*="
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\toriginal size: %d, growth: %s %d\n"
	.size	.L.str.7, 35

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"can't insert at %d in darray %s [0,%d]\n"
	.size	.L.str.8, 40

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"can't remove at %d in darray %s [0,%d]\n"
	.size	.L.str.9, 40

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"da_qsort: QSORT_STACK too small (%d)"
	.size	.L.str.10, 37

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"[%2d] = "
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"\n"
	.size	.L.str.12, 2


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
