	.text
	.file	"pi.bc"
	.globl	opj_pi_check_next_level
	.align	16, 0x90
	.type	opj_pi_check_next_level,@function
opj_pi_check_next_level:                # @opj_pi_check_next_level
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movl	%edx, %ebx
	movl	%ecx, %r11d
	xorl	%eax, %eax
	testl	%edi, %edi
	js	.LBB0_17
# BB#1:                                 # %for.body.preheader
	movq	96(%rsi), %r10
	movslq	%edi, %r9
	jmp	.LBB0_2
	.align	16, 0x90
.LBB0_18:                               # %for.inc
                                        #   in Loop: Header=BB0_2 Depth=1
	decq	%r9
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movsbl	(%r8,%r9), %eax
	cmpl	$79, %eax
	jg	.LBB0_6
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$67, %eax
	je	.LBB0_11
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$76, %eax
	jne	.LBB0_18
	jmp	.LBB0_5
	.align	16, 0x90
.LBB0_6:                                # %for.body
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$80, %eax
	je	.LBB0_12
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$82, %eax
	jne	.LBB0_18
# BB#8:                                 # %sw.bb
	imulq	$5680, %rbx, %rax       # imm = 0x1630
	addq	%rax, %r10
	imulq	$148, %r11, %rbx
	movl	552(%rbx,%r10), %r9d
	movl	$1, %eax
	cmpl	512(%rbx,%r10), %r9d
	jne	.LBB0_17
	jmp	.LBB0_9
.LBB0_11:                               # %sw.bb.12
	imulq	$5680, %rbx, %rax       # imm = 0x1630
	addq	%rax, %r10
	imulq	$148, %r11, %rbx
	movl	556(%rbx,%r10), %r9d
	movl	$1, %eax
	cmpl	516(%rbx,%r10), %r9d
	je	.LBB0_9
	jmp	.LBB0_17
.LBB0_12:                               # %sw.bb.32
	imulq	$5680, %rbx, %rax       # imm = 0x1630
	addq	%rax, %r10
	imulq	$148, %r11, %rdi
	cmpl	$1, 460(%rdi,%r10)
	jne	.LBB0_15
# BB#13:                                # %sw.bb.33
	movl	560(%rdi,%r10), %ebx
	movl	$1, %eax
	cmpl	520(%rdi,%r10), %ebx
	jne	.LBB0_17
	jmp	.LBB0_14
.LBB0_15:                               # %sw.default
	movl	564(%rdi,%r10), %ebx
	movl	$1, %eax
	cmpl	528(%rdi,%r10), %ebx
	jne	.LBB0_17
# BB#16:                                # %if.then.45
	movl	568(%rdi,%r10), %ebx
	cmpl	536(%rdi,%r10), %ebx
	jne	.LBB0_17
.LBB0_14:                               # %if.then.36
	decl	%r9d
	movl	%r9d, %edi
	jmp	.LBB0_10
.LBB0_5:                                # %sw.bb.22
	imulq	$5680, %rbx, %rax       # imm = 0x1630
	addq	%rax, %r10
	imulq	$148, %r11, %rbx
	movl	548(%rbx,%r10), %r9d
	movl	$1, %eax
	cmpl	508(%rbx,%r10), %r9d
	jne	.LBB0_17
.LBB0_9:                                # %if.then.9
	decl	%edi
.LBB0_10:                               # %if.then.9
	callq	opj_pi_check_next_level
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	popq	%rbx
	retq
.LBB0_17:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end0:
	.size	opj_pi_check_next_level, .Lfunc_end0-opj_pi_check_next_level
	.cfi_endproc

	.globl	opj_pi_create_decode
	.align	16, 0x90
	.type	opj_pi_create_decode,@function
opj_pi_create_decode:                   # @opj_pi_create_decode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp4:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp5:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp6:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp8:
	.cfi_def_cfa_offset 208
.Ltmp9:
	.cfi_offset %rbx, -56
.Ltmp10:
	.cfi_offset %r12, -48
.Ltmp11:
	.cfi_offset %r13, -40
.Ltmp12:
	.cfi_offset %r14, -32
.Ltmp13:
	.cfi_offset %r15, -24
.Ltmp14:
	.cfi_offset %rbp, -16
	movl	%edx, %r12d
	movq	%rsi, %r14
	movq	%rdi, %r13
	testq	%r14, %r14
	je	.LBB1_51
# BB#1:                                 # %cond.end
	testq	%r13, %r13
	je	.LBB1_52
# BB#2:                                 # %cond.end.4
	movl	36(%r14), %eax
	imull	32(%r14), %eax
	cmpl	%r12d, %eax
	jbe	.LBB1_53
# BB#3:                                 # %cond.end.8
	movl	%r12d, %eax
	movq	96(%r14), %rbp
	imulq	$5680, %rax, %rax       # imm = 0x1630
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movl	420(%rbp,%rax), %r15d
	imull	$132, 16(%r13), %edi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB1_50
# BB#4:                                 # %cond.false.26
	movl	%r15d, 92(%rsp)         # 4-byte Spill
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	movl	16(%r13), %edi
	shlq	$3, %rdi
	callq	malloc
	movq	%rax, %r15
	testq	%r15, %r15
	je	.LBB1_5
# BB#7:                                 # %if.end.35
	movq	%rbx, 72(%rsp)          # 8-byte Spill
	movq	%r13, %rdi
	movq	%r14, %rsi
	movl	%r12d, %edx
	callq	opj_pi_create
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB1_54
# BB#8:                                 # %for.cond.preheader
	movl	16(%r13), %r8d
	testq	%r8, %r8
	je	.LBB1_15
# BB#9:                                 # %for.body.lr.ph
	movl	%r8d, %esi
	andl	$3, %esi
	xorl	%ecx, %ecx
	cmpl	%esi, %r8d
	movq	72(%rsp), %rdx          # 8-byte Reload
	je	.LBB1_13
# BB#10:                                # %vector.body.preheader
	movq	%rbx, %r9
	movq	%r8, %rcx
	subq	%rsi, %rcx
	imulq	$132, %rcx, %rdx
	movq	72(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rdx,4), %rdx
	movq	%r15, %rsi
	addq	$16, %rsi
	movl	%r8d, %ebp
	andl	$3, %ebp
	movq	%r8, %rdi
	subq	%rbp, %rdi
	movq	%rax, %rbp
	.align	16, 0x90
.LBB1_11:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	528(%rbp), %rbx
	movd	%rbp, %xmm0
	movd	%rbx, %xmm1
	punpcklqdq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0]
	leaq	1056(%rbp), %rbx
	leaq	1584(%rbp), %rax
	movd	%rax, %xmm1
	movd	%rbx, %xmm2
	punpcklqdq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0]
	movdqu	%xmm0, -16(%rsi)
	movdqu	%xmm2, (%rsi)
	addq	$32, %rsi
	addq	$2112, %rbp             # imm = 0x840
	addq	$-4, %rdi
	jne	.LBB1_11
# BB#12:
	movq	%r9, %rbx
.LBB1_13:                               # %middle.block
	cmpq	%rcx, %r8
	je	.LBB1_15
	.align	16, 0x90
.LBB1_14:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, (%r15,%rcx,8)
	addq	$528, %rdx              # imm = 0x210
	incq	%rcx
	cmpq	%r8, %rcx
	jb	.LBB1_14
