	.text
	.file	"t2.bc"
	.globl	opj_t2_encode_packets
	.align	16, 0x90
	.type	opj_t2_encode_packets,@function
opj_t2_encode_packets:                  # @opj_t2_encode_packets
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
	subq	$104, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 160
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
	movq	%r9, 64(%rsp)           # 8-byte Spill
	movq	%r8, 88(%rsp)           # 8-byte Spill
	movl	%ecx, %ebp
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movl	%esi, 96(%rsp)          # 4-byte Spill
	movq	%rdi, %rax
	movl	$0, 100(%rsp)
	movq	(%rax), %rdi
	movq	8(%rax), %rax
	movl	%esi, %ecx
	movq	96(%rax), %r15
	movl	$2, 44(%rsp)            # 4-byte Folded Spill
	cmpl	$3, 104(%rax)
	je	.LBB0_2
# BB#1:                                 # %select.mid
	movl	$1, 44(%rsp)            # 4-byte Folded Spill
.LBB0_2:                                # %select.end
	imulq	$5680, %rcx, %r12       # imm = 0x1630
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movl	200(%rsp), %r14d
	movl	$1, %r13d
	cmpl	$0, 108(%rax)
	je	.LBB0_4
# BB#3:                                 # %cond.true
	movl	16(%rdi), %r13d
.LBB0_4:                                # %cond.end
	movl	420(%r15,%r12), %ebx
	movq	%rax, %rsi
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	96(%rsp), %edx          # 4-byte Reload
	movl	%r14d, %ecx
	callq	opj_pi_initialise_encode
	movq	%rax, 72(%rsp)          # 8-byte Spill
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB0_21
# BB#5:                                 # %if.end
	movl	184(%rsp), %r9d
	movq	168(%rsp), %rcx
	movl	160(%rsp), %eax
	movl	%eax, 24(%rsp)          # 4-byte Spill
	leaq	(%r15,%r12), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	incl	%ebx
	movl	%ebx, 20(%rsp)          # 4-byte Spill
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	$0, (%rax)
	testl	%r14d, %r14d
	je	.LBB0_6
