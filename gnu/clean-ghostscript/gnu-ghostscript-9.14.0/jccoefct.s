	.text
	.file	"jccoefct.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.quad	128                     # 0x80
	.quad	256                     # 0x100
.LCPI0_1:
	.quad	384                     # 0x180
	.quad	512                     # 0x200
.LCPI0_2:
	.quad	640                     # 0x280
	.quad	768                     # 0x300
.LCPI0_3:
	.quad	896                     # 0x380
	.quad	1024                    # 0x400
	.text
	.globl	jinit_c_coef_controller
	.align	16, 0x90
	.type	jinit_c_coef_controller,@function
jinit_c_coef_controller:                # @jinit_c_coef_controller
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
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
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	8(%rbx), %rax
	movl	$1, %esi
	movl	$192, %edx
	callq	*(%rax)
	movq	%rax, %r14
	movq	%r14, 520(%rbx)
	movq	$start_pass_coef, (%r14)
	testl	%ebp, %ebp
	je	.LBB0_1
# BB#2:                                 # %if.then
	movq	(%rbx), %rax
	movl	$3, 40(%rax)
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmpq	*(%rax)                 # TAILCALL
.LBB0_1:                                # %if.end
	movq	8(%rbx), %rax
	movl	$1, %esi
	movl	$1280, %edx             # imm = 0x500
	movq	%rbx, %rdi
	callq	*8(%rax)
	movq	%rax, 32(%r14)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqa	.LCPI0_0(%rip), %xmm1   # xmm1 = [128,256]
	paddq	%xmm0, %xmm1
	movdqu	%xmm1, 40(%r14)
	movdqa	.LCPI0_1(%rip), %xmm1   # xmm1 = [384,512]
	paddq	%xmm0, %xmm1
	movdqu	%xmm1, 56(%r14)
	movdqa	.LCPI0_2(%rip), %xmm1   # xmm1 = [640,768]
	paddq	%xmm0, %xmm1
	movdqu	%xmm1, 72(%r14)
	paddq	.LCPI0_3(%rip), %xmm0
	movdqu	%xmm0, 88(%r14)
	addq	$1152, %rax             # imm = 0x480
	movq	%rax, 104(%r14)
	movq	$0, 112(%r14)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	jinit_c_coef_controller, .Lfunc_end0-jinit_c_coef_controller
	.cfi_endproc

	.align	16, 0x90
	.type	start_pass_coef,@function
start_pass_coef:                        # @start_pass_coef
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbx, -16
	movq	520(%rdi), %rbx
	movl	$0, 16(%rbx)
	cmpl	$2, 372(%rdi)
	jl	.LBB1_2
# BB#1:                                 # %if.then.i
	movl	$1, 28(%rbx)
	jmp	.LBB1_6
.LBB1_2:                                # %if.else.i
	cmpl	$1, 368(%rdi)
	movq	376(%rdi), %rax
	jne	.LBB1_3
# BB#4:                                 # %if.else.5.i
	movl	76(%rax), %eax
	jmp	.LBB1_5
.LBB1_3:                                # %if.then.3.i
	movl	12(%rax), %eax
.LBB1_5:                                # %start_iMCU_row.exit
	movl	%eax, 28(%rbx)
.LBB1_6:                                # %start_iMCU_row.exit
	movq	$0, 20(%rbx)
	testl	%esi, %esi
	je	.LBB1_7
# BB#10:                                # %sw.default
	movq	(%rdi), %rax
	movl	$3, 40(%rax)
	popq	%rbx
	jmpq	*(%rax)                 # TAILCALL
.LBB1_7:                                # %sw.bb
	cmpq	$0, 112(%rbx)
	je	.LBB1_9
# BB#8:                                 # %if.then
	movq	(%rdi), %rax
	movl	$3, 40(%rax)
	callq	*(%rax)
