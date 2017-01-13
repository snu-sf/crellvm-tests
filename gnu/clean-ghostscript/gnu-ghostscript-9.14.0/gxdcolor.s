	.text
	.file	"gxdcolor.bc"
	.align	16, 0x90
	.type	gx_dc_no_save_dc,@function
gx_dc_no_save_dc:                       # @gx_dc_no_save_dc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	movq	%rax, (%rsi)
	retq
.Lfunc_end0:
	.size	gx_dc_no_save_dc, .Lfunc_end0-gx_dc_no_save_dc
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_no_get_dev_halftone,@function
gx_dc_no_get_dev_halftone:              # @gx_dc_no_get_dev_halftone
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	gx_dc_no_get_dev_halftone, .Lfunc_end1-gx_dc_no_get_dev_halftone
	.cfi_endproc

	.globl	gx_dc_no_get_phase
	.align	16, 0x90
	.type	gx_dc_no_get_phase,@function
gx_dc_no_get_phase:                     # @gx_dc_no_get_phase
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	gx_dc_no_get_phase, .Lfunc_end2-gx_dc_no_get_phase
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_no_load,@function
gx_dc_no_load:                          # @gx_dc_no_load
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	gx_dc_no_load, .Lfunc_end3-gx_dc_no_load
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_no_fill_rectangle,@function
gx_dc_no_fill_rectangle:                # @gx_dc_no_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$680, %rsp              # imm = 0x2A8
.Ltmp0:
	.cfi_def_cfa_offset 688
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jle	.LBB4_4
# BB#1:                                 # %entry
	testl	%r8d, %r8d
	jle	.LBB4_4
# BB#2:                                 # %if.end
	movl	688(%rsp), %r10d
	movl	%r10d, %edi
	shll	$4, %edi
	xorl	%r10d, %edi
	andl	$240, %edi
	movl	%r10d, %r11d
	andl	$512, %r11d             # imm = 0x200
	movl	$-100, %eax
	orl	%edi, %r11d
	jne	.LBB4_4
# BB#3:                                 # %if.end.6
	movq	696(%rsp), %rax
	movq	$0, 32(%rsp)
	movq	$gx_dc_type_data_pure, 24(%rsp)
	movl	$0, 384(%rsp)
	movq	%rax, 8(%rsp)
	movl	%r10d, (%rsp)
	leaq	24(%rsp), %rdi
	callq	gx_dc_pure_fill_rectangle
.LBB4_4:                                # %cleanup
	addq	$680, %rsp              # imm = 0x2A8
	retq
.Lfunc_end4:
	.size	gx_dc_no_fill_rectangle, .Lfunc_end4-gx_dc_no_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_no_fill_masked,@function
gx_dc_no_fill_masked:                   # @gx_dc_no_fill_masked
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%ecx, %ecx
	cmpl	$0, 24(%rsp)
	movl	$-100, %eax
	cmovlel	%ecx, %eax
	cmpl	$0, 16(%rsp)
	cmovlel	%ecx, %eax
	retq
.Lfunc_end5:
	.size	gx_dc_no_fill_masked, .Lfunc_end5-gx_dc_no_fill_masked
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_no_equal,@function
gx_dc_no_equal:                         # @gx_dc_no_equal
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end6:
	.size	gx_dc_no_equal, .Lfunc_end6-gx_dc_no_equal
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_no_write,@function
gx_dc_no_write:                         # @gx_dc_no_write
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$0, (%r9)
	testq	%rsi, %rsi
	je	.LBB7_1
# BB#2:                                 # %land.rhs
	movq	(%rsi), %rax
	cmpq	(%rdi), %rax
	sete	%al
	movzbl	%al, %eax
	retq
