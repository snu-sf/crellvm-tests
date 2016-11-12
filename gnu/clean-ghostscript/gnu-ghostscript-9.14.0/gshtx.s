	.text
	.file	"gshtx.bc"
	.globl	gs_ht_build
	.align	16, 0x90
	.type	gs_ht_build,@function
gs_ht_build:                            # @gs_ht_build
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -48
.Ltmp6:
	.cfi_offset %r12, -40
.Ltmp7:
	.cfi_offset %r14, -32
.Ltmp8:
	.cfi_offset %r15, -24
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movl	%esi, %ebp
	movq	%rdi, %r14
	movq	$0, (%r14)
	movl	$-15, %r12d
	testl	%ebp, %ebp
	je	.LBB0_10
# BB#1:                                 # %do.body
	movl	$st_halftone, %esi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movq	%rax, %r15
	movl	$-25, %r12d
	testq	%r15, %r15
	je	.LBB0_10
# BB#2:                                 # %do.body.3
	movq	$1, 8(%r15)
	movq	%rbx, 16(%r15)
	movq	$rc_free_struct_only, 24(%r15)
	movl	$st_ht_component_element, %edx
	movl	$.L.str, %ecx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	*104(%rbx)
	testq	%rax, %rax
	je	.LBB0_3
# BB#4:                                 # %for.body.lr.ph
	movl	$6, (%r15)
	movq	$free_comps, 24(%r15)
	movq	%rax, 32(%r15)
	movl	%ebp, 40(%r15)
	xorl	%ecx, %ecx
	testb	$1, %bpl
	je	.LBB0_6
# BB#5:                                 # %for.body.prol
	movq	$0, (%rax)
	movl	$0, 8(%rax)
	movl	$1, %ecx
.LBB0_6:                                # %for.body.lr.ph.split
	cmpl	$1, %ebp
	je	.LBB0_9
# BB#7:                                 # %for.body.lr.ph.split.split
	leaq	(%rcx,%rcx,4), %rdx
	shlq	$4, %rdx
	leaq	88(%rdx,%rax), %rax
	.align	16, 0x90
.LBB0_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, -88(%rax)
	movl	$0, -84(%rax)
	movl	$0, -80(%rax)
	leal	1(%rcx), %edx
	movl	%edx, -8(%rax)
	movl	$0, -4(%rax)
	movl	$0, (%rax)
	addq	$2, %rcx
	addq	$160, %rax
	cmpl	%ebp, %ecx
	jne	.LBB0_8
.LBB0_9:                                # %for.end
	movq	%r15, (%r14)
	xorl	%r12d, %r12d
	jmp	.LBB0_10
.LBB0_3:                                # %if.then.15
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*24(%rbx)
.LBB0_10:                               # %cleanup
	movl	%r12d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gs_ht_build, .Lfunc_end0-gs_ht_build
	.cfi_endproc

	.align	16, 0x90
	.type	free_comps,@function
free_comps:                             # @free_comps
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp10:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 32
.Ltmp13:
	.cfi_offset %rbx, -32
.Ltmp14:
	.cfi_offset %r14, -24
