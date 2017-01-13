	.text
	.file	"gdevlprn.bc"
	.globl	lprn_get_params
	.align	16, 0x90
	.type	lprn_get_params,@function
lprn_get_params:                        # @lprn_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	gdev_prn_get_params
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB0_2
# BB#1:                                 # %if.end
	leaq	18484(%r15), %rdx
	movl	$.L.str, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	leaq	18488(%r15), %rdx
	movl	$.L.str.1, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	leaq	18492(%r15), %rdx
	movl	$.L.str.2, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	leaq	18496(%r15), %rdx
	movl	$.L.str.3, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	leaq	18508(%r15), %rdx
	movl	$.L.str.4, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	leaq	18544(%r15), %rdx
	movl	$.L.str.5, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	leaq	18548(%r15), %rdx
	movl	$.L.str.6, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	addq	$18568, %r15            # imm = 0x4888
	movl	$.L.str.7, %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	param_write_bool
	testl	%eax, %eax
	cmovsl	%eax, %ebx
.LBB0_2:                                # %cleanup
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	lprn_get_params, .Lfunc_end0-lprn_get_params
	.cfi_endproc

	.globl	lprn_put_params
	.align	16, 0x90
	.type	lprn_put_params,@function
lprn_put_params:                        # @lprn_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp8:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp10:
	.cfi_def_cfa_offset 80
.Ltmp11:
	.cfi_offset %rbx, -40
.Ltmp12:
	.cfi_offset %r14, -32
.Ltmp13:
	.cfi_offset %r15, -24
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	18484(%r14), %eax
	movl	%eax, 36(%rsp)
	movl	18488(%r14), %eax
	movl	%eax, 32(%rsp)
	movl	18492(%r14), %eax
	movl	%eax, 28(%rsp)
	movl	18496(%r14), %eax
	movl	%eax, 24(%rsp)
	movl	18508(%r14), %eax
	movl	%eax, 20(%rsp)
	movl	18544(%r14), %eax
	movl	%eax, 16(%rsp)
	movl	18548(%r14), %eax
	movl	%eax, 12(%rsp)
	movl	18568(%r14), %eax
	movl	%eax, 8(%rsp)
	leaq	36(%rsp), %rdx
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	xorl	%r15d, %r15d
	testl	%ebp, %ebp
	jns	.LBB1_2
# BB#1:                                 # %if.then
	movq	(%rbx), %rax
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB1_2:                                # %if.end
	leaq	32(%rsp), %rdx
	movl	$.L.str.1, %esi
	movq	%rbx, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB1_4
# BB#3:                                 # %if.then.10
	movq	(%rbx), %rax
	movl	$.L.str.1, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB1_4:                                # %if.end.14
	leaq	28(%rsp), %rdx
	movl	$.L.str.2, %esi
	movq	%rbx, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB1_6
# BB#5:                                 # %if.then.17
	movq	(%rbx), %rax
	movl	$.L.str.2, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB1_6:                                # %if.end.21
	leaq	24(%rsp), %rdx
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB1_8
# BB#7:                                 # %if.then.24
	movq	(%rbx), %rax
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB1_8:                                # %if.end.28
	leaq	16(%rsp), %rdx
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB1_12
# BB#9:                                 # %if.end.28
	testl	%ebp, %ebp
	jne	.LBB1_11
# BB#10:                                # %sw.bb
	cmpl	$0, 16(%rsp)
	jns	.LBB1_12
.LBB1_11:                               # %bwidthe
	movq	(%rbx), %rax
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB1_12:                               # %sw.epilog
	leaq	20(%rsp), %rdx
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB1_16
# BB#13:                                # %sw.epilog
	testl	%ebp, %ebp
	jne	.LBB1_15
# BB#14:                                # %sw.bb.37
	cmpl	$0, 20(%rsp)
	jns	.LBB1_16