.LBB7_1:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.Lfunc_end7:
	.size	gx_dc_no_write, .Lfunc_end7-gx_dc_no_write
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_no_read,@function
gx_dc_no_read:                          # @gx_dc_no_read
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$gx_dc_type_data_none, (%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end8:
	.size	gx_dc_no_read, .Lfunc_end8-gx_dc_no_read
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_no_get_nonzero_comps,@function
gx_dc_no_get_nonzero_comps:             # @gx_dc_no_get_nonzero_comps
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end9:
	.size	gx_dc_no_get_nonzero_comps, .Lfunc_end9-gx_dc_no_get_nonzero_comps
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_null_load,@function
gx_dc_null_load:                        # @gx_dc_null_load
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end10:
	.size	gx_dc_null_load, .Lfunc_end10-gx_dc_null_load
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_null_fill_rectangle,@function
gx_dc_null_fill_rectangle:              # @gx_dc_null_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end11:
	.size	gx_dc_null_fill_rectangle, .Lfunc_end11-gx_dc_null_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_null_fill_masked,@function
gx_dc_null_fill_masked:                 # @gx_dc_null_fill_masked
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end12:
	.size	gx_dc_null_fill_masked, .Lfunc_end12-gx_dc_null_fill_masked
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_null_equal,@function
gx_dc_null_equal:                       # @gx_dc_null_equal
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	cmpq	(%rdi), %rax
	sete	%al
	movzbl	%al, %eax
	retq
.Lfunc_end13:
	.size	gx_dc_null_equal, .Lfunc_end13-gx_dc_null_equal
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_null_read,@function
gx_dc_null_read:                        # @gx_dc_null_read
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$gx_dc_type_data_null, (%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end14:
	.size	gx_dc_null_read, .Lfunc_end14-gx_dc_null_read
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_pure_save_dc,@function
gx_dc_pure_save_dc:                     # @gx_dc_pure_save_dc
	.cfi_startproc
# BB#0:                                 # %entry
	movups	(%rdi), %xmm0
	movups	%xmm0, (%rsi)
	retq
.Lfunc_end15:
	.size	gx_dc_pure_save_dc, .Lfunc_end15-gx_dc_pure_save_dc
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_pure_load,@function
gx_dc_pure_load:                        # @gx_dc_pure_load
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end16:
	.size	gx_dc_pure_load, .Lfunc_end16-gx_dc_pure_load
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_pure_fill_rectangle,@function
gx_dc_pure_fill_rectangle:              # @gx_dc_pure_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp2:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp3:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp4:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp5:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 56
	subq	$440, %rsp              # imm = 0x1B8
.Ltmp7:
	.cfi_def_cfa_offset 496
.Ltmp8:
	.cfi_offset %rbx, -56
.Ltmp9:
	.cfi_offset %r12, -48
.Ltmp10:
	.cfi_offset %r13, -40
.Ltmp11:
	.cfi_offset %r14, -32
.Ltmp12:
	.cfi_offset %r15, -24
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%r9, %rbx
	movl	%r8d, %r15d
	movl	%ecx, %r14d
	movl	%edx, %r11d
	movl	%esi, %r10d
	movq	504(%rsp), %r12
	movl	496(%rsp), %ebp
	testq	%r12, %r12
	jne	.LBB17_2
# BB#1:                                 # %entry
	movl	%ebp, %eax
	andl	$563, %eax              # imm = 0x233
	cmpl	$48, %eax
	jne	.LBB17_2
# BB#22:                                # %if.then
	movq	1200(%rbx), %rax
	movq	8(%rdi), %r9
	movq	%rbx, %rdi
	movl	%r10d, %esi
	movl	%r11d, %edx
	movl	%r14d, %ecx
	movl	%r15d, %r8d
	addq	$440, %rsp              # imm = 0x1B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB17_2:                               # %if.end
	movq	8(%rdi), %rax
	movq	%rax, 168(%rsp)
	movq	%rax, 160(%rsp)
	testq	%r12, %r12
	jne	.LBB17_18
# BB#3:                                 # %if.then.7
	movl	%ebp, 92(%rsp)          # 4-byte Spill
	movl	%r15d, 96(%rsp)         # 4-byte Spill
	movl	%r14d, 100(%rsp)        # 4-byte Spill
	movl	%r11d, 104(%rsp)        # 4-byte Spill
	movl	%r10d, 108(%rsp)        # 4-byte Spill
	movq	816(%rbx), %rax
	movl	$gx_rop_no_source_0, %r12d
	leaq	304(%rsp), %rbp
	movabsq	$8589934584, %r13       # imm = 0x1FFFFFFF8
	leaq	176(%rsp), %r14
	jmp	.LBB17_4
	.align	16, 0x90
.LBB17_16:                              # %gx_device_black.exit.i
                                        #   in Loop: Header=BB17_4 Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*1552(%rbx)
	movq	%rax, 816(%rbx)
.LBB17_4:                               # %top.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_11 Depth 2
                                        #     Child Loop BB17_15 Depth 2
	cmpq	$-1, %rax
	jne	.LBB17_5
# BB#8:                                 # %if.then.i.i
                                        #   in Loop: Header=BB17_4 Depth=1
	movq	%rbx, %rdi
	callq	*1536(%rbx)
	movl	100(%rbx), %r15d
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	callq	*(%rax)
	testl	%r15d, %r15d
	jle	.LBB17_16
# BB#9:                                 # %for.body.i.i.preheader
                                        #   in Loop: Header=BB17_4 Depth=1
	leal	-1(%r15), %ecx
	leaq	1(%rcx), %rax
	movq	%rax, %rdx
	andq	%r13, %rdx
	movl	$0, %esi
	je	.LBB17_13
# BB#10:                                # %vector.body.preheader
                                        #   in Loop: Header=BB17_4 Depth=1
	incq	%rcx
	andq	%r13, %rcx
	leaq	184(%rsp), %rsi
	leaq	312(%rsp), %rdi
	.align	16, 0x90
.LBB17_11:                              # %vector.body
                                        #   Parent Loop BB17_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rdi), %xmm0         # xmm0 = mem[0],zero
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	movq	(%rdi), %xmm1           # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	movdqa	%xmm0, %xmm2
	paddd	%xmm2, %xmm2
	movdqa	%xmm1, %xmm3
	paddd	%xmm3, %xmm3
	psrld	$11, %xmm0
	psrld	$11, %xmm1
	paddw	%xmm2, %xmm0
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, -8(%rsi)
	paddw	%xmm3, %xmm1
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rsi)
	addq	$16, %rdi
	addq	$16, %rsi
	addq	$-8, %rcx
	jne	.LBB17_11
# BB#12:                                #   in Loop: Header=BB17_4 Depth=1
	movq	%rdx, %rsi
.LBB17_13:                              # %middle.block
                                        #   in Loop: Header=BB17_4 Depth=1
	cmpq	%rsi, %rax
	je	.LBB17_16
# BB#14:                                # %for.body.i.i.preheader33
                                        #   in Loop: Header=BB17_4 Depth=1
	subl	%esi, %r15d
	leaq	176(%rsp,%rsi,2), %rax
	leaq	304(%rsp,%rsi,2), %rcx
	.align	16, 0x90
.LBB17_15:                              # %for.body.i.i
                                        #   Parent Loop BB17_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movswl	(%rcx), %edx
	movl	%edx, %esi
	shrl	$11, %esi
	leal	(%rsi,%rdx,2), %edx
	movw	%dx, (%rax)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%r15d
	jne	.LBB17_15
	jmp	.LBB17_16
.LBB17_5:                               # %top.i
	testq	%rax, %rax
	movl	108(%rsp), %r10d        # 4-byte Reload
	movl	104(%rsp), %r11d        # 4-byte Reload
	movl	100(%rsp), %r14d        # 4-byte Reload
	movl	96(%rsp), %r15d         # 4-byte Reload
	movl	92(%rsp), %ebp          # 4-byte Reload
	je	.LBB17_18
# BB#6:                                 # %top.i
	cmpq	$1, %rax
	jne	.LBB17_7
# BB#17:                                # %if.end.8.loopexit34
	movl	$gx_rop_no_source_1, %r12d
	jmp	.LBB17_18
.LBB17_7:                               # %if.else.7.i
	movups	gx_rop_no_source_0+32(%rip), %xmm0
	movaps	%xmm0, 144(%rsp)
	movups	gx_rop_no_source_0+16(%rip), %xmm0
	movaps	%xmm0, 128(%rsp)
	movups	gx_rop_no_source_0(%rip), %xmm0
	movaps	%xmm0, 112(%rsp)
	movq	%rax, 144(%rsp)
	movq	%rax, 136(%rsp)
	leaq	112(%rsp), %r12
.LBB17_18:                              # %if.end.8
	movl	40(%r12), %eax
	movq	(%r12), %rsi
	movl	8(%r12), %edx
	movl	12(%r12), %ecx
	movq	16(%r12), %r8
	movl	44(%r12), %edi
	addq	$24, %r12
	xorl	%r9d, %r9d
	testl	%eax, %eax
	je	.LBB17_19
# BB#20:                                # %if.else
	testl	%edi, %edi
	cmovneq	%r12, %r9
	movl	%eax, 72(%rsp)
	movl	%ebp, 64(%rsp)
	movl	%r15d, 40(%rsp)
	movl	%r14d, 32(%rsp)
	movl	%r11d, 24(%rsp)
	movl	%r10d, 16(%rsp)
	leaq	160(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	$0, 56(%rsp)
	movl	$0, 48(%rsp)
	movq	$0, (%rsp)
	movq	%rbx, %rdi
	callq	*1696(%rbx)
	jmp	.LBB17_21
.LBB17_19:                              # %if.then.10
	testl	%edi, %edi
	cmovneq	%r12, %r9
	movl	%ebp, 64(%rsp)
	movl	%r15d, 40(%rsp)
	movl	%r14d, 32(%rsp)
	movl	%r11d, 24(%rsp)
	movl	%r10d, 16(%rsp)
	leaq	160(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	$0, 56(%rsp)
	movl	$0, 48(%rsp)
	movq	$0, (%rsp)
	movq	%rbx, %rdi
	callq	*1424(%rbx)
.LBB17_21:                              # %return
	addq	$440, %rsp              # imm = 0x1B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gx_dc_pure_fill_rectangle, .Lfunc_end17-gx_dc_pure_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_pure_fill_masked,@function
gx_dc_pure_fill_masked:                 # @gx_dc_pure_fill_masked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp15:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp17:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp18:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 56
	subq	$408, %rsp              # imm = 0x198
.Ltmp20:
	.cfi_def_cfa_offset 464
.Ltmp21:
	.cfi_offset %rbx, -56
.Ltmp22:
	.cfi_offset %r12, -48
.Ltmp23:
	.cfi_offset %r13, -40
.Ltmp24:
	.cfi_offset %r14, -32
.Ltmp25:
	.cfi_offset %r15, -24
.Ltmp26:
	.cfi_offset %rbp, -16
	movl	%r9d, %r10d
	movq	%r8, %r12
	movl	504(%rsp), %ebx
	movl	496(%rsp), %r15d
	movq	488(%rsp), %r13
	movl	480(%rsp), %ebp
	movl	472(%rsp), %r11d
	movl	464(%rsp), %r8d
	movl	%r15d, %eax
	andl	$563, %eax              # imm = 0x233
	cmpl	$48, %eax
	jne	.LBB18_3
# BB#1:                                 # %if.then
	movq	8(%rdi), %rax
	cmpl	$1, %ebx
	sbbq	%rdi, %rdi
	movq	%rdi, %rbx
	orq	%rax, %rbx
	notq	%rdi
	orq	%rax, %rdi
	movq	%rbx, 24(%rsp)
	movl	%ebp, 16(%rsp)
	movl	%r11d, 8(%rsp)
	movl	%r8d, (%rsp)
	movq	%rdi, 32(%rsp)
	movq	%r13, %rdi
	movq	%r12, %r8
	movl	%r10d, %r9d
	callq	*1216(%r13)
	jmp	.LBB18_2
.LBB18_3:                               # %if.end.4
	movabsq	$8589934584, %r14       # imm = 0x1FFFFFFF8
	cmpl	$252, %r15d
	jne	.LBB18_4
# BB#24:                                # %if.else.10
	movq	816(%r13), %rax
	cmpq	$-1, %rax
	jne	.LBB18_34
# BB#25:                                # %if.then.i.60
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	movq	%rsi, 88(%rsp)          # 8-byte Spill
	movl	%r10d, 100(%rsp)        # 4-byte Spill
	movl	%edx, 104(%rsp)         # 4-byte Spill
	movl	%ecx, 108(%rsp)         # 4-byte Spill
	movq	%r13, %rdi
	callq	*1536(%r13)
	movl	100(%r13), %ebx
	leaq	272(%rsp), %rdx
	xorl	%esi, %esi
	movq	%r13, %rdi
	callq	*(%rax)
	testl	%ebx, %ebx
	jle	.LBB18_33
# BB#26:                                # %for.body.i.72.preheader
	leal	-1(%rbx), %ecx
	leaq	1(%rcx), %rax
	xorl	%esi, %esi
	movq	%rax, %rdx
	andq	%r14, %rdx
	je	.LBB18_30
# BB#27:                                # %vector.body143.preheader
	leaq	280(%rsp), %rsi
	leaq	152(%rsp), %rdi
	incq	%rcx
	andq	%r14, %rcx
	.align	16, 0x90
.LBB18_28:                              # %vector.body143
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rsi), %xmm0         # xmm0 = mem[0],zero
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	movq	(%rsi), %xmm1           # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	movdqa	%xmm0, %xmm2
	paddd	%xmm2, %xmm2
	movdqa	%xmm1, %xmm3
	paddd	%xmm3, %xmm3
	psrld	$11, %xmm0
	psrld	$11, %xmm1
	paddw	%xmm2, %xmm0
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, -8(%rdi)
	paddw	%xmm3, %xmm1
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rdi)
	addq	$16, %rsi
	addq	$16, %rdi
	addq	$-8, %rcx
	jne	.LBB18_28
# BB#29:
	movq	%rdx, %rsi
.LBB18_30:                              # %middle.block144
	cmpq	%rsi, %rax
	je	.LBB18_33
# BB#31:                                # %for.body.i.72.preheader195
	subl	%esi, %ebx
	leaq	144(%rsp,%rsi,2), %rax
	leaq	272(%rsp,%rsi,2), %rcx
	.align	16, 0x90
.LBB18_32:                              # %for.body.i.72
                                        # =>This Inner Loop Header: Depth=1
	movswl	(%rcx), %edx
	movl	%edx, %esi
	shrl	$11, %esi
	leal	(%rsi,%rdx,2), %edx
	movw	%dx, (%rax)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%ebx
	jne	.LBB18_32
.LBB18_33:                              # %for.end.i.76
	leaq	144(%rsp), %rsi
	movq	%r13, %rdi
	callq	*1552(%r13)
	movq	%rax, 816(%r13)
	movl	108(%rsp), %ecx         # 4-byte Reload
	movl	104(%rsp), %edx         # 4-byte Reload
	movl	100(%rsp), %r10d        # 4-byte Reload
	movl	464(%rsp), %ebp
	movl	%ebp, %r8d
	movq	88(%rsp), %rsi          # 8-byte Reload
	movl	472(%rsp), %ebp
	movl	%ebp, %r11d
	movl	480(%rsp), %ebp
	movl	504(%rsp), %edi
	movl	%edi, %ebx
	movq	80(%rsp), %rdi          # 8-byte Reload
.LBB18_34:                              # %gx_device_black.exit77
	movq	%rax, 128(%rsp)
	movq	824(%r13), %rax
	cmpq	$-1, %rax
	jne	.LBB18_45
# BB#35:                                # %if.then.i.88
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	movq	%rsi, 88(%rsp)          # 8-byte Spill
	movl	%r10d, 100(%rsp)        # 4-byte Spill
	movl	%edx, 104(%rsp)         # 4-byte Spill
	movl	%ecx, 108(%rsp)         # 4-byte Spill
	movq	%r13, %rdi
	callq	*1536(%r13)
	movl	100(%r13), %ebx
	leaq	272(%rsp), %rdx
	movl	$32760, %esi            # imm = 0x7FF8
	movq	%r13, %rdi
	callq	*(%rax)
	testl	%ebx, %ebx
	jle	.LBB18_43
# BB#36:                                # %for.body.i.100.preheader
	leal	-1(%rbx), %ecx
	leaq	1(%rcx), %rax
	xorl	%esi, %esi
	movq	%rax, %rdx
	andq	%r14, %rdx
	je	.LBB18_40
# BB#37:                                # %vector.body169.preheader
	leaq	280(%rsp), %rsi
	leaq	152(%rsp), %rdi
	incq	%rcx
	andq	%r14, %rcx
	.align	16, 0x90
.LBB18_38:                              # %vector.body169
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rsi), %xmm0         # xmm0 = mem[0],zero
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	movq	(%rsi), %xmm1           # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	movdqa	%xmm0, %xmm2
	paddd	%xmm2, %xmm2
	movdqa	%xmm1, %xmm3
	paddd	%xmm3, %xmm3
	psrld	$11, %xmm0
	psrld	$11, %xmm1
	paddw	%xmm2, %xmm0
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, -8(%rdi)
	paddw	%xmm3, %xmm1
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rdi)
	addq	$16, %rsi
	addq	$16, %rdi
	addq	$-8, %rcx
	jne	.LBB18_38
# BB#39:
	movq	%rdx, %rsi
.LBB18_40:                              # %middle.block170
	cmpq	%rsi, %rax
	je	.LBB18_43
# BB#41:                                # %for.body.i.100.preheader194
	subl	%esi, %ebx
	leaq	144(%rsp,%rsi,2), %rax
	leaq	272(%rsp,%rsi,2), %rcx
	.align	16, 0x90
.LBB18_42:                              # %for.body.i.100
                                        # =>This Inner Loop Header: Depth=1
	movswl	(%rcx), %edx
	movl	%edx, %esi
	shrl	$11, %esi
	leal	(%rsi,%rdx,2), %edx
	movw	%dx, (%rax)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%ebx
	jne	.LBB18_42
.LBB18_43:                              # %for.end.i.104
	leaq	144(%rsp), %rsi
	movq	%r13, %rdi
	callq	*1552(%r13)
	movq	%rax, 824(%r13)
	jmp	.LBB18_44
.LBB18_4:                               # %if.then.6
	movq	824(%r13), %rax
	cmpq	$-1, %rax
	jne	.LBB18_14
# BB#5:                                 # %if.then.i
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	movq	%rsi, 88(%rsp)          # 8-byte Spill
	movl	%r10d, 100(%rsp)        # 4-byte Spill
	movl	%edx, 104(%rsp)         # 4-byte Spill
	movl	%ecx, 108(%rsp)         # 4-byte Spill
	movq	%r12, %rbx
	movq	%r13, %rdi
	callq	*1536(%r13)
	movl	100(%r13), %r12d
	leaq	272(%rsp), %rdx
	movl	$32760, %esi            # imm = 0x7FF8
	movq	%r13, %rdi
	callq	*(%rax)
	testl	%r12d, %r12d
	jle	.LBB18_13
# BB#6:                                 # %for.body.i.preheader
	leal	-1(%r12), %ecx
	leaq	1(%rcx), %rax
	xorl	%esi, %esi
	movq	%rax, %rdx
	andq	%r14, %rdx
	je	.LBB18_10
# BB#7:                                 # %vector.body.preheader
	leaq	280(%rsp), %rsi
	leaq	152(%rsp), %rdi
	incq	%rcx
	andq	%r14, %rcx
	.align	16, 0x90
