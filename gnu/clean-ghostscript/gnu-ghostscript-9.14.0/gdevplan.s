	.text
	.file	"gdevplan.bc"
	.align	16, 0x90
	.type	plan_print_page,@function
plan_print_page:                        # @plan_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movl	$3, %esi
	movl	$3, %edx
	movq	%rax, %rcx
	jmp	plan_print_page_loop    # TAILCALL
.Lfunc_end0:
	.size	plan_print_page, .Lfunc_end0-plan_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	plang_print_page,@function
plang_print_page:                       # @plang_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movl	$3, %esi
	movl	$1, %edx
	movq	%rax, %rcx
	jmp	plan_print_page_loop    # TAILCALL
.Lfunc_end1:
	.size	plang_print_page, .Lfunc_end1-plang_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	planm_print_page,@function
planm_print_page:                       # @planm_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	xorl	%esi, %esi
	movl	$1, %edx
	movq	%rax, %rcx
	jmp	plan_print_page_loop    # TAILCALL
.Lfunc_end2:
	.size	planm_print_page, .Lfunc_end2-planm_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	plank_print_page,@function
plank_print_page:                       # @plank_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	xorl	%esi, %esi
	movl	$4, %edx
	movq	%rax, %rcx
	jmp	plan_print_page_loop    # TAILCALL
.Lfunc_end3:
	.size	plank_print_page, .Lfunc_end3-plank_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	planc_print_page,@function
planc_print_page:                       # @planc_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movl	$3, %esi
	movl	$4, %edx
	movq	%rax, %rcx
	jmp	plan_print_page_loop    # TAILCALL
.Lfunc_end4:
	.size	planc_print_page, .Lfunc_end4-planc_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	plan_open,@function
plan_open:                              # @plan_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	gdev_prn_open_planar
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB5_2
# BB#1:                                 # %if.end
	movl	$1, 136(%rbx)
	movq	%rbx, %rdi
	callq	set_linear_color_bits_mask_shift
.LBB5_2:                                # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	plan_open, .Lfunc_end5-plan_open
	.cfi_endproc

	.align	16, 0x90
	.type	plan_close,@function
plan_close:                             # @plan_close
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	gdev_prn_close          # TAILCALL
.Lfunc_end6:
	.size	plan_close, .Lfunc_end6-plan_close
	.cfi_endproc

	.align	16, 0x90
	.type	plan_decode_color,@function
plan_decode_color:                      # @plan_decode_color
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %r8
	movzwl	108(%rdi), %eax
	imull	$43691, %eax, %r9d      # imm = 0xAAAB
	shrl	$17, %r9d
	movl	$1, %r10d
	movb	%r9b, %cl
	shll	%cl, %r10d
	decl	%r10d
	movl	%r9d, %ecx
	addl	%ecx, %ecx
	movq	%rsi, %rax
	shrq	%cl, %rax
	andq	%r10, %rax
	imulq	$65535, %rax, %rax      # imm = 0xFFFF
	movl	116(%rdi), %edi
	xorl	%edx, %edx
	divq	%rdi
	movw	%ax, (%r8)
	movq	%rsi, %rax
	movb	%r9b, %cl
	shrq	%cl, %rax
	andq	%r10, %rax
	imulq	$65535, %rax, %rax      # imm = 0xFFFF
	xorl	%edx, %edx
	divq	%rdi
	movw	%ax, 2(%r8)
	andq	%rsi, %r10
	imulq	$65535, %r10, %rax      # imm = 0xFFFF
	xorl	%edx, %edx
	divq	%rdi
	movw	%ax, 4(%r8)
	xorl	%eax, %eax
	retq
.Lfunc_end7:
	.size	plan_decode_color, .Lfunc_end7-plan_decode_color
	.cfi_endproc

	.align	16, 0x90
	.type	plang_decode_color,@function