.LBB1_15:                               # %crowe
	movq	(%rbx), %rax
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB1_16:                               # %sw.epilog.46
	leaq	12(%rsp), %rdx
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB1_20
# BB#17:                                # %sw.epilog.46
	testl	%ebp, %ebp
	jne	.LBB1_19
# BB#18:                                # %sw.bb.48
	cmpl	$0, 12(%rsp)
	jns	.LBB1_20
.LBB1_19:                               # %bheighte
	movq	(%rbx), %rax
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB1_20:                               # %sw.epilog.57
	leaq	8(%rsp), %rdx
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_21
# BB#22:                                # %if.end.64
	testl	%r15d, %r15d
	js	.LBB1_25
# BB#23:                                # %if.end.67
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gdev_prn_put_params
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB1_25
# BB#24:                                # %if.end.71
	movl	36(%rsp), %eax
	movl	%eax, 18484(%r14)
	movl	32(%rsp), %eax
	movl	%eax, 18488(%r14)
	movl	28(%rsp), %eax
	movl	%eax, 18492(%r14)
	movl	24(%rsp), %eax
	movl	%eax, 18496(%r14)
	movl	20(%rsp), %eax
	movl	%eax, 18508(%r14)
	movl	16(%rsp), %eax
	movl	%eax, 18544(%r14)
	movl	12(%rsp), %eax
	movl	%eax, 18548(%r14)
	movl	8(%rsp), %eax
	movl	%eax, 18568(%r14)
	xorl	%r15d, %r15d
	jmp	.LBB1_25
.LBB1_21:                               # %if.end.64.thread
	movq	(%rbx), %rax
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB1_25:                               # %cleanup
	movl	%r15d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	lprn_put_params, .Lfunc_end1-lprn_put_params
	.cfi_endproc

	.globl	lprn_print_image
	.align	16, 0x90
	.type	lprn_print_image,@function
lprn_print_image:                       # @lprn_print_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp17:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp18:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp19:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp21:
	.cfi_def_cfa_offset 160
.Ltmp22:
	.cfi_offset %rbx, -56
.Ltmp23:
	.cfi_offset %r12, -48
.Ltmp24:
	.cfi_offset %r13, -40
.Ltmp25:
	.cfi_offset %r14, -32
.Ltmp26:
	.cfi_offset %r15, -24
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsi, 80(%rsp)          # 8-byte Spill
	movq	%rdi, %r12
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %r15d
	movq	%r15, 40(%rsp)          # 8-byte Spill
	movl	18544(%r12), %ecx
	leal	-1(%r15,%rcx), %eax
	cltd
	idivl	%ecx
	movl	%eax, %r13d
	movq	%r13, 32(%rsp)          # 8-byte Spill
	movl	836(%r12), %eax
	movl	18548(%r12), %ecx
	leal	-1(%rax,%rcx), %eax
	cltd
	idivl	%ecx
	movl	%eax, 56(%rsp)          # 4-byte Spill
	movl	18508(%r12), %ebp
	movl	%ebp, %eax
	cltd
	idivl	%ecx
	subl	%edx, %ebp
	movl	%ebp, 52(%rsp)          # 4-byte Spill
	movq	24(%r12), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.8, %ecx
	movl	%r15d, %esi
	movl	%ebp, %edx
	callq	*88(%rdi)
	movq	%rax, 18512(%r12)
	movl	$-25, %r14d
	testq	%rax, %rax
	je	.LBB2_55
# BB#1:                                 # %if.end
	movq	24(%r12), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.9, %ecx
	movl	%r15d, %esi
	movl	%ebp, %edx
	callq	*88(%rdi)
	movq	%rax, 18520(%r12)
	testq	%rax, %rax
	je	.LBB2_55
# BB#2:                                 # %if.end.25
	movq	24(%r12), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$8, %esi
	movl	$.L.str.10, %ecx
	movl	%r13d, %edx
	callq	*88(%rdi)
	movq	%rax, 18552(%r12)
	testq	%rax, %rax
	je	.LBB2_55
