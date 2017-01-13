	.text
	.file	"gdevbjc_.bc"
	.align	16, 0x90
	.type	bjc_print_page_mono,@function
bjc_print_page_mono:                    # @bjc_print_page_mono
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
	subq	$72, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 128
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
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rdi, %rbp
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %ebx
	movq	24(%rbp), %rdi
	movl	$.L.str.118, %edx
	movl	%ebx, %esi
	callq	*64(%rdi)
	movq	%rax, %r14
	movq	24(%rbp), %rdi
	leal	1(%rbx,%rbx), %esi
	movl	$.L.str.119, %edx
	callq	*64(%rdi)
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	18488(%rbp), %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	cmpl	$1, 18504(%rbp)
	movb	$18, %r12b
	je	.LBB0_2
# BB#1:                                 # %cond.false
	movl	44(%rsp), %r12d         # 4-byte Reload
	shrl	$3, %r12d
	andl	$1, %r12d
	orl	$16, %r12d
.LBB0_2:                                # %cond.end
	testq	%r14, %r14
	movl	$-25, %eax
	je	.LBB0_25
# BB#3:                                 # %cond.end
	cmpq	$0, 8(%rsp)             # 8-byte Folded Reload
	je	.LBB0_25
# BB#4:                                 # %if.end
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movl	18500(%rbp), %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	movl	832(%rbp), %ecx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	cmpl	$1, %eax
	sete	60(%rsp)                # 1-byte Folded Spill
	movq	%r14, 64(%rsp)          # 8-byte Spill
	cvttss2si	888(%rbp), %ebx
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	cvttss2si	884(%rbp), %r15d
	movq	(%rsp), %r13            # 8-byte Reload
	movq	%r13, %rdi
	callq	bjc_put_set_initial
	movslq	18480(%rbp), %rax
	movsbl	18484(%rbp), %ecx
	movsbl	%r12b, %esi
	movsbl	media_codes+1(%rax,%rax), %edx
	xorl	%r8d, %r8d
	movq	%r13, %rdi
	callq	bjc_put_print_method
	movslq	18480(%rbp), %rax
	movsbl	18476(%rbp), %esi
	movsbl	media_codes(%rax,%rax), %edx
	movq	%r13, %rdi
	callq	bjc_put_media_supply
	movq	%r13, %rdi
	movl	%r15d, %esi
	movq	%rbp, %r15
	movl	%ebx, %edx
	movq	64(%rsp), %r14          # 8-byte Reload
	callq	bjc_put_raster_resolution
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r13, %rdi
	callq	bjc_put_page_margins
	movzbl	60(%rsp), %esi          # 1-byte Folded Reload
	movq	%r13, %rdi
	callq	bjc_put_set_compression
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	%r13, %rdi
	callq	bjc_put_image_format
	cmpl	$0, 836(%r15)
	jle	.LBB0_24
