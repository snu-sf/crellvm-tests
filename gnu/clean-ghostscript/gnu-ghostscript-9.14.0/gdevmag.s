	.text
	.file	"gdevmag.bc"
	.align	16, 0x90
	.type	mag_4bit_print_page,@function
mag_4bit_print_page:                    # @mag_4bit_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movl	$4, %esi
	movq	%rax, %rdx
	jmp	mag_print_page          # TAILCALL
.Lfunc_end0:
	.size	mag_4bit_print_page, .Lfunc_end0-mag_4bit_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	mag_8bit_print_page,@function
mag_8bit_print_page:                    # @mag_8bit_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movl	$8, %esi
	movq	%rax, %rdx
	jmp	mag_print_page          # TAILCALL
.Lfunc_end1:
	.size	mag_8bit_print_page, .Lfunc_end1-mag_8bit_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	gdev_mag_4bit_open,@function
gdev_mag_4bit_open:                     # @gdev_mag_4bit_open
	.cfi_startproc
# BB#0:                                 # %entry
	movl	832(%rdi), %eax
	leal	7(%rax), %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	leal	7(%rax,%rcx), %eax
	andl	$-8, %eax
	movl	%eax, 832(%rdi)
	jmp	gdev_prn_open           # TAILCALL
.Lfunc_end2:
	.size	gdev_mag_4bit_open, .Lfunc_end2-gdev_mag_4bit_open
	.cfi_endproc

	.align	16, 0x90
	.type	gdev_mag_8bit_open,@function
gdev_mag_8bit_open:                     # @gdev_mag_8bit_open
	.cfi_startproc
# BB#0:                                 # %entry
	movl	832(%rdi), %eax
	leal	3(%rax), %ecx
	sarl	$31, %ecx
	shrl	$30, %ecx
	leal	3(%rax,%rcx), %eax
	andl	$-4, %eax
	movl	%eax, 832(%rdi)
	jmp	gdev_prn_open           # TAILCALL
.Lfunc_end3:
	.size	gdev_mag_8bit_open, .Lfunc_end3-gdev_mag_8bit_open
	.cfi_endproc

	.align	16, 0x90
	.type	mag_print_page,@function
mag_print_page:                         # @mag_print_page
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
	subq	$600, %rsp              # imm = 0x258
.Ltmp6:
	.cfi_def_cfa_offset 656
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
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movl	%esi, %ebx
	movl	%ebx, 100(%rsp)         # 4-byte Spill
	movq	%rdi, %r14
	movl	$.L.str.4, %edi
	callq	getenv
	movq	%rax, 80(%rsp)          # 8-byte Spill
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 304(%rsp)
	movaps	%xmm0, 288(%rsp)
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	gx_device_raster
	movl	%eax, %esi
	movl	%esi, 56(%rsp)          # 4-byte Spill
	movl	836(%r14), %eax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movl	832(%r14), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	cmpl	$4, %ebx
	sete	%cl
	movzbl	%cl, %ecx
	leal	2(%rcx,%rcx), %ecx
	cltd
	idivl	%ecx
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	%eax, %ecx
	shrl	$31, %ecx
	leal	(%rcx,%rax), %ebp
	sarl	%ebp
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	leal	7(%rbp), %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	7(%rbp,%rax), %ebx
	sarl	$3, %ebx
	incl	%ebx
	movq	24(%r14), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$17, %edx
	movl	$.L.str.5, %ecx
	callq	*88(%rdi)
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	24(%r14), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$2, %edx
	movl	$.L.str.6, %ecx
	movl	%ebp, %esi
	callq	*88(%rdi)
	movq	%rax, %r12
	movq	24(%r14), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.7, %ecx
	movl	%ebx, %esi
	callq	*88(%rdi)
	movq	%rax, %r13
	movq	24(%r14), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.8, %ecx
	movl	%ebp, %esi
	callq	*88(%rdi)
	movq	%rax, %r15
	movq	24(%r14), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$1, %edx
	movl	$.L.str.9, %ecx
	movl	20(%rsp), %esi          # 4-byte Reload
	callq	*88(%rdi)
	movq	24(%rsp), %rbx          # 8-byte Reload
	testq	%rbx, %rbx
	movl	$-1, 64(%rsp)           # 4-byte Folded Spill
	je	.LBB4_1
# BB#2:                                 # %entry
	movq	%r14, 120(%rsp)         # 8-byte Spill
	testq	%r12, %r12
	movq	%r12, %rcx
	je	.LBB4_3
# BB#4:                                 # %entry
	testq	%r13, %r13
	movq	72(%rsp), %r12          # 8-byte Reload
	je	.LBB4_5
# BB#6:                                 # %entry
	testq	%r15, %r15
	je	.LBB4_5