.Ltmp15:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	32(%r15), %rsi
	callq	*24(%rbx)
	movq	24(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%r15
	jmpq	*%rax                   # TAILCALL
.Lfunc_end1:
	.size	free_comps, .Lfunc_end1-free_comps
	.cfi_endproc

	.globl	gs_ht_set_spot_comp
	.align	16, 0x90
	.type	gs_ht_set_spot_comp,@function
gs_ht_set_spot_comp:                    # @gs_ht_set_spot_comp
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-15, %eax
	cmpl	%esi, 40(%rdi)
	jbe	.LBB2_3
# BB#1:                                 # %if.end
	movslq	%esi, %rax
	movq	32(%rdi), %rsi
	leaq	(%rax,%rax,4), %rdi
	shlq	$4, %rdi
	movl	$-7, %eax
	cmpl	$0, 8(%rsi,%rdi)
	jne	.LBB2_3
# BB#2:                                 # %if.end.5
	leaq	8(%rsi,%rdi), %rax
	movl	$3, (%rax)
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 16(%rsi,%rdi)
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 20(%rsi,%rdi)
	movq	%rdx, 24(%rsi,%rdi)
	movl	%ecx, 40(%rsi,%rdi)
	movq	$gs_mapped_transfer, 48(%rsi,%rdi)
	testq	%r8, %r8
	movl	$null_closure_transfer, %eax
	cmovneq	%r8, %rax
	movq	%rax, 56(%rsi,%rdi)
	movq	%r9, 64(%rsi,%rdi)
	xorl	%eax, %eax
.LBB2_3:                                # %cleanup
	retq
.Lfunc_end2:
	.size	gs_ht_set_spot_comp, .Lfunc_end2-gs_ht_set_spot_comp
	.cfi_endproc

	.align	16, 0x90
	.type	null_closure_transfer,@function
null_closure_transfer:                  # @null_closure_transfer
	.cfi_startproc
# BB#0:                                 # %entry
	cvtsd2ss	%xmm0, %xmm0
	retq
.Lfunc_end3:
	.size	null_closure_transfer, .Lfunc_end3-null_closure_transfer
	.cfi_endproc

	.globl	gs_ht_set_threshold_comp
	.align	16, 0x90
	.type	gs_ht_set_threshold_comp,@function
gs_ht_set_threshold_comp:               # @gs_ht_set_threshold_comp
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-15, %eax
	cmpl	%esi, 40(%rdi)
	jbe	.LBB4_3
# BB#1:                                 # %if.end
	movslq	%esi, %rax
	movq	32(%rdi), %rsi
	leaq	(%rax,%rax,4), %rdi
	shlq	$4, %rdi
	movl	$-7, %eax
	cmpl	$0, 8(%rsi,%rdi)
	jne	.LBB4_3
# BB#2:                                 # %if.end.5
	movq	8(%rsp), %r10
	leaq	8(%rsi,%rdi), %rax
	movl	$4, (%rax)
	movl	%edx, 16(%rsi,%rdi)
	movl	%ecx, 20(%rsi,%rdi)
	movups	(%r8), %xmm0
	movups	%xmm0, 40(%rsi,%rdi)
	movq	$gs_mapped_transfer, 56(%rsi,%rdi)
	testq	%r9, %r9
	movl	$null_closure_transfer, %eax
	cmovneq	%r9, %rax
	movq	%rax, 24(%rsi,%rdi)
	movq	%r10, 32(%rsi,%rdi)
	xorl	%eax, %eax
.LBB4_3:                                # %cleanup
	retq
.Lfunc_end4:
	.size	gs_ht_set_threshold_comp, .Lfunc_end4-gs_ht_set_threshold_comp
	.cfi_endproc

	.globl	gs_ht_reference
	.align	16, 0x90
	.type	gs_ht_reference,@function
gs_ht_reference:                        # @gs_ht_reference
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rdi, %rdi
	je	.LBB5_2
# BB#1:                                 # %do.body.1
	incq	8(%rdi)
.LBB5_2:                                # %do.end.4
	retq
.Lfunc_end5:
	.size	gs_ht_reference, .Lfunc_end5-gs_ht_reference
	.cfi_endproc

	.globl	gs_ht_release
	.align	16, 0x90
	.type	gs_ht_release,@function
gs_ht_release:                          # @gs_ht_release
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	testq	%rax, %rax
	je	.LBB6_2
# BB#1:                                 # %do.end
	decq	8(%rax)
	je	.LBB6_3
.LBB6_2:                                # %do.end.19
	retq
.LBB6_3:                                # %do.end.10
	movq	16(%rax), %rdi
	movq	24(%rax), %rcx
	movl	$.L.str.1, %edx
	movq	%rax, %rsi
	jmpq	*%rcx                   # TAILCALL
.Lfunc_end6:
	.size	gs_ht_release, .Lfunc_end6-gs_ht_release
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4571171282956062736     # double 0.0039215686274509803
.LCPI7_2:
	.quad	4535125924542218256     # double 1.5262515262515263E-5
.LCPI7_3:
	.quad	4674734214187319296     # double 32760
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI7_1:
	.long	1065353216              # float 1
.LCPI7_4:
	.long	0                       # float 0
	.text
	.globl	gs_ht_install
	.align	16, 0x90
	.type	gs_ht_install,@function
gs_ht_install:                          # @gs_ht_install
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp17:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp18:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp19:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp20:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp21:
	.cfi_def_cfa_offset 56
	subq	$696, %rsp              # imm = 0x2B8
.Ltmp22:
	.cfi_def_cfa_offset 752
.Ltmp23:
	.cfi_offset %rbx, -56
.Ltmp24:
	.cfi_offset %r12, -48
.Ltmp25:
	.cfi_offset %r13, -40
.Ltmp26:
	.cfi_offset %r14, -32
.Ltmp27:
	.cfi_offset %r15, -24
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movq	%rbp, 72(%rsp)          # 8-byte Spill
	movl	$-28, %eax
	cmpl	$6, (%rbp)
	jne	.LBB7_42
# BB#1:                                 # %for.cond.preheader.i
	movq	16(%rbp), %r14
	movq	%r14, 56(%rsp)          # 8-byte Spill
	movl	40(%rbp), %r12d
	movslq	%r12d, %rbx
	testl	%ebx, %ebx
	jle	.LBB7_5
# BB#2:                                 # %for.body.lr.ph.i
	movq	32(%rbp), %rsi
	addq	$8, %rsi
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB7_4:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rsi), %edx
	addl	$-3, %edx
	cmpl	$2, %edx
	jae	.LBB7_42