# BB#5:                                 # %for.body.lr.ph
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%rcx), %eax
	andl	$-8, %eax
	subl	%eax, %ecx
	movslq	%ecx, %rax
	movl	44(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, %edx
	andl	$8, %edx
	movl	%edx, 24(%rsp)          # 4-byte Spill
	movl	%ecx, %edx
	andl	$1, %edx
	movl	%edx, 20(%rsp)          # 4-byte Spill
	movl	%ecx, %edx
	andl	$2, %edx
	movl	%edx, 16(%rsp)          # 4-byte Spill
	andl	$4, %ecx
	movl	%ecx, 44(%rsp)          # 4-byte Spill
	xorl	%ebp, %ebp
	movzbl	.Lbjc_print_page_color.mask_array(%rax), %eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	xorl	%r12d, %r12d
	movq	48(%rsp), %rbx          # 8-byte Reload
	.align	16, 0x90
.LBB0_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movl	%ebp, %esi
	movq	%r14, %rdx
	movl	%ebx, %ecx
	callq	gdev_prn_copy_scan_lines
	movl	18496(%r15), %edx
	movq	%r14, %rdi
	movl	%ebx, %esi
	movl	60(%rsp), %ecx          # 4-byte Reload
	callq	bjc_invert_bytes
	testl	%eax, %eax
	je	.LBB0_20
# BB#7:                                 # %if.then.39
                                        #   in Loop: Header=BB0_6 Depth=1
	testl	%r12d, %r12d
	je	.LBB0_9
# BB#8:                                 # %if.then.41
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	%r13, %rdi
	movl	%r12d, %esi
	callq	bjc_put_raster_skip
.LBB0_9:                                # %if.end.42
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$1, 40(%rsp)            # 4-byte Folded Reload
	movq	%r14, %r15
	movl	%ebx, %r14d
	jne	.LBB0_11
# BB#10:                                # %if.then.44
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	64(%rsp), %rdi          # 8-byte Reload
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	8(%rsp), %r15           # 8-byte Reload
	movq	%r15, %rdx
	callq	bjc_compress
	movl	%eax, %r14d
.LBB0_11:                               # %if.end.46
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, 24(%rsp)            # 4-byte Folded Reload
	je	.LBB0_13
# BB#12:                                # %if.then.50
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$75, %esi
	movq	%r13, %rdi
	movq	%r15, %rdx
	movl	%r14d, %ecx
	callq	bjc_put_cmyk_image
	movq	%r13, %rdi
	callq	bjc_put_CR
.LBB0_13:                               # %if.end.51
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	je	.LBB0_15
# BB#14:                                # %if.then.55
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$67, %esi
	movq	%r13, %rdi
	movq	%r15, %rdx
	movl	%r14d, %ecx
	callq	bjc_put_cmyk_image
	movq	%r13, %rdi
	callq	bjc_put_CR
.LBB0_15:                               # %if.end.56
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$0, 16(%rsp)            # 4-byte Folded Reload
	je	.LBB0_17
# BB#16:                                # %if.then.60
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$77, %esi
	movq	%r13, %rdi
	movq	%r15, %rdx
	movl	%r14d, %ecx
	callq	bjc_put_cmyk_image
	movq	%r13, %rdi
	callq	bjc_put_CR
.LBB0_17:                               # %if.end.61
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$1, %r12d
	cmpl	$0, 44(%rsp)            # 4-byte Folded Reload
	je	.LBB0_18
# BB#19:                                # %if.then.65
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$89, %esi
	movq	%r13, %rdi
	movq	%r15, %rdx
	movl	%r14d, %ecx
	callq	bjc_put_cmyk_image
	movq	%r13, %rdi
	callq	bjc_put_CR
.LBB0_18:                               #   in Loop: Header=BB0_6 Depth=1
	movq	64(%rsp), %r14          # 8-byte Reload
	movq	32(%rsp), %r15          # 8-byte Reload
	movq	48(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB0_21
	.align	16, 0x90
.LBB0_20:                               # %if.else.67
                                        #   in Loop: Header=BB0_6 Depth=1
	incl	%r12d
.LBB0_21:                               # %for.inc
                                        #   in Loop: Header=BB0_6 Depth=1
	incl	%ebp
	cmpl	836(%r15), %ebp
	jl	.LBB0_6
# BB#22:                                # %for.end
	testl	%r12d, %r12d
	je	.LBB0_24
# BB#23:                                # %if.then.71
	movq	%r13, %rdi
	movl	%r12d, %esi
	callq	bjc_put_raster_skip
.LBB0_24:                               # %if.end.72
	movq	%r13, %rdi
	callq	bjc_put_FF
	movq	%r13, %rdi
	callq	bjc_put_initialize
	movq	24(%r15), %rdi
	movl	$.L.str.119, %edx
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	*24(%rdi)
	movq	24(%r15), %rdi
	movl	$.L.str.118, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
	xorl	%eax, %eax
.LBB0_25:                               # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	bjc_print_page_mono, .Lfunc_end0-bjc_print_page_mono
	.cfi_endproc

	.align	16, 0x90
	.type	bjc_print_page_gray,@function
bjc_print_page_gray:                    # @bjc_print_page_gray
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
	subq	$88, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 144
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
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movl	832(%rbx), %esi
	movl	%esi, 60(%rsp)          # 4-byte Spill
	movl	%esi, %ebp
	sarl	$3, %ebp
	movl	%esi, %eax
	andl	$7, %eax
	cmpl	$1, %eax
	sbbl	$-1, %ebp
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	movq	24(%rbx), %rdi
	movl	$.L.str.120, %edx
	callq	*64(%rdi)
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	24(%rbx), %rdi
	movl	$.L.str.121, %edx
	movl	%ebp, %esi
	callq	*64(%rdi)
	movq	%rax, %r15
	movq	24(%rbx), %rdi
	leal	1(%rbp,%rbp), %esi
	movl	$.L.str.122, %edx
	callq	*64(%rdi)
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	18488(%rbx), %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	cmpl	$1, 18504(%rbx)
	movb	$18, %r12b
	je	.LBB1_2
# BB#1:                                 # %cond.false
	movl	40(%rsp), %r12d         # 4-byte Reload
	shrl	$3, %r12d
	andl	$1, %r12d
	orl	$16, %r12d
.LBB1_2:                                # %cond.end
	testq	%r15, %r15
	movl	$-25, %r14d
	je	.LBB1_27
# BB#3:                                 # %cond.end
	cmpq	$0, 64(%rsp)            # 8-byte Folded Reload
	je	.LBB1_27
# BB#4:                                 # %cond.end
	movq	%r15, 48(%rsp)          # 8-byte Spill
	cmpq	$0, 8(%rsp)             # 8-byte Folded Reload
	je	.LBB1_27
# BB#5:                                 # %if.end
	movq	%rbx, %r13
	movl	18500(%r13), %eax
	movl	%eax, 36(%rsp)          # 4-byte Spill
	movl	832(%r13), %ecx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	cmpl	$1, %eax
	sete	44(%rsp)                # 1-byte Folded Spill
	cvttss2si	888(%r13), %r15d
	cvttss2si	884(%r13), %ebp
	movss	18516(%r13), %xmm0      # xmm0 = mem[0],zero,zero,zero
	movl	$75, %esi
	movq	%r13, %rdi
	callq	bjc_build_gamma_table
	movq	72(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	bjc_put_set_initial
	movslq	18480(%r13), %rax
	movsbl	18484(%r13), %ecx
	movsbl	%r12b, %esi
	movq	%r13, %r12
	movsbl	media_codes+1(%rax,%rax), %edx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	bjc_put_print_method
	movslq	18480(%r12), %rax
	movsbl	18476(%r12), %esi
	movsbl	media_codes(%rax,%rax), %edx
	movq	%rbx, %rdi
	callq	bjc_put_media_supply
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movl	%r15d, %edx
	callq	bjc_put_raster_resolution
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	bjc_put_page_margins
	movzbl	44(%rsp), %esi          # 1-byte Folded Reload
	movq	%rbx, %rdi
	callq	bjc_put_set_compression
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	%rbx, %rdi
	callq	bjc_put_image_format
	movl	$0, 18544(%r12)
	movl	$31, 18548(%r12)
	movl	$1, 22648(%r12)
	movq	%r12, %rdi
	callq	FloydSteinbergInitG
	cmpl	$-1, %eax
	je	.LBB1_27
# BB#6:                                 # %for.cond.preheader
	cmpl	$0, 836(%r12)
	movq	48(%rsp), %r15          # 8-byte Reload
	jle	.LBB1_26
# BB#7:                                 # %for.body.lr.ph
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%rcx), %eax
	andl	$-8, %eax
	subl	%eax, %ecx
	movslq	%ecx, %rax
	movl	40(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, %edx
	andl	$8, %edx
	movl	%edx, 24(%rsp)          # 4-byte Spill
	movl	%ecx, %edx
	andl	$1, %edx
	movl	%edx, 20(%rsp)          # 4-byte Spill
	movl	%ecx, %edx
	andl	$2, %edx
	movl	%edx, 16(%rsp)          # 4-byte Spill
	andl	$4, %ecx
	movl	%ecx, 40(%rsp)          # 4-byte Spill
	xorl	%r14d, %r14d
	movzbl	.Lbjc_print_page_color.mask_array(%rax), %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB1_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movl	%r14d, %esi
	movq	64(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdx
	movl	60(%rsp), %ebp          # 4-byte Reload
	movl	%ebp, %ecx
	callq	gdev_prn_copy_scan_lines
	movl	18508(%r12), %r9d
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movl	%ebp, %ecx
	movq	80(%rsp), %rbx          # 8-byte Reload
	movl	%ebx, %r8d
	callq	FloydSteinbergDitheringG
	movl	18496(%r12), %edx
	movq	%r15, %rdi
	movl	%ebx, %esi
	movl	44(%rsp), %ecx          # 4-byte Reload
	callq	bjc_invert_bytes
	testl	%eax, %eax
	je	.LBB1_22
# BB#9:                                 # %if.then.59
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	%r12, %rbp
	testl	%r13d, %r13d
	je	.LBB1_11
# BB#10:                                # %if.then.61
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	72(%rsp), %rdi          # 8-byte Reload
	movl	%r13d, %esi
	callq	bjc_put_raster_skip
.LBB1_11:                               # %if.end.62
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$1, 36(%rsp)            # 4-byte Folded Reload
	movq	80(%rsp), %rax          # 8-byte Reload
	movl	%eax, %r12d
	jne	.LBB1_13
# BB#12:                                # %if.then.64
                                        #   in Loop: Header=BB1_8 Depth=1
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	80(%rsp), %rsi          # 8-byte Reload
	movq	8(%rsp), %r15           # 8-byte Reload
	movq	%r15, %rdx
	callq	bjc_compress
	movl	%eax, %r12d
.LBB1_13:                               # %if.end.66
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, 24(%rsp)            # 4-byte Folded Reload
	je	.LBB1_15
# BB#14:                                # %if.then.70
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$75, %esi
	movq	72(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r15, %rdx
	movl	%r12d, %ecx
	callq	bjc_put_cmyk_image
	movq	%rbx, %rdi
	callq	bjc_put_CR
.LBB1_15:                               # %if.end.71
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	je	.LBB1_17
# BB#16:                                # %if.then.75
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$67, %esi
	movq	72(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r15, %rdx
	movl	%r12d, %ecx
	callq	bjc_put_cmyk_image
	movq	%rbx, %rdi
	callq	bjc_put_CR
.LBB1_17:                               # %if.end.76
                                        #   in Loop: Header=BB1_8 Depth=1
	cmpl	$0, 16(%rsp)            # 4-byte Folded Reload
	je	.LBB1_19
# BB#18:                                # %if.then.80
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$77, %esi
	movq	72(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r15, %rdx
	movl	%r12d, %ecx
	callq	bjc_put_cmyk_image
	movq	%rbx, %rdi
	callq	bjc_put_CR
.LBB1_19:                               # %if.end.81
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$1, %r13d
	cmpl	$0, 40(%rsp)            # 4-byte Folded Reload
	je	.LBB1_20
# BB#21:                                # %if.then.85
                                        #   in Loop: Header=BB1_8 Depth=1
	movl	$89, %esi
	movq	72(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r15, %rdx
	movl	%r12d, %ecx
	callq	bjc_put_cmyk_image
	movq	%rbx, %rdi
	callq	bjc_put_CR
.LBB1_20:                               #   in Loop: Header=BB1_8 Depth=1
	movq	48(%rsp), %r15          # 8-byte Reload
	movq	%rbp, %r12
	jmp	.LBB1_23
	.align	16, 0x90
.LBB1_22:                               # %if.else.87
                                        #   in Loop: Header=BB1_8 Depth=1
	incl	%r13d
.LBB1_23:                               # %for.inc
                                        #   in Loop: Header=BB1_8 Depth=1
	incl	%r14d
	cmpl	836(%r12), %r14d
	jl	.LBB1_8
# BB#24:                                # %for.end
	testl	%r13d, %r13d
	je	.LBB1_26
# BB#25:                                # %if.then.91
	movq	72(%rsp), %rdi          # 8-byte Reload
	movl	%r13d, %esi
	callq	bjc_put_raster_skip
.LBB1_26:                               # %if.end.92
	movq	72(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	bjc_put_FF
	movq	%rbx, %rdi
	callq	bjc_put_initialize
	movq	%r12, %rdi
	callq	FloydSteinbergCloseG
	movq	24(%r12), %rdi
	movl	$.L.str.121, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	movq	24(%r12), %rdi
	movl	$.L.str.122, %edx
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	*24(%rdi)
	movq	24(%r12), %rdi
	movl	$.L.str.120, %edx
	movq	64(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	xorl	%r14d, %r14d
.LBB1_27:                               # %cleanup
	movl	%r14d, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	bjc_print_page_gray, .Lfunc_end1-bjc_print_page_gray
	.cfi_endproc

	.align	16, 0x90
	.type	bjc_print_page_cmyk,@function
bjc_print_page_cmyk:                    # @bjc_print_page_cmyk
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp30:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 56
	subq	$184, %rsp
.Ltmp32:
	.cfi_def_cfa_offset 240
.Ltmp33:
	.cfi_offset %rbx, -56
.Ltmp34:
	.cfi_offset %r12, -48
.Ltmp35:
	.cfi_offset %r13, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	832(%r15), %ebp
	addl	$63, %ebp
	sarl	$6, %ebp
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	movq	24(%r15), %rdi
	movl	%ebp, %esi
	shll	$5, %esi
	movl	$.L.str.123, %edx
	callq	*64(%rdi)
	movq	%rax, %rbx
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	movq	24(%r15), %rdi
	shll	$4, %ebp
	leal	1(%rbp), %esi
	movl	$.L.str.124, %edx
	callq	*64(%rdi)
	testq	%rbx, %rbx
	movl	$-25, %edx
	je	.LBB2_42
# BB#1:                                 # %entry
	movq	%r14, %rcx
	testq	%rax, %rax
	je	.LBB2_42
# BB#2:                                 # %if.end
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	18500(%r15), %eax
	movl	%eax, 100(%rsp)         # 4-byte Spill
	movl	832(%r15), %r14d
	movl	18488(%r15), %r12d
	movl	18496(%r15), %edx
	movl	%edx, 76(%rsp)          # 4-byte Spill
	cmpl	$1, %eax
	sete	75(%rsp)                # 1-byte Folded Spill
	cvttss2si	888(%r15), %eax
	movl	%eax, 64(%rsp)          # 4-byte Spill
	cvttss2si	884(%r15), %r13d
	movq	%rcx, %rbx
	movq	%rbx, %rdi
	callq	bjc_put_set_initial
	movslq	18480(%r15), %rax
	movsbl	18484(%r15), %ecx
	movsbl	media_codes+1(%rax,%rax), %edx
	movl	$16, %esi
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	bjc_put_print_method
	movslq	18480(%r15), %rax
	movsbl	18476(%r15), %esi
	movsbl	media_codes(%rax,%rax), %edx
	movq	%rbx, %rdi
	callq	bjc_put_media_supply
	movq	%rbx, %rdi
	movl	%r13d, %esi
	movl	64(%rsp), %edx          # 4-byte Reload
	callq	bjc_put_raster_resolution
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	bjc_put_page_margins
	movzbl	75(%rsp), %esi          # 1-byte Folded Reload
	movq	%rbx, %rdi
	callq	bjc_put_set_compression
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	%rbx, %rdi
	callq	bjc_put_image_format
	cmpl	$0, 836(%r15)
	jle	.LBB2_41
# BB#3:                                 # %for.cond.33.preheader.lr.ph
	movq	%rbx, 104(%rsp)         # 8-byte Spill
	movq	80(%rsp), %rax          # 8-byte Reload
	leal	(,%rax,8), %r13d
	movl	%r14d, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%r14), %eax
	andl	$-8, %eax
	subl	%eax, %r14d
	movslq	%r14d, %rax
	movb	.Lbjc_print_page_color.mask_array(%rax), %al
	movb	%al, 75(%rsp)           # 1-byte Spill
	movl	%r12d, %eax
	andl	$1, %eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
	movl	%r12d, %eax
	andl	$2, %eax
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movl	%r12d, %eax
	andl	$4, %eax
	movl	%eax, 24(%rsp)          # 4-byte Spill
	andl	$8, %r12d
	movl	%r12d, 36(%rsp)         # 4-byte Spill
	movl	%r13d, %eax
	leal	(%r13,%r13,2), %ecx
	movq	88(%rsp), %rdx          # 8-byte Reload
	leaq	(%rax,%rdx), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leaq	(%rbp,%rdx), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	leaq	(%rcx,%rdx), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	leaq	112(%rsp), %r12
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB2_4:                                # %for.cond.33.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_6 Depth 2
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	gx_render_plane_init
	movq	%r12, 8(%rsp)
	leaq	180(%rsp), %rbx
	movq	%rbx, (%rsp)
	movl	$1, %edx
	movq	%r15, %rdi
	movl	%r14d, %esi
	movq	88(%rsp), %rcx          # 8-byte Reload
	movl	%r13d, %r8d
	leaq	144(%rsp), %r9
	callq	gdev_prn_get_lines
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	gx_render_plane_init
	movq	%r12, 8(%rsp)
	movq	%rbx, (%rsp)
	movl	$1, %edx
	movq	%r15, %rdi
	movl	%r14d, %esi
	movq	64(%rsp), %rcx          # 8-byte Reload
	movl	%r13d, %r8d
	leaq	152(%rsp), %r9
	callq	gdev_prn_get_lines
	movl	$2, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	gx_render_plane_init
	movq	%r12, 8(%rsp)
	movq	%rbx, (%rsp)
	movl	$1, %edx
	movq	%r15, %rdi
	movl	%r14d, %esi
	movq	56(%rsp), %rcx          # 8-byte Reload
	movl	%r13d, %r8d
	leaq	160(%rsp), %r9
	callq	gdev_prn_get_lines
	movl	$3, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	gx_render_plane_init
	movq	%r12, 8(%rsp)
	movq	%rbx, (%rsp)
	movl	$1, %edx
	movq	%r15, %rdi
	movl	%r14d, %esi
	movq	48(%rsp), %rcx          # 8-byte Reload
	movl	%r13d, %r8d
	leaq	168(%rsp), %r9
	callq	gdev_prn_get_lines
	movq	80(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	je	.LBB2_10
# BB#5:                                 # %for.body.49.lr.ph
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	168(%rsp), %rax
	movq	160(%rsp), %rcx
	movq	144(%rsp), %rdx
	movq	152(%rsp), %rsi
	xorl	%edi, %edi
	.align	16, 0x90
.LBB2_6:                                # %for.body.49
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, 18512(%r15)
	je	.LBB2_8
# BB#7:                                 # %if.then.50
                                        #   in Loop: Header=BB2_6 Depth=2
	movb	(%rsi,%rdi), %bl
	andb	(%rdx,%rdi), %bl
	andb	(%rcx,%rdi), %bl
	movb	%bl, (%rax,%rdi)
	notb	%bl
	andb	%bl, (%rdx,%rdi)
	movb	(%rax,%rdi), %bl
	notb	%bl
	andb	%bl, (%rsi,%rdi)
	movb	(%rax,%rdi), %bl
	notb	%bl
	andb	%bl, (%rcx,%rdi)
	jmp	.LBB2_9
	.align	16, 0x90
.LBB2_8:                                # %if.else
                                        #   in Loop: Header=BB2_6 Depth=2
	movb	(%rax,%rdi), %bl
	orb	%bl, (%rdx,%rdi)
	movb	(%rax,%rdi), %bl
	orb	%bl, (%rsi,%rdi)
	movb	(%rax,%rdi), %bl
	orb	%bl, (%rcx,%rdi)
	movb	$0, (%rax,%rdi)
.LBB2_9:                                # %for.inc.82
                                        #   in Loop: Header=BB2_6 Depth=2
	incq	%rdi
	cmpl	%r13d, %edi
	jb	.LBB2_6
.LBB2_10:                               # %for.end.87
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	144(%rsp), %rdi
	movq	152(%rsp), %rsi
	movq	160(%rsp), %rdx
	movq	168(%rsp), %rcx
	leaq	128(%rsp), %rax
	movq	%rax, 8(%rsp)
	movzbl	75(%rsp), %eax          # 1-byte Folded Reload
	movl	%eax, (%rsp)
	movl	%r13d, %r8d
	movl	76(%rsp), %r9d          # 4-byte Reload
	callq	bjc_invert_cmyk_bytes
	testl	%eax, %eax
	je	.LBB2_37
# BB#11:                                # %if.then.94
                                        #   in Loop: Header=BB2_4 Depth=1
	testl	%ebp, %ebp
	je	.LBB2_13
# BB#12:                                # %if.then.96
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	104(%rsp), %rdi         # 8-byte Reload
	movl	%ebp, %esi
	callq	bjc_put_raster_skip
.LBB2_13:                               # %if.end.97
                                        #   in Loop: Header=BB2_4 Depth=1
	cmpl	$0, 32(%rsp)            # 4-byte Folded Reload
	movq	104(%rsp), %rbx         # 8-byte Reload
	je	.LBB2_19
# BB#14:                                # %if.end.97
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	128(%rsp), %eax
	testl	%eax, %eax
	je	.LBB2_19
# BB#15:                                # %if.then.102
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	144(%rsp), %rdx
	cmpl	$1, 100(%rsp)           # 4-byte Folded Reload
	jne	.LBB2_16
# BB#17:                                # %if.then.104
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	%rdx, %rdi
	movl	%r13d, %esi
	movq	40(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdx
	callq	bjc_compress
	movl	%eax, %ecx
	movq	%rbp, %rdx
	jmp	.LBB2_18
	.align	16, 0x90
.LBB2_37:                               # %if.else.153
                                        #   in Loop: Header=BB2_4 Depth=1
	incl	%ebp
	jmp	.LBB2_38
.LBB2_16:                               #   in Loop: Header=BB2_4 Depth=1
	movl	%r13d, %ecx
.LBB2_18:                               # %if.end.109
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	$67, %esi
	movq	%rbx, %rdi
	callq	bjc_put_cmyk_image
	movq	%rbx, %rdi
	callq	bjc_put_CR
.LBB2_19:                               # %if.end.110
                                        #   in Loop: Header=BB2_4 Depth=1
	cmpl	$0, 28(%rsp)            # 4-byte Folded Reload
	je	.LBB2_25
# BB#20:                                # %if.end.110
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	132(%rsp), %eax
	testl	%eax, %eax
	je	.LBB2_25
# BB#21:                                # %if.then.116
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	152(%rsp), %rdx
	cmpl	$1, 100(%rsp)           # 4-byte Folded Reload
	jne	.LBB2_22
# BB#23:                                # %if.then.118
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	%rdx, %rdi
	movl	%r13d, %esi
	movq	40(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdx
	callq	bjc_compress
	movl	%eax, %ecx
	movq	%rbp, %rdx
	jmp	.LBB2_24
.LBB2_22:                               #   in Loop: Header=BB2_4 Depth=1
	movl	%r13d, %ecx
.LBB2_24:                               # %if.end.123
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	$77, %esi
	movq	%rbx, %rdi
	callq	bjc_put_cmyk_image
	movq	%rbx, %rdi
	callq	bjc_put_CR
.LBB2_25:                               # %if.end.124
                                        #   in Loop: Header=BB2_4 Depth=1
	cmpl	$0, 24(%rsp)            # 4-byte Folded Reload
	je	.LBB2_31
# BB#26:                                # %if.end.124
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	136(%rsp), %eax
	testl	%eax, %eax
	je	.LBB2_31
# BB#27:                                # %if.then.130
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	160(%rsp), %rdx
	cmpl	$1, 100(%rsp)           # 4-byte Folded Reload
	jne	.LBB2_28
# BB#29:                                # %if.then.132
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	%rdx, %rdi
	movl	%r13d, %esi
	movq	40(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdx
	callq	bjc_compress
	movl	%eax, %ecx
	movq	%rbp, %rdx
	jmp	.LBB2_30
.LBB2_28:                               #   in Loop: Header=BB2_4 Depth=1
	movl	%r13d, %ecx
.LBB2_30:                               # %if.end.137
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	$89, %esi
	movq	%rbx, %rdi
	callq	bjc_put_cmyk_image
	movq	%rbx, %rdi
	callq	bjc_put_CR
.LBB2_31:                               # %if.end.138
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	36(%rsp), %eax          # 4-byte Reload
	testl	%eax, %eax
	movl	$1, %ebp
	je	.LBB2_38
# BB#32:                                # %if.end.138
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	140(%rsp), %eax
	testl	%eax, %eax
	je	.LBB2_38
# BB#33:                                # %if.then.144
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	168(%rsp), %rdx
	cmpl	$1, 100(%rsp)           # 4-byte Folded Reload
	jne	.LBB2_34
# BB#35:                                # %if.then.146
                                        #   in Loop: Header=BB2_4 Depth=1
	movq	%rdx, %rdi
	movl	%r13d, %esi
	movq	40(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdx
	callq	bjc_compress
	movl	%eax, %ecx
	movq	%rbx, %rdx
	jmp	.LBB2_36
.LBB2_34:                               #   in Loop: Header=BB2_4 Depth=1
	movl	%r13d, %ecx
.LBB2_36:                               # %if.end.151
                                        #   in Loop: Header=BB2_4 Depth=1
	movl	$75, %esi
	movq	104(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	callq	bjc_put_cmyk_image
	movq	%rbx, %rdi
	callq	bjc_put_CR
.LBB2_38:                               # %for.inc.156
                                        #   in Loop: Header=BB2_4 Depth=1
	incl	%r14d
	cmpl	836(%r15), %r14d
	jl	.LBB2_4
# BB#39:                                # %for.end.158
	testl	%ebp, %ebp
	movq	104(%rsp), %rbx         # 8-byte Reload
	je	.LBB2_41
# BB#40:                                # %if.then.160
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	bjc_put_raster_skip
.LBB2_41:                               # %if.end.161
	movq	%rbx, %rdi
	callq	bjc_put_FF
	movq	%rbx, %rdi
	callq	bjc_put_initialize
	movq	24(%r15), %rdi
	movl	$.L.str.124, %edx
	movq	40(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movq	24(%r15), %rdi
	movl	$.L.str.123, %edx
	movq	88(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	xorl	%edx, %edx
.LBB2_42:                               # %cleanup
	movl	%edx, %eax
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	bjc_print_page_cmyk, .Lfunc_end2-bjc_print_page_cmyk
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_0:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	bjc_print_page_color,@function
bjc_print_page_color:                   # @bjc_print_page_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp42:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp43:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp44:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp45:
	.cfi_def_cfa_offset 208
.Ltmp46:
	.cfi_offset %rbx, -56
.Ltmp47:
	.cfi_offset %r12, -48
.Ltmp48:
	.cfi_offset %r13, -40
.Ltmp49:
	.cfi_offset %r14, -32
.Ltmp50:
	.cfi_offset %r15, -24
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movl	832(%r15), %ecx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movl	%ecx, %ebp
	sarl	$3, %ebp
	movl	%ecx, %eax
	andl	$7, %eax
	cmpl	$1, %eax
	sbbl	$-1, %ebp
	movq	%rbp, 88(%rsp)          # 8-byte Spill
	movq	24(%r15), %rdi
	leal	(,%rcx,4), %esi
	movl	$.L.str.125, %edx
	callq	*64(%rdi)
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	24(%r15), %rdi
	leal	(,%rbp,4), %esi
	movl	$.L.str.126, %edx
	callq	*64(%rdi)
	movq	%rax, %r12
	movq	24(%r15), %rdi
	leal	(%rbp,%rbp), %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	leal	1(%rbp,%rbp), %esi
	movl	$.L.str.127, %edx
	callq	*64(%rdi)
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leal	(%rbp,%rbp,2), %edx
	movl	18500(%r15), %eax
	movl	%eax, 108(%rsp)         # 4-byte Spill
	cmpl	$1, %eax
	sete	%bpl
	cvttss2si	884(%r15), %esi
	cvttss2si	888(%r15), %r13d
	movl	832(%r15), %ecx
	movl	18488(%r15), %eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	movss	18516(%r15), %xmm2      # xmm2 = mem[0],zero,zero,zero
	ucomiss	.LCPI3_0(%rip), %xmm2
	movaps	%xmm2, %xmm0
	movaps	%xmm2, %xmm1
	jne	.LBB3_2
	jp	.LBB3_2
# BB#1:                                 # %cond.false.55
	movss	18520(%r15), %xmm0      # xmm0 = mem[0],zero,zero,zero
	movss	18524(%r15), %xmm2      # xmm2 = mem[0],zero,zero,zero
	movss	18528(%r15), %xmm1      # xmm1 = mem[0],zero,zero,zero
.LBB3_2:                                # %cond.end.56
	testq	%r12, %r12
	movl	$-25, %r14d
	je	.LBB3_36
# BB#3:                                 # %cond.end.56
	cmpq	$0, 96(%rsp)            # 8-byte Folded Reload
	je	.LBB3_36
# BB#4:                                 # %cond.end.56
	movss	%xmm2, 76(%rsp)         # 4-byte Spill
	movss	%xmm1, 112(%rsp)        # 4-byte Spill
	movl	%esi, 128(%rsp)         # 4-byte Spill
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	cmpq	$0, 64(%rsp)            # 8-byte Folded Reload
	je	.LBB3_36
# BB#5:                                 # %if.end
	movl	$67, %esi
	movq	%r15, %rdi
	callq	bjc_build_gamma_table
	movl	$77, %esi
	movq	%r15, %rdi
	movss	76(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	bjc_build_gamma_table
	movl	$89, %esi
	movq	%r15, %rdi
	movss	112(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	bjc_build_gamma_table
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movq	%rbx, %rdi
	callq	bjc_put_set_initial
	movslq	18480(%r15), %rax
	movsbl	18484(%r15), %ecx
	movsbl	media_codes+1(%rax,%rax), %edx
	movl	$16, %esi
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	bjc_put_print_method
	movslq	18480(%r15), %rax
	movsbl	18476(%r15), %esi
	movsbl	media_codes(%rax,%rax), %edx
	movq	%rbx, %rdi
	callq	bjc_put_media_supply
	movq	%rbx, %rdi
	movl	128(%rsp), %esi         # 4-byte Reload
	movl	%r13d, %edx
	callq	bjc_put_raster_resolution
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	callq	bjc_put_page_margins
	movzbl	%bpl, %esi
	movq	%rbx, %rdi
	callq	bjc_put_set_compression
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	%rbx, %rdi
	callq	bjc_put_image_format
	movl	$0, 18544(%r15)
	movl	$31, 18548(%r15)
	movl	$1, 22648(%r15)
	movq	%r15, %rdi
	callq	FloydSteinbergInitC
	cmpl	$-1, %eax
	je	.LBB3_36
# BB#6:                                 # %for.cond.preheader
	cmpl	$0, 836(%r15)
	jle	.LBB3_35
# BB#7:                                 # %for.body.lr.ph
	movq	40(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%rcx), %eax
	andl	$-8, %eax
	subl	%eax, %ecx
	movslq	%ecx, %rax
	movq	88(%rsp), %rcx          # 8-byte Reload
	leaq	(%r12,%rcx), %rcx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movq	120(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r12), %rcx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	movq	32(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%r12), %rcx
	movq	%rcx, 112(%rsp)         # 8-byte Spill
	movq	%r12, %rbp
	movl	60(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, %edx
	andl	$1, %edx
	movl	%edx, 40(%rsp)          # 4-byte Spill
	movl	%ecx, %edx
	andl	$2, %edx
	movl	%edx, 32(%rsp)          # 4-byte Spill
	movl	%ecx, %edx
	andl	$4, %edx
	movl	%edx, 28(%rsp)          # 4-byte Spill
	andl	$8, %ecx
	movl	%ecx, 60(%rsp)          # 4-byte Spill
	xorl	%r14d, %r14d
	movzbl	.Lbjc_print_page_color.mask_array(%rax), %eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB3_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	gx_device_raster
	movq	%r15, %rdi
	movl	%r14d, %esi
	movq	96(%rsp), %r12          # 8-byte Reload
	movq	%r12, %rdx
	movl	%eax, %ecx
	callq	gdev_prn_copy_scan_lines
	movl	18508(%r15), %r9d
	movl	18512(%r15), %eax
	movl	%eax, (%rsp)
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	movq	80(%rsp), %rcx          # 8-byte Reload
	movq	88(%rsp), %rbx          # 8-byte Reload
	movl	%ebx, %r8d
	callq	FloydSteinbergDitheringC
	movl	18496(%r15), %r9d
	notl	%r9d
	leaq	136(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	76(%rsp), %eax          # 4-byte Reload
	movl	%eax, (%rsp)
	movq	%rbp, %rdi
	movq	128(%rsp), %rsi         # 8-byte Reload
	movq	120(%rsp), %rdx         # 8-byte Reload
	movq	112(%rsp), %rcx         # 8-byte Reload
	movl	%ebx, %r8d
	callq	bjc_invert_cmyk_bytes
	testl	%eax, %eax
	je	.LBB3_31
# BB#9:                                 # %if.then.83
                                        #   in Loop: Header=BB3_8 Depth=1
	testl	%r13d, %r13d
	movq	48(%rsp), %r12          # 8-byte Reload
	je	.LBB3_11
# BB#10:                                # %if.then.85
                                        #   in Loop: Header=BB3_8 Depth=1
	movq	%r12, %rdi
	movl	%r13d, %esi
	callq	bjc_put_raster_skip
.LBB3_11:                               # %if.end.86
                                        #   in Loop: Header=BB3_8 Depth=1
	cmpl	$0, 40(%rsp)            # 4-byte Folded Reload
	je	.LBB3_16
# BB#12:                                # %if.end.86
                                        #   in Loop: Header=BB3_8 Depth=1
	movl	136(%rsp), %eax
	testl	%eax, %eax
	je	.LBB3_16
# BB#13:                                # %if.then.90
                                        #   in Loop: Header=BB3_8 Depth=1
	cmpl	$1, 108(%rsp)           # 4-byte Folded Reload
	movq	%rbp, %rdx
	movl	%ebx, %ecx
	jne	.LBB3_15
# BB#14:                                # %if.then.92
                                        #   in Loop: Header=BB3_8 Depth=1
	movq	%rbp, %rdi
	movl	%ebx, %esi
	movq	64(%rsp), %r13          # 8-byte Reload
	movq	%r13, %rdx
	callq	bjc_compress
	movl	%eax, %ecx
	movq	%r13, %rdx
.LBB3_15:                               # %if.end.94
                                        #   in Loop: Header=BB3_8 Depth=1
	movl	$67, %esi
	movq	%r12, %rdi
	callq	bjc_put_cmyk_image
	movq	%r12, %rdi
	callq	bjc_put_CR
.LBB3_16:                               # %if.end.95
                                        #   in Loop: Header=BB3_8 Depth=1
	cmpl	$0, 32(%rsp)            # 4-byte Folded Reload
	je	.LBB3_21
# BB#17:                                # %if.end.95
                                        #   in Loop: Header=BB3_8 Depth=1
	movl	140(%rsp), %eax
	testl	%eax, %eax
	je	.LBB3_21
# BB#18:                                # %if.then.101
                                        #   in Loop: Header=BB3_8 Depth=1
	cmpl	$1, 108(%rsp)           # 4-byte Folded Reload
	movq	128(%rsp), %rdx         # 8-byte Reload
	movl	%ebx, %ecx
	jne	.LBB3_20
# BB#19:                                # %if.then.103
                                        #   in Loop: Header=BB3_8 Depth=1
	movq	128(%rsp), %rdi         # 8-byte Reload
	movl	%ebx, %esi
	movq	64(%rsp), %r13          # 8-byte Reload
	movq	%r13, %rdx
	callq	bjc_compress
	movl	%eax, %ecx
	movq	%r13, %rdx
.LBB3_20:                               # %if.end.106
                                        #   in Loop: Header=BB3_8 Depth=1
	movl	$77, %esi
	movq	%r12, %rdi
	callq	bjc_put_cmyk_image
	movq	%r12, %rdi
	callq	bjc_put_CR
.LBB3_21:                               # %if.end.107
                                        #   in Loop: Header=BB3_8 Depth=1
	cmpl	$0, 28(%rsp)            # 4-byte Folded Reload
	je	.LBB3_26
# BB#22:                                # %if.end.107
                                        #   in Loop: Header=BB3_8 Depth=1
	movl	144(%rsp), %eax
	testl	%eax, %eax
	je	.LBB3_26
# BB#23:                                # %if.then.113
                                        #   in Loop: Header=BB3_8 Depth=1
	cmpl	$1, 108(%rsp)           # 4-byte Folded Reload
	movq	120(%rsp), %rdx         # 8-byte Reload
	movl	%ebx, %ecx
	jne	.LBB3_25
# BB#24:                                # %if.then.115
                                        #   in Loop: Header=BB3_8 Depth=1
	movq	120(%rsp), %rdi         # 8-byte Reload
	movl	%ebx, %esi
	movq	64(%rsp), %r13          # 8-byte Reload
	movq	%r13, %rdx
	callq	bjc_compress
	movl	%eax, %ecx
	movq	%r13, %rdx
.LBB3_25:                               # %if.end.118
                                        #   in Loop: Header=BB3_8 Depth=1
	movl	$89, %esi
	movq	%r12, %rdi
	callq	bjc_put_cmyk_image
	movq	%r12, %rdi
	callq	bjc_put_CR
.LBB3_26:                               # %if.end.119
                                        #   in Loop: Header=BB3_8 Depth=1
	cmpl	$0, 60(%rsp)            # 4-byte Folded Reload
	movl	$1, %r13d
	je	.LBB3_32
# BB#27:                                # %if.end.119
                                        #   in Loop: Header=BB3_8 Depth=1
	movl	148(%rsp), %eax
	testl	%eax, %eax
	je	.LBB3_32
# BB#28:                                # %if.then.125
                                        #   in Loop: Header=BB3_8 Depth=1
	cmpl	$1, 108(%rsp)           # 4-byte Folded Reload
	movq	112(%rsp), %rdx         # 8-byte Reload
	movl	%ebx, %ecx
	jne	.LBB3_30
# BB#29:                                # %if.then.127
                                        #   in Loop: Header=BB3_8 Depth=1
	movq	112(%rsp), %rdi         # 8-byte Reload
	movl	%ebx, %esi
	movq	64(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdx
	callq	bjc_compress
	movl	%eax, %ecx
	movq	%rbx, %rdx
.LBB3_30:                               # %if.end.130
                                        #   in Loop: Header=BB3_8 Depth=1
	movl	$75, %esi
	movq	%r12, %rdi
	callq	bjc_put_cmyk_image
	movq	%r12, %rdi
	callq	bjc_put_CR
	jmp	.LBB3_32
	.align	16, 0x90
.LBB3_31:                               # %if.else.132
                                        #   in Loop: Header=BB3_8 Depth=1
	incl	%r13d
.LBB3_32:                               # %for.inc
                                        #   in Loop: Header=BB3_8 Depth=1
	incl	%r14d
	cmpl	836(%r15), %r14d
	jl	.LBB3_8
# BB#33:                                # %for.end
	testl	%r13d, %r13d
	movq	%rbp, %r12
	je	.LBB3_35
# BB#34:                                # %if.then.136
	movq	48(%rsp), %rdi          # 8-byte Reload
	movl	%r13d, %esi
	callq	bjc_put_raster_skip
.LBB3_35:                               # %if.end.137
	movq	48(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	bjc_put_FF
	movq	%rbx, %rdi
	callq	bjc_put_initialize
	movq	%r15, %rdi
	callq	FloydSteinbergCloseC
	movq	24(%r15), %rdi
	movl	$.L.str.127, %edx
	movq	64(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	movq	24(%r15), %rdi
	movl	$.L.str.126, %edx
	movq	%r12, %rsi
	callq	*24(%rdi)
	movq	24(%r15), %rdi
	movl	$.L.str.125, %edx
	movq	96(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	xorl	%r14d, %r14d
.LBB3_36:                               # %cleanup
	movl	%r14d, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	bjc_print_page_color, .Lfunc_end3-bjc_print_page_color
	.cfi_endproc

	.globl	bjc_put_bjl_command
	.align	16, 0x90
	.type	bjc_put_bjl_command,@function
bjc_put_bjl_command:                    # @bjc_put_bjl_command
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp52:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp54:
	.cfi_def_cfa_offset 32
.Ltmp55:
	.cfi_offset %rbx, -24
.Ltmp56:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movl	$BJL_command_set, %ebx
	cmpq	$0, BJL_command_set(%rip)
	je	.LBB4_3
	.align	16, 0x90
.LBB4_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%esi, 8(%rbx)
	je	.LBB4_4
# BB#2:                                 # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	cmpq	$0, 16(%rbx)
	leaq	16(%rbx), %rbx
	jne	.LBB4_1
.LBB4_3:                                # %if.end.7
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB4_4:                                # %if.then.3
	movl	$.L.str.61, %edi
	movl	$16, %esi
	movl	$1, %edx
	movq	%r14, %rcx
	callq	fwrite
	movq	(%rbx), %rdi
	movslq	12(%rbx), %rsi
	movl	$1, %edx
	movq	%r14, %rcx
	callq	fwrite
	movl	$.L.str.62, %edi
	movl	$8, %esi
	movl	$1, %edx
	movq	%r14, %rcx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	fwrite                  # TAILCALL
.Lfunc_end4:
	.size	bjc_put_bjl_command, .Lfunc_end4-bjc_put_bjl_command
	.cfi_endproc

	.globl	paramValueToParam
	.align	16, 0x90
	.type	paramValueToParam,@function
paramValueToParam:                      # @paramValueToParam
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	cmpq	$0, (%rdi)
	je	.LBB5_5
# BB#1:
	xorl	%eax, %eax
	.align	16, 0x90
.LBB5_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%esi, 16(%rdi)
	je	.LBB5_3
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB5_2 Depth=1
	cmpq	$0, 24(%rdi)
	leaq	24(%rdi), %rdi
	jne	.LBB5_2
.LBB5_5:                                # %return
	retq
.LBB5_3:
	movq	%rdi, %rax
	retq
.Lfunc_end5:
	.size	paramValueToParam, .Lfunc_end5-paramValueToParam
	.cfi_endproc

	.globl	paramStringToParam
	.align	16, 0x90
	.type	paramStringToParam,@function
paramStringToParam:                     # @paramStringToParam
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp59:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp60:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp61:
	.cfi_def_cfa_offset 48
.Ltmp62:
	.cfi_offset %rbx, -48
.Ltmp63:
	.cfi_offset %r12, -40
.Ltmp64:
	.cfi_offset %r14, -32
.Ltmp65:
	.cfi_offset %r15, -24
.Ltmp66:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	%ebp, %r15d
	movq	(%rbx), %rdi
	xorl	%r12d, %r12d
	testq	%rdi, %rdi
	je	.LBB6_6
# BB#1:
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB6_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ebp, 8(%rbx)
	jne	.LBB6_5
# BB#3:                                 # %cond.false
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB6_4
.LBB6_5:                                # %for.inc
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	24(%rbx), %rdi
	addq	$24, %rbx
	testq	%rdi, %rdi
	jne	.LBB6_2
	jmp	.LBB6_6
.LBB6_4:
	movq	%rbx, %r12
.LBB6_6:                                # %return
	movq	%r12, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	paramStringToParam, .Lfunc_end6-paramStringToParam
	.cfi_endproc

	.align	16, 0x90
	.type	gdev_bjc_get_params,@function
gdev_bjc_get_params:                    # @gdev_bjc_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp67:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp68:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp69:
	.cfi_def_cfa_offset 32
.Ltmp70:
	.cfi_offset %rbx, -24
.Ltmp71:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	gdev_prn_get_params
	testl	%eax, %eax
	js	.LBB7_43
# BB#1:                                 # %lor.lhs.false
	movl	$strPrinterType, %eax
	xorl	%edx, %edx
	cmpq	$0, strPrinterType(%rip)
	je	.LBB7_6
# BB#2:
	movl	18472(%r14), %ecx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB7_3:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ecx, 16(%rax)
	je	.LBB7_4
# BB#5:                                 # %for.inc.i
                                        #   in Loop: Header=BB7_3 Depth=1
	cmpq	$0, 24(%rax)
	leaq	24(%rax), %rax
	jne	.LBB7_3
	jmp	.LBB7_6
.LBB7_4:
	movq	%rax, %rdx
.LBB7_6:                                # %paramValueToParam.exit
	movl	$.L.str.63, %esi
	movq	%rbx, %rdi
	callq	param_write_string
	testl	%eax, %eax
	js	.LBB7_43
# BB#7:                                 # %lor.lhs.false.4
	movl	$strFeeder, %eax
	xorl	%edx, %edx
	cmpq	$0, strFeeder(%rip)
	je	.LBB7_12
# BB#8:
	movl	18476(%r14), %ecx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB7_9:                                # %for.body.i.78
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ecx, 16(%rax)
	je	.LBB7_10
# BB#11:                                # %for.inc.i.82
                                        #   in Loop: Header=BB7_9 Depth=1
	cmpq	$0, 24(%rax)
	leaq	24(%rax), %rax
	jne	.LBB7_9
	jmp	.LBB7_12
.LBB7_10:
	movq	%rax, %rdx
.LBB7_12:                               # %paramValueToParam.exit84
	movl	$.L.str.64, %esi
	movq	%rbx, %rdi
	callq	param_write_string
	testl	%eax, %eax
	js	.LBB7_43
# BB#13:                                # %lor.lhs.false.9
	movl	$strMedia, %eax
	xorl	%edx, %edx
	cmpq	$0, strMedia(%rip)
	je	.LBB7_18
# BB#14:
	movl	18480(%r14), %ecx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB7_15:                               # %for.body.i.67
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ecx, 16(%rax)
	je	.LBB7_16
# BB#17:                                # %for.inc.i.71
                                        #   in Loop: Header=BB7_15 Depth=1
	cmpq	$0, 24(%rax)
	leaq	24(%rax), %rax
	jne	.LBB7_15
	jmp	.LBB7_18
.LBB7_16:
	movq	%rax, %rdx
.LBB7_18:                               # %paramValueToParam.exit73
	movl	$.L.str.65, %esi
	movq	%rbx, %rdi
	callq	param_write_string
	testl	%eax, %eax
	js	.LBB7_43
# BB#19:                                # %lor.lhs.false.14
	movl	$strQuality, %eax
	xorl	%edx, %edx
	cmpq	$0, strQuality(%rip)
	je	.LBB7_24
# BB#20:
	movl	18484(%r14), %ecx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB7_21:                               # %for.body.i.56
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ecx, 16(%rax)
	je	.LBB7_22
# BB#23:                                # %for.inc.i.60
                                        #   in Loop: Header=BB7_21 Depth=1
	cmpq	$0, 24(%rax)
	leaq	24(%rax), %rax
	jne	.LBB7_21
	jmp	.LBB7_24
.LBB7_22:
	movq	%rax, %rdx
.LBB7_24:                               # %paramValueToParam.exit62
	movl	$.L.str.66, %esi
	movq	%rbx, %rdi
	callq	param_write_string
	testl	%eax, %eax
	js	.LBB7_43
# BB#25:                                # %lor.lhs.false.19
	movl	$strInk, %eax
	xorl	%edx, %edx
	cmpq	$0, strInk(%rip)
	je	.LBB7_30
# BB#26:
	movl	18488(%r14), %ecx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB7_27:                               # %for.body.i.45
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ecx, 16(%rax)
	je	.LBB7_28
# BB#29:                                # %for.inc.i.49
                                        #   in Loop: Header=BB7_27 Depth=1
	cmpq	$0, 24(%rax)
	leaq	24(%rax), %rax
	jne	.LBB7_27
	jmp	.LBB7_30
.LBB7_28:
	movq	%rax, %rdx
.LBB7_30:                               # %paramValueToParam.exit51
	movl	$.L.str.67, %esi
	movq	%rbx, %rdi
	callq	param_write_string
	testl	%eax, %eax
	js	.LBB7_43
# BB#31:                                # %lor.lhs.false.24
	leaq	18496(%r14), %rdx
	movl	$.L.str.68, %esi
	movq	%rbx, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB7_43
# BB#32:                                # %lor.lhs.false.27
	leaq	18504(%r14), %rdx
	movl	$.L.str.69, %esi
	movq	%rbx, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB7_43
# BB#33:                                # %lor.lhs.false.30
	leaq	18500(%r14), %rdx
	movl	$.L.str.70, %esi
	movq	%rbx, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB7_43
# BB#34:                                # %lor.lhs.false.33
	leaq	18508(%r14), %rdx
	movl	$.L.str.71, %esi
	movq	%rbx, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB7_43
# BB#35:                                # %lor.lhs.false.36
	leaq	18512(%r14), %rdx
	movl	$.L.str.72, %esi
	movq	%rbx, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB7_43
# BB#36:                                # %lor.lhs.false.39
	leaq	18532(%r14), %rdx
	movl	$.L.str.73, %esi
	movq	%rbx, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB7_43
# BB#37:                                # %lor.lhs.false.42
	leaq	18536(%r14), %rdx
	movl	$.L.str.74, %esi
	movq	%rbx, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB7_43
# BB#38:                                # %lor.lhs.false.46
	leaq	18540(%r14), %rdx
	movl	$.L.str.75, %esi
	movq	%rbx, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB7_43
# BB#39:                                # %lor.lhs.false.50
	leaq	18492(%r14), %rdx
	movl	$.L.str.76, %esi
	movq	%rbx, %rdi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB7_43
# BB#40:                                # %lor.lhs.false.53
	leaq	18516(%r14), %rdx
	movl	$.L.str.77, %esi
	movq	%rbx, %rdi
	callq	param_write_float
	testl	%eax, %eax
	js	.LBB7_43
# BB#41:                                # %lor.lhs.false.56
	leaq	18520(%r14), %rdx
	movl	$.L.str.78, %esi
	movq	%rbx, %rdi
	callq	param_write_float
	testl	%eax, %eax
	js	.LBB7_43
# BB#42:                                # %lor.lhs.false.59
	leaq	18524(%r14), %rdx
	movl	$.L.str.79, %esi
	movq	%rbx, %rdi
	callq	param_write_float
	testl	%eax, %eax
	js	.LBB7_43
# BB#44:                                # %lor.lhs.false.62
	addq	$18528, %r14            # imm = 0x4860
	movl	$.L.str.80, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	param_write_float       # TAILCALL
.LBB7_43:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end7:
	.size	gdev_bjc_get_params, .Lfunc_end7-gdev_bjc_get_params
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI8_0:
	.long	1092616192              # float 10
	.text
	.align	16, 0x90
	.type	gdev_bjc_put_params,@function
gdev_bjc_put_params:                    # @gdev_bjc_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp73:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp74:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp75:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp76:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp77:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp78:
	.cfi_def_cfa_offset 80
.Ltmp79:
	.cfi_offset %rbx, -56
.Ltmp80:
	.cfi_offset %r12, -48
.Ltmp81:
	.cfi_offset %r13, -40
.Ltmp82:
	.cfi_offset %r14, -32
.Ltmp83:
	.cfi_offset %r15, -24
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movq	%rdi, %r14
	leaq	8(%rsp), %rdx
	movl	$.L.str.63, %esi
	movq	%r12, %rdi
	callq	param_read_string
	movl	%eax, %ebp
	xorl	%r13d, %r13d
	cmpl	$1, %ebp
	je	.LBB8_8
# BB#1:                                 # %entry
	testl	%ebp, %ebp
	jne	.LBB8_7
# BB#2:                                 # %sw.bb
	movl	16(%rsp), %ebx
	movl	$strPrinterType, %r15d
	movq	strPrinterType(%rip), %rdi
	movl	$-15, %ebp
	testq	%rdi, %rdi
	je	.LBB8_7
# BB#3:
	movq	8(%rsp), %r13
	.align	16, 0x90
.LBB8_4:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ebx, 8(%r15)
	jne	.LBB8_6
# BB#5:                                 # %cond.false.i
                                        #   in Loop: Header=BB8_4 Depth=1
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB8_99
.LBB8_6:                                # %for.inc.i
                                        #   in Loop: Header=BB8_4 Depth=1
	movq	24(%r15), %rdi
	addq	$24, %r15
	testq	%rdi, %rdi
	jne	.LBB8_4
.LBB8_7:                                # %label_Type
	movq	(%r12), %rax
	movl	$.L.str.63, %esi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r13d
.LBB8_8:                                # %sw.epilog
	leaq	8(%rsp), %rdx
	movl	$.L.str.64, %esi
	movq	%r12, %rdi
	callq	param_read_string
	movl	%eax, %r15d
	cmpl	$1, %r15d
	je	.LBB8_16
# BB#9:                                 # %sw.epilog
	testl	%r15d, %r15d
	jne	.LBB8_15
# BB#10:                                # %sw.bb.4
	movl	16(%rsp), %ebx
	movl	$strFeeder, %ebp
	movq	strFeeder(%rip), %rdi
	movl	$-15, %r15d
	testq	%rdi, %rdi
	je	.LBB8_15
# BB#11:
	movl	%r13d, 4(%rsp)          # 4-byte Spill
	movq	8(%rsp), %r13
	.align	16, 0x90
.LBB8_12:                               # %for.body.i.186
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ebx, 8(%rbp)
	jne	.LBB8_14
# BB#13:                                # %cond.false.i.189
                                        #   in Loop: Header=BB8_12 Depth=1
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB8_100
.LBB8_14:                               # %for.inc.i.193
                                        #   in Loop: Header=BB8_12 Depth=1
	movq	24(%rbp), %rdi
	addq	$24, %rbp
	testq	%rdi, %rdi
	jne	.LBB8_12
.LBB8_15:                               # %label_Feeder
	movq	(%r12), %rax
	movl	$.L.str.64, %esi
	movq	%r12, %rdi
	movl	%r15d, %edx
	callq	*56(%rax)
	movl	%r15d, %r13d
.LBB8_16:                               # %sw.epilog.16
	leaq	8(%rsp), %rdx
	movl	$.L.str.65, %esi
	movq	%r12, %rdi
	callq	param_read_string
	movl	%eax, %r15d
	cmpl	$1, %r15d
	je	.LBB8_24
# BB#17:                                # %sw.epilog.16
	testl	%r15d, %r15d
	jne	.LBB8_23
# BB#18:                                # %sw.bb.18
	movl	16(%rsp), %ebx
	movl	$strMedia, %ebp
	movq	strMedia(%rip), %rdi
	movl	$-15, %r15d
	testq	%rdi, %rdi
	je	.LBB8_23
# BB#19:
	movl	%r13d, 4(%rsp)          # 4-byte Spill
	movq	8(%rsp), %r13
	.align	16, 0x90
.LBB8_20:                               # %for.body.i.201
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ebx, 8(%rbp)
	jne	.LBB8_22
# BB#21:                                # %cond.false.i.204
                                        #   in Loop: Header=BB8_20 Depth=1
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB8_101
.LBB8_22:                               # %for.inc.i.208
                                        #   in Loop: Header=BB8_20 Depth=1
	movq	24(%rbp), %rdi
	addq	$24, %rbp
	testq	%rdi, %rdi
	jne	.LBB8_20
.LBB8_23:                               # %label_Paper
	movq	(%r12), %rax
	movl	$.L.str.65, %esi
	movq	%r12, %rdi
	movl	%r15d, %edx
	callq	*56(%rax)
	movl	%r15d, %r13d
.LBB8_24:                               # %sw.epilog.30
	leaq	8(%rsp), %rdx
	movl	$.L.str.66, %esi
	movq	%r12, %rdi
	callq	param_read_string
	movl	%eax, %r15d
	cmpl	$1, %r15d
	je	.LBB8_32
# BB#25:                                # %sw.epilog.30
	testl	%r15d, %r15d
	jne	.LBB8_31
# BB#26:                                # %sw.bb.32
	movl	16(%rsp), %ebx
	movl	$strQuality, %ebp
	movq	strQuality(%rip), %rdi
	movl	$-15, %r15d
	testq	%rdi, %rdi
	je	.LBB8_31
# BB#27:
	movl	%r13d, 4(%rsp)          # 4-byte Spill
	movq	8(%rsp), %r13
	.align	16, 0x90
.LBB8_28:                               # %for.body.i.216
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ebx, 8(%rbp)
	jne	.LBB8_30
# BB#29:                                # %cond.false.i.219
                                        #   in Loop: Header=BB8_28 Depth=1
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB8_102
.LBB8_30:                               # %for.inc.i.223
                                        #   in Loop: Header=BB8_28 Depth=1
	movq	24(%rbp), %rdi
	addq	$24, %rbp
	testq	%rdi, %rdi
	jne	.LBB8_28
.LBB8_31:                               # %label_Quality
	movq	(%r12), %rax
	movl	$.L.str.66, %esi
	movq	%r12, %rdi
	movl	%r15d, %edx
	callq	*56(%rax)
	movl	%r15d, %r13d
.LBB8_32:                               # %sw.epilog.44
	leaq	8(%rsp), %rdx
	movl	$.L.str.67, %esi
	movq	%r12, %rdi
	callq	param_read_string
	movl	%eax, %r15d
	cmpl	$1, %r15d
	je	.LBB8_40
# BB#33:                                # %sw.epilog.44
	testl	%r15d, %r15d
	jne	.LBB8_39
# BB#34:                                # %sw.bb.46
	movl	16(%rsp), %ebx
	movl	$strInk, %ebp
	movq	strInk(%rip), %rdi
	movl	$-15, %r15d
	testq	%rdi, %rdi
	je	.LBB8_39
# BB#35:
	movl	%r13d, 4(%rsp)          # 4-byte Spill
	movq	8(%rsp), %r13
	.align	16, 0x90
.LBB8_36:                               # %for.body.i.231
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ebx, 8(%rbp)
	jne	.LBB8_38
# BB#37:                                # %cond.false.i.234
                                        #   in Loop: Header=BB8_36 Depth=1
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB8_103
.LBB8_38:                               # %for.inc.i.238
                                        #   in Loop: Header=BB8_36 Depth=1
	movq	24(%rbp), %rdi
	addq	$24, %rbp
	testq	%rdi, %rdi
	jne	.LBB8_36
.LBB8_39:                               # %label_Ink
	movq	(%r12), %rax
	movl	$.L.str.67, %esi
	movq	%r12, %rdi
	movl	%r15d, %edx
	callq	*56(%rax)
	movl	%r15d, %r13d
.LBB8_40:                               # %sw.epilog.58
	leaq	18496(%r14), %rbp
	movl	$.L.str.68, %esi
	movq	%r12, %rdi
	movq	%rbp, %rdx
	callq	param_read_bool
	movl	%eax, %ebx
	cmpl	$1, %ebx
	je	.LBB8_44
# BB#41:                                # %sw.epilog.58
	testl	%ebx, %ebx
	jne	.LBB8_43
# BB#42:                                # %sw.bb.60
	movl	$-15, %ebx
	cmpl	$2, (%rbp)
	jb	.LBB8_44
.LBB8_43:                               # %label_Inverse
	movq	(%r12), %rax
	movl	$.L.str.68, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %r13d
.LBB8_44:                               # %sw.epilog.70
	leaq	18500(%r14), %rbp
	movl	$.L.str.70, %esi
	movq	%r12, %rdi
	movq	%rbp, %rdx
	callq	param_read_bool
	movl	%eax, %ebx
	cmpl	$1, %ebx
	je	.LBB8_48
# BB#45:                                # %sw.epilog.70
	testl	%ebx, %ebx
	jne	.LBB8_47
# BB#46:                                # %sw.bb.72
	movl	$-15, %ebx
	cmpl	$2, (%rbp)
	jb	.LBB8_48
.LBB8_47:                               # %label_Compress
	movq	(%r12), %rax
	movl	$.L.str.70, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %r13d
.LBB8_48:                               # %sw.epilog.84
	leaq	18504(%r14), %rbp
	movl	$.L.str.69, %esi
	movq	%r12, %rdi
	movq	%rbp, %rdx
	callq	param_read_bool
	movl	%eax, %ebx
	cmpl	$1, %ebx
	je	.LBB8_52
# BB#49:                                # %sw.epilog.84
	testl	%ebx, %ebx
	jne	.LBB8_51
# BB#50:                                # %sw.bb.86
	movl	$-15, %ebx
	cmpl	$2, (%rbp)
	jb	.LBB8_52
.LBB8_51:                               # %label_Smooth
	movq	(%r12), %rax
	movl	$.L.str.69, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %r13d
.LBB8_52:                               # %sw.epilog.98
	leaq	18508(%r14), %rbp
	movl	$.L.str.71, %esi
	movq	%r12, %rdi
	movq	%rbp, %rdx
	callq	param_read_bool
	movl	%eax, %ebx
	cmpl	$1, %ebx
	je	.LBB8_56
# BB#53:                                # %sw.epilog.98
	testl	%ebx, %ebx
	jne	.LBB8_55
# BB#54:                                # %sw.bb.100
	movl	$-15, %ebx
	cmpl	$2, (%rbp)
	jb	.LBB8_56
.LBB8_55:                               # %label_Limit
	movq	(%r12), %rax
	movl	$.L.str.71, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %r13d
.LBB8_56:                               # %sw.epilog.112
	leaq	18512(%r14), %rbp
	movl	$.L.str.72, %esi
	movq	%r12, %rdi
	movq	%rbp, %rdx
	callq	param_read_bool
	movl	%eax, %ebx
	cmpl	$1, %ebx
	je	.LBB8_60
# BB#57:                                # %sw.epilog.112
	testl	%ebx, %ebx
	jne	.LBB8_59
# BB#58:                                # %sw.bb.114
	movl	$-15, %ebx
	cmpl	$2, (%rbp)
	jb	.LBB8_60
.LBB8_59:                               # %label_Compose
	movq	(%r12), %rax
	movl	$.L.str.72, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %r13d
.LBB8_60:                               # %sw.epilog.126
	leaq	18532(%r14), %rbp
	movl	$.L.str.73, %esi
	movq	%r12, %rdi
	movq	%rbp, %rdx
	callq	param_read_int
	movl	%eax, %ebx
	cmpl	$1, %ebx
	je	.LBB8_64
# BB#61:                                # %sw.epilog.126
	testl	%ebx, %ebx
	jne	.LBB8_63
# BB#62:                                # %sw.bb.128
	movl	$-15, %ebx
	cmpl	$256, (%rbp)            # imm = 0x100
	jb	.LBB8_64
.LBB8_63:                               # %label_Red
	movq	(%r12), %rax
	movl	$.L.str.73, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %r13d
.LBB8_64:                               # %sw.epilog.141
	leaq	18536(%r14), %rbp
	movl	$.L.str.74, %esi
	movq	%r12, %rdi
	movq	%rbp, %rdx
	callq	param_read_int
	movl	%eax, %ebx
	cmpl	$1, %ebx
	je	.LBB8_68
# BB#65:                                # %sw.epilog.141
	testl	%ebx, %ebx
	jne	.LBB8_67
# BB#66:                                # %sw.bb.144
	movl	$-15, %ebx
	cmpl	$256, (%rbp)            # imm = 0x100
	jb	.LBB8_68
.LBB8_67:                               # %label_Green
	movq	(%r12), %rax
	movl	$.L.str.74, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %r13d
.LBB8_68:                               # %sw.epilog.158
	leaq	18540(%r14), %rbp
	movl	$.L.str.75, %esi
	movq	%r12, %rdi
	movq	%rbp, %rdx
	callq	param_read_int
	movl	%eax, %ebx
	cmpl	$1, %ebx
	je	.LBB8_72
# BB#69:                                # %sw.epilog.158
	testl	%ebx, %ebx
	jne	.LBB8_71
# BB#70:                                # %sw.bb.161
	movl	$-15, %ebx
	cmpl	$256, (%rbp)            # imm = 0x100
	jb	.LBB8_72
.LBB8_71:                               # %label_Blue
	movq	(%r12), %rax
	movl	$.L.str.75, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %r13d
.LBB8_72:                               # %sw.epilog.175
	leaq	18492(%r14), %rbp
	movl	$.L.str.76, %esi
	movq	%r12, %rdi
	movq	%rbp, %rdx
	callq	param_read_int
	movl	%eax, %ebx
	cmpl	$1, %ebx
	je	.LBB8_76
# BB#73:                                # %sw.epilog.175
	testl	%ebx, %ebx
	jne	.LBB8_75
# BB#74:                                # %sw.bb.177
	movl	$-15, %ebx
	cmpl	$101, (%rbp)
	jb	.LBB8_76
.LBB8_75:                               # %label_Random
	movq	(%r12), %rax
	movl	$.L.str.76, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %r13d
.LBB8_76:                               # %sw.epilog.189
	leaq	18516(%r14), %rbp
	movl	$.L.str.77, %esi
	movq	%r12, %rdi
	movq	%rbp, %rdx
	callq	param_read_float
	movl	%eax, %ebx
	cmpl	$1, %ebx
	je	.LBB8_81
# BB#77:                                # %sw.epilog.189
	testl	%ebx, %ebx
	jne	.LBB8_80
# BB#78:                                # %sw.bb.191
	movss	(%rbp), %xmm0           # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	movl	$-15, %ebx
	jb	.LBB8_80
# BB#79:                                # %sw.bb.191
	movss	.LCPI8_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jae	.LBB8_81
.LBB8_80:                               # %label_Gamma
	movq	(%r12), %rax
	movl	$.L.str.77, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %r13d
.LBB8_81:                               # %sw.epilog.206
	leaq	18520(%r14), %rbp
	movl	$.L.str.78, %esi
	movq	%r12, %rdi
	movq	%rbp, %rdx
	callq	param_read_float
	movl	%eax, %ebx
	cmpl	$1, %ebx
	je	.LBB8_86
# BB#82:                                # %sw.epilog.206
	testl	%ebx, %ebx
	jne	.LBB8_85
# BB#83:                                # %sw.bb.208
	movss	(%rbp), %xmm0           # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	movl	$-15, %ebx
	jb	.LBB8_85
# BB#84:                                # %sw.bb.208
	movss	.LCPI8_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jae	.LBB8_86
.LBB8_85:                               # %label_Rgamma
	movq	(%r12), %rax
	movl	$.L.str.78, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %r13d
.LBB8_86:                               # %sw.epilog.224
	leaq	18524(%r14), %rbp
	movl	$.L.str.79, %esi
	movq	%r12, %rdi
	movq	%rbp, %rdx
	callq	param_read_float
	movl	%eax, %ebx
	cmpl	$1, %ebx
	je	.LBB8_91
# BB#87:                                # %sw.epilog.224
	testl	%ebx, %ebx
	jne	.LBB8_90
# BB#88:                                # %sw.bb.226
	movss	(%rbp), %xmm0           # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	movl	$-15, %ebx
	jb	.LBB8_90
# BB#89:                                # %sw.bb.226
	movss	.LCPI8_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jae	.LBB8_91
.LBB8_90:                               # %label_Ggamma
	movq	(%r12), %rax
	movl	$.L.str.79, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %r13d
.LBB8_91:                               # %sw.epilog.242
	leaq	18528(%r14), %rbp
	movl	$.L.str.80, %esi
	movq	%r12, %rdi
	movq	%rbp, %rdx
	callq	param_read_float
	movl	%eax, %ebx
	cmpl	$1, %ebx
	je	.LBB8_96
# BB#92:                                # %sw.epilog.242
	testl	%ebx, %ebx
	jne	.LBB8_95
# BB#93:                                # %sw.bb.244
	movss	(%rbp), %xmm0           # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	movl	$-15, %ebx
	jb	.LBB8_95
# BB#94:                                # %sw.bb.244
	movss	.LCPI8_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jae	.LBB8_96
.LBB8_95:                               # %label_Bgamma
	movq	(%r12), %rax
	movl	$.L.str.80, %esi
	movq	%r12, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %r13d
.LBB8_96:                               # %sw.epilog.260
	testl	%r13d, %r13d
	js	.LBB8_98
# BB#97:                                # %if.end.264
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	gdev_prn_put_params
	movl	%eax, %r13d
.LBB8_98:                               # %cleanup
	movl	%r13d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_99:                               # %if.then
	movl	16(%r15), %eax
	movl	%eax, 18472(%r14)
	xorl	%r13d, %r13d
	jmp	.LBB8_8
.LBB8_100:                              # %if.then.9
	movl	16(%rbp), %eax
	movl	%eax, 18476(%r14)
	movl	4(%rsp), %r13d          # 4-byte Reload
	jmp	.LBB8_16
.LBB8_101:                              # %if.then.23
	movl	16(%rbp), %eax
	movl	%eax, 18480(%r14)
	movl	4(%rsp), %r13d          # 4-byte Reload
	jmp	.LBB8_24
.LBB8_102:                              # %if.then.37
	movl	16(%rbp), %eax
	movl	%eax, 18484(%r14)
	movl	4(%rsp), %r13d          # 4-byte Reload
	jmp	.LBB8_32
.LBB8_103:                              # %if.then.51
	movl	16(%rbp), %eax
	movl	%eax, 18488(%r14)
	movl	4(%rsp), %r13d          # 4-byte Reload
	jmp	.LBB8_40
.Lfunc_end8:
	.size	gdev_bjc_put_params, .Lfunc_end8-gdev_bjc_put_params
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"@Cleaning=1"
	.size	.L.str, 12

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"@PowerOff"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"@RollerCleaning"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"@TestPrint=NozzleCheck"
	.size	.L.str.3, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"@TestPrint=A"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"@TestPrint=B"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"@TestPrint=C"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"@TestPrint=DemoPrint"
	.size	.L.str.7, 21

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"ControlMode=Common\nAutoPowerOn=Enable"
	.size	.L.str.8, 38

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"ControlMode=Common\nAutoPowerOn=Disable"
	.size	.L.str.9, 39

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"ControlMode=Common\nAutoPowerOff=1"
	.size	.L.str.10, 34

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"ControlMode=Common\nAutoPowerOff=10"
	.size	.L.str.11, 35

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"ControlMode=Common\nAutoPowerOff=30"
	.size	.L.str.12, 35

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"ControlMode=Common\nAutoPowerOff=60"
	.size	.L.str.13, 35

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"ControlMode=Common\nAutoPowerOff=Disable"
	.size	.L.str.14, 40

	.type	BJL_command_set,@object # @BJL_command_set
	.data
	.globl	BJL_command_set
	.align	16
BJL_command_set:
	.quad	.L.str
	.long	0                       # 0x0
	.long	11                      # 0xb
	.quad	.L.str.1
	.long	1                       # 0x1
	.long	9                       # 0x9
	.quad	.L.str.2
	.long	2                       # 0x2
	.long	15                      # 0xf
	.quad	.L.str.3
	.long	3                       # 0x3
	.long	22                      # 0x16
	.quad	.L.str.4
	.long	4                       # 0x4
	.long	12                      # 0xc
	.quad	.L.str.5
	.long	5                       # 0x5
	.long	12                      # 0xc
	.quad	.L.str.6
	.long	6                       # 0x6
	.long	12                      # 0xc
	.quad	.L.str.7
	.long	7                       # 0x7
	.long	20                      # 0x14
	.quad	.L.str.8
	.long	32                      # 0x20
	.long	37                      # 0x25
	.quad	.L.str.9
	.long	33                      # 0x21
	.long	38                      # 0x26
	.quad	.L.str.10
	.long	34                      # 0x22
	.long	33                      # 0x21
	.quad	.L.str.11
	.long	35                      # 0x23
	.long	34                      # 0x22
	.quad	.L.str.12
	.long	36                      # 0x24
	.long	34                      # 0x22
	.quad	.L.str.13
	.long	37                      # 0x25
	.long	34                      # 0x22
	.quad	.L.str.14
	.long	38                      # 0x26
	.long	39                      # 0x27
	.zero	16
	.size	BJL_command_set, 256

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"BJC-250"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"BJC-250ex"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"BJC-1000"
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"250"
	.size	.L.str.18, 4

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"250ex"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"1000"
	.size	.L.str.20, 5

	.type	strPrinterType,@object  # @strPrinterType
	.data
	.globl	strPrinterType
	.align	16
strPrinterType:
	.quad	.L.str.15
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.16
	.long	9                       # 0x9
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.17
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.18
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.19
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.20
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	2                       # 0x2
	.zero	4
	.zero	24
	.size	strPrinterType, 168

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"Manual"
	.size	.L.str.21, 7

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Auto"
	.size	.L.str.22, 5

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"m"
	.size	.L.str.23, 2

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"a"
	.size	.L.str.24, 2

	.type	strFeeder,@object       # @strFeeder
	.data
	.globl	strFeeder
	.align	16
strFeeder:
	.quad	.L.str.21
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	17                      # 0x11
	.zero	4
	.quad	.L.str.22
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.23
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	17                      # 0x11
	.zero	4
	.quad	.L.str.24
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	16                      # 0x10
	.zero	4
	.zero	24
	.size	strFeeder, 120

	.type	.L.str.25,@object       # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"Normal"
	.size	.L.str.25, 7

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"High"
	.size	.L.str.26, 5

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Draft"
	.size	.L.str.27, 6

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"NonBleed"
	.size	.L.str.28, 9

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"n"
	.size	.L.str.29, 2

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"h"
	.size	.L.str.30, 2

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"d"
	.size	.L.str.31, 2

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"b"
	.size	.L.str.32, 2

	.type	strQuality,@object      # @strQuality
	.data
	.globl	strQuality
	.align	16
strQuality:
	.quad	.L.str.25
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.26
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.27
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.28
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.29
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.30
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.31
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.32
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	8                       # 0x8
	.zero	4
	.zero	24
	.size	strQuality, 216

	.type	.L.str.33,@object       # @.str.33
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.33:
	.asciz	"Black"
	.size	.L.str.33, 6

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Cyan"
	.size	.L.str.34, 5

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Magenta"
	.size	.L.str.35, 8

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Yellow"
	.size	.L.str.36, 7

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Red"
	.size	.L.str.37, 4

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Green"
	.size	.L.str.38, 6

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Blue"
	.size	.L.str.39, 5

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"K"
	.size	.L.str.40, 2

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"C"
	.size	.L.str.41, 2

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"M"
	.size	.L.str.42, 2

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Y"
	.size	.L.str.43, 2

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"R"
	.size	.L.str.44, 2

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"G"
	.size	.L.str.45, 2

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"B"
	.size	.L.str.46, 2

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"CK"
	.size	.L.str.47, 3

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"MK"
	.size	.L.str.48, 3

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"YK"
	.size	.L.str.49, 3

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"RK"
	.size	.L.str.50, 3

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"GK"
	.size	.L.str.51, 3

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"BK"
	.size	.L.str.52, 3

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"CMY"
	.size	.L.str.53, 4

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"CMYK"
	.size	.L.str.54, 5

	.type	strInk,@object          # @strInk
	.data
	.globl	strInk
	.align	16
strInk:
	.quad	.L.str.33
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.34
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.35
	.long	7                       # 0x7
	.long	0                       # 0x0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.36
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.37
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.38
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.39
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.40
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.41
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.42
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.43
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.44
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.45
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.46
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.47
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.48
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.49
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	12                      # 0xc
	.zero	4
	.quad	.L.str.50
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	14                      # 0xe
	.zero	4
	.quad	.L.str.51
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.52
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	11                      # 0xb
	.zero	4
	.quad	.L.str.53
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.54
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	15                      # 0xf
	.zero	4
	.zero	24
	.size	strInk, 552

	.type	bjcmono_procs,@object   # @bjcmono_procs
	.section	.rodata,"a",@progbits
	.align	8
bjcmono_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_output_page
	.quad	gdev_prn_close
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_bjc_get_params
	.quad	gdev_bjc_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
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
	.quad	gdev_prn_dev_spec_op
	.quad	0
	.quad	gx_default_get_profile
	.quad	gx_default_set_graphics_type_tag
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	bjcmono_procs, 584

	.type	.L.str.55,@object       # @.str.55
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.55:
	.asciz	"bjcmono"
	.size	.L.str.55, 8

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"DeviceGray"
	.size	.L.str.56, 11

	.type	gs_bjcmono_device,@object # @gs_bjcmono_device
	.section	.rodata,"a",@progbits
	.globl	gs_bjcmono_device
	.align	8
gs_bjcmono_device:
	.long	25792                   # 0x64c0
	.zero	4
	.quad	bjcmono_procs
	.quad	.L.str.55
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
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
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.56
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	3060                    # 0xbf4
	.long	3960                    # 0xf78
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	3259023747              # float -4.818898e+01
	.long	3257537576              # float -4.251968e+01
	.long	1092236393              # float 9.637795e+00
	.long	1100922235              # float 1.984252e+01
	.long	1092236393              # float 9.637795e+00
	.long	1091047456              # float 8.503937e+00
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
	.zero	584
	.zero	11240
	.quad	bjc_print_page_mono
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	0                       # 0x0
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	8                       # 0x8
	.long	15                      # 0xf
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4096
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1024
	.zero	1024
	.zero	1024
	.zero	4
	.size	gs_bjcmono_device, 25792

	.type	bjcgray_procs,@object   # @bjcgray_procs
	.align	8
bjcgray_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_output_page
	.quad	gdev_prn_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_bjc_get_params
	.quad	gdev_bjc_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
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
	.quad	gdev_prn_dev_spec_op
	.quad	0
	.quad	gx_default_get_profile
	.quad	gx_default_set_graphics_type_tag
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	bjcgray_procs, 584

	.type	.L.str.57,@object       # @.str.57
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.57:
	.asciz	"bjcgray"
	.size	.L.str.57, 8

	.type	gs_bjcgray_device,@object # @gs_bjcgray_device
	.section	.rodata,"a",@progbits
	.globl	gs_bjcgray_device
	.align	8
gs_bjcgray_device:
	.long	25792                   # 0x64c0
	.zero	4
	.quad	bjcgray_procs
	.quad	.L.str.57
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	0                       # 0x0
	.long	256                     # 0x100
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.56
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	3060                    # 0xbf4
	.long	3960                    # 0xf78
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	3259023747              # float -4.818898e+01
	.long	3257537576              # float -4.251968e+01
	.long	1092236393              # float 9.637795e+00
	.long	1100922235              # float 1.984252e+01
	.long	1092236393              # float 9.637795e+00
	.long	1091047456              # float 8.503937e+00
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
	.zero	584
	.zero	11240
	.quad	bjc_print_page_gray
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	0                       # 0x0
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	8                       # 0x8
	.long	15                      # 0xf
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4096
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1024
	.zero	1024
	.zero	1024
	.zero	4
	.size	gs_bjcgray_device, 25792

	.type	bjc_cmykcolor_procs,@object # @bjc_cmykcolor_procs
	.align	8
bjc_cmykcolor_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_output_page
	.quad	gdev_prn_close
	.quad	0
	.quad	cmyk_1bit_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_bjc_get_params
	.quad	gdev_bjc_put_params
	.quad	cmyk_1bit_map_cmyk_color
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
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
	.size	bjc_cmykcolor_procs, 584

	.type	.L.str.58,@object       # @.str.58
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.58:
	.asciz	"bjccmyk"
	.size	.L.str.58, 8

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"DeviceCMYK"
	.size	.L.str.59, 11

	.type	gs_bjccmyk_device,@object # @gs_bjccmyk_device
	.section	.rodata,"a",@progbits
	.globl	gs_bjccmyk_device
	.align	8
gs_bjccmyk_device:
	.long	25792                   # 0x64c0
	.zero	4
	.quad	bjc_cmykcolor_procs
	.quad	.L.str.58
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	4                       # 0x4
	.byte	3                       # 0x3
	.zero	1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.59
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	3060                    # 0xbf4
	.long	3960                    # 0xf78
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	3259023747              # float -4.818898e+01
	.long	3257537576              # float -4.251968e+01
	.long	1092236393              # float 9.637795e+00
	.long	1100922235              # float 1.984252e+01
	.long	1092236393              # float 9.637795e+00
	.long	1091047456              # float 8.503937e+00
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
	.zero	584
	.zero	11240
	.quad	bjc_print_page_cmyk
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	0                       # 0x0
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	15                      # 0xf
	.long	15                      # 0xf
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4096
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1024
	.zero	1024
	.zero	1024
	.zero	4
	.size	gs_bjccmyk_device, 25792

	.type	bjc_truecolor_procs,@object # @bjc_truecolor_procs
	.align	8
bjc_truecolor_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_output_page
	.quad	gdev_prn_close
	.quad	0
	.quad	cmyk_8bit_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_bjc_get_params
	.quad	gdev_bjc_put_params
	.quad	cmyk_8bit_map_cmyk_color
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
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
	.size	bjc_truecolor_procs, 584

	.type	.L.str.60,@object       # @.str.60
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.60:
	.asciz	"bjccolor"
	.size	.L.str.60, 9

	.type	gs_bjccolor_device,@object # @gs_bjccolor_device
	.section	.rodata,"a",@progbits
	.globl	gs_bjccolor_device
	.align	8
gs_bjccolor_device:
	.long	25792                   # 0x64c0
	.zero	4
	.quad	bjc_truecolor_procs
	.quad	.L.str.60
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	32                      # 0x20
	.byte	3                       # 0x3
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.59
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	3060                    # 0xbf4
	.long	3960                    # 0xf78
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	1135869952              # float 3.600000e+02
	.long	3259023747              # float -4.818898e+01
	.long	3257537576              # float -4.251968e+01
	.long	1092236393              # float 9.637795e+00
	.long	1100922235              # float 1.984252e+01
	.long	1092236393              # float 9.637795e+00
	.long	1091047456              # float 8.503937e+00
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
	.zero	584
	.zero	11240
	.quad	bjc_print_page_color
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	0                       # 0x0
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	15                      # 0xf
	.long	15                      # 0xf
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4096
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1024
	.zero	1024
	.zero	1024
	.zero	4
	.size	gs_bjccolor_device, 25792

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"\033[K\002\000\000\037BJLSTART\n"
	.size	.L.str.61, 17

	.type	.L.str.62,@object       # @.str.62
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.62:
	.asciz	"\nBJLEND\n"
	.size	.L.str.62, 9

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"PrinterType"
	.size	.L.str.63, 12

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Feeder"
	.size	.L.str.64, 7

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Media"
	.size	.L.str.65, 6

	.type	strMedia,@object        # @strMedia
	.data
	.align	16
strMedia:
	.quad	.L.str.81
	.long	10                      # 0xa
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.82
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.83
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.84
	.long	13                      # 0xd
	.long	0                       # 0x0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.85
	.long	15                      # 0xf
	.long	0                       # 0x0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.86
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.87
	.long	11                      # 0xb
	.long	0                       # 0x0
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.88
	.long	16                      # 0x10
	.long	0                       # 0x0
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.89
	.long	14                      # 0xe
	.long	0                       # 0x0
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.90
	.long	14                      # 0xe
	.long	0                       # 0x0
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.91
	.long	8                       # 0x8
	.long	0                       # 0x0
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.92
	.long	10                      # 0xa
	.long	0                       # 0x0
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.93
	.long	19                      # 0x13
	.long	0                       # 0x0
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.94
	.long	15                      # 0xf
	.long	0                       # 0x0
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.95
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	11                      # 0xb
	.zero	4
	.quad	.L.str.96
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.97
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.98
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.99
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.100
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.101
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.102
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.103
	.long	6                       # 0x6
	.long	0                       # 0x0
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.104
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.105
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.106
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.107
	.long	4                       # 0x4
	.long	0                       # 0x0
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.108
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	11                      # 0xb
	.zero	4
	.quad	.L.str.109
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.110
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.111
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.32
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.112
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.113
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.114
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.115
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.116
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.117
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.30
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.41
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.46
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	11                      # 0xb
	.zero	4
	.zero	24
	.size	strMedia, 1008

	.type	.L.str.66,@object       # @.str.66
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.66:
	.asciz	"Quality"
	.size	.L.str.66, 8

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"InkColor"
	.size	.L.str.67, 9

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Inverse"
	.size	.L.str.68, 8

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Smooth"
	.size	.L.str.69, 7

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"Compress"
	.size	.L.str.70, 9

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"LimitCheck"
	.size	.L.str.71, 11

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"DecomposeK"
	.size	.L.str.72, 11

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"PaperRed"
	.size	.L.str.73, 9

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"PaperGreen"
	.size	.L.str.74, 11

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"PaperBlue"
	.size	.L.str.75, 10

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Random"
	.size	.L.str.76, 7

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"Gamma"
	.size	.L.str.77, 6

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"RedGamma"
	.size	.L.str.78, 9

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"GreenGamma"
	.size	.L.str.79, 11

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"BlueGamma"
	.size	.L.str.80, 10

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"PlainPaper"
	.size	.L.str.81, 11

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"CoatedPaper"
	.size	.L.str.82, 12

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"TransparencyFilm"
	.size	.L.str.83, 17

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"BackprintFilm"
	.size	.L.str.84, 14

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"T-ShirtTransfer"
	.size	.L.str.85, 16

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"FabricSheet"
	.size	.L.str.86, 12

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"GlossyPaper"
	.size	.L.str.87, 12

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"GlossyPhotoPaper"
	.size	.L.str.88, 17

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"HighGlossPaper"
	.size	.L.str.89, 15

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"HighGlossyFilm"
	.size	.L.str.90, 15

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"Envelope"
	.size	.L.str.91, 9

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"OtherPaper"
	.size	.L.str.92, 11

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"HighResolutionPaper"
	.size	.L.str.93, 20

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"GlossyPhotoCard"
	.size	.L.str.94, 16

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"Banner"
	.size	.L.str.95, 7

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"Plain"
	.size	.L.str.96, 6

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"Coated"
	.size	.L.str.97, 7

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"Trans"
	.size	.L.str.98, 6

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"Back"
	.size	.L.str.99, 5

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"Shirt"
	.size	.L.str.100, 6

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"Fabric"
	.size	.L.str.101, 7

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"Glossy"
	.size	.L.str.102, 7

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"HGloss"
	.size	.L.str.103, 7

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"Env"
	.size	.L.str.104, 4

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"Oth"
	.size	.L.str.105, 4

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"HiRes"
	.size	.L.str.106, 6

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"Card"
	.size	.L.str.107, 5

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"Ban"
	.size	.L.str.108, 4

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"p"
	.size	.L.str.109, 2

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"c"
	.size	.L.str.110, 2

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"t"
	.size	.L.str.111, 2

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"s"
	.size	.L.str.112, 2

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"f"
	.size	.L.str.113, 2

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"g"
	.size	.L.str.114, 2

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"F"
	.size	.L.str.115, 2

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"e"
	.size	.L.str.116, 2

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"o"
	.size	.L.str.117, 2

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"bjc mono file buffer"
	.size	.L.str.118, 21

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"bjc mono comp buffer"
	.size	.L.str.119, 21

	.type	media_codes,@object     # @media_codes
	.section	.rodata,"a",@progbits
	.align	16
media_codes:
	.zero	2
	.byte	16                      # 0x10
	.byte	16                      # 0x10
	.byte	32                      # 0x20
	.byte	32                      # 0x20
	.byte	48                      # 0x30
	.byte	48                      # 0x30
	.byte	80                      # 0x50
	.byte	64                      # 0x40
	.byte	96                      # 0x60
	.byte	80                      # 0x50
	.byte	112                     # 0x70
	.byte	96                      # 0x60
	.byte	128                     # 0x80
	.byte	0                       # 0x0
	.byte	144                     # 0x90
	.byte	16                      # 0x10
	.byte	176                     # 0xb0
	.byte	112                     # 0x70
	.byte	192                     # 0xc0
	.byte	80                      # 0x50
	.byte	208                     # 0xd0
	.byte	0                       # 0x0
	.size	media_codes, 24

	.type	.L.str.120,@object      # @.str.120
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.120:
	.asciz	"bjc gray file buffer"
	.size	.L.str.120, 21

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"bjc gray dither buffer"
	.size	.L.str.121, 23

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"bjc gray comp buffer"
	.size	.L.str.122, 21

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"bjc cmyk file buffer"
	.size	.L.str.123, 21

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"bjc cmyk comp buffer"
	.size	.L.str.124, 21

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"bjc true file buffer"
	.size	.L.str.125, 21

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"bjc true dither buffer"
	.size	.L.str.126, 23

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"bjc true comp buffer"
	.size	.L.str.127, 21

	.type	.Lbjc_print_page_color.mask_array,@object # @bjc_print_page_color.mask_array
	.section	.rodata.cst8,"aM",@progbits,8
.Lbjc_print_page_color.mask_array:
	.ascii	"\377\200\300\340\360\370\374\376"
	.size	.Lbjc_print_page_color.mask_array, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