plang_decode_color:                     # @plang_decode_color
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rcx
	imulq	$65535, %rsi, %rax      # imm = 0xFFFF
	movl	112(%rdi), %esi
	xorl	%edx, %edx
	divq	%rsi
	movw	%ax, (%rcx)
	movw	%ax, 2(%rcx)
	movw	%ax, 4(%rcx)
	xorl	%eax, %eax
	retq
.Lfunc_end8:
	.size	plang_decode_color, .Lfunc_end8-plang_decode_color
	.cfi_endproc

	.align	16, 0x90
	.type	plang_encode_color,@function
plang_encode_color:                     # @plang_encode_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %eax
	imulq	$100, %rax, %rax
	addq	$50, %rax
	shrq	$2, %rax
	movabsq	$2951479051793528259, %rcx # imm = 0x28F5C28F5C28F5C3
	mulq	%rcx
	shrq	$2, %rdx
	movl	112(%rdi), %eax
	imulq	%rdx, %rax
	movabsq	$-9223231297218904063, %rcx # imm = 0x8000800080008001
	mulq	%rcx
	shrq	$15, %rdx
	movzwl	%dx, %eax
	retq
.Lfunc_end9:
	.size	plang_encode_color, .Lfunc_end9-plang_encode_color
	.cfi_endproc

	.align	16, 0x90
	.type	planc_map_color_rgb,@function
planc_map_color_rgb:                    # @planc_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %r8
	movzwl	108(%rdi), %ecx
	shrl	$2, %ecx
	movl	$1, %edi
	shll	%cl, %edi
	decl	%edi
	movl	%esi, %eax
	andl	%edi, %eax
	shrq	%cl, %rsi
	movl	%esi, %r9d
	andl	%edi, %r9d
	shrq	%cl, %rsi
	movl	%esi, %r10d
	andl	%edi, %r10d
	shrq	%cl, %rsi
	movl	%edi, %ecx
	subl	%eax, %ecx
	movl	%edi, %eax
	subl	%esi, %eax
	imull	%ecx, %eax
	xorl	%edx, %edx
	divl	%edi
	imulq	$65535, %rax, %rax      # imm = 0xFFFF
	xorl	%edx, %edx
	divq	%rdi
	movw	%ax, (%r8)
	movl	%edi, %eax
	subl	%r10d, %eax
	imull	%ecx, %eax
	xorl	%edx, %edx
	divl	%edi
	imulq	$65535, %rax, %rax      # imm = 0xFFFF
	xorl	%edx, %edx
	divq	%rdi
	movw	%ax, 2(%r8)
	movl	%edi, %eax
	subl	%r9d, %eax
	imull	%ecx, %eax
	xorl	%edx, %edx
	divl	%edi
	imulq	$65535, %rax, %rax      # imm = 0xFFFF
	xorl	%edx, %edx
	divq	%rdi
	movw	%ax, 4(%r8)
	xorl	%eax, %eax
	retq
.Lfunc_end10:
	.size	planc_map_color_rgb, .Lfunc_end10-planc_map_color_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	planc_encode_color,@function
planc_encode_color:                     # @planc_encode_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	108(%rdi), %r9d
	shrl	$2, %r9d
	movl	$1, %r8d
	movl	$1, %edi
	movb	%r9b, %cl
	shll	%cl, %edi
	decl	%edi
	movl	$16, %ecx
	subl	%r9d, %ecx
	shll	%cl, %edi
	incl	%edi
	movl	$32, %r10d
	subq	%r9, %r10
	leal	-1(%r10), %ecx
	shll	%cl, %r8d
	movzwl	(%rsi), %eax
	imull	%edi, %eax
	addl	%r8d, %eax
	movb	%r10b, %cl
	shrl	%cl, %eax
	movb	%r9b, %cl
	shlq	%cl, %rax
	movzwl	2(%rsi), %edx
	imull	%edi, %edx
	addl	%r8d, %edx
	movb	%r10b, %cl
	shrl	%cl, %edx
	addq	%rax, %rdx
	movb	%r9b, %cl
	shlq	%cl, %rdx
	movzwl	4(%rsi), %eax
	imull	%edi, %eax
	addl	%r8d, %eax
	movb	%r10b, %cl
	shrl	%cl, %eax
	addq	%rdx, %rax
	movb	%r9b, %cl
	shlq	%cl, %rax
	movzwl	6(%rsi), %edx
	imull	%edi, %edx
	addl	%r8d, %edx
	movb	%r10b, %cl
	shrl	%cl, %edx
	addq	%rax, %rdx
	cmpq	$-1, %rdx
	sete	%al
	movzbl	%al, %eax
	xorq	%rdx, %rax
	retq
