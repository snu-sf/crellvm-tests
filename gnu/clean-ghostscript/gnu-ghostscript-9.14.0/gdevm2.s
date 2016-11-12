	.text
	.file	"gdevm2.bc"
	.align	16, 0x90
	.type	mem_mapped2_fill_rectangle,@function
mem_mapped2_fill_rectangle:             # @mem_mapped2_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp0:
	.cfi_def_cfa_offset 16
	movl	%edx, %eax
	orl	%esi, %eax
	jns	.LBB0_2
# BB#1:                                 # %if.then
	movl	%esi, %eax
	sarl	$31, %eax
	andl	%esi, %eax
	addl	%eax, %ecx
	xorl	%r10d, %r10d
	testl	%esi, %esi
	cmovsl	%r10d, %esi
	movl	%edx, %eax
	sarl	$31, %eax
	testl	%edx, %edx
	cmovnsl	%edx, %r10d
	andl	%edx, %eax
	addl	%eax, %r8d
	movl	%r10d, %edx
.LBB0_2:                                # %do.body.10
	movl	832(%rdi), %eax
	movl	836(%rdi), %r10d
	subl	%esi, %eax
	cmpl	%eax, %ecx
	cmovlel	%ecx, %eax
	subl	%edx, %r10d
	cmpl	%r10d, %r8d
	cmovlel	%r8d, %r10d
	testl	%eax, %eax
	jle	.LBB0_5
# BB#3:                                 # %do.body.10
	testl	%r10d, %r10d
	jle	.LBB0_5
# BB#4:                                 # %do.end.34
	movslq	%edx, %rcx
	movq	2576(%rdi), %rdx
	movq	(%rdx,%rcx,8), %r8
	addl	%esi, %esi
	movl	1736(%rdi), %edx
	movl	tile_patterns(,%r9,4), %ecx
	addl	%eax, %eax
	movq	%r8, %rdi
	movl	%eax, %r8d
	movl	%r10d, %r9d
	callq	bits_fill_rectangle
.LBB0_5:                                # %cleanup
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end0:
	.size	mem_mapped2_fill_rectangle, .Lfunc_end0-mem_mapped2_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	mem_mapped2_copy_mono,@function
mem_mapped2_copy_mono:                  # @mem_mapped2_copy_mono
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
	movl	%ecx, %r12d
	movl	72(%rsp), %ecx
	movl	64(%rsp), %r15d
	movl	56(%rsp), %ebp
	movl	%ebp, %eax
	orl	%r9d, %eax
	js	.LBB1_2
# BB#1:
	movl	%ebp, %r10d
	jmp	.LBB1_5
.LBB1_2:                                # %if.then
	movl	%r9d, %eax
	sarl	$31, %eax
	andl	%r9d, %eax
	leal	(%r15,%rax), %r15d
	xorl	%r10d, %r10d
	testl	%r9d, %r9d
	cmovsl	%r10d, %r9d
	subl	%eax, %edx
	testl	%ebp, %ebp
	js	.LBB1_4
# BB#3:
	movl	%ebp, %r10d
	jmp	.LBB1_5
.LBB1_4:                                # %if.then.5
	addl	%ebp, %ecx
	imull	%r12d, %ebp
	movslq	%ebp, %rax
	subq	%rax, %rsi
.LBB1_5:                                # %if.end.8
	movl	832(%rdi), %r13d
	movl	836(%rdi), %ebp
	movl	%r13d, %eax
	subl	%r9d, %eax
	cmpl	%eax, %r15d
	cmovlel	%r15d, %eax
	subl	%r10d, %ebp
	cmpl	%ebp, %ecx
	cmovlel	%ecx, %ebp
	testl	%eax, %eax
	jle	.LBB1_46
# BB#6:                                 # %if.end.8
	testl	%ebp, %ebp
	jle	.LBB1_46