.LBB18_8:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rsi), %xmm0         # xmm0 = mem[0],zero
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	movq	(%rsi), %xmm1           # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	movdqa	%xmm0, %xmm2
	paddd	%xmm2, %xmm2
	movdqa	%xmm1, %xmm3
	paddd	%xmm3, %xmm3
	psrld	$11, %xmm0
	psrld	$11, %xmm1
	paddw	%xmm2, %xmm0
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, -8(%rdi)
	paddw	%xmm3, %xmm1
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rdi)
	addq	$16, %rsi
	addq	$16, %rdi
	addq	$-8, %rcx
	jne	.LBB18_8
# BB#9:
	movq	%rdx, %rsi
.LBB18_10:                              # %middle.block
	cmpq	%rsi, %rax
	je	.LBB18_13
# BB#11:                                # %for.body.i.preheader197
	subl	%esi, %r12d
	leaq	144(%rsp,%rsi,2), %rax
	leaq	272(%rsp,%rsi,2), %rcx
	.align	16, 0x90
.LBB18_12:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movswl	(%rcx), %edx
	movl	%edx, %esi
	shrl	$11, %esi
	leal	(%rsi,%rdx,2), %edx
	movw	%dx, (%rax)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%r12d
	jne	.LBB18_12
.LBB18_13:                              # %for.end.i
	leaq	144(%rsp), %rsi
	movq	%r13, %rdi
	callq	*1552(%r13)
	movq	%rax, 824(%r13)
	movq	%rbx, %r12
	movl	108(%rsp), %ecx         # 4-byte Reload
	movl	104(%rsp), %edx         # 4-byte Reload
	movl	100(%rsp), %r10d        # 4-byte Reload
	movl	464(%rsp), %ebp
	movl	%ebp, %r8d
	movq	88(%rsp), %rsi          # 8-byte Reload
	movl	472(%rsp), %ebp
	movl	%ebp, %r11d
	movl	480(%rsp), %ebp
	movl	504(%rsp), %edi
	movl	%edi, %ebx
	movq	80(%rsp), %rdi          # 8-byte Reload
.LBB18_14:                              # %gx_device_white.exit
	movq	%rax, 128(%rsp)
	movq	816(%r13), %rax
	cmpq	$-1, %rax
	jne	.LBB18_45
# BB#15:                                # %if.then.i.33
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	movq	%rsi, 88(%rsp)          # 8-byte Spill
	movl	%r10d, 100(%rsp)        # 4-byte Spill
	movl	%edx, 104(%rsp)         # 4-byte Spill
	movl	%ecx, 108(%rsp)         # 4-byte Spill
	movq	%r13, %rdi
	callq	*1536(%r13)
	movl	100(%r13), %ebx
	leaq	272(%rsp), %rdx
	xorl	%esi, %esi
	movq	%r13, %rdi
	callq	*(%rax)
	testl	%ebx, %ebx
	jle	.LBB18_23
# BB#16:                                # %for.body.i.45.preheader
	leal	-1(%rbx), %ecx
	leaq	1(%rcx), %rax
	xorl	%esi, %esi
	movq	%rax, %rdx
	andq	%r14, %rdx
	je	.LBB18_20
# BB#17:                                # %vector.body117.preheader
	leaq	280(%rsp), %rsi
	leaq	152(%rsp), %rdi
	incq	%rcx
	andq	%r14, %rcx
	.align	16, 0x90
.LBB18_18:                              # %vector.body117
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rsi), %xmm0         # xmm0 = mem[0],zero
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	movq	(%rsi), %xmm1           # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	movdqa	%xmm0, %xmm2
	paddd	%xmm2, %xmm2
	movdqa	%xmm1, %xmm3
	paddd	%xmm3, %xmm3
	psrld	$11, %xmm0
	psrld	$11, %xmm1
	paddw	%xmm2, %xmm0
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, -8(%rdi)
	paddw	%xmm3, %xmm1
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rdi)
	addq	$16, %rsi
	addq	$16, %rdi
	addq	$-8, %rcx
	jne	.LBB18_18
# BB#19:
	movq	%rdx, %rsi
.LBB18_20:                              # %middle.block118
	cmpq	%rsi, %rax
	je	.LBB18_23
# BB#21:                                # %for.body.i.45.preheader196
	subl	%esi, %ebx
	leaq	144(%rsp,%rsi,2), %rax
	leaq	272(%rsp,%rsi,2), %rcx
	.align	16, 0x90
.LBB18_22:                              # %for.body.i.45
                                        # =>This Inner Loop Header: Depth=1
	movswl	(%rcx), %edx
	movl	%edx, %esi
	shrl	$11, %esi
	leal	(%rsi,%rdx,2), %edx
	movw	%dx, (%rax)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%ebx
	jne	.LBB18_22
.LBB18_23:                              # %for.end.i.49
	leaq	144(%rsp), %rsi
	movq	%r13, %rdi
	callq	*1552(%r13)
	movq	%rax, 816(%r13)
.LBB18_44:                              # %gx_device_white.exit105
	movl	108(%rsp), %ecx         # 4-byte Reload
	movl	104(%rsp), %edx         # 4-byte Reload
	movl	100(%rsp), %r10d        # 4-byte Reload
	movl	464(%rsp), %ebp
	movl	%ebp, %r8d
	movq	88(%rsp), %rsi          # 8-byte Reload
	movl	472(%rsp), %ebp
	movl	%ebp, %r11d
	movl	480(%rsp), %ebp
	movl	504(%rsp), %edi
	movl	%edi, %ebx
	movq	80(%rsp), %rdi          # 8-byte Reload
.LBB18_45:                              # %gx_device_white.exit105
	leaq	128(%rsp), %r9
	movq	%rax, 136(%rsp)
	movq	8(%rdi), %rax
	movq	%rax, 120(%rsp)
	movq	%rax, 112(%rsp)
	movq	1424(%r13), %rax
	testl	%ebx, %ebx
	je	.LBB18_47
# BB#46:                                # %cond.true
	movl	%r15d, %edi
	shrl	$2, %edi
	andl	$51, %edi
	andl	$-256, %r15d
	orl	%edi, %r15d
.LBB18_47:                              # %return
	orl	$460, %r15d             # imm = 0x1CC
	movl	%r15d, 64(%rsp)
	movl	%ebp, 40(%rsp)
	movl	%r11d, 32(%rsp)
	movl	%r8d, 24(%rsp)
	movl	%r10d, 16(%rsp)
	leaq	112(%rsp), %rdi
	movq	%rdi, 8(%rsp)
	movl	$0, 56(%rsp)
	movl	$0, 48(%rsp)
	movq	$0, (%rsp)
	movq	%r13, %rdi
	movq	%r12, %r8
	callq	*%rax
.LBB18_2:                               # %if.then
	addq	$408, %rsp              # imm = 0x198
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gx_dc_pure_fill_masked, .Lfunc_end18-gx_dc_pure_fill_masked
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_pure_equal,@function
gx_dc_pure_equal:                       # @gx_dc_pure_equal
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	cmpq	(%rdi), %rax
	je	.LBB19_2
# BB#1:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.LBB19_2:                               # %land.rhs
	movq	8(%rdi), %rax
	cmpq	8(%rsi), %rax
	sete	%al
	movzbl	%al, %eax
	retq
.Lfunc_end19:
	.size	gx_dc_pure_equal, .Lfunc_end19-gx_dc_pure_equal
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_pure_write,@function
gx_dc_pure_write:                       # @gx_dc_pure_write
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%r8, %rcx
	testq	%rsi, %rsi
	je	.LBB20_4
# BB#1:                                 # %land.lhs.true
	movq	(%rsi), %rax
	cmpq	(%rdi), %rax
	jne	.LBB20_4
# BB#2:                                 # %land.lhs.true.3
	movq	8(%rsi), %rax
	cmpq	8(%rdi), %rax
	jne	.LBB20_4
# BB#3:                                 # %if.then
	movl	$0, (%r9)
	movl	$1, %eax
	retq
.LBB20_4:                               # %if.else
	movq	8(%rdi), %rdx
	cmpq	$-1, %rdx
	setne	%al
	movzbl	%al, %eax
	leal	1(,%rax,8), %eax
	cmpl	%eax, (%r9)
	movl	%eax, (%r9)
	movl	$-15, %eax
	jb	.LBB20_9
# BB#5:                                 # %if.end.3.i
	cmpq	$-1, %rdx
	je	.LBB20_7
# BB#6:                                 # %while.cond.preheader.i
	movb	%dl, 8(%rcx)
	movb	%dh, 7(%rcx)  # NOREX
	movq	%rdx, %rax
	shrq	$16, %rax
	movb	%al, 6(%rcx)
	movq	%rdx, %rax
	shrq	$24, %rax
	movb	%al, 5(%rcx)
	movq	%rdx, %rax
	shrq	$32, %rax
	movb	%al, 4(%rcx)
	movq	%rdx, %rax
	shrq	$40, %rax
	movb	%al, 3(%rcx)
	movq	%rdx, %rax
	shrq	$48, %rax
	movb	%al, 2(%rcx)
	shrq	$56, %rdx
	movb	%dl, 1(%rcx)
	movb	$0, (%rcx)
	jmp	.LBB20_8
.LBB20_7:                               # %if.then.5.i
	movl	$1, (%r9)
	movb	$-1, (%rcx)
.LBB20_8:                               # %return
	xorl	%eax, %eax
.LBB20_9:                               # %return
	retq
.Lfunc_end20:
	.size	gx_dc_pure_write, .Lfunc_end20-gx_dc_pure_write
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_pure_read,@function
gx_dc_pure_read:                        # @gx_dc_pure_read
	.cfi_startproc
# BB#0:                                 # %entry
	movl	8(%rsp), %edx
	movq	$gx_dc_type_data_pure, (%rdi)
	movl	$-15, %eax
	testl	%edx, %edx
	jle	.LBB21_6
# BB#1:                                 # %lor.lhs.false.i
	movb	(%r9), %cl
	cmpl	$7, %edx
	ja	.LBB21_3
# BB#2:                                 # %lor.lhs.false.i
	movzbl	%cl, %edx
	cmpl	$255, %edx
	jne	.LBB21_6
.LBB21_3:                               # %if.end.i
	movzbl	%cl, %eax
	cmpl	$255, %eax
	je	.LBB21_5
# BB#4:                                 # %for.cond.preheader.i
	movzbl	1(%r9), %eax
	shlq	$8, %rax
	movzbl	2(%r9), %ecx
	orq	%rax, %rcx
	shlq	$8, %rcx
	movzbl	3(%r9), %eax
	orq	%rcx, %rax
	shlq	$8, %rax
	movzbl	4(%r9), %ecx
	orq	%rax, %rcx
	shlq	$8, %rcx
	movzbl	5(%r9), %eax
	orq	%rcx, %rax
	shlq	$8, %rax
	movzbl	6(%r9), %ecx
	orq	%rax, %rcx
	shlq	$8, %rcx
	movzbl	7(%r9), %eax
	orq	%rcx, %rax
	shlq	$8, %rax
	movzbl	8(%r9), %ecx
	orq	%rax, %rcx
	movq	%rcx, 8(%rdi)
	movl	$9, %eax
	retq
.LBB21_5:                               # %if.then.10.i
	movq	$-1, 8(%rdi)
	movl	$1, %eax
.LBB21_6:                               # %gx_dc_read_color.exit
	retq
.Lfunc_end21:
	.size	gx_dc_pure_read, .Lfunc_end21-gx_dc_pure_read
	.cfi_endproc

	.globl	gx_dc_pure_get_nonzero_comps
	.align	16, 0x90
	.type	gx_dc_pure_get_nonzero_comps,@function
