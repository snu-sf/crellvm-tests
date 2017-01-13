	.text
	.file	"gdevpcx.bc"
	.align	16, 0x90
	.type	pcxmono_print_page,@function
pcxmono_print_page:                     # @pcxmono_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	subq	$136, %rsp
.Ltmp2:
	.cfi_def_cfa_offset 160
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movups	pcx_header_prototype+112(%rip), %xmm0
	movaps	%xmm0, 112(%rsp)
	movups	pcx_header_prototype+96(%rip), %xmm0
	movaps	%xmm0, 96(%rsp)
	movups	pcx_header_prototype+80(%rip), %xmm0
	movaps	%xmm0, 80(%rsp)
	movups	pcx_header_prototype+64(%rip), %xmm0
	movaps	%xmm0, 64(%rsp)
	movups	pcx_header_prototype+48(%rip), %xmm0
	movaps	%xmm0, 48(%rsp)
	movups	pcx_header_prototype+32(%rip), %xmm0
	movaps	%xmm0, 32(%rsp)
	movups	pcx_header_prototype+16(%rip), %xmm0
	movaps	%xmm0, 16(%rsp)
	movups	pcx_header_prototype(%rip), %xmm0
	movaps	%xmm0, (%rsp)
	leaq	16(%rsp), %rdi
	movb	$2, 1(%rsp)
	movb	$1, 3(%rsp)
	movb	$1, 65(%rsp)
	movw	$2, 68(%rsp)
	movl	$.L.str.9, %esi
	movl	$6, %edx
	callq	memcpy
	leaq	(%rsp), %rdx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	pcx_write_page
	addq	$136, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	pcxmono_print_page, .Lfunc_end0-pcxmono_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	pcx256_print_page,@function
pcx256_print_page:                      # @pcx256_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 24
	subq	$136, %rsp
.Ltmp7:
	.cfi_def_cfa_offset 160
.Ltmp8:
	.cfi_offset %rbx, -24
.Ltmp9:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movups	pcx_header_prototype+112(%rip), %xmm0
	movaps	%xmm0, 112(%rsp)
	movups	pcx_header_prototype+96(%rip), %xmm0
	movaps	%xmm0, 96(%rsp)
	movups	pcx_header_prototype+80(%rip), %xmm0
	movaps	%xmm0, 80(%rsp)
	movups	pcx_header_prototype+64(%rip), %xmm0
	movaps	%xmm0, 64(%rsp)
	movups	pcx_header_prototype+48(%rip), %xmm0
	movaps	%xmm0, 48(%rsp)
	movups	pcx_header_prototype+32(%rip), %xmm0
	movaps	%xmm0, 32(%rsp)
	movups	pcx_header_prototype+16(%rip), %xmm0
	movaps	%xmm0, 16(%rsp)
	movups	pcx_header_prototype(%rip), %xmm0
	movaps	%xmm0, (%rsp)
	movb	$5, 1(%rsp)
	movb	$8, 3(%rsp)
	movb	$1, 65(%rsp)
	movw	$1, %ax
	cmpl	$1, 100(%rbx)
	jg	.LBB1_2
# BB#1:                                 # %select.mid
	movw	$2, %ax
.LBB1_2:                                # %select.end
	movw	%ax, 68(%rsp)
	leaq	(%rsp), %rdx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	pcx_write_page
	testl	%eax, %eax
	js	.LBB1_4
# BB#3:                                 # %if.then
	movl	$12, %edi
	movq	%r14, %rsi
	callq	fputc
	movl	$256, %esi              # imm = 0x100
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	pc_write_palette
.LBB1_4:                                # %if.end
	addq	$136, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	pcx256_print_page, .Lfunc_end1-pcx256_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	pcx16_print_page,@function
pcx16_print_page:                       # @pcx16_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 24
	subq	$136, %rsp
.Ltmp12:
	.cfi_def_cfa_offset 160
.Ltmp13:
	.cfi_offset %rbx, -24
.Ltmp14:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movups	pcx_header_prototype+112(%rip), %xmm0
	movaps	%xmm0, 112(%rsp)
	movups	pcx_header_prototype+96(%rip), %xmm0
	movaps	%xmm0, 96(%rsp)
	movups	pcx_header_prototype+80(%rip), %xmm0
	movaps	%xmm0, 80(%rsp)
	movups	pcx_header_prototype+64(%rip), %xmm0
	movaps	%xmm0, 64(%rsp)
	movups	pcx_header_prototype+48(%rip), %xmm0
	movaps	%xmm0, 48(%rsp)
	movups	pcx_header_prototype+32(%rip), %xmm0
	movaps	%xmm0, 32(%rsp)
	movups	pcx_header_prototype+16(%rip), %xmm0
	movaps	%xmm0, 16(%rsp)
	movups	pcx_header_prototype(%rip), %xmm0
	movaps	%xmm0, (%rsp)
	leaq	16(%rsp), %rdi
	movb	$2, 1(%rsp)
	movb	$1, 3(%rsp)
	movb	$4, 65(%rsp)
	movl	$pcx_ega_palette, %esi
	movl	$48, %edx
	callq	memcpy
	leaq	(%rsp), %rdx
	movl	$1, %ecx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	pcx_write_page
	addq	$136, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	pcx16_print_page, .Lfunc_end2-pcx16_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	pcx24b_print_page,@function
