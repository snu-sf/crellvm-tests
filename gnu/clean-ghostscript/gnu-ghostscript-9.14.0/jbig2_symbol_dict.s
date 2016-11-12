	.text
	.file	"jbig2_symbol_dict.bc"
	.globl	jbig2_sd_new
	.align	16, 0x90
	.type	jbig2_sd_new,@function
jbig2_sd_new:                           # @jbig2_sd_new
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
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %r14
	testl	%ebp, %ebp
	js	.LBB0_1
# BB#2:                                 # %if.end
	movq	(%r14), %rdi
	movl	$1, %esi
	movl	$16, %edx
	callq	jbig2_alloc
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB0_7
# BB#3:                                 # %if.then.3
	movq	(%r14), %rdi
	movslq	%ebp, %r15
	movl	$8, %edx
	movq	%r15, %rsi
	callq	jbig2_alloc
	movq	%rax, 8(%rbx)
	movl	%ebp, (%rbx)
	testq	%rax, %rax
	je	.LBB0_5
# BB#4:                                 # %if.then.12
	shlq	$3, %r15
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%r15, %rdx
	callq	memset
	jmp	.LBB0_6
.LBB0_1:                                # %if.then
	xorl	%ebx, %ebx
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%ebp, %r8d
	callq	jbig2_error
	jmp	.LBB0_6
.LBB0_7:                                # %if.else
	xorl	%ebx, %ebx
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str.1, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	jmp	.LBB0_6
.LBB0_5:                                # %if.else.16
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str.2, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
	movq	(%r14), %rdi
	movq	%rbx, %rsi
	callq	jbig2_free
	xorl	%ebx, %ebx
.LBB0_6:                                # %cleanup
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	jbig2_sd_new, .Lfunc_end0-jbig2_sd_new
	.cfi_endproc

	.globl	jbig2_sd_release
	.align	16, 0x90
	.type	jbig2_sd_release,@function
jbig2_sd_release:                       # @jbig2_sd_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
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
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	testq	%r15, %r15
	je	.LBB1_6
# BB#1:                                 # %for.cond.preheader
	movl	(%r15), %eax
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB1_5
	.align	16, 0x90
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r15), %rcx
	movq	(%rcx,%rbx,8), %rsi
	testq	%rsi, %rsi
	je	.LBB1_4
# BB#3:                                 # %if.then.2
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%r14, %rdi
	callq	jbig2_image_release
	movl	(%r15), %eax
.LBB1_4:                                # %for.inc
                                        #   in Loop: Header=BB1_2 Depth=1
	incq	%rbx
	cmpl	%eax, %ebx
	jb	.LBB1_2
.LBB1_5:                                # %for.end
	movq	(%r14), %rdi
	movq	8(%r15), %rsi
	callq	jbig2_free
	movq	(%r14), %rdi
	movq	%r15, %rsi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	jbig2_free              # TAILCALL
.LBB1_6:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	jbig2_sd_release, .Lfunc_end1-jbig2_sd_release
	.cfi_endproc

	.globl	jbig2_sd_glyph
	.align	16, 0x90
	.type	jbig2_sd_glyph,@function
jbig2_sd_glyph:                         # @jbig2_sd_glyph
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB2_2
# BB#1:                                 # %if.end
	movl	%esi, %eax
	movq	8(%rdi), %rcx
	movq	(%rcx,%rax,8), %rax
.LBB2_2:                                # %return
	retq
.Lfunc_end2:
	.size	jbig2_sd_glyph, .Lfunc_end2-jbig2_sd_glyph
	.cfi_endproc

	.globl	jbig2_sd_count_referred
	.align	16, 0x90
	.type	jbig2_sd_count_referred,@function
jbig2_sd_count_referred:                # @jbig2_sd_count_referred
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
	xorl	%r15d, %r15d
	cmpl	$0, 24(%rbx)
	jle	.LBB3_8
# BB#1:                                 # %for.body.lr.ph
	xorl	%ebp, %ebp
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB3_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%rbx), %rax
	movl	(%rax,%rbp,4), %esi
	movq	%r14, %rdi
	callq	jbig2_find_segment
	testq	%rax, %rax
	je	.LBB3_7
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB3_2 Depth=1
	testb	$63, 4(%rax)
	jne	.LBB3_7
# BB#4:                                 # %land.lhs.true.3
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.LBB3_7
# BB#5:                                 # %land.lhs.true.5
                                        #   in Loop: Header=BB3_2 Depth=1
	cmpl	$0, (%rax)
	je	.LBB3_7
# BB#6:                                 # %land.lhs.true.9
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	8(%rax), %rax
	cmpq	$1, (%rax)
	sbbl	$-1, %r15d
	.align	16, 0x90
.LBB3_7:                                # %for.inc
                                        #   in Loop: Header=BB3_2 Depth=1
	incq	%rbp
	movslq	24(%rbx), %rax
	cmpq	%rax, %rbp
	jl	.LBB3_2
.LBB3_8:                                # %for.end
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	jbig2_sd_count_referred, .Lfunc_end3-jbig2_sd_count_referred
	.cfi_endproc

	.globl	jbig2_sd_list_referred
	.align	16, 0x90
	.type	jbig2_sd_list_referred,@function
jbig2_sd_list_referred:                 # @jbig2_sd_list_referred
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp26:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp27:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp28:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp30:
	.cfi_def_cfa_offset 64
.Ltmp31:
	.cfi_offset %rbx, -56
.Ltmp32:
	.cfi_offset %r12, -48
.Ltmp33:
	.cfi_offset %r13, -40
.Ltmp34:
	.cfi_offset %r14, -32
.Ltmp35:
	.cfi_offset %r15, -24
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbp
	movq	%rdi, %r13
	xorl	%r14d, %r14d
	cmpl	$0, 24(%rbp)
	jle	.LBB4_8
# BB#1:                                 # %for.body.lr.ph.i
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB4_2:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%rbp), %rax
	movl	(%rax,%rbx,4), %esi
	movq	%r13, %rdi
	callq	jbig2_find_segment
	testq	%rax, %rax
	je	.LBB4_7
# BB#3:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB4_2 Depth=1
	testb	$63, 4(%rax)
	jne	.LBB4_7
# BB#4:                                 # %land.lhs.true.3.i
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.LBB4_7
# BB#5:                                 # %land.lhs.true.5.i
                                        #   in Loop: Header=BB4_2 Depth=1
	cmpl	$0, (%rax)
	je	.LBB4_7
# BB#6:                                 # %land.lhs.true.9.i
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	8(%rax), %rax
	cmpq	$1, (%rax)
	sbbl	$-1, %r14d
	.align	16, 0x90
.LBB4_7:                                # %for.inc.i
                                        #   in Loop: Header=BB4_2 Depth=1
	incq	%rbx
	movslq	24(%rbp), %rax
	cmpq	%rax, %rbx
	jl	.LBB4_2
.LBB4_8:                                # %jbig2_sd_count_referred.exit
	movq	(%r13), %rdi
	movslq	%r14d, %rsi
	movl	$8, %edx
	callq	jbig2_alloc
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB4_21
# BB#9:                                 # %for.cond.preheader
	xorl	%r12d, %r12d
	cmpl	$0, 24(%rbp)
	jle	.LBB4_18
# BB#10:                                # %for.body.lr.ph
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB4_11:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%rbp), %rax
	movl	(%rax,%rbx,4), %esi
	movq	%r13, %rdi
	callq	jbig2_find_segment
	testq	%rax, %rax
	je	.LBB4_17
# BB#12:                                # %land.lhs.true
                                        #   in Loop: Header=BB4_11 Depth=1
	testb	$63, 4(%rax)
	jne	.LBB4_17
# BB#13:                                # %land.lhs.true.10
                                        #   in Loop: Header=BB4_11 Depth=1
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.LBB4_17
# BB#14:                                # %land.lhs.true.12
                                        #   in Loop: Header=BB4_11 Depth=1
	cmpl	$0, (%rax)
	je	.LBB4_17
# BB#15:                                # %land.lhs.true.16
                                        #   in Loop: Header=BB4_11 Depth=1
	movq	8(%rax), %rcx
	cmpq	$0, (%rcx)
	je	.LBB4_17
# BB#16:                                # %if.then.20
                                        #   in Loop: Header=BB4_11 Depth=1
	movslq	%r12d, %rcx
	incl	%r12d
	movq	%rax, (%r15,%rcx,8)
	.align	16, 0x90
.LBB4_17:                               # %for.inc
                                        #   in Loop: Header=BB4_11 Depth=1
	incq	%rbx
	movslq	24(%rbp), %rax
	cmpq	%rax, %rbx
	jl	.LBB4_11
.LBB4_18:                               # %for.end
	cmpl	%r14d, %r12d
	je	.LBB4_20
# BB#19:                                # %if.then.28
	movl	(%rbp), %edx
	movl	$3, %esi
	movl	$.L.str.4, %ecx
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	%r14d, %r8d
	movl	%r12d, %r9d
	callq	jbig2_error
	jmp	.LBB4_20
.LBB4_21:                               # %if.then
	movl	(%rbp), %edx
	xorl	%r15d, %r15d
	movl	$3, %esi
	movl	$.L.str.3, %ecx
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	jbig2_error
.LBB4_20:                               # %cleanup
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	jbig2_sd_list_referred, .Lfunc_end4-jbig2_sd_list_referred
	.cfi_endproc

	.globl	jbig2_sd_cat
	.align	16, 0x90
	.type	jbig2_sd_cat,@function
jbig2_sd_cat:                           # @jbig2_sd_cat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp39:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp40:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp41:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp43:
	.cfi_def_cfa_offset 80
.Ltmp44:
	.cfi_offset %rbx, -56
.Ltmp45:
	.cfi_offset %r12, -48
.Ltmp46:
	.cfi_offset %r13, -40
.Ltmp47:
	.cfi_offset %r14, -32
.Ltmp48:
	.cfi_offset %r15, -24
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rdx, %r12
	movl	%esi, %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %r14
	xorl	%esi, %esi
	testl	%eax, %eax
	jle	.LBB5_7
# BB#1:                                 # %for.body.preheader
	movq	8(%rsp), %rdx           # 8-byte Reload
	leal	-1(%rdx), %eax
	xorl	%ecx, %ecx
	testb	$3, %dl
	movl	$0, %esi
	je	.LBB5_4
# BB#2:                                 # %for.body.prol.preheader
	movq	8(%rsp), %rdx           # 8-byte Reload
	andl	$3, %edx
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB5_3:                                # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r12,%rcx,8), %rdi
	addl	(%rdi), %esi
	incq	%rcx
	cmpl	%ecx, %edx
	jne	.LBB5_3
.LBB5_4:                                # %for.body.preheader.split
	cmpl	$3, %eax
	jb	.LBB5_7
# BB#5:                                 # %for.body.preheader.split.split
	movq	8(%rsp), %rax           # 8-byte Reload
	subl	%ecx, %eax
	leaq	24(%r12,%rcx,8), %rcx
	.align	16, 0x90
.LBB5_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rcx), %rdx
	movq	-16(%rcx), %rdi
	addl	(%rdx), %esi
	addl	(%rdi), %esi
	movq	-8(%rcx), %rdx
	addl	(%rdx), %esi
	movq	(%rcx), %rdx
	addl	(%rdx), %esi
	addq	$32, %rcx
	addl	$-4, %eax
	jne	.LBB5_6
.LBB5_7:                                # %for.end
	movq	%r14, %rdi
	callq	jbig2_sd_new
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB5_15
# BB#8:                                 # %for.cond.2.preheader
	movq	8(%rsp), %rax           # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB5_16
# BB#9:                                 # %for.cond.5.preheader.lr.ph
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB5_10:                               # %for.cond.5.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_12 Depth 2
	movq	(%r12,%rbx,8), %rax
	cmpl	$0, (%rax)
	je	.LBB5_14
# BB#11:                                # %for.body.10.lr.ph
                                        #   in Loop: Header=BB5_10 Depth=1
	movslq	%ecx, %rcx
	leaq	(,%rcx,8), %r15
	movl	%ecx, %ecx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB5_12:                               # %for.body.10
                                        #   Parent Loop BB5_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%rax), %rax
	movq	(%rax,%rbp,8), %rsi
	movq	%r14, %rdi
	callq	jbig2_image_clone
	movq	8(%r13), %rcx
	addq	%r15, %rcx
	movq	%rax, (%rcx,%rbp,8)
	incq	%rbp
	movq	(%r12,%rbx,8), %rax
	cmpl	(%rax), %ebp
	jb	.LBB5_12