gx_dc_pure_get_nonzero_comps:           # @gx_dc_pure_get_nonzero_comps
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 32
	subq	$128, %rsp
.Ltmp30:
	.cfi_def_cfa_offset 160
.Ltmp31:
	.cfi_offset %rbx, -32
.Ltmp32:
	.cfi_offset %r14, -24
.Ltmp33:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	8(%rdi), %rsi
	leaq	(%rsp), %rbx
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	*1560(%r15)
	testl	%eax, %eax
	js	.LBB22_12
# BB#1:                                 # %if.then
	movl	100(%r15), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	movl	$0, %esi
	jle	.LBB22_11
# BB#2:                                 # %for.body.preheader
	movl	$1, %edx
	xorl	%edi, %edi
	testb	$1, %cl
	movl	$0, %esi
	je	.LBB22_4
# BB#3:                                 # %for.body.prol
	cmpw	$0, (%rsp)
	setne	%dl
	movzbl	%dl, %esi
	movl	$2, %edx
	movl	$1, %edi
.LBB22_4:                               # %for.body.preheader.split
	cmpl	$1, %ecx
	je	.LBB22_11
# BB#5:                                 # %for.body.preheader.split.split
	subl	%edi, %ecx
	leaq	2(%rdi,%rdi), %rdi
	orq	%rdi, %rbx
	.align	16, 0x90
.LBB22_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpw	$0, -2(%rbx)
	movl	$0, %edi
	je	.LBB22_8
# BB#7:                                 # %select.mid
                                        #   in Loop: Header=BB22_6 Depth=1
	movq	%rdx, %rdi
.LBB22_8:                               # %select.end
                                        #   in Loop: Header=BB22_6 Depth=1
	orq	%rsi, %rdi
	cmpw	$0, (%rbx)
	movl	$0, %esi
	je	.LBB22_10
# BB#9:                                 # %select.mid25
                                        #   in Loop: Header=BB22_6 Depth=1
	leaq	(%rdx,%rdx), %rsi
.LBB22_10:                              # %select.end24
                                        #   in Loop: Header=BB22_6 Depth=1
	orq	%rdi, %rsi
	shlq	$2, %rdx
	addq	$4, %rbx
	addl	$-2, %ecx
	jne	.LBB22_6
.LBB22_11:                              # %for.end
	movq	%rsi, (%r14)
.LBB22_12:                              # %if.end.5
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end22:
	.size	gx_dc_pure_get_nonzero_comps, .Lfunc_end22-gx_dc_pure_get_nonzero_comps
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_devn_save_dc,@function
gx_dc_devn_save_dc:                     # @gx_dc_devn_save_dc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	movq	%rax, (%rsi)
	leaq	8(%rsi), %rax
	leaq	8(%rdi), %rsi
	movl	$128, %edx
	movq	%rax, %rdi
	jmp	memcpy                  # TAILCALL
.Lfunc_end23:
	.size	gx_dc_devn_save_dc, .Lfunc_end23-gx_dc_devn_save_dc
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_devn_load,@function
gx_dc_devn_load:                        # @gx_dc_devn_load
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end24:
	.size	gx_dc_devn_load, .Lfunc_end24-gx_dc_devn_load
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_devn_fill_rectangle,@function
gx_dc_devn_fill_rectangle:              # @gx_dc_devn_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp34:
	.cfi_def_cfa_offset 32
	movq	%rdi, %rax
	addl	%esi, %ecx
	addl	%edx, %r8d
	movd	%r8d, %xmm0
	movd	%edx, %xmm1
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movd	%ecx, %xmm0
	movd	%esi, %xmm2
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	pslld	$8, %xmm2
	movdqa	%xmm2, (%rsp)
	leaq	(%rsp), %rsi
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	%r9, %rdi
	movq	%rax, %rcx
	callq	*1576(%r9)
	addq	$24, %rsp
	retq
.Lfunc_end25:
	.size	gx_dc_devn_fill_rectangle, .Lfunc_end25-gx_dc_devn_fill_rectangle
	.cfi_endproc

	.globl	gx_dc_devn_fill_masked
	.align	16, 0x90
	.type	gx_dc_devn_fill_masked,@function
gx_dc_devn_fill_masked:                 # @gx_dc_devn_fill_masked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp38:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp39:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp40:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp41:
	.cfi_def_cfa_offset 112
.Ltmp42:
	.cfi_offset %rbx, -56
.Ltmp43:
	.cfi_offset %r12, -48
.Ltmp44:
	.cfi_offset %r13, -40
.Ltmp45:
	.cfi_offset %r14, -32
.Ltmp46:
	.cfi_offset %r15, -24
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	xorl	%eax, %eax
	cmpl	$0, 152(%rsp)
	movl	$255, %r12d
	cmovnel	%eax, %r12d
	cmpl	$0, 128(%rsp)
	jle	.LBB26_28
# BB#1:                                 # %while.cond.preheader.lr.ph
	movl	120(%rsp), %esi
	movl	%edx, %eax
	andl	$7, %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movl	%r12d, %ebp
	xorl	$255, %ebp
	sarl	$3, %edx
	movslq	%edx, %rax
	addq	%rax, 32(%rsp)          # 8-byte Folded Spill
	leal	(%r9,%rsi), %eax
	movl	%eax, 48(%rsp)          # 4-byte Spill
	movslq	%ecx, %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
.LBB26_2:                               # %while.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_3 Depth 2
                                        #       Child Loop BB26_10 Depth 3
                                        #       Child Loop BB26_21 Depth 3
	movl	112(%rsp), %eax
	movq	40(%rsp), %rcx          # 8-byte Reload
	leal	(%rcx,%rax), %eax
	movl	%eax, 52(%rsp)          # 4-byte Spill
	movq	32(%rsp), %r14          # 8-byte Reload
	movl	28(%rsp), %r15d         # 4-byte Reload
	movl	120(%rsp), %eax
	movl	%eax, %ecx
	.align	16, 0x90
.LBB26_3:                               # %while.cond
                                        #   Parent Loop BB26_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB26_10 Depth 3
                                        #       Child Loop BB26_21 Depth 3
	testl	%ecx, %ecx
	je	.LBB26_27
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB26_3 Depth=2
	movzbl	(%r14), %eax
	movl	%eax, %edx
	xorl	%r12d, %edx
	movslq	%r15d, %rsi
	movq	byte_bit_run_length(,%rsi,8), %rsi
	movzbl	(%rsi,%rdx), %edx
	testl	%edx, %edx
	je	.LBB26_14
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB26_3 Depth=2
	cmpl	$7, %edx
	ja	.LBB26_8
# BB#6:                                 # %if.then.9
                                        #   in Loop: Header=BB26_3 Depth=2
	subl	%edx, %ecx
	jle	.LBB26_27
# BB#7:                                 # %if.end
                                        #   in Loop: Header=BB26_3 Depth=2
	addl	%edx, %r15d
	jmp	.LBB26_14
	.align	16, 0x90
.LBB26_8:                               # %if.else
                                        #   in Loop: Header=BB26_3 Depth=2
	addl	$-8, %edx
	subl	%edx, %ecx
	jle	.LBB26_27
# BB#9:                                 # %if.else.17
                                        #   in Loop: Header=BB26_3 Depth=2
	incq	%r14
	cmpl	$9, %ecx
	jl	.LBB26_12
	.align	16, 0x90
.LBB26_10:                              # %land.rhs
                                        #   Parent Loop BB26_2 Depth=1
                                        #     Parent Loop BB26_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r14), %eax
	cmpl	%ebp, %eax
	jne	.LBB26_12
# BB#11:                                # %while.body.25
                                        #   in Loop: Header=BB26_10 Depth=3
	addl	$-8, %ecx
	incq	%r14
	cmpl	$8, %ecx
	jg	.LBB26_10
.LBB26_12:                              # %while.end
                                        #   in Loop: Header=BB26_3 Depth=2
	movzbl	(%r14), %eax
	movl	%eax, %edx
	xorl	%r12d, %edx
	movzbl	byte_bit_run_length_0(%rdx), %r15d
	subl	%r15d, %ecx
	jle	.LBB26_27
# BB#13:                                # %if.else.36
                                        #   in Loop: Header=BB26_3 Depth=2
	andl	$7, %r15d
.LBB26_14:                              # %if.end.42
                                        #   in Loop: Header=BB26_3 Depth=2
	movzbl	%al, %eax
	xorl	%ebp, %eax
	movslq	%r15d, %rdx
	movq	byte_bit_run_length(,%rdx,8), %rdx
	movzbl	(%rdx,%rax), %eax
	cmpl	$7, %eax
	ja	.LBB26_18
# BB#15:                                # %if.then.52
                                        #   in Loop: Header=BB26_3 Depth=2
	movl	%ecx, %r13d
	subl	%eax, %r13d
	jle	.LBB26_16
# BB#17:                                # %if.else.56
                                        #   in Loop: Header=BB26_3 Depth=2
	addl	%eax, %r15d
	jmp	.LBB26_26
	.align	16, 0x90
.LBB26_18:                              # %if.else.60
                                        #   in Loop: Header=BB26_3 Depth=2
	addl	$-8, %eax
	movl	%ecx, %r13d
	subl	%eax, %r13d
	jle	.LBB26_19
# BB#20:                                # %if.else.65
                                        #   in Loop: Header=BB26_3 Depth=2
	incq	%r14
	cmpl	$9, %r13d
	jl	.LBB26_23
	.align	16, 0x90
.LBB26_21:                              # %land.rhs.71
                                        #   Parent Loop BB26_2 Depth=1
                                        #     Parent Loop BB26_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r14), %eax
	cmpl	%r12d, %eax
	jne	.LBB26_23
# BB#22:                                # %while.body.76
                                        #   in Loop: Header=BB26_21 Depth=3
	addl	$-8, %r13d
	incq	%r14
	cmpl	$8, %r13d
	jg	.LBB26_21
.LBB26_23:                              # %while.end.79
                                        #   in Loop: Header=BB26_3 Depth=2
	movzbl	(%r14), %eax
	xorl	%ebp, %eax
	movzbl	byte_bit_run_length_0(%rax), %eax
	subl	%eax, %r13d
	jle	.LBB26_24
# BB#25:                                # %if.else.88
                                        #   in Loop: Header=BB26_3 Depth=2
	andl	$7, %eax
	movl	%eax, %r15d
	jmp	.LBB26_26
	.align	16, 0x90
.LBB26_16:                              #   in Loop: Header=BB26_3 Depth=2
	xorl	%r13d, %r13d
	jmp	.LBB26_26
	.align	16, 0x90
.LBB26_19:                              #   in Loop: Header=BB26_3 Depth=2
	xorl	%r13d, %r13d
	jmp	.LBB26_26
.LBB26_24:                              #   in Loop: Header=BB26_3 Depth=2
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB26_26:                              # %cleanup
                                        #   in Loop: Header=BB26_3 Depth=2
	movq	(%rbx), %rax
	movl	48(%rsp), %esi          # 4-byte Reload
	subl	%ecx, %esi
	subl	%r13d, %ecx
	movl	144(%rsp), %edx
	movl	%edx, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, %r8d
	movq	%rbx, %rdi
	movl	52(%rsp), %edx          # 4-byte Reload
	movq	136(%rsp), %r9
	callq	*40(%rax)
	testl	%eax, %eax
	movl	%r13d, %ecx
	jns	.LBB26_3
	jmp	.LBB26_28
	.align	16, 0x90
