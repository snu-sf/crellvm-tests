	.text
	.file	"gdevfpng.bc"
	.align	16, 0x90
	.type	fpng_print_page,@function
fpng_print_page:                        # @fpng_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	subq	$72, %rsp
.Ltmp4:
	.cfi_def_cfa_offset 112
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r12, -32
.Ltmp7:
	.cfi_offset %r14, -24
.Ltmp8:
	.cfi_offset %r15, -16
	movq	%rsi, %r12
	movq	%rdi, %r14
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 32(%rsp)
	movaps	%xmm0, 16(%rsp)
	movaps	%xmm0, (%rsp)
	movl	$fpng_print_page.pngsig, %edi
	movl	$1, %esi
	movl	$8, %edx
	movq	%r12, %rcx
	callq	fwrite
	movl	832(%r14), %edi
	movl	18472(%r14), %esi
	callq	gx_downscaler_scale_rounded
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 59(%rsp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 60(%rsp)
	movb	%ah, 61(%rsp)  # NOREX
	movb	%al, 62(%rsp)
	movl	836(%r14), %edi
	movl	18472(%r14), %esi
	callq	gx_downscaler_scale_rounded
	movl	%eax, %ecx
	shrl	$24, %ecx
	movb	%cl, 63(%rsp)
	movl	%eax, %ecx
	shrl	$16, %ecx
	movb	%cl, 64(%rsp)
	movb	%ah, 65(%rsp)  # NOREX
	movb	%al, 66(%rsp)
	movb	$8, 67(%rsp)
	movb	$2, 68(%rsp)
	movb	$0, 69(%rsp)
	movb	$0, 70(%rsp)
	movb	$0, 71(%rsp)
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	fputc
	movl	$13, %edi
	movq	%r12, %rsi
	callq	fputc
	movl	$.L.str.3, %edi
	movl	$1, %esi
	movl	$4, %edx
	movq	%r12, %rcx
	callq	fwrite
	leaq	59(%rsp), %r15
	movl	$1, %esi
	movl	$13, %edx
	movq	%r15, %rdi
	movq	%r12, %rcx
	callq	fwrite
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	crc32
	movl	%eax, %edi
	movl	$.L.str.3, %esi
	movl	$4, %edx
	callq	crc32
	movl	%eax, %edi
	movl	$13, %edx
	movq	%r15, %rsi
	callq	crc32
	movq	%rax, %rbx
	movl	%ebx, %edi
	sarl	$24, %edi
	movq	%r12, %rsi
	callq	fputc
	movl	%ebx, %edi
	sarl	$16, %edi
	movq	%r12, %rsi
	callq	fputc
	movl	%ebx, %edi
	sarl	$8, %edi
	movq	%r12, %rsi
	callq	fputc
	movl	%ebx, %edi
	movq	%r12, %rsi
	callq	fputc
	movq	$fpng_init_buffer, (%rsp)
	movq	$fpng_free_buffer, 8(%rsp)
	movq	$fpng_process, 16(%rsp)
	movq	$fpng_output, 24(%rsp)
	movq	%r12, 32(%rsp)
	movl	18472(%r14), %edx
	leaq	(%rsp), %rsi
	movq	%r14, %rdi
	callq	gx_downscaler_process_page
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end0:
	.size	fpng_print_page, .Lfunc_end0-fpng_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	fpng_get_params,@function
fpng_get_params:                        # @fpng_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 32
.Ltmp12:
	.cfi_offset %rbx, -32
.Ltmp13:
	.cfi_offset %r14, -24
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	18472(%rbx), %rdx
	cmpl	$0, 18472(%rbx)
	jg	.LBB1_2
# BB#1:                                 # %if.then
	movl	$1, (%rdx)
.LBB1_2:                                # %if.end
	movl	$.L.str.2, %esi
	movq	%r14, %rdi
	callq	param_write_int
	movl	%eax, %ebp
	sarl	$31, %ebp
	andl	%eax, %ebp
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gdev_prn_get_params
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	movl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fpng_get_params, .Lfunc_end1-fpng_get_params
	.cfi_endproc

	.align	16, 0x90
	.type	fpng_put_params,@function
fpng_put_params:                        # @fpng_put_params
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
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp19:
	.cfi_def_cfa_offset 48
.Ltmp20:
	.cfi_offset %rbx, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	18472(%r14), %eax
	movl	%eax, 4(%rsp)
	leaq	4(%rsp), %rdx
	movl	$.L.str.2, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	movl	%eax, %ebp
	xorl	%r15d, %r15d
	cmpl	$1, %ebp
	je	.LBB2_4
# BB#1:                                 # %entry
	testl	%ebp, %ebp
	jne	.LBB2_3
# BB#2:                                 # %sw.bb
	movl	$-15, %ebp
	cmpl	$0, 4(%rsp)
	jg	.LBB2_4
.LBB2_3:                                # %sw.default
	movq	(%rbx), %rax
	movl	$.L.str.2, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB2_4:                                # %sw.epilog
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gdev_prn_put_params
	testl	%eax, %eax
	cmovnsl	%r15d, %eax
	movl	4(%rsp), %ecx
	movl	%ecx, 18472(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	fpng_put_params, .Lfunc_end2-fpng_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	fpng_dev_spec_op,@function
fpng_dev_spec_op:                       # @fpng_dev_spec_op
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$19, %esi
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movl	18472(%rdi), %edi
	movl	%ecx, %esi
	jmp	gx_downscaler_adjust_bandheight # TAILCALL
.LBB3_2:                                # %if.end
	jmp	gdev_prn_dev_spec_op    # TAILCALL
.Lfunc_end3:
	.size	fpng_dev_spec_op, .Lfunc_end3-fpng_dev_spec_op
	.cfi_endproc

	.align	16, 0x90
	.type	fpng_init_buffer,@function
fpng_init_buffer:                       # @fpng_init_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 32
.Ltmp27:
	.cfi_offset %rbx, -32
.Ltmp28:
	.cfi_offset %r14, -24
.Ltmp29:
	.cfi_offset %r15, -16
	movq	%r9, %r14
	movq	%rdx, %rbx
	leal	1(%rcx,%rcx,2), %eax
	imull	%r8d, %eax
	movslq	%eax, %rsi
	xorl	%edi, %edi
	callq	deflateBound
	movq	%rax, %r15
	leal	12(%r15), %esi
	movl	$.L.str.4, %edx
	movq	%rbx, %rdi
	callq	*64(%rbx)
	movq	%rax, (%r14)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB4_2
# BB#1:                                 # %if.end
	movl	%r15d, (%rax)
	movl	$0, 4(%rax)
	xorl	%ecx, %ecx
.LBB4_2:                                # %cleanup
	movl	%ecx, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	fpng_init_buffer, .Lfunc_end4-fpng_init_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	fpng_free_buffer,@function
fpng_free_buffer:                       # @fpng_free_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	movq	24(%rax), %r8
	movl	$.L.str.4, %edx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	jmpq	*%r8                    # TAILCALL
.Lfunc_end5:
	.size	fpng_free_buffer, .Lfunc_end5-fpng_free_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	fpng_process,@function
fpng_process:                           # @fpng_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp31:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp32:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp33:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp34:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 56
	subq	$776, %rsp              # imm = 0x308
.Ltmp36:
	.cfi_def_cfa_offset 832
.Ltmp37:
	.cfi_offset %rbx, -56
.Ltmp38:
	.cfi_offset %r12, -48
.Ltmp39:
	.cfi_offset %r13, -40
.Ltmp40:
	.cfi_offset %r14, -32
.Ltmp41:
	.cfi_offset %r15, -24
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%r8, 56(%rsp)           # 8-byte Spill
	movq	%rcx, %rbp
	movq	%rdx, %r15
	movl	8(%rbp), %ebx
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movl	(%rbp), %r13d
	movl	4(%rbp), %r14d
	movl	832(%r15), %eax
	leal	(%rax,%rax,2), %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movl	12(%rbp), %r12d
	movb	$1, 239(%rsp)
	movb	$4, 238(%rsp)
	movl	836(%rsi), %edi
	movl	18472(%rsi), %esi
	callq	gx_downscaler_scale_rounded
	movl	%eax, %ecx
	xorl	%eax, %eax
	subl	%r13d, %ebx
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	jle	.LBB6_20
# BB#1:                                 # %entry
	movl	%ecx, 44(%rsp)          # 4-byte Spill
	subl	%r14d, %r12d
	testl	%r12d, %r12d
	jle	.LBB6_20
# BB#2:                                 # %if.end
	movl	%r14d, 40(%rsp)         # 4-byte Spill
	movl	12(%rbp), %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movq	$1101070353, 240(%rsp)  # imm = 0x41A10011
	movl	$0, 216(%rsp)
	movl	$0, 220(%rsp)
	movl	%ebx, 224(%rsp)
	movl	%r12d, 228(%rsp)
	leaq	216(%rsp), %rsi
	leaq	240(%rsp), %rdx
	xorl	%ecx, %ecx
	movq	%r15, 32(%rsp)          # 8-byte Spill
	movq	%r15, %rdi
	callq	*1448(%r15)
	testl	%eax, %eax
	js	.LBB6_20
# BB#3:                                 # %if.end.34
	movl	%r13d, 20(%rsp)         # 4-byte Spill
	movl	%eax, 8(%rsp)           # 4-byte Spill
	movq	96(%rsp), %rax          # 8-byte Reload
	leal	63(,%rax,8), %edx
	sarl	$6, %edx
	shll	$3, %edx
	leal	-1(%r12), %r9d
	movl	%edx, %eax
	imull	%r9d, %eax
	movslq	%eax, %r8
	addq	248(%rsp), %r8
	leal	-1(%rbx), %eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	cltq
	leaq	(%rax,%rax,2), %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	leaq	(%r8,%rax), %rcx
	cmpl	$2, %r12d
	movq	%r12, 24(%rsp)          # 8-byte Spill
	jl	.LBB6_4
# BB#21:                                # %for.cond.45.preheader.lr.ph
	movslq	%edx, %r10
	movl	$1, %esi
	subq	%r10, %rsi
	movq	%rsi, 80(%rsp)          # 8-byte Spill
	movl	$2, %esi
	subq	%r10, %rsi
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	negq	%r10
	movq	48(%rsp), %rax          # 8-byte Reload
	leal	-2(%rax), %eax
	subl	20(%rsp), %eax          # 4-byte Folded Reload
	imulq	$-3, %rax, %rax
	addq	$-3, %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movl	$-3, %eax
	subl	%edx, %eax
	movslq	%eax, %r11
	movl	%edx, %eax
	movl	%edx, 4(%rsp)           # 4-byte Spill
	negl	%eax
	movslq	%eax, %r15
	.align	16, 0x90
.LBB6_22:                               # %for.cond.45.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_23 Depth 2
	cmpl	$1, %ebx
	movl	%ebx, %r13d
	jle	.LBB6_37
	.align	16, 0x90
.LBB6_23:                               # %for.body.48
                                        #   Parent Loop BB6_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-3(%rcx), %ebx
	movzbl	(%r15,%rcx), %r12d
	movzbl	(%r11,%rcx), %edx
	leal	(%r12,%rbx), %edi
	subl	%edx, %edi
	movl	%edi, %eax
	subl	%ebx, %eax
	movl	%eax, %ebp
	negl	%ebp
	cmovll	%eax, %ebp
	movl	%edi, %r14d
	subl	%r12d, %r14d
	movl	%r14d, %eax
	negl	%eax
	cmovll	%r14d, %eax
	subl	%edx, %edi
	movl	%edi, %esi
	negl	%esi
	cmovll	%edi, %esi
	cmpl	%esi, %eax
	cmovgl	%edx, %r12d
	cmpl	%esi, %ebp
	movb	%r12b, %dl
	jg	.LBB6_25
# BB#24:                                # %for.body.48
                                        #   in Loop: Header=BB6_23 Depth=2
	movb	%bl, %dl
.LBB6_25:                               # %for.body.48
                                        #   in Loop: Header=BB6_23 Depth=2
	cmpl	%eax, %ebp
	jg	.LBB6_27
# BB#26:                                # %for.body.48
                                        #   in Loop: Header=BB6_23 Depth=2
	movb	%dl, %r12b
.LBB6_27:                               # %for.body.48
                                        #   in Loop: Header=BB6_23 Depth=2
	subb	%r12b, (%rcx)
	movzbl	-2(%rcx), %r14d
	movzbl	1(%r15,%rcx), %ebx
	movzbl	1(%r11,%rcx), %edx
	leal	(%rbx,%r14), %esi
	subl	%edx, %esi
	movl	%esi, %edi
	subl	%r14d, %edi
	movl	%edi, %eax
	negl	%eax
	cmovll	%edi, %eax
	movl	%esi, %ebp
	subl	%ebx, %ebp
	movl	%ebp, %edi
	negl	%edi
	cmovll	%ebp, %edi
	subl	%edx, %esi
	movl	%esi, %ebp
	negl	%ebp
	cmovll	%esi, %ebp
	cmpl	%ebp, %edi
	cmovgl	%edx, %ebx
	cmpl	%ebp, %eax
	movb	%bl, %dl
	jg	.LBB6_29
# BB#28:                                # %for.body.48
                                        #   in Loop: Header=BB6_23 Depth=2
	movb	%r14b, %dl
.LBB6_29:                               # %for.body.48
                                        #   in Loop: Header=BB6_23 Depth=2
	cmpl	%edi, %eax
	jg	.LBB6_31
# BB#30:                                # %for.body.48
                                        #   in Loop: Header=BB6_23 Depth=2
	movb	%dl, %bl
.LBB6_31:                               # %for.body.48
                                        #   in Loop: Header=BB6_23 Depth=2
	subb	%bl, 1(%rcx)
	movzbl	-1(%rcx), %r14d
	movzbl	2(%r15,%rcx), %ebx
	movzbl	2(%r11,%rcx), %edx
	leal	(%rbx,%r14), %esi
	subl	%edx, %esi
	movl	%esi, %edi
	subl	%r14d, %edi
	movl	%edi, %eax
	negl	%eax
	cmovll	%edi, %eax
	movl	%esi, %ebp
	subl	%ebx, %ebp
	movl	%ebp, %edi
	negl	%edi
	cmovll	%ebp, %edi
	subl	%edx, %esi
	movl	%esi, %ebp
	negl	%ebp
	cmovll	%esi, %ebp
	cmpl	%ebp, %edi
	cmovgl	%edx, %ebx
	cmpl	%ebp, %eax
	movb	%bl, %dl
	jg	.LBB6_33
# BB#32:                                # %for.body.48
                                        #   in Loop: Header=BB6_23 Depth=2
	movb	%r14b, %dl
.LBB6_33:                               # %for.body.48
                                        #   in Loop: Header=BB6_23 Depth=2
	cmpl	%edi, %eax
	jg	.LBB6_35
# BB#34:                                # %for.body.48
                                        #   in Loop: Header=BB6_23 Depth=2
	movb	%dl, %bl
.LBB6_35:                               # %for.body.48
                                        #   in Loop: Header=BB6_23 Depth=2
	subb	%bl, 2(%rcx)
	addq	$-3, %rcx
	decl	%r13d
	cmpl	$1, %r13d
	jg	.LBB6_23
# BB#36:                                # %for.cond.45.for.end_crit_edge
                                        #   in Loop: Header=BB6_22 Depth=1
	addq	96(%rsp), %r8           # 8-byte Folded Reload
	addq	64(%rsp), %r8           # 8-byte Folded Reload
	movq	%r8, %rcx
.LBB6_37:                               # %for.end
                                        #   in Loop: Header=BB6_22 Depth=1
	movb	(%rcx,%r10), %al
	subb	%al, (%rcx)
	movq	80(%rsp), %rax          # 8-byte Reload
	movb	(%rcx,%rax), %al
	subb	%al, 1(%rcx)
	movq	72(%rsp), %rax          # 8-byte Reload
	movb	(%rcx,%rax), %al
	subb	%al, 2(%rcx)
	movq	%rcx, %r8
	addq	%r10, %r8
	cmpl	$1, %r9d
	leal	-1(%r9), %eax
	movq	96(%rsp), %rcx          # 8-byte Reload
	leaq	(%r8,%rcx), %rcx
	movl	%eax, %r9d
	movq	88(%rsp), %rbx          # 8-byte Reload
	jg	.LBB6_22
	jmp	.LBB6_5
.LBB6_4:
	movl	%edx, 4(%rsp)           # 4-byte Spill
.LBB6_5:                                # %for.cond.101.preheader
	cmpl	$2, %ebx
	movq	56(%rsp), %r13          # 8-byte Reload
	movq	24(%rsp), %r15          # 8-byte Reload
	movl	44(%rsp), %r12d         # 4-byte Reload
	movl	16(%rsp), %ebp          # 4-byte Reload
	jl	.LBB6_11
# BB#6:                                 # %for.body.104.lr.ph
	movb	(%rcx), %dl
	movq	48(%rsp), %rsi          # 8-byte Reload
	leal	1(%rsi), %eax
	movl	20(%rsp), %edi          # 4-byte Reload
	subl	%edi, %eax
	addl	$-2, %esi
	testb	$1, %al
	je	.LBB6_8
# BB#7:                                 # %for.body.104.prol
	movq	96(%rsp), %rbp          # 8-byte Reload
	movb	-1(%r8,%rbp), %al
	subb	%al, 2(%r8,%rbp)
	movb	-2(%r8,%rbp), %al
	subb	%al, 1(%r8,%rbp)
	movb	-3(%r8,%rbp), %al
	subb	%al, %dl
	movb	%dl, (%rcx)
	leaq	-3(%r8,%rbp), %rcx
	leal	-2(%rbx), %ebp
	movb	%al, %dl
.LBB6_8:                                # %for.body.104.lr.ph.split
	cmpl	%edi, %esi
	je	.LBB6_11
# BB#9:                                 # %for.body.104.lr.ph.split.split
	incl	%ebp
	.align	16, 0x90
.LBB6_10:                               # %for.body.104
                                        # =>This Inner Loop Header: Depth=1
	movb	-1(%rcx), %al
	subb	%al, 2(%rcx)
	movb	-2(%rcx), %al
	subb	%al, 1(%rcx)
	movb	-3(%rcx), %al
	subb	%al, %dl
	movb	%dl, (%rcx)
	movb	-4(%rcx), %dl
	subb	%dl, -1(%rcx)
	movb	-5(%rcx), %dl
	subb	%dl, -2(%rcx)
	movb	-6(%rcx), %dl
	subb	%dl, %al
	movb	%al, -3(%rcx)
	leaq	-6(%rcx), %rcx
	addl	$-2, %ebp
	cmpl	$1, %ebp
	jg	.LBB6_10
.LBB6_11:                               # %for.end.126
	movq	$zalloc, 168(%rsp)
	movq	$zfree, 176(%rsp)
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rax
	movq	%rax, 184(%rsp)
	leaq	104(%rsp), %rdi
	movl	$-1, %esi
	movl	$.L.str.5, %edx
	movl	$112, %ecx
	callq	deflateInit_
	movl	%eax, %ecx
	movl	$-25, %eax
	testl	%ecx, %ecx
	movl	40(%rsp), %ecx          # 4-byte Reload
	jne	.LBB6_20
# BB#12:                                # %if.end.131
	leaq	8(%r13), %r14
	testl	%ecx, %ecx
	movq	248(%rsp), %rbp
	movq	%r14, 128(%rsp)
	movl	(%r13), %eax
	movl	%eax, 136(%rsp)
	je	.LBB6_14
# BB#13:                                # %if.then.136
	leaq	239(%rsp), %rax
	movq	%rax, 104(%rsp)
	movl	$1, 112(%rsp)
	leaq	104(%rsp), %rdi
	movl	$3, %esi
	callq	deflate
	movq	%r14, 128(%rsp)
	movl	(%r13), %eax
	movl	%eax, 136(%rsp)
	movq	$0, 144(%rsp)
.LBB6_14:                               # %if.end.143
	leaq	239(%rsp), %rax
	movq	%rax, 104(%rsp)
	testl	%r15d, %r15d
	jle	.LBB6_19
# BB#15:                                # %for.body.149.lr.ph
	movq	%r15, %r14
	decl	%r12d
	cmpl	%r12d, 12(%rsp)         # 4-byte Folded Reload
	movl	$4, %r15d
	je	.LBB6_17
# BB#16:                                # %select.mid
	movl	$3, %r15d
.LBB6_17:                               # %select.end
	leal	(%rbx,%rbx,2), %r12d
	movslq	4(%rsp), %r13           # 4-byte Folded Reload
	leaq	104(%rsp), %rbx
	.align	16, 0x90
.LBB6_18:                               # %for.body.149
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, 112(%rsp)
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	deflate
	movq	%rbp, 104(%rsp)
	movl	%r12d, 112(%rsp)
	cmpl	$1, %r14d
	movl	$0, %esi
	cmovel	%r15d, %esi
	movq	%rbx, %rdi
	callq	deflate
	addq	%r13, %rbp
	leaq	238(%rsp), %rax
	movq	%rax, 104(%rsp)
	decl	%r14d
	jg	.LBB6_18
.LBB6_19:                               # %for.end.165
	leaq	104(%rsp), %rdi
	callq	deflateEnd
	movl	144(%rsp), %eax
	movq	56(%rsp), %rcx          # 8-byte Reload
	movl	%eax, 4(%rcx)
	movl	8(%rsp), %eax           # 4-byte Reload
.LBB6_20:                               # %cleanup
	addq	$776, %rsp              # imm = 0x308
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	fpng_process, .Lfunc_end6-fpng_process
	.cfi_endproc

	.align	16, 0x90
	.type	fpng_output,@function
fpng_output:                            # @fpng_output
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 32
.Ltmp46:
	.cfi_offset %rbx, -32
.Ltmp47:
	.cfi_offset %r14, -24
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movl	4(%r14), %ebp
	addq	$8, %r14
	movl	%ebp, %edi
	sarl	$24, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%ebp, %edi
	sarl	$16, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%ebp, %edi
	sarl	$8, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%ebp, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	$.L.str.8, %edi
	movl	$1, %esi
	movl	$4, %edx
	movq	%rbx, %rcx
	callq	fwrite
	movslq	%ebp, %rbp
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	callq	fwrite
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	crc32
	movl	%eax, %edi
	movl	$.L.str.8, %esi
	movl	$4, %edx
	callq	crc32
	movl	%eax, %edi
	movq	%r14, %rsi
	movl	%ebp, %edx
	callq	crc32
	movq	%rax, %rbp
	movl	%ebp, %edi
	sarl	$24, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%ebp, %edi
	sarl	$16, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%ebp, %edi
	sarl	$8, %edi
	movq	%rbx, %rsi
	callq	fputc
	movl	%ebp, %edi
	movq	%rbx, %rsi
	callq	fputc
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	fpng_output, .Lfunc_end7-fpng_output
	.cfi_endproc

	.align	16, 0x90
	.type	zalloc,@function
zalloc:                                 # @zalloc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	64(%rdi), %rax
	imull	%edx, %esi
	movl	$.L.str.6, %edx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end8:
	.size	zalloc, .Lfunc_end8-zalloc
	.cfi_endproc

	.align	16, 0x90
	.type	zfree,@function
zfree:                                  # @zfree
	.cfi_startproc
# BB#0:                                 # %entry
	movq	24(%rdi), %rax
	movl	$.L.str.7, %edx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end9:
	.size	zfree, .Lfunc_end9-zfree
	.cfi_endproc

	.type	fpng_procs,@object      # @fpng_procs
	.section	.rodata,"a",@progbits
	.align	8
fpng_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	fpng_get_params
	.quad	fpng_put_params
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
	.quad	fpng_dev_spec_op
	.quad	0
	.quad	gx_default_get_profile
	.quad	gx_default_set_graphics_type_tag
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	fpng_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"fpng"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceRGB"
	.size	.L.str.1, 10

	.type	gs_fpng_device,@object  # @gs_fpng_device
	.section	.rodata,"a",@progbits
	.globl	gs_fpng_device
	.align	8
gs_fpng_device:
	.long	18480                   # 0x4830
	.zero	4
	.quad	fpng_procs
	.quad	.L.str
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
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
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
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	612                     # 0x264
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
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
	.zero	584
	.zero	11240
	.quad	fpng_print_page
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
	.zero	4
	.size	gs_fpng_device, 18480

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"DownScaleFactor"
	.size	.L.str.2, 16

	.type	fpng_print_page.pngsig,@object # @fpng_print_page.pngsig
	.section	.rodata,"a",@progbits
fpng_print_page.pngsig:
	.ascii	"\211PNG\r\n\032\n"
	.size	fpng_print_page.pngsig, 8

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"IHDR"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"fpng_init_buffer"
	.size	.L.str.4, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"1.2.7"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"zalloc (fpng_process)"
	.size	.L.str.6, 22

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"zfree (fpng_process)"
	.size	.L.str.7, 21

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"IDAT"
	.size	.L.str.8, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