# BB#13:                                #   in Loop: Header=BB5_10 Depth=1
	movq	16(%rsp), %rcx          # 8-byte Reload
	addl	%ebp, %ecx
.LBB5_14:                               # %for.inc.23
                                        #   in Loop: Header=BB5_10 Depth=1
	incq	%rbx
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpl	%eax, %ebx
	jne	.LBB5_10
	jmp	.LBB5_16
.LBB5_15:                               # %if.else
	movl	$2, %esi
	movl	$-1, %edx
	movl	$.L.str.5, %ecx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	jbig2_error
.LBB5_16:                               # %if.end
	movq	%r13, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	jbig2_sd_cat, .Lfunc_end5-jbig2_sd_cat
	.cfi_endproc

	.globl	jbig2_symbol_dictionary
	.align	16, 0x90
	.type	jbig2_symbol_dictionary,@function
jbig2_symbol_dictionary:                # @jbig2_symbol_dictionary
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp52:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp53:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp54:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 56
	subq	$440, %rsp              # imm = 0x1B8
.Ltmp56:
	.cfi_def_cfa_offset 496
.Ltmp57:
	.cfi_offset %rbx, -56
.Ltmp58:
	.cfi_offset %r12, -48
.Ltmp59:
	.cfi_offset %r13, -40
.Ltmp60:
	.cfi_offset %r14, -32
.Ltmp61:
	.cfi_offset %r15, -24
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rdx, %r13
	movq	%rsi, %r14
	movq	%rdi, %r12
	cmpq	$10, 16(%r14)
	jb	.LBB6_296
# BB#1:                                 # %if.end
	movq	%r13, %rdi
	callq	jbig2_get_uint16
	movw	%ax, %bp
	leaq	272(%rsp), %rdi
	xorl	%esi, %esi
	movl	$88, %edx
	callq	memset
	movzwl	%bp, %ebx
	movl	%ebx, %eax
	andl	$1, %eax
	movl	%eax, 272(%rsp)
	movl	%ebx, %ecx
	shrl	%ecx
	andl	$1, %ecx
	movl	%ecx, 276(%rsp)
	movl	%ebx, %ecx
	shrl	$10, %ecx
	andl	$3, %ecx
	movl	%ecx, 336(%rsp)
	movl	%ebx, %ecx
	shrl	$12, %ecx
	andl	$1, %ecx
	movl	%ecx, 348(%rsp)
	testl	%eax, %eax
	je	.LBB6_42
# BB#2:                                 # %if.then.11
	movl	%ebx, %eax
	shrl	$2, %eax
	andl	$3, %eax
	cmpl	$3, %eax
	je	.LBB6_8
# BB#3:                                 # %if.then.11
	cmpl	$1, %eax
	jne	.LBB6_4
# BB#7:                                 # %sw.bb.16
	movl	$jbig2_huffman_params_E, %esi
	jmp	.LBB6_6
.LBB6_8:                                # %sw.bb.19
	xorl	%edx, %edx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	jbig2_find_table
	testq	%rax, %rax
	je	.LBB6_9
# BB#11:                                # %if.end.25
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	jbig2_build_huffman_table
	movq	%rax, 304(%rsp)
	movl	$1, %r15d
	jmp	.LBB6_12
.LBB6_4:                                # %if.then.11
	testl	%eax, %eax
	jne	.LBB6_10
# BB#5:                                 # %sw.bb
	movl	$jbig2_huffman_params_D, %esi
.LBB6_6:                                # %sw.epilog
	movq	%r12, %rdi
	callq	jbig2_build_huffman_table
	movq	%rax, 304(%rsp)
	xorl	%r15d, %r15d
.LBB6_12:                               # %sw.epilog
	testq	%rax, %rax
	je	.LBB6_13
# BB#14:                                # %if.end.37
	movl	%ebx, %eax
	shrl	$4, %eax
	andl	$3, %eax
	cmpl	$3, %eax
	je	.LBB6_20
# BB#15:                                # %if.end.37
	cmpl	$1, %eax
	jne	.LBB6_16
# BB#19:                                # %sw.bb.43
	movl	$jbig2_huffman_params_C, %esi
	jmp	.LBB6_18
.LBB6_13:                               # %if.then.34
	movl	(%r14), %edx
	movl	$3, %esi
	movl	$.L.str.8, %ecx
	jmp	.LBB6_286
.LBB6_10:                               # %sw.default
	movl	(%r14), %edx
	movl	$3, %esi
	movl	$.L.str.7, %ecx
	jmp	.LBB6_297
.LBB6_20:                               # %sw.bb.46
	movq	%r12, %rdi
	movq	%r14, %rsi
	movl	%r15d, %edx
	callq	jbig2_find_table
	testq	%rax, %rax
	je	.LBB6_21
# BB#23:                                # %if.end.53
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	jbig2_build_huffman_table
	movq	%rax, 312(%rsp)
	incl	%r15d
	jmp	.LBB6_24
.LBB6_16:                               # %if.end.37
	testl	%eax, %eax
	jne	.LBB6_22
# BB#17:                                # %sw.bb.41
	movl	$jbig2_huffman_params_B, %esi
.LBB6_18:                               # %sw.epilog.61
	movq	%r12, %rdi
	callq	jbig2_build_huffman_table
	movq	%rax, 312(%rsp)
	jmp	.LBB6_24
.LBB6_9:                                # %if.then.23
	movl	(%r14), %edx
	movl	$3, %esi
	movl	$.L.str.6, %ecx
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	jbig2_error
	jmp	.LBB6_298
.LBB6_22:                               # %sw.default.58
	movl	(%r14), %edx
	movl	$3, %esi
	movl	$.L.str.7, %ecx
	jmp	.LBB6_286
.LBB6_21:                               # %if.then.50
	movl	(%r14), %edx
	movl	$3, %esi
	movl	$.L.str.9, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%r15d, %r8d
	callq	jbig2_error
	movq	312(%rsp), %rax
.LBB6_24:                               # %sw.epilog.61
	testq	%rax, %rax
	je	.LBB6_25
# BB#26:                                # %if.end.68
	testb	$64, %bl
	jne	.LBB6_27
# BB#30:                                # %if.else.82
	movl	$jbig2_huffman_params_A, %esi
	movq	%r12, %rdi
	callq	jbig2_build_huffman_table
	movq	%rax, 320(%rsp)
	jmp	.LBB6_31
.LBB6_25:                               # %if.then.65
	movl	(%r14), %edx
	movl	$3, %esi
	movl	$.L.str.10, %ecx
	jmp	.LBB6_286
.LBB6_27:                               # %if.then.72
	movq	%r12, %rdi
	movq	%r14, %rsi
	movl	%r15d, %edx
	callq	jbig2_find_table
	testq	%rax, %rax
	je	.LBB6_28
# BB#29:                                # %if.else
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	jbig2_build_huffman_table
	movq	%rax, 320(%rsp)
	incl	%r15d
	jmp	.LBB6_31
.LBB6_28:                               # %if.then.76
	movl	(%r14), %edx
	movl	$3, %esi
	movl	$.L.str.11, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%r15d, %r8d
	callq	jbig2_error
	movq	320(%rsp), %rax
.LBB6_31:                               # %if.end.85
	testq	%rax, %rax
	je	.LBB6_32
# BB#33:                                # %if.end.92
	movl	%ebx, %ebp
	andl	$128, %ebp
	jne	.LBB6_34
# BB#37:                                # %if.else.107
	movl	$jbig2_huffman_params_A, %esi
	movq	%r12, %rdi
	jmp	.LBB6_38
.LBB6_32:                               # %if.then.89
	movl	(%r14), %edx
	movl	$3, %esi
	movl	$.L.str.12, %ecx
	jmp	.LBB6_286
.LBB6_34:                               # %if.then.96
	movq	%r12, %rdi
	movq	%r14, %rsi
	movl	%r15d, %edx
	callq	jbig2_find_table
	testq	%rax, %rax
	je	.LBB6_35
# BB#36:                                # %if.else.103
	movq	%r12, %rdi
	movq	%rax, %rsi
.LBB6_38:                               # %if.end.110
	callq	jbig2_build_huffman_table
	movq	%rax, 328(%rsp)
	jmp	.LBB6_39
.LBB6_35:                               # %if.then.100
	movl	(%r14), %edx
	movl	$3, %esi
	movl	$.L.str.13, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%r15d, %r8d
	callq	jbig2_error
	movq	328(%rsp), %rax
.LBB6_39:                               # %if.end.110
	testq	%rax, %rax
	je	.LBB6_40
# BB#41:                                # %if.end.118
	movl	272(%rsp), %eax
	testl	%eax, %eax
	jne	.LBB6_46
.LBB6_42:                               # %if.then.121
	testb	$12, %bl
	je	.LBB6_44
# BB#43:                                # %if.then.125
	movl	(%r14), %edx
	movl	$3, %esi
	movl	$.L.str.15, %ecx
	jmp	.LBB6_286
.LBB6_44:                               # %if.end.128
	testb	$48, %bl
	je	.LBB6_45
# BB#299:                               # %if.then.132
	movl	(%r14), %edx
	movl	$3, %esi
	movl	$.L.str.16, %ecx
	jmp	.LBB6_286
.LBB6_45:                               # %if.end.128.if.end.136_crit_edge
	movl	%ebx, %ebp
	andl	$128, %ebp
	xorl	%eax, %eax
.LBB6_46:                               # %if.end.136
	testl	%ebp, %ebp
	je	.LBB6_48
# BB#47:                                # %if.then.140
	movl	(%r14), %edx
	movl	$3, %esi
	movl	$.L.str.17, %ecx
	jmp	.LBB6_286
.LBB6_48:                               # %if.end.143
	xorl	%ebp, %ebp
	testl	%eax, %eax
	jne	.LBB6_51
# BB#49:                                # %cond.false
	movl	$8, %ebp
	cmpl	$0, 336(%rsp)
	je	.LBB6_51
# BB#50:                                # %select.mid
	movl	$2, %ebp
.LBB6_51:                               # %cond.end
	leaq	340(%rsp), %rdi
	leaq	2(%r13), %rsi
	movl	%ebp, %edx
	callq	memcpy
	leal	2(%rbp), %eax
	cmpl	$0, 276(%rsp)
	je	.LBB6_52
# BB#53:                                # %cond.end
	movl	%ebx, %r15d
	movl	348(%rsp), %ecx
	testl	%ecx, %ecx
	jne	.LBB6_54
# BB#55:                                # %if.then.156
	addl	$6, %ebp
	cmpq	16(%r14), %rbp
	ja	.LBB6_296
# BB#56:                                # %if.end.163
	leaq	352(%rsp), %rdi
	movl	%eax, %eax
	leaq	(%rax,%r13), %rsi
	movl	$4, %edx
	callq	memcpy
	jmp	.LBB6_57
.LBB6_40:                               # %if.then.114
	movl	(%r14), %edx
	movl	$3, %esi
	movl	$.L.str.14, %ecx
.LBB6_286:                              # %cleanup.280
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	jbig2_error
.LBB6_287:                              # %cleanup.280
	cmpl	$0, 272(%rsp)
	je	.LBB6_289
# BB#288:                               # %if.then.283
	movq	304(%rsp), %rsi
	movq	%r12, %rdi
	callq	jbig2_release_huffman_table
	movq	312(%rsp), %rsi
	movq	%r12, %rdi
	callq	jbig2_release_huffman_table
	movq	320(%rsp), %rsi
	movq	%r12, %rdi
	callq	jbig2_release_huffman_table
	movq	328(%rsp), %rsi
	movq	%r12, %rdi
	callq	jbig2_release_huffman_table
.LBB6_289:                              # %if.end.288
	movq	288(%rsp), %rbp
	testq	%rbp, %rbp
	je	.LBB6_295
# BB#290:                               # %for.cond.preheader.i
	movl	(%rbp), %eax
	xorl	%ebx, %ebx
	testl	%eax, %eax
	je	.LBB6_294
	.align	16, 0x90
.LBB6_291:                              # %for.body.i.166
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rbp), %rcx
	movq	(%rcx,%rbx,8), %rsi
	testq	%rsi, %rsi
	je	.LBB6_293
# BB#292:                               # %if.then.2.i
                                        #   in Loop: Header=BB6_291 Depth=1
	movq	%r12, %rdi
	callq	jbig2_image_release
	movl	(%rbp), %eax
.LBB6_293:                              # %for.inc.i.170
                                        #   in Loop: Header=BB6_291 Depth=1
	incq	%rbx
	cmpl	%eax, %ebx
	jb	.LBB6_291