.Lfunc_end11:
	.size	planc_encode_color, .Lfunc_end11-planc_encode_color
	.cfi_endproc

	.align	16, 0x90
	.type	planc_decode_color,@function
planc_decode_color:                     # @planc_decode_color
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %r8
	movzwl	108(%rdi), %ecx
	shrl	$2, %ecx
	movl	$1, %edi
	shll	%cl, %edi
	decl	%edi
	movq	%rdi, %r9
	andq	%rsi, %r9
	shrq	%cl, %rsi
	movq	%rdi, %r10
	andq	%rsi, %r10
	shrq	%cl, %rsi
	movq	%rdi, %r11
	andq	%rsi, %r11
	shrq	%cl, %rsi
	movl	%esi, %eax
	imulq	$65535, %rax, %rax      # imm = 0xFFFF
	xorl	%edx, %edx
	divq	%rdi
	movw	%ax, (%r8)
	imulq	$65535, %r11, %rax      # imm = 0xFFFF
	xorl	%edx, %edx
	divq	%rdi
	movw	%ax, 2(%r8)
	imulq	$65535, %r10, %rax      # imm = 0xFFFF
	xorl	%edx, %edx
	divq	%rdi
	movw	%ax, 4(%r8)
	imulq	$65535, %r9, %rax       # imm = 0xFFFF
	xorl	%edx, %edx
	divq	%rdi
	movw	%ax, 6(%r8)
	xorl	%eax, %eax
	retq
.Lfunc_end12:
	.size	planc_decode_color, .Lfunc_end12-planc_decode_color
	.cfi_endproc

	.align	16, 0x90
	.type	plan_print_page_loop,@function
plan_print_page_loop:                   # @plan_print_page_loop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp8:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp9:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 56
	subq	$584, %rsp              # imm = 0x248
.Ltmp11:
	.cfi_def_cfa_offset 640
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movl	%edx, %r14d
	movl	%esi, 12(%rsp)          # 4-byte Spill
	movq	%rdi, %r15
	leaq	13056(%r15), %r13
	movq	%r13, %rdi
	callq	strlen
	movq	%rax, %r12
	cmpq	$4, %r12
	movl	$4, %edx
	cmovbq	%r12, %rdx
	movl	$.L.str.8, %esi
	movq	%r13, %rdi
	callq	strncmp
	xorl	%ebx, %ebx
	testl	%eax, %eax
	movl	$0, %ebp
	je	.LBB13_22
# BB#1:                                 # %lor.rhs
	cmpq	$9, %r12
	movl	$9, %edx
	cmovbq	%r12, %rdx
	movl	$.L.str.9, %esi
	movq	%r13, %rdi
	callq	strncmp
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB13_22
# BB#2:                                 # %if.then.88
	movl	832(%r15), %edx
	movl	836(%r15), %ecx
	movl	$dump_row_ppm, %r13d
	cmpl	$3, 12(%rsp)            # 4-byte Folded Reload
	jne	.LBB13_4
# BB#3:                                 # %if.then.88
	cmpl	$3, %r14d
	je	.LBB13_12
.LBB13_4:                               # %if.else.i
	movl	$dump_row_pbm, %r13d
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	jne	.LBB13_6
# BB#5:                                 # %if.else.i
	cmpl	$1, %r14d
	je	.LBB13_12
