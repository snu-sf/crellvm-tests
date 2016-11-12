	.text
	.file	"jbig2_image.bc"
	.globl	jbig2_image_new
	.align	16, 0x90
	.type	jbig2_image_new,@function
jbig2_image_new:                        # @jbig2_image_new
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
	movl	%edx, %r14d
	movl	%esi, %r12d
	movq	%rdi, %r15
	movq	(%r15), %rdi
	movl	$1, %esi
	movl	$32, %edx
	callq	jbig2_alloc
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB0_1
# BB#2:                                 # %if.end
	leal	-1(%r12), %ebx
	sarl	$3, %ebx
	incl	%ebx
	movslq	%ebx, %rcx
	movslq	%r14d, %rax
	imulq	%rcx, %rax
	movslq	%eax, %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_3
# BB#5:                                 # %if.end.10
	shlq	$32, %rax
	movq	(%r15), %rdi
	movabsq	$4294967296, %rsi       # imm = 0x100000000
	addq	%rax, %rsi
	sarq	$32, %rsi
	movl	$1, %edx
	callq	jbig2_alloc
	movq	%rax, 16(%rbp)
	testq	%rax, %rax
	je	.LBB0_6
# BB#7:                                 # %if.end.22
	movl	%r12d, (%rbp)
	movl	%r14d, 4(%rbp)
	movl	%ebx, 8(%rbp)
	movl	$1, 24(%rbp)
	movq	%rbp, %r12
	jmp	.LBB0_8
.LBB0_1:                                # %if.then
	xorl	%r12d, %r12d
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str, %ecx
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	jbig2_error
	jmp	.LBB0_8
.LBB0_3:                                # %if.then.7
	xorl	%r12d, %r12d
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str.1, %ecx
	jmp	.LBB0_4
.LBB0_6:                                # %if.then.19
	xorl	%r12d, %r12d
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str.2, %ecx
.LBB0_4:                                # %cleanup
	xorl	%eax, %eax
	movl	%ebx, %r8d
	movq	%r15, %rdi
	movl	%r14d, %r9d
	callq	jbig2_error
	movq	(%r15), %rdi
	movq	%rbp, %rsi
	callq	jbig2_free
.LBB0_8:                                # %cleanup
	movq	%r12, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	jbig2_image_new, .Lfunc_end0-jbig2_image_new
	.cfi_endproc

	.globl	jbig2_image_clone
	.align	16, 0x90
	.type	jbig2_image_clone,@function
jbig2_image_clone:                      # @jbig2_image_clone
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rsi, %rsi
	je	.LBB1_2
# BB#1:                                 # %if.then
	incl	24(%rsi)
.LBB1_2:                                # %if.end
	movq	%rsi, %rax
	retq
.Lfunc_end1:
	.size	jbig2_image_clone, .Lfunc_end1-jbig2_image_clone
	.cfi_endproc

	.globl	jbig2_image_release
	.align	16, 0x90
	.type	jbig2_image_release,@function
jbig2_image_release:                    # @jbig2_image_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp12:
	.cfi_def_cfa_offset 32
.Ltmp13:
	.cfi_offset %rbx, -24
.Ltmp14:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%rbx, %rbx
	je	.LBB2_2
# BB#1:                                 # %if.end
	decl	24(%rbx)
	je	.LBB2_3
.LBB2_2:                                # %if.end.3
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB2_3:                                # %jbig2_image_free.exit
	movq	(%r14), %rdi
	movq	16(%rbx), %rsi
	callq	jbig2_free
	movq	(%r14), %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	jbig2_free              # TAILCALL
.Lfunc_end2:
	.size	jbig2_image_release, .Lfunc_end2-jbig2_image_release
	.cfi_endproc

	.globl	jbig2_image_free
	.align	16, 0x90
	.type	jbig2_image_free,@function
jbig2_image_free:                       # @jbig2_image_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp17:
	.cfi_def_cfa_offset 32
.Ltmp18:
	.cfi_offset %rbx, -24
.Ltmp19:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%rbx, %rbx
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	(%r14), %rdi
	movq	16(%rbx), %rsi
	callq	jbig2_free
.LBB3_2:                                # %if.end
	movq	(%r14), %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	jbig2_free              # TAILCALL
.Lfunc_end3:
	.size	jbig2_image_free, .Lfunc_end3-jbig2_image_free
	.cfi_endproc

	.globl	jbig2_image_resize
	.align	16, 0x90
	.type	jbig2_image_resize,@function
jbig2_image_resize:                     # @jbig2_image_resize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 32
.Ltmp23:
	.cfi_offset %rbx, -32
.Ltmp24:
	.cfi_offset %r14, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	cmpl	%edx, (%rbp)
	jne	.LBB4_8
# BB#1:                                 # %if.then
	movslq	8(%rbp), %r8
	movslq	%r14d, %rdx
	imulq	%r8, %rdx
	movslq	%edx, %rax
	cmpq	%rax, %rdx
	jne	.LBB4_2
# BB#3:                                 # %if.end
	movq	(%rbx), %rdi
	movq	16(%rbp), %rsi
	movl	$1, %ecx
	callq	jbig2_realloc
	movq	%rax, 16(%rbp)
	testq	%rax, %rax
	je	.LBB4_4
# BB#5:                                 # %if.end.18
	movl	4(%rbp), %ecx
	cmpl	%r14d, %ecx
	jge	.LBB4_7
# BB#6:                                 # %if.then.22
	movl	8(%rbp), %edx
	movl	%r14d, %esi
	subl	%ecx, %esi
	imull	%edx, %esi
	imull	%ecx, %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movslq	%esi, %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
.LBB4_7:                                # %if.end.32
	movl	%r14d, 4(%rbp)
	jmp	.LBB4_10
.LBB4_8:                                # %if.else
	movl	$2, %esi
	movl	$-1, %edx
	movl	$.L.str.5, %ecx
.LBB4_9:                                # %return
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	jbig2_error
	jmp	.LBB4_10
.LBB4_2:                                # %if.then.7
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str.3, %ecx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%r14d, %r9d
	callq	jbig2_error
.LBB4_10:                               # %return
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB4_4:                                # %if.then.16
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str.4, %ecx
	jmp	.LBB4_9
.Lfunc_end4:
	.size	jbig2_image_resize, .Lfunc_end4-jbig2_image_resize
	.cfi_endproc

	.globl	jbig2_image_compose_unopt
	.align	16, 0x90
	.type	jbig2_image_compose_unopt,@function
jbig2_image_compose_unopt:              # @jbig2_image_compose_unopt
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
.Ltmp32:
	.cfi_offset %rbx, -56
.Ltmp33:
	.cfi_offset %r12, -48
.Ltmp34:
	.cfi_offset %r13, -40
.Ltmp35:
	.cfi_offset %r14, -32
.Ltmp36:
	.cfi_offset %r15, -24
.Ltmp37:
	.cfi_offset %rbp, -16
	movl	%r8d, %ebp
	sarl	$31, %ebp
	movq	%rbp, -16(%rsp)         # 8-byte Spill
	movl	%ecx, %eax
	sarl	$31, %eax
	xorl	%ebx, %ebx
	testl	%ecx, %ecx
	movl	%ecx, %edi
	cmovsl	%ebx, %edi
	andl	%ecx, %eax
	addl	(%rdx), %eax
	testl	%r8d, %r8d
	cmovnsl	%r8d, %ebx
	movq	%rbx, -24(%rsp)         # 8-byte Spill
	andl	%r8d, %ebp
	addl	4(%rdx), %ebp
	leal	(%rax,%rdi), %r10d
	movl	(%rsi), %r14d
	movl	4(%rsi), %r11d
	movl	%r14d, %r15d
	subl	%edi, %r15d
	cmpl	%r14d, %r10d
	cmovll	%eax, %r15d
	leal	(%rbp,%rbx), %eax
	movl	%r11d, %edi
	subl	%ebx, %edi
	cmpl	%r11d, %eax
	cmovll	%ebp, %edi
	movl	%edi, -4(%rsp)          # 4-byte Spill
	movl	%r9d, %eax
	cmpl	$4, %r9d
	ja	.LBB5_94