.LBB6_294:                              # %for.end.i.172
	movq	(%r12), %rdi
	movq	8(%rbp), %rsi
	callq	jbig2_free
	movq	(%r12), %rdi
	movq	%rbp, %rsi
	callq	jbig2_free
.LBB6_295:                              # %jbig2_sd_release.exit
	cmpq	$1, 40(%r14)
	sbbl	%eax, %eax
	jmp	.LBB6_298
.LBB6_52:
	movl	%ebx, %r15d
	movl	%eax, %ebp
	jmp	.LBB6_57
.LBB6_54:
	movl	%eax, %ebp
.LBB6_57:                               # %if.end.168
	leal	8(%rbp), %eax
	cltq
	cmpq	16(%r14), %rax
	jbe	.LBB6_58
.LBB6_296:                              # %too_short
	movl	(%r14), %edx
	movl	$3, %esi
	movl	$.L.str.25, %ecx
.LBB6_297:                              # %cleanup.296
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	jbig2_error
.LBB6_298:                              # %cleanup.296
	addq	$440, %rsp              # imm = 0x1B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_58:                               # %if.end.175
	movq	%rax, 256(%rsp)         # 8-byte Spill
	movslq	%ebp, %rbx
	leaq	(%r13,%rbx), %rdi
	callq	jbig2_get_uint32
	movl	%eax, 300(%rsp)
	leaq	4(%r13,%rbx), %rdi
	callq	jbig2_get_uint32
	movl	%eax, 296(%rsp)
	movl	(%r14), %edx
	movl	300(%rsp), %r9d
	movl	%eax, (%rsp)
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.18, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%r15d, %r8d
	movl	%r8d, 268(%rsp)         # 4-byte Spill
	callq	jbig2_error
	cmpl	$0, 24(%r14)
	jle	.LBB6_72
# BB#59:                                # %for.body.lr.ph.i
	xorl	%ebp, %ebp
.LBB6_60:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rax
	movl	(%rax,%rbp,4), %esi
	movq	%r12, %rdi
	callq	jbig2_find_segment
	testq	%rax, %rax
	je	.LBB6_65
# BB#61:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB6_60 Depth=1
	testb	$63, 4(%rax)
	jne	.LBB6_65
# BB#62:                                # %land.lhs.true.3.i
                                        #   in Loop: Header=BB6_60 Depth=1
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.LBB6_65
# BB#63:                                # %land.lhs.true.5.i
                                        #   in Loop: Header=BB6_60 Depth=1
	cmpl	$0, (%rax)
	je	.LBB6_65
# BB#64:                                # %land.lhs.true.9.i
                                        #   in Loop: Header=BB6_60 Depth=1
	movq	8(%rax), %rax
	cmpq	$1, (%rax)
	sbbl	$-1, %ebx
.LBB6_65:                               # %for.inc.i
                                        #   in Loop: Header=BB6_60 Depth=1
	incq	%rbp
	movslq	24(%r14), %rax
	cmpq	%rax, %rbp
	jl	.LBB6_60
# BB#66:                                # %jbig2_sd_count_referred.exit
	testl	%ebx, %ebx
	jle	.LBB6_72
# BB#67:                                # %if.then.192
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	jbig2_sd_list_referred
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB6_68
# BB#69:                                # %if.end.199
	movq	%r12, %rdi
	movl	%ebx, %esi
	movq	%r15, %rdx
	callq	jbig2_sd_cat
	movq	%rax, 288(%rsp)
	testq	%rax, %rax
	je	.LBB6_70
# BB#71:                                # %if.end.207
	movq	(%r12), %rdi
	movq	%r15, %rsi
	callq	jbig2_free
.LBB6_72:                               # %if.end.209
	movq	288(%rsp), %rax
	testq	%rax, %rax
	je	.LBB6_74
# BB#73:                                # %if.then.213
	movl	(%rax), %eax
	movl	%eax, 280(%rsp)
.LBB6_74:                               # %cleanup.cont
	movl	268(%rsp), %ebx         # 4-byte Reload
	testb	$1, %bh
	jne	.LBB6_75
# BB#76:                                # %if.else.223
	movl	336(%rsp), %eax
	cmpl	$1, %eax
	movl	$8192, %ecx             # imm = 0x2000
	movl	$1024, %edx             # imm = 0x400
	cmoveq	%rcx, %rdx
	testl	%eax, %eax
	movl	$65536, %ebp            # imm = 0x10000
	cmovneq	%rdx, %rbp
	movq	(%r12), %rdi
	movl	$1, %edx
	movq	%rbp, %rsi
	callq	jbig2_alloc
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB6_77
# BB#78:                                # %if.end.242
	xorl	%esi, %esi
	movq	%r15, %rdi
	movq	%rbp, %rdx
	callq	memset
	cmpl	$0, 348(%rsp)
	movq	(%r12), %rdi
	movl	$1024, %ebp             # imm = 0x400
	jne	.LBB6_80
# BB#79:                                # %select.mid1138
	movl	$8192, %ebp             # imm = 0x2000
.LBB6_80:                               # %select.end1137
	movl	$1, %edx
	movq	%rbp, %rsi
	callq	jbig2_alloc
	testq	%rax, %rax
	je	.LBB6_81
# BB#83:                                # %if.end.262
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, 240(%rsp)         # 8-byte Spill
	movq	%rbp, %rdx
	callq	memset
	movq	256(%rsp), %rax         # 8-byte Reload
	addq	%rax, %r13
	movq	16(%r14), %rbp
	subq	%rax, %rbp
	movl	$0, 436(%rsp)
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	callq	jbig2_word_stream_buf_new
	testq	%rax, %rax
	je	.LBB6_84
# BB#85:                                # %if.end.i
	movq	%r12, %rdi
	movq	%rax, %rsi
	movq	%rsi, 232(%rsp)         # 8-byte Spill
	callq	jbig2_arith_new
	movq	%rax, 224(%rsp)         # 8-byte Spill
	testq	%rax, %rax
	je	.LBB6_86
# BB#87:                                # %if.end.7.i
	cmpl	$0, 272(%rsp)
	je	.LBB6_88
# BB#103:                               # %if.else.i
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	movl	(%r14), %edx
	xorl	%esi, %esi
	movl	$.L.str.29, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	jbig2_error
	movq	%r12, %rdi
	movq	232(%rsp), %rsi         # 8-byte Reload
	callq	jbig2_huffman_new
	movq	%rax, %rbp
	movq	%rbp, 216(%rsp)         # 8-byte Spill
	movl	$jbig2_huffman_params_O, %esi
	movq	%r12, %rdi
	callq	jbig2_build_huffman_table
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movl	$jbig2_huffman_params_A, %esi
	movq	%r12, %rdi
	callq	jbig2_build_huffman_table
	testq	%rbp, %rbp
	movq	152(%rsp), %rbp         # 8-byte Reload
	je	.LBB6_106
# BB#104:                               # %if.else.i
	testq	%rbp, %rbp
	je	.LBB6_106
# BB#105:                               # %if.else.i
	testq	%rax, %rax
	je	.LBB6_106
# BB#107:                               # %if.end.59.i
	movq	%rax, 176(%rsp)         # 8-byte Spill
	movq	%r15, 104(%rsp)         # 8-byte Spill
	xorl	%r15d, %r15d
	cmpl	$0, 276(%rsp)
	je	.LBB6_109
# BB#108:
	xorl	%eax, %eax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	jmp	.LBB6_95
.LBB6_75:                               # %if.then.220
	movl	(%r14), %edx
	movl	$2, %esi
	movl	$.L.str.21, %ecx
	jmp	.LBB6_286
.LBB6_68:                               # %if.then.196
	movl	(%r14), %edx
	movl	$2, %esi
	movl	$.L.str.19, %ecx
	jmp	.LBB6_286
.LBB6_77:                               # %if.then.240
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str.22, %ecx
	jmp	.LBB6_286
.LBB6_70:                               # %if.then.204
	movl	(%r14), %edx
	movl	$2, %esi
	movl	$.L.str.20, %ecx
	jmp	.LBB6_82
.LBB6_81:                               # %if.then.253
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str.23, %ecx
.LBB6_82:                               # %cleanup.280
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	jbig2_error
	movq	(%r12), %rdi
	movq	%r15, %rsi
	callq	jbig2_free
	jmp	.LBB6_287
.LBB6_84:                               # %if.then.i
	movl	(%r14), %edx
	xorl	%ebp, %ebp
	movl	$2, %esi
	movl	$.L.str.26, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	jbig2_error
	jmp	.LBB6_284
.LBB6_86:                               # %if.then.4.i
	movl	(%r14), %edx
	xorl	%ebp, %ebp
	movl	$2, %esi
	movl	$.L.str.27, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	jbig2_error
	movq	%r12, %rdi
	movq	232(%rsp), %rsi         # 8-byte Reload
	callq	jbig2_word_stream_buf_free
	jmp	.LBB6_284
.LBB6_88:                               # %if.then.8.i
	movq	%r12, %rdi
	callq	jbig2_arith_int_ctx_new
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movq	%r12, %rdi
	callq	jbig2_arith_int_ctx_new
	movq	%rax, 200(%rsp)         # 8-byte Spill
	movq	%r12, %rdi
	callq	jbig2_arith_int_ctx_new
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movq	%r12, %rdi
	callq	jbig2_arith_int_ctx_new
	cmpq	$0, 112(%rsp)           # 8-byte Folded Reload
	je	.LBB6_92
# BB#89:                                # %if.then.8.i
	cmpq	$0, 200(%rsp)           # 8-byte Folded Reload
	je	.LBB6_92
# BB#90:                                # %if.then.8.i
	cmpq	$0, 192(%rsp)           # 8-byte Folded Reload
	je	.LBB6_92
# BB#91:                                # %if.then.8.i
	testq	%rax, %rax
	je	.LBB6_92
# BB#93:                                # %if.end.22.i
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	movq	%rax, 184(%rsp)         # 8-byte Spill
	movq	%r15, 104(%rsp)         # 8-byte Spill
	xorl	%r15d, %r15d
	cmpl	$0, 276(%rsp)
	je	.LBB6_94
# BB#96:                                # %if.then.24.i
	movl	296(%rsp), %eax
	addl	280(%rsp), %eax
	movq	$-1, %r15
.LBB6_97:                               # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	incq	%r15
	movl	$1, %edx
	movb	%r15b, %cl
	shlq	%cl, %rdx
	cmpq	%rax, %rdx
	jl	.LBB6_97