.LBB13_6:                               # %if.else.6.i
	movl	$dump_row_pgm, %r13d
	cmpl	$3, 12(%rsp)            # 4-byte Folded Reload
	jne	.LBB13_8
# BB#7:                                 # %if.else.6.i
	cmpl	$1, %r14d
	je	.LBB13_12
.LBB13_8:                               # %if.else.11.i
	movl	$dump_row_pnmk, %r13d
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	jne	.LBB13_10
# BB#9:                                 # %if.else.11.i
	cmpl	$4, %r14d
	je	.LBB13_12
.LBB13_10:                              # %if.else.16.i
	movl	$dump_row_pnmc, %r13d
	xorl	%ebp, %ebp
	cmpl	$3, 12(%rsp)            # 4-byte Folded Reload
	jne	.LBB13_22
# BB#11:                                # %if.else.16.i
	cmpl	$4, %r14d
	jne	.LBB13_22
.LBB13_12:                              # %if.end.25.i
	cmpq	$0, 16(%rsp)            # 8-byte Folded Reload
	je	.LBB13_21
# BB#13:                                # %if.end.28.i
	cmpl	$3, %r14d
	jne	.LBB13_15
# BB#14:                                # %if.then.30.i
	movl	$.L.str.10, %esi
	jmp	.LBB13_20
.LBB13_15:                              # %if.else.31.i
	cmpl	$4, %r14d
	jne	.LBB13_17
# BB#16:                                # %if.then.33.i
	movq	gs_product(%rip), %r8
	movl	$.L.str.11, %esi
	xorl	%eax, %eax
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	fprintf
	jmp	.LBB13_21
.LBB13_17:                              # %if.else.40.i
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	je	.LBB13_18
# BB#19:                                # %if.else.44.i
	movl	$.L.str.13, %esi
	jmp	.LBB13_20
.LBB13_18:                              # %if.then.42.i
	movl	$.L.str.12, %esi
.LBB13_20:                              # %if.end.90
	xorl	%eax, %eax
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	fprintf
.LBB13_21:                              # %if.end.90
	movq	%r13, %rbp
.LBB13_22:                              # %if.end.90
	cmpl	$1, %r14d
	movl	$295763985, %eax        # imm = 0x11A10011
	movl	$295829521, %r13d       # imm = 0x11A20011
	cmoveq	%rax, %r13
	cmpl	$0, 836(%r15)
	jle	.LBB13_28
# BB#23:                                # %for.body.lr.ph
	xorl	%r14d, %r14d
	leaq	24(%rsp), %r12
	.align	16, 0x90
.LBB13_24:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, 560(%rsp)
	movl	%r14d, 564(%rsp)
	movl	832(%r15), %eax
	movl	%eax, 568(%rsp)
	incl	%r14d
	movl	%r14d, 572(%rsp)
	xorl	%esi, %esi
	movl	$536, %edx              # imm = 0x218
	movq	%r12, %rdi
	callq	memset
	movq	%r13, 24(%rsp)
	movl	$0, 544(%rsp)
	movq	%r15, %rdi
	leaq	560(%rsp), %rsi
	movq	%r12, %rdx
	leaq	576(%rsp), %rcx
	callq	*1448(%r15)
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB13_28
# BB#25:                                # %if.end.113
                                        #   in Loop: Header=BB13_24 Depth=1
	testq	%rbp, %rbp
	je	.LBB13_27
# BB#26:                                # %if.then.115
                                        #   in Loop: Header=BB13_24 Depth=1
	movl	832(%r15), %edi
	leaq	32(%rsp), %rsi
	movq	16(%rsp), %rdx          # 8-byte Reload
	callq	*%rbp
.LBB13_27:                              # %cleanup
                                        #   in Loop: Header=BB13_24 Depth=1
	cmpl	836(%r15), %r14d
	jl	.LBB13_24
.LBB13_28:                              # %for.end
	movl	%ebx, %eax
	sarl	$31, %eax
	andl	%ebx, %eax
	addq	$584, %rsp              # imm = 0x248
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	plan_print_page_loop, .Lfunc_end13-plan_print_page_loop
	.cfi_endproc

	.align	16, 0x90
	.type	dump_row_ppm,@function