.LBB1_9:                                # %sw.epilog
	movq	$compress_data, 8(%rbx)
	popq	%rbx
	retq
.Lfunc_end1:
	.size	start_pass_coef, .Lfunc_end1-start_pass_coef
	.cfi_endproc

	.align	16, 0x90
	.type	compress_data,@function
compress_data:                          # @compress_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp9:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp11:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp12:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp14:
	.cfi_def_cfa_offset 208
.Ltmp15:
	.cfi_offset %rbx, -56
.Ltmp16:
	.cfi_offset %r12, -48
.Ltmp17:
	.cfi_offset %r13, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsi, 112(%rsp)         # 8-byte Spill
	movq	%rdi, %r12
	movq	%r12, 136(%rsp)         # 8-byte Spill
	movq	520(%r12), %r10
	movl	24(%r10), %ecx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movl	28(%r10), %eax
	cmpl	%eax, %ecx
	jge	.LBB2_1
# BB#2:                                 # %for.body.lr.ph
	movl	368(%r12), %ecx
	movl	408(%r12), %edx
	decl	%edx
	movl	%edx, 28(%rsp)          # 4-byte Spill
	decl	%ecx
	movl	%ecx, 144(%rsp)         # 4-byte Spill
	leaq	372(%r12), %r15
	movq	%r15, 16(%rsp)          # 8-byte Spill
	leaq	32(%r10), %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movl	20(%r10), %ebp
	leaq	56(%r10), %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	leaq	40(%r10), %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
.LBB2_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
                                        #       Child Loop BB2_6 Depth 3
                                        #         Child Loop BB2_8 Depth 4
                                        #           Child Loop BB2_26 Depth 5
                                        #           Child Loop BB2_29 Depth 5
                                        #           Child Loop BB2_20 Depth 5
	cmpl	28(%rsp), %ebp          # 4-byte Folded Reload
	ja	.LBB2_38
	.align	16, 0x90
.LBB2_4:                                # %for.cond.6.preheader
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_6 Depth 3
                                        #         Child Loop BB2_8 Depth 4
                                        #           Child Loop BB2_26 Depth 5
                                        #           Child Loop BB2_29 Depth 5
                                        #           Child Loop BB2_20 Depth 5
	movl	%ebp, 24(%rsp)          # 4-byte Spill
	movl	(%r15), %ecx
	testl	%ecx, %ecx
	jle	.LBB2_34
# BB#5:                                 # %for.body.8.lr.ph
                                        #   in Loop: Header=BB2_4 Depth=2
	xorl	%edx, %edx
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB2_6:                                # %for.body.8
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_4 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_8 Depth 4
                                        #           Child Loop BB2_26 Depth 5
                                        #           Child Loop BB2_29 Depth 5
                                        #           Child Loop BB2_20 Depth 5
	movq	376(%r12,%rdx,8), %r14
	leaq	56(%r14), %rsi
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	leaq	72(%r14), %rax
	cmpl	28(%rsp), %ebp          # 4-byte Folded Reload
	cmovbq	%rsi, %rax
	cmpl	$0, 60(%r14)
	jle	.LBB2_33
# BB#7:                                 # %for.body.16.lr.ph
                                        #   in Loop: Header=BB2_6 Depth=3
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movslq	4(%r14), %rcx
	movq	552(%r12), %rdx
	movq	8(%rdx,%rcx,8), %rcx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movslq	(%rax), %r11
	movq	%r11, 64(%rsp)          # 8-byte Spill
	movl	68(%r14), %eax
	imull	%ebp, %eax
	movl	%eax, 124(%rsp)         # 4-byte Spill
	movl	40(%r14), %r8d
	movq	80(%rsp), %rax          # 8-byte Reload
	imull	%eax, %r8d
	leaq	1(%r11), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	xorl	%r13d, %r13d
	jmp	.LBB2_8