pcx24b_print_page:                      # @pcx24b_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$136, %rsp
.Ltmp15:
	.cfi_def_cfa_offset 144
	movups	pcx_header_prototype+112(%rip), %xmm0
	movaps	%xmm0, 112(%rsp)
	movups	pcx_header_prototype+96(%rip), %xmm0
	movaps	%xmm0, 96(%rsp)
	movups	pcx_header_prototype+80(%rip), %xmm0
	movaps	%xmm0, 80(%rsp)
	movups	pcx_header_prototype+64(%rip), %xmm0
	movaps	%xmm0, 64(%rsp)
	movups	pcx_header_prototype+48(%rip), %xmm0
	movaps	%xmm0, 48(%rsp)
	movups	pcx_header_prototype+32(%rip), %xmm0
	movaps	%xmm0, 32(%rsp)
	movups	pcx_header_prototype+16(%rip), %xmm0
	movaps	%xmm0, 16(%rsp)
	movups	pcx_header_prototype(%rip), %xmm0
	movaps	%xmm0, (%rsp)
	movb	$5, 1(%rsp)
	movb	$8, 3(%rsp)
	movb	$3, 65(%rsp)
	movw	$1, 68(%rsp)
	leaq	(%rsp), %rdx
	movl	$1, %ecx
	callq	pcx_write_page
	addq	$136, %rsp
	retq
.Lfunc_end3:
	.size	pcx24b_print_page, .Lfunc_end3-pcx24b_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	pcxcmyk_print_page,@function
pcxcmyk_print_page:                     # @pcxcmyk_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 24
	subq	$136, %rsp
.Ltmp18:
	.cfi_def_cfa_offset 160
.Ltmp19:
	.cfi_offset %rbx, -24
.Ltmp20:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movups	pcx_header_prototype+112(%rip), %xmm0
	movaps	%xmm0, 112(%rsp)
	movups	pcx_header_prototype+96(%rip), %xmm0
	movaps	%xmm0, 96(%rsp)
	movups	pcx_header_prototype+80(%rip), %xmm0
	movaps	%xmm0, 80(%rsp)
	movups	pcx_header_prototype+64(%rip), %xmm0
	movaps	%xmm0, 64(%rsp)
	movups	pcx_header_prototype+48(%rip), %xmm0
	movaps	%xmm0, 48(%rsp)
	movups	pcx_header_prototype+32(%rip), %xmm0
	movaps	%xmm0, 32(%rsp)
	movups	pcx_header_prototype+16(%rip), %xmm0
	movaps	%xmm0, 16(%rsp)
	movups	pcx_header_prototype(%rip), %xmm0
	movaps	%xmm0, (%rsp)
	leaq	16(%rsp), %rdi
	movb	$2, 1(%rsp)
	movb	$4, 3(%rsp)
	movb	$1, 65(%rsp)
	movl	$pcx_cmyk_palette, %esi
	movl	$48, %edx
	callq	memcpy
	leaq	(%rsp), %rdx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	pcx_write_page
	addq	$136, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end4:
	.size	pcxcmyk_print_page, .Lfunc_end4-pcxcmyk_print_page
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI5_0:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
.LCPI5_1:
	.long	128                     # 0x80
	.long	128                     # 0x80
	.long	128                     # 0x80
	.long	128                     # 0x80
.LCPI5_2:
	.long	64                      # 0x40
	.long	64                      # 0x40
	.long	64                      # 0x40
	.long	64                      # 0x40
.LCPI5_3:
	.long	32                      # 0x20
	.long	32                      # 0x20
	.long	32                      # 0x20
	.long	32                      # 0x20
.LCPI5_4:
	.long	16                      # 0x10
	.long	16                      # 0x10
	.long	16                      # 0x10
	.long	16                      # 0x10
.LCPI5_5:
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	8                       # 0x8
.LCPI5_6:
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
.LCPI5_7:
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
.LCPI5_8:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.align	16, 0x90
	.type	pcx_write_page,@function
pcx_write_page:                         # @pcx_write_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp22:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp23:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp24:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp25:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 56
	subq	$264, %rsp              # imm = 0x108
.Ltmp27:
	.cfi_def_cfa_offset 320