# BB#22:                                # %if.else
	movq	%rcx, %r13
	movl	192(%rsp), %ecx
	movl	176(%rsp), %r8d
	movl	%r14d, (%rsp)
	movq	72(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	movl	96(%rsp), %edx          # 4-byte Reload
	movl	%ecx, %r14d
	callq	opj_pi_create_encode
	movl	%r14d, %eax
	imulq	$248, %rax, %rax
	leaq	(%rbx,%rax), %r14
	leaq	44(%rbx,%rax), %rbx
	leaq	5672(%r15,%r12), %r15
	movq	64(%rsp), %r12          # 8-byte Reload
	jmp	.LBB0_23
.LBB0_38:                               # %if.end.103
                                        #   in Loop: Header=BB0_23 Depth=1
	addq	%rax, 88(%rsp)          # 8-byte Folded Spill
	subl	%eax, 24(%rsp)          # 4-byte Folded Spill
	movq	48(%rsp), %rax          # 8-byte Reload
	incl	848(%rax)
	.align	16, 0x90
.LBB0_23:                               # %while.cond.42
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	callq	opj_pi_next
	testl	%eax, %eax
	je	.LBB0_20
# BB#24:                                # %while.body.45
                                        #   in Loop: Header=BB0_23 Depth=1
	cmpl	%ebp, (%rbx)
	jae	.LBB0_23
# BB#25:                                # %if.then.48
                                        #   in Loop: Header=BB0_23 Depth=1
	movl	$0, 100(%rsp)
	movq	%r13, 8(%rsp)
	movl	24(%rsp), %eax          # 4-byte Reload
	movl	%eax, (%rsp)
	movl	96(%rsp), %edi          # 4-byte Reload
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	32(%rsp), %rdx          # 8-byte Reload
	movq	%r14, %rcx
	movq	88(%rsp), %r8           # 8-byte Reload
	leaq	100(%rsp), %r9
	callq	opj_t2_encode_packet
	testl	%eax, %eax
	je	.LBB0_26
# BB#27:                                # %if.end.52
                                        #   in Loop: Header=BB0_23 Depth=1
	movl	100(%rsp), %eax
	addl	%eax, (%r12)
	testq	%r13, %r13
	je	.LBB0_38
# BB#28:                                # %if.then.58
                                        #   in Loop: Header=BB0_23 Depth=1
	cmpl	$0, 12(%r13)
	je	.LBB0_29
# BB#30:                                # %if.then.60
                                        #   in Loop: Header=BB0_23 Depth=1
	movq	104(%r13), %rdi
	movslq	8(%r13), %rcx
	imulq	$608, 80(%rsp), %rdx    # 8-byte Folded Reload
                                        # imm = 0x260
	movq	552(%rdi,%rdx), %r9
	movq	%rcx, %rsi
	shlq	$5, %rsi
	leaq	(%r9,%rsi), %r8
	testq	%rcx, %rcx
	je	.LBB0_31
# BB#32:                                # %if.else.69
                                        #   in Loop: Header=BB0_23 Depth=1
	movq	56(%rsp), %rdx          # 8-byte Reload
	movb	129(%rdx), %dil
	shrb	$3, %dil
	movb	(%r15), %dl
	shrb	%dl
	orb	%dil, %dl
	testb	$1, %dl
	je	.LBB0_34
# BB#33:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_23 Depth=1
	movq	(%r8), %rdi
	testq	%rdi, %rdi
	jne	.LBB0_36
.LBB0_34:                               # %cond.false.81
                                        #   in Loop: Header=BB0_23 Depth=1
	movq	-16(%rsi,%r9), %rdi
	jmp	.LBB0_35
.LBB0_29:                               # %if.then.58.if.end.100_crit_edge
                                        #   in Loop: Header=BB0_23 Depth=1
	movl	8(%r13), %ecx
	jmp	.LBB0_37
.LBB0_31:                               # %if.then.67
                                        #   in Loop: Header=BB0_23 Depth=1
	movslq	16(%rdi,%rdx), %rdi
.LBB0_35:                               # %cond.end.88
                                        #   in Loop: Header=BB0_23 Depth=1
	incq	%rdi
.LBB0_36:                               # %cond.end.88
                                        #   in Loop: Header=BB0_23 Depth=1
	movq	%rdi, (%r8)
	leaq	-1(%rdi,%rax), %rdx
	decq	%rdi
	movq	%rdx, 16(%r9,%rsi)
	addq	%rdi, 8(%r9,%rsi)
.LBB0_37:                               # %if.end.100
                                        #   in Loop: Header=BB0_23 Depth=1
	incl	%ecx
	movl	%ecx, 8(%r13)
	jmp	.LBB0_38
.LBB0_6:                                # %for.cond.preheader
	movl	%r13d, 16(%rsp)         # 4-byte Spill
	testl	%r13d, %r13d
	je	.LBB0_20
# BB#7:
	movl	$0, 28(%rsp)            # 4-byte Folded Spill
.LBB0_8:                                # %for.cond.8.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #       Child Loop BB0_10 Depth 3
	xorl	%eax, %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	xorl	%r15d, %r15d
	movq	72(%rsp), %r14          # 8-byte Reload
	movl	20(%rsp), %r13d         # 4-byte Reload
	movq	56(%rsp), %rcx          # 8-byte Reload
	movl	24(%rsp), %ebx          # 4-byte Reload
	.align	16, 0x90
.LBB0_9:                                # %for.body.10
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_10 Depth 3
	movl	$0, (%rsp)
	movq	72(%rsp), %rdi          # 8-byte Reload
	movq	%rcx, %rsi
	movl	96(%rsp), %edx          # 4-byte Reload
	movl	%r15d, %ecx
	movl	28(%rsp), %r8d          # 4-byte Reload
	callq	opj_pi_create_encode
	jmp	.LBB0_10
.LBB0_15:                               # %if.end.18
                                        #   in Loop: Header=BB0_10 Depth=3
	movl	100(%rsp), %eax
	movq	80(%rsp), %rcx          # 8-byte Reload
	leal	(%rcx,%rax), %ecx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	addq	%rax, %r12
	movq	%r12, 88(%rsp)          # 8-byte Spill
	subl	%eax, %ebx
	movq	64(%rsp), %rcx          # 8-byte Reload
	addl	%eax, (%rcx)
	.align	16, 0x90
.LBB0_10:                               # %while.cond
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r14, %rdi
	callq	opj_pi_next
	testl	%eax, %eax
	je	.LBB0_16
# BB#11:                                # %while.body
                                        #   in Loop: Header=BB0_10 Depth=3
	cmpl	%ebp, 44(%r14)
	jae	.LBB0_10
# BB#12:                                # %if.then.14
                                        #   in Loop: Header=BB0_10 Depth=3
	movl	$0, 100(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	%ebx, (%rsp)
	movl	96(%rsp), %edi          # 4-byte Reload
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	32(%rsp), %rdx          # 8-byte Reload
	movq	%r14, %rcx
	movq	88(%rsp), %r12          # 8-byte Reload
	movq	%r12, %r8
	leaq	100(%rsp), %r9
	callq	opj_t2_encode_packet
	testl	%eax, %eax
	jne	.LBB0_15
	jmp	.LBB0_13
	.align	16, 0x90
.LBB0_16:                               # %while.end
                                        #   in Loop: Header=BB0_9 Depth=2
	movq	56(%rsp), %rcx          # 8-byte Reload
	movl	108(%rcx), %eax
	testl	%eax, %eax
	je	.LBB0_18
# BB#17:                                # %while.end
                                        #   in Loop: Header=BB0_9 Depth=2
	movq	80(%rsp), %rdx          # 8-byte Reload
	cmpl	%eax, %edx
	ja	.LBB0_13
.LBB0_18:                               # %for.inc
                                        #   in Loop: Header=BB0_9 Depth=2
	addq	$248, %r14
	incl	%r15d
	cmpl	44(%rsp), %r15d         # 4-byte Folded Reload
	movl	184(%rsp), %r9d
	jb	.LBB0_9
# BB#19:                                # %for.inc.37
                                        #   in Loop: Header=BB0_8 Depth=1
	movl	%ebx, 24(%rsp)          # 4-byte Spill
	movl	%r13d, 20(%rsp)         # 4-byte Spill
	movl	28(%rsp), %ecx          # 4-byte Reload
	incl	%ecx
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	movl	16(%rsp), %eax          # 4-byte Reload
	cmpl	%eax, %ecx
	jb	.LBB0_8
.LBB0_20:                               # %if.end.108
	movq	72(%rsp), %rdi          # 8-byte Reload
	movl	20(%rsp), %esi          # 4-byte Reload
	callq	opj_pi_destroy
	movl	$1, %ecx
	jmp	.LBB0_21
.LBB0_13:                               # %if.then.17
	movq	72(%rsp), %rdi          # 8-byte Reload
	movl	%r13d, %esi
.LBB0_14:                               # %cleanup.109
	callq	opj_pi_destroy
	xorl	%ecx, %ecx
.LBB0_21:                               # %cleanup.109
	movl	%ecx, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_26:                               # %if.then.51
	movq	72(%rsp), %rdi          # 8-byte Reload
	movl	20(%rsp), %esi          # 4-byte Reload
	jmp	.LBB0_14
.Lfunc_end0:
	.size	opj_t2_encode_packets, .Lfunc_end0-opj_t2_encode_packets
	.cfi_endproc

	.align	16, 0x90
	.type	opj_t2_encode_packet,@function
opj_t2_encode_packet:                   # @opj_t2_encode_packet
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
	subq	$168, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 224
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
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movl	%edi, 12(%rsp)          # 4-byte Spill
	movl	224(%rsp), %edi
	movl	40(%rcx), %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	44(%rcx), %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movl	32(%rcx), %ebp
	movl	36(%rcx), %eax
	movq	24(%rsi), %rcx
	imulq	$56, %rbp, %rbp
	movq	24(%rcx,%rbp), %rbp
	testb	$2, (%rdx)
	jne	.LBB1_2
# BB#1:
	movl	%edi, 52(%rsp)          # 4-byte Spill
	movq	%r8, 40(%rsp)           # 8-byte Spill
	movq	%r8, 24(%rsp)           # 8-byte Spill
	jmp	.LBB1_3
.LBB1_2:                                # %if.then
	movl	$67146239, (%r8)        # imm = 0x40091FF
	movb	849(%rsi), %cl
	movb	%cl, 4(%r8)
	movb	848(%rsi), %cl
	movb	%cl, 5(%r8)
	leaq	6(%r8), %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%r8, 24(%rsp)           # 8-byte Spill
	addl	$-6, %edi
	movl	%edi, 52(%rsp)          # 4-byte Spill
.LBB1_3:                                # %if.end
	imulq	$176, %rax, %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	leaq	24(%rbp,%rax), %rax
	movq	%rbp, 144(%rsp)         # 8-byte Spill
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	128(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jne	.LBB1_10
# BB#4:                                 # %if.then.18
	movq	64(%rsp), %rax          # 8-byte Reload
	cmpl	$0, (%rax)
	je	.LBB1_10
# BB#5:                                 # %for.body.lr.ph
	movq	144(%rsp), %rax         # 8-byte Reload
	movq	136(%rsp), %rcx         # 8-byte Reload
	leaq	32(%rax,%rcx), %rbp
	xorl	%ecx, %ecx
	imulq	$56, 32(%rsp), %rax     # 8-byte Folded Reload
	movq	%rax, 152(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB1_6:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
	movl	%ecx, 160(%rsp)         # 4-byte Spill
	movq	24(%rbp), %r12
	movq	152(%rsp), %rbx         # 8-byte Reload
	movq	40(%r12,%rbx), %rdi
	callq	opj_tgt_reset
	movq	48(%r12,%rbx), %rdi
	callq	opj_tgt_reset
	movl	16(%r12,%rbx), %r14d
	imull	20(%r12,%rbx), %r14d
	testl	%r14d, %r14d
	je	.LBB1_9
# BB#7:                                 # %for.body.25.lr.ph
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	152(%rsp), %rax         # 8-byte Reload
	leaq	48(%r12,%rax), %r15
	leaq	24(%r12,%rax), %r13
	xorl	%ebx, %ebx
	movl	$48, %r12d
	.align	16, 0x90
.LBB1_8:                                # %for.body.25
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r13), %rax
	movl	$0, (%rax,%r12)
	movq	(%r15), %rdi
	movl	36(%rbp), %edx
	subl	-8(%rax,%r12), %edx
	movl	%ebx, %esi
	callq	opj_tgt_setvalue
	addq	$64, %r12
	incl	%ebx
	cmpl	%ebx, %r14d
	jne	.LBB1_8
.LBB1_9:                                # %for.end
                                        #   in Loop: Header=BB1_6 Depth=1
	addq	$48, %rbp
	movl	160(%rsp), %ecx         # 4-byte Reload
	incl	%ecx
	movq	64(%rsp), %rax          # 8-byte Reload
	cmpl	(%rax), %ecx
	jb	.LBB1_6
.LBB1_10:                               # %if.end.34
	callq	opj_bio_create
	movq	%rax, %rbx
	movq	%rbx, 160(%rsp)         # 8-byte Spill
	movq	%rbx, %rdi
	movq	40(%rsp), %rsi          # 8-byte Reload
	movl	52(%rsp), %edx          # 4-byte Reload
	callq	opj_bio_init_enc
	movl	$1, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	opj_bio_write
	movq	144(%rsp), %rax         # 8-byte Reload
	movq	136(%rsp), %rcx         # 8-byte Reload
	leaq	32(%rax,%rcx), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	64(%rsp), %rax          # 8-byte Reload
	cmpl	$0, (%rax)
	je	.LBB1_64
# BB#11:                                # %for.body.41.lr.ph
	movq	128(%rsp), %rax         # 8-byte Reload
	leal	1(%rax), %eax
	movl	%eax, 108(%rsp)         # 4-byte Spill
	xorl	%ecx, %ecx
	imulq	$56, 32(%rsp), %rax     # 8-byte Folded Reload
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	56(%rsp), %rdx          # 8-byte Reload
	.align	16, 0x90
.LBB1_12:                               # %for.body.41
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_14 Depth 2
                                        #     Child Loop BB1_20 Depth 2
                                        #       Child Loop BB1_41 Depth 3
                                        #         Child Loop BB1_44 Depth 4
                                        #         Child Loop BB1_46 Depth 4
                                        #       Child Loop BB1_51 Depth 3
                                        #       Child Loop BB1_55 Depth 3
                                        #         Child Loop BB1_59 Depth 4
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movl	%ecx, 84(%rsp)          # 4-byte Spill
	movq	24(%rdx), %r15
	movq	88(%rsp), %rax          # 8-byte Reload
	movl	16(%r15,%rax), %r13d
	imull	20(%r15,%rax), %r13d
	movl	%r13d, 124(%rsp)        # 4-byte Spill
	testl	%r13d, %r13d
	je	.LBB1_63
# BB#13:                                # %for.body.54.lr.ph
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	%rbx, %r12
	movq	88(%rsp), %rax          # 8-byte Reload
	leaq	24(%r15,%rax), %r14
	movq	(%r14), %rbp
	leaq	40(%r15,%rax), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	addq	$48, %rbp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB1_14:                               # %for.body.54
                                        #   Parent Loop BB1_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, (%rbp)
	jne	.LBB1_17
# BB#15:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_14 Depth=2
	movq	-40(%rbp), %rax
	movq	128(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rcx,2), %rcx
	cmpl	$0, (%rax,%rcx,8)
	je	.LBB1_17
# BB#16:                                # %if.then.61
                                        #   in Loop: Header=BB1_14 Depth=2
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movl	%ebx, %esi
	movq	128(%rsp), %rdx         # 8-byte Reload
	callq	opj_tgt_setvalue
.LBB1_17:                               # %if.end.63
                                        #   in Loop: Header=BB1_14 Depth=2
	incl	%ebx
	addq	$64, %rbp
	cmpl	%ebx, %r13d
	jne	.LBB1_14
# BB#18:                                # %for.end.67
                                        #   in Loop: Header=BB1_12 Depth=1
	testl	%r13d, %r13d
	movq	%r12, %rbx
	je	.LBB1_63
# BB#19:                                # %for.body.73.lr.ph
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	(%r14), %r8
	movq	88(%rsp), %rax          # 8-byte Reload
	leaq	48(%r15,%rax), %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	xorl	%ecx, %ecx
	jmp	.LBB1_20
.LBB1_35:                               # %if.else.11.i
                                        #   in Loop: Header=BB1_20 Depth=2
	cmpl	$164, %esi
	movq	%rbx, %r8
	ja	.LBB1_39
# BB#36:                                # %if.then.13.i
                                        #   in Loop: Header=BB1_20 Depth=2
	addl	$-37, %esi
	orl	$65408, %esi            # imm = 0xFF80
	movl	$16, %edx
	jmp	.LBB1_37
	.align	16, 0x90
.LBB1_20:                               # %for.body.73
                                        #   Parent Loop BB1_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_41 Depth 3
                                        #         Child Loop BB1_44 Depth 4
                                        #         Child Loop BB1_46 Depth 4
                                        #       Child Loop BB1_51 Depth 3
                                        #       Child Loop BB1_55 Depth 3
                                        #         Child Loop BB1_59 Depth 4
	movq	128(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rax,2), %rbp
	shlq	$3, %rbp
	addq	8(%r8), %rbp
	cmpl	$0, 48(%r8)
	je	.LBB1_21
# BB#22:                                # %if.else
                                        #   in Loop: Header=BB1_20 Depth=2
	movl	%ecx, 136(%rsp)         # 4-byte Spill
	cmpl	$0, (%rbp)
	setne	%al
	movzbl	%al, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%r8, %rbx
	callq	opj_bio_write
	jmp	.LBB1_23
	.align	16, 0x90
.LBB1_21:                               # %if.then.80
                                        #   in Loop: Header=BB1_20 Depth=2
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rsi
	movq	%rbx, %rdi
	movl	%ecx, %edx
	movl	%edx, 136(%rsp)         # 4-byte Spill
	movl	108(%rsp), %ecx         # 4-byte Reload
	movq	%r8, %rbx
	callq	opj_tgt_encode
.LBB1_23:                               # %if.end.85
                                        #   in Loop: Header=BB1_20 Depth=2
	movq	%rbx, %r8
	movl	(%rbp), %esi
	movq	%rbp, %rax
	testl	%esi, %esi
	je	.LBB1_62
# BB#24:                                # %if.end.90
                                        #   in Loop: Header=BB1_20 Depth=2
	cmpl	$0, 48(%r8)
	movq	160(%rsp), %rbp         # 8-byte Reload
	movq	%rax, %r14
	jne	.LBB1_26
# BB#25:                                # %if.then.93
                                        #   in Loop: Header=BB1_20 Depth=2
	movl	$3, 44(%r8)
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rsi
	movl	$999, %ecx              # imm = 0x3E7
	movq	%rbp, %rdi
	movl	136(%rsp), %edx         # 4-byte Reload
	movq	%r8, %rbx
	callq	opj_tgt_encode
	movq	%rbx, %r8
	movl	(%r14), %esi
.LBB1_26:                               # %if.end.95
                                        #   in Loop: Header=BB1_20 Depth=2
	cmpl	$2, %esi
	jne	.LBB1_27
# BB#30:                                # %if.then.2.i
                                        #   in Loop: Header=BB1_20 Depth=2
	movl	$2, %esi
	movl	$2, %edx
.LBB1_37:                               # %opj_t2_putnumpasses.exit
                                        #   in Loop: Header=BB1_20 Depth=2
	movq	%rbp, %rdi
	movq	%r8, %rbx
	jmp	.LBB1_38
	.align	16, 0x90
.LBB1_27:                               # %if.end.95
                                        #   in Loop: Header=BB1_20 Depth=2
	movq	%r8, %rbx
	cmpl	$1, %esi
	jne	.LBB1_31
# BB#28:                                # %if.then.i
                                        #   in Loop: Header=BB1_20 Depth=2
	xorl	%esi, %esi
	movl	$1, %edx
	movq	%rbp, %rdi
	jmp	.LBB1_38
.LBB1_31:                               # %if.else.3.i
                                        #   in Loop: Header=BB1_20 Depth=2
	cmpl	$5, %esi
	ja	.LBB1_33
# BB#32:                                # %if.then.5.i
                                        #   in Loop: Header=BB1_20 Depth=2
	addl	$-3, %esi
	orl	$12, %esi
	movl	$4, %edx
	movq	%rbp, %rdi
	jmp	.LBB1_38
.LBB1_33:                               # %if.else.6.i
                                        #   in Loop: Header=BB1_20 Depth=2
	cmpl	$36, %esi
	ja	.LBB1_35
# BB#34:                                # %if.then.8.i
                                        #   in Loop: Header=BB1_20 Depth=2
	addl	$-6, %esi
	orl	$480, %esi              # imm = 0x1E0
	movl	$9, %edx
	movq	%rbp, %rdi
	.align	16, 0x90
.LBB1_38:                               # %opj_t2_putnumpasses.exit
                                        #   in Loop: Header=BB1_20 Depth=2
	callq	opj_bio_write
	movq	%rbx, %r8
.LBB1_39:                               # %opj_t2_putnumpasses.exit
                                        #   in Loop: Header=BB1_20 Depth=2
	movl	48(%r8), %eax
	movl	(%r14), %edx
	movq	%r14, 144(%rsp)         # 8-byte Spill
	leal	(%rdx,%rax), %r14d
	movl	%r14d, 152(%rsp)        # 4-byte Spill
	xorl	%r12d, %r12d
	cmpl	%r14d, %eax
	movl	$0, %r15d
	movl	$0, %r13d
	jae	.LBB1_53
# BB#40:                                # %for.body.106.lr.ph
                                        #   in Loop: Header=BB1_20 Depth=2
	leaq	(%rax,%rax,2), %rcx
	shlq	$3, %rcx
	addq	16(%r8), %rcx
	leal	-1(%rax,%rdx), %edx
	xorl	%r13d, %r13d
	xorl	%r15d, %r15d
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB1_41:                               # %for.body.106
                                        #   Parent Loop BB1_12 Depth=1
                                        #     Parent Loop BB1_20 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_44 Depth 4
                                        #         Child Loop BB1_46 Depth 4
	incl	%r15d
	addl	16(%rcx), %r13d
	testb	$1, 20(%rcx)
	jne	.LBB1_43
# BB#42:                                # %for.body.106
                                        #   in Loop: Header=BB1_41 Depth=3
	cmpl	%edx, %eax
	jne	.LBB1_48
.LBB1_43:                               # %if.then.117
                                        #   in Loop: Header=BB1_41 Depth=3
	movq	%rbp, %rbx
	xorl	%edi, %edi
	cmpl	$2, %r13d
	movl	$0, %esi
	jl	.LBB1_45
	.align	16, 0x90
.LBB1_44:                               # %for.body.i
                                        #   Parent Loop BB1_12 Depth=1
                                        #     Parent Loop BB1_20 Depth=2
                                        #       Parent Loop BB1_41 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	sarl	%r13d
	incl	%esi
	cmpl	$1, %r13d
	jg	.LBB1_44
.LBB1_45:                               # %opj_int_floorlog2.exit
                                        #   in Loop: Header=BB1_41 Depth=3
	movl	44(%r8), %ebp
	cmpl	$2, %r15d
	jl	.LBB1_47
	.align	16, 0x90
.LBB1_46:                               # %for.body.i.194
                                        #   Parent Loop BB1_12 Depth=1
                                        #     Parent Loop BB1_20 Depth=2
                                        #       Parent Loop BB1_41 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	sarl	%r15d
	incl	%edi
	cmpl	$1, %r15d
	jg	.LBB1_46
.LBB1_47:                               # %opj_int_floorlog2.exit196
                                        #   in Loop: Header=BB1_41 Depth=3
	incl	%esi
	subl	%ebp, %esi
	subl	%edi, %esi
	cmpl	%esi, %r12d
	cmovll	%esi, %r12d
	xorl	%r15d, %r15d
	xorl	%r13d, %r13d
	movq	%rbx, %rbp
.LBB1_48:                               # %if.end.125
                                        #   in Loop: Header=BB1_41 Depth=3
	addq	$24, %rcx
	incl	%eax
	cmpl	%r14d, %eax
	jne	.LBB1_41
# BB#49:                                # %for.end.129
                                        #   in Loop: Header=BB1_20 Depth=2
	testl	%r12d, %r12d
	jle	.LBB1_53
# BB#50:                                # %while.body.i.preheader
                                        #   in Loop: Header=BB1_20 Depth=2
	movl	%r14d, 152(%rsp)        # 4-byte Spill
	movq	%r8, %r14
	leal	1(%r12), %ebx
	.align	16, 0x90
.LBB1_51:                               # %while.body.i
                                        #   Parent Loop BB1_12 Depth=1
                                        #     Parent Loop BB1_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$1, %esi
	movl	$1, %edx
	movq	%rbp, %rdi
	callq	opj_bio_write
	decl	%ebx
	cmpl	$1, %ebx
	jg	.LBB1_51
# BB#52:                                #   in Loop: Header=BB1_20 Depth=2
	movq	%r14, %r8
	movl	152(%rsp), %r14d        # 4-byte Reload
.LBB1_53:                               # %opj_t2_putcommacode.exit
                                        #   in Loop: Header=BB1_20 Depth=2
	xorl	%esi, %esi
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%r8, %rbx
	callq	opj_bio_write
	movq	%rbx, %r8
	addl	%r12d, 44(%r8)
	movl	48(%r8), %ebp
	cmpl	%r14d, %ebp
	jae	.LBB1_62
# BB#54:                                # %for.body.140.lr.ph
                                        #   in Loop: Header=BB1_20 Depth=2
	leaq	(%rbp,%rbp,2), %rbx
	shlq	$3, %rbx
	addq	16(%r8), %rbx
	.align	16, 0x90
.LBB1_55:                               # %for.body.140
                                        #   Parent Loop BB1_12 Depth=1
                                        #     Parent Loop BB1_20 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_59 Depth 4
	incl	%r15d
	addl	16(%rbx), %r13d
	testb	$1, 20(%rbx)
	jne	.LBB1_58
# BB#56:                                # %lor.lhs.false.149
                                        #   in Loop: Header=BB1_55 Depth=3
	movl	48(%r8), %eax
	movq	144(%rsp), %rcx         # 8-byte Reload
	movl	(%rcx), %ecx
	leal	-1(%rax,%rcx), %eax
	cmpl	%eax, %ebp
	jne	.LBB1_57
.LBB1_58:                               # %if.then.156
                                        #   in Loop: Header=BB1_55 Depth=3
	movl	44(%r8), %eax
	movq	%r8, %r14
	xorl	%r12d, %r12d
	cmpl	$2, %r15d
	movl	$0, %edx
	jl	.LBB1_60
	.align	16, 0x90
.LBB1_59:                               # %for.body.i.205
                                        #   Parent Loop BB1_12 Depth=1
                                        #     Parent Loop BB1_20 Depth=2
                                        #       Parent Loop BB1_55 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	sarl	%r15d
	incl	%edx
	cmpl	$1, %r15d
	jg	.LBB1_59
.LBB1_60:                               # %opj_int_floorlog2.exit207
                                        #   in Loop: Header=BB1_55 Depth=3
	addl	%eax, %edx
	movq	160(%rsp), %rdi         # 8-byte Reload
	movl	%r13d, %esi
	callq	opj_bio_write
	xorl	%r13d, %r13d
	movq	%r14, %r8
	movl	152(%rsp), %r14d        # 4-byte Reload
	jmp	.LBB1_61
	.align	16, 0x90
.LBB1_57:                               #   in Loop: Header=BB1_55 Depth=3
	movl	%r15d, %r12d
.LBB1_61:                               # %if.end.160
                                        #   in Loop: Header=BB1_55 Depth=3
	addq	$24, %rbx
	incl	%ebp
	cmpl	%r14d, %ebp
	movl	%r12d, %r15d
	jne	.LBB1_55
.LBB1_62:                               # %cleanup
                                        #   in Loop: Header=BB1_20 Depth=2
	addq	$64, %r8
	movl	136(%rsp), %ecx         # 4-byte Reload
	incl	%ecx
	movl	124(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, %ecx
	movq	160(%rsp), %rbx         # 8-byte Reload
	jne	.LBB1_20
.LBB1_63:                               # %for.end.173
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	72(%rsp), %rdx          # 8-byte Reload
	addq	$48, %rdx
	movl	84(%rsp), %ecx          # 4-byte Reload
	incl	%ecx
	movq	64(%rsp), %rax          # 8-byte Reload
	cmpl	(%rax), %ecx
	jb	.LBB1_12
.LBB1_64:                               # %for.end.177
	movq	%rbx, %rdi
	callq	opj_bio_flush
	testl	%eax, %eax
	je	.LBB1_65
# BB#66:                                # %if.end.181
	movq	232(%rsp), %r13
	movq	%rbx, %rdi
	callq	opj_bio_numbytes
	movl	%eax, %ecx
	movq	40(%rsp), %r14          # 8-byte Reload
	addq	%rcx, %r14
	movq	%rbx, %rdi
	movl	52(%rsp), %ebp          # 4-byte Reload
	subl	%eax, %ebp
	callq	opj_bio_destroy
	movq	16(%rsp), %rax          # 8-byte Reload
	testb	$4, (%rax)
	je	.LBB1_68
# BB#67:                                # %if.then.190
	movw	$-27905, (%r14)         # imm = 0xFFFFFFFFFFFF92FF
	addq	$2, %r14
	addl	$-2, %ebp
.LBB1_68:                               # %if.end.195
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	%r14, %rdi
	movq	56(%rsp), %r10          # 8-byte Reload
	movl	12(%rsp), %r8d          # 4-byte Reload
	testq	%r13, %r13
	je	.LBB1_71
# BB#69:                                # %land.lhs.true.197
	cmpl	$0, 12(%r13)
	je	.LBB1_71
# BB#70:                                # %if.then.199
	movslq	8(%r13), %rax
	movl	%r8d, %ecx
	movq	104(%r13), %rdx
	imulq	$608, %rcx, %rcx        # imm = 0x260
	movq	552(%rdx,%rcx), %rcx
	movl	%edi, %edx
	subl	%esi, %edx
	movslq	%edx, %rdx
	shlq	$5, %rax
	movq	%rdx, 8(%rcx,%rax)
.LBB1_71:                               # %for.cond.211.preheader
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %r9d
	testl	%r9d, %r9d
	je	.LBB1_86
# BB#72:                                # %for.body.215.lr.ph
	movl	%r8d, %ecx
	xorl	%esi, %esi
	imulq	$56, 32(%rsp), %rax     # 8-byte Folded Reload
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movq	128(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rdx,2), %rbx
	movq	%rbx, 136(%rsp)         # 8-byte Spill
	imulq	$608, %rcx, %rcx        # imm = 0x260
	movq	%rcx, 128(%rsp)         # 8-byte Spill
.LBB1_73:                               # %for.body.215
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_75 Depth 2
	movq	24(%r10), %rcx
	movl	20(%rcx,%rax), %edx
	imull	16(%rcx,%rax), %edx
	movl	%edx, 144(%rsp)         # 4-byte Spill
	testl	%edx, %edx
	je	.LBB1_85
# BB#74:                                # %for.body.228.lr.ph
                                        #   in Loop: Header=BB1_73 Depth=1
	movl	%esi, 124(%rsp)         # 4-byte Spill
	movq	%r10, 56(%rsp)          # 8-byte Spill
	movq	24(%rcx,%rax), %r14
	addq	$48, %r14
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB1_75:                               # %for.body.228
                                        #   Parent Loop BB1_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-40(%r14), %r15
	cmpl	$0, (%r15,%rbx,8)
	je	.LBB1_83
# BB#76:                                # %if.end.237
                                        #   in Loop: Header=BB1_75 Depth=2
	movl	4(%r15,%rbx,8), %edx
	xorl	%eax, %eax
	cmpl	%ebp, %edx
	ja	.LBB1_87
# BB#77:                                # %if.end.242
                                        #   in Loop: Header=BB1_75 Depth=2
	leaq	(%r15,%rbx,8), %rax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	leaq	4(%r15,%rbx,8), %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	movq	16(%r15,%rbx,8), %rsi
	movq	%rdi, %rbx
	callq	memcpy
	movq	%rbx, %rdi
	movq	152(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	addl	%eax, (%r14)
	movq	160(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	addq	%rax, %rdi
	subl	%eax, %ebp
	testq	%r13, %r13
	je	.LBB1_78
# BB#79:                                # %land.lhs.true.255
                                        #   in Loop: Header=BB1_75 Depth=2
	cmpl	$0, 12(%r13)
	je	.LBB1_80
# BB#81:                                # %if.then.258
                                        #   in Loop: Header=BB1_75 Depth=2
	movslq	8(%r13), %rax
	movq	104(%r13), %rcx
	movq	128(%rsp), %rdx         # 8-byte Reload
	movq	552(%rcx,%rdx), %rcx
	movq	136(%rsp), %rbx         # 8-byte Reload
	movsd	8(%r15,%rbx,8), %xmm0   # xmm0 = mem[0],zero
	shlq	$5, %rax
	addsd	24(%rcx,%rax), %xmm0
	movsd	%xmm0, 24(%rcx,%rax)
	ucomisd	(%r13), %xmm0
	jbe	.LBB1_83
# BB#82:                                # %if.then.272
                                        #   in Loop: Header=BB1_75 Depth=2
	movsd	%xmm0, (%r13)
	jmp	.LBB1_83
	.align	16, 0x90
.LBB1_78:                               #   in Loop: Header=BB1_75 Depth=2
	movq	136(%rsp), %rbx         # 8-byte Reload
	jmp	.LBB1_83
.LBB1_80:                               #   in Loop: Header=BB1_75 Depth=2
	movq	136(%rsp), %rbx         # 8-byte Reload
	.align	16, 0x90
.LBB1_83:                               # %for.inc.281
                                        #   in Loop: Header=BB1_75 Depth=2
	incl	%r12d
	addq	$64, %r14
	cmpl	144(%rsp), %r12d        # 4-byte Folded Reload
	jb	.LBB1_75
# BB#84:                                # %for.cond.225.for.inc.288_crit_edge
                                        #   in Loop: Header=BB1_73 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %r9d
	movq	56(%rsp), %r10          # 8-byte Reload
	movl	124(%rsp), %esi         # 4-byte Reload
	movq	112(%rsp), %rax         # 8-byte Reload
.LBB1_85:                               # %for.inc.288
                                        #   in Loop: Header=BB1_73 Depth=1
	addq	$48, %r10
	incl	%esi
	cmpl	%r9d, %esi
	jb	.LBB1_73
.LBB1_86:                               # %for.end.290
	movq	24(%rsp), %rax          # 8-byte Reload
	subl	%eax, %edi
	movq	(%rsp), %rax            # 8-byte Reload
	addl	%edi, (%rax)
	movl	$1, %eax
	jmp	.LBB1_87
.LBB1_65:                               # %if.then.180
	movq	%rbx, %rdi
	callq	opj_bio_destroy
	xorl	%eax, %eax
.LBB1_87:                               # %cleanup.297
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	opj_t2_encode_packet, .Lfunc_end1-opj_t2_encode_packet
	.cfi_endproc

	.globl	opj_t2_decode_packets
	.align	16, 0x90
	.type	opj_t2_decode_packets,@function
opj_t2_decode_packets:                  # @opj_t2_decode_packets
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
	movl	%r9d, 160(%rsp)         # 4-byte Spill
	movq	%r8, %r14
	movq	%rcx, %r12
	movq	%rdx, 128(%rsp)         # 8-byte Spill
	movl	%esi, %eax
	movq	%rdi, %r15
	movq	(%r15), %rdi
	movq	%rdi, 152(%rsp)         # 8-byte Spill
	movq	8(%r15), %rsi
	movl	%eax, %ecx
	movq	96(%rsi), %rbx
	imulq	$5680, %rcx, %rbp       # imm = 0x1630
	movl	420(%rbx,%rbp), %r13d
	movl	%eax, %edx
	callq	opj_pi_create_decode
	movq	%rax, %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB2_72
# BB#1:                                 # %for.cond.preheader
	movq	%r14, 48(%rsp)          # 8-byte Spill
	leaq	(%rbx,%rbp), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	leaq	420(%rbx,%rbp), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	incl	%r13d
	movl	%r13d, 96(%rsp)         # 4-byte Spill
	leaq	12(%rbx,%rbp), %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	xorl	%ebp, %ebp
	movq	%rcx, %r14
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movq	%r12, %r13
	movq	%r12, 104(%rsp)         # 8-byte Spill
.LBB2_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
                                        #       Child Loop BB2_47 Depth 3
                                        #         Child Loop BB2_51 Depth 4
                                        #           Child Loop BB2_59 Depth 5
                                        #       Child Loop BB2_14 Depth 3
                                        #         Child Loop BB2_18 Depth 4
                                        #           Child Loop BB2_26 Depth 5
	movq	152(%rsp), %rbx         # 8-byte Reload
	movl	16(%rbx), %edi
	shlq	$2, %rdi
	callq	malloc
	testq	%rax, %rax
	je	.LBB2_3
# BB#4:                                 # %if.end.11
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	%ebp, 100(%rsp)         # 4-byte Spill
	movl	16(%rbx), %edx
	shlq	$2, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	movq	%rax, 168(%rsp)         # 8-byte Spill
	callq	memset
	movq	%r14, %rbp
	movq	%rbp, 144(%rsp)         # 8-byte Spill
	movq	%rbp, %rdi
	callq	opj_pi_next
	testl	%eax, %eax
	je	.LBB2_5
# BB#6:                                 # %while.body.lr.ph
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	160(%rsp), %r14d        # 4-byte Reload
	movq	128(%rsp), %r12         # 8-byte Reload
.LBB2_7:                                # %while.body
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_47 Depth 3
                                        #         Child Loop BB2_51 Depth 4
                                        #           Child Loop BB2_59 Depth 5
                                        #       Child Loop BB2_14 Depth 3
                                        #         Child Loop BB2_18 Depth 4
                                        #           Child Loop BB2_26 Depth 5
	movq	%r13, 136(%rsp)         # 8-byte Spill
	movq	120(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	cmpl	44(%rbp), %eax
	jbe	.LBB2_43
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB2_7 Depth=2
	movl	32(%rbp), %eax
	movl	36(%rbp), %ecx
	movq	24(%r12), %rdx
	imulq	$56, %rax, %rsi
	cmpl	20(%rdx,%rsi), %ecx
	jae	.LBB2_43
# BB#9:                                 # %if.then.24
                                        #   in Loop: Header=BB2_7 Depth=2
	movq	168(%rsp), %rcx         # 8-byte Reload
	movl	$0, (%rcx,%rax,4)
	movl	$0, 176(%rsp)
	movl	%r14d, 8(%rsp)
	movl	%r14d, 160(%rsp)        # 4-byte Spill
	leaq	176(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r15, %rdi
	movq	%r15, 56(%rsp)          # 8-byte Spill
	movq	%r12, %rsi
	movq	112(%rsp), %rdx         # 8-byte Reload
	movq	%rbp, %rcx
	movq	%rbp, %rbx
	leaq	180(%rsp), %r8
	movq	%r13, %r9
	callq	opj_t2_read_packet_header
	testl	%eax, %eax
	je	.LBB2_42
# BB#10:                                # %if.end.i
                                        #   in Loop: Header=BB2_7 Depth=2
	movl	176(%rsp), %edi
	movq	%rdi, 72(%rsp)          # 8-byte Spill
	cmpl	$0, 180(%rsp)
	je	.LBB2_11
# BB#12:                                # %if.then.2.i
                                        #   in Loop: Header=BB2_7 Depth=2
	leaq	(%r13,%rdi), %r14
	movq	%r14, 40(%rsp)          # 8-byte Spill
	movl	$0, 176(%rsp)
	movq	%rbx, %rbp
	movl	32(%rbp), %eax
	movl	36(%rbp), %edx
	movq	24(%r12), %rcx
	imulq	$56, %rax, %rax
	movq	24(%rcx,%rax), %rcx
	imulq	$176, %rdx, %rdx
	movl	24(%rcx,%rdx), %eax
	testl	%eax, %eax
	je	.LBB2_39
# BB#13:                                # %for.body.lr.ph.i.i
                                        #   in Loop: Header=BB2_7 Depth=2
	leaq	24(%rcx,%rdx), %rsi
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movl	160(%rsp), %esi         # 4-byte Reload
	subl	%edi, %esi
	leaq	32(%rcx,%rdx), %r15
	movq	40(%rsp), %r14          # 8-byte Reload
	leaq	(%rsi,%r14), %r8
	xorl	%esi, %esi
	.align	16, 0x90
.LBB2_14:                               # %for.body.i.i
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_18 Depth 4
                                        #           Child Loop BB2_26 Depth 5
	movl	%esi, 68(%rsp)          # 4-byte Spill
	movl	40(%rbp), %ecx
	movl	8(%r15), %edx
	cmpl	(%r15), %edx
	je	.LBB2_38
# BB#15:                                # %lor.lhs.false.i.i
                                        #   in Loop: Header=BB2_14 Depth=3
	movl	12(%r15), %edx
	cmpl	4(%r15), %edx
	je	.LBB2_38
# BB#16:                                # %if.end.i.i
                                        #   in Loop: Header=BB2_14 Depth=3
	movq	24(%r15), %rdx
	imulq	$56, %rcx, %rcx
	movl	20(%rdx,%rcx), %ebx
	imull	16(%rdx,%rcx), %ebx
	movl	%ebx, 36(%rsp)          # 4-byte Spill
	testl	%ebx, %ebx
	je	.LBB2_38
# BB#17:                                # %for.body.10.lr.ph.i.i
                                        #   in Loop: Header=BB2_14 Depth=3
	movq	%r12, 128(%rsp)         # 8-byte Spill
	movq	24(%rdx,%rcx), %r12
	xorl	%ebx, %ebx
.LBB2_18:                               # %for.body.10.i.i
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        #       Parent Loop BB2_14 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_26 Depth 5
	cmpl	$0, 48(%r12)
	je	.LBB2_36
# BB#19:                                # %if.end.13.i.i
                                        #   in Loop: Header=BB2_18 Depth=4
	movl	52(%r12), %eax
	testl	%eax, %eax
	je	.LBB2_20
# BB#21:                                # %if.else.i.i
                                        #   in Loop: Header=BB2_18 Depth=4
	leal	-1(%rax), %ecx
	movq	8(%r12), %rdx
	leaq	(%rcx,%rcx,4), %rcx
	leaq	(%rdx,%rcx,8), %rbp
	movl	12(%rdx,%rcx,8), %esi
	cmpl	24(%rdx,%rcx,8), %esi
	jne	.LBB2_22
# BB#23:                                # %if.then.23.i.i
                                        #   in Loop: Header=BB2_18 Depth=4
	movl	%ebx, 32(%rsp)          # 4-byte Spill
	addq	$40, %rbp
	incl	%eax
	movl	%eax, 52(%r12)
	jmp	.LBB2_24
.LBB2_20:                               # %if.then.15.i.i
                                        #   in Loop: Header=BB2_18 Depth=4
	movl	%ebx, 32(%rsp)          # 4-byte Spill
	movq	8(%r12), %rbp
	movl	$1, 52(%r12)
	movl	$0, 44(%r12)
	jmp	.LBB2_24
.LBB2_22:                               #   in Loop: Header=BB2_18 Depth=4
	movl	%ebx, 32(%rsp)          # 4-byte Spill
.LBB2_24:                               # %do.body.preheader.i.i
                                        #   in Loop: Header=BB2_18 Depth=4
	movq	%r8, %r13
	movl	32(%rbp), %ecx
	leaq	(%r14,%rcx), %rax
	cmpq	%r13, %rax
	ja	.LBB2_42
# BB#25:                                # %if.end.33.i.lr.ph.i
                                        #   in Loop: Header=BB2_18 Depth=4
	movl	44(%r12), %edx
	.align	16, 0x90
.LBB2_26:                               # %if.end.33.i.i
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        #       Parent Loop BB2_14 Depth=3
                                        #         Parent Loop BB2_18 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	leal	(%rcx,%rdx), %eax
	cmpl	40(%r12), %eax
	jbe	.LBB2_27
# BB#28:                                # %cond.false.i.i
                                        #   in Loop: Header=BB2_26 Depth=5
	movl	%eax, %esi
	movq	(%r12), %rdi
	callq	realloc
	testq	%rax, %rax
	je	.LBB2_41
# BB#29:                                # %cleanup.thread.i.i
                                        #   in Loop: Header=BB2_26 Depth=5
	movl	44(%r12), %edx
	movl	32(%rbp), %ecx
	leal	(%rcx,%rdx), %esi
	movl	%esi, 40(%r12)
	movq	%rax, (%r12)
	jmp	.LBB2_30
	.align	16, 0x90
.LBB2_27:                               # %if.end.33.if.end.58_crit_edge.i.i
                                        #   in Loop: Header=BB2_26 Depth=5
	movq	(%r12), %rax
.LBB2_30:                               # %if.end.58.i.i
                                        #   in Loop: Header=BB2_26 Depth=5
	movl	%edx, %edi
	addq	%rax, %rdi
	movl	%ecx, %edx
	movq	%r14, %rsi
	callq	memcpy
	movl	12(%rbp), %ecx
	testl	%ecx, %ecx
	je	.LBB2_32
# BB#31:                                # %if.end.58.if.end.73_crit_edge.i.i
                                        #   in Loop: Header=BB2_26 Depth=5
	movl	44(%r12), %eax
	jmp	.LBB2_33
	.align	16, 0x90
.LBB2_32:                               # %if.then.69.i.i
                                        #   in Loop: Header=BB2_26 Depth=5
	movq	%r12, (%rbp)
	movl	44(%r12), %eax
	movl	%eax, 8(%rbp)
.LBB2_33:                               # %if.end.73.i.i
                                        #   in Loop: Header=BB2_26 Depth=5
	movl	28(%rbp), %esi
	movl	32(%rbp), %edi
	addq	%rdi, %r14
	leal	(%rcx,%rsi), %ecx
	movl	%ecx, 12(%rbp)
	movl	48(%r12), %ebx
	movl	%ebx, %edx
	subl	%esi, %edx
	movl	%edx, 48(%r12)
	movl	%ecx, 16(%rbp)
	leal	(%rax,%rdi), %edx
	movl	%edx, 44(%r12)
	addl	%edi, 20(%rbp)
	cmpl	%esi, %ebx
	je	.LBB2_35
# BB#34:                                # %do.cond.i.i
                                        #   in Loop: Header=BB2_26 Depth=5
	incl	52(%r12)
	movl	72(%rbp), %ecx
	addq	$40, %rbp
	leaq	(%rcx,%r14), %rax
	cmpq	%r13, %rax
	jbe	.LBB2_26
	jmp	.LBB2_42
.LBB2_35:                               # %do.end.i.i
                                        #   in Loop: Header=BB2_18 Depth=4
	movq	%r13, %r8
	movl	52(%r12), %eax
	movl	%eax, 56(%r12)
	movq	136(%rsp), %r13         # 8-byte Reload
	movq	144(%rsp), %rbp         # 8-byte Reload
	movq	72(%rsp), %rdi          # 8-byte Reload
	movl	68(%rsp), %esi          # 4-byte Reload
	movl	32(%rsp), %ebx          # 4-byte Reload
.LBB2_36:                               # %for.inc.i.i
                                        #   in Loop: Header=BB2_18 Depth=4
	addq	$64, %r12
	incl	%ebx
	cmpl	36(%rsp), %ebx          # 4-byte Folded Reload
	jb	.LBB2_18
# BB#37:                                # %for.inc.110.i.loopexit.i
                                        #   in Loop: Header=BB2_14 Depth=3
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	movq	128(%rsp), %r12         # 8-byte Reload
	.align	16, 0x90
.LBB2_38:                               # %for.inc.110.i.i
                                        #   in Loop: Header=BB2_14 Depth=3
	addq	$48, %r15
	incl	%esi
	cmpl	%eax, %esi
	jb	.LBB2_14
.LBB2_39:                               # %if.end.6.i
                                        #   in Loop: Header=BB2_7 Depth=2
	movq	40(%rsp), %rax          # 8-byte Reload
	subl	%eax, %r14d
	movl	%r14d, 176(%rsp)
	addl	%edi, %r14d
	movl	%r14d, %r8d
	movl	160(%rsp), %r14d        # 4-byte Reload
	movq	56(%rsp), %r15          # 8-byte Reload
	jmp	.LBB2_40
	.align	16, 0x90
.LBB2_43:                               # %if.else
                                        #   in Loop: Header=BB2_7 Depth=2
	movl	$0, 176(%rsp)
	movl	%r14d, 8(%rsp)
	leaq	176(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	112(%rsp), %rdx         # 8-byte Reload
	movq	%rbp, %rcx
	leaq	180(%rsp), %r8
	movq	%r13, %r9
	callq	opj_t2_read_packet_header
	testl	%eax, %eax
	je	.LBB2_42
# BB#44:                                # %if.end.i.72
                                        #   in Loop: Header=BB2_7 Depth=2
	movl	176(%rsp), %esi
	cmpl	$0, 180(%rsp)
	je	.LBB2_65
# BB#45:                                # %if.then.2.i.81
                                        #   in Loop: Header=BB2_7 Depth=2
	movq	%rbp, 144(%rsp)         # 8-byte Spill
	movl	32(%rbp), %eax
	movl	36(%rbp), %ecx
	movq	24(%r12), %rdx
	imulq	$56, %rax, %rax
	movq	24(%rdx,%rax), %rax
	movl	$0, 176(%rsp)
	imulq	$176, %rcx, %rdx
	movl	24(%rax,%rdx), %r9d
	xorl	%ecx, %ecx
	testl	%r9d, %r9d
	je	.LBB2_64
# BB#46:                                # %for.body.lr.ph.i.i.85
                                        #   in Loop: Header=BB2_7 Depth=2
	movl	%r14d, %ecx
	subl	%esi, %ecx
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	leaq	32(%rax,%rdx), %rdx
	movl	40(%rbp), %eax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	xorl	%edi, %edi
	.align	16, 0x90
.LBB2_47:                               # %for.body.i.i.90
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_51 Depth 4
                                        #           Child Loop BB2_59 Depth 5
	movl	8(%rdx), %eax
	cmpl	(%rdx), %eax
	je	.LBB2_62
# BB#48:                                # %lor.lhs.false.i.i.94
                                        #   in Loop: Header=BB2_47 Depth=3
	movl	12(%rdx), %eax
	cmpl	4(%rdx), %eax
	je	.LBB2_62
# BB#49:                                # %if.end.i.i.98
                                        #   in Loop: Header=BB2_47 Depth=3
	movq	24(%rdx), %rax
	imulq	$56, 160(%rsp), %rsi    # 8-byte Folded Reload
	movl	20(%rax,%rsi), %r10d
	imull	16(%rax,%rsi), %r10d
	testl	%r10d, %r10d
	je	.LBB2_62
# BB#50:                                # %for.body.10.lr.ph.i.i.101
                                        #   in Loop: Header=BB2_47 Depth=3
	movq	24(%rax,%rsi), %rbx
	xorl	%r11d, %r11d
.LBB2_51:                               # %for.body.10.i.i.104
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        #       Parent Loop BB2_47 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_59 Depth 5
	cmpl	$0, 48(%rbx)
	je	.LBB2_61
# BB#52:                                # %if.end.13.i.i.107
                                        #   in Loop: Header=BB2_51 Depth=4
	movq	%r15, %r8
	movq	%r12, %r13
	movl	%r14d, %r12d
	movl	52(%rbx), %r14d
	testl	%r14d, %r14d
	je	.LBB2_53
# BB#54:                                # %if.else.i.i.118
                                        #   in Loop: Header=BB2_51 Depth=4
	leal	-1(%r14), %eax
	movq	8(%rbx), %r15
	leaq	(%rax,%rax,4), %rbp
	leaq	(%r15,%rbp,8), %rax
	movl	12(%r15,%rbp,8), %esi
	cmpl	24(%r15,%rbp,8), %esi
	jne	.LBB2_56
# BB#55:                                # %if.then.23.i.i.121
                                        #   in Loop: Header=BB2_51 Depth=4
	addq	$40, %rax
	incl	%r14d
	movl	%r14d, 52(%rbx)
.LBB2_56:                               # %do.body.i.preheader.i
                                        #   in Loop: Header=BB2_51 Depth=4
	movq	104(%rsp), %rsi         # 8-byte Reload
	movl	%r12d, %r14d
	movq	%r13, %r12
	movq	%r8, %r15
	jmp	.LBB2_57
	.align	16, 0x90
.LBB2_53:                               # %if.then.15.i.i.110
                                        #   in Loop: Header=BB2_51 Depth=4
	movq	8(%rbx), %rax
	movl	$1, 52(%rbx)
	movl	$0, 44(%rbx)
	movl	%r12d, %r14d
	movq	%r13, %r12
	movq	%r8, %r15
	movq	104(%rsp), %rsi         # 8-byte Reload
.LBB2_57:                               # %do.body.i.preheader.i
                                        #   in Loop: Header=BB2_51 Depth=4
	movq	%rsi, 104(%rsp)         # 8-byte Spill
	movl	32(%rax), %ebp
	addl	176(%rsp), %ebp
	cmpl	%ecx, %ebp
	ja	.LBB2_42
# BB#58:                                # %if.end.31.i.i.preheader
                                        #   in Loop: Header=BB2_51 Depth=4
	addq	$12, %rax
	.align	16, 0x90
.LBB2_59:                               # %if.end.31.i.i
                                        #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_7 Depth=2
                                        #       Parent Loop BB2_47 Depth=3
                                        #         Parent Loop BB2_51 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	%ebp, 176(%rsp)
	movl	16(%rax), %esi
	addl	%esi, (%rax)
	movl	48(%rbx), %ebp
	subl	%esi, %ebp
	movl	%ebp, 48(%rbx)
	je	.LBB2_61
# BB#60:                                # %do.cond.i.thread1.i
                                        #   in Loop: Header=BB2_59 Depth=5
	incl	52(%rbx)
	movl	60(%rax), %ebp
	addl	176(%rsp), %ebp
	addq	$40, %rax
	cmpl	%ecx, %ebp
	jbe	.LBB2_59
	jmp	.LBB2_42
	.align	16, 0x90
.LBB2_61:                               # %for.inc.i.i.126
                                        #   in Loop: Header=BB2_51 Depth=4
	addq	$64, %rbx
	incl	%r11d
	cmpl	%r10d, %r11d
	movq	144(%rsp), %rbp         # 8-byte Reload
	jb	.LBB2_51
	.align	16, 0x90
.LBB2_62:                               # %for.inc.55.i.i
                                        #   in Loop: Header=BB2_47 Depth=3
	addq	$48, %rdx
	incl	%edi
	cmpl	%r9d, %edi
	jb	.LBB2_47
# BB#63:                                # %if.end.6.loopexit.i
                                        #   in Loop: Header=BB2_7 Depth=2
	movl	176(%rsp), %ecx
	movq	72(%rsp), %rsi          # 8-byte Reload
.LBB2_64:                               # %if.end.6.i.131
                                        #   in Loop: Header=BB2_7 Depth=2
	addl	%ecx, %esi
.LBB2_65:                               # %opj_t2_skip_packet.exit.thread143
                                        #   in Loop: Header=BB2_7 Depth=2
	movq	136(%rsp), %r13         # 8-byte Reload
	movq	168(%rsp), %rcx         # 8-byte Reload
	movl	32(%rbp), %eax
	jmp	.LBB2_66
.LBB2_11:                               #   in Loop: Header=BB2_7 Depth=2
	movq	%rdi, %r8
	movl	160(%rsp), %r14d        # 4-byte Reload
	movq	56(%rsp), %r15          # 8-byte Reload
	movq	%rbx, %rbp
.LBB2_40:                               # %if.end.31
                                        #   in Loop: Header=BB2_7 Depth=2
	movl	32(%rbp), %eax
	movl	36(%rbp), %ecx
	movq	152(%rsp), %rdx         # 8-byte Reload
	movq	24(%rdx), %rdx
	movq	%rax, %rsi
	shlq	$6, %rsi
	movl	36(%rdx,%rsi), %edi
	cmpl	%edi, %ecx
	cmoval	%ecx, %edi
	movl	%edi, 36(%rdx,%rsi)
	movq	168(%rsp), %rcx         # 8-byte Reload
	movq	%r8, %rsi
.LBB2_66:                               # %if.end.43
                                        #   in Loop: Header=BB2_7 Depth=2
	movq	%rcx, 168(%rsp)         # 8-byte Spill
	movl	%eax, %eax
	cmpl	$0, (%rcx,%rax,4)
	je	.LBB2_69
# BB#67:                                # %if.then.48
                                        #   in Loop: Header=BB2_7 Depth=2
	movq	152(%rsp), %rcx         # 8-byte Reload
	movq	24(%rcx), %rcx
	movq	%rax, %rdx
	shlq	$6, %rdx
	cmpl	$0, 36(%rcx,%rdx)
	jne	.LBB2_69
# BB#68:                                # %if.then.56
                                        #   in Loop: Header=BB2_7 Depth=2
	leaq	36(%rcx,%rdx), %rcx
	movq	24(%r12), %rdx
	imulq	$56, %rax, %rax
	movl	20(%rdx,%rax), %eax
	decl	%eax
	movl	%eax, (%rcx)
.LBB2_69:                               # %if.end.64
                                        #   in Loop: Header=BB2_7 Depth=2
	movl	%esi, %eax
	addq	%rax, %r13
	subl	%esi, %r14d
	movq	%rbp, %rdi
	callq	opj_pi_next
	testl	%eax, %eax
	jne	.LBB2_7
	jmp	.LBB2_70
	.align	16, 0x90
.LBB2_5:                                #   in Loop: Header=BB2_2 Depth=1
	movl	160(%rsp), %r14d        # 4-byte Reload
	movq	128(%rsp), %r12         # 8-byte Reload
.LBB2_70:                               # %for.inc
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	%r12, 128(%rsp)         # 8-byte Spill
	movl	%r14d, 160(%rsp)        # 4-byte Spill
	addq	$248, %rbp
	movq	%rbp, %r14
	movq	168(%rsp), %rdi         # 8-byte Reload
	callq	free
	movl	100(%rsp), %ebp         # 4-byte Reload
	incl	%ebp
	movq	80(%rsp), %rax          # 8-byte Reload
	cmpl	(%rax), %ebp
	jbe	.LBB2_2
# BB#71:                                # %for.end
	movq	88(%rsp), %rdi          # 8-byte Reload
	movl	96(%rsp), %esi          # 4-byte Reload
	callq	opj_pi_destroy
	movq	104(%rsp), %rax         # 8-byte Reload
	subl	%eax, %r13d
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	%r13d, (%rax)
	movl	$1, %eax
	jmp	.LBB2_72
.LBB2_41:                               # %cleanup.i.i
	movq	(%r12), %rdi
	callq	free
	movq	$0, (%r12)
	movl	$0, 40(%r12)
.LBB2_42:                               # %if.then.30
	movq	88(%rsp), %rdi          # 8-byte Reload
	movl	96(%rsp), %esi          # 4-byte Reload
	callq	opj_pi_destroy
	movq	168(%rsp), %rdi         # 8-byte Reload
	callq	free
	xorl	%eax, %eax
.LBB2_72:                               # %cleanup.67
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_3:                                # %if.then.10
	movq	88(%rsp), %rdi          # 8-byte Reload
	movl	96(%rsp), %esi          # 4-byte Reload
	callq	opj_pi_destroy
	xorl	%eax, %eax
	jmp	.LBB2_72
.Lfunc_end2:
	.size	opj_t2_decode_packets, .Lfunc_end2-opj_t2_decode_packets
	.cfi_endproc

	.globl	opj_t2_create
	.align	16, 0x90
	.type	opj_t2_create,@function
opj_t2_create:                          # @opj_t2_create
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 32
.Ltmp42:
	.cfi_offset %rbx, -32
.Ltmp43:
	.cfi_offset %r14, -24
.Ltmp44:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$16, %edi
	callq	malloc
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB3_2
# BB#1:                                 # %if.end
	xorl	%esi, %esi
	movl	$16, %edx
	movq	%rbx, %rdi
	callq	memset
	movq	%r15, (%rbx)
	movq	%r14, 8(%rbx)
	movq	%rbx, %rax
.LBB3_2:                                # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	opj_t2_create, .Lfunc_end3-opj_t2_create
	.cfi_endproc

	.globl	opj_t2_destroy
	.align	16, 0x90
	.type	opj_t2_destroy,@function
opj_t2_destroy:                         # @opj_t2_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rdi, %rdi
	je	.LBB4_1
# BB#2:                                 # %if.then
	jmp	free                    # TAILCALL
.LBB4_1:                                # %if.end
	retq
.Lfunc_end4:
	.size	opj_t2_destroy, .Lfunc_end4-opj_t2_destroy
	.cfi_endproc

	.align	16, 0x90
	.type	opj_t2_read_packet_header,@function
opj_t2_read_packet_header:              # @opj_t2_read_packet_header
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp46:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp47:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp48:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp49:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp51:
	.cfi_def_cfa_offset 176
.Ltmp52:
	.cfi_offset %rbx, -56
.Ltmp53:
	.cfi_offset %r12, -48
.Ltmp54:
	.cfi_offset %r13, -40
.Ltmp55:
	.cfi_offset %r14, -32
.Ltmp56:
	.cfi_offset %r15, -24
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%r9, 64(%rsp)           # 8-byte Spill
	movq	%r8, 56(%rsp)           # 8-byte Spill
	movq	%rcx, %r14
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	movq	%r9, 104(%rsp)
	movq	8(%rdi), %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movl	32(%r14), %eax
	movl	36(%r14), %ecx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movq	24(%rsi), %rcx
	imulq	$56, %rax, %rax
	movq	24(%rcx,%rax), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	cmpl	$0, 44(%r14)
	jne	.LBB5_14
# BB#1:                                 # %if.then
	imulq	$176, 72(%rsp), %rcx    # 8-byte Folded Reload
	movq	80(%rsp), %rax          # 8-byte Reload
	movl	24(%rax,%rcx), %eax
	testl	%eax, %eax
	je	.LBB5_14
# BB#2:                                 # %for.body.lr.ph
	movq	80(%rsp), %rdx          # 8-byte Reload
	leaq	24(%rdx,%rcx), %r13
	leaq	32(%rdx,%rcx), %rbx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB5_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_8 Depth 2
                                        #     Child Loop BB5_11 Depth 2
	movl	40(%r14), %ecx
	movl	8(%rbx), %edx
	cmpl	(%rbx), %edx
	je	.LBB5_13
# BB#4:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	12(%rbx), %edx
	cmpl	4(%rbx), %edx
	je	.LBB5_13
# BB#5:                                 # %if.then.9
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	%r14, %r12
	movq	24(%rbx), %r14
	imulq	$56, %rcx, %r15
	movq	40(%r14,%r15), %rdi
	callq	opj_tgt_reset
	movq	48(%r14,%r15), %rdi
	callq	opj_tgt_reset
	movl	16(%r14,%r15), %eax
	imull	20(%r14,%r15), %eax
	testl	%eax, %eax
	je	.LBB5_12
# BB#6:                                 # %for.body.12.lr.ph
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	24(%r14,%r15), %rcx
	leal	-1(%rax), %edx
	xorl	%esi, %esi
	testb	$7, %al
	je	.LBB5_9
# BB#7:                                 # %for.body.12.prol.preheader
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	%eax, %edi
	andl	$7, %edi
	xorl	%esi, %esi
	.align	16, 0x90
.LBB5_8:                                # %for.body.12.prol
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	$0, 52(%rcx)
	addq	$64, %rcx
	incl	%esi
	cmpl	%esi, %edi
	jne	.LBB5_8
.LBB5_9:                                # %for.body.12.lr.ph.split
                                        #   in Loop: Header=BB5_3 Depth=1
	cmpl	$7, %edx
	jb	.LBB5_12
# BB#10:                                # %for.body.12.lr.ph.split.split
                                        #   in Loop: Header=BB5_3 Depth=1
	subl	%esi, %eax
	addq	$504, %rcx              # imm = 0x1F8
	.align	16, 0x90
.LBB5_11:                               # %for.body.12
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	$0, -452(%rcx)
	movq	$0, -388(%rcx)
	movq	$0, -324(%rcx)
	movq	$0, -260(%rcx)
	movq	$0, -196(%rcx)
	movq	$0, -132(%rcx)
	movq	$0, -68(%rcx)
	movq	$0, -4(%rcx)
	addq	$512, %rcx              # imm = 0x200
	addl	$-8, %eax
	jne	.LBB5_11
.LBB5_12:                               # %if.end.loopexit
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	(%r13), %eax
	movq	%r12, %r14
.LBB5_13:                               # %if.end
                                        #   in Loop: Header=BB5_3 Depth=1
	addq	$48, %rbx
	incl	%ebp
	cmpl	%eax, %ebp
	jb	.LBB5_3
.LBB5_14:                               # %if.end.17
	movl	184(%rsp), %eax
	movq	88(%rsp), %r15          # 8-byte Reload
	testb	$2, (%r15)
	je	.LBB5_22
# BB#15:                                # %if.then.18
	cmpl	$5, %eax
	ja	.LBB5_18
# BB#16:                                # %if.then.20
	movq	stderr(%rip), %rdi
	movl	$.L.str, %esi
	jmp	.LBB5_17
.LBB5_18:                               # %if.else
	movq	104(%rsp), %rax
	movzbl	(%rax), %ecx
	cmpl	$255, %ecx
	jne	.LBB5_20
# BB#19:                                # %lor.lhs.false.23
	movzbl	1(%rax), %ecx
	cmpl	$145, %ecx
	jne	.LBB5_20
# BB#21:                                # %if.else.29
	addq	$6, %rax
	movq	%rax, 104(%rsp)
	jmp	.LBB5_22
.LBB5_20:                               # %if.then.27
	movq	stderr(%rip), %rdi
	movl	$.L.str.1, %esi
.LBB5_17:                               # %if.end.33
	xorl	%eax, %eax
	callq	fprintf
.LBB5_22:                               # %if.end.33
	callq	opj_bio_create
	movq	%rax, %rbp
	xorl	%eax, %eax
	testq	%rbp, %rbp
	je	.LBB5_96
# BB#23:                                # %if.end.37
	movq	96(%rsp), %rax          # 8-byte Reload
	testb	$1, 136(%rax)
	movl	$4294967295, %r12d      # imm = 0xFFFFFFFF
	jne	.LBB5_24
# BB#25:                                # %if.else.41
	testb	$1, 5672(%r15)
	jne	.LBB5_26
# BB#27:                                # %if.else.48
	leaq	104(%rsp), %r13
	movq	104(%rsp), %rbx
	movq	64(%rsp), %rax          # 8-byte Reload
	movl	184(%rsp), %ecx
	leal	(%rax,%rcx), %eax
	subl	%ebx, %eax
	movl	%eax, 116(%rsp)
	leaq	116(%rsp), %rax
	jmp	.LBB5_28
.LBB5_24:                               # %if.then.40
	movq	40(%rax), %rbx
	leaq	40(%rax), %r13
	addq	$48, %rax
	jmp	.LBB5_28
.LBB5_26:                               # %if.then.47
	leaq	5160(%r15), %r13
	movq	5160(%r15), %rbx
	leaq	5180(%r15), %rax
.LBB5_28:                               # %if.end.52
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movq	%r13, 48(%rsp)          # 8-byte Spill
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movl	(%rax), %edx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	opj_bio_init_dec
	movl	$1, %esi
	movq	%rbp, %rdi
	callq	opj_bio_read
	testl	%eax, %eax
	je	.LBB5_29
# BB#38:                                # %if.end.102
	imulq	$176, 72(%rsp), %rcx    # 8-byte Folded Reload
	movq	80(%rsp), %rax          # 8-byte Reload
	movl	24(%rax,%rcx), %r8d
	testl	%r8d, %r8d
	je	.LBB5_53
# BB#39:                                # %for.body.109.lr.ph
	leaq	24(%rax,%rcx), %rdx
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	leaq	32(%rax,%rcx), %rsi
	xorl	%edi, %edi
	.align	16, 0x90
.LBB5_40:                               # %for.body.109
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_45 Depth 2
                                        #       Child Loop BB5_57 Depth 3
                                        #       Child Loop BB5_67 Depth 3
                                        #       Child Loop BB5_84 Depth 3
                                        #         Child Loop BB5_85 Depth 4
	movl	40(%r14), %edx
	movl	8(%rsi), %ecx
	cmpl	(%rsi), %ecx
	je	.LBB5_52
# BB#41:                                # %lor.lhs.false.120
                                        #   in Loop: Header=BB5_40 Depth=1
	movq	%rbx, %rax
	movl	12(%rsi), %ecx
	cmpl	4(%rsi), %ecx
	jne	.LBB5_43
# BB#42:                                #   in Loop: Header=BB5_40 Depth=1
	movq	%rax, %rbx
	jmp	.LBB5_52
	.align	16, 0x90
.LBB5_43:                               # %if.end.128
                                        #   in Loop: Header=BB5_40 Depth=1
	movq	24(%rsi), %rcx
	imulq	$56, %rdx, %rdx
	movl	20(%rcx,%rdx), %ebx
	imull	16(%rcx,%rdx), %ebx
	movl	%ebx, 72(%rsp)          # 4-byte Spill
	testl	%ebx, %ebx
	movq	%rax, %rbx
	je	.LBB5_52
# BB#44:                                # %for.body.137.lr.ph
                                        #   in Loop: Header=BB5_40 Depth=1
	movq	%rbp, %r13
	movl	%edi, 4(%rsp)           # 4-byte Spill
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%r15, 88(%rsp)          # 8-byte Spill
	movq	24(%rcx,%rdx), %r15
	leaq	40(%rcx,%rdx), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leaq	48(%rcx,%rdx), %r12
	movq	%r12, 32(%rsp)          # 8-byte Spill
	movl	$0, 80(%rsp)            # 4-byte Folded Spill
.LBB5_45:                               # %for.body.137
                                        #   Parent Loop BB5_40 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_57 Depth 3
                                        #       Child Loop BB5_67 Depth 3
                                        #       Child Loop BB5_84 Depth 3
                                        #         Child Loop BB5_85 Depth 4
	cmpl	$0, 52(%r15)
	je	.LBB5_46
# BB#47:                                # %if.else.144
                                        #   in Loop: Header=BB5_45 Depth=2
	movl	$1, %esi
	movq	%r13, %rdi
	callq	opj_bio_read
	jmp	.LBB5_48
.LBB5_46:                               # %if.then.140
                                        #   in Loop: Header=BB5_45 Depth=2
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rsi
	movl	44(%r14), %ecx
	incl	%ecx
	movq	%r13, %rdi
	movl	80(%rsp), %edx          # 4-byte Reload
	callq	opj_tgt_decode
.LBB5_48:                               # %if.end.146
                                        #   in Loop: Header=BB5_45 Depth=2
	testl	%eax, %eax
	je	.LBB5_49
# BB#56:                                # %if.end.150
                                        #   in Loop: Header=BB5_45 Depth=2
	movl	$-1, %ebx
	cmpl	$0, 52(%r15)
	movl	80(%rsp), %ebp          # 4-byte Reload
	jne	.LBB5_59
	.align	16, 0x90
.LBB5_57:                               # %while.cond
                                        #   Parent Loop BB5_40 Depth=1
                                        #     Parent Loop BB5_45 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r12), %rsi
	incl	%ebx
	movq	%r13, %rdi
	movl	%ebp, %edx
	movl	%ebx, %ecx
	callq	opj_tgt_decode
	testl	%eax, %eax
	je	.LBB5_57
# BB#58:                                # %while.end
                                        #   in Loop: Header=BB5_45 Depth=2
	movl	$1, %eax
	subl	%ebx, %eax
	movq	16(%rsp), %rcx          # 8-byte Reload
	addl	36(%rcx), %eax
	movl	%eax, 32(%r15)
	movl	$3, 36(%r15)
.LBB5_59:                               # %if.end.161
                                        #   in Loop: Header=BB5_45 Depth=2
	movl	$1, %ebx
	movl	$1, %esi
	movq	%r13, %rdi
	callq	opj_bio_read
	testl	%eax, %eax
	movq	%r13, %rbp
	je	.LBB5_66
# BB#60:                                # %if.end.i
                                        #   in Loop: Header=BB5_45 Depth=2
	movl	$1, %esi
	movq	%rbp, %rdi
	callq	opj_bio_read
	movl	$2, %ebx
	testl	%eax, %eax
	je	.LBB5_66
# BB#61:                                # %if.end.4.i
                                        #   in Loop: Header=BB5_45 Depth=2
	movl	$2, %esi
	movq	%rbp, %rdi
	callq	opj_bio_read
	movl	%eax, %ebx
	cmpl	$3, %ebx
	jne	.LBB5_62
# BB#63:                                # %if.end.7.i
                                        #   in Loop: Header=BB5_45 Depth=2
	movl	$5, %esi
	movq	%rbp, %rdi
	callq	opj_bio_read
	movl	%eax, %ebx
	cmpl	$31, %ebx
	jne	.LBB5_64
# BB#65:                                # %if.end.12.i
                                        #   in Loop: Header=BB5_45 Depth=2
	movl	$7, %esi
	movq	%rbp, %rdi
	callq	opj_bio_read
	movl	%eax, %ebx
	addl	$37, %ebx
	jmp	.LBB5_66
.LBB5_49:                               # %if.then.148
                                        #   in Loop: Header=BB5_45 Depth=2
	movl	$0, 48(%r15)
	movq	%r13, %rbp
	jmp	.LBB5_50
.LBB5_62:                               # %if.then.6.i
                                        #   in Loop: Header=BB5_45 Depth=2
	addl	$3, %ebx
	jmp	.LBB5_66
.LBB5_64:                               # %if.then.10.i
                                        #   in Loop: Header=BB5_45 Depth=2
	addl	$6, %ebx
	.align	16, 0x90
.LBB5_66:                               # %opj_t2_getnumpasses.exit
                                        #   in Loop: Header=BB5_45 Depth=2
	movl	%ebx, 48(%r15)
	movl	$-1, %ebx
	.align	16, 0x90
.LBB5_67:                               # %while.cond.i
                                        #   Parent Loop BB5_40 Depth=1
                                        #     Parent Loop BB5_45 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$1, %esi
	movq	%rbp, %rdi
	callq	opj_bio_read
	incl	%ebx
	testl	%eax, %eax
	jne	.LBB5_67
# BB#68:                                # %opj_t2_getcommacode.exit
                                        #   in Loop: Header=BB5_45 Depth=2
	addl	%ebx, 36(%r15)
	movl	52(%r15), %ebx
	testl	%ebx, %ebx
	je	.LBB5_69
# BB#78:                                # %if.else.177
                                        #   in Loop: Header=BB5_45 Depth=2
	leal	-1(%rbx), %r13d
	movq	8(%r15), %rax
	leaq	(%r13,%r13,4), %rcx
	movl	12(%rax,%rcx,8), %edx
	cmpl	24(%rax,%rcx,8), %edx
	jne	.LBB5_83
# BB#79:                                # %if.then.187
                                        #   in Loop: Header=BB5_45 Depth=2
	movl	32(%r14), %eax
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	5584(%rcx), %rcx
	imulq	$1080, %rax, %rax       # imm = 0x438
	movl	16(%rcx,%rax), %edx
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	opj_t2_init_seg
	testl	%eax, %eax
	movl	%ebx, %r13d
	jne	.LBB5_83
	jmp	.LBB5_80
.LBB5_69:                               # %if.then.169
                                        #   in Loop: Header=BB5_45 Depth=2
	movl	32(%r14), %eax
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	5584(%rcx), %rcx
	imulq	$1080, %rax, %rax       # imm = 0x438
	movl	16(%rcx,%rax), %ebx
	cmpl	$0, 60(%r15)
	je	.LBB5_71
# BB#70:                                # %entry.if.end.14_crit_edge.i
                                        #   in Loop: Header=BB5_45 Depth=2
	movq	8(%r15), %r13
	jmp	.LBB5_73
.LBB5_71:                               # %if.then.i
                                        #   in Loop: Header=BB5_45 Depth=2
	movl	$10, 60(%r15)
	movq	8(%r15), %rdi
	movl	$400, %esi              # imm = 0x190
	callq	realloc
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB5_77
# BB#72:                                # %if.end.i.8
                                        #   in Loop: Header=BB5_45 Depth=2
	movq	%r13, 8(%r15)
.LBB5_73:                               # %if.end.14.i
                                        #   in Loop: Header=BB5_45 Depth=2
	xorl	%esi, %esi
	movl	$40, %edx
	movq	%r13, %rdi
	callq	memset
	testb	$4, %bl
	jne	.LBB5_74
# BB#75:                                # %if.else.i
                                        #   in Loop: Header=BB5_45 Depth=2
	testb	$1, %bl
	jne	.LBB5_76
# BB#81:                                # %if.else.36.i
                                        #   in Loop: Header=BB5_45 Depth=2
	movl	$109, 24(%r13)
	jmp	.LBB5_82
.LBB5_74:                               # %if.then.18.i
                                        #   in Loop: Header=BB5_45 Depth=2
	movl	$1, 24(%r13)
	jmp	.LBB5_82
.LBB5_76:                               # %if.then.21.i
                                        #   in Loop: Header=BB5_45 Depth=2
	movl	$10, 24(%r13)
.LBB5_82:                               # %if.end.199
                                        #   in Loop: Header=BB5_45 Depth=2
	xorl	%r13d, %r13d
.LBB5_83:                               # %if.end.199
                                        #   in Loop: Header=BB5_45 Depth=2
	movl	48(%r15), %ebx
	.align	16, 0x90
.LBB5_84:                               # %do.body
                                        #   Parent Loop BB5_40 Depth=1
                                        #     Parent Loop BB5_45 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_85 Depth 4
	movq	%r14, %r12
	movl	%r13d, %r13d
	movq	8(%r15), %rcx
	leaq	(%r13,%r13,4), %r14
	movl	24(%rcx,%r14,8), %eax
	subl	12(%rcx,%r14,8), %eax
	cmpl	%ebx, %eax
	cmovgl	%ebx, %eax
	movl	%eax, 28(%rcx,%r14,8)
	movl	36(%r15), %ecx
	xorl	%esi, %esi
	cmpl	$2, %eax
	jb	.LBB5_86
	.align	16, 0x90
.LBB5_85:                               # %for.body.i
                                        #   Parent Loop BB5_40 Depth=1
                                        #     Parent Loop BB5_45 Depth=2
                                        #       Parent Loop BB5_84 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%eax, %edx
	shrl	%edx
	incl	%esi
	cmpl	$3, %eax
	movl	%edx, %eax
	ja	.LBB5_85
.LBB5_86:                               # %opj_uint_floorlog2.exit
                                        #   in Loop: Header=BB5_84 Depth=3
	addl	%ecx, %esi
	movq	%rbp, %rdi
	callq	opj_bio_read
	movq	8(%r15), %rcx
	movl	%eax, 32(%rcx,%r14,8)
	movq	96(%rsp), %rdx          # 8-byte Reload
	cmpl	(%rdx), %eax
	ja	.LBB5_80
# BB#87:                                # %if.end.233
                                        #   in Loop: Header=BB5_84 Depth=3
	subl	28(%rcx,%r14,8), %ebx
	testl	%ebx, %ebx
	movq	%r12, %r14
	jle	.LBB5_50
# BB#88:                                # %if.then.241
                                        #   in Loop: Header=BB5_84 Depth=3
	incl	%r13d
	movl	32(%r14), %eax
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	5584(%rcx), %rcx
	imulq	$1080, %rax, %rax       # imm = 0x438
	movl	16(%rcx,%rax), %edx
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	movl	%r13d, %esi
	callq	opj_t2_init_seg
	testl	%eax, %eax
	jne	.LBB5_84
	jmp	.LBB5_80
	.align	16, 0x90
.LBB5_50:                               # %for.inc.259
                                        #   in Loop: Header=BB5_45 Depth=2
	movq	%rbp, %r13
	addq	$64, %r15
	movl	80(%rsp), %eax          # 4-byte Reload
	incl	%eax
	movl	%eax, 80(%rsp)          # 4-byte Spill
	cmpl	72(%rsp), %eax          # 4-byte Folded Reload
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	40(%rsp), %rbx          # 8-byte Reload
	movq	32(%rsp), %r12          # 8-byte Reload
	jb	.LBB5_45
# BB#51:                                # %for.cond.134.for.inc.266.loopexit_crit_edge
                                        #   in Loop: Header=BB5_40 Depth=1
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	(%rax), %r8d
	movq	88(%rsp), %r15          # 8-byte Reload
	movl	$4294967295, %r12d      # imm = 0xFFFFFFFF
	movq	16(%rsp), %rsi          # 8-byte Reload
	movl	4(%rsp), %edi           # 4-byte Reload
	movq	%r13, %rbp
	movq	%rcx, %r13
	.align	16, 0x90
.LBB5_52:                               # %for.inc.266
                                        #   in Loop: Header=BB5_40 Depth=1
	addq	$48, %rsi
	incl	%edi
	cmpl	%r8d, %edi
	jb	.LBB5_40
.LBB5_53:                               # %for.end.268
	movq	%rbp, %rdi
	callq	opj_bio_inalign
	testl	%eax, %eax
	je	.LBB5_80
# BB#54:                                # %if.end.272
	movq	%rbp, %rdi
	callq	opj_bio_numbytes
	addq	%rax, %rbx
	movq	%rbp, %rdi
	callq	opj_bio_destroy
	testb	$4, (%r15)
	je	.LBB5_55
# BB#89:                                # %if.then.278
	movl	184(%rsp), %eax
	cmpl	$1, %eax
	ja	.LBB5_91
# BB#90:                                # %if.then.281
	movq	stderr(%rip), %rdi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB5_55:
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	176(%rsp), %rsi
	jmp	.LBB5_94
.LBB5_29:                               # %if.then.55
	movq	%rbp, %rdi
	callq	opj_bio_inalign
	movq	%rbp, %rdi
	callq	opj_bio_numbytes
	addq	%rax, %rbx
	movq	%rbp, %rdi
	callq	opj_bio_destroy
	testb	$4, (%r15)
	je	.LBB5_37
# BB#30:                                # %if.then.62
	movl	184(%rsp), %eax
	cmpl	$1, %eax
	ja	.LBB5_33
# BB#31:                                # %if.then.65
	movq	stderr(%rip), %rdi
	movl	$.L.str.2, %esi
	jmp	.LBB5_32
.LBB5_33:                               # %if.else.67
	movzbl	(%rbx), %eax
	cmpl	$255, %eax
	jne	.LBB5_35
# BB#34:                                # %lor.lhs.false.71
	movzbl	1(%rbx), %eax
	cmpl	$146, %eax
	jne	.LBB5_35
# BB#36:                                # %if.else.78
	addq	$2, %rbx
	jmp	.LBB5_37
.LBB5_35:                               # %if.then.76
	movq	stderr(%rip), %rdi
	movl	$.L.str.3, %esi
.LBB5_32:                               # %if.end.82
	xorl	%eax, %eax
	callq	fprintf
.LBB5_37:                               # %if.end.82
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	176(%rsp), %rsi
	movq	(%r13), %rax
	subq	%rax, %rbx
	movq	96(%rsp), %rdx          # 8-byte Reload
	subl	%ebx, (%rdx)
	andq	%r12, %rbx
	addq	%rax, %rbx
	movq	%rbx, (%r13)
	movl	$0, (%rcx)
	jmp	.LBB5_95
.LBB5_91:                               # %if.else.283
	movzbl	(%rbx), %eax
	cmpl	$255, %eax
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	176(%rsp), %rsi
	jne	.LBB5_94
# BB#92:                                # %lor.lhs.false.287
	movzbl	1(%rbx), %eax
	cmpl	$146, %eax
	jne	.LBB5_94
# BB#93:
	addq	$2, %rbx
.LBB5_94:                               # %if.end.297
	movq	(%r13), %rax
	subq	%rax, %rbx
	movq	96(%rsp), %rdx          # 8-byte Reload
	subl	%ebx, (%rdx)
	andq	%r12, %rbx
	addq	%rax, %rbx
	movq	%rbx, (%r13)
	movl	$1, (%rcx)
.LBB5_95:                               # %cleanup.318
	movl	104(%rsp), %eax
	movq	64(%rsp), %rcx          # 8-byte Reload
	subl	%ecx, %eax
	movl	%eax, (%rsi)
	movl	$1, %eax
	jmp	.LBB5_96
.LBB5_77:                               # %if.then.175
	movq	8(%r15), %rdi
	callq	free
	movq	$0, 8(%r15)
	movl	$0, 60(%r15)
.LBB5_80:                               # %if.then.196
	movq	%rbp, %rdi
	callq	opj_bio_destroy
	xorl	%eax, %eax
.LBB5_96:                               # %cleanup.318
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	opj_t2_read_packet_header, .Lfunc_end5-opj_t2_read_packet_header
	.cfi_endproc

	.align	16, 0x90
	.type	opj_t2_init_seg,@function
opj_t2_init_seg:                        # @opj_t2_init_seg
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp59:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp60:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp61:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 48
.Ltmp63:
	.cfi_offset %rbx, -48
.Ltmp64:
	.cfi_offset %r12, -40
.Ltmp65:
	.cfi_offset %r14, -32
.Ltmp66:
	.cfi_offset %r15, -24
.Ltmp67:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	leal	1(%rbp), %ecx
	movl	60(%rbx), %eax
	cmpl	%eax, %ecx
	jbe	.LBB6_1
# BB#2:                                 # %if.then
	addl	$10, %eax
	movl	%eax, 60(%rbx)
	shlq	$3, %rax
	leaq	(%rax,%rax,4), %rsi
	movq	8(%rbx), %rdi
	callq	realloc
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB6_3
# BB#4:                                 # %if.end
	movq	%r12, 8(%rbx)
	jmp	.LBB6_5
.LBB6_1:                                # %entry.if.end.14_crit_edge
	movq	8(%rbx), %r12
.LBB6_5:                                # %if.end.14
	movl	%ebp, %eax
	leaq	(%rax,%rax,4), %rbp
	leaq	(%r12,%rbp,8), %rbx
	xorl	%esi, %esi
	movl	$40, %edx
	movq	%rbx, %rdi
	callq	memset
	testb	$4, %r15b
	jne	.LBB6_6
# BB#7:                                 # %if.else
	testb	$1, %r15b
	jne	.LBB6_8
# BB#11:                                # %if.else.36
	movl	$109, 24(%r12,%rbp,8)
	jmp	.LBB6_12
.LBB6_6:                                # %if.then.18
	movl	$1, 24(%r12,%rbp,8)
	jmp	.LBB6_12
.LBB6_8:                                # %if.then.21
	testl	%r14d, %r14d
	je	.LBB6_10
# BB#9:                                 # %if.then.23
	movl	$10, 24(%r12,%rbp,8)
	jmp	.LBB6_12
.LBB6_3:                                # %if.then.9
	movq	8(%rbx), %rdi
	callq	free
	movq	$0, 8(%rbx)
	movl	$0, 60(%rbx)
	xorl	%eax, %eax
	jmp	.LBB6_13
.LBB6_10:                               # %if.else.25
	movl	-16(%rbx), %eax
	cmpl	$10, %eax
	sete	%cl
	movzbl	%cl, %ecx
	incl	%ecx
	cmpl	$1, %eax
	movl	$2, %eax
	cmovnel	%ecx, %eax
	movl	%eax, 24(%r12,%rbp,8)
.LBB6_12:                               # %cleanup.40
	movl	$1, %eax
.LBB6_13:                               # %cleanup.40
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	opj_t2_init_seg, .Lfunc_end6-opj_t2_init_seg
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Not enough space for expected SOP marker\n"
	.size	.L.str, 42

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Expected SOP marker\n"
	.size	.L.str.1, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Not enough space for expected EPH marker\n"
	.size	.L.str.2, 42

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Error : expected EPH marker\n"
	.size	.L.str.3, 29


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