# BB#1:                                 # %entry
	negl	%r8d
	movq	-16(%rsp), %rdi         # 8-byte Reload
	andl	%r8d, %edi
	movq	%rdi, -16(%rsp)         # 8-byte Spill
	jmpq	*.LJTI5_0(,%rax,8)
.LBB5_75:                               # %for.cond.preheader
	cmpl	$0, -4(%rsp)            # 4-byte Folded Reload
	jle	.LBB5_94
# BB#76:                                # %for.cond.25.preheader.lr.ph
	xorl	%r8d, %r8d
	testl	%ecx, %ecx
	movl	$0, %r9d
	cmovnsl	%ecx, %r9d
	movl	%r9d, %r10d
	subl	%ecx, %r10d
	.align	16, 0x90
.LBB5_77:                               # %for.cond.25.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_79 Depth 2
	testl	%r15d, %r15d
	jle	.LBB5_93
# BB#78:                                # %for.body.27.lr.ph
                                        #   in Loop: Header=BB5_77 Depth=1
	movq	-24(%rsp), %rax         # 8-byte Reload
	leal	(%r8,%rax), %r13d
	movq	-16(%rsp), %rax         # 8-byte Reload
	leal	(%r8,%rax), %r12d
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB5_79:                               # %for.body.27
                                        #   Parent Loop BB5_77 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	(%r9,%rbx), %edi
	movl	%r10d, %eax
	addl	%ebx, %eax
	movl	$0, %eax
	js	.LBB5_84
# BB#80:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB5_79 Depth=2
	leal	(%r10,%rbx), %ecx
	cmpl	%ecx, (%rdx)
	movl	$0, %eax
	jle	.LBB5_84
# BB#81:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB5_79 Depth=2
	testl	%r12d, %r12d
	movl	$0, %eax
	js	.LBB5_84
# BB#82:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB5_79 Depth=2
	cmpl	%r12d, 4(%rdx)
	movl	$0, %eax
	jle	.LBB5_84
# BB#83:                                # %if.end.6.i
                                        #   in Loop: Header=BB5_79 Depth=2
	movl	%ecx, %eax
	sarl	$3, %eax
	movl	8(%rdx), %ebp
	imull	%r12d, %ebp
	addl	%eax, %ebp
	notl	%ecx
	andl	$7, %ecx
	movslq	%ebp, %rax
	movq	16(%rdx), %rbp
	movzbl	(%rbp,%rax), %eax
	shrl	%cl, %eax
	andl	$1, %eax
.LBB5_84:                               # %jbig2_image_get_pixel.exit
                                        #   in Loop: Header=BB5_79 Depth=2
	testl	%edi, %edi
	js	.LBB5_92
# BB#85:                                # %lor.lhs.false.i.430
                                        #   in Loop: Header=BB5_79 Depth=2
	cmpl	%edi, (%rsi)
	jle	.LBB5_92
# BB#86:                                # %if.end.i.434
                                        #   in Loop: Header=BB5_79 Depth=2
	movl	4(%rsi), %r11d
	movl	%edi, %ecx
	notl	%ecx
	sarl	$3, %edi
	movl	8(%rsi), %ebp
	imull	%r13d, %ebp
	addl	%edi, %ebp
	andl	$7, %ecx
	xorl	%edi, %edi
	testl	%r13d, %r13d
	js	.LBB5_89
# BB#87:                                # %if.end.i.434
                                        #   in Loop: Header=BB5_79 Depth=2
	cmpl	%r13d, %r11d
	jle	.LBB5_89
# BB#88:                                # %if.end.6.i.441
                                        #   in Loop: Header=BB5_79 Depth=2
	movslq	%ebp, %rdi
	movq	16(%rsi), %r14
	movzbl	(%r14,%rdi), %edi
	shrl	%cl, %edi
	andl	$1, %edi
.LBB5_89:                               # %if.end.i.400
                                        #   in Loop: Header=BB5_79 Depth=2
	testl	%r13d, %r13d
	js	.LBB5_92
# BB#90:                                # %if.end.i.400
                                        #   in Loop: Header=BB5_79 Depth=2
	cmpl	%r13d, %r11d
	jle	.LBB5_92
# BB#91:                                # %if.end.6.i.417
                                        #   in Loop: Header=BB5_79 Depth=2
	orl	%eax, %edi
	movl	$-2, %eax
	roll	%cl, %eax
	movslq	%ebp, %r11
	movq	16(%rsi), %r14
	movzbl	(%r14,%r11), %ebp
	andl	%eax, %ebp
	shll	%cl, %edi
	orl	%ebp, %edi
	movb	%dil, (%r14,%r11)
	.align	16, 0x90
.LBB5_92:                               # %jbig2_image_set_pixel.exit419
                                        #   in Loop: Header=BB5_79 Depth=2
	incl	%ebx
	cmpl	%r15d, %ebx
	jl	.LBB5_79
.LBB5_93:                               # %for.inc.36
                                        #   in Loop: Header=BB5_77 Depth=1
	incl	%r8d
	cmpl	-4(%rsp), %r8d          # 4-byte Folded Reload
	jl	.LBB5_77
	jmp	.LBB5_94
.LBB5_56:                               # %for.cond.40.preheader
	cmpl	$0, -4(%rsp)            # 4-byte Folded Reload
	jle	.LBB5_94
# BB#57:                                # %for.cond.43.preheader.lr.ph
	xorl	%r8d, %r8d
	testl	%ecx, %ecx
	movl	$0, %r9d
	cmovnsl	%ecx, %r9d
	movl	%r9d, %r10d
	subl	%ecx, %r10d
	.align	16, 0x90
.LBB5_58:                               # %for.cond.43.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_60 Depth 2
	testl	%r15d, %r15d
	jle	.LBB5_74
# BB#59:                                # %for.body.45.lr.ph
                                        #   in Loop: Header=BB5_58 Depth=1
	movq	-24(%rsp), %rax         # 8-byte Reload
	leal	(%r8,%rax), %r13d
	movq	-16(%rsp), %rax         # 8-byte Reload
	leal	(%r8,%rax), %r12d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB5_60:                               # %for.body.45
                                        #   Parent Loop BB5_58 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	(%r9,%rbp), %edi
	movl	%r10d, %eax
	addl	%ebp, %eax
	movl	$0, %eax
	js	.LBB5_65
# BB#61:                                # %lor.lhs.false.i.378
                                        #   in Loop: Header=BB5_60 Depth=2
	leal	(%r10,%rbp), %ecx
	cmpl	%ecx, (%rdx)
	movl	$0, %eax
	jle	.LBB5_65
# BB#62:                                # %lor.lhs.false.i.378
                                        #   in Loop: Header=BB5_60 Depth=2
	testl	%r12d, %r12d
	movl	$0, %eax
	js	.LBB5_65
# BB#63:                                # %lor.lhs.false.i.378
                                        #   in Loop: Header=BB5_60 Depth=2
	cmpl	%r12d, 4(%rdx)
	movl	$0, %eax
	jle	.LBB5_65