.LBB2_19:                               # %for.body.38.lr.ph.split.split
                                        #   in Loop: Header=BB2_8 Depth=4
	movq	48(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rsi,8), %rsi
	.align	16, 0x90
.LBB2_20:                               # %for.body.38
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_4 Depth=2
                                        #       Parent Loop BB2_6 Depth=3
                                        #         Parent Loop BB2_8 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movq	-16(%rsi,%rdx,8), %rax
	movw	(%rax), %ax
	movq	-8(%rsi,%rdx,8), %rdi
	movw	%ax, (%rdi)
	movq	-8(%rsi,%rdx,8), %rax
	movw	(%rax), %ax
	movq	(%rsi,%rdx,8), %rdi
	movw	%ax, (%rdi)
	addq	$2, %rdx
	cmpq	%rcx, %rdx
	jl	.LBB2_20
# BB#21:                                #   in Loop: Header=BB2_8 Depth=4
	movq	%r15, %r10
	jmp	.LBB2_31
.LBB2_23:                               #   in Loop: Header=BB2_8 Depth=4
	movq	%r15, %r10
	movq	64(%rsp), %r11          # 8-byte Reload
	movq	%rbp, %r9
	movl	148(%rsp), %r8d         # 4-byte Reload
	jmp	.LBB2_31
	.align	16, 0x90