# BB#3:                                 # %if.end.37
	movq	24(%r12), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$24, %esi
	movl	$.L.str.11, %ecx
	movl	%r13d, %edx
	callq	*88(%rdi)
	testq	%rax, %rax
	je	.LBB2_55
# BB#4:                                 # %for.cond.preheader
	movq	%r15, %rbx
	xorl	%ecx, %ecx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	testl	%r13d, %r13d
	movl	$0, %ecx
	jle	.LBB2_19
# BB#5:                                 # %for.body.preheader
	leal	-1(%r13), %r8d
	xorl	%ecx, %ecx
	testb	$3, %r13b
	je	.LBB2_8
# BB#6:                                 # %for.body.prol.preheader
	movl	%r13d, %edx
	andl	$3, %edx
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB2_7:                                # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	18552(%r12), %rsi
	movq	$0, (%rsi,%rcx,8)
	incq	%rcx
	cmpl	%ecx, %edx
	jne	.LBB2_7
.LBB2_8:                                # %for.body.preheader.split
	cmpl	$3, %r8d
	jb	.LBB2_11
# BB#9:                                 # %for.body.preheader.split.split
	movl	%r13d, %edx
	.align	16, 0x90
.LBB2_10:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	18552(%r12), %rsi
	movq	$0, (%rsi,%rcx,8)
	movq	18552(%r12), %rsi
	movq	$0, 8(%rsi,%rcx,8)
	movq	18552(%r12), %rsi
	movq	$0, 16(%rsi,%rcx,8)
	movq	18552(%r12), %rsi
	movq	$0, 24(%rsi,%rcx,8)
	addq	$4, %rcx
	cmpl	%ecx, %edx
	jne	.LBB2_10
.LBB2_11:                               # %for.cond.51.preheader
	xorl	%ecx, %ecx
	cmpl	$2, %r13d
	jl	.LBB2_19
# BB#12:                                # %for.body.54.lr.ph
	leal	-2(%r13), %ecx
	xorl	%edx, %edx
	testb	$3, %r8b
	je	.LBB2_15
# BB#13:                                # %for.body.54.prol.preheader
	leaq	24(%rax), %rsi
	movl	%r8d, %edi
	andl	$3, %edi
	xorl	%edx, %edx
	.align	16, 0x90
.LBB2_14:                               # %for.body.54.prol
                                        # =>This Inner Loop Header: Depth=1
	incq	%rdx
	movq	%rsi, -24(%rsi)
	addq	$24, %rsi
	cmpl	%edx, %edi
	jne	.LBB2_14
.LBB2_15:                               # %for.body.54.lr.ph.split
	cmpl	$3, %ecx
	jb	.LBB2_18
# BB#16:                                # %for.body.54.lr.ph.split.split
	movl	%r8d, %ecx
	subl	%edx, %ecx
	leaq	(%rdx,%rdx,2), %rdx
	leaq	96(%rax,%rdx,8), %rdx
	.align	16, 0x90
.LBB2_17:                               # %for.body.54
                                        # =>This Inner Loop Header: Depth=1
	leaq	-72(%rdx), %rsi
	movq	%rsi, -96(%rdx)
	leaq	-48(%rdx), %rsi
	movq	%rsi, -72(%rdx)
	leaq	-24(%rdx), %rsi
	movq	%rsi, -48(%rdx)
	movq	%rdx, -24(%rdx)
	addq	$96, %rdx
	addl	$-4, %ecx
	jne	.LBB2_17
.LBB2_18:                               # %for.cond.51.for.end.62_crit_edge
	movslq	%r8d, %rcx
.LBB2_19:                               # %for.end.62
	leaq	(%rcx,%rcx,2), %rcx
	movq	$0, (%rax,%rcx,8)
	movq	%rax, 18560(%r12)
	movq	%rax, 8(%rsp)           # 8-byte Spill
	cmpl	$0, 56(%rsp)            # 4-byte Folded Reload
	movl	%ebp, 52(%rsp)          # 4-byte Spill
	jle	.LBB2_50
