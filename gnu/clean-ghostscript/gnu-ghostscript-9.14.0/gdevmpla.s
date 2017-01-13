	.text
	.file	"gdevmpla.bc"
	.globl	gdev_mem_set_planar
	.align	16, 0x90
	.type	gdev_mem_set_planar,@function
gdev_mem_set_planar:                    # @gdev_mem_set_planar
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
	pushq	%r13
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp4:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 112
.Ltmp7:
	.cfi_offset %rbx, -56
.Ltmp8:
	.cfi_offset %r12, -48
.Ltmp9:
	.cfi_offset %r13, -40
.Ltmp10:
	.cfi_offset %r14, -32
.Ltmp11:
	.cfi_offset %r15, -24
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movl	%esi, %r13d
	movq	%rdi, %r12
	movl	(%rbx), %ebp
	movzwl	108(%r12), %edi
	callq	gdev_mem_device_for_bits
	movq	%rax, %r15
	leal	-1(%r13), %ecx
	movl	$-15, %eax
	cmpl	$63, %ecx
	ja	.LBB0_43
# BB#1:                                 # %lor.lhs.false.5
	cmpl	%r13d, 100(%r12)
	jne	.LBB0_43
# BB#2:                                 # %for.cond.preheader
	testl	%r13d, %r13d
	jle	.LBB0_16
# BB#3:                                 # %for.body.lr.ph
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movq	%r12, 32(%rsp)          # 8-byte Spill
	movslq	%r13d, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%r13, 24(%rsp)          # 8-byte Spill
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	leaq	4(%rbx), %r12
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB0_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%r12), %r14d
	movl	(%r12), %r15d
	testl	%r15d, %r15d
	js	.LBB0_5
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB0_4 Depth=1
	cmpl	$16, %r14d
	jg	.LBB0_7
# BB#8:                                 # %lor.lhs.false.21
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movl	%r14d, %edi
	callq	gdev_mem_device_for_bits
	testq	%rax, %rax
	je	.LBB0_9
# BB#10:                                # %if.end.24
                                        #   in Loop: Header=BB0_4 Depth=1
	cmpl	$63, %r15d
	ja	.LBB0_14
# BB#11:                                # %if.then.28
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	$1, %eax
	movb	%r14b, %cl
	shlq	%cl, %rax
	decq	%rax
	movb	%r15b, %cl
	shlq	%cl, %rax
	testq	%r13, %rax
	jne	.LBB0_12
# BB#13:                                # %if.end.33
                                        #   in Loop: Header=BB0_4 Depth=1
	orq	%rax, %r13
.LBB0_14:                               # %for.inc
                                        #   in Loop: Header=BB0_4 Depth=1
	cmpl	%ebp, %r14d
	movl	$0, %eax
	cmovnel	%eax, %ebp
	movq	48(%rsp), %rdx          # 8-byte Reload
	leal	(%rdx,%r14), %edx
	incq	%rbx
	addq	$12, %r12
	cmpq	40(%rsp), %rbx          # 8-byte Folded Reload
	jl	.LBB0_4
# BB#15:                                # %for.end
	movq	32(%rsp), %r12          # 8-byte Reload
	movzwl	108(%r12), %eax
	cmpl	%eax, %edx
	movq	24(%rsp), %r13          # 8-byte Reload
	movq	16(%rsp), %r15          # 8-byte Reload
	movq	8(%rsp), %rbx           # 8-byte Reload
	movl	$-15, %eax
	jg	.LBB0_43
.LBB0_16:                               # %if.end.47
	movl	$1, 848(%r12)
	leaq	1780(%r12), %r14
	movslq	%r13d, %rax
	shlq	$2, %rax
	leaq	(%rax,%rax,2), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movl	%ebp, 2784(%r12)
	movq	$mem_planar_open, 1144(%r12)
	cmpl	$1, %r13d
	jne	.LBB0_18
# BB#17:                                # %if.then.54
	movq	1200(%r15), %rax
	movq	%rax, 1200(%r12)
	movups	1216(%r15), %xmm0
	movups	%xmm0, 1216(%r12)
	movq	1312(%r15), %rax
	movq	%rax, 1312(%r12)
	movups	1416(%r15), %xmm0
	movups	%xmm0, 1416(%r12)
	movq	1696(%r15), %rax
	movq	%rax, 1696(%r12)
	movq	1448(%r15), %rax
	movq	%rax, 1448(%r12)
	jmp	.LBB0_42
.LBB0_18:                               # %if.else
	cmpl	$4, %r13d
	jl	.LBB0_20
# BB#19:                                # %if.then.81
	movq	$mem_planar_fill_rectangle_hl_color, 1576(%r12)
	movq	$mem_planar_put_image, 1656(%r12)
.LBB0_20:                               # %if.end.84
	movq	$mem_planar_fill_rectangle, 1200(%r12)
	movq	$gx_default_copy_alpha_hl_color, 1712(%r12)
	movq	$mem_planar_copy_mono, 1216(%r12)
	movq	$mem_planar_dev_spec_op, 1664(%r12)
	movzwl	108(%r12), %eax
	cmpl	$3, %r13d
	jne	.LBB0_29
# BB#21:                                # %if.end.84
	movzwl	%ax, %ecx
	cmpl	$24, %ecx
	jne	.LBB0_29
# BB#22:                                # %land.lhs.true.98
	cmpl	$8, (%r14)
	jne	.LBB0_29
# BB#23:                                # %land.lhs.true.104
	cmpl	$16, 1784(%r12)
	jne	.LBB0_29
# BB#24:                                # %land.lhs.true.110
	cmpl	$8, 1792(%r12)
	jne	.LBB0_29
# BB#25:                                # %land.lhs.true.116
	cmpl	$8, 1796(%r12)
	jne	.LBB0_29
# BB#26:                                # %land.lhs.true.122
	cmpl	$8, 1804(%r12)
	jne	.LBB0_29
# BB#27:                                # %land.lhs.true.128
	cmpl	$0, 1808(%r12)
	je	.LBB0_28
.LBB0_29:                               # %if.else.137
	cmpl	$4, %r13d
	jne	.LBB0_40
# BB#30:                                # %if.else.137
	movzwl	%ax, %eax
	cmpl	$4, %eax
	jne	.LBB0_40
# BB#31:                                # %land.lhs.true.146
	cmpl	$1, (%r14)
	jne	.LBB0_40
# BB#32:                                # %land.lhs.true.152
	cmpl	$3, 1784(%r12)
	jne	.LBB0_40
# BB#33:                                # %land.lhs.true.158
	cmpl	$1, 1792(%r12)
	jne	.LBB0_40
# BB#34:                                # %land.lhs.true.164
	cmpl	$2, 1796(%r12)
	jne	.LBB0_40
# BB#35:                                # %land.lhs.true.170
	cmpl	$1, 1804(%r12)
	jne	.LBB0_40
# BB#36:                                # %land.lhs.true.176
	cmpl	$1, 1808(%r12)
	jne	.LBB0_40
# BB#37:                                # %land.lhs.true.182
	cmpl	$1, 1816(%r12)
	jne	.LBB0_40
# BB#38:                                # %land.lhs.true.188
	cmpl	$0, 1820(%r12)
	je	.LBB0_39
.LBB0_40:                               # %if.else.199
	movq	$mem_planar_copy_color, 1224(%r12)
.LBB0_41:                               # %if.end.203
	movq	$gx_default_copy_alpha, 1312(%r12)
	movq	$mem_planar_copy_planes, 1672(%r12)
	movq	$mem_planar_strip_tile_rectangle, 1416(%r12)
	movq	$mem_planar_strip_tile_rect_devn, 1704(%r12)
	movq	$mem_planar_strip_copy_rop, 1424(%r12)
	movq	$mem_planar_strip_copy_rop2, 1696(%r12)
	movq	$mem_planar_get_bits_rectangle, 1448(%r12)
.LBB0_42:                               # %cleanup.217
	xorl	%eax, %eax
	jmp	.LBB0_43
.LBB0_9:
	movl	$-15, %eax
	jmp	.LBB0_43
.LBB0_5:
	movl	$-15, %eax
	jmp	.LBB0_43
.LBB0_7:
	movl	$-15, %eax
	jmp	.LBB0_43
.LBB0_12:
	movl	$-15, %eax
.LBB0_43:                               # %cleanup.217
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_28:                               # %if.then.134
	movq	$mem_planar_copy_color_24to8, 1224(%r12)
	jmp	.LBB0_41
.LBB0_39:                               # %if.then.194
	movq	$mem_planar_copy_color_4to1, 1224(%r12)
	movq	$mem_planar_dev_spec_op_cmyk4, 1664(%r12)
	jmp	.LBB0_41
.Lfunc_end0:
	.size	gdev_mem_set_planar, .Lfunc_end0-gdev_mem_set_planar
	.cfi_endproc

	.align	16, 0x90
	.type	mem_planar_open,@function
mem_planar_open:                        # @mem_planar_open
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$0, 848(%rdi)
	je	.LBB1_1
# BB#2:                                 # %if.end
	movl	836(%rdi), %esi
	jmp	gdev_mem_open_scan_lines # TAILCALL
.LBB1_1:                                # %cleanup
	movl	$-15, %eax
	retq
.Lfunc_end1:
	.size	mem_planar_open, .Lfunc_end1-mem_planar_open
	.cfi_endproc

	.align	16, 0x90
	.type	mem_planar_fill_rectangle_hl_color,@function
mem_planar_fill_rectangle_hl_color:     # @mem_planar_fill_rectangle_hl_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 128
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movl	(%rsi), %eax
	movl	4(%rsi), %edx
	sarl	$8, %eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	sarl	$8, %edx
	movl	%edx, 56(%rsp)          # 4-byte Spill
	movl	8(%rsi), %edi
	sarl	$8, %edi
	subl	%eax, %edi
	movl	%edi, 52(%rsp)          # 4-byte Spill
	movl	12(%rsi), %eax
	sarl	$8, %eax
	subl	%edx, %eax
	movl	%eax, 48(%rsp)          # 4-byte Spill
	movq	(%rcx), %rax
	movl	$gx_dc_type_data_devn, %ecx
	cmpq	%rcx, %rax
	je	.LBB2_3
# BB#1:                                 # %entry
	movl	$gx_dc_devn_masked, %ecx
	cmpq	%rcx, %rax
	je	.LBB2_3
# BB#2:                                 # %if.then
	movq	$0, 8(%rsp)
	movl	$252, (%rsp)
	movq	64(%rsp), %rdi          # 8-byte Reload
	movl	60(%rsp), %esi          # 4-byte Reload
	movl	56(%rsp), %edx          # 4-byte Reload
	movl	52(%rsp), %ecx          # 4-byte Reload
	movl	48(%rsp), %r8d          # 4-byte Reload
	movq	%rbx, %r9
	callq	*40(%rax)
	jmp	.LBB2_10
.LBB2_3:                                # %if.end
	movzwl	108(%rbx), %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	movq	1744(%rbx), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	2576(%rbx), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	cmpl	$0, 100(%rbx)
	jle	.LBB2_9
# BB#4:                                 # %for.body.lr.ph
	leaq	1780(%rbx), %r12
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB2_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%r12), %r14d
	movl	$1, %ebp
	movb	%r14b, %cl
	shlq	%cl, %rbp
	decq	%rbp
	movl	$16, %r15d
	subl	%r14d, %r15d
	movl	%r14d, %edi
	callq	gdev_mem_device_for_bits
	movw	%r14w, 108(%rbx)
	movq	2576(%rbx), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 1744(%rbx)
	cmpl	$2, 836(%rbx)
	jl	.LBB2_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	8(%rcx), %r14
	subq	(%rcx), %r14
	jmp	.LBB2_8
	.align	16, 0x90
.LBB2_7:                                # %cond.false
                                        #   in Loop: Header=BB2_5 Depth=1
	imull	832(%rbx), %r14d
	addl	$63, %r14d
	sarl	$6, %r14d
	shll	$3, %r14d
.LBB2_8:                                # %cond.end
                                        #   in Loop: Header=BB2_5 Depth=1
	movl	%r14d, 1736(%rbx)
	movq	64(%rsp), %rcx          # 8-byte Reload
	movzwl	8(%rcx,%r13,2), %edx
	movb	%r15b, %cl
	shrl	%cl, %edx
	movslq	%edx, %r9
	andq	%rbp, %r9
	movq	%rbx, %rdi
	movl	60(%rsp), %esi          # 4-byte Reload
	movl	56(%rsp), %edx          # 4-byte Reload
	movl	52(%rsp), %ecx          # 4-byte Reload
	movl	48(%rsp), %r8d          # 4-byte Reload
	callq	*1200(%rax)
	movslq	836(%rbx), %rax
	shlq	$3, %rax
	addq	%rax, 2576(%rbx)
	incq	%r13
	movslq	100(%rbx), %rax
	addq	$12, %r12
	cmpq	%rax, %r13
	jl	.LBB2_5
.LBB2_9:                                # %cleanup
	movl	44(%rsp), %eax          # 4-byte Reload
	movw	%ax, 108(%rbx)
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	%rax, 1744(%rbx)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rax, 2576(%rbx)
	xorl	%eax, %eax
.LBB2_10:                               # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	mem_planar_fill_rectangle_hl_color, .Lfunc_end2-mem_planar_fill_rectangle_hl_color
	.cfi_endproc

	.align	16, 0x90
	.type	mem_planar_put_image,@function
mem_planar_put_image:                   # @mem_planar_put_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp27:
	.cfi_def_cfa_offset 48
.Ltmp28:
	.cfi_offset %rbx, -16
	movl	%ecx, %r10d
	movl	64(%rsp), %eax
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB3_4
# BB#1:                                 # %entry
	movl	72(%rsp), %ecx
	testl	%ecx, %ecx
	jne	.LBB3_4
# BB#2:                                 # %lor.lhs.false.2
	cmpl	$8, 1780(%rdi)
	jne	.LBB3_4