.LBB26_27:                              # %for.inc
                                        #   in Loop: Header=BB26_2 Depth=1
	movq	40(%rsp), %rcx          # 8-byte Reload
	incl	%ecx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	16(%rsp), %rax          # 8-byte Reload
	addq	%rax, 32(%rsp)          # 8-byte Folded Spill
	xorl	%eax, %eax
	cmpl	128(%rsp), %ecx
	jl	.LBB26_2
.LBB26_28:                              # %cleanup.112
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gx_dc_devn_fill_masked, .Lfunc_end26-gx_dc_devn_fill_masked
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_devn_equal,@function
gx_dc_devn_equal:                       # @gx_dc_devn_equal
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$gx_dc_type_data_devn, %ecx
	xorl	%eax, %eax
	cmpq	%rcx, (%rdi)
	jne	.LBB27_6
# BB#1:                                 # %land.lhs.true
	movl	$gx_dc_type_data_devn, %ecx
	cmpq	%rcx, (%rsi)
	jne	.LBB27_6
# BB#2:                                 # %for.cond.preheader
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB27_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	8(%rsi,%rcx,2), %eax
	movzwl	8(%rdi,%rcx,2), %edx
	cmpl	%eax, %edx
	jne	.LBB27_5
# BB#4:                                 # %for.cond
                                        #   in Loop: Header=BB27_3 Depth=1
	movzwl	10(%rsi,%rcx,2), %eax
	movzwl	10(%rdi,%rcx,2), %edx
	cmpl	%eax, %edx
	jne	.LBB27_5
# BB#7:                                 # %for.cond.1
                                        #   in Loop: Header=BB27_3 Depth=1
	addq	$2, %rcx
	movl	$1, %eax
	cmpq	$64, %rcx
	jl	.LBB27_3
	jmp	.LBB27_6
.LBB27_5:
	xorl	%eax, %eax
.LBB27_6:                               # %cleanup
	retq
.Lfunc_end27:
	.size	gx_dc_devn_equal, .Lfunc_end27-gx_dc_devn_equal
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_devn_write,@function
gx_dc_devn_write:                       # @gx_dc_devn_write
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
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 40
.Ltmp52:
	.cfi_offset %rbx, -40
.Ltmp53:
	.cfi_offset %r14, -32
.Ltmp54:
	.cfi_offset %r15, -24
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%r8, %rsi
	movl	100(%rdx), %r10d
	movl	$8, %eax
	xorl	%ebp, %ebp
	testl	%r10d, %r10d
	movl	$0, %ebx
	jle	.LBB28_8
# BB#1:                                 # %for.body.lr.ph.i.i
	movq	%rsi, %r15
	movl	$1, %r14d
	testb	$1, %r10b
	jne	.LBB28_3
# BB#2:
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	jmp	.LBB28_4
.LBB28_3:                               # %for.body.i.i.prol
	cmpw	$0, 8(%rdi)
	setne	%al
	movzbl	%al, %esi
	movl	$2, %r14d
	movl	$1, %ebp
	movq	%rsi, %rbx
.LBB28_4:                               # %for.body.lr.ph.i.i.split
	cmpl	$1, %r10d
	je	.LBB28_7
# BB#5:                                 # %for.body.lr.ph.i.i.split.split
	movl	%r10d, %edx
	subl	%ebp, %edx
	leaq	10(%rdi,%rbp,2), %rbp
	xorl	%r8d, %r8d
	.align	16, 0x90
.LBB28_6:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	cmpw	$0, -2(%rbp)
	movq	%r14, %rax
	cmoveq	%r8, %rax
	setne	%r11b
	orq	%rbx, %rax
	movzbl	%r11b, %ecx
	addl	%esi, %ecx
	leaq	(%r14,%r14), %rbx
	cmpw	$0, (%rbp)
	cmoveq	%r8, %rbx
	setne	%sil
	orq	%rax, %rbx
	movzbl	%sil, %esi
	addl	%ecx, %esi
	shlq	$2, %r14
	addq	$4, %rbp
	addl	$-2, %edx
	jne	.LBB28_6
.LBB28_7:                               # %gx_dc_devn_get_nonzero_comps.exit.loopexit.i
	leal	8(%rsi,%rsi), %eax
	movq	%r15, %rsi
.LBB28_8:                               # %gx_dc_devn_get_nonzero_comps.exit.i
	cmpl	%eax, (%r9)
	movl	%eax, (%r9)
	movl	$-15, %eax
	jb	.LBB28_14
# BB#9:                                 # %while.cond.preheader.i
	movb	%bl, 7(%rsi)
	movb	%bh, 6(%rsi)  # NOREX
	movq	%rbx, %rax
	shrq	$16, %rax
	movb	%al, 5(%rsi)
	movq	%rbx, %rax
	shrq	$24, %rax
	movb	%al, 4(%rsi)
	movq	%rbx, %rax
	shrq	$32, %rax
	movb	%al, 3(%rsi)
	movq	%rbx, %rax
	shrq	$40, %rax
	movb	%al, 2(%rsi)
	movq	%rbx, %rax
	shrq	$48, %rax
	movb	%al, 1(%rsi)
	movq	%rbx, %rax
	shrq	$56, %rax
	movb	%al, (%rsi)
	xorl	%eax, %eax
	testl	%r10d, %r10d
	jle	.LBB28_14
# BB#10:                                # %for.body.lr.ph.i
	addq	$8, %rdi
	movl	$8, %edx
	.align	16, 0x90
.LBB28_11:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	testb	$1, %bl
	je	.LBB28_13
# BB#12:                                # %if.then.5.i
                                        #   in Loop: Header=BB28_11 Depth=1
	movb	(%rdi), %cl
	movslq	%edx, %rdx
	movb	%cl, (%rsi,%rdx)
	movb	1(%rdi), %cl
	movb	%cl, 1(%rsi,%rdx)
	addl	$2, %edx
.LBB28_13:                              # %if.end.25.i
                                        #   in Loop: Header=BB28_11 Depth=1
	shrq	%rbx
	addq	$2, %rdi
	decl	%r10d
	jne	.LBB28_11
.LBB28_14:                              # %gx_devn_write_color.exit
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gx_dc_devn_write, .Lfunc_end28-gx_dc_devn_write
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_devn_read,@function
gx_dc_devn_read:                        # @gx_dc_devn_read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp56:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp57:
	.cfi_def_cfa_offset 24
.Ltmp58:
	.cfi_offset %rbx, -24
.Ltmp59:
	.cfi_offset %r14, -16
	movq	$gx_dc_type_data_devn, (%rdi)
	movl	$-15, %eax
	cmpl	$0, 24(%rsp)
	jle	.LBB29_7
# BB#1:                                 # %for.cond.preheader.i
	movl	100(%rcx), %ecx
	movl	$8, %eax
	testl	%ecx, %ecx
	jle	.LBB29_7
# BB#2:                                 # %for.body.7.lr.ph.i
	movzbl	7(%r9), %r8d
	movzbl	6(%r9), %r10d
	movzbl	5(%r9), %r11d
	movzbl	4(%r9), %r14d
	movzbl	3(%r9), %eax
	movzbl	2(%r9), %ebx
	movzbl	1(%r9), %esi
	movzbl	(%r9), %edx
	shlq	$8, %rdx
	orq	%rsi, %rdx
	shlq	$8, %rdx
	orq	%rbx, %rdx
	shlq	$8, %rdx
	orq	%rax, %rdx
	shlq	$8, %rdx
	orq	%r14, %rdx
	shlq	$8, %rdx
	orq	%r11, %rdx
	shlq	$8, %rdx
	orq	%r10, %rdx
	shlq	$8, %rdx
	orq	%r8, %rdx
	addq	$8, %rdi
	movl	$8, %eax
	movl	$8, %r8d
	.align	16, 0x90
.LBB29_3:                               # %for.body.7.i
                                        # =>This Inner Loop Header: Depth=1
	testb	$1, %dl
	jne	.LBB29_4
# BB#5:                                 # %if.else.i
                                        #   in Loop: Header=BB29_3 Depth=1
	movw	$0, (%rdi)
	jmp	.LBB29_6
	.align	16, 0x90
.LBB29_4:                               # %if.then.8.i
                                        #   in Loop: Header=BB29_3 Depth=1
	movslq	%r8d, %r8
	movzbl	(%r9,%r8), %ebx
	movw	%bx, (%rdi)
	movzbl	1(%r9,%r8), %esi
	shll	$8, %esi
	orl	%ebx, %esi
	movw	%si, (%rdi)
	addl	$2, %r8d
	addl	$2, %eax
.LBB29_6:                               # %if.end.27.i
                                        #   in Loop: Header=BB29_3 Depth=1
	shrq	%rdx
	addq	$2, %rdi
	decl	%ecx
	jne	.LBB29_3
.LBB29_7:                               # %gx_devn_read_color.exit
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end29:
	.size	gx_dc_devn_read, .Lfunc_end29-gx_dc_devn_read
	.cfi_endproc

	.globl	gx_dc_devn_get_nonzero_comps
	.align	16, 0x90
	.type	gx_dc_devn_get_nonzero_comps,@function
gx_dc_devn_get_nonzero_comps:           # @gx_dc_devn_get_nonzero_comps
	.cfi_startproc
# BB#0:                                 # %entry
	movl	100(%rsi), %r8d
	xorl	%eax, %eax
	testl	%r8d, %r8d
	movl	$0, %ecx
	jle	.LBB30_7
# BB#1:                                 # %for.body.lr.ph
	xorl	%r9d, %r9d
	movl	$1, %r10d
	testb	$1, %r8b
	jne	.LBB30_3
# BB#2:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.LBB30_4
.LBB30_3:                               # %for.body.prol
	cmpw	$0, 8(%rdi)
	setne	%al
	movzbl	%al, %eax
	movl	$2, %r10d
	movl	$1, %r9d
	movq	%rax, %rcx
.LBB30_4:                               # %for.body.lr.ph.split
	cmpl	$1, %r8d
	je	.LBB30_7
# BB#5:                                 # %for.body.lr.ph.split.split
	subl	%r9d, %r8d
	leaq	10(%rdi,%r9,2), %rdi
	xorl	%r9d, %r9d
	.align	16, 0x90
.LBB30_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpw	$0, -2(%rdi)
	movq	%r10, %rsi
	cmoveq	%r9, %rsi
	setne	%r11b
	orq	%rcx, %rsi
	movzbl	%r11b, %r11d
	addl	%eax, %r11d
	leaq	(%r10,%r10), %rcx
	cmpw	$0, (%rdi)
	cmoveq	%r9, %rcx
	setne	%al
	orq	%rsi, %rcx
	movzbl	%al, %eax
	addl	%r11d, %eax
	shlq	$2, %r10
	addq	$4, %rdi
	addl	$-2, %r8d
	jne	.LBB30_6
.LBB30_7:                               # %for.end
	movq	%rcx, (%rdx)
	retq
.Lfunc_end30:
	.size	gx_dc_devn_get_nonzero_comps, .Lfunc_end30-gx_dc_devn_get_nonzero_comps
	.cfi_endproc

	.globl	gx_device_black
	.align	16, 0x90
	.type	gx_device_black,@function
gx_device_black:                        # @gx_device_black
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp60:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp61:
	.cfi_def_cfa_offset 24
	subq	$264, %rsp              # imm = 0x108
.Ltmp62:
	.cfi_def_cfa_offset 288
.Ltmp63:
	.cfi_offset %rbx, -24
.Ltmp64:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	816(%r14), %rax
	cmpq	$-1, %rax
	jne	.LBB31_10
# BB#1:                                 # %if.then
	movq	%r14, %rdi
	callq	*1536(%r14)
	movl	100(%r14), %ebx
	leaq	128(%rsp), %rdx
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	*(%rax)
	testl	%ebx, %ebx
	jle	.LBB31_9