.LBB1_15:                               # %for.end
	incl	92(%rsp)                # 4-byte Folded Spill
	movq	%r15, 40(%rsp)
	leaq	148(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	144(%rsp), %rax
	movq	%rax, 24(%rsp)
	leaq	120(%rsp), %rax
	movq	%rax, 16(%rsp)
	leaq	124(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	128(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	140(%rsp), %rcx
	leaq	136(%rsp), %r8
	leaq	132(%rsp), %r9
	movq	%r13, %rdi
	movq	%r14, %rsi
	movl	%r12d, %edx
	callq	opj_get_all_encoding_parameters
	movl	144(%rsp), %eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	movl	16(%r13), %ecx
	imull	%eax, %ecx
	movl	%ecx, 116(%rsp)         # 4-byte Spill
	movl	148(%rsp), %r14d
	imull	%ecx, %r14d
	movq	96(%rsp), %rbp          # 8-byte Reload
	movq	80(%rsp), %r12          # 8-byte Reload
	movl	8(%r12,%rbp), %edi
	incl	%edi
	imull	%r14d, %edi
	movl	$2, %esi
	callq	calloc
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.LBB1_16
# BB#17:                                # %if.end.72
	leaq	8(%r12,%rbp), %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movl	(%rcx), %edx
	incl	%edx
	imull	%r14d, %edx
	addq	%rdx, %rdx
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	movq	208(%rbx), %rcx
	movq	24(%r13), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movl	140(%rsp), %eax
	movl	%eax, 216(%rbx)
	movl	132(%rsp), %eax
	movl	%eax, 220(%rbx)
	movl	136(%rsp), %eax
	movl	%eax, 224(%rbx)
	movl	128(%rsp), %eax
	movl	%eax, 228(%rbx)
	movl	$1, 28(%rbx)
	movl	60(%rsp), %r8d          # 4-byte Reload
	movl	%r8d, 24(%rbx)
	movl	116(%rsp), %edx         # 4-byte Reload
	movl	%edx, 20(%rbx)
	movl	%r14d, 16(%rbx)
	movl	200(%rbx), %r9d
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	testl	%r9d, %r9d
	je	.LBB1_25
# BB#18:
	movq	104(%rsp), %rax         # 8-byte Reload
	.align	16, 0x90
.LBB1_19:                               # %for.body.85
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_23 Depth 2
	movq	16(%rcx), %rsi
	movl	%r12d, %edi
	movq	(%r15,%rdi,8), %rdi
	movl	(%rax), %ebp
	movl	%ebp, (%rcx)
	movl	4(%rax), %ebp
	movl	%ebp, 4(%rcx)
	movl	8(%rcx), %ebp
	testl	%ebp, %ebp
	je	.LBB1_24
# BB#20:                                # %for.body.93.preheader
                                        #   in Loop: Header=BB1_19 Depth=1
	xorl	%ebx, %ebx
	testb	$1, %bpl
	je	.LBB1_22
# BB#21:                                # %for.body.93.prol
                                        #   in Loop: Header=BB1_19 Depth=1
	movl	(%rdi), %ebx
	movl	%ebx, (%rsi)
	movl	4(%rdi), %ebx
	movl	%ebx, 4(%rsi)
	movl	8(%rdi), %ebx
	movl	%ebx, 8(%rsi)
	movl	12(%rdi), %ebx
	addq	$16, %rdi
	movl	%ebx, 12(%rsi)
	addq	$16, %rsi
	movl	$1, %ebx
.LBB1_22:                               # %for.body.93.preheader.split
                                        #   in Loop: Header=BB1_19 Depth=1
	cmpl	$1, %ebp
	je	.LBB1_24
	.align	16, 0x90
.LBB1_23:                               # %for.body.93
                                        #   Parent Loop BB1_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %edx
	movl	%edx, (%rsi)
	movl	4(%rdi), %edx
	movl	%edx, 4(%rsi)
	movl	8(%rdi), %edx
	movl	%edx, 8(%rsi)
	movl	12(%rdi), %edx
	movl	%edx, 12(%rsi)
	movl	16(%rdi), %edx
	movl	%edx, 16(%rsi)
	movl	20(%rdi), %edx
	movl	%edx, 20(%rsi)
	movl	24(%rdi), %edx
	movl	%edx, 24(%rsi)
	movl	28(%rdi), %edx
	movl	%edx, 28(%rsi)
	addl	$2, %ebx
	addq	$32, %rdi
	addq	$32, %rsi
	cmpl	%ebp, %ebx
	jb	.LBB1_23
.LBB1_24:                               # %for.end.100
                                        #   in Loop: Header=BB1_19 Depth=1
	addq	$24, %rcx
	addq	$64, %rax
	incl	%r12d
	cmpl	%r9d, %r12d
	jb	.LBB1_19
.LBB1_25:                               # %for.cond.108.preheader
	movl	92(%rsp), %r13d         # 4-byte Reload
	cmpl	$1, %r13d
	jbe	.LBB1_35
# BB#26:
	movl	$1, %r9d
	movq	64(%rsp), %r10          # 8-byte Reload
	.align	16, 0x90
.LBB1_27:                               # %for.body.111
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_28 Depth 2
                                        #       Child Loop BB1_32 Depth 3
	movq	456(%r10), %rsi
	movl	140(%rsp), %eax
	movl	%eax, 464(%r10)
	movl	132(%rsp), %eax
	movl	%eax, 468(%r10)
	movl	136(%rsp), %eax
	movl	%eax, 472(%r10)
	movl	128(%rsp), %eax
	movl	%eax, 476(%r10)
	movl	$1, 276(%r10)
	movl	%r8d, 272(%r10)
	movl	116(%rsp), %eax         # 4-byte Reload
	movl	%eax, 268(%r10)
	movl	%r14d, 264(%r10)
	movl	448(%r10), %r11d
	xorl	%r12d, %r12d
	testl	%r11d, %r11d
	movq	104(%rsp), %rax         # 8-byte Reload
	je	.LBB1_34
	.align	16, 0x90
.LBB1_28:                               # %for.body.127
                                        #   Parent Loop BB1_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_32 Depth 3
	movq	16(%rsi), %rcx
	movl	%r12d, %edx
	movq	(%r15,%rdx,8), %rbp
	movl	(%rax), %edx
	movl	%edx, (%rsi)
	movl	4(%rax), %edx
	movl	%edx, 4(%rsi)
	movl	8(%rsi), %edx
	testl	%edx, %edx
	je	.LBB1_33
# BB#29:                                # %for.body.140.preheader
                                        #   in Loop: Header=BB1_28 Depth=2
	xorl	%edi, %edi
	testb	$1, %dl
	je	.LBB1_31
# BB#30:                                # %for.body.140.prol
                                        #   in Loop: Header=BB1_28 Depth=2
	movl	(%rbp), %edi
	movl	%edi, (%rcx)
	movl	4(%rbp), %edi
	movl	%edi, 4(%rcx)
	movl	8(%rbp), %edi
	movl	%edi, 8(%rcx)
	movl	12(%rbp), %edi
	addq	$16, %rbp
	movl	%edi, 12(%rcx)
	addq	$16, %rcx
	movl	$1, %edi
.LBB1_31:                               # %for.body.140.preheader.split
                                        #   in Loop: Header=BB1_28 Depth=2
	cmpl	$1, %edx
	je	.LBB1_33
	.align	16, 0x90
.LBB1_32:                               # %for.body.140
                                        #   Parent Loop BB1_27 Depth=1
                                        #     Parent Loop BB1_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rbp), %ebx
	movl	%ebx, (%rcx)
	movl	4(%rbp), %ebx
	movl	%ebx, 4(%rcx)
	movl	8(%rbp), %ebx
	movl	%ebx, 8(%rcx)
	movl	12(%rbp), %ebx
	movl	%ebx, 12(%rcx)
	movl	16(%rbp), %ebx
	movl	%ebx, 16(%rcx)
	movl	20(%rbp), %ebx
	movl	%ebx, 20(%rcx)
	movl	24(%rbp), %ebx
	movl	%ebx, 24(%rcx)
	movl	28(%rbp), %ebx
	movl	%ebx, 28(%rcx)
	addl	$2, %edi
	addq	$32, %rbp
	addq	$32, %rcx
	cmpl	%edx, %edi
	jb	.LBB1_32
.LBB1_33:                               # %for.end.152
                                        #   in Loop: Header=BB1_28 Depth=2
	addq	$24, %rsi
	addq	$64, %rax
	incl	%r12d
	cmpl	%r11d, %r12d
	jb	.LBB1_28
.LBB1_34:                               # %for.end.158
                                        #   in Loop: Header=BB1_27 Depth=1
	movq	8(%r10), %rax
	movq	%rax, 256(%r10)
	leaq	248(%r10), %r10
	incl	%r9d
	cmpl	%r13d, %r9d
	jne	.LBB1_27
.LBB1_35:                               # %for.end.165
	movq	80(%rsp), %rbp          # 8-byte Reload
	movq	96(%rsp), %rbx          # 8-byte Reload
	leaq	420(%rbp,%rbx), %r14
	movq	72(%rsp), %rdi          # 8-byte Reload
	callq	free
	movq	%r15, %rdi
	callq	free
	testb	$2, 5672(%rbp,%rbx)
	movl	144(%rsp), %r8d
	jne	.LBB1_36
# BB#43:                                # %cond.end.4.i.153
	movl	(%r14), %ecx
	cmpl	$-1, %ecx
	je	.LBB1_49
# BB#44:                                # %for.body.lr.ph.i.155
	movl	148(%rsp), %edx
	movl	4(%rbp,%rbx), %esi
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %edi
	xorl	%ebx, %ebx
	testb	$1, %cl
	movq	64(%rsp), %rbp          # 8-byte Reload
	jne	.LBB1_46
# BB#45:                                # %for.body.i.169.prol
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	%esi, 88(%rax)
	movl	$1, 48(%rax)
	movl	$0, 52(%rax)
	movl	$0, 56(%rax)
	movl	$0, 72(%rax)
	movl	$0, 76(%rax)
	movl	%edx, 64(%rax)
	movl	200(%rax), %ebp
	movl	%ebp, 68(%rax)
	movl	%edi, 60(%rax)
	movl	%r8d, 80(%rax)
	movq	%rax, %rbp
	addq	$248, %rbp
	movl	$1, %ebx
.LBB1_46:                               # %for.body.lr.ph.i.155.split
	testl	%ecx, %ecx
	je	.LBB1_49
# BB#47:                                # %for.body.lr.ph.i.155.split.split
	addq	$48, %rbp
	incl	%ecx
	subl	%ebx, %ecx
	.align	16, 0x90
.LBB1_48:                               # %for.body.i.169
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, 40(%rbp)
	movl	$1, (%rbp)
	movl	$0, 4(%rbp)
	movl	$0, 8(%rbp)
	movl	$0, 24(%rbp)
	movl	$0, 28(%rbp)
	movl	%edx, 16(%rbp)
	movl	152(%rbp), %ebx
	movl	%ebx, 20(%rbp)
	movl	%edi, 12(%rbp)
	movl	%r8d, 32(%rbp)
	movl	%esi, 288(%rbp)
	movl	$1, 248(%rbp)
	movl	$0, 252(%rbp)
	movl	$0, 256(%rbp)
	movl	$0, 272(%rbp)
	movl	$0, 276(%rbp)
	movl	%edx, 264(%rbp)
	movl	400(%rbp), %ebx
	movl	%ebx, 268(%rbp)
	movl	%edi, 260(%rbp)
	movl	%r8d, 280(%rbp)
	addq	$496, %rbp              # imm = 0x1F0
	addl	$-2, %ecx
	jne	.LBB1_48
	jmp	.LBB1_49
.LBB1_5:                                # %if.then.34
	movq	%rbx, %rdi
	jmp	.LBB1_6
.LBB1_54:                               # %if.then.38
	movq	72(%rsp), %rdi          # 8-byte Reload
	callq	free
	movq	%r15, %rdi
.LBB1_6:                                # %cleanup
	callq	free
	xorl	%eax, %eax
	jmp	.LBB1_50
.LBB1_16:                               # %if.then.71
	movq	72(%rsp), %rdi          # 8-byte Reload
	callq	free
	movq	%r15, %rdi
	callq	free
	movq	%rbx, %rdi
	movl	92(%rsp), %esi          # 4-byte Reload
	callq	opj_pi_destroy
	xorl	%eax, %eax
	jmp	.LBB1_50
.LBB1_36:                               # %cond.end.4.i
	movl	(%r14), %ecx
	cmpl	$-1, %ecx
	je	.LBB1_49
# BB#37:                                # %for.body.lr.ph.i
	leaq	424(%rbp,%rbx), %rdx
	xorl	%edi, %edi
	testb	$1, %cl
	movq	64(%rsp), %rax          # 8-byte Reload
	jne	.LBB1_38
# BB#39:                                # %for.body.i.prol
	movl	460(%rbp,%rbx), %esi
	movl	%esi, 88(%rax)
	movl	$1, 48(%rax)
	movq	$0, 72(%rax)
	movl	440(%rbp,%rbx), %esi
	movl	%esi, 68(%rax)
	movdqu	(%rdx), %xmm0
	movdqu	%xmm0, 52(%rax)
	movl	%r8d, 80(%rax)
	movq	%rax, %rsi
	addq	$248, %rsi
	leaq	572(%rbp,%rbx), %rdx
	movl	$1, %edi
	jmp	.LBB1_40
.LBB1_49:
	movq	64(%rsp), %rax          # 8-byte Reload
	jmp	.LBB1_50
.LBB1_38:
	movq	%rax, %rsi
.LBB1_40:                               # %for.body.lr.ph.i.split
	testl	%ecx, %ecx
	je	.LBB1_50
# BB#41:                                # %for.body.lr.ph.i.split.split
	addq	$336, %rsi              # imm = 0x150
	incl	%ecx
	subl	%edi, %ecx
	.align	16, 0x90
.LBB1_42:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	36(%rdx), %edi
	movl	%edi, -248(%rsi)
	movl	$1, -288(%rsi)
	movl	$0, -264(%rsi)
	movl	$0, -260(%rsi)
	movl	16(%rdx), %edi
	movl	%edi, -268(%rsi)
	movups	(%rdx), %xmm0
	movups	%xmm0, -284(%rsi)
	movl	%r8d, -256(%rsi)
	movl	184(%rdx), %edi
	movl	%edi, (%rsi)
	movl	$1, -40(%rsi)
	movl	$0, -16(%rsi)
	movl	$0, -12(%rsi)
	movl	164(%rdx), %edi
	movl	%edi, -20(%rsi)
	movdqu	148(%rdx), %xmm0
	movdqu	%xmm0, -36(%rsi)
	movl	%r8d, -8(%rsi)
	addq	$296, %rdx              # imm = 0x128
	addq	$496, %rsi              # imm = 0x1F0
	addl	$-2, %ecx
	jne	.LBB1_42
.LBB1_50:                               # %cleanup
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_51:                               # %cond.false
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$1176, %edx             # imm = 0x498
	movl	$.L__PRETTY_FUNCTION__.opj_pi_create_decode, %ecx
	callq	__assert_fail
.LBB1_52:                               # %cond.false.3
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$1177, %edx             # imm = 0x499
	movl	$.L__PRETTY_FUNCTION__.opj_pi_create_decode, %ecx
	callq	__assert_fail
.LBB1_53:                               # %cond.false.7
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$1178, %edx             # imm = 0x49A
	movl	$.L__PRETTY_FUNCTION__.opj_pi_create_decode, %ecx
	callq	__assert_fail
.Lfunc_end1:
	.size	opj_pi_create_decode, .Lfunc_end1-opj_pi_create_decode
	.cfi_endproc

	.align	16, 0x90
	.type	opj_pi_create,@function
opj_pi_create:                          # @opj_pi_create
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
	pushq	%r13
.Ltmp18:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp19:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp21:
	.cfi_def_cfa_offset 96
.Ltmp22:
	.cfi_offset %rbx, -56
.Ltmp23:
	.cfi_offset %r12, -48
.Ltmp24:
	.cfi_offset %r13, -40
.Ltmp25:
	.cfi_offset %r14, -32
.Ltmp26:
	.cfi_offset %r15, -24
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbp
	testq	%rsi, %rsi
	je	.LBB2_15
# BB#1:                                 # %cond.end
	testq	%rbp, %rbp
	je	.LBB2_16
# BB#2:                                 # %cond.end.4
	movl	36(%rsi), %eax
	imull	32(%rsi), %eax
	cmpl	%edx, %eax
	jbe	.LBB2_17
# BB#3:                                 # %cond.end.8
	movl	%edx, %eax
	movq	96(%rsi), %r14
	imulq	$5680, %rax, %rbx       # imm = 0x1630
	movl	420(%r14,%rbx), %r15d
	incl	%r15d
	movq	%r15, 24(%rsp)          # 8-byte Spill
	movl	$248, %esi
	movq	%r15, %rdi
	callq	calloc
	xorl	%r12d, %r12d
	testq	%rax, %rax
	je	.LBB2_14
# BB#4:                                 # %if.end
	movq	%rax, %r12
	movq	%r12, 8(%rsp)           # 8-byte Spill
	imulq	$248, %r15, %rdx
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	memset
	testl	%r15d, %r15d
	je	.LBB2_14
# BB#5:                                 # %for.body.lr.ph
	leaq	5584(%r14,%rbx), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	16(%rbp), %eax
	movq	%r12, %rbx
.LBB2_6:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_10 Depth 2
	movl	%eax, %edi
	movl	$24, %esi
	callq	calloc
	movq	%rax, 208(%rbx)
	testq	%rax, %rax
	je	.LBB2_7
# BB#9:                                 # %if.end.41
                                        #   in Loop: Header=BB2_6 Depth=1
	movl	%r13d, 20(%rsp)         # 4-byte Spill
	movl	16(%rbp), %ecx
	movl	%ecx, 200(%rbx)
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rdx
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	cmpl	$0, 16(%rbp)
	movl	$0, %eax
	je	.LBB2_13
	.align	16, 0x90
.LBB2_10:                               # %for.body.53
                                        #   Parent Loop BB2_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r15d, %r15d
	movq	208(%rbx), %r14
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %r12
	imulq	$1080, %r15, %r13       # imm = 0x438
	movl	4(%r12,%r13), %edi
	shlq	$4, %rdi
	callq	malloc
	leaq	(%r15,%r15,2), %rcx
	movq	%rax, 16(%r14,%rcx,8)
	testq	%rax, %rax
	je	.LBB2_11
# BB#12:                                # %if.end.74
                                        #   in Loop: Header=BB2_10 Depth=2
	leaq	4(%r12,%r13), %rdx
	movl	(%rdx), %edx
	movl	%edx, 8(%r14,%rcx,8)
	shlq	$4, %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	incl	%r15d
	movl	16(%rbp), %eax
	cmpl	%eax, %r15d
	jb	.LBB2_10
.LBB2_13:                               # %for.end
                                        #   in Loop: Header=BB2_6 Depth=1
	addq	$248, %rbx
	movl	20(%rsp), %r13d         # 4-byte Reload
	incl	%r13d
	movq	24(%rsp), %r15          # 8-byte Reload
	cmpl	%r15d, %r13d
	movq	8(%rsp), %r12           # 8-byte Reload
	jb	.LBB2_6
	jmp	.LBB2_14
.LBB2_11:                               # %if.then.73
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	24(%rsp), %rsi          # 8-byte Reload
.LBB2_8:                                # %cleanup.85
	callq	opj_pi_destroy
	xorl	%r12d, %r12d
.LBB2_14:                               # %cleanup.85
	movq	%r12, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_7:                                # %if.then.40
	movq	%r12, %rdi
	movl	%r15d, %esi
	jmp	.LBB2_8
.LBB2_15:                               # %cond.false
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$799, %edx              # imm = 0x31F
	movl	$.L__PRETTY_FUNCTION__.opj_pi_create, %ecx
	callq	__assert_fail
.LBB2_16:                               # %cond.false.3
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$800, %edx              # imm = 0x320
	movl	$.L__PRETTY_FUNCTION__.opj_pi_create, %ecx
	callq	__assert_fail
.LBB2_17:                               # %cond.false.7
	movl	$.L.str.6, %edi
	movl	$.L.str.1, %esi
	movl	$801, %edx              # imm = 0x321
	movl	$.L__PRETTY_FUNCTION__.opj_pi_create, %ecx
	callq	__assert_fail
.Lfunc_end2:
	.size	opj_pi_create, .Lfunc_end2-opj_pi_create
	.cfi_endproc

	.align	16, 0x90
	.type	opj_get_all_encoding_parameters,@function
opj_get_all_encoding_parameters:        # @opj_get_all_encoding_parameters
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp31:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp32:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
.Ltmp34:
	.cfi_def_cfa_offset 160
.Ltmp35:
	.cfi_offset %rbx, -56
.Ltmp36:
	.cfi_offset %r12, -48
.Ltmp37:
	.cfi_offset %r13, -40
.Ltmp38:
	.cfi_offset %r14, -32
.Ltmp39:
	.cfi_offset %r15, -24
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%r9, 48(%rsp)           # 8-byte Spill
	movq	%r8, 40(%rsp)           # 8-byte Spill
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movl	%edx, %eax
	movq	%rdi, %rbx
	movq	%rbx, 24(%rsp)          # 8-byte Spill
	testq	%rsi, %rsi
	je	.LBB3_16
# BB#1:                                 # %cond.end
	testq	%rbx, %rbx
	je	.LBB3_17
# BB#2:                                 # %cond.end.4
	movl	32(%rsi), %ecx
	movl	36(%rsi), %edx
	imull	%ecx, %edx
	cmpl	%eax, %edx
	jbe	.LBB3_18
# BB#3:                                 # %cond.end.8
	movl	%eax, %edx
	movq	96(%rsi), %rdi
	imulq	$5680, %rdx, %rdx       # imm = 0x1630
	movq	5584(%rdi,%rdx), %rbp
	movq	24(%rbx), %r14
	xorl	%r10d, %r10d
	xorl	%edx, %edx
	divl	%ecx
	movl	12(%rsi), %ecx
	imull	%edx, %ecx
	addl	4(%rsi), %ecx
	movl	(%rbx), %edi
	cmpl	%edi, %ecx
	cmovll	%edi, %ecx
	movq	192(%rsp), %r9
	movq	32(%rsp), %rdi          # 8-byte Reload
	movl	%ecx, (%rdi)
	incl	%edx
	imull	12(%rsi), %edx
	addl	4(%rsi), %edx
	movl	8(%rbx), %ecx
	cmpl	%ecx, %edx
	cmovgl	%ecx, %edx
	movq	40(%rsp), %rcx          # 8-byte Reload
	movl	%edx, (%rcx)
	movl	16(%rsi), %ecx
	imull	%eax, %ecx
	addl	8(%rsi), %ecx
	movl	4(%rbx), %edx
	cmpl	%edx, %ecx
	cmovll	%edx, %ecx
	movq	184(%rsp), %rdi
	movq	48(%rsp), %rdx          # 8-byte Reload
	movl	%ecx, (%rdx)
	movq	176(%rsp), %r15
	incl	%eax
	imull	16(%rsi), %eax
	addl	8(%rsi), %eax
	movl	12(%rbx), %ecx
	cmpl	%ecx, %eax
	cmovgl	%ecx, %eax
	movq	160(%rsp), %rcx
	movl	%eax, (%rcx)
	movq	168(%rsp), %rax
	movl	$0, (%rdi)
	movl	$0, (%r9)
	movl	$2147483647, (%rax)     # imm = 0x7FFFFFFF
	movl	$2147483647, (%r15)     # imm = 0x7FFFFFFF
	cmpl	$0, 16(%rbx)
	je	.LBB3_15
	.align	16, 0x90
.LBB3_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_9 Depth 2
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	movl	%r10d, %eax
	movq	200(%rsp), %rcx
	movq	(%rcx,%rax,8), %r8
	movq	32(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	movl	(%r14), %ecx
	movl	4(%r14), %edi
	leal	-1(%rax,%rcx), %eax
	cltd
	idivl	%ecx
	movl	%eax, %r11d
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	leal	-1(%rax,%rdi), %eax
	cltd
	idivl	%edi
	movl	%eax, %esi
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	leal	-1(%rcx,%rax), %eax
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movq	160(%rsp), %rax
	movl	(%rax), %eax
	leal	-1(%rdi,%rax), %eax
	cltd
	idivl	%edi
	movl	4(%rbp), %ebx
	cmpl	(%r9), %ebx
	jbe	.LBB3_5
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB3_4 Depth=1
	movl	%r10d, 60(%rsp)         # 4-byte Spill
	movl	%ebx, (%r9)
	movl	4(%rbp), %ebx
	jmp	.LBB3_7
	.align	16, 0x90
.LBB3_5:                                #   in Loop: Header=BB3_4 Depth=1
	movl	%r10d, 60(%rsp)         # 4-byte Spill
.LBB3_7:                                # %if.end
                                        #   in Loop: Header=BB3_4 Depth=1
	testl	%ebx, %ebx
	je	.LBB3_14
# BB#8:                                 # %for.body.42.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	movslq	%r11d, %rdx
	decq	%rdx
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	movslq	%esi, %rdx
	decq	%rdx
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	movslq	%ecx, %rcx
	decq	%rcx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	cltq
	decq	%rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	decl	%ebx
	xorl	%r9d, %r9d
	.align	16, 0x90
.LBB3_9:                                # %for.body.42
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r9d, %eax
	movl	812(%rbp,%rax,4), %esi
	movl	944(%rbp,%rax,4), %edx
	movl	%esi, (%r8)
	movl	%edx, 4(%r8)
	leal	(%rbx,%rsi), %ecx
	movl	(%r14), %eax
	movl	4(%r14), %edi
	shll	%cl, %eax
	leal	(%rbx,%rdx), %ecx
	shll	%cl, %edi
	movq	168(%rsp), %rcx
	movq	%rcx, %rbp
	movl	(%rbp), %ecx
	cmpl	%eax, %ecx
	cmovlel	%ecx, %eax
	movl	%eax, (%rbp)
	movl	(%r15), %eax
	cmpl	%edi, %eax
	cmovlel	%eax, %edi
	movl	%edi, (%r15)
	movl	$1, %eax
	movb	%bl, %cl
	shll	%cl, %eax
	movslq	%eax, %rdi
	movq	88(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rdi), %r12
	movb	%bl, %cl
	sarq	%cl, %r12
	movq	80(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rdi), %r13
	movb	%bl, %cl
	sarq	%cl, %r13
	movq	72(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rdi), %rax
	movb	%bl, %cl
	sarq	%cl, %rax
	movq	64(%rsp), %rcx          # 8-byte Reload
	leaq	(%rdi,%rcx), %r10
	movb	%bl, %cl
	sarq	%cl, %r10
	movl	%r13d, %edi
	movb	%dl, %cl
	sarl	%cl, %edi
	movb	%dl, %cl
	shll	%cl, %edi
	movl	$1, %ebp
	movb	%dl, %cl
	shll	%cl, %ebp
	movslq	%r10d, %rcx
	movslq	%ebp, %rbp
	leaq	-1(%rcx,%rbp), %r11
	movb	%dl, %cl
	sarq	%cl, %r11
	movb	%dl, %cl
	shll	%cl, %r11d
	cmpl	%eax, %r12d
	movl	$0, %ebp
	je	.LBB3_11
# BB#10:                                # %cond.false.71
                                        #   in Loop: Header=BB3_9 Depth=2
	cltq
	movl	$1, %ebp
	movb	%sil, %cl
	shll	%cl, %ebp
	movslq	%ebp, %rcx
	leaq	-1(%rax,%rcx), %rbp
	movb	%sil, %cl
	sarq	%cl, %rbp
	movb	%sil, %cl
	sarl	%cl, %r12d
	movb	%sil, %cl
	shll	%cl, %ebp
	movb	%sil, %cl
	shll	%cl, %r12d
	subl	%r12d, %ebp
	movb	%sil, %cl
	sarl	%cl, %ebp
.LBB3_11:                               # %cond.end.73
                                        #   in Loop: Header=BB3_9 Depth=2
	subl	%edi, %r11d
	movb	%dl, %cl
	sarl	%cl, %r11d
	cmpl	%r10d, %r13d
	movl	$0, %eax
	cmovel	%eax, %r11d
	movl	%ebp, 8(%r8)
	movl	%r11d, 12(%r8)
	imull	%ebp, %r11d
	movq	184(%rsp), %rax
	cmpl	(%rax), %r11d
	jbe	.LBB3_13
# BB#12:                                # %if.then.85
                                        #   in Loop: Header=BB3_9 Depth=2
	movq	184(%rsp), %rax
	movl	%r11d, (%rax)
.LBB3_13:                               # %if.end.86
                                        #   in Loop: Header=BB3_9 Depth=2
	incl	%r9d
	decl	%ebx
	addq	$16, %r8
	movq	96(%rsp), %rbp          # 8-byte Reload
	cmpl	4(%rbp), %r9d
	jb	.LBB3_9
.LBB3_14:                               # %for.end
                                        #   in Loop: Header=BB3_4 Depth=1
	addq	$1080, %rbp             # imm = 0x438
	addq	$64, %r14
	movl	60(%rsp), %r10d         # 4-byte Reload
	incl	%r10d
	movq	24(%rsp), %rax          # 8-byte Reload
	cmpl	16(%rax), %r10d
	movq	192(%rsp), %r9
	jb	.LBB3_4
.LBB3_15:                               # %for.end.91
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_16:                               # %cond.false
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$691, %edx              # imm = 0x2B3
	movl	$.L__PRETTY_FUNCTION__.opj_get_all_encoding_parameters, %ecx
	callq	__assert_fail
.LBB3_17:                               # %cond.false.3
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$692, %edx              # imm = 0x2B4
	movl	$.L__PRETTY_FUNCTION__.opj_get_all_encoding_parameters, %ecx
	callq	__assert_fail
.LBB3_18:                               # %cond.false.7
	movl	$.L.str.7, %edi
	movl	$.L.str.1, %esi
	movl	$693, %edx              # imm = 0x2B5
	movl	$.L__PRETTY_FUNCTION__.opj_get_all_encoding_parameters, %ecx
	callq	__assert_fail
.Lfunc_end3:
	.size	opj_get_all_encoding_parameters, .Lfunc_end3-opj_get_all_encoding_parameters
	.cfi_endproc

	.globl	opj_pi_destroy
	.align	16, 0x90
	.type	opj_pi_destroy,@function
opj_pi_destroy:                         # @opj_pi_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp42:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp43:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp44:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp45:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp47:
	.cfi_def_cfa_offset 64
.Ltmp48:
	.cfi_offset %rbx, -56
.Ltmp49:
	.cfi_offset %r12, -48
.Ltmp50:
	.cfi_offset %r13, -40
.Ltmp51:
	.cfi_offset %r14, -32
.Ltmp52:
	.cfi_offset %r15, -24
.Ltmp53:
	.cfi_offset %rbp, -16
	movl	%esi, %r15d
	movq	%rdi, %r14
	testq	%r14, %r14
	je	.LBB4_15
# BB#1:                                 # %if.then
	movq	8(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB4_3
# BB#2:                                 # %if.then.2
	callq	free
	movq	$0, 8(%r14)
.LBB4_3:                                # %for.cond.preheader
	testl	%r15d, %r15d
	je	.LBB4_14
# BB#4:
	xorl	%r12d, %r12d
	movq	%r14, %r13
	.align	16, 0x90
.LBB4_5:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_8 Depth 2
	movq	208(%r13), %rbx
	testq	%rbx, %rbx
	je	.LBB4_13
# BB#6:                                 # %for.cond.8.preheader
                                        #   in Loop: Header=BB4_5 Depth=1
	movl	200(%r13), %eax
	testl	%eax, %eax
	je	.LBB4_12
# BB#7:                                 # %for.body.10.preheader
                                        #   in Loop: Header=BB4_5 Depth=1
	addq	$16, %rbx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB4_8:                                # %for.body.10
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB4_10
# BB#9:                                 # %if.then.12
                                        #   in Loop: Header=BB4_8 Depth=2
	callq	free
	movq	$0, (%rbx)
	movl	200(%r13), %eax
.LBB4_10:                               # %if.end.15
                                        #   in Loop: Header=BB4_8 Depth=2
	incl	%ebp
	addq	$24, %rbx
	cmpl	%eax, %ebp
	jb	.LBB4_8
# BB#11:                                # %for.cond.8.for.end_crit_edge
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	208(%r13), %rbx
.LBB4_12:                               # %for.end
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	%rbx, %rdi
	callq	free
	movq	$0, 208(%r13)
.LBB4_13:                               # %if.end.18
                                        #   in Loop: Header=BB4_5 Depth=1
	addq	$248, %r13
	incl	%r12d
	cmpl	%r15d, %r12d
	jne	.LBB4_5
.LBB4_14:                               # %for.end.22
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	free                    # TAILCALL
.LBB4_15:                               # %if.end.23
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	opj_pi_destroy, .Lfunc_end4-opj_pi_destroy
	.cfi_endproc

	.globl	opj_pi_initialise_encode
	.align	16, 0x90
	.type	opj_pi_initialise_encode,@function
opj_pi_initialise_encode:               # @opj_pi_initialise_encode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp55:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp56:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp57:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp58:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 56
	subq	$184, %rsp
.Ltmp60:
	.cfi_def_cfa_offset 240
.Ltmp61:
	.cfi_offset %rbx, -56
.Ltmp62:
	.cfi_offset %r12, -48
.Ltmp63:
	.cfi_offset %r13, -40
.Ltmp64:
	.cfi_offset %r14, -32
.Ltmp65:
	.cfi_offset %r15, -24
.Ltmp66:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %r13
	movq	%rdi, %r14
	testq	%r13, %r13
	je	.LBB5_42
# BB#1:                                 # %cond.end
	testq	%r14, %r14
	je	.LBB5_43
# BB#2:                                 # %cond.end.4
	movl	%ecx, 124(%rsp)         # 4-byte Spill
	movl	36(%r13), %eax
	imull	32(%r13), %eax
	cmpl	%r15d, %eax
	jbe	.LBB5_44
# BB#3:                                 # %cond.end.8
	movl	%r15d, %eax
	movq	96(%r13), %rbx
	imulq	$5680, %rax, %rbp       # imm = 0x1630
	movl	420(%rbx,%rbp), %r12d
	imull	$132, 16(%r14), %edi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB5_41
# BB#4:                                 # %cond.false.26
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movq	%rbp, 112(%rsp)         # 8-byte Spill
	movl	%r12d, 148(%rsp)        # 4-byte Spill
	movl	16(%r14), %edi
	shlq	$3, %rdi
	callq	malloc
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB5_5
# BB#7:                                 # %if.end.35
	movq	%rbx, 104(%rsp)         # 8-byte Spill
	movq	%r14, %rdi
	movq	%r13, %rsi
	movl	%r15d, %edx
	callq	opj_pi_create
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB5_45
# BB#8:                                 # %for.cond.preheader
	movl	16(%r14), %r8d
	testq	%r8, %r8
	je	.LBB5_15
# BB#9:                                 # %for.body.lr.ph
	movl	%r8d, %esi
	andl	$3, %esi
	xorl	%ecx, %ecx
	cmpl	%esi, %r8d
	movq	128(%rsp), %rdx         # 8-byte Reload
	je	.LBB5_13
# BB#10:                                # %vector.body.preheader
	movq	%rbx, %r9
	movq	%r8, %rcx
	subq	%rsi, %rcx
	imulq	$132, %rcx, %rdx
	movq	128(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rdx,4), %rdx
	movq	%r12, %rsi
	addq	$16, %rsi
	movl	%r8d, %ebp
	andl	$3, %ebp
	movq	%r8, %rdi
	subq	%rbp, %rdi
	movq	%rax, %rbp
	.align	16, 0x90
.LBB5_11:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	528(%rbp), %rbx
	movd	%rbp, %xmm0
	movd	%rbx, %xmm1
	punpcklqdq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0]
	leaq	1056(%rbp), %rbx
	leaq	1584(%rbp), %rax
	movd	%rax, %xmm1
	movd	%rbx, %xmm2
	punpcklqdq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0]
	movdqu	%xmm0, -16(%rsi)
	movdqu	%xmm2, (%rsi)
	addq	$32, %rsi
	addq	$2112, %rbp             # imm = 0x840
	addq	$-4, %rdi
	jne	.LBB5_11
# BB#12:
	movq	%r9, %rbx
.LBB5_13:                               # %middle.block
	cmpq	%rcx, %r8
	je	.LBB5_15
	.align	16, 0x90
.LBB5_14:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, (%r12,%rcx,8)
	addq	$528, %rdx              # imm = 0x210
	incq	%rcx
	cmpq	%r8, %rcx
	jb	.LBB5_14
.LBB5_15:                               # %for.end
	incl	148(%rsp)               # 4-byte Folded Spill
	movq	%r12, 40(%rsp)
	leaq	180(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	176(%rsp), %rax
	movq	%rax, 24(%rsp)
	leaq	152(%rsp), %rax
	movq	%rax, 16(%rsp)
	leaq	156(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	160(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	172(%rsp), %rcx
	leaq	168(%rsp), %r8
	leaq	164(%rsp), %r9
	movq	%r14, %rdi
	movq	%r13, %rsi
	movl	%r15d, %edx
	callq	opj_get_all_encoding_parameters
	movl	176(%rsp), %eax
	movl	%eax, 92(%rsp)          # 4-byte Spill
	movl	16(%r14), %ecx
	imull	%eax, %ecx
	movl	%ecx, 88(%rsp)          # 4-byte Spill
	movl	180(%rsp), %edx
	imull	%ecx, %edx
	movl	%edx, 84(%rsp)          # 4-byte Spill
	movb	129(%r13), %al
	movq	%r13, 96(%rsp)          # 8-byte Spill
	shrb	$3, %al
	andb	$1, %al
	movb	%al, (%rbx)
	movq	104(%rsp), %r13         # 8-byte Reload
	movq	112(%rsp), %rbp         # 8-byte Reload
	movl	8(%r13,%rbp), %edi
	imull	%edx, %edi
	movl	$2, %esi
	callq	calloc
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.LBB5_16
# BB#17:                                # %if.end.70
	movl	%r15d, 68(%rsp)         # 4-byte Spill
	leaq	8(%r13,%rbp), %rcx
	movl	(%rcx), %edx
	movl	84(%rsp), %ebp          # 4-byte Reload
	imull	%ebp, %edx
	addq	%rdx, %rdx
	xorl	%r15d, %r15d
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	movq	208(%rbx), %rcx
	movq	24(%r14), %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movq	%r14, 56(%rsp)          # 8-byte Spill
	movl	172(%rsp), %eax
	movl	%eax, 216(%rbx)
	movl	164(%rsp), %eax
	movl	%eax, 220(%rbx)
	movl	168(%rsp), %eax
	movl	%eax, 224(%rbx)
	movl	160(%rsp), %eax
	movl	%eax, 228(%rbx)
	movl	156(%rsp), %eax
	movl	%eax, 240(%rbx)
	movl	152(%rsp), %eax
	movl	%eax, 244(%rbx)
	movl	$1, 28(%rbx)
	movl	92(%rsp), %eax          # 4-byte Reload
	movl	%eax, 24(%rbx)
	movl	88(%rsp), %r13d         # 4-byte Reload
	movl	%r13d, 20(%rbx)
	movl	%ebp, 16(%rbx)
	movl	%ebp, %r8d
	movl	200(%rbx), %r9d
	movq	%rbx, 72(%rsp)          # 8-byte Spill
	testl	%r9d, %r9d
	movl	%eax, %r14d
	je	.LBB5_25
# BB#18:
	movq	136(%rsp), %rax         # 8-byte Reload
	.align	16, 0x90
.LBB5_19:                               # %for.body.82
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_23 Depth 2
	movq	16(%rcx), %rsi
	movl	%r15d, %edi
	movq	(%r12,%rdi,8), %rdi
	movl	(%rax), %ebp
	movl	%ebp, (%rcx)
	movl	4(%rax), %ebp
	movl	%ebp, 4(%rcx)
	movl	8(%rcx), %ebp
	testl	%ebp, %ebp
	je	.LBB5_24
# BB#20:                                # %for.body.92.preheader
                                        #   in Loop: Header=BB5_19 Depth=1
	xorl	%ebx, %ebx
	testb	$1, %bpl
	je	.LBB5_22
# BB#21:                                # %for.body.92.prol
                                        #   in Loop: Header=BB5_19 Depth=1
	movl	(%rdi), %ebx
	movl	%ebx, (%rsi)
	movl	4(%rdi), %ebx
	movl	%ebx, 4(%rsi)
	movl	8(%rdi), %ebx
	movl	%ebx, 8(%rsi)
	movl	12(%rdi), %ebx
	addq	$16, %rdi
	movl	%ebx, 12(%rsi)
	addq	$16, %rsi
	movl	$1, %ebx
.LBB5_22:                               # %for.body.92.preheader.split
                                        #   in Loop: Header=BB5_19 Depth=1
	cmpl	$1, %ebp
	je	.LBB5_24
	.align	16, 0x90
.LBB5_23:                               # %for.body.92
                                        #   Parent Loop BB5_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdi), %edx
	movl	%edx, (%rsi)
	movl	4(%rdi), %edx
	movl	%edx, 4(%rsi)
	movl	8(%rdi), %edx
	movl	%edx, 8(%rsi)
	movl	12(%rdi), %edx
	movl	%edx, 12(%rsi)
	movl	16(%rdi), %edx
	movl	%edx, 16(%rsi)
	movl	20(%rdi), %edx
	movl	%edx, 20(%rsi)
	movl	24(%rdi), %edx
	movl	%edx, 24(%rsi)
	movl	28(%rdi), %edx
	movl	%edx, 28(%rsi)
	addl	$2, %ebx
	addq	$32, %rdi
	addq	$32, %rsi
	cmpl	%ebp, %ebx
	jb	.LBB5_23
.LBB5_24:                               # %for.end.99
                                        #   in Loop: Header=BB5_19 Depth=1
	addq	$24, %rcx
	addq	$64, %rax
	incl	%r15d
	cmpl	%r9d, %r15d
	jb	.LBB5_19
.LBB5_25:                               # %for.cond.107.preheader
	cmpl	$1, 148(%rsp)           # 4-byte Folded Reload
	jbe	.LBB5_35
# BB#26:
	movl	$1, %r9d
	movq	72(%rsp), %r10          # 8-byte Reload
	.align	16, 0x90
.LBB5_27:                               # %for.body.110
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_28 Depth 2
                                        #       Child Loop BB5_32 Depth 3
	movq	456(%r10), %rsi
	movl	172(%rsp), %eax
	movl	%eax, 464(%r10)
	movl	164(%rsp), %eax
	movl	%eax, 468(%r10)
	movl	168(%rsp), %eax
	movl	%eax, 472(%r10)
	movl	160(%rsp), %eax
	movl	%eax, 476(%r10)
	movl	156(%rsp), %eax
	movl	%eax, 488(%r10)
	movl	152(%rsp), %eax
	movl	%eax, 492(%r10)
	movl	$1, 276(%r10)
	movl	%r14d, 272(%r10)
	movl	%r13d, 268(%r10)
	movl	%r8d, 264(%r10)
	movl	448(%r10), %r11d
	xorl	%r15d, %r15d
	testl	%r11d, %r11d
	movq	136(%rsp), %rbp         # 8-byte Reload
	je	.LBB5_34
	.align	16, 0x90
.LBB5_28:                               # %for.body.128
                                        #   Parent Loop BB5_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_32 Depth 3
	movq	16(%rsi), %rbx
	movl	%r15d, %ecx
	movq	(%r12,%rcx,8), %rcx
	movl	(%rbp), %edx
	movl	%edx, (%rsi)
	movl	4(%rbp), %edx
	movl	%edx, 4(%rsi)
	movl	8(%rsi), %edx
	testl	%edx, %edx
	je	.LBB5_33
# BB#29:                                # %for.body.141.preheader
                                        #   in Loop: Header=BB5_28 Depth=2
	xorl	%edi, %edi
	testb	$1, %dl
	je	.LBB5_31
# BB#30:                                # %for.body.141.prol
                                        #   in Loop: Header=BB5_28 Depth=2
	movl	(%rcx), %edi
	movl	%edi, (%rbx)
	movl	4(%rcx), %edi
	movl	%edi, 4(%rbx)
	movl	8(%rcx), %edi
	movl	%edi, 8(%rbx)
	movl	12(%rcx), %edi
	addq	$16, %rcx
	movl	%edi, 12(%rbx)
	addq	$16, %rbx
	movl	$1, %edi
.LBB5_31:                               # %for.body.141.preheader.split
                                        #   in Loop: Header=BB5_28 Depth=2
	cmpl	$1, %edx
	je	.LBB5_33
	.align	16, 0x90
.LBB5_32:                               # %for.body.141
                                        #   Parent Loop BB5_27 Depth=1
                                        #     Parent Loop BB5_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%rcx), %eax
	movl	%eax, (%rbx)
	movl	4(%rcx), %eax
	movl	%eax, 4(%rbx)
	movl	8(%rcx), %eax
	movl	%eax, 8(%rbx)
	movl	12(%rcx), %eax
	movl	%eax, 12(%rbx)
	movl	16(%rcx), %eax
	movl	%eax, 16(%rbx)
	movl	20(%rcx), %eax
	movl	%eax, 20(%rbx)
	movl	24(%rcx), %eax
	movl	%eax, 24(%rbx)
	movl	28(%rcx), %eax
	movl	%eax, 28(%rbx)
	addl	$2, %edi
	addq	$32, %rcx
	addq	$32, %rbx
	cmpl	%edx, %edi
	jb	.LBB5_32
.LBB5_33:                               # %for.end.153
                                        #   in Loop: Header=BB5_28 Depth=2
	addq	$24, %rsi
	addq	$64, %rbp
	incl	%r15d
	cmpl	%r11d, %r15d
	jb	.LBB5_28
.LBB5_34:                               # %for.end.159
                                        #   in Loop: Header=BB5_27 Depth=1
	movq	8(%r10), %rax
	movq	%rax, 256(%r10)
	leaq	248(%r10), %r10
	incl	%r9d
	cmpl	148(%rsp), %r9d         # 4-byte Folded Reload
	jne	.LBB5_27
.LBB5_35:                               # %for.end.166
	movq	128(%rsp), %rdi         # 8-byte Reload
	callq	free
	movq	%r12, %rdi
	callq	free
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	112(%rsp), %rcx         # 8-byte Reload
	testb	$2, 5672(%rax,%rcx)
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	96(%rsp), %rdi          # 8-byte Reload
	je	.LBB5_39
# BB#36:                                # %land.lhs.true.172
	cmpl	$1, 124(%rsp)           # 4-byte Folded Reload
	je	.LBB5_38
# BB#37:                                # %land.lhs.true.172
	movl	104(%rdi), %eax
	testl	%eax, %eax
	jne	.LBB5_38
.LBB5_39:                               # %if.else
	movl	16(%rcx), %esi
	movl	172(%rsp), %ecx
	movl	168(%rsp), %r8d
	movl	164(%rsp), %r9d
	movl	160(%rsp), %r10d
	movl	176(%rsp), %edx
	movl	180(%rsp), %eax
	movl	156(%rsp), %ebp
	movl	152(%rsp), %ebx
	movl	%ebx, 32(%rsp)
	movl	%ebp, 24(%rsp)
	movl	%eax, 16(%rsp)
	movl	%edx, 8(%rsp)
	movl	%r10d, (%rsp)
	movl	68(%rsp), %edx          # 4-byte Reload
	callq	opj_pi_update_encode_not_poc
	jmp	.LBB5_40
.LBB5_5:                                # %if.then.34
	movq	128(%rsp), %rdi         # 8-byte Reload
	jmp	.LBB5_6
.LBB5_45:                               # %if.then.38
	movq	128(%rsp), %rdi         # 8-byte Reload
	callq	free
	movq	%r12, %rdi
.LBB5_6:                                # %cleanup
	callq	free
	xorl	%eax, %eax
	jmp	.LBB5_41
.LBB5_16:                               # %if.then.69
	movq	128(%rsp), %rdi         # 8-byte Reload
	callq	free
	movq	%r12, %rdi
	callq	free
	movq	%rbx, %rdi
	movl	148(%rsp), %esi         # 4-byte Reload
	callq	opj_pi_destroy
	xorl	%eax, %eax
	jmp	.LBB5_41
.LBB5_38:                               # %if.then.178
	movl	172(%rsp), %edx
	movl	168(%rsp), %ecx
	movl	164(%rsp), %r8d
	movl	160(%rsp), %r9d
	movl	176(%rsp), %eax
	movl	156(%rsp), %esi
	movl	152(%rsp), %ebp
	movl	%ebp, 16(%rsp)
	movl	%esi, 8(%rsp)
	movl	%eax, (%rsp)
	movl	68(%rsp), %esi          # 4-byte Reload
	callq	opj_pi_update_encode_poc_and_final
.LBB5_40:                               # %cleanup
	movq	72(%rsp), %rax          # 8-byte Reload
.LBB5_41:                               # %cleanup
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_42:                               # %cond.false
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$1378, %edx             # imm = 0x562
	movl	$.L__PRETTY_FUNCTION__.opj_pi_initialise_encode, %ecx
	callq	__assert_fail
.LBB5_43:                               # %cond.false.3
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$1379, %edx             # imm = 0x563
	movl	$.L__PRETTY_FUNCTION__.opj_pi_initialise_encode, %ecx
	callq	__assert_fail
.LBB5_44:                               # %cond.false.7
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$1380, %edx             # imm = 0x564
	movl	$.L__PRETTY_FUNCTION__.opj_pi_initialise_encode, %ecx
	callq	__assert_fail
.Lfunc_end5:
	.size	opj_pi_initialise_encode, .Lfunc_end5-opj_pi_initialise_encode
	.cfi_endproc

	.align	16, 0x90
	.type	opj_pi_update_encode_poc_and_final,@function
opj_pi_update_encode_poc_and_final:     # @opj_pi_update_encode_poc_and_final
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp68:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp69:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp70:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp71:
	.cfi_def_cfa_offset 48
.Ltmp72:
	.cfi_offset %rbx, -40
.Ltmp73:
	.cfi_offset %r14, -32
.Ltmp74:
	.cfi_offset %r15, -24
.Ltmp75:
	.cfi_offset %rbp, -16
	testq	%rdi, %rdi
	je	.LBB6_8
# BB#1:                                 # %cond.end
	movl	36(%rdi), %eax
	imull	32(%rdi), %eax
	cmpl	%esi, %eax
	jbe	.LBB6_9
# BB#2:                                 # %cond.end.4
	movl	64(%rsp), %r10d
	movl	56(%rsp), %r11d
	movl	48(%rsp), %eax
	movl	%esi, %r14d
	movq	96(%rdi), %rdi
	imulq	$5680, %r14, %rbx       # imm = 0x1630
	movl	420(%rdi,%rbx), %esi
	movl	428(%rdi,%rbx), %ebp
	leal	1(%rsi), %r15d
	movl	%ebp, 500(%rdi,%rbx)
	movl	440(%rdi,%rbx), %ebp
	movl	%ebp, 516(%rdi,%rbx)
	movl	424(%rdi,%rbx), %ebp
	movl	%ebp, 496(%rdi,%rbx)
	movl	436(%rdi,%rbx), %ebp
	movl	%ebp, 512(%rdi,%rbx)
	movl	432(%rdi,%rbx), %ebp
	movl	%ebp, 508(%rdi,%rbx)
	movl	$0, 492(%rdi,%rbx)
	movl	456(%rdi,%rbx), %ebp
	movl	%ebp, 460(%rdi,%rbx)
	movl	$0, 504(%rdi,%rbx)
	movl	%eax, 520(%rdi,%rbx)
	movl	%edx, 524(%rdi,%rbx)
	movl	%ecx, 528(%rdi,%rbx)
	movl	%r8d, 532(%rdi,%rbx)
	movl	%r9d, 536(%rdi,%rbx)
	movl	%r11d, 540(%rdi,%rbx)
	movl	%r10d, 544(%rdi,%rbx)
	cmpl	$2, %r15d
	jb	.LBB6_7
# BB#3:                                 # %for.body.lr.ph
	imulq	$5680, %r14, %rbx       # imm = 0x1630
	leaq	692(%rdi,%rbx), %rdi
	.align	16, 0x90
.LBB6_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-116(%rdi), %ebx
	movl	%ebx, -44(%rdi)
	movl	-104(%rdi), %ebx
	movl	%ebx, -28(%rdi)
	movl	-120(%rdi), %ebx
	movl	%ebx, -48(%rdi)
	movl	-108(%rdi), %ebx
	movl	%ebx, -32(%rdi)
	movl	-112(%rdi), %ebx
	movl	%ebx, -36(%rdi)
	movl	-88(%rdi), %ebp
	movl	%ebp, -84(%rdi)
	movl	$0, -40(%rdi)
	cmpl	-184(%rdi), %ebx
	ja	.LBB6_6
# BB#5:                                 # %select.mid
                                        #   in Loop: Header=BB6_4 Depth=1
	xorl	%ebx, %ebx
.LBB6_6:                                # %select.end
                                        #   in Loop: Header=BB6_4 Depth=1
	movl	%ebx, -52(%rdi)
	movl	%eax, -24(%rdi)
	movl	%edx, -20(%rdi)
	movl	%ecx, -16(%rdi)
	movl	%r8d, -12(%rdi)
	movl	%r9d, -8(%rdi)
	movl	%r11d, -4(%rdi)
	movl	%r10d, (%rdi)
	addq	$148, %rdi
	decl	%esi
	jne	.LBB6_4
.LBB6_7:                                # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_8:                                # %cond.false
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$869, %edx              # imm = 0x365
	movl	$.L__PRETTY_FUNCTION__.opj_pi_update_encode_poc_and_final, %ecx
	callq	__assert_fail
.LBB6_9:                                # %cond.false.3
	movl	$.L.str.10, %edi
	movl	$.L.str.1, %esi
	movl	$870, %edx              # imm = 0x366
	movl	$.L__PRETTY_FUNCTION__.opj_pi_update_encode_poc_and_final, %ecx
	callq	__assert_fail
.Lfunc_end6:
	.size	opj_pi_update_encode_poc_and_final, .Lfunc_end6-opj_pi_update_encode_poc_and_final
	.cfi_endproc

	.align	16, 0x90
	.type	opj_pi_update_encode_not_poc,@function
opj_pi_update_encode_not_poc:           # @opj_pi_update_encode_not_poc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp77:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp78:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp79:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp80:
	.cfi_def_cfa_offset 48
.Ltmp81:
	.cfi_offset %rbx, -48
.Ltmp82:
	.cfi_offset %r12, -40
.Ltmp83:
	.cfi_offset %r14, -32
.Ltmp84:
	.cfi_offset %r15, -24
.Ltmp85:
	.cfi_offset %rbp, -16
	testq	%rdi, %rdi
	je	.LBB7_10
# BB#1:                                 # %cond.end
	movl	36(%rdi), %eax
	imull	32(%rdi), %eax
	cmpl	%edx, %eax
	jbe	.LBB7_11
# BB#2:                                 # %cond.end.4
	movl	%edx, %eax
	movq	96(%rdi), %rdi
	imulq	$5680, %rax, %rbx       # imm = 0x1630
	movl	420(%rdi,%rbx), %eax
	cmpl	$-1, %eax
	je	.LBB7_9
# BB#3:                                 # %for.body.lr.ph
	movl	80(%rsp), %r10d
	movl	72(%rsp), %r11d
	movl	64(%rsp), %r14d
	movl	56(%rsp), %r15d
	movl	48(%rsp), %r12d
	movl	4(%rdi,%rbx), %ebp
	movl	8(%rdi,%rbx), %edx
	testb	$1, %al
	jne	.LBB7_4
# BB#5:                                 # %for.body.prol
	movl	%esi, 516(%rdi,%rbx)
	movl	%r14d, 512(%rdi,%rbx)
	movl	%edx, 508(%rdi,%rbx)
	movl	%ebp, 460(%rdi,%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 492(%rdi,%rbx)
	movl	%r15d, 520(%rdi,%rbx)
	movl	%ecx, 524(%rdi,%rbx)
	movl	%r8d, 528(%rdi,%rbx)
	movl	%r9d, 532(%rdi,%rbx)
	movl	%r12d, 536(%rdi,%rbx)
	movl	%r11d, 540(%rdi,%rbx)
	movl	%r10d, 544(%rdi,%rbx)
	leaq	572(%rdi,%rbx), %rdi
	movl	$1, %ebx
	jmp	.LBB7_6
.LBB7_4:
	leaq	424(%rdi,%rbx), %rdi
	xorl	%ebx, %ebx
.LBB7_6:                                # %for.body.lr.ph.split
	testl	%eax, %eax
	je	.LBB7_9
# BB#7:                                 # %for.body.lr.ph.split.split
	incl	%eax
	subl	%ebx, %eax
	addq	$268, %rdi              # imm = 0x10C
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB7_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, -176(%rdi)
	movl	%r14d, -180(%rdi)
	movl	%edx, -184(%rdi)
	movl	%ebp, -232(%rdi)
	movups	%xmm0, -200(%rdi)
	movl	%r15d, -172(%rdi)
	movl	%ecx, -168(%rdi)
	movl	%r8d, -164(%rdi)
	movl	%r9d, -160(%rdi)
	movl	%r12d, -156(%rdi)
	movl	%r11d, -152(%rdi)
	movl	%r10d, -148(%rdi)
	movl	%esi, -28(%rdi)
	movl	%r14d, -32(%rdi)
	movl	%edx, -36(%rdi)
	movl	%ebp, -84(%rdi)
	movups	%xmm0, -52(%rdi)
	movl	%r15d, -24(%rdi)
	movl	%ecx, -20(%rdi)
	movl	%r8d, -16(%rdi)
	movl	%r9d, -12(%rdi)
	movl	%r12d, -8(%rdi)
	movl	%r11d, -4(%rdi)
	movl	%r10d, (%rdi)
	addq	$296, %rdi              # imm = 0x128
	addl	$-2, %eax
	jne	.LBB7_8
.LBB7_9:                                # %for.end
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_10:                               # %cond.false
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$945, %edx              # imm = 0x3B1
	movl	$.L__PRETTY_FUNCTION__.opj_pi_update_encode_not_poc, %ecx
	callq	__assert_fail
.LBB7_11:                               # %cond.false.3
	movl	$.L.str.10, %edi
	movl	$.L.str.1, %esi
	movl	$946, %edx              # imm = 0x3B2
	movl	$.L__PRETTY_FUNCTION__.opj_pi_update_encode_not_poc, %ecx
	callq	__assert_fail
.Lfunc_end7:
	.size	opj_pi_update_encode_not_poc, .Lfunc_end7-opj_pi_update_encode_not_poc
	.cfi_endproc

	.globl	opj_pi_create_encode
	.align	16, 0x90
	.type	opj_pi_create_encode,@function
opj_pi_create_encode:                   # @opj_pi_create_encode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp87:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp88:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp89:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp90:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp91:
	.cfi_def_cfa_offset 56
	subq	$280, %rsp              # imm = 0x118
.Ltmp92:
	.cfi_def_cfa_offset 336
.Ltmp93:
	.cfi_offset %rbx, -56
.Ltmp94:
	.cfi_offset %r12, -48
.Ltmp95:
	.cfi_offset %r13, -40
.Ltmp96:
	.cfi_offset %r14, -32
.Ltmp97:
	.cfi_offset %r15, -24
.Ltmp98:
	.cfi_offset %rbp, -16
	movl	%r9d, %ebx
	movl	%r8d, 232(%rsp)         # 4-byte Spill
	movl	%ecx, 256(%rsp)         # 4-byte Spill
	movl	%edx, 248(%rsp)         # 4-byte Spill
	movq	%rsi, %r14
	movq	%r14, 264(%rsp)         # 8-byte Spill
	movq	%rdi, %rbp
	movl	%edx, %eax
	movl	%ecx, %r15d
	imulq	$5680, %rax, %r12       # imm = 0x1630
	addq	96(%r14), %r12
	imulq	$148, %r15, %r13
	movl	460(%r13,%r12), %edi
	callq	opj_j2k_convert_progression_order
	movq	%rax, 240(%rsp)         # 8-byte Spill
	imulq	$248, %r15, %rax
	movl	$1, 48(%rbp,%rax)
	movl	460(%r13,%r12), %ecx
	leaq	52(%rbp,%rax), %rdx
	movl	%ecx, 88(%rbp,%rax)
	testb	$8, 129(%r14)
	je	.LBB8_76
# BB#1:                                 # %land.lhs.true
	cmpl	$1, 336(%rsp)
	je	.LBB8_3
# BB#2:                                 # %land.lhs.true
	movq	264(%rsp), %rcx         # 8-byte Reload
	movl	104(%rcx), %ecx
	testl	%ecx, %ecx
	jne	.LBB8_3
.LBB8_76:                               # %if.then
	movl	496(%r13,%r12), %ecx
	movl	%ecx, (%rdx)
	movl	512(%r13,%r12), %ecx
	movl	%ecx, 64(%rbp,%rax)
	movl	500(%r13,%r12), %ecx
	movl	%ecx, 56(%rbp,%rax)
	movl	516(%r13,%r12), %ecx
	movl	%ecx, 68(%rbp,%rax)
	movl	492(%r13,%r12), %ecx
	movl	%ecx, 72(%rbp,%rax)
	movl	508(%r13,%r12), %ecx
	movl	%ecx, 60(%rbp,%rax)
	movl	504(%r13,%r12), %ecx
	movl	%ecx, 76(%rbp,%rax)
	movl	520(%r13,%r12), %ecx
	movl	%ecx, 80(%rbp,%rax)
	movups	524(%r13,%r12), %xmm0
	movups	%xmm0, 104(%rbp,%rax)
.LBB8_75:                               # %if.end.628
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_3:                                # %for.cond.preheader
	leaq	460(%r13,%r12), %rcx
	movq	%rcx, 272(%rsp)         # 8-byte Spill
	leal	1(%rbx), %edi
	cmpl	$3, %edi
	jg	.LBB8_13
# BB#4:                                 # %for.body.lr.ph
	leaq	496(%r13,%r12), %rcx
	movq	%rcx, 224(%rsp)         # 8-byte Spill
	leaq	512(%r13,%r12), %rcx
	movq	%rcx, 216(%rsp)         # 8-byte Spill
	leaq	64(%rbp,%rax), %rcx
	movq	%rcx, 208(%rsp)         # 8-byte Spill
	leaq	500(%r13,%r12), %r11
	leaq	56(%rbp,%rax), %r15
	leaq	516(%r13,%r12), %r8
	leaq	68(%rbp,%rax), %rsi
	leaq	492(%r13,%r12), %rcx
	movq	%rcx, 200(%rsp)         # 8-byte Spill
	leaq	72(%rbp,%rax), %rcx
	movq	%rcx, 192(%rsp)         # 8-byte Spill
	leaq	508(%r13,%r12), %rcx
	movq	%rcx, 184(%rsp)         # 8-byte Spill
	leaq	60(%rbp,%rax), %rcx
	movq	%rcx, 176(%rsp)         # 8-byte Spill
	leaq	504(%r13,%r12), %rcx
	movq	%rcx, 168(%rsp)         # 8-byte Spill
	leaq	76(%rbp,%rax), %rcx
	movq	%rcx, 160(%rsp)         # 8-byte Spill
	movslq	%edi, %rdi
	movq	240(%rsp), %rcx         # 8-byte Reload
	leaq	(%rdi,%rcx), %r9
	movl	$3, %r10d
	subl	%ebx, %r10d
	leaq	520(%r13,%r12), %rcx
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	leaq	80(%rbp,%rax), %rcx
	movq	%rcx, 144(%rsp)         # 8-byte Spill
	leaq	524(%r13,%r12), %rcx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	leaq	104(%rbp,%rax), %rcx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	movq	208(%rsp), %r14         # 8-byte Reload
	.align	16, 0x90
.LBB8_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movsbl	(%r9), %edi
	cmpl	$79, %edi
	jg	.LBB8_9
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB8_5 Depth=1
	cmpl	$67, %edi
	jne	.LBB8_7
# BB#20:                                # %sw.bb.67
                                        #   in Loop: Header=BB8_5 Depth=1
	movl	(%r11), %edi
	movl	%edi, (%r15)
	movl	(%r8), %edi
	movl	%edi, (%rsi)
	jmp	.LBB8_12
	.align	16, 0x90
.LBB8_9:                                # %for.body
                                        #   in Loop: Header=BB8_5 Depth=1
	cmpl	$80, %edi
	jne	.LBB8_10
# BB#21:                                # %sw.bb.89
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	272(%rsp), %rdi         # 8-byte Reload
	cmpl	$1, (%rdi)
	ja	.LBB8_23
# BB#22:                                # %sw.bb.91
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	168(%rsp), %rcx         # 8-byte Reload
	movl	(%rcx), %edi
	movq	160(%rsp), %rcx         # 8-byte Reload
	movl	%edi, (%rcx)
	movq	152(%rsp), %rcx         # 8-byte Reload
	movl	(%rcx), %edi
	movq	144(%rsp), %rcx         # 8-byte Reload
	movl	%edi, (%rcx)
	jmp	.LBB8_12
	.align	16, 0x90
.LBB8_7:                                # %for.body
                                        #   in Loop: Header=BB8_5 Depth=1
	cmpl	$76, %edi
	jne	.LBB8_12
# BB#8:                                 # %sw.bb.78
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	200(%rsp), %rcx         # 8-byte Reload
	movl	(%rcx), %edi
	movq	192(%rsp), %rcx         # 8-byte Reload
	movl	%edi, (%rcx)
	movq	184(%rsp), %rcx         # 8-byte Reload
	movl	(%rcx), %edi
	movq	176(%rsp), %rcx         # 8-byte Reload
	movl	%edi, (%rcx)
	jmp	.LBB8_12
	.align	16, 0x90
.LBB8_10:                               # %for.body
                                        #   in Loop: Header=BB8_5 Depth=1
	cmpl	$82, %edi
	jne	.LBB8_12
# BB#11:                                # %sw.bb
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	224(%rsp), %rdi         # 8-byte Reload
	movl	(%rdi), %edi
	movl	%edi, (%rdx)
	movq	216(%rsp), %rdi         # 8-byte Reload
	movl	(%rdi), %edi
	movl	%edi, (%r14)
	jmp	.LBB8_12
.LBB8_23:                               # %sw.default
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	136(%rsp), %rcx         # 8-byte Reload
	movups	(%rcx), %xmm0
	movq	128(%rsp), %rcx         # 8-byte Reload
	movups	%xmm0, (%rcx)
	.align	16, 0x90
.LBB8_12:                               # %for.cond.backedge
                                        #   in Loop: Header=BB8_5 Depth=1
	incq	%r9
	decl	%r10d
	jne	.LBB8_5
.LBB8_13:                               # %for.end
	cmpl	$0, 232(%rsp)           # 4-byte Folded Reload
	je	.LBB8_24
# BB#14:                                # %for.cond.241.preheader
	movq	%rdx, 216(%rsp)         # 8-byte Spill
	testl	%ebx, %ebx
	movq	240(%rsp), %r14         # 8-byte Reload
	js	.LBB8_75
# BB#15:                                # %for.body.244.lr.ph
	leaq	552(%r13,%r12), %r8
	movq	%r8, 128(%rsp)          # 8-byte Spill
	leaq	64(%rbp,%rax), %rcx
	movq	%rcx, 168(%rsp)         # 8-byte Spill
	leaq	56(%rbp,%rax), %rcx
	movq	%rcx, 232(%rsp)         # 8-byte Spill
	leaq	68(%rbp,%rax), %rcx
	movq	%rcx, 224(%rsp)         # 8-byte Spill
	leaq	72(%rbp,%rax), %rcx
	movq	%rcx, 160(%rsp)         # 8-byte Spill
	leaq	60(%rbp,%rax), %rcx
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	leaq	76(%rbp,%rax), %rcx
	movq	%rcx, 144(%rsp)         # 8-byte Spill
	leaq	80(%rbp,%rax), %rcx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	leaq	104(%rbp,%rax), %rcx
	movq	%rcx, 192(%rsp)         # 8-byte Spill
	leaq	108(%rbp,%rax), %rcx
	movq	%rcx, 184(%rsp)         # 8-byte Spill
	leaq	112(%rbp,%rax), %rcx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	leaq	116(%rbp,%rax), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	leaq	512(%r13,%r12), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	leaq	496(%r13,%r12), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leaq	556(%r13,%r12), %r9
	leaq	516(%r13,%r12), %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	leaq	500(%r13,%r12), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	leaq	548(%r13,%r12), %r10
	leaq	508(%r13,%r12), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	leaq	492(%r13,%r12), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leaq	560(%r13,%r12), %r11
	movq	%r11, 40(%rsp)          # 8-byte Spill
	leaq	520(%r13,%r12), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leaq	504(%r13,%r12), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leaq	564(%r13,%r12), %rax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	leaq	528(%r13,%r12), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leaq	540(%r13,%r12), %rax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	leaq	568(%r13,%r12), %rax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	leaq	536(%r13,%r12), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	leaq	544(%r13,%r12), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	leaq	524(%r13,%r12), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	532(%r13,%r12), %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	movslq	%ebx, %r15
	incq	%r15
	decl	%ebx
	movl	$1, %esi
	jmp	.LBB8_16
.LBB8_67:                               # %if.then.513
                                        #   in Loop: Header=BB8_16 Depth=1
	movq	%r10, %r13
	movq	%r9, %r12
	movq	%r8, %rbp
	movq	200(%rsp), %rdi         # 8-byte Reload
	movl	(%rdi), %eax
	movq	48(%rsp), %rcx          # 8-byte Reload
	cmpl	(%rcx), %eax
	jae	.LBB8_68
# BB#70:                                # %if.else.548
                                        #   in Loop: Header=BB8_16 Depth=1
	movq	120(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	movq	104(%rsp), %rcx         # 8-byte Reload
	movl	(%rcx), %esi
	leal	(%rsi,%rax), %ecx
	xorl	%edx, %edx
	divl	%esi
	subl	%edx, %ecx
	xorl	%esi, %esi
	movq	%rbp, %r8
	movq	%r12, %r9
	movq	%r13, %r10
	movq	40(%rsp), %r11          # 8-byte Reload
	jmp	.LBB8_71
.LBB8_68:                               # %if.then.518
                                        #   in Loop: Header=BB8_16 Depth=1
	movl	%ebx, %edi
	movq	264(%rsp), %rsi         # 8-byte Reload
	movl	248(%rsp), %edx         # 4-byte Reload
	movl	256(%rsp), %ecx         # 4-byte Reload
	movq	%r14, %r8
	callq	opj_pi_check_next_level
	xorl	%esi, %esi
	testl	%eax, %eax
	movq	%rbp, %r8
	movq	%r12, %r9
	movq	%r13, %r10
	movq	40(%rsp), %r11          # 8-byte Reload
	je	.LBB8_74
# BB#69:                                # %if.then.522
                                        #   in Loop: Header=BB8_16 Depth=1
	movq	(%rsp), %rax            # 8-byte Reload
	movl	(%rax), %eax
	movq	200(%rsp), %rdi         # 8-byte Reload
	movl	%eax, (%rdi)
	movq	120(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	movq	104(%rsp), %rcx         # 8-byte Reload
	movl	(%rcx), %esi
	leal	(%rsi,%rax), %ecx
	xorl	%edx, %edx
	divl	%esi
	subl	%edx, %ecx
	movl	$1, %esi
.LBB8_71:                               # %if.then.573
                                        #   in Loop: Header=BB8_16 Depth=1
	movq	%rdi, 200(%rsp)         # 8-byte Spill
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	%ecx, (%rax)
	movl	%ecx, (%rdi)
	movq	32(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	movq	192(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	movq	176(%rsp), %rcx         # 8-byte Reload
	movl	(%rcx), %ecx
	leal	(%rcx,%rax), %edi
	xorl	%edx, %edx
	divl	%ecx
	subl	%edx, %edi
	movq	184(%rsp), %rax         # 8-byte Reload
	movl	%edi, (%rax)
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	%edi, (%rax)
	jmp	.LBB8_74
	.align	16, 0x90
.LBB8_16:                               # %for.body.244
                                        # =>This Inner Loop Header: Depth=1
	movsbl	-1(%r14,%r15), %eax
	cmpl	$79, %eax
	jg	.LBB8_37
# BB#17:                                # %for.body.244
                                        #   in Loop: Header=BB8_16 Depth=1
	cmpl	$67, %eax
	jne	.LBB8_18
# BB#78:                                # %sw.bb.248
                                        #   in Loop: Header=BB8_16 Depth=1
	movl	(%r9), %eax
	leal	-1(%rax), %ecx
	movq	232(%rsp), %rdx         # 8-byte Reload
	movl	%ecx, (%rdx)
	movq	224(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	jmp	.LBB8_43
	.align	16, 0x90
.LBB8_37:                               # %for.body.244
                                        #   in Loop: Header=BB8_16 Depth=1
	cmpl	$80, %eax
	jne	.LBB8_38
# BB#40:                                # %sw.bb.284
                                        #   in Loop: Header=BB8_16 Depth=1
	movq	272(%rsp), %rax         # 8-byte Reload
	cmpl	$1, (%rax)
	ja	.LBB8_42
# BB#41:                                # %sw.bb.286
                                        #   in Loop: Header=BB8_16 Depth=1
	movl	(%r11), %eax
	leal	-1(%rax), %ecx
	movq	144(%rsp), %rdx         # 8-byte Reload
	movl	%ecx, (%rdx)
	movq	136(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	jmp	.LBB8_43
	.align	16, 0x90
.LBB8_18:                               # %for.body.244
                                        #   in Loop: Header=BB8_16 Depth=1
	cmpl	$76, %eax
	jne	.LBB8_43
# BB#19:                                # %sw.bb.272
                                        #   in Loop: Header=BB8_16 Depth=1
	movl	(%r10), %eax
	leal	-1(%rax), %ecx
	movq	160(%rsp), %rdx         # 8-byte Reload
	movl	%ecx, (%rdx)
	movq	152(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	jmp	.LBB8_43
	.align	16, 0x90
.LBB8_38:                               # %for.body.244
                                        #   in Loop: Header=BB8_16 Depth=1
	cmpl	$82, %eax
	jne	.LBB8_43
# BB#39:                                # %sw.bb.260
                                        #   in Loop: Header=BB8_16 Depth=1
	movl	(%r8), %eax
	leal	-1(%rax), %ecx
	movq	216(%rsp), %rdx         # 8-byte Reload
	movl	%ecx, (%rdx)
	movq	168(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	jmp	.LBB8_43
.LBB8_42:                               # %sw.default.298
                                        #   in Loop: Header=BB8_16 Depth=1
	movq	208(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %ebp
	movq	176(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %edi
	movl	%ebp, %ecx
	subl	%edi, %ecx
	xorl	%edx, %edx
	movl	%ebp, %eax
	divl	%edi
	subl	%edx, %ecx
	movq	192(%rsp), %rax         # 8-byte Reload
	movl	%ecx, (%rax)
	movq	184(%rsp), %rax         # 8-byte Reload
	movl	%ebp, (%rax)
	movq	200(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %ebp
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %edi
	movl	%ebp, %ecx
	subl	%edi, %ecx
	xorl	%edx, %edx
	movl	%ebp, %eax
	divl	%edi
	subl	%edx, %ecx
	movq	120(%rsp), %rax         # 8-byte Reload
	movl	%ecx, (%rax)
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	%ebp, (%rax)
	.align	16, 0x90
.LBB8_43:                               # %sw.epilog.332
                                        #   in Loop: Header=BB8_16 Depth=1
	cmpl	$1, %esi
	jne	.LBB8_74
# BB#44:                                # %if.then.335
                                        #   in Loop: Header=BB8_16 Depth=1
	movsbl	-1(%r14,%r15), %eax
	movl	$1, %esi
	cmpl	$79, %eax
	jg	.LBB8_50
# BB#45:                                # %if.then.335
                                        #   in Loop: Header=BB8_16 Depth=1
	cmpl	$67, %eax
	jne	.LBB8_46
# BB#56:                                # %sw.bb.380
                                        #   in Loop: Header=BB8_16 Depth=1
	movl	(%r9), %eax
	movq	96(%rsp), %rcx          # 8-byte Reload
	cmpl	(%rcx), %eax
	jne	.LBB8_59
# BB#57:                                # %if.then.385
                                        #   in Loop: Header=BB8_16 Depth=1
	movl	%ebx, %edi
	movq	264(%rsp), %rsi         # 8-byte Reload
	movl	248(%rsp), %edx         # 4-byte Reload
	movl	256(%rsp), %ecx         # 4-byte Reload
	movq	%r14, %r8
	movq	%r9, %rbp
	movq	%r10, %r13
	movq	%r14, %r12
	movq	%r11, %r14
	callq	opj_pi_check_next_level
	movq	%r14, %r11
	movq	%r12, %r14
	movq	%r13, %r10
	movq	%rbp, %r9
	movq	128(%rsp), %r8          # 8-byte Reload
	xorl	%esi, %esi
	testl	%eax, %eax
	je	.LBB8_74
# BB#58:                                # %if.then.389
                                        #   in Loop: Header=BB8_16 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	movq	232(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	incl	%eax
	movq	224(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	movl	%eax, (%r9)
	movl	$1, %esi
	jmp	.LBB8_74
	.align	16, 0x90
.LBB8_50:                               # %if.then.335
                                        #   in Loop: Header=BB8_16 Depth=1
	cmpl	$80, %eax
	jne	.LBB8_51
# BB#61:                                # %sw.bb.464
                                        #   in Loop: Header=BB8_16 Depth=1
	movq	272(%rsp), %rax         # 8-byte Reload
	cmpl	$1, (%rax)
	ja	.LBB8_66
# BB#62:                                # %sw.bb.466
                                        #   in Loop: Header=BB8_16 Depth=1
	movl	(%r11), %eax
	movq	72(%rsp), %rcx          # 8-byte Reload
	cmpl	(%rcx), %eax
	jne	.LBB8_65
# BB#63:                                # %if.then.471
                                        #   in Loop: Header=BB8_16 Depth=1
	movl	%ebx, %edi
	movq	264(%rsp), %rsi         # 8-byte Reload
	movl	248(%rsp), %edx         # 4-byte Reload
	movl	256(%rsp), %ecx         # 4-byte Reload
	movq	%r14, %r8
	movq	%r9, %rbp
	movq	%r10, %r13
	movq	%r14, %r12
	movq	%r11, %r14
	callq	opj_pi_check_next_level
	movq	%r14, %r11
	movq	%r12, %r14
	movq	%r13, %r10
	movq	%rbp, %r9
	movq	128(%rsp), %r8          # 8-byte Reload
	xorl	%esi, %esi
	testl	%eax, %eax
	je	.LBB8_74
# BB#64:                                # %if.then.475
                                        #   in Loop: Header=BB8_16 Depth=1
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	(%rax), %eax
	movq	144(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	incl	%eax
	movq	136(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	movl	%eax, (%r11)
	movl	$1, %esi
	jmp	.LBB8_74
.LBB8_46:                               # %if.then.335
                                        #   in Loop: Header=BB8_16 Depth=1
	cmpl	$76, %eax
	jne	.LBB8_74
# BB#47:                                # %sw.bb.422
                                        #   in Loop: Header=BB8_16 Depth=1
	movl	(%r10), %eax
	movq	80(%rsp), %rcx          # 8-byte Reload
	cmpl	(%rcx), %eax
	jne	.LBB8_60
# BB#48:                                # %if.then.427
                                        #   in Loop: Header=BB8_16 Depth=1
	movl	%ebx, %edi
	movq	264(%rsp), %rsi         # 8-byte Reload
	movl	248(%rsp), %edx         # 4-byte Reload
	movl	256(%rsp), %ecx         # 4-byte Reload
	movq	%r14, %r8
	movq	%r9, %rbp
	movq	%r10, %r13
	movq	%r14, %r12
	movq	%r11, %r14
	callq	opj_pi_check_next_level
	movq	%r14, %r11
	movq	%r12, %r14
	movq	%r13, %r10
	movq	%rbp, %r9
	movq	128(%rsp), %r8          # 8-byte Reload
	xorl	%esi, %esi
	testl	%eax, %eax
	je	.LBB8_74
# BB#49:                                # %if.then.431
                                        #   in Loop: Header=BB8_16 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	movq	160(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	incl	%eax
	movq	152(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	movl	%eax, (%r10)
	movl	$1, %esi
	jmp	.LBB8_74
.LBB8_51:                               # %if.then.335
                                        #   in Loop: Header=BB8_16 Depth=1
	cmpl	$82, %eax
	jne	.LBB8_74
# BB#52:                                # %sw.bb.339
                                        #   in Loop: Header=BB8_16 Depth=1
	movl	(%r8), %eax
	movq	88(%rsp), %rcx          # 8-byte Reload
	cmpl	(%rcx), %eax
	jne	.LBB8_55
# BB#53:                                # %if.then.344
                                        #   in Loop: Header=BB8_16 Depth=1
	movl	%ebx, %edi
	movq	264(%rsp), %rsi         # 8-byte Reload
	movl	248(%rsp), %edx         # 4-byte Reload
	movl	256(%rsp), %ecx         # 4-byte Reload
	movq	%r14, %r8
	movq	%r9, %rbp
	movq	%r10, %r13
	movq	%r11, %r12
	callq	opj_pi_check_next_level
	movq	%r12, %r11
	movq	%r13, %r10
	movq	%rbp, %r9
	movq	128(%rsp), %r8          # 8-byte Reload
	xorl	%esi, %esi
	testl	%eax, %eax
	je	.LBB8_74
# BB#54:                                # %if.then.348
                                        #   in Loop: Header=BB8_16 Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	movq	216(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	incl	%eax
	movq	168(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	movl	%eax, (%r8)
	movl	$1, %esi
	jmp	.LBB8_74
.LBB8_59:                               # %if.else.407
                                        #   in Loop: Header=BB8_16 Depth=1
	movq	232(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	incl	%eax
	movq	224(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	movl	%eax, (%r9)
	jmp	.LBB8_73
.LBB8_66:                               # %sw.default.508
                                        #   in Loop: Header=BB8_16 Depth=1
	movq	208(%rsp), %rdi         # 8-byte Reload
	movl	(%rdi), %eax
	movq	64(%rsp), %rcx          # 8-byte Reload
	cmpl	(%rcx), %eax
	jae	.LBB8_67
# BB#72:                                # %if.else.598
                                        #   in Loop: Header=BB8_16 Depth=1
	movq	192(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	movq	176(%rsp), %rcx         # 8-byte Reload
	movl	(%rcx), %ecx
	leal	(%rcx,%rax), %esi
	xorl	%edx, %edx
	divl	%ecx
	subl	%edx, %esi
	movq	184(%rsp), %rax         # 8-byte Reload
	movl	%esi, (%rax)
	movl	%esi, (%rdi)
	jmp	.LBB8_73
.LBB8_65:                               # %if.else.493
                                        #   in Loop: Header=BB8_16 Depth=1
	movq	144(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	incl	%eax
	movq	136(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	movl	%eax, (%r11)
	jmp	.LBB8_73
.LBB8_60:                               # %if.else.449
                                        #   in Loop: Header=BB8_16 Depth=1
	movq	160(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	incl	%eax
	movq	152(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	movl	%eax, (%r10)
	jmp	.LBB8_73
.LBB8_55:                               # %if.else.365
                                        #   in Loop: Header=BB8_16 Depth=1
	movq	216(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	incl	%eax
	movq	168(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	movl	%eax, (%r8)
.LBB8_73:                               # %for.inc.624
                                        #   in Loop: Header=BB8_16 Depth=1
	xorl	%esi, %esi
	.align	16, 0x90
.LBB8_74:                               # %for.inc.624
                                        #   in Loop: Header=BB8_16 Depth=1
	decq	%r15
	decl	%ebx
	testq	%r15, %r15
	jg	.LBB8_16
	jmp	.LBB8_75
.LBB8_24:                               # %for.cond.126.preheader
	movq	%rdx, 216(%rsp)         # 8-byte Spill
	testl	%ebx, %ebx
	movq	240(%rsp), %rdi         # 8-byte Reload
	js	.LBB8_75
# BB#25:                                # %for.body.129.lr.ph
	leaq	500(%r13,%r12), %r9
	leaq	556(%r13,%r12), %r10
	leaq	496(%r13,%r12), %rcx
	movq	%rcx, 264(%rsp)         # 8-byte Spill
	leaq	552(%r13,%r12), %rcx
	movq	%rcx, 256(%rsp)         # 8-byte Spill
	leaq	492(%r13,%r12), %rcx
	movq	%rcx, 248(%rsp)         # 8-byte Spill
	leaq	548(%r13,%r12), %rcx
	movq	%rcx, 232(%rsp)         # 8-byte Spill
	leaq	504(%r13,%r12), %rcx
	movq	%rcx, 224(%rsp)         # 8-byte Spill
	leaq	560(%r13,%r12), %rcx
	movq	%rcx, 208(%rsp)         # 8-byte Spill
	leaq	524(%r13,%r12), %rcx
	movq	%rcx, 200(%rsp)         # 8-byte Spill
	leaq	564(%r13,%r12), %rcx
	movq	%rcx, 192(%rsp)         # 8-byte Spill
	leaq	532(%r13,%r12), %rcx
	movq	%rcx, 184(%rsp)         # 8-byte Spill
	leaq	568(%r13,%r12), %rcx
	movq	%rcx, 176(%rsp)         # 8-byte Spill
	leaq	540(%r13,%r12), %rcx
	movq	%rcx, 168(%rsp)         # 8-byte Spill
	leaq	544(%r13,%r12), %rcx
	movq	%rcx, 160(%rsp)         # 8-byte Spill
	leaq	56(%rbp,%rax), %r11
	leaq	68(%rbp,%rax), %r14
	leaq	64(%rbp,%rax), %rcx
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	leaq	72(%rbp,%rax), %rcx
	movq	%rcx, 144(%rsp)         # 8-byte Spill
	leaq	60(%rbp,%rax), %rcx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	leaq	76(%rbp,%rax), %rcx
	movq	%rcx, 128(%rsp)         # 8-byte Spill
	leaq	80(%rbp,%rax), %rcx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	leaq	104(%rbp,%rax), %rcx
	movq	%rcx, 112(%rsp)         # 8-byte Spill
	leaq	108(%rbp,%rax), %rcx
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	leaq	112(%rbp,%rax), %r15
	leaq	116(%rbp,%rax), %r13
	movslq	%ebx, %rbx
	incq	%rbx
	.align	16, 0x90
.LBB8_26:                               # %for.body.129
                                        # =>This Inner Loop Header: Depth=1
	movsbl	-1(%rdi,%rbx), %eax
	cmpl	$79, %eax
	jg	.LBB8_30
# BB#27:                                # %for.body.129
                                        #   in Loop: Header=BB8_26 Depth=1
	cmpl	$67, %eax
	jne	.LBB8_28
# BB#77:                                # %sw.bb.133
                                        #   in Loop: Header=BB8_26 Depth=1
	movl	(%r9), %eax
	movl	%eax, (%r11)
	incl	%eax
	movl	%eax, (%r14)
	movl	%eax, (%r10)
	jmp	.LBB8_36
	.align	16, 0x90
.LBB8_30:                               # %for.body.129
                                        #   in Loop: Header=BB8_26 Depth=1
	cmpl	$80, %eax
	jne	.LBB8_31
# BB#33:                                # %sw.bb.178
                                        #   in Loop: Header=BB8_26 Depth=1
	movq	272(%rsp), %rax         # 8-byte Reload
	cmpl	$1, (%rax)
	ja	.LBB8_35
# BB#34:                                # %sw.bb.180
                                        #   in Loop: Header=BB8_26 Depth=1
	movq	224(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movq	128(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	incl	%eax
	movq	120(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	movq	208(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	jmp	.LBB8_36
	.align	16, 0x90
.LBB8_28:                               # %for.body.129
                                        #   in Loop: Header=BB8_26 Depth=1
	cmpl	$76, %eax
	jne	.LBB8_36
# BB#29:                                # %sw.bb.163
                                        #   in Loop: Header=BB8_26 Depth=1
	movq	248(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movq	144(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	incl	%eax
	movq	136(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	movq	232(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	jmp	.LBB8_36
	.align	16, 0x90
.LBB8_31:                               # %for.body.129
                                        #   in Loop: Header=BB8_26 Depth=1
	cmpl	$82, %eax
	jne	.LBB8_36
# BB#32:                                # %sw.bb.148
                                        #   in Loop: Header=BB8_26 Depth=1
	movq	264(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movq	216(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	incl	%eax
	movq	152(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	movq	256(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	jmp	.LBB8_36
.LBB8_35:                               # %sw.default.195
                                        #   in Loop: Header=BB8_26 Depth=1
	movq	200(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movq	184(%rsp), %rcx         # 8-byte Reload
	movl	(%rcx), %ecx
	movq	112(%rsp), %rdx         # 8-byte Reload
	movl	%eax, (%rdx)
	movq	168(%rsp), %rdx         # 8-byte Reload
	movl	(%rdx), %r8d
	leal	(%r8,%rax), %r12d
	xorl	%edx, %edx
	divl	%r8d
	subl	%edx, %r12d
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	%r12d, (%rax)
	movl	%ecx, (%r15)
	movq	160(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %ebp
	leal	(%rbp,%rcx), %esi
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%ebp
	subl	%edx, %esi
	movl	%esi, (%r13)
	movq	192(%rsp), %rax         # 8-byte Reload
	movl	%r12d, (%rax)
	movq	176(%rsp), %rax         # 8-byte Reload
	movl	%esi, (%rax)
	.align	16, 0x90
.LBB8_36:                               # %for.inc.238
                                        #   in Loop: Header=BB8_26 Depth=1
	decq	%rbx
	testq	%rbx, %rbx
	jg	.LBB8_26
	jmp	.LBB8_75
.Lfunc_end8:
	.size	opj_pi_create_encode, .Lfunc_end8-opj_pi_create_encode
	.cfi_endproc

	.globl	opj_pi_update_encoding_parameters
	.align	16, 0x90
	.type	opj_pi_update_encoding_parameters,@function
opj_pi_update_encoding_parameters:      # @opj_pi_update_encoding_parameters
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp100:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp101:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp102:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp103:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp104:
	.cfi_def_cfa_offset 56
	subq	$232, %rsp
.Ltmp105:
	.cfi_def_cfa_offset 288
.Ltmp106:
	.cfi_offset %rbx, -56
.Ltmp107:
	.cfi_offset %r12, -48
.Ltmp108:
	.cfi_offset %r13, -40
.Ltmp109:
	.cfi_offset %r14, -32
.Ltmp110:
	.cfi_offset %r15, -24
.Ltmp111:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	testq	%rsi, %rsi
	je	.LBB9_16
# BB#1:                                 # %cond.end
	testq	%rdi, %rdi
	je	.LBB9_17
# BB#2:                                 # %cond.end.4
	movl	32(%rsi), %ecx
	movl	36(%rsi), %eax
	imull	%ecx, %eax
	cmpl	%ebp, %eax
	jbe	.LBB9_18
# BB#3:                                 # %cond.end.8.i
	movl	%ebp, %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	96(%rsi), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	movl	%ebp, %eax
	movl	%ebp, 60(%rsp)          # 4-byte Spill
	divl	%ecx
	movl	12(%rsi), %r10d
	movl	%r10d, %ebp
	imull	%edx, %ebp
	movl	4(%rsi), %r11d
	movl	8(%rsi), %r8d
	addl	%r11d, %ebp
	movl	(%rdi), %ecx
	movl	4(%rdi), %r9d
	cmpl	%ecx, %ebp
	cmovll	%ecx, %ebp
	movq	%rbp, 88(%rsp)          # 8-byte Spill
	incl	%edx
	imull	%r10d, %edx
	addl	%r11d, %edx
	movl	8(%rdi), %ecx
	cmpl	%ecx, %edx
	cmovgl	%ecx, %edx
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	movl	16(%rsi), %ecx
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movl	%ecx, %edx
	imull	%eax, %edx
	addl	%r8d, %edx
	cmpl	%r9d, %edx
	cmovll	%r9d, %edx
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	incl	%eax
	imull	%ecx, %eax
	addl	%r8d, %eax
	movl	12(%rdi), %ecx
	cmpl	%ecx, %eax
	cmovgl	%ecx, %eax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movl	16(%rdi), %eax
	movl	%eax, 144(%rsp)         # 4-byte Spill
	movl	$2147483647, %r15d      # imm = 0x7FFFFFFF
	testl	%eax, %eax
	movl	$0, %ebp
	movl	$2147483647, %r14d      # imm = 0x7FFFFFFF
	je	.LBB9_12
# BB#4:                                 # %for.body.i.preheader
	imulq	$5680, 80(%rsp), %rax   # 8-byte Folded Reload
                                        # imm = 0x1630
	movq	72(%rsp), %rcx          # 8-byte Reload
	movq	5584(%rcx,%rax), %rax
	movq	24(%rdi), %rcx
	movq	%rax, %rdi
	movq	96(%rsp), %rax          # 8-byte Reload
	leal	-1(%rax), %eax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movq	104(%rsp), %rax         # 8-byte Reload
	leal	-1(%rax), %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movq	64(%rsp), %rax          # 8-byte Reload
	leal	-1(%rax), %eax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movq	88(%rsp), %rax          # 8-byte Reload
	leal	-1(%rax), %eax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movl	$2147483647, %r15d      # imm = 0x7FFFFFFF
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$2147483647, %r14d      # imm = 0x7FFFFFFF
	xorl	%eax, %eax
	.align	16, 0x90
.LBB9_5:                                # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_8 Depth 2
	movl	%eax, 148(%rsp)         # 4-byte Spill
	movl	4(%rdi), %ebp
	movq	%rbp, 216(%rsp)         # 8-byte Spill
	cmpl	%ebx, %ebp
	cmoval	%ebp, %ebx
	testl	%ebp, %ebp
	je	.LBB9_6
# BB#7:                                 # %for.body.39.lr.ph.i
                                        #   in Loop: Header=BB9_5 Depth=1
	movl	%ebx, 164(%rsp)         # 4-byte Spill
	movl	(%rcx), %r10d
	movq	%r10, 208(%rsp)         # 8-byte Spill
	movl	4(%rcx), %ebx
	movq	%rbx, 200(%rsp)         # 8-byte Spill
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	movq	136(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rbx), %eax
	cltd
	idivl	%ebx
	movl	%eax, %r8d
	movq	128(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%r10), %eax
	cltd
	idivl	%r10d
	movq	%rdi, %r9
	movl	%eax, %edi
	movq	120(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rbx), %eax
	cltd
	idivl	%ebx
	movl	%eax, %ecx
	movq	112(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%r10), %eax
	cltd
	idivl	%r10d
	cltq
	decq	%rax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movslq	%ecx, %rax
	decq	%rax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	movslq	%edi, %rax
	movq	%r9, %rdi
	decq	%rax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	movslq	%r8d, %rax
	decq	%rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	leal	-1(%rbp), %eax
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB9_8:                                # %for.body.39.i
                                        #   Parent Loop BB9_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%esi, 228(%rsp)         # 4-byte Spill
	movl	%r14d, %esi
	movl	%r15d, %ebp
	movl	812(%rdi,%r13,4), %r9d
	movl	944(%rdi,%r13,4), %edx
	leal	(%r9,%rax), %ecx
	movq	208(%rsp), %rbx         # 8-byte Reload
	movl	%ebx, %r15d
	shll	%cl, %r15d
	leal	(%rax,%rdx), %ecx
	movq	200(%rsp), %rbx         # 8-byte Reload
	movl	%ebx, %r14d
	shll	%cl, %r14d
	cmpl	%r15d, %ebp
	cmovbl	%ebp, %r15d
	cmpl	%r14d, %esi
	cmovbl	%esi, %r14d
	movl	$1, %esi
	movb	%al, %cl
	shll	%cl, %esi
	movslq	%esi, %rsi
	movq	192(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rsi), %r8
	movb	%al, %cl
	sarq	%cl, %r8
	movq	184(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rsi), %r10
	movb	%al, %cl
	sarq	%cl, %r10
	movq	176(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rsi), %r11
	movb	%al, %cl
	sarq	%cl, %r11
	movq	168(%rsp), %rcx         # 8-byte Reload
	leaq	(%rsi,%rcx), %rbx
	movb	%al, %cl
	sarq	%cl, %rbx
	movl	%r10d, %esi
	movb	%dl, %cl
	sarl	%cl, %esi
	movb	%dl, %cl
	shll	%cl, %esi
	movl	$1, %ebp
	movb	%dl, %cl
	shll	%cl, %ebp
	movslq	%ebx, %rcx
	movslq	%ebp, %rbp
	leaq	-1(%rbp,%rcx), %rbp
	movb	%dl, %cl
	sarq	%cl, %rbp
	movb	%dl, %cl
	shll	%cl, %ebp
	xorl	%r12d, %r12d
	cmpl	%r11d, %r8d
	je	.LBB9_10
# BB#9:                                 # %cond.false.75.i
                                        #   in Loop: Header=BB9_8 Depth=2
	movslq	%r11d, %r11
	movq	%rdi, %r12
	movl	$1, %edi
	movb	%r9b, %cl
	shll	%cl, %edi
	movslq	%edi, %rcx
	movq	%r12, %rdi
	leaq	-1(%rcx,%r11), %r12
	movb	%r9b, %cl
	sarq	%cl, %r12
	movb	%r9b, %cl
	sarl	%cl, %r8d
	movb	%r9b, %cl
	shll	%cl, %r12d
	movb	%r9b, %cl
	shll	%cl, %r8d
	subl	%r8d, %r12d
	movb	%r9b, %cl
	sarl	%cl, %r12d
.LBB9_10:                               # %cond.end.77.i
                                        #   in Loop: Header=BB9_8 Depth=2
	subl	%esi, %ebp
	movb	%dl, %cl
	sarl	%cl, %ebp
	cmpl	%ebx, %r10d
	movl	$0, %ecx
	cmovel	%ecx, %ebp
	imull	%r12d, %ebp
	movl	228(%rsp), %ecx         # 4-byte Reload
	cmpl	%ecx, %ebp
	cmovbel	%ecx, %ebp
	decl	%eax
	incq	%r13
	movq	216(%rsp), %rcx         # 8-byte Reload
	cmpl	%ecx, %r13d
	movl	%ebp, %esi
	jb	.LBB9_8
	jmp	.LBB9_11
	.align	16, 0x90
.LBB9_6:                                #   in Loop: Header=BB9_5 Depth=1
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	movl	%ebx, 164(%rsp)         # 4-byte Spill
	movl	%esi, %ebp
.LBB9_11:                               # %for.end.i
                                        #   in Loop: Header=BB9_5 Depth=1
	movq	152(%rsp), %rcx         # 8-byte Reload
	addq	$64, %rcx
	addq	$1080, %rdi             # imm = 0x438
	movl	148(%rsp), %eax         # 4-byte Reload
	incl	%eax
	cmpl	144(%rsp), %eax         # 4-byte Folded Reload
	movl	%ebp, %esi
	movl	164(%rsp), %ebx         # 4-byte Reload
	jb	.LBB9_5
.LBB9_12:                               # %opj_get_encoding_parameters.exit
	imulq	$5680, 80(%rsp), %rax   # 8-byte Folded Reload
                                        # imm = 0x1630
	movq	72(%rsp), %rcx          # 8-byte Reload
	testb	$2, 5672(%rcx,%rax)
	jne	.LBB9_13
# BB#15:                                # %if.else
	movl	%r14d, 32(%rsp)
	movl	%r15d, 24(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%ebp, 8(%rsp)
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	%eax, (%rsp)
	movq	48(%rsp), %rdi          # 8-byte Reload
	movl	144(%rsp), %esi         # 4-byte Reload
	movl	60(%rsp), %edx          # 4-byte Reload
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	104(%rsp), %r8          # 8-byte Reload
	movq	64(%rsp), %r9           # 8-byte Reload
	callq	opj_pi_update_encode_not_poc
	jmp	.LBB9_14
.LBB9_13:                               # %if.then
	movl	%r14d, 16(%rsp)
	movl	%r15d, 8(%rsp)
	movl	%ebp, (%rsp)
	movq	48(%rsp), %rdi          # 8-byte Reload
	movl	60(%rsp), %esi          # 4-byte Reload
	movq	88(%rsp), %rdx          # 8-byte Reload
	movq	104(%rsp), %rcx         # 8-byte Reload
	movq	64(%rsp), %r8           # 8-byte Reload
	movq	96(%rsp), %r9           # 8-byte Reload
	callq	opj_pi_update_encode_poc_and_final
.LBB9_14:                               # %if.then
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_16:                               # %cond.false
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$1836, %edx             # imm = 0x72C
	movl	$.L__PRETTY_FUNCTION__.opj_pi_update_encoding_parameters, %ecx
	callq	__assert_fail
.LBB9_17:                               # %cond.false.3
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$1837, %edx             # imm = 0x72D
	movl	$.L__PRETTY_FUNCTION__.opj_pi_update_encoding_parameters, %ecx
	callq	__assert_fail
.LBB9_18:                               # %cond.false.7
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$1838, %edx             # imm = 0x72E
	movl	$.L__PRETTY_FUNCTION__.opj_pi_update_encoding_parameters, %ecx
	callq	__assert_fail
.Lfunc_end9:
	.size	opj_pi_update_encoding_parameters, .Lfunc_end9-opj_pi_update_encoding_parameters
	.cfi_endproc

	.globl	opj_pi_next
	.align	16, 0x90
	.type	opj_pi_next,@function
opj_pi_next:                            # @opj_pi_next
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp112:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp113:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp114:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp115:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp116:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp117:
	.cfi_def_cfa_offset 56
.Ltmp118:
	.cfi_offset %rbx, -56
.Ltmp119:
	.cfi_offset %r12, -48
.Ltmp120:
	.cfi_offset %r13, -40
.Ltmp121:
	.cfi_offset %r14, -32
.Ltmp122:
	.cfi_offset %r15, -24
.Ltmp123:
	.cfi_offset %rbp, -16
	xorl	%eax, %eax
	movl	88(%rdi), %ecx
	cmpq	$4, %rcx
	jbe	.LBB10_2
# BB#1:
	xorl	%eax, %eax
.LBB10_21:                              # %return
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_2:                               # %entry
	jmpq	*.LJTI10_0(,%rcx,8)
.LBB10_3:                               # %sw.bb
	cmpl	$0, 48(%rdi)
	je	.LBB10_4
# BB#6:                                 # %if.else.i
	movl	$0, 48(%rdi)
	movl	72(%rdi), %ecx
	jmp	.LBB10_7
.LBB10_24:                              # %sw.bb.1
	cmpl	$0, 48(%rdi)
	je	.LBB10_25
# BB#26:                                # %if.else.i.204
	movl	$0, 48(%rdi)
	movl	52(%rdi), %ecx
	jmp	.LBB10_27
.LBB10_43:                              # %sw.bb.3
	cmpl	$0, 48(%rdi)
	je	.LBB10_44
# BB#46:                                # %if.else.i.119
	movl	$0, 48(%rdi)
	movl	$0, 240(%rdi)
	movl	$0, 244(%rdi)
	movl	200(%rdi), %r8d
	testq	%r8, %r8
	je	.LBB10_53
# BB#47:                                # %for.body.lr.ph.i.121
	movq	208(%rdi), %r9
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	xorl	%r10d, %r10d
	.align	16, 0x90
.LBB10_48:                              # %for.body.i.125
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_50 Depth 2
	leaq	(%r10,%r10,2), %rcx
	movl	8(%r9,%rcx,8), %eax
	testq	%rax, %rax
	je	.LBB10_52
# BB#49:                                # %for.body.4.lr.ph.i
                                        #   in Loop: Header=BB10_48 Depth=1
	movq	16(%r9,%rcx,8), %r15
	movl	(%r9,%rcx,8), %r11d
	movl	4(%r9,%rcx,8), %r14d
	addq	$4, %r15
	.align	16, 0x90
.LBB10_50:                              # %for.body.4.i
                                        #   Parent Loop BB10_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decq	%rax
	movl	-4(%r15), %ecx
	addl	%eax, %ecx
	movl	%r11d, %ebp
	shll	%cl, %ebp
	movl	(%r15), %ecx
	addl	%eax, %ecx
	movl	%r14d, %edx
	shll	%cl, %edx
	cmpl	%ebp, %ebx
	movl	%ebp, %ecx
	cmovbl	%ebx, %ecx
	testl	%ebx, %ebx
	movl	%ecx, %ebx
	cmovel	%ebp, %ebx
	cmpl	%edx, %esi
	movl	%edx, %ecx
	cmovbl	%esi, %ecx
	testl	%esi, %esi
	movl	%ecx, %esi
	cmovel	%edx, %esi
	addq	$16, %r15
	testq	%rax, %rax
	jne	.LBB10_50
# BB#51:                                # %for.cond.2.for.inc.32_crit_edge.i
                                        #   in Loop: Header=BB10_48 Depth=1
	movl	%ebx, 240(%rdi)
	movl	%esi, 244(%rdi)
.LBB10_52:                              # %for.inc.32.i
                                        #   in Loop: Header=BB10_48 Depth=1
	incq	%r10
	cmpq	%r8, %r10
	jne	.LBB10_48
.LBB10_53:                              # %for.end.34.i
	cmpb	$0, (%rdi)
	jne	.LBB10_55
# BB#54:                                # %if.then.36.i
	movl	220(%rdi), %eax
	movl	%eax, 112(%rdi)
	movl	216(%rdi), %eax
	movl	%eax, 104(%rdi)
	movl	228(%rdi), %eax
	movl	%eax, 116(%rdi)
	movl	224(%rdi), %eax
	movl	%eax, 108(%rdi)
.LBB10_55:                              # %if.end.44.i
	movl	52(%rdi), %eax
	jmp	.LBB10_56
.LBB10_85:                              # %sw.bb.5
	cmpl	$0, 48(%rdi)
	je	.LBB10_86
# BB#88:                                # %if.else.i.43
	movl	$0, 48(%rdi)
	movl	$0, 240(%rdi)
	movl	$0, 244(%rdi)
	movl	200(%rdi), %r8d
	testq	%r8, %r8
	je	.LBB10_95
# BB#89:                                # %for.body.lr.ph.i
	movq	208(%rdi), %r9
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	xorl	%r10d, %r10d
	.align	16, 0x90
.LBB10_90:                              # %for.body.i.45
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_92 Depth 2
	leaq	(%r10,%r10,2), %rcx
	movl	8(%r9,%rcx,8), %eax
	testq	%rax, %rax
	je	.LBB10_94
# BB#91:                                # %for.body.8.lr.ph.i
                                        #   in Loop: Header=BB10_90 Depth=1
	movq	16(%r9,%rcx,8), %r15
	movl	(%r9,%rcx,8), %r11d
	movl	4(%r9,%rcx,8), %r14d
	addq	$4, %r15
	.align	16, 0x90
.LBB10_92:                              # %for.body.8.i
                                        #   Parent Loop BB10_90 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decq	%rax
	movl	-4(%r15), %ecx
	addl	%eax, %ecx
	movl	%r11d, %ebp
	shll	%cl, %ebp
	movl	(%r15), %ecx
	addl	%eax, %ecx
	movl	%r14d, %edx
	shll	%cl, %edx
	cmpl	%ebp, %ebx
	movl	%ebp, %ecx
	cmovbl	%ebx, %ecx
	testl	%ebx, %ebx
	movl	%ecx, %ebx
	cmovel	%ebp, %ebx
	cmpl	%edx, %esi
	movl	%edx, %ecx
	cmovbl	%esi, %ecx
	testl	%esi, %esi
	movl	%ecx, %esi
	cmovel	%edx, %esi
	addq	$16, %r15
	testq	%rax, %rax
	jne	.LBB10_92
# BB#93:                                # %for.cond.6.for.inc.36_crit_edge.i
                                        #   in Loop: Header=BB10_90 Depth=1
	movl	%ebx, 240(%rdi)
	movl	%esi, 244(%rdi)
.LBB10_94:                              # %for.inc.36.i
                                        #   in Loop: Header=BB10_90 Depth=1
	incq	%r10
	cmpq	%r8, %r10
	jne	.LBB10_90
.LBB10_95:                              # %for.end.38.i
	cmpb	$0, (%rdi)
	je	.LBB10_97
# BB#96:                                # %for.end.38.if.end.48_crit_edge.i
	movl	112(%rdi), %ecx
	jmp	.LBB10_98
.LBB10_134:                             # %sw.bb.7
	cmpl	$0, 48(%rdi)
	je	.LBB10_135
# BB#137:                               # %if.else.i.10
	movl	$0, 48(%rdi)
	movl	56(%rdi), %eax
	jmp	.LBB10_138
.LBB10_4:                               # %entry.for.inc_crit_edge.i
	leaq	40(%rdi), %rcx
	movl	40(%rdi), %edx
	jmp	.LBB10_5
.LBB10_25:                              # %entry.for.inc_crit_edge.i.202
	leaq	40(%rdi), %rcx
	movl	40(%rdi), %edx
	jmp	.LBB10_40
.LBB10_44:                              # %entry.for.inc.197_crit_edge.i
	leaq	44(%rdi), %rax
	movl	44(%rdi), %ecx
	jmp	.LBB10_45
.LBB10_86:                              # %if.then.i.40
	movl	32(%rdi), %ebx
	movl	44(%rdi), %eax
	leaq	(%rbx,%rbx,2), %r12
	shlq	$3, %r12
	addq	208(%rdi), %r12
	leaq	44(%rdi), %rcx
	jmp	.LBB10_87
.LBB10_135:                             # %if.then.i
	movl	32(%rdi), %ecx
	movq	%rcx, -8(%rsp)          # 8-byte Spill
	movl	44(%rdi), %eax
	leaq	(%rcx,%rcx,2), %r12
	shlq	$3, %r12
	addq	208(%rdi), %r12
	leaq	44(%rdi), %rcx
	jmp	.LBB10_136
.LBB10_97:                              # %if.then.40.i.67
	movl	220(%rdi), %ecx
	movl	%ecx, 112(%rdi)
	movl	216(%rdi), %eax
	movl	%eax, 104(%rdi)
	movl	228(%rdi), %eax
	movl	%eax, 116(%rdi)
	movl	224(%rdi), %eax
	movl	%eax, 108(%rdi)
	jmp	.LBB10_98
.LBB10_5:                               # %for.inc.i
	incl	%edx
	movl	%edx, (%rcx)
	jmp	.LBB10_16
.LBB10_7:                               # %for.cond.i
	movl	%ecx, 44(%rdi)
	cmpl	60(%rdi), %ecx
	jae	.LBB10_21
# BB#8:                                 # %for.body.i
	movl	52(%rdi), %ecx
.LBB10_9:                               # %for.cond.8.i
	movl	%ecx, 36(%rdi)
	cmpl	64(%rdi), %ecx
	jae	.LBB10_23
# BB#10:                                # %for.body.12.i
	movl	56(%rdi), %edx
	leaq	32(%rdi), %rcx
	movl	%edx, 32(%rdi)
	jmp	.LBB10_11
.LBB10_23:                              # %for.inc.70.i
	movl	44(%rdi), %ecx
	incl	%ecx
	jmp	.LBB10_7
.LBB10_11:                              # %for.cond.15.i
	cmpl	68(%rdi), %edx
	jae	.LBB10_22
# BB#12:                                # %for.body.19.i
	movl	%edx, %ebx
	movq	208(%rdi), %rbp
	movl	36(%rdi), %esi
	leaq	(%rbx,%rbx,2), %rbx
	cmpl	8(%rbp,%rbx,8), %esi
	jae	.LBB10_18
# BB#13:                                # %if.end.27.i
	cmpb	$0, (%rdi)
	jne	.LBB10_15
# BB#14:                                # %if.then.33.i
	movq	16(%rbp,%rbx,8), %rcx
	shlq	$4, %rsi
	movl	12(%rcx,%rsi), %edx
	imull	8(%rcx,%rsi), %edx
	movl	%edx, 80(%rdi)
.LBB10_15:                              # %if.end.35.i
	movl	76(%rdi), %edx
	leaq	40(%rdi), %rcx
	movl	%edx, 40(%rdi)
.LBB10_16:                              # %for.cond.37.i
	cmpl	80(%rdi), %edx
	jae	.LBB10_17
# BB#19:                                # %for.body.42.i
	movl	16(%rdi), %esi
	imull	44(%rdi), %esi
	movl	20(%rdi), %ebp
	imull	36(%rdi), %ebp
	addl	%esi, %ebp
	movl	24(%rdi), %ebx
	imull	32(%rdi), %ebx
	addl	%ebp, %ebx
	movl	28(%rdi), %esi
	imull	%edx, %esi
	addl	%ebx, %esi
	movq	8(%rdi), %rbp
	cmpw	$0, (%rbp,%rsi,2)
	jne	.LBB10_5
	jmp	.LBB10_20
.LBB10_22:                              # %for.inc.66.i
	movl	36(%rdi), %ecx
	incl	%ecx
	jmp	.LBB10_9
.LBB10_17:                              # %for.cond.37.for.inc.62_crit_edge.i
	leaq	32(%rdi), %rcx
	movl	32(%rdi), %edx
.LBB10_18:                              # %for.inc.62.i
	incl	%edx
	movl	%edx, (%rcx)
	jmp	.LBB10_11
.LBB10_20:                              # %if.then.56.i
	movw	$1, (%rbp,%rsi,2)
	movl	$1, %eax
	jmp	.LBB10_21
.LBB10_27:                              # %for.cond.i.207
	movl	%ecx, 36(%rdi)
	cmpl	64(%rdi), %ecx
	jae	.LBB10_21
# BB#28:                                # %for.body.i.210
	movl	72(%rdi), %ecx
.LBB10_29:                              # %for.cond.8.i.213
	movl	%ecx, 44(%rdi)
	cmpl	60(%rdi), %ecx
	jae	.LBB10_42
# BB#30:                                # %for.body.12.i.216
	movl	56(%rdi), %edx
	leaq	32(%rdi), %rcx
	movl	%edx, 32(%rdi)
	jmp	.LBB10_31
.LBB10_42:                              # %for.inc.70.i.276
	movl	36(%rdi), %ecx
	incl	%ecx
	jmp	.LBB10_27
.LBB10_31:                              # %for.cond.15.i.220
	cmpl	68(%rdi), %edx
	jae	.LBB10_41
# BB#32:                                # %for.body.19.i.226
	movl	%edx, %ebx
	movq	208(%rdi), %rbp
	movl	36(%rdi), %esi
	leaq	(%rbx,%rbx,2), %rbx
	cmpl	8(%rbp,%rbx,8), %esi
	jae	.LBB10_38
# BB#33:                                # %if.end.27.i.231
	cmpb	$0, (%rdi)
	jne	.LBB10_35
# BB#34:                                # %if.then.33.i.236
	movq	16(%rbp,%rbx,8), %rcx
	shlq	$4, %rsi
	movl	12(%rcx,%rsi), %edx
	imull	8(%rcx,%rsi), %edx
	movl	%edx, 80(%rdi)
.LBB10_35:                              # %if.end.35.i.239
	movl	76(%rdi), %edx
	leaq	40(%rdi), %rcx
	movl	%edx, 40(%rdi)
	jmp	.LBB10_36
.LBB10_41:                              # %for.inc.66.i.274
	movl	44(%rdi), %ecx
	incl	%ecx
	jmp	.LBB10_29
.LBB10_36:                              # %for.cond.37.i.243
	cmpl	80(%rdi), %edx
	jae	.LBB10_37
# BB#39:                                # %for.body.42.i.265
	movl	16(%rdi), %esi
	imull	44(%rdi), %esi
	movl	20(%rdi), %ebp
	imull	36(%rdi), %ebp
	addl	%esi, %ebp
	movl	24(%rdi), %ebx
	imull	32(%rdi), %ebx
	addl	%ebp, %ebx
	movl	28(%rdi), %esi
	imull	%edx, %esi
	addl	%ebx, %esi
	movq	8(%rdi), %rbp
	cmpw	$0, (%rbp,%rsi,2)
	je	.LBB10_20
.LBB10_40:                              # %for.inc.i.269
	incl	%edx
	movl	%edx, (%rcx)
	jmp	.LBB10_36
.LBB10_37:                              # %for.cond.37.for.inc.62_crit_edge.i.246
	leaq	32(%rdi), %rcx
	movl	32(%rdi), %edx
.LBB10_38:                              # %for.inc.62.i.272
	incl	%edx
	movl	%edx, (%rcx)
	jmp	.LBB10_31
.LBB10_45:                              # %for.inc.197.i
	incl	%ecx
	movl	%ecx, (%rax)
.LBB10_76:                              # %for.cond.173.i
	xorl	%r14d, %r14d
	cmpl	60(%rdi), %ecx
	jae	.LBB10_79
# BB#77:                                # %for.body.177.i
	movl	16(%rdi), %edx
	imull	%ecx, %edx
	movl	20(%rdi), %esi
	imull	36(%rdi), %esi
	addl	%edx, %esi
	movl	24(%rdi), %ebp
	imull	32(%rdi), %ebp
	addl	%esi, %ebp
	movl	28(%rdi), %edx
	imull	40(%rdi), %edx
	addl	%ebp, %edx
	movq	8(%rdi), %rsi
	cmpw	$0, (%rsi,%rdx,2)
	jne	.LBB10_45
# BB#78:                                # %if.then.192.i
	movw	$1, (%rsi,%rdx,2)
	movl	$1, %r14d
	jmp	.LBB10_79
.LBB10_56:                              # %for.cond.47.i
	movl	%eax, 36(%rdi)
	cmpl	64(%rdi), %eax
	jae	.LBB10_57
# BB#58:                                # %for.body.51.i
	movl	112(%rdi), %ecx
	jmp	.LBB10_59
.LBB10_57:
	xorl	%eax, %eax
	jmp	.LBB10_21
.LBB10_59:                              # %for.cond.54.i
	movl	%ecx, 236(%rdi)
	cmpl	116(%rdi), %ecx
	jge	.LBB10_84
# BB#60:                                # %for.body.59.i
	movl	104(%rdi), %ecx
	jmp	.LBB10_61
.LBB10_84:                              # %for.inc.231.i
	movl	36(%rdi), %eax
	incl	%eax
	jmp	.LBB10_56
.LBB10_61:                              # %for.cond.62.i
	movl	%ecx, 232(%rdi)
	cmpl	108(%rdi), %ecx
	jge	.LBB10_83
# BB#62:                                # %for.body.67.i
	movl	56(%rdi), %eax
	jmp	.LBB10_63
.LBB10_83:                              # %for.inc.222.i
	movl	236(%rdi), %ecx
	movl	244(%rdi), %esi
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%esi
	addl	%esi, %ecx
	subl	%edx, %ecx
	jmp	.LBB10_59
.LBB10_63:                              # %for.cond.70.i
	movl	%eax, 32(%rdi)
	cmpl	68(%rdi), %eax
	jae	.LBB10_82
# BB#64:                                # %for.body.74.i.159
	movl	%eax, %eax
	movq	208(%rdi), %rbp
	movl	36(%rdi), %r9d
	leaq	(%rax,%rax,2), %rbx
	movl	8(%rbp,%rbx,8), %esi
	movl	$20, %r14d
	cmpl	%esi, %r9d
	jae	.LBB10_79
# BB#65:                                # %if.end.83.i
	movq	16(%rbp,%rbx,8), %r11
	movl	%r9d, %eax
	notl	%eax
	addl	%eax, %esi
	movl	216(%rdi), %eax
	movq	%rax, -24(%rsp)         # 8-byte Spill
	movl	220(%rdi), %r8d
	movl	(%rbp,%rbx,8), %r13d
	movl	%r13d, %r15d
	movb	%sil, %cl
	shll	%cl, %r15d
	leal	-1(%rax,%r15), %eax
	cltd
	idivl	%r15d
	movl	%eax, -16(%rsp)         # 4-byte Spill
	movl	4(%rbp,%rbx,8), %ebp
	movl	%ebp, %r12d
	movb	%sil, %cl
	shll	%cl, %r12d
	leal	-1(%r8,%r12), %eax
	cltd
	idivl	%r12d
	movl	%eax, -8(%rsp)          # 4-byte Spill
	leal	-1(%r15), %ecx
	movl	%ecx, -60(%rsp)         # 4-byte Spill
	movl	224(%rdi), %eax
	addl	%ecx, %eax
	cltd
	idivl	%r15d
	movl	%eax, -32(%rsp)         # 4-byte Spill
	leal	-1(%r12), %ecx
	movl	%ecx, -48(%rsp)         # 4-byte Spill
	movl	228(%rdi), %eax
	addl	%ecx, %eax
	cltd
	idivl	%r12d
	movl	%eax, -40(%rsp)         # 4-byte Spill
	shlq	$4, %r9
	movl	4(%r11,%r9), %eax
	movq	%rax, -56(%rsp)         # 8-byte Spill
	leal	(%rax,%rsi), %ebx
	movb	%bl, %cl
	shll	%cl, %ebp
	movl	(%r11,%r9), %r10d
	movl	236(%rdi), %ecx
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%ebp
	testl	%edx, %edx
	je	.LBB10_68
# BB#66:                                # %lor.lhs.false.i.163
	cmpl	%r8d, %ecx
	jne	.LBB10_79
# BB#67:                                # %land.lhs.true.i.164
	movl	-8(%rsp), %eax          # 4-byte Reload
	movl	%ecx, %edx
	movb	%sil, %cl
	shll	%cl, %eax
	movl	$1, %ebp
	movb	%bl, %cl
	shll	%cl, %ebp
	movl	%edx, %ecx
	cltd
	idivl	%ebp
	testl	%edx, %edx
	je	.LBB10_79
.LBB10_68:                              # %if.end.124.i
	movl	%ecx, -80(%rsp)         # 4-byte Spill
	movq	%r10, -72(%rsp)         # 8-byte Spill
	leal	(%r10,%rsi), %r8d
	movl	232(%rdi), %ebx
	movb	%r8b, %cl
	shll	%cl, %r13d
	xorl	%edx, %edx
	movl	%ebx, %eax
	divl	%r13d
	testl	%edx, %edx
	je	.LBB10_71
# BB#69:                                # %lor.lhs.false.130.i
	movq	-24(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %ebx
	jne	.LBB10_79
# BB#70:                                # %land.lhs.true.134.i
	movl	-16(%rsp), %eax         # 4-byte Reload
	movb	%sil, %cl
	shll	%cl, %eax
	movl	$1, %esi
	movb	%r8b, %cl
	shll	%cl, %esi
	cltd
	idivl	%esi
	testl	%edx, %edx
	je	.LBB10_79
.LBB10_71:                              # %if.end.140.i
	movl	8(%r11,%r9), %ebp
	testl	%ebp, %ebp
	je	.LBB10_79
# BB#72:                                # %lor.lhs.false.142.i
	cmpl	$0, 12(%r11,%r9)
	je	.LBB10_79
# BB#73:                                # %if.end.145.i
	movl	-32(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, -16(%rsp)         # 4-byte Folded Reload
	je	.LBB10_79
# BB#74:                                # %if.end.145.i
	movl	-8(%rsp), %r8d          # 4-byte Reload
	cmpl	-40(%rsp), %r8d         # 4-byte Folded Reload
	je	.LBB10_79
# BB#75:                                # %if.end.150.i
	movl	-60(%rsp), %eax         # 4-byte Reload
	addl	%ebx, %eax
	cltd
	idivl	%r15d
	movl	%eax, %esi
	movq	-72(%rsp), %rcx         # 8-byte Reload
	sarl	%cl, %esi
	movl	-16(%rsp), %eax         # 4-byte Reload
	sarl	%cl, %eax
	subl	%eax, %esi
	movl	-48(%rsp), %eax         # 4-byte Reload
	addl	-80(%rsp), %eax         # 4-byte Folded Reload
	cltd
	idivl	%r12d
	movq	-56(%rsp), %rcx         # 8-byte Reload
	sarl	%cl, %eax
	sarl	%cl, %r8d
	subl	%r8d, %eax
	imull	%ebp, %eax
	addl	%esi, %eax
	movl	%eax, 40(%rdi)
	movl	72(%rdi), %ecx
	leaq	44(%rdi), %rax
	movl	%ecx, 44(%rdi)
	jmp	.LBB10_76
.LBB10_79:                              # %cleanup.i.192
	cmpl	$20, %r14d
	je	.LBB10_81
# BB#80:                                # %cleanup.i.192
	movl	$1, %eax
	testl	%r14d, %r14d
	jne	.LBB10_21
.LBB10_81:                              # %for.inc.209.i
	movl	32(%rdi), %eax
	incl	%eax
	jmp	.LBB10_63
.LBB10_82:                              # %for.inc.213.i.196
	movl	232(%rdi), %ecx
	movl	240(%rdi), %esi
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%esi
	addl	%esi, %ecx
	subl	%edx, %ecx
	jmp	.LBB10_61
.LBB10_87:                              # %for.inc.199.i
	incl	%eax
	movl	%eax, (%rcx)
.LBB10_125:                             # %for.cond.175.i
	xorl	%r13d, %r13d
	cmpl	60(%rdi), %eax
	jae	.LBB10_128
# BB#126:                               # %for.body.179.i
	movl	16(%rdi), %edx
	imull	%eax, %edx
	movl	20(%rdi), %esi
	imull	36(%rdi), %esi
	addl	%edx, %esi
	movl	24(%rdi), %ebp
	imull	%ebx, %ebp
	addl	%esi, %ebp
	movl	28(%rdi), %edx
	imull	40(%rdi), %edx
	addl	%ebp, %edx
	movq	8(%rdi), %rsi
	cmpw	$0, (%rsi,%rdx,2)
	jne	.LBB10_87
# BB#127:                               # %if.then.194.i
	movw	$1, (%rsi,%rdx,2)
	movl	$1, %r13d
	jmp	.LBB10_128
.LBB10_98:                              # %if.end.48.i
	movl	%ecx, 236(%rdi)
	cmpl	116(%rdi), %ecx
	jge	.LBB10_99
# BB#100:                               # %for.body.56.i
	movl	104(%rdi), %ecx
	jmp	.LBB10_101
.LBB10_99:
	xorl	%eax, %eax
	jmp	.LBB10_21
.LBB10_101:                             # %for.cond.59.i
	movl	%ecx, 232(%rdi)
	cmpl	108(%rdi), %ecx
	jge	.LBB10_133
# BB#102:                               # %for.body.64.i
	movl	56(%rdi), %ebx
	jmp	.LBB10_103
.LBB10_133:                             # %for.inc.228.i
	movl	236(%rdi), %ecx
	movl	244(%rdi), %esi
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%esi
	addl	%esi, %ecx
	subl	%edx, %ecx
	jmp	.LBB10_98
.LBB10_103:                             # %for.cond.67.i
	movl	%ebx, 32(%rdi)
	cmpl	68(%rdi), %ebx
	jae	.LBB10_132
# BB#104:                               # %for.body.72.i
	movl	%ebx, %eax
	leaq	(%rax,%rax,2), %r12
	shlq	$3, %r12
	addq	208(%rdi), %r12
	movl	52(%rdi), %eax
	jmp	.LBB10_105
.LBB10_132:                             # %for.inc.219.i
	movl	232(%rdi), %ecx
	movl	240(%rdi), %esi
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%esi
	addl	%esi, %ecx
	subl	%edx, %ecx
	jmp	.LBB10_101
.LBB10_105:                             # %for.cond.79.i
	movl	%eax, 36(%rdi)
	movl	64(%rdi), %ecx
	movl	8(%r12), %esi
	cmpl	%esi, %ecx
	cmovael	%esi, %ecx
	cmpl	%ecx, %eax
	jae	.LBB10_131
# BB#106:                               # %for.body.85.i
	movq	%rbx, -8(%rsp)          # 8-byte Spill
	movl	%eax, %r15d
	movq	16(%r12), %rbx
	movq	%rbx, -40(%rsp)         # 8-byte Spill
	notl	%eax
	addl	%eax, %esi
	movl	216(%rdi), %eax
	movq	%rax, -32(%rsp)         # 8-byte Spill
	movl	220(%rdi), %r14d
	movl	(%r12), %r10d
	movl	4(%r12), %ebp
	movl	%r10d, %r11d
	movb	%sil, %cl
	shll	%cl, %r11d
	leal	-1(%rax,%r11), %eax
	cltd
	idivl	%r11d
	movl	%eax, -24(%rsp)         # 4-byte Spill
	movl	%ebp, %r9d
	movb	%sil, %cl
	shll	%cl, %r9d
	leal	-1(%r14,%r9), %eax
	cltd
	idivl	%r9d
	movl	%eax, -16(%rsp)         # 4-byte Spill
	leal	-1(%r11), %ecx
	movl	%ecx, -80(%rsp)         # 4-byte Spill
	movl	224(%rdi), %eax
	addl	%ecx, %eax
	cltd
	idivl	%r11d
	movl	%eax, -48(%rsp)         # 4-byte Spill
	leal	-1(%r9), %ecx
	movl	%ecx, -60(%rsp)         # 4-byte Spill
	movl	228(%rdi), %eax
	addl	%ecx, %eax
	cltd
	idivl	%r9d
	movl	%eax, -56(%rsp)         # 4-byte Spill
	shlq	$4, %r15
	movl	4(%rbx,%r15), %eax
	movq	%rax, -72(%rsp)         # 8-byte Spill
	leal	(%rax,%rsi), %r8d
	movb	%r8b, %cl
	shll	%cl, %ebp
	movl	(%rbx,%r15), %ecx
	movl	236(%rdi), %ebx
	xorl	%edx, %edx
	movl	%ebx, %eax
	divl	%ebp
	testl	%edx, %edx
	je	.LBB10_111
# BB#107:                               # %lor.lhs.false.i.85
	movq	%rcx, -88(%rsp)         # 8-byte Spill
	movl	$20, %r13d
	cmpl	%r14d, %ebx
	jne	.LBB10_108
# BB#109:                               # %land.lhs.true.i.86
	movl	-16(%rsp), %eax         # 4-byte Reload
	movb	%sil, %cl
	shll	%cl, %eax
	movl	$1, %ebp
	movb	%r8b, %cl
	shll	%cl, %ebp
	cltd
	idivl	%ebp
	testl	%edx, %edx
	movq	-88(%rsp), %rcx         # 8-byte Reload
	je	.LBB10_110
.LBB10_111:                             # %if.end.126.i
	movl	%ebx, -88(%rsp)         # 4-byte Spill
	leal	(%rcx,%rsi), %r14d
	movq	%rcx, %r8
	movl	232(%rdi), %ebx
	movb	%r14b, %cl
	shll	%cl, %r10d
	xorl	%edx, %edx
	movl	%ebx, %eax
	divl	%r10d
	testl	%edx, %edx
	je	.LBB10_116
# BB#112:                               # %lor.lhs.false.132.i
	movl	$20, %r13d
	movq	-32(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %ebx
	jne	.LBB10_113
# BB#114:                               # %land.lhs.true.136.i
	movl	-24(%rsp), %eax         # 4-byte Reload
	movb	%sil, %cl
	shll	%cl, %eax
	movl	$1, %esi
	movb	%r14b, %cl
	shll	%cl, %esi
	cltd
	idivl	%esi
	testl	%edx, %edx
	je	.LBB10_115
.LBB10_116:                             # %if.end.142.i
	movq	-40(%rsp), %rax         # 8-byte Reload
	movl	8(%rax,%r15), %ebp
	movl	$20, %r13d
	testl	%ebp, %ebp
	je	.LBB10_117
# BB#118:                               # %lor.lhs.false.144.i
	cmpl	$0, 12(%rax,%r15)
	je	.LBB10_119
# BB#120:                               # %if.end.147.i
	movl	-48(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, -24(%rsp)         # 4-byte Folded Reload
	je	.LBB10_121
# BB#122:                               # %if.end.147.i
	movl	-16(%rsp), %r10d        # 4-byte Reload
	cmpl	-56(%rsp), %r10d        # 4-byte Folded Reload
	je	.LBB10_123
# BB#124:                               # %if.end.152.i
	movl	-80(%rsp), %eax         # 4-byte Reload
	addl	%ebx, %eax
	cltd
	idivl	%r11d
	movl	%eax, %esi
	movb	%r8b, %cl
	sarl	%cl, %esi
	movb	%r8b, %cl
	movl	-24(%rsp), %eax         # 4-byte Reload
	sarl	%cl, %eax
	subl	%eax, %esi
	movl	-60(%rsp), %eax         # 4-byte Reload
	addl	-88(%rsp), %eax         # 4-byte Folded Reload
	cltd
	idivl	%r9d
	movq	-72(%rsp), %rcx         # 8-byte Reload
	sarl	%cl, %eax
	sarl	%cl, %r10d
	subl	%r10d, %eax
	imull	%ebp, %eax
	addl	%esi, %eax
	movl	%eax, 40(%rdi)
	movl	72(%rdi), %eax
	leaq	44(%rdi), %rcx
	movl	%eax, 44(%rdi)
	movq	-8(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB10_125
.LBB10_131:                             # %for.inc.215.i
	incl	%ebx
	jmp	.LBB10_103
.LBB10_108:
	movq	-8(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB10_128
.LBB10_113:
	movq	-8(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB10_128
.LBB10_117:
	movq	-8(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB10_128
.LBB10_110:
	movq	-8(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB10_128
.LBB10_119:
	movq	-8(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB10_128
.LBB10_115:
	movq	-8(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB10_128
.LBB10_121:
	movq	-8(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB10_128
.LBB10_123:
	movq	-8(%rsp), %rbx          # 8-byte Reload
.LBB10_128:                             # %cleanup.i.112
	cmpl	$20, %r13d
	je	.LBB10_130
# BB#129:                               # %cleanup.i.112
	movl	$1, %eax
	testl	%r13d, %r13d
	jne	.LBB10_21
.LBB10_130:                             # %for.inc.211.i
	movl	36(%rdi), %eax
	incl	%eax
	jmp	.LBB10_105
.LBB10_136:                             # %for.inc.188.i
	incl	%eax
	movl	%eax, (%rcx)
.LBB10_171:                             # %for.cond.164.i
	xorl	%r10d, %r10d
	cmpl	60(%rdi), %eax
	jae	.LBB10_174
# BB#172:                               # %for.body.168.i
	movl	16(%rdi), %edx
	imull	%eax, %edx
	movl	20(%rdi), %esi
	imull	36(%rdi), %esi
	addl	%edx, %esi
	movl	24(%rdi), %ebp
	movq	-8(%rsp), %rdx          # 8-byte Reload
	imull	%edx, %ebp
	addl	%esi, %ebp
	movl	28(%rdi), %edx
	imull	40(%rdi), %edx
	addl	%ebp, %edx
	movq	8(%rdi), %rsi
	cmpw	$0, (%rsi,%rdx,2)
	jne	.LBB10_136
# BB#173:                               # %if.then.183.i
	movw	$1, (%rsi,%rdx,2)
	movl	$1, %r10d
	jmp	.LBB10_174
.LBB10_138:                             # %for.cond.i.13
	movl	%eax, 32(%rdi)
	cmpl	68(%rdi), %eax
	jae	.LBB10_139
# BB#140:                               # %for.body.i.15
	movq	%rax, -8(%rsp)          # 8-byte Spill
	movl	%eax, %eax
	movq	208(%rdi), %rcx
	leaq	(%rax,%rax,2), %rsi
	leaq	(%rcx,%rsi,8), %r12
	movq	$0, 240(%rdi)
	movl	8(%rcx,%rsi,8), %eax
	testq	%rax, %rax
	je	.LBB10_144
# BB#141:                               # %for.body.11.lr.ph.i
	movq	16(%rcx,%rsi,8), %r10
	movl	(%r12), %r8d
	movl	4(%rcx,%rsi,8), %r9d
	addq	$4, %r10
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	.align	16, 0x90
.LBB10_142:                             # %for.body.11.i
                                        # =>This Inner Loop Header: Depth=1
	decq	%rax
	movl	-4(%r10), %ecx
	addl	%eax, %ecx
	movl	%r8d, %ebp
	shll	%cl, %ebp
	movl	(%r10), %ecx
	addl	%eax, %ecx
	movl	%r9d, %edx
	shll	%cl, %edx
	cmpl	%ebp, %esi
	movl	%ebp, %ecx
	cmovbl	%esi, %ecx
	testl	%esi, %esi
	movl	%ecx, %esi
	cmovel	%ebp, %esi
	cmpl	%edx, %ebx
	movl	%edx, %ecx
	cmovbl	%ebx, %ecx
	testl	%ebx, %ebx
	movl	%ecx, %ebx
	cmovel	%edx, %ebx
	addq	$16, %r10
	testq	%rax, %rax
	jne	.LBB10_142
# BB#143:                               # %for.cond.9.for.end_crit_edge.i
	movl	%esi, 240(%rdi)
	movl	%ebx, 244(%rdi)
.LBB10_144:                             # %for.end.i
	cmpb	$0, (%rdi)
	je	.LBB10_146
# BB#145:                               # %for.end.if.end.49_crit_edge.i
	movl	112(%rdi), %ecx
	jmp	.LBB10_147
.LBB10_139:
	xorl	%eax, %eax
	jmp	.LBB10_21
.LBB10_146:                             # %if.then.40.i
	movl	220(%rdi), %ecx
	movl	%ecx, 112(%rdi)
	movl	216(%rdi), %eax
	movl	%eax, 104(%rdi)
	movl	228(%rdi), %eax
	movl	%eax, 116(%rdi)
	movl	224(%rdi), %eax
	movl	%eax, 108(%rdi)
.LBB10_147:                             # %if.end.49.i
	movl	%ecx, 236(%rdi)
	xorl	%r10d, %r10d
	cmpl	116(%rdi), %ecx
	jge	.LBB10_179
# BB#148:                               # %for.body.57.i
	movl	104(%rdi), %ecx
.LBB10_149:                             # %for.cond.60.i
	movl	%ecx, 232(%rdi)
	cmpl	108(%rdi), %ecx
	jge	.LBB10_178
# BB#150:                               # %for.body.65.i
	movl	52(%rdi), %eax
	jmp	.LBB10_151
.LBB10_178:                             # %for.inc.213.i
	movl	236(%rdi), %ecx
	movl	244(%rdi), %esi
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%esi
	addl	%esi, %ecx
	subl	%edx, %ecx
	jmp	.LBB10_147
.LBB10_151:                             # %for.cond.68.i
	movl	%eax, 36(%rdi)
	movl	64(%rdi), %ecx
	movl	8(%r12), %esi
	cmpl	%esi, %ecx
	cmovael	%esi, %ecx
	cmpl	%ecx, %eax
	jae	.LBB10_177
# BB#152:                               # %for.body.74.i
	movl	%eax, %r15d
	movq	16(%r12), %r11
	notl	%eax
	addl	%eax, %esi
	movl	216(%rdi), %eax
	movq	%rax, -48(%rsp)         # 8-byte Spill
	movl	220(%rdi), %r14d
	movl	(%r12), %r13d
	movl	4(%r12), %ebp
	movq	%r12, -16(%rsp)         # 8-byte Spill
	movl	%r13d, %r8d
	movb	%sil, %cl
	shll	%cl, %r8d
	leal	-1(%rax,%r8), %eax
	cltd
	idivl	%r8d
	movl	%eax, -40(%rsp)         # 4-byte Spill
	movl	%ebp, %r9d
	movb	%sil, %cl
	shll	%cl, %r9d
	leal	-1(%r14,%r9), %eax
	cltd
	idivl	%r9d
	movl	%eax, -32(%rsp)         # 4-byte Spill
	leal	-1(%r8), %ecx
	movl	%ecx, -88(%rsp)         # 4-byte Spill
	movl	224(%rdi), %eax
	addl	%ecx, %eax
	cltd
	idivl	%r8d
	movl	%eax, -56(%rsp)         # 4-byte Spill
	leal	-1(%r9), %ecx
	movl	%ecx, -72(%rsp)         # 4-byte Spill
	movl	228(%rdi), %eax
	addl	%ecx, %eax
	cltd
	idivl	%r9d
	movl	%eax, -60(%rsp)         # 4-byte Spill
	shlq	$4, %r15
	movl	4(%r11,%r15), %eax
	movq	%rax, -80(%rsp)         # 8-byte Spill
	leal	(%rax,%rsi), %ebx
	movb	%bl, %cl
	shll	%cl, %ebp
	movl	(%r11,%r15), %ecx
	movl	236(%rdi), %r12d
	xorl	%edx, %edx
	movl	%r12d, %eax
	divl	%ebp
	testl	%edx, %edx
	je	.LBB10_157
# BB#153:                               # %lor.lhs.false.i
	movq	%rcx, -24(%rsp)         # 8-byte Spill
	movl	$17, %r10d
	cmpl	%r14d, %r12d
	jne	.LBB10_154
# BB#155:                               # %land.lhs.true.i
	movl	-32(%rsp), %eax         # 4-byte Reload
	movb	%sil, %cl
	shll	%cl, %eax
	movl	$1, %ebp
	movb	%bl, %cl
	shll	%cl, %ebp
	cltd
	idivl	%ebp
	testl	%edx, %edx
	movq	-24(%rsp), %rcx         # 8-byte Reload
	je	.LBB10_156
.LBB10_157:                             # %if.end.115.i
	movq	%rcx, -24(%rsp)         # 8-byte Spill
	leal	(%rcx,%rsi), %r14d
	movl	232(%rdi), %ebx
	movb	%r14b, %cl
	shll	%cl, %r13d
	xorl	%edx, %edx
	movl	%ebx, %eax
	divl	%r13d
	testl	%edx, %edx
	je	.LBB10_162
# BB#158:                               # %lor.lhs.false.121.i
	movl	$17, %r10d
	movq	-48(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %ebx
	jne	.LBB10_159
# BB#160:                               # %land.lhs.true.125.i
	movl	-40(%rsp), %eax         # 4-byte Reload
	movb	%sil, %cl
	shll	%cl, %eax
	movl	$1, %esi
	movb	%r14b, %cl
	shll	%cl, %esi
	cltd
	idivl	%esi
	testl	%edx, %edx
	je	.LBB10_161
.LBB10_162:                             # %if.end.131.i
	movl	8(%r11,%r15), %ebp
	movl	$17, %r10d
	testl	%ebp, %ebp
	je	.LBB10_163
# BB#164:                               # %lor.lhs.false.133.i
	cmpl	$0, 12(%r11,%r15)
	je	.LBB10_165
# BB#166:                               # %if.end.136.i
	movl	-56(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, -40(%rsp)         # 4-byte Folded Reload
	je	.LBB10_167
# BB#168:                               # %if.end.136.i
	movl	-32(%rsp), %r11d        # 4-byte Reload
	cmpl	-60(%rsp), %r11d        # 4-byte Folded Reload
	je	.LBB10_169
# BB#170:                               # %if.end.141.i
	movl	-88(%rsp), %eax         # 4-byte Reload
	addl	%ebx, %eax
	cltd
	idivl	%r8d
	movl	%eax, %esi
	movq	-24(%rsp), %rcx         # 8-byte Reload
	sarl	%cl, %esi
	movl	-40(%rsp), %eax         # 4-byte Reload
	sarl	%cl, %eax
	subl	%eax, %esi
	movl	-72(%rsp), %eax         # 4-byte Reload
	addl	%r12d, %eax
	cltd
	idivl	%r9d
	movq	-80(%rsp), %rcx         # 8-byte Reload
	sarl	%cl, %eax
	sarl	%cl, %r11d
	subl	%r11d, %eax
	imull	%ebp, %eax
	addl	%esi, %eax
	movl	%eax, 40(%rdi)
	movl	72(%rdi), %eax
	leaq	44(%rdi), %rcx
	movl	%eax, 44(%rdi)
	movq	-16(%rsp), %r12         # 8-byte Reload
	jmp	.LBB10_171
.LBB10_177:                             # %for.inc.204.i
	movl	232(%rdi), %ecx
	movl	240(%rdi), %esi
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%esi
	addl	%esi, %ecx
	subl	%edx, %ecx
	jmp	.LBB10_149
.LBB10_154:
	movq	-16(%rsp), %r12         # 8-byte Reload
	jmp	.LBB10_174
.LBB10_159:
	movq	-16(%rsp), %r12         # 8-byte Reload
	jmp	.LBB10_174
.LBB10_163:
	movq	-16(%rsp), %r12         # 8-byte Reload
	jmp	.LBB10_174
.LBB10_156:
	movq	-16(%rsp), %r12         # 8-byte Reload
	jmp	.LBB10_174
.LBB10_165:
	movq	-16(%rsp), %r12         # 8-byte Reload
	jmp	.LBB10_174
.LBB10_161:
	movq	-16(%rsp), %r12         # 8-byte Reload
	jmp	.LBB10_174
.LBB10_167:
	movq	-16(%rsp), %r12         # 8-byte Reload
	jmp	.LBB10_174
.LBB10_169:
	movq	-16(%rsp), %r12         # 8-byte Reload
.LBB10_174:                             # %cleanup.i
	cmpl	$17, %r10d
	je	.LBB10_176
# BB#175:                               # %cleanup.i
	testl	%r10d, %r10d
	jne	.LBB10_179
.LBB10_176:                             # %for.inc.200.i
	movl	36(%rdi), %eax
	incl	%eax
	jmp	.LBB10_151
.LBB10_179:                             # %cleanup.222.i
	movl	$1, %eax
	testl	%r10d, %r10d
	jne	.LBB10_21
# BB#180:                               # %for.inc.225.i
	movq	-8(%rsp), %rax          # 8-byte Reload
	incl	%eax
	jmp	.LBB10_138
.Lfunc_end10:
	.size	opj_pi_next, .Lfunc_end10-opj_pi_next
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI10_0:
	.quad	.LBB10_3
	.quad	.LBB10_24
	.quad	.LBB10_43
	.quad	.LBB10_85
	.quad	.LBB10_134

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"p_cp != 00"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"./openjpeg/libopenjpeg/pi.c"
	.size	.L.str.1, 28

	.type	.L__PRETTY_FUNCTION__.opj_pi_create_decode,@object # @__PRETTY_FUNCTION__.opj_pi_create_decode
.L__PRETTY_FUNCTION__.opj_pi_create_decode:
	.asciz	"opj_pi_iterator_t *opj_pi_create_decode(opj_image_t *, opj_cp_t *, OPJ_UINT32)"
	.size	.L__PRETTY_FUNCTION__.opj_pi_create_decode, 79

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"p_image != 00"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"p_tile_no < p_cp->tw * p_cp->th"
	.size	.L.str.3, 32

	.type	.L__PRETTY_FUNCTION__.opj_pi_initialise_encode,@object # @__PRETTY_FUNCTION__.opj_pi_initialise_encode
.L__PRETTY_FUNCTION__.opj_pi_initialise_encode:
	.asciz	"opj_pi_iterator_t *opj_pi_initialise_encode(const opj_image_t *, opj_cp_t *, OPJ_UINT32, J2K_T2_MODE)"
	.size	.L__PRETTY_FUNCTION__.opj_pi_initialise_encode, 102

	.type	.L__PRETTY_FUNCTION__.opj_pi_update_encoding_parameters,@object # @__PRETTY_FUNCTION__.opj_pi_update_encoding_parameters
.L__PRETTY_FUNCTION__.opj_pi_update_encoding_parameters:
	.asciz	"void opj_pi_update_encoding_parameters(const opj_image_t *, opj_cp_t *, OPJ_UINT32)"
	.size	.L__PRETTY_FUNCTION__.opj_pi_update_encoding_parameters, 84

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"cp != 00"
	.size	.L.str.4, 9

	.type	.L__PRETTY_FUNCTION__.opj_pi_create,@object # @__PRETTY_FUNCTION__.opj_pi_create
.L__PRETTY_FUNCTION__.opj_pi_create:
	.asciz	"opj_pi_iterator_t *opj_pi_create(const opj_image_t *, const opj_cp_t *, OPJ_UINT32)"
	.size	.L__PRETTY_FUNCTION__.opj_pi_create, 84

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"image != 00"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"tileno < cp->tw * cp->th"
	.size	.L.str.6, 25

	.type	.L__PRETTY_FUNCTION__.opj_get_all_encoding_parameters,@object # @__PRETTY_FUNCTION__.opj_get_all_encoding_parameters
.L__PRETTY_FUNCTION__.opj_get_all_encoding_parameters:
	.asciz	"void opj_get_all_encoding_parameters(const opj_image_t *, const opj_cp_t *, OPJ_UINT32, OPJ_INT32 *, OPJ_INT32 *, OPJ_INT32 *, OPJ_INT32 *, OPJ_UINT32 *, OPJ_UINT32 *, OPJ_UINT32 *, OPJ_UINT32 *, OPJ_UINT32 **)"
	.size	.L__PRETTY_FUNCTION__.opj_get_all_encoding_parameters, 211

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"tileno < p_cp->tw * p_cp->th"
	.size	.L.str.7, 29

	.type	.L__PRETTY_FUNCTION__.opj_pi_update_encode_poc_and_final,@object # @__PRETTY_FUNCTION__.opj_pi_update_encode_poc_and_final
.L__PRETTY_FUNCTION__.opj_pi_update_encode_poc_and_final:
	.asciz	"void opj_pi_update_encode_poc_and_final(opj_cp_t *, OPJ_UINT32, OPJ_INT32, OPJ_INT32, OPJ_INT32, OPJ_INT32, OPJ_UINT32, OPJ_UINT32, OPJ_UINT32, OPJ_UINT32)"
	.size	.L__PRETTY_FUNCTION__.opj_pi_update_encode_poc_and_final, 156

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"p_tileno < p_cp->tw * p_cp->th"
	.size	.L.str.10, 31

	.type	.L__PRETTY_FUNCTION__.opj_pi_update_encode_not_poc,@object # @__PRETTY_FUNCTION__.opj_pi_update_encode_not_poc
.L__PRETTY_FUNCTION__.opj_pi_update_encode_not_poc:
	.asciz	"void opj_pi_update_encode_not_poc(opj_cp_t *, OPJ_UINT32, OPJ_UINT32, OPJ_INT32, OPJ_INT32, OPJ_INT32, OPJ_INT32, OPJ_UINT32, OPJ_UINT32, OPJ_UINT32, OPJ_UINT32)"
	.size	.L__PRETTY_FUNCTION__.opj_pi_update_encode_not_poc, 162


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