# BB#3:                                 # %for.cond.i
                                        #   in Loop: Header=BB7_4 Depth=1
	incq	%rcx
	addq	$80, %rsi
	cmpq	%rbx, %rcx
	jl	.LBB7_4
.LBB7_5:                                # %if.end
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movl	$st_ht_order_component_element, %edx
	movl	$.L.str.3, %ecx
	movq	%r14, %rdi
	movl	%r12d, %esi
	callq	*104(%r14)
	movq	%rax, %r15
	movl	$-25, %eax
	testq	%r15, %r15
	je	.LBB7_42
# BB#6:                                 # %if.end.i
	movq	$0, 104(%r15)
	testl	%r12d, %r12d
	jle	.LBB7_38
# BB#7:                                 # %for.body.lr.ph.i.54
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	movl	%r12d, 12(%rsp)         # 4-byte Spill
	leaq	80(%r15), %rbx
	movq	%r15, 48(%rsp)          # 8-byte Spill
	xorl	%r12d, %r12d
	movl	$4, %r13d
	.align	16, 0x90
.LBB7_8:                                # %for.body.i.55
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%rbp), %r15
	movl	$st_transfer_map, %esi
	movl	$.L.str.3, %edx
	movq	%r14, %rdi
	callq	*72(%r14)
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB7_9
# BB#14:                                # %for.inc.47.i
                                        #   in Loop: Header=BB7_8 Depth=1
	movq	$gs_mapped_transfer, 24(%rbp)
	movl	$1, %esi
	movq	%r14, %rdi
	callq	gs_next_ids
	movq	%rax, 48(%rbp)
	movq	$0, (%rbx)
	movq	$0, 8(%rbx)
	movq	$0, 16(%rbx)
	movq	%rbp, 24(%rbx)
	movl	(%r15,%r13), %eax
	movl	%eax, 84(%rbx)
	movl	-4(%r15,%r13), %eax
	movl	%eax, 80(%rbx)
	movb	%r12b, 80(%rsp,%r12)
	leaq	1(%r12), %r12
	addq	$168, %rbx
	addq	$80, %r13
	cmpq	64(%rsp), %r12          # 8-byte Folded Reload
	movq	72(%rsp), %rbp          # 8-byte Reload
	jl	.LBB7_8
# BB#15:                                # %for.cond.preheader
	movl	12(%rsp), %r12d         # 4-byte Reload
	testl	%r12d, %r12d
	movq	48(%rsp), %r15          # 8-byte Reload
	jle	.LBB7_38