# BB#64:                                # %if.end.6.i.389
                                        #   in Loop: Header=BB5_60 Depth=2
	movl	%ecx, %eax
	sarl	$3, %eax
	movl	8(%rdx), %ebx
	imull	%r12d, %ebx
	addl	%eax, %ebx
	notl	%ecx
	andl	$7, %ecx
	movslq	%ebx, %rax
	movq	16(%rdx), %rbx
	movzbl	(%rbx,%rax), %eax
	shrl	%cl, %eax
	andl	$1, %eax
.LBB5_65:                               # %jbig2_image_get_pixel.exit391
                                        #   in Loop: Header=BB5_60 Depth=2
	testl	%edi, %edi
	js	.LBB5_73
# BB#66:                                # %lor.lhs.false.i.354
                                        #   in Loop: Header=BB5_60 Depth=2
	cmpl	%edi, (%rsi)
	jle	.LBB5_73
# BB#67:                                # %if.end.i.358
                                        #   in Loop: Header=BB5_60 Depth=2
	movl	4(%rsi), %r11d
	movl	%edi, %ecx
	notl	%ecx
	sarl	$3, %edi
	movl	8(%rsi), %ebx
	imull	%r13d, %ebx
	addl	%edi, %ebx
	andl	$7, %ecx
	xorl	%edi, %edi
	testl	%r13d, %r13d
	js	.LBB5_70
# BB#68:                                # %if.end.i.358
                                        #   in Loop: Header=BB5_60 Depth=2
	cmpl	%r13d, %r11d
	jle	.LBB5_70
# BB#69:                                # %if.end.6.i.365
                                        #   in Loop: Header=BB5_60 Depth=2
	movslq	%ebx, %r14
	movq	16(%rsi), %rdi
	movzbl	(%rdi,%r14), %edi
	shrl	%cl, %edi
	andl	$1, %edi
.LBB5_70:                               # %if.end.i.324
                                        #   in Loop: Header=BB5_60 Depth=2
	testl	%r13d, %r13d
	js	.LBB5_73
# BB#71:                                # %if.end.i.324
                                        #   in Loop: Header=BB5_60 Depth=2
	cmpl	%r13d, %r11d
	jle	.LBB5_73
# BB#72:                                # %if.end.6.i.341
                                        #   in Loop: Header=BB5_60 Depth=2
	andl	%eax, %edi
	movl	$-2, %eax
	roll	%cl, %eax
	movslq	%ebx, %r11
	movq	16(%rsi), %r14
	movzbl	(%r14,%r11), %ebx
	andl	%eax, %ebx
	shll	%cl, %edi
	orl	%ebx, %edi
	movb	%dil, (%r14,%r11)
	.align	16, 0x90
.LBB5_73:                               # %jbig2_image_set_pixel.exit343
                                        #   in Loop: Header=BB5_60 Depth=2
	incl	%ebp
	cmpl	%r15d, %ebp
	jl	.LBB5_60
.LBB5_74:                               # %for.inc.58
                                        #   in Loop: Header=BB5_58 Depth=1
	incl	%r8d
	cmpl	-4(%rsp), %r8d          # 4-byte Folded Reload
	jl	.LBB5_58
	jmp	.LBB5_94
.LBB5_37:                               # %for.cond.62.preheader
	cmpl	$0, -4(%rsp)            # 4-byte Folded Reload
	jle	.LBB5_94
# BB#38:                                # %for.cond.65.preheader.lr.ph
	xorl	%r8d, %r8d
	testl	%ecx, %ecx
	movl	$0, %r9d
	cmovnsl	%ecx, %r9d
	movl	%r9d, %r10d
	subl	%ecx, %r10d
	.align	16, 0x90
.LBB5_39:                               # %for.cond.65.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_41 Depth 2
	testl	%r15d, %r15d
	jle	.LBB5_55
# BB#40:                                # %for.body.67.lr.ph
                                        #   in Loop: Header=BB5_39 Depth=1
	movq	-24(%rsp), %rax         # 8-byte Reload
	leal	(%r8,%rax), %r13d
	movq	-16(%rsp), %rax         # 8-byte Reload
	leal	(%r8,%rax), %r12d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB5_41:                               # %for.body.67
                                        #   Parent Loop BB5_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	(%r9,%rbp), %edi
	movl	%r10d, %eax
	addl	%ebp, %eax
	movl	$0, %eax
	js	.LBB5_46
# BB#42:                                # %lor.lhs.false.i.302
                                        #   in Loop: Header=BB5_41 Depth=2
	leal	(%r10,%rbp), %ecx
	cmpl	%ecx, (%rdx)
	movl	$0, %eax
	jle	.LBB5_46
# BB#43:                                # %lor.lhs.false.i.302
                                        #   in Loop: Header=BB5_41 Depth=2
	testl	%r12d, %r12d
	movl	$0, %eax
	js	.LBB5_46
# BB#44:                                # %lor.lhs.false.i.302
                                        #   in Loop: Header=BB5_41 Depth=2
	cmpl	%r12d, 4(%rdx)
	movl	$0, %eax
	jle	.LBB5_46
# BB#45:                                # %if.end.6.i.313
                                        #   in Loop: Header=BB5_41 Depth=2
	movl	%ecx, %eax
	sarl	$3, %eax
	movl	8(%rdx), %ebx
	imull	%r12d, %ebx
	addl	%eax, %ebx
	notl	%ecx
	andl	$7, %ecx
	movslq	%ebx, %rax
	movq	16(%rdx), %rbx
	movzbl	(%rbx,%rax), %eax
	shrl	%cl, %eax
	andl	$1, %eax
.LBB5_46:                               # %jbig2_image_get_pixel.exit315
                                        #   in Loop: Header=BB5_41 Depth=2
	testl	%edi, %edi
	js	.LBB5_54
# BB#47:                                # %lor.lhs.false.i.278
                                        #   in Loop: Header=BB5_41 Depth=2
	cmpl	%edi, (%rsi)
	jle	.LBB5_54
# BB#48:                                # %if.end.i.282
                                        #   in Loop: Header=BB5_41 Depth=2
	movl	4(%rsi), %r11d
	movl	%edi, %ecx
	notl	%ecx
	sarl	$3, %edi
	movl	8(%rsi), %ebx
	imull	%r13d, %ebx
	addl	%edi, %ebx
	andl	$7, %ecx
	xorl	%edi, %edi
	testl	%r13d, %r13d
	js	.LBB5_51
# BB#49:                                # %if.end.i.282
                                        #   in Loop: Header=BB5_41 Depth=2
	cmpl	%r13d, %r11d
	jle	.LBB5_51
# BB#50:                                # %if.end.6.i.289
                                        #   in Loop: Header=BB5_41 Depth=2
	movslq	%ebx, %r14
	movq	16(%rsi), %rdi
	movzbl	(%rdi,%r14), %edi
	shrl	%cl, %edi
	andl	$1, %edi
.LBB5_51:                               # %if.end.i.248
                                        #   in Loop: Header=BB5_41 Depth=2
	testl	%r13d, %r13d
	js	.LBB5_54
# BB#52:                                # %if.end.i.248
                                        #   in Loop: Header=BB5_41 Depth=2
	cmpl	%r13d, %r11d
	jle	.LBB5_54