# BB#2:                                 # %for.body.preheader
	leal	-1(%rbx), %ecx
	leaq	1(%rcx), %r8
	xorl	%esi, %esi
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	movq	%r8, %rdx
	andq	%rax, %rdx
	je	.LBB31_6
# BB#3:                                 # %vector.body.preheader
	leaq	136(%rsp), %rsi
	leaq	8(%rsp), %rdi
	incq	%rcx
	andq	%rax, %rcx
	.align	16, 0x90
.LBB31_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rsi), %xmm0         # xmm0 = mem[0],zero
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	movq	(%rsi), %xmm1           # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	movdqa	%xmm0, %xmm2
	paddd	%xmm2, %xmm2
	movdqa	%xmm1, %xmm3
	paddd	%xmm3, %xmm3
	psrld	$11, %xmm0
	psrld	$11, %xmm1
	paddw	%xmm2, %xmm0
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, -8(%rdi)
	paddw	%xmm3, %xmm1
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rdi)
	addq	$16, %rsi
	addq	$16, %rdi
	addq	$-8, %rcx
	jne	.LBB31_4
# BB#5:
	movq	%rdx, %rsi
.LBB31_6:                               # %middle.block
	cmpq	%rsi, %r8
	je	.LBB31_9
# BB#7:                                 # %for.body.preheader23
	leaq	128(%rsp,%rsi,2), %rax
	leaq	(%rsp,%rsi,2), %rcx
	subl	%esi, %ebx
	.align	16, 0x90
.LBB31_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movswl	(%rax), %edx
	movl	%edx, %esi
	shrl	$11, %esi
	leal	(%rsi,%rdx,2), %edx
	movw	%dx, (%rcx)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%ebx
	jne	.LBB31_8
.LBB31_9:                               # %for.end
	leaq	(%rsp), %rsi
	movq	%r14, %rdi
	callq	*1552(%r14)
	movq	%rax, 816(%r14)
.LBB31_10:                              # %if.end
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end31:
	.size	gx_device_black, .Lfunc_end31-gx_device_black
	.cfi_endproc

	.globl	gx_device_white
	.align	16, 0x90
	.type	gx_device_white,@function
gx_device_white:                        # @gx_device_white
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp65:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp66:
	.cfi_def_cfa_offset 24
	subq	$264, %rsp              # imm = 0x108
.Ltmp67:
	.cfi_def_cfa_offset 288
.Ltmp68:
	.cfi_offset %rbx, -24
.Ltmp69:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	824(%r14), %rax
	cmpq	$-1, %rax
	jne	.LBB32_10
# BB#1:                                 # %if.then
	movq	%r14, %rdi
	callq	*1536(%r14)
	movl	100(%r14), %ebx
	leaq	128(%rsp), %rdx
	movl	$32760, %esi            # imm = 0x7FF8
	movq	%r14, %rdi
	callq	*(%rax)
	testl	%ebx, %ebx
	jle	.LBB32_9
# BB#2:                                 # %for.body.preheader
	leal	-1(%rbx), %ecx
	leaq	1(%rcx), %r8
	xorl	%esi, %esi
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	movq	%r8, %rdx
	andq	%rax, %rdx
	je	.LBB32_6
# BB#3:                                 # %vector.body.preheader
	leaq	136(%rsp), %rsi
	leaq	8(%rsp), %rdi
	incq	%rcx
	andq	%rax, %rcx
	.align	16, 0x90
.LBB32_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rsi), %xmm0         # xmm0 = mem[0],zero
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	movq	(%rsi), %xmm1           # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	movdqa	%xmm0, %xmm2
	paddd	%xmm2, %xmm2
	movdqa	%xmm1, %xmm3
	paddd	%xmm3, %xmm3
	psrld	$11, %xmm0
	psrld	$11, %xmm1
	paddw	%xmm2, %xmm0
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, -8(%rdi)
	paddw	%xmm3, %xmm1
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rdi)
	addq	$16, %rsi
	addq	$16, %rdi
	addq	$-8, %rcx
	jne	.LBB32_4
# BB#5:
	movq	%rdx, %rsi
.LBB32_6:                               # %middle.block
	cmpq	%rsi, %r8
	je	.LBB32_9
# BB#7:                                 # %for.body.preheader23
	leaq	128(%rsp,%rsi,2), %rax
	leaq	(%rsp,%rsi,2), %rcx
	subl	%esi, %ebx
	.align	16, 0x90
.LBB32_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movswl	(%rax), %edx
	movl	%edx, %esi
	shrl	$11, %esi
	leal	(%rsi,%rdx,2), %edx
	movw	%dx, (%rcx)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%ebx
	jne	.LBB32_8
.LBB32_9:                               # %for.end
	leaq	(%rsp), %rsi
	movq	%r14, %rdi
	callq	*1552(%r14)
	movq	%rax, 824(%r14)
.LBB32_10:                              # %if.end
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end32:
	.size	gx_device_white, .Lfunc_end32-gx_device_white
	.cfi_endproc

	.globl	gx_device_decache_colors
	.align	16, 0x90
	.type	gx_device_decache_colors,@function
gx_device_decache_colors:               # @gx_device_decache_colors
	.cfi_startproc
# BB#0:                                 # %entry
	pcmpeqd	%xmm0, %xmm0
	movdqu	%xmm0, 816(%rdi)
	retq
.Lfunc_end33:
	.size	gx_device_decache_colors, .Lfunc_end33-gx_device_decache_colors
	.cfi_endproc

	.globl	gx_set_rop_no_source
	.align	16, 0x90
	.type	gx_set_rop_no_source,@function
gx_set_rop_no_source:                   # @gx_set_rop_no_source
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp71:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp72:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp73:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp74:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp75:
	.cfi_def_cfa_offset 56
	subq	$280, %rsp              # imm = 0x118
.Ltmp76:
	.cfi_def_cfa_offset 336
.Ltmp77:
	.cfi_offset %rbx, -56
.Ltmp78:
	.cfi_offset %r12, -48
.Ltmp79:
	.cfi_offset %r13, -40
.Ltmp80:
	.cfi_offset %r14, -32
.Ltmp81:
	.cfi_offset %r15, -24
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	816(%rbx), %rax
	leaq	24(%rsp), %r14
	leaq	144(%rsp), %r12
	movabsq	$8589934584, %r15       # imm = 0x1FFFFFFF8
	leaq	16(%rsp), %r13
	jmp	.LBB34_1
	.align	16, 0x90
.LBB34_14:                              # %gx_device_black.exit
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	*1552(%rbx)
	movq	%rax, 816(%rbx)
.LBB34_1:                               # %top
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_9 Depth 2
                                        #     Child Loop BB34_13 Depth 2
	cmpq	$-1, %rax
	jne	.LBB34_2
# BB#6:                                 # %if.then.i
                                        #   in Loop: Header=BB34_1 Depth=1
	movq	%rbx, %rdi
	callq	*1536(%rbx)
	movl	100(%rbx), %ebp
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	*(%rax)
	testl	%ebp, %ebp
	jle	.LBB34_14
# BB#7:                                 # %for.body.i.preheader
                                        #   in Loop: Header=BB34_1 Depth=1
	leal	-1(%rbp), %ecx
	leaq	1(%rcx), %rax
	movq	%rax, %rdx
	andq	%r15, %rdx
	movl	$0, %esi
	je	.LBB34_11
# BB#8:                                 # %vector.body.preheader
                                        #   in Loop: Header=BB34_1 Depth=1
	incq	%rcx
	andq	%r15, %rcx
	movq	%r14, %rsi
	leaq	152(%rsp), %rdi
	.align	16, 0x90
.LBB34_9:                               # %vector.body
                                        #   Parent Loop BB34_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rdi), %xmm0         # xmm0 = mem[0],zero
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	movq	(%rdi), %xmm1           # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	movdqa	%xmm0, %xmm2
	paddd	%xmm2, %xmm2
	movdqa	%xmm1, %xmm3
	paddd	%xmm3, %xmm3
	psrld	$11, %xmm0
	psrld	$11, %xmm1
	paddw	%xmm2, %xmm0
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, -8(%rsi)
	paddw	%xmm3, %xmm1
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rsi)
	addq	$16, %rdi
	addq	$16, %rsi
	addq	$-8, %rcx
	jne	.LBB34_9
# BB#10:                                #   in Loop: Header=BB34_1 Depth=1
	movq	%rdx, %rsi
.LBB34_11:                              # %middle.block
                                        #   in Loop: Header=BB34_1 Depth=1
	cmpq	%rsi, %rax
	je	.LBB34_14
# BB#12:                                # %for.body.i.preheader23
                                        #   in Loop: Header=BB34_1 Depth=1
	subl	%esi, %ebp
	leaq	16(%rsp,%rsi,2), %rax
	leaq	144(%rsp,%rsi,2), %rcx
	.align	16, 0x90
.LBB34_13:                              # %for.body.i
                                        #   Parent Loop BB34_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movswl	(%rcx), %edx
	movl	%edx, %esi
	shrl	$11, %esi
	leal	(%rsi,%rdx,2), %edx
	movw	%dx, (%rax)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%ebp
	jne	.LBB34_13
	jmp	.LBB34_14
.LBB34_2:                               # %top
	cmpq	$1, %rax
	jne	.LBB34_3
# BB#5:                                 # %if.then.3
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	$gx_rop_no_source_1, (%rax)
	jmp	.LBB34_16
.LBB34_3:                               # %top
	testq	%rax, %rax
	jne	.LBB34_15
# BB#4:                                 # %if.then
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	$gx_rop_no_source_0, (%rax)
	jmp	.LBB34_16
.LBB34_15:                              # %if.else.7
	movups	gx_rop_no_source_0+32(%rip), %xmm0
	movq	(%rsp), %rcx            # 8-byte Reload
	movups	%xmm0, 32(%rcx)
	movups	gx_rop_no_source_0+16(%rip), %xmm0
	movups	%xmm0, 16(%rcx)
	movups	gx_rop_no_source_0(%rip), %xmm0
	movups	%xmm0, (%rcx)
	movq	%rax, 32(%rcx)
	movq	%rax, 24(%rcx)
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rcx, (%rax)
.LBB34_16:                              # %if.end.11
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gx_set_rop_no_source, .Lfunc_end34-gx_set_rop_no_source
	.cfi_endproc

	.globl	gx_device_color_equal
	.align	16, 0x90
	.type	gx_device_color_equal,@function
gx_device_color_equal:                  # @gx_device_color_equal
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	movq	56(%rax), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end35:
	.size	gx_device_color_equal, .Lfunc_end35-gx_device_color_equal
	.cfi_endproc

	.globl	gx_get_dc_type_index
	.align	16, 0x90
	.type	gx_get_dc_type_index,@function
gx_get_dc_type_index:                   # @gx_get_dc_type_index
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rcx
	movl	$gx_dc_type_data_none, %edx
	xorl	%eax, %eax
	cmpq	%rdx, %rcx
	je	.LBB36_7
# BB#1:                                 # %for.inc
	movl	$gx_dc_type_data_null, %edx
	movl	$1, %eax
	cmpq	%rdx, %rcx
	je	.LBB36_7
# BB#2:                                 # %for.inc.1
	movl	$gx_dc_type_data_pure, %edx
	movl	$2, %eax
	cmpq	%rdx, %rcx
	je	.LBB36_7
# BB#3:                                 # %for.inc.2
	movl	$gx_dc_pattern, %edx
	movl	$3, %eax
	cmpq	%rdx, %rcx
	je	.LBB36_7