# BB#16:                                # %for.body.lr.ph
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB7_17:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_23 Depth 2
	movq	32(%rbp), %r13
	movq	%rbp, 72(%rsp)          # 8-byte Spill
	movzbl	80(%rsp,%rbx), %r14d
	imulq	$168, %r14, %r12
	leaq	(%r15,%r12), %rax
	leaq	(%rbx,%rbx,4), %rbp
	shlq	$4, %rbp
	cmpl	$3, 8(%r13,%rbp)
	jne	.LBB7_20
# BB#18:                                # %if.then.i
                                        #   in Loop: Header=BB7_17 Depth=1
	movq	%rax, 48(%rsp)          # 8-byte Spill
	leaq	16(%r13,%rbp), %rdx
	movl	40(%r13,%rbp), %ecx
	leaq	336(%rsp), %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	56(%rsp), %r8           # 8-byte Reload
	callq	gx_ht_process_screen_memory
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB7_34
# BB#19:                                # %if.end.i.64
                                        #   in Loop: Header=BB7_17 Depth=1
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movq	104(%r15,%r12), %rax
	movq	%rax, 568(%rsp)
	movl	$160, %edx
	movq	48(%rsp), %rdi          # 8-byte Reload
	leaq	464(%rsp), %rsi
	callq	memcpy
	movq	%r12, 32(%rsp)          # 8-byte Spill
	movq	104(%r15,%r12), %r12
	jmp	.LBB7_22
	.align	16, 0x90
.LBB7_20:                               # %if.else.i
                                        #   in Loop: Header=BB7_17 Depth=1
	movq	%r14, 16(%rsp)          # 8-byte Spill
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movq	%r12, %r14
	movq	104(%r15,%r14), %r12
	movl	16(%r13,%rbp), %esi
	movw	%si, (%rax)
	movl	$65536, 2(%r15,%r14)    # imm = 0x10000
	movl	20(%r13,%rbp), %edx
	movw	%dx, 6(%r15,%r14)
	movw	$0, 8(%r15,%r14)
	movw	$1, 10(%r15,%r14)
	movl	$256, %ecx              # imm = 0x100
	movq	%rax, %rdi
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movq	%r15, %rbx
	movq	56(%rsp), %r15          # 8-byte Reload
	movq	%r15, %r8
	callq	gx_ht_alloc_threshold_order
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB7_35
# BB#21:                                # %if.end.31.i
                                        #   in Loop: Header=BB7_17 Depth=1
	leaq	104(%rbx,%r14), %r15
	movq	%r14, 32(%rsp)          # 8-byte Spill
	movq	40(%r13,%rbp), %rsi
	movq	48(%rsp), %rdi          # 8-byte Reload
	callq	gx_ht_construct_threshold_order
	movq	%r12, (%r15)
	movq	%rbx, %r15
	movq	16(%rsp), %r14          # 8-byte Reload
.LBB7_22:                               # %if.end.40.i
                                        #   in Loop: Header=BB7_17 Depth=1
	leaq	8(%r13,%rbp), %rax
	cmpl	$3, (%rax)
	leaq	56(%r13,%rbp), %rax
	leaq	64(%r13,%rbp), %rcx
	leaq	24(%r13,%rbp), %rdx
	leaq	32(%r13,%rbp), %rsi
	cmoveq	%rcx, %rsi
	cmoveq	%rax, %rdx
	movq	(%rdx), %rbx
	movq	(%rsi), %rbp
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB7_23:                               # %for.body.i.i
                                        #   Parent Loop BB7_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%r13d, %xmm0
	mulsd	.LCPI7_0(%rip), %xmm0
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	*%rbx
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jae	.LBB7_24
# BB#25:                                # %cond.false.i.i
                                        #   in Loop: Header=BB7_23 Depth=2
	movw	$32760, %ax             # imm = 0x7FF8
	ucomiss	.LCPI7_1(%rip), %xmm0
	jae	.LBB7_27