# BB#53:                                # %if.end.6.i.265
                                        #   in Loop: Header=BB5_41 Depth=2
	xorl	%eax, %edi
	movl	$-2, %eax
	roll	%cl, %eax
	movslq	%ebx, %r11
	movq	16(%rsi), %r14
	movzbl	(%r14,%r11), %ebx
	andl	%eax, %ebx
	shll	%cl, %edi
	orl	%ebx, %edi
	movb	%dil, (%r14,%r11)
	.align	16, 0x90
.LBB5_54:                               # %jbig2_image_set_pixel.exit267
                                        #   in Loop: Header=BB5_41 Depth=2
	incl	%ebp
	cmpl	%r15d, %ebp
	jl	.LBB5_41
.LBB5_55:                               # %for.inc.80
                                        #   in Loop: Header=BB5_39 Depth=1
	incl	%r8d
	cmpl	-4(%rsp), %r8d          # 4-byte Folded Reload
	jl	.LBB5_39
	jmp	.LBB5_94
.LBB5_18:                               # %for.cond.84.preheader
	cmpl	$0, -4(%rsp)            # 4-byte Folded Reload
	jle	.LBB5_94
# BB#19:                                # %for.cond.87.preheader.lr.ph
	xorl	%r8d, %r8d
	testl	%ecx, %ecx
	movl	$0, %r9d
	cmovnsl	%ecx, %r9d
	movl	%r9d, %r11d
	subl	%ecx, %r11d
	.align	16, 0x90
.LBB5_20:                               # %for.cond.87.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_22 Depth 2
	testl	%r15d, %r15d
	jle	.LBB5_36
# BB#21:                                # %for.body.89.lr.ph
                                        #   in Loop: Header=BB5_20 Depth=1
	movq	-24(%rsp), %rax         # 8-byte Reload
	leal	(%r8,%rax), %r13d
	movq	-16(%rsp), %rax         # 8-byte Reload
	leal	(%r8,%rax), %r12d
	xorl	%eax, %eax
	.align	16, 0x90
.LBB5_22:                               # %for.body.89
                                        #   Parent Loop BB5_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	(%r9,%rax), %edi
	movl	%r11d, %ecx
	addl	%eax, %ecx
	movl	$0, %ebp
	js	.LBB5_27
# BB#23:                                # %lor.lhs.false.i.226
                                        #   in Loop: Header=BB5_22 Depth=2
	leal	(%r11,%rax), %ecx
	cmpl	%ecx, (%rdx)
	movl	$0, %ebp
	jle	.LBB5_27
# BB#24:                                # %lor.lhs.false.i.226
                                        #   in Loop: Header=BB5_22 Depth=2
	testl	%r12d, %r12d
	movl	$0, %ebp
	js	.LBB5_27
# BB#25:                                # %lor.lhs.false.i.226
                                        #   in Loop: Header=BB5_22 Depth=2
	cmpl	%r12d, 4(%rdx)
	movl	$0, %ebp
	jle	.LBB5_27
# BB#26:                                # %if.end.6.i.237
                                        #   in Loop: Header=BB5_22 Depth=2
	movl	%ecx, %ebp
	sarl	$3, %ebp
	movl	8(%rdx), %ebx
	imull	%r12d, %ebx
	addl	%ebp, %ebx
	notl	%ecx
	andl	$7, %ecx
	movslq	%ebx, %rbp
	movq	16(%rdx), %rbx
	movzbl	(%rbx,%rbp), %ebp
	shrl	%cl, %ebp
	andl	$1, %ebp
.LBB5_27:                               # %jbig2_image_get_pixel.exit239
                                        #   in Loop: Header=BB5_22 Depth=2
	testl	%edi, %edi
	js	.LBB5_35
# BB#28:                                # %lor.lhs.false.i.202
                                        #   in Loop: Header=BB5_22 Depth=2
	cmpl	%edi, (%rsi)
	jle	.LBB5_35
# BB#29:                                # %if.end.i.206
                                        #   in Loop: Header=BB5_22 Depth=2
	movl	4(%rsi), %ebx
	movl	%edi, %ecx
	notl	%ecx
	sarl	$3, %edi
	movl	8(%rsi), %r10d
	imull	%r13d, %r10d
	addl	%edi, %r10d
	andl	$7, %ecx
	xorl	%edi, %edi
	testl	%r13d, %r13d
	js	.LBB5_32
# BB#30:                                # %if.end.i.206
                                        #   in Loop: Header=BB5_22 Depth=2
	cmpl	%r13d, %ebx
	jle	.LBB5_32
# BB#31:                                # %if.end.6.i.213
                                        #   in Loop: Header=BB5_22 Depth=2
	movslq	%r10d, %r14
	movq	16(%rsi), %rdi
	movzbl	(%rdi,%r14), %edi
	shrl	%cl, %edi
	andl	$1, %edi
.LBB5_32:                               # %if.end.i.172
                                        #   in Loop: Header=BB5_22 Depth=2
	testl	%r13d, %r13d
	js	.LBB5_35
# BB#33:                                # %if.end.i.172
                                        #   in Loop: Header=BB5_22 Depth=2
	cmpl	%r13d, %ebx
	jle	.LBB5_35
# BB#34:                                # %if.end.6.i.189
                                        #   in Loop: Header=BB5_22 Depth=2
	xorl	%edi, %ebp
	xorl	$1, %ebp
	movl	$-2, %edi
	roll	%cl, %edi
	movslq	%r10d, %r10
	movq	16(%rsi), %r14
	movzbl	(%r14,%r10), %ebx
	andl	%edi, %ebx
	shll	%cl, %ebp
	orl	%ebx, %ebp
	movb	%bpl, (%r14,%r10)
	.align	16, 0x90
.LBB5_35:                               # %jbig2_image_set_pixel.exit191
                                        #   in Loop: Header=BB5_22 Depth=2
	incl	%eax
	cmpl	%r15d, %eax
	jl	.LBB5_22
.LBB5_36:                               # %for.inc.103
                                        #   in Loop: Header=BB5_20 Depth=1
	incl	%r8d
	cmpl	-4(%rsp), %r8d          # 4-byte Folded Reload
	jl	.LBB5_20
	jmp	.LBB5_94
.LBB5_2:                                # %for.cond.107.preheader
	cmpl	$0, -4(%rsp)            # 4-byte Folded Reload
	jle	.LBB5_94
# BB#3:                                 # %for.cond.111.preheader.lr.ph
	xorl	%r8d, %r8d
	testl	%ecx, %ecx
	movl	$0, %r9d
	cmovnsl	%ecx, %r9d
	movl	%r9d, %r10d
	subl	%ecx, %r10d
	.align	16, 0x90
.LBB5_4:                                # %for.cond.111.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_6 Depth 2
	testl	%r15d, %r15d
	jle	.LBB5_17
# BB#5:                                 # %for.body.114.lr.ph
                                        #   in Loop: Header=BB5_4 Depth=1
	movq	-24(%rsp), %rax         # 8-byte Reload
	leal	(%r8,%rax), %r12d
	movq	-16(%rsp), %rax         # 8-byte Reload
	leal	(%r8,%rax), %r13d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB5_6:                                # %for.body.114
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	(%r9,%rbp), %ebx
	movl	%r10d, %eax
	addl	%ebp, %eax
	movl	$0, %eax
	js	.LBB5_11
# BB#7:                                 # %lor.lhs.false.i.150
                                        #   in Loop: Header=BB5_6 Depth=2
	leal	(%r10,%rbp), %ecx
	cmpl	%ecx, (%rdx)
	movl	$0, %eax
	jle	.LBB5_11