dump_row_ppm:                           # @dump_row_ppm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp21:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 48
.Ltmp23:
	.cfi_offset %rbx, -48
.Ltmp24:
	.cfi_offset %r12, -40
.Ltmp25:
	.cfi_offset %r14, -32
.Ltmp26:
	.cfi_offset %r15, -24
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%edi, %r15d
	testq	%r14, %r14
	je	.LBB14_4
# BB#1:                                 # %entry
	testl	%r15d, %r15d
	je	.LBB14_4
# BB#2:                                 # %while.body.preheader
	movq	16(%rsi), %r12
	movq	(%rsi), %rbp
	movq	8(%rsi), %rbx
	.align	16, 0x90
.LBB14_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbp), %edi
	incq	%rbp
	movq	%r14, %rsi
	callq	fputc
	movzbl	(%rbx), %edi
	incq	%rbx
	movq	%r14, %rsi
	callq	fputc
	movzbl	(%r12), %edi
	incq	%r12
	movq	%r14, %rsi
	callq	fputc
	decl	%r15d
	jne	.LBB14_3
.LBB14_4:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	dump_row_ppm, .Lfunc_end14-dump_row_ppm
	.cfi_endproc

	.align	16, 0x90
	.type	dump_row_pbm,@function
dump_row_pbm:                           # @dump_row_pbm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 32
.Ltmp31:
	.cfi_offset %rbx, -32
.Ltmp32:
	.cfi_offset %r14, -24
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%edi, %ebp
	testq	%r14, %r14
	je	.LBB15_4
# BB#1:                                 # %if.end
	addl	$7, %ebp
	sarl	$3, %ebp
	je	.LBB15_4
# BB#2:                                 # %while.body.lr.ph
	movq	(%rsi), %rbx
	.align	16, 0x90
.LBB15_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %edi
	incq	%rbx
	movq	%r14, %rsi
	callq	fputc
	decl	%ebp
	jne	.LBB15_3
.LBB15_4:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end15:
	.size	dump_row_pbm, .Lfunc_end15-dump_row_pbm
	.cfi_endproc

	.align	16, 0x90
	.type	dump_row_pgm,@function
dump_row_pgm:                           # @dump_row_pgm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 32
.Ltmp37:
	.cfi_offset %rbx, -32
.Ltmp38:
	.cfi_offset %r14, -24
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%edi, %ebp
	testq	%r14, %r14
	je	.LBB16_4
# BB#1:                                 # %entry
	testl	%ebp, %ebp
	je	.LBB16_4
# BB#2:                                 # %while.body.preheader
	movq	(%rsi), %rbx
	.align	16, 0x90
.LBB16_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %edi
	incq	%rbx
	movq	%r14, %rsi
	callq	fputc
	decl	%ebp
	jne	.LBB16_3
.LBB16_4:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end16:
	.size	dump_row_pgm, .Lfunc_end16-dump_row_pgm
	.cfi_endproc

	.align	16, 0x90
	.type	dump_row_pnmk,@function
dump_row_pnmk:                          # @dump_row_pnmk
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp41:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp42:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp43:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp44:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp46:
	.cfi_def_cfa_offset 96
.Ltmp47:
	.cfi_offset %rbx, -56
.Ltmp48:
	.cfi_offset %r12, -48
.Ltmp49:
	.cfi_offset %r13, -40
.Ltmp50:
	.cfi_offset %r14, -32
.Ltmp51:
	.cfi_offset %r15, -24
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	testq	%r15, %r15
	je	.LBB17_7