# BB#20:                                # %for.body.69.preheader
	movl	%r13d, %r15d
	movq	%r15, 16(%rsp)          # 8-byte Spill
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	.align	16, 0x90
.LBB2_21:                               # %for.body.69
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_26 Depth 2
                                        #     Child Loop BB2_35 Depth 2
                                        #       Child Loop BB2_37 Depth 3
                                        #         Child Loop BB2_41 Depth 4
	movl	18548(%r12), %r14d
	leal	(%r14,%rdx), %eax
	cmpl	%ebp, %eax
	jle	.LBB2_22
# BB#23:                                # %if.then.73
                                        #   in Loop: Header=BB2_21 Depth=1
	testl	%r13d, %r13d
	jle	.LBB2_24
# BB#25:                                #   in Loop: Header=BB2_21 Depth=1
	movl	%esi, 60(%rsp)          # 4-byte Spill
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movq	64(%rsp), %rax          # 8-byte Reload
	addl	%eax, %r14d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB2_26:                               # %for.body.78
                                        #   Parent Loop BB2_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	18552(%r12), %rax
	movq	(%rax,%rbp,8), %rdx
	testq	%rdx, %rdx
	je	.LBB2_29
# BB#27:                                # %land.lhs.true
                                        #   in Loop: Header=BB2_26 Depth=2
	cmpl	%r14d, 12(%rdx)
	jge	.LBB2_29
# BB#28:                                # %if.then.85
                                        #   in Loop: Header=BB2_26 Depth=2
	movq	%r12, %rdi
	movq	80(%rsp), %rsi          # 8-byte Reload
	callq	lprn_bubble_flush
.LBB2_29:                               # %for.inc.87
                                        #   in Loop: Header=BB2_26 Depth=2
	incq	%rbp
	cmpl	%ebp, %r15d
	jne	.LBB2_26
# BB#30:                                # %for.cond.76.for.end.89_crit_edge
                                        #   in Loop: Header=BB2_21 Depth=1
	movl	18548(%r12), %r14d
	movl	52(%rsp), %ebp          # 4-byte Reload
	movq	72(%rsp), %rdx          # 8-byte Reload
	jmp	.LBB2_31
	.align	16, 0x90
.LBB2_22:                               #   in Loop: Header=BB2_21 Depth=1
	movl	%esi, 60(%rsp)          # 4-byte Spill
	movq	64(%rsp), %rax          # 8-byte Reload
	jmp	.LBB2_32
.LBB2_24:                               #   in Loop: Header=BB2_21 Depth=1
	movl	%esi, 60(%rsp)          # 4-byte Spill
.LBB2_31:                               # %for.end.89
                                        #   in Loop: Header=BB2_21 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	subl	%r14d, %edx
	leal	(%rax,%r14), %eax