# BB#8:                                 # %lor.lhs.false.i.150
                                        #   in Loop: Header=BB5_6 Depth=2
	testl	%r13d, %r13d
	movl	$0, %eax
	js	.LBB5_11
# BB#9:                                 # %lor.lhs.false.i.150
                                        #   in Loop: Header=BB5_6 Depth=2
	cmpl	%r13d, 4(%rdx)
	movl	$0, %eax
	jle	.LBB5_11
# BB#10:                                # %if.end.6.i.161
                                        #   in Loop: Header=BB5_6 Depth=2
	movl	%ecx, %eax
	sarl	$3, %eax
	movl	8(%rdx), %edi
	imull	%r13d, %edi
	addl	%eax, %edi
	notl	%ecx
	andl	$7, %ecx
	movslq	%edi, %rax
	movq	16(%rdx), %rdi
	movzbl	(%rdi,%rax), %eax
	shrl	%cl, %eax
	andl	$1, %eax
.LBB5_11:                               # %jbig2_image_get_pixel.exit163
                                        #   in Loop: Header=BB5_6 Depth=2
	testl	%ebx, %ebx
	js	.LBB5_16
# BB#12:                                # %lor.lhs.false.i.123
                                        #   in Loop: Header=BB5_6 Depth=2
	cmpl	%ebx, (%rsi)
	jle	.LBB5_16
# BB#13:                                # %lor.lhs.false.i.123
                                        #   in Loop: Header=BB5_6 Depth=2
	testl	%r12d, %r12d
	js	.LBB5_16
# BB#14:                                # %lor.lhs.false.i.123
                                        #   in Loop: Header=BB5_6 Depth=2
	cmpl	%r12d, 4(%rsi)
	jle	.LBB5_16
# BB#15:                                # %if.end.6.i.138
                                        #   in Loop: Header=BB5_6 Depth=2
	movl	%ebx, %ecx
	notl	%ecx
	sarl	$3, %ebx
	movl	8(%rsi), %edi
	imull	%r12d, %edi
	addl	%ebx, %edi
	andl	$7, %ecx
	movl	$-2, %ebx
	roll	%cl, %ebx
	movslq	%edi, %r11
	movq	16(%rsi), %r14
	movzbl	(%r14,%r11), %edi
	andl	%ebx, %edi
	shll	%cl, %eax
	orl	%edi, %eax
	movb	%al, (%r14,%r11)
.LBB5_16:                               # %jbig2_image_set_pixel.exit
                                        #   in Loop: Header=BB5_6 Depth=2
	incl	%ebp
	cmpl	%r15d, %ebp
	jl	.LBB5_6
.LBB5_17:                               # %for.inc.124
                                        #   in Loop: Header=BB5_4 Depth=1
	incl	%r8d
	cmpl	-4(%rsp), %r8d          # 4-byte Folded Reload
	jl	.LBB5_4
.LBB5_94:                               # %sw.epilog
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	jbig2_image_compose_unopt, .Lfunc_end5-jbig2_image_compose_unopt
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_75
	.quad	.LBB5_56
	.quad	.LBB5_37
	.quad	.LBB5_18
	.quad	.LBB5_2

	.text
	.globl	jbig2_image_set_pixel
	.align	16, 0x90
	.type	jbig2_image_set_pixel,@function
jbig2_image_set_pixel:                  # @jbig2_image_set_pixel
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%ecx, %r8d
	xorl	%eax, %eax
	testl	%esi, %esi
	js	.LBB6_5
# BB#1:                                 # %lor.lhs.false
	cmpl	%esi, (%rdi)
	jle	.LBB6_5
# BB#2:                                 # %if.end
	testl	%edx, %edx
	js	.LBB6_5
# BB#3:                                 # %if.end
	cmpl	%edx, 4(%rdi)
	jle	.LBB6_5
# BB#4:                                 # %if.end.6
	movl	%esi, %ecx
	notl	%ecx
	sarl	$3, %esi
	imull	8(%rdi), %edx
	addl	%esi, %edx
	andl	$7, %ecx
	movl	$-2, %eax
	roll	%cl, %eax
	movslq	%edx, %rdx
	movq	16(%rdi), %rsi
	movzbl	(%rsi,%rdx), %edi
	andl	%eax, %edi
	shll	%cl, %r8d
	orl	%edi, %r8d
	movb	%r8b, (%rsi,%rdx)
	movl	$1, %eax
.LBB6_5:                                # %cleanup
	retq
.Lfunc_end6:
	.size	jbig2_image_set_pixel, .Lfunc_end6-jbig2_image_set_pixel
	.cfi_endproc

	.globl	jbig2_image_get_pixel
	.align	16, 0x90
	.type	jbig2_image_get_pixel,@function
jbig2_image_get_pixel:                  # @jbig2_image_get_pixel
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testl	%esi, %esi
	js	.LBB7_5
# BB#1:                                 # %lor.lhs.false
	cmpl	%esi, (%rdi)
	jle	.LBB7_5
# BB#2:                                 # %if.end
	testl	%edx, %edx
	js	.LBB7_5
# BB#3:                                 # %if.end
	cmpl	%edx, 4(%rdi)
	jle	.LBB7_5
# BB#4:                                 # %if.end.6
	movl	%esi, %ecx
	notl	%ecx
	sarl	$3, %esi
	imull	8(%rdi), %edx
	addl	%esi, %edx
	andl	$7, %ecx
	movslq	%edx, %rax
	movq	16(%rdi), %rdx
	movzbl	(%rdx,%rax), %eax
	shrl	%cl, %eax
	andl	$1, %eax
.LBB7_5:                                # %cleanup
	retq
.Lfunc_end7:
	.size	jbig2_image_get_pixel, .Lfunc_end7-jbig2_image_get_pixel
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI8_0:
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	255                     # 0xff
	.text
	.globl	jbig2_image_compose
	.align	16, 0x90
	.type	jbig2_image_compose,@function
jbig2_image_compose:                    # @jbig2_image_compose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp39:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp41:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp42:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp44:
	.cfi_def_cfa_offset 176
.Ltmp45:
	.cfi_offset %rbx, -56
.Ltmp46:
	.cfi_offset %r12, -48
.Ltmp47:
	.cfi_offset %r13, -40
.Ltmp48:
	.cfi_offset %r14, -32
.Ltmp49:
	.cfi_offset %r15, -24
.Ltmp50:
	.cfi_offset %rbp, -16
	movl	%ecx, %r12d
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	testl	%r9d, %r9d
	je	.LBB8_2
# BB#1:                                 # %if.then
	movl	%r12d, %ecx
	callq	jbig2_image_compose_unopt
.LBB8_58:                               # %cleanup
	xorl	%eax, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_2:                                # %if.end
	movl	%r12d, %eax
	sarl	$31, %eax
	andl	%r12d, %eax
	addl	(%rdx), %eax
	xorl	%ecx, %ecx
	testl	%r12d, %r12d
	cmovsl	%ecx, %r12d
	movl	%r8d, %ebp
	sarl	$31, %ebp
	andl	%r8d, %ebp
	addl	4(%rdx), %ebp
	testl	%r8d, %r8d
	cmovsl	%ecx, %r8d
	leal	(%rax,%r12), %r9d
	movl	(%rsi), %ebx
	movl	4(%rsi), %r14d
	movl	%ebx, %ecx
	subl	%r12d, %ecx
	cmpl	%ebx, %r9d
	cmovll	%eax, %ecx
	leal	(%rbp,%r8), %eax
	movl	%r14d, %ebx
	subl	%r8d, %ebx
	cmpl	%r14d, %eax
	cmovll	%ebp, %ebx
	testl	%ecx, %ecx
	jle	.LBB8_58