.Ltmp28:
	.cfi_offset %rbx, -56
.Ltmp29:
	.cfi_offset %r12, -48
.Ltmp30:
	.cfi_offset %r13, -40
.Ltmp31:
	.cfi_offset %r14, -32
.Ltmp32:
	.cfi_offset %r15, -24
.Ltmp33:
	.cfi_offset %rbp, -16
	movl	%ecx, 180(%rsp)         # 4-byte Spill
	movq	%rdx, %r15
	movq	%rsi, 248(%rsp)         # 8-byte Spill
	movq	%rdi, %r14
	movq	%r14, 168(%rsp)         # 8-byte Spill
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %ebx
	movzbl	3(%r15), %ebp
	imull	832(%r14), %ebp
	addl	$7, %ebp
	sarl	$3, %ebp
	incl	%ebp
	andl	$-2, %ebp
	movl	836(%r14), %r13d
	movzwl	108(%r14), %r12d
	leal	(%rbp,%rbx), %esi
	movq	24(%r14), %rdi
	movl	$.L.str.10, %edx
	callq	*64(%rdi)
	movq	%rax, 200(%rsp)         # 8-byte Spill
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB5_14
# BB#1:                                 # %if.end
	movl	$65535, %eax            # imm = 0xFFFF
	addl	832(%r14), %eax
	movw	%ax, 8(%r15)
	leal	65535(%r13), %eax
	movq	%r13, 160(%rsp)         # 8-byte Spill
	movw	%ax, 10(%r15)
	cvttss2si	884(%r14), %eax
	movw	%ax, 12(%r15)
	cvttss2si	888(%r14), %eax
	movw	%ax, 14(%r15)
	movl	%ebx, %eax
	andl	$1, %eax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	leal	(%rax,%rbx), %eax
	movq	%rbx, 224(%rsp)         # 8-byte Spill
	cmpl	$1, %r12d
	movl	%r12d, 156(%rsp)        # 4-byte Spill
	cmovew	%bp, %ax
	movl	180(%rsp), %ebx         # 4-byte Reload
	testl	%ebx, %ebx
	cmovnew	%bp, %ax
	movw	%ax, 66(%r15)
	movl	$1, %esi
	movl	$128, %edx
	movq	%r15, %rdi
	movq	248(%rsp), %r13         # 8-byte Reload
	movq	%r13, %rcx
	callq	fwrite
	movl	$-12, 196(%rsp)         # 4-byte Folded Spill
	cmpq	$128, %rax
	jb	.LBB5_13