# BB#7:                                 # %do.end.26
	movb	%dl, %cl
	andb	$7, %cl
	movl	$128, %ebx
	shrl	%cl, %ebx
	movl	%ebx, -20(%rsp)         # 4-byte Spill
	movl	%r9d, %r11d
	andl	$3, %r11d
	movb	mem_mapped2_copy_mono.lmask(%r11), %r8b
	leal	(%rax,%r9), %ebx
	andl	$3, %ebx
	movb	mem_mapped2_copy_mono.lmask(%rbx), %bl
	notb	%bl
	addl	%r11d, %eax
	movb	%r8b, %cl
	orb	%bl, %cl
	movb	%cl, -52(%rsp)          # 1-byte Spill
	cmpl	$4, %eax
	movb	%cl, -50(%rsp)          # 1-byte Spill
	jl	.LBB1_9
# BB#8:                                 # %do.end.26
	movb	%r8b, -50(%rsp)         # 1-byte Spill
.LBB1_9:                                # %do.end.26
	movq	80(%rsp), %r14
	jl	.LBB1_11
# BB#10:                                # %do.end.26
	movb	%bl, -52(%rsp)          # 1-byte Spill
.LBB1_11:                               # %do.end.26
	movl	%r14d, %eax
	andl	$3, %eax
	movq	88(%rsp), %rbx
	andl	$3, %ebx
	testl	%ebp, %ebp
	jle	.LBB1_46