# BB#3:                                 # %if.end
	testl	%ebx, %ebx
	jle	.LBB8_58
# BB#4:                                 # %if.end.24
	movl	%ebx, %r9d
	movl	%r12d, %ebp
	sarl	$3, %ebp
	movl	8(%rsi), %eax
	cmpl	%eax, %ebp
	jg	.LBB8_59
# BB#5:                                 # %if.end.24
	movq	16(%rsi), %r10
	imull	%eax, %r8d
	movl	%ebp, %ebx
	movslq	%r8d, %rbp
	leaq	(%rbp,%r10), %r15
	movl	%ebx, %ebp
	movslq	%ebp, %r8
	addq	%r8, %r15
	cmpq	%r10, %r15
	jb	.LBB8_59
# BB#6:                                 # %lor.lhs.false.36
	movl	%eax, %r11d
	imull	%r9d, %r11d
	testl	%r11d, %r11d
	js	.LBB8_59
# BB#7:                                 # %lor.lhs.false.40
	movq	%r15, %rbx
	subq	%r8, %rbx
	movl	%ebp, %r8d
	movl	%r8d, 60(%rsp)          # 4-byte Spill
	movslq	%r11d, %rbp
	addq	%rbx, %rbp
	imull	%r14d, %eax
	cltq
	addq	%rax, %r10
	cmpq	%r10, %rbp
	movl	%r8d, %ebp
	jbe	.LBB8_8
.LBB8_59:                               # %if.then.54
	movl	$3, %esi
	movl	$-1, %edx
	movl	$.L.str.6, %ecx
	xorl	%eax, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	jbig2_error             # TAILCALL
.LBB8_8:                                # %if.end.56
	movq	16(%rdx), %r11
	leal	-1(%rcx,%r12), %r13d
	sarl	$3, %r13d
	movl	%r12d, %r8d
	andl	$7, %r8d
	cmpl	%r13d, %ebp
	jne	.LBB8_12
# BB#9:                                 # %if.then.58
	testl	%r9d, %r9d
	jle	.LBB8_58
# BB#10:                                # %for.body.lr.ph
	movl	$256, %eax              # imm = 0x100
	shrl	%cl, %eax
	negl	%eax
	xorl	%edi, %edi
	.align	16, 0x90
.LBB8_11:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r11), %ebp
	andl	%eax, %ebp
	movb	%r8b, %cl
	shrl	%cl, %ebp
	movzbl	(%r15), %ecx
	orl	%ebp, %ecx
	movb	%cl, (%r15)
	movslq	8(%rsi), %rcx
	addq	%rcx, %r15
	movslq	8(%rdx), %rcx
	addq	%rcx, %r11
	incl	%edi
	cmpl	%r9d, %edi
	jl	.LBB8_11
	jmp	.LBB8_58
.LBB8_12:                               # %if.else
	movabsq	$8589934560, %rbx       # imm = 0x1FFFFFFE0
	testl	%r8d, %r8d
	je	.LBB8_13
# BB#36:                                # %if.else.118
	leal	(%r12,%rcx), %eax
	leal	7(%rcx), %edx
	sarl	$3, %edx
	movl	%edx, 88(%rsp)          # 4-byte Spill
	leal	7(%rax), %edi
	sarl	$3, %edi
	subl	%ebp, %edi
	movl	%edi, 80(%rsp)          # 4-byte Spill
	cmpl	%edi, %edx
	jge	.LBB8_38
# BB#37:                                # %if.then.132
	andb	$7, %al
	movl	$256, %edx              # imm = 0x100
	movl	$256, %edi              # imm = 0x100
	movb	%al, %cl
	shrl	%cl, %edi
	subl	%edi, %edx
	movl	$8, %ecx
	subl	%r8d, %ecx
	sarl	%cl, %edx
	jmp	.LBB8_39
.LBB8_13:                               # %if.then.77
	movl	%ebp, %r10d
	andl	$7, %ecx
	movl	$255, %r12d
	je	.LBB8_15
# BB#14:                                # %cond.true.79
	movl	$8, %eax
	subl	%ecx, %eax
	movl	$-1, %edi
	movb	%al, %cl
	shll	%cl, %edi
	movzbl	%dil, %r12d
.LBB8_15:                               # %cond.end.84
	movl	%r12d, 48(%rsp)         # 4-byte Spill
	movl	%r9d, %ebp
	movl	%ebp, 28(%rsp)          # 4-byte Spill
	testl	%ebp, %ebp
	jle	.LBB8_58
