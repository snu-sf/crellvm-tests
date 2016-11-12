	.text
	.file	"gsalphac.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_0:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.text
	.align	16, 0x90
	.type	c_alpha_create_default_compositor,@function
c_alpha_create_default_compositor:      # @c_alpha_create_default_compositor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r13
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
	.cfi_offset %r13, -32
.Ltmp8:
	.cfi_offset %r14, -24
.Ltmp9:
	.cfi_offset %r15, -16
	movq	%r8, %r12
	movq	%rdx, %r15
	movq	%rsi, %r13
	movq	%rdi, %r14
	cmpl	$1, 40(%r14)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	%r15, (%r13)
	jmp	.LBB0_4
.LBB0_2:                                # %if.end
	movl	$st_device_composite_alpha, %esi
	movl	$.L.str.2, %edx
	movq	%r12, %rdi
	callq	*80(%r12)
	movq	%rax, %rbx
	movq	%rbx, (%r13)
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB0_5
# BB#3:                                 # %if.end.3
	movl	$gs_composite_alpha_device, %esi
	movl	$1, %ecx
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	gx_device_init
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	gx_device_copy_params
	movl	100(%r15), %eax
	cmpl	$4, %eax
	leal	8(,%rax,8), %eax
	movw	$32, %cx
	cmovnew	%ax, %cx
	movw	%cx, 108(%rbx)
	movaps	.LCPI0_0(%rip), %xmm0   # xmm0 = [255,255,256,256]
	movups	%xmm0, 112(%rbx)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	gx_device_set_target
	movq	40(%r14), %rax
	movq	%rax, 1736(%rbx)
.LBB0_4:                                # %cleanup
	xorl	%eax, %eax
.LBB0_5:                                # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	c_alpha_create_default_compositor, .Lfunc_end0-c_alpha_create_default_compositor
	.cfi_endproc

	.align	16, 0x90
	.type	c_alpha_equal,@function
c_alpha_equal:                          # @c_alpha_equal
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	cmpq	(%rdi), %rax
	je	.LBB1_2
# BB#1:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.LBB1_2:                                # %land.lhs.true
	movl	40(%rsi), %ecx
	cmpl	40(%rdi), %ecx
	jne	.LBB1_3
# BB#4:                                 # %land.rhs
	movb	$1, %al
	cmpl	$14, %ecx
	jne	.LBB1_6