# BB#2:                                 # %for.cond.preheader
	movl	$0, 196(%rsp)           # 4-byte Folded Spill
	movq	160(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB5_13
# BB#3:                                 # %for.body.lr.ph
	movq	224(%rsp), %rax         # 8-byte Reload
	movslq	%eax, %rdx
	movq	%rdx, 184(%rsp)         # 8-byte Spill
	movq	200(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rdx), %r15
	movl	%ebp, %eax
	leaq	(%rax,%r15), %rsi
	movq	%rsi, 128(%rsp)         # 8-byte Spill
	leaq	1(%rcx,%rdx), %rax
	movq	%rax, 216(%rsp)         # 8-byte Spill
	leaq	-1(%rdx), %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB5_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_24 Depth 2
                                        #       Child Loop BB5_30 Depth 3
                                        #       Child Loop BB5_32 Depth 3
	movq	%r14, %rdi
	movl	%ebp, %esi
	movq	200(%rsp), %rdx         # 8-byte Reload
	leaq	256(%rsp), %rcx
	callq	gdev_prn_get_bits
	movl	%eax, %edx
	testl	%edx, %edx
	js	.LBB5_5
# BB#7:                                 # %if.end.35
                                        #   in Loop: Header=BB5_4 Depth=1
	movq	%rbp, 208(%rsp)         # 8-byte Spill
	movq	256(%rsp), %rdi
	movq	184(%rsp), %rax         # 8-byte Reload
	leaq	(%rdi,%rax), %r12
	testl	%ebx, %ebx
	movdqa	.LCPI5_0(%rip), %xmm5   # xmm5 = [255,255,255,255]
	pxor	%xmm6, %xmm6
	movdqa	.LCPI5_1(%rip), %xmm7   # xmm7 = [128,128,128,128]
	movdqa	%xmm7, %xmm9
	movdqa	.LCPI5_2(%rip), %xmm8   # xmm8 = [64,64,64,64]
	movdqa	.LCPI5_3(%rip), %xmm7   # xmm7 = [32,32,32,32]
	movdqa	%xmm7, %xmm11
	movdqa	.LCPI5_4(%rip), %xmm10  # xmm10 = [16,16,16,16]
	movdqa	.LCPI5_5(%rip), %xmm7   # xmm7 = [8,8,8,8]
	movdqa	%xmm7, %xmm12
	movdqa	.LCPI5_6(%rip), %xmm7   # xmm7 = [4,4,4,4]
	movdqa	%xmm7, %xmm13
	movdqa	.LCPI5_7(%rip), %xmm7   # xmm7 = [2,2,2,2]
	movdqa	%xmm7, %xmm14
	movdqa	.LCPI5_8(%rip), %xmm7   # xmm7 = [1,1,1,1]
	je	.LBB5_8
# BB#15:                                # %if.else
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	156(%rsp), %ecx         # 4-byte Reload
	cmpl	$4, %ecx
	movq	%r13, %rbp
	jne	.LBB5_16
# BB#23:                                # %sw.bb
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	%edx, 196(%rsp)         # 4-byte Spill
	movq	136(%rsp), %rax         # 8-byte Reload
	leaq	(%rdi,%rax), %rax
	movq	%rax, 224(%rsp)         # 8-byte Spill
	xorl	%r13d, %r13d
	movq	128(%rsp), %r14         # 8-byte Reload
	jmp	.LBB5_24
	.align	16, 0x90
.LBB5_37:                               # %if.end.109.for.body.50_crit_edge
                                        #   in Loop: Header=BB5_24 Depth=2
	movq	256(%rsp), %rdi
	movdqa	.LCPI5_0(%rip), %xmm5   # xmm5 = [255,255,255,255]
	pxor	%xmm6, %xmm6
	movdqa	.LCPI5_1(%rip), %xmm7   # xmm7 = [128,128,128,128]
	movdqa	%xmm7, %xmm9
	movdqa	.LCPI5_2(%rip), %xmm8   # xmm8 = [64,64,64,64]
	movdqa	.LCPI5_3(%rip), %xmm7   # xmm7 = [32,32,32,32]
	movdqa	%xmm7, %xmm11
	movdqa	.LCPI5_4(%rip), %xmm10  # xmm10 = [16,16,16,16]
	movdqa	.LCPI5_5(%rip), %xmm7   # xmm7 = [8,8,8,8]
	movdqa	%xmm7, %xmm12
	movdqa	.LCPI5_6(%rip), %xmm7   # xmm7 = [4,4,4,4]
	movdqa	%xmm7, %xmm13
	movdqa	.LCPI5_7(%rip), %xmm7   # xmm7 = [2,2,2,2]
	movdqa	%xmm7, %xmm14
	movdqa	.LCPI5_8(%rip), %xmm7   # xmm7 = [1,1,1,1]
.LBB5_24:                               # %for.body.50
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_30 Depth 3
                                        #       Child Loop BB5_32 Depth 3
	movl	$1, %eax
	movb	%r13b, %cl
	shll	%cl, %eax
	cmpq	%r12, %rdi
	movq	%r15, %rcx
	jae	.LBB5_34
# BB#25:                                # %for.body.55.lr.ph
                                        #   in Loop: Header=BB5_24 Depth=2
	movl	%eax, %r11d
	shll	$4, %r11d
	movq	224(%rsp), %r10         # 8-byte Reload
	subq	%rdi, %r10
	shrq	$2, %r10
	leaq	1(%r10), %r8
	movq	%r8, %r9
	movabsq	$9223372036854775804, %rcx # imm = 0x7FFFFFFFFFFFFFFC
	andq	%rcx, %r9
	je	.LBB5_26
# BB#27:                                # %vector.memcheck
                                        #   in Loop: Header=BB5_24 Depth=2
	leaq	3(%rdi,%r10,4), %rdx
	cmpq	%rdx, %r15
	ja	.LBB5_29
# BB#28:                                # %vector.memcheck
                                        #   in Loop: Header=BB5_24 Depth=2
	leaq	(%r15,%r10), %rdx
	cmpq	%rdx, %rdi
	ja	.LBB5_29
.LBB5_26:                               #   in Loop: Header=BB5_24 Depth=2
	movq	%r15, %rsi
	movq	%rdi, %rbp
	xorl	%r9d, %r9d
	jmp	.LBB5_31
.LBB5_29:                               # %vector.ph
                                        #   in Loop: Header=BB5_24 Depth=2
	leaq	(%r15,%r9), %rsi
	leaq	(%rdi,%r9,4), %rbp
	movd	%r11d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movd	%eax, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	addq	$15, %rdi
	movq	%r8, %rbx
	movabsq	$9223372036854775804, %rcx # imm = 0x7FFFFFFFFFFFFFFC
	andq	%rcx, %rbx
	movq	%r15, %rdx
	.align	16, 0x90
.LBB5_30:                               # %vector.body
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	-15(%rdi), %ecx
	pinsrw	$0, %ecx, %xmm3
	movzbl	-11(%rdi), %ecx
	pinsrw	$2, %ecx, %xmm3
	movzbl	-7(%rdi), %ecx
	pinsrw	$4, %ecx, %xmm3
	movzbl	-3(%rdi), %ecx
	pinsrw	$6, %ecx, %xmm3
	pand	%xmm5, %xmm3
	movdqa	%xmm3, %xmm2
	pand	%xmm0, %xmm2
	pcmpeqd	%xmm6, %xmm2
	pandn	%xmm9, %xmm2
	pand	%xmm1, %xmm3
	pcmpeqd	%xmm6, %xmm3
	pandn	%xmm8, %xmm3
	por	%xmm2, %xmm3
	movzbl	-14(%rdi), %ecx
	pinsrw	$0, %ecx, %xmm2
	movzbl	-10(%rdi), %ecx
	pinsrw	$2, %ecx, %xmm2
	movzbl	-6(%rdi), %ecx
	pinsrw	$4, %ecx, %xmm2
	movzbl	-2(%rdi), %ecx
	pinsrw	$6, %ecx, %xmm2
	pand	%xmm5, %xmm2
	movdqa	%xmm2, %xmm4
	pand	%xmm0, %xmm4
	pcmpeqd	%xmm6, %xmm4
	pandn	%xmm11, %xmm4
	por	%xmm3, %xmm4
	pand	%xmm1, %xmm2
	pcmpeqd	%xmm6, %xmm2
	pandn	%xmm10, %xmm2
	por	%xmm4, %xmm2
	movzbl	-13(%rdi), %ecx
	pinsrw	$0, %ecx, %xmm3
	movzbl	-9(%rdi), %ecx
	pinsrw	$2, %ecx, %xmm3
	movzbl	-5(%rdi), %ecx
	pinsrw	$4, %ecx, %xmm3
	movzbl	-1(%rdi), %ecx
	pinsrw	$6, %ecx, %xmm3
	pand	%xmm5, %xmm3
	movdqa	%xmm3, %xmm4
	pand	%xmm0, %xmm4
	pcmpeqd	%xmm6, %xmm4
	pandn	%xmm12, %xmm4
	por	%xmm2, %xmm4
	pand	%xmm1, %xmm3
	pcmpeqd	%xmm6, %xmm3
	pandn	%xmm13, %xmm3
	por	%xmm4, %xmm3
	movzbl	-12(%rdi), %ecx
	pinsrw	$0, %ecx, %xmm2
	movzbl	-8(%rdi), %ecx
	pinsrw	$2, %ecx, %xmm2
	movzbl	-4(%rdi), %ecx
	pinsrw	$4, %ecx, %xmm2
	movzbl	(%rdi), %ecx
	pinsrw	$6, %ecx, %xmm2
	pand	%xmm5, %xmm2
	movdqa	%xmm2, %xmm4
	pand	%xmm0, %xmm4
	pcmpeqd	%xmm6, %xmm4
	pandn	%xmm14, %xmm4
	por	%xmm3, %xmm4
	pand	%xmm1, %xmm2
	pcmpeqd	%xmm6, %xmm2
	pandn	%xmm7, %xmm2
	por	%xmm4, %xmm2
	pand	%xmm5, %xmm2
	packuswb	%xmm2, %xmm2
	packuswb	%xmm2, %xmm2
	movd	%xmm2, (%rdx)
	addq	$16, %rdi
	addq	$4, %rdx
	addq	$-4, %rbx
	jne	.LBB5_30
.LBB5_31:                               # %middle.block
                                        #   in Loop: Header=BB5_24 Depth=2
	cmpq	%r9, %r8
	je	.LBB5_33
	.align	16, 0x90
.LBB5_32:                               # %for.body.55
                                        #   Parent Loop BB5_4 Depth=1
                                        #     Parent Loop BB5_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rbp), %ecx
	testl	%r11d, %ecx
	setne	%dl
	shlb	$7, %dl
	testl	%eax, %ecx
	setne	%cl
	shlb	$6, %cl
	orb	%dl, %cl
	movzbl	1(%rbp), %edx
	testl	%r11d, %edx
	setne	%bl
	shlb	$5, %bl
	orb	%cl, %bl
	testl	%eax, %edx
	setne	%cl
	shlb	$4, %cl
	orb	%bl, %cl
	movzbl	2(%rbp), %edx
	testl	%r11d, %edx
	setne	%bl
	shlb	$3, %bl
	orb	%cl, %bl
	testl	%eax, %edx
	setne	%cl
	shlb	$2, %cl
	orb	%bl, %cl
	movzbl	3(%rbp), %edx
	testl	%r11d, %edx
	setne	%bl
	addb	%bl, %bl
	orb	%cl, %bl
	testl	%eax, %edx
	setne	%cl
	orb	%bl, %cl
	movb	%cl, (%rsi)
	incq	%rsi
	addq	$4, %rbp
	cmpq	%r12, %rbp
	jb	.LBB5_32
.LBB5_33:                               # %for.cond.52.for.end_crit_edge
                                        #   in Loop: Header=BB5_24 Depth=2
	movq	216(%rsp), %rax         # 8-byte Reload
	leaq	(%r10,%rax), %rcx
	movq	248(%rsp), %rbp         # 8-byte Reload
.LBB5_34:                               # %for.end
                                        #   in Loop: Header=BB5_24 Depth=2
	cmpq	%r14, %rcx
	jae	.LBB5_36
# BB#35:                                # %if.then.107
                                        #   in Loop: Header=BB5_24 Depth=2
	movb	-1(%rcx), %al
	movb	%al, (%rcx)
.LBB5_36:                               # %if.end.109
                                        #   in Loop: Header=BB5_24 Depth=2
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbp, %rcx
	callq	pcx_write_rle
	incl	%r13d
	cmpl	$4, %r13d
	jne	.LBB5_37
	jmp	.LBB5_12
	.align	16, 0x90
.LBB5_8:                                # %if.then.39
                                        #   in Loop: Header=BB5_4 Depth=1
	movq	144(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movq	%r13, %rbp
	jne	.LBB5_10
# BB#9:                                 #   in Loop: Header=BB5_4 Depth=1
	movl	%edx, 196(%rsp)         # 4-byte Spill
	jmp	.LBB5_11
	.align	16, 0x90
.LBB5_16:                               # %if.else
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	$-15, %eax
	cmpl	$24, %ecx
	jne	.LBB5_6
# BB#17:                                # %for.cond.113.preheader
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	%edx, 196(%rsp)         # 4-byte Spill
	movl	$3, %edx
	movq	%r12, %rsi
	movq	%rbp, %rcx
	callq	pcx_write_rle
	testb	$1, 832(%r14)
	je	.LBB5_19
# BB#18:                                # %if.then.124
                                        #   in Loop: Header=BB5_4 Depth=1
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	fputc
.LBB5_19:                               # %for.inc.127
                                        #   in Loop: Header=BB5_4 Depth=1
	movq	256(%rsp), %rsi
	leaq	1(%rsi), %rdi
	addq	184(%rsp), %rsi         # 8-byte Folded Reload
	movl	$3, %edx
	movq	%rbp, %rcx
	callq	pcx_write_rle
	testb	$1, 832(%r14)
	je	.LBB5_21
# BB#20:                                # %if.then.124.1
                                        #   in Loop: Header=BB5_4 Depth=1
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	fputc
.LBB5_21:                               # %for.inc.127.1
                                        #   in Loop: Header=BB5_4 Depth=1
	movq	256(%rsp), %rsi
	leaq	2(%rsi), %rdi
	addq	184(%rsp), %rsi         # 8-byte Folded Reload
	movl	$3, %edx
	movq	%rbp, %rcx
	callq	pcx_write_rle
	testb	$1, 832(%r14)
	je	.LBB5_12
# BB#22:                                # %if.then.124.2
                                        #   in Loop: Header=BB5_4 Depth=1
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	fputc
	jmp	.LBB5_12
.LBB5_10:                               # %if.then.42
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	%edx, 196(%rsp)         # 4-byte Spill
	movb	-1(%r12), %al
	movb	%al, (%r12)
	incq	%r12
	movq	256(%rsp), %rdi
.LBB5_11:                               # %if.end.44
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	$1, %edx
	movq	%r12, %rsi
	movq	%rbp, %rcx
	callq	pcx_write_rle
.LBB5_12:                               # %for.inc.132
                                        #   in Loop: Header=BB5_4 Depth=1
	movq	%rbp, %r13
	movq	208(%rsp), %rbp         # 8-byte Reload
	incl	%ebp
	movq	160(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %ebp
	movq	168(%rsp), %r14         # 8-byte Reload
	movl	180(%rsp), %ebx         # 4-byte Reload
	jl	.LBB5_4
	jmp	.LBB5_13
.LBB5_5:
	movl	%edx, %eax
.LBB5_6:                                # %cleanup.thread89
	movl	%eax, 196(%rsp)         # 4-byte Spill
.LBB5_13:                               # %pcx_done
	movq	24(%r14), %rdi
	movl	$.L.str.10, %edx
	movq	200(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rdi)
	movl	196(%rsp), %ecx         # 4-byte Reload
.LBB5_14:                               # %cleanup.138
	movl	%ecx, %eax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	pcx_write_page, .Lfunc_end5-pcx_write_page
	.cfi_endproc

	.align	16, 0x90
	.type	pcx_write_rle,@function
pcx_write_rle:                          # @pcx_write_rle
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
	subq	$24, %rsp
.Ltmp40:
	.cfi_def_cfa_offset 80
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
	movq	%rcx, %r12
	movq	%rsi, %r14
	cmpq	%r14, %rdi
	jae	.LBB6_18
# BB#1:                                 # %while.body.lr.ph
	leal	(%rdx,%rdx,4), %eax
	leal	(%rax,%rax,2), %eax
	movslq	%edx, %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movslq	%eax, %rbx
	leaq	(%rcx,%rcx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	.align	16, 0x90
.LBB6_2:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_6 Depth 2
                                        #     Child Loop BB6_13 Depth 2
	leaq	(%rdi,%rcx), %r13
	movzbl	(%rdi), %ebp
	cmpq	%r14, %r13
	je	.LBB6_8
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB6_2 Depth=1
	movzbl	(%rdi,%rcx), %eax
	cmpl	%eax, %ebp
	jne	.LBB6_8
# BB#4:                                 # %while.cond.10.preheader
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpq	%r14, %r13
	movq	%r13, %r15
	jae	.LBB6_13
# BB#5:                                 # %while.body.17.preheader
                                        #   in Loop: Header=BB6_2 Depth=1
	addq	8(%rsp), %rdi           # 8-byte Folded Reload
	.align	16, 0x90
.LBB6_6:                                # %while.body.17
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r14, %rdi
	jae	.LBB6_7
# BB#11:                                # %while.body.17.land.rhs_crit_edge
                                        #   in Loop: Header=BB6_6 Depth=2
	movzbl	(%rdi), %eax
	cmpl	%ebp, %eax
	movq	%rdi, %r15
	leaq	(%rdi,%rcx), %rdi
	je	.LBB6_6
	jmp	.LBB6_13
	.align	16, 0x90
.LBB6_8:                                # %if.then
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpl	$192, %ebp
	jb	.LBB6_9
# BB#10:                                # %if.then.9
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	$193, %edi
	movq	%r12, %rsi
	callq	_IO_putc
	movq	%r13, %r15
	jmp	.LBB6_17
	.align	16, 0x90
.LBB6_9:                                #   in Loop: Header=BB6_2 Depth=1
	movq	%r13, %r15
	jmp	.LBB6_17
.LBB6_7:                                #   in Loop: Header=BB6_2 Depth=1
	movq	%rdi, %r15
	jmp	.LBB6_13
	.align	16, 0x90
.LBB6_12:                               # %while.body.24
                                        #   in Loop: Header=BB6_13 Depth=2
	movl	$207, %edi
	movq	%r12, %rsi
	callq	_IO_putc
	movl	%ebp, %edi
	movq	%r12, %rsi
	callq	_IO_putc
	addq	%rbx, %r13
.LBB6_13:                               # %while.body.24
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %rax
	subq	%r13, %rax
	cmpq	%rbx, %rax
	jge	.LBB6_12
# BB#14:                                # %while.end.30
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpl	$191, %ebp
	ja	.LBB6_16
# BB#15:                                # %while.end.30
                                        #   in Loop: Header=BB6_2 Depth=1
	cmpq	%r13, %r15
	jbe	.LBB6_17
.LBB6_16:                               # %if.then.37
                                        #   in Loop: Header=BB6_2 Depth=1
	cqto
	idivq	16(%rsp)                # 8-byte Folded Reload
	leal	193(%rax), %edi
	movq	%r12, %rsi
	callq	_IO_putc
.LBB6_17:                               # %if.end.45
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	%ebp, %edi
	movq	%r12, %rsi
	callq	_IO_putc
	cmpq	%r14, %r15
	movq	%r15, %rdi
	movq	16(%rsp), %rcx          # 8-byte Reload
	jb	.LBB6_2
.LBB6_18:                               # %while.end.48
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	pcx_write_rle, .Lfunc_end6-pcx_write_rle
	.cfi_endproc

	.type	pcxmono_procs,@object   # @pcxmono_procs
	.section	.rodata,"a",@progbits
	.align	8
pcxmono_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	gx_default_w_b_map_rgb_color
	.quad	gx_default_w_b_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_get_params
	.quad	gdev_prn_put_params
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
	.size	pcxmono_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pcxmono"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_pcxmono_device,@object # @gs_pcxmono_device
	.section	.rodata,"a",@progbits
	.globl	gs_pcxmono_device
	.align	8
gs_pcxmono_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	pcxmono_procs
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
	.quad	pcxmono_print_page
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
	.size	gs_pcxmono_device, 18472

	.type	pcxgray_procs,@object   # @pcxgray_procs
	.align	8
pcxgray_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_get_params
	.quad	gdev_prn_put_params
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
	.size	pcxgray_procs, 584

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"pcxgray"
	.size	.L.str.2, 8

	.type	gs_pcxgray_device,@object # @gs_pcxgray_device
	.section	.rodata,"a",@progbits
	.globl	gs_pcxgray_device
	.align	8
gs_pcxgray_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	pcxgray_procs
	.quad	.L.str.2
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
	.quad	pcx256_print_page
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
	.size	gs_pcxgray_device, 18472

	.type	pcx16_procs,@object     # @pcx16_procs
	.align	8
pcx16_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	pc_4bit_map_rgb_color
	.quad	pc_4bit_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_get_params
	.quad	gdev_prn_put_params
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
	.size	pcx16_procs, 584

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"pcx16"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"DeviceRGB"
	.size	.L.str.4, 10

	.type	gs_pcx16_device,@object # @gs_pcx16_device
	.section	.rodata,"a",@progbits
	.globl	gs_pcx16_device
	.align	8
gs_pcx16_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	pcx16_procs
	.quad	.L.str.3
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
	.short	4                       # 0x4
	.byte	255                     # 0xff
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
	.quad	.L.str.4
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
	.quad	pcx16_print_page
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
	.size	gs_pcx16_device, 18472

	.type	pcx256_procs,@object    # @pcx256_procs
	.align	8
pcx256_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	pc_8bit_map_rgb_color
	.quad	pc_8bit_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_get_params
	.quad	gdev_prn_put_params
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
	.size	pcx256_procs, 584

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"pcx256"
	.size	.L.str.5, 7

	.type	gs_pcx256_device,@object # @gs_pcx256_device
	.section	.rodata,"a",@progbits
	.globl	gs_pcx256_device
	.align	8
gs_pcx256_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	pcx256_procs
	.quad	.L.str.5
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
	.short	8                       # 0x8
	.byte	255                     # 0xff
	.zero	1
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.4
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
	.quad	pcx256_print_page
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
	.size	gs_pcx256_device, 18472

	.type	pcx24b_procs,@object    # @pcx24b_procs
	.align	8
pcx24b_procs:
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
	.quad	gdev_prn_get_params
	.quad	gdev_prn_put_params
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
	.size	pcx24b_procs, 584

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"pcx24b"
	.size	.L.str.6, 7

	.type	gs_pcx24b_device,@object # @gs_pcx24b_device
	.section	.rodata,"a",@progbits
	.globl	gs_pcx24b_device
	.align	8
gs_pcx24b_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	pcx24b_procs
	.quad	.L.str.6
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
	.long	0                       # 0x0
	.long	255                     # 0xff
	.long	1                       # 0x1
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.4
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
	.quad	pcx24b_print_page
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
	.size	gs_pcx24b_device, 18472

	.type	pcxcmyk_procs,@object   # @pcxcmyk_procs
	.align	8
pcxcmyk_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	0
	.quad	cmyk_1bit_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_get_params
	.quad	gdev_prn_put_params
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
	.size	pcxcmyk_procs, 584

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"pcxcmyk"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"DeviceCMYK"
	.size	.L.str.8, 11

	.type	gs_pcxcmyk_device,@object # @gs_pcxcmyk_device
	.section	.rodata,"a",@progbits
	.globl	gs_pcxcmyk_device
	.align	8
gs_pcxcmyk_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	pcxcmyk_procs
	.quad	.L.str.7
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
	.quad	.L.str.8
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
	.quad	pcxcmyk_print_page
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
	.size	gs_pcxcmyk_device, 18472

	.type	pcx_header_prototype,@object # @pcx_header_prototype
	.align	2
pcx_header_prototype:
	.byte	10                      # 0xa
	.byte	0                       # 0x0
	.byte	1                       # 0x1
	.byte	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	48
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	58
	.size	pcx_header_prototype, 128

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\000\000\000\377\377\377"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"pcx file buffer"
	.size	.L.str.10, 16

	.type	pcx_ega_palette,@object # @pcx_ega_palette
	.section	.rodata,"a",@progbits
	.align	16
pcx_ega_palette:
	.ascii	"\000\000\000\000\000\252\000\252\000\000\252\252\252\000\000\252\000\252\252\252\000\252\252\252UUUUU\377U\377UU\377\377\377UU\377U\377\377\377U\377\377\377"
	.size	pcx_ega_palette, 48

	.type	pcx_cmyk_palette,@object # @pcx_cmyk_palette
	.align	16
pcx_cmyk_palette:
	.ascii	"\377\377\377\000\000\000\377\377\000\017\017\000\377\000\377\017\000\017\377\000\000\017\000\000\000\377\377\000\017\017\000\377\000\000\017\000\000\000\377\000\000\017\037\037\037\017\017\017"
	.size	pcx_cmyk_palette, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