# BB#4:                                 # %for.inc.3
	movl	$gx_dc_type_data_ht_binary, %edx
	movl	$4, %eax
	cmpq	%rdx, %rcx
	je	.LBB36_7
# BB#5:                                 # %for.inc.4
	movl	$gx_dc_type_data_ht_colored, %edx
	movl	$5, %eax
	cmpq	%rdx, %rcx
	je	.LBB36_7
# BB#6:                                 # %for.inc.5
	movl	$gx_dc_type_data_devn, %eax
	cmpq	%rax, %rcx
	movl	$6, %ecx
	movl	$-1, %eax
	cmovel	%ecx, %eax
.LBB36_7:                               # %for.end
	retq
.Lfunc_end36:
	.size	gx_get_dc_type_index, .Lfunc_end36-gx_get_dc_type_index
	.cfi_endproc

	.globl	gx_get_dc_type_from_index
	.align	16, 0x90
	.type	gx_get_dc_type_from_index,@function
gx_get_dc_type_from_index:              # @gx_get_dc_type_from_index
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testl	%edi, %edi
	js	.LBB37_3
# BB#1:                                 # %entry
	cmpl	$6, %edi
	ja	.LBB37_3
# BB#2:                                 # %if.then
	movslq	%edi, %rax
	movq	dc_color_type_table(,%rax,8), %rax
.LBB37_3:                               # %return
	retq
.Lfunc_end37:
	.size	gx_get_dc_type_from_index, .Lfunc_end37-gx_get_dc_type_from_index
	.cfi_endproc

	.globl	gx_dc_ht_get_phase
	.align	16, 0x90
	.type	gx_dc_ht_get_phase,@function
gx_dc_ht_get_phase:                     # @gx_dc_ht_get_phase
	.cfi_startproc
# BB#0:                                 # %entry
	movq	352(%rdi), %rax
	movq	%rax, (%rsi)
	movl	$1, %eax
	retq
.Lfunc_end38:
	.size	gx_dc_ht_get_phase, .Lfunc_end38-gx_dc_ht_get_phase
	.cfi_endproc

	.globl	gx_dc_cannot_write
	.align	16, 0x90
	.type	gx_dc_cannot_write,@function
gx_dc_cannot_write:                     # @gx_dc_cannot_write
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-1, %eax
	retq
.Lfunc_end39:
	.size	gx_dc_cannot_write, .Lfunc_end39-gx_dc_cannot_write
	.cfi_endproc

	.globl	gx_dc_cannot_read
	.align	16, 0x90
	.type	gx_dc_cannot_read,@function
gx_dc_cannot_read:                      # @gx_dc_cannot_read
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-1, %eax
	retq
.Lfunc_end40:
	.size	gx_dc_cannot_read, .Lfunc_end40-gx_dc_cannot_read
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI41_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
.LCPI41_1:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
.LCPI41_2:
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	7                       # 0x7
.LCPI41_3:
	.long	1065353216              # 0x3f800000
	.long	1065353216              # 0x3f800000
	.long	1065353216              # 0x3f800000
	.long	1065353216              # 0x3f800000
	.text
	.globl	gx_complete_halftone
	.align	16, 0x90
	.type	gx_complete_halftone,@function
gx_complete_halftone:                   # @gx_complete_halftone
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$gx_dc_type_data_ht_colored, (%rdi)
	movq	%rdx, 8(%rdi)
	movw	%si, 16(%rdi)
	movw	$-1, 340(%rdi)
	xorl	%eax, %eax
	testl	%esi, %esi
	jle	.LBB41_9
# BB#1:                                 # %for.body.preheader
	leal	-1(%rsi), %edx
	leaq	1(%rdx), %r8
	xorl	%ecx, %ecx
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	movq	%r8, %r9
	andq	%rax, %r9
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	je	.LBB41_5
# BB#2:                                 # %vector.body.preheader
	incq	%rdx
	andq	%rax, %rdx
	pxor	%xmm10, %xmm10
	xorl	%ecx, %ecx
	movdqa	.LCPI41_0(%rip), %xmm11 # xmm11 = [1,1,1,1]
	movdqa	.LCPI41_1(%rip), %xmm8  # xmm8 = [0,1,2,3]
	movdqa	.LCPI41_2(%rip), %xmm9  # xmm9 = [4,5,6,7]
	movdqa	.LCPI41_3(%rip), %xmm6  # xmm6 = [1065353216,1065353216,1065353216,1065353216]
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	.align	16, 0x90
.LBB41_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	84(%rdi,%rcx,4), %xmm4
	movdqu	100(%rdi,%rcx,4), %xmm7
	pcmpeqd	%xmm10, %xmm4
	pandn	%xmm11, %xmm4
	pcmpeqd	%xmm10, %xmm7
	pandn	%xmm11, %xmm7
	movd	%ecx, %xmm5
	pshufd	$0, %xmm5, %xmm2        # xmm2 = xmm5[0,0,0,0]
	movdqa	%xmm2, %xmm5
	paddd	%xmm8, %xmm5
	paddd	%xmm9, %xmm2
	pslld	$23, %xmm5
	paddd	%xmm6, %xmm5
	cvttps2dq	%xmm5, %xmm5
	pshufd	$245, %xmm5, %xmm3      # xmm3 = xmm5[1,1,3,3]
	pmuludq	%xmm4, %xmm5
	pshufd	$232, %xmm5, %xmm5      # xmm5 = xmm5[0,2,2,3]
	pshufd	$245, %xmm4, %xmm4      # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm3, %xmm4
	pshufd	$232, %xmm4, %xmm3      # xmm3 = xmm4[0,2,2,3]
	punpckldq	%xmm3, %xmm5    # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1]
	pslld	$23, %xmm2
	paddd	%xmm6, %xmm2
	cvttps2dq	%xmm2, %xmm2
	pshufd	$245, %xmm2, %xmm3      # xmm3 = xmm2[1,1,3,3]
	pmuludq	%xmm7, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pshufd	$245, %xmm7, %xmm4      # xmm4 = xmm7[1,1,3,3]
	pmuludq	%xmm3, %xmm4
	pshufd	$232, %xmm4, %xmm3      # xmm3 = xmm4[0,2,2,3]
	punpckldq	%xmm3, %xmm2    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	por	%xmm5, %xmm0
	por	%xmm2, %xmm1
	addq	$8, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB41_3
# BB#4:
	movq	%r9, %rcx
.LBB41_5:                               # %middle.block
	por	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	por	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	por	%xmm1, %xmm0
	movd	%xmm0, %eax
	cmpq	%rcx, %r8
	je	.LBB41_8
# BB#6:                                 # %for.body.preheader29
	movl	%esi, %esi
	.align	16, 0x90
.LBB41_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 84(%rdi,%rcx,4)
	setne	%dl
	movzbl	%dl, %edx
	shll	%cl, %edx
	orl	%edx, %eax
	incq	%rcx
	cmpl	%ecx, %esi
	jne	.LBB41_7
.LBB41_8:                               # %for.cond.for.end_crit_edge
	cltq
.LBB41_9:                               # %for.end
	movq	%rax, 344(%rdi)
	retq
.Lfunc_end41:
	.size	gx_complete_halftone, .Lfunc_end41-gx_complete_halftone
	.cfi_endproc

	.globl	gx_dc_default_fill_masked
	.align	16, 0x90
	.type	gx_dc_default_fill_masked,@function
gx_dc_default_fill_masked:              # @gx_dc_default_fill_masked
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
	subq	$56, %rsp
.Ltmp89:
	.cfi_def_cfa_offset 112
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
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	xorl	%eax, %eax
	cmpl	$0, 152(%rsp)
	movl	$255, %r12d
	cmovnel	%eax, %r12d
	cmpl	$0, 128(%rsp)
	jle	.LBB42_28
# BB#1:                                 # %while.cond.preheader.lr.ph
	movl	120(%rsp), %esi
	movl	%edx, %eax
	andl	$7, %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movl	%r12d, %ebp
	xorl	$255, %ebp
	sarl	$3, %edx
	movslq	%edx, %rax
	addq	%rax, 32(%rsp)          # 8-byte Folded Spill
	leal	(%r9,%rsi), %eax
	movl	%eax, 48(%rsp)          # 4-byte Spill
	movslq	%ecx, %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 40(%rsp)          # 8-byte Spill
.LBB42_2:                               # %while.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB42_3 Depth 2
                                        #       Child Loop BB42_10 Depth 3
                                        #       Child Loop BB42_21 Depth 3
	movl	112(%rsp), %eax
	movq	40(%rsp), %rcx          # 8-byte Reload
	leal	(%rcx,%rax), %eax
	movl	%eax, 52(%rsp)          # 4-byte Spill
	movq	32(%rsp), %r14          # 8-byte Reload
	movl	28(%rsp), %r15d         # 4-byte Reload
	movl	120(%rsp), %eax
	movl	%eax, %ecx
	.align	16, 0x90
.LBB42_3:                               # %while.cond
                                        #   Parent Loop BB42_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB42_10 Depth 3
                                        #       Child Loop BB42_21 Depth 3
	testl	%ecx, %ecx
	je	.LBB42_27
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB42_3 Depth=2
	movzbl	(%r14), %eax
	movl	%eax, %edx
	xorl	%r12d, %edx
	movslq	%r15d, %rsi
	movq	byte_bit_run_length(,%rsi,8), %rsi
	movzbl	(%rsi,%rdx), %edx
	testl	%edx, %edx
	je	.LBB42_14
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB42_3 Depth=2
	cmpl	$7, %edx
	ja	.LBB42_8
# BB#6:                                 # %if.then.9
                                        #   in Loop: Header=BB42_3 Depth=2
	subl	%edx, %ecx
	jle	.LBB42_27
# BB#7:                                 # %if.end
                                        #   in Loop: Header=BB42_3 Depth=2
	addl	%edx, %r15d
	jmp	.LBB42_14
	.align	16, 0x90
.LBB42_8:                               # %if.else
                                        #   in Loop: Header=BB42_3 Depth=2
	addl	$-8, %edx
	subl	%edx, %ecx
	jle	.LBB42_27
# BB#9:                                 # %if.else.17
                                        #   in Loop: Header=BB42_3 Depth=2
	incq	%r14
	cmpl	$9, %ecx
	jl	.LBB42_12
	.align	16, 0x90
.LBB42_10:                              # %land.rhs
                                        #   Parent Loop BB42_2 Depth=1
                                        #     Parent Loop BB42_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r14), %eax
	cmpl	%ebp, %eax
	jne	.LBB42_12
# BB#11:                                # %while.body.25
                                        #   in Loop: Header=BB42_10 Depth=3
	addl	$-8, %ecx
	incq	%r14
	cmpl	$8, %ecx
	jg	.LBB42_10
.LBB42_12:                              # %while.end
                                        #   in Loop: Header=BB42_3 Depth=2
	movzbl	(%r14), %eax
	movl	%eax, %edx
	xorl	%r12d, %edx
	movzbl	byte_bit_run_length_0(%rdx), %r15d
	subl	%r15d, %ecx
	jle	.LBB42_27
# BB#13:                                # %if.else.36
                                        #   in Loop: Header=BB42_3 Depth=2
	andl	$7, %r15d
.LBB42_14:                              # %if.end.42
                                        #   in Loop: Header=BB42_3 Depth=2
	movzbl	%al, %eax
	xorl	%ebp, %eax
	movslq	%r15d, %rdx
	movq	byte_bit_run_length(,%rdx,8), %rdx
	movzbl	(%rdx,%rax), %eax
	cmpl	$7, %eax
	ja	.LBB42_18
# BB#15:                                # %if.then.52
                                        #   in Loop: Header=BB42_3 Depth=2
	movl	%ecx, %r13d
	subl	%eax, %r13d
	jle	.LBB42_16