# BB#5:                                 # %lor.rhs
	movss	44(%rsi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cmpeqss	44(%rdi), %xmm0
	movd	%xmm0, %eax
	andl	$1, %eax
.LBB1_6:                                # %land.end
	movzbl	%al, %eax
	retq
.LBB1_3:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.Lfunc_end1:
	.size	c_alpha_equal, .Lfunc_end1-c_alpha_equal
	.cfi_endproc

	.align	16, 0x90
	.type	c_alpha_write,@function
c_alpha_write:                          # @c_alpha_write
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
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	(%r15), %edx
	movl	40(%rbx), %eax
	cmpl	$14, %eax
	jne	.LBB2_3
# BB#1:                                 # %if.then
	cmpl	$4, %edx
	ja	.LBB2_5
# BB#2:                                 # %if.then.2
	movl	$5, (%r15)
	movl	$-15, %eax
	jmp	.LBB2_7
.LBB2_3:                                # %if.else
	movl	$1, %ecx
	testl	%edx, %edx
	jne	.LBB2_6
# BB#4:                                 # %if.then.5
	movl	$1, (%r15)
	movl	$-15, %eax
	jmp	.LBB2_7
.LBB2_5:                                # %if.end
	addq	$40, %rbx
	leaq	1(%r14), %rdi
	leaq	4(%rbx), %rsi
	movl	$4, %edx
	callq	memcpy
	movl	(%rbx), %eax
	movl	$5, %ecx
.LBB2_6:                                # %if.end.7
	movb	%al, (%r14)
	movl	%ecx, (%r15)
	xorl	%eax, %eax
.LBB2_7:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	c_alpha_write, .Lfunc_end2-c_alpha_write
	.cfi_endproc

	.align	16, 0x90
	.type	c_alpha_read,@function
c_alpha_read:                           # @c_alpha_read
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
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp20:
	.cfi_def_cfa_offset 48
.Ltmp21:
	.cfi_offset %rbx, -40
.Ltmp22:
	.cfi_offset %r14, -32
.Ltmp23:
	.cfi_offset %r15, -24
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movq	%rdi, %r14
	movl	$-15, %eax
	testl	%edx, %edx
	je	.LBB3_8
# BB#1:                                 # %lor.lhs.false
	movzbl	(%rsi), %ecx
	cmpl	$14, %ecx
	ja	.LBB3_8
# BB#2:                                 # %if.end
	movl	%ecx, (%rsp)
	movl	$1, %ebp
	jne	.LBB3_5
# BB#3:                                 # %if.then.7
	cmpl	$5, %edx
	jb	.LBB3_8
# BB#4:                                 # %if.end.12
	leaq	4(%rsp), %rdi
	incq	%rsi
	movl	$4, %edx
	callq	memcpy
	movl	$5, %ebp
.LBB3_5:                                # %if.end.15
	movl	$st_composite_alpha, %esi
	movl	$.L.str, %edx
	movq	%r15, %rdi
	callq	*72(%r15)
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB3_7
# BB#6:                                 # %if.end.i
	movq	$gs_composite_alpha_type, (%rbx)
	movl	$1, %esi
	movq	%r15, %rdi
	callq	gs_next_ids
	movq	%rax, 8(%rbx)
	movq	(%rsp), %rax
	movq	%rax, 40(%rbx)
	movl	$0, 16(%rbx)
	movq	%rbx, (%r14)
	xorl	%eax, %eax
.LBB3_7:                                # %gs_create_composite_alpha.exit
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	movl	%ebp, %eax
.LBB3_8:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	c_alpha_read, .Lfunc_end3-c_alpha_read
	.cfi_endproc

	.globl	gs_create_composite_alpha
	.align	16, 0x90
	.type	gs_create_composite_alpha,@function
gs_create_composite_alpha:              # @gs_create_composite_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp25:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp26:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp27:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp29:
	.cfi_def_cfa_offset 48
.Ltmp30:
	.cfi_offset %rbx, -40
.Ltmp31:
	.cfi_offset %r12, -32
.Ltmp32:
	.cfi_offset %r14, -24
.Ltmp33:
	.cfi_offset %r15, -16
	movq	%rdx, %r12
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$st_composite_alpha, %esi
	movl	$.L.str, %edx
	movq	%r12, %rdi
	callq	*72(%r12)
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB4_2
# BB#1:                                 # %if.end
	movq	$gs_composite_alpha_type, (%rbx)
	movl	$1, %esi
	movq	%r12, %rdi
	callq	gs_next_ids
	movq	%rax, 8(%rbx)
	movq	(%r15), %rax
	movq	%rax, 40(%rbx)
	movl	$0, 16(%rbx)
	movq	%rbx, (%r14)
	xorl	%eax, %eax
.LBB4_2:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	gs_create_composite_alpha, .Lfunc_end4-gs_create_composite_alpha
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_0:
	.long	1065353216              # float 1
	.text
	.globl	composite_values
	.align	16, 0x90
	.type	composite_values,@function
composite_values:                       # @composite_values
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp35:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp36:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp37:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp38:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp39:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp40:
	.cfi_def_cfa_offset 64
.Ltmp41:
	.cfi_offset %rbx, -56
.Ltmp42:
	.cfi_offset %r12, -48
.Ltmp43:
	.cfi_offset %r13, -40
.Ltmp44:
	.cfi_offset %r14, -32
.Ltmp45:
	.cfi_offset %r15, -24
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%r8, -16(%rsp)          # 8-byte Spill
	movl	%ecx, -24(%rsp)         # 4-byte Spill
	movl	%edx, -20(%rsp)         # 4-byte Spill
	movl	8(%rdi), %ecx
	movl	16(%rdi), %r10d
	movl	8(%rsi), %r15d
	movl	16(%rsi), %r11d
	xorl	%eax, %eax
	cmpl	$1, %r11d
	movl	$-1, %r12d
	movl	$0, %r13d
	cmovnel	%r12d, %r13d
	cmpl	$2, %r11d
	cmovel	%edx, %r13d
	cmpl	$1, %r10d
	cmovel	%eax, %r12d
	xorl	%eax, %eax
	movq	%rax, -8(%rsp)          # 8-byte Spill
	cmpl	$2, %r10d
	cmovel	%edx, %r12d
	movl	%r12d, %ebp
	shrl	$31, %ebp
	xorl	$1, %ebp
	addl	%edx, %ebp
	movl	%r13d, %ebx
	shrl	$31, %ebx
	xorl	$1, %ebx
	addl	%edx, %ebx
	movl	12(%rdi), %eax
	imull	%ecx, %eax
	imull	%ebp, %eax
	movl	%eax, %ebp
	shrl	$3, %ebp
	addq	(%rdi), %rbp
	movq	%rbp, (%rsp)            # 8-byte Spill
	movl	12(%rsi), %edi
	imull	%r15d, %edi
	imull	%ebx, %edi
	movl	$1, %r14d
	movl	%ecx, %ebp
	shll	%cl, %r14d
	movl	$1, %r9d
	movb	%r15b, %cl
	shll	%cl, %r9d
	decl	%r14d
	movl	%edi, %edx
	shrl	$3, %edx
	decl	%r9d
	testl	%r10d, %r10d
	movq	(%rsi), %rcx
	movq	%rcx, -32(%rsp)         # 8-byte Spill
	movss	4(%r8), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movl	8(%r8), %ecx
	movl	%ecx, -36(%rsp)         # 4-byte Spill
	jne	.LBB5_2
# BB#1:                                 # %if.then
	cmpl	%r9d, -36(%rsp)         # 4-byte Folded Reload
	movl	$24486, %ecx            # imm = 0x5FA6
	movl	$16384, %esi            # imm = 0x4000
	cmovnel	%ecx, %esi
	testl	%r11d, %r11d
	cmovnel	%ecx, %esi
	movl	$-15, %ebx
	movq	-16(%rsp), %rcx         # 8-byte Reload
	movl	(%rcx), %ecx
	btl	%ecx, %esi
	jb	.LBB5_124
.LBB5_2:                                # %if.end.53
	andl	$7, %eax
	movl	$0, -40(%rsp)           # 4-byte Folded Spill
	je	.LBB5_4
# BB#3:                                 # %cond.true.55
	movq	(%rsp), %rcx            # 8-byte Reload
	movzbl	(%rcx), %esi
	movl	$65280, %ebx            # imm = 0xFF00
	movb	%al, %cl
	shrl	%cl, %ebx
	andl	%esi, %ebx
	movl	%ebx, -40(%rsp)         # 4-byte Spill
	movq	%rax, -8(%rsp)          # 8-byte Spill
.LBB5_4:                                # %for.cond.preheader
	cmpl	$0, -24(%rsp)           # 4-byte Folded Reload
	je	.LBB5_122
# BB#5:                                 # %for.body.lr.ph
	cvtsi2ssq	%r14, %xmm0
	mulss	%xmm2, %xmm0
	cvtsi2ssq	%r9, %xmm3
	movss	.LCPI5_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	andl	$7, %edi
	movq	-32(%rsp), %rax         # 8-byte Reload
	leaq	(%rdx,%rax), %rax
	divss	%xmm3, %xmm0
	subss	%xmm2, %xmm1
	movl	%r12d, %ecx
	movl	%ebp, -116(%rsp)        # 4-byte Spill
	imull	%ebp, %ecx
	movq	%rcx, -88(%rsp)         # 8-byte Spill
	movl	%ebp, %r10d
	sarl	$2, %r10d
	movl	$8, %ecx
	movl	$8, %edx
	subl	%ebp, %edx
	movl	%edx, -100(%rsp)        # 4-byte Spill
	orl	$1, %ebp
	movl	%ebp, -104(%rsp)        # 4-byte Spill
	movq	%r15, -64(%rsp)         # 8-byte Spill
	movl	%r15d, %r8d
	sarl	$2, %r8d
	subl	%r15d, %ecx
	movl	%ecx, -108(%rsp)        # 4-byte Spill
	movl	%r15d, %ecx
	orl	$1, %ecx
	movl	%ecx, -112(%rsp)        # 4-byte Spill
	movl	%r13d, %ecx
	imull	%r15d, %ecx
	movq	%rcx, -96(%rsp)         # 8-byte Spill
	movslq	-20(%rsp), %rcx         # 4-byte Folded Reload
	movq	%rcx, -72(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	movl	%r14d, %esi
	jmp	.LBB5_6
	.align	16, 0x90
.LBB5_8:                                # %if.then.69
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-8(%rsp), %rdx          # 8-byte Reload
	movq	-88(%rsp), %rsi         # 8-byte Reload
	leal	(%rdx,%rsi), %edx
	movl	%edx, %esi
	sarl	$3, %esi
	movslq	%esi, %rsi
	jmpq	*.LJTI5_0(,%rcx,8)
.LBB5_9:                                # %sw.bb
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	(%rsp), %rcx            # 8-byte Reload
	movzbl	(%rcx,%rsi), %esi
	andl	$7, %edx
	movl	-100(%rsp), %ecx        # 4-byte Reload
	subl	%edx, %ecx
	shrl	%cl, %esi
	andl	-104(%rsp), %esi        # 4-byte Folded Reload
	jmp	.LBB5_17
.LBB5_10:                               # %sw.bb.82
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	(%rsp), %rcx            # 8-byte Reload
	movzbl	(%rcx,%rsi), %esi
	andl	$7, %edx
	movl	$4, %ecx
	subl	%edx, %ecx
	shrl	%cl, %esi
	andl	$15, %esi
	jmp	.LBB5_17
.LBB5_11:                               # %sw.bb.88
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	(%rsp), %rcx            # 8-byte Reload
	movzbl	(%rcx,%rsi), %esi
	jmp	.LBB5_17
.LBB5_12:                               # %sw.bb.90
                                        #   in Loop: Header=BB5_6 Depth=1
	testb	$7, %dl
	movq	(%rsp), %rdx            # 8-byte Reload
	movzbl	(%rdx,%rsi), %ecx
	movzbl	1(%rdx,%rsi), %esi
	je	.LBB5_14
# BB#13:                                # %cond.true.93
                                        #   in Loop: Header=BB5_6 Depth=1
	andl	$15, %ecx
	shll	$8, %ecx
	jmp	.LBB5_16
.LBB5_15:                               # %sw.bb.108
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	(%rsp), %rdx            # 8-byte Reload
	movzbl	(%rdx,%rsi), %ecx
	shll	$8, %ecx
	movzbl	1(%rdx,%rsi), %esi
	jmp	.LBB5_16
.LBB5_14:                               # %cond.false.99
                                        #   in Loop: Header=BB5_6 Depth=1
	shll	$4, %ecx
	shrl	$4, %esi
.LBB5_16:                               # %if.end.118
                                        #   in Loop: Header=BB5_6 Depth=1
	orl	%ecx, %esi
.LBB5_17:                               # %if.end.118
                                        #   in Loop: Header=BB5_6 Depth=1
	testl	%r13d, %r13d
	js	.LBB5_18
# BB#19:                                # %if.then.121
                                        #   in Loop: Header=BB5_6 Depth=1
	je	.LBB5_20
# BB#21:                                # %do.body.133
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	%edi, %ebp
	movq	-96(%rsp), %rcx         # 8-byte Reload
	leal	(%rdi,%rcx), %ecx
	movl	%ecx, %edx
	sarl	$3, %edx
	movslq	%edx, %rdx
	andl	$7, %ecx
	movq	%rax, -48(%rsp)         # 8-byte Spill
	leaq	(%rdx,%rax), %rax
	movl	%ecx, %edi
	jmp	.LBB5_22
	.align	16, 0x90
.LBB5_18:                               #   in Loop: Header=BB5_6 Depth=1
	movl	%edi, %edx
	movq	%rax, -48(%rsp)         # 8-byte Spill
	movl	-36(%rsp), %r15d        # 4-byte Reload
	jmp	.LBB5_32
.LBB5_20:                               # %do.body.125
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-64(%rsp), %rcx         # 8-byte Reload
	leal	(%rdi,%rcx), %edx
	movl	%edx, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%rax), %rcx
	movq	%rcx, -48(%rsp)         # 8-byte Spill
	andl	$7, %edx
	movl	%edx, %ebp
.LBB5_22:                               # %do.body.143
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	$-15, %ebx
	movl	%r8d, %ecx
	cmpl	$4, %r8d
	movl	%ebp, %edx
	ja	.LBB5_124
# BB#23:                                # %do.body.143
                                        #   in Loop: Header=BB5_6 Depth=1
	jmpq	*.LJTI5_1(,%rcx,8)
.LBB5_24:                               # %sw.bb.145
                                        #   in Loop: Header=BB5_6 Depth=1
	movzbl	(%rax), %r15d
	movl	-108(%rsp), %ecx        # 4-byte Reload
	subl	%edi, %ecx
	shrl	%cl, %r15d
	andl	-112(%rsp), %r15d       # 4-byte Folded Reload
	jmp	.LBB5_32
.LBB5_25:                               # %sw.bb.152
                                        #   in Loop: Header=BB5_6 Depth=1
	movzbl	(%rax), %r15d
	movl	$4, %ecx
	subl	%edi, %ecx
	shrl	%cl, %r15d
	andl	$15, %r15d
	jmp	.LBB5_32
.LBB5_26:                               # %sw.bb.157
                                        #   in Loop: Header=BB5_6 Depth=1
	movzbl	(%rax), %r15d
	jmp	.LBB5_32
.LBB5_27:                               # %sw.bb.159
                                        #   in Loop: Header=BB5_6 Depth=1
	testl	%edi, %edi
	movzbl	(%rax), %ecx
	movzbl	1(%rax), %r15d
	je	.LBB5_29
# BB#28:                                # %cond.true.161
                                        #   in Loop: Header=BB5_6 Depth=1
	andl	$15, %ecx
	shll	$8, %ecx
	jmp	.LBB5_31
.LBB5_30:                               # %sw.bb.177
                                        #   in Loop: Header=BB5_6 Depth=1
	movzbl	(%rax), %ecx
	shll	$8, %ecx
	movzbl	1(%rax), %r15d
	jmp	.LBB5_31
.LBB5_29:                               # %cond.false.168
                                        #   in Loop: Header=BB5_6 Depth=1
	shll	$4, %ecx
	shrl	$4, %r15d
.LBB5_31:                               # %if.end.191
                                        #   in Loop: Header=BB5_6 Depth=1
	orl	%ecx, %r15d
.LBB5_32:                               # %if.end.191
                                        #   in Loop: Header=BB5_6 Depth=1
	cmpl	$0, -20(%rsp)           # 4-byte Folded Reload
	js	.LBB5_101
# BB#33:                                # %for.body.195.lr.ph
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	%r9d, %ecx
	subl	%r15d, %ecx
	movl	%ecx, -36(%rsp)         # 4-byte Spill
	movl	%r14d, %ecx
	subl	%esi, %ecx
	movl	%ecx, -120(%rsp)        # 4-byte Spill
	movq	$-1, %r11
.LBB5_34:                               # %for.body.195
                                        #   Parent Loop BB5_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$-1, %r11d
	je	.LBB5_35
# BB#36:                                # %if.else.199
                                        #   in Loop: Header=BB5_34 Depth=2
	cmpq	$0, -32(%rsp)           # 8-byte Folded Reload
	je	.LBB5_37
# BB#38:                                # %do.body.205
                                        #   in Loop: Header=BB5_34 Depth=2
	movl	$-15, %ebx
	movl	%r8d, %eax
	cmpl	$4, %r8d
	ja	.LBB5_124
# BB#39:                                # %do.body.205
                                        #   in Loop: Header=BB5_34 Depth=2
	jmpq	*.LJTI5_2(,%rax,8)
.LBB5_40:                               # %sw.bb.207
                                        #   in Loop: Header=BB5_34 Depth=2
	movq	-48(%rsp), %rax         # 8-byte Reload
	movzbl	(%rax), %ebp
	movl	-108(%rsp), %ecx        # 4-byte Reload
	subl	%edx, %ecx
	shrl	%cl, %ebp
	movq	%rax, %rcx
	andl	-112(%rsp), %ebp        # 4-byte Folded Reload
	jmp	.LBB5_48
	.align	16, 0x90
.LBB5_35:                               #   in Loop: Header=BB5_34 Depth=2
	movl	%esi, %edi
	movl	%r15d, %ebp
	jmp	.LBB5_59
.LBB5_37:                               # %if.then.201
                                        #   in Loop: Header=BB5_34 Depth=2
	movq	-16(%rsp), %rax         # 8-byte Reload
	movl	12(%rax,%r11,4), %ebp
	jmp	.LBB5_49
.LBB5_41:                               # %sw.bb.214
                                        #   in Loop: Header=BB5_34 Depth=2
	movq	-48(%rsp), %rax         # 8-byte Reload
	movzbl	(%rax), %ebp
	movl	$4, %ecx
	subl	%edx, %ecx
	shrl	%cl, %ebp
	movq	%rax, %rcx
	andl	$15, %ebp
	jmp	.LBB5_48
.LBB5_42:                               # %sw.bb.219
                                        #   in Loop: Header=BB5_34 Depth=2
	movq	-48(%rsp), %rcx         # 8-byte Reload
	movzbl	(%rcx), %ebp
	jmp	.LBB5_48
.LBB5_43:                               # %sw.bb.221
                                        #   in Loop: Header=BB5_34 Depth=2
	testl	%edx, %edx
	movq	-48(%rsp), %rcx         # 8-byte Reload
	movzbl	(%rcx), %eax
	movzbl	1(%rcx), %ebp
	je	.LBB5_45
# BB#44:                                # %cond.true.223
                                        #   in Loop: Header=BB5_34 Depth=2
	andl	$15, %eax
	shll	$8, %eax
	jmp	.LBB5_47
.LBB5_46:                               # %sw.bb.239
                                        #   in Loop: Header=BB5_34 Depth=2
	movq	-48(%rsp), %rcx         # 8-byte Reload
	movzbl	(%rcx), %eax
	shll	$8, %eax
	movzbl	1(%rcx), %ebp
	jmp	.LBB5_47
.LBB5_45:                               # %cond.false.230
                                        #   in Loop: Header=BB5_34 Depth=2
	shll	$4, %eax
	shrl	$4, %ebp
.LBB5_47:                               # %do.body.249
                                        #   in Loop: Header=BB5_34 Depth=2
	orl	%eax, %ebp
.LBB5_48:                               # %do.body.249
                                        #   in Loop: Header=BB5_34 Depth=2
	movq	-64(%rsp), %rax         # 8-byte Reload
	addl	%eax, %edx
	movl	%edx, %eax
	sarl	$3, %eax
	cltq
	addq	%rax, %rcx
	movq	%rcx, -48(%rsp)         # 8-byte Spill
	andl	$7, %edx
.LBB5_49:                               # %do.body.258
                                        #   in Loop: Header=BB5_34 Depth=2
	movl	$-15, %ebx
	movl	%r10d, %eax
	cmpl	$4, %r10d
	ja	.LBB5_124
# BB#50:                                # %do.body.258
                                        #   in Loop: Header=BB5_34 Depth=2
	jmpq	*.LJTI5_3(,%rax,8)
.LBB5_51:                               # %sw.bb.260
                                        #   in Loop: Header=BB5_34 Depth=2
	movl	%esi, %edi
	movq	(%rsp), %rax            # 8-byte Reload
	movzbl	(%rax), %esi
	movl	-100(%rsp), %ecx        # 4-byte Reload
	movq	-8(%rsp), %rax          # 8-byte Reload
	subl	%eax, %ecx
	shrl	%cl, %esi
	andl	-104(%rsp), %esi        # 4-byte Folded Reload
	jmp	.LBB5_59
.LBB5_52:                               # %sw.bb.267
                                        #   in Loop: Header=BB5_34 Depth=2
	movl	%esi, %edi
	movq	(%rsp), %rax            # 8-byte Reload
	movzbl	(%rax), %esi
	movl	$4, %ecx
	movq	-8(%rsp), %rax          # 8-byte Reload
	subl	%eax, %ecx
	shrl	%cl, %esi
	andl	$15, %esi
	jmp	.LBB5_59
.LBB5_53:                               # %sw.bb.272
                                        #   in Loop: Header=BB5_34 Depth=2
	movl	%esi, %edi
	movq	(%rsp), %rax            # 8-byte Reload
	movzbl	(%rax), %esi
	jmp	.LBB5_59
.LBB5_54:                               # %sw.bb.274
                                        #   in Loop: Header=BB5_34 Depth=2
	movl	%esi, %edi
	movq	-8(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movq	(%rsp), %rcx            # 8-byte Reload
	movzbl	(%rcx), %eax
	movzbl	1(%rcx), %esi
	je	.LBB5_56
# BB#55:                                # %cond.true.276
                                        #   in Loop: Header=BB5_34 Depth=2
	andl	$15, %eax
	shll	$8, %eax
	jmp	.LBB5_58
.LBB5_57:                               # %sw.bb.292
                                        #   in Loop: Header=BB5_34 Depth=2
	movl	%esi, %edi
	movq	(%rsp), %rcx            # 8-byte Reload
	movzbl	(%rcx), %eax
	shll	$8, %eax
	movzbl	1(%rcx), %esi
	jmp	.LBB5_58
.LBB5_56:                               # %cond.false.283
                                        #   in Loop: Header=BB5_34 Depth=2
	shll	$4, %eax
	shrl	$4, %esi
.LBB5_58:                               # %if.end.302
                                        #   in Loop: Header=BB5_34 Depth=2
	orl	%eax, %esi
.LBB5_59:                               # %if.end.302
                                        #   in Loop: Header=BB5_34 Depth=2
	movl	$-15, %ebx
	movq	-16(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %ecx
	cmpq	$14, %rcx
	ja	.LBB5_124
# BB#60:                                # %if.end.302
                                        #   in Loop: Header=BB5_34 Depth=2
	xorl	%eax, %eax
	jmpq	*.LJTI5_4(,%rcx,8)
.LBB5_61:                               # %sw.bb.305
                                        #   in Loop: Header=BB5_34 Depth=2
	movl	%ebp, %eax
	jmp	.LBB5_81
.LBB5_64:                               # %do.body.325
                                        #   in Loop: Header=BB5_34 Depth=2
	imull	-36(%rsp), %esi         # 4-byte Folded Reload
	movl	%edx, %ecx
	xorl	%edx, %edx
	movl	%esi, %eax
	divl	%r9d
	movl	%ecx, %edx
	addl	%ebp, %eax
	jmp	.LBB5_76
.LBB5_66:                               # %sw.bb.348
                                        #   in Loop: Header=BB5_34 Depth=2
	imull	%edi, %ebp
	jmp	.LBB5_67
.LBB5_71:                               # %sw.bb.354
                                        #   in Loop: Header=BB5_34 Depth=2
	imull	-120(%rsp), %ebp        # 4-byte Folded Reload
.LBB5_67:                               # %sw.epilog.422
                                        #   in Loop: Header=BB5_34 Depth=2
	movl	%edx, %ecx
	xorl	%edx, %edx
	movl	%ebp, %eax
	jmp	.LBB5_68
.LBB5_73:                               # %do.body.363
                                        #   in Loop: Header=BB5_34 Depth=2
	imull	%edi, %ebp
	jmp	.LBB5_74
.LBB5_65:                               # %do.body.337
                                        #   in Loop: Header=BB5_34 Depth=2
	imull	-120(%rsp), %ebp        # 4-byte Folded Reload
	movl	%edx, %ecx
	xorl	%edx, %edx
	movl	%ebp, %eax
	divl	%r9d
	movl	%ecx, %edx
	addl	%esi, %eax
	jmp	.LBB5_76
.LBB5_69:                               # %sw.bb.351
                                        #   in Loop: Header=BB5_34 Depth=2
	imull	%r15d, %esi
	jmp	.LBB5_70
.LBB5_72:                               # %sw.bb.358
                                        #   in Loop: Header=BB5_34 Depth=2
	imull	-36(%rsp), %esi         # 4-byte Folded Reload
.LBB5_70:                               # %sw.epilog.422
                                        #   in Loop: Header=BB5_34 Depth=2
	movl	%edx, %ecx
	xorl	%edx, %edx
	movl	%esi, %eax
.LBB5_68:                               # %sw.epilog.422
                                        #   in Loop: Header=BB5_34 Depth=2
	divl	%r9d
	movl	%ecx, %edx
	jmp	.LBB5_81
.LBB5_77:                               # %do.body.377
                                        #   in Loop: Header=BB5_34 Depth=2
	imull	-120(%rsp), %ebp        # 4-byte Folded Reload
	movl	%edx, -124(%rsp)        # 4-byte Spill
	xorl	%edx, %edx
	movl	%ebp, %eax
	divl	%r9d
	movl	%eax, %ecx
	imull	%r15d, %esi
	jmp	.LBB5_75
.LBB5_78:                               # %do.body.391
                                        #   in Loop: Header=BB5_34 Depth=2
	imull	-120(%rsp), %ebp        # 4-byte Folded Reload
.LBB5_74:                               # %sw.epilog.422
                                        #   in Loop: Header=BB5_34 Depth=2
	movl	%edx, -124(%rsp)        # 4-byte Spill
	xorl	%edx, %edx
	movl	%ebp, %eax
	divl	%r9d
	movl	%eax, %ecx
	imull	-36(%rsp), %esi         # 4-byte Folded Reload
.LBB5_75:                               # %sw.epilog.422
                                        #   in Loop: Header=BB5_34 Depth=2
	xorl	%edx, %edx
	movl	%esi, %eax
	divl	%r9d
	movl	-124(%rsp), %edx        # 4-byte Reload
	addl	%ecx, %eax
.LBB5_76:                               # %sw.epilog.422
                                        #   in Loop: Header=BB5_34 Depth=2
	cmpl	%r14d, %eax
	cmoval	%r14d, %eax
	jmp	.LBB5_81
.LBB5_62:                               # %sw.bb.306
                                        #   in Loop: Header=BB5_34 Depth=2
	addl	%esi, %ebp
	subl	%r14d, %ebp
	movl	$0, %eax
	cmovbl	%eax, %ebp
	movl	%ebp, %eax
	jmp	.LBB5_81
.LBB5_63:                               # %do.body.316
                                        #   in Loop: Header=BB5_34 Depth=2
	addl	%esi, %ebp
	cmpl	%r14d, %ebp
	cmoval	%r14d, %ebp
	movl	%ebp, %eax
	jmp	.LBB5_81
.LBB5_79:                               # %sw.bb.405
                                        #   in Loop: Header=BB5_34 Depth=2
	cmpl	$-1, %r11d
	sete	%al
	movl	%ebp, %ecx
	xorl	%r14d, %ecx
	cmpl	$1, %ecx
	seta	%cl
	orb	%al, %cl
	movzbl	%cl, %eax
	xorl	%ebp, %eax
	xorl	$1, %eax
	jmp	.LBB5_81
.LBB5_80:                               # %sw.bb.414
                                        #   in Loop: Header=BB5_34 Depth=2
	movl	%ebp, %eax
	cvtsi2ssq	%rax, %xmm2
	mulss	%xmm0, %xmm2
	movl	%esi, %eax
	cvtsi2ssq	%rax, %xmm3
	mulss	%xmm1, %xmm3
	addss	%xmm2, %xmm3
	cvttss2si	%xmm3, %rax
	.align	16, 0x90
.LBB5_81:                               # %sw.epilog.422
                                        #   in Loop: Header=BB5_34 Depth=2
	testl	%r12d, %r12d
	je	.LBB5_84
# BB#82:                                # %sw.epilog.422
                                        #   in Loop: Header=BB5_34 Depth=2
	cmpl	$-1, %r11d
	jne	.LBB5_84
# BB#83:                                #   in Loop: Header=BB5_34 Depth=2
	movl	%eax, -52(%rsp)         # 4-byte Spill
	movl	%edi, %esi
	jmp	.LBB5_100
	.align	16, 0x90
.LBB5_84:                               # %do.body.430
                                        #   in Loop: Header=BB5_34 Depth=2
	movl	%r10d, %ecx
	cmpl	$4, %r10d
	movl	%edi, %esi
	ja	.LBB5_124
# BB#85:                                # %do.body.430
                                        #   in Loop: Header=BB5_34 Depth=2
	jmpq	*.LJTI5_5(,%rcx,8)
.LBB5_86:                               # %sw.bb.432
                                        #   in Loop: Header=BB5_34 Depth=2
	movl	%edx, %edi
	movq	-8(%rsp), %rdx          # 8-byte Reload
	addl	-116(%rsp), %edx        # 4-byte Folded Reload
	cmpl	$8, %edx
	jne	.LBB5_88
# BB#87:                                # %if.then.436
                                        #   in Loop: Header=BB5_34 Depth=2
	movl	-40(%rsp), %ecx         # 4-byte Reload
	movzbl	%cl, %ecx
	orl	%ecx, %eax
	movq	(%rsp), %rcx            # 8-byte Reload
	movb	%al, (%rcx)
	incq	%rcx
	movq	%rcx, (%rsp)            # 8-byte Spill
	movl	$0, -40(%rsp)           # 4-byte Folded Spill
	xorl	%eax, %eax
	jmp	.LBB5_92
.LBB5_89:                               # %sw.bb.451
                                        #   in Loop: Header=BB5_34 Depth=2
	movl	%edx, %edi
	movq	-8(%rsp), %rdx          # 8-byte Reload
	movl	%edx, %ecx
	xorl	$4, %ecx
	cmpl	$4, %edx
	jne	.LBB5_90
# BB#93:                                # %if.else.457
                                        #   in Loop: Header=BB5_34 Depth=2
	movl	-40(%rsp), %edx         # 4-byte Reload
	movzbl	%dl, %edx
	orl	%edx, %eax
	movq	(%rsp), %rdx            # 8-byte Reload
	movb	%al, (%rdx)
	incq	%rdx
	movq	%rdx, (%rsp)            # 8-byte Spill
	jmp	.LBB5_91
.LBB5_94:                               # %sw.bb.465
                                        #   in Loop: Header=BB5_34 Depth=2
	movl	%edx, %ebx
	movl	%esi, %edi
	movq	-8(%rsp), %rdx          # 8-byte Reload
	movl	%edx, %ecx
	xorl	$4, %ecx
	cmpl	$4, %edx
	jne	.LBB5_95
# BB#97:                                # %if.else.474
                                        #   in Loop: Header=BB5_34 Depth=2
	movl	-40(%rsp), %edx         # 4-byte Reload
	movzbl	%dl, %edx
	movl	%eax, %esi
	shrl	$8, %esi
	orl	%edx, %esi
	movq	(%rsp), %rdx            # 8-byte Reload
	movb	%sil, (%rdx)
	movb	%al, 1(%rdx)
	addq	$2, %rdx
	movq	%rdx, (%rsp)            # 8-byte Spill
	jmp	.LBB5_96
.LBB5_98:                               # %sw.bb.485
                                        #   in Loop: Header=BB5_34 Depth=2
	movq	(%rsp), %rcx            # 8-byte Reload
	movb	%ah, (%rcx)  # NOREX
	incq	%rcx
	movq	%rcx, (%rsp)            # 8-byte Spill
.LBB5_99:                               # %sw.bb.489
                                        #   in Loop: Header=BB5_34 Depth=2
	movq	(%rsp), %rcx            # 8-byte Reload
	movb	%al, (%rcx)
	incq	%rcx
	movq	%rcx, (%rsp)            # 8-byte Spill
	jmp	.LBB5_100
.LBB5_88:                               # %if.else.442
                                        #   in Loop: Header=BB5_34 Depth=2
	movl	$8, %ecx
	subl	%edx, %ecx
	movq	%rdx, -8(%rsp)          # 8-byte Spill
	shll	%cl, %eax
	movl	-40(%rsp), %ecx         # 4-byte Reload
	movzbl	%cl, %ecx
	orl	%eax, %ecx
	movl	%ecx, -40(%rsp)         # 4-byte Spill
	movl	%edi, %edx
	jmp	.LBB5_100
.LBB5_90:                               # %if.then.454
                                        #   in Loop: Header=BB5_34 Depth=2
	shll	$4, %eax
	movl	%eax, -40(%rsp)         # 4-byte Spill
.LBB5_91:                               # %for.inc
                                        #   in Loop: Header=BB5_34 Depth=2
	movl	%ecx, %eax
.LBB5_92:                               # %for.inc
                                        #   in Loop: Header=BB5_34 Depth=2
	movq	%rax, -8(%rsp)          # 8-byte Spill
	movl	%edi, %edx
	jmp	.LBB5_100
.LBB5_95:                               # %if.then.468
                                        #   in Loop: Header=BB5_34 Depth=2
	movl	%eax, %edx
	shrl	$4, %edx
	movq	(%rsp), %rsi            # 8-byte Reload
	movb	%dl, (%rsi)
	incq	%rsi
	movq	%rsi, (%rsp)            # 8-byte Spill
	shll	$4, %eax
	movl	%eax, -40(%rsp)         # 4-byte Spill
.LBB5_96:                               # %for.inc
                                        #   in Loop: Header=BB5_34 Depth=2
	movl	%ecx, %eax
	movq	%rax, -8(%rsp)          # 8-byte Spill
	movl	%edi, %esi
	movl	%ebx, %edx
	.align	16, 0x90
.LBB5_100:                              # %for.inc
                                        #   in Loop: Header=BB5_34 Depth=2
	incq	%r11
	cmpq	-72(%rsp), %r11         # 8-byte Folded Reload
	jl	.LBB5_34
.LBB5_101:                              # %for.end
                                        #   in Loop: Header=BB5_6 Depth=1
	testl	%r13d, %r13d
	jle	.LBB5_102
# BB#103:                               # %do.body.504
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	%r15d, -36(%rsp)        # 4-byte Spill
	movq	-64(%rsp), %rax         # 8-byte Reload
	addl	%eax, %edx
	movl	%edx, %eax
	sarl	$3, %eax
	cltq
	movq	-48(%rsp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	andl	$7, %edx
	movl	%edx, %edi
	movq	%rcx, %rax
	jmp	.LBB5_104
.LBB5_102:                              #   in Loop: Header=BB5_6 Depth=1
	movl	%r15d, -36(%rsp)        # 4-byte Spill
	movl	%edx, %edi
	movq	-48(%rsp), %rax         # 8-byte Reload
.LBB5_104:                              # %if.end.512
                                        #   in Loop: Header=BB5_6 Depth=1
	testl	%r12d, %r12d
	jle	.LBB5_120
# BB#105:                               # %do.body.516
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	$-15, %ebx
	movl	%r10d, %ecx
	cmpl	$4, %r10d
	ja	.LBB5_124
# BB#106:                               # %do.body.516
                                        #   in Loop: Header=BB5_6 Depth=1
	jmpq	*.LJTI5_6(,%rcx,8)
.LBB5_107:                              # %sw.bb.518
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-8(%rsp), %rdx          # 8-byte Reload
	addl	-116(%rsp), %edx        # 4-byte Folded Reload
	cmpl	$8, %edx
	jne	.LBB5_109
# BB#108:                               # %if.then.522
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	-40(%rsp), %ecx         # 4-byte Reload
	movzbl	%cl, %ecx
	movl	-52(%rsp), %edx         # 4-byte Reload
	orl	%ecx, %edx
	movq	(%rsp), %rcx            # 8-byte Reload
	movb	%dl, (%rcx)
	incq	%rcx
	movq	%rcx, (%rsp)            # 8-byte Spill
	movl	$0, -40(%rsp)           # 4-byte Folded Spill
	xorl	%ecx, %ecx
	movq	%rcx, -8(%rsp)          # 8-byte Spill
	jmp	.LBB5_120
.LBB5_110:                              # %sw.bb.538
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-8(%rsp), %rdx          # 8-byte Reload
	movl	%edx, %ecx
	xorl	$4, %ecx
	cmpl	$4, %edx
	jne	.LBB5_111
# BB#113:                               # %if.else.544
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	-40(%rsp), %edx         # 4-byte Reload
	movzbl	%dl, %edx
	movl	-52(%rsp), %ebp         # 4-byte Reload
	orl	%edx, %ebp
	movq	(%rsp), %rdx            # 8-byte Reload
	movb	%bpl, (%rdx)
	incq	%rdx
	movq	%rdx, (%rsp)            # 8-byte Spill
	movq	%rcx, -8(%rsp)          # 8-byte Spill
	jmp	.LBB5_120
.LBB5_114:                              # %sw.bb.552
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	%esi, %ebp
	movq	-8(%rsp), %rdx          # 8-byte Reload
	movl	%edx, %ecx
	xorl	$4, %ecx
	cmpl	$4, %edx
	jne	.LBB5_115
# BB#117:                               # %if.else.561
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	-40(%rsp), %edx         # 4-byte Reload
	movzbl	%dl, %edx
	movl	-52(%rsp), %ebx         # 4-byte Reload
	movl	%ebx, %esi
	shrl	$8, %esi
	orl	%edx, %esi
	movq	(%rsp), %rdx            # 8-byte Reload
	movb	%sil, (%rdx)
	movb	%bl, 1(%rdx)
	addq	$2, %rdx
	movq	%rdx, (%rsp)            # 8-byte Spill
	jmp	.LBB5_116
.LBB5_118:                              # %sw.bb.572
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	(%rsp), %rcx            # 8-byte Reload
	movl	-52(%rsp), %edx         # 4-byte Reload
	movb	%dh, (%rcx)  # NOREX
	incq	%rcx
	movq	%rcx, (%rsp)            # 8-byte Spill
.LBB5_119:                              # %sw.bb.576
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	(%rsp), %rcx            # 8-byte Reload
	movl	-52(%rsp), %edx         # 4-byte Reload
	movb	%dl, (%rcx)
	incq	%rcx
	movq	%rcx, (%rsp)            # 8-byte Spill
	jmp	.LBB5_120
.LBB5_109:                              # %if.else.529
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	$8, %ecx
	subl	%edx, %ecx
	movq	%rdx, -8(%rsp)          # 8-byte Spill
	movl	-52(%rsp), %edx         # 4-byte Reload
	shll	%cl, %edx
	movl	-40(%rsp), %ecx         # 4-byte Reload
	movzbl	%cl, %ecx
	orl	%edx, %ecx
	movl	%ecx, -40(%rsp)         # 4-byte Spill
	jmp	.LBB5_120
.LBB5_111:                              # %if.then.541
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	-52(%rsp), %edx         # 4-byte Reload
	shll	$4, %edx
	movl	%edx, -40(%rsp)         # 4-byte Spill
	movq	%rcx, -8(%rsp)          # 8-byte Spill
.LBB5_120:                              # %for.inc.588
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	-76(%rsp), %ecx         # 4-byte Reload
.LBB5_121:                              # %for.inc.588
                                        #   in Loop: Header=BB5_6 Depth=1
	incl	%ecx
	cmpl	-24(%rsp), %ecx         # 4-byte Folded Reload
	jb	.LBB5_6
	jmp	.LBB5_122
.LBB5_115:                              # %if.then.555
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	-52(%rsp), %ebx         # 4-byte Reload
	movl	%ebx, %edx
	shrl	$4, %edx
	movq	(%rsp), %rsi            # 8-byte Reload
	movb	%dl, (%rsi)
	incq	%rsi
	movq	%rsi, (%rsp)            # 8-byte Spill
	shll	$4, %ebx
	movb	%bl, %dl
	movl	%edx, -40(%rsp)         # 4-byte Spill
.LBB5_116:                              # %for.inc.588
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	%rcx, -8(%rsp)          # 8-byte Spill
	movl	-76(%rsp), %ecx         # 4-byte Reload
	movl	%ebp, %esi
	jmp	.LBB5_121
	.align	16, 0x90
.LBB5_6:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_34 Depth 2
	movl	%ecx, -76(%rsp)         # 4-byte Spill
	movl	%esi, -52(%rsp)         # 4-byte Spill
	testl	%r12d, %r12d
	js	.LBB5_17
# BB#7:                                 # %if.then.69
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	$-15, %ebx
	movl	%r10d, %ecx
	cmpl	$4, %r10d
	jbe	.LBB5_8
	jmp	.LBB5_124
.LBB5_122:                              # %for.end.590
	xorl	%ebx, %ebx
	movq	-8(%rsp), %rcx          # 8-byte Reload
	testl	%ecx, %ecx
	je	.LBB5_124
# BB#123:                               # %if.then.593
	movl	-40(%rsp), %eax         # 4-byte Reload
	movzbl	%al, %eax
	movq	(%rsp), %rdi            # 8-byte Reload
	movzbl	(%rdi), %edx
	movl	$255, %esi
	shrl	%cl, %esi
	andl	%edx, %esi
	orl	%eax, %esi
	movb	%sil, (%rdi)
.LBB5_124:                              # %cleanup.601
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	composite_values, .Lfunc_end5-composite_values
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_9
	.quad	.LBB5_10
	.quad	.LBB5_11
	.quad	.LBB5_12
	.quad	.LBB5_15
.LJTI5_1:
	.quad	.LBB5_24
	.quad	.LBB5_25
	.quad	.LBB5_26
	.quad	.LBB5_27
	.quad	.LBB5_30
.LJTI5_2:
	.quad	.LBB5_40
	.quad	.LBB5_41
	.quad	.LBB5_42
	.quad	.LBB5_43
	.quad	.LBB5_46
.LJTI5_3:
	.quad	.LBB5_51
	.quad	.LBB5_52
	.quad	.LBB5_53
	.quad	.LBB5_54
	.quad	.LBB5_57
.LJTI5_4:
	.quad	.LBB5_81
	.quad	.LBB5_61
	.quad	.LBB5_64
	.quad	.LBB5_66
	.quad	.LBB5_71
	.quad	.LBB5_73
	.quad	.LBB5_65
	.quad	.LBB5_69
	.quad	.LBB5_72
	.quad	.LBB5_77
	.quad	.LBB5_78
	.quad	.LBB5_62
	.quad	.LBB5_63
	.quad	.LBB5_79
	.quad	.LBB5_80
.LJTI5_5:
	.quad	.LBB5_86
	.quad	.LBB5_89
	.quad	.LBB5_99
	.quad	.LBB5_94
	.quad	.LBB5_98
.LJTI5_6:
	.quad	.LBB5_107
	.quad	.LBB5_110
	.quad	.LBB5_119
	.quad	.LBB5_114
	.quad	.LBB5_118

	.text
	.align	16, 0x90
	.type	device_c_alpha_enum_ptrs,@function
device_c_alpha_enum_ptrs:               # @device_c_alpha_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$st_device_forward, %r9d
	jmpq	*st_device_forward+32(%rip) # TAILCALL
.Lfunc_end6:
	.size	device_c_alpha_enum_ptrs, .Lfunc_end6-device_c_alpha_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	device_c_alpha_reloc_ptrs,@function
device_c_alpha_reloc_ptrs:              # @device_c_alpha_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$st_device_forward, %edx
	jmpq	*st_device_forward+40(%rip) # TAILCALL
.Lfunc_end7:
	.size	device_c_alpha_reloc_ptrs, .Lfunc_end7-device_c_alpha_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	dca_close,@function
dca_close:                              # @dca_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp47:
	.cfi_def_cfa_offset 16
	movq	%rdi, %rax
	movq	$gx_default_close_device, 1176(%rax)
	movq	24(%rax), %rdi
	movl	$.L.str.6, %edx
	movq	%rax, %rsi
	callq	*24(%rdi)
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end8:
	.size	dca_close, .Lfunc_end8-dca_close
	.cfi_endproc

	.align	16, 0x90
	.type	dca_map_rgb_color,@function
dca_map_rgb_color:                      # @dca_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	2(%rsi), %ecx
	movzwl	4(%rsi), %eax
	movzwl	(%rsi), %edx
	cmpl	$1, 100(%rdi)
	jne	.LBB9_2
# BB#1:                                 # %if.then.i
	imull	$30, %edx, %edx
	imull	$59, %ecx, %ecx
	imull	$11, %eax, %eax
	addl	%edx, %ecx
	leal	50(%rax,%rcx), %eax
	imulq	$1374389535, %rax, %rax # imm = 0x51EB851F
	shrq	$37, %rax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	jmp	.LBB9_3
.LBB9_2:                                # %if.else.27.i
	imull	$65281, %edx, %edx      # imm = 0xFF01
	addl	$8388608, %edx          # imm = 0x800000
	shrl	$8, %edx
	andl	$16711680, %edx         # imm = 0xFF0000
	imull	$65281, %ecx, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$16, %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	orl	%edx, %ecx
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	orl	%ecx, %eax
.LBB9_3:                                # %dca_map_rgb_alpha_color.exit
	movl	%eax, %eax
	shlq	$8, %rax
	orq	$255, %rax
	retq
.Lfunc_end9:
	.size	dca_map_rgb_color, .Lfunc_end9-dca_map_rgb_color
	.cfi_endproc

	.align	16, 0x90
	.type	dca_map_color_rgb,@function
dca_map_color_rgb:                      # @dca_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rcx
	movq	%rsi, %rax
	movl	%eax, %edx
	shrl	$24, %edx
	imull	$257, %edx, %esi        # imm = 0x101
	cmpl	$1, 100(%rdi)
	jne	.LBB10_6
# BB#1:                                 # %if.then
	movzbl	%al, %edi
	cmpl	$255, %edi
	je	.LBB10_5
# BB#2:                                 # %if.then
	testl	%edi, %edi
	jne	.LBB10_4
# BB#3:                                 # %if.then.16
	xorl	%esi, %esi
	jmp	.LBB10_5
.LBB10_6:                               # %if.else.26
	movl	%eax, %edx
	shrl	$16, %edx
	movzbl	%dl, %edx
	imull	$257, %edx, %r9d        # imm = 0x101
	movzbl	%ah, %edx  # NOREX
	imull	$257, %edx, %r8d        # imm = 0x101
	movzbl	%al, %edi
	cmpl	$255, %edi
	je	.LBB10_10
# BB#7:                                 # %if.else.26
	testl	%edi, %edi
	jne	.LBB10_9
# BB#8:                                 # %if.then.54
	xorl	%esi, %esi
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	jmp	.LBB10_10
.LBB10_4:                               # %if.else
	movzwl	%si, %eax
	imull	$255, %eax, %edx
	movl	%edi, %eax
	shrl	%eax
	addl	%edx, %eax
	xorl	%edx, %edx
	divl	%edi
	movl	%eax, %esi
.LBB10_5:                               # %if.end.23
	movw	%si, 4(%rcx)
	movw	%si, 2(%rcx)
	movw	%si, (%rcx)
	xorl	%eax, %eax
	retq
.LBB10_9:                               # %if.else.55
	movzwl	%si, %eax
	imull	$255, %eax, %eax
	movl	%edi, %r10d
	shrl	%r10d
	addl	%r10d, %eax
	xorl	%edx, %edx
	divl	%edi
	movzwl	%r9w, %edx
	imull	$255, %edx, %r9d
	addl	%r10d, %r9d
	xorl	%edx, %edx
	movl	%eax, %esi
	movl	%r9d, %eax
	divl	%edi
	movzwl	%r8w, %edx
	imull	$255, %edx, %r8d
	addl	%r10d, %r8d
	xorl	%edx, %edx
	movl	%eax, %r9d
	movl	%r8d, %eax
	divl	%edi
	movl	%eax, %r8d
.LBB10_10:                              # %if.end.81
	movw	%si, (%rcx)
	movw	%r9w, 2(%rcx)
	movw	%r8w, 4(%rcx)
	xorl	%eax, %eax
	retq
.Lfunc_end10:
	.size	dca_map_color_rgb, .Lfunc_end10-dca_map_color_rgb
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI11_0:
	.long	65535                   # 0xffff
	.long	65535                   # 0xffff
	.long	65535                   # 0xffff
	.long	65535                   # 0xffff
.LCPI11_1:
	.long	65281                   # 0xff01
	.long	65281                   # 0xff01
	.long	65281                   # 0xff01
	.long	65281                   # 0xff01
.LCPI11_2:
	.long	8388608                 # 0x800000
	.long	8388608                 # 0x800000
	.long	8388608                 # 0x800000
	.long	8388608                 # 0x800000
	.text
	.align	16, 0x90
	.type	dca_fill_rectangle,@function
dca_fill_rectangle:                     # @dca_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp49:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp50:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp51:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp52:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 56
	subq	$1240, %rsp             # imm = 0x4D8
.Ltmp54:
	.cfi_def_cfa_offset 1296
.Ltmp55:
	.cfi_offset %rbx, -56
.Ltmp56:
	.cfi_offset %r12, -48
.Ltmp57:
	.cfi_offset %r13, -40
.Ltmp58:
	.cfi_offset %r14, -32
.Ltmp59:
	.cfi_offset %r15, -24
.Ltmp60:
	.cfi_offset %rbp, -16
	movl	%edx, %r12d
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	1728(%rbx), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	%r12d, %eax
	orl	%r14d, %eax
	jns	.LBB11_2
# BB#1:                                 # %if.then
	movl	%r14d, %eax
	sarl	$31, %eax
	andl	%r14d, %eax
	addl	%eax, %ecx
	xorl	%eax, %eax
	testl	%r14d, %r14d
	cmovsl	%eax, %r14d
	movl	%r12d, %edx
	sarl	$31, %edx
	andl	%r12d, %edx
	addl	%edx, %r8d
	testl	%r12d, %r12d
	cmovsl	%eax, %r12d
.LBB11_2:                               # %do.body.11
	movl	832(%rbx), %r13d
	movl	836(%rbx), %r15d
	subl	%r14d, %r13d
	cmpl	%r13d, %ecx
	cmovlel	%ecx, %r13d
	subl	%r12d, %r15d
	cmpl	%r15d, %r8d
	cmovlel	%r8d, %r15d
	xorl	%ebp, %ebp
	testl	%r13d, %r13d
	jle	.LBB11_18
# BB#3:                                 # %do.body.11
	movq	%r9, 32(%rsp)           # 8-byte Spill
	testl	%r15d, %r15d
	jle	.LBB11_18
# BB#4:                                 # %do.end.35
	movq	24(%rbx), %rdi
	movzwl	108(%rbx), %esi
	imull	%r13d, %esi
	addl	$7, %esi
	sarl	$3, %esi
	movl	$.L.str.7, %edx
	callq	*64(%rdi)
	movq	%rax, %rbp
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	movq	24(%rbx), %rdi
	movq	48(%rsp), %rax          # 8-byte Reload
	movzwl	108(%rax), %esi
	imull	%r13d, %esi
	addl	$7, %esi
	sarl	$3, %esi
	movl	$.L.str.8, %edx
	callq	*64(%rdi)
	testq	%rbp, %rbp
	movl	$-25, %ebp
	je	.LBB11_5
# BB#6:                                 # %do.end.35
	testq	%rax, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	je	.LBB11_17
# BB#7:                                 # %if.end.55
	movq	%r14, 24(%rsp)          # 8-byte Spill
	movl	%r14d, 1224(%rsp)
	leal	(%r13,%r14), %eax
	movl	%eax, 1232(%rsp)
	movq	$1437665345, 688(%rsp)  # imm = 0x55B10841
	movq	%rbx, %rdi
	movl	1736(%rdi), %eax
	movl	%eax, 120(%rsp)
	cmpl	$14, %eax
	jne	.LBB11_9
# BB#8:                                 # %if.then.62
	movl	1740(%rdi), %eax
	movl	%eax, 124(%rsp)
.LBB11_9:                               # %if.end.65
	leaq	64(%rsp), %rdx
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	%rdi, %rbx
	callq	*1456(%rbx)
	pinsrw	$0, 70(%rsp), %xmm0
	pinsrw	$2, 64(%rsp), %xmm0
	pinsrw	$4, 66(%rsp), %xmm0
	pinsrw	$6, 68(%rsp), %xmm0
	pand	.LCPI11_0(%rip), %xmm0
	movdqa	.LCPI11_1(%rip), %xmm1  # xmm1 = [65281,65281,65281,65281]
	pshufd	$245, %xmm0, %xmm2      # xmm2 = xmm0[1,1,3,3]
	pmuludq	%xmm1, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	pmuludq	%xmm1, %xmm2
	pshufd	$232, %xmm2, %xmm1      # xmm1 = xmm2[0,2,2,3]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	paddd	.LCPI11_2(%rip), %xmm0
	psrld	$24, %xmm0
	movdqu	%xmm0, 128(%rsp)
	movq	$0, 96(%rsp)
	movl	$8, 104(%rsp)
	movl	$0, 112(%rsp)
	xorl	%ebp, %ebp
	testl	%r15d, %r15d
	jle	.LBB11_17
# BB#10:                                # %for.body.lr.ph
	addl	%r12d, %r15d
	.align	16, 0x90
.LBB11_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r12d, 1228(%rsp)
	leal	1(%r12), %r14d
	movl	%r14d, 1236(%rsp)
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	%rax, 696(%rsp)
	xorl	%ecx, %ecx
	movq	48(%rsp), %rdi          # 8-byte Reload
	leaq	1224(%rsp), %rsi
	leaq	688(%rsp), %rdx
	callq	*1448(%rdi)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB11_17
# BB#12:                                # %if.end.115
                                        #   in Loop: Header=BB11_11 Depth=1
	movq	696(%rsp), %rax
	movq	%rax, 72(%rsp)
	movl	$8, 80(%rsp)
	movq	688(%rsp), %rax
	testl	$67108864, %eax         # imm = 0x4000000
	movl	1208(%rsp), %ecx
	movl	$0, %edx
	cmovel	%edx, %ecx
	movl	%ecx, 84(%rsp)
	movl	%eax, %ecx
	shrl	$5, %ecx
	andl	$2, %ecx
	testb	$32, %al
	movl	$1, %eax
	cmovnel	%eax, %ecx
	movl	%ecx, 88(%rsp)
	movl	100(%rbx), %edx
	leaq	72(%rsp), %rdi
	leaq	96(%rsp), %rsi
	movl	%r13d, %ecx
	leaq	120(%rsp), %r8
	callq	composite_values
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB11_17
# BB#13:                                # %if.end.138
                                        #   in Loop: Header=BB11_11 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	cmpq	%rax, 696(%rsp)
	jne	.LBB11_14
# BB#15:                                # %if.then.143
                                        #   in Loop: Header=BB11_11 Depth=1
	movq	$1901133825, 152(%rsp)  # imm = 0x71510001
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%rax, 160(%rsp)
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, %esi
	movl	$1, %ecx
	movq	48(%rsp), %rdi          # 8-byte Reload
	movl	%r13d, %edx
	leaq	152(%rsp), %r8
	leaq	688(%rsp), %r9
	callq	gx_get_bits_copy
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB11_17
# BB#16:                                # %if.end.151
                                        #   in Loop: Header=BB11_11 Depth=1
	movl	%r13d, 8(%rsp)
	movl	%r12d, (%rsp)
	movl	$1, 16(%rsp)
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	40(%rsp), %rsi          # 8-byte Reload
	movq	24(%rsp), %r9           # 8-byte Reload
	callq	*1224(%rdi)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB11_17
.LBB11_14:                              # %for.cond.backedge
                                        #   in Loop: Header=BB11_11 Depth=1
	cmpl	%r15d, %r14d
	movl	%r14d, %r12d
	jl	.LBB11_11
	jmp	.LBB11_17
.LBB11_5:
	movq	%rax, 40(%rsp)          # 8-byte Spill
.LBB11_17:                              # %out
	movq	24(%rbx), %rdi
	movl	$.L.str.8, %edx
	movq	40(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movq	24(%rbx), %rdi
	movl	$.L.str.7, %edx
	movq	56(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
.LBB11_18:                              # %cleanup
	movl	%ebp, %eax
	addq	$1240, %rsp             # imm = 0x4D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	dca_fill_rectangle, .Lfunc_end11-dca_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	dca_copy_mono,@function
dca_copy_mono:                          # @dca_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	gx_default_copy_mono    # TAILCALL
.Lfunc_end12:
	.size	dca_copy_mono, .Lfunc_end12-dca_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	dca_copy_color,@function
dca_copy_color:                         # @dca_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	gx_default_copy_color   # TAILCALL
.Lfunc_end13:
	.size	dca_copy_color, .Lfunc_end13-dca_copy_color
	.cfi_endproc

	.align	16, 0x90
	.type	dca_map_rgb_alpha_color,@function
dca_map_rgb_alpha_color:                # @dca_map_rgb_alpha_color
	.cfi_startproc
# BB#0:                                 # %entry
	imull	$65281, %r8d, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	cmpl	$1, 100(%rdi)
	jne	.LBB14_5
# BB#1:                                 # %if.then
	movzwl	%si, %esi
	imull	$30, %esi, %esi
	movzwl	%dx, %edx
	imull	$59, %edx, %edx
	movzwl	%cx, %ecx
	imull	$11, %ecx, %ecx
	addl	%esi, %edx
	leal	50(%rcx,%rdx), %ecx
	imulq	$1374389535, %rcx, %rcx # imm = 0x51EB851F
	shrq	$37, %rcx
	cmpl	$255, %eax
	jne	.LBB14_3
# BB#2:                                 # %if.then.16
	imull	$65281, %ecx, %edx      # imm = 0xFF01
	addl	$8388608, %edx          # imm = 0x800000
	shrl	$24, %edx
	movl	%edx, %ecx
	jmp	.LBB14_8
.LBB14_5:                               # %if.else.27
	movzwl	%si, %esi
	cmpl	$255, %eax
	jne	.LBB14_7
# BB#6:                                 # %if.then.31
	imull	$65281, %esi, %esi      # imm = 0xFF01
	addl	$8388608, %esi          # imm = 0x800000
	shrl	$8, %esi
	andl	$16711680, %esi         # imm = 0xFF0000
	movzwl	%dx, %edx
	imull	$65281, %edx, %edx      # imm = 0xFF01
	addl	$8388608, %edx          # imm = 0x800000
	shrl	$16, %edx
	andl	$65280, %edx            # imm = 0xFF00
	orl	%esi, %edx
	movzwl	%cx, %ecx
	imull	$65281, %ecx, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$24, %ecx
	orl	%edx, %ecx
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	imull	%eax, %ecx
	addl	$32767, %ecx            # imm = 0x7FFF
	movl	$2147516417, %edx       # imm = 0x80008001
	imulq	%rcx, %rdx
	shrq	$47, %rdx
	movl	%edx, %ecx
	jmp	.LBB14_8
.LBB14_7:                               # %if.else.54
	imull	%eax, %esi
	addl	$32767, %esi            # imm = 0x7FFF
	movl	$2147516417, %edi       # imm = 0x80008001
	imulq	%rdi, %rsi
	shrq	$32, %rsi
	andl	$2147450880, %esi       # imm = 0x7FFF8000
	movzwl	%dx, %edx
	imull	%eax, %edx
	addl	$32767, %edx            # imm = 0x7FFF
	imulq	%rdi, %rdx
	shrq	$39, %rdx
	andl	$33554176, %edx         # imm = 0x1FFFF00
	leal	(%rdx,%rsi,2), %edx
	movzwl	%cx, %ecx
	imull	%eax, %ecx
	addl	$32767, %ecx            # imm = 0x7FFF
	imulq	%rdi, %rcx
	shrq	$47, %rcx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
.LBB14_8:                               # %if.end.76
	shlq	$8, %rcx
	orq	%rcx, %rax
	retq
.Lfunc_end14:
	.size	dca_map_rgb_alpha_color, .Lfunc_end14-dca_map_rgb_alpha_color
	.cfi_endproc

	.align	16, 0x90
	.type	dca_copy_alpha,@function
dca_copy_alpha:                         # @dca_copy_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	gx_default_copy_alpha   # TAILCALL
.Lfunc_end15:
	.size	dca_copy_alpha, .Lfunc_end15-dca_copy_alpha
	.cfi_endproc

	.align	16, 0x90
	.type	dca_map_color_rgb_alpha,@function
dca_map_color_rgb_alpha:                # @dca_map_color_rgb_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rcx
	movq	%rsi, %rax
	movzbl	%al, %edx
	imull	$257, %edx, %edx        # imm = 0x101
	movw	%dx, 6(%rcx)
	movl	%eax, %edx
	shrl	$24, %edx
	imull	$257, %edx, %esi        # imm = 0x101
	cmpl	$1, 100(%rdi)
	jne	.LBB16_6
# BB#1:                                 # %if.then.i
	movzbl	%al, %edi
	cmpl	$255, %edi
	je	.LBB16_5
# BB#2:                                 # %if.then.i
	testl	%edi, %edi
	jne	.LBB16_4
# BB#3:                                 # %if.then.16.i
	xorl	%esi, %esi
	jmp	.LBB16_5
.LBB16_6:                               # %if.else.26.i
	movl	%eax, %edx
	shrl	$16, %edx
	movzbl	%dl, %edx
	imull	$257, %edx, %r9d        # imm = 0x101
	movzbl	%ah, %edx  # NOREX
	imull	$257, %edx, %r8d        # imm = 0x101
	movzbl	%al, %edi
	cmpl	$255, %edi
	je	.LBB16_10
# BB#7:                                 # %if.else.26.i
	testl	%edi, %edi
	jne	.LBB16_9
# BB#8:                                 # %if.then.54.i
	xorl	%esi, %esi
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	jmp	.LBB16_10
.LBB16_4:                               # %if.else.i
	movzwl	%si, %eax
	imull	$255, %eax, %edx
	movl	%edi, %eax
	shrl	%eax
	addl	%edx, %eax
	xorl	%edx, %edx
	divl	%edi
	movl	%eax, %esi
.LBB16_5:                               # %if.end.23.i
	movw	%si, 4(%rcx)
	movw	%si, 2(%rcx)
	movw	%si, (%rcx)
	xorl	%eax, %eax
	retq
.LBB16_9:                               # %if.else.55.i
	movzwl	%si, %eax
	imull	$255, %eax, %eax
	movl	%edi, %r10d
	shrl	%r10d
	addl	%r10d, %eax
	xorl	%edx, %edx
	divl	%edi
	movzwl	%r9w, %edx
	imull	$255, %edx, %r9d
	addl	%r10d, %r9d
	xorl	%edx, %edx
	movl	%eax, %esi
	movl	%r9d, %eax
	divl	%edi
	movzwl	%r8w, %edx
	imull	$255, %edx, %r8d
	addl	%r10d, %r8d
	xorl	%edx, %edx
	movl	%eax, %r9d
	movl	%r8d, %eax
	divl	%edi
	movl	%eax, %r8d
.LBB16_10:                              # %if.end.81.i
	movw	%si, (%rcx)
	movw	%r9w, 2(%rcx)
	movw	%r8w, 4(%rcx)
	xorl	%eax, %eax
	retq
.Lfunc_end16:
	.size	dca_map_color_rgb_alpha, .Lfunc_end16-dca_map_color_rgb_alpha
	.cfi_endproc

	.type	gs_composite_alpha_type,@object # @gs_composite_alpha_type
	.section	.rodata,"a",@progbits
	.globl	gs_composite_alpha_type
	.align	8
gs_composite_alpha_type:
	.byte	1                       # 0x1
	.zero	7
	.quad	c_alpha_create_default_compositor
	.quad	c_alpha_equal
	.quad	c_alpha_write
	.quad	c_alpha_read
	.quad	gx_default_composite_adjust_ctm
	.quad	gx_default_composite_is_closing
	.quad	gx_default_composite_is_friendly
	.quad	gx_default_composite_clist_write_update
	.quad	gx_default_composite_clist_read_update
	.quad	gx_default_composite_get_cropping
	.size	gs_composite_alpha_type, 88

	.type	st_composite_alpha,@object # @st_composite_alpha
	.align	8
st_composite_alpha:
	.long	48                      # 0x30
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_composite_alpha, 64

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_create_composite_alpha"
	.size	.L.str, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gs_composite_alpha_t"
	.size	.L.str.1, 21

	.type	st_device_composite_alpha,@object # @st_device_composite_alpha
	.section	.rodata,"a",@progbits
	.align	8
st_device_composite_alpha:
	.long	1744                    # 0x6d0
	.zero	4
	.quad	.L.str.3
	.quad	0
	.quad	0
	.quad	device_c_alpha_enum_ptrs
	.quad	device_c_alpha_reloc_ptrs
	.quad	gx_device_finalize
	.quad	0
	.size	st_device_composite_alpha, 64

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"create default alpha compositor"
	.size	.L.str.2, 32

	.type	gs_composite_alpha_device,@object # @gs_composite_alpha_device
	.section	.rodata,"a",@progbits
	.align	8
gs_composite_alpha_device:
	.long	1744                    # 0x6d0
	.zero	4
	.quad	0
	.quad	.L.str.4
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.5
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
	.zero	16
	.long	0                       # 0x0
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	gx_default_open_device
	.quad	gx_forward_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gx_default_output_page
	.quad	dca_close
	.quad	dca_map_rgb_color
	.quad	dca_map_color_rgb
	.quad	dca_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	dca_copy_mono
	.quad	dca_copy_color
	.quad	gx_default_draw_line
	.quad	gx_default_get_bits
	.quad	gx_forward_get_params
	.quad	gx_forward_put_params
	.quad	cmyk_8bit_map_cmyk_color
	.quad	gx_forward_get_xfont_procs
	.quad	gx_forward_get_xfont_device
	.quad	dca_map_rgb_alpha_color
	.quad	gx_forward_get_page_device
	.quad	gx_default_get_alpha_bits
	.quad	dca_copy_alpha
	.quad	gx_forward_get_band
	.quad	gx_default_copy_rop
	.quad	gx_default_fill_path
	.quad	gx_default_stroke_path
	.quad	gx_default_fill_mask
	.quad	gx_default_fill_trapezoid
	.quad	gx_default_fill_parallelogram
	.quad	gx_default_fill_triangle
	.quad	gx_default_draw_thin_line
	.quad	gx_default_begin_image
	.quad	gx_default_image_data
	.quad	gx_default_end_image
	.quad	gx_default_strip_tile_rectangle
	.quad	gx_default_strip_copy_rop
	.quad	gx_forward_get_clipping_box
	.quad	gx_default_begin_typed_image
	.quad	gx_forward_get_bits_rectangle
	.quad	dca_map_color_rgb_alpha
	.quad	gx_no_create_compositor
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	8
	.size	gs_composite_alpha_device, 1744

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"gx_device_composite_alpha"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"alpha compositor"
	.size	.L.str.4, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"DeviceGray"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"dca_close"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"dca_fill_rectangle(std)"
	.size	.L.str.7, 24

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"dca_fill_rectangle(native)"
	.size	.L.str.8, 27


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