# BB#98:                                # %for.end.i
	movq	%r12, %rdi
	movl	%r15d, %esi
	callq	jbig2_arith_iaid_ctx_new
	movq	%rax, %rbx
	movq	%rbx, 120(%rsp)         # 8-byte Spill
	movq	%r12, %rdi
	callq	jbig2_arith_int_ctx_new
	movq	%rax, 144(%rsp)         # 8-byte Spill
	movq	%r12, %rdi
	callq	jbig2_arith_int_ctx_new
	movq	%rax, 128(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	testq	%rbx, %rbx
	je	.LBB6_102
# BB#99:                                # %for.end.i
	cmpq	$0, 144(%rsp)           # 8-byte Folded Reload
	je	.LBB6_102
# BB#100:                               # %for.end.i
	cmpq	$0, 128(%rsp)           # 8-byte Folded Reload
	je	.LBB6_102
# BB#101:
	xorl	%ebp, %ebp
	xorl	%eax, %eax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 216(%rsp)         # 8-byte Spill
	jmp	.LBB6_111
.LBB6_106:                              # %if.then.56.i
	movq	%rax, 176(%rsp)         # 8-byte Spill
	movl	(%r14), %edx
	xorl	%eax, %eax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	movl	$2, %esi
	movl	$.L.str.28, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	jbig2_error
	xorl	%eax, %eax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	xorl	%r13d, %r13d
	jmp	.LBB6_279
.LBB6_92:                               # %if.then.19.i
	movq	%rax, 184(%rsp)         # 8-byte Spill
	movl	(%r14), %edx
	xorl	%eax, %eax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	movl	$2, %esi
	movl	$.L.str.28, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	jbig2_error
	movq	112(%rsp), %r13         # 8-byte Reload
	jmp	.LBB6_283
.LBB6_109:                              # %if.then.62.i
	movq	(%r12), %rdi
	movl	296(%rsp), %esi
	movl	$4, %edx
	callq	jbig2_alloc
	movq	%rax, %rcx
	movq	%rcx, 160(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	testq	%rcx, %rcx
	je	.LBB6_300
# BB#110:
	xorl	%eax, %eax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	xorl	%r15d, %r15d
	jmp	.LBB6_111
.LBB6_94:
	xorl	%ebp, %ebp
	xorl	%eax, %eax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 216(%rsp)         # 8-byte Spill
.LBB6_95:                               # %if.end.74.i
	xorl	%eax, %eax
	movq	%rax, 160(%rsp)         # 8-byte Spill
.LBB6_111:                              # %if.end.74.i
	movl	296(%rsp), %esi
	movq	%r12, %rdi
	callq	jbig2_sd_new
	testq	%rax, %rax
	je	.LBB6_116
# BB#112:                               # %while.cond.preheader.i
	movq	%rax, 208(%rsp)         # 8-byte Spill
	movq	%rbp, 152(%rsp)         # 8-byte Spill
	movq	296(%rsp), %rsi
	testl	%esi, %esi
	movl	$0, %ecx
	movl	$0, %eax
	je	.LBB6_227
# BB#113:                               # %while.body.lr.ph.i
	movl	$1, %eax
	movd	%eax, %xmm0
	movaps	%xmm0, 48(%rsp)         # 16-byte Spill
	movl	$0, 248(%rsp)           # 4-byte Folded Spill
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
.LBB6_114:                              # %while.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_128 Depth 2
                                        #       Child Loop BB6_166 Depth 3
                                        #       Child Loop BB6_171 Depth 3
                                        #     Child Loop BB6_212 Depth 2
                                        #     Child Loop BB6_215 Depth 2
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	%edx, %ebx
	cmpl	$0, 272(%rsp)
	je	.LBB6_118
# BB#115:                               # %if.then.91.i
                                        #   in Loop: Header=BB6_114 Depth=1
	movq	304(%rsp), %rsi
	movq	216(%rsp), %rdi         # 8-byte Reload
	leaq	436(%rsp), %rdx
	callq	jbig2_huffman_get
	movl	%eax, 432(%rsp)
	movl	436(%rsp), %r8d
	jmp	.LBB6_119
.LBB6_118:                              # %if.else.93.i
                                        #   in Loop: Header=BB6_114 Depth=1
	movq	112(%rsp), %rdi         # 8-byte Reload
	movq	224(%rsp), %rsi         # 8-byte Reload
	leaq	432(%rsp), %rdx
	callq	jbig2_arith_int_decode
	movl	%eax, %r8d
	movl	%r8d, 436(%rsp)
.LBB6_119:                              # %if.end.95.i
                                        #   in Loop: Header=BB6_114 Depth=1
	testl	%r8d, %r8d
	je	.LBB6_121
# BB#120:                               # %if.then.98.i
                                        #   in Loop: Header=BB6_114 Depth=1
	movl	(%r14), %edx
	movl	$2, %esi
	movl	$.L.str.32, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	jbig2_error
.LBB6_121:                              # %if.end.101.i
                                        #   in Loop: Header=BB6_114 Depth=1
	cmpl	$0, 272(%rsp)
	jne	.LBB6_124
# BB#122:                               # %land.lhs.true.i.156
                                        #   in Loop: Header=BB6_114 Depth=1
	movq	224(%rsp), %rdi         # 8-byte Reload
	callq	jbig2_arith_get_offset
	cltq
	cmpq	80(%rsp), %rax          # 8-byte Folded Reload
	jae	.LBB6_123
.LBB6_124:                              # %if.end.111.i
                                        #   in Loop: Header=BB6_114 Depth=1
	movl	248(%rsp), %r8d         # 4-byte Reload
	addl	432(%rsp), %r8d
	movl	%r8d, 248(%rsp)         # 4-byte Spill
	movl	(%r14), %edx
	js	.LBB6_125
# BB#127:                               # %if.end.118.i
                                        #   in Loop: Header=BB6_114 Depth=1
	xorl	%eax, %eax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	xorl	%esi, %esi
	movl	$.L.str.35, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%r8d, 248(%rsp)         # 4-byte Spill
	movl	%ebx, 68(%rsp)          # 4-byte Spill
	movl	%ebx, %r9d
	callq	jbig2_error
	xorl	%eax, %eax
	movq	%rax, 256(%rsp)         # 8-byte Spill
	movl	%ebx, %eax
	movabsq	$4294967296, %rbp       # imm = 0x100000000
	movq	%rax, %rbx
	jmp	.LBB6_128
.LBB6_205:                              # %if.end.448.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movq	256(%rsp), %rax         # 8-byte Reload
	leal	(%rdx,%rax), %edx
	movq	%rdx, 168(%rsp)         # 8-byte Spill
	incl	%ebx
	movl	(%r14), %edx
	movl	296(%rsp), %r9d
	movl	%edi, 8(%rsp)
	movl	%edi, 248(%rsp)         # 4-byte Spill
	movl	%eax, (%rsp)
	movl	$0, %esi
	movl	$.L.str.50, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%ebx, %r8d
	callq	jbig2_error
.LBB6_128:                              # %for.cond.121.i
                                        #   Parent Loop BB6_114 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_166 Depth 3
                                        #       Child Loop BB6_171 Depth 3
	cmpl	$0, 272(%rsp)
	je	.LBB6_130
# BB#129:                               # %if.then.124.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movq	312(%rsp), %rsi
	movq	216(%rsp), %rdi         # 8-byte Reload
	leaq	436(%rsp), %rdx
	callq	jbig2_huffman_get
	movl	%eax, 428(%rsp)
	movl	436(%rsp), %eax
	jmp	.LBB6_131
.LBB6_130:                              # %if.else.126.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movq	200(%rsp), %rdi         # 8-byte Reload
	movq	224(%rsp), %rsi         # 8-byte Reload
	leaq	428(%rsp), %rdx
	callq	jbig2_arith_int_decode
	movl	%eax, 436(%rsp)
.LBB6_131:                              # %if.end.128.i
                                        #   in Loop: Header=BB6_128 Depth=2
	testl	%eax, %eax
	js	.LBB6_141
# BB#132:                               # %if.end.132.i
                                        #   in Loop: Header=BB6_128 Depth=2
	cmpl	$1, %eax
	je	.LBB6_133
# BB#139:                               # %if.end.138.i
                                        #   in Loop: Header=BB6_128 Depth=2
	cmpl	296(%rsp), %ebx
	jae	.LBB6_140
# BB#143:                               # %if.end.145.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movq	256(%rsp), %rax         # 8-byte Reload
	addl	428(%rsp), %eax
	movq	%rax, 256(%rsp)         # 8-byte Spill
	js	.LBB6_144
# BB#145:                               # %if.end.154.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movq	272(%rsp), %rax
	testl	%eax, %eax
	je	.LBB6_148
# BB#146:                               # %lor.lhs.false.157.i
                                        #   in Loop: Header=BB6_128 Depth=2
	cmpq	%rbp, %rax
	jae	.LBB6_154
# BB#147:                               #   in Loop: Header=BB6_128 Depth=2
	movq	168(%rsp), %rdx         # 8-byte Reload
	movl	248(%rsp), %edi         # 4-byte Reload
	jmp	.LBB6_202
.LBB6_148:                              # %if.then.160.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movq	%rbx, 136(%rsp)         # 8-byte Spill
	cmpq	%rbp, %rax
	jae	.LBB6_155
# BB#149:                               # %if.then.163.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movl	$0, 392(%rsp)
	movl	336(%rsp), %eax
	movl	%eax, 396(%rsp)
	movl	$0, 400(%rsp)
	movl	$0, 404(%rsp)
	testl	%eax, %eax
	movl	$2, %edx
	movl	$8, %eax
	cmoveq	%rax, %rdx
	leaq	408(%rsp), %rdi
	leaq	340(%rsp), %rsi
	callq	memcpy
	movq	%r12, %rdi
	movq	256(%rsp), %rsi         # 8-byte Reload
	movl	248(%rsp), %ebx         # 4-byte Reload
	movl	%ebx, %edx
	callq	jbig2_image_new
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB6_150
# BB#151:                               # %if.end.179.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movq	%r12, %rdi
	movq	%r14, %rsi
	leaq	392(%rsp), %rdx
	movq	224(%rsp), %rcx         # 8-byte Reload
	movq	%rbp, %r8
	movq	104(%rsp), %r9          # 8-byte Reload
	callq	jbig2_decode_generic_region
	movl	%eax, 436(%rsp)
	testl	%eax, %eax
	js	.LBB6_152
# BB#153:                               # %cleanup.185.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	%rax, %rdx
	movl	%edx, %eax
	movq	208(%rsp), %rcx         # 8-byte Reload
	movq	8(%rcx), %rcx
	movq	%rbp, (%rcx,%rax,8)
	movabsq	$4294967296, %rbp       # imm = 0x100000000
	movl	%ebx, %edi
	movq	%rdx, %rbx
	jmp	.LBB6_201
.LBB6_154:                              # %if.then.194.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movq	%rbx, 136(%rsp)         # 8-byte Spill
	movq	328(%rsp), %rsi
	movq	216(%rsp), %rdi         # 8-byte Reload
	leaq	436(%rsp), %rdx
	callq	jbig2_huffman_get
	movl	%eax, %r8d
	movl	%r8d, 424(%rsp)
	movl	436(%rsp), %eax
	jmp	.LBB6_156
.LBB6_155:                              # %if.else.196.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movq	184(%rsp), %rdi         # 8-byte Reload
	movq	224(%rsp), %rsi         # 8-byte Reload
	leaq	424(%rsp), %rdx
	callq	jbig2_arith_int_decode
	movl	%eax, 436(%rsp)
	movl	424(%rsp), %r8d
.LBB6_156:                              # %if.end.198.i
                                        #   in Loop: Header=BB6_128 Depth=2
	testl	%r8d, %r8d
	movl	(%r14), %edx
	jle	.LBB6_158
# BB#157:                               # %if.end.198.i
                                        #   in Loop: Header=BB6_128 Depth=2
	testl	%eax, %eax
	jne	.LBB6_158
# BB#160:                               # %if.end.206.i
                                        #   in Loop: Header=BB6_128 Depth=2
	xorl	%esi, %esi
	movl	$.L.str.41, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	jbig2_error
	movl	424(%rsp), %eax
	cmpl	$2, %eax
	jb	.LBB6_178
# BB#161:                               # %if.then.211.i
                                        #   in Loop: Header=BB6_128 Depth=2
	cmpq	$0, 96(%rsp)            # 8-byte Folded Reload
	jne	.LBB6_175
# BB#162:                               # %if.then.217.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movq	(%r12), %rdi
	movl	$1, %esi
	movl	$8, %edx
	callq	jbig2_alloc
	movq	%rax, 88(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	je	.LBB6_163
# BB#164:                               # %if.end.226.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movl	296(%rsp), %esi
	addl	280(%rsp), %esi
	movq	%r12, %rdi
	callq	jbig2_sd_new
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	%rax, (%rcx)
	testq	%rax, %rax
	je	.LBB6_229
# BB#165:                               # %for.cond.240.preheader.i
                                        #   in Loop: Header=BB6_128 Depth=2
	cmpl	$0, 280(%rsp)
	movl	$0, %ebx
	movq	88(%rsp), %rbp          # 8-byte Reload
	je	.LBB6_167
.LBB6_166:                              # %for.body.244.i
                                        #   Parent Loop BB6_114 Depth=1
                                        #     Parent Loop BB6_128 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	288(%rsp), %rax
	movq	8(%rax), %rax
	movq	(%rax,%rbx,8), %rsi
	movq	%r12, %rdi
	callq	jbig2_image_clone
	movq	(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, (%rcx,%rbx,8)
	incq	%rbx
	cmpl	280(%rsp), %ebx
	jb	.LBB6_166
.LBB6_167:                              # %for.end.255.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movq	(%r12), %rdi
	movl	$1, %esi
	movl	$192, %edx
	callq	jbig2_alloc
	movq	%rax, 96(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	je	.LBB6_168
# BB#169:                               # %if.end.263.i
                                        #   in Loop: Header=BB6_128 Depth=2
	cmpl	$0, 272(%rsp)
	je	.LBB6_170
# BB#173:                               # %if.else.291.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movl	$jbig2_huffman_params_F, %esi
	movq	%r12, %rdi
	callq	jbig2_build_huffman_table
	movq	96(%rsp), %rbx          # 8-byte Reload
	movq	%rax, 40(%rbx)
	movl	$jbig2_huffman_params_H, %esi
	movq	%r12, %rdi
	callq	jbig2_build_huffman_table
	movq	%rax, 48(%rbx)
	movl	$jbig2_huffman_params_K, %esi
	movq	%r12, %rdi
	callq	jbig2_build_huffman_table
	movq	%rax, 56(%rbx)
	movl	$jbig2_huffman_params_O, %esi
	movq	%r12, %rdi
	callq	jbig2_build_huffman_table
	movq	%rax, 64(%rbx)
	movl	$jbig2_huffman_params_O, %esi
	movq	%r12, %rdi
	callq	jbig2_build_huffman_table
	movq	%rax, 72(%rbx)
	movl	$jbig2_huffman_params_O, %esi
	movq	%r12, %rdi
	callq	jbig2_build_huffman_table
	movq	%rax, 80(%rbx)
	movl	$jbig2_huffman_params_O, %esi
	movq	%r12, %rdi
	callq	jbig2_build_huffman_table
	movq	%rax, 88(%rbx)
	jmp	.LBB6_174
.LBB6_178:                              # %if.else.327.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movl	280(%rsp), %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movl	$0, 376(%rsp)
	movl	$0, 372(%rsp)
	movl	$0, 368(%rsp)
	movl	$0, 364(%rsp)
	cmpl	$0, 272(%rsp)
	je	.LBB6_180
# BB#179:                               # %if.then.343.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movq	216(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movl	%r15d, %esi
	leaq	364(%rsp), %rdx
	callq	jbig2_huffman_get_bits
	movl	%eax, 388(%rsp)
	movq	%rbx, %rdi
	movq	152(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rsi
	leaq	376(%rsp), %rdx
	callq	jbig2_huffman_get
	movl	%eax, 384(%rsp)
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	leaq	372(%rsp), %rdx
	callq	jbig2_huffman_get
	movl	%eax, 380(%rsp)
	movq	%rbx, %rdi
	movq	176(%rsp), %rsi         # 8-byte Reload
	leaq	368(%rsp), %rdx
	callq	jbig2_huffman_get
	movl	%eax, %ebp
	movq	%rbx, %rdi
	callq	jbig2_huffman_skip
	movl	368(%rsp), %eax
	jmp	.LBB6_181
.LBB6_180:                              # %if.else.348.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movq	120(%rsp), %rdi         # 8-byte Reload
	movq	224(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rsi
	leaq	388(%rsp), %rdx
	callq	jbig2_arith_iaid_decode
	movl	%eax, 376(%rsp)
	movq	144(%rsp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	leaq	384(%rsp), %rdx
	callq	jbig2_arith_int_decode
	movl	%eax, 372(%rsp)
	movq	128(%rsp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	leaq	380(%rsp), %rdx
	callq	jbig2_arith_int_decode
	movl	%eax, 368(%rsp)
	xorl	%ebp, %ebp
.LBB6_181:                              # %if.end.352.i
                                        #   in Loop: Header=BB6_128 Depth=2
	orl	376(%rsp), %eax
	orl	372(%rsp), %eax
	orl	364(%rsp), %eax
	js	.LBB6_182
# BB#185:                               # %if.end.367.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movl	388(%rsp), %r8d
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	72(%rsp), %rcx          # 8-byte Reload
	leal	(%rcx,%rax), %eax
	cmpl	%eax, %r8d
	movl	(%r14), %edx
	jae	.LBB6_186
# BB#187:                               # %if.end.374.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movl	384(%rsp), %r9d
	movl	380(%rsp), %eax
	movl	%eax, (%rsp)
	movl	$0, %esi
	movl	$.L.str.48, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	jbig2_error
	movq	%r12, %rdi
	movq	256(%rsp), %rsi         # 8-byte Reload
	movl	248(%rsp), %edx         # 4-byte Reload
	callq	jbig2_image_new
	movq	%rax, 40(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	je	.LBB6_188
# BB#189:                               # %if.end.383.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movl	348(%rsp), %eax
	movl	%eax, 392(%rsp)
	movl	388(%rsp), %r8d
	movq	72(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %r8d
	jae	.LBB6_191
# BB#190:                               # %cond.true.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movq	288(%rsp), %rcx
	leaq	(,%r8,8), %rax
	jmp	.LBB6_192
.LBB6_182:                              # %if.then.364.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movl	(%r14), %edx
	movl	$3, %esi
	movl	$.L.str.46, %ecx
	jmp	.LBB6_183
.LBB6_186:                              # %if.then.371.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movl	$3, %esi
	movl	$.L.str.47, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	jbig2_error
	jmp	.LBB6_184
.LBB6_170:                              # %if.then.266.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movq	%r12, %rdi
	callq	jbig2_arith_int_ctx_new
	movq	96(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, %rbx
	movq	%rax, 104(%rbx)
	movq	%r12, %rdi
	callq	jbig2_arith_int_ctx_new
	movq	%rax, 112(%rbx)
	movq	%r12, %rdi
	callq	jbig2_arith_int_ctx_new
	movq	%rax, 120(%rbx)
	movq	%r12, %rdi
	callq	jbig2_arith_int_ctx_new
	movq	%rax, 128(%rbx)
	movl	296(%rsp), %eax
	addl	280(%rsp), %eax
	movl	$-1, %r15d
.LBB6_171:                              # %for.cond.271.i
                                        #   Parent Loop BB6_114 Depth=1
                                        #     Parent Loop BB6_128 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	incl	%r15d
	movl	$1, %edx
	movb	%r15b, %cl
	shll	%cl, %edx
	cmpl	%eax, %edx
	jl	.LBB6_171
# BB#172:                               # %for.end.281.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movq	%r12, %rdi
	movl	%r15d, %esi
	callq	jbig2_arith_iaid_ctx_new
	movq	%rax, 136(%rbx)
	movq	%r12, %rdi
	callq	jbig2_arith_int_ctx_new
	movq	%rax, 144(%rbx)
	movq	%r12, %rdi
	callq	jbig2_arith_int_ctx_new
	movq	%rax, 152(%rbx)
	movq	%r12, %rdi
	callq	jbig2_arith_int_ctx_new
	movq	%rax, 160(%rbx)
	movq	%r12, %rdi
	callq	jbig2_arith_int_ctx_new
	movq	%rax, 168(%rbx)
	movq	%r12, %rdi
	callq	jbig2_arith_int_ctx_new
	movq	%rax, 176(%rbx)
.LBB6_174:                              # %if.end.299.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movq	%rbx, %rcx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movl	272(%rsp), %eax
	movl	%eax, (%rcx)
	movl	$1, 36(%rcx)
	movaps	48(%rsp), %xmm0         # 16-byte Reload
	movups	%xmm0, 4(%rcx)
	movq	$1, 20(%rcx)
	movl	348(%rsp), %eax
	movl	%eax, 184(%rcx)
	movl	424(%rsp), %eax
.LBB6_175:                              # %if.end.301.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movq	96(%rsp), %rbx          # 8-byte Reload
	movl	%eax, 28(%rbx)
	movq	%r12, %rdi
	movq	256(%rsp), %rsi         # 8-byte Reload
	movl	248(%rsp), %edx         # 4-byte Reload
	callq	jbig2_image_new
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB6_176
# BB#177:                               # %cleanup.323.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movq	232(%rsp), %rax         # 8-byte Reload
	movq	%rax, 32(%rsp)
	movq	224(%rsp), %rax         # 8-byte Reload
	movq	%rax, 24(%rsp)
	movq	240(%rsp), %rax         # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r13, (%rsp)
	movl	$1, %r8d
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	%rbp, %r9
	callq	jbig2_decode_text_region
	movq	136(%rsp), %rbx         # 8-byte Reload
	movl	%ebx, %eax
	movq	208(%rsp), %rdx         # 8-byte Reload
	movq	8(%rdx), %rcx
	movq	%rbp, (%rcx,%rax,8)
	movq	8(%rdx), %rcx
	movq	(%rcx,%rax,8), %rsi
	movq	%r12, %rdi
	callq	jbig2_image_clone
	movl	280(%rsp), %ecx
	addl	%ebx, %ecx
	movq	88(%rsp), %rdx          # 8-byte Reload
	movq	(%rdx), %rdx
	movq	8(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
	jmp	.LBB6_200
.LBB6_188:                              # %if.then.380.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movl	(%r14), %edx
	movl	$3, %esi
	movl	$.L.str.45, %ecx
.LBB6_183:                              # %cleanup.421.i
                                        #   in Loop: Header=BB6_128 Depth=2
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	jbig2_error
.LBB6_184:                              # %cleanup.421.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movl	%eax, 436(%rsp)
	movl	$11, %ebx
.LBB6_199:                              # %cleanup.421.i
                                        #   in Loop: Header=BB6_128 Depth=2
	testl	%ebx, %ebx
	jne	.LBB6_230
.LBB6_200:                              #   in Loop: Header=BB6_128 Depth=2
	movabsq	$4294967296, %rbp       # imm = 0x100000000
	movl	248(%rsp), %edi         # 4-byte Reload
	movq	136(%rsp), %rbx         # 8-byte Reload
.LBB6_201:                              # %if.end.439.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movq	168(%rsp), %rdx         # 8-byte Reload
.LBB6_202:                              # %if.end.439.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movq	272(%rsp), %rax
	testl	%eax, %eax
	je	.LBB6_205
# BB#203:                               # %if.end.439.i
                                        #   in Loop: Header=BB6_128 Depth=2
	cmpq	%rbp, %rax
	jae	.LBB6_205
# BB#204:                               # %if.then.445.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movl	%ebx, %eax
	movq	160(%rsp), %rcx         # 8-byte Reload
	movq	256(%rsp), %rsi         # 8-byte Reload
	movl	%esi, (%rcx,%rax,4)
	jmp	.LBB6_205
.LBB6_191:                              # %cond.false.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movl	%r8d, %eax
	movq	72(%rsp), %rcx          # 8-byte Reload
	subl	%ecx, %eax
	shlq	$3, %rax
	movq	208(%rsp), %rcx         # 8-byte Reload
.LBB6_192:                              # %cond.end.i
                                        #   in Loop: Header=BB6_128 Depth=2
	addq	8(%rcx), %rax
	movq	(%rax), %rax
	movq	%rax, 400(%rsp)
	testq	%rax, %rax
	je	.LBB6_193
# BB#194:                               # %if.end.401.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movl	384(%rsp), %eax
	movl	%eax, 408(%rsp)
	movl	380(%rsp), %eax
	movl	%eax, 412(%rsp)
	movl	$0, 416(%rsp)
	movl	$4, %edx
	leaq	420(%rsp), %rdi
	leaq	352(%rsp), %rsi
	callq	memcpy
	movq	%r12, %rdi
	movq	%r14, %rsi
	leaq	392(%rsp), %rdx
	movq	224(%rsp), %rcx         # 8-byte Reload
	movq	40(%rsp), %r8           # 8-byte Reload
	movq	240(%rsp), %r9          # 8-byte Reload
	callq	jbig2_decode_refinement_region
	movl	%eax, 436(%rsp)
	movl	$11, %ebx
	testl	%eax, %eax
	js	.LBB6_199
# BB#195:                               # %if.end.409.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movq	136(%rsp), %rax         # 8-byte Reload
	movl	%eax, %eax
	movq	208(%rsp), %rcx         # 8-byte Reload
	movq	8(%rcx), %rcx
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	%rdx, (%rcx,%rax,8)
	xorl	%ebx, %ebx
	cmpl	$0, 272(%rsp)
	je	.LBB6_199
# BB#196:                               # %if.then.415.i
                                        #   in Loop: Header=BB6_128 Depth=2
	testl	%ebp, %ebp
	jne	.LBB6_198
# BB#197:                               # %if.then.418.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	8(%rax), %ebp
	imull	4(%rax), %ebp
.LBB6_198:                              # %if.end.419.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movq	216(%rsp), %rdi         # 8-byte Reload
	movl	%ebp, %esi
	callq	jbig2_huffman_advance
	jmp	.LBB6_199
.LBB6_193:                              # %if.then.398.i
                                        #   in Loop: Header=BB6_128 Depth=2
	movl	(%r14), %edx
	movl	$3, %esi
	movl	$.L.str.49, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	movq	72(%rsp), %r9           # 8-byte Reload
	callq	jbig2_error
	movl	%eax, 436(%rsp)
	movq	%r12, %rdi
	movq	40(%rsp), %rsi          # 8-byte Reload
	callq	jbig2_image_release
	movl	$11, %ebx
	jmp	.LBB6_199
.LBB6_133:                              # %if.then.135.i
                                        #   in Loop: Header=BB6_114 Depth=1
	movq	%rbx, 136(%rsp)         # 8-byte Spill
	movl	(%r14), %edx
	xorl	%esi, %esi
	movl	$.L.str.36, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	248(%rsp), %r8d         # 4-byte Reload
	callq	jbig2_error
	movq	272(%rsp), %rax
	testl	%eax, %eax
	je	.LBB6_226
# BB#134:                               # %if.then.135.i
                                        #   in Loop: Header=BB6_114 Depth=1
	movabsq	$4294967296, %rcx       # imm = 0x100000000
	cmpq	%rcx, %rax
	jae	.LBB6_226
# BB#135:                               # %if.then.459.i
                                        #   in Loop: Header=BB6_114 Depth=1
	movq	320(%rsp), %rsi
	movq	216(%rsp), %rdi         # 8-byte Reload
	leaq	436(%rsp), %rdx
	callq	jbig2_huffman_get
	movl	%eax, 40(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	js	.LBB6_137
# BB#136:                               # %if.then.459.i
                                        #   in Loop: Header=BB6_114 Depth=1
	movl	436(%rsp), %eax
	testl	%eax, %eax
	jne	.LBB6_137
# BB#206:                               # %if.end.474.i
                                        #   in Loop: Header=BB6_114 Depth=1
	movq	216(%rsp), %rdi         # 8-byte Reload
	callq	jbig2_huffman_skip
	movq	%r12, %rdi
	movq	168(%rsp), %rsi         # 8-byte Reload
	movl	248(%rsp), %edx         # 4-byte Reload
	callq	jbig2_image_new
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.LBB6_207
# BB#208:                               # %if.end.481.i
                                        #   in Loop: Header=BB6_114 Depth=1
	cmpl	$0, 40(%rsp)            # 4-byte Folded Reload
	je	.LBB6_209
# BB#218:                               # %if.else.539.i
                                        #   in Loop: Header=BB6_114 Depth=1
	movq	216(%rsp), %rdi         # 8-byte Reload
	callq	jbig2_huffman_offset
	cltq
	movq	80(%rsp), %rcx          # 8-byte Reload
	subq	%rax, %rcx
	movslq	40(%rsp), %rbp          # 4-byte Folded Reload
	movl	(%r14), %eax
	movl	%eax, 256(%rsp)         # 4-byte Spill
	cmpq	%rbp, %rcx
	jb	.LBB6_219
# BB#220:                               # %if.end.554.i
                                        #   in Loop: Header=BB6_114 Depth=1
	movq	%rbx, 168(%rsp)         # 8-byte Spill
	movl	(%rbx), %r8d
	movl	4(%rbx), %r9d
	movq	136(%rsp), %rax         # 8-byte Reload
	subl	68(%rsp), %eax          # 4-byte Folded Reload
	movl	40(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$0, %esi
	movl	$.L.str.55, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	256(%rsp), %edx         # 4-byte Reload
	callq	jbig2_error
	movl	$1, 392(%rsp)
	movq	216(%rsp), %rdi         # 8-byte Reload
	callq	jbig2_huffman_offset
	cltq
	leaq	(%rax,%r13), %rcx
	movq	%r12, %rdi
	movq	%r14, %rsi
	leaq	392(%rsp), %rdx
	movq	%rbp, %r8
	movq	%rbx, %r9
	callq	jbig2_decode_generic_mmr
	movl	%eax, 436(%rsp)
	testl	%eax, %eax
	je	.LBB6_213
	jmp	.LBB6_221
.LBB6_209:                              # %if.then.484.i
                                        #   in Loop: Header=BB6_114 Depth=1
	movq	216(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rdi
	callq	jbig2_huffman_offset
	movl	%eax, 72(%rsp)          # 4-byte Spill
	movq	%rbx, 168(%rsp)         # 8-byte Spill
	movl	(%rbx), %eax
	movq	%rbx, %rcx
	movl	%eax, %ebx
	sarl	$3, %ebx
	andl	$7, %eax
	cmpl	$1, %eax
	sbbl	$-1, %ebx
	movq	16(%rcx), %rbp
	movq	216(%rsp), %rdi         # 8-byte Reload
	callq	jbig2_huffman_offset
	cltq
	movq	80(%rsp), %rcx          # 8-byte Reload
	subq	%rax, %rcx
	movq	168(%rsp), %rax         # 8-byte Reload
	movl	4(%rax), %r9d
	movl	%ebx, %eax
	imull	%r9d, %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	cltq
	cmpq	%rax, %rcx
	movl	(%r14), %eax
	movl	%eax, 256(%rsp)         # 4-byte Spill
	jb	.LBB6_217
# BB#210:                               # %if.end.511.i
                                        #   in Loop: Header=BB6_114 Depth=1
	movq	168(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %r8d
	movq	136(%rsp), %rax         # 8-byte Reload
	subl	68(%rsp), %eax          # 4-byte Folded Reload
	movl	40(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$0, %esi
	movl	$.L.str.54, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	256(%rsp), %edx         # 4-byte Reload
	callq	jbig2_error
	movq	168(%rsp), %rax         # 8-byte Reload
	cmpl	$0, 4(%rax)
	jle	.LBB6_213
# BB#211:                               # %for.body.523.lr.ph.i
                                        #   in Loop: Header=BB6_114 Depth=1
	movslq	72(%rsp), %rax          # 4-byte Folded Reload
	leaq	(%rax,%r13), %rax
	movslq	%ebx, %rdx
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movl	$0, 256(%rsp)           # 4-byte Folded Spill
.LBB6_212:                              # %for.body.523.i
                                        #   Parent Loop BB6_114 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbp, %rdi
	movq	%rax, %rbx
	movq	%rbx, %rsi
	callq	memcpy
	movq	168(%rsp), %rcx         # 8-byte Reload
	movslq	8(%rcx), %rax
	addq	%rax, %rbp
	movq	72(%rsp), %rax          # 8-byte Reload
	addq	%rax, %rbx
	movq	%rax, %rdx
	movq	%rbx, %rax
	movl	256(%rsp), %esi         # 4-byte Reload
	incl	%esi
	movl	%esi, 256(%rsp)         # 4-byte Spill
	cmpl	4(%rcx), %esi
	jl	.LBB6_212
.LBB6_213:                              # %if.end.574.i
                                        #   in Loop: Header=BB6_114 Depth=1
	movq	216(%rsp), %rdi         # 8-byte Reload
	movl	40(%rsp), %esi          # 4-byte Reload
	callq	jbig2_huffman_advance
	movq	136(%rsp), %rax         # 8-byte Reload
	cmpl	68(%rsp), %eax          # 4-byte Folded Reload
	jbe	.LBB6_225
# BB#214:                               # %for.body.578.lr.ph.i
                                        #   in Loop: Header=BB6_114 Depth=1
	movslq	68(%rsp), %rax          # 4-byte Folded Reload
	shlq	$2, %rax
	movq	%rax, 256(%rsp)         # 8-byte Spill
	movl	$0, 72(%rsp)            # 4-byte Folded Spill
.LBB6_215:                              # %for.body.578.i
                                        #   Parent Loop BB6_114 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	160(%rsp), %rax         # 8-byte Reload
	movq	256(%rsp), %rcx         # 8-byte Reload
	movl	(%rax,%rcx), %esi
	movq	%r12, %rdi
	movl	248(%rsp), %edx         # 4-byte Reload
	callq	jbig2_image_new
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB6_216
# BB#224:                               # %for.inc.600.i
                                        #   in Loop: Header=BB6_215 Depth=2
	movl	72(%rsp), %ebx          # 4-byte Reload
	movl	%ebx, %ecx
	negl	%ecx
	xorl	%r8d, %r8d
	movl	$4, %r9d
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	168(%rsp), %rdx         # 8-byte Reload
	callq	jbig2_image_compose
	movq	160(%rsp), %rax         # 8-byte Reload
	movq	256(%rsp), %rcx         # 8-byte Reload
	addl	(%rax,%rcx), %ebx
	movl	%ebx, 72(%rsp)          # 4-byte Spill
	movq	208(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %rax
	movq	%rbp, (%rax,%rcx,2)
	movl	68(%rsp), %eax          # 4-byte Reload
	incl	%eax
	movl	%eax, 68(%rsp)          # 4-byte Spill
	addq	$4, %rcx
	movq	%rcx, 256(%rsp)         # 8-byte Spill
	movq	136(%rsp), %rcx         # 8-byte Reload
	cmpl	%ecx, %eax
	jb	.LBB6_215
.LBB6_225:                              # %cleanup.603.i
                                        #   in Loop: Header=BB6_114 Depth=1
	movq	%r12, %rdi
	movq	168(%rsp), %rsi         # 8-byte Reload
	callq	jbig2_image_release
.LBB6_226:                              # %cleanup.610.thread583.i
                                        #   in Loop: Header=BB6_114 Depth=1
	movq	296(%rsp), %rsi
	movq	136(%rsp), %rdx         # 8-byte Reload
	cmpl	%esi, %edx
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	96(%rsp), %rcx          # 8-byte Reload
	jb	.LBB6_114
.LBB6_227:                              # %while.end.i
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movq	%rax, 88(%rsp)          # 8-byte Spill
	shrq	$32, %rsi
	movq	%r12, %rdi
	callq	jbig2_sd_new
	movq	%rax, 248(%rsp)         # 8-byte Spill
	testq	%rax, %rax
	je	.LBB6_228
# BB#231:                               # %if.else.620.i
	movl	296(%rsp), %eax
	addl	280(%rsp), %eax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	je	.LBB6_260
# BB#232:                               # %while.body.638.lr.ph.i
	xorl	%r13d, %r13d
	movl	$0, 168(%rsp)           # 4-byte Folded Spill
	movl	$0, 256(%rsp)           # 4-byte Folded Spill
	xorl	%ebx, %ebx
	xorl	%r15d, %r15d
.LBB6_233:                              # %while.body.638.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_243 Depth 2
	cmpl	$0, 272(%rsp)
	je	.LBB6_235
# BB#234:                               # %if.then.641.i
                                        #   in Loop: Header=BB6_233 Depth=1
	movq	216(%rsp), %rdi         # 8-byte Reload
	movq	176(%rsp), %rsi         # 8-byte Reload
	leaq	436(%rsp), %rdx
	callq	jbig2_huffman_get
	movl	%eax, %ebp
	movl	%ebp, 392(%rsp)
	movl	436(%rsp), %eax
	jmp	.LBB6_236
.LBB6_235:                              # %if.else.643.i
                                        #   in Loop: Header=BB6_233 Depth=1
	movq	192(%rsp), %rdi         # 8-byte Reload
	movq	224(%rsp), %rsi         # 8-byte Reload
	leaq	392(%rsp), %rdx
	callq	jbig2_arith_int_decode
	movl	%eax, 436(%rsp)
	movl	392(%rsp), %ebp
.LBB6_236:                              # %if.end.645.i
                                        #   in Loop: Header=BB6_233 Depth=1
	movl	168(%rsp), %edx         # 4-byte Reload
	incl	%edx
	testl	%ebp, %ebp
	movl	$0, %ecx
	cmovgl	%ecx, %edx
	movl	%edx, 168(%rsp)         # 4-byte Spill
	testl	%eax, %eax
	jne	.LBB6_246
# BB#237:                               # %lor.lhs.false.654.i
                                        #   in Loop: Header=BB6_233 Depth=1
	testl	%ebp, %ebp
	js	.LBB6_248
# BB#238:                               # %lor.lhs.false.654.i
                                        #   in Loop: Header=BB6_233 Depth=1
	movslq	%ebp, %rax
	movq	136(%rsp), %rcx         # 8-byte Reload
	subq	%r13, %rcx
	cmpq	%rcx, %rax
	jg	.LBB6_248
# BB#239:                               # %lor.lhs.false.654.i
                                        #   in Loop: Header=BB6_233 Depth=1
	cmpl	$4, 168(%rsp)           # 4-byte Folded Reload
	jg	.LBB6_248
# BB#240:                               # %lor.lhs.false.666.i
                                        #   in Loop: Header=BB6_233 Depth=1
	cmpl	$0, 256(%rsp)           # 4-byte Folded Reload
	je	.LBB6_241
# BB#247:                               # %land.lhs.true.668.i
                                        #   in Loop: Header=BB6_233 Depth=1
	movl	300(%rsp), %eax
	subl	%ebx, %eax
	cmpl	%eax, %ebp
	ja	.LBB6_248
.LBB6_241:                              # %for.cond.691.preheader.i
                                        #   in Loop: Header=BB6_233 Depth=1
	testl	%ebp, %ebp
	jle	.LBB6_259
# BB#242:                               # %for.body.694.lr.ph.i
                                        #   in Loop: Header=BB6_233 Depth=1
	movslq	%r15d, %r15
	xorl	%r13d, %r13d
.LBB6_243:                              # %for.body.694.i
                                        #   Parent Loop BB6_233 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, 256(%rsp)           # 4-byte Folded Reload
	je	.LBB6_258
# BB#244:                               # %if.then.696.i
                                        #   in Loop: Header=BB6_243 Depth=2
	movl	280(%rsp), %eax
	cmpl	%eax, %r15d
	jae	.LBB6_256
# BB#245:                               # %cond.true.700.i
                                        #   in Loop: Header=BB6_243 Depth=2
	movq	288(%rsp), %rax
	movq	8(%rax), %rax
	movq	(%rax,%r15,8), %rsi
	jmp	.LBB6_257
.LBB6_256:                              # %cond.false.706.i
                                        #   in Loop: Header=BB6_243 Depth=2
	movl	%r15d, %ecx
	subl	%eax, %ecx
	movq	208(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %rax
	movq	(%rax,%rcx,8), %rsi
.LBB6_257:                              # %cond.end.713.i
                                        #   in Loop: Header=BB6_243 Depth=2
	movq	%r12, %rdi
	callq	jbig2_image_clone
	movslq	%ebx, %rcx
	incl	%ebx
	movq	248(%rsp), %rdx         # 8-byte Reload
	movq	8(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movl	392(%rsp), %ebp
.LBB6_258:                              # %if.end.719.i
                                        #   in Loop: Header=BB6_243 Depth=2
	incl	%r13d
	incq	%r15
	cmpl	%ebp, %r13d
	jl	.LBB6_243
.LBB6_259:                              # %for.end.723.i
                                        #   in Loop: Header=BB6_233 Depth=1
	cmpl	$0, 256(%rsp)           # 4-byte Folded Reload
	sete	%al
	movzbl	%al, %eax
	movl	%eax, 256(%rsp)         # 4-byte Spill
	movslq	%r15d, %r13
	cmpq	%r13, 136(%rsp)         # 8-byte Folded Reload
	jg	.LBB6_233
	jmp	.LBB6_260
.LBB6_116:                              # %if.then.79.i
	movl	(%r14), %edx
	movl	296(%rsp), %r8d
	xorl	%eax, %eax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	movl	$2, %esi
	movl	$.L.str.31, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	jbig2_error
	jmp	.LBB6_117
.LBB6_102:                              # %cleanup.i
	movl	(%r14), %edx
	xorl	%eax, %eax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	movl	$2, %esi
	movl	$.L.str.28, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	jbig2_error
	xorl	%eax, %eax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 216(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	xorl	%ebp, %ebp
.LBB6_117:                              # %jbig2_sd_release.exit570.i
	movl	268(%rsp), %ebx         # 4-byte Reload
	movq	104(%rsp), %r15         # 8-byte Reload
	movq	112(%rsp), %r13         # 8-byte Reload
	jmp	.LBB6_279
.LBB6_300:                              # %if.then.68.i
	movl	(%r14), %edx
	movl	296(%rsp), %r8d
	xorl	%eax, %eax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	movl	$3, %esi
	movl	$.L.str.30, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	jbig2_error
	xorl	%eax, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	xorl	%r13d, %r13d
	movl	268(%rsp), %ebx         # 4-byte Reload
	movq	104(%rsp), %r15         # 8-byte Reload
	jmp	.LBB6_279
.LBB6_228:                              # %if.then.617.i
	movl	(%r14), %edx
	xorl	%ebp, %ebp
	movl	$3, %esi
	movl	$.L.str.58, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	jbig2_error
	jmp	.LBB6_142
.LBB6_140:                              # %if.then.142.i
	movl	(%r14), %edx
	movl	$3, %esi
	movl	$.L.str.37, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	248(%rsp), %r8d         # 4-byte Reload
	callq	jbig2_error
	jmp	.LBB6_141
.LBB6_144:                              # %if.then.150.i
	movl	(%r14), %edx
	incl	%ebx
	movl	$3, %esi
	movl	$.L.str.38, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	movq	256(%rsp), %r8          # 8-byte Reload
	movl	%ebx, %r9d
	callq	jbig2_error
	movl	%eax, 436(%rsp)
	jmp	.LBB6_141
.LBB6_248:                              # %if.else.678.i
	movl	(%r14), %edx
	testl	%ebp, %ebp
	jle	.LBB6_249
# BB#250:                               # %if.else.684.i
	movl	300(%rsp), %r9d
	movl	%ebx, (%rsp)
	movl	$3, %esi
	movl	$.L.str.61, %ecx
	xorl	%eax, %eax
	movl	%ebp, %r8d
	movq	%r12, %rdi
	callq	jbig2_error
	jmp	.LBB6_251
.LBB6_158:                              # %if.then.203.i
	movl	$3, %esi
	movl	$.L.str.40, %ecx
	jmp	.LBB6_159
.LBB6_246:                              # %if.then.675.i
	movl	(%r14), %edx
	movl	$3, %esi
	movl	$.L.str.59, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	jbig2_error
	jmp	.LBB6_251
.LBB6_230:                              # %cleanup.610.i
	xorl	%ebp, %ebp
	cmpl	$11, %ebx
	movl	268(%rsp), %ebx         # 4-byte Reload
	movq	104(%rsp), %r15         # 8-byte Reload
	je	.LBB6_261
	jmp	.LBB6_284
.LBB6_176:                              # %if.then.305.i
	movl	(%r14), %edx
	movl	$3, %esi
	movl	$.L.str.45, %ecx
	jmp	.LBB6_159
.LBB6_249:                              # %if.then.681.i
	movl	$3, %esi
	movl	$.L.str.60, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	%ebp, %r8d
	callq	jbig2_error
.LBB6_251:                              # %for.cond.preheader.i.i
	movq	248(%rsp), %rbx         # 8-byte Reload
	movl	(%rbx), %eax
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB6_255
.LBB6_252:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %rcx
	movq	(%rcx,%rbp,8), %rsi
	testq	%rsi, %rsi
	je	.LBB6_254
# BB#253:                               # %if.then.2.i.i
                                        #   in Loop: Header=BB6_252 Depth=1
	movq	%r12, %rdi
	callq	jbig2_image_release
	movl	(%rbx), %eax
.LBB6_254:                              # %for.inc.i.i
                                        #   in Loop: Header=BB6_252 Depth=1
	incq	%rbp
	cmpl	%eax, %ebp
	jb	.LBB6_252
.LBB6_255:                              # %jbig2_sd_release.exit.i
	movq	(%r12), %rdi
	movq	8(%rbx), %rsi
	callq	jbig2_free
	movq	(%r12), %rdi
	movq	%rbx, %rsi
	callq	jbig2_free
	xorl	%eax, %eax
	movq	%rax, 248(%rsp)         # 8-byte Spill
.LBB6_260:                              # %while.end.725.i
	movl	268(%rsp), %ebx         # 4-byte Reload
	movq	104(%rsp), %r15         # 8-byte Reload
	movq	248(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB6_261
.LBB6_125:                              # %if.then.115.i
	movl	$3, %esi
	movl	$.L.str.34, %ecx
	jmp	.LBB6_126
.LBB6_150:                              # %if.then.176.i
	movl	(%r14), %edx
	movl	$3, %esi
	movl	$.L.str.39, %ecx
	jmp	.LBB6_159
.LBB6_152:                              # %if.then.183.i
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	jbig2_image_release
	jmp	.LBB6_141
.LBB6_216:                              # %cleanup.597.i
	movl	(%r14), %edx
	movl	$3, %esi
	movl	$.L.str.57, %ecx
.LBB6_222:                              # %cleanup.610.thread.i
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	jbig2_error
.LBB6_223:                              # %cleanup.610.thread.i
	movq	%r12, %rdi
	movq	168(%rsp), %rsi         # 8-byte Reload
	callq	jbig2_image_release
	jmp	.LBB6_141
.LBB6_163:                              # %if.then.223.i
	movl	(%r14), %edx
	xorl	%eax, %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movl	$3, %esi
	movl	$.L.str.42, %ecx
	jmp	.LBB6_159
.LBB6_229:                              # %if.then.235.i
	movl	(%r14), %edx
	xorl	%eax, %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movl	$3, %esi
	movl	$.L.str.43, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	jbig2_error
	movl	%eax, 436(%rsp)
	movq	(%r12), %rdi
	movq	88(%rsp), %rsi          # 8-byte Reload
	callq	jbig2_free
	jmp	.LBB6_141
.LBB6_168:                              # %if.then.260.i
	movl	(%r14), %edx
	movl	$3, %esi
	movl	$.L.str.44, %ecx
.LBB6_159:                              # %cleanup.610.thread587.i
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	jbig2_error
	movl	%eax, 436(%rsp)
.LBB6_141:                              # %cleanup.610.thread.i
	xorl	%ebp, %ebp
.LBB6_142:                              # %cleanup4.i
	movl	268(%rsp), %ebx         # 4-byte Reload
	movq	104(%rsp), %r15         # 8-byte Reload
.LBB6_261:                              # %cleanup4.i
	movq	%rbp, 248(%rsp)         # 8-byte Spill
	movq	%r15, 104(%rsp)         # 8-byte Spill
	movl	%ebx, 268(%rsp)         # 4-byte Spill
	cmpq	$0, 96(%rsp)            # 8-byte Folded Reload
	je	.LBB6_266
# BB#262:                               # %if.then.729.i
	cmpl	$0, 272(%rsp)
	je	.LBB6_263
# BB#264:                               # %if.else.743.i
	movq	96(%rsp), %rbx          # 8-byte Reload
	movq	40(%rbx), %rsi
	movq	%r12, %rdi
	callq	jbig2_release_huffman_table
	movq	48(%rbx), %rsi
	movq	%r12, %rdi
	callq	jbig2_release_huffman_table
	movq	56(%rbx), %rsi
	movq	%r12, %rdi
	callq	jbig2_release_huffman_table
	movq	80(%rbx), %rsi
	movq	%r12, %rdi
	callq	jbig2_release_huffman_table
	movq	88(%rbx), %rsi
	movq	%r12, %rdi
	callq	jbig2_release_huffman_table
	movq	64(%rbx), %rsi
	movq	%r12, %rdi
	callq	jbig2_release_huffman_table
	movq	72(%rbx), %rsi
	movq	%r12, %rdi
	callq	jbig2_release_huffman_table
	jmp	.LBB6_265
.LBB6_263:                              # %if.then.732.i
	movq	96(%rsp), %rbx          # 8-byte Reload
	movq	104(%rbx), %rsi
	movq	%r12, %rdi
	callq	jbig2_arith_int_ctx_free
	movq	112(%rbx), %rsi
	movq	%r12, %rdi
	callq	jbig2_arith_int_ctx_free
	movq	120(%rbx), %rsi
	movq	%r12, %rdi
	callq	jbig2_arith_int_ctx_free
	movq	128(%rbx), %rsi
	movq	%r12, %rdi
	callq	jbig2_arith_int_ctx_free
	movq	136(%rbx), %rsi
	movq	%r12, %rdi
	callq	jbig2_arith_iaid_ctx_free
	movq	144(%rbx), %rsi
	movq	%r12, %rdi
	callq	jbig2_arith_int_ctx_free
	movq	152(%rbx), %rsi
	movq	%r12, %rdi
	callq	jbig2_arith_int_ctx_free
	movq	160(%rbx), %rsi
	movq	%r12, %rdi
	callq	jbig2_arith_int_ctx_free
	movq	168(%rbx), %rsi
	movq	%r12, %rdi
	callq	jbig2_arith_int_ctx_free
	movq	176(%rbx), %rsi
	movq	%r12, %rdi
	callq	jbig2_arith_int_ctx_free
.LBB6_265:                              # %if.end.751.i
	movq	(%r12), %rdi
	movq	%rbx, %rsi
	callq	jbig2_free
.LBB6_266:                              # %if.end.753.i
	movq	88(%rsp), %rax          # 8-byte Reload
	testq	%rax, %rax
	je	.LBB6_274
# BB#267:                               # %if.then.756.i
	movq	(%rax), %r15
	movq	%rax, %rbx
	testq	%r15, %r15
	je	.LBB6_273
# BB#268:                               # %for.cond.preheader.i.541.i
	movl	(%r15), %eax
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB6_272
.LBB6_269:                              # %for.body.i.545.i
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r15), %rcx
	movq	(%rcx,%rbp,8), %rsi
	testq	%rsi, %rsi
	je	.LBB6_271
# BB#270:                               # %if.then.2.i.547.i
                                        #   in Loop: Header=BB6_269 Depth=1
	movq	%r12, %rdi
	callq	jbig2_image_release
	movl	(%r15), %eax
.LBB6_271:                              # %for.inc.i.550.i
                                        #   in Loop: Header=BB6_269 Depth=1
	incq	%rbp
	cmpl	%eax, %ebp
	jb	.LBB6_269
.LBB6_272:                              # %for.end.i.552.i
	movq	(%r12), %rdi
	movq	8(%r15), %rsi
	callq	jbig2_free
	movq	(%r12), %rdi
	movq	%r15, %rsi
	callq	jbig2_free
.LBB6_273:                              # %jbig2_sd_release.exit553.i
	movq	(%r12), %rdi
	movq	%rbx, %rsi
	callq	jbig2_free
.LBB6_274:                              # %for.cond.preheader.i.558.i
	movq	208(%rsp), %rbx         # 8-byte Reload
	movl	(%rbx), %eax
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB6_278
.LBB6_275:                              # %for.body.i.562.i
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %rcx
	movq	(%rcx,%rbp,8), %rsi
	testq	%rsi, %rsi
	je	.LBB6_277
# BB#276:                               # %if.then.2.i.564.i
                                        #   in Loop: Header=BB6_275 Depth=1
	movq	%r12, %rdi
	callq	jbig2_image_release
	movl	(%rbx), %eax
.LBB6_277:                              # %for.inc.i.567.i
                                        #   in Loop: Header=BB6_275 Depth=1
	incq	%rbp
	cmpl	%eax, %ebp
	jb	.LBB6_275
.LBB6_278:                              # %for.end.i.569.i
	movq	(%r12), %rdi
	movq	8(%rbx), %rsi
	callq	jbig2_free
	movq	(%r12), %rdi
	movq	%rbx, %rsi
	callq	jbig2_free
	movl	268(%rsp), %ebx         # 4-byte Reload
	movq	104(%rsp), %r15         # 8-byte Reload
	movq	112(%rsp), %r13         # 8-byte Reload
	movq	152(%rsp), %rbp         # 8-byte Reload
.LBB6_279:                              # %jbig2_sd_release.exit570.i
	movq	272(%rsp), %rax
	testl	%eax, %eax
	je	.LBB6_282
# BB#280:                               # %jbig2_sd_release.exit570.i
	movabsq	$4294967296, %rcx       # imm = 0x100000000
	cmpq	%rcx, %rax
	jae	.LBB6_282
# BB#281:                               # %if.then.765.i
	movq	(%r12), %rdi
	movq	160(%rsp), %rsi         # 8-byte Reload
	callq	jbig2_free
.LBB6_282:                              # %if.end.767.i
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	jbig2_release_huffman_table
	movq	%r12, %rdi
	movq	176(%rsp), %rsi         # 8-byte Reload
	callq	jbig2_release_huffman_table
	movq	%r12, %rdi
	movq	216(%rsp), %rsi         # 8-byte Reload
	callq	jbig2_huffman_free
	movq	%r12, %rdi
	movq	120(%rsp), %rsi         # 8-byte Reload
	callq	jbig2_arith_iaid_ctx_free
	movq	%r12, %rdi
	movq	144(%rsp), %rsi         # 8-byte Reload
	callq	jbig2_arith_int_ctx_free
	movq	%r12, %rdi
	movq	128(%rsp), %rsi         # 8-byte Reload
	callq	jbig2_arith_int_ctx_free
.LBB6_283:                              # %cleanup1.i
	movq	%r12, %rdi
	movq	232(%rsp), %rsi         # 8-byte Reload
	callq	jbig2_word_stream_buf_free
	movq	(%r12), %rdi
	movq	224(%rsp), %rsi         # 8-byte Reload
	callq	jbig2_free
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	jbig2_arith_int_ctx_free
	movq	%r12, %rdi
	movq	200(%rsp), %rsi         # 8-byte Reload
	callq	jbig2_arith_int_ctx_free
	movq	%r12, %rdi
	movq	192(%rsp), %rsi         # 8-byte Reload
	callq	jbig2_arith_int_ctx_free
	movq	%r12, %rdi
	movq	184(%rsp), %rsi         # 8-byte Reload
	callq	jbig2_arith_int_ctx_free
	movq	248(%rsp), %rbp         # 8-byte Reload
.LBB6_284:                              # %jbig2_decode_symbol_dict.exit
	movq	%rbp, 40(%r14)
	movq	(%r12), %rdi
	movq	240(%rsp), %rsi         # 8-byte Reload
	callq	jbig2_free
	movq	(%r12), %rdi
	movq	%r15, %rsi
	callq	jbig2_free
	testb	$2, %bh
	je	.LBB6_287
# BB#285:                               # %if.then.271
	movl	(%r14), %edx
	movl	$2, %esi
	movl	$.L.str.24, %ecx
	jmp	.LBB6_286
.LBB6_123:                              # %if.then.108.i
	movl	(%r14), %edx
	movl	$3, %esi
	movl	$.L.str.33, %ecx
.LBB6_126:                              # %cleanup.610.thread585.i
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	jbig2_error
	movl	%eax, 436(%rsp)
	xorl	%eax, %eax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	jmp	.LBB6_274
.LBB6_137:                              # %if.then.471.i
	movl	(%r14), %edx
	movl	$3, %esi
	movl	$.L.str.51, %ecx
	jmp	.LBB6_138
.LBB6_207:                              # %if.then.478.i
	movl	(%r14), %edx
	movl	$3, %esi
	movl	$.L.str.52, %ecx
.LBB6_138:                              # %cleanup.610.thread.i
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	jbig2_error
	jmp	.LBB6_141
.LBB6_219:                              # %if.then.548.i
	movq	216(%rsp), %rdi         # 8-byte Reload
	callq	jbig2_huffman_offset
	cltq
	movq	80(%rsp), %r9           # 8-byte Reload
	subq	%rax, %r9
	movl	$3, %esi
	movl	$.L.str.53, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	256(%rsp), %edx         # 4-byte Reload
	movl	40(%rsp), %r8d          # 4-byte Reload
	callq	jbig2_error
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	jbig2_image_release
	jmp	.LBB6_141
.LBB6_221:                              # %if.then.567.i
	movl	(%r14), %edx
	movl	$3, %esi
	movl	$.L.str.56, %ecx
	jmp	.LBB6_222
.LBB6_217:                              # %cleanup.534.i
	movq	216(%rsp), %rdi         # 8-byte Reload
	callq	jbig2_huffman_offset
	cltq
	movq	80(%rsp), %r9           # 8-byte Reload
	subq	%rax, %r9
	movl	$3, %esi
	movl	$.L.str.53, %ecx
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	256(%rsp), %edx         # 4-byte Reload
	movl	40(%rsp), %r8d          # 4-byte Reload
	callq	jbig2_error
	jmp	.LBB6_223
.Lfunc_end6:
	.size	jbig2_symbol_dictionary, .Lfunc_end6-jbig2_symbol_dictionary
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Negative number of symbols in symbol dict: %d"
	.size	.L.str, 46

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"unable to allocate new empty symbol dict"
	.size	.L.str.1, 41

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"unable to allocate glyphs for new empty symbol dict"
	.size	.L.str.2, 52

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"failed to allocate referred list of symbol dictionaries"
	.size	.L.str.3, 56

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"counted %d symbol dictionaries but built a list with %d.\n"
	.size	.L.str.4, 58

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"failed to allocate new symbol dictionary"
	.size	.L.str.5, 41

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Custom DH huffman table not found (%d)"
	.size	.L.str.6, 39

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"symbol dictionary specified invalid huffman table"
	.size	.L.str.7, 50

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"failed to allocate DH huffman table"
	.size	.L.str.8, 36

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Custom DW huffman table not found (%d)"
	.size	.L.str.9, 39

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"failed to allocate DW huffman table"
	.size	.L.str.10, 36

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Custom BMSIZE huffman table not found (%d)"
	.size	.L.str.11, 43

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"failed to allocate BMSIZE huffman table"
	.size	.L.str.12, 40

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Custom REFAGG huffman table not found (%d)"
	.size	.L.str.13, 43

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"failed to allocate REFAGG huffman table"
	.size	.L.str.14, 40

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"SDHUFF is zero, but contrary to spec SDHUFFDH is not."
	.size	.L.str.15, 54

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"SDHUFF is zero, but contrary to spec SDHUFFDW is not."
	.size	.L.str.16, 54

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"bitmap coding context is used (NYI) symbol data likely to be garbage!"
	.size	.L.str.17, 70

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"symbol dictionary, flags=%04x, %u exported syms, %u new syms"
	.size	.L.str.18, 61

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"failed to allocate dicts in symbol dictionary"
	.size	.L.str.19, 46

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"failed to allocate symbol array in symbol dictionary"
	.size	.L.str.20, 53

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"segment marks bitmap coding context as used (NYI)"
	.size	.L.str.21, 50

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"failed to allocate GB_stats in jbig2_symbol_dictionary"
	.size	.L.str.22, 55

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"failed to allocate GR_stats in jbig2_symbol_dictionary"
	.size	.L.str.23, 55

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"segment marks bitmap coding context as retained (NYI)"
	.size	.L.str.24, 54

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Segment too short"
	.size	.L.str.25, 18

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"failed to allocate ws in jbig2_decode_symbol_dict"
	.size	.L.str.26, 50

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"failed to allocate as in jbig2_decode_symbol_dict"
	.size	.L.str.27, 50

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"failed to allocate storage for symbol bitmap"
	.size	.L.str.28, 45

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"huffman coded symbol dictionary"
	.size	.L.str.29, 32

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"could not allocate storage for (%u) symbol widths"
	.size	.L.str.30, 50

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"could not allocate storage for (%u) new symbols"
	.size	.L.str.31, 48

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"error or OOB decoding height class delta (%d)\n"
	.size	.L.str.32, 47

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"prevent DOS while decoding height classes"
	.size	.L.str.33, 42

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Invalid HCHEIGHT value"
	.size	.L.str.34, 23

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"decoding height class %d with %d syms decoded"
	.size	.L.str.35, 46

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	" OOB signals end of height class %d"
	.size	.L.str.36, 36

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"No OOB signalling end of height class %d"
	.size	.L.str.37, 41

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Invalid SYMWIDTH value (%d) at symbol %d"
	.size	.L.str.38, 41

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"failed to allocate image in jbig2_decode_symbol_dict"
	.size	.L.str.39, 53

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"invalid number of symbols or OOB in aggregate glyph"
	.size	.L.str.40, 52

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"aggregate symbol coding (%d instances)"
	.size	.L.str.41, 39

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Out of memory allocating dictionary array"
	.size	.L.str.42, 42

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Out of memory allocating symbol dictionary"
	.size	.L.str.43, 43

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Out of memory creating text region params"
	.size	.L.str.44, 42

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Out of memory creating symbol image"
	.size	.L.str.45, 36

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"failed to decode data"
	.size	.L.str.46, 22

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"refinement references unknown symbol %d"
	.size	.L.str.47, 40

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"symbol is a refinement of id %d with the refinement applied at (%d,%d)"
	.size	.L.str.48, 71

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"missing glyph %d/%d!"
	.size	.L.str.49, 21

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"decoded symbol %u of %u (%ux%u)"
	.size	.L.str.50, 32

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"error decoding size of collective bitmap!"
	.size	.L.str.51, 42

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"could not allocate collective bitmap image!"
	.size	.L.str.52, 44

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"not enough data for decoding (%d/%d)"
	.size	.L.str.53, 37

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"reading %dx%d uncompressed bitmap for %d symbols (%d bytes)"
	.size	.L.str.54, 60

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"reading %dx%d collective bitmap for %d symbols (%d bytes)"
	.size	.L.str.55, 58

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"error decoding MMR bitmap image!"
	.size	.L.str.56, 33

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"failed to copy the collective bitmap into symbol dictionary"
	.size	.L.str.57, 60

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"failed to allocate symbols exported from symbols dictionary"
	.size	.L.str.58, 60

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"failed to decode exrunlength for exported symbols"
	.size	.L.str.59, 50

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"runlength too small in export symbol table (%d <= 0)\n"
	.size	.L.str.60, 54

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"runlength too large in export symbol table (%d > %d - %d)\n"
	.size	.L.str.61, 59


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