.LBB2_32:                               # %if.end.94
                                        #   in Loop: Header=BB2_21 Depth=1
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leal	(%rdx,%rax), %ecx
	movl	%ecx, %eax
	movq	%rdx, %r15
	cltd
	idivl	%ebp
	imull	%ebx, %edx
	movslq	%edx, %rdx
	addq	18512(%r12), %rdx
	imull	%ebx, %r14d
	movq	%r12, %rdi
	movl	%ecx, %esi
	movl	%r14d, %ecx
	callq	gdev_prn_copy_scan_lines
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB2_55
# BB#33:                                # %if.end.103
                                        #   in Loop: Header=BB2_21 Depth=1
	movq	%r14, 24(%rsp)          # 8-byte Spill
	addl	18548(%r12), %r15d
	movq	%r15, 72(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	gx_device_raster
	movl	18544(%r12), %ecx
	leal	-1(%rax,%rcx), %eax
	cltd
	idivl	%ecx
	movl	%eax, 96(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	jle	.LBB2_49
# BB#34:                                # %for.body.lr.ph.i
                                        #   in Loop: Header=BB2_21 Depth=1
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	64(%rsp), %rcx          # 8-byte Reload
	leal	(%rax,%rcx), %eax
	movl	%eax, 92(%rsp)          # 4-byte Spill
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
                                        # implicit-def: EAX
	movl	%eax, 100(%rsp)         # 4-byte Spill
	.align	16, 0x90
.LBB2_35:                               # %for.body.i
                                        #   Parent Loop BB2_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_37 Depth 3
                                        #         Child Loop BB2_41 Depth 4
	movslq	18548(%r12), %r15
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	gx_device_raster
	movl	%eax, %ecx
	testq	%r15, %r15
	jle	.LBB2_42
# BB#36:                                # %for.body.lr.ph.i.i
                                        #   in Loop: Header=BB2_35 Depth=2
	movl	18508(%r12), %esi
	movl	92(%rsp), %edi          # 4-byte Reload
	subl	%r15d, %edi
	movl	%esi, %eax
	cltd
	idivl	18548(%r12)
	subl	%edx, %esi
	movl	%edi, %eax
	cltd
	idivl	%esi
	movslq	18544(%r12), %rax
	movslq	%ecx, %rcx
	movslq	%edx, %rsi
	imulq	%rcx, %rsi
	movl	%eax, %edx
	imull	%r14d, %edx
	movslq	%edx, %rdx
	addq	%rsi, %rdx
	addq	18512(%r12), %rdx
	xorl	%esi, %esi
.LBB2_37:                               # %for.body.i.i
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_35 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_41 Depth 4
	testl	%eax, %eax
	movq	%rdx, %rdi
	movl	$0, %ebx
	jle	.LBB2_38
	.align	16, 0x90
.LBB2_41:                               # %for.body.10.i.i
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_35 Depth=2
                                        #       Parent Loop BB2_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpb	$0, (%rdi)
	movb	$1, %bpl
	jne	.LBB2_42
# BB#40:                                # %for.cond.7.i.i
                                        #   in Loop: Header=BB2_41 Depth=4
	incq	%rbx
	incq	%rdi
	cmpq	%rax, %rbx
	jl	.LBB2_41
.LBB2_38:                               # %for.inc.15.i.i
                                        #   in Loop: Header=BB2_37 Depth=3
	incq	%rsi
	addq	%rcx, %rdx
	cmpq	%r15, %rsi
	jl	.LBB2_37
# BB#39:                                #   in Loop: Header=BB2_35 Depth=2
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB2_42:                               # %lprn_is_black.exit.i
                                        #   in Loop: Header=BB2_35 Depth=2
	testl	%r13d, %r13d
	je	.LBB2_43
# BB#44:                                # %if.else.i
                                        #   in Loop: Header=BB2_35 Depth=2
	testb	%bpl, %bpl
	jne	.LBB2_46
# BB#45:                                # %if.then.6.i
                                        #   in Loop: Header=BB2_35 Depth=2
	movq	%r12, %rdi
	movq	80(%rsp), %rsi          # 8-byte Reload
	movq	64(%rsp), %rdx          # 8-byte Reload
	movq	72(%rsp), %rcx          # 8-byte Reload
	movl	100(%rsp), %r8d         # 4-byte Reload
	movl	%r14d, %r9d
	callq	lprn_rect_add
	xorl	%r13d, %r13d
	jmp	.LBB2_46
	.align	16, 0x90
.LBB2_43:                               # %if.then.i
                                        #   in Loop: Header=BB2_35 Depth=2
	testb	%bpl, %bpl
	movl	100(%rsp), %eax         # 4-byte Reload
	cmovnel	%r14d, %eax
	movl	%eax, 100(%rsp)         # 4-byte Spill
	movzbl	%bpl, %r13d
.LBB2_46:                               # %for.inc.i
                                        #   in Loop: Header=BB2_35 Depth=2
	incl	%r14d
	cmpl	96(%rsp), %r14d         # 4-byte Folded Reload
	jne	.LBB2_35
# BB#47:                                # %for.end.i
                                        #   in Loop: Header=BB2_21 Depth=1
	testl	%r13d, %r13d
	movq	40(%rsp), %rbx          # 8-byte Reload
	movq	32(%rsp), %r13          # 8-byte Reload
	movl	52(%rsp), %ebp          # 4-byte Reload
	je	.LBB2_49
# BB#48:                                # %if.then.10.i
                                        #   in Loop: Header=BB2_21 Depth=1
	movl	96(%rsp), %r9d          # 4-byte Reload
	decl	%r9d
	movq	%r12, %rdi
	movq	80(%rsp), %rsi          # 8-byte Reload
	movq	64(%rsp), %rdx          # 8-byte Reload
	movq	72(%rsp), %rcx          # 8-byte Reload
	movl	100(%rsp), %r8d         # 4-byte Reload
	callq	lprn_rect_add
.LBB2_49:                               # %lprn_process_line.exit
                                        #   in Loop: Header=BB2_21 Depth=1
	movl	60(%rsp), %esi          # 4-byte Reload
	incl	%esi
	cmpl	56(%rsp), %esi          # 4-byte Folded Reload
	movq	16(%rsp), %r15          # 8-byte Reload
	movq	72(%rsp), %rdx          # 8-byte Reload
	jl	.LBB2_21
.LBB2_50:                               # %for.end.108
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	gx_device_raster
	movl	18544(%r12), %ecx
	leal	-1(%rax,%rcx), %eax
	cltd
	idivl	%ecx
	testl	%eax, %eax
	jle	.LBB2_54
# BB#51:                                # %for.body.lr.ph.i.105
	movslq	%eax, %r14
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB2_52:                               # %for.body.i.106
                                        # =>This Inner Loop Header: Depth=1
	movq	18552(%r12), %rax
	movq	(%rax,%rbp,8), %rdx
	testq	%rdx, %rdx
	je	.LBB2_54
# BB#53:                                # %if.then.i.107
                                        #   in Loop: Header=BB2_52 Depth=1
	movq	%r12, %rdi
	movq	80(%rsp), %rsi          # 8-byte Reload
	callq	lprn_bubble_flush
	incq	%rbp
	cmpq	%r14, %rbp
	jl	.LBB2_52
.LBB2_54:                               # %lprn_bubble_flush_all.exit
	movq	24(%r12), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movq	18512(%r12), %rsi
	movl	$.L.str.8, %edx
	callq	*24(%rdi)
	movq	24(%r12), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movq	18520(%r12), %rsi
	movl	$.L.str.9, %edx
	callq	*24(%rdi)
	movq	24(%r12), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movq	18552(%r12), %rsi
	movl	$.L.str.10, %edx
	callq	*24(%rdi)
	movq	24(%r12), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.11, %edx
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	*24(%rdi)
	movq	24(%rsp), %r14          # 8-byte Reload
.LBB2_55:                               # %cleanup
	movl	%r14d, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	lprn_print_image, .Lfunc_end2-lprn_print_image
	.cfi_endproc

	.align	16, 0x90
	.type	lprn_bubble_flush,@function
lprn_bubble_flush:                      # @lprn_bubble_flush
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
	pushq	%r13
.Ltmp31:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp32:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp34:
	.cfi_def_cfa_offset 80
.Ltmp35:
	.cfi_offset %rbx, -56
.Ltmp36:
	.cfi_offset %r12, -48
.Ltmp37:
	.cfi_offset %r13, -40
.Ltmp38:
	.cfi_offset %r14, -32
.Ltmp39:
	.cfi_offset %r15, -24
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %rbx
	movl	18544(%rbx), %ecx
	movl	8(%r14), %eax
	movl	16(%r14), %esi
	cltd
	idivl	%ecx
	movl	%eax, 20(%rsp)          # 4-byte Spill
	leal	-1(%rcx,%rsi), %eax
	cltd
	idivl	%ecx
	movl	%eax, 4(%rsp)           # 4-byte Spill
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %r11d
	movslq	8(%r14), %rax
	leal	(,%rax,8), %ecx
	movl	%ecx, (%rsp)            # 4-byte Spill
	movslq	16(%r14), %r13
	subq	%rax, %r13
	leaq	1(%r13), %r15
	leal	(,%r15,8), %r8d
	movl	12(%r14), %ecx
	movl	20(%r14), %r10d
	movl	%r10d, %r9d
	subl	%ecx, %r9d
	incl	%r9d
	movl	18508(%rbx), %edi
	movl	%edi, %eax
	cltd
	idivl	18548(%rbx)
	cmpl	%ecx, %r10d
	js	.LBB3_8
# BB#1:                                 # %for.body.lr.ph
	subl	%edx, %edi
	.align	16, 0x90
.LBB3_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_4 Depth 2
	leal	(%rbp,%rcx), %eax
	cltd
	idivl	%edi
	testl	%r13d, %r13d
	js	.LBB3_7
# BB#3:                                 # %for.body.39.lr.ph
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	%ebp, %eax
	imull	%r8d, %eax
	movl	%eax, %esi
	sarl	$31, %esi
	shrl	$29, %esi
	addl	%eax, %esi
	sarl	$3, %esi
	imull	%r11d, %edx
	movslq	%edx, %rax
	addq	18512(%rbx), %rax
	movslq	%esi, %rdx
	xorl	%r10d, %r10d
	.align	16, 0x90
.LBB3_4:                                # %for.body.39
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	8(%r14), %rsi
	leaq	(%rsi,%r10), %rsi
	cmpl	$0, 18488(%rbx)
	movb	(%rax,%rsi), %r12b
	je	.LBB3_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB3_4 Depth=2
	notb	%r12b
.LBB3_6:                                # %if.else
                                        #   in Loop: Header=BB3_4 Depth=2
	movq	18520(%rbx), %rsi
	addq	%rdx, %rsi
	movb	%r12b, (%r10,%rsi)
	incq	%r10
	cmpq	%r15, %r10
	jl	.LBB3_4
.LBB3_7:                                # %for.inc.68
                                        #   in Loop: Header=BB3_2 Depth=1
	incl	%ebp
	cmpl	%r9d, %ebp
	jl	.LBB3_2
.LBB3_8:                                # %for.end.70
	movq	%rbx, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	movl	(%rsp), %edx            # 4-byte Reload
	callq	*18472(%rbx)
	movl	20(%rsp), %ecx          # 4-byte Reload
	movl	4(%rsp), %eax           # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB3_11
# BB#9:                                 # %for.body.74.lr.ph
	cltq
	movslq	%ecx, %rcx
	decq	%rcx
	.align	16, 0x90
.LBB3_10:                               # %for.body.74
                                        # =>This Inner Loop Header: Depth=1
	movq	18552(%rbx), %rdx
	movq	$0, 8(%rdx,%rcx,8)
	incq	%rcx
	cmpq	%rax, %rcx
	jl	.LBB3_10
.LBB3_11:                               # %for.end.77
	movq	18560(%rbx), %rax
	movq	%rax, (%r14)
	movq	%r14, 18560(%rbx)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	lprn_bubble_flush, .Lfunc_end3-lprn_bubble_flush
	.cfi_endproc

	.align	16, 0x90
	.type	lprn_rect_add,@function
lprn_rect_add:                          # @lprn_rect_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp42:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp43:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp44:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp45:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp47:
	.cfi_def_cfa_offset 80
.Ltmp48:
	.cfi_offset %rbx, -56
.Ltmp49:
	.cfi_offset %r12, -48
.Ltmp50:
	.cfi_offset %r13, -40
.Ltmp51:
	.cfi_offset %r14, -32
.Ltmp52:
	.cfi_offset %r15, -24
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movl	18544(%rbx), %r10d
	movl	%r10d, %r14d
	imull	%r8d, %r14d
	movl	%r10d, %esi
	imull	%r9d, %esi
	leal	-1(%rsi), %r11d
	leal	(%rcx,%rdx), %r13d
	subl	18548(%rbx), %r13d
	leal	-1(%rcx,%rdx), %ecx
	movslq	%r8d, %r12
	movq	18552(%rbx), %rax
	movq	(%rax,%r12,8), %rdx
	testq	%rdx, %rdx
	je	.LBB4_2
# BB#1:                                 # %land.lhs.true
	leal	-1(%r13), %eax
	cmpl	%eax, 20(%rdx)
	jne	.LBB4_2
# BB#8:                                 # %land.lhs.true.9
	cmpl	%r14d, 8(%rdx)
	jne	.LBB4_2
# BB#9:                                 # %land.lhs.true.12
	cmpl	%r11d, 16(%rdx)
	jne	.LBB4_2
# BB#10:                                # %if.then
	movl	%ecx, 20(%rdx)
	jmp	.LBB4_15
.LBB4_2:                                # %for.cond.preheader
	cmpl	%r9d, %r8d
	jg	.LBB4_12
# BB#3:                                 # %for.body.lr.ph
	movl	%ecx, 8(%rsp)           # 4-byte Spill
	movl	%r11d, 12(%rsp)         # 4-byte Spill
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movslq	%r9d, %r15
	jmp	.LBB4_4
	.align	16, 0x90
.LBB4_7:                                # %for.inc.for.body_crit_edge
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	18552(%rbx), %rax
	movq	8(%rax,%r12,8), %rdx
	incq	%r12
.LBB4_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testq	%rdx, %rdx
	je	.LBB4_6
# BB#5:                                 # %if.then.25
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	lprn_bubble_flush
.LBB4_6:                                # %for.inc
                                        #   in Loop: Header=BB4_4 Depth=1
	cmpq	%r15, %r12
	jl	.LBB4_7
# BB#11:                                # %for.cond.for.end_crit_edge
	movl	18544(%rbx), %r10d
	movq	16(%rsp), %rsi          # 8-byte Reload
	movl	12(%rsp), %r11d         # 4-byte Reload
	movl	8(%rsp), %ecx           # 4-byte Reload
.LBB4_12:                               # %for.end
	movq	18560(%rbx), %rdi
	movq	(%rdi), %rax
	movq	%rax, 18560(%rbx)
	movl	%r14d, 8(%rdi)
	movl	%r11d, 16(%rdi)
	movl	%r13d, 12(%rdi)
	movl	%ecx, 20(%rdi)
	movl	%r14d, %eax
	cltd
	idivl	%r10d
	movl	%eax, %ecx
	leal	-2(%rsi,%r10), %eax
	cltd
	idivl	%r10d
	cmpl	%eax, %ecx
	jg	.LBB4_15
# BB#13:                                # %for.body.lr.ph.i
	cltq
	movslq	%ecx, %rcx
	decq	%rcx
	.align	16, 0x90
.LBB4_14:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	18552(%rbx), %rdx
	movq	%rdi, 8(%rdx,%rcx,8)
	incq	%rcx
	cmpq	%rax, %rcx
	jl	.LBB4_14
.LBB4_15:                               # %if.end.29
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	lprn_rect_add, .Lfunc_end4-lprn_rect_add
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ManualFeed"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"NegativePrint"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Tumble"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"RITOff"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"BlockLine"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"BlockWidth"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"BlockHeight"
	.size	.L.str.6, 12

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"ShowBubble"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"lprn_print_image(ImageBuf)"
	.size	.L.str.8, 27

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"lprn_print_iamge(TmpBuf)"
	.size	.L.str.9, 25

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"lprn_print_image(bubbleTbl)"
	.size	.L.str.10, 28

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"lprn_print_image(bubbleBuffer)"
	.size	.L.str.11, 31


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