# BB#3:                                 # %if.end
	movl	56(%rsp), %ecx
	movl	48(%rsp), %ebx
	cltd
	idivl	%ecx
	movl	%eax, 24(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r9d, 8(%rsp)
	movl	%r8d, (%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movl	%r10d, %r9d
	callq	*1672(%rdi)
.LBB3_4:                                # %cleanup
	movl	%ebx, %eax
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end3:
	.size	mem_planar_put_image, .Lfunc_end3-mem_planar_put_image
	.cfi_endproc

	.align	16, 0x90
	.type	mem_planar_fill_rectangle,@function
mem_planar_fill_rectangle:              # @mem_planar_fill_rectangle
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
	subq	$40, %rsp
.Ltmp35:
	.cfi_def_cfa_offset 96
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
	movq	%r9, 32(%rsp)           # 8-byte Spill
	movl	%r8d, 28(%rsp)          # 4-byte Spill
	movl	%ecx, 24(%rsp)          # 4-byte Spill
	movl	%edx, 20(%rsp)          # 4-byte Spill
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movzwl	108(%rbx), %eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	movq	1744(%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	2576(%rbx), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	cmpl	$0, 100(%rbx)
	jle	.LBB4_6
# BB#1:                                 # %for.body.lr.ph
	leaq	1784(%rbx), %r15
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB4_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%r15), %r14d
	movl	$1, %r13d
	movb	%r14b, %cl
	shlq	%cl, %r13
	decq	%r13
	movl	%r14d, %edi
	callq	gdev_mem_device_for_bits
	movw	%r14w, 108(%rbx)
	movq	2576(%rbx), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 1744(%rbx)
	cmpl	$2, 836(%rbx)
	jl	.LBB4_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	8(%rcx), %r14
	subq	(%rcx), %r14
	jmp	.LBB4_5
	.align	16, 0x90
.LBB4_4:                                # %cond.false
                                        #   in Loop: Header=BB4_2 Depth=1
	imull	832(%rbx), %r14d
	addl	$63, %r14d
	sarl	$6, %r14d
	shll	$3, %r14d
.LBB4_5:                                # %cond.end
                                        #   in Loop: Header=BB4_2 Depth=1
	movl	%r14d, 1736(%rbx)
	movb	(%r15), %cl
	movq	32(%rsp), %r9           # 8-byte Reload
	shrq	%cl, %r9
	andq	%r13, %r9
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movl	20(%rsp), %edx          # 4-byte Reload
	movl	24(%rsp), %ecx          # 4-byte Reload
	movl	28(%rsp), %r8d          # 4-byte Reload
	callq	*1200(%rax)
	movslq	836(%rbx), %rax
	shlq	$3, %rax
	addq	%rax, 2576(%rbx)
	incq	%r12
	movslq	100(%rbx), %rax
	addq	$12, %r15
	cmpq	%rax, %r12
	jl	.LBB4_2
.LBB4_6:                                # %for.end
	movl	16(%rsp), %eax          # 4-byte Reload
	movw	%ax, 108(%rbx)
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rax, 1744(%rbx)
	movq	(%rsp), %rax            # 8-byte Reload
	movq	%rax, 2576(%rbx)
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	mem_planar_fill_rectangle, .Lfunc_end4-mem_planar_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	mem_planar_copy_mono,@function
mem_planar_copy_mono:                   # @mem_planar_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp45:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp46:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp48:
	.cfi_def_cfa_offset 176
.Ltmp49:
	.cfi_offset %rbx, -56
.Ltmp50:
	.cfi_offset %r12, -48
.Ltmp51:
	.cfi_offset %r13, -40
.Ltmp52:
	.cfi_offset %r14, -32
.Ltmp53:
	.cfi_offset %r15, -24
.Ltmp54:
	.cfi_offset %rbp, -16
	movl	%r9d, 116(%rsp)         # 4-byte Spill
	movq	%r8, 104(%rsp)          # 8-byte Spill
	movl	%ecx, 100(%rsp)         # 4-byte Spill
	movl	%edx, 96(%rsp)          # 4-byte Spill
	movq	%rsi, 88(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movzwl	108(%rbx), %eax
	movl	%eax, 84(%rsp)          # 4-byte Spill
	movq	1744(%rbx), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	2576(%rbx), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	cmpl	$0, 100(%rbx)
	jle	.LBB5_9
# BB#1:                                 # %for.body.lr.ph
	leaq	1784(%rbx), %rbp
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB5_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %r13d
	movb	(%rbp), %r14b
	movl	$1, %r12d
	movb	%r13b, %cl
	shlq	%cl, %r12
	decq	%r12
	movl	%r13d, %edi
	callq	gdev_mem_device_for_bits
	movq	200(%rsp), %rcx
	movq	%rcx, %rdx
	movq	%rdx, %r9
	movb	%r14b, %cl
	shrq	%cl, %r9
	andq	%r12, %r9
	cmpq	$-1, %rdx
	cmoveq	%rdx, %r9
	movq	208(%rsp), %rcx
	movq	%rcx, %rsi
	movq	%rsi, %rdx
	movb	%r14b, %cl
	shrq	%cl, %rdx
	andq	%r12, %rdx
	cmpq	$-1, %rsi
	cmoveq	%rsi, %rdx
	movw	%r13w, 108(%rbx)
	movq	2576(%rbx), %rcx
	movq	(%rcx), %rsi
	movq	%rsi, 1744(%rbx)
	cmpl	$2, 836(%rbx)
	jl	.LBB5_4
# BB#3:                                 # %cond.true.32
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	8(%rcx), %r13
	subq	(%rcx), %r13
	jmp	.LBB5_5
	.align	16, 0x90
.LBB5_4:                                # %cond.false.37
                                        #   in Loop: Header=BB5_2 Depth=1
	imull	832(%rbx), %r13d
	addl	$63, %r13d
	sarl	$6, %r13d
	shll	$3, %r13d
.LBB5_5:                                # %cond.end.41
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	%r13d, 1736(%rbx)
	cmpq	%rdx, %r9
	jne	.LBB5_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	%rbx, %rdi
	movl	116(%rsp), %esi         # 4-byte Reload
	movl	176(%rsp), %edx
	movl	184(%rsp), %ecx
	movl	192(%rsp), %r8d
	callq	*1200(%rax)
	jmp	.LBB5_8
	.align	16, 0x90
.LBB5_7:                                # %if.else
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	%rdx, 32(%rsp)
	movq	%r9, 24(%rsp)
	movl	192(%rsp), %ecx
	movl	%ecx, 16(%rsp)
	movl	184(%rsp), %ecx
	movl	%ecx, 8(%rsp)
	movl	176(%rsp), %ecx
	movl	%ecx, (%rsp)
	movq	%rbx, %rdi
	movq	88(%rsp), %rsi          # 8-byte Reload
	movl	96(%rsp), %edx          # 4-byte Reload
	movl	100(%rsp), %ecx         # 4-byte Reload
	movq	104(%rsp), %r8          # 8-byte Reload
	movl	116(%rsp), %r9d         # 4-byte Reload
	callq	*1216(%rax)
.LBB5_8:                                # %if.end
                                        #   in Loop: Header=BB5_2 Depth=1
	movslq	836(%rbx), %rax
	shlq	$3, %rax
	addq	%rax, 2576(%rbx)
	incq	%r15
	movslq	100(%rbx), %rax
	addq	$12, %rbp
	cmpq	%rax, %r15
	jl	.LBB5_2
.LBB5_9:                                # %for.end
	movl	84(%rsp), %eax          # 4-byte Reload
	movw	%ax, 108(%rbx)
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	%rax, 1744(%rbx)
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	%rax, 2576(%rbx)
	xorl	%eax, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	mem_planar_copy_mono, .Lfunc_end5-mem_planar_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	mem_planar_dev_spec_op,@function
mem_planar_dev_spec_op:                 # @mem_planar_dev_spec_op
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp56:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp57:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp59:
	.cfi_def_cfa_offset 48
.Ltmp60:
	.cfi_offset %rbx, -40
.Ltmp61:
	.cfi_offset %r14, -32
.Ltmp62:
	.cfi_offset %r15, -24
.Ltmp63:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rdx, %r15
	movl	%esi, %ebp
	movq	%rdi, %rbx
	cmpl	$11, %ebp
	jne	.LBB6_4
# BB#1:                                 # %if.then
	leaq	(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*1680(%rbx)
	movq	(%rsp), %rax
	testq	%rax, %rax
	je	.LBB6_4
# BB#2:                                 # %land.lhs.true
	cmpl	$0, 168(%rax)
	je	.LBB6_4
# BB#3:                                 # %land.lhs.true.2
	movl	$mem_planar_fill_rectangle_hl_color, %ecx
	movl	$1, %eax
	cmpq	%rcx, 1576(%rbx)
	je	.LBB6_5
.LBB6_4:                                # %if.end.6
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movq	%r15, %rdx
	movl	%r14d, %ecx
	callq	gx_default_dev_spec_op
.LBB6_5:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	mem_planar_dev_spec_op, .Lfunc_end6-mem_planar_dev_spec_op
	.cfi_endproc

	.align	16, 0x90
	.type	mem_planar_copy_color_24to8,@function
mem_planar_copy_color_24to8:            # @mem_planar_copy_color_24to8
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
	subq	$2584, %rsp             # imm = 0xA18
.Ltmp70:
	.cfi_def_cfa_offset 2640
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
	movl	%r9d, %r14d
	movl	%ecx, 76(%rsp)          # 4-byte Spill
	movl	%edx, %r13d
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	movq	%rdi, %r12
	movl	2656(%rsp), %r15d
	movl	2648(%rsp), %ebx
	movl	2640(%rsp), %ebp
	movl	$8, %edi
	callq	gdev_mem_device_for_bits
	movq	%rax, 160(%rsp)         # 8-byte Spill
	movl	%ebp, %eax
	orl	%r14d, %eax
	js	.LBB7_2
# BB#1:
	movl	%ebx, %esi
	movl	%ebp, %edi
	jmp	.LBB7_5
.LBB7_2:                                # %if.then
	movl	%r14d, %eax
	sarl	$31, %eax
	andl	%r14d, %eax
	leal	(%rbx,%rax), %esi
	xorl	%edi, %edi
	testl	%r14d, %r14d
	cmovsl	%edi, %r14d
	subl	%eax, %r13d
	testl	%ebp, %ebp
	js	.LBB7_4
# BB#3:
	movl	%ebp, %edi
	jmp	.LBB7_5
.LBB7_4:                                # %if.then.7
	addl	%ebp, %r15d
	imull	76(%rsp), %ebp          # 4-byte Folded Reload
	movslq	%ebp, %rax
	subq	%rax, 64(%rsp)          # 8-byte Folded Spill
.LBB7_5:                                # %if.end.10
	movl	832(%r12), %r8d
	movl	836(%r12), %eax
	movq	%r12, %rdx
	movl	%r8d, %ebp
	subl	%r14d, %ebp
	cmpl	%ebp, %esi
	cmovlel	%esi, %ebp
	movq	%rbp, 88(%rsp)          # 8-byte Spill
	movl	%eax, %ecx
	subl	%edi, %ecx
	cmpl	%ecx, %r15d
	cmovlel	%r15d, %ecx
	testl	%ebp, %ebp
	jle	.LBB7_25
# BB#6:                                 # %if.end.10
	testl	%ecx, %ecx
	jle	.LBB7_25
# BB#7:                                 # %do.end.28
	movq	%rsi, %r9
	leal	63(,%rbx,8), %ebp
	sarl	$6, %ebp
	shll	$3, %ebp
	movq	%rdx, %rsi
	movq	%rsi, 144(%rsp)         # 8-byte Spill
	movw	108(%rsi), %dx
	movw	%dx, 50(%rsp)           # 2-byte Spill
	movq	1744(%rsi), %rdx
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movq	2576(%rsi), %rbx
	movw	$8, 108(%rsi)
	movq	(%rbx), %rdx
	movq	%rdx, 1744(%rsi)
	cmpl	$2, %eax
	jl	.LBB7_9
# BB#8:                                 # %cond.true
	movq	8(%rbx), %rax
	subq	(%rbx), %rax
	jmp	.LBB7_10
.LBB7_9:                                # %cond.false
	leal	63(,%r8,8), %eax
	sarl	$6, %eax
	shll	$3, %eax
.LBB7_10:                               # %cond.end
	movq	%r13, 112(%rsp)         # 8-byte Spill
	movq	144(%rsp), %rdx         # 8-byte Reload
	movl	%eax, 1736(%rdx)
	cmpl	$800, %ebp              # imm = 0x320
	jbe	.LBB7_12
# BB#11:
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movl	$1, 84(%rsp)            # 4-byte Folded Spill
	movl	$800, 140(%rsp)         # 4-byte Folded Spill
                                        # imm = 0x320
	movl	$800, 136(%rsp)         # 4-byte Folded Spill
                                        # imm = 0x320
	jmp	.LBB7_13
.LBB7_12:                               # %if.else
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movl	$800, %eax              # imm = 0x320
	xorl	%edx, %edx
	divl	%ebp
	movl	%ebp, 140(%rsp)         # 4-byte Spill
	movl	%eax, 84(%rsp)          # 4-byte Spill
	movq	88(%rsp), %rax          # 8-byte Reload
	movl	%eax, 136(%rsp)         # 4-byte Spill
.LBB7_13:                               # %if.end.54
	testl	%ecx, %ecx
	jle	.LBB7_24
# BB#14:                                # %for.body.lr.ph
	movl	%edi, %edx
	movl	%edx, 52(%rsp)          # 4-byte Spill
	addl	%edx, %ecx
	movl	%ecx, 80(%rsp)          # 4-byte Spill
	movq	%r14, 56(%rsp)          # 8-byte Spill
	movq	88(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%r14), %esi
	movl	%esi, 132(%rsp)         # 4-byte Spill
	movq	112(%rsp), %rax         # 8-byte Reload
	subl	%r14d, %eax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movslq	76(%rsp), %r12          # 4-byte Folded Reload
	movslq	140(%rsp), %r15         # 4-byte Folded Reload
	leal	-1(%r14), %eax
	subl	%r8d, %eax
	movq	%r9, %rdi
	notl	%edi
	cmpl	%edi, %eax
	cmovgel	%eax, %edi
	subl	%r14d, %edi
	movq	%rdi, 104(%rsp)         # 8-byte Spill
	movl	136(%rsp), %eax         # 4-byte Reload
	notl	%eax
	movl	%eax, 100(%rsp)         # 4-byte Spill
	movl	%edx, %eax
	.align	16, 0x90
.LBB7_15:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_17 Depth 2
                                        #       Child Loop BB7_19 Depth 3
                                        #         Child Loop BB7_20 Depth 4
	movl	%eax, 168(%rsp)         # 4-byte Spill
	subl	%eax, %ecx
	movl	84(%rsp), %eax          # 4-byte Reload
	cmpl	%ecx, %eax
	cmovlel	%eax, %ecx
	movl	%ecx, 172(%rsp)         # 4-byte Spill
	movq	88(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB7_23
# BB#16:                                # %for.body.72.lr.ph
                                        #   in Loop: Header=BB7_15 Depth=1
	movl	168(%rsp), %eax         # 4-byte Reload
	subl	52(%rsp), %eax          # 4-byte Folded Reload
	imull	76(%rsp), %eax          # 4-byte Folded Reload
	cltq
	movq	64(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movl	172(%rsp), %eax         # 4-byte Reload
	movslq	%eax, %r13
	movq	56(%rsp), %r14          # 8-byte Reload
	.align	16, 0x90
.LBB7_17:                               # %for.body.72
                                        #   Parent Loop BB7_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_19 Depth 3
                                        #         Child Loop BB7_20 Depth 4
	movq	%r14, 176(%rsp)         # 8-byte Spill
	subl	%r14d, %esi
	movl	136(%rsp), %eax         # 4-byte Reload
	cmpl	%esi, %eax
	cmovlel	%eax, %esi
	movl	%esi, 156(%rsp)         # 4-byte Spill
	cmpl	$0, 172(%rsp)           # 4-byte Folded Reload
	jle	.LBB7_22
# BB#18:                                # %for.body.95.lr.ph
                                        #   in Loop: Header=BB7_17 Depth=2
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	176(%rsp), %rdx         # 8-byte Reload
	leal	(%rax,%rdx), %eax
	leal	(%rax,%rax,2), %eax
	cltq
	movq	120(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %r9
	movq	104(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rdx), %r8d
	movl	100(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, %r8d
	cmovll	%eax, %r8d
	incl	%r8d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB7_19:                               # %for.body.95
                                        #   Parent Loop BB7_15 Depth=1
                                        #     Parent Loop BB7_17 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_20 Depth 4
	movq	%rbp, %rax
	imulq	%r15, %rax
	leaq	1784(%rsp,%rax), %rsi
	leaq	984(%rsp,%rax), %rdi
	leaq	184(%rsp,%rax), %rbx
	movl	%r8d, %ecx
	movq	%r9, %rax
	.align	16, 0x90
.LBB7_20:                               # %do.body.109
                                        #   Parent Loop BB7_15 Depth=1
                                        #     Parent Loop BB7_17 Depth=2
                                        #       Parent Loop BB7_19 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movb	(%rax), %dl
	movb	1(%rax), %r10b
	movb	2(%rax), %r11b
	movb	%dl, (%rsi)
	incq	%rsi
	movb	%r10b, (%rdi)
	incq	%rdi
	movb	%r11b, (%rbx)
	incq	%rbx
	addq	$3, %rax
	incl	%ecx
	jne	.LBB7_20
# BB#21:                                # %do.end.117
                                        #   in Loop: Header=BB7_19 Depth=3
	addq	%r12, %r9
	incq	%rbp
	cmpq	%r13, %rbp
	jl	.LBB7_19
.LBB7_22:                               # %for.end
                                        #   in Loop: Header=BB7_17 Depth=2
	movl	172(%rsp), %eax         # 4-byte Reload
	movl	%eax, 16(%rsp)
	movl	156(%rsp), %ebp         # 4-byte Reload
	movl	%ebp, 8(%rsp)
	movl	168(%rsp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	144(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	leaq	1784(%rsp), %rsi
	movl	140(%rsp), %r14d        # 4-byte Reload
	movl	%r14d, %ecx
	movq	176(%rsp), %r9          # 8-byte Reload
	movq	160(%rsp), %rax         # 8-byte Reload
	callq	*1224(%rax)
	movslq	836(%rbx), %rax
	shlq	$3, %rax
	addq	%rax, 2576(%rbx)
	movl	172(%rsp), %eax         # 4-byte Reload
	movl	%eax, 16(%rsp)
	movl	%ebp, 8(%rsp)
	movl	168(%rsp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	leaq	984(%rsp), %rsi
	movl	%r14d, %ecx
	movq	176(%rsp), %r9          # 8-byte Reload
	movq	160(%rsp), %rax         # 8-byte Reload
	callq	*1224(%rax)
	movslq	836(%rbx), %rax
	shlq	$3, %rax
	addq	%rax, 2576(%rbx)
	movl	172(%rsp), %eax         # 4-byte Reload
	movl	%eax, 16(%rsp)
	movl	%ebp, 8(%rsp)
	movl	168(%rsp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	leaq	184(%rsp), %rsi
	movl	%r14d, %ecx
	movq	176(%rsp), %r14         # 8-byte Reload
	movl	%r14d, %r9d
	movq	160(%rsp), %rax         # 8-byte Reload
	callq	*1224(%rax)
	movslq	836(%rbx), %rax
	shlq	$4, %rax
	subq	%rax, 2576(%rbx)
	addl	%ebp, %r14d
	movl	132(%rsp), %esi         # 4-byte Reload
	cmpl	%r14d, %esi
	jg	.LBB7_17
.LBB7_23:                               # %for.inc.150
                                        #   in Loop: Header=BB7_15 Depth=1
	movl	168(%rsp), %eax         # 4-byte Reload
	addl	172(%rsp), %eax         # 4-byte Folded Reload
	movl	80(%rsp), %ecx          # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB7_15
.LBB7_24:                               # %for.end.152
	movq	144(%rsp), %rax         # 8-byte Reload
	movw	50(%rsp), %cx           # 2-byte Reload
	movw	%cx, 108(%rax)
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 1744(%rax)
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 2576(%rax)
.LBB7_25:                               # %cleanup
	xorl	%eax, %eax
	addq	$2584, %rsp             # imm = 0xA18
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	mem_planar_copy_color_24to8, .Lfunc_end7-mem_planar_copy_color_24to8
	.cfi_endproc

	.align	16, 0x90
	.type	mem_planar_copy_color_4to1,@function
mem_planar_copy_color_4to1:             # @mem_planar_copy_color_4to1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp78:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp79:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp80:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp81:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp82:
	.cfi_def_cfa_offset 56
	subq	$3464, %rsp             # imm = 0xD88
.Ltmp83:
	.cfi_def_cfa_offset 3520
.Ltmp84:
	.cfi_offset %rbx, -56
.Ltmp85:
	.cfi_offset %r12, -48
.Ltmp86:
	.cfi_offset %r13, -40
.Ltmp87:
	.cfi_offset %r14, -32
.Ltmp88:
	.cfi_offset %r15, -24
.Ltmp89:
	.cfi_offset %rbp, -16
	movl	%r9d, %r12d
	movl	%ecx, 116(%rsp)         # 4-byte Spill
	movl	%edx, %ebp
	movq	%rsi, 104(%rsp)         # 8-byte Spill
	movq	%rdi, %r15
	movl	3536(%rsp), %r14d
	movl	3528(%rsp), %r13d
	movl	3520(%rsp), %ebx
	movl	$1, %edi
	callq	gdev_mem_device_for_bits
	movq	%rax, 184(%rsp)         # 8-byte Spill
	movl	%ebx, %eax
	orl	%r12d, %eax
	js	.LBB8_2
# BB#1:
	movl	%r13d, %esi
	movl	%ebx, %edi
	jmp	.LBB8_5
.LBB8_2:                                # %if.then
	movl	%r12d, %eax
	sarl	$31, %eax
	andl	%r12d, %eax
	leal	(%rax,%r13), %esi
	xorl	%edi, %edi
	testl	%r12d, %r12d
	cmovsl	%edi, %r12d
	subl	%eax, %ebp
	testl	%ebx, %ebx
	js	.LBB8_4
# BB#3:
	movl	%ebx, %edi
	jmp	.LBB8_5
.LBB8_4:                                # %if.then.6
	addl	%ebx, %r14d
	imull	116(%rsp), %ebx         # 4-byte Folded Reload
	movslq	%ebx, %rax
	subq	%rax, 104(%rsp)         # 8-byte Folded Spill
.LBB8_5:                                # %if.end.9
	movl	832(%r15), %r9d
	movl	836(%r15), %eax
	movq	%r15, %rdx
	movl	%r9d, %ebx
	subl	%r12d, %ebx
	cmpl	%ebx, %esi
	cmovlel	%esi, %ebx
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	movl	%eax, %ecx
	subl	%edi, %ecx
	cmpl	%ecx, %r14d
	cmovlel	%r14d, %ecx
	testl	%ebx, %ebx
	jle	.LBB8_41
# BB#6:                                 # %if.end.9
	testl	%ecx, %ecx
	jle	.LBB8_41
# BB#7:                                 # %do.end.27
	movq	%rsi, %r8
	addl	$63, %r13d
	sarl	$6, %r13d
	shll	$3, %r13d
	movq	%rdx, %rsi
	movq	%rsi, 192(%rsp)         # 8-byte Spill
	movw	108(%rsi), %dx
	movw	%dx, 70(%rsp)           # 2-byte Spill
	movq	1744(%rsi), %rdx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movq	2576(%rsi), %rbx
	movw	$1, 108(%rsi)
	movq	(%rbx), %rdx
	movq	%rdx, 1744(%rsi)
	cmpl	$2, %eax
	jl	.LBB8_9
# BB#8:                                 # %cond.true
	movq	8(%rbx), %rax
	subq	(%rbx), %rax
	jmp	.LBB8_10
.LBB8_9:                                # %cond.false
	leal	63(%r9), %eax
	sarl	$6, %eax
	shll	$3, %eax
.LBB8_10:                               # %cond.end
	movq	192(%rsp), %rdx         # 8-byte Reload
	movl	%eax, 1736(%rdx)
	cmpl	$800, %r13d             # imm = 0x320
	jbe	.LBB8_12
# BB#11:
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movq	%r12, %rbx
	movl	$1, 124(%rsp)           # 4-byte Folded Spill
	movl	$6400, 180(%rsp)        # 4-byte Folded Spill
                                        # imm = 0x1900
	movl	$800, %eax              # imm = 0x320
	movq	%rax, 216(%rsp)         # 8-byte Spill
	jmp	.LBB8_13
.LBB8_12:                               # %if.else
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movq	%r12, %rbx
	movl	$800, %eax              # imm = 0x320
	xorl	%edx, %edx
	divl	%r13d
	movq	%r13, 216(%rsp)         # 8-byte Spill
	movl	%eax, 124(%rsp)         # 4-byte Spill
	movq	128(%rsp), %rax         # 8-byte Reload
	movl	%eax, 180(%rsp)         # 4-byte Spill
.LBB8_13:                               # %if.end.53
	testl	%ecx, %ecx
	jle	.LBB8_40
# BB#14:                                # %for.body.lr.ph
	movl	%edi, %edx
	movl	%edx, 92(%rsp)          # 4-byte Spill
	addl	%edx, %ecx
	movl	%ecx, 120(%rsp)         # 4-byte Spill
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movq	128(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rbx), %esi
	movl	%esi, 164(%rsp)         # 4-byte Spill
	subl	%ebx, %ebp
	movq	%rbp, 168(%rsp)         # 8-byte Spill
	movslq	116(%rsp), %r13         # 4-byte Folded Reload
	movq	216(%rsp), %rax         # 8-byte Reload
	cltq
	movq	%rax, 208(%rsp)         # 8-byte Spill
	movq	104(%rsp), %rax         # 8-byte Reload
	leaq	4(%rax), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movl	%edx, %eax
	negl	%eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leal	-1(%rbx), %eax
	subl	%r9d, %eax
	movq	%r8, %rdi
	notl	%edi
	cmpl	%edi, %eax
	cmovgel	%eax, %edi
	subl	%ebx, %edi
	movq	%rdi, 152(%rsp)         # 8-byte Spill
	movl	180(%rsp), %eax         # 4-byte Reload
	notl	%eax
	movl	%eax, 148(%rsp)         # 4-byte Spill
	movl	%edx, %eax
	.align	16, 0x90
.LBB8_15:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_17 Depth 2
                                        #       Child Loop BB8_20 Depth 3
                                        #         Child Loop BB8_22 Depth 4
                                        #       Child Loop BB8_26 Depth 3
                                        #         Child Loop BB8_27 Depth 4
	movq	%rax, 232(%rsp)         # 8-byte Spill
	subl	%eax, %ecx
	movl	124(%rsp), %eax         # 4-byte Reload
	cmpl	%ecx, %eax
	cmovlel	%eax, %ecx
	movl	%ecx, 240(%rsp)         # 4-byte Spill
	movq	128(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB8_39
# BB#16:                                # %for.body.71.lr.ph
                                        #   in Loop: Header=BB8_15 Depth=1
	movq	232(%rsp), %rdi         # 8-byte Reload
	movl	%edi, %eax
	subl	92(%rsp), %eax          # 4-byte Folded Reload
	movl	116(%rsp), %ecx         # 4-byte Reload
	imull	%ecx, %eax
	cltq
	movq	104(%rsp), %rdx         # 8-byte Reload
	leaq	(%rax,%rdx), %rax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	movslq	240(%rsp), %rax         # 4-byte Folded Reload
	movq	%rax, 256(%rsp)         # 8-byte Spill
	movq	72(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rdi), %eax
	imull	%ecx, %eax
	cltq
	movq	80(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	%eax, %r14d
	.align	16, 0x90
.LBB8_17:                               # %for.body.71
                                        #   Parent Loop BB8_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_20 Depth 3
                                        #         Child Loop BB8_22 Depth 4
                                        #       Child Loop BB8_26 Depth 3
                                        #         Child Loop BB8_27 Depth 4
	leal	(%rbp,%r14), %ecx
	movl	%ecx, %eax
	sarl	%eax
	cltq
	movq	200(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rax), %r9
	subl	%r14d, %esi
	movl	180(%rsp), %edx         # 4-byte Reload
	cmpl	%esi, %edx
	cmovlel	%edx, %esi
	movq	%rsi, 248(%rsp)         # 8-byte Spill
	testb	$1, %cl
	jne	.LBB8_18
# BB#24:                                # %for.cond.94.preheader
                                        #   in Loop: Header=BB8_17 Depth=2
	movq	%r14, 224(%rsp)         # 8-byte Spill
	cmpl	$0, 240(%rsp)           # 4-byte Folded Reload
	movq	208(%rsp), %r14         # 8-byte Reload
	jle	.LBB8_38
# BB#25:                                # %for.body.97.preheader
                                        #   in Loop: Header=BB8_17 Depth=2
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	224(%rsp), %rcx         # 8-byte Reload
	leal	(%rax,%rcx), %eax
	movl	148(%rsp), %ecx         # 4-byte Reload
	cmpl	%ecx, %eax
	cmovll	%ecx, %eax
	movl	$1, %r8d
	subl	%eax, %r8d
	xorl	%r10d, %r10d
	.align	16, 0x90
.LBB8_26:                               # %for.body.97
                                        #   Parent Loop BB8_15 Depth=1
                                        #     Parent Loop BB8_17 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB8_27 Depth 4
	movq	%r10, %rax
	imulq	%r14, %rax
	leaq	2664(%rsp,%rax), %rdx
	leaq	1864(%rsp,%rax), %rbp
	leaq	1064(%rsp,%rax), %r15
	leaq	264(%rsp,%rax), %r11
	xorl	%eax, %eax
	movl	$6, %ecx
	movl	%r8d, %esi
	movq	%r9, %rdi
	.align	16, 0x90
.LBB8_27:                               # %do.body.116
                                        #   Parent Loop BB8_15 Depth=1
                                        #     Parent Loop BB8_17 Depth=2
                                        #       Parent Loop BB8_26 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%eax, %ebx
	movzbl	(%rdi), %eax
	movl	expand_4to1(,%rax,4), %eax
	shll	%cl, %eax
	orl	%ebx, %eax
	cmpl	$1, %ecx
	jg	.LBB8_28
# BB#29:                                # %if.then.123
                                        #   in Loop: Header=BB8_27 Depth=4
	movl	%eax, %ecx
	movq	%r15, %rbx
	movb	%ah, (%rbx)  # NOREX
	movb	%al, (%r11)
	shrl	$24, %eax
	movb	%al, (%rdx)
	incq	%rdx
	shrl	$16, %ecx
	movb	%cl, (%rbp)
	incq	%rbp
	incq	%rbx
	movq	%rbx, %r15
	incq	%r11
	xorl	%eax, %eax
	movl	$6, %ecx
	jmp	.LBB8_30
	.align	16, 0x90
.LBB8_28:                               #   in Loop: Header=BB8_27 Depth=4
	addl	$-2, %ecx
.LBB8_30:                               # %if.end.135
                                        #   in Loop: Header=BB8_27 Depth=4
	incq	%rdi
	addl	$-2, %esi
	cmpl	$2, %esi
	jg	.LBB8_27
# BB#31:                                # %do.end.140
                                        #   in Loop: Header=BB8_26 Depth=3
	cmpl	$6, %ecx
	je	.LBB8_33
# BB#32:                                # %if.then.143
                                        #   in Loop: Header=BB8_26 Depth=3
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, (%rdx)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, (%rbp)
	movq	%r15, %rcx
	movb	%ah, (%rcx)  # NOREX
	movb	%al, (%r11)
.LBB8_33:                               # %if.end.155
                                        #   in Loop: Header=BB8_26 Depth=3
	addq	%r13, %r9
	incq	%r10
	cmpq	256(%rsp), %r10         # 8-byte Folded Reload
	jl	.LBB8_26
	jmp	.LBB8_38
	.align	16, 0x90
.LBB8_18:                               # %for.cond.159.preheader
                                        #   in Loop: Header=BB8_17 Depth=2
	movq	%r14, 224(%rsp)         # 8-byte Spill
	cmpl	$0, 240(%rsp)           # 4-byte Folded Reload
	movq	208(%rsp), %r14         # 8-byte Reload
	jle	.LBB8_38
# BB#19:                                # %for.body.162.preheader
                                        #   in Loop: Header=BB8_17 Depth=2
	movq	248(%rsp), %rcx         # 8-byte Reload
	leal	-2(%rcx), %r10d
	movq	136(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %r11
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	224(%rsp), %rcx         # 8-byte Reload
	leal	(%rax,%rcx), %eax
	movl	148(%rsp), %ecx         # 4-byte Reload
	cmpl	%ecx, %eax
	cmovll	%ecx, %eax
	movl	$-3, %ecx
	subl	%eax, %ecx
	movl	%ecx, 244(%rsp)         # 4-byte Spill
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB8_20:                               # %for.body.162
                                        #   Parent Loop BB8_15 Depth=1
                                        #     Parent Loop BB8_17 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB8_22 Depth 4
	movzbl	(%r9), %eax
	andl	$15, %eax
	movl	expand_4to1(,%rax,4), %ecx
	shll	$7, %ecx
	testl	%r10d, %r10d
	js	.LBB8_34
# BB#21:                                #   in Loop: Header=BB8_20 Depth=3
	movl	244(%rsp), %esi         # 4-byte Reload
	movq	%r11, %rdx
	movq	%r12, %rbp
	.align	16, 0x90
.LBB8_22:                               # %do.body.195
                                        #   Parent Loop BB8_15 Depth=1
                                        #     Parent Loop BB8_17 Depth=2
                                        #       Parent Loop BB8_20 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	-3(%rdx), %eax
	movl	expand_4to1(,%rax,4), %eax
	shll	$5, %eax
	orl	%ecx, %eax
	movl	%esi, %ecx
	addl	$-2, %ecx
	js	.LBB8_23
# BB#42:                                # %do.body.195.1
                                        #   in Loop: Header=BB8_22 Depth=4
	movzbl	-2(%rdx), %ecx
	movl	expand_4to1(,%rcx,4), %ecx
	shll	$3, %ecx
	orl	%eax, %ecx
	movl	%esi, %eax
	addl	$-4, %eax
	js	.LBB8_43
# BB#44:                                # %do.body.195.2
                                        #   in Loop: Header=BB8_22 Depth=4
	movq	%rbp, %r8
	movzbl	-1(%rdx), %eax
	movl	expand_4to1(,%rax,4), %eax
	addl	%eax, %eax
	orl	%eax, %ecx
	movl	%esi, %eax
	addl	$-6, %eax
	js	.LBB8_45
# BB#46:                                # %do.body.195.3
                                        #   in Loop: Header=BB8_22 Depth=4
	movzbl	(%rdx), %edi
	movl	%edi, %ebp
	andl	$240, %ebp
	movl	expand_4to1(,%rbp,4), %ebx
	shrl	%ebx
	orl	%ecx, %ebx
	movl	%ebx, %ecx
	movq	%r8, %rbp
	movb	%bh, 1064(%rsp,%rbp)  # NOREX
	movb	%bl, 264(%rsp,%rbp)
	shrl	$24, %ebx
	movb	%bl, 2664(%rsp,%rbp)
	shrl	$16, %ecx
	movb	%cl, 1864(%rsp,%rbp)
	andl	$15, %edi
	movl	expand_4to1(,%rdi,4), %ecx
	movq	%rbp, %rdi
	shll	$7, %ecx
	leaq	1(%rdi), %rbp
	addq	$4, %rdx
	addl	$-8, %esi
	jns	.LBB8_22
# BB#47:                                #   in Loop: Header=BB8_20 Depth=3
	leaq	265(%rsp,%rdi), %rsi
	leaq	1065(%rsp,%rdi), %rdx
	leaq	1865(%rsp,%rdi), %r8
	leaq	2665(%rsp,%rdi), %rbp
	jmp	.LBB8_35
	.align	16, 0x90
.LBB8_34:                               #   in Loop: Header=BB8_20 Depth=3
	movq	%r15, %rax
	imulq	%r14, %rax
	leaq	2664(%rsp,%rax), %rbp
	leaq	1864(%rsp,%rax), %r8
	leaq	1064(%rsp,%rax), %rdx
	leaq	264(%rsp,%rax), %rsi
	movq	248(%rsp), %rax         # 8-byte Reload
.LBB8_35:                               # %do.end.230
                                        #   in Loop: Header=BB8_20 Depth=3
	testl	%eax, %eax
	movl	%ecx, %eax
	jne	.LBB8_36
	jmp	.LBB8_37
.LBB8_23:                               # %do.body.195.if.else.236.loopexit_crit_edge
                                        #   in Loop: Header=BB8_20 Depth=3
	leaq	264(%rsp,%rbp), %rsi
	leaq	1064(%rsp,%rbp), %rdx
	leaq	1864(%rsp,%rbp), %r8
	leaq	2664(%rsp,%rbp), %rbp
	jmp	.LBB8_36
.LBB8_45:                               #   in Loop: Header=BB8_20 Depth=3
	movq	%r8, %rbp
.LBB8_43:                               # %if.else.236.loopexitsplit
                                        #   in Loop: Header=BB8_20 Depth=3
	leaq	264(%rsp,%rbp), %rsi
	leaq	1064(%rsp,%rbp), %rdx
	leaq	1864(%rsp,%rbp), %r8
	leaq	2664(%rsp,%rbp), %rbp
	movl	%ecx, %eax
.LBB8_36:                               # %if.else.236
                                        #   in Loop: Header=BB8_20 Depth=3
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, (%rbp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, (%r8)
	movb	%ah, (%rdx)  # NOREX
	movb	%al, (%rsi)
.LBB8_37:                               # %if.end.248
                                        #   in Loop: Header=BB8_20 Depth=3
	addq	%r13, %r9
	incq	%r15
	addq	%r14, %r12
	addq	%r13, %r11
	cmpq	256(%rsp), %r15         # 8-byte Folded Reload
	jl	.LBB8_20
.LBB8_38:                               # %if.end.254
                                        #   in Loop: Header=BB8_17 Depth=2
	movq	%r14, 208(%rsp)         # 8-byte Spill
	movl	240(%rsp), %eax         # 4-byte Reload
	movl	%eax, 16(%rsp)
	movq	248(%rsp), %rax         # 8-byte Reload
	movl	%eax, 8(%rsp)
	movq	232(%rsp), %rax         # 8-byte Reload
	movl	%eax, (%rsp)
	movq	$1, 32(%rsp)
	movq	$0, 24(%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	192(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	leaq	2664(%rsp), %rsi
	movq	216(%rsp), %r12         # 8-byte Reload
	movl	%r12d, %ecx
	movq	224(%rsp), %r14         # 8-byte Reload
	movl	%r14d, %r9d
	movq	184(%rsp), %r15         # 8-byte Reload
	callq	*1216(%r15)
	movslq	836(%rbx), %rax
	shlq	$3, %rax
	addq	%rax, 2576(%rbx)
	movl	240(%rsp), %eax         # 4-byte Reload
	movl	%eax, 16(%rsp)
	movq	248(%rsp), %rbp         # 8-byte Reload
	movl	%ebp, 8(%rsp)
	movq	232(%rsp), %rax         # 8-byte Reload
	movl	%eax, (%rsp)
	movq	$1, 32(%rsp)
	movq	$0, 24(%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	leaq	1864(%rsp), %rsi
	movl	%r12d, %ecx
	movl	%r14d, %r9d
	callq	*1216(%r15)
	movslq	836(%rbx), %rax
	shlq	$3, %rax
	addq	%rax, 2576(%rbx)
	movl	240(%rsp), %eax         # 4-byte Reload
	movl	%eax, 16(%rsp)
	movl	%ebp, 8(%rsp)
	movq	232(%rsp), %r12         # 8-byte Reload
	movl	%r12d, (%rsp)
	movq	$1, 32(%rsp)
	movq	$0, 24(%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	leaq	1064(%rsp), %rsi
	movq	216(%rsp), %rbp         # 8-byte Reload
	movl	%ebp, %ecx
	movl	%r14d, %r9d
	callq	*1216(%r15)
	movslq	836(%rbx), %rax
	shlq	$3, %rax
	addq	%rax, 2576(%rbx)
	movl	240(%rsp), %eax         # 4-byte Reload
	movl	%eax, 16(%rsp)
	movq	%r12, %rax
	movq	248(%rsp), %r12         # 8-byte Reload
	movl	%r12d, 8(%rsp)
	movl	%eax, (%rsp)
	movq	$1, 32(%rsp)
	movq	$0, 24(%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	leaq	264(%rsp), %rsi
	movl	%ebp, %ecx
	movl	%r14d, %r9d
	callq	*1216(%r15)
	movslq	836(%rbx), %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$3, %rax
	subq	%rax, 2576(%rbx)
	addl	%r12d, %r14d
	movl	164(%rsp), %esi         # 4-byte Reload
	cmpl	%r14d, %esi
	movq	168(%rsp), %rbp         # 8-byte Reload
	jg	.LBB8_17
.LBB8_39:                               # %for.inc.294
                                        #   in Loop: Header=BB8_15 Depth=1
	movq	232(%rsp), %rax         # 8-byte Reload
	addl	240(%rsp), %eax         # 4-byte Folded Reload
	movl	120(%rsp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB8_15
.LBB8_40:                               # %for.end.296
	movq	192(%rsp), %rax         # 8-byte Reload
	movw	70(%rsp), %cx           # 2-byte Reload
	movw	%cx, 108(%rax)
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 1744(%rax)
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 2576(%rax)
.LBB8_41:                               # %cleanup
	xorl	%eax, %eax
	addq	$3464, %rsp             # imm = 0xD88
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	mem_planar_copy_color_4to1, .Lfunc_end8-mem_planar_copy_color_4to1
	.cfi_endproc

	.align	16, 0x90
	.type	mem_planar_dev_spec_op_cmyk4,@function
mem_planar_dev_spec_op_cmyk4:           # @mem_planar_dev_spec_op_cmyk4
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$8, %esi
	jne	.LBB9_2
# BB#1:                                 # %return
	movl	$1, %eax
	retq
.LBB9_2:                                # %if.end
	jmp	gx_default_dev_spec_op  # TAILCALL
.Lfunc_end9:
	.size	mem_planar_dev_spec_op_cmyk4, .Lfunc_end9-mem_planar_dev_spec_op_cmyk4
	.cfi_endproc

	.align	16, 0x90
	.type	mem_planar_copy_color,@function
mem_planar_copy_color:                  # @mem_planar_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp91:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp92:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp93:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp94:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp95:
	.cfi_def_cfa_offset 56
	subq	$1064, %rsp             # imm = 0x428
.Ltmp96:
	.cfi_def_cfa_offset 1120
.Ltmp97:
	.cfi_offset %rbx, -56
.Ltmp98:
	.cfi_offset %r12, -48
.Ltmp99:
	.cfi_offset %r13, -40
.Ltmp100:
	.cfi_offset %r14, -32
.Ltmp101:
	.cfi_offset %r15, -24
.Ltmp102:
	.cfi_offset %rbp, -16
	movl	%ecx, %r11d
	movq	%rdi, %r13
	movl	1136(%rsp), %eax
	movl	1128(%rsp), %ecx
	movl	1120(%rsp), %ebx
	movw	108(%r13), %r8w
	movl	%ebx, %edi
	orl	%r9d, %edi
	js	.LBB10_2
# BB#1:
	movl	%ebx, %ebp
	jmp	.LBB10_5
.LBB10_2:                               # %if.then
	movl	%r9d, %edi
	sarl	$31, %edi
	andl	%r9d, %edi
	leal	(%rcx,%rdi), %ecx
	xorl	%ebp, %ebp
	testl	%r9d, %r9d
	cmovsl	%ebp, %r9d
	subl	%edi, %edx
	testl	%ebx, %ebx
	js	.LBB10_4
# BB#3:
	movl	%ebx, %ebp
	jmp	.LBB10_5
.LBB10_4:                               # %if.then.8
	addl	%ebx, %eax
	imull	%r11d, %ebx
	movslq	%ebx, %rdi
	subq	%rdi, %rsi
.LBB10_5:                               # %if.end.11
	movl	832(%r13), %r10d
	movl	836(%r13), %r15d
	subl	%r9d, %r10d
	cmpl	%r10d, %ecx
	cmovlel	%ecx, %r10d
	subl	%ebp, %r15d
	cmpl	%r15d, %eax
	cmovlel	%eax, %r15d
	xorl	%eax, %eax
	testl	%r10d, %r10d
	jle	.LBB10_67
# BB#6:                                 # %if.end.11
	testl	%r15d, %r15d
	jle	.LBB10_67
# BB#7:                                 # %do.end.33
	movq	%rsi, 200(%rsp)         # 8-byte Spill
	movq	%rdx, 224(%rsp)         # 8-byte Spill
	movq	1744(%r13), %rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	movq	2576(%r13), %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	cmpl	$0, 100(%r13)
	jle	.LBB10_66
# BB#8:                                 # %for.body.lr.ph
	movzwl	%r8w, %eax
	movl	%eax, 212(%rsp)         # 4-byte Spill
	leal	(%r15,%rbp), %ecx
	movl	%ecx, 216(%rsp)         # 4-byte Spill
	leal	(%r10,%r9), %ecx
	movl	%ecx, 232(%rsp)         # 4-byte Spill
	movslq	%r11d, %rcx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	movl	%eax, %ecx
	shrl	$2, %ecx
	movl	%ecx, 236(%rsp)         # 4-byte Spill
	movl	$8, %ecx
	subl	%eax, %ecx
	movl	%ecx, 80(%rsp)          # 4-byte Spill
	orl	$1, %eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
	xorl	%ecx, %ecx
.LBB10_9:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_17 Depth 2
                                        #       Child Loop BB10_19 Depth 3
                                        #         Child Loop BB10_23 Depth 4
                                        #           Child Loop BB10_25 Depth 5
	movl	%r11d, 260(%rsp)        # 4-byte Spill
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movw	%r8w, 154(%rsp)         # 2-byte Spill
	movq	%r9, %rbx
	leaq	(%rcx,%rcx,2), %rax
	movl	1780(%r13,%rax,4), %r14d
	movl	1784(%r13,%rax,4), %eax
	movq	%rax, 240(%rsp)         # 8-byte Spill
	movl	$1, %eax
	movb	%r14b, %cl
	shlq	%cl, %rax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	movl	%r14d, %edi
	movq	%r13, %r12
	movq	%r10, %r13
	callq	gdev_mem_device_for_bits
	movq	%r13, %r10
	movq	%r12, %r13
	movq	%rax, 160(%rsp)         # 8-byte Spill
	movl	%r14d, %edi
	imull	%r10d, %edi
	addl	$63, %edi
	sarl	$6, %edi
	shll	$3, %edi
	movw	%r14w, 108(%r13)
	movq	2576(%r13), %rcx
	movq	(%rcx), %rax
	movq	%rax, 1744(%r13)
	movl	836(%r13), %esi
	cmpl	$2, %esi
	jl	.LBB10_11
# BB#10:                                # %cond.true
                                        #   in Loop: Header=BB10_9 Depth=1
	movq	8(%rcx), %rax
	subq	(%rcx), %rax
	jmp	.LBB10_12
	.align	16, 0x90
.LBB10_11:                              # %cond.false
                                        #   in Loop: Header=BB10_9 Depth=1
	movl	832(%r13), %eax
	imull	%r14d, %eax
	addl	$63, %eax
	sarl	$6, %eax
	shll	$3, %eax
.LBB10_12:                              # %cond.end
                                        #   in Loop: Header=BB10_9 Depth=1
	movq	%rbx, %r9
	movl	260(%rsp), %edx         # 4-byte Reload
	movl	%eax, 1736(%r13)
	cmpl	$801, %edi              # imm = 0x321
	jb	.LBB10_14
# BB#13:                                # %if.then.75
                                        #   in Loop: Header=BB10_9 Depth=1
	movl	%edx, 260(%rsp)         # 4-byte Spill
	movl	$6400, %eax             # imm = 0x1900
	xorl	%edx, %edx
	idivl	%r14d
	movl	%eax, %edx
	movl	$1, %eax
	movl	$800, %edi              # imm = 0x320
	jmp	.LBB10_15
	.align	16, 0x90
.LBB10_14:                              # %if.else
                                        #   in Loop: Header=BB10_9 Depth=1
	movl	%edx, 260(%rsp)         # 4-byte Spill
	movl	$800, %eax              # imm = 0x320
	xorl	%edx, %edx
	divl	%edi
	movl	%r10d, %edx
.LBB10_15:                              # %if.end.77
                                        #   in Loop: Header=BB10_9 Depth=1
	movl	%edx, 156(%rsp)         # 4-byte Spill
	movl	%eax, 124(%rsp)         # 4-byte Spill
	testl	%r15d, %r15d
	jle	.LBB10_65
# BB#16:                                # %for.body.82.lr.ph
                                        #   in Loop: Header=BB10_9 Depth=1
	movq	%r15, 48(%rsp)          # 8-byte Spill
	decq	248(%rsp)               # 8-byte Folded Spill
	movl	%r14d, %ecx
	sarl	$2, %ecx
	movl	%ecx, 220(%rsp)         # 4-byte Spill
	movslq	%edi, %rcx
	movq	%rcx, 112(%rsp)         # 8-byte Spill
	movl	%edi, 84(%rsp)          # 4-byte Spill
	movl	%ebp, %edi
	movl	216(%rsp), %esi         # 4-byte Reload
.LBB10_17:                              # %for.body.82
                                        #   Parent Loop BB10_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_19 Depth 3
                                        #         Child Loop BB10_23 Depth 4
                                        #           Child Loop BB10_25 Depth 5
	movl	%esi, %ebx
	subl	%edi, %ebx
	cmpl	%ebx, %eax
	cmovlel	%eax, %ebx
	testl	%r10d, %r10d
	jle	.LBB10_63
# BB#18:                                # %for.body.97.lr.ph
                                        #   in Loop: Header=BB10_17 Depth=2
	movl	%edi, %eax
	subl	%ebp, %eax
	imull	260(%rsp), %eax         # 4-byte Folded Reload
	cltq
	movq	200(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %r8
	movq	%r8, 88(%rsp)           # 8-byte Spill
	movslq	%ebx, %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movl	%r9d, %ecx
.LBB10_19:                              # %for.body.97
                                        #   Parent Loop BB10_9 Depth=1
                                        #     Parent Loop BB10_17 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_23 Depth 4
                                        #           Child Loop BB10_25 Depth 5
	movq	%rcx, 168(%rsp)         # 8-byte Spill
	movq	%r10, 176(%rsp)         # 8-byte Spill
	movq	%rbp, 184(%rsp)         # 8-byte Spill
	movq	224(%rsp), %rax         # 8-byte Reload
	leal	(%rcx,%rax), %eax
	movl	232(%rsp), %r12d        # 4-byte Reload
	subl	%ecx, %r12d
	cmpl	%r12d, %edx
	cmovlel	%edx, %r12d
	xorl	%edx, %edx
	subl	%r9d, %eax
	movq	%r8, %r11
	movl	212(%rsp), %ebp         # 4-byte Reload
	je	.LBB10_21
# BB#20:                                # %if.then.114
                                        #   in Loop: Header=BB10_19 Depth=3
	imull	%ebp, %eax
	movl	%eax, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%r8), %r11
	andl	$7, %eax
	movl	%eax, %edx
.LBB10_21:                              # %if.end.119
                                        #   in Loop: Header=BB10_19 Depth=3
	testl	%ebx, %ebx
	jle	.LBB10_59
# BB#22:                                # %cond.end.135.lr.ph
                                        #   in Loop: Header=BB10_19 Depth=3
	xorl	%eax, %eax
.LBB10_23:                              # %cond.end.135
                                        #   Parent Loop BB10_9 Depth=1
                                        #     Parent Loop BB10_17 Depth=2
                                        #       Parent Loop BB10_19 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB10_25 Depth 5
	testl	%r12d, %r12d
	jle	.LBB10_58
# BB#24:                                # %for.body.141.preheader
                                        #   in Loop: Header=BB10_23 Depth=4
	movl	%ebx, 68(%rsp)          # 4-byte Spill
	movl	%edi, 72(%rsp)          # 4-byte Spill
	movq	%rax, 56(%rsp)          # 8-byte Spill
	imulq	112(%rsp), %rax         # 8-byte Folded Reload
	leaq	264(%rsp,%rax), %r15
	movl	$0, 192(%rsp)           # 4-byte Folded Spill
	xorl	%ebx, %ebx
	movl	%edx, %r8d
	movl	%edx, 64(%rsp)          # 4-byte Spill
	movq	%r11, %rsi
	xorl	%r10d, %r10d
.LBB10_25:                              # %for.body.141
                                        #   Parent Loop BB10_9 Depth=1
                                        #     Parent Loop BB10_17 Depth=2
                                        #       Parent Loop BB10_19 Depth=3
                                        #         Parent Loop BB10_23 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	$-15, %eax
	movl	236(%rsp), %edx         # 4-byte Reload
	movl	%edx, %ecx
	cmpl	$16, %edx
	ja	.LBB10_67
# BB#26:                                # %for.body.141
                                        #   in Loop: Header=BB10_25 Depth=5
	jmpq	*.LJTI10_0(,%rcx,8)
.LBB10_27:                              # %sw.bb
                                        #   in Loop: Header=BB10_25 Depth=5
	movzbl	(%rsi), %edx
	movl	80(%rsp), %ecx          # 4-byte Reload
	subl	%r8d, %ecx
	shrl	%cl, %edx
	andl	76(%rsp), %edx          # 4-byte Folded Reload
	jmp	.LBB10_41
.LBB10_28:                              # %sw.bb.151
                                        #   in Loop: Header=BB10_25 Depth=5
	movzbl	(%rsi), %edx
	movl	$4, %ecx
	subl	%r8d, %ecx
	shrl	%cl, %edx
	andl	$15, %edx
	jmp	.LBB10_41
.LBB10_29:                              # %sw.bb.157
                                        #   in Loop: Header=BB10_25 Depth=5
	movzbl	(%rsi), %edx
	jmp	.LBB10_41
.LBB10_30:                              # %sw.bb.159
                                        #   in Loop: Header=BB10_25 Depth=5
	testl	%r8d, %r8d
	movzbl	(%rsi), %edx
	movzbl	1(%rsi), %ecx
	je	.LBB10_33
# BB#31:                                # %cond.true.161
                                        #   in Loop: Header=BB10_25 Depth=5
	andl	$15, %edx
	shll	$8, %edx
	jmp	.LBB10_32
.LBB10_34:                              # %sw.bb.178
                                        #   in Loop: Header=BB10_25 Depth=5
	movzbl	(%rsi), %ecx
	shlq	$8, %rcx
	movzbl	1(%rsi), %edx
	orq	%rcx, %rdx
	jmp	.LBB10_41
.LBB10_35:                              # %sw.bb.185
                                        #   in Loop: Header=BB10_25 Depth=5
	movzbl	(%rsi), %ecx
	shlq	$16, %rcx
	movq	%r9, %rdi
	movzbl	1(%rsi), %r9d
	shlq	$8, %r9
	orq	%rcx, %r9
	movzbl	2(%rsi), %edx
	orq	%r9, %rdx
	movq	%rdi, %r9
	jmp	.LBB10_41
.LBB10_36:                              # %sw.bb.196
                                        #   in Loop: Header=BB10_25 Depth=5
	movzbl	(%rsi), %ecx
	shll	$24, %ecx
	movzbl	1(%rsi), %edx
	shll	$16, %edx
	orl	%ecx, %edx
	movzbl	2(%rsi), %ecx
	shll	$8, %ecx
	orl	%edx, %ecx
	movzbl	3(%rsi), %edx
	orl	%ecx, %edx
	movslq	%edx, %rdx
	jmp	.LBB10_41
.LBB10_37:                              # %sw.bb.211
                                        #   in Loop: Header=BB10_25 Depth=5
	movzbl	(%rsi), %ecx
	shlq	$32, %rcx
	movzbl	1(%rsi), %edx
	shlq	$24, %rdx
	orq	%rcx, %rdx
	movzbl	2(%rsi), %ecx
	shlq	$16, %rcx
	orq	%rdx, %rcx
	movzbl	3(%rsi), %edi
	shlq	$8, %rdi
	orq	%rcx, %rdi
	movzbl	4(%rsi), %edx
	orq	%rdi, %rdx
	jmp	.LBB10_41
.LBB10_38:                              # %sw.bb.230
                                        #   in Loop: Header=BB10_25 Depth=5
	movzbl	(%rsi), %ecx
	shlq	$40, %rcx
	movzbl	1(%rsi), %edx
	shlq	$32, %rdx
	orq	%rcx, %rdx
	movzbl	2(%rsi), %ecx
	shlq	$24, %rcx
	orq	%rdx, %rcx
	movzbl	3(%rsi), %edx
	shlq	$16, %rdx
	orq	%rcx, %rdx
	movzbl	4(%rsi), %ecx
	shlq	$8, %rcx
	orq	%rdx, %rcx
	movzbl	5(%rsi), %edx
	orq	%rcx, %rdx
	jmp	.LBB10_41
.LBB10_39:                              # %sw.bb.253
                                        #   in Loop: Header=BB10_25 Depth=5
	movzbl	(%rsi), %ecx
	shlq	$48, %rcx
	movzbl	1(%rsi), %edx
	shlq	$40, %rdx
	orq	%rcx, %rdx
	movzbl	2(%rsi), %ecx
	shlq	$32, %rcx
	orq	%rdx, %rcx
	movzbl	3(%rsi), %edx
	shlq	$24, %rdx
	orq	%rcx, %rdx
	movzbl	4(%rsi), %ecx
	shlq	$16, %rcx
	orq	%rdx, %rcx
	movzbl	5(%rsi), %edi
	shlq	$8, %rdi
	orq	%rcx, %rdi
	movzbl	6(%rsi), %edx
	orq	%rdi, %rdx
	jmp	.LBB10_41
.LBB10_40:                              # %sw.bb.280
                                        #   in Loop: Header=BB10_25 Depth=5
	movzbl	(%rsi), %ecx
	shlq	$56, %rcx
	movzbl	1(%rsi), %edx
	shlq	$48, %rdx
	orq	%rcx, %rdx
	movzbl	2(%rsi), %ecx
	shlq	$40, %rcx
	orq	%rdx, %rcx
	movzbl	3(%rsi), %edx
	shlq	$32, %rdx
	orq	%rcx, %rdx
	movzbl	4(%rsi), %ecx
	shlq	$24, %rcx
	orq	%rdx, %rcx
	movzbl	5(%rsi), %edx
	shlq	$16, %rdx
	orq	%rcx, %rdx
	movzbl	6(%rsi), %ecx
	shlq	$8, %rcx
	orq	%rdx, %rcx
	movzbl	7(%rsi), %edx
	orq	%rcx, %rdx
	jmp	.LBB10_41
.LBB10_33:                              # %cond.false.168
                                        #   in Loop: Header=BB10_25 Depth=5
	shll	$4, %edx
	shrl	$4, %ecx
.LBB10_32:                              # %do.body.313
                                        #   in Loop: Header=BB10_25 Depth=5
	orl	%edx, %ecx
	movslq	%ecx, %rdx
	.align	16, 0x90
.LBB10_41:                              # %do.body.313
                                        #   in Loop: Header=BB10_25 Depth=5
	movq	240(%rsp), %rcx         # 8-byte Reload
	shrq	%cl, %rdx
	movl	220(%rsp), %edi         # 4-byte Reload
	movl	%edi, %ecx
	cmpl	$4, %edi
	ja	.LBB10_67
# BB#42:                                # %do.body.313
                                        #   in Loop: Header=BB10_25 Depth=5
	addl	%ebp, %r8d
	movl	%r8d, %eax
	sarl	$3, %eax
	cltq
	andq	248(%rsp), %rdx         # 8-byte Folded Reload
	jmpq	*.LJTI10_1(,%rcx,8)
.LBB10_43:                              # %sw.bb.326
                                        #   in Loop: Header=BB10_25 Depth=5
	addl	%r14d, %ebx
	cmpl	$8, %ebx
	jne	.LBB10_45
# BB#44:                                # %if.then.330
                                        #   in Loop: Header=BB10_25 Depth=5
	movl	192(%rsp), %ecx         # 4-byte Reload
	orb	%cl, %dl
	movb	%dl, (%r15)
	incq	%r15
	xorl	%ebx, %ebx
	movl	$0, 192(%rsp)           # 4-byte Folded Spill
	jmp	.LBB10_55
.LBB10_46:                              # %sw.bb.346
                                        #   in Loop: Header=BB10_25 Depth=5
	movl	%ebx, %ecx
	xorl	$4, %ecx
	cmpl	$4, %ebx
	jne	.LBB10_47
# BB#49:                                # %if.else.351
                                        #   in Loop: Header=BB10_25 Depth=5
	movl	192(%rsp), %edi         # 4-byte Reload
	orb	%dil, %dl
	movb	%dl, (%r15)
	incq	%r15
	movl	%ecx, %ebx
	jmp	.LBB10_55
.LBB10_50:                              # %sw.bb.359
                                        #   in Loop: Header=BB10_25 Depth=5
	movl	%ebx, %ecx
	xorl	$4, %ecx
	movq	%rdx, %rdi
	cmpl	$4, %ebx
	jne	.LBB10_51
# BB#52:                                # %if.else.368
                                        #   in Loop: Header=BB10_25 Depth=5
	shrq	$8, %rdi
	movl	192(%rsp), %ebx         # 4-byte Reload
	orb	%bl, %dil
	movb	%dil, (%r15)
	movb	%dl, 1(%r15)
	addq	$2, %r15
	movl	%ecx, %ebx
	jmp	.LBB10_55
.LBB10_53:                              # %sw.bb.379
                                        #   in Loop: Header=BB10_25 Depth=5
	movq	%r15, %rcx
	movb	%dh, (%rcx)  # NOREX
	incq	%rcx
	movq	%rcx, %r15
.LBB10_54:                              # %sw.bb.383
                                        #   in Loop: Header=BB10_25 Depth=5
	movb	%dl, (%r15)
	incq	%r15
	jmp	.LBB10_55
.LBB10_45:                              # %if.else.336
                                        #   in Loop: Header=BB10_25 Depth=5
	movl	$8, %ecx
	subl	%ebx, %ecx
	shlq	%cl, %rdx
	movl	192(%rsp), %ecx         # 4-byte Reload
	orb	%cl, %dl
	jmp	.LBB10_48
.LBB10_51:                              # %if.then.362
                                        #   in Loop: Header=BB10_25 Depth=5
	shrq	$4, %rdi
	movb	%dil, (%r15)
	incq	%r15
.LBB10_47:                              # %if.then.348
                                        #   in Loop: Header=BB10_25 Depth=5
	shlq	$4, %rdx
	movl	%ecx, %ebx
.LBB10_48:                              # %for.inc
                                        #   in Loop: Header=BB10_25 Depth=5
	movb	%dl, %cl
	movl	%ecx, 192(%rsp)         # 4-byte Spill
.LBB10_55:                              # %for.inc
                                        #   in Loop: Header=BB10_25 Depth=5
	addq	%rax, %rsi
	andl	$7, %r8d
	incl	%r10d
	cmpl	%r12d, %r10d
	jl	.LBB10_25
# BB#56:                                # %for.end
                                        #   in Loop: Header=BB10_23 Depth=4
	testl	%ebx, %ebx
	movl	72(%rsp), %edi          # 4-byte Reload
	movl	%ebx, %r10d
	movl	68(%rsp), %ebx          # 4-byte Reload
	movl	64(%rsp), %edx          # 4-byte Reload
	movq	56(%rsp), %rax          # 8-byte Reload
	je	.LBB10_58
# BB#57:                                # %if.then.392
                                        #   in Loop: Header=BB10_23 Depth=4
	movl	192(%rsp), %ecx         # 4-byte Reload
	movzbl	%cl, %edi
	movq	%rax, %r8
	movzbl	(%r15), %eax
	movl	$255, %esi
	movb	%r10b, %cl
	shrl	%cl, %esi
	andl	%eax, %esi
	movq	%r8, %rax
	orl	%edi, %esi
	movb	%sil, (%r15)
	movl	72(%rsp), %edi          # 4-byte Reload
	.align	16, 0x90
.LBB10_58:                              # %for.inc.409
                                        #   in Loop: Header=BB10_23 Depth=4
	addq	104(%rsp), %r11         # 8-byte Folded Reload
	incq	%rax
	cmpq	96(%rsp), %rax          # 8-byte Folded Reload
	jl	.LBB10_23
.LBB10_59:                              # %for.end.411
                                        #   in Loop: Header=BB10_19 Depth=3
	movq	%r9, 192(%rsp)          # 8-byte Spill
	cmpl	$1, %r14d
	jne	.LBB10_61
# BB#60:                                # %if.then.414
                                        #   in Loop: Header=BB10_19 Depth=3
	movl	%ebx, 16(%rsp)
	movl	%ebx, %r15d
	movl	%r12d, 8(%rsp)
	movl	%edi, (%rsp)
	movl	%edi, %ebx
	movq	$1, 32(%rsp)
	movq	$0, 24(%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	%r13, %rdi
	leaq	264(%rsp), %rsi
	movl	84(%rsp), %ecx          # 4-byte Reload
	movq	168(%rsp), %rbp         # 8-byte Reload
	movl	%ebp, %r9d
	movq	160(%rsp), %rax         # 8-byte Reload
	callq	*1216(%rax)
	jmp	.LBB10_62
.LBB10_61:                              # %if.else.418
                                        #   in Loop: Header=BB10_19 Depth=3
	movl	%ebx, 16(%rsp)
	movl	%ebx, %r15d
	movl	%r12d, 8(%rsp)
	movl	%edi, (%rsp)
	movl	%edi, %ebx
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	%r13, %rdi
	leaq	264(%rsp), %rsi
	movl	84(%rsp), %ecx          # 4-byte Reload
	movq	168(%rsp), %rbp         # 8-byte Reload
	movl	%ebp, %r9d
	movq	160(%rsp), %rax         # 8-byte Reload
	callq	*1224(%rax)
.LBB10_62:                              # %for.inc.429
                                        #   in Loop: Header=BB10_19 Depth=3
	movq	%rbp, %rax
	movq	192(%rsp), %r9          # 8-byte Reload
	movq	184(%rsp), %rbp         # 8-byte Reload
	movl	216(%rsp), %esi         # 4-byte Reload
	movq	176(%rsp), %r10         # 8-byte Reload
	movl	156(%rsp), %edx         # 4-byte Reload
	addl	%eax, %r12d
	cmpl	%r12d, 232(%rsp)        # 4-byte Folded Reload
	movl	%r12d, %ecx
	movl	%ebx, %edi
	movl	%r15d, %ebx
	movq	88(%rsp), %r8           # 8-byte Reload
	jg	.LBB10_19
.LBB10_63:                              # %for.inc.432
                                        #   in Loop: Header=BB10_17 Depth=2
	addl	%ebx, %edi
	cmpl	%edi, %esi
	movl	124(%rsp), %eax         # 4-byte Reload
	jg	.LBB10_17
# BB#64:                                # %for.cond.78.for.inc.455_crit_edge
                                        #   in Loop: Header=BB10_9 Depth=1
	movl	%esi, 216(%rsp)         # 4-byte Spill
	movl	836(%r13), %esi
	movq	2576(%r13), %rcx
	movq	48(%rsp), %r15          # 8-byte Reload
.LBB10_65:                              # %for.inc.455
                                        #   in Loop: Header=BB10_9 Depth=1
	movslq	%esi, %rax
	leaq	(%rcx,%rax,8), %rax
	movq	%rax, 2576(%r13)
	movq	128(%rsp), %rcx         # 8-byte Reload
	incq	%rcx
	movslq	100(%r13), %rax
	cmpq	%rax, %rcx
	movl	260(%rsp), %r11d        # 4-byte Reload
	movw	154(%rsp), %r8w         # 2-byte Reload
	jl	.LBB10_9
.LBB10_66:                              # %for.end.457
	movw	%r8w, 108(%r13)
	movq	144(%rsp), %rax         # 8-byte Reload
	movq	%rax, 1744(%r13)
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	%rax, 2576(%r13)
	xorl	%eax, %eax
.LBB10_67:                              # %cleanup.466
	addq	$1064, %rsp             # imm = 0x428
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	mem_planar_copy_color, .Lfunc_end10-mem_planar_copy_color
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI10_0:
	.quad	.LBB10_27
	.quad	.LBB10_28
	.quad	.LBB10_29
	.quad	.LBB10_30
	.quad	.LBB10_34
	.quad	.LBB10_67
	.quad	.LBB10_35
	.quad	.LBB10_67
	.quad	.LBB10_36
	.quad	.LBB10_67
	.quad	.LBB10_37
	.quad	.LBB10_67
	.quad	.LBB10_38
	.quad	.LBB10_67
	.quad	.LBB10_39
	.quad	.LBB10_67
	.quad	.LBB10_40
.LJTI10_1:
	.quad	.LBB10_43
	.quad	.LBB10_46
	.quad	.LBB10_54
	.quad	.LBB10_50
	.quad	.LBB10_53

	.text
	.align	16, 0x90
	.type	mem_planar_copy_planes,@function
mem_planar_copy_planes:                 # @mem_planar_copy_planes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp104:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp105:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp106:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp107:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp108:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp109:
	.cfi_def_cfa_offset 144
.Ltmp110:
	.cfi_offset %rbx, -56
.Ltmp111:
	.cfi_offset %r12, -48
.Ltmp112:
	.cfi_offset %r13, -40
.Ltmp113:
	.cfi_offset %r14, -32
.Ltmp114:
	.cfi_offset %r15, -24
.Ltmp115:
	.cfi_offset %rbp, -16
	movl	%r9d, 80(%rsp)          # 4-byte Spill
	movq	%r8, 72(%rsp)           # 8-byte Spill
	movl	%ecx, 84(%rsp)          # 4-byte Spill
	movl	%edx, 68(%rsp)          # 4-byte Spill
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	movzwl	108(%rbx), %eax
	movl	%eax, 64(%rsp)          # 4-byte Spill
	movq	1744(%rbx), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	2576(%rbx), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	cmpl	$0, 100(%rbx)
	jle	.LBB11_6
# BB#1:                                 # %for.body.lr.ph
	movl	168(%rsp), %eax
	imull	84(%rsp), %eax          # 4-byte Folded Reload
	movslq	%eax, %r15
	leaq	1780(%rbx), %r12
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB11_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%r12), %r14d
	movl	%r14d, %edi
	callq	gdev_mem_device_for_bits
	movl	160(%rsp), %ecx
	cmpl	$1, %r14d
	jne	.LBB11_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB11_2 Depth=1
	movl	%ecx, 16(%rsp)
	movl	152(%rsp), %ecx
	movl	%ecx, 8(%rsp)
	movl	144(%rsp), %ecx
	movl	%ecx, (%rsp)
	movq	$1, 32(%rsp)
	movq	$0, 24(%rsp)
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	68(%rsp), %edx          # 4-byte Reload
	movl	84(%rsp), %ecx          # 4-byte Reload
	movq	72(%rsp), %r8           # 8-byte Reload
	movl	80(%rsp), %r9d          # 4-byte Reload
	callq	*1216(%rax)
	jmp	.LBB11_5
	.align	16, 0x90
.LBB11_4:                               # %if.else
                                        #   in Loop: Header=BB11_2 Depth=1
	movl	%ecx, 16(%rsp)
	movl	152(%rsp), %ecx
	movl	%ecx, 8(%rsp)
	movl	144(%rsp), %ecx
	movl	%ecx, (%rsp)
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	68(%rsp), %edx          # 4-byte Reload
	movl	84(%rsp), %ecx          # 4-byte Reload
	movq	72(%rsp), %r8           # 8-byte Reload
	movl	80(%rsp), %r9d          # 4-byte Reload
	callq	*1224(%rax)
.LBB11_5:                               # %if.end
                                        #   in Loop: Header=BB11_2 Depth=1
	addq	%r15, %rbp
	movslq	836(%rbx), %rcx
	shlq	$3, %rcx
	addq	%rcx, 2576(%rbx)
	incq	%r13
	movslq	100(%rbx), %rcx
	addq	$12, %r12
	cmpq	%rcx, %r13
	jl	.LBB11_2
.LBB11_6:                               # %for.end
	movl	64(%rsp), %ecx          # 4-byte Reload
	movw	%cx, 108(%rbx)
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 1744(%rbx)
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 2576(%rbx)
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	mem_planar_copy_planes, .Lfunc_end11-mem_planar_copy_planes
	.cfi_endproc

	.align	16, 0x90
	.type	mem_planar_strip_tile_rectangle,@function
mem_planar_strip_tile_rectangle:        # @mem_planar_strip_tile_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp116:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp117:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp118:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp119:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp120:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp121:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp122:
	.cfi_def_cfa_offset 160
.Ltmp123:
	.cfi_offset %rbx, -56
.Ltmp124:
	.cfi_offset %r12, -48
.Ltmp125:
	.cfi_offset %r13, -40
.Ltmp126:
	.cfi_offset %r14, -32
.Ltmp127:
	.cfi_offset %r15, -24
.Ltmp128:
	.cfi_offset %rbp, -16
	movl	%r9d, 100(%rsp)         # 4-byte Spill
	movl	%r8d, 96(%rsp)          # 4-byte Spill
	movl	%ecx, 92(%rsp)          # 4-byte Spill
	movl	%edx, 88(%rsp)          # 4-byte Spill
	movq	%rdi, %rbp
	movq	168(%rsp), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	160(%rsp), %rdi
	movq	%rdi, 72(%rsp)          # 8-byte Spill
	andq	%rdi, %rax
	cmpq	$-1, %rax
	je	.LBB12_11
# BB#1:                                 # %if.end
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	movzwl	108(%rbp), %eax
	movl	%eax, 52(%rsp)          # 4-byte Spill
	movq	1744(%rbp), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	2576(%rbp), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	cmpl	$0, 100(%rbp)
	jle	.LBB12_10
# BB#2:                                 # %for.body.lr.ph
	movl	184(%rsp), %eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	movl	176(%rsp), %eax
	movl	%eax, 56(%rsp)          # 4-byte Spill
	leaq	1784(%rbp), %rbx
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB12_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbx), %r13d
	movb	(%rbx), %r14b
	movl	$1, %r12d
	movb	%r13b, %cl
	shlq	%cl, %r12
	decq	%r12
	movl	%r13d, %edi
	callq	gdev_mem_device_for_bits
	movq	72(%rsp), %rdx          # 8-byte Reload
	movq	%rdx, %r9
	movb	%r14b, %cl
	shrq	%cl, %r9
	andq	%r12, %r9
	cmpq	$-1, %rdx
	cmoveq	%rdx, %r9
	movq	80(%rsp), %rdx          # 8-byte Reload
	movq	%rdx, %rdi
	movb	%r14b, %cl
	shrq	%cl, %rdi
	andq	%r12, %rdi
	cmpq	$-1, %rdx
	cmoveq	%rdx, %rdi
	movw	%r13w, 108(%rbp)
	movq	2576(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	%rsi, 1744(%rbp)
	cmpl	$2, 836(%rbp)
	jl	.LBB12_5
# BB#4:                                 # %cond.true.34
                                        #   in Loop: Header=BB12_3 Depth=1
	movq	8(%rcx), %r13
	subq	(%rcx), %r13
	jmp	.LBB12_6
	.align	16, 0x90
.LBB12_5:                               # %cond.false.39
                                        #   in Loop: Header=BB12_3 Depth=1
	imull	832(%rbp), %r13d
	addl	$63, %r13d
	sarl	$6, %r13d
	shll	$3, %r13d
.LBB12_6:                               # %cond.end.43
                                        #   in Loop: Header=BB12_3 Depth=1
	movl	100(%rsp), %r10d        # 4-byte Reload
	movl	96(%rsp), %r8d          # 4-byte Reload
	movl	92(%rsp), %ecx          # 4-byte Reload
	movl	88(%rsp), %edx          # 4-byte Reload
	movl	%r13d, 1736(%rbp)
	cmpq	%rdi, %r9
	jne	.LBB12_8
# BB#7:                                 # %if.then.48
                                        #   in Loop: Header=BB12_3 Depth=1
	movq	%rbp, %rdi
	movl	%edx, %esi
	movl	%ecx, %edx
	movl	%r8d, %ecx
	movl	%r10d, %r8d
	callq	*1200(%rax)
	jmp	.LBB12_9
	.align	16, 0x90
.LBB12_8:                               # %if.else
                                        #   in Loop: Header=BB12_3 Depth=1
	movq	1216(%rax), %rsi
	movq	%rsi, 1216(%rbp)
	movl	60(%rsp), %esi          # 4-byte Reload
	movl	%esi, 24(%rsp)
	movl	56(%rsp), %esi          # 4-byte Reload
	movl	%esi, 16(%rsp)
	movq	%rdi, 8(%rsp)
	movq	%r9, (%rsp)
	movq	%rbp, %rdi
	movq	64(%rsp), %rsi          # 8-byte Reload
	movl	%r10d, %r9d
	callq	*1416(%rax)
.LBB12_9:                               # %if.end.55
                                        #   in Loop: Header=BB12_3 Depth=1
	movslq	836(%rbp), %rax
	shlq	$3, %rax
	addq	%rax, 2576(%rbp)
	incq	%r15
	movslq	100(%rbp), %rax
	addq	$12, %rbx
	cmpq	%rax, %r15
	jl	.LBB12_3
.LBB12_10:                              # %cleanup
	movl	52(%rsp), %eax          # 4-byte Reload
	movw	%ax, 108(%rbp)
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%rax, 1744(%rbp)
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	%rax, 2576(%rbp)
	movq	$mem_planar_copy_mono, 1216(%rbp)
	xorl	%eax, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_11:                              # %if.then
	movq	%rbp, %rdi
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_default_strip_tile_rectangle # TAILCALL
.Lfunc_end12:
	.size	mem_planar_strip_tile_rectangle, .Lfunc_end12-mem_planar_strip_tile_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	mem_planar_strip_tile_rect_devn,@function
mem_planar_strip_tile_rect_devn:        # @mem_planar_strip_tile_rect_devn
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp130:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp131:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp132:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp133:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp134:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp135:
	.cfi_def_cfa_offset 144
.Ltmp136:
	.cfi_offset %rbx, -56
.Ltmp137:
	.cfi_offset %r12, -48
.Ltmp138:
	.cfi_offset %r13, -40
.Ltmp139:
	.cfi_offset %r14, -32
.Ltmp140:
	.cfi_offset %r15, -24
.Ltmp141:
	.cfi_offset %rbp, -16
	movl	%r9d, 84(%rsp)          # 4-byte Spill
	movl	%r8d, 80(%rsp)          # 4-byte Spill
	movl	%ecx, 76(%rsp)          # 4-byte Spill
	movl	%edx, 72(%rsp)          # 4-byte Spill
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movzwl	108(%rbx), %eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	movq	1744(%rbx), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	2576(%rbx), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	cmpl	$0, 100(%rbx)
	jle	.LBB13_13
# BB#1:                                 # %for.body.lr.ph
	leaq	1780(%rbx), %r15
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB13_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%r15), %r13d
	movl	$1, %ebp
	movb	%r13b, %cl
	shlq	%cl, %rbp
	decq	%rbp
	movl	$16, %r14d
	subl	%r13d, %r14d
	movl	%r13d, %edi
	callq	gdev_mem_device_for_bits
	movq	$-1, %rdx
	movq	144(%rsp), %rcx
	movl	$gx_dc_type_data_devn, %edi
	cmpq	%rdi, (%rcx)
	movq	$-1, %r9
	jne	.LBB13_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB13_2 Depth=1
	movq	144(%rsp), %rcx
	movzwl	8(%rcx,%r12,2), %esi
	movb	%r14b, %cl
	shrl	%cl, %esi
	movslq	%esi, %r9
	andq	%rbp, %r9
.LBB13_4:                               # %if.end
                                        #   in Loop: Header=BB13_2 Depth=1
	movq	152(%rsp), %rcx
	cmpq	%rdi, (%rcx)
	jne	.LBB13_6
# BB#5:                                 # %if.then.17
                                        #   in Loop: Header=BB13_2 Depth=1
	movq	152(%rsp), %rcx
	movzwl	8(%rcx,%r12,2), %edx
	movb	%r14b, %cl
	shrl	%cl, %edx
	movslq	%edx, %rdx
	andq	%rbp, %rdx
.LBB13_6:                               # %if.end.28
                                        #   in Loop: Header=BB13_2 Depth=1
	movw	%r13w, 108(%rbx)
	movq	2576(%rbx), %rcx
	movq	(%rcx), %rsi
	movq	%rsi, 1744(%rbx)
	cmpl	$2, 836(%rbx)
	jl	.LBB13_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB13_2 Depth=1
	movq	8(%rcx), %r13
	subq	(%rcx), %r13
	jmp	.LBB13_9
	.align	16, 0x90
.LBB13_8:                               # %cond.false
                                        #   in Loop: Header=BB13_2 Depth=1
	imull	832(%rbx), %r13d
	addl	$63, %r13d
	sarl	$6, %r13d
	shll	$3, %r13d
.LBB13_9:                               # %cond.end
                                        #   in Loop: Header=BB13_2 Depth=1
	movl	%r13d, 1736(%rbx)
	cmpq	%rdx, %r9
	jne	.LBB13_11
# BB#10:                                # %if.then.47
                                        #   in Loop: Header=BB13_2 Depth=1
	movq	%rbx, %rdi
	movl	72(%rsp), %esi          # 4-byte Reload
	movl	76(%rsp), %edx          # 4-byte Reload
	movl	80(%rsp), %ecx          # 4-byte Reload
	movl	84(%rsp), %r8d          # 4-byte Reload
	callq	*1200(%rax)
	jmp	.LBB13_12
	.align	16, 0x90
.LBB13_11:                              # %if.else.49
                                        #   in Loop: Header=BB13_2 Depth=1
	movq	1216(%rax), %rcx
	movq	%rcx, 1216(%rbx)
	movl	168(%rsp), %ecx
	movl	%ecx, 24(%rsp)
	movl	160(%rsp), %ecx
	movl	%ecx, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%r9, (%rsp)
	movq	%rbx, %rdi
	movq	64(%rsp), %rsi          # 8-byte Reload
	movl	72(%rsp), %edx          # 4-byte Reload
	movl	76(%rsp), %ecx          # 4-byte Reload
	movl	80(%rsp), %r8d          # 4-byte Reload
	movl	84(%rsp), %r9d          # 4-byte Reload
	callq	*1416(%rax)
.LBB13_12:                              # %if.end.55
                                        #   in Loop: Header=BB13_2 Depth=1
	movslq	836(%rbx), %rax
	shlq	$3, %rax
	addq	%rax, 2576(%rbx)
	incq	%r12
	movslq	100(%rbx), %rax
	addq	$12, %r15
	cmpq	%rax, %r12
	jl	.LBB13_2
.LBB13_13:                              # %for.end
	movl	60(%rsp), %eax          # 4-byte Reload
	movw	%ax, 108(%rbx)
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	%rax, 1744(%rbx)
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%rax, 2576(%rbx)
	movq	$mem_planar_copy_mono, 1216(%rbx)
	xorl	%eax, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	mem_planar_strip_tile_rect_devn, .Lfunc_end13-mem_planar_strip_tile_rect_devn
	.cfi_endproc

	.align	16, 0x90
	.type	mem_planar_strip_copy_rop,@function
mem_planar_strip_copy_rop:              # @mem_planar_strip_copy_rop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp142:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp143:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp144:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp145:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp146:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp147:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp148:
	.cfi_def_cfa_offset 144
.Ltmp149:
	.cfi_offset %rbx, -56
.Ltmp150:
	.cfi_offset %r12, -48
.Ltmp151:
	.cfi_offset %r13, -40
.Ltmp152:
	.cfi_offset %r14, -32
.Ltmp153:
	.cfi_offset %r15, -24
.Ltmp154:
	.cfi_offset %rbp, -16
	movq	144(%rsp), %r10
	movq	152(%rsp), %r11
	movl	160(%rsp), %r14d
	movl	168(%rsp), %r15d
	movl	176(%rsp), %r12d
	movl	184(%rsp), %r13d
	movl	192(%rsp), %ebx
	movl	200(%rsp), %ebp
	movl	208(%rsp), %eax
	movl	%eax, 64(%rsp)
	movl	%ebp, 56(%rsp)
	movl	%ebx, 48(%rsp)
	movl	%r13d, 40(%rsp)
	movl	%r12d, 32(%rsp)
	movl	%r15d, 24(%rsp)
	movl	%r14d, 16(%rsp)
	movq	%r11, 8(%rsp)
	movq	%r10, (%rsp)
	movl	$0, 72(%rsp)
	callq	mem_planar_strip_copy_rop2
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	mem_planar_strip_copy_rop, .Lfunc_end14-mem_planar_strip_copy_rop
	.cfi_endproc

	.align	16, 0x90
	.type	mem_planar_strip_copy_rop2,@function
mem_planar_strip_copy_rop2:             # @mem_planar_strip_copy_rop2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp155:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp156:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp157:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp158:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp159:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp160:
	.cfi_def_cfa_offset 56
	subq	$280, %rsp              # imm = 0x118
.Ltmp161:
	.cfi_def_cfa_offset 336
.Ltmp162:
	.cfi_offset %rbx, -56
.Ltmp163:
	.cfi_offset %r12, -48
.Ltmp164:
	.cfi_offset %r13, -40
.Ltmp165:
	.cfi_offset %r14, -32
.Ltmp166:
	.cfi_offset %r15, -24
.Ltmp167:
	.cfi_offset %rbp, -16
	movq	%r9, %r15
	movq	%r15, 192(%rsp)         # 8-byte Spill
	movq	%r8, 176(%rsp)          # 8-byte Spill
	movl	%edx, 188(%rsp)         # 4-byte Spill
	movq	%rdi, %r12
	movl	408(%rsp), %edx
	movl	400(%rsp), %eax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	movl	392(%rsp), %eax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movl	384(%rsp), %eax
	movl	%eax, 140(%rsp)         # 4-byte Spill
	movl	376(%rsp), %ebp
	movl	368(%rsp), %eax
	movl	%eax, 144(%rsp)         # 4-byte Spill
	movl	360(%rsp), %eax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movl	352(%rsp), %eax
	movl	%eax, 148(%rsp)         # 4-byte Spill
	movq	344(%rsp), %rbx
	movq	%rbx, 160(%rsp)         # 8-byte Spill
	testl	%edx, %edx
	movq	336(%rsp), %r14
	je	.LBB15_19
# BB#1:                                 # %if.then
	movl	%edx, 112(%rsp)         # 4-byte Spill
	movq	%rsi, 128(%rsp)         # 8-byte Spill
	movq	%r14, 120(%rsp)         # 8-byte Spill
	movl	100(%r12), %esi
	imull	%ecx, %esi
	movl	%esi, 116(%rsp)         # 4-byte Spill
	movl	%ecx, %r14d
	imull	%ebp, %esi
	movq	24(%r12), %rdi
	movl	$.L.str, %edx
	callq	*64(%rdi)
	movl	$-25, %r13d
	testq	%rax, %rax
	je	.LBB15_51
# BB#2:                                 # %if.end
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	%r15, %rbx
	movl	100(%r12), %esi
	imull	%ebp, %esi
	shll	$3, %esi
	movq	24(%r12), %rdi
	movl	$.L.str.1, %edx
	callq	*64(%rdi)
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB15_3
# BB#4:                                 # %if.end.22
	movq	%rbx, 192(%rsp)         # 8-byte Spill
	movl	100(%r12), %eax
	testl	%eax, %eax
	movq	128(%rsp), %r9          # 8-byte Reload
	jle	.LBB15_18
# BB#5:                                 # %for.body.lr.ph
	movl	%r14d, %ecx
	xorl	%edx, %edx
	testb	$1, %al
	je	.LBB15_9
# BB#6:                                 # %for.body.prol
	movl	$1, %edx
	testl	%ebp, %ebp
	jle	.LBB15_9
# BB#7:                                 # %for.body.31.lr.ph.prol
	leal	1(%rbp), %esi
	movl	$1, %edx
	movq	%r9, %rdi
	.align	16, 0x90
.LBB15_8:                               # %for.body.31.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, (%r15)
	addq	$8, %r15
	addq	%rcx, %rdi
	decl	%esi
	cmpl	$1, %esi
	jg	.LBB15_8
.LBB15_9:                               # %for.body.lr.ph.split
	cmpl	$1, %eax
	je	.LBB15_18
# BB#10:                                # %for.body.lr.ph.split.split
	leal	1(%rbp), %ebx
	.align	16, 0x90
.LBB15_11:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_13 Depth 2
                                        #     Child Loop BB15_16 Depth 2
	testl	%ebp, %ebp
	jle	.LBB15_14
# BB#12:                                # %for.body.31.lr.ph
                                        #   in Loop: Header=BB15_11 Depth=1
	movl	%edx, %esi
	imull	%r14d, %esi
	leaq	(%rsi,%r9), %rdi
	movl	%ebx, %esi
	.align	16, 0x90
.LBB15_13:                              # %for.body.31
                                        #   Parent Loop BB15_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdi, (%r15)
	addq	$8, %r15
	addq	%rcx, %rdi
	decl	%esi
	cmpl	$1, %esi
	jg	.LBB15_13
.LBB15_14:                              # %for.inc.34
                                        #   in Loop: Header=BB15_11 Depth=1
	testl	%ebp, %ebp
	jle	.LBB15_17
# BB#15:                                # %for.body.31.lr.ph.1
                                        #   in Loop: Header=BB15_11 Depth=1
	leal	1(%rdx), %esi
	imull	%r14d, %esi
	leaq	(%rsi,%r9), %rdi
	movl	%ebx, %esi
	.align	16, 0x90
.LBB15_16:                              # %for.body.31.1
                                        #   Parent Loop BB15_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdi, (%r15)
	addq	$8, %r15
	addq	%rcx, %rdi
	decl	%esi
	cmpl	$1, %esi
	jg	.LBB15_16
.LBB15_17:                              # %for.inc.34.1
                                        #   in Loop: Header=BB15_11 Depth=1
	addq	$2, %rdx
	cmpl	%eax, %edx
	jl	.LBB15_11
.LBB15_18:                              # %for.end.35
	imull	%ebp, %eax
	cltq
	shlq	$3, %rax
	subq	%rax, %r15
	movl	112(%rsp), %eax         # 4-byte Reload
	movl	%eax, 24(%rsp)
	movq	104(%rsp), %r14         # 8-byte Reload
	movq	%r14, 8(%rsp)
	movl	116(%rsp), %r13d        # 4-byte Reload
	movl	%r13d, (%rsp)
	movq	%r15, 16(%rsp)
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	movq	%r12, %rdi
	movl	188(%rsp), %esi         # 4-byte Reload
	movl	144(%rsp), %ebx         # 4-byte Reload
	movl	%ebx, %ecx
	movl	%ebp, %r8d
	callq	planar_to_chunky
	movq	24(%r12), %rdi
	movl	$.L.str.1, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	movq	200(%rsp), %rax         # 8-byte Reload
	movl	%eax, 64(%rsp)
	movq	152(%rsp), %rax         # 8-byte Reload
	movl	%eax, 56(%rsp)
	movl	140(%rsp), %eax         # 4-byte Reload
	movl	%eax, 48(%rsp)
	movl	%ebp, 40(%rsp)
	movl	%ebx, 32(%rsp)
	movq	168(%rsp), %rax         # 8-byte Reload
	movl	%eax, 24(%rsp)
	movl	148(%rsp), %eax         # 4-byte Reload
	movl	%eax, 16(%rsp)
	movq	160(%rsp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	120(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$0, 72(%rsp)
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	%r14, %rsi
	movl	%r13d, %ecx
	movq	176(%rsp), %r8          # 8-byte Reload
	movq	192(%rsp), %r9          # 8-byte Reload
	callq	mem_planar_strip_copy_rop2
	movl	%eax, %ebp
	movq	24(%r12), %rdi
	movl	$.L.str, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
	movl	%ebp, %eax
	jmp	.LBB15_52
.LBB15_19:                              # %if.end.57
	testq	%r14, %r14
	je	.LBB15_28
# BB#20:                                # %land.lhs.true
	cmpl	$2, 40(%r14)
	jl	.LBB15_28
# BB#21:                                # %if.then.60
	movq	%r15, 192(%rsp)         # 8-byte Spill
	movq	%rbx, 160(%rsp)         # 8-byte Spill
	movq	%rsi, 128(%rsp)         # 8-byte Spill
	movl	%ecx, 112(%rsp)         # 4-byte Spill
	movq	168(%rsp), %rsi         # 8-byte Reload
	movq	152(%rsp), %r8          # 8-byte Reload
	leal	(%r8,%rsi), %eax
	movzwl	34(%r14), %edi
	cltd
	idivl	%edi
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%edi, %eax
	addl	%edx, %eax
	movzwl	32(%r14), %ecx
	movzwl	108(%r12), %r15d
	imull	%ecx, %r15d
	addl	$63, %r15d
	shrl	$3, %r15d
	andl	$536870904, %r15d       # imm = 0x1FFFFFF8
	leal	(%rax,%rbp), %ecx
	movl	%esi, %ebx
	negl	%ebx
	xorl	%edx, %edx
	cmpl	%edi, %ecx
	cmovlel	%eax, %edx
	movl	%edx, 116(%rsp)         # 4-byte Spill
	cmovlel	%ebp, %edi
	movl	%edi, 120(%rsp)         # 4-byte Spill
	movq	%rbp, 104(%rsp)         # 8-byte Spill
	cmovgl	%r8d, %ebx
	movl	%r15d, %esi
	imull	%edi, %esi
	movq	24(%r12), %rdi
	movl	$.L.str, %edx
	callq	*64(%rdi)
	movl	$-25, %r13d
	testq	%rax, %rax
	je	.LBB15_51
# BB#22:                                # %if.end.96
	movl	%ebx, 152(%rsp)         # 4-byte Spill
	movq	%rax, %rbx
	movzwl	34(%r14), %esi
	imull	100(%r12), %esi
	shll	$3, %esi
	movq	24(%r12), %rdi
	movl	$.L.str.1, %edx
	callq	*64(%rdi)
	movq	%r14, %rbp
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB15_27
# BB#23:                                # %if.end.117
	movzwl	34(%rbp), %eax
	movslq	100(%r12), %rdx
	movq	%rax, %rcx
	imulq	%rdx, %rcx
	testl	%ecx, %ecx
	jle	.LBB15_26
# BB#24:                                # %for.body.126.lr.ph
	movq	(%rbp), %rsi
	movslq	8(%rbp), %rdi
	imull	%eax, %edx
	incl	%edx
	.align	16, 0x90
.LBB15_25:                              # %for.body.126
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, (%r14)
	addq	$8, %r14
	addq	%rdi, %rsi
	decl	%edx
	cmpl	$1, %edx
	jg	.LBB15_25
.LBB15_26:                              # %for.end.132
	shlq	$3, %rcx
	subq	%rcx, %r14
	movzwl	32(%rbp), %ecx
	movl	%eax, 24(%rsp)
	movq	%r14, 16(%rsp)
	movq	%rbx, 8(%rsp)
	movl	%r15d, (%rsp)
	xorl	%esi, %esi
	xorl	%r9d, %r9d
	movl	120(%rsp), %r8d         # 4-byte Reload
	movq	%r12, %rdi
	movl	116(%rsp), %edx         # 4-byte Reload
	callq	planar_to_chunky
	movq	24(%r12), %rdi
	movl	$.L.str.1, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
	movups	(%rbp), %xmm0
	movups	16(%rbp), %xmm1
	movups	32(%rbp), %xmm2
	movaps	%xmm2, 256(%rsp)
	movaps	%xmm1, 240(%rsp)
	movaps	%xmm0, 224(%rsp)
	movq	%rbx, 224(%rsp)
	movl	%r15d, 232(%rsp)
	movl	$1, 264(%rsp)
	movzwl	32(%rbp), %eax
	movl	%eax, 236(%rsp)
	movzwl	34(%rbp), %eax
	movl	%eax, 240(%rsp)
	movq	200(%rsp), %rax         # 8-byte Reload
	movl	%eax, 64(%rsp)
	movl	152(%rsp), %eax         # 4-byte Reload
	movl	%eax, 56(%rsp)
	movl	140(%rsp), %eax         # 4-byte Reload
	movl	%eax, 48(%rsp)
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	%eax, 40(%rsp)
	movl	144(%rsp), %eax         # 4-byte Reload
	movl	%eax, 32(%rsp)
	movq	168(%rsp), %rax         # 8-byte Reload
	movl	%eax, 24(%rsp)
	movl	148(%rsp), %eax         # 4-byte Reload
	movl	%eax, 16(%rsp)
	movq	160(%rsp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$0, 72(%rsp)
	movq	%r12, %rdi
	movq	128(%rsp), %rsi         # 8-byte Reload
	movl	188(%rsp), %edx         # 4-byte Reload
	movl	112(%rsp), %ecx         # 4-byte Reload
	movq	176(%rsp), %r8          # 8-byte Reload
	movq	192(%rsp), %r9          # 8-byte Reload
	callq	mem_planar_strip_copy_rop2
	movl	%eax, %r13d
.LBB15_27:                              # %cleanup.165
	movq	24(%r12), %rdi
	movl	$.L.str, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	jmp	.LBB15_51
.LBB15_28:                              # %if.end.174
	movq	200(%rsp), %rdx         # 8-byte Reload
	movl	%edx, %eax
	shll	$4, %eax
	xorl	%edx, %eax
	andl	$240, %eax
	andl	$512, %edx              # imm = 0x200
	orl	%eax, %edx
	je	.LBB15_31
# BB#29:                                # %lor.lhs.false.180
	testq	%rbx, %rbx
	je	.LBB15_46
# BB#30:                                # %land.lhs.true.182
	movq	(%rbx), %rax
	cmpq	8(%rbx), %rax
	jne	.LBB15_53
.LBB15_31:                              # %if.then.186
	movq	200(%rsp), %rax         # 8-byte Reload
	leal	(,%rax,4), %edx
	xorl	%eax, %edx
	andl	$204, %edx
	andl	$768, %eax              # imm = 0x300
	orl	%eax, %edx
	je	.LBB15_34
# BB#32:                                # %lor.lhs.false.195
	testq	%r15, %r15
	je	.LBB15_42
# BB#33:                                # %land.lhs.true.197
	movq	(%r15), %rdx
	cmpq	8(%r15), %rdx
	jne	.LBB15_42
.LBB15_34:                              # %land.lhs.true.202
	movl	100(%r12), %edx
	orl	$2, %edx
	cmpl	$3, %edx
	jne	.LBB15_42
# BB#35:                                # %for.body.218.lr.ph
	movq	%rsi, 128(%rsp)         # 8-byte Spill
	movq	%rbp, 104(%rsp)         # 8-byte Spill
	movl	%ecx, 112(%rsp)         # 4-byte Spill
	movq	%r14, 120(%rsp)         # 8-byte Spill
	testq	%r15, %r15
	leaq	208(%rsp), %rax
	cmoveq	%r15, %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	testq	%rbx, %rbx
	leaq	224(%rsp), %rax
	cmoveq	%rbx, %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	leaq	1784(%r12), %rbp
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB15_37:                              # %for.body.218
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbp), %eax
	movb	-4(%rbp), %cl
	movl	$1, %edx
	shll	%cl, %edx
	decl	%edx
	testq	%rbx, %rbx
	je	.LBB15_39
# BB#38:                                # %if.then.228
                                        #   in Loop: Header=BB15_37 Depth=1
	movq	(%rbx), %rsi
	movb	%al, %cl
	shrq	%cl, %rsi
	movslq	%edx, %rdi
	andq	%rdi, %rsi
	movq	%rsi, 224(%rsp)
	movq	8(%rbx), %rsi
	movb	%al, %cl
	shrq	%cl, %rsi
	andq	%rdi, %rsi
	movq	%rsi, 232(%rsp)
.LBB15_39:                              # %if.end.240
                                        #   in Loop: Header=BB15_37 Depth=1
	testq	%r15, %r15
	je	.LBB15_41
# BB#40:                                # %if.then.242
                                        #   in Loop: Header=BB15_37 Depth=1
	movq	(%r15), %rsi
	movb	%al, %cl
	shrq	%cl, %rsi
	movslq	%edx, %rdx
	andq	%rdx, %rsi
	movq	%rsi, 208(%rsp)
	movq	8(%r15), %rsi
	movb	%al, %cl
	shrq	%cl, %rsi
	andq	%rdx, %rsi
	movq	%rsi, 216(%rsp)
.LBB15_41:                              # %if.end.255
                                        #   in Loop: Header=BB15_37 Depth=1
	movw	108(%r12), %ax
	movw	%ax, 116(%rsp)          # 2-byte Spill
	movq	%r12, %r15
	movq	1744(%r15), %r12
	movq	2576(%r15), %rbx
	movslq	836(%r15), %rax
	movslq	%r14d, %rcx
	imulq	%rax, %rcx
	leaq	(%rbx,%rcx,8), %rax
	movq	%rax, 2576(%r15)
	movl	-4(%rbp), %edi
	callq	gdev_mem_device_for_bits
	movq	1448(%rax), %rcx
	movq	%rcx, 1448(%r15)
	movq	1200(%rax), %rcx
	movq	%rcx, 1200(%r15)
	movq	200(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, 64(%rsp)
	movq	152(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, 56(%rsp)
	movl	140(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 48(%rsp)
	movq	104(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, 40(%rsp)
	movl	144(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 32(%rsp)
	movq	168(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, 24(%rsp)
	movl	148(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 16(%rsp)
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 8(%rsp)
	movq	120(%rsp), %rcx         # 8-byte Reload
	movq	%rcx, (%rsp)
	movq	%r15, %rdi
	movq	128(%rsp), %rsi         # 8-byte Reload
	movl	188(%rsp), %edx         # 4-byte Reload
	movl	112(%rsp), %ecx         # 4-byte Reload
	movq	176(%rsp), %r8          # 8-byte Reload
	movq	96(%rsp), %r9           # 8-byte Reload
	callq	*1424(%rax)
	movl	%eax, %r13d
	movq	$mem_planar_get_bits_rectangle, 1448(%r15)
	movq	$mem_planar_fill_rectangle, 1200(%r15)
	movw	116(%rsp), %ax          # 2-byte Reload
	movw	%ax, 108(%r15)
	movq	%r12, 1744(%r15)
	movq	%r15, %r12
	movq	%rbx, 2576(%r12)
	movq	192(%rsp), %r15         # 8-byte Reload
	testl	%r13d, %r13d
	movq	160(%rsp), %rbx         # 8-byte Reload
	js	.LBB15_51
# BB#36:                                # %for.cond.213
                                        #   in Loop: Header=BB15_37 Depth=1
	incq	%r14
	movslq	100(%r12), %rax
	addq	$12, %rbp
	xorl	%r13d, %r13d
	cmpq	%rax, %r14
	jl	.LBB15_37
	jmp	.LBB15_51
.LBB15_3:                               # %if.then.18
	movq	24(%r12), %rdi
	movl	$.L.str, %edx
	movq	104(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rdi)
.LBB15_51:                              # %cleanup.323
	movl	%r13d, %eax
.LBB15_52:                              # %cleanup.323
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB15_42:                              # %if.end.276
	cmpl	$4, 100(%r12)
	jne	.LBB15_46
# BB#43:                                # %land.lhs.true.281
	testl	%eax, %eax
	jne	.LBB15_46
# BB#44:                                # %land.lhs.true.281
	cmpl	$1, 2784(%r12)
	jne	.LBB15_46
# BB#45:                                # %if.then.288
	movq	200(%rsp), %rdx         # 8-byte Reload
	movzbl	%dl, %eax
	movzbl	cmykrop(%rax), %eax
	andl	$-256, %edx
	orl	%eax, %edx
	movq	152(%rsp), %rax         # 8-byte Reload
	movl	%eax, 48(%rsp)
	movl	140(%rsp), %eax         # 4-byte Reload
	movl	%eax, 40(%rsp)
	movl	%ebp, 32(%rsp)
	movl	144(%rsp), %eax         # 4-byte Reload
	movl	%eax, 24(%rsp)
	movq	168(%rsp), %rax         # 8-byte Reload
	movl	%eax, 16(%rsp)
	movl	148(%rsp), %eax         # 4-byte Reload
	movl	%eax, 8(%rsp)
	movq	%rbx, (%rsp)
	movl	%edx, 56(%rsp)
	movq	%r12, %rdi
	movl	188(%rsp), %edx         # 4-byte Reload
	movq	%r15, %r8
	movq	%r14, %r9
	callq	planar_cmyk4bit_strip_copy_rop
	xorl	%r13d, %r13d
	jmp	.LBB15_51
.LBB15_46:                              # %if.end.296
	orq	%r15, %rbx
	jne	.LBB15_53
# BB#47:                                # %land.lhs.true.300
	cmpl	$4, 100(%r12)
	jne	.LBB15_53
# BB#48:                                # %land.lhs.true.305
	movq	200(%rsp), %rax         # 8-byte Reload
	testb	$3, %ah
	jne	.LBB15_53
# BB#49:                                # %land.lhs.true.305
	cmpl	$1, 2784(%r12)
	jne	.LBB15_53
# BB#50:                                # %if.then.313
	movq	%rax, %rdx
	movzbl	%dl, %eax
	movzbl	cmykrop(%rax), %eax
	andl	$-256, %edx
	orl	%eax, %edx
	movq	152(%rsp), %rax         # 8-byte Reload
	movl	%eax, 48(%rsp)
	movl	140(%rsp), %eax         # 4-byte Reload
	movl	%eax, 40(%rsp)
	movl	%ebp, 32(%rsp)
	movl	144(%rsp), %eax         # 4-byte Reload
	movl	%eax, 24(%rsp)
	movq	168(%rsp), %rax         # 8-byte Reload
	movl	%eax, 16(%rsp)
	movl	148(%rsp), %eax         # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	%edx, 56(%rsp)
	movq	$0, (%rsp)
	xorl	%r13d, %r13d
	xorl	%r8d, %r8d
	movq	%r12, %rdi
	movl	188(%rsp), %edx         # 4-byte Reload
	movq	%r14, %r9
	callq	planar_cmyk4bit_strip_copy_rop
	jmp	.LBB15_51
.LBB15_53:                              # %if.end.321
	movq	%r12, %rdi
	movl	188(%rsp), %edx         # 4-byte Reload
	movq	176(%rsp), %r8          # 8-byte Reload
	movq	%r15, %r9
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	mem_default_strip_copy_rop # TAILCALL
.Lfunc_end15:
	.size	mem_planar_strip_copy_rop2, .Lfunc_end15-mem_planar_strip_copy_rop2
	.cfi_endproc

	.align	16, 0x90
	.type	mem_planar_get_bits_rectangle,@function
mem_planar_get_bits_rectangle:          # @mem_planar_get_bits_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp168:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp169:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp170:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp171:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp172:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp173:
	.cfi_def_cfa_offset 56
	subq	$1992, %rsp             # imm = 0x7C8
.Ltmp174:
	.cfi_def_cfa_offset 2048
.Ltmp175:
	.cfi_offset %rbx, -56
.Ltmp176:
	.cfi_offset %r12, -48
.Ltmp177:
	.cfi_offset %r13, -40
.Ltmp178:
	.cfi_offset %r14, -32
.Ltmp179:
	.cfi_offset %r15, -24
.Ltmp180:
	.cfi_offset %rbp, -16
	movq	%rdx, %r11
	movq	%rsi, %r13
	movq	%rdi, %r15
	movq	(%r11), %rsi
	testq	%rsi, %rsi
	je	.LBB16_1
# BB#2:                                 # %if.end
	movl	(%r13), %r14d
	movl	4(%r13), %ebp
	movl	8(%r13), %r10d
	movl	%r10d, %ebx
	subl	%r14d, %ebx
	movl	12(%r13), %edi
	movl	%edi, %r12d
	subl	%ebp, %r12d
	testl	%ebx, %ebx
	setle	%al
	testl	%r12d, %r12d
	setle	%dl
	orb	%al, %dl
	movzbl	%dl, %eax
	cmpl	$1, %eax
	jne	.LBB16_4
# BB#3:                                 # %if.then.13
	orl	%ebx, %r12d
	sarl	$31, %r12d
	andl	$-15, %r12d
	movl	%r12d, %eax
	jmp	.LBB16_45
.LBB16_1:                               # %if.then
	movq	$2012282897, (%r11)     # imm = 0x77F10011
	movl	$-15, %eax
	jmp	.LBB16_45
.LBB16_4:                               # %if.end.19
	movl	$-15, %eax
	testl	%r14d, %r14d
	js	.LBB16_45
# BB#5:                                 # %lor.lhs.false
	testl	%ebp, %ebp
	js	.LBB16_45
# BB#6:                                 # %lor.lhs.false
	movl	832(%r15), %r8d
	movl	%r8d, %edx
	subl	%r14d, %edx
	cmpl	%edx, %ebx
	jg	.LBB16_45
# BB#7:                                 # %lor.lhs.false.28
	movq	%rsi, 104(%rsp)         # 8-byte Spill
	movl	836(%r15), %edx
	subl	%ebp, %edx
	cmpl	%edx, %r12d
	jg	.LBB16_45
# BB#8:                                 # %if.end.33
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movslq	%ebp, %r9
	movslq	100(%r15), %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	shlq	$3, %r9
	addq	2576(%r15), %r9
	movl	1736(%r15), %eax
	movzwl	108(%r15), %edx
	imull	%r8d, %edx
	addl	$63, %edx
	sarl	$6, %edx
	shll	$3, %edx
	cmpl	%edx, %eax
	movl	$268566545, %ecx        # imm = 0x10020011
	movl	$537002001, %edx        # imm = 0x20020011
	cmoveq	%rcx, %rdx
	movq	%rdx, 656(%rsp)
	movl	%eax, 1184(%rsp)
	leaq	656(%rsp), %r8
	movl	%edi, 84(%rsp)          # 4-byte Spill
	movq	%r15, %rdi
	movl	%r10d, 112(%rsp)        # 4-byte Spill
	movl	%r14d, %esi
	movl	%r12d, %edx
	movq	%r11, %rcx
	movl	%ebp, 116(%rsp)         # 4-byte Spill
	movq	%r11, %rbp
	callq	gx_get_bits_return_pointer
	movq	%rbp, %r8
	movl	116(%rsp), %edx         # 4-byte Reload
	testl	%eax, %eax
	jns	.LBB16_45
# BB#9:                                 # %cleanup.cont
	movq	%rbx, 72(%rsp)          # 8-byte Spill
	movl	%r14d, 68(%rsp)         # 4-byte Spill
	movq	%r15, %r14
	movq	104(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rsi
	notq	%rsi
	testl	$655360, %esi           # imm = 0xA0000
	movq	96(%rsp), %rdi          # 8-byte Reload
	jne	.LBB16_23
# BB#10:                                # %cleanup.cont
	testl	%edi, %edi
	jle	.LBB16_23
# BB#11:                                # %for.body.lr.ph
	leaq	8(%r8), %rbx
	xorl	%r15d, %r15d
.LBB16_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, (%rbx)
	jne	.LBB16_13
# BB#22:                                # %for.inc
                                        #   in Loop: Header=BB16_12 Depth=1
	incq	%r15
	addq	$8, %rbx
	cmpq	%rdi, %r15
	jl	.LBB16_12
	jmp	.LBB16_23
.LBB16_13:                              # %for.cond.65.preheader
	leal	1(%r15), %eax
	movslq	%eax, %rcx
.LBB16_14:                              # %for.cond.65
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	cmpl	%edi, %eax
	jge	.LBB16_16
# BB#15:                                # %for.body.68
                                        #   in Loop: Header=BB16_14 Depth=1
	leaq	1(%rax), %rcx
	cmpq	$0, 8(%r8,%rax,8)
	je	.LBB16_14
.LBB16_16:                              # %for.end.78
	cmpl	%edi, %eax
	jne	.LBB16_23
# BB#17:                                # %if.then.81
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	leaq	1456(%rsp), %rdi
	movl	$536, %edx              # imm = 0x218
	movq	%r8, %rsi
	movq	%r8, 48(%rsp)           # 8-byte Spill
	callq	memcpy
	movq	%rbp, %rax
	andq	$-983041, %rax          # imm = 0xFFFFFFFFFFF0FFFF
	orq	$65536, %rax            # imm = 0x10000
	movq	%rax, 1456(%rsp)
	movq	1464(%rsp,%r15,8), %rax
	movq	%rax, 1464(%rsp)
	movq	%r14, %rbx
	movw	108(%rbx), %r9w
	movq	1744(%rbx), %r8
	movq	2576(%rbx), %r14
	movl	836(%rbx), %edx
	movl	%edx, %eax
	imull	%r15d, %eax
	movslq	%eax, %rsi
	leaq	(%r14,%rsi,8), %rcx
	movq	%rcx, 2576(%rbx)
	leaq	(%r15,%r15,2), %rax
	movw	1780(%rbx,%rax,4), %di
	movw	%di, 108(%rbx)
	movq	(%r14,%rsi,8), %rsi
	movq	%rsi, 1744(%rbx)
	movw	%r9w, %r15w
	cmpl	$2, %edx
	jl	.LBB16_19
# BB#18:                                # %cond.true
	movq	%r14, 40(%rsp)          # 8-byte Spill
	movq	%r8, %r14
	movq	8(%rcx), %rax
	subq	(%rcx), %rax
	jmp	.LBB16_20
.LBB16_19:                              # %cond.false
	movq	%r14, 40(%rsp)          # 8-byte Spill
	movq	%r8, %r14
	leaq	1780(%rbx,%rax,4), %rax
	movl	(%rax), %eax
	imull	832(%rbx), %eax
	addl	$63, %eax
	sarl	$6, %eax
	shll	$3, %eax
.LBB16_20:                              # %cond.end
	movq	88(%rsp), %rcx          # 8-byte Reload
	movl	%eax, 1736(%rbx)
	leaq	1456(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	mem_get_bits_rectangle
	movw	%r15w, 108(%rbx)
	movq	%r14, 1744(%rbx)
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 2576(%rbx)
	movq	%rbx, %r14
	testl	%eax, %eax
	movl	116(%rsp), %edx         # 4-byte Reload
	movq	48(%rsp), %r8           # 8-byte Reload
	movq	96(%rsp), %rsi          # 8-byte Reload
	movq	56(%rsp), %rdi          # 8-byte Reload
	js	.LBB16_23
# BB#21:                                # %cleanup.156
	movq	1464(%rsp), %rcx
	movq	%rcx, (%rdi)
	jmp	.LBB16_45
.LBB16_23:                              # %if.end.159
	testl	$1114129, %esi          # imm = 0x110011
	je	.LBB16_24
# BB#30:                                # %if.else
	movq	%rbp, %r12
	movzwl	108(%r14), %r15d
	movl	832(%r14), %ecx
	movq	%r14, %rbx
	imull	%r15d, %ecx
	addl	$63, %ecx
	sarl	$6, %ecx
	shll	$3, %ecx
	movl	%edx, %r13d
	cmpl	$801, %ecx              # imm = 0x321
	jb	.LBB16_32
# BB#31:                                # %if.then.202
	movl	$6400, %eax             # imm = 0x1900
	xorl	%edx, %edx
	divl	%r15d
	movl	%eax, 96(%rsp)          # 4-byte Spill
	movl	$1, 56(%rsp)            # 4-byte Folded Spill
	movl	$800, 88(%rsp)          # 4-byte Folded Spill
                                        # imm = 0x320
	jmp	.LBB16_33
.LBB16_24:                              # %if.then.163
	xorl	%r9d, %r9d
	testl	$33554432, %ebp         # imm = 0x2000000
	je	.LBB16_26
# BB#25:                                # %cond.true.166
	movl	520(%r8), %r9d
.LBB16_26:                              # %cond.end.168
	testl	$536870912, %ebp        # imm = 0x20000000
	movl	68(%rsp), %esi          # 4-byte Reload
	movq	72(%rsp), %rcx          # 8-byte Reload
	jne	.LBB16_27
# BB#28:                                # %cond.false.174
	leal	(%r9,%rcx), %ebp
	movzwl	108(%r14), %eax
	imull	%ebp, %eax
	addl	$63, %eax
	sarl	$6, %eax
	shll	$3, %eax
	jmp	.LBB16_29
.LBB16_32:                              # %if.else.205
	movl	$800, %eax              # imm = 0x320
	xorl	%edx, %edx
	divl	%ecx
	movl	%eax, 56(%rsp)          # 4-byte Spill
	movl	%ecx, 88(%rsp)          # 4-byte Spill
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	%eax, 96(%rsp)          # 4-byte Spill
.LBB16_33:                              # %if.end.209
	movq	$268501009, 1456(%rsp)  # imm = 0x10010011
	movl	%ecx, 1984(%rsp)
	leaq	120(%rsp), %rdi
	movl	$536, %edx              # imm = 0x218
	movq	%r8, %rsi
	movq	%r8, %rbp
	callq	memcpy
	movl	520(%rbp), %eax
	movl	%eax, 640(%rsp)
	movl	$3, 104(%rsp)           # 4-byte Folded Spill
	testb	$4, %r12b
	jne	.LBB16_37
# BB#34:                                # %if.else.217
	movl	$4, 104(%rsp)           # 4-byte Folded Spill
	testb	$8, %r12b
	jne	.LBB16_37
# BB#35:                                # %if.else.221
	movl	$1, 104(%rsp)           # 4-byte Folded Spill
	testb	$2, %r12b
	jne	.LBB16_37
# BB#36:                                # %if.else.225
	xorl	%edx, %edx
	movl	%r15d, %eax
	idivl	2784(%rbx)
	movl	%eax, 104(%rsp)         # 4-byte Spill
.LBB16_37:                              # %if.end.232
	movl	%r13d, %r8d
	movl	84(%rsp), %r12d         # 4-byte Reload
	cmpl	%r8d, %r12d
	movl	112(%rsp), %ebp         # 4-byte Reload
	leaq	656(%rsp), %r13
	jle	.LBB16_44
# BB#38:                                # %for.body.237.lr.ph
	movq	72(%rsp), %rax          # 8-byte Reload
	imull	104(%rsp), %eax         # 4-byte Folded Reload
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movl	88(%rsp), %r14d         # 4-byte Reload
.LBB16_39:                              # %for.body.237
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_41 Depth 2
	movl	%r8d, 116(%rsp)         # 4-byte Spill
	subl	%r8d, %r12d
	movl	56(%rsp), %eax          # 4-byte Reload
	cmpl	%r12d, %eax
	cmovlel	%eax, %r12d
	movl	68(%rsp), %r15d         # 4-byte Reload
	cmpl	%r15d, %ebp
	jle	.LBB16_40
.LBB16_41:                              # %for.body.252
                                        #   Parent Loop BB16_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	subl	%r15d, %ebp
	movl	96(%rsp), %eax          # 4-byte Reload
	cmpl	%ebp, %eax
	cmovlel	%eax, %ebp
	movq	2576(%rbx), %rax
	movl	836(%rbx), %ecx
	movl	%ecx, 24(%rsp)
	movq	%rax, 16(%rsp)
	movq	%r13, 8(%rsp)
	movl	%r14d, (%rsp)
	xorl	%r9d, %r9d
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movl	%r8d, %edx
	movl	%ebp, %ecx
	movl	%r12d, %r8d
	callq	planar_to_chunky
	movl	%r14d, 8(%rsp)
	movq	%r13, (%rsp)
	movl	$0, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	movl	%r12d, %ecx
	leaq	120(%rsp), %r8
	leaq	1456(%rsp), %r9
	callq	gx_get_bits_copy
	testl	%eax, %eax
	js	.LBB16_45
# BB#42:                                # %if.end.272
                                        #   in Loop: Header=BB16_41 Depth=2
	movl	%ebp, %eax
	imull	104(%rsp), %eax         # 4-byte Folded Reload
	cltq
	addq	128(%rsp), %rax
	movq	%rax, 128(%rsp)
	addl	%ebp, %r15d
	movl	112(%rsp), %ebp         # 4-byte Reload
	cmpl	%r15d, %ebp
	movl	116(%rsp), %r8d         # 4-byte Reload
	jg	.LBB16_41
	jmp	.LBB16_43
.LBB16_40:                              # %for.body.237.for.end.280_crit_edge
                                        #   in Loop: Header=BB16_39 Depth=1
	movq	128(%rsp), %rax
.LBB16_43:                              # %for.end.280
                                        #   in Loop: Header=BB16_39 Depth=1
	movl	648(%rsp), %ecx
	imull	%r12d, %ecx
	movq	72(%rsp), %rdx          # 8-byte Reload
	subl	%edx, %ecx
	addq	%rax, %rcx
	movq	%rcx, 128(%rsp)
	addl	%r12d, %r8d
	movl	84(%rsp), %r12d         # 4-byte Reload
	cmpl	%r8d, %r12d
	jg	.LBB16_39
	jmp	.LBB16_44
.LBB16_27:                              # %cond.true.172
	movl	528(%r8), %eax
.LBB16_29:                              # %cond.end.183
	movq	8(%r8), %r8
	movq	2576(%r14), %rbx
	movl	836(%r14), %ebp
	movl	%ebp, 24(%rsp)
	movq	%rbx, 16(%rsp)
	movq	%r8, 8(%rsp)
	movl	%eax, (%rsp)
	movq	%r14, %rdi
	movl	%r12d, %r8d
	callq	planar_to_chunky
.LBB16_44:                              # %cleanup.292.thread
	xorl	%eax, %eax
.LBB16_45:                              # %cleanup.307
	addq	$1992, %rsp             # imm = 0x7C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	mem_planar_get_bits_rectangle, .Lfunc_end16-mem_planar_get_bits_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	planar_to_chunky,@function
planar_to_chunky:                       # @planar_to_chunky
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp181:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp182:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp183:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp184:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp185:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp186:
	.cfi_def_cfa_offset 56
	subq	$760, %rsp              # imm = 0x2F8
.Ltmp187:
	.cfi_def_cfa_offset 816
.Ltmp188:
	.cfi_offset %rbx, -56
.Ltmp189:
	.cfi_offset %r12, -48
.Ltmp190:
	.cfi_offset %r13, -40
.Ltmp191:
	.cfi_offset %r14, -32
.Ltmp192:
	.cfi_offset %r15, -24
.Ltmp193:
	.cfi_offset %rbp, -16
	movq	%rcx, -32(%rsp)         # 8-byte Spill
	movl	100(%rdi), %r11d
	movslq	%r11d, %r14
	movzwl	108(%rdi), %r15d
	movl	2784(%rdi), %ecx
	movl	%ecx, %eax
	imull	%r11d, %eax
	xorl	%ebp, %ebp
	movq	%rbp, -24(%rsp)         # 8-byte Spill
	cmpl	%eax, %r15d
	jne	.LBB17_13
# BB#1:                                 # %cond.end.12
	movl	1784(%rdi), %eax
	movl	%ecx, %r10d
	negl	%r10d
	testl	%eax, %eax
	cmovnel	%ecx, %r10d
	testl	%r10d, %r10d
	js	.LBB17_2
# BB#7:                                 # %if.else
	jle	.LBB17_13
# BB#8:                                 # %for.cond.29.preheader
	testl	%r11d, %r11d
	jle	.LBB17_9
# BB#11:                                # %for.body.32.lr.ph
	leal	-1(%r11), %eax
	movl	%r10d, %ecx
	negl	%ecx
	xorl	%ebx, %ebx
	movq	%rbx, -24(%rsp)         # 8-byte Spill
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB17_12:                              # %for.body.32
                                        # =>This Inner Loop Header: Depth=1
	movslq	%eax, %rbp
	leaq	(%rbp,%rbp,2), %rbp
	addl	%r10d, %ecx
	cmpl	1784(%rdi,%rbp,4), %ecx
	jne	.LBB17_13
# BB#10:                                # %for.cond.29
                                        #   in Loop: Header=BB17_12 Depth=1
	incq	%rbx
	decl	%eax
	cmpq	%r14, %rbx
	jl	.LBB17_12
	jmp	.LBB17_9
.LBB17_2:                               # %for.cond.preheader
	testl	%r11d, %r11d
	jle	.LBB17_9
# BB#3:                                 # %for.body.lr.ph
	testl	%eax, %eax
	jne	.LBB17_13
# BB#4:                                 # %for.cond.preheader93
	leaq	1796(%rdi), %rax
	xorl	%ecx, %ecx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB17_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	incq	%rcx
	cmpq	%r14, %rcx
	jge	.LBB17_9
# BB#6:                                 # %for.cond.for.body_crit_edge
                                        #   in Loop: Header=BB17_5 Depth=1
	subl	%r10d, %ebp
	xorl	%ebx, %ebx
	movq	%rbx, -24(%rsp)         # 8-byte Spill
	cmpl	(%rax), %ebp
	leaq	12(%rax), %rax
	je	.LBB17_5
	jmp	.LBB17_13
.LBB17_9:
	movl	%r10d, %eax
	movq	%rax, -24(%rsp)         # 8-byte Spill
.LBB17_13:                              # %if.end.48
	movq	%r14, -48(%rsp)         # 8-byte Spill
	movq	%r11, %r10
	movq	%r10, -88(%rsp)         # 8-byte Spill
	testl	%r8d, %r8d
	jle	.LBB17_63
# BB#14:                                # %for.body.52.lr.ph
	movq	832(%rsp), %rax
	movl	%edx, %r12d
	movl	%r12d, -52(%rsp)        # 4-byte Spill
	addl	%r12d, %r8d
	movl	%r15d, -124(%rsp)       # 4-byte Spill
	imull	%r15d, %r9d
	movl	%r9d, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, -64(%rsp)         # 8-byte Spill
	andl	$7, %r9d
	movl	$65280, %ebp            # imm = 0xFF00
	movb	%r9b, %cl
	shrl	%cl, %ebp
	movl	%ebp, -92(%rsp)         # 4-byte Spill
	shrl	$2, %r15d
	movl	%r15d, -120(%rsp)       # 4-byte Spill
	movslq	%r12d, %rcx
	leaq	(%rax,%rcx,8), %rax
	movq	%rax, -40(%rsp)         # 8-byte Spill
	movslq	840(%rsp), %r15
	shlq	$3, %r15
	movq	-32(%rsp), %rax         # 8-byte Reload
	leal	1(%rax), %eax
	movl	%eax, -116(%rsp)        # 4-byte Spill
	leaq	1780(%rdi), %rax
	movq	%rax, -72(%rsp)         # 8-byte Spill
	addq	$1784, %rdi             # imm = 0x6F8
	movq	%rdi, -80(%rsp)         # 8-byte Spill
.LBB17_15:                              # %for.body.52
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_16 Depth 2
                                        #     Child Loop BB17_28 Depth 2
                                        #       Child Loop BB17_29 Depth 3
                                        #     Child Loop BB17_21 Depth 2
                                        #     Child Loop BB17_24 Depth 2
	movq	%r10, %r11
	testl	%r11d, %r11d
	movq	-40(%rsp), %rax         # 8-byte Reload
	movq	-72(%rsp), %rdi         # 8-byte Reload
	leaq	-16(%rsp), %rbp
	leaq	240(%rsp), %rbx
	jle	.LBB17_17
	.align	16, 0x90
.LBB17_16:                              # %for.body.56
                                        #   Parent Loop BB17_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %ecx
	imull	%esi, %ecx
	movl	%ecx, %edx
	sarl	$3, %edx
	movslq	%edx, %rdx
	addq	(%rax), %rdx
	movq	%rdx, (%rbx)
	andl	$7, %ecx
	movl	%ecx, (%rbp)
	addq	$8, %rbx
	addq	$4, %rbp
	addq	$12, %rdi
	addq	%r15, %rax
	decl	%r10d
	jne	.LBB17_16
.LBB17_17:                              # %for.end.73
                                        #   in Loop: Header=BB17_15 Depth=1
	movl	%r12d, %eax
	subl	-52(%rsp), %eax         # 4-byte Folded Reload
	imull	816(%rsp), %eax
	movq	824(%rsp), %rcx
	leaq	(%rax,%rcx), %rbp
	addq	-64(%rsp), %rbp         # 8-byte Folded Reload
	movq	-24(%rsp), %rax         # 8-byte Reload
	cmpl	$-8, %eax
	jne	.LBB17_25
# BB#18:                                # %if.then.86
                                        #   in Loop: Header=BB17_15 Depth=1
	cmpl	$3, %r11d
	jne	.LBB17_19
# BB#22:                                # %sw.bb
                                        #   in Loop: Header=BB17_15 Depth=1
	movq	%r11, %r10
	movq	-32(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB17_62
# BB#23:                                # %for.body.93.lr.ph
                                        #   in Loop: Header=BB17_15 Depth=1
	movq	240(%rsp), %rax
	movq	248(%rsp), %rcx
	movq	256(%rsp), %rdi
	movl	-116(%rsp), %ebx        # 4-byte Reload
	.align	16, 0x90
.LBB17_24:                              # %for.body.93
                                        #   Parent Loop BB17_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rdi), %dl
	incq	%rdi
	movb	%dl, (%rbp)
	movb	(%rcx), %dl
	incq	%rcx
	movb	%dl, 1(%rbp)
	movb	(%rax), %dl
	incq	%rax
	movb	%dl, 2(%rbp)
	decl	%ebx
	addq	$3, %rbp
	cmpl	$1, %ebx
	jg	.LBB17_24
	jmp	.LBB17_62
	.align	16, 0x90
.LBB17_19:                              # %if.then.86
                                        #   in Loop: Header=BB17_15 Depth=1
	cmpl	$4, %r11d
	jne	.LBB17_25
# BB#20:                                # %for.cond.103.preheader
                                        #   in Loop: Header=BB17_15 Depth=1
	movq	%r11, %r10
	movq	-32(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movl	-116(%rsp), %eax        # 4-byte Reload
	jle	.LBB17_62
	.align	16, 0x90
.LBB17_21:                              # %for.body.106
                                        #   Parent Loop BB17_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	264(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 264(%rsp)
	movb	(%rcx), %cl
	movb	%cl, (%rbp)
	movq	256(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 256(%rsp)
	movb	(%rcx), %cl
	movb	%cl, 1(%rbp)
	movq	248(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 248(%rsp)
	movb	(%rcx), %cl
	movb	%cl, 2(%rbp)
	movq	240(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 240(%rsp)
	movb	(%rcx), %cl
	movb	%cl, 3(%rbp)
	decl	%eax
	addq	$4, %rbp
	cmpl	$1, %eax
	jg	.LBB17_21
	jmp	.LBB17_62
	.align	16, 0x90
.LBB17_25:                              # %if.end.123
                                        #   in Loop: Header=BB17_15 Depth=1
	xorl	%edx, %edx
	testl	%r9d, %r9d
	movl	$0, %r14d
	je	.LBB17_27
# BB#26:                                # %cond.true.124
                                        #   in Loop: Header=BB17_15 Depth=1
	movzbl	(%rbp), %edx
	andl	-92(%rsp), %edx         # 4-byte Folded Reload
	movl	%r9d, %r14d
.LBB17_27:                              # %for.cond.134.preheader
                                        #   in Loop: Header=BB17_15 Depth=1
	movq	-32(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jg	.LBB17_28
	jmp	.LBB17_60
.LBB17_44:                              # %if.else.250
                                        #   in Loop: Header=BB17_28 Depth=2
	movl	$8, %ecx
	subl	%r14d, %ecx
	shlq	%cl, %rbx
	movl	-112(%rsp), %eax        # 4-byte Reload
	orb	%al, %bl
	movb	%bl, %dl
	jmp	.LBB17_59
.LBB17_49:                              # %if.then.276
                                        #   in Loop: Header=BB17_28 Depth=2
	movq	%rbx, %rcx
	shrq	$4, %rcx
	movb	%cl, (%rbp)
	incq	%rbp
.LBB17_46:                              # %if.then.262
                                        #   in Loop: Header=BB17_28 Depth=2
	shlq	$4, %rbx
	movb	%bl, %dl
	movl	%eax, %r14d
	jmp	.LBB17_59
	.align	16, 0x90
.LBB17_28:                              # %for.cond.138.preheader
                                        #   Parent Loop BB17_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_29 Depth 3
	movl	%r14d, -108(%rsp)       # 4-byte Spill
	movq	%rax, -104(%rsp)        # 8-byte Spill
	movl	%edx, -112(%rsp)        # 4-byte Spill
	testl	%r11d, %r11d
	movq	-80(%rsp), %rdi         # 8-byte Reload
	leaq	240(%rsp), %r14
	movl	$0, %r11d
	movl	$0, %ebx
	jle	.LBB17_40
.LBB17_29:                              # %for.body.141
                                        #   Parent Loop BB17_15 Depth=1
                                        #     Parent Loop BB17_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-4(%rdi), %r13d
	movl	%r13d, %eax
	sarl	$2, %eax
	cmpl	$4, %eax
	ja	.LBB17_63
# BB#30:                                # %for.body.141
                                        #   in Loop: Header=BB17_29 Depth=3
	jmpq	*.LJTI17_0(,%rax,8)
.LBB17_31:                              # %sw.bb.148
                                        #   in Loop: Header=BB17_29 Depth=3
	movl	%r9d, %edx
	movq	(%r14), %r10
	movzbl	(%r10), %eax
	movl	$8, %ecx
	subl	%r13d, %ecx
	subl	-16(%rsp,%r11,4), %ecx
	shrl	%cl, %eax
	movl	%r13d, %r9d
	orl	$1, %r9d
	andl	%eax, %r9d
	movq	%r14, %rax
	jmp	.LBB17_39
.LBB17_32:                              # %sw.bb.158
                                        #   in Loop: Header=BB17_29 Depth=3
	movl	%r9d, %edx
	leaq	240(%rsp,%r11,8), %rax
	movq	(%r14), %r10
	movzbl	(%r10), %r9d
	movl	$4, %ecx
	subl	-16(%rsp,%r11,4), %ecx
	shrl	%cl, %r9d
	andl	$15, %r9d
	jmp	.LBB17_39
.LBB17_33:                              # %sw.bb.167
                                        #   in Loop: Header=BB17_29 Depth=3
	movl	%r9d, %edx
	leaq	240(%rsp,%r11,8), %rax
	movq	(%r14), %r10
	movzbl	(%r10), %r9d
	jmp	.LBB17_39
.LBB17_34:                              # %sw.bb.171
                                        #   in Loop: Header=BB17_29 Depth=3
	movl	%r9d, %edx
	cmpl	$0, -16(%rsp,%r11,4)
	leaq	240(%rsp,%r11,8), %rax
	movq	(%r14), %r10
	movzbl	(%r10), %ecx
	movzbl	1(%r10), %r9d
	je	.LBB17_36
# BB#35:                                # %cond.true.175
                                        #   in Loop: Header=BB17_29 Depth=3
	andl	$15, %ecx
	shll	$8, %ecx
	jmp	.LBB17_38
.LBB17_37:                              # %sw.bb.198
                                        #   in Loop: Header=BB17_29 Depth=3
	movl	%r9d, %edx
	leaq	240(%rsp,%r11,8), %rax
	movq	(%r14), %r10
	movzbl	(%r10), %ecx
	shll	$8, %ecx
	movzbl	1(%r10), %r9d
	jmp	.LBB17_38
.LBB17_36:                              # %cond.false.185
                                        #   in Loop: Header=BB17_29 Depth=3
	shll	$4, %ecx
	shrl	$4, %r9d
	.align	16, 0x90
.LBB17_38:                              # %for.inc.234
                                        #   in Loop: Header=BB17_29 Depth=3
	orl	%ecx, %r9d
.LBB17_39:                              # %for.inc.234
                                        #   in Loop: Header=BB17_29 Depth=3
	addl	-16(%rsp,%r11,4), %r13d
	movl	%r13d, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	addq	%r10, %rcx
	movq	%rcx, (%rax)
	andl	$7, %r13d
	movl	%r13d, -16(%rsp,%r11,4)
	movl	%r9d, %eax
	movb	(%rdi), %cl
	shlq	%cl, %rax
	orq	%rax, %rbx
	incq	%r11
	addq	$8, %r14
	addq	$12, %rdi
	cmpq	-48(%rsp), %r11         # 8-byte Folded Reload
	movl	%edx, %r9d
	jl	.LBB17_29
	.align	16, 0x90
.LBB17_40:                              # %do.body.237
                                        #   in Loop: Header=BB17_28 Depth=2
	movl	-120(%rsp), %ecx        # 4-byte Reload
	movl	%ecx, %eax
	cmpl	$16, %ecx
	ja	.LBB17_63
# BB#41:                                # %do.body.237
                                        #   in Loop: Header=BB17_28 Depth=2
	jmpq	*.LJTI17_1(,%rax,8)
.LBB17_42:                              # %sw.bb.239
                                        #   in Loop: Header=BB17_28 Depth=2
	movl	-108(%rsp), %r14d       # 4-byte Reload
	addl	-124(%rsp), %r14d       # 4-byte Folded Reload
	cmpl	$8, %r14d
	jne	.LBB17_44
# BB#43:                                # %if.then.243
                                        #   in Loop: Header=BB17_28 Depth=2
	movl	-112(%rsp), %eax        # 4-byte Reload
	orb	%al, %bl
	movb	%bl, (%rbp)
	incq	%rbp
	xorl	%edx, %edx
	xorl	%r14d, %r14d
	jmp	.LBB17_59
.LBB17_45:                              # %sw.bb.260
                                        #   in Loop: Header=BB17_28 Depth=2
	movl	-108(%rsp), %ecx        # 4-byte Reload
	movl	%ecx, %eax
	xorl	$4, %eax
	cmpl	$4, %ecx
	jne	.LBB17_46
# BB#47:                                # %if.else.265
                                        #   in Loop: Header=BB17_28 Depth=2
	movl	-112(%rsp), %edx        # 4-byte Reload
	orb	%dl, %bl
	movb	%bl, (%rbp)
	incq	%rbp
	movl	%eax, %r14d
	jmp	.LBB17_59
.LBB17_48:                              # %sw.bb.273
                                        #   in Loop: Header=BB17_28 Depth=2
	movl	-108(%rsp), %ecx        # 4-byte Reload
	movl	%ecx, %eax
	xorl	$4, %eax
	cmpl	$4, %ecx
	jne	.LBB17_49
# BB#50:                                # %if.else.282
                                        #   in Loop: Header=BB17_28 Depth=2
	movq	%rbx, %rcx
	shrq	$8, %rcx
	movl	-112(%rsp), %edx        # 4-byte Reload
	orb	%dl, %cl
	movb	%cl, (%rbp)
	movb	%bl, 1(%rbp)
	addq	$2, %rbp
	movl	%eax, %r14d
	jmp	.LBB17_59
.LBB17_51:                              # %sw.bb.293
                                        #   in Loop: Header=BB17_28 Depth=2
	movq	%rbx, %rax
	shrq	$56, %rax
	movb	%al, (%rbp)
	incq	%rbp
.LBB17_52:                              # %sw.bb.297
                                        #   in Loop: Header=BB17_28 Depth=2
	movq	%rbx, %rax
	shrq	$48, %rax
	movb	%al, (%rbp)
	incq	%rbp
.LBB17_53:                              # %sw.bb.301
                                        #   in Loop: Header=BB17_28 Depth=2
	movq	%rbx, %rax
	shrq	$40, %rax
	movb	%al, (%rbp)
	incq	%rbp
.LBB17_54:                              # %sw.bb.305
                                        #   in Loop: Header=BB17_28 Depth=2
	movq	%rbx, %rax
	shrq	$32, %rax
	movb	%al, (%rbp)
	incq	%rbp
.LBB17_55:                              # %sw.bb.309
                                        #   in Loop: Header=BB17_28 Depth=2
	movq	%rbx, %rax
	shrq	$24, %rax
	movb	%al, (%rbp)
	incq	%rbp
.LBB17_56:                              # %sw.bb.313
                                        #   in Loop: Header=BB17_28 Depth=2
	movq	%rbx, %rax
	shrq	$16, %rax
	movb	%al, (%rbp)
	incq	%rbp
.LBB17_57:                              # %sw.bb.317
                                        #   in Loop: Header=BB17_28 Depth=2
	movb	%bh, (%rbp)  # NOREX
	incq	%rbp
.LBB17_58:                              # %sw.bb.321
                                        #   in Loop: Header=BB17_28 Depth=2
	movb	%bl, (%rbp)
	incq	%rbp
	movl	-112(%rsp), %edx        # 4-byte Reload
	movl	-108(%rsp), %r14d       # 4-byte Reload
.LBB17_59:                              # %for.inc.331
                                        #   in Loop: Header=BB17_28 Depth=2
	movq	-104(%rsp), %rax        # 8-byte Reload
	cmpl	$1, %eax
	leal	-1(%rax), %eax
	movq	-88(%rsp), %r11         # 8-byte Reload
	jg	.LBB17_28
	.align	16, 0x90
.LBB17_60:                              # %for.end.333
                                        #   in Loop: Header=BB17_15 Depth=1
	movq	%r11, %r10
	testl	%r14d, %r14d
	je	.LBB17_62
# BB#61:                                # %if.then.336
                                        #   in Loop: Header=BB17_15 Depth=1
	movzbl	%dl, %eax
	movzbl	(%rbp), %edx
	movl	$255, %edi
	movb	%r14b, %cl
	shrl	%cl, %edi
	andl	%edx, %edi
	orl	%eax, %edi
	movb	%dil, (%rbp)
.LBB17_62:                              # %for.inc.347
                                        #   in Loop: Header=BB17_15 Depth=1
	incl	%r12d
	addq	$8, -40(%rsp)           # 8-byte Folded Spill
	cmpl	%r8d, %r12d
	jl	.LBB17_15
.LBB17_63:                              # %cleanup.350
	addq	$760, %rsp              # imm = 0x2F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	planar_to_chunky, .Lfunc_end17-planar_to_chunky
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI17_0:
	.quad	.LBB17_31
	.quad	.LBB17_32
	.quad	.LBB17_33
	.quad	.LBB17_34
	.quad	.LBB17_37
.LJTI17_1:
	.quad	.LBB17_42
	.quad	.LBB17_45
	.quad	.LBB17_58
	.quad	.LBB17_48
	.quad	.LBB17_57
	.quad	.LBB17_63
	.quad	.LBB17_56
	.quad	.LBB17_63
	.quad	.LBB17_55
	.quad	.LBB17_63
	.quad	.LBB17_54
	.quad	.LBB17_63
	.quad	.LBB17_53
	.quad	.LBB17_63
	.quad	.LBB17_52
	.quad	.LBB17_63
	.quad	.LBB17_51

	.text
	.align	16, 0x90
	.type	planar_cmyk4bit_strip_copy_rop,@function
planar_cmyk4bit_strip_copy_rop:         # @planar_cmyk4bit_strip_copy_rop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp194:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp195:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp196:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp197:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp198:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp199:
	.cfi_def_cfa_offset 56
	subq	$440, %rsp              # imm = 0x1B8
.Ltmp200:
	.cfi_def_cfa_offset 496
.Ltmp201:
	.cfi_offset %rbx, -56
.Ltmp202:
	.cfi_offset %r12, -48
.Ltmp203:
	.cfi_offset %r13, -40
.Ltmp204:
	.cfi_offset %r14, -32
.Ltmp205:
	.cfi_offset %r15, -24
.Ltmp206:
	.cfi_offset %rbp, -16
	movq	%rsi, 152(%rsp)         # 8-byte Spill
	movl	528(%rsp), %r10d
	movl	520(%rsp), %r15d
	movl	512(%rsp), %eax
	movl	504(%rsp), %ebp
	movl	1736(%rdi), %esi
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movl	%eax, %esi
	orl	%ebp, %esi
	jns	.LBB18_1
# BB#2:                                 # %if.then
	movl	%ebp, %esi
	sarl	$31, %esi
	andl	%ebp, %esi
	leal	(%r15,%rsi), %r15d
	xorl	%ebx, %ebx
	testl	%ebp, %ebp
	cmovsl	%ebx, %ebp
	subl	%esi, %edx
	testl	%eax, %eax
	js	.LBB18_3
.LBB18_1:
	movl	%edx, 100(%rsp)         # 4-byte Spill
	movl	%eax, %ebx
.LBB18_4:                               # %if.end.8
	movl	%ebp, %edx
	movl	832(%rdi), %esi
	movl	836(%rdi), %ebp
	movq	%rbp, 64(%rsp)          # 8-byte Spill
	movl	%esi, %eax
	subl	%edx, %eax
	cmpl	%eax, %r15d
	cmovlel	%r15d, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	subl	%ebx, %ebp
	cmpl	%ebp, %r10d
	cmovlel	%r10d, %ebp
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	jle	.LBB18_210
# BB#5:                                 # %if.end.8
	movq	56(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB18_210
# BB#6:                                 # %do.end.28
	movl	%esi, 400(%rsp)         # 4-byte Spill
	movl	552(%rsp), %r12d
	movq	496(%rsp), %r11
	xorl	%r14d, %r14d
	testq	%r8, %r8
	je	.LBB18_7
# BB#9:                                 # %if.then.29
	movl	%ecx, 408(%rsp)         # 4-byte Spill
	movq	(%r8), %rax
	movq	8(%r8), %r10
	movl	%ebx, %r13d
	cmpq	%r10, %rax
	jne	.LBB18_11
# BB#10:                                # %if.then.32
	movq	%rax, %rbx
	shlq	$63, %rbx
	movq	%rax, %rbp
	shlq	$60, %rbp
	orq	%rbx, %rbp
	sarq	$63, %rbp
	movq	%rax, %rcx
	shlq	$61, %rcx
	orq	%rbx, %rcx
	sarq	$63, %rcx
	movq	%rcx, 392(%rsp)         # 8-byte Spill
	shlq	$62, %rax
	orq	%rbx, %rax
	sarq	$63, %rax
	movl	$1, %r14d
	movq	%rax, %r10
	jmp	.LBB18_8
.LBB18_7:
	movl	%ecx, 408(%rsp)         # 4-byte Spill
	movl	%ebx, %r13d
	xorl	%r10d, %r10d
	xorl	%eax, %eax
	movq	%rax, 392(%rsp)         # 8-byte Spill
	xorl	%ebp, %ebp
.LBB18_8:                               # %if.end.164
                                        # implicit-def: RAX
	movq	%rax, 360(%rsp)         # 8-byte Spill
                                        # implicit-def: RAX
	movq	%rax, 344(%rsp)         # 8-byte Spill
                                        # implicit-def: RAX
	movq	%rax, 352(%rsp)         # 8-byte Spill
	jmp	.LBB18_36
.LBB18_11:                              # %if.else
	movl	%eax, %ecx
	andl	$1, %ecx
	leaq	(%r10,%r10), %rbx
	andl	$2, %ebx
	orq	%rcx, %rbx
	movq	%rax, %rcx
	shrq	$3, %rcx
	andl	$1, %ecx
	movq	%r10, %rbp
	shrq	$2, %rbp
	andl	$2, %ebp
	orq	%rcx, %rbp
	orq	%rbx, %rbp
	movq	%rax, %rcx
	shrq	$2, %rcx
	andl	$1, %ecx
	movq	%r10, %rsi
	shrq	%rsi
	andl	$2, %esi
	orq	%rcx, %rsi
	orq	%rbx, %rsi
	shrq	%rax
	andl	$1, %eax
	andl	$2, %r10d
	orq	%rax, %r10
	orq	%rbx, %r10
	cmpl	$2, %ebp
	je	.LBB18_16
# BB#12:                                # %if.else
	movl	%r12d, %eax
	cmpl	$1, %ebp
	jne	.LBB18_13
# BB#15:                                # %sw.bb.88
	shrl	$2, %eax
	andl	$51, %eax
	movl	%r12d, %ecx
	andl	$51, %ecx
	shll	$2, %ecx
	movl	%r12d, %ebx
	andl	$-256, %ebx
	orl	%ecx, %ebx
	orl	%eax, %ebx
	leaq	rop_proc_table(,%rbx,8), %rax
	jmp	.LBB18_19
.LBB18_3:                               # %if.then.5
	movl	%edx, 100(%rsp)         # 4-byte Spill
	addl	%eax, %r10d
	imull	%ecx, %eax
	cltq
	subq	%rax, 152(%rsp)         # 8-byte Folded Spill
	jmp	.LBB18_4
.LBB18_16:                              # %sw.bb.98
	movl	%r12d, %eax
	leaq	rop_proc_table(,%rax,8), %rax
	jmp	.LBB18_19
.LBB18_13:                              # %if.else
	testl	%ebp, %ebp
	jne	.LBB18_17
# BB#14:                                # %sw.bb
	andl	$51, %eax
	shll	$2, %eax
	movl	%r12d, %ecx
	andl	$-205, %ecx
	jmp	.LBB18_18
.LBB18_17:                              # %sw.default
	shrl	$2, %eax
	andl	$51, %eax
	movl	%r12d, %ecx
	andl	$-52, %ecx
.LBB18_18:                              # %sw.epilog
	orl	%eax, %ecx
	leaq	rop_proc_table(,%rcx,8), %rax
.LBB18_19:                              # %sw.epilog
	movq	(%rax), %rax
	movq	%rax, 352(%rsp)         # 8-byte Spill
	movq	%rsi, %rax
	cmpl	$2, %eax
	je	.LBB18_24
# BB#20:                                # %sw.epilog
	cmpl	$1, %eax
	jne	.LBB18_21
# BB#23:                                # %sw.bb.114
	movq	%rax, 392(%rsp)         # 8-byte Spill
	movl	%r12d, %eax
	shrl	$2, %eax
	andl	$51, %eax
	movl	%r12d, %ecx
	andl	$51, %ecx
	shll	$2, %ecx
	movl	%r12d, %ebx
	andl	$-256, %ebx
	orl	%ecx, %ebx
	orl	%eax, %ebx
	leaq	rop_proc_table(,%rbx,8), %rax
	jmp	.LBB18_27
.LBB18_24:                              # %sw.bb.124
	movq	%rax, 392(%rsp)         # 8-byte Spill
	movl	%r12d, %eax
	leaq	rop_proc_table(,%rax,8), %rax
	jmp	.LBB18_27
.LBB18_21:                              # %sw.epilog
	testl	%eax, %eax
	movq	%rax, 392(%rsp)         # 8-byte Spill
	movl	%r12d, %eax
	jne	.LBB18_25
# BB#22:                                # %sw.bb.107
	andl	$51, %eax
	shll	$2, %eax
	movl	%r12d, %ecx
	andl	$-205, %ecx
	jmp	.LBB18_26
.LBB18_25:                              # %sw.default.127
	shrl	$2, %eax
	andl	$51, %eax
	movl	%r12d, %ecx
	andl	$-52, %ecx
.LBB18_26:                              # %sw.epilog.134
	orl	%eax, %ecx
	leaq	rop_proc_table(,%rcx,8), %rax
.LBB18_27:                              # %sw.epilog.134
	movq	(%rax), %rax
	movq	%rax, 344(%rsp)         # 8-byte Spill
	cmpl	$2, %r10d
	je	.LBB18_32
# BB#28:                                # %sw.epilog.134
	movl	%r12d, %eax
	cmpl	$1, %r10d
	jne	.LBB18_29
# BB#31:                                # %sw.bb.142
	shrl	$2, %eax
	andl	$51, %eax
	movl	%r12d, %ecx
	andl	$51, %ecx
	shll	$2, %ecx
	movl	%r12d, %ebx
	andl	$-256, %ebx
	orl	%ecx, %ebx
	orl	%eax, %ebx
	movq	rop_proc_table(,%rbx,8), %rax
	jmp	.LBB18_35
.LBB18_32:                              # %sw.bb.152
	movl	%r12d, %eax
	movq	rop_proc_table(,%rax,8), %rax
	jmp	.LBB18_35
.LBB18_29:                              # %sw.epilog.134
	testl	%r10d, %r10d
	jne	.LBB18_33
# BB#30:                                # %sw.bb.135
	andl	$51, %eax
	shll	$2, %eax
	movl	%r12d, %ecx
	andl	$-205, %ecx
	jmp	.LBB18_34
.LBB18_33:                              # %sw.default.155
	shrl	$2, %eax
	andl	$51, %eax
	movl	%r12d, %ecx
	andl	$-52, %ecx
.LBB18_34:                              # %if.end.164
	orl	%eax, %ecx
	movq	rop_proc_table(,%rcx,8), %rax
.LBB18_35:                              # %if.end.164
	movq	%rax, 360(%rsp)         # 8-byte Spill
.LBB18_36:                              # %if.end.164
	xorl	%ecx, %ecx
	testq	%r11, %r11
	movl	$0, %ebx
	movl	$0, %eax
	movq	%rax, 432(%rsp)         # 8-byte Spill
	je	.LBB18_38
# BB#37:                                # %if.then.166
	movq	(%r11), %rcx
	movq	%rcx, %rax
	shlq	$63, %rax
	movq	%rcx, %rbx
	shlq	$60, %rbx
	orq	%rax, %rbx
	sarq	$63, %rbx
	movq	%rbx, 432(%rsp)         # 8-byte Spill
	movq	%rcx, %rbx
	shlq	$61, %rbx
	orq	%rax, %rbx
	sarq	$63, %rbx
	shlq	$62, %rcx
	orq	%rax, %rcx
	sarq	$63, %rcx
.LBB18_38:                              # %if.end.186
	movl	%r12d, %eax
	shll	$4, %eax
	xorl	%r12d, %eax
	testb	$-16, %al
	je	.LBB18_39
# BB#53:                                # %land.lhs.true
	testq	%r11, %r11
	jne	.LBB18_41
	jmp	.LBB18_54
.LBB18_39:                              # %lor.lhs.false.191
	testq	%r11, %r11
	jne	.LBB18_41
# BB#40:                                # %lor.lhs.false.191
	movl	%r12d, %eax
	andl	$512, %eax              # imm = 0x200
	je	.LBB18_41
.LBB18_54:                              # %if.then.196
	movl	%edx, 20(%rsp)          # 4-byte Spill
	movslq	%r13d, %rax
	movq	2576(%rdi), %rcx
	movq	(%rcx,%rax,8), %rsi
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	40(%rsp), %rcx          # 8-byte Reload
	imull	%ecx, %eax
	movl	$0, 32(%rsp)            # 4-byte Folded Spill
	testq	%r9, %r9
	movl	408(%rsp), %r8d         # 4-byte Reload
	je	.LBB18_56
# BB#55:                                # %cond.true
	movl	8(%r9), %ecx
	movl	%ecx, 32(%rsp)          # 4-byte Spill
.LBB18_56:                              # %cond.end
	movq	%r9, %rdx
	movq	%rdx, 216(%rsp)         # 8-byte Spill
	movq	56(%rsp), %rcx          # 8-byte Reload
	testl	%ecx, %ecx
	movl	%r13d, %ebp
	jle	.LBB18_210
# BB#57:                                # %for.body.lr.ph
	movq	%rsi, 368(%rsp)         # 8-byte Spill
	leaq	(%rsi,%rax), %r9
	leaq	(%r9,%rax), %r13
	movl	536(%rsp), %r14d
	leaq	(%r13,%rax), %rdi
	addl	544(%rsp), %ebp
	movl	%r8d, %ecx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movl	%r12d, %ecx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	leaq	2(%rsi), %rcx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	leaq	2(%rax,%rsi), %rcx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	leaq	2(%rsi,%rax,2), %rcx
	movq	%rcx, 344(%rsp)         # 8-byte Spill
	leaq	(%rax,%rax,2), %rax
	leaq	2(%rsi,%rax), %rax
	movq	%rax, 336(%rsp)         # 8-byte Spill
	movq	152(%rsp), %r12         # 8-byte Reload
	leaq	4(%r12), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	leaq	5(%r12), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	64(%rsp), %rcx          # 8-byte Reload
	imull	%eax, %ecx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movl	%ebp, %ecx
	.align	16, 0x90
.LBB18_58:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_62 Depth 2
                                        #       Child Loop BB18_116 Depth 3
	movq	%rdi, 264(%rsp)         # 8-byte Spill
	movq	%r13, 272(%rsp)         # 8-byte Spill
	movq	%r9, 144(%rsp)          # 8-byte Spill
	movq	%rdx, %r12
	movq	(%r12), %r10
	movzwl	34(%r12), %ebp
	movl	%ecx, %eax
	cltd
	idivl	%ebp
	movl	%ecx, %r8d
	movl	%edx, %ecx
	imull	32(%rsp), %ecx          # 4-byte Folded Reload
	cmpw	$0, 38(%r12)
	movl	%r14d, %eax
	je	.LBB18_60
# BB#59:                                # %cond.false.225
                                        #   in Loop: Header=BB18_58 Depth=1
	movl	%r8d, %eax
	cltd
	idivl	%ebp
	movl	%eax, %edx
	movzwl	36(%r12), %eax
	imull	%edx, %eax
	addl	%r14d, %eax
.LBB18_60:                              # %cond.end.231
                                        #   in Loop: Header=BB18_58 Depth=1
	movl	%r8d, 36(%rsp)          # 4-byte Spill
	movq	48(%rsp), %rdx          # 8-byte Reload
	testl	%edx, %edx
	movq	%r9, %r8
	jle	.LBB18_147
# BB#61:                                # %for.body.239.lr.ph
                                        #   in Loop: Header=BB18_58 Depth=1
	leaq	(%r10,%rcx), %rdx
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	movl	20(%rsp), %ebp          # 4-byte Reload
	addl	%ebp, %eax
	movzwl	32(%r12), %ebx
	cltd
	idivl	%ebx
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	rop_proc_table(,%rax,8), %rax
	movq	%rax, 384(%rsp)         # 8-byte Spill
	leaq	8(%r10,%rcx), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	leaq	4(%r10,%rcx), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	leaq	8(%r10,%rcx), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movl	100(%rsp), %eax         # 4-byte Reload
	movl	%eax, %ebx
	movl	%ebp, %r11d
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	%eax, %ebp
	.align	16, 0x90
.LBB18_62:                              # %for.body.239
                                        #   Parent Loop BB18_58 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_116 Depth 3
	movq	%rbx, 256(%rsp)         # 8-byte Spill
	movl	%ebp, 280(%rsp)         # 4-byte Spill
	movl	%r11d, %ecx
	andl	$7, %ecx
	movl	%edx, %edi
	andl	$1, %edi
	subl	%ecx, %edi
	movl	%edi, 296(%rsp)         # 4-byte Spill
	movl	12(%r12), %eax
	movl	%eax, 184(%rsp)         # 4-byte Spill
	movl	%eax, %r13d
	subl	%edx, %r13d
	cmpl	%r13d, %ebp
	cmovlel	%ebp, %r13d
	movq	%r13, 312(%rsp)         # 8-byte Spill
	movl	%r11d, %eax
	orl	$-8, %eax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movq	%r8, %r10
	movl	%ebx, %r9d
	andl	$1, %r9d
	subl	%ecx, %r9d
	movl	$255, %esi
	shrl	%cl, %esi
	movl	%esi, 352(%rsp)         # 4-byte Spill
	leal	(%r11,%r13), %ecx
	movl	%ecx, 304(%rsp)         # 4-byte Spill
	negl	%ecx
	andb	$7, %cl
	movl	$255, %r14d
	shll	%cl, %r14d
	movl	%r14d, 208(%rsp)        # 4-byte Spill
	movl	%r11d, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rsi
	movq	%rsi, 376(%rsp)         # 8-byte Spill
	movl	%r9d, %ecx
	sarl	%ecx
	movslq	%ecx, %rbp
	movq	152(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rbp), %r8
	movl	%ebx, %ecx
	sarl	%ecx
	movslq	%ecx, %r15
	addq	%r15, %r8
	movl	%edi, %ecx
	sarl	%ecx
	movslq	%ecx, %r12
	movq	%r12, 176(%rsp)         # 8-byte Spill
	movl	%edx, %ecx
	sarl	%ecx
	movslq	%ecx, %rcx
	movq	%rcx, 320(%rsp)         # 8-byte Spill
	addl	%r13d, %eax
	movq	272(%rsp), %r13         # 8-byte Reload
	movq	%rax, 432(%rsp)         # 8-byte Spill
	movzbl	%r14b, %eax
	movl	$-1, %ecx
	cmovnsl	%ecx, %eax
	movl	%ebx, %ecx
	subl	%r11d, %ecx
	movq	%r11, %r14
	andl	$1, %ecx
	movl	%ecx, 360(%rsp)         # 4-byte Spill
	movq	136(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r12), %rcx
	movq	%rcx, 424(%rsp)         # 8-byte Spill
	movq	264(%rsp), %rcx         # 8-byte Reload
	movzbl	(%rcx,%rsi), %r12d
	movq	%rcx, %rdi
	movq	368(%rsp), %rcx         # 8-byte Reload
	movzbl	(%rcx,%rsi), %ecx
	movl	%ecx, 248(%rsp)         # 4-byte Spill
	movzbl	(%r10,%rsi), %ecx
	movl	%ecx, 392(%rsp)         # 4-byte Spill
	movzbl	(%r13,%rsi), %ecx
	movl	%ecx, 400(%rsp)         # 4-byte Spill
	movq	%r10, %r11
	jne	.LBB18_73
# BB#63:                                # %if.then.305
                                        #   in Loop: Header=BB18_62 Depth=2
	movq	%r15, 160(%rsp)         # 8-byte Spill
	movq	%rbp, 168(%rsp)         # 8-byte Spill
	movl	%edx, 328(%rsp)         # 4-byte Spill
	xorl	%ebp, %ebp
	testl	%r9d, %r9d
	js	.LBB18_65
# BB#64:                                # %if.then.308
                                        #   in Loop: Header=BB18_62 Depth=2
	movzbl	(%r8), %ecx
	movl	expand_4to1(,%rcx,4), %ebp
	shll	$6, %ebp
.LBB18_65:                              # %if.end.313
                                        #   in Loop: Header=BB18_62 Depth=2
	cmpl	$-2, %r9d
	movl	%eax, %edx
	movq	%rdi, %rbx
	jl	.LBB18_68
# BB#66:                                # %if.end.313
                                        #   in Loop: Header=BB18_62 Depth=2
	movq	432(%rsp), %rax         # 8-byte Reload
	cmpl	$-5, %eax
	jl	.LBB18_68
# BB#67:                                # %if.then.319
                                        #   in Loop: Header=BB18_62 Depth=2
	movzbl	1(%r8), %ecx
	movl	expand_4to1(,%rcx,4), %ecx
	shll	$4, %ecx
	orl	%ecx, %ebp
.LBB18_68:                              # %if.end.325
                                        #   in Loop: Header=BB18_62 Depth=2
	movl	304(%rsp), %r10d        # 4-byte Reload
	cmpl	$-4, %r9d
	jl	.LBB18_71
# BB#69:                                # %if.end.325
                                        #   in Loop: Header=BB18_62 Depth=2
	movq	432(%rsp), %rax         # 8-byte Reload
	cmpl	$-3, %eax
	jl	.LBB18_71
# BB#70:                                # %if.then.331
                                        #   in Loop: Header=BB18_62 Depth=2
	movzbl	2(%r8), %ecx
	movl	expand_4to1(,%rcx,4), %ecx
	shll	$2, %ecx
	orl	%ecx, %ebp
.LBB18_71:                              # %if.end.337
                                        #   in Loop: Header=BB18_62 Depth=2
	movl	352(%rsp), %edi         # 4-byte Reload
	movq	432(%rsp), %rax         # 8-byte Reload
	cmpl	$-1, %eax
	jl	.LBB18_85
# BB#72:                                # %if.then.340
                                        #   in Loop: Header=BB18_62 Depth=2
	movzbl	3(%r8), %ecx
	movq	%r8, 200(%rsp)          # 8-byte Spill
	orl	expand_4to1(,%rcx,4), %ebp
	jmp	.LBB18_87
	.align	16, 0x90
.LBB18_73:                              # %if.else.346
                                        #   in Loop: Header=BB18_62 Depth=2
	movq	%r15, 160(%rsp)         # 8-byte Spill
	movq	%rbp, 168(%rsp)         # 8-byte Spill
	movl	%edx, 328(%rsp)         # 4-byte Spill
	xorl	%ebp, %ebp
	testl	%r9d, %r9d
	js	.LBB18_75
# BB#74:                                # %if.then.349
                                        #   in Loop: Header=BB18_62 Depth=2
	movzbl	(%r8), %ecx
	andl	$15, %ecx
	movl	expand_4to1(,%rcx,4), %ebp
	shll	$7, %ebp
.LBB18_75:                              # %if.end.356
                                        #   in Loop: Header=BB18_62 Depth=2
	cmpl	$-2, %r9d
	movl	%eax, %edx
	movq	%rdi, %rbx
	jl	.LBB18_78
# BB#76:                                # %if.end.356
                                        #   in Loop: Header=BB18_62 Depth=2
	movq	432(%rsp), %rax         # 8-byte Reload
	cmpl	$-6, %eax
	jl	.LBB18_78
# BB#77:                                # %if.then.362
                                        #   in Loop: Header=BB18_62 Depth=2
	movzbl	1(%r8), %ecx
	movl	expand_4to1(,%rcx,4), %ecx
	shll	$5, %ecx
	orl	%ecx, %ebp
.LBB18_78:                              # %if.end.368
                                        #   in Loop: Header=BB18_62 Depth=2
	movl	304(%rsp), %r10d        # 4-byte Reload
	cmpl	$-4, %r9d
	jl	.LBB18_81
# BB#79:                                # %if.end.368
                                        #   in Loop: Header=BB18_62 Depth=2
	movq	432(%rsp), %rax         # 8-byte Reload
	cmpl	$-4, %eax
	jl	.LBB18_81
# BB#80:                                # %if.then.374
                                        #   in Loop: Header=BB18_62 Depth=2
	movzbl	2(%r8), %ecx
	movl	expand_4to1(,%rcx,4), %ecx
	shll	$3, %ecx
	orl	%ecx, %ebp
.LBB18_81:                              # %if.end.380
                                        #   in Loop: Header=BB18_62 Depth=2
	cmpl	$-6, %r9d
	jl	.LBB18_84
# BB#82:                                # %if.end.380
                                        #   in Loop: Header=BB18_62 Depth=2
	movq	432(%rsp), %rax         # 8-byte Reload
	cmpl	$-2, %eax
	jl	.LBB18_84
# BB#83:                                # %if.then.386
                                        #   in Loop: Header=BB18_62 Depth=2
	movzbl	3(%r8), %ecx
	movl	expand_4to1(,%rcx,4), %ecx
	addl	%ecx, %ecx
	orl	%ecx, %ebp
.LBB18_84:                              # %if.end.392
                                        #   in Loop: Header=BB18_62 Depth=2
	movl	352(%rsp), %edi         # 4-byte Reload
	movq	432(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	js	.LBB18_85
# BB#86:                                # %if.then.395
                                        #   in Loop: Header=BB18_62 Depth=2
	movzbl	4(%r8), %ecx
	movq	%r8, 200(%rsp)          # 8-byte Spill
	andl	$240, %ecx
	movl	expand_4to1(,%rcx,4), %ecx
	shrl	%ecx
	orl	%ecx, %ebp
	jmp	.LBB18_87
	.align	16, 0x90
.LBB18_85:                              #   in Loop: Header=BB18_62 Depth=2
	movq	%r8, 200(%rsp)          # 8-byte Spill
.LBB18_87:                              # %if.end.404
                                        #   in Loop: Header=BB18_62 Depth=2
	movl	296(%rsp), %eax         # 4-byte Reload
	movq	368(%rsp), %rcx         # 8-byte Reload
	movq	376(%rsp), %rsi         # 8-byte Reload
	leaq	(%rcx,%rsi), %rcx
	movq	%rcx, 408(%rsp)         # 8-byte Spill
	leaq	(%r11,%rsi), %r8
	leaq	(%r13,%rsi), %rcx
	movq	%rcx, 416(%rsp)         # 8-byte Spill
	leaq	(%rbx,%rsi), %r9
	movq	424(%rsp), %rsi         # 8-byte Reload
	addq	320(%rsp), %rsi         # 8-byte Folded Reload
	andl	%edi, %edx
	movl	328(%rsp), %ecx         # 4-byte Reload
	subl	%r14d, %ecx
	andl	$1, %ecx
	movl	%ecx, 352(%rsp)         # 4-byte Spill
	jne	.LBB18_98
# BB#88:                                # %if.then.408
                                        #   in Loop: Header=BB18_62 Depth=2
	xorl	%r13d, %r13d
	testl	%eax, %eax
	js	.LBB18_90
# BB#89:                                # %if.then.411
                                        #   in Loop: Header=BB18_62 Depth=2
	movzbl	(%rsi), %ecx
	movl	expand_4to1(,%rcx,4), %r13d
	shll	$6, %r13d
.LBB18_90:                              # %if.end.416
                                        #   in Loop: Header=BB18_62 Depth=2
	cmpl	$-2, %eax
	movq	432(%rsp), %rbx         # 8-byte Reload
	jl	.LBB18_93
# BB#91:                                # %if.end.416
                                        #   in Loop: Header=BB18_62 Depth=2
	cmpl	$-5, %ebx
	jl	.LBB18_93
# BB#92:                                # %if.then.422
                                        #   in Loop: Header=BB18_62 Depth=2
	movzbl	1(%rsi), %ecx
	movl	expand_4to1(,%rcx,4), %ecx
	shll	$4, %ecx
	orl	%ecx, %r13d
.LBB18_93:                              # %if.end.428
                                        #   in Loop: Header=BB18_62 Depth=2
	cmpl	$-4, %eax
	jl	.LBB18_96
# BB#94:                                # %if.end.428
                                        #   in Loop: Header=BB18_62 Depth=2
	cmpl	$-3, %ebx
	jl	.LBB18_96
# BB#95:                                # %if.then.434
                                        #   in Loop: Header=BB18_62 Depth=2
	movzbl	2(%rsi), %eax
	movl	expand_4to1(,%rax,4), %eax
	shll	$2, %eax
	orl	%eax, %r13d
.LBB18_96:                              # %if.end.440
                                        #   in Loop: Header=BB18_62 Depth=2
	movq	312(%rsp), %rax         # 8-byte Reload
	cmpl	$-1, %ebx
	jl	.LBB18_110
# BB#97:                                # %if.then.443
                                        #   in Loop: Header=BB18_62 Depth=2
	movl	%edx, 224(%rsp)         # 4-byte Spill
	movq	%r8, 288(%rsp)          # 8-byte Spill
	movq	%r9, 296(%rsp)          # 8-byte Spill
	movl	%r10d, 304(%rsp)        # 4-byte Spill
	movq	%rax, 312(%rsp)         # 8-byte Spill
	movzbl	3(%rsi), %eax
	movq	%rsi, 424(%rsp)         # 8-byte Spill
	orl	expand_4to1(,%rax,4), %r13d
	jmp	.LBB18_112
	.align	16, 0x90
.LBB18_98:                              # %if.else.449
                                        #   in Loop: Header=BB18_62 Depth=2
	xorl	%r13d, %r13d
	testl	%eax, %eax
	js	.LBB18_100
# BB#99:                                # %if.then.452
                                        #   in Loop: Header=BB18_62 Depth=2
	movzbl	(%rsi), %ecx
	andl	$15, %ecx
	movl	expand_4to1(,%rcx,4), %r13d
	shll	$7, %r13d
.LBB18_100:                             # %if.end.459
                                        #   in Loop: Header=BB18_62 Depth=2
	cmpl	$-2, %eax
	movq	432(%rsp), %rbx         # 8-byte Reload
	jl	.LBB18_103
# BB#101:                               # %if.end.459
                                        #   in Loop: Header=BB18_62 Depth=2
	cmpl	$-6, %ebx
	jl	.LBB18_103
# BB#102:                               # %if.then.465
                                        #   in Loop: Header=BB18_62 Depth=2
	movzbl	1(%rsi), %ecx
	movl	expand_4to1(,%rcx,4), %ecx
	shll	$5, %ecx
	orl	%ecx, %r13d
.LBB18_103:                             # %if.end.471
                                        #   in Loop: Header=BB18_62 Depth=2
	cmpl	$-4, %eax
	jl	.LBB18_106
# BB#104:                               # %if.end.471
                                        #   in Loop: Header=BB18_62 Depth=2
	cmpl	$-4, %ebx
	jl	.LBB18_106
# BB#105:                               # %if.then.477
                                        #   in Loop: Header=BB18_62 Depth=2
	movzbl	2(%rsi), %ecx
	movl	expand_4to1(,%rcx,4), %ecx
	shll	$3, %ecx
	orl	%ecx, %r13d
.LBB18_106:                             # %if.end.483
                                        #   in Loop: Header=BB18_62 Depth=2
	cmpl	$-6, %eax
	jl	.LBB18_109
# BB#107:                               # %if.end.483
                                        #   in Loop: Header=BB18_62 Depth=2
	cmpl	$-2, %ebx
	jl	.LBB18_109
# BB#108:                               # %if.then.489
                                        #   in Loop: Header=BB18_62 Depth=2
	movzbl	3(%rsi), %eax
	movl	expand_4to1(,%rax,4), %eax
	addl	%eax, %eax
	orl	%eax, %r13d
.LBB18_109:                             # %if.end.495
                                        #   in Loop: Header=BB18_62 Depth=2
	movq	312(%rsp), %rax         # 8-byte Reload
	testl	%ebx, %ebx
	js	.LBB18_110
# BB#111:                               # %if.then.498
                                        #   in Loop: Header=BB18_62 Depth=2
	movl	%edx, 224(%rsp)         # 4-byte Spill
	movq	%r8, 288(%rsp)          # 8-byte Spill
	movq	%r9, 296(%rsp)          # 8-byte Spill
	movl	%r10d, 304(%rsp)        # 4-byte Spill
	movq	%rax, 312(%rsp)         # 8-byte Spill
	movzbl	4(%rsi), %eax
	movq	%rsi, 424(%rsp)         # 8-byte Spill
	andl	$240, %eax
	movl	expand_4to1(,%rax,4), %eax
	shrl	%eax
	orl	%eax, %r13d
	jmp	.LBB18_112
	.align	16, 0x90
.LBB18_110:                             #   in Loop: Header=BB18_62 Depth=2
	movl	%edx, 224(%rsp)         # 4-byte Spill
	movq	%rsi, 424(%rsp)         # 8-byte Spill
	movq	%r8, 288(%rsp)          # 8-byte Spill
	movq	%r9, 296(%rsp)          # 8-byte Spill
	movl	%r10d, 304(%rsp)        # 4-byte Spill
	movq	%rax, 312(%rsp)         # 8-byte Spill
.LBB18_112:                             # %if.end.507
                                        #   in Loop: Header=BB18_62 Depth=2
	movl	400(%rsp), %eax         # 4-byte Reload
	orl	%r12d, %eax
	movq	%rax, 232(%rsp)         # 8-byte Spill
	movl	392(%rsp), %eax         # 4-byte Reload
	movl	%eax, %ebx
	orl	%r12d, %ebx
	movl	248(%rsp), %r15d        # 4-byte Reload
	movl	%r15d, %edi
	orl	%r12d, %edi
	movl	%ebp, %esi
	shrl	$24, %esi
	orl	%ebp, %esi
	movl	%r13d, %edx
	shrl	$24, %edx
	orl	%r13d, %edx
	movl	%r12d, 240(%rsp)        # 4-byte Spill
	movq	384(%rsp), %r12         # 8-byte Reload
	callq	*%r12
	movq	%rax, %r14
	movl	%ebp, %esi
	shrl	$16, %esi
	orl	%ebp, %esi
	movl	%r13d, %edx
	shrl	$16, %edx
	orl	%r13d, %edx
	movq	%rbx, %rdi
	callq	*%r12
	movq	%rax, %rbx
	movl	%ebp, %esi
	shrl	$8, %esi
	orl	%ebp, %esi
	movl	%r13d, %edx
	shrl	$8, %edx
	orl	%r13d, %edx
	movq	232(%rsp), %rdi         # 8-byte Reload
	callq	*%r12
	movl	%ebx, %ecx
	andl	%r14d, %ecx
	andl	%eax, %ecx
	movl	%ecx, %esi
	orl	$-256, %esi
	xorl	$255, %esi
	movl	224(%rsp), %edi         # 4-byte Reload
	andl	%edi, %r14d
	andl	%esi, %r14d
	movl	%edi, %edx
	orl	$-256, %edx
	xorl	$255, %edx
	andl	%edx, %r15d
	orl	%r14d, %r15d
	movq	408(%rsp), %r9          # 8-byte Reload
	movb	%r15b, (%r9)
	andl	%edi, %ebx
	andl	%esi, %ebx
	movl	392(%rsp), %ebp         # 4-byte Reload
	andl	%edx, %ebp
	orl	%ebx, %ebp
	movq	288(%rsp), %rbx         # 8-byte Reload
	movb	%bpl, (%rbx)
	andl	%edi, %eax
	andl	%esi, %eax
	movl	400(%rsp), %esi         # 4-byte Reload
	andl	%edx, %esi
	orl	%eax, %esi
	movq	416(%rsp), %r8          # 8-byte Reload
	movb	%sil, (%r8)
	andl	%edi, %ecx
	andl	240(%rsp), %edx         # 4-byte Folded Reload
	orl	%ecx, %edx
	movq	296(%rsp), %rcx         # 8-byte Reload
	movb	%dl, (%rcx)
	movq	432(%rsp), %rdi         # 8-byte Reload
	testl	%edi, %edi
	movq	216(%rsp), %r12         # 8-byte Reload
	jle	.LBB18_146
# BB#113:                               # %while.cond.preheader
                                        #   in Loop: Header=BB18_62 Depth=2
	movb	1(%rcx), %al
	movb	%al, 400(%rsp)          # 1-byte Spill
	movb	1(%r9), %al
	movb	1(%rbx), %bpl
	movb	1(%r8), %r12b
	movq	200(%rsp), %rsi         # 8-byte Reload
	movzbl	4(%rsi), %edx
	cmpl	$9, %edi
	movl	280(%rsp), %r15d        # 4-byte Reload
	jl	.LBB18_114
# BB#115:                               # %while.body.lr.ph
                                        #   in Loop: Header=BB18_62 Depth=2
	movq	192(%rsp), %rsi         # 8-byte Reload
	leal	-10(%rsi), %ecx
	movl	328(%rsp), %edi         # 4-byte Reload
	decl	%edi
	subl	184(%rsp), %edi         # 4-byte Folded Reload
	notl	%r15d
	cmpl	%r15d, %edi
	cmovgel	%edi, %r15d
	subl	%r15d, %ecx
	shrl	$3, %ecx
	movq	320(%rsp), %r10         # 8-byte Reload
	leaq	(%r10,%rcx,4), %rdi
	movq	176(%rsp), %r9          # 8-byte Reload
	addq	%r9, %rdi
	movq	%rdi, 248(%rsp)         # 8-byte Spill
	movq	376(%rsp), %r8          # 8-byte Reload
	leaq	(%r8,%rcx), %r14
	movq	%r14, 240(%rsp)         # 8-byte Spill
	movq	120(%rsp), %rdi         # 8-byte Reload
	leaq	(%rdi,%r14), %rdi
	movq	%rdi, 288(%rsp)         # 8-byte Spill
	movq	160(%rsp), %rdi         # 8-byte Reload
	leaq	(%rdi,%rcx,4), %rcx
	movq	168(%rsp), %r13         # 8-byte Reload
	addq	%r13, %rcx
	movq	%rcx, 232(%rsp)         # 8-byte Spill
	addq	%r13, %rdi
	movq	336(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r14), %rcx
	movq	%rcx, 296(%rsp)         # 8-byte Spill
	movq	104(%rsp), %rcx         # 8-byte Reload
	leaq	(%rdi,%rcx), %rbx
	movq	%rbx, 328(%rsp)         # 8-byte Spill
	addq	%r10, %r9
	movq	72(%rsp), %rcx          # 8-byte Reload
	leaq	(%r9,%rcx), %rcx
	movq	%rcx, 424(%rsp)         # 8-byte Spill
	movq	64(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%r8), %rcx
	movq	%rcx, 320(%rsp)         # 8-byte Spill
	decl	%esi
	subl	%r15d, %esi
	xorl	%r14d, %r14d
	movb	400(%rsp), %r10b        # 1-byte Reload
	.align	16, 0x90
.LBB18_116:                             # %while.body
                                        #   Parent Loop BB18_58 Depth=1
                                        #     Parent Loop BB18_62 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rbx,%r14,4), %ecx
	cmpl	$0, 360(%rsp)           # 4-byte Folded Reload
	jne	.LBB18_118
# BB#117:                               # %if.then.637
                                        #   in Loop: Header=BB18_116 Depth=3
	movb	%bpl, %r8b
	movb	%r12b, 408(%rsp)        # 1-byte Spill
	movl	expand_4to1(,%rdx,4), %edx
	shll	$6, %edx
	movl	expand_4to1(,%rcx,4), %ecx
	shll	$4, %ecx
	orl	%edx, %ecx
	movzbl	1(%rbx,%r14,4), %edx
	movl	expand_4to1(,%rdx,4), %r15d
	shll	$2, %r15d
	orl	%ecx, %r15d
	movzbl	2(%rbx,%r14,4), %ecx
	orl	expand_4to1(,%rcx,4), %r15d
	jmp	.LBB18_119
	.align	16, 0x90
.LBB18_118:                             # %if.else.656
                                        #   in Loop: Header=BB18_116 Depth=3
	movb	%bpl, %r8b
	movb	%r12b, 408(%rsp)        # 1-byte Spill
	andl	$15, %edx
	movl	expand_4to1(,%rdx,4), %edx
	shll	$7, %edx
	movl	expand_4to1(,%rcx,4), %ecx
	shll	$5, %ecx
	orl	%edx, %ecx
	movzbl	1(%rbx,%r14,4), %edx
	movl	expand_4to1(,%rdx,4), %edx
	shll	$3, %edx
	orl	%ecx, %edx
	movzbl	2(%rbx,%r14,4), %ecx
	movl	expand_4to1(,%rcx,4), %ecx
	addl	%ecx, %ecx
	orl	%edx, %ecx
	movzbl	3(%rbx,%r14,4), %edx
	andl	$240, %edx
	movl	expand_4to1(,%rdx,4), %r15d
	shrl	%r15d
	orl	%ecx, %r15d
.LBB18_119:                             # %if.end.685
                                        #   in Loop: Header=BB18_116 Depth=3
	movq	424(%rsp), %rdi         # 8-byte Reload
	movq	376(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r14), %rbx
	movq	320(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r14), %rbp
	movzbl	-4(%rdi,%r14,4), %edx
	movzbl	-3(%rdi,%r14,4), %ecx
	cmpl	$0, 352(%rsp)           # 4-byte Folded Reload
	jne	.LBB18_121
# BB#120:                               # %if.then.689
                                        #   in Loop: Header=BB18_116 Depth=3
	movq	%rbp, 392(%rsp)         # 8-byte Spill
	movq	%rbx, 400(%rsp)         # 8-byte Spill
	movq	%rsi, 432(%rsp)         # 8-byte Spill
	movl	expand_4to1(,%rdx,4), %edx
	shll	$6, %edx
	movl	expand_4to1(,%rcx,4), %ecx
	shll	$4, %ecx
	orl	%edx, %ecx
	movzbl	-2(%rdi,%r14,4), %edx
	movl	expand_4to1(,%rdx,4), %r13d
	shll	$2, %r13d
	orl	%ecx, %r13d
	movzbl	-1(%rdi,%r14,4), %ecx
	movq	%rdi, 424(%rsp)         # 8-byte Spill
	orl	expand_4to1(,%rcx,4), %r13d
	jmp	.LBB18_122
	.align	16, 0x90
.LBB18_121:                             # %if.else.708
                                        #   in Loop: Header=BB18_116 Depth=3
	movq	%rbp, 392(%rsp)         # 8-byte Spill
	movq	%rbx, 400(%rsp)         # 8-byte Spill
	movq	%rsi, 432(%rsp)         # 8-byte Spill
	andl	$15, %edx
	movl	expand_4to1(,%rdx,4), %edx
	shll	$7, %edx
	movl	expand_4to1(,%rcx,4), %ecx
	shll	$5, %ecx
	orl	%edx, %ecx
	movzbl	-2(%rdi,%r14,4), %edx
	movl	expand_4to1(,%rdx,4), %edx
	shll	$3, %edx
	orl	%ecx, %edx
	movzbl	-1(%rdi,%r14,4), %ecx
	movl	expand_4to1(,%rcx,4), %ecx
	addl	%ecx, %ecx
	orl	%edx, %ecx
	movzbl	(%rdi,%r14,4), %edx
	movq	%rdi, 424(%rsp)         # 8-byte Spill
	andl	$240, %edx
	movl	expand_4to1(,%rdx,4), %r13d
	shrl	%r13d
	orl	%ecx, %r13d
.LBB18_122:                             # %if.end.737
                                        #   in Loop: Header=BB18_116 Depth=3
	movb	%r8b, %bl
	orb	%r10b, %al
	movzbl	%al, %edi
	movl	%r15d, %esi
	shrl	$24, %esi
	orl	%r15d, %esi
	movl	%r13d, %edx
	shrl	$24, %edx
	orl	%r13d, %edx
	movq	384(%rsp), %rbp         # 8-byte Reload
	movb	%r10b, %r12b
	callq	*%rbp
	movq	%rax, 416(%rsp)         # 8-byte Spill
	orb	%r12b, %bl
	movzbl	%bl, %edi
	movl	%r15d, %esi
	shrl	$16, %esi
	orl	%r15d, %esi
	movl	%r13d, %edx
	shrl	$16, %edx
	orl	%r13d, %edx
	callq	*%rbp
	movq	%rax, %rbx
	movb	408(%rsp), %al          # 1-byte Reload
	orb	%r12b, %al
	movzbl	%al, %edi
	movl	%r15d, %esi
	shrl	$8, %esi
	orl	%r15d, %esi
	movl	%r13d, %edx
	shrl	$8, %edx
	orl	%r13d, %edx
	callq	*%rbp
	movq	%rbx, %rcx
	movq	416(%rsp), %rdi         # 8-byte Reload
	andq	%rdi, %rcx
	andq	%rax, %rcx
	movl	%ecx, %edx
	orl	$-256, %edx
	xorl	$255, %edx
	movl	%edx, %esi
	andl	%edi, %esi
	movl	%edx, %edi
	andl	%ebx, %edi
	andl	%eax, %edx
	movq	368(%rsp), %rbp         # 8-byte Reload
	movq	400(%rsp), %rbx         # 8-byte Reload
	movb	%sil, 1(%rbp,%rbx)
	movq	392(%rsp), %r8          # 8-byte Reload
	movb	%dil, 1(%rbp,%r8)
	movq	344(%rsp), %rax         # 8-byte Reload
	movq	%rax, %rsi
	movb	%dl, -1(%rsi,%rbx)
	movq	336(%rsp), %rax         # 8-byte Reload
	movb	%cl, -1(%rax,%rbx)
	movb	(%rax,%rbx), %r10b
	movb	2(%rbp,%rbx), %al
	movb	2(%rbp,%r8), %bpl
	movb	(%rsi,%rbx), %r12b
	movq	328(%rsp), %rbx         # 8-byte Reload
	movzbl	3(%rbx,%r14,4), %edx
	incq	%r14
	movq	432(%rsp), %rdi         # 8-byte Reload
	leal	-8(%rdi), %esi
	cmpl	$8, %esi
	jg	.LBB18_116
# BB#123:                               # %while.cond.while.end_crit_edge
                                        #   in Loop: Header=BB18_62 Depth=2
	addl	$-16, %edi
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	248(%rsp), %rbx         # 8-byte Reload
	leaq	(%rcx,%rbx), %r14
	movq	128(%rsp), %rsi         # 8-byte Reload
	movq	240(%rsp), %rcx         # 8-byte Reload
	leaq	(%rsi,%rcx), %r9
	movq	344(%rsp), %rsi         # 8-byte Reload
	leaq	(%rcx,%rsi), %r8
	movq	80(%rsp), %rsi          # 8-byte Reload
	leaq	(%rbx,%rsi), %rbx
	movq	112(%rsp), %rsi         # 8-byte Reload
	movq	232(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rsi), %rsi
	movq	%rbx, %r13
	jmp	.LBB18_124
	.align	16, 0x90
.LBB18_114:                             #   in Loop: Header=BB18_62 Depth=2
	addl	$-8, %edi
	incq	%rcx
	movq	%rcx, 296(%rsp)         # 8-byte Spill
	incq	%r8
	incq	%rbx
	movq	%rbx, 288(%rsp)         # 8-byte Spill
	incq	%r9
	movq	424(%rsp), %r13         # 8-byte Reload
	leaq	4(%r13), %r14
	movb	400(%rsp), %r10b        # 1-byte Reload
.LBB18_124:                             # %while.end
                                        #   in Loop: Header=BB18_62 Depth=2
	cmpl	$0, 360(%rsp)           # 4-byte Folded Reload
	jne	.LBB18_129
# BB#125:                               # %if.then.830
                                        #   in Loop: Header=BB18_62 Depth=2
	movl	expand_4to1(,%rdx,4), %ebx
	shll	$6, %ebx
	cmpl	$-5, %edi
	jl	.LBB18_134
# BB#126:                               # %if.end.843
                                        #   in Loop: Header=BB18_62 Depth=2
	movzbl	5(%rsi), %edx
	movl	expand_4to1(,%rdx,4), %edx
	shll	$4, %edx
	orl	%edx, %ebx
	cmpl	$-3, %edi
	jl	.LBB18_134
# BB#127:                               # %if.end.852
                                        #   in Loop: Header=BB18_62 Depth=2
	movzbl	6(%rsi), %edx
	movl	expand_4to1(,%rdx,4), %edx
	shll	$2, %edx
	orl	%edx, %ebx
	cmpl	$-1, %edi
	jl	.LBB18_134
# BB#128:                               # %if.then.855
                                        #   in Loop: Header=BB18_62 Depth=2
	movzbl	7(%rsi), %edx
	orl	expand_4to1(,%rdx,4), %ebx
	jmp	.LBB18_134
	.align	16, 0x90
.LBB18_129:                             # %if.else.861
                                        #   in Loop: Header=BB18_62 Depth=2
	andl	$15, %edx
	movl	expand_4to1(,%rdx,4), %ebx
	shll	$7, %ebx
	cmpl	$-6, %edi
	jl	.LBB18_134
# BB#130:                               # %if.end.876
                                        #   in Loop: Header=BB18_62 Depth=2
	movzbl	5(%rsi), %edx
	movl	expand_4to1(,%rdx,4), %edx
	shll	$5, %edx
	orl	%edx, %ebx
	cmpl	$-4, %edi
	jl	.LBB18_134
# BB#131:                               # %if.end.885
                                        #   in Loop: Header=BB18_62 Depth=2
	movzbl	6(%rsi), %edx
	movl	expand_4to1(,%rdx,4), %edx
	shll	$3, %edx
	orl	%edx, %ebx
	cmpl	$-2, %edi
	jl	.LBB18_134
# BB#132:                               # %if.end.894
                                        #   in Loop: Header=BB18_62 Depth=2
	movzbl	7(%rsi), %edx
	movl	expand_4to1(,%rdx,4), %edx
	addl	%edx, %edx
	orl	%edx, %ebx
	testl	%edi, %edi
	js	.LBB18_134
# BB#133:                               # %if.then.897
                                        #   in Loop: Header=BB18_62 Depth=2
	movzbl	8(%rsi), %edx
	andl	$240, %edx
	movl	expand_4to1(,%rdx,4), %edx
	shrl	%edx
	orl	%edx, %ebx
	.align	16, 0x90
.LBB18_134:                             # %if.end.906
                                        #   in Loop: Header=BB18_62 Depth=2
	movzbl	(%r14), %ecx
	cmpl	$0, 352(%rsp)           # 4-byte Folded Reload
	jne	.LBB18_139
# BB#135:                               # %if.then.910
                                        #   in Loop: Header=BB18_62 Depth=2
	movl	expand_4to1(,%rcx,4), %r15d
	shll	$6, %r15d
	cmpl	$-5, %edi
	jl	.LBB18_140
# BB#136:                               # %if.end.923
                                        #   in Loop: Header=BB18_62 Depth=2
	movzbl	5(%r13), %ecx
	movl	expand_4to1(,%rcx,4), %ecx
	shll	$4, %ecx
	orl	%ecx, %r15d
	cmpl	$-3, %edi
	jl	.LBB18_140
# BB#137:                               # %if.end.932
                                        #   in Loop: Header=BB18_62 Depth=2
	movq	%r9, 408(%rsp)          # 8-byte Spill
	movq	%r8, 416(%rsp)          # 8-byte Spill
	movzbl	6(%r13), %ecx
	movl	expand_4to1(,%rcx,4), %ecx
	shll	$2, %ecx
	orl	%ecx, %r15d
	cmpl	$-1, %edi
	jl	.LBB18_145
# BB#138:                               # %if.then.935
                                        #   in Loop: Header=BB18_62 Depth=2
	movzbl	7(%r13), %ecx
	orl	expand_4to1(,%rcx,4), %r15d
	jmp	.LBB18_145
	.align	16, 0x90
.LBB18_139:                             # %if.else.941
                                        #   in Loop: Header=BB18_62 Depth=2
	andl	$15, %ecx
	movl	expand_4to1(,%rcx,4), %r15d
	shll	$7, %r15d
	cmpl	$-6, %edi
	jl	.LBB18_140
# BB#141:                               # %if.end.956
                                        #   in Loop: Header=BB18_62 Depth=2
	movzbl	5(%r13), %ecx
	movl	expand_4to1(,%rcx,4), %ecx
	shll	$5, %ecx
	orl	%ecx, %r15d
	cmpl	$-4, %edi
	jl	.LBB18_140
# BB#142:                               # %if.end.965
                                        #   in Loop: Header=BB18_62 Depth=2
	movzbl	6(%r13), %ecx
	movl	expand_4to1(,%rcx,4), %ecx
	shll	$3, %ecx
	orl	%ecx, %r15d
	cmpl	$-2, %edi
	jl	.LBB18_140
# BB#143:                               # %if.end.974
                                        #   in Loop: Header=BB18_62 Depth=2
	movzbl	7(%r13), %ecx
	movl	expand_4to1(,%rcx,4), %ecx
	addl	%ecx, %ecx
	orl	%ecx, %r15d
	testl	%edi, %edi
	js	.LBB18_140
# BB#144:                               # %if.then.977
                                        #   in Loop: Header=BB18_62 Depth=2
	movq	%r9, 408(%rsp)          # 8-byte Spill
	movq	%r8, 416(%rsp)          # 8-byte Spill
	movzbl	8(%r13), %ecx
	andl	$240, %ecx
	movl	expand_4to1(,%rcx,4), %ecx
	shrl	%ecx
	orl	%ecx, %r15d
	jmp	.LBB18_145
	.align	16, 0x90
.LBB18_140:                             #   in Loop: Header=BB18_62 Depth=2
	movq	%r9, 408(%rsp)          # 8-byte Spill
	movq	%r8, 416(%rsp)          # 8-byte Spill
.LBB18_145:                             # %if.end.986
                                        #   in Loop: Header=BB18_62 Depth=2
	movzbl	%al, %esi
	movl	%esi, 432(%rsp)         # 4-byte Spill
	movzbl	%r10b, %r14d
	movb	%r14b, %al
	orb	%sil, %al
	movzbl	%al, %edi
	movl	%ebx, %esi
	shrl	$24, %esi
	orl	%ebx, %esi
	movl	%r15d, %edx
	shrl	$24, %edx
	orl	%r15d, %edx
	callq	*384(%rsp)              # 8-byte Folded Reload
	movq	%rax, %r13
	movzbl	%bpl, %eax
	movl	%eax, 424(%rsp)         # 4-byte Spill
	orb	%r14b, %al
	movzbl	%al, %edi
	movl	%ebx, %esi
	shrl	$16, %esi
	orl	%ebx, %esi
	movl	%r15d, %edx
	shrl	$16, %edx
	orl	%r15d, %edx
	callq	*384(%rsp)              # 8-byte Folded Reload
	movq	%rax, %rbp
	movzbl	%r12b, %r12d
	movb	%r12b, %al
	orb	%r14b, %al
	movzbl	%al, %edi
	movl	%ebx, %esi
	shrl	$8, %esi
	orl	%ebx, %esi
	movl	%r15d, %edx
	shrl	$8, %edx
	orl	%r15d, %edx
	callq	*384(%rsp)              # 8-byte Folded Reload
	movl	%ebp, %ecx
	andl	%r13d, %ecx
	andl	%eax, %ecx
	movl	%ecx, %esi
	orl	$-256, %esi
	xorl	$255, %esi
	movl	208(%rsp), %edi         # 4-byte Reload
	andl	%edi, %r13d
	andl	%esi, %r13d
	movl	%edi, %edx
	orl	$-256, %edx
	xorl	$255, %edx
	movl	432(%rsp), %ebx         # 4-byte Reload
	andl	%edx, %ebx
	orl	%r13d, %ebx
	movl	%ebx, %r8d
	movq	408(%rsp), %rbx         # 8-byte Reload
	movb	%r8b, (%rbx)
	andl	%edi, %ebp
	andl	%esi, %ebp
	movl	424(%rsp), %ebx         # 4-byte Reload
	andl	%edx, %ebx
	orl	%ebp, %ebx
	movq	288(%rsp), %rbp         # 8-byte Reload
	movb	%bl, (%rbp)
	andl	%edi, %eax
	andl	%esi, %eax
	andl	%edx, %r12d
	orl	%eax, %r12d
	movq	416(%rsp), %rax         # 8-byte Reload
	movb	%r12b, (%rax)
	andl	%edi, %ecx
	andl	%r14d, %edx
	orl	%ecx, %edx
	movq	296(%rsp), %rax         # 8-byte Reload
	movb	%dl, (%rax)
	movq	216(%rsp), %r12         # 8-byte Reload
.LBB18_146:                             # %cleanup
                                        #   in Loop: Header=BB18_62 Depth=2
	movq	256(%rsp), %rbx         # 8-byte Reload
	movq	312(%rsp), %rax         # 8-byte Reload
	leal	(%rbx,%rax), %ebx
	xorl	%edx, %edx
	movl	280(%rsp), %ebp         # 4-byte Reload
	subl	%eax, %ebp
	movl	304(%rsp), %eax         # 4-byte Reload
	movl	%eax, %r11d
	movq	144(%rsp), %r8          # 8-byte Reload
	movq	272(%rsp), %r13         # 8-byte Reload
	movl	536(%rsp), %edi
	movl	%edi, %r14d
	movq	264(%rsp), %rdi         # 8-byte Reload
	jg	.LBB18_62
.LBB18_147:                             # %for.end
                                        #   in Loop: Header=BB18_58 Depth=1
	movq	%r12, %rdx
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	%rax, 368(%rsp)         # 8-byte Folded Spill
	addq	%rax, %r8
	addq	%rax, %r13
	addq	%rax, %rdi
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, %rsi
	addq	%rsi, 152(%rsp)         # 8-byte Folded Spill
	movl	36(%rsp), %ecx          # 4-byte Reload
	incl	%ecx
	addq	%rax, 128(%rsp)         # 8-byte Folded Spill
	addq	%rax, 120(%rsp)         # 8-byte Folded Spill
	addq	%rax, 344(%rsp)         # 8-byte Folded Spill
	addq	%rax, 336(%rsp)         # 8-byte Folded Spill
	addq	%rsi, 112(%rsp)         # 8-byte Folded Spill
	addq	%rsi, 104(%rsp)         # 8-byte Folded Spill
	movq	56(%rsp), %rax          # 8-byte Reload
	cmpl	$1, %eax
	leal	-1(%rax), %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	%r8, %r9
	jg	.LBB18_58
	jmp	.LBB18_210
.LBB18_41:                              # %if.end.1115
	movq	%r10, 384(%rsp)         # 8-byte Spill
	movq	%rbp, 376(%rsp)         # 8-byte Spill
	movq	%rbx, 416(%rsp)         # 8-byte Spill
	movq	%rcx, 424(%rsp)         # 8-byte Spill
	movl	%edx, %esi
	andl	$7, %esi
	movslq	%r13d, %rax
	movq	2576(%rdi), %rcx
	movq	(%rcx,%rax,8), %rcx
	movq	%rcx, 304(%rsp)         # 8-byte Spill
	movl	%edx, %eax
	sarl	$3, %eax
	cltq
	movq	%rax, 328(%rsp)         # 8-byte Spill
	leaq	(%rcx,%rax), %r9
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	40(%rsp), %rcx          # 8-byte Reload
	imull	%ecx, %eax
	leaq	(%r9,%rax), %r10
	movl	$255, %r13d
	movl	$255, %ebx
	movb	%sil, %cl
	shrl	%cl, %ebx
	movq	48(%rsp), %rbp          # 8-byte Reload
	addl	%esi, %ebp
	movq	%rsi, %rdi
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	movl	%ebp, %ecx
	negl	%ecx
	andb	$7, %cl
	shll	%cl, %r13d
	movl	%r13d, 256(%rsp)        # 4-byte Spill
	cmpl	$8, %ebp
	movl	$-1, %ecx
	cmovll	%r13d, %ecx
	andl	%ebx, %ecx
	movl	%ecx, 272(%rsp)         # 4-byte Spill
	leaq	(%r10,%rax), %r11
	testq	%r8, %r8
	leaq	(%r11,%rax), %r8
	je	.LBB18_42
# BB#183:                               # %if.else.1738
	testl	%r14d, %r14d
	je	.LBB18_193
# BB#184:                               # %if.then.1740
	movl	%r12d, %ecx
	movq	56(%rsp), %rbp          # 8-byte Reload
	testl	%ebp, %ebp
	movl	400(%rsp), %esi         # 4-byte Reload
	jle	.LBB18_210
# BB#185:                               # %for.body.1748.lr.ph
	movq	rop_proc_table(,%rcx,8), %rcx
	movq	%rcx, 344(%rsp)         # 8-byte Spill
	movq	48(%rsp), %rcx          # 8-byte Reload
	leal	-8(%rcx), %ecx
	movl	%ecx, 216(%rsp)         # 4-byte Spill
	movl	272(%rsp), %ecx         # 4-byte Reload
	orl	$-256, %ecx
	xorl	$255, %ecx
	movl	%ecx, 208(%rsp)         # 4-byte Spill
	movl	256(%rsp), %ecx         # 4-byte Reload
	orl	$-256, %ecx
	xorl	$255, %ecx
	movl	%ecx, 200(%rsp)         # 4-byte Spill
	decl	%edx
	subl	%esi, %edx
	notl	%r15d
	cmpl	%r15d, %edx
	cmovgel	%edx, %r15d
	leal	16(%r15), %ecx
	movq	%rdi, %r12
	subl	%r12d, %ecx
	cmpl	$-10, %ecx
	movl	$-9, %esi
	cmovgl	%ecx, %esi
	leal	-9(%rsi,%r12), %ecx
	subl	%r15d, %ecx
	shrl	$3, %ecx
	movq	328(%rsp), %rbx         # 8-byte Reload
	leaq	(%rbx,%rcx), %rsi
	movq	304(%rsp), %rdx         # 8-byte Reload
	leaq	2(%rdx,%rsi), %rdi
	movq	%rdi, 280(%rsp)         # 8-byte Spill
	addq	%rax, %rsi
	leaq	2(%rdx,%rsi), %rsi
	movq	%rsi, 264(%rsp)         # 8-byte Spill
	leaq	(%rbx,%rax,2), %rsi
	addq	%rcx, %rsi
	leaq	2(%rdx,%rsi), %rsi
	movq	%rsi, 248(%rsp)         # 8-byte Spill
	leaq	(%rax,%rax,2), %rax
	addq	%rbx, %rax
	addq	%rcx, %rax
	leaq	2(%rdx,%rax), %rax
	movq	%rax, 240(%rsp)         # 8-byte Spill
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	64(%rsp), %rcx          # 8-byte Reload
	imull	%eax, %ecx
	leaq	1(%rbx,%rcx), %rax
	movq	%rax, 368(%rsp)         # 8-byte Spill
	addl	$-9, %r12d
	subl	%r15d, %r12d
	movq	%r12, 136(%rsp)         # 8-byte Spill
	leaq	1(%rbx,%rcx,2), %rax
	movq	%rax, 400(%rsp)         # 8-byte Spill
	leaq	(%rcx,%rcx,2), %rax
	leaq	2(%rbx,%rax), %rax
	movq	%rax, 360(%rsp)         # 8-byte Spill
	leaq	2(%rbx), %rax
	movq	%rax, 352(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB18_186:                             # %for.body.1748
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_189 Depth 2
	movq	%r8, 288(%rsp)          # 8-byte Spill
	movq	%r10, 296(%rsp)         # 8-byte Spill
	movq	%r11, 328(%rsp)         # 8-byte Spill
	movq	%r9, 408(%rsp)          # 8-byte Spill
	movzbl	(%r9), %eax
	movl	%eax, 312(%rsp)         # 4-byte Spill
	movzbl	(%r8), %r15d
	orl	%r15d, %eax
	movzbl	(%r10), %ecx
	movl	%ecx, 320(%rsp)         # 4-byte Spill
	movl	%ecx, %r14d
	orl	%r15d, %r14d
	movq	328(%rsp), %rcx         # 8-byte Reload
	movzbl	(%rcx), %ecx
	movl	%ecx, 336(%rsp)         # 4-byte Spill
	movl	%ecx, %ebp
	orl	%r15d, %ebp
	movzbl	%al, %edi
	movq	376(%rsp), %rsi         # 8-byte Reload
	movq	432(%rsp), %r12         # 8-byte Reload
	movq	%r12, %rdx
	movq	344(%rsp), %rbx         # 8-byte Reload
	callq	*%rbx
	movq	%rax, %r13
	movzbl	%r14b, %edi
	movq	392(%rsp), %rsi         # 8-byte Reload
	movq	416(%rsp), %rdx         # 8-byte Reload
	callq	*%rbx
	movq	%rax, %r14
	movzbl	%bpl, %edi
	movq	384(%rsp), %rsi         # 8-byte Reload
	movq	424(%rsp), %rdx         # 8-byte Reload
	callq	*%rbx
	movq	288(%rsp), %r8          # 8-byte Reload
	movq	296(%rsp), %r10         # 8-byte Reload
	movq	408(%rsp), %r9          # 8-byte Reload
	movl	%r14d, %ecx
	andl	%r13d, %ecx
	andl	%eax, %ecx
	movl	%ecx, %edx
	orl	$-256, %edx
	xorl	$255, %edx
	movl	272(%rsp), %esi         # 4-byte Reload
	andl	%esi, %r13d
	andl	%edx, %r13d
	movl	208(%rsp), %edi         # 4-byte Reload
	movl	312(%rsp), %ebp         # 4-byte Reload
	andl	%edi, %ebp
	orl	%r13d, %ebp
	andl	%esi, %r14d
	andl	%edx, %r14d
	movl	320(%rsp), %ebx         # 4-byte Reload
	andl	%edi, %ebx
	orl	%r14d, %ebx
	andl	%esi, %eax
	andl	%edx, %eax
	movl	336(%rsp), %edx         # 4-byte Reload
	andl	%edi, %edx
	orl	%eax, %edx
	andl	%esi, %ecx
	andl	%edi, %r15d
	orl	%ecx, %r15d
	movb	%bpl, (%r9)
	movb	%bl, (%r10)
	movq	328(%rsp), %rax         # 8-byte Reload
	movb	%dl, (%rax)
	movq	328(%rsp), %r11         # 8-byte Reload
	movb	%r15b, (%r8)
	cmpl	$0, 216(%rsp)           # 4-byte Folded Reload
	jle	.LBB18_192
# BB#187:                               # %if.end.1851
                                        #   in Loop: Header=BB18_186 Depth=1
	movq	432(%rsp), %rdx         # 8-byte Reload
	movb	1(%r8), %r12b
	movb	1(%r9), %al
	movq	48(%rsp), %rcx          # 8-byte Reload
	cmpl	$17, %ecx
	jl	.LBB18_212
# BB#188:                               #   in Loop: Header=BB18_186 Depth=1
	movq	136(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %r13d
	movq	304(%rsp), %rbp         # 8-byte Reload
	movq	344(%rsp), %r15         # 8-byte Reload
	movq	368(%rsp), %rsi         # 8-byte Reload
	movq	400(%rsp), %rdx         # 8-byte Reload
	.align	16, 0x90
.LBB18_189:                             # %while.body.1856
                                        #   Parent Loop BB18_186 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	orb	%r12b, %al
	movb	(%rsi,%rbp), %r14b
	orb	%r12b, %r14b
	orb	(%rdx,%rbp), %r12b
	movzbl	%al, %edi
	movq	376(%rsp), %rsi         # 8-byte Reload
	movq	432(%rsp), %rdx         # 8-byte Reload
	callq	*%r15
	movq	%rax, %rbx
	movzbl	%r14b, %edi
	movq	392(%rsp), %rsi         # 8-byte Reload
	movq	416(%rsp), %rdx         # 8-byte Reload
	callq	*%r15
	movq	%rax, %r14
	movzbl	%r12b, %edi
	movq	384(%rsp), %rsi         # 8-byte Reload
	movq	424(%rsp), %rdx         # 8-byte Reload
	callq	*%r15
	movq	%r14, %rcx
	andq	%rbx, %rcx
	andq	%rax, %rcx
	movl	%ecx, %edx
	orl	$-256, %edx
	xorl	$255, %edx
	movl	%edx, %esi
	andl	%ebx, %esi
	movl	%edx, %edi
	andl	%r14d, %edi
	andl	%eax, %edx
	movq	352(%rsp), %rbx         # 8-byte Reload
	movb	%sil, -1(%rbx,%rbp)
	movq	368(%rsp), %rsi         # 8-byte Reload
	movb	%dil, (%rsi,%rbp)
	movq	400(%rsp), %rax         # 8-byte Reload
	movb	%dl, (%rax,%rbp)
	movq	400(%rsp), %rdx         # 8-byte Reload
	movq	360(%rsp), %rax         # 8-byte Reload
	movb	%cl, -1(%rax,%rbp)
	movb	(%rax,%rbp), %r12b
	movb	(%rbx,%rbp), %al
	incq	%rbp
	addl	$-8, %r13d
	cmpl	$8, %r13d
	jg	.LBB18_189
# BB#190:                               #   in Loop: Header=BB18_186 Depth=1
	movq	280(%rsp), %rcx         # 8-byte Reload
	movq	%rcx, 224(%rsp)         # 8-byte Spill
	movq	264(%rsp), %rdi         # 8-byte Reload
	movq	248(%rsp), %rsi         # 8-byte Reload
	movq	240(%rsp), %rcx         # 8-byte Reload
	movq	%rcx, 232(%rsp)         # 8-byte Spill
	movq	432(%rsp), %rcx         # 8-byte Reload
	movq	%r15, %rbp
	jmp	.LBB18_191
	.align	16, 0x90
.LBB18_212:                             #   in Loop: Header=BB18_186 Depth=1
	leaq	1(%r8), %rcx
	movq	%rcx, 232(%rsp)         # 8-byte Spill
	leaq	1(%r11), %rsi
	leaq	1(%r10), %rdi
	leaq	1(%r9), %rcx
	movq	%rcx, 224(%rsp)         # 8-byte Spill
	movq	344(%rsp), %rbp         # 8-byte Reload
	movq	%rdx, %rcx
.LBB18_191:                             # %while.end.1933
                                        #   in Loop: Header=BB18_186 Depth=1
	movq	%rdi, 312(%rsp)         # 8-byte Spill
	movq	%rsi, 320(%rsp)         # 8-byte Spill
	movq	%rbp, 344(%rsp)         # 8-byte Spill
	movzbl	(%rdi), %r15d
	movzbl	(%rsi), %edx
	movl	%edx, 336(%rsp)         # 4-byte Spill
	movzbl	%al, %r14d
	movzbl	%r12b, %r13d
	movb	%r13b, %al
	orb	%r14b, %al
	movzbl	%al, %edi
	movq	376(%rsp), %rsi         # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rbp, %r12
	callq	*%r12
	movq	%rax, %rbp
	movb	%r13b, %al
	orb	%r15b, %al
	movzbl	%al, %edi
	movq	392(%rsp), %rsi         # 8-byte Reload
	movq	416(%rsp), %rdx         # 8-byte Reload
	callq	*%r12
	movq	%rax, %rbx
	movb	%r13b, %al
	movl	336(%rsp), %ecx         # 4-byte Reload
	orb	%cl, %al
	movzbl	%al, %edi
	movq	384(%rsp), %rsi         # 8-byte Reload
	movq	424(%rsp), %rdx         # 8-byte Reload
	callq	*%r12
	movl	%ebx, %ecx
	andl	%ebp, %ecx
	andl	%eax, %ecx
	movl	%ecx, %edx
	orl	$-256, %edx
	xorl	$255, %edx
	movl	256(%rsp), %esi         # 4-byte Reload
	andl	%esi, %ebp
	andl	%edx, %ebp
	movl	200(%rsp), %edi         # 4-byte Reload
	andl	%edi, %r14d
	orl	%ebp, %r14d
	movq	224(%rsp), %rbp         # 8-byte Reload
	movb	%r14b, (%rbp)
	andl	%esi, %ebx
	andl	%edx, %ebx
	andl	%edi, %r15d
	orl	%ebx, %r15d
	movq	312(%rsp), %rbp         # 8-byte Reload
	movb	%r15b, (%rbp)
	andl	%esi, %eax
	andl	%edx, %eax
	movl	336(%rsp), %edx         # 4-byte Reload
	andl	%edi, %edx
	orl	%eax, %edx
	movq	320(%rsp), %rax         # 8-byte Reload
	movb	%dl, (%rax)
	andl	%esi, %ecx
	andl	%edi, %r13d
	orl	%ecx, %r13d
	movq	232(%rsp), %rax         # 8-byte Reload
	movb	%r13b, (%rax)
	movq	408(%rsp), %r9          # 8-byte Reload
	movq	296(%rsp), %r10         # 8-byte Reload
	movq	328(%rsp), %r11         # 8-byte Reload
	movq	288(%rsp), %r8          # 8-byte Reload
.LBB18_192:                             # %cleanup.2027
                                        #   in Loop: Header=BB18_186 Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	%rax, %r9
	addq	%rax, %r10
	addq	%rax, %r11
	addq	%rax, %r8
	addq	%rax, 280(%rsp)         # 8-byte Folded Spill
	addq	%rax, 264(%rsp)         # 8-byte Folded Spill
	addq	%rax, 248(%rsp)         # 8-byte Folded Spill
	addq	%rax, 240(%rsp)         # 8-byte Folded Spill
	addq	%rax, 304(%rsp)         # 8-byte Folded Spill
	movq	56(%rsp), %rax          # 8-byte Reload
	cmpl	$1, %eax
	leal	-1(%rax), %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	jg	.LBB18_186
	jmp	.LBB18_210
.LBB18_42:                              # %if.then.1153
	movl	%r12d, %esi
	movq	56(%rsp), %rcx          # 8-byte Reload
	testl	%ecx, %ecx
	movl	400(%rsp), %r12d        # 4-byte Reload
	jle	.LBB18_210
# BB#43:                                # %for.body.1171.lr.ph
	movl	100(%rsp), %ecx         # 4-byte Reload
	movq	%rsi, 392(%rsp)         # 8-byte Spill
	movl	%ecx, %esi
	andl	$1, %esi
	movq	%rdi, 136(%rsp)         # 8-byte Spill
	subl	%edi, %esi
	movl	%esi, 208(%rsp)         # 4-byte Spill
	movl	%esi, %ebp
	sarl	%ebp
	movq	%r8, 288(%rsp)          # 8-byte Spill
	movslq	%ebp, %rbp
	movq	%rbp, 384(%rsp)         # 8-byte Spill
	movq	152(%rsp), %rdi         # 8-byte Reload
	leaq	(%rdi,%rbp), %rdi
	movl	%ecx, %ebx
	sarl	%ebx
	movq	%r10, 296(%rsp)         # 8-byte Spill
	movslq	%ebx, %rbp
	movq	%rbp, 376(%rsp)         # 8-byte Spill
	addq	%rbp, %rdi
	movq	%rdi, 360(%rsp)         # 8-byte Spill
	subl	%edx, %ecx
	andl	$1, %ecx
	movl	%ecx, 100(%rsp)         # 4-byte Spill
	cmpl	$-3, %esi
	setg	%r8b
	movq	48(%rsp), %r13          # 8-byte Reload
	leal	-8(%r13), %r10d
	movl	%r10d, 320(%rsp)        # 4-byte Spill
	cmpl	$-6, %r10d
	setg	%bl
	andb	%r8b, %bl
	movb	%bl, 184(%rsp)          # 1-byte Spill
	cmpl	$-5, %esi
	setg	%bl
	cmpl	$-4, %r10d
	movl	%r12d, %r14d
	setg	%r12b
	andb	%bl, %r12b
	movb	%r12b, 176(%rsp)        # 1-byte Spill
	movl	272(%rsp), %ebp         # 4-byte Reload
	orl	$-256, %ebp
	xorl	$255, %ebp
	movl	%ebp, 224(%rsp)         # 4-byte Spill
	movl	256(%rsp), %ebp         # 4-byte Reload
	orl	$-256, %ebp
	xorl	$255, %ebp
	movl	%ebp, 200(%rsp)         # 4-byte Spill
	cmpl	$-7, %r10d
	setg	%cl
	andb	%r8b, %cl
	movb	%cl, 168(%rsp)          # 1-byte Spill
	cmpl	$-5, %r10d
	setg	%cl
	andb	%bl, %cl
	movb	%cl, 160(%rsp)          # 1-byte Spill
	cmpl	$-7, %esi
	setg	%cl
	cmpl	$-3, %r10d
	setg	%bl
	decl	%edx
	subl	%r14d, %edx
	andb	%cl, %bl
	movb	%bl, 144(%rsp)          # 1-byte Spill
	notl	%r15d
	cmpl	%r15d, %edx
	cmovgel	%edx, %r15d
	leal	16(%r15), %ecx
	movq	136(%rsp), %rdx         # 8-byte Reload
	subl	%edx, %ecx
	cmpl	$-10, %ecx
	movl	$-9, %esi
	cmovgl	%ecx, %esi
	leal	-9(%rsi,%rdx), %ecx
	subl	%r15d, %ecx
	shrl	$3, %ecx
	movq	328(%rsp), %rdi         # 8-byte Reload
	leaq	(%rdi,%rcx), %rdx
	movq	304(%rsp), %rbp         # 8-byte Reload
	leaq	2(%rbp,%rdx), %rsi
	movq	%rsi, 312(%rsp)         # 8-byte Spill
	addq	%rax, %rdx
	leaq	(%rdi,%rax,2), %rsi
	leaq	(%rax,%rax,2), %rax
	addq	%rdi, %rax
	leaq	2(%rbp,%rdx), %rdx
	movq	%rdx, 280(%rsp)         # 8-byte Spill
	addq	%rcx, %rsi
	leaq	2(%rbp,%rsi), %rdx
	movq	%rdx, 264(%rsp)         # 8-byte Spill
	addq	%rcx, %rax
	leaq	2(%rbp,%rax), %rax
	movq	%rax, 304(%rsp)         # 8-byte Spill
	movq	376(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rcx,4), %rax
	movq	296(%rsp), %rdi         # 8-byte Reload
	addq	384(%rsp), %rax         # 8-byte Folded Reload
	movq	360(%rsp), %rdx         # 8-byte Reload
	movq	288(%rsp), %rsi         # 8-byte Reload
	movq	152(%rsp), %rcx         # 8-byte Reload
	leaq	4(%rcx,%rax), %rax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	movq	392(%rsp), %rax         # 8-byte Reload
	movq	rop_proc_table(,%rax,8), %r10
	movl	408(%rsp), %eax         # 4-byte Reload
	movq	%rax, 216(%rsp)         # 8-byte Spill
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	64(%rsp), %rcx          # 8-byte Reload
	imull	%eax, %ecx
	leaq	2(%rcx,%rcx), %rax
	movq	%rax, 352(%rsp)         # 8-byte Spill
	leaq	2(%rcx,%rcx,2), %rax
	movq	%rax, 344(%rsp)         # 8-byte Spill
	leaq	2(%rcx), %rax
	movq	%rax, 336(%rsp)         # 8-byte Spill
	leal	-16(%r13), %eax
	movq	%r11, %rbp
	movl	%eax, 192(%rsp)         # 4-byte Spill
	.align	16, 0x90
.LBB18_44:                              # %for.body.1171
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_163 Depth 2
	movq	%r9, 408(%rsp)          # 8-byte Spill
	movzbl	(%rsi), %ebx
	movzbl	(%r9), %r14d
	movzbl	(%rdi), %r12d
	movzbl	(%rbp), %ecx
	movl	100(%rsp), %eax         # 4-byte Reload
	testl	%eax, %eax
	jne	.LBB18_149
# BB#45:                                # %if.then.1191
                                        #   in Loop: Header=BB18_44 Depth=1
	movq	%rbp, 328(%rsp)         # 8-byte Spill
	xorl	%r13d, %r13d
	cmpl	$0, 208(%rsp)           # 4-byte Folded Reload
	js	.LBB18_47
# BB#46:                                # %if.then.1194
                                        #   in Loop: Header=BB18_44 Depth=1
	movzbl	(%rdx), %eax
	movl	expand_4to1(,%rax,4), %r13d
	shll	$6, %r13d
.LBB18_47:                              # %if.end.1199
                                        #   in Loop: Header=BB18_44 Depth=1
	cmpb	$0, 184(%rsp)           # 1-byte Folded Reload
	je	.LBB18_49
# BB#48:                                # %if.then.1205
                                        #   in Loop: Header=BB18_44 Depth=1
	movzbl	1(%rdx), %eax
	movl	expand_4to1(,%rax,4), %eax
	shll	$4, %eax
	orl	%eax, %r13d
.LBB18_49:                              # %if.end.1211
                                        #   in Loop: Header=BB18_44 Depth=1
	cmpb	$0, 176(%rsp)           # 1-byte Folded Reload
	je	.LBB18_51
# BB#50:                                # %if.then.1217
                                        #   in Loop: Header=BB18_44 Depth=1
	movzbl	2(%rdx), %eax
	movl	expand_4to1(,%rax,4), %eax
	shll	$2, %eax
	orl	%eax, %r13d
.LBB18_51:                              # %if.end.1223
                                        #   in Loop: Header=BB18_44 Depth=1
	movq	%rsi, 288(%rsp)         # 8-byte Spill
	movq	%rdi, 296(%rsp)         # 8-byte Spill
	movq	%r9, 408(%rsp)          # 8-byte Spill
	cmpl	$-1, 320(%rsp)          # 4-byte Folded Reload
	jl	.LBB18_52
# BB#148:                               # %if.then.1226
                                        #   in Loop: Header=BB18_44 Depth=1
	movzbl	3(%rdx), %eax
	movq	%rdx, 360(%rsp)         # 8-byte Spill
	orl	expand_4to1(,%rax,4), %r13d
	jmp	.LBB18_160
	.align	16, 0x90
.LBB18_149:                             # %if.else.1232
                                        #   in Loop: Header=BB18_44 Depth=1
	movq	%rbp, 328(%rsp)         # 8-byte Spill
	xorl	%r13d, %r13d
	cmpl	$0, 208(%rsp)           # 4-byte Folded Reload
	js	.LBB18_151
# BB#150:                               # %if.then.1235
                                        #   in Loop: Header=BB18_44 Depth=1
	movzbl	(%rdx), %eax
	andl	$15, %eax
	movl	expand_4to1(,%rax,4), %r13d
	shll	$7, %r13d
.LBB18_151:                             # %if.end.1242
                                        #   in Loop: Header=BB18_44 Depth=1
	cmpb	$0, 168(%rsp)           # 1-byte Folded Reload
	je	.LBB18_153
# BB#152:                               # %if.then.1248
                                        #   in Loop: Header=BB18_44 Depth=1
	movzbl	1(%rdx), %eax
	movl	expand_4to1(,%rax,4), %eax
	shll	$5, %eax
	orl	%eax, %r13d
.LBB18_153:                             # %if.end.1254
                                        #   in Loop: Header=BB18_44 Depth=1
	cmpb	$0, 160(%rsp)           # 1-byte Folded Reload
	je	.LBB18_155
# BB#154:                               # %if.then.1260
                                        #   in Loop: Header=BB18_44 Depth=1
	movzbl	2(%rdx), %eax
	movl	expand_4to1(,%rax,4), %eax
	shll	$3, %eax
	orl	%eax, %r13d
.LBB18_155:                             # %if.end.1266
                                        #   in Loop: Header=BB18_44 Depth=1
	cmpb	$0, 144(%rsp)           # 1-byte Folded Reload
	je	.LBB18_157
# BB#156:                               # %if.then.1272
                                        #   in Loop: Header=BB18_44 Depth=1
	movzbl	3(%rdx), %eax
	movl	expand_4to1(,%rax,4), %eax
	addl	%eax, %eax
	orl	%eax, %r13d
.LBB18_157:                             # %if.end.1278
                                        #   in Loop: Header=BB18_44 Depth=1
	movq	%rsi, 288(%rsp)         # 8-byte Spill
	movq	%rdi, 296(%rsp)         # 8-byte Spill
	movq	%r9, 408(%rsp)          # 8-byte Spill
	cmpl	$0, 320(%rsp)           # 4-byte Folded Reload
	js	.LBB18_158
# BB#159:                               # %if.then.1281
                                        #   in Loop: Header=BB18_44 Depth=1
	movzbl	4(%rdx), %eax
	movq	%rdx, 360(%rsp)         # 8-byte Spill
	andl	$240, %eax
	movl	expand_4to1(,%rax,4), %eax
	shrl	%eax
	orl	%eax, %r13d
	jmp	.LBB18_160
	.align	16, 0x90
.LBB18_52:                              #   in Loop: Header=BB18_44 Depth=1
	movq	%rdx, 360(%rsp)         # 8-byte Spill
	jmp	.LBB18_160
.LBB18_158:                             #   in Loop: Header=BB18_44 Depth=1
	movq	%rdx, 360(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB18_160:                             # %if.end.1290
                                        #   in Loop: Header=BB18_44 Depth=1
	movl	%ecx, %eax
	orl	%ebx, %eax
	movq	%rax, 384(%rsp)         # 8-byte Spill
	movl	%r12d, %ebp
	orl	%ebx, %ebp
	movl	%ebx, 400(%rsp)         # 4-byte Spill
	movl	%r14d, %edi
	orl	%ebx, %edi
	movl	%r13d, %esi
	shrl	$24, %esi
	orl	%r13d, %esi
	movq	432(%rsp), %rdx         # 8-byte Reload
	movq	%r10, %r15
	movl	%ecx, 392(%rsp)         # 4-byte Spill
	callq	*%r15
	movq	%rax, %rbx
	movl	%r13d, %esi
	shrl	$16, %esi
	orl	%r13d, %esi
	movq	%rbp, %rdi
	movq	416(%rsp), %rdx         # 8-byte Reload
	callq	*%r15
	movq	%rax, %rbp
	movl	%r13d, %esi
	shrl	$8, %esi
	orl	%r13d, %esi
	movq	384(%rsp), %rdi         # 8-byte Reload
	movq	424(%rsp), %rdx         # 8-byte Reload
	callq	*%r15
	movq	%r15, %r10
	movl	%ebp, %ecx
	andl	%ebx, %ecx
	andl	%eax, %ecx
	movl	%ecx, %edx
	orl	$-256, %edx
	xorl	$255, %edx
	movl	272(%rsp), %esi         # 4-byte Reload
	andl	%esi, %ebx
	andl	%edx, %ebx
	movl	224(%rsp), %edi         # 4-byte Reload
	andl	%edi, %r14d
	orl	%ebx, %r14d
	andl	%esi, %ebp
	andl	%edx, %ebp
	andl	%edi, %r12d
	orl	%ebp, %r12d
	andl	%esi, %eax
	andl	%edx, %eax
	movl	392(%rsp), %edx         # 4-byte Reload
	andl	%edi, %edx
	orl	%eax, %edx
	andl	%esi, %ecx
	movl	400(%rsp), %eax         # 4-byte Reload
	andl	%edi, %eax
	orl	%ecx, %eax
	movq	408(%rsp), %r9          # 8-byte Reload
	movb	%r14b, (%r9)
	movq	296(%rsp), %rdi         # 8-byte Reload
	movb	%r12b, (%rdi)
	movq	328(%rsp), %rbp         # 8-byte Reload
	movb	%dl, (%rbp)
	movq	288(%rsp), %rsi         # 8-byte Reload
	movb	%al, (%rsi)
	cmpl	$0, 320(%rsp)           # 4-byte Folded Reload
	jle	.LBB18_182
# BB#161:                               # %if.end.1385
                                        #   in Loop: Header=BB18_44 Depth=1
	movb	1(%rsi), %bl
	movb	1(%r9), %r11b
	movb	1(%rdi), %r8b
	movb	1(%rbp), %r14b
	movq	360(%rsp), %r15         # 8-byte Reload
	movzbl	4(%r15), %r12d
	movq	48(%rsp), %rcx          # 8-byte Reload
	cmpl	$17, %ecx
	jl	.LBB18_211
# BB#162:                               #   in Loop: Header=BB18_44 Depth=1
	xorl	%r13d, %r13d
	movl	192(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, %ebp
	.align	16, 0x90
.LBB18_163:                             # %while.body.1391
                                        #   Parent Loop BB18_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	336(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r13), %rdi
	movq	352(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r13), %rax
	movq	344(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r13), %rdx
	movzbl	5(%r15,%r13,4), %ecx
	movl	100(%rsp), %esi         # 4-byte Reload
	testl	%esi, %esi
	jne	.LBB18_165
# BB#164:                               # %if.then.1416
                                        #   in Loop: Header=BB18_163 Depth=2
	movq	%rdx, 368(%rsp)         # 8-byte Spill
	movq	%rax, 376(%rsp)         # 8-byte Spill
	movq	%rdi, 384(%rsp)         # 8-byte Spill
	movq	%rbp, 392(%rsp)         # 8-byte Spill
	movb	%r14b, 400(%rsp)        # 1-byte Spill
	movl	expand_4to1(,%r12,4), %edx
	shll	$6, %edx
	movl	expand_4to1(,%rcx,4), %ecx
	shll	$4, %ecx
	orl	%edx, %ecx
	movzbl	6(%r15,%r13,4), %edx
	movl	expand_4to1(,%rdx,4), %r12d
	shll	$2, %r12d
	orl	%ecx, %r12d
	movzbl	7(%r15,%r13,4), %ecx
	orl	expand_4to1(,%rcx,4), %r12d
	jmp	.LBB18_166
	.align	16, 0x90
.LBB18_165:                             # %if.else.1435
                                        #   in Loop: Header=BB18_163 Depth=2
	movq	%rdx, 368(%rsp)         # 8-byte Spill
	movq	%rax, 376(%rsp)         # 8-byte Spill
	movq	%rdi, 384(%rsp)         # 8-byte Spill
	movq	%rbp, 392(%rsp)         # 8-byte Spill
	movb	%r14b, 400(%rsp)        # 1-byte Spill
	andl	$15, %r12d
	movl	expand_4to1(,%r12,4), %edx
	shll	$7, %edx
	movl	expand_4to1(,%rcx,4), %ecx
	shll	$5, %ecx
	orl	%edx, %ecx
	movzbl	6(%r15,%r13,4), %edx
	movl	expand_4to1(,%rdx,4), %edx
	shll	$3, %edx
	orl	%ecx, %edx
	movzbl	7(%r15,%r13,4), %ecx
	movl	expand_4to1(,%rcx,4), %ecx
	addl	%ecx, %ecx
	orl	%edx, %ecx
	movzbl	8(%r15,%r13,4), %edx
	andl	$240, %edx
	movl	expand_4to1(,%rdx,4), %r12d
	shrl	%r12d
	orl	%ecx, %r12d
.LBB18_166:                             # %if.end.1464
                                        #   in Loop: Header=BB18_163 Depth=2
	movb	%r8b, %bpl
	orb	%bl, %r11b
	movzbl	%r11b, %edi
	movl	%r12d, %esi
	shrl	$24, %esi
	orl	%r12d, %esi
	movq	432(%rsp), %rdx         # 8-byte Reload
	movq	%r10, %r15
	callq	*%r15
	movq	%rax, %r14
	orb	%bl, %bpl
	movzbl	%bpl, %edi
	movl	%r12d, %esi
	shrl	$16, %esi
	orl	%r12d, %esi
	movq	416(%rsp), %rdx         # 8-byte Reload
	callq	*%r15
	movq	%rax, %rbp
	movb	400(%rsp), %al          # 1-byte Reload
	orb	%bl, %al
	movzbl	%al, %edi
	movl	%r12d, %esi
	shrl	$8, %esi
	orl	%r12d, %esi
	movq	424(%rsp), %rdx         # 8-byte Reload
	callq	*%r15
	movq	%r15, %r10
	movq	%rbp, %rcx
	andq	%r14, %rcx
	andq	%rax, %rcx
	movl	%ecx, %edx
	orl	$-256, %edx
	xorl	$255, %edx
	movl	%edx, %esi
	andl	%r14d, %esi
	movl	%edx, %edi
	andl	%ebp, %edi
	andl	%eax, %edx
	movq	408(%rsp), %r9          # 8-byte Reload
	movb	%sil, 1(%r9,%r13)
	movq	384(%rsp), %rbp         # 8-byte Reload
	movb	%dil, -1(%r9,%rbp)
	movq	376(%rsp), %rax         # 8-byte Reload
	movb	%dl, -1(%r9,%rax)
	movq	368(%rsp), %rdx         # 8-byte Reload
	movb	%cl, -1(%r9,%rdx)
	movq	392(%rsp), %rsi         # 8-byte Reload
	leal	-8(%rsi), %ecx
	movb	(%r9,%rdx), %bl
	movb	2(%r9,%r13), %r11b
	movb	(%r9,%rbp), %r8b
	movb	(%r9,%rax), %r14b
	movq	360(%rsp), %r15         # 8-byte Reload
	movzbl	8(%r15,%r13,4), %r12d
	incq	%r13
	cmpl	$8, %esi
	movl	%ecx, %ebp
	jg	.LBB18_163
# BB#167:                               #   in Loop: Header=BB18_44 Depth=1
	movq	312(%rsp), %rsi         # 8-byte Reload
	movq	%rsi, 384(%rsp)         # 8-byte Spill
	movq	280(%rsp), %rsi         # 8-byte Reload
	movq	%rsi, 392(%rsp)         # 8-byte Spill
	movq	264(%rsp), %r13         # 8-byte Reload
	movq	304(%rsp), %rax         # 8-byte Reload
	movq	%rax, 400(%rsp)         # 8-byte Spill
	movq	248(%rsp), %rdx         # 8-byte Reload
	movq	296(%rsp), %rdi         # 8-byte Reload
	movq	328(%rsp), %rax         # 8-byte Reload
	movq	288(%rsp), %rsi         # 8-byte Reload
	jmp	.LBB18_168
	.align	16, 0x90
.LBB18_211:                             #   in Loop: Header=BB18_44 Depth=1
	leaq	1(%rsi), %rax
	movq	%rax, 400(%rsp)         # 8-byte Spill
	leaq	1(%rbp), %r13
	movq	%rbp, %rax
	leaq	1(%rdi), %rcx
	movq	%rcx, 392(%rsp)         # 8-byte Spill
	leaq	1(%r9), %rcx
	movq	%rcx, 384(%rsp)         # 8-byte Spill
	movq	%r15, %rdx
	movl	192(%rsp), %ecx         # 4-byte Reload
.LBB18_168:                             # %while.end.1537
                                        #   in Loop: Header=BB18_44 Depth=1
	cmpl	$0, 100(%rsp)           # 4-byte Folded Reload
	jne	.LBB18_175
# BB#169:                               # %if.then.1550
                                        #   in Loop: Header=BB18_44 Depth=1
	movl	expand_4to1(,%r12,4), %r12d
	shll	$6, %r12d
	cmpl	$-5, %ecx
	jl	.LBB18_170
# BB#171:                               # %if.end.1563
                                        #   in Loop: Header=BB18_44 Depth=1
	movq	%rdx, %rbp
	movzbl	5(%rbp), %edx
	movl	expand_4to1(,%rdx,4), %edx
	shll	$4, %edx
	orl	%edx, %r12d
	cmpl	$-3, %ecx
	jl	.LBB18_170
# BB#172:                               # %if.end.1572
                                        #   in Loop: Header=BB18_44 Depth=1
	movb	%r8b, 368(%rsp)         # 1-byte Spill
	movq	%r13, 232(%rsp)         # 8-byte Spill
	movzbl	6(%rbp), %edx
	movl	expand_4to1(,%rdx,4), %edx
	shll	$2, %edx
	orl	%edx, %r12d
	cmpl	$-1, %ecx
	jl	.LBB18_173
# BB#174:                               # %if.then.1575
                                        #   in Loop: Header=BB18_44 Depth=1
	movq	%r15, 360(%rsp)         # 8-byte Spill
	movq	%rsi, 288(%rsp)         # 8-byte Spill
	movq	%rax, 328(%rsp)         # 8-byte Spill
	movq	%rdi, 296(%rsp)         # 8-byte Spill
	movq	%r9, 408(%rsp)          # 8-byte Spill
	movzbl	7(%rbp), %ecx
	orl	expand_4to1(,%rcx,4), %r12d
	jmp	.LBB18_181
	.align	16, 0x90
.LBB18_175:                             # %if.else.1581
                                        #   in Loop: Header=BB18_44 Depth=1
	andl	$15, %r12d
	movl	expand_4to1(,%r12,4), %ebp
	shll	$7, %ebp
	cmpl	$-6, %ecx
	jl	.LBB18_176
# BB#177:                               # %if.end.1596
                                        #   in Loop: Header=BB18_44 Depth=1
	movq	%rdx, %r12
	movzbl	5(%r12), %edx
	movl	expand_4to1(,%rdx,4), %edx
	shll	$5, %edx
	orl	%edx, %ebp
	cmpl	$-4, %ecx
	jl	.LBB18_176
# BB#178:                               # %if.end.1605
                                        #   in Loop: Header=BB18_44 Depth=1
	movzbl	6(%r12), %edx
	movl	expand_4to1(,%rdx,4), %edx
	shll	$3, %edx
	orl	%edx, %ebp
	cmpl	$-2, %ecx
	jl	.LBB18_176
# BB#179:                               # %if.end.1614
                                        #   in Loop: Header=BB18_44 Depth=1
	movzbl	7(%r12), %edx
	movl	expand_4to1(,%rdx,4), %edx
	addl	%edx, %edx
	orl	%edx, %ebp
	testl	%ecx, %ecx
	js	.LBB18_176
# BB#180:                               # %if.then.1617
                                        #   in Loop: Header=BB18_44 Depth=1
	movl	%ebp, %edx
	movb	%r8b, 368(%rsp)         # 1-byte Spill
	movq	%r13, 232(%rsp)         # 8-byte Spill
	movq	%r15, 360(%rsp)         # 8-byte Spill
	movq	%rsi, 288(%rsp)         # 8-byte Spill
	movq	%rax, 328(%rsp)         # 8-byte Spill
	movq	%rdi, 296(%rsp)         # 8-byte Spill
	movq	%r9, 408(%rsp)          # 8-byte Spill
	movzbl	8(%r12), %ecx
	andl	$240, %ecx
	movl	expand_4to1(,%rcx,4), %ecx
	shrl	%ecx
	orl	%ecx, %edx
	movl	%edx, %r12d
	jmp	.LBB18_181
	.align	16, 0x90
.LBB18_176:                             #   in Loop: Header=BB18_44 Depth=1
	movl	%ebp, %r12d
.LBB18_170:                             #   in Loop: Header=BB18_44 Depth=1
	movb	%r8b, 368(%rsp)         # 1-byte Spill
	movq	%r13, 232(%rsp)         # 8-byte Spill
.LBB18_173:                             #   in Loop: Header=BB18_44 Depth=1
	movq	%r15, 360(%rsp)         # 8-byte Spill
	movq	%rsi, 288(%rsp)         # 8-byte Spill
	movq	%rax, 328(%rsp)         # 8-byte Spill
	movq	%rdi, 296(%rsp)         # 8-byte Spill
	movq	%r9, 408(%rsp)          # 8-byte Spill
.LBB18_181:                             # %if.end.1626
                                        #   in Loop: Header=BB18_44 Depth=1
	movzbl	%r11b, %esi
	movl	%esi, 376(%rsp)         # 4-byte Spill
	movzbl	%bl, %ebp
	movl	%ebp, 240(%rsp)         # 4-byte Spill
	movb	%bpl, %al
	orb	%sil, %al
	movzbl	%al, %edi
	movl	%r12d, %esi
	shrl	$24, %esi
	orl	%r12d, %esi
	movq	432(%rsp), %rdx         # 8-byte Reload
	movq	%r10, %r13
	callq	*%r13
	movq	%rax, %r15
	movzbl	368(%rsp), %eax         # 1-byte Folded Reload
	movl	%eax, 368(%rsp)         # 4-byte Spill
	orb	%bpl, %al
	movl	%ebp, %ebx
	movzbl	%al, %edi
	movl	%r12d, %esi
	shrl	$16, %esi
	orl	%r12d, %esi
	movq	416(%rsp), %rdx         # 8-byte Reload
	callq	*%r13
	movq	%rax, %rbp
	movzbl	%r14b, %r14d
	movb	%r14b, %al
	orb	%bl, %al
	movzbl	%al, %edi
	movl	%r12d, %esi
	shrl	$8, %esi
	orl	%r12d, %esi
	movq	424(%rsp), %rdx         # 8-byte Reload
	callq	*%r13
	movq	%r13, %r10
	movl	%ebp, %ecx
	andl	%r15d, %ecx
	andl	%eax, %ecx
	movl	%ecx, %edx
	orl	$-256, %edx
	xorl	$255, %edx
	movl	256(%rsp), %esi         # 4-byte Reload
	andl	%esi, %r15d
	andl	%edx, %r15d
	movl	200(%rsp), %edi         # 4-byte Reload
	movl	376(%rsp), %ebx         # 4-byte Reload
	andl	%edi, %ebx
	orl	%r15d, %ebx
	movl	%ebx, %r8d
	movq	384(%rsp), %rbx         # 8-byte Reload
	movb	%r8b, (%rbx)
	andl	%esi, %ebp
	andl	%edx, %ebp
	movl	368(%rsp), %ebx         # 4-byte Reload
	andl	%edi, %ebx
	orl	%ebp, %ebx
	movq	392(%rsp), %rbp         # 8-byte Reload
	movb	%bl, (%rbp)
	andl	%esi, %eax
	andl	%edx, %eax
	andl	%edi, %r14d
	orl	%eax, %r14d
	movq	232(%rsp), %rax         # 8-byte Reload
	movb	%r14b, (%rax)
	andl	%esi, %ecx
	movl	240(%rsp), %eax         # 4-byte Reload
	andl	%edi, %eax
	orl	%ecx, %eax
	movl	%eax, %ecx
	movq	400(%rsp), %rax         # 8-byte Reload
	movb	%cl, (%rax)
	movq	408(%rsp), %r9          # 8-byte Reload
	movq	296(%rsp), %rdi         # 8-byte Reload
	movq	328(%rsp), %rbp         # 8-byte Reload
	movq	288(%rsp), %rsi         # 8-byte Reload
.LBB18_182:                             # %cleanup.1718
                                        #   in Loop: Header=BB18_44 Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	%rax, %r9
	addq	%rax, %rdi
	addq	%rax, %rbp
	addq	%rax, %rsi
	movq	360(%rsp), %rdx         # 8-byte Reload
	movq	216(%rsp), %rcx         # 8-byte Reload
	addq	%rcx, %rdx
	addq	%rax, 312(%rsp)         # 8-byte Folded Spill
	addq	%rax, 280(%rsp)         # 8-byte Folded Spill
	addq	%rax, 264(%rsp)         # 8-byte Folded Spill
	addq	%rax, 304(%rsp)         # 8-byte Folded Spill
	addq	%rcx, 248(%rsp)         # 8-byte Folded Spill
	movq	56(%rsp), %rax          # 8-byte Reload
	cmpl	$1, %eax
	leal	-1(%rax), %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	jg	.LBB18_44
	jmp	.LBB18_210
.LBB18_193:                             # %if.else.2044
	movl	%edx, %ebx
	movl	100(%rsp), %ebp         # 4-byte Reload
	andl	$7, %ebp
	movl	%ebp, %ecx
	movq	%rdi, %r14
	subl	%r14d, %ecx
	addl	$8, %ecx
	subl	%r14d, %ebp
	cmovnsl	%ebp, %ecx
	movl	%ecx, 336(%rsp)         # 4-byte Spill
	movq	56(%rsp), %rcx          # 8-byte Reload
	testl	%ecx, %ecx
	movq	%r8, %rsi
	movl	408(%rsp), %r13d        # 4-byte Reload
	movl	400(%rsp), %ecx         # 4-byte Reload
	jle	.LBB18_210
# BB#194:                               # %for.body.2062.lr.ph
	movl	%ecx, %edi
	movq	152(%rsp), %r12         # 8-byte Reload
	leaq	-1(%r12), %r8
	testl	%ebp, %ebp
	cmovnsq	%r12, %r8
	movl	100(%rsp), %edx         # 4-byte Reload
	sarl	$3, %edx
	movslq	%edx, %r12
	leaq	(%r8,%r12), %rcx
	movq	%rcx, 264(%rsp)         # 8-byte Spill
	movl	$8, %ecx
	subl	336(%rsp), %ecx         # 4-byte Folded Reload
	movl	%ecx, 280(%rsp)         # 4-byte Spill
	movl	272(%rsp), %ecx         # 4-byte Reload
	orl	$-256, %ecx
	xorl	$255, %ecx
	movl	%ecx, 192(%rsp)         # 4-byte Spill
	movl	256(%rsp), %ecx         # 4-byte Reload
	orl	$-256, %ecx
	xorl	$255, %ecx
	movl	%ecx, 160(%rsp)         # 4-byte Spill
	decl	%ebx
	subl	%edi, %ebx
	notl	%r15d
	cmpl	%r15d, %ebx
	cmovgel	%ebx, %r15d
	leal	16(%r15), %edx
	subl	%r14d, %edx
	cmpl	$-10, %edx
	movl	$-9, %ebx
	cmovgl	%edx, %ebx
	leal	-9(%rbx,%r14), %ecx
	subl	%r15d, %ecx
	shrl	$3, %ecx
	movq	328(%rsp), %rdi         # 8-byte Reload
	leaq	(%rdi,%rcx), %rdx
	movq	304(%rsp), %rbp         # 8-byte Reload
	leaq	2(%rbp,%rdx), %rbx
	movq	%rbx, 248(%rsp)         # 8-byte Spill
	addq	%rax, %rdx
	leaq	(%rdi,%rax,2), %rbx
	leaq	(%rax,%rax,2), %rax
	addq	%rdi, %rax
	movq	48(%rsp), %rdi          # 8-byte Reload
	leal	-16(%rdi), %edi
	movl	%edi, 240(%rsp)         # 4-byte Spill
	movl	%r13d, %edi
	movq	%rdi, 184(%rsp)         # 8-byte Spill
	leaq	2(%rbp,%rdx), %rdx
	movq	%rdx, 232(%rsp)         # 8-byte Spill
	movq	264(%rsp), %rdx         # 8-byte Reload
	addq	%rcx, %rbx
	leaq	2(%rbp,%rbx), %rdi
	movq	%rdi, 224(%rsp)         # 8-byte Spill
	addq	%rcx, %rax
	leaq	2(%rbp,%rax), %rax
	movq	%rax, 216(%rsp)         # 8-byte Spill
	addq	%rcx, %r12
	leaq	2(%r8,%r12), %rax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	leaq	1(%r8,%r12), %rax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	64(%rsp), %rcx          # 8-byte Reload
	imull	%eax, %ecx
	leaq	1(%rcx,%rcx), %rax
	movq	%rax, 320(%rsp)         # 8-byte Spill
	leaq	1(%rcx,%rcx,2), %rax
	movq	%rax, 312(%rsp)         # 8-byte Spill
	leaq	1(%rcx), %rax
	movq	%rax, 304(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB18_195:                             # %for.body.2062
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_200 Depth 2
	movq	%rsi, 288(%rsp)         # 8-byte Spill
	movq	%r11, 328(%rsp)         # 8-byte Spill
	movq	%r10, 296(%rsp)         # 8-byte Spill
	movq	%r9, 408(%rsp)          # 8-byte Spill
	movl	336(%rsp), %ecx         # 4-byte Reload
	testl	%ecx, %ecx
	movzbl	(%rsi), %edi
	movzbl	(%r9), %r14d
	movzbl	(%r10), %r15d
	movzbl	(%r11), %ebx
	movzbl	(%rdx), %eax
	je	.LBB18_196
# BB#197:                               # %cond.true.2075
                                        #   in Loop: Header=BB18_195 Depth=1
	shll	%cl, %eax
	leaq	1(%rdx), %rcx
	movq	%rcx, 400(%rsp)         # 8-byte Spill
	movq	%rdx, %rsi
	movzbl	1(%rsi), %edx
	movl	280(%rsp), %ecx         # 4-byte Reload
	shrl	%cl, %edx
	addl	%eax, %edx
	movl	%edx, %eax
	jmp	.LBB18_198
	.align	16, 0x90
.LBB18_196:                             # %for.body.2062.cond.end.2086_crit_edge
                                        #   in Loop: Header=BB18_195 Depth=1
	leaq	1(%rdx), %rcx
	movq	%rcx, 400(%rsp)         # 8-byte Spill
	movq	%rdx, %rsi
.LBB18_198:                             # %cond.end.2086
                                        #   in Loop: Header=BB18_195 Depth=1
	movq	%rsi, 264(%rsp)         # 8-byte Spill
	movl	%ebx, %r12d
	orl	%edi, %r12d
	movl	%r15d, %ebp
	orl	%edi, %ebp
	movl	%edi, %ecx
	movl	%ecx, 392(%rsp)         # 4-byte Spill
	movl	%r14d, %edi
	orl	%ecx, %edi
	movzbl	%al, %r13d
	movl	%ebx, 384(%rsp)         # 4-byte Spill
	movq	%r13, %rsi
	movq	432(%rsp), %rdx         # 8-byte Reload
	callq	*352(%rsp)              # 8-byte Folded Reload
	movq	%rax, %rbx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	416(%rsp), %rdx         # 8-byte Reload
	callq	*344(%rsp)              # 8-byte Folded Reload
	movq	%rax, %rbp
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	424(%rsp), %rdx         # 8-byte Reload
	callq	*360(%rsp)              # 8-byte Folded Reload
	movl	%ebp, %ecx
	andl	%ebx, %ecx
	andl	%eax, %ecx
	movl	%ecx, %edx
	orl	$-256, %edx
	xorl	$255, %edx
	movl	272(%rsp), %r8d         # 4-byte Reload
	andl	%r8d, %ebx
	andl	%edx, %ebx
	movl	192(%rsp), %edi         # 4-byte Reload
	andl	%edi, %r14d
	orl	%ebx, %r14d
	movq	408(%rsp), %r9          # 8-byte Reload
	movb	%r14b, (%r9)
	andl	%r8d, %ebp
	andl	%edx, %ebp
	andl	%edi, %r15d
	orl	%ebp, %r15d
	movq	296(%rsp), %rsi         # 8-byte Reload
	movb	%r15b, (%rsi)
	andl	%r8d, %eax
	andl	%edx, %eax
	movl	384(%rsp), %edx         # 4-byte Reload
	andl	%edi, %edx
	orl	%eax, %edx
	movq	328(%rsp), %rax         # 8-byte Reload
	movb	%dl, (%rax)
	andl	%r8d, %ecx
	movl	392(%rsp), %eax         # 4-byte Reload
	andl	%edi, %eax
	orl	%ecx, %eax
	movl	%eax, %ecx
	movq	288(%rsp), %rax         # 8-byte Reload
	movb	%cl, (%rax)
	movq	48(%rsp), %rax          # 8-byte Reload
	cmpl	$17, %eax
	movl	$0, %ebx
	movl	240(%rsp), %eax         # 4-byte Reload
	movl	%eax, %ecx
	movq	264(%rsp), %rax         # 8-byte Reload
	movq	%rax, 368(%rsp)         # 8-byte Spill
	movq	400(%rsp), %r13         # 8-byte Reload
	jl	.LBB18_199
	.align	16, 0x90
.LBB18_200:                             # %while.body.2183
                                        #   Parent Loop BB18_195 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, 400(%rsp)         # 8-byte Spill
	movq	304(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rbx), %rdx
	movq	%rdx, 376(%rsp)         # 8-byte Spill
	movq	320(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rbx), %rcx
	movq	%rcx, 392(%rsp)         # 8-byte Spill
	movq	312(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rbx), %rax
	movq	%rax, 384(%rsp)         # 8-byte Spill
	movb	(%r9,%rax), %r12b
	movb	1(%r9,%rbx), %al
	orb	%r12b, %al
	movb	(%r9,%rdx), %r15b
	orb	%r12b, %r15b
	orb	(%r9,%rcx), %r12b
	movzbl	(%r13,%rbx), %edx
	movl	336(%rsp), %ecx         # 4-byte Reload
	testl	%ecx, %ecx
	je	.LBB18_202
# BB#201:                               # %cond.true.2202
                                        #   in Loop: Header=BB18_200 Depth=2
	shll	%cl, %edx
	movq	368(%rsp), %rcx         # 8-byte Reload
	movzbl	2(%rcx), %esi
	movl	280(%rsp), %ecx         # 4-byte Reload
	shrl	%cl, %esi
	addl	%edx, %esi
	movl	%esi, %edx
.LBB18_202:                             # %cond.end.2213
                                        #   in Loop: Header=BB18_200 Depth=2
	leaq	(%r13,%rbx), %rcx
	movq	%rcx, 368(%rsp)         # 8-byte Spill
	movzbl	%al, %edi
	movzbl	%dl, %ebp
	movq	%rbp, %rsi
	movq	432(%rsp), %rdx         # 8-byte Reload
	callq	*352(%rsp)              # 8-byte Folded Reload
	movq	%rax, %r14
	movzbl	%r15b, %edi
	movq	%rbp, %rsi
	movq	416(%rsp), %rdx         # 8-byte Reload
	callq	*344(%rsp)              # 8-byte Folded Reload
	movq	%rax, %r15
	movzbl	%r12b, %edi
	movq	%rbp, %rsi
	movq	424(%rsp), %rdx         # 8-byte Reload
	callq	*360(%rsp)              # 8-byte Folded Reload
	movq	%r15, %rcx
	andq	%r14, %rcx
	andq	%rax, %rcx
	movl	%ecx, %edx
	orl	$-256, %edx
	xorl	$255, %edx
	movl	%edx, %esi
	andl	%r14d, %esi
	movq	408(%rsp), %r9          # 8-byte Reload
	movb	%sil, 1(%r9,%rbx)
	movl	%edx, %esi
	andl	%r15d, %esi
	movq	376(%rsp), %rdi         # 8-byte Reload
	movb	%sil, (%r9,%rdi)
	andl	%eax, %edx
	movq	392(%rsp), %rax         # 8-byte Reload
	movb	%dl, (%r9,%rax)
	movq	384(%rsp), %rax         # 8-byte Reload
	movb	%cl, (%r9,%rax)
	movq	400(%rsp), %rcx         # 8-byte Reload
	leal	-8(%rcx), %eax
	incq	%rbx
	cmpl	$8, %ecx
	movl	%eax, %ecx
	jg	.LBB18_200
# BB#203:                               #   in Loop: Header=BB18_195 Depth=1
	movq	248(%rsp), %rdx         # 8-byte Reload
	movq	232(%rsp), %rbp         # 8-byte Reload
	movq	224(%rsp), %rdi         # 8-byte Reload
	movq	216(%rsp), %rcx         # 8-byte Reload
	movq	208(%rsp), %r13         # 8-byte Reload
	movq	200(%rsp), %r8          # 8-byte Reload
	movq	296(%rsp), %r10         # 8-byte Reload
	movq	328(%rsp), %r11         # 8-byte Reload
	movq	288(%rsp), %rsi         # 8-byte Reload
	jmp	.LBB18_204
	.align	16, 0x90
.LBB18_199:                             #   in Loop: Header=BB18_195 Depth=1
	movq	288(%rsp), %rsi         # 8-byte Reload
	leaq	1(%rsi), %rcx
	movq	328(%rsp), %r11         # 8-byte Reload
	leaq	1(%r11), %rdi
	movq	296(%rsp), %r10         # 8-byte Reload
	leaq	1(%r10), %rbp
	leaq	1(%r9), %rdx
	movl	240(%rsp), %eax         # 4-byte Reload
	movq	264(%rsp), %r8          # 8-byte Reload
.LBB18_204:                             # %while.end.2262
                                        #   in Loop: Header=BB18_195 Depth=1
	cmpl	$-7, %eax
	jl	.LBB18_209
# BB#205:                               # %if.then.2265
                                        #   in Loop: Header=BB18_195 Depth=1
	movzbl	(%rcx), %ebx
	movq	%rcx, 400(%rsp)         # 8-byte Spill
	movzbl	(%rdx), %eax
	movl	%eax, 368(%rsp)         # 4-byte Spill
	movq	%rdx, 376(%rsp)         # 8-byte Spill
	movzbl	(%rbp), %r14d
	movq	%rbp, 384(%rsp)         # 8-byte Spill
	movzbl	(%rdi), %r15d
	movq	%rdi, 392(%rsp)         # 8-byte Spill
	movzbl	(%r13), %eax
	movl	336(%rsp), %ecx         # 4-byte Reload
	testl	%ecx, %ecx
	je	.LBB18_206
# BB#207:                               # %cond.true.2272
                                        #   in Loop: Header=BB18_195 Depth=1
	movq	%rsi, 288(%rsp)         # 8-byte Spill
	movq	%r11, 328(%rsp)         # 8-byte Spill
	movq	%r10, 296(%rsp)         # 8-byte Spill
	movq	%r9, 408(%rsp)          # 8-byte Spill
	shll	%cl, %eax
	movzbl	2(%r8), %edx
	movl	280(%rsp), %ecx         # 4-byte Reload
	shrl	%cl, %edx
	addl	%eax, %edx
	movl	%edx, %eax
	jmp	.LBB18_208
.LBB18_206:                             #   in Loop: Header=BB18_195 Depth=1
	movq	%rsi, 288(%rsp)         # 8-byte Spill
	movq	%r11, 328(%rsp)         # 8-byte Spill
	movq	%r10, 296(%rsp)         # 8-byte Spill
	movq	%r9, 408(%rsp)          # 8-byte Spill
.LBB18_208:                             # %cond.end.2283
                                        #   in Loop: Header=BB18_195 Depth=1
	movl	%r15d, %r12d
	orl	%ebx, %r12d
	movl	%r14d, %ecx
	movl	%ecx, %ebp
	orl	%ebx, %ebp
	movl	368(%rsp), %r14d        # 4-byte Reload
	movl	%r14d, %edi
	orl	%ebx, %edi
	movzbl	%al, %r13d
	movq	%r13, %rsi
	movq	432(%rsp), %rdx         # 8-byte Reload
	movl	%r15d, 168(%rsp)        # 4-byte Spill
	movl	%ecx, %r15d
	movl	%ebx, 176(%rsp)         # 4-byte Spill
	callq	*352(%rsp)              # 8-byte Folded Reload
	movq	%rax, %rbx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	416(%rsp), %rdx         # 8-byte Reload
	callq	*344(%rsp)              # 8-byte Folded Reload
	movq	%rax, %rbp
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	424(%rsp), %rdx         # 8-byte Reload
	callq	*360(%rsp)              # 8-byte Folded Reload
	movl	%ebp, %ecx
	andl	%ebx, %ecx
	andl	%eax, %ecx
	movl	%ecx, %edx
	orl	$-256, %edx
	xorl	$255, %edx
	movl	256(%rsp), %esi         # 4-byte Reload
	andl	%esi, %ebx
	andl	%edx, %ebx
	movl	160(%rsp), %edi         # 4-byte Reload
	andl	%edi, %r14d
	orl	%ebx, %r14d
	movq	376(%rsp), %rbx         # 8-byte Reload
	movb	%r14b, (%rbx)
	andl	%esi, %ebp
	andl	%edx, %ebp
	andl	%edi, %r15d
	orl	%ebp, %r15d
	movq	384(%rsp), %rbp         # 8-byte Reload
	movb	%r15b, (%rbp)
	andl	%esi, %eax
	andl	%edx, %eax
	movl	168(%rsp), %edx         # 4-byte Reload
	andl	%edi, %edx
	orl	%eax, %edx
	movq	392(%rsp), %rax         # 8-byte Reload
	movb	%dl, (%rax)
	andl	%esi, %ecx
	movl	176(%rsp), %eax         # 4-byte Reload
	andl	%edi, %eax
	orl	%ecx, %eax
	movl	%eax, %ecx
	movq	400(%rsp), %rax         # 8-byte Reload
	movb	%cl, (%rax)
	movq	408(%rsp), %r9          # 8-byte Reload
	movq	296(%rsp), %r10         # 8-byte Reload
	movq	328(%rsp), %r11         # 8-byte Reload
	movq	288(%rsp), %rsi         # 8-byte Reload
.LBB18_209:                             # %if.end.2375
                                        #   in Loop: Header=BB18_195 Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	addq	%rax, %r9
	addq	%rax, %r10
	addq	%rax, %r11
	addq	%rax, %rsi
	movq	264(%rsp), %rdx         # 8-byte Reload
	movq	184(%rsp), %rcx         # 8-byte Reload
	addq	%rcx, %rdx
	addq	%rax, 248(%rsp)         # 8-byte Folded Spill
	addq	%rax, 232(%rsp)         # 8-byte Folded Spill
	addq	%rax, 224(%rsp)         # 8-byte Folded Spill
	addq	%rax, 216(%rsp)         # 8-byte Folded Spill
	addq	%rcx, 208(%rsp)         # 8-byte Folded Spill
	addq	%rcx, 200(%rsp)         # 8-byte Folded Spill
	movq	56(%rsp), %rax          # 8-byte Reload
	cmpl	$1, %eax
	leal	-1(%rax), %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	jg	.LBB18_195
.LBB18_210:                             # %cleanup.2390
	addq	$440, %rsp              # imm = 0x1B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	planar_cmyk4bit_strip_copy_rop, .Lfunc_end18-planar_cmyk4bit_strip_copy_rop
	.cfi_endproc

	.type	expand_4to1,@object     # @expand_4to1
	.section	.rodata,"a",@progbits
	.align	16
expand_4to1:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	256                     # 0x100
	.long	257                     # 0x101
	.long	65536                   # 0x10000
	.long	65537                   # 0x10001
	.long	65792                   # 0x10100
	.long	65793                   # 0x10101
	.long	16777216                # 0x1000000
	.long	16777217                # 0x1000001
	.long	16777472                # 0x1000100
	.long	16777473                # 0x1000101
	.long	16842752                # 0x1010000
	.long	16842753                # 0x1010001
	.long	16843008                # 0x1010100
	.long	16843009                # 0x1010101
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	258                     # 0x102
	.long	259                     # 0x103
	.long	65538                   # 0x10002
	.long	65539                   # 0x10003
	.long	65794                   # 0x10102
	.long	65795                   # 0x10103
	.long	16777218                # 0x1000002
	.long	16777219                # 0x1000003
	.long	16777474                # 0x1000102
	.long	16777475                # 0x1000103
	.long	16842754                # 0x1010002
	.long	16842755                # 0x1010003
	.long	16843010                # 0x1010102
	.long	16843011                # 0x1010103
	.long	512                     # 0x200
	.long	513                     # 0x201
	.long	768                     # 0x300
	.long	769                     # 0x301
	.long	66048                   # 0x10200
	.long	66049                   # 0x10201
	.long	66304                   # 0x10300
	.long	66305                   # 0x10301
	.long	16777728                # 0x1000200
	.long	16777729                # 0x1000201
	.long	16777984                # 0x1000300
	.long	16777985                # 0x1000301
	.long	16843264                # 0x1010200
	.long	16843265                # 0x1010201
	.long	16843520                # 0x1010300
	.long	16843521                # 0x1010301
	.long	514                     # 0x202
	.long	515                     # 0x203
	.long	770                     # 0x302
	.long	771                     # 0x303
	.long	66050                   # 0x10202
	.long	66051                   # 0x10203
	.long	66306                   # 0x10302
	.long	66307                   # 0x10303
	.long	16777730                # 0x1000202
	.long	16777731                # 0x1000203
	.long	16777986                # 0x1000302
	.long	16777987                # 0x1000303
	.long	16843266                # 0x1010202
	.long	16843267                # 0x1010203
	.long	16843522                # 0x1010302
	.long	16843523                # 0x1010303
	.long	131072                  # 0x20000
	.long	131073                  # 0x20001
	.long	131328                  # 0x20100
	.long	131329                  # 0x20101
	.long	196608                  # 0x30000
	.long	196609                  # 0x30001
	.long	196864                  # 0x30100
	.long	196865                  # 0x30101
	.long	16908288                # 0x1020000
	.long	16908289                # 0x1020001
	.long	16908544                # 0x1020100
	.long	16908545                # 0x1020101
	.long	16973824                # 0x1030000
	.long	16973825                # 0x1030001
	.long	16974080                # 0x1030100
	.long	16974081                # 0x1030101
	.long	131074                  # 0x20002
	.long	131075                  # 0x20003
	.long	131330                  # 0x20102
	.long	131331                  # 0x20103
	.long	196610                  # 0x30002
	.long	196611                  # 0x30003
	.long	196866                  # 0x30102
	.long	196867                  # 0x30103
	.long	16908290                # 0x1020002
	.long	16908291                # 0x1020003
	.long	16908546                # 0x1020102
	.long	16908547                # 0x1020103
	.long	16973826                # 0x1030002
	.long	16973827                # 0x1030003
	.long	16974082                # 0x1030102
	.long	16974083                # 0x1030103
	.long	131584                  # 0x20200
	.long	131585                  # 0x20201
	.long	131840                  # 0x20300
	.long	131841                  # 0x20301
	.long	197120                  # 0x30200
	.long	197121                  # 0x30201
	.long	197376                  # 0x30300
	.long	197377                  # 0x30301
	.long	16908800                # 0x1020200
	.long	16908801                # 0x1020201
	.long	16909056                # 0x1020300
	.long	16909057                # 0x1020301
	.long	16974336                # 0x1030200
	.long	16974337                # 0x1030201
	.long	16974592                # 0x1030300
	.long	16974593                # 0x1030301
	.long	131586                  # 0x20202
	.long	131587                  # 0x20203
	.long	131842                  # 0x20302
	.long	131843                  # 0x20303
	.long	197122                  # 0x30202
	.long	197123                  # 0x30203
	.long	197378                  # 0x30302
	.long	197379                  # 0x30303
	.long	16908802                # 0x1020202
	.long	16908803                # 0x1020203
	.long	16909058                # 0x1020302
	.long	16909059                # 0x1020303
	.long	16974338                # 0x1030202
	.long	16974339                # 0x1030203
	.long	16974594                # 0x1030302
	.long	16974595                # 0x1030303
	.long	33554432                # 0x2000000
	.long	33554433                # 0x2000001
	.long	33554688                # 0x2000100
	.long	33554689                # 0x2000101
	.long	33619968                # 0x2010000
	.long	33619969                # 0x2010001
	.long	33620224                # 0x2010100
	.long	33620225                # 0x2010101
	.long	50331648                # 0x3000000
	.long	50331649                # 0x3000001
	.long	50331904                # 0x3000100
	.long	50331905                # 0x3000101
	.long	50397184                # 0x3010000
	.long	50397185                # 0x3010001
	.long	50397440                # 0x3010100
	.long	50397441                # 0x3010101
	.long	33554434                # 0x2000002
	.long	33554435                # 0x2000003
	.long	33554690                # 0x2000102
	.long	33554691                # 0x2000103
	.long	33619970                # 0x2010002
	.long	33619971                # 0x2010003
	.long	33620226                # 0x2010102
	.long	33620227                # 0x2010103
	.long	50331650                # 0x3000002
	.long	50331651                # 0x3000003
	.long	50331906                # 0x3000102
	.long	50331907                # 0x3000103
	.long	50397186                # 0x3010002
	.long	50397187                # 0x3010003
	.long	50397442                # 0x3010102
	.long	50397443                # 0x3010103
	.long	33554944                # 0x2000200
	.long	33554945                # 0x2000201
	.long	33555200                # 0x2000300
	.long	33555201                # 0x2000301
	.long	33620480                # 0x2010200
	.long	33620481                # 0x2010201
	.long	33620736                # 0x2010300
	.long	33620737                # 0x2010301
	.long	50332160                # 0x3000200
	.long	50332161                # 0x3000201
	.long	50332416                # 0x3000300
	.long	50332417                # 0x3000301
	.long	50397696                # 0x3010200
	.long	50397697                # 0x3010201
	.long	50397952                # 0x3010300
	.long	50397953                # 0x3010301
	.long	33554946                # 0x2000202
	.long	33554947                # 0x2000203
	.long	33555202                # 0x2000302
	.long	33555203                # 0x2000303
	.long	33620482                # 0x2010202
	.long	33620483                # 0x2010203
	.long	33620738                # 0x2010302
	.long	33620739                # 0x2010303
	.long	50332162                # 0x3000202
	.long	50332163                # 0x3000203
	.long	50332418                # 0x3000302
	.long	50332419                # 0x3000303
	.long	50397698                # 0x3010202
	.long	50397699                # 0x3010203
	.long	50397954                # 0x3010302
	.long	50397955                # 0x3010303
	.long	33685504                # 0x2020000
	.long	33685505                # 0x2020001
	.long	33685760                # 0x2020100
	.long	33685761                # 0x2020101
	.long	33751040                # 0x2030000
	.long	33751041                # 0x2030001
	.long	33751296                # 0x2030100
	.long	33751297                # 0x2030101
	.long	50462720                # 0x3020000
	.long	50462721                # 0x3020001
	.long	50462976                # 0x3020100
	.long	50462977                # 0x3020101
	.long	50528256                # 0x3030000
	.long	50528257                # 0x3030001
	.long	50528512                # 0x3030100
	.long	50528513                # 0x3030101
	.long	33685506                # 0x2020002
	.long	33685507                # 0x2020003
	.long	33685762                # 0x2020102
	.long	33685763                # 0x2020103
	.long	33751042                # 0x2030002
	.long	33751043                # 0x2030003
	.long	33751298                # 0x2030102
	.long	33751299                # 0x2030103
	.long	50462722                # 0x3020002
	.long	50462723                # 0x3020003
	.long	50462978                # 0x3020102
	.long	50462979                # 0x3020103
	.long	50528258                # 0x3030002
	.long	50528259                # 0x3030003
	.long	50528514                # 0x3030102
	.long	50528515                # 0x3030103
	.long	33686016                # 0x2020200
	.long	33686017                # 0x2020201
	.long	33686272                # 0x2020300
	.long	33686273                # 0x2020301
	.long	33751552                # 0x2030200
	.long	33751553                # 0x2030201
	.long	33751808                # 0x2030300
	.long	33751809                # 0x2030301
	.long	50463232                # 0x3020200
	.long	50463233                # 0x3020201
	.long	50463488                # 0x3020300
	.long	50463489                # 0x3020301
	.long	50528768                # 0x3030200
	.long	50528769                # 0x3030201
	.long	50529024                # 0x3030300
	.long	50529025                # 0x3030301
	.long	33686018                # 0x2020202
	.long	33686019                # 0x2020203
	.long	33686274                # 0x2020302
	.long	33686275                # 0x2020303
	.long	33751554                # 0x2030202
	.long	33751555                # 0x2030203
	.long	33751810                # 0x2030302
	.long	33751811                # 0x2030303
	.long	50463234                # 0x3020202
	.long	50463235                # 0x3020203
	.long	50463490                # 0x3020302
	.long	50463491                # 0x3020303
	.long	50528770                # 0x3030202
	.long	50528771                # 0x3030203
	.long	50529026                # 0x3030302
	.long	50529027                # 0x3030303
	.size	expand_4to1, 1024

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"mem_planar_strip_copy_rop(buf)"
	.size	.L.str, 31

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"mem_planar_strip_copy_rop(line_ptrs)"
	.size	.L.str.1, 37

	.type	cmykrop,@object         # @cmykrop
	.section	.rodata.str1.16,"aMS",@progbits,1
	.align	16
cmykrop:
	.asciz	"\377\177\277?\337_\237\037\357o\257/\317O\217\017\367w\2677\327W\227\027\347g\247'\307G\207\007\373{\273;\333[\233\033\353k\253+\313K\213\013\363s\2633\323S\223\023\343c\243#\303C\203\003\375}\275=\335]\235\035\355m\255-\315M\215\r\365u\2655\325U\225\025\345e\245%\305E\205\005\371y\2719\331Y\231\031\351i\251)\311I\211\t\361q\2611\321Q\221\021\341a\241!\301A\201\001\376~\276>\336^\236\036\356n\256.\316N\216\016\366v\2666\326V\226\026\346f\246&\306F\206\006\372z\272:\332Z\232\032\352j\252*\312J\212\n\362r\2622\322R\222\022\342b\242\"\302B\202\002\374|\274<\334\\\234\034\354l\254,\314L\214\f\364t\2644\324T\224\024\344d\244$\304D\204\004\370x\2708\330X\230\030\350h\250(\310H\210\b\360p\2600\320P\220\020\340`\240 \300@\200"
	.size	cmykrop, 256


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