# BB#16:                                # %for.cond.91.preheader.lr.ph
	leal	-1(%r13), %eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
	movl	%eax, %r8d
	movl	%r10d, %r9d
	subl	%r9d, %r8d
	leaq	1(%r8), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	andq	%rax, %rbx
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	leaq	-32(%rbx), %rax
	shrq	$5, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movl	%r9d, %ecx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	leaq	1(%r8,%rcx), %rdi
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	leaq	(%rbx,%rcx), %rdi
	movq	%rdi, 64(%rsp)          # 8-byte Spill
	andl	$1, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	32(%rcx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$48, %eax
	subq	%rcx, %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorl	%r14d, %r14d
.LBB8_17:                               # %for.cond.91.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_25 Depth 2
                                        #     Child Loop BB8_30 Depth 2
                                        #     Child Loop BB8_33 Depth 2
	cmpl	%r13d, %r9d
	movq	%r15, %rax
	movq	%r11, %rcx
	jge	.LBB8_35
# BB#18:                                # %for.body.94.lr.ph
                                        #   in Loop: Header=BB8_17 Depth=1
	cmpq	$0, 96(%rsp)            # 8-byte Folded Reload
	movq	%r15, %r10
	movq	%r11, %rdi
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	%r9d, %ebx
	je	.LBB8_27
# BB#19:                                # %vector.memcheck214
                                        #   in Loop: Header=BB8_17 Depth=1
	leaq	(%r11,%r8), %rax
	cmpq	%rax, %r15
	ja	.LBB8_21
# BB#20:                                # %vector.memcheck214
                                        #   in Loop: Header=BB8_17 Depth=1
	leaq	(%r15,%r8), %rax
	cmpq	%rax, %r11
	movq	%r15, %r10
	movq	%r11, %rdi
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	%r9d, %ebx
	jbe	.LBB8_27
.LBB8_21:                               # %vector.body197.preheader
                                        #   in Loop: Header=BB8_17 Depth=1
	cmpq	$0, 32(%rsp)            # 8-byte Folded Reload
	movq	104(%rsp), %rbp         # 8-byte Reload
	jne	.LBB8_23
# BB#22:                                # %vector.body197.prol
                                        #   in Loop: Header=BB8_17 Depth=1
	movdqu	(%r11), %xmm0
	movdqu	16(%r11), %xmm1
	movdqu	(%r15), %xmm2
	movdqu	16(%r15), %xmm3
	por	%xmm0, %xmm2
	por	%xmm1, %xmm3
	movdqu	%xmm2, (%r15)
	movdqu	%xmm3, 16(%r15)
	movq	8(%rsp), %rbp           # 8-byte Reload
.LBB8_23:                               # %vector.body197.preheader.split
                                        #   in Loop: Header=BB8_17 Depth=1
	movq	96(%rsp), %rax          # 8-byte Reload
	leaq	(%r15,%rax), %r10
	leaq	(%r11,%rax), %rdi
	cmpq	$0, 40(%rsp)            # 8-byte Folded Reload
	je	.LBB8_26
# BB#24:                                # %vector.body197.preheader.split.split
                                        #   in Loop: Header=BB8_17 Depth=1
	movq	64(%rsp), %rbx          # 8-byte Reload
	subq	%rbp, %rbx
	movq	16(%rsp), %rcx          # 8-byte Reload
	leaq	(%r11,%rcx), %rax
	addq	%rbp, %rax
	leaq	(%r15,%rcx), %rcx
	addq	%rbp, %rcx
	.align	16, 0x90
.LBB8_25:                               # %vector.body197
                                        #   Parent Loop BB8_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-48(%rax), %xmm0
	movups	-32(%rax), %xmm1
	movups	-48(%rcx), %xmm2
	movups	-32(%rcx), %xmm3
	orps	%xmm0, %xmm2
	orps	%xmm1, %xmm3
	movups	%xmm2, -48(%rcx)
	movups	%xmm3, -32(%rcx)
	movdqu	-16(%rax), %xmm0
	movdqu	(%rax), %xmm1
	movdqu	-16(%rcx), %xmm2
	movdqu	(%rcx), %xmm3
	por	%xmm0, %xmm2
	por	%xmm1, %xmm3
	movdqu	%xmm2, -16(%rcx)
	movdqu	%xmm3, (%rcx)
	addq	$64, %rax
	addq	$64, %rcx
	addq	$-64, %rbx
	jne	.LBB8_25
.LBB8_26:                               #   in Loop: Header=BB8_17 Depth=1
	movq	64(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, %rax
	movl	%ecx, %ebx
	movl	48(%rsp), %r12d         # 4-byte Reload
.LBB8_27:                               # %middle.block198
                                        #   in Loop: Header=BB8_17 Depth=1
	cmpq	%rax, 80(%rsp)          # 8-byte Folded Reload
	je	.LBB8_34
# BB#28:                                # %for.body.94.preheader
                                        #   in Loop: Header=BB8_17 Depth=1
	movq	%r8, %rbp
	movl	%r12d, %r8d
	movl	%r13d, %eax
	subl	%ebx, %eax
	movl	76(%rsp), %r12d         # 4-byte Reload
	subl	%ebx, %r12d
	testb	$3, %al
	je	.LBB8_31
# BB#29:                                # %for.body.94.prol.preheader
                                        #   in Loop: Header=BB8_17 Depth=1
	andl	$3, %eax
	negl	%eax
	.align	16, 0x90
.LBB8_30:                               # %for.body.94.prol
                                        #   Parent Loop BB8_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rdi), %cl
	orb	%cl, (%r10)
	incq	%rdi
	incq	%r10
	incl	%ebx
	incl	%eax
	jne	.LBB8_30
.LBB8_31:                               # %for.body.94.preheader.split
                                        #   in Loop: Header=BB8_17 Depth=1
	cmpl	$3, %r12d
	movl	%r8d, %r12d
	movq	%rbp, %r8
	jb	.LBB8_34
# BB#32:                                # %for.body.94.preheader.split.split
                                        #   in Loop: Header=BB8_17 Depth=1
	movl	%r13d, %eax
	subl	%ebx, %eax
	.align	16, 0x90
.LBB8_33:                               # %for.body.94
                                        #   Parent Loop BB8_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%rdi), %cl
	orb	%cl, (%r10)
	movb	1(%rdi), %cl
	orb	%cl, 1(%r10)
	movb	2(%rdi), %cl
	orb	%cl, 2(%r10)
	movb	3(%rdi), %cl
	orb	%cl, 3(%r10)
	addq	$4, %rdi
	addq	$4, %r10
	addl	$-4, %eax
	jne	.LBB8_33
.LBB8_34:                               # %for.cond.91.for.end.102_crit_edge
                                        #   in Loop: Header=BB8_17 Depth=1
	movq	88(%rsp), %rcx          # 8-byte Reload
	leaq	(%r15,%rcx), %rax
	leaq	(%r11,%rcx), %rcx
	movl	28(%rsp), %ebp          # 4-byte Reload
.LBB8_35:                               # %for.end.102
                                        #   in Loop: Header=BB8_17 Depth=1
	movzbl	(%rcx), %ecx
	andl	%r12d, %ecx
	movzbl	(%rax), %edi
	orl	%ecx, %edi
	movb	%dil, (%rax)
	movslq	8(%rsi), %rax
	addq	%rax, %r15
	movslq	8(%rdx), %rax
	addq	%rax, %r11
	incl	%r14d
	cmpl	%ebp, %r14d
	jl	.LBB8_17
	jmp	.LBB8_58
.LBB8_38:                               # %if.else.140
	andb	$7, %cl
	movl	$256, %edx              # imm = 0x100
	movl	$256, %eax              # imm = 0x100
	shrl	%cl, %eax
	subl	%eax, %edx
.LBB8_39:                               # %if.end.145
	movl	%edx, 76(%rsp)          # 4-byte Spill
	movl	%r9d, %r10d
	testl	%r10d, %r10d
	jle	.LBB8_58
# BB#40:                                # %for.body.149.lr.ph
	movl	$-1, %r9d
	movb	%r8b, %cl
	shll	%cl, %r9d
	movzbl	%r9b, %r14d
	leal	-1(%r13), %eax
	movl	%eax, 104(%rsp)         # 4-byte Spill
	movl	$8, %eax
	subl	%r8d, %eax
	orl	$-256, %r9d
	xorl	$255, %r9d
	addl	$-2, %r13d
	subl	%ebp, %r13d
	movl	%ebp, %ecx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	leaq	1(%r13,%rcx), %rdx
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	leaq	2(%r13), %rdx
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	leaq	1(%r13), %rdx
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	addq	$28, %rbx
	andq	%rdx, %rbx
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	leaq	(%rbx,%rcx), %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movd	%r9d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movd	%eax, %xmm5
	movd	%r14d, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movd	%r8d, %xmm4
	movabsq	$8589934588, %rcx       # imm = 0x1FFFFFFFC
	andq	%rdx, %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	xorl	%r12d, %r12d
	pxor	%xmm2, %xmm2
	xorps	%xmm3, %xmm3
	movss	%xmm4, %xmm3            # xmm3 = xmm4[0],xmm3[1,2,3]
	xorps	%xmm4, %xmm4
	movss	%xmm5, %xmm4            # xmm4 = xmm5[0],xmm4[1,2,3]
	movdqa	.LCPI8_0(%rip), %xmm5   # xmm5 = [255,255,255,255]
.LBB8_41:                               # %for.body.149
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_48 Depth 2
                                        #     Child Loop BB8_52 Depth 2
	movzbl	(%r11), %edi
	andl	%r14d, %edi
	movb	%r8b, %cl
	shrl	%cl, %edi
	movzbl	(%r15), %ecx
	orl	%edi, %ecx
	movb	%cl, (%r15)
	leaq	1(%r15), %r13
	cmpl	104(%rsp), %ebp         # 4-byte Folded Reload
	jge	.LBB8_42
# BB#43:                                # %for.body.162.lr.ph
                                        #   in Loop: Header=BB8_41 Depth=1
	cmpq	$0, 96(%rsp)            # 8-byte Folded Reload
	movq	64(%rsp), %rdx          # 8-byte Reload
	je	.LBB8_44
# BB#45:                                # %vector.memcheck
                                        #   in Loop: Header=BB8_41 Depth=1
	leaq	(%r11,%rdx), %rcx
	cmpq	%rcx, %r13
	ja	.LBB8_47
# BB#46:                                # %vector.memcheck
                                        #   in Loop: Header=BB8_41 Depth=1
	leaq	(%r15,%rdx), %rcx
	cmpq	%rcx, %r11
	ja	.LBB8_47
.LBB8_44:                               #   in Loop: Header=BB8_41 Depth=1
	movq	%r11, %rbx
	movq	32(%rsp), %rdi          # 8-byte Reload
	movl	%ebp, %ecx
	jmp	.LBB8_50
.LBB8_42:                               #   in Loop: Header=BB8_41 Depth=1
	movq	%r11, %rbx
	jmp	.LBB8_54
.LBB8_47:                               # %vector.ph
                                        #   in Loop: Header=BB8_41 Depth=1
	movl	%r10d, %edx
	movq	96(%rsp), %rcx          # 8-byte Reload
	addq	%rcx, %r13
	leaq	(%r11,%rcx), %rbx
	leaq	1(%r11), %rcx
	leaq	1(%r15), %rdi
	movq	8(%rsp), %r10           # 8-byte Reload
	.align	16, 0x90
.LBB8_48:                               # %vector.body
                                        #   Parent Loop BB8_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movd	-1(%rcx), %xmm6         # xmm6 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm6    # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3],xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
	punpcklwd	%xmm0, %xmm6    # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3]
	pand	%xmm0, %xmm6
	pand	%xmm5, %xmm6
	pslld	%xmm4, %xmm6
	movd	(%rdi), %xmm7           # xmm7 = mem[0],zero,zero,zero
	punpcklbw	%xmm2, %xmm7    # xmm7 = xmm7[0],xmm2[0],xmm7[1],xmm2[1],xmm7[2],xmm2[2],xmm7[3],xmm2[3],xmm7[4],xmm2[4],xmm7[5],xmm2[5],xmm7[6],xmm2[6],xmm7[7],xmm2[7]
	punpcklwd	%xmm2, %xmm7    # xmm7 = xmm7[0],xmm2[0],xmm7[1],xmm2[1],xmm7[2],xmm2[2],xmm7[3],xmm2[3]
	por	%xmm6, %xmm7
	movdqa	%xmm7, %xmm6
	pand	%xmm5, %xmm6
	packuswb	%xmm6, %xmm6
	packuswb	%xmm6, %xmm6
	movd	%xmm6, (%rdi)
	movd	(%rcx), %xmm6           # xmm6 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm6    # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3],xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
	punpcklwd	%xmm0, %xmm6    # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3]
	pand	%xmm1, %xmm6
	pand	%xmm5, %xmm6
	psrld	%xmm3, %xmm6
	por	%xmm7, %xmm6
	pand	%xmm5, %xmm6
	packuswb	%xmm6, %xmm6
	packuswb	%xmm6, %xmm6
	movd	%xmm6, (%rdi)
	addq	$4, %rcx
	addq	$4, %rdi
	addq	$-4, %r10
	jne	.LBB8_48
# BB#49:                                #   in Loop: Header=BB8_41 Depth=1
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, %rdi
	movl	%edx, %r10d
.LBB8_50:                               # %middle.block
                                        #   in Loop: Header=BB8_41 Depth=1
	cmpq	%rdi, 48(%rsp)          # 8-byte Folded Reload
	je	.LBB8_53
# BB#51:                                # %for.body.162.preheader
                                        #   in Loop: Header=BB8_41 Depth=1
	incq	%rbx
	movl	104(%rsp), %edi         # 4-byte Reload
	subl	%ecx, %edi
	.align	16, 0x90
.LBB8_52:                               # %for.body.162
                                        #   Parent Loop BB8_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-1(%rbx), %ebp
	andl	%r9d, %ebp
	movb	%al, %cl
	shll	%cl, %ebp
	movzbl	(%r13), %edx
	orl	%ebp, %edx
	movb	%dl, (%r13)
	movzbl	(%rbx), %ebp
	andl	%r14d, %ebp
	movb	%r8b, %cl
	shrl	%cl, %ebp
	orl	%edx, %ebp
	movb	%bpl, (%r13)
	incq	%r13
	incq	%rbx
	decl	%edi
	jne	.LBB8_52
.LBB8_53:                               # %for.cond.158.for.end.182_crit_edge
                                        #   in Loop: Header=BB8_41 Depth=1
	movq	40(%rsp), %rcx          # 8-byte Reload
	leaq	(%r15,%rcx), %r13
	movq	64(%rsp), %rcx          # 8-byte Reload
	leaq	(%r11,%rcx), %rbx
	movl	60(%rsp), %ebp          # 4-byte Reload
.LBB8_54:                               # %for.end.182
                                        #   in Loop: Header=BB8_41 Depth=1
	movzbl	(%rbx), %edi
	movl	80(%rsp), %ecx          # 4-byte Reload
	cmpl	%ecx, 88(%rsp)          # 4-byte Folded Reload
	jge	.LBB8_56
# BB#55:                                # %if.then.184
                                        #   in Loop: Header=BB8_41 Depth=1
	andl	76(%rsp), %edi          # 4-byte Folded Reload
	movb	%al, %cl
	shll	%cl, %edi
	movzbl	(%r13), %ecx
	orl	%edi, %ecx
	jmp	.LBB8_57
.LBB8_56:                               # %if.else.193
                                        #   in Loop: Header=BB8_41 Depth=1
	andl	%r9d, %edi
	movb	%al, %cl
	shll	%cl, %edi
	movzbl	1(%rbx), %edx
	andl	76(%rsp), %edx          # 4-byte Folded Reload
	movb	%r8b, %cl
	shrl	%cl, %edx
	movzbl	(%r13), %ecx
	orl	%edi, %ecx
	orl	%edx, %ecx
.LBB8_57:                               # %if.end.209
                                        #   in Loop: Header=BB8_41 Depth=1
	movq	112(%rsp), %rdx         # 8-byte Reload
	movb	%cl, (%r13)
	movslq	8(%rsi), %rcx
	addq	%rcx, %r15
	movslq	8(%rdx), %rcx
	addq	%rcx, %r11
	incl	%r12d
	cmpl	%r10d, %r12d
	jl	.LBB8_41
	jmp	.LBB8_58
.Lfunc_end8:
	.size	jbig2_image_compose, .Lfunc_end8-jbig2_image_compose
	.cfi_endproc

	.globl	jbig2_image_clear
	.align	16, 0x90
	.type	jbig2_image_clear,@function
jbig2_image_clear:                      # @jbig2_image_clear
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%edx, %edx
	movq	16(%rsi), %rdi
	movl	$255, %eax
	cmovel	%edx, %eax
	movslq	4(%rsi), %rcx
	movslq	8(%rsi), %rdx
	imulq	%rcx, %rdx
	movl	%eax, %esi
	jmp	memset                  # TAILCALL
.Lfunc_end9:
	.size	jbig2_image_clear, .Lfunc_end9-jbig2_image_clear
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"could not allocate image structure in jbig2_image_new"
	.size	.L.str, 54

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"integer multiplication overflow from stride(%d)*height(%d)"
	.size	.L.str.1, 59

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"could not allocate image data buffer! [stride(%d)*height(%d) bytes]"
	.size	.L.str.2, 68

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"integer multiplication overflow during resize stride(%d)*height(%d)"
	.size	.L.str.3, 68

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"could not resize image buffer!"
	.size	.L.str.4, 31

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"jbig2_image_resize called with a different width (NYI)"
	.size	.L.str.5, 55

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"preventing heap overflow in jbig2_image_compose"
	.size	.L.str.6, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