# BB#26:                                # %cond.false.21.i.i
                                        #   in Loop: Header=BB7_23 Depth=2
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI7_2(%rip), %xmm0
	mulsd	.LCPI7_3(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	jmp	.LBB7_27
	.align	16, 0x90
.LBB7_24:                               #   in Loop: Header=BB7_23 Depth=2
	xorl	%eax, %eax
.LBB7_27:                               # %cond.end.26.i.i
                                        #   in Loop: Header=BB7_23 Depth=2
	movw	%ax, 56(%r12,%r13,2)
	incq	%r13
	cmpq	$256, %r13              # imm = 0x100
	jne	.LBB7_23
# BB#28:                                # %build_component.exit
                                        #   in Loop: Header=BB7_17 Depth=1
	testb	%r14b, %r14b
	movq	56(%rsp), %r14          # 8-byte Reload
	je	.LBB7_31
# BB#29:                                # %if.then.17
                                        #   in Loop: Header=BB7_17 Depth=1
	movq	32(%rsp), %rbp          # 8-byte Reload
	movzwl	44(%r15,%rbp), %ecx
	movl	60(%r15,%rbp), %eax
	movzwl	40(%r15,%rbp), %esi
	xorl	%edx, %edx
	divl	%esi
	imull	%eax, %ecx
	shll	$2, %ecx
	movl	$4, %esi
	movq	%r14, %rdi
	movl	%ecx, %edx
	callq	gx_ht_alloc_cache
	movl	$-25, %ecx
	testq	%rax, %rax
	movq	%r15, %rbx
	movq	%r14, %r15
	movq	48(%rsp), %rdx          # 8-byte Reload
	je	.LBB7_35
# BB#30:                                # %if.else
                                        #   in Loop: Header=BB7_17 Depth=1
	movq	%rax, 96(%rbx,%rbp)
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	gx_ht_init_cache
	movq	%r15, %r14
	movq	%rbx, %r15
.LBB7_31:                               # %for.inc
                                        #   in Loop: Header=BB7_17 Depth=1
	movq	40(%rsp), %rbx          # 8-byte Reload
	incq	%rbx
	movq	64(%rsp), %rax          # 8-byte Reload
	cmpq	%rax, %rbx
	movq	72(%rsp), %rbp          # 8-byte Reload
	jl	.LBB7_17
# BB#32:                                # %if.end.49
	movq	%r14, 280(%rsp)
	leaq	112(%rsp), %rdi
	movl	$160, %edx
	movq	%r15, %rsi
	callq	memcpy
	movl	12(%rsp), %r12d         # 4-byte Reload
	cmpl	$1, %r12d
	jne	.LBB7_39
# BB#33:                                # %if.then.56
	movl	$.L.str.2, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*24(%r14)
	movq	$0, 312(%rsp)
	jmp	.LBB7_40
.LBB7_38:                               # %if.end.49.thread
	movq	%r14, 280(%rsp)
	leaq	112(%rsp), %rdi
	movl	$160, %edx
	movq	%r15, %rsi
	callq	memcpy
.LBB7_39:                               # %if.else.58
	movq	%r15, 312(%rsp)
	movl	%r12d, 320(%rsp)
.LBB7_40:                               # %if.end.61
	movq	24(%rsp), %rdi          # 8-byte Reload
	leaq	112(%rsp), %rdx
	movq	%rbp, %rsi
	callq	gx_ht_install
	testl	%eax, %eax
	jns	.LBB7_42
# BB#41:                                # %if.then.65
	leaq	112(%rsp), %rdi
	movl	%eax, %ebx
	movq	%r14, %rsi
	callq	gx_device_halftone_release
	movl	%ebx, %eax
	jmp	.LBB7_42
.LBB7_9:                                # %for.cond.11.preheader.i
	movq	24(%r14), %rax
	testl	%r12d, %r12d
	movq	%r14, %rbp
	jle	.LBB7_10
# BB#11:                                # %for.body.13.i.preheader
	movq	48(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rbx
	addq	$104, %rbx
	movl	$-25, %r15d
	.align	16, 0x90
.LBB7_12:                               # %for.body.13.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rsi
	movl	$.L.str.3, %edx
	movq	%rbp, %rdi
	callq	*%rax
	movq	24(%rbp), %rax
	addq	$168, %rbx
	decl	%r12d
	jne	.LBB7_12
	jmp	.LBB7_13
.LBB7_10:
	movq	48(%rsp), %r14          # 8-byte Reload
	movl	$-25, %r15d
.LBB7_13:                               # %cleanup.i
	movl	$.L.str.3, %edx
	movq	%rbp, %rdi
	movq	%r14, %rsi
	callq	*%rax
	movl	%r15d, %eax
	jmp	.LBB7_42
.LBB7_34:                               # %cleanup.i.65
	movq	%r15, %rbx
	movq	56(%rsp), %r15          # 8-byte Reload
.LBB7_35:                               # %for.body.i.72.preheader
	movl	%ecx, %r13d
	movq	%rbx, %rbp
	movq	%rbx, %r12
	movl	12(%rsp), %ebx          # 4-byte Reload
	.align	16, 0x90
.LBB7_36:                               # %for.body.i.72
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	gx_ht_order_release
	addq	$168, %rbp
	decl	%ebx
	jne	.LBB7_36
# BB#37:                                # %free_order_array.exit
	movl	$.L.str.2, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	*24(%r15)
	movl	%r13d, %eax
.LBB7_42:                               # %cleanup.67
	addq	$696, %rsp              # imm = 0x2B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gs_ht_install, .Lfunc_end7-gs_ht_install
	.cfi_endproc

	.globl	gs_ht_set_mask_comp
	.align	16, 0x90
	.type	gs_ht_set_mask_comp,@function
gs_ht_set_mask_comp:                    # @gs_ht_set_mask_comp
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-15, %eax
	cmpl	%esi, 40(%rdi)
	jbe	.LBB8_3
# BB#1:                                 # %if.end
	movslq	%esi, %rax
	movq	32(%rdi), %rsi
	leaq	(%rax,%rax,4), %rdi
	shlq	$4, %rdi
	movl	$-7, %eax
	cmpl	$0, 8(%rsi,%rdi)
	jne	.LBB8_3
# BB#2:                                 # %if.end.5
	movq	16(%rsp), %r10
	movq	8(%rsp), %r11
	leaq	8(%rsi,%rdi), %rax
	movl	$8, (%rax)
	movl	%edx, 16(%rsi,%rdi)
	movl	%ecx, 20(%rsi,%rdi)
	movl	%r8d, 24(%rsi,%rdi)
	movq	$mask_order_procs, 32(%rsi,%rdi)
	movq	%r9, 40(%rsi,%rdi)
	testq	%r11, %r11
	movl	$null_closure_transfer, %eax
	cmovneq	%r11, %rax
	movq	%rax, 48(%rsi,%rdi)
	movq	%r10, 56(%rsi,%rdi)
	xorl	%eax, %eax
.LBB8_3:                                # %cleanup
	retq
.Lfunc_end8:
	.size	gs_ht_set_mask_comp, .Lfunc_end8-gs_ht_set_mask_comp
	.cfi_endproc

	.align	16, 0x90
	.type	create_mask_order,@function
create_mask_order:                      # @create_mask_order
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp30:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp32:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp33:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp35:
	.cfi_def_cfa_offset 144
.Ltmp36:
	.cfi_offset %rbx, -56
.Ltmp37:
	.cfi_offset %r12, -48
.Ltmp38:
	.cfi_offset %r13, -40
.Ltmp39:
	.cfi_offset %r14, -32
.Ltmp40:
	.cfi_offset %r15, -24
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	%rdx, %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movl	(%rax), %esi
	movl	4(%rax), %edx
	leal	7(%rsi), %r12d
	sarl	$3, %r12d
	movq	24(%rax), %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movl	%r12d, %ecx
	imull	%edx, %ecx
	movl	%ecx, 52(%rsp)          # 4-byte Spill
	movl	8(%rax), %ecx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	leal	-1(%rcx), %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	xorl	%r8d, %r8d
	cmpl	$2, %ecx
	jl	.LBB9_8
# BB#1:                                 # %for.body.lr.ph
	movslq	52(%rsp), %rax          # 4-byte Folded Reload
	movq	%rax, 72(%rsp)          # 8-byte Spill
	xorl	%r11d, %r11d
	xorl	%r8d, %r8d
	movq	80(%rsp), %rbp          # 8-byte Reload
	.align	16, 0x90
.LBB9_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_3 Depth 2
                                        #       Child Loop BB9_5 Depth 3
	movq	72(%rsp), %rax          # 8-byte Reload
	leaq	(%rbp,%rax), %r10
	testl	%edx, %edx
	movl	$0, %r13d
	movl	$0, %ebx
	jle	.LBB9_7
	.align	16, 0x90
.LBB9_3:                                # %for.cond.1.preheader.i
                                        #   Parent Loop BB9_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_5 Depth 3
	testl	%esi, %esi
	jle	.LBB9_6
# BB#4:                                 # %for.body.3.lr.ph.i
                                        #   in Loop: Header=BB9_3 Depth=2
	movl	%r13d, %edi
	imull	%r12d, %edi
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB9_5:                                # %for.body.3.i
                                        #   Parent Loop BB9_2 Depth=1
                                        #     Parent Loop BB9_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%r14d, %r9d
	sarl	$3, %r9d
	addl	%edi, %r9d
	movb	%r14b, %cl
	andb	$7, %cl
	movl	$128, %r15d
	shrl	%cl, %r15d
	movslq	%r9d, %rcx
	movb	(%r10,%rcx), %al
	xorb	(%rbp,%rcx), %al
	movzbl	%al, %eax
	andl	%r15d, %eax
	cmpl	$1, %eax
	sbbl	$-1, %ebx
	incl	%r14d
	cmpl	%r14d, %esi
	jne	.LBB9_5
.LBB9_6:                                # %for.inc.21.i
                                        #   in Loop: Header=BB9_3 Depth=2
	incl	%r13d
	cmpl	%edx, %r13d
	jne	.LBB9_3
.LBB9_7:                                # %create_mask_bits.exit
                                        #   in Loop: Header=BB9_2 Depth=1
	addl	%ebx, %r8d
	incl	%r11d
	cmpl	44(%rsp), %r11d         # 4-byte Folded Reload
	movq	%r10, %rbp
	jne	.LBB9_2
.LBB9_8:                                # %for.end
	movq	24(%rsp), %rdi          # 8-byte Reload
	movq	56(%rsp), %rbx          # 8-byte Reload
	movl	%ebx, %ecx
	movq	64(%rsp), %r9           # 8-byte Reload
	callq	gx_ht_alloc_client_order
	testl	%eax, %eax
	js	.LBB9_24
# BB#9:                                 # %for.cond.11.preheader
	cmpl	$2, %ebx
	movl	$0, %edx
	movq	80(%rsp), %rbp          # 8-byte Reload
	jl	.LBB9_23
# BB#10:                                # %for.body.14.lr.ph
	movslq	52(%rsp), %rax          # 4-byte Folded Reload
	movq	%rax, 8(%rsp)           # 8-byte Spill
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB9_11:                               # %for.body.14
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_13 Depth 2
                                        #       Child Loop BB9_16 Depth 3
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movl	%edx, 40(%rsp)          # 4-byte Spill
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	80(%rax), %rax
	movl	%edx, (%rax,%rcx,4)
	movq	8(%rsp), %rax           # 8-byte Reload
	leaq	(%rbp,%rax), %rdi
	movq	%rdi, 72(%rsp)          # 8-byte Spill
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	4(%rax), %eax
	movl	%eax, 52(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	movl	$0, %r12d
	jle	.LBB9_22
# BB#12:                                # %for.cond.1.preheader.lr.ph.i.46
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %r13d
	movslq	40(%rsp), %r14          # 4-byte Folded Reload
	shlq	$3, %r14
	movq	24(%rsp), %rax          # 8-byte Reload
	addq	88(%rax), %r14
	leal	7(%r13), %eax
	sarl	$3, %eax
	movl	%eax, 48(%rsp)          # 4-byte Spill
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB9_13:                               # %for.cond.1.preheader.i.49
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_16 Depth 3
	testl	%r13d, %r13d
	jle	.LBB9_14
# BB#15:                                # %for.body.3.lr.ph.i.52
                                        #   in Loop: Header=BB9_13 Depth=2
	movl	%ecx, %r10d
	movl	%ecx, 56(%rsp)          # 4-byte Spill
	imull	48(%rsp), %r10d         # 4-byte Folded Reload
	xorl	%r15d, %r15d
	movl	%eax, 64(%rsp)          # 4-byte Spill
	movl	%eax, %ebx
	.align	16, 0x90
.LBB9_16:                               # %for.body.3.i.66
                                        #   Parent Loop BB9_11 Depth=1
                                        #     Parent Loop BB9_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%r15d, %eax
	sarl	$3, %eax
	addl	%r10d, %eax
	movb	%r15b, %cl
	andb	$7, %cl
	movl	$128, %edx
	shrl	%cl, %edx
	cltq
	movb	(%rdi,%rax), %cl
	xorb	(%rbp,%rax), %cl
	movzbl	%cl, %eax
	testl	%edx, %eax
	je	.LBB9_20
# BB#17:                                # %if.then.i.67
                                        #   in Loop: Header=BB9_16 Depth=3
	testq	%r14, %r14
	je	.LBB9_19
# BB#18:                                # %if.then.14.i
                                        #   in Loop: Header=BB9_16 Depth=3
	movslq	%r12d, %rax
	leaq	(%r14,%rax,8), %rdi
	movl	%r13d, %esi
	movl	%ebx, %edx
	movl	%r10d, %ebp
	callq	gx_ht_construct_bit
	movl	%ebp, %r10d
	movq	72(%rsp), %rdi          # 8-byte Reload
	movq	80(%rsp), %rbp          # 8-byte Reload
.LBB9_19:                               # %if.end.i
                                        #   in Loop: Header=BB9_16 Depth=3
	incl	%r12d
.LBB9_20:                               # %if.end.19.i.72
                                        #   in Loop: Header=BB9_16 Depth=3
	incl	%r15d
	incl	%ebx
	cmpl	%r15d, %r13d
	jne	.LBB9_16
	jmp	.LBB9_21
	.align	16, 0x90
.LBB9_14:                               #   in Loop: Header=BB9_13 Depth=2
	movl	%ecx, 56(%rsp)          # 4-byte Spill
	movl	%eax, 64(%rsp)          # 4-byte Spill
.LBB9_21:                               # %for.inc.21.i.76
                                        #   in Loop: Header=BB9_13 Depth=2
	movl	56(%rsp), %ecx          # 4-byte Reload
	incl	%ecx
	movl	64(%rsp), %eax          # 4-byte Reload
	addl	%r13d, %eax
	cmpl	52(%rsp), %ecx          # 4-byte Folded Reload
	jne	.LBB9_13
.LBB9_22:                               # %create_mask_bits.exit78
                                        #   in Loop: Header=BB9_11 Depth=1
	movl	40(%rsp), %edx          # 4-byte Reload
	addl	%r12d, %edx
	movq	32(%rsp), %rcx          # 8-byte Reload
	incq	%rcx
	cmpl	44(%rsp), %ecx          # 4-byte Folded Reload
	movq	%rdi, %rbp
	jne	.LBB9_11
.LBB9_23:                               # %for.end.27
	movslq	44(%rsp), %rax          # 4-byte Folded Reload
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	80(%rcx), %rcx
	movl	%edx, (%rcx,%rax,4)
	xorl	%eax, %eax
.LBB9_24:                               # %cleanup
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	create_mask_order, .Lfunc_end9-create_mask_order
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_ht_build"
	.size	.L.str, 12

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gs_ht_release"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gs_ht_install"
	.size	.L.str.2, 14

	.type	mask_order_procs,@object # @mask_order_procs
	.section	.rodata,"a",@progbits
	.align	8
mask_order_procs:
	.quad	create_mask_order
	.size	mask_order_procs, 8

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"alloc_ht_order"
	.size	.L.str.3, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