# BB#1:                                 # %entry
	movq	32(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	je	.LBB17_7
# BB#2:                                 # %while.body.preheader
	movq	24(%rsi), %rax
	movq	16(%rsi), %rcx
	movq	(%rsi), %rdx
	movq	8(%rsi), %rsi
	jmp	.LBB17_3
	.align	16, 0x90
.LBB17_6:                               #   in Loop: Header=BB17_3 Depth=1
	movq	32(%rsp), %rcx          # 8-byte Reload
	leal	-8(%rcx,%rax), %ecx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	8(%rsp), %rdx           # 8-byte Reload
	movq	(%rsp), %rsi            # 8-byte Reload
.LBB17_3:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_4 Depth 2
	movzbl	(%rdx), %r13d
	incq	%rdx
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movzbl	(%rsi), %ebp
	incq	%rsi
	movq	%rsi, (%rsp)            # 8-byte Spill
	movzbl	(%rcx), %r12d
	incq	%rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movzbl	(%rax), %r14d
	incq	%rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	$7, %ebx
	.align	16, 0x90
.LBB17_4:                               # %for.body
                                        #   Parent Loop BB17_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r13d, %eax
	movb	%bl, %cl
	shrl	%cl, %eax
	andl	$1, %eax
	negl	%eax
	movzbl	%al, %edi
	movq	%r15, %rsi
	callq	fputc
	movl	%ebp, %eax
	movb	%bl, %cl
	shrl	%cl, %eax
	andl	$1, %eax
	negl	%eax
	movzbl	%al, %edi
	movq	%r15, %rsi
	callq	fputc
	movl	%r12d, %eax
	movb	%bl, %cl
	shrl	%cl, %eax
	andl	$1, %eax
	negl	%eax
	movzbl	%al, %edi
	movq	%r15, %rsi
	callq	fputc
	movl	%r14d, %eax
	movb	%bl, %cl
	shrl	%cl, %eax
	andl	$1, %eax
	negl	%eax
	movzbl	%al, %edi
	movq	%r15, %rsi
	callq	fputc
	movq	32(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rbx), %eax
	cmpl	$8, %eax
	je	.LBB17_7
# BB#5:                                 # %for.cond
                                        #   in Loop: Header=BB17_4 Depth=2
	movl	%ebx, %eax
	testl	%ebx, %ebx
	leal	-1(%rbx), %ecx
	movl	%ecx, %ebx
	jg	.LBB17_4
	jmp	.LBB17_6
.LBB17_7:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	dump_row_pnmk, .Lfunc_end17-dump_row_pnmk
	.cfi_endproc

	.align	16, 0x90
	.type	dump_row_pnmc,@function
dump_row_pnmc:                          # @dump_row_pnmc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp54:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp55:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp56:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp57:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp59:
	.cfi_def_cfa_offset 64
.Ltmp60:
	.cfi_offset %rbx, -56
.Ltmp61:
	.cfi_offset %r12, -48
.Ltmp62:
	.cfi_offset %r13, -40
.Ltmp63:
	.cfi_offset %r14, -32
.Ltmp64:
	.cfi_offset %r15, -24
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%edi, %r15d
	testq	%r14, %r14
	je	.LBB18_4
# BB#1:                                 # %entry
	testl	%r15d, %r15d
	je	.LBB18_4
# BB#2:                                 # %while.body.preheader
	movq	24(%rsi), %r12
	movq	16(%rsi), %r13
	movq	(%rsi), %rbx
	movq	8(%rsi), %rbp
	.align	16, 0x90
.LBB18_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %edi
	incq	%rbx
	movq	%r14, %rsi
	callq	fputc
	movzbl	(%rbp), %edi
	incq	%rbp
	movq	%r14, %rsi
	callq	fputc
	movzbl	(%r13), %edi
	incq	%r13
	movq	%r14, %rsi
	callq	fputc
	movzbl	(%r12), %edi
	incq	%r12
	movq	%r14, %rsi
	callq	fputc
	decl	%r15d
	jne	.LBB18_3
.LBB18_4:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	dump_row_pnmc, .Lfunc_end18-dump_row_pnmc
	.cfi_endproc

	.type	plan_procs,@object      # @plan_procs
	.section	.rodata,"a",@progbits
	.align	8
plan_procs:
	.quad	plan_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	plan_close
	.quad	0
	.quad	plan_decode_color
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
	.quad	gx_default_rgb_map_rgb_color
	.quad	plan_decode_color
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	plan_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"plan"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceRGB"
	.size	.L.str.1, 10

	.type	gs_plan_device,@object  # @gs_plan_device
	.section	.rodata,"a",@progbits
	.globl	gs_plan_device
	.align	8
gs_plan_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	plan_procs
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
	.long	5100                    # 0x13ec
	.long	6600                    # 0x19c8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
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
	.quad	plan_print_page
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
	.size	gs_plan_device, 18472

	.type	plang_procs,@object     # @plang_procs
	.align	8
plang_procs:
	.quad	plan_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	plan_close
	.quad	0
	.quad	plang_decode_color
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
	.quad	plang_encode_color
	.quad	plang_decode_color
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	plang_procs, 584

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"plang"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"DeviceGray"
	.size	.L.str.3, 11

	.type	gs_plang_device,@object # @gs_plang_device
	.section	.rodata,"a",@progbits
	.globl	gs_plang_device
	.align	8
gs_plang_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	plang_procs
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
	.long	0                       # 0x0
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.3
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	5100                    # 0x13ec
	.long	6600                    # 0x19c8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
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
	.quad	plang_print_page
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
	.size	gs_plang_device, 18472

	.type	planm_procs,@object     # @planm_procs
	.align	8
planm_procs:
	.quad	plan_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	plan_close
	.quad	0
	.quad	gx_default_b_w_map_color_rgb
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
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	planm_procs, 584

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"planm"
	.size	.L.str.4, 6

	.type	gs_planm_device,@object # @gs_planm_device
	.section	.rodata,"a",@progbits
	.globl	gs_planm_device
	.align	8
gs_planm_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	planm_procs
	.quad	.L.str.4
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
	.quad	.L.str.3
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	5100                    # 0x13ec
	.long	6600                    # 0x19c8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
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
	.quad	planm_print_page
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
	.size	gs_planm_device, 18472

	.type	plank_procs,@object     # @plank_procs
	.align	8
plank_procs:
	.quad	plan_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	plan_close
	.quad	0
	.quad	planc_map_color_rgb
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
	.quad	planc_encode_color
	.quad	planc_decode_color
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	plank_procs, 584

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"plank"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"DeviceCMYK"
	.size	.L.str.6, 11

	.type	gs_plank_device,@object # @gs_plank_device
	.section	.rodata,"a",@progbits
	.globl	gs_plank_device
	.align	8
gs_plank_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	plank_procs
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
	.quad	.L.str.6
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	5100                    # 0x13ec
	.long	6600                    # 0x19c8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
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
	.quad	plank_print_page
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
	.size	gs_plank_device, 18472

	.type	planc_procs,@object     # @planc_procs
	.align	8
planc_procs:
	.quad	plan_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	plan_close
	.quad	0
	.quad	planc_map_color_rgb
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
	.quad	planc_encode_color
	.quad	planc_decode_color
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	planc_procs, 584

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"planc"
	.size	.L.str.7, 6

	.type	gs_planc_device,@object # @gs_planc_device
	.section	.rodata,"a",@progbits
	.globl	gs_planc_device
	.align	8
gs_planc_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	planc_procs
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
	.quad	.L.str.6
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	5100                    # 0x13ec
	.long	6600                    # 0x19c8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
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
	.quad	planc_print_page
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
	.size	gs_planc_device, 18472

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"nul:"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"/dev/null"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"P6 %d %d 255\n"
	.size	.L.str.10, 14

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"P7\nWIDTH %d\nHEIGHT %d\nDEPTH 4\nMAXVAL 255\nTUPLTYPE CMYK\n# Image generated by %s\nENDHDR\n"
	.size	.L.str.11, 87

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"P4 %d %d\n"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"P5 %d %d 255\n"
	.size	.L.str.13, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