.LBB2_8:                                # %for.body.16
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_4 Depth=2
                                        #       Parent Loop BB2_6 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_26 Depth 5
                                        #           Child Loop BB2_29 Depth 5
                                        #           Child Loop BB2_20 Depth 5
	movl	%ebx, %ebp
	movl	144(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, 16(%r10)
	jb	.LBB2_10
# BB#9:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB2_8 Depth=4
	movq	80(%rsp), %rax          # 8-byte Reload
	leal	(%r13,%rax), %eax
	cmpl	76(%r14), %eax
	jge	.LBB2_22
.LBB2_10:                               # %if.then
                                        #   in Loop: Header=BB2_8 Depth=4
	movslq	4(%r14), %rax
	movq	112(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rdx
	movq	%r14, %r12
	movslq	%ebp, %r14
	movq	32(%r10,%r14,8), %rcx
	movl	%r11d, (%rsp)
	movq	136(%rsp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movq	%r11, %rbx
	movl	%r8d, 148(%rsp)         # 4-byte Spill
	movl	124(%rsp), %r9d         # 4-byte Reload
	movq	%r10, %r15
	callq	*128(%rsp)              # 8-byte Folded Reload
	movq	%rbx, %r11
	movl	56(%r12), %ebx
	cmpl	%r11d, %ebx
	jle	.LBB2_11
# BB#13:                                # %if.then.26
                                        #   in Loop: Header=BB2_8 Depth=4
	movq	%r14, 88(%rsp)          # 8-byte Spill
	leal	(%rbp,%r11), %eax
	movq	%rbp, 104(%rsp)         # 8-byte Spill
	cltq
	movq	32(%r15,%rax,8), %rdi
	subl	%r11d, %ebx
	movslq	%ebx, %rdx
	shlq	$7, %rdx
	xorl	%esi, %esi
	movq	%r11, %rbx
	callq	memset
	movq	%rbx, %r11
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %ebx
	cmpl	%ebx, %r11d
	jge	.LBB2_14
# BB#15:                                # %for.body.38.lr.ph
                                        #   in Loop: Header=BB2_8 Depth=4
	movslq	%ebx, %rcx
	movl	%ecx, %eax
	subl	%r11d, %eax
	testb	$1, %al
	movq	%r11, %rdx
	movq	88(%rsp), %rsi          # 8-byte Reload
	je	.LBB2_17
# BB#16:                                # %for.body.38.prol
                                        #   in Loop: Header=BB2_8 Depth=4
	leaq	(%r11,%rsi), %rax
	movq	24(%r15,%rax,8), %rdx
	movw	(%rdx), %dx
	movq	32(%r15,%rax,8), %rax
	movw	%dx, (%rax)
	movq	72(%rsp), %rdx          # 8-byte Reload
.LBB2_17:                               # %for.body.38.lr.ph.split
                                        #   in Loop: Header=BB2_8 Depth=4
	cmpq	72(%rsp), %rcx          # 8-byte Folded Reload
	movq	104(%rsp), %r9          # 8-byte Reload
	movq	%r12, %r14
	movl	148(%rsp), %r8d         # 4-byte Reload
	jne	.LBB2_19
# BB#18:                                #   in Loop: Header=BB2_8 Depth=4
	movq	%r15, %r10
	jmp	.LBB2_31
	.align	16, 0x90
.LBB2_11:                               #   in Loop: Header=BB2_8 Depth=4
	movq	%r15, %r10
	movq	%rbp, %r9
	jmp	.LBB2_12
	.align	16, 0x90
.LBB2_22:                               # %if.else
                                        #   in Loop: Header=BB2_8 Depth=4
	movl	%r8d, 148(%rsp)         # 4-byte Spill
	movslq	%ebp, %r12
	movq	32(%r10,%r12,8), %rdi
	movq	96(%rsp), %rbx          # 8-byte Reload
	movslq	(%rbx), %rdx
	shlq	$7, %rdx
	xorl	%esi, %esi
	movq	%r10, %r15
	callq	memset
	movslq	(%rbx), %rbx
	testq	%rbx, %rbx
	jle	.LBB2_23
# BB#24:                                # %for.body.63.lr.ph
                                        #   in Loop: Header=BB2_8 Depth=4
	leal	-1(%rbp), %eax
	cltq
	movq	32(%r15,%rax,8), %rcx
	leaq	-1(%rbx), %r8
	testb	$3, %bl
	movl	$0, %edx
	movq	%r15, %r10
	movq	%rbp, %r9
	je	.LBB2_27
# BB#25:                                # %for.body.63.prol.preheader
                                        #   in Loop: Header=BB2_8 Depth=4
	movq	56(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%r12,8), %rdi
	movl	%ebx, %eax
	andl	$3, %eax
	xorl	%edx, %edx
	.align	16, 0x90
.LBB2_26:                               # %for.body.63.prol
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_4 Depth=2
                                        #       Parent Loop BB2_6 Depth=3
                                        #         Parent Loop BB2_8 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movw	(%rcx), %si
	movq	(%rdi,%rdx,8), %rbp
	movw	%si, (%rbp)
	incq	%rdx
	cmpq	%rdx, %rax
	jne	.LBB2_26
.LBB2_27:                               # %for.body.63.lr.ph.split
                                        #   in Loop: Header=BB2_8 Depth=4
	cmpq	$3, %r8
	movl	148(%rsp), %r8d         # 4-byte Reload
	jb	.LBB2_30
# BB#28:                                # %for.body.63.lr.ph.split.split
                                        #   in Loop: Header=BB2_8 Depth=4
	movq	40(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%r12,8), %rsi
	.align	16, 0x90
.LBB2_29:                               # %for.body.63
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_4 Depth=2
                                        #       Parent Loop BB2_6 Depth=3
                                        #         Parent Loop BB2_8 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movw	(%rcx), %ax
	movq	-24(%rsi,%rdx,8), %rdi
	movw	%ax, (%rdi)
	movw	(%rcx), %ax
	movq	-16(%rsi,%rdx,8), %rdi
	movw	%ax, (%rdi)
	movw	(%rcx), %ax
	movq	-8(%rsi,%rdx,8), %rdi
	movw	%ax, (%rdi)
	movw	(%rcx), %ax
	movq	(%rsi,%rdx,8), %rdi
	movw	%ax, (%rdi)
	addq	$4, %rdx
	cmpq	%rbx, %rdx
	jl	.LBB2_29
.LBB2_30:                               #   in Loop: Header=BB2_8 Depth=4
	movq	64(%rsp), %r11          # 8-byte Reload
	jmp	.LBB2_31
.LBB2_14:                               #   in Loop: Header=BB2_8 Depth=4
	movq	%r15, %r10
	movq	104(%rsp), %r9          # 8-byte Reload
.LBB2_12:                               # %if.end.79
                                        #   in Loop: Header=BB2_8 Depth=4
	movq	%r12, %r14
	movl	148(%rsp), %r8d         # 4-byte Reload
.LBB2_31:                               # %if.end.79
                                        #   in Loop: Header=BB2_8 Depth=4
	addl	%r9d, %ebx
	addl	40(%r14), %r8d
	incl	%r13d
	cmpl	60(%r14), %r13d
	jl	.LBB2_8
# BB#32:                                # %for.cond.14.for.inc.87_crit_edge
                                        #   in Loop: Header=BB2_6 Depth=3
	movq	16(%rsp), %r15          # 8-byte Reload
	movl	(%r15), %ecx
	movl	24(%rsp), %ebp          # 4-byte Reload
	movq	136(%rsp), %r12         # 8-byte Reload
	movq	32(%rsp), %rdx          # 8-byte Reload
.LBB2_33:                               # %for.inc.87
                                        #   in Loop: Header=BB2_6 Depth=3
	incq	%rdx
	movslq	%ecx, %rax
	cmpq	%rax, %rdx
	jl	.LBB2_6
.LBB2_34:                               # %for.end.89
                                        #   in Loop: Header=BB2_4 Depth=2
	movq	%r10, %rbx
	movq	560(%r12), %rax
	movq	%r12, %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	callq	*8(%rax)
	testl	%eax, %eax
	je	.LBB2_35
# BB#36:                                # %for.inc.96
                                        #   in Loop: Header=BB2_4 Depth=2
	incl	%ebp
	cmpl	28(%rsp), %ebp          # 4-byte Folded Reload
	movq	%rbx, %r10
	jbe	.LBB2_4
# BB#37:                                # %for.cond.3.for.end.98_crit_edge
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	28(%r10), %eax
.LBB2_38:                               # %for.end.98
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	$0, 20(%r10)
	movq	80(%rsp), %rcx          # 8-byte Reload
	incl	%ecx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	cmpl	%eax, %ecx
	jl	.LBB2_3
# BB#39:                                # %for.cond.for.end.102_crit_edge
	movq	520(%r12), %rax
	jmp	.LBB2_40
.LBB2_1:                                # %entry.for.end.102_crit_edge
	leaq	372(%r12), %r15
	movq	%r10, %rax
.LBB2_40:                               # %for.end.102
	incl	16(%r10)
	cmpl	$2, (%r15)
	jl	.LBB2_42
# BB#41:                                # %if.then.i
	movl	$1, 28(%rax)
	jmp	.LBB2_46
.LBB2_35:                               # %if.then.92
	movq	80(%rsp), %rax          # 8-byte Reload
	movl	%eax, 24(%rbx)
	movl	%ebp, 20(%rbx)
	xorl	%eax, %eax
	jmp	.LBB2_47
.LBB2_42:                               # %if.else.i
	movl	368(%r12), %edx
	decl	%edx
	movq	376(%r12), %rcx
	cmpl	%edx, 16(%rax)
	jae	.LBB2_44
# BB#43:                                # %if.then.3.i
	movl	12(%rcx), %ecx
	jmp	.LBB2_45
.LBB2_44:                               # %if.else.5.i
	movl	76(%rcx), %ecx
.LBB2_45:                               # %start_iMCU_row.exit
	movl	%ecx, 28(%rax)
.LBB2_46:                               # %start_iMCU_row.exit
	movq	$0, 20(%rax)
	movl	$1, %eax
.LBB2_47:                               # %cleanup
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	compress_data, .Lfunc_end2-compress_data
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