# BB#17:                                # %if.else.56
                                        #   in Loop: Header=BB42_3 Depth=2
	addl	%eax, %r15d
	jmp	.LBB42_26
	.align	16, 0x90
.LBB42_18:                              # %if.else.60
                                        #   in Loop: Header=BB42_3 Depth=2
	addl	$-8, %eax
	movl	%ecx, %r13d
	subl	%eax, %r13d
	jle	.LBB42_19
# BB#20:                                # %if.else.65
                                        #   in Loop: Header=BB42_3 Depth=2
	incq	%r14
	cmpl	$9, %r13d
	jl	.LBB42_23
	.align	16, 0x90
.LBB42_21:                              # %land.rhs.71
                                        #   Parent Loop BB42_2 Depth=1
                                        #     Parent Loop BB42_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r14), %eax
	cmpl	%r12d, %eax
	jne	.LBB42_23
# BB#22:                                # %while.body.76
                                        #   in Loop: Header=BB42_21 Depth=3
	addl	$-8, %r13d
	incq	%r14
	cmpl	$8, %r13d
	jg	.LBB42_21
.LBB42_23:                              # %while.end.79
                                        #   in Loop: Header=BB42_3 Depth=2
	movzbl	(%r14), %eax
	xorl	%ebp, %eax
	movzbl	byte_bit_run_length_0(%rax), %eax
	subl	%eax, %r13d
	jle	.LBB42_24
# BB#25:                                # %if.else.88
                                        #   in Loop: Header=BB42_3 Depth=2
	andl	$7, %eax
	movl	%eax, %r15d
	jmp	.LBB42_26
	.align	16, 0x90
.LBB42_16:                              #   in Loop: Header=BB42_3 Depth=2
	xorl	%r13d, %r13d
	jmp	.LBB42_26
	.align	16, 0x90
.LBB42_19:                              #   in Loop: Header=BB42_3 Depth=2
	xorl	%r13d, %r13d
	jmp	.LBB42_26
.LBB42_24:                              #   in Loop: Header=BB42_3 Depth=2
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB42_26:                              # %cleanup
                                        #   in Loop: Header=BB42_3 Depth=2
	movq	(%rbx), %rax
	movl	48(%rsp), %esi          # 4-byte Reload
	subl	%ecx, %esi
	subl	%r13d, %ecx
	movl	144(%rsp), %edx
	movl	%edx, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, %r8d
	movq	%rbx, %rdi
	movl	52(%rsp), %edx          # 4-byte Reload
	movq	136(%rsp), %r9
	callq	*40(%rax)
	testl	%eax, %eax
	movl	%r13d, %ecx
	jns	.LBB42_3
	jmp	.LBB42_28
	.align	16, 0x90
.LBB42_27:                              # %for.inc
                                        #   in Loop: Header=BB42_2 Depth=1
	movq	40(%rsp), %rcx          # 8-byte Reload
	incl	%ecx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	16(%rsp), %rax          # 8-byte Reload
	addq	%rax, 32(%rsp)          # 8-byte Folded Spill
	xorl	%eax, %eax
	cmpl	128(%rsp), %ecx
	jl	.LBB42_2
.LBB42_28:                              # %cleanup.112
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end42:
	.size	gx_dc_default_fill_masked, .Lfunc_end42-gx_dc_default_fill_masked
	.cfi_endproc

	.globl	gx_dc_write_color
	.align	16, 0x90
	.type	gx_dc_write_color,@function
gx_dc_write_color:                      # @gx_dc_write_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpq	$-1, %rbx
	setne	%al
	movzbl	%al, %eax
	leal	1(,%rax,8), %eax
	cmpl	%eax, (%rcx)
	movl	%eax, (%rcx)
	movl	$-15, %eax
	jb	.LBB43_5
# BB#1:                                 # %if.end.3
	cmpq	$-1, %rbx
	je	.LBB43_3
# BB#2:                                 # %while.cond.preheader
	movb	%bl, 8(%rdx)
	movb	%bh, 7(%rdx)  # NOREX
	movq	%rbx, %rax
	shrq	$16, %rax
	movb	%al, 6(%rdx)
	movq	%rbx, %rax
	shrq	$24, %rax
	movb	%al, 5(%rdx)
	movq	%rbx, %rax
	shrq	$32, %rax
	movb	%al, 4(%rdx)
	movq	%rbx, %rax
	shrq	$40, %rax
	movb	%al, 3(%rdx)
	movq	%rbx, %rax
	shrq	$48, %rax
	movb	%al, 2(%rdx)
	shrq	$56, %rbx
	movb	%bl, 1(%rdx)
	movb	$0, (%rdx)
	jmp	.LBB43_4
.LBB43_3:                               # %if.then.5
	movl	$1, (%rcx)
	movb	$-1, (%rdx)
.LBB43_4:                               # %cleanup
	xorl	%eax, %eax
.LBB43_5:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end43:
	.size	gx_dc_write_color, .Lfunc_end43-gx_dc_write_color
	.cfi_endproc

	.globl	gx_dc_read_color
	.align	16, 0x90
	.type	gx_dc_read_color,@function
gx_dc_read_color:                       # @gx_dc_read_color
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-15, %eax
	testl	%ecx, %ecx
	jle	.LBB44_6
# BB#1:                                 # %lor.lhs.false
	movb	(%rdx), %sil
	cmpl	$7, %ecx
	ja	.LBB44_3
# BB#2:                                 # %lor.lhs.false
	movzbl	%sil, %ecx
	cmpl	$255, %ecx
	jne	.LBB44_6
.LBB44_3:                               # %if.end
	movzbl	%sil, %eax
	cmpl	$255, %eax
	je	.LBB44_5
# BB#4:                                 # %for.cond.preheader
	movzbl	1(%rdx), %eax
	shlq	$8, %rax
	movzbl	2(%rdx), %ecx
	orq	%rax, %rcx
	shlq	$8, %rcx
	movzbl	3(%rdx), %eax
	orq	%rcx, %rax
	shlq	$8, %rax
	movzbl	4(%rdx), %ecx
	orq	%rax, %rcx
	shlq	$8, %rcx
	movzbl	5(%rdx), %eax
	orq	%rcx, %rax
	shlq	$8, %rax
	movzbl	6(%rdx), %ecx
	orq	%rax, %rcx
	shlq	$8, %rcx
	movzbl	7(%rdx), %eax
	orq	%rcx, %rax
	shlq	$8, %rax
	movzbl	8(%rdx), %ecx
	orq	%rax, %rcx
	movq	%rcx, (%rdi)
	movl	$9, %eax
	retq
.LBB44_5:                               # %if.then.10
	movq	$-1, (%rdi)
	movl	$1, %eax
.LBB44_6:                               # %cleanup
	retq
.Lfunc_end44:
	.size	gx_dc_read_color, .Lfunc_end44-gx_dc_read_color
	.cfi_endproc

	.type	gx_dc_type_data_none,@object # @gx_dc_type_data_none
	.section	.rodata,"a",@progbits
	.globl	gx_dc_type_data_none
	.align	8
gx_dc_type_data_none:
	.quad	st_bytes
	.quad	gx_dc_no_save_dc
	.quad	gx_dc_no_get_dev_halftone
	.quad	gx_dc_no_get_phase
	.quad	gx_dc_no_load
	.quad	gx_dc_no_fill_rectangle
	.quad	gx_dc_no_fill_masked
	.quad	gx_dc_no_equal
	.quad	gx_dc_no_write
	.quad	gx_dc_no_read
	.quad	gx_dc_no_get_nonzero_comps
	.size	gx_dc_type_data_none, 88

	.type	gx_dc_type_none,@object # @gx_dc_type_none
	.globl	gx_dc_type_none
	.align	8
gx_dc_type_none:
	.quad	gx_dc_type_data_none
	.size	gx_dc_type_none, 8

	.type	gx_dc_type_data_null,@object # @gx_dc_type_data_null
	.globl	gx_dc_type_data_null
	.align	8
gx_dc_type_data_null:
	.quad	st_bytes
	.quad	gx_dc_no_save_dc
	.quad	gx_dc_no_get_dev_halftone
	.quad	gx_dc_no_get_phase
	.quad	gx_dc_null_load
	.quad	gx_dc_null_fill_rectangle
	.quad	gx_dc_null_fill_masked
	.quad	gx_dc_null_equal
	.quad	gx_dc_no_write
	.quad	gx_dc_null_read
	.quad	gx_dc_no_get_nonzero_comps
	.size	gx_dc_type_data_null, 88

	.type	gx_dc_type_null,@object # @gx_dc_type_null
	.globl	gx_dc_type_null
	.align	8
gx_dc_type_null:
	.quad	gx_dc_type_data_null
	.size	gx_dc_type_null, 8

	.type	gx_dc_type_data_pure,@object # @gx_dc_type_data_pure
	.globl	gx_dc_type_data_pure
	.align	8
gx_dc_type_data_pure:
	.quad	st_bytes
	.quad	gx_dc_pure_save_dc
	.quad	gx_dc_no_get_dev_halftone
	.quad	gx_dc_no_get_phase
	.quad	gx_dc_pure_load
	.quad	gx_dc_pure_fill_rectangle
	.quad	gx_dc_pure_fill_masked
	.quad	gx_dc_pure_equal
	.quad	gx_dc_pure_write
	.quad	gx_dc_pure_read
	.quad	gx_dc_pure_get_nonzero_comps
	.size	gx_dc_type_data_pure, 88

	.type	gx_dc_type_pure,@object # @gx_dc_type_pure
	.globl	gx_dc_type_pure
	.align	8
gx_dc_type_pure:
	.quad	gx_dc_type_data_pure
	.size	gx_dc_type_pure, 8

	.type	gx_dc_type_data_devn,@object # @gx_dc_type_data_devn
	.globl	gx_dc_type_data_devn
	.align	8
gx_dc_type_data_devn:
	.quad	st_bytes
	.quad	gx_dc_devn_save_dc
	.quad	gx_dc_no_get_dev_halftone
	.quad	gx_dc_no_get_phase
	.quad	gx_dc_devn_load
	.quad	gx_dc_devn_fill_rectangle
	.quad	gx_dc_devn_fill_masked
	.quad	gx_dc_devn_equal
	.quad	gx_dc_devn_write
	.quad	gx_dc_devn_read
	.quad	gx_dc_devn_get_nonzero_comps
	.size	gx_dc_type_data_devn, 88

	.type	gx_dc_type_devn,@object # @gx_dc_type_devn
	.globl	gx_dc_type_devn
	.align	8
gx_dc_type_devn:
	.quad	gx_dc_type_data_devn
	.size	gx_dc_type_devn, 8

	.type	gx_rop_no_source_0,@object # @gx_rop_no_source_0
	.align	8
gx_rop_no_source_0:
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0                       # 0x0
	.zero	16
	.long	0                       # 0x0
	.long	1                       # 0x1
	.size	gx_rop_no_source_0, 48

	.type	gx_rop_no_source_1,@object # @gx_rop_no_source_1
	.align	8
gx_rop_no_source_1:
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0                       # 0x0
	.quad	1                       # 0x1
	.quad	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.size	gx_rop_no_source_1, 48

	.type	dc_color_type_table,@object # @dc_color_type_table
	.align	16
dc_color_type_table:
	.quad	gx_dc_type_data_none
	.quad	gx_dc_type_data_null
	.quad	gx_dc_type_data_pure
	.quad	gx_dc_pattern
	.quad	gx_dc_type_data_ht_binary
	.quad	gx_dc_type_data_ht_colored
	.quad	gx_dc_type_data_devn
	.size	dc_color_type_table, 56


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