# BB#7:                                 # %entry
	movq	%r15, 40(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	je	.LBB4_49
# BB#8:                                 # %for.cond.preheader
	movq	%r13, 128(%rsp)         # 8-byte Spill
	movq	48(%rsp), %rax          # 8-byte Reload
	movslq	%eax, %r12
	movq	%r12, (%rsp)            # 8-byte Spill
	leaq	(%rcx,%r12), %r14
	movq	%r14, 136(%rsp)         # 8-byte Spill
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movslq	56(%rsp), %rax          # 4-byte Folded Reload
	movq	%rbx, 144(%rsp)
	leaq	(%rbx,%rax), %rcx
	movq	%rcx, 152(%rsp)
	leaq	(%rbx,%rax,2), %rcx
	movq	%rcx, 160(%rsp)
	leaq	(%rax,%rax,2), %rcx
	leaq	(%rbx,%rcx), %rdx
	movq	%rdx, 168(%rsp)
	leaq	(%rbx,%rax,4), %rdx
	movq	%rdx, 176(%rsp)
	leaq	(%rax,%rax,4), %rdx
	leaq	(%rbx,%rdx), %rsi
	movq	%rsi, 184(%rsp)
	leaq	(%rbx,%rcx,2), %rsi
	movq	%rsi, 192(%rsp)
	imulq	$7, %rax, %rsi
	leaq	(%rsi,%rbx), %rsi
	movq	%rsi, 200(%rsp)
	leaq	(%rbx,%rax,8), %rsi
	movq	%rsi, 208(%rsp)
	leaq	(%rax,%rax,8), %rsi
	leaq	(%rsi,%rbx), %rsi
	movq	%rsi, 216(%rsp)
	leaq	(%rbx,%rdx,2), %rsi
	movq	%rsi, 224(%rsp)
	imulq	$11, %rax, %rsi
	leaq	(%rsi,%rbx), %rsi
	movq	%rsi, 232(%rsp)
	leaq	(%rbx,%rcx,4), %rcx
	movq	%rcx, 240(%rsp)
	imulq	$13, %rax, %rcx
	leaq	(%rcx,%rbx), %rcx
	movq	%rcx, 248(%rsp)
	imulq	$14, %rax, %rcx
	leaq	(%rcx,%rbx), %rcx
	movq	%rcx, 256(%rsp)
	leaq	(%rdx,%rdx,2), %rcx
	leaq	(%rcx,%rbx), %rcx
	movq	%rcx, 264(%rsp)
	shlq	$4, %rax
	leaq	(%rax,%rbx), %rax
	movq	%rax, 272(%rsp)
	movq	80(%rsp), %rax          # 8-byte Reload
	testq	%rax, %rax
	movl	$.L.str.10, %ebx
	cmovneq	%rax, %rbx
	leaq	320(%rsp), %rbp
	movl	$.L.str.3, %esi
	movq	%rbp, %rdi
	callq	strcpy
	movq	%rbp, %rdi
	callq	strlen
	leaq	320(%rsp,%rax), %rdi
	xorl	%r15d, %r15d
	movl	$.L.str.11, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdx
	callq	gs_sprintf
	leaq	351(%rsp), %rdi
	movq	120(%rsp), %rax         # 8-byte Reload
	movq	16(%rax), %rdx
	movl	$.L.str.12, %esi
	xorl	%eax, %eax
	callq	gs_sprintf
	xorl	%esi, %esi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	memset
	movq	112(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movl	$0, %edx
	movl	$0, %ecx
	movq	40(%rsp), %rbx          # 8-byte Reload
	jle	.LBB4_17
# BB#9:                                 # %for.body.75.lr.ph
	movq	48(%rsp), %rax          # 8-byte Reload
	leal	1(%rax), %eax
	movl	%eax, 36(%rsp)          # 4-byte Spill
	movl	$128, %r13d
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	136(%rsp), %r14         # 8-byte Reload
	.align	16, 0x90
.LBB4_10:                               # %for.body.75
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_11 Depth 2
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movq	%rax, %r12
	movq	120(%rsp), %rdi         # 8-byte Reload
	movl	%r15d, %esi
	movl	100(%rsp), %edx         # 4-byte Reload
	leaq	144(%rsp), %rcx
	movq	%r12, %r8
	movq	104(%rsp), %r9          # 8-byte Reload
	callq	mag_make_flag
	cltq
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	88(%rsp), %rax          # 8-byte Reload
	cmpl	$2, %eax
	movl	36(%rsp), %edx          # 4-byte Reload
	movq	%rbx, %r9
	movl	$128, %r11d
	movq	%r14, %rsi
	movq	%r12, %rdi
	movq	128(%rsp), %rcx         # 8-byte Reload
	jl	.LBB4_16
	.align	16, 0x90
.LBB4_11:                               # %for.body.i
                                        #   Parent Loop BB4_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rsi), %r10b
	movb	(%rdi), %al
	movzbl	%r11b, %ebx
	cmpl	$128, %ebx
	jne	.LBB4_13
# BB#12:                                # %if.then.i
                                        #   in Loop: Header=BB4_11 Depth=2
	movb	$0, (%rcx)
.LBB4_13:                               # %if.end.i
                                        #   in Loop: Header=BB4_11 Depth=2
	movzbl	%al, %ebp
	movzbl	%r10b, %r8d
	cmpl	%ebp, %r8d
	je	.LBB4_15
# BB#14:                                # %if.then.8.i
                                        #   in Loop: Header=BB4_11 Depth=2
	xorb	%r10b, %al
	movzbl	(%rcx), %ebp
	orl	%r11d, %ebp
	movb	%bpl, (%rcx)
	movb	%al, (%r9)
	incq	%r9
.LBB4_15:                               # %if.end.12.i
                                        #   in Loop: Header=BB4_11 Depth=2
	shrl	%ebx
	incq	%rsi
	incq	%rdi
	leaq	1(%rcx), %rax
	testl	%ebx, %ebx
	cmoveq	%rax, %rcx
	cmovel	%r13d, %ebx
	decl	%edx
	cmpl	$1, %edx
	movl	%ebx, %r11d
	jg	.LBB4_11
.LBB4_16:                               # %mag_comp_flag.exit
                                        #   in Loop: Header=BB4_10 Depth=1
	movq	80(%rsp), %rcx          # 8-byte Reload
	addq	56(%rsp), %rcx          # 8-byte Folded Reload
	movq	40(%rsp), %rbx          # 8-byte Reload
	subl	%ebx, %r9d
	movslq	%r9d, %rax
	movq	64(%rsp), %rdx          # 8-byte Reload
	addq	%rax, %rdx
	incl	%r15d
	movq	112(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %r15d
	movq	%r14, %rax
	movq	%r12, %r14
	jne	.LBB4_10
.LBB4_17:                               # %for.end.85
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movl	100(%rsp), %r14d        # 4-byte Reload
	cmpl	$4, %r14d
	setne	%al
	shlb	$7, %al
	movb	%al, 291(%rsp)
	movl	20(%rsp), %eax          # 4-byte Reload
	decl	%eax
	movb	%al, 296(%rsp)
	movb	%ah, 297(%rsp)  # NOREX
	movq	112(%rsp), %r13         # 8-byte Reload
	leal	-1(%r13), %eax
	movb	%al, 298(%rsp)
	movb	%ah, 299(%rsp)  # NOREX
	movl	$3, %eax
	movq	%rcx, %rsi
	movb	%r14b, %cl
	shll	%cl, %eax
	addl	$32, %eax
	movslq	%eax, %rcx
	movb	%cl, 300(%rsp)
	movb	%ch, 301(%rsp)  # NOREX
	movq	48(%rsp), %rax          # 8-byte Reload
	imull	%r13d, %eax
	movq	%rdx, %rbx
	leal	7(%rax), %edx
	sarl	$31, %edx
	shrl	$29, %edx
	leal	7(%rax,%rdx), %eax
	movq	%rcx, %rdx
	sarl	$3, %eax
	cltq
	addq	%rcx, %rax
	shrq	$16, %rcx
	movb	%cl, 302(%rsp)
	shrq	$24, %rdx
	movb	%dl, 303(%rsp)
	movb	%al, 304(%rsp)
	movb	%ah, 305(%rsp)  # NOREX
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, 306(%rsp)
	movq	%rax, %rcx
	shrq	$24, %rcx
	movb	%cl, 307(%rsp)
	movb	%bl, 308(%rsp)
	movb	%bh, 309(%rsp)  # NOREX
	movq	%rbx, %rcx
	shrq	$16, %rcx
	movb	%cl, 310(%rsp)
	addq	%rbx, %rax
	shrq	$24, %rbx
	movb	%bl, 311(%rsp)
	movb	%al, 312(%rsp)
	movb	%ah, 313(%rsp)  # NOREX
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, 314(%rsp)
	shrq	$24, %rax
	movb	%al, 315(%rsp)
	movq	%rsi, %rcx
	movb	%cl, 316(%rsp)
	movb	%ch, 317(%rsp)  # NOREX
	movq	%rcx, %rax
	shrq	$16, %rax
	movb	%al, 318(%rsp)
	shrq	$24, %rcx
	movb	%cl, 319(%rsp)
	leaq	320(%rsp), %rdi
	movq	72(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rsi
	callq	fputs
	leaq	288(%rsp), %rdi
	movl	$32, %esi
	movl	$1, %edx
	movq	%rbp, %rcx
	callq	fwrite
	movl	$1, %r12d
	movb	%r14b, %cl
	shll	%cl, %r12d
	xorl	%ebx, %ebx
	leaq	594(%rsp), %r15
	leaq	591(%rsp), %r14
	movq	120(%rsp), %rbp         # 8-byte Reload
	.align	16, 0x90
.LBB4_18:                               # %for.body.i.208
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	*17936(%rbp)
	movb	597(%rsp), %al
	movb	%al, 591(%rsp)
	movb	595(%rsp), %al
	movb	%al, 592(%rsp)
	movb	599(%rsp), %al
	movb	%al, 593(%rsp)
	movq	17176(%rbp), %rcx
	movl	$3, %esi
	movl	$1, %edx
	movq	%r14, %rdi
	callq	fwrite
	incq	%rbx
	cmpq	%r12, %rbx
	jb	.LBB4_18
# BB#19:                                # %mag_write_palette.exit
	xorl	%esi, %esi
	movq	136(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rdi
	movq	(%rsp), %rbx            # 8-byte Reload
	movq	%rbx, %rdx
	callq	memset
	testl	%r13d, %r13d
	jle	.LBB4_20
# BB#21:                                # %for.body.265.lr.ph
	movq	48(%rsp), %rax          # 8-byte Reload
	leal	1(%rax), %eax
	movl	%eax, 64(%rsp)          # 4-byte Spill
	xorl	%r13d, %r13d
	movl	$128, %r14d
	movq	8(%rsp), %rax           # 8-byte Reload
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB4_22:                               # %for.body.265
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_24 Depth 2
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	movq	%rax, %r12
	movq	120(%rsp), %rdi         # 8-byte Reload
	movl	%r15d, %esi
	movl	100(%rsp), %edx         # 4-byte Reload
	leaq	144(%rsp), %rcx
	movq	%r12, %r8
	movq	104(%rsp), %r9          # 8-byte Reload
	callq	mag_make_flag
	movq	88(%rsp), %rax          # 8-byte Reload
	cmpl	$2, %eax
	jl	.LBB4_29
# BB#23:                                # %for.body.lr.ph.i.210
                                        #   in Loop: Header=BB4_22 Depth=1
	movl	$128, %r10d
	movb	%r13b, %cl
	shrl	%cl, %r10d
	movl	64(%rsp), %eax          # 4-byte Reload
	movq	40(%rsp), %r8           # 8-byte Reload
	movq	80(%rsp), %rdx          # 8-byte Reload
	movq	%r12, %rsi
	movq	128(%rsp), %rdi         # 8-byte Reload
	.align	16, 0x90
.LBB4_24:                               # %for.body.i.220
                                        #   Parent Loop BB4_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rdx), %r9b
	movb	(%rsi), %cl
	movzbl	%r10b, %ebx
	cmpl	$128, %ebx
	jne	.LBB4_26
# BB#25:                                # %if.then.i.221
                                        #   in Loop: Header=BB4_24 Depth=2
	movb	$0, (%rdi)
.LBB4_26:                               # %if.end.i.223
                                        #   in Loop: Header=BB4_24 Depth=2
	movzbl	%cl, %r11d
	movzbl	%r9b, %ebp
	cmpl	%r11d, %ebp
	je	.LBB4_28
# BB#27:                                # %if.then.8.i.228
                                        #   in Loop: Header=BB4_24 Depth=2
	xorb	%r9b, %cl
	movzbl	(%rdi), %ebp
	orl	%r10d, %ebp
	movb	%bpl, (%rdi)
	movb	%cl, (%r8)
	incq	%r8
.LBB4_28:                               # %if.end.12.i.239
                                        #   in Loop: Header=BB4_24 Depth=2
	shrl	%ebx
	incq	%rdx
	incq	%rsi
	leaq	1(%rdi), %rcx
	testl	%ebx, %ebx
	cmoveq	%rcx, %rdi
	cmovel	%r14d, %ebx
	decl	%eax
	cmpl	$1, %eax
	movl	%ebx, %r10d
	jg	.LBB4_24
.LBB4_29:                               # %mag_comp_flag.exit245
                                        #   in Loop: Header=BB4_22 Depth=1
	movq	%r12, 136(%rsp)         # 8-byte Spill
	movq	48(%rsp), %rax          # 8-byte Reload
	addl	%eax, %r13d
	movl	%r13d, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%r13), %eax
	movl	%eax, %ebp
	andl	$-8, %ebp
	sarl	$3, %eax
	movslq	%eax, %r12
	movl	$1, %edx
	movq	128(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	72(%rsp), %rcx          # 8-byte Reload
	callq	fwrite
	subl	%ebp, %r13d
	je	.LBB4_31
# BB#30:                                # %if.then.275
                                        #   in Loop: Header=BB4_22 Depth=1
	movb	(%rbx,%r12), %al
	movb	%al, (%rbx)
.LBB4_31:                               # %if.end.279
                                        #   in Loop: Header=BB4_22 Depth=1
	incl	%r15d
	movq	112(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %r15d
	movq	80(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, %rax
	movq	136(%rsp), %rbp         # 8-byte Reload
	jne	.LBB4_22
# BB#32:                                # %for.end.282
	movq	%rcx, %r15
	testl	%r13d, %r13d
	movq	72(%rsp), %r12          # 8-byte Reload
	movq	128(%rsp), %r13         # 8-byte Reload
	je	.LBB4_34
# BB#33:                                # %if.then.284
	movzbl	(%r13), %edi
	movq	%r12, %rsi
	callq	fputc
.LBB4_34:                               # %if.end.288
	movl	$0, 64(%rsp)            # 4-byte Folded Spill
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movq	(%rsp), %rdx            # 8-byte Reload
	callq	memset
	movq	112(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	24(%rsp), %rbx          # 8-byte Reload
	jle	.LBB4_49
# BB#35:                                # %for.body.294.lr.ph
	movq	48(%rsp), %rax          # 8-byte Reload
	incl	%eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
	movl	$128, %r13d
	movq	40(%rsp), %rbx          # 8-byte Reload
	movq	%r15, %rax
	.align	16, 0x90
.LBB4_36:                               # %for.body.294
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_37 Depth 2
	movq	%rbp, %r15
	movq	%rax, %rbp
	movq	%rbp, 136(%rsp)         # 8-byte Spill
	movq	120(%rsp), %rdi         # 8-byte Reload
	movl	%r14d, %esi
	movl	100(%rsp), %edx         # 4-byte Reload
	leaq	144(%rsp), %rcx
	movq	%rbp, %r8
	movq	104(%rsp), %r9          # 8-byte Reload
	callq	mag_make_flag
	movq	88(%rsp), %rax          # 8-byte Reload
	cmpl	$2, %eax
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	%eax, %ecx
	movq	%rbx, %r8
	movq	%rbx, %r12
	movl	$128, %r10d
	movq	%r15, %rdx
	movq	%rbp, %rsi
	movq	128(%rsp), %rdi         # 8-byte Reload
	jl	.LBB4_42
	.align	16, 0x90
.LBB4_37:                               # %for.body.i.257
                                        #   Parent Loop BB4_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rdx), %r9b
	movb	(%rsi), %al
	movzbl	%r10b, %ebx
	cmpl	$128, %ebx
	jne	.LBB4_39
# BB#38:                                # %if.then.i.258
                                        #   in Loop: Header=BB4_37 Depth=2
	movb	$0, (%rdi)
.LBB4_39:                               # %if.end.i.260
                                        #   in Loop: Header=BB4_37 Depth=2
	movzbl	%al, %r11d
	movzbl	%r9b, %ebp
	cmpl	%r11d, %ebp
	je	.LBB4_41
# BB#40:                                # %if.then.8.i.265
                                        #   in Loop: Header=BB4_37 Depth=2
	xorb	%r9b, %al
	movzbl	(%rdi), %ebp
	orl	%r10d, %ebp
	movb	%bpl, (%rdi)
	movb	%al, (%r8)
	incq	%r8
.LBB4_41:                               # %if.end.12.i.276
                                        #   in Loop: Header=BB4_37 Depth=2
	shrl	%ebx
	incq	%rdx
	incq	%rsi
	leaq	1(%rdi), %rax
	testl	%ebx, %ebx
	cmoveq	%rax, %rdi
	cmovel	%r13d, %ebx
	decl	%ecx
	cmpl	$1, %ecx
	movl	%ebx, %r10d
	jg	.LBB4_37
.LBB4_42:                               # %mag_comp_flag.exit282
                                        #   in Loop: Header=BB4_36 Depth=1
	movq	%r12, %rbx
	subl	%ebx, %r8d
	movslq	%r8d, %rsi
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	72(%rsp), %rcx          # 8-byte Reload
	callq	fwrite
	incl	%r14d
	movq	112(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %r14d
	movq	%r15, %rax
	movq	136(%rsp), %rbp         # 8-byte Reload
	jne	.LBB4_36
# BB#43:                                # %for.cond.304.preheader
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movl	$0, 64(%rsp)            # 4-byte Folded Spill
	movq	112(%rsp), %r14         # 8-byte Reload
	testl	%r14d, %r14d
	jle	.LBB4_44
# BB#45:
	xorl	%ebx, %ebx
	movq	120(%rsp), %rbp         # 8-byte Reload
	movl	100(%rsp), %r12d        # 4-byte Reload
	movq	104(%rsp), %r13         # 8-byte Reload
	.align	16, 0x90
.LBB4_46:                               # %for.body.307
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	movl	%ebx, %esi
	movl	%r12d, %edx
	leaq	144(%rsp), %rcx
	movq	%r15, %r8
	movq	%r13, %r9
	callq	mag_make_flag
	movslq	%eax, %rsi
	movl	$1, %edx
	movq	%r13, %rdi
	movq	72(%rsp), %rcx          # 8-byte Reload
	callq	fwrite
	incl	%ebx
	cmpl	%ebx, %r14d
	jne	.LBB4_46
	jmp	.LBB4_47
.LBB4_5:
	movq	%r15, 40(%rsp)          # 8-byte Spill
	movq	%rax, 104(%rsp)         # 8-byte Spill
	jmp	.LBB4_49
.LBB4_20:                               # %if.end.288.thread
	movl	$0, 64(%rsp)            # 4-byte Folded Spill
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	memset
.LBB4_47:
	movq	128(%rsp), %r13         # 8-byte Reload
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	24(%rsp), %rbx          # 8-byte Reload
.LBB4_48:                               # %mag_done
	movq	72(%rsp), %r12          # 8-byte Reload
.LBB4_49:                               # %mag_done
	testq	%rbx, %rbx
	movq	120(%rsp), %r14         # 8-byte Reload
	je	.LBB4_51
# BB#50:                                # %if.then.316
	movq	24(%r14), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.5, %edx
	movq	%rbx, %rsi
	movq	%rcx, %rbp
	callq	*24(%rdi)
	movq	%rbp, %rcx
.LBB4_51:                               # %if.end.324
	testq	%rcx, %rcx
	je	.LBB4_53
# BB#52:                                # %if.then.326
	movq	24(%r14), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.6, %edx
	movq	%rcx, %rsi
	callq	*24(%rdi)
.LBB4_53:                               # %if.end.335
	testq	%r13, %r13
	je	.LBB4_55
# BB#54:                                # %if.then.337
	movq	24(%r14), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.7, %edx
	movq	%r13, %rsi
	callq	*24(%rdi)
.LBB4_55:                               # %if.end.346
	movq	40(%rsp), %rsi          # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB4_57
# BB#56:                                # %if.then.348
	movq	24(%r14), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.8, %edx
	callq	*24(%rdi)
.LBB4_57:                               # %if.end.357
	movq	104(%rsp), %rsi         # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB4_59
# BB#58:                                # %if.then.359
	movq	24(%r14), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.9, %edx
	callq	*24(%rdi)
.LBB4_59:                               # %if.end.368
	movq	%r12, %rdi
	callq	fflush
	movl	64(%rsp), %eax          # 4-byte Reload
	addq	$600, %rsp              # imm = 0x258
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_44:
	movq	72(%rsp), %r12          # 8-byte Reload
	movq	128(%rsp), %r13         # 8-byte Reload
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	24(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB4_49
.LBB4_1:
	movq	%r15, 40(%rsp)          # 8-byte Spill
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	%r14, 120(%rsp)         # 8-byte Spill
	movq	%r12, %rcx
	jmp	.LBB4_48
.LBB4_3:
	movq	%r15, 40(%rsp)          # 8-byte Spill
	movq	%rax, 104(%rsp)         # 8-byte Spill
	jmp	.LBB4_48
.Lfunc_end4:
	.size	mag_print_page, .Lfunc_end4-mag_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	mag_make_flag,@function
mag_make_flag:                          # @mag_make_flag
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
	pushq	%rax
.Ltmp19:
	.cfi_def_cfa_offset 64
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
	movq	%r9, (%rsp)             # 8-byte Spill
	movq	%r8, %rbp
	movq	%rcx, %r13
	movl	%edx, %ebx
	movl	%esi, %r15d
	movq	%rdi, %r14
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %r12d
	movq	128(%r13), %rdx
	movups	112(%r13), %xmm0
	movups	%xmm0, 120(%r13)
	movups	96(%r13), %xmm0
	movups	%xmm0, 104(%r13)
	movups	80(%r13), %xmm0
	movups	%xmm0, 88(%r13)
	movups	64(%r13), %xmm0
	movups	%xmm0, 72(%r13)
	movups	48(%r13), %xmm0
	movups	%xmm0, 56(%r13)
	movups	32(%r13), %xmm0
	movups	%xmm0, 40(%r13)
	movups	16(%r13), %xmm0
	movups	%xmm0, 24(%r13)
	movups	(%r13), %xmm0
	movups	%xmm0, 8(%r13)
	movq	%rdx, (%r13)
	movq	%r14, %rdi
	movl	%r15d, %esi
	movl	%r12d, %ecx
	callq	gdev_prn_copy_scan_lines
	cmpl	$4, %ebx
	jne	.LBB5_8
# BB#1:                                 # %for.cond.8.preheader
	testl	%r12d, %r12d
	jle	.LBB5_7
# BB#2:                                 # %for.body.10.preheader
	movl	%r12d, %esi
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB5_3:                                # %for.body.10
                                        # =>This Inner Loop Header: Depth=1
	testb	$1, %cl
	movq	(%r13), %rdx
	movb	(%rdx,%rcx), %al
	jne	.LBB5_4
# BB#5:                                 # %if.else
                                        #   in Loop: Header=BB5_3 Depth=1
	shlb	$4, %al
	movl	%ecx, %edi
	shrl	$31, %edi
	leal	(%rdi,%rcx), %edi
	sarl	%edi
	movslq	%edi, %rdi
	movb	%al, (%rdx,%rdi)
	jmp	.LBB5_6
	.align	16, 0x90
.LBB5_4:                                # %if.then.11
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	%ecx, %edi
	shrl	$31, %edi
	leal	(%rdi,%rcx), %edi
	sarl	%edi
	movslq	%edi, %rdi
	orb	%al, (%rdx,%rdi)
.LBB5_6:                                # %for.inc.27
                                        #   in Loop: Header=BB5_3 Depth=1
	incq	%rcx
	cmpl	%ecx, %esi
	jne	.LBB5_3
.LBB5_7:                                # %for.end.28
	movl	%r12d, %eax
	incl	%eax
	shrl	$31, %eax
	leal	1(%r12,%rax), %r12d
	sarl	%r12d
.LBB5_8:                                # %if.end.30
	movq	(%rsp), %r9             # 8-byte Reload
	movq	%rbp, %r10
	testl	%r12d, %r12d
	movq	%r9, %rax
	jle	.LBB5_115
# BB#9:                                 # %for.body.34.lr.ph
	movslq	%r12d, %r8
	movl	$1, %edx
	movq	%r9, %rax
	.align	16, 0x90
.LBB5_10:                               # %for.body.34
                                        # =>This Inner Loop Header: Depth=1
	leaq	-1(%rdx), %rsi
	testl	%r15d, %r15d
	js	.LBB5_17
# BB#11:                                # %for.body.34
                                        #   in Loop: Header=BB5_10 Depth=1
	cmpq	$2, %rsi
	jl	.LBB5_17
# BB#12:                                # %land.lhs.true.39
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	(%r13), %rdi
	movzbl	-3(%rdi,%rdx), %ecx
	movzbl	-1(%rdi,%rdx), %ebp
	cmpl	%ecx, %ebp
	jne	.LBB5_17
# BB#13:                                # %land.lhs.true.51
                                        #   in Loop: Header=BB5_10 Depth=1
	movzbl	-2(%rdi,%rdx), %ecx
	movzbl	(%rdi,%rdx), %edi
	cmpl	%ecx, %edi
	jne	.LBB5_17
# BB#14:                                # %if.then.65
                                        #   in Loop: Header=BB5_10 Depth=1
	leal	-1(%rdx), %ecx
	movl	%ecx, %esi
	sarl	$2, %esi
	testb	$2, %cl
	movslq	%esi, %rcx
	jne	.LBB5_15
# BB#16:                                # %cond.false
                                        #   in Loop: Header=BB5_10 Depth=1
	movb	$16, (%r10,%rcx)
	jmp	.LBB5_114
	.align	16, 0x90
.LBB5_17:                               # %if.else.77
                                        #   in Loop: Header=BB5_10 Depth=1
	testl	%r15d, %r15d
	jle	.LBB5_30
# BB#18:                                # %land.lhs.true.83
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	(%r13), %rdi
	movq	8(%r13), %rcx
	movzbl	-1(%rcx,%rdx), %ebp
	movzbl	-1(%rdi,%rdx), %ebx
	cmpl	%ebp, %ebx
	jne	.LBB5_23
# BB#19:                                # %land.lhs.true.95
                                        #   in Loop: Header=BB5_10 Depth=1
	movzbl	(%rcx,%rdx), %ecx
	movzbl	(%rdi,%rdx), %edi
	cmpl	%ecx, %edi
	jne	.LBB5_23
# BB#20:                                # %if.then.109
                                        #   in Loop: Header=BB5_10 Depth=1
	leal	-1(%rdx), %ecx
	movl	%ecx, %esi
	sarl	$2, %esi
	testb	$2, %cl
	movslq	%esi, %rcx
	jne	.LBB5_21
# BB#22:                                # %cond.false.120
                                        #   in Loop: Header=BB5_10 Depth=1
	movb	$64, (%r10,%rcx)
	jmp	.LBB5_114
	.align	16, 0x90
.LBB5_23:                               # %if.else.126
                                        #   in Loop: Header=BB5_10 Depth=1
	testl	%r15d, %r15d
	jle	.LBB5_30
# BB#24:                                # %if.else.126
                                        #   in Loop: Header=BB5_10 Depth=1
	cmpq	$2, %rsi
	jl	.LBB5_30
# BB#25:                                # %land.lhs.true.132
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	(%r13), %rdi
	movq	8(%r13), %rcx
	movzbl	-3(%rcx,%rdx), %ebp
	movzbl	-1(%rdi,%rdx), %ebx
	cmpl	%ebp, %ebx
	jne	.LBB5_30
# BB#26:                                # %land.lhs.true.144
                                        #   in Loop: Header=BB5_10 Depth=1
	movzbl	-2(%rcx,%rdx), %ecx
	movzbl	(%rdi,%rdx), %edi
	cmpl	%ecx, %edi
	jne	.LBB5_30
# BB#27:                                # %if.then.158
                                        #   in Loop: Header=BB5_10 Depth=1
	leal	-1(%rdx), %ecx
	movl	%ecx, %esi
	sarl	$2, %esi
	testb	$2, %cl
	movslq	%esi, %rcx
	jne	.LBB5_28
# BB#29:                                # %cond.false.169
                                        #   in Loop: Header=BB5_10 Depth=1
	movb	$80, (%r10,%rcx)
	jmp	.LBB5_114
	.align	16, 0x90
.LBB5_30:                               # %if.else.175
                                        #   in Loop: Header=BB5_10 Depth=1
	cmpl	$2, %r15d
	jl	.LBB5_43
# BB#31:                                # %land.lhs.true.181
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	movzbl	-1(%rcx,%rdx), %ebp
	movzbl	-1(%rdi,%rdx), %ebx
	cmpl	%ebp, %ebx
	jne	.LBB5_36
# BB#32:                                # %land.lhs.true.193
                                        #   in Loop: Header=BB5_10 Depth=1
	movzbl	(%rcx,%rdx), %ecx
	movzbl	(%rdi,%rdx), %edi
	cmpl	%ecx, %edi
	jne	.LBB5_36
# BB#33:                                # %if.then.207
                                        #   in Loop: Header=BB5_10 Depth=1
	leal	-1(%rdx), %ecx
	movl	%ecx, %esi
	sarl	$2, %esi
	testb	$2, %cl
	movslq	%esi, %rcx
	jne	.LBB5_34
# BB#35:                                # %cond.false.218
                                        #   in Loop: Header=BB5_10 Depth=1
	movb	$96, (%r10,%rcx)
	jmp	.LBB5_114
	.align	16, 0x90
.LBB5_36:                               # %if.else.224
                                        #   in Loop: Header=BB5_10 Depth=1
	cmpl	$2, %r15d
	jl	.LBB5_43
# BB#37:                                # %if.else.224
                                        #   in Loop: Header=BB5_10 Depth=1
	cmpq	$2, %rsi
	jl	.LBB5_43
# BB#38:                                # %land.lhs.true.230
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	movzbl	-3(%rcx,%rdx), %ebp
	movzbl	-1(%rdi,%rdx), %ebx
	cmpl	%ebp, %ebx
	jne	.LBB5_43
# BB#39:                                # %land.lhs.true.242
                                        #   in Loop: Header=BB5_10 Depth=1
	movzbl	-2(%rcx,%rdx), %ecx
	movzbl	(%rdi,%rdx), %edi
	cmpl	%ecx, %edi
	jne	.LBB5_43
# BB#40:                                # %if.then.256
                                        #   in Loop: Header=BB5_10 Depth=1
	leal	-1(%rdx), %ecx
	movl	%ecx, %esi
	sarl	$2, %esi
	testb	$2, %cl
	movslq	%esi, %rcx
	jne	.LBB5_41
# BB#42:                                # %cond.false.267
                                        #   in Loop: Header=BB5_10 Depth=1
	movb	$112, (%r10,%rcx)
	jmp	.LBB5_114
	.align	16, 0x90
.LBB5_43:                               # %if.else.273
                                        #   in Loop: Header=BB5_10 Depth=1
	cmpl	$4, %r15d
	jl	.LBB5_56
# BB#44:                                # %land.lhs.true.279
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	(%r13), %rdi
	movq	32(%r13), %rcx
	movzbl	-1(%rcx,%rdx), %ebp
	movzbl	-1(%rdi,%rdx), %ebx
	cmpl	%ebp, %ebx
	jne	.LBB5_49
# BB#45:                                # %land.lhs.true.291
                                        #   in Loop: Header=BB5_10 Depth=1
	movzbl	(%rcx,%rdx), %ecx
	movzbl	(%rdi,%rdx), %edi
	cmpl	%ecx, %edi
	jne	.LBB5_49
# BB#46:                                # %if.then.305
                                        #   in Loop: Header=BB5_10 Depth=1
	leal	-1(%rdx), %ecx
	movl	%ecx, %esi
	sarl	$2, %esi
	testb	$2, %cl
	movslq	%esi, %rcx
	jne	.LBB5_47
# BB#48:                                # %cond.false.316
                                        #   in Loop: Header=BB5_10 Depth=1
	movb	$-112, (%r10,%rcx)
	jmp	.LBB5_114
	.align	16, 0x90
.LBB5_49:                               # %if.else.322
                                        #   in Loop: Header=BB5_10 Depth=1
	cmpl	$4, %r15d
	jl	.LBB5_56
# BB#50:                                # %if.else.322
                                        #   in Loop: Header=BB5_10 Depth=1
	cmpq	$2, %rsi
	jl	.LBB5_56
# BB#51:                                # %land.lhs.true.328
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	(%r13), %rdi
	movq	32(%r13), %rcx
	movzbl	-3(%rcx,%rdx), %ebp
	movzbl	-1(%rdi,%rdx), %ebx
	cmpl	%ebp, %ebx
	jne	.LBB5_56
# BB#52:                                # %land.lhs.true.340
                                        #   in Loop: Header=BB5_10 Depth=1
	movzbl	-2(%rcx,%rdx), %ecx
	movzbl	(%rdi,%rdx), %edi
	cmpl	%ecx, %edi
	jne	.LBB5_56
# BB#53:                                # %if.then.354
                                        #   in Loop: Header=BB5_10 Depth=1
	leal	-1(%rdx), %ecx
	movl	%ecx, %esi
	sarl	$2, %esi
	testb	$2, %cl
	movslq	%esi, %rcx
	jne	.LBB5_54
# BB#55:                                # %cond.false.365
                                        #   in Loop: Header=BB5_10 Depth=1
	movb	$-96, (%r10,%rcx)
	jmp	.LBB5_114
	.align	16, 0x90
.LBB5_56:                               # %if.else.371
                                        #   in Loop: Header=BB5_10 Depth=1
	testl	%r15d, %r15d
	js	.LBB5_63
# BB#57:                                # %if.else.371
                                        #   in Loop: Header=BB5_10 Depth=1
	cmpq	$4, %rsi
	jl	.LBB5_63
# BB#58:                                # %land.lhs.true.377
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	(%r13), %rdi
	movzbl	-5(%rdi,%rdx), %ecx
	movzbl	-1(%rdi,%rdx), %ebp
	cmpl	%ecx, %ebp
	jne	.LBB5_63
# BB#59:                                # %land.lhs.true.389
                                        #   in Loop: Header=BB5_10 Depth=1
	movzbl	-4(%rdi,%rdx), %ecx
	movzbl	(%rdi,%rdx), %edi
	cmpl	%ecx, %edi
	jne	.LBB5_63
# BB#60:                                # %if.then.403
                                        #   in Loop: Header=BB5_10 Depth=1
	leal	-1(%rdx), %ecx
	movl	%ecx, %esi
	sarl	$2, %esi
	testb	$2, %cl
	movslq	%esi, %rcx
	jne	.LBB5_61
# BB#62:                                # %cond.false.414
                                        #   in Loop: Header=BB5_10 Depth=1
	movb	$32, (%r10,%rcx)
	jmp	.LBB5_114
	.align	16, 0x90
.LBB5_63:                               # %if.else.420
                                        #   in Loop: Header=BB5_10 Depth=1
	cmpl	$2, %r15d
	jl	.LBB5_70
# BB#64:                                # %if.else.420
                                        #   in Loop: Header=BB5_10 Depth=1
	cmpq	$4, %rsi
	jl	.LBB5_70
# BB#65:                                # %land.lhs.true.426
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	(%r13), %rdi
	movq	16(%r13), %rcx
	movzbl	-5(%rcx,%rdx), %ebp
	movzbl	-1(%rdi,%rdx), %ebx
	cmpl	%ebp, %ebx
	jne	.LBB5_70
# BB#66:                                # %land.lhs.true.438
                                        #   in Loop: Header=BB5_10 Depth=1
	movzbl	-4(%rcx,%rdx), %ecx
	movzbl	(%rdi,%rdx), %edi
	cmpl	%ecx, %edi
	jne	.LBB5_70
# BB#67:                                # %if.then.452
                                        #   in Loop: Header=BB5_10 Depth=1
	leal	-1(%rdx), %ecx
	movl	%ecx, %esi
	sarl	$2, %esi
	testb	$2, %cl
	movslq	%esi, %rcx
	jne	.LBB5_68
# BB#69:                                # %cond.false.463
                                        #   in Loop: Header=BB5_10 Depth=1
	movb	$-128, (%r10,%rcx)
	jmp	.LBB5_114
	.align	16, 0x90
.LBB5_70:                               # %if.else.469
                                        #   in Loop: Header=BB5_10 Depth=1
	cmpl	$4, %r15d
	jl	.LBB5_77
# BB#71:                                # %if.else.469
                                        #   in Loop: Header=BB5_10 Depth=1
	cmpq	$4, %rsi
	jl	.LBB5_77
# BB#72:                                # %land.lhs.true.475
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	(%r13), %rdi
	movq	32(%r13), %rcx
	movzbl	-5(%rcx,%rdx), %ebp
	movzbl	-1(%rdi,%rdx), %ebx
	cmpl	%ebp, %ebx
	jne	.LBB5_77
# BB#73:                                # %land.lhs.true.487
                                        #   in Loop: Header=BB5_10 Depth=1
	movzbl	-4(%rcx,%rdx), %ecx
	movzbl	(%rdi,%rdx), %edi
	cmpl	%ecx, %edi
	jne	.LBB5_77
# BB#74:                                # %if.then.501
                                        #   in Loop: Header=BB5_10 Depth=1
	leal	-1(%rdx), %ecx
	movl	%ecx, %esi
	sarl	$2, %esi
	testb	$2, %cl
	movslq	%esi, %rcx
	jne	.LBB5_75
# BB#76:                                # %cond.false.512
                                        #   in Loop: Header=BB5_10 Depth=1
	movb	$-80, (%r10,%rcx)
	jmp	.LBB5_114
	.align	16, 0x90
.LBB5_77:                               # %if.else.518
                                        #   in Loop: Header=BB5_10 Depth=1
	cmpl	$8, %r15d
	jl	.LBB5_97
# BB#78:                                # %land.lhs.true.524
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	(%r13), %rdi
	movq	64(%r13), %rcx
	movzbl	-1(%rcx,%rdx), %ebp
	movzbl	-1(%rdi,%rdx), %ebx
	cmpl	%ebp, %ebx
	jne	.LBB5_83
# BB#79:                                # %land.lhs.true.536
                                        #   in Loop: Header=BB5_10 Depth=1
	movzbl	(%rcx,%rdx), %ecx
	movzbl	(%rdi,%rdx), %edi
	cmpl	%ecx, %edi
	jne	.LBB5_83
# BB#80:                                # %if.then.550
                                        #   in Loop: Header=BB5_10 Depth=1
	leal	-1(%rdx), %ecx
	movl	%ecx, %esi
	sarl	$2, %esi
	testb	$2, %cl
	movslq	%esi, %rcx
	jne	.LBB5_81
# BB#82:                                # %cond.false.561
                                        #   in Loop: Header=BB5_10 Depth=1
	movb	$-64, (%r10,%rcx)
	jmp	.LBB5_114
.LBB5_83:                               # %if.else.567
                                        #   in Loop: Header=BB5_10 Depth=1
	cmpl	$8, %r15d
	jl	.LBB5_90
# BB#84:                                # %if.else.567
                                        #   in Loop: Header=BB5_10 Depth=1
	cmpq	$2, %rsi
	jl	.LBB5_90
# BB#85:                                # %land.lhs.true.573
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	(%r13), %rdi
	movq	64(%r13), %rcx
	movzbl	-3(%rcx,%rdx), %ebp
	movzbl	-1(%rdi,%rdx), %ebx
	cmpl	%ebp, %ebx
	jne	.LBB5_90
# BB#86:                                # %land.lhs.true.585
                                        #   in Loop: Header=BB5_10 Depth=1
	movzbl	-2(%rcx,%rdx), %ecx
	movzbl	(%rdi,%rdx), %edi
	cmpl	%ecx, %edi
	jne	.LBB5_90
# BB#87:                                # %if.then.599
                                        #   in Loop: Header=BB5_10 Depth=1
	leal	-1(%rdx), %ecx
	movl	%ecx, %esi
	sarl	$2, %esi
	testb	$2, %cl
	movslq	%esi, %rcx
	jne	.LBB5_88
# BB#89:                                # %cond.false.610
                                        #   in Loop: Header=BB5_10 Depth=1
	movb	$-48, (%r10,%rcx)
	jmp	.LBB5_114
.LBB5_90:                               # %if.else.616
                                        #   in Loop: Header=BB5_10 Depth=1
	cmpl	$8, %r15d
	jl	.LBB5_97
# BB#91:                                # %if.else.616
                                        #   in Loop: Header=BB5_10 Depth=1
	cmpq	$4, %rsi
	jl	.LBB5_97
# BB#92:                                # %land.lhs.true.622
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	(%r13), %rdi
	movq	64(%r13), %rcx
	movzbl	-5(%rcx,%rdx), %ebp
	movzbl	-1(%rdi,%rdx), %ebx
	cmpl	%ebp, %ebx
	jne	.LBB5_97
# BB#93:                                # %land.lhs.true.634
                                        #   in Loop: Header=BB5_10 Depth=1
	movzbl	-4(%rcx,%rdx), %ecx
	movzbl	(%rdi,%rdx), %edi
	cmpl	%ecx, %edi
	jne	.LBB5_97
# BB#94:                                # %if.then.648
                                        #   in Loop: Header=BB5_10 Depth=1
	leal	-1(%rdx), %ecx
	movl	%ecx, %esi
	sarl	$2, %esi
	testb	$2, %cl
	movslq	%esi, %rcx
	jne	.LBB5_95
# BB#96:                                # %cond.false.659
                                        #   in Loop: Header=BB5_10 Depth=1
	movb	$-32, (%r10,%rcx)
	jmp	.LBB5_114
	.align	16, 0x90
.LBB5_97:                               # %if.else.665
                                        #   in Loop: Header=BB5_10 Depth=1
	testl	%r15d, %r15d
	js	.LBB5_104
# BB#98:                                # %if.else.665
                                        #   in Loop: Header=BB5_10 Depth=1
	cmpq	$8, %rsi
	jl	.LBB5_104
# BB#99:                                # %land.lhs.true.671
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	(%r13), %rsi
	movzbl	-9(%rsi,%rdx), %ecx
	movzbl	-1(%rsi,%rdx), %edi
	cmpl	%ecx, %edi
	jne	.LBB5_104
# BB#100:                               # %land.lhs.true.683
                                        #   in Loop: Header=BB5_10 Depth=1
	movzbl	-8(%rsi,%rdx), %ecx
	movzbl	(%rsi,%rdx), %esi
	cmpl	%ecx, %esi
	jne	.LBB5_104
# BB#101:                               # %if.then.697
                                        #   in Loop: Header=BB5_10 Depth=1
	leal	-1(%rdx), %ecx
	movl	%ecx, %esi
	sarl	$2, %esi
	testb	$2, %cl
	movslq	%esi, %rcx
	jne	.LBB5_102
# BB#103:                               # %cond.false.708
                                        #   in Loop: Header=BB5_10 Depth=1
	movb	$48, (%r10,%rcx)
	jmp	.LBB5_114
	.align	16, 0x90
.LBB5_104:                              # %if.else.714
                                        #   in Loop: Header=BB5_10 Depth=1
	cmpl	$16, %r15d
	jl	.LBB5_110
# BB#105:                               # %land.lhs.true.720
                                        #   in Loop: Header=BB5_10 Depth=1
	movq	(%r13), %rsi
	movq	128(%r13), %rcx
	movzbl	-1(%rcx,%rdx), %edi
	movzbl	-1(%rsi,%rdx), %ebp
	cmpl	%edi, %ebp
	jne	.LBB5_110
# BB#106:                               # %land.lhs.true.732
                                        #   in Loop: Header=BB5_10 Depth=1
	movzbl	(%rcx,%rdx), %ecx
	movzbl	(%rsi,%rdx), %esi
	cmpl	%ecx, %esi
	jne	.LBB5_110
# BB#107:                               # %if.then.746
                                        #   in Loop: Header=BB5_10 Depth=1
	leal	-1(%rdx), %ecx
	movl	%ecx, %esi
	sarl	$2, %esi
	testb	$2, %cl
	movslq	%esi, %rcx
	jne	.LBB5_108
# BB#109:                               # %cond.false.757
                                        #   in Loop: Header=BB5_10 Depth=1
	movb	$-16, (%r10,%rcx)
	jmp	.LBB5_114
.LBB5_110:                              # %if.else.763
                                        #   in Loop: Header=BB5_10 Depth=1
	leal	-1(%rdx), %ecx
	movl	%ecx, %esi
	sarl	$2, %esi
	testb	$2, %cl
	movslq	%esi, %rsi
	jne	.LBB5_112
# BB#111:                               #   in Loop: Header=BB5_10 Depth=1
	xorl	%edi, %edi
	jmp	.LBB5_113
.LBB5_112:                              # %cond.true.766
                                        #   in Loop: Header=BB5_10 Depth=1
	movb	(%r10,%rsi), %dil
.LBB5_113:                              # %cond.end.777
                                        #   in Loop: Header=BB5_10 Depth=1
	movb	%dil, (%r10,%rsi)
	movq	(%r13), %rcx
	movb	-1(%rcx,%rdx), %cl
	movb	%cl, (%rax)
	movq	(%r13), %rcx
	movb	(%rcx,%rdx), %cl
	movb	%cl, 1(%rax)
	addq	$2, %rax
	jmp	.LBB5_114
.LBB5_21:                               # %cond.true.112
                                        #   in Loop: Header=BB5_10 Depth=1
	orb	$4, (%r10,%rcx)
	jmp	.LBB5_114
.LBB5_15:                               # %cond.true
                                        #   in Loop: Header=BB5_10 Depth=1
	orb	$1, (%r10,%rcx)
	jmp	.LBB5_114
.LBB5_34:                               # %cond.true.210
                                        #   in Loop: Header=BB5_10 Depth=1
	orb	$6, (%r10,%rcx)
	jmp	.LBB5_114
.LBB5_47:                               # %cond.true.308
                                        #   in Loop: Header=BB5_10 Depth=1
	orb	$9, (%r10,%rcx)
	jmp	.LBB5_114
.LBB5_61:                               # %cond.true.406
                                        #   in Loop: Header=BB5_10 Depth=1
	orb	$2, (%r10,%rcx)
	jmp	.LBB5_114
.LBB5_28:                               # %cond.true.161
                                        #   in Loop: Header=BB5_10 Depth=1
	orb	$5, (%r10,%rcx)
	jmp	.LBB5_114
.LBB5_68:                               # %cond.true.455
                                        #   in Loop: Header=BB5_10 Depth=1
	orb	$8, (%r10,%rcx)
	jmp	.LBB5_114
.LBB5_75:                               # %cond.true.504
                                        #   in Loop: Header=BB5_10 Depth=1
	orb	$11, (%r10,%rcx)
	jmp	.LBB5_114
.LBB5_81:                               # %cond.true.553
                                        #   in Loop: Header=BB5_10 Depth=1
	orb	$12, (%r10,%rcx)
	jmp	.LBB5_114
.LBB5_41:                               # %cond.true.259
                                        #   in Loop: Header=BB5_10 Depth=1
	orb	$7, (%r10,%rcx)
	jmp	.LBB5_114
.LBB5_102:                              # %cond.true.700
                                        #   in Loop: Header=BB5_10 Depth=1
	orb	$3, (%r10,%rcx)
	jmp	.LBB5_114
.LBB5_54:                               # %cond.true.357
                                        #   in Loop: Header=BB5_10 Depth=1
	orb	$10, (%r10,%rcx)
	jmp	.LBB5_114
.LBB5_108:                              # %cond.true.749
                                        #   in Loop: Header=BB5_10 Depth=1
	orb	$15, (%r10,%rcx)
	jmp	.LBB5_114
.LBB5_88:                               # %cond.true.602
                                        #   in Loop: Header=BB5_10 Depth=1
	orb	$13, (%r10,%rcx)
	jmp	.LBB5_114
.LBB5_95:                               # %cond.true.651
                                        #   in Loop: Header=BB5_10 Depth=1
	orb	$14, (%r10,%rcx)
	.align	16, 0x90
.LBB5_114:                              # %for.inc.802
                                        #   in Loop: Header=BB5_10 Depth=1
	leaq	2(%rdx), %rcx
	incq	%rdx
	cmpq	%r8, %rdx
	movq	%rcx, %rdx
	jl	.LBB5_10
.LBB5_115:                              # %for.end.804
	subl	%r9d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	mag_make_flag, .Lfunc_end5-mag_make_flag
	.cfi_endproc

	.type	mag16_procs,@object     # @mag16_procs
	.data
	.align	8
mag16_procs:
	.quad	gdev_mag_4bit_open
	.quad	0
	.quad	0
	.quad	gdev_prn_output_page
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
	.size	mag16_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"mag16"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceRGB"
	.size	.L.str.1, 10

	.type	gs_mag16_device,@object # @gs_mag16_device
	.data
	.globl	gs_mag16_device
	.align	8
gs_mag16_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	mag16_procs
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
	.short	8                       # 0x8
	.byte	255                     # 0xff
	.zero	1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
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
	.long	636                     # 0x27c
	.long	800                     # 0x320
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1143434576              # float 6.697080e+02
	.long	1146263962              # float 8.424000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1116258444              # float 6.837607e+01
	.long	1116258444              # float 6.837607e+01
	.long	1116258444              # float 6.837607e+01
	.long	1116258444              # float 6.837607e+01
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
	.quad	mag_4bit_print_page
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
	.size	gs_mag16_device, 18472

	.type	mag256_procs,@object    # @mag256_procs
	.align	8
mag256_procs:
	.quad	gdev_mag_8bit_open
	.quad	0
	.quad	0
	.quad	gdev_prn_output_page
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
	.size	mag256_procs, 584

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"mag256"
	.size	.L.str.2, 7

	.type	gs_mag256_device,@object # @gs_mag256_device
	.data
	.globl	gs_mag256_device
	.align	8
gs_mag256_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	mag256_procs
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
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	255                     # 0xff
	.zero	1
	.long	0                       # 0x0
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	4                       # 0x4
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
	.long	636                     # 0x27c
	.long	800                     # 0x320
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1143434576              # float 6.697080e+02
	.long	1146263962              # float 8.424000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1116258444              # float 6.837607e+01
	.long	1116258444              # float 6.837607e+01
	.long	1116258444              # float 6.837607e+01
	.long	1116258444              # float 6.837607e+01
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
	.quad	mag_8bit_print_page
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
	.size	gs_mag256_device, 18472

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"MAKI02  gs   "
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"USER"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"mag_row"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"mag_flag"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"mag_flag_a"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"mag_flag_b"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"mag_pixel"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Unknown"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%-18s"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	" Ghostscript with %s driver\032"
	.size	.L.str.12, 29


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