# BB#12:                                # %while.body.lr.ph
	movb	mem_mapped2_copy_mono.bmask(%r11), %cl
	movb	%cl, -49(%rsp)          # 1-byte Spill
	movb	mem_mapped2_copy_mono.btab(%rax), %r11b
	movb	mem_mapped2_copy_mono.btab(%rbx), %r8b
	movb	%r8b, -1(%rsp)          # 1-byte Spill
	xorb	%r11b, %r8b
	sarl	$3, %edx
	movslq	%edx, %rax
	addq	%rax, %rsi
	movq	2576(%rdi), %rax
	movslq	%r10d, %rcx
	movl	%r9d, %edx
	sarl	$2, %edx
	movl	%r13d, %ebx
	movslq	%edx, %r13
	addq	(%rax,%rcx,8), %r13
	movslq	%r12d, %rax
	movq	%rax, -32(%rsp)         # 8-byte Spill
	movl	1736(%rdi), %eax
	movq	%rax, -40(%rsp)         # 8-byte Spill
	movb	-50(%rsp), %al          # 1-byte Reload
	notb	%al
	andb	%r11b, %al
	movb	%al, -51(%rsp)          # 1-byte Spill
	movb	-52(%rsp), %al          # 1-byte Reload
	notb	%al
	movb	%al, -53(%rsp)          # 1-byte Spill
	decl	%r9d
	subl	%ebx, %r9d
	notl	%r15d
	cmpl	%r15d, %r9d
	cmovgel	%r9d, %r15d
	negl	%r15d
	movq	%r15, -48(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB1_13:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_35 Depth 2
                                        #     Child Loop BB1_26 Depth 2
                                        #     Child Loop BB1_15 Depth 2
	movq	%rbp, -16(%rsp)         # 8-byte Spill
	leaq	1(%rsi), %r12
	cmpq	$-1, 88(%rsp)
	movzbl	(%rsi), %r15d
	je	.LBB1_14
# BB#24:                                # %if.then.66
                                        #   in Loop: Header=BB1_13 Depth=1
	cmpq	$-1, %r14
	je	.LBB1_25
# BB#34:                                # %if.then.69
                                        #   in Loop: Header=BB1_13 Depth=1
	movb	(%r13), %cl
	andb	-50(%rsp), %cl          # 1-byte Folded Reload
	orb	-51(%rsp), %cl          # 1-byte Folded Reload
	movq	-48(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ebp
	movq	%r13, %r9
	movl	-20(%rsp), %edx         # 4-byte Reload
	movb	-49(%rsp), %bl          # 1-byte Reload
	.align	16, 0x90
.LBB1_35:                               # %for.cond
                                        #   Parent Loop BB1_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%r15d, %edx
	je	.LBB1_36
# BB#37:                                # %for.cond
                                        #   in Loop: Header=BB1_35 Depth=2
	movb	%bl, %r10b
	andb	%r8b, %r10b
	jmp	.LBB1_38
	.align	16, 0x90
.LBB1_36:                               #   in Loop: Header=BB1_35 Depth=2
	xorl	%r10d, %r10d
.LBB1_38:                               # %for.cond
                                        #   in Loop: Header=BB1_35 Depth=2
	sarl	%edx
	jne	.LBB1_40
# BB#39:                                # %if.then.91
                                        #   in Loop: Header=BB1_35 Depth=2
	movzbl	(%r12), %r15d
	incq	%r12
	movl	$128, %edx
.LBB1_40:                               # %if.end.94
                                        #   in Loop: Header=BB1_35 Depth=2
	xorb	%r10b, %cl
	shrb	$2, %bl
	jne	.LBB1_42
# BB#41:                                # %if.then.101
                                        #   in Loop: Header=BB1_35 Depth=2
	movb	%cl, (%r9)
	incq	%r9
	movb	$-64, %bl
	movb	%r11b, %cl
.LBB1_42:                               # %if.end.103
                                        #   in Loop: Header=BB1_35 Depth=2
	decl	%ebp
	cmpl	$1, %ebp
	jg	.LBB1_35
# BB#43:                                # %for.end
                                        #   in Loop: Header=BB1_13 Depth=1
	movzbl	%bl, %eax
	cmpl	$192, %eax
	je	.LBB1_45
# BB#44:                                # %if.then.112
                                        #   in Loop: Header=BB1_13 Depth=1
	movb	(%r9), %al
	andb	-52(%rsp), %al          # 1-byte Folded Reload
	andb	-53(%rsp), %cl          # 1-byte Folded Reload
	orb	%al, %cl
	movb	%cl, (%r9)
	jmp	.LBB1_45
	.align	16, 0x90
.LBB1_14:                               #   in Loop: Header=BB1_13 Depth=1
	movq	-48(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movq	%r13, %rdi
	movl	-20(%rsp), %ebp         # 4-byte Reload
	movb	-49(%rsp), %dl          # 1-byte Reload
	jmp	.LBB1_15
	.align	16, 0x90
.LBB1_23:                               # %if.end.190
                                        #   in Loop: Header=BB1_15 Depth=2
	movb	%al, %dl
.LBB1_15:                               # %for.cond.161
                                        #   Parent Loop BB1_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$-1, %r14
	je	.LBB1_18
# BB#16:                                # %for.cond.161
                                        #   in Loop: Header=BB1_15 Depth=2
	movl	%ebp, %eax
	andl	%r15d, %eax
	jne	.LBB1_18
# BB#17:                                # %if.then.167
                                        #   in Loop: Header=BB1_15 Depth=2
	movb	%dl, %al
	notb	%al
	andb	(%rdi), %al
	movb	%dl, %bl
	andb	%r11b, %bl
	addb	%al, %bl
	movb	%bl, (%rdi)
.LBB1_18:                               # %if.end.178
                                        #   in Loop: Header=BB1_15 Depth=2
	decl	%ecx
	cmpl	$2, %ecx
	jl	.LBB1_45
# BB#19:                                # %if.end.183
                                        #   in Loop: Header=BB1_15 Depth=2
	sarl	%ebp
	jne	.LBB1_21
# BB#20:                                # %if.then.187
                                        #   in Loop: Header=BB1_15 Depth=2
	movzbl	(%r12), %r15d
	incq	%r12
	movl	$128, %ebp
.LBB1_21:                               # %if.end.190
                                        #   in Loop: Header=BB1_15 Depth=2
	shrb	$2, %dl
	leaq	1(%rdi), %rax
	testb	%dl, %dl
	cmoveq	%rax, %rdi
	movb	$-64, %al
	je	.LBB1_23
# BB#22:                                # %if.end.190
                                        #   in Loop: Header=BB1_15 Depth=2
	movb	%dl, %al
	jmp	.LBB1_23
	.align	16, 0x90
.LBB1_25:                               #   in Loop: Header=BB1_13 Depth=1
	movq	-48(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movq	%r13, %rdi
	movl	-20(%rsp), %ebp         # 4-byte Reload
	movb	-49(%rsp), %r9b         # 1-byte Reload
	jmp	.LBB1_26
	.align	16, 0x90
.LBB1_33:                               # %if.end.148
                                        #   in Loop: Header=BB1_26 Depth=2
	movb	%bl, %r9b
.LBB1_26:                               # %for.cond.123
                                        #   Parent Loop BB1_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%r15d, %ebp
	je	.LBB1_28
# BB#27:                                # %if.then.126
                                        #   in Loop: Header=BB1_26 Depth=2
	movb	%r9b, %al
	notb	%al
	andb	(%rdi), %al
	movb	%r9b, %dl
	andb	-1(%rsp), %dl           # 1-byte Folded Reload
	addb	%al, %dl
	movb	%dl, (%rdi)
.LBB1_28:                               # %if.end.136
                                        #   in Loop: Header=BB1_26 Depth=2
	decl	%ecx
	cmpl	$2, %ecx
	jl	.LBB1_45
# BB#29:                                # %if.end.141
                                        #   in Loop: Header=BB1_26 Depth=2
	sarl	%ebp
	jne	.LBB1_31
# BB#30:                                # %if.then.145
                                        #   in Loop: Header=BB1_26 Depth=2
	movzbl	(%r12), %r15d
	incq	%r12
	movl	$128, %ebp
.LBB1_31:                               # %if.end.148
                                        #   in Loop: Header=BB1_26 Depth=2
	shrb	$2, %r9b
	leaq	1(%rdi), %rax
	testb	%r9b, %r9b
	cmoveq	%rax, %rdi
	movb	$-64, %bl
	je	.LBB1_33
# BB#32:                                # %if.end.148
                                        #   in Loop: Header=BB1_26 Depth=2
	movb	%r9b, %bl
	jmp	.LBB1_33
	.align	16, 0x90
.LBB1_45:                               # %if.end.201
                                        #   in Loop: Header=BB1_13 Depth=1
	addq	-32(%rsp), %rsi         # 8-byte Folded Reload
	addq	-40(%rsp), %r13         # 8-byte Folded Reload
	movq	-16(%rsp), %rax         # 8-byte Reload
	cmpl	$1, %eax
	leal	-1(%rax), %eax
	movl	%eax, %ebp
	jg	.LBB1_13
.LBB1_46:                               # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	mem_mapped2_copy_mono, .Lfunc_end1-mem_mapped2_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	mem_mapped2_copy_color,@function
mem_mapped2_copy_color:                 # @mem_mapped2_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
.Ltmp16:
	.cfi_def_cfa_offset 80
.Ltmp17:
	.cfi_offset %rbx, -32
.Ltmp18:
	.cfi_offset %r14, -24
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movl	96(%rsp), %r11d
	movl	88(%rsp), %ebp
	movl	80(%rsp), %eax
	movl	%eax, %edi
	orl	%r9d, %edi
	js	.LBB2_2
# BB#1:
	movl	%eax, %r10d
	movl	%ebp, %edi
	jmp	.LBB2_5
.LBB2_2:                                # %if.then
	movl	%r9d, %edi
	sarl	$31, %edi
	andl	%r9d, %edi
	subl	%edi, %edx
	xorl	%r10d, %r10d
	testl	%r9d, %r9d
	cmovsl	%r10d, %r9d
	addl	%ebp, %edi
	testl	%eax, %eax
	js	.LBB2_4
# BB#3:
	movl	%eax, %r10d
	jmp	.LBB2_5
.LBB2_4:                                # %if.then.5
	addl	%eax, %r11d
	imull	%ecx, %eax
	cltq
	subq	%rax, %rsi
	xorl	%r8d, %r8d
.LBB2_5:                                # %if.end.8
	movl	832(%r14), %ebx
	movl	836(%r14), %ebp
	movl	%ebx, %eax
	subl	%r9d, %eax
	cmpl	%eax, %edi
	cmovlel	%edi, %eax
	subl	%r10d, %ebp
	cmpl	%ebp, %r11d
	cmovlel	%r11d, %ebp
	testl	%eax, %eax
	jle	.LBB2_8
# BB#6:                                 # %if.end.8
	testl	%ebp, %ebp
	jle	.LBB2_8
# BB#7:                                 # %do.end.26
	addl	%ebx, %ebx
	movl	%ebx, 832(%r14)
	addl	%edx, %edx
	addl	%r9d, %r9d
	addl	%eax, %eax
	movl	%ebp, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	%r10d, (%rsp)
	movq	$1, 32(%rsp)
	movq	$0, 24(%rsp)
	movq	%r14, %rdi
	callq	*mem_mono_device+1216(%rip)
	sarl	832(%r14)
	jmp	.LBB2_9
.LBB2_8:                                # %cleanup
	xorl	%eax, %eax
.LBB2_9:                                # %cleanup
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	mem_mapped2_copy_color, .Lfunc_end2-mem_mapped2_copy_color
	.cfi_endproc

	.align	16, 0x90
	.type	mem2_word_fill_rectangle,@function
mem2_word_fill_rectangle:               # @mem2_word_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp22:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp23:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp24:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp26:
	.cfi_def_cfa_offset 64
.Ltmp27:
	.cfi_offset %rbx, -56
.Ltmp28:
	.cfi_offset %r12, -48
.Ltmp29:
	.cfi_offset %r13, -40
.Ltmp30:
	.cfi_offset %r14, -32
.Ltmp31:
	.cfi_offset %r15, -24
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movl	%esi, %r15d
	movl	%edx, %eax
	orl	%r15d, %eax
	jns	.LBB3_2
# BB#1:                                 # %if.then
	movl	%r15d, %eax
	sarl	$31, %eax
	andl	%r15d, %eax
	addl	%eax, %ecx
	xorl	%eax, %eax
	testl	%r15d, %r15d
	cmovsl	%eax, %r15d
	movl	%edx, %esi
	sarl	$31, %esi
	andl	%edx, %esi
	addl	%esi, %r8d
	testl	%edx, %edx
	cmovsl	%eax, %edx
.LBB3_2:                                # %do.body.10
	movl	832(%rdi), %ebp
	movl	836(%rdi), %ebx
	subl	%r15d, %ebp
	cmpl	%ebp, %ecx
	cmovlel	%ecx, %ebp
	subl	%edx, %ebx
	cmpl	%ebx, %r8d
	cmovlel	%r8d, %ebx
	testl	%ebp, %ebp
	jle	.LBB3_5
# BB#3:                                 # %do.body.10
	testl	%ebx, %ebx
	jle	.LBB3_5
# BB#4:                                 # %do.end.34
	movslq	%edx, %rax
	movq	2576(%rdi), %rcx
	movq	(%rcx,%rax,8), %r12
	movl	1736(%rdi), %r13d
	addl	%r15d, %r15d
	addl	%ebp, %ebp
	movl	$1, %r9d
	movq	%r12, %rdi
	movl	%r13d, %esi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	movl	%ebx, %r8d
	callq	mem_swap_byte_rect
	movl	tile_patterns(,%r14,4), %ecx
	movq	%r12, %rdi
	movl	%r15d, %esi
	movl	%r13d, %edx
	movl	%ebp, %r8d
	movl	%ebx, %r9d
	callq	bits_fill_rectangle
	movl	$1, %r9d
	movq	%r12, %rdi
	movl	%r13d, %esi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	movl	%ebx, %r8d
	callq	mem_swap_byte_rect
.LBB3_5:                                # %cleanup
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	mem2_word_fill_rectangle, .Lfunc_end3-mem2_word_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	mem2_word_copy_mono,@function
mem2_word_copy_mono:                    # @mem2_word_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp34:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp36:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp37:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp39:
	.cfi_def_cfa_offset 144
.Ltmp40:
	.cfi_offset %rbx, -56
.Ltmp41:
	.cfi_offset %r12, -48
.Ltmp42:
	.cfi_offset %r13, -40
.Ltmp43:
	.cfi_offset %r14, -32
.Ltmp44:
	.cfi_offset %r15, -24
.Ltmp45:
	.cfi_offset %rbp, -16
	movl	%r9d, %r15d
	movq	%rdi, %r13
	movl	160(%rsp), %r9d
	movl	152(%rsp), %edi
	movl	144(%rsp), %eax
	movl	%eax, %ebp
	orl	%r15d, %ebp
	jns	.LBB4_1
# BB#2:                                 # %if.then
	movl	%r15d, %ebx
	sarl	$31, %ebx
	andl	%r15d, %ebx
	leal	(%rdi,%rbx), %edi
	xorl	%ebp, %ebp
	testl	%r15d, %r15d
	cmovsl	%ebp, %r15d
	subl	%ebx, %edx
	testl	%eax, %eax
	js	.LBB4_3
.LBB4_1:
	movq	%r8, 64(%rsp)           # 8-byte Spill
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	movl	%edx, 80(%rsp)          # 4-byte Spill
	movl	%ecx, 84(%rsp)          # 4-byte Spill
	movl	%eax, %ebp
.LBB4_4:                                # %if.end.8
	movl	832(%r13), %r12d
	movl	836(%r13), %r14d
	subl	%r15d, %r12d
	cmpl	%r12d, %edi
	cmovlel	%edi, %r12d
	subl	%ebp, %r14d
	cmpl	%r14d, %r9d
	cmovlel	%r9d, %r14d
	testl	%r12d, %r12d
	jle	.LBB4_7
# BB#5:                                 # %if.end.8
	testl	%r14d, %r14d
	jle	.LBB4_7
# BB#6:                                 # %do.end.26
	movslq	%ebp, %rax
	movq	2576(%r13), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movl	1736(%r13), %esi
	movl	%esi, 52(%rsp)          # 4-byte Spill
	cmpq	$-1, 168(%rsp)
	setne	%al
	cmpq	$-1, 176(%rsp)
	setne	%cl
	andb	%al, %cl
	movzbl	%cl, %r9d
	leal	(%r15,%r15), %edx
	movl	%edx, 48(%rsp)          # 4-byte Spill
	leal	(%r12,%r12), %ebx
	movl	%ebx, %ecx
	movl	%r14d, %r8d
	callq	mem_swap_byte_rect
	movq	176(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 24(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r12d, 8(%rsp)
	movl	%ebp, (%rsp)
	movq	%r13, %rdi
	movq	72(%rsp), %rsi          # 8-byte Reload
	movl	80(%rsp), %edx          # 4-byte Reload
	movl	84(%rsp), %ecx          # 4-byte Reload
	movq	64(%rsp), %r8           # 8-byte Reload
	movl	%r15d, %r9d
	callq	mem_mapped2_copy_mono
	xorl	%r9d, %r9d
	movq	56(%rsp), %rdi          # 8-byte Reload
	movl	52(%rsp), %esi          # 4-byte Reload
	movl	48(%rsp), %edx          # 4-byte Reload
	movl	%ebx, %ecx
	movl	%r14d, %r8d
	callq	mem_swap_byte_rect
.LBB4_7:                                # %cleanup
	xorl	%eax, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_3:                                # %if.then.5
	movl	%edx, 80(%rsp)          # 4-byte Spill
	addl	%eax, %r9d
	imull	%ecx, %eax
	movl	%ecx, 84(%rsp)          # 4-byte Spill
	movslq	%eax, %rdx
	subq	%rdx, %rsi
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	jmp	.LBB4_4
.Lfunc_end4:
	.size	mem2_word_copy_mono, .Lfunc_end4-mem2_word_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	mem2_word_copy_color,@function
mem2_word_copy_color:                   # @mem2_word_copy_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp47:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp48:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
.Ltmp49:
	.cfi_def_cfa_offset 80
.Ltmp50:
	.cfi_offset %rbx, -32
.Ltmp51:
	.cfi_offset %r14, -24
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movl	96(%rsp), %r11d
	movl	88(%rsp), %ebp
	movl	80(%rsp), %eax
	movl	%eax, %edi
	orl	%r9d, %edi
	js	.LBB5_2
# BB#1:
	movl	%eax, %r10d
	movl	%ebp, %edi
	jmp	.LBB5_5
.LBB5_2:                                # %if.then
	movl	%r9d, %edi
	sarl	$31, %edi
	andl	%r9d, %edi
	subl	%edi, %edx
	xorl	%r10d, %r10d
	testl	%r9d, %r9d
	cmovsl	%r10d, %r9d
	addl	%ebp, %edi
	testl	%eax, %eax
	js	.LBB5_4
# BB#3:
	movl	%eax, %r10d
	jmp	.LBB5_5
.LBB5_4:                                # %if.then.5
	addl	%eax, %r11d
	imull	%ecx, %eax
	cltq
	subq	%rax, %rsi
	xorl	%r8d, %r8d
.LBB5_5:                                # %if.end.8
	movl	832(%r14), %ebx
	movl	836(%r14), %ebp
	movl	%ebx, %eax
	subl	%r9d, %eax
	cmpl	%eax, %edi
	cmovlel	%edi, %eax
	subl	%r10d, %ebp
	cmpl	%ebp, %r11d
	cmovlel	%r11d, %ebp
	testl	%eax, %eax
	jle	.LBB5_8
# BB#6:                                 # %if.end.8
	testl	%ebp, %ebp
	jle	.LBB5_8
# BB#7:                                 # %do.end.26
	addl	%ebx, %ebx
	movl	%ebx, 832(%r14)
	addl	%edx, %edx
	addl	%r9d, %r9d
	addl	%eax, %eax
	movl	%ebp, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	%r10d, (%rsp)
	movq	$1, 32(%rsp)
	movq	$0, 24(%rsp)
	movq	%r14, %rdi
	callq	*mem_mono_word_device+1216(%rip)
	sarl	832(%r14)
	jmp	.LBB5_9
.LBB5_8:                                # %cleanup
	xorl	%eax, %eax
.LBB5_9:                                # %cleanup
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	mem2_word_copy_color, .Lfunc_end5-mem2_word_copy_color
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"image2"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceRGB"
	.size	.L.str.1, 10

	.type	mem_mapped2_device,@object # @mem_mapped2_device
	.section	.rodata,"a",@progbits
	.globl	mem_mapped2_device
	.align	8
mem_mapped2_device:
	.long	2792                    # 0xae8
	.zero	4
	.quad	0
	.quad	.L.str
	.quad	0
	.quad	0
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
	.short	2                       # 0x2
	.byte	255                     # 0xff
	.zero	1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	4                       # 0x4
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
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
	.quad	mem_open
	.quad	mem_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gx_default_output_page
	.quad	mem_close
	.quad	mem_mapped_map_rgb_color
	.quad	mem_mapped_map_color_rgb
	.quad	mem_mapped2_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	mem_mapped2_copy_mono
	.quad	mem_mapped2_copy_color
	.quad	gx_default_draw_line
	.quad	gx_default_get_bits
	.quad	gx_default_get_params
	.quad	gx_default_put_params
	.quad	gx_default_map_cmyk_color
	.quad	gx_forward_get_xfont_procs
	.quad	gx_forward_get_xfont_device
	.quad	gx_default_map_rgb_alpha_color
	.quad	gx_forward_get_page_device
	.quad	gx_default_get_alpha_bits
	.quad	gx_default_copy_alpha
	.quad	gx_default_get_band
	.quad	gx_default_copy_rop
	.quad	gx_default_fill_path
	.quad	gx_default_stroke_path
	.quad	gx_default_fill_mask
	.quad	gx_default_fill_trapezoid
	.quad	gx_default_fill_parallelogram
	.quad	gx_default_fill_triangle
	.quad	mem_draw_thin_line
	.quad	gx_default_begin_image
	.quad	gx_default_image_data
	.quad	gx_default_end_image
	.quad	gx_default_strip_tile_rectangle
	.quad	mem_gray_strip_copy_rop
	.quad	gx_default_get_clipping_box
	.quad	gx_default_begin_typed_image
	.quad	mem_get_bits_rectangle
	.quad	gx_default_map_color_rgb_alpha
	.quad	gx_default_create_compositor
	.quad	gx_default_get_hardware_params
	.quad	gx_default_text_begin
	.quad	gx_default_finish_copydevice
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.zero	768
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0
	.zero	16
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	mem_mapped2_device, 2792

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"image2w"
	.size	.L.str.2, 8

	.type	mem_mapped2_word_device,@object # @mem_mapped2_word_device
	.section	.rodata,"a",@progbits
	.globl	mem_mapped2_word_device
	.align	8
mem_mapped2_word_device:
	.long	2792                    # 0xae8
	.zero	4
	.quad	0
	.quad	.L.str.2
	.quad	0
	.quad	0
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
	.short	2                       # 0x2
	.byte	255                     # 0xff
	.zero	1
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	4                       # 0x4
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
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
	.quad	mem_open
	.quad	mem_get_initial_matrix
	.quad	gx_default_sync_output
	.quad	gx_default_output_page
	.quad	mem_close
	.quad	mem_mapped_map_rgb_color
	.quad	mem_mapped_map_color_rgb
	.quad	mem2_word_fill_rectangle
	.quad	gx_default_tile_rectangle
	.quad	mem2_word_copy_mono
	.quad	mem2_word_copy_color
	.quad	gx_default_draw_line
	.quad	gx_default_get_bits
	.quad	gx_default_get_params
	.quad	gx_default_put_params
	.quad	gx_default_map_cmyk_color
	.quad	gx_forward_get_xfont_procs
	.quad	gx_forward_get_xfont_device
	.quad	gx_default_map_rgb_alpha_color
	.quad	gx_forward_get_page_device
	.quad	gx_default_get_alpha_bits
	.quad	gx_default_copy_alpha
	.quad	gx_default_get_band
	.quad	gx_default_copy_rop
	.quad	gx_default_fill_path
	.quad	gx_default_stroke_path
	.quad	gx_default_fill_mask
	.quad	gx_default_fill_trapezoid
	.quad	gx_default_fill_parallelogram
	.quad	gx_default_fill_triangle
	.quad	mem_draw_thin_line
	.quad	gx_default_begin_image
	.quad	gx_default_image_data
	.quad	gx_default_end_image
	.quad	gx_default_strip_tile_rectangle
	.quad	gx_no_strip_copy_rop
	.quad	gx_default_get_clipping_box
	.quad	gx_default_begin_typed_image
	.quad	mem_word_get_bits_rectangle
	.quad	gx_default_map_color_rgb_alpha
	.quad	gx_default_create_compositor
	.quad	gx_default_get_hardware_params
	.quad	gx_default_text_begin
	.quad	gx_default_finish_copydevice
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.long	1                       # 0x1
	.zero	768
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0
	.zero	16
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	mem_mapped2_word_device, 2792

	.type	tile_patterns,@object   # @tile_patterns
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
tile_patterns:
	.long	0                       # 0x0
	.long	1431655765              # 0x55555555
	.long	2863311530              # 0xaaaaaaaa
	.long	4294967295              # 0xffffffff
	.size	tile_patterns, 16

	.type	mem_mapped2_copy_mono.btab,@object # @mem_mapped2_copy_mono.btab
	.section	.rodata.cst4,"aM",@progbits,4
mem_mapped2_copy_mono.btab:
	.ascii	"\000U\252\377"
	.size	mem_mapped2_copy_mono.btab, 4

	.type	mem_mapped2_copy_mono.bmask,@object # @mem_mapped2_copy_mono.bmask
mem_mapped2_copy_mono.bmask:
	.ascii	"\3000\f\003"
	.size	mem_mapped2_copy_mono.bmask, 4

	.type	mem_mapped2_copy_mono.lmask,@object # @mem_mapped2_copy_mono.lmask
mem_mapped2_copy_mono.lmask:
	.ascii	"\000\300\360\374"
	.size	mem_mapped2_copy_mono.lmask, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
