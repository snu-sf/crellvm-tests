	.text
	.file	"t1.bc"
	.globl	opj_t1_allocate_buffers
	.align	16, 0x90
	.type	opj_t1_allocate_buffers,@function
opj_t1_allocate_buffers:                # @opj_t1_allocate_buffers
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
	pushq	%rax
.Ltmp6:
	.cfi_def_cfa_offset 64
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
	movl	%edx, %r14d
	movl	%esi, %r15d
	movq	%rdi, %r13
	movl	%r14d, %ebx
	imull	%r15d, %ebx
	cmpl	40(%r13), %ebx
	movq	16(%r13), %rdi
	jbe	.LBB0_1
# BB#2:                                 # %if.then
	callq	free
	movl	%ebx, %ebp
	shlq	$2, %rbp
	movq	%rbp, %rdi
	callq	malloc
	movq	%rax, %rdi
	movq	%rdi, 16(%r13)
	xorl	%r12d, %r12d
	testq	%rdi, %rdi
	je	.LBB0_9
# BB#3:                                 # %if.end
	movl	%ebx, 40(%r13)
	jmp	.LBB0_4
.LBB0_1:                                # %entry.if.end.7_crit_edge
	movl	%ebx, %ebp
	shlq	$2, %rbp
.LBB0_4:                                # %if.end.7
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	movq	%rbp, %rdx
	callq	memset
	leal	2(%r15), %eax
	movl	%eax, 48(%r13)
	leal	2(%r14), %ebx
	imull	%eax, %ebx
	cmpl	44(%r13), %ebx
	movq	24(%r13), %rdi
	jbe	.LBB0_5
# BB#6:                                 # %if.then.18
	callq	free
	movl	%ebx, %ebp
	addq	%rbp, %rbp
	movq	%rbp, %rdi
	callq	malloc
	movq	%rax, %rdi
	movq	%rdi, 24(%r13)
	testq	%rdi, %rdi
	je	.LBB0_9
# BB#7:                                 # %if.end.26
	movl	%ebx, 44(%r13)
	jmp	.LBB0_8
.LBB0_5:                                # %if.end.7.if.end.28_crit_edge
	movl	%ebx, %ebp
	addq	%rbp, %rbp
.LBB0_8:                                # %if.end.28
	xorl	%esi, %esi
	movq	%rbp, %rdx
	callq	memset
	movl	%r15d, 32(%r13)
	movl	%r14d, 36(%r13)
	movl	$1, %r12d
.LBB0_9:                                # %cleanup
	movl	%r12d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	opj_t1_allocate_buffers, .Lfunc_end0-opj_t1_allocate_buffers
	.cfi_endproc

	.globl	opj_t1_create
	.align	16, 0x90
	.type	opj_t1_create,@function
opj_t1_create:                          # @opj_t1_create
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbx, -16
	movl	$56, %edi
	callq	malloc
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB1_4
# BB#1:                                 # %if.end
	xorl	%esi, %esi
	movl	$56, %edx
	movq	%rbx, %rdi
	callq	memset
	callq	opj_mqc_create
	movq	%rax, (%rbx)
	testq	%rax, %rax
	je	.LBB1_3
# BB#2:                                 # %if.end.6
	callq	opj_raw_create
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	movq	%rbx, %rax
	jne	.LBB1_4
.LBB1_3:                                # %if.then.10
	movq	%rbx, %rdi
	callq	opj_t1_destroy
	xorl	%eax, %eax
.LBB1_4:                                # %cleanup
	popq	%rbx
	retq
.Lfunc_end1:
	.size	opj_t1_create, .Lfunc_end1-opj_t1_create
	.cfi_endproc

	.globl	opj_t1_destroy
	.align	16, 0x90
	.type	opj_t1_destroy,@function
opj_t1_destroy:                         # @opj_t1_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB2_6
# BB#1:                                 # %if.end
	movq	(%rbx), %rdi
	callq	opj_mqc_destroy
	movq	$0, (%rbx)
	movq	8(%rbx), %rdi
	callq	opj_raw_destroy
	movq	$0, 8(%rbx)
	movq	16(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB2_3
# BB#2:                                 # %if.then.4
	callq	free
	movq	$0, 16(%rbx)
.LBB2_3:                                # %if.end.7
	movq	24(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB2_5
# BB#4:                                 # %if.then.9
	callq	free
	movq	$0, 24(%rbx)
.LBB2_5:                                # %if.end.12
	movq	%rbx, %rdi
	popq	%rbx
	jmp	free                    # TAILCALL
.LBB2_6:                                # %return
	popq	%rbx
	retq
.Lfunc_end2:
	.size	opj_t1_destroy, .Lfunc_end2-opj_t1_destroy
	.cfi_endproc

	.globl	opj_t1_decode_cblks
	.align	16, 0x90
	.type	opj_t1_decode_cblks,@function
opj_t1_decode_cblks:                    # @opj_t1_decode_cblks
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp18:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp20:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp21:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 56
	subq	$456, %rsp              # imm = 0x1C8
.Ltmp23:
	.cfi_def_cfa_offset 512
.Ltmp24:
	.cfi_offset %rbx, -56
.Ltmp25:
	.cfi_offset %r12, -48
.Ltmp26:
	.cfi_offset %r13, -40
.Ltmp27:
	.cfi_offset %r14, -32
.Ltmp28:
	.cfi_offset %r15, -24
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rdx, 248(%rsp)         # 8-byte Spill
	movl	20(%rsi), %ecx
	movl	$1, %eax
	testl	%ecx, %ecx
	je	.LBB3_258
# BB#1:                                 # %for.body.lr.ph
	movq	%rsi, 136(%rsp)         # 8-byte Spill
	movl	8(%rsi), %eax
	subl	(%rsi), %eax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	leaq	(,%rax,4), %rax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	xorl	%esi, %esi
.LBB3_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_4 Depth 2
                                        #       Child Loop BB3_6 Depth 3
                                        #         Child Loop BB3_8 Depth 4
                                        #           Child Loop BB3_12 Depth 5
                                        #             Child Loop BB3_19 Depth 6
                                        #               Child Loop BB3_47 Depth 7
                                        #                 Child Loop BB3_50 Depth 8
                                        #                   Child Loop BB3_51 Depth 9
                                        #               Child Loop BB3_69 Depth 7
                                        #                 Child Loop BB3_70 Depth 8
                                        #               Child Loop BB3_66 Depth 7
                                        #                 Child Loop BB3_97 Depth 8
                                        #               Child Loop BB3_25 Depth 7
                                        #                 Child Loop BB3_28 Depth 8
                                        #                   Child Loop BB3_29 Depth 9
                                        #               Child Loop BB3_121 Depth 7
                                        #                 Child Loop BB3_124 Depth 8
                                        #                   Child Loop BB3_125 Depth 9
                                        #               Child Loop BB3_133 Depth 7
                                        #                 Child Loop BB3_134 Depth 8
                                        #               Child Loop BB3_147 Depth 7
                                        #                 Child Loop BB3_149 Depth 8
                                        #               Child Loop BB3_107 Depth 7
                                        #                 Child Loop BB3_110 Depth 8
                                        #                   Child Loop BB3_111 Depth 9
                                        #               Child Loop BB3_156 Depth 7
                                        #                 Child Loop BB3_159 Depth 8
                                        #                   Child Loop BB3_174 Depth 9
                                        #               Child Loop BB3_202 Depth 7
                                        #                 Child Loop BB3_205 Depth 8
                                        #                   Child Loop BB3_212 Depth 9
                                        #               Child Loop BB3_197 Depth 7
                                        #                 Child Loop BB3_199 Depth 8
                                        #           Child Loop BB3_225 Depth 5
                                        #             Child Loop BB3_226 Depth 6
                                        #           Child Loop BB3_242 Depth 5
                                        #             Child Loop BB3_244 Depth 6
                                        #             Child Loop BB3_248 Depth 6
                                        #           Child Loop BB3_233 Depth 5
                                        #             Child Loop BB3_238 Depth 6
	movl	%esi, %esi
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rbp
	imulq	$176, %rsi, %rbx
	movl	24(%rbp,%rbx), %edx
	testl	%edx, %edx
	je	.LBB3_257
# BB#3:                                 # %for.body.3.lr.ph
                                        #   in Loop: Header=BB3_2 Depth=1
	leaq	24(%rbp,%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leaq	16(%rbp,%rbx), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	20(%rbp,%rbx), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leal	-1(%rsi), %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	%rsi, (%rsp)            # 8-byte Spill
	movl	16(%rbp,%rbx), %r8d
	movl	20(%rbp,%rbx), %r9d
	xorl	%eax, %eax
	movq	%rdi, 392(%rsp)         # 8-byte Spill
.LBB3_4:                                # %for.body.3
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_6 Depth 3
                                        #         Child Loop BB3_8 Depth 4
                                        #           Child Loop BB3_12 Depth 5
                                        #             Child Loop BB3_19 Depth 6
                                        #               Child Loop BB3_47 Depth 7
                                        #                 Child Loop BB3_50 Depth 8
                                        #                   Child Loop BB3_51 Depth 9
                                        #               Child Loop BB3_69 Depth 7
                                        #                 Child Loop BB3_70 Depth 8
                                        #               Child Loop BB3_66 Depth 7
                                        #                 Child Loop BB3_97 Depth 8
                                        #               Child Loop BB3_25 Depth 7
                                        #                 Child Loop BB3_28 Depth 8
                                        #                   Child Loop BB3_29 Depth 9
                                        #               Child Loop BB3_121 Depth 7
                                        #                 Child Loop BB3_124 Depth 8
                                        #                   Child Loop BB3_125 Depth 9
                                        #               Child Loop BB3_133 Depth 7
                                        #                 Child Loop BB3_134 Depth 8
                                        #               Child Loop BB3_147 Depth 7
                                        #                 Child Loop BB3_149 Depth 8
                                        #               Child Loop BB3_107 Depth 7
                                        #                 Child Loop BB3_110 Depth 8
                                        #                   Child Loop BB3_111 Depth 9
                                        #               Child Loop BB3_156 Depth 7
                                        #                 Child Loop BB3_159 Depth 8
                                        #                   Child Loop BB3_174 Depth 9
                                        #               Child Loop BB3_202 Depth 7
                                        #                 Child Loop BB3_205 Depth 8
                                        #                   Child Loop BB3_212 Depth 9
                                        #               Child Loop BB3_197 Depth 7
                                        #                 Child Loop BB3_199 Depth 8
                                        #           Child Loop BB3_225 Depth 5
                                        #             Child Loop BB3_226 Depth 6
                                        #           Child Loop BB3_242 Depth 5
                                        #             Child Loop BB3_244 Depth 6
                                        #             Child Loop BB3_248 Depth 6
                                        #           Child Loop BB3_233 Depth 5
                                        #             Child Loop BB3_238 Depth 6
	movl	%eax, %eax
	movl	%r9d, %esi
	imull	%r8d, %esi
	testl	%esi, %esi
	je	.LBB3_255
# BB#5:                                 # %for.body.8.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=2
	leaq	(%rbp,%rbx), %rdx
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	leaq	(%rax,%rax,2), %rsi
	shlq	$4, %rsi
	leaq	56(%rsi,%rdx), %r10
	movq	%r10, 40(%rsp)          # 8-byte Spill
	leaq	32(%rsi,%rdx), %rbp
	movq	%rbp, 88(%rsp)          # 8-byte Spill
	leaq	48(%rsi,%rdx), %rbp
	movq	%rbp, 128(%rsp)         # 8-byte Spill
	leaq	36(%rsi,%rdx), %rbp
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	leaq	72(%rsi,%rdx), %rdx
	movq	%rdx, 152(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
.LBB3_6:                                # %for.body.8
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_8 Depth 4
                                        #           Child Loop BB3_12 Depth 5
                                        #             Child Loop BB3_19 Depth 6
                                        #               Child Loop BB3_47 Depth 7
                                        #                 Child Loop BB3_50 Depth 8
                                        #                   Child Loop BB3_51 Depth 9
                                        #               Child Loop BB3_69 Depth 7
                                        #                 Child Loop BB3_70 Depth 8
                                        #               Child Loop BB3_66 Depth 7
                                        #                 Child Loop BB3_97 Depth 8
                                        #               Child Loop BB3_25 Depth 7
                                        #                 Child Loop BB3_28 Depth 8
                                        #                   Child Loop BB3_29 Depth 9
                                        #               Child Loop BB3_121 Depth 7
                                        #                 Child Loop BB3_124 Depth 8
                                        #                   Child Loop BB3_125 Depth 9
                                        #               Child Loop BB3_133 Depth 7
                                        #                 Child Loop BB3_134 Depth 8
                                        #               Child Loop BB3_147 Depth 7
                                        #                 Child Loop BB3_149 Depth 8
                                        #               Child Loop BB3_107 Depth 7
                                        #                 Child Loop BB3_110 Depth 8
                                        #                   Child Loop BB3_111 Depth 9
                                        #               Child Loop BB3_156 Depth 7
                                        #                 Child Loop BB3_159 Depth 8
                                        #                   Child Loop BB3_174 Depth 9
                                        #               Child Loop BB3_202 Depth 7
                                        #                 Child Loop BB3_205 Depth 8
                                        #                   Child Loop BB3_212 Depth 9
                                        #               Child Loop BB3_197 Depth 7
                                        #                 Child Loop BB3_199 Depth 8
                                        #           Child Loop BB3_225 Depth 5
                                        #             Child Loop BB3_226 Depth 6
                                        #           Child Loop BB3_242 Depth 5
                                        #             Child Loop BB3_244 Depth 6
                                        #             Child Loop BB3_248 Depth 6
                                        #           Child Loop BB3_233 Depth 5
                                        #             Child Loop BB3_238 Depth 6
	movl	%ecx, %ecx
	movq	(%r10), %rdx
	imulq	$56, %rcx, %rsi
	movl	20(%rdx,%rsi), %ebp
	imull	16(%rdx,%rsi), %ebp
	testl	%ebp, %ebp
	je	.LBB3_253
# BB#7:                                 # %for.body.14.lr.ph
                                        #   in Loop: Header=BB3_6 Depth=3
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	leaq	16(%rdx,%rsi), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	leaq	20(%rdx,%rsi), %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	leaq	24(%rdx,%rsi), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	xorl	%ebx, %ebx
.LBB3_8:                                # %for.body.14
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB3_12 Depth 5
                                        #             Child Loop BB3_19 Depth 6
                                        #               Child Loop BB3_47 Depth 7
                                        #                 Child Loop BB3_50 Depth 8
                                        #                   Child Loop BB3_51 Depth 9
                                        #               Child Loop BB3_69 Depth 7
                                        #                 Child Loop BB3_70 Depth 8
                                        #               Child Loop BB3_66 Depth 7
                                        #                 Child Loop BB3_97 Depth 8
                                        #               Child Loop BB3_25 Depth 7
                                        #                 Child Loop BB3_28 Depth 8
                                        #                   Child Loop BB3_29 Depth 9
                                        #               Child Loop BB3_121 Depth 7
                                        #                 Child Loop BB3_124 Depth 8
                                        #                   Child Loop BB3_125 Depth 9
                                        #               Child Loop BB3_133 Depth 7
                                        #                 Child Loop BB3_134 Depth 8
                                        #               Child Loop BB3_147 Depth 7
                                        #                 Child Loop BB3_149 Depth 8
                                        #               Child Loop BB3_107 Depth 7
                                        #                 Child Loop BB3_110 Depth 8
                                        #                   Child Loop BB3_111 Depth 9
                                        #               Child Loop BB3_156 Depth 7
                                        #                 Child Loop BB3_159 Depth 8
                                        #                   Child Loop BB3_174 Depth 9
                                        #               Child Loop BB3_202 Depth 7
                                        #                 Child Loop BB3_205 Depth 8
                                        #                   Child Loop BB3_212 Depth 9
                                        #               Child Loop BB3_197 Depth 7
                                        #                 Child Loop BB3_199 Depth 8
                                        #           Child Loop BB3_225 Depth 5
                                        #             Child Loop BB3_226 Depth 6
                                        #           Child Loop BB3_242 Depth 5
                                        #             Child Loop BB3_244 Depth 6
                                        #             Child Loop BB3_248 Depth 6
                                        #           Child Loop BB3_233 Depth 5
                                        #             Child Loop BB3_238 Depth 6
	movl	%ebx, %ebx
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rbp
	movq	128(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %r14d
	movq	248(%rsp), %rax         # 8-byte Reload
	movl	808(%rax), %ecx
	movq	%rcx, 448(%rsp)         # 8-byte Spill
	movl	16(%rax), %eax
	movl	%eax, 236(%rsp)         # 4-byte Spill
	movq	(%rdi), %r13
	movq	8(%rdi), %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	movq	%rbx, %r15
	shlq	$6, %r15
	movl	24(%rbp,%r15), %esi
	movl	28(%rbp,%r15), %edx
	subl	16(%rbp,%r15), %esi
	subl	20(%rbp,%r15), %edx
	movq	%rdi, %r12
	callq	opj_t1_allocate_buffers
	testl	%eax, %eax
	je	.LBB3_9
# BB#10:                                # %if.end.i
                                        #   in Loop: Header=BB3_8 Depth=4
	movl	%r14d, 364(%rsp)        # 4-byte Spill
	movq	%rbx, 120(%rsp)         # 8-byte Spill
	movq	%rbp, 144(%rsp)         # 8-byte Spill
	movl	32(%rbp,%r15), %r14d
	movq	%r13, %rdi
	callq	opj_mqc_resetstates
	movl	$18, %esi
	xorl	%edx, %edx
	movl	$46, %ecx
	movq	%r13, %rdi
	callq	opj_mqc_setstate
	movl	$17, %esi
	xorl	%edx, %edx
	movl	$3, %ecx
	movq	%r13, %rdi
	callq	opj_mqc_setstate
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$4, %ecx
	movq	%r13, %rdi
	movq	%r13, 288(%rsp)         # 8-byte Spill
	callq	opj_mqc_setstate
	movl	56(%rbp,%r15), %esi
	testl	%esi, %esi
	movq	%r12, %r8
	movq	%r15, %r12
	movq	%r12, 368(%rsp)         # 8-byte Spill
	je	.LBB3_190
# BB#11:                                # %for.body.lr.ph.i
                                        #   in Loop: Header=BB3_8 Depth=4
	movq	144(%rsp), %rax         # 8-byte Reload
	leaq	32(%rax,%r12), %rcx
	movq	%rcx, 216(%rsp)         # 8-byte Spill
	leaq	56(%rax,%r12), %rcx
	movq	%rcx, 184(%rsp)         # 8-byte Spill
	movq	448(%rsp), %rcx         # 8-byte Reload
	leal	-1(%rcx,%r14), %ebx
	leaq	8(%rax,%r12), %rax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	movl	236(%rsp), %eax         # 4-byte Reload
	movl	%eax, %ecx
	andl	$1, %ecx
	movl	%ecx, 204(%rsp)         # 4-byte Spill
	movl	%eax, %ecx
	andl	$2, %ecx
	movl	%ecx, 172(%rsp)         # 4-byte Spill
	movl	%eax, %ecx
	andl	$8, %ecx
	movl	%ecx, 380(%rsp)         # 4-byte Spill
	movl	364(%rsp), %ecx         # 4-byte Reload
	shll	$8, %ecx
	movl	%ecx, 376(%rsp)         # 4-byte Spill
	andl	$32, %eax
	movl	%eax, 236(%rsp)         # 4-byte Spill
	movl	$2, %r13d
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB3_12:                               # %for.body.i
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB3_19 Depth 6
                                        #               Child Loop BB3_47 Depth 7
                                        #                 Child Loop BB3_50 Depth 8
                                        #                   Child Loop BB3_51 Depth 9
                                        #               Child Loop BB3_69 Depth 7
                                        #                 Child Loop BB3_70 Depth 8
                                        #               Child Loop BB3_66 Depth 7
                                        #                 Child Loop BB3_97 Depth 8
                                        #               Child Loop BB3_25 Depth 7
                                        #                 Child Loop BB3_28 Depth 8
                                        #                   Child Loop BB3_29 Depth 9
                                        #               Child Loop BB3_121 Depth 7
                                        #                 Child Loop BB3_124 Depth 8
                                        #                   Child Loop BB3_125 Depth 9
                                        #               Child Loop BB3_133 Depth 7
                                        #                 Child Loop BB3_134 Depth 8
                                        #               Child Loop BB3_147 Depth 7
                                        #                 Child Loop BB3_149 Depth 8
                                        #               Child Loop BB3_107 Depth 7
                                        #                 Child Loop BB3_110 Depth 8
                                        #                   Child Loop BB3_111 Depth 9
                                        #               Child Loop BB3_156 Depth 7
                                        #                 Child Loop BB3_159 Depth 8
                                        #                   Child Loop BB3_174 Depth 9
                                        #               Child Loop BB3_202 Depth 7
                                        #                 Child Loop BB3_205 Depth 8
                                        #                   Child Loop BB3_212 Depth 9
                                        #               Child Loop BB3_197 Depth 7
                                        #                 Child Loop BB3_199 Depth 8
	cmpl	$0, 204(%rsp)           # 4-byte Folded Reload
	setne	%r9b
	movl	%ecx, %ecx
	movq	%rcx, 224(%rsp)         # 8-byte Spill
	movq	208(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %r15
	movq	216(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	addl	$-5, %eax
	cmpl	%eax, %ebx
	setle	%dl
	cmpl	$2, %r13d
	sbbb	%al, %al
	leaq	(%rcx,%rcx,4), %rbp
	movq	(%r15,%rbp,8), %rcx
	testq	%rcx, %rcx
	je	.LBB3_189
# BB#13:                                # %if.end.14.i
                                        #   in Loop: Header=BB3_12 Depth=5
	movq	%r8, %r14
	andb	%dl, %al
	andb	%al, %r9b
	movb	%r9b, 263(%rsp)         # 1-byte Spill
	movl	8(%r15,%rbp,8), %esi
	addq	(%rcx), %rsi
	movl	20(%r15,%rbp,8), %edx
	testb	%r9b, %r9b
	je	.LBB3_15
# BB#14:                                # %if.then.18.i
                                        #   in Loop: Header=BB3_12 Depth=5
	movq	160(%rsp), %rdi         # 8-byte Reload
	callq	opj_raw_init_dec
	jmp	.LBB3_16
	.align	16, 0x90
.LBB3_15:                               # %if.else.i
                                        #   in Loop: Header=BB3_12 Depth=5
	movq	288(%rsp), %rdi         # 8-byte Reload
	callq	opj_mqc_init_dec
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB3_258
.LBB3_16:                               # %for.cond.31.preheader.i
                                        #   in Loop: Header=BB3_12 Depth=5
	cmpl	$0, 16(%r15,%rbp,8)
	je	.LBB3_17
# BB#18:                                # %for.body.34.lr.ph.i
                                        #   in Loop: Header=BB3_12 Depth=5
	leaq	16(%r15,%rbp,8), %rax
	movq	%rax, 280(%rsp)         # 8-byte Spill
	cmpl	$0, 172(%rsp)           # 4-byte Folded Reload
	sete	%al
	orb	263(%rsp), %al          # 1-byte Folded Reload
	movb	%al, 279(%rsp)          # 1-byte Spill
	xorl	%ecx, %ecx
	movq	%r14, %r8
	movq	288(%rsp), %rbp         # 8-byte Reload
	.align	16, 0x90
.LBB3_19:                               # %for.body.34.i
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        #           Parent Loop BB3_12 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB3_47 Depth 7
                                        #                 Child Loop BB3_50 Depth 8
                                        #                   Child Loop BB3_51 Depth 9
                                        #               Child Loop BB3_69 Depth 7
                                        #                 Child Loop BB3_70 Depth 8
                                        #               Child Loop BB3_66 Depth 7
                                        #                 Child Loop BB3_97 Depth 8
                                        #               Child Loop BB3_25 Depth 7
                                        #                 Child Loop BB3_28 Depth 8
                                        #                   Child Loop BB3_29 Depth 9
                                        #               Child Loop BB3_121 Depth 7
                                        #                 Child Loop BB3_124 Depth 8
                                        #                   Child Loop BB3_125 Depth 9
                                        #               Child Loop BB3_133 Depth 7
                                        #                 Child Loop BB3_134 Depth 8
                                        #               Child Loop BB3_147 Depth 7
                                        #                 Child Loop BB3_149 Depth 8
                                        #               Child Loop BB3_107 Depth 7
                                        #                 Child Loop BB3_110 Depth 8
                                        #                   Child Loop BB3_111 Depth 9
                                        #               Child Loop BB3_156 Depth 7
                                        #                 Child Loop BB3_159 Depth 8
                                        #                   Child Loop BB3_174 Depth 9
                                        #               Child Loop BB3_202 Depth 7
                                        #                 Child Loop BB3_205 Depth 8
                                        #                   Child Loop BB3_212 Depth 9
                                        #               Child Loop BB3_197 Depth 7
                                        #                 Child Loop BB3_199 Depth 8
	cmpl	$2, %r13d
	je	.LBB3_153
# BB#20:                                # %for.body.34.i
                                        #   in Loop: Header=BB3_19 Depth=6
	movl	%ecx, 300(%rsp)         # 4-byte Spill
	cmpl	$1, %r13d
	jne	.LBB3_21
# BB#104:                               # %sw.bb.49.i
                                        #   in Loop: Header=BB3_19 Depth=6
	movl	%r13d, 296(%rsp)        # 4-byte Spill
	leal	1(%rbx), %ecx
	movb	263(%rsp), %al          # 1-byte Reload
	testb	%al, %al
	je	.LBB3_118
# BB#105:                               # %if.then.53.i
                                        #   in Loop: Header=BB3_19 Depth=6
	movl	$1, %eax
	shll	%cl, %eax
	sarl	%eax
	movl	%eax, 424(%rsp)         # 4-byte Spill
	movl	%eax, %ecx
	negl	%ecx
	testl	%ebx, %ebx
	movl	$-1, %eax
	cmovsl	%eax, %ecx
	movl	%ecx, 416(%rsp)         # 4-byte Spill
	movl	36(%r8), %ecx
	testl	%ecx, %ecx
	je	.LBB3_187
# BB#106:                               # %for.cond.2.preheader.lr.ph.i.i
                                        #   in Loop: Header=BB3_19 Depth=6
	movq	%rbx, 304(%rsp)         # 8-byte Spill
	movl	32(%r8), %eax
	xorl	%edi, %edi
	movl	%eax, %edx
	.align	16, 0x90
.LBB3_107:                              # %for.cond.2.preheader.i.i
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        #           Parent Loop BB3_12 Depth=5
                                        #             Parent Loop BB3_19 Depth=6
                                        # =>            This Loop Header: Depth=7
                                        #                 Child Loop BB3_110 Depth 8
                                        #                   Child Loop BB3_111 Depth 9
	movq	%rdi, 408(%rsp)         # 8-byte Spill
	leal	4(%rdi), %ebx
	testl	%edx, %edx
	je	.LBB3_108
# BB#109:                               # %for.cond.5.preheader.lr.ph.i.i
                                        #   in Loop: Header=BB3_107 Depth=7
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB3_110:                              # %for.cond.5.preheader.i.i
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        #           Parent Loop BB3_12 Depth=5
                                        #             Parent Loop BB3_19 Depth=6
                                        #               Parent Loop BB3_107 Depth=7
                                        # =>              This Loop Header: Depth=8
                                        #                   Child Loop BB3_111 Depth 9
	movq	%rcx, 440(%rsp)         # 8-byte Spill
	leal	1(%rcx), %edx
	movl	%edx, 432(%rsp)         # 4-byte Spill
	cmpl	$-4, %edi
	movl	%edi, %r12d
	je	.LBB3_115
	.align	16, 0x90
.LBB3_111:                              # %land.rhs.i.171.i
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        #           Parent Loop BB3_12 Depth=5
                                        #             Parent Loop BB3_19 Depth=6
                                        #               Parent Loop BB3_107 Depth=7
                                        #                 Parent Loop BB3_110 Depth=8
                                        # =>                This Inner Loop Header: Depth=9
	cmpl	36(%r8), %r12d
	jae	.LBB3_114
# BB#112:                               # %for.body.9.i.i
                                        #   in Loop: Header=BB3_111 Depth=9
	leal	1(%r12), %r15d
	movl	48(%r8), %r14d
	imull	%r15d, %r14d
	addl	%edx, %r14d
	movq	24(%r8), %r13
	imull	32(%r8), %r12d
	addl	%ecx, %r12d
	movzwl	(%r13,%r14,2), %eax
	andl	$20480, %eax            # imm = 0x5000
	cmpl	$4096, %eax             # imm = 0x1000
	jne	.LBB3_113
# BB#259:                               # %if.then.i.i.182.i
                                        #   in Loop: Header=BB3_111 Depth=9
	movq	16(%r8), %rax
	movq	%rax, 448(%rsp)         # 8-byte Spill
	movq	8(%r8), %rdi
	movq	%r8, %rbp
	callq	opj_raw_decode
	movq	%rbp, %r8
	testl	%eax, %eax
	movl	416(%rsp), %eax         # 4-byte Reload
	cmovnel	424(%rsp), %eax         # 4-byte Folded Reload
	movq	448(%rsp), %rdi         # 8-byte Reload
	movl	(%rdi,%r12,4), %ecx
	movl	%eax, %edx
	negl	%edx
	testl	%ecx, %ecx
	cmovnsl	%eax, %edx
	addl	%ecx, %edx
	movq	440(%rsp), %rcx         # 8-byte Reload
	movl	%edx, (%rdi,%r12,4)
	movl	432(%rsp), %edx         # 4-byte Reload
	orb	$32, 1(%r13,%r14,2)
.LBB3_113:                              # %for.cond.5.backedge.i.i
                                        #   in Loop: Header=BB3_111 Depth=9
	cmpl	%ebx, %r15d
	movl	%r15d, %r12d
	jb	.LBB3_111
.LBB3_114:                              # %for.inc.26.i.183.loopexit.i
                                        #   in Loop: Header=BB3_110 Depth=8
	movl	32(%r8), %eax
.LBB3_115:                              # %for.inc.26.i.183.i
                                        #   in Loop: Header=BB3_110 Depth=8
	cmpl	%eax, %edx
	movl	%edx, %ecx
	movq	408(%rsp), %rdi         # 8-byte Reload
	jb	.LBB3_110
# BB#116:                               # %for.cond.2.for.inc.29_crit_edge.i.i
                                        #   in Loop: Header=BB3_107 Depth=7
	movl	36(%r8), %ecx
	movl	%eax, %edx
	movq	368(%rsp), %r12         # 8-byte Reload
	jmp	.LBB3_117
	.align	16, 0x90
.LBB3_108:                              #   in Loop: Header=BB3_107 Depth=7
	xorl	%edx, %edx
.LBB3_117:                              # %for.inc.29.i.i
                                        #   in Loop: Header=BB3_107 Depth=7
	cmpl	%ecx, %ebx
	movl	%ebx, %edi
	jb	.LBB3_107
	jmp	.LBB3_185
	.align	16, 0x90
.LBB3_153:                              # %sw.bb.64.i
                                        #   in Loop: Header=BB3_19 Depth=6
	movl	%ecx, 300(%rsp)         # 4-byte Spill
	leal	1(%rbx), %ecx
	movl	$1, %eax
	shll	%cl, %eax
	movl	%eax, %edx
	sarl	%edx
	orl	%eax, %edx
	cmpl	$0, 380(%rsp)           # 4-byte Folded Reload
	movq	(%r8), %rcx
	jne	.LBB3_154
# BB#194:                               # %if.else.109.i.i
                                        #   in Loop: Header=BB3_19 Depth=6
	movq	16(%r8), %rax
	movq	%rax, 448(%rsp)         # 8-byte Spill
	movq	24(%r8), %rax
	addq	$2, %rax
	movq	%rax, 440(%rsp)         # 8-byte Spill
	movl	36(%r8), %eax
	cmpl	$3, %eax
	jbe	.LBB3_195
# BB#201:                               # %for.cond.119.preheader.lr.ph.i.i
                                        #   in Loop: Header=BB3_19 Depth=6
	movl	%r13d, 296(%rsp)        # 4-byte Spill
	movq	%rbx, 304(%rsp)         # 8-byte Spill
	leaq	176(%rcx), %rsi
	movq	%rsi, 336(%rsp)         # 8-byte Spill
	leaq	184(%rcx), %rsi
	movq	%rsi, 328(%rsp)         # 8-byte Spill
	movq	%rcx, 312(%rsp)         # 8-byte Spill
	movl	%edx, %ecx
	movl	%edx, 404(%rsp)         # 4-byte Spill
	negl	%ecx
	movl	%ecx, 344(%rsp)         # 4-byte Spill
	movl	32(%r8), %ecx
	xorl	%esi, %esi
	movl	%ecx, %edx
	.align	16, 0x90
.LBB3_202:                              # %for.cond.119.preheader.i.i
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        #           Parent Loop BB3_12 Depth=5
                                        #             Parent Loop BB3_19 Depth=6
                                        # =>            This Loop Header: Depth=7
                                        #                 Child Loop BB3_205 Depth 8
                                        #                   Child Loop BB3_212 Depth 9
	testl	%edx, %edx
	je	.LBB3_203
# BB#204:                               # %for.body.123.lr.ph.i.i
                                        #   in Loop: Header=BB3_202 Depth=7
	movl	%esi, %eax
	orl	$1, %eax
	movq	%rax, 432(%rsp)         # 8-byte Spill
	leal	1(%rax), %ecx
	movl	%ecx, 424(%rsp)         # 4-byte Spill
	movl	%esi, %ecx
	orl	$3, %ecx
	movl	%ecx, 408(%rsp)         # 4-byte Spill
	leal	3(%rax), %eax
	movl	%eax, 360(%rsp)         # 4-byte Spill
	leal	4(%rsi), %eax
	movq	%rsi, 352(%rsp)         # 8-byte Spill
	movl	%eax, 416(%rsp)         # 4-byte Spill
	xorl	%r15d, %r15d
	jmp	.LBB3_205
.LBB3_209:                              # %if.then.180.i.i
                                        #   in Loop: Header=BB3_205 Depth=8
	movq	312(%rsp), %rdi         # 8-byte Reload
	movq	336(%rsp), %rax         # 8-byte Reload
	movq	%rax, 192(%rdi)
	movq	%r8, %r14
	callq	opj_mqc_decode
	movq	%r14, %r8
	testl	%eax, %eax
	movl	364(%rsp), %ebp         # 4-byte Reload
	je	.LBB3_218
# BB#210:                               # %if.end.187.i.i
                                        #   in Loop: Header=BB3_205 Depth=8
	movq	312(%rsp), %r14         # 8-byte Reload
	movq	328(%rsp), %rax         # 8-byte Reload
	movq	%rax, 192(%r14)
	movq	%r14, %rdi
	movq	%r8, %rbp
	callq	opj_mqc_decode
	movl	%eax, %r13d
	addl	%r13d, %r13d
	movq	%r14, %rdi
	callq	opj_mqc_decode
	movq	%rbp, %r8
	movl	364(%rsp), %ebp         # 4-byte Reload
	orl	%r13d, %eax
	movq	352(%rsp), %rcx         # 8-byte Reload
	leal	(%rax,%rcx), %edx
	movq	%rdx, 384(%rsp)         # 8-byte Spill
	cmpl	416(%rsp), %edx         # 4-byte Folded Reload
	jae	.LBB3_218
# BB#211:                               # %land.rhs.208.lr.ph.i.i
                                        #   in Loop: Header=BB3_205 Depth=8
	movl	32(%r8), %ecx
	imull	%eax, %ecx
	leaq	(%r12,%rcx,4), %r13
	imull	48(%r8), %eax
	leaq	(%rbx,%rax,2), %r12
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB3_212:                              # %land.rhs.208.i.i
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        #           Parent Loop BB3_12 Depth=5
                                        #             Parent Loop BB3_19 Depth=6
                                        #               Parent Loop BB3_202 Depth=7
                                        #                 Parent Loop BB3_205 Depth=8
                                        # =>                This Inner Loop Header: Depth=9
	leal	(%rdx,%rbx), %eax
	cmpl	36(%r8), %eax
	jae	.LBB3_218
# BB#213:                               # %for.body.214.i.i
                                        #   in Loop: Header=BB3_212 Depth=9
	movl	48(%r8), %eax
	leaq	(%r12,%rax,2), %r12
	testl	%ebx, %ebx
	je	.LBB3_214
# BB#215:                               # %if.else.223.i.i
                                        #   in Loop: Header=BB3_212 Depth=9
	movq	%r8, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	movl	%ebp, %ecx
	movq	%r8, %r14
	movl	404(%rsp), %r8d         # 4-byte Reload
	callq	opj_t1_dec_clnpass_step
	movq	%r14, %r8
	jmp	.LBB3_216
	.align	16, 0x90
.LBB3_214:                              # %if.then.222.i.i
                                        #   in Loop: Header=BB3_212 Depth=9
	movq	(%r8), %rdi
	movzwl	(%r12), %eax
	shrq	$4, %rax
	movzbl	%al, %r14d
	movzbl	lut_ctxno_sc(%r14), %eax
	leaq	40(%rdi,%rax,8), %rax
	movq	%rax, 192(%rdi)
	callq	opj_mqc_decode
	movq	392(%rsp), %r8          # 8-byte Reload
	movzbl	lut_spb(%r14), %edx
	movl	%edx, %ecx
	xorl	%eax, %ecx
	cmpl	%edx, %eax
	movl	404(%rsp), %eax         # 4-byte Reload
	cmovnel	344(%rsp), %eax         # 4-byte Folded Reload
	movl	%eax, (%r13)
	movl	48(%r8), %eax
	leaq	(%rax,%rax), %rdx
	movq	%r12, %rsi
	subq	%rdx, %rsi
	negq	%rdx
	orw	$2, -2(%rsi)
	movw	opj_t1_updateflags.mod(%rcx,%rcx), %di
	orw	%di, (%rsi)
	orb	$4, 2(%r12,%rdx)
	leal	2(%rcx), %edx
	movw	opj_t1_updateflags.mod(%rdx,%rdx), %dx
	orw	%dx, -2(%r12)
	orb	$16, 1(%r12)
	leal	4(%rcx), %edx
	movw	opj_t1_updateflags.mod(%rdx,%rdx), %dx
	orw	%dx, 2(%r12)
	orb	$1, -2(%r12,%rax,2)
	addl	$6, %ecx
	movw	opj_t1_updateflags.mod(%rcx,%rcx), %cx
	orw	%cx, (%r12,%rax,2)
	orb	$8, 2(%r12,%rax,2)
	andb	$-65, 1(%r12)
.LBB3_216:                              # %if.end.224.i.i
                                        #   in Loop: Header=BB3_212 Depth=9
	movq	384(%rsp), %rdx         # 8-byte Reload
	movl	32(%r8), %eax
	leaq	(%r13,%rax,4), %r13
	leal	1(%rdx,%rbx), %eax
	leal	1(%rbx), %ecx
	cmpl	416(%rsp), %eax         # 4-byte Folded Reload
	movl	%ecx, %ebx
	jb	.LBB3_212
	jmp	.LBB3_218
	.align	16, 0x90
.LBB3_205:                              # %for.body.123.i.i
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        #           Parent Loop BB3_12 Depth=5
                                        #             Parent Loop BB3_19 Depth=6
                                        #               Parent Loop BB3_202 Depth=7
                                        # =>              This Loop Header: Depth=8
                                        #                   Child Loop BB3_212 Depth 9
	movl	%r15d, %ecx
	movl	%ecx, %eax
	movq	448(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rax,4), %r12
	movq	440(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rax,2), %rbx
	movl	48(%r8), %eax
	movl	%eax, %edx
	movq	432(%rsp), %rsi         # 8-byte Reload
	imull	%esi, %edx
	leal	1(%rdx,%rcx), %edx
	leal	1(%rcx), %r15d
	movq	24(%r8), %rcx
	movzwl	(%rcx,%rdx,2), %edx
	testw	$20735, %dx             # imm = 0x50FF
	jne	.LBB3_217
# BB#206:                               # %lor.lhs.false.137.i.i
                                        #   in Loop: Header=BB3_205 Depth=8
	movl	%eax, %edx
	imull	424(%rsp), %edx         # 4-byte Folded Reload
	addl	%r15d, %edx
	movzwl	(%rcx,%rdx,2), %edx
	testw	$20735, %dx             # imm = 0x50FF
	jne	.LBB3_217
# BB#207:                               # %lor.lhs.false.150.i.i
                                        #   in Loop: Header=BB3_205 Depth=8
	movl	%eax, %edx
	imull	408(%rsp), %edx         # 4-byte Folded Reload
	addl	%r15d, %edx
	movzwl	(%rcx,%rdx,2), %edx
	testw	$20735, %dx             # imm = 0x50FF
	jne	.LBB3_217
# BB#208:                               # %lor.end.176.i.i
                                        #   in Loop: Header=BB3_205 Depth=8
	movl	%eax, %edx
	imull	360(%rsp), %edx         # 4-byte Folded Reload
	addl	%r15d, %edx
	movzwl	(%rcx,%rdx,2), %ecx
	testw	$20735, %cx             # imm = 0x50FF
	je	.LBB3_209
	.align	16, 0x90
.LBB3_217:                              # %if.else.231.i.i
                                        #   in Loop: Header=BB3_205 Depth=8
	leaq	(%rbx,%rax,2), %r14
	movq	%r8, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	movl	364(%rsp), %ebp         # 4-byte Reload
	movl	%ebp, %ecx
	movq	%r8, %rbx
	movl	%r15d, %r13d
	movl	404(%rsp), %r15d        # 4-byte Reload
	movl	%r15d, %r8d
	callq	opj_t1_dec_clnpass_step
	movl	32(%rbx), %eax
	movl	48(%rbx), %ecx
	leaq	(%r12,%rax,4), %r12
	leaq	(%r14,%rcx,2), %r14
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	movl	%ebp, %ecx
	movl	%r15d, %r8d
	callq	opj_t1_dec_clnpass_step
	movl	32(%rbx), %eax
	movl	48(%rbx), %ecx
	leaq	(%r12,%rax,4), %r12
	leaq	(%r14,%rcx,2), %r14
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	movl	%ebp, %ecx
	movl	%r15d, %r8d
	callq	opj_t1_dec_clnpass_step
	movl	32(%rbx), %eax
	movl	48(%rbx), %ecx
	leaq	(%r12,%rax,4), %rdx
	leaq	(%r14,%rcx,2), %rsi
	movq	%rbx, %rdi
	movl	%ebp, %ecx
	movl	%r15d, %r8d
	movl	%r13d, %r15d
	callq	opj_t1_dec_clnpass_step
	movq	%rbx, %r8
.LBB3_218:                              # %for.cond.119.backedge.i.i
                                        #   in Loop: Header=BB3_205 Depth=8
	movl	%ebp, 364(%rsp)         # 4-byte Spill
	movl	32(%r8), %ecx
	cmpl	%ecx, %r15d
	movq	368(%rsp), %r12         # 8-byte Reload
	jb	.LBB3_205
# BB#219:                               # %for.cond.119.for.end.260_crit_edge.i.i
                                        #   in Loop: Header=BB3_202 Depth=7
	movl	36(%r8), %eax
	movl	%ecx, %edx
	movl	416(%rsp), %ebp         # 4-byte Reload
	jmp	.LBB3_220
	.align	16, 0x90
.LBB3_203:                              # %for.cond.119.preheader.for.end.260_crit_edge.i.i
                                        #   in Loop: Header=BB3_202 Depth=7
	addl	$4, %esi
	xorl	%edx, %edx
	movl	%esi, %ebp
.LBB3_220:                              # %for.end.260.i.i
                                        #   in Loop: Header=BB3_202 Depth=7
	leal	(,%rdx,4), %esi
	movq	448(%rsp), %rdi         # 8-byte Reload
	leaq	(%rdi,%rsi,4), %rdi
	movq	%rdi, 448(%rsp)         # 8-byte Spill
	movl	48(%r8), %esi
	shll	$2, %esi
	movq	440(%rsp), %rdi         # 8-byte Reload
	leaq	(%rdi,%rsi,2), %rdi
	movq	%rdi, 440(%rsp)         # 8-byte Spill
	movl	%eax, %esi
	andl	$-4, %esi
	cmpl	%esi, %ebp
	movl	%ebp, %esi
	jb	.LBB3_202
	jmp	.LBB3_196
	.align	16, 0x90
.LBB3_21:                               # %for.body.34.i
                                        #   in Loop: Header=BB3_19 Depth=6
	movq	%rbx, 304(%rsp)         # 8-byte Spill
	testl	%r13d, %r13d
	movl	%r13d, 296(%rsp)        # 4-byte Spill
	jne	.LBB3_185
# BB#22:                                # %sw.bb.i
                                        #   in Loop: Header=BB3_19 Depth=6
	movq	304(%rsp), %rbx         # 8-byte Reload
	leal	1(%rbx), %ecx
	movb	263(%rsp), %al          # 1-byte Reload
	testb	%al, %al
	je	.LBB3_44
# BB#23:                                # %if.then.38.i
                                        #   in Loop: Header=BB3_19 Depth=6
	movl	$1, %eax
	shll	%cl, %eax
	movl	36(%r8), %ecx
	testl	%ecx, %ecx
	movq	288(%rsp), %rbp         # 8-byte Reload
	je	.LBB3_187
# BB#24:                                # %for.cond.1.preheader.lr.ph.i.i
                                        #   in Loop: Header=BB3_19 Depth=6
	movl	%eax, %edx
	sarl	%edx
	orl	%eax, %edx
	movl	%edx, 416(%rsp)         # 4-byte Spill
	negl	%edx
	movl	%edx, 408(%rsp)         # 4-byte Spill
	movl	32(%r8), %eax
	xorl	%ebx, %ebx
	movl	%eax, %edx
	.align	16, 0x90
.LBB3_25:                               # %for.cond.1.preheader.i.i
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        #           Parent Loop BB3_12 Depth=5
                                        #             Parent Loop BB3_19 Depth=6
                                        # =>            This Loop Header: Depth=7
                                        #                 Child Loop BB3_28 Depth 8
                                        #                   Child Loop BB3_29 Depth 9
	movq	%rbx, 424(%rsp)         # 8-byte Spill
	leal	4(%rbx), %r9d
	movl	%r9d, 432(%rsp)         # 4-byte Spill
	testl	%edx, %edx
	je	.LBB3_26
# BB#27:                                # %for.cond.4.preheader.lr.ph.i.i
                                        #   in Loop: Header=BB3_25 Depth=7
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB3_28:                               # %for.cond.4.preheader.i.i
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        #           Parent Loop BB3_12 Depth=5
                                        #             Parent Loop BB3_19 Depth=6
                                        #               Parent Loop BB3_25 Depth=7
                                        # =>              This Loop Header: Depth=8
                                        #                   Child Loop BB3_29 Depth 9
	movq	%rbp, 448(%rsp)         # 8-byte Spill
	leal	1(%rbp), %r10d
	movl	%r10d, 440(%rsp)        # 4-byte Spill
	cmpl	$-4, %ebx
	movl	$0, %r13d
	je	.LBB3_38
	.align	16, 0x90
.LBB3_29:                               # %land.rhs.i.i
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        #           Parent Loop BB3_12 Depth=5
                                        #             Parent Loop BB3_19 Depth=6
                                        #               Parent Loop BB3_25 Depth=7
                                        #                 Parent Loop BB3_28 Depth=8
                                        # =>                This Inner Loop Header: Depth=9
	leal	(%rbx,%r13), %r12d
	movl	36(%r8), %ecx
	cmpl	%ecx, %r12d
	jae	.LBB3_37
# BB#30:                                # %for.body.8.i.i
                                        #   in Loop: Header=BB3_29 Depth=9
	cmpl	$0, 380(%rsp)           # 4-byte Folded Reload
	jne	.LBB3_32
# BB#31:                                #   in Loop: Header=BB3_29 Depth=9
	xorl	%eax, %eax
	jmp	.LBB3_34
	.align	16, 0x90
.LBB3_32:                               # %land.rhs.9.i.i
                                        #   in Loop: Header=BB3_29 Depth=9
	movb	$1, %al
	cmpl	$3, %r13d
	je	.LBB3_34
# BB#33:                                # %lor.rhs.i.i
                                        #   in Loop: Header=BB3_29 Depth=9
	decl	%ecx
	cmpl	%ecx, %r12d
	sete	%al
.LBB3_34:                               # %land.end.14.i.i
                                        #   in Loop: Header=BB3_29 Depth=9
	leal	1(%rbx,%r13), %ecx
	imull	48(%r8), %ecx
	addl	%r10d, %ecx
	movq	24(%r8), %rdx
	imull	32(%r8), %r12d
	addl	%ebp, %r12d
	movswl	(%rdx,%rcx,2), %edi
	movl	%edi, %esi
	andl	$-1095, %esi            # imm = 0xFFFFFFFFFFFFFBB9
	testb	%al, %al
	cmovel	%edi, %esi
	testb	$-1, %sil
	je	.LBB3_36
# BB#35:                                # %land.end.14.i.i
                                        #   in Loop: Header=BB3_29 Depth=9
	andl	$20480, %esi            # imm = 0x5000
	jne	.LBB3_36
# BB#41:                                # %if.then.i.i.i
                                        #   in Loop: Header=BB3_29 Depth=9
	leaq	(%rdx,%rcx,2), %rbp
	movq	8(%r8), %rbx
	movq	16(%r8), %r15
	movq	%rbx, %rdi
	movq	%r8, %r14
	callq	opj_raw_decode
	testl	%eax, %eax
	je	.LBB3_43
# BB#42:                                # %if.then.8.i.i.i
                                        #   in Loop: Header=BB3_29 Depth=9
	movq	%rbx, %rdi
	callq	opj_raw_decode
	testl	%eax, %eax
	movl	416(%rsp), %ecx         # 4-byte Reload
	cmovnel	408(%rsp), %ecx         # 4-byte Folded Reload
	movl	%ecx, (%r15,%r12,4)
	movl	48(%r14), %ecx
	leaq	(%rcx,%rcx), %rdx
	movq	%rbp, %rsi
	subq	%rdx, %rsi
	negq	%rdx
	orw	$2, -2(%rsi)
	movl	%eax, %edi
	movw	opj_t1_updateflags.mod(%rdi,%rdi), %di
	orw	%di, (%rsi)
	orb	$4, 2(%rbp,%rdx)
	leal	2(%rax), %edx
	movw	opj_t1_updateflags.mod(%rdx,%rdx), %dx
	orw	%dx, -2(%rbp)
	orb	$16, 1(%rbp)
	leal	4(%rax), %edx
	movw	opj_t1_updateflags.mod(%rdx,%rdx), %dx
	orw	%dx, 2(%rbp)
	orb	$1, -2(%rbp,%rcx,2)
	addl	$6, %eax
	movw	opj_t1_updateflags.mod(%rax,%rax), %ax
	orw	%ax, (%rbp,%rcx,2)
	orb	$8, 2(%rbp,%rcx,2)
.LBB3_43:                               # %if.end.i.i.i
                                        #   in Loop: Header=BB3_29 Depth=9
	orb	$64, 1(%rbp)
	movq	%r14, %r8
	movl	432(%rsp), %r9d         # 4-byte Reload
	movq	424(%rsp), %rbx         # 8-byte Reload
	movq	448(%rsp), %rbp         # 8-byte Reload
	movl	440(%rsp), %r10d        # 4-byte Reload
.LBB3_36:                               # %for.cond.4.backedge.i.i
                                        #   in Loop: Header=BB3_29 Depth=9
	leal	1(%rbx,%r13), %eax
	leal	1(%r13), %ecx
	cmpl	%r9d, %eax
	movl	%ecx, %r13d
	jb	.LBB3_29
.LBB3_37:                               # %for.inc.23.i.loopexit.i
                                        #   in Loop: Header=BB3_28 Depth=8
	movl	32(%r8), %eax
.LBB3_38:                               # %for.inc.23.i.i
                                        #   in Loop: Header=BB3_28 Depth=8
	cmpl	%eax, %r10d
	movl	%r10d, %ebp
	jb	.LBB3_28
# BB#39:                                # %for.cond.1.for.inc.26_crit_edge.i.i
                                        #   in Loop: Header=BB3_25 Depth=7
	movl	36(%r8), %ecx
	movl	%eax, %edx
	movq	368(%rsp), %r12         # 8-byte Reload
	jmp	.LBB3_40
	.align	16, 0x90
.LBB3_26:                               #   in Loop: Header=BB3_25 Depth=7
	xorl	%edx, %edx
.LBB3_40:                               # %for.inc.26.i.i
                                        #   in Loop: Header=BB3_25 Depth=7
	cmpl	%ecx, %r9d
	movl	%r9d, %ebx
	jb	.LBB3_25
	jmp	.LBB3_185
.LBB3_118:                              # %if.else.55.i
                                        #   in Loop: Header=BB3_19 Depth=6
	cmpl	$0, 380(%rsp)           # 4-byte Folded Reload
	jne	.LBB3_119
# BB#132:                               # %if.else.60.i
                                        #   in Loop: Header=BB3_19 Depth=6
	movq	16(%r8), %rax
	movq	%rax, 432(%rsp)         # 8-byte Spill
	movq	24(%r8), %rax
	addq	$2, %rax
	movq	%rax, 424(%rsp)         # 8-byte Spill
	movl	$1, %eax
	shll	%cl, %eax
	sarl	%eax
	movl	%eax, 448(%rsp)         # 4-byte Spill
	movl	%eax, %ecx
	negl	%ecx
	testl	%ebx, %ebx
	movq	%rbx, 304(%rsp)         # 8-byte Spill
	movl	$-1, %eax
	cmovsl	%eax, %ecx
	movl	%ecx, 440(%rsp)         # 4-byte Spill
	movl	36(%r8), %ecx
	movl	32(%r8), %eax
	cmpl	$4, %ecx
	movl	%eax, %edx
	movl	$0, %edi
	jb	.LBB3_146
	.align	16, 0x90
.LBB3_133:                              # %for.cond.2.preheader.i.251.i
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        #           Parent Loop BB3_12 Depth=5
                                        #             Parent Loop BB3_19 Depth=6
                                        # =>            This Loop Header: Depth=7
                                        #                 Child Loop BB3_134 Depth 8
	movl	%edi, 416(%rsp)         # 4-byte Spill
	testl	%edx, %edx
	movl	$0, %r13d
	movl	$0, %edx
	je	.LBB3_145
	.align	16, 0x90
.LBB3_134:                              # %for.body.4.i.i
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        #           Parent Loop BB3_12 Depth=5
                                        #             Parent Loop BB3_19 Depth=6
                                        #               Parent Loop BB3_133 Depth=7
                                        # =>              This Inner Loop Header: Depth=8
	movl	%r13d, %ecx
	movq	432(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rcx,4), %r14
	movq	424(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rcx,2), %rdx
	movl	48(%r8), %ecx
	leaq	(%rdx,%rcx,2), %rbp
	movq	(%r8), %rdi
	movswl	(%rdx,%rcx,2), %edx
	movl	%edx, %esi
	andl	$20480, %esi            # imm = 0x5000
	cmpl	$4096, %esi             # imm = 0x1000
	jne	.LBB3_136
# BB#135:                               # %if.then.i.i.273.i
                                        #   in Loop: Header=BB3_134 Depth=8
	testb	%dl, %dl
	setne	%al
	movzbl	%al, %eax
	orq	$14, %rax
	testb	$32, %dh
	movl	$16, %ecx
	cmovneq	%rcx, %rax
	leaq	40(%rdi,%rax,8), %rax
	movq	%rax, 192(%rdi)
	movq	%r8, %rbx
	callq	opj_mqc_decode
	testl	%eax, %eax
	movl	440(%rsp), %eax         # 4-byte Reload
	cmovnel	448(%rsp), %eax         # 4-byte Folded Reload
	movl	(%r14), %ecx
	movl	%eax, %edx
	negl	%edx
	testl	%ecx, %ecx
	cmovnsl	%eax, %edx
	addl	%ecx, %edx
	movl	%edx, (%r14)
	orb	$32, 1(%rbp)
	movl	32(%rbx), %eax
	movl	48(%rbx), %ecx
	movq	(%rbx), %rdi
.LBB3_136:                              # %opj_t1_dec_refpass_step_mqc.exit.i.i
                                        #   in Loop: Header=BB3_134 Depth=8
	movl	%eax, %edx
	leaq	(%r14,%rdx,4), %r14
	movl	%ecx, %edx
	leaq	(%rbp,%rdx,2), %rbx
	movswl	(%rbp,%rdx,2), %edx
	movl	%edx, %esi
	andl	$20480, %esi            # imm = 0x5000
	cmpl	$4096, %esi             # imm = 0x1000
	jne	.LBB3_138
# BB#137:                               # %if.then.i.94.i.i
                                        #   in Loop: Header=BB3_134 Depth=8
	testb	%dl, %dl
	setne	%al
	movzbl	%al, %eax
	orq	$14, %rax
	testb	$32, %dh
	movl	$16, %ecx
	cmoveq	%rax, %rcx
	leaq	40(%rdi,%rcx,8), %rax
	movq	%rax, 192(%rdi)
	callq	opj_mqc_decode
	testl	%eax, %eax
	movl	440(%rsp), %eax         # 4-byte Reload
	cmovnel	448(%rsp), %eax         # 4-byte Folded Reload
	movl	(%r14), %ecx
	movl	%eax, %edx
	negl	%edx
	testl	%ecx, %ecx
	cmovnsl	%eax, %edx
	addl	%ecx, %edx
	movl	%edx, (%r14)
	orb	$32, 1(%rbx)
	movq	392(%rsp), %rdx         # 8-byte Reload
	movl	32(%rdx), %eax
	movl	48(%rdx), %ecx
	movq	(%rdx), %rdi
.LBB3_138:                              # %opj_t1_dec_refpass_step_mqc.exit95.i.i
                                        #   in Loop: Header=BB3_134 Depth=8
	movl	%eax, %edx
	leaq	(%r14,%rdx,4), %r15
	movl	%ecx, %edx
	leaq	(%rbx,%rdx,2), %r12
	movswl	(%rbx,%rdx,2), %edx
	movl	%edx, %esi
	andl	$20480, %esi            # imm = 0x5000
	cmpl	$4096, %esi             # imm = 0x1000
	jne	.LBB3_139
# BB#140:                               # %if.then.i.115.i.i
                                        #   in Loop: Header=BB3_134 Depth=8
	testb	%dl, %dl
	setne	%al
	movzbl	%al, %eax
	orq	$14, %rax
	testb	$32, %dh
	movl	$16, %ecx
	cmoveq	%rax, %rcx
	leaq	40(%rdi,%rcx,8), %rax
	movq	%rax, 192(%rdi)
	callq	opj_mqc_decode
	testl	%eax, %eax
	movl	440(%rsp), %eax         # 4-byte Reload
	cmovnel	448(%rsp), %eax         # 4-byte Folded Reload
	movl	(%r15), %ecx
	movl	%eax, %edx
	negl	%edx
	testl	%ecx, %ecx
	cmovnsl	%eax, %edx
	addl	%ecx, %edx
	movl	%edx, (%r15)
	orb	$32, 1(%r12)
	movq	392(%rsp), %r8          # 8-byte Reload
	movl	32(%r8), %eax
	movl	48(%r8), %ecx
	movq	(%r8), %rdi
	jmp	.LBB3_141
	.align	16, 0x90
.LBB3_139:                              #   in Loop: Header=BB3_134 Depth=8
	movq	392(%rsp), %r8          # 8-byte Reload
.LBB3_141:                              # %opj_t1_dec_refpass_step_mqc.exit116.i.i
                                        #   in Loop: Header=BB3_134 Depth=8
	movl	%eax, %r14d
	movl	%ecx, %ebp
	movswl	(%r12,%rbp,2), %ecx
	movl	%ecx, %edx
	andl	$20480, %edx            # imm = 0x5000
	cmpl	$4096, %edx             # imm = 0x1000
	jne	.LBB3_143
# BB#142:                               # %if.then.i.136.i.i
                                        #   in Loop: Header=BB3_134 Depth=8
	testb	%cl, %cl
	setne	%al
	movzbl	%al, %eax
	orq	$14, %rax
	testb	$32, %ch
	movl	$16, %ecx
	cmoveq	%rax, %rcx
	leaq	40(%rdi,%rcx,8), %rax
	movq	%rax, 192(%rdi)
	movq	%r8, %rbx
	callq	opj_mqc_decode
	movq	%rbx, %r8
	testl	%eax, %eax
	movl	440(%rsp), %eax         # 4-byte Reload
	cmovnel	448(%rsp), %eax         # 4-byte Folded Reload
	movl	(%r15,%r14,4), %ecx
	movl	%eax, %edx
	negl	%edx
	testl	%ecx, %ecx
	cmovnsl	%eax, %edx
	addl	%ecx, %edx
	movl	%edx, (%r15,%r14,4)
	orb	$32, 1(%r12,%rbp,2)
	movl	32(%r8), %eax
.LBB3_143:                              # %opj_t1_dec_refpass_step_mqc.exit137.i.i
                                        #   in Loop: Header=BB3_134 Depth=8
	incl	%r13d
	cmpl	%eax, %r13d
	movq	368(%rsp), %r12         # 8-byte Reload
	jb	.LBB3_134
# BB#144:                               # %for.cond.2.for.end_crit_edge.i.i
                                        #   in Loop: Header=BB3_133 Depth=7
	movl	36(%r8), %ecx
	movl	%eax, %edx
.LBB3_145:                              # %for.end.i.279.i
                                        #   in Loop: Header=BB3_133 Depth=7
	leal	(,%rdx,4), %esi
	movq	432(%rsp), %rdi         # 8-byte Reload
	leaq	(%rdi,%rsi,4), %rdi
	movq	%rdi, 432(%rsp)         # 8-byte Spill
	movl	48(%r8), %esi
	shll	$2, %esi
	movq	424(%rsp), %rdi         # 8-byte Reload
	leaq	(%rdi,%rsi,2), %rdi
	movq	%rdi, 424(%rsp)         # 8-byte Spill
	movl	416(%rsp), %edi         # 4-byte Reload
	addl	$4, %edi
	movl	%ecx, %esi
	andl	$-4, %esi
	cmpl	%esi, %edi
	jb	.LBB3_133
.LBB3_146:                              # %for.cond.40.preheader.i.i
                                        #   in Loop: Header=BB3_19 Depth=6
	movl	%edi, 416(%rsp)         # 4-byte Spill
	testl	%eax, %eax
	movl	$0, %r13d
	je	.LBB3_185
	.align	16, 0x90
.LBB3_147:                              # %for.body.43.i.i
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        #           Parent Loop BB3_12 Depth=5
                                        #             Parent Loop BB3_19 Depth=6
                                        # =>            This Loop Header: Depth=7
                                        #                 Child Loop BB3_149 Depth 8
	movl	%r13d, %r13d
	cmpl	%ecx, %edi
	jae	.LBB3_152
# BB#148:                               # %for.body.53.lr.ph.i.i
                                        #   in Loop: Header=BB3_147 Depth=7
	movq	424(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%r13,2), %r15
	movq	432(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%r13,4), %rbx
	movl	%edi, %ebp
	.align	16, 0x90
.LBB3_149:                              # %for.body.53.i.i
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        #           Parent Loop BB3_12 Depth=5
                                        #             Parent Loop BB3_19 Depth=6
                                        #               Parent Loop BB3_147 Depth=7
                                        # =>              This Inner Loop Header: Depth=8
	movl	48(%r8), %esi
	movswl	(%r15,%rsi,2), %edx
	leaq	(%r15,%rsi,2), %r15
	movl	%edx, %esi
	andl	$20480, %esi            # imm = 0x5000
	cmpl	$4096, %esi             # imm = 0x1000
	jne	.LBB3_151
# BB#150:                               # %if.then.i.157.i.i
                                        #   in Loop: Header=BB3_149 Depth=8
	movq	(%r8), %rdi
	testb	%dl, %dl
	setne	%al
	movzbl	%al, %eax
	orq	$14, %rax
	testb	$32, %dh
	movl	$16, %ecx
	cmoveq	%rax, %rcx
	leaq	40(%rdi,%rcx,8), %rax
	movq	%rax, 192(%rdi)
	movq	%r8, %r14
	callq	opj_mqc_decode
	movq	%r14, %r8
	testl	%eax, %eax
	movl	440(%rsp), %eax         # 4-byte Reload
	cmovnel	448(%rsp), %eax         # 4-byte Folded Reload
	movl	(%rbx), %ecx
	movl	%eax, %edx
	negl	%edx
	testl	%ecx, %ecx
	cmovnsl	%eax, %edx
	addl	%ecx, %edx
	movl	%edx, (%rbx)
	orb	$32, 1(%r15)
	movl	32(%r8), %eax
	movl	36(%r8), %ecx
.LBB3_151:                              # %opj_t1_dec_refpass_step_mqc.exit158.i.i
                                        #   in Loop: Header=BB3_149 Depth=8
	movl	%eax, %edx
	leaq	(%rbx,%rdx,4), %rbx
	incl	%ebp
	cmpl	%ecx, %ebp
	jb	.LBB3_149
.LBB3_152:                              # %for.end.62.i.i
                                        #   in Loop: Header=BB3_147 Depth=7
	incl	%r13d
	cmpl	%eax, %r13d
	movl	416(%rsp), %edi         # 4-byte Reload
	jb	.LBB3_147
	jmp	.LBB3_185
.LBB3_154:                              # %for.cond.preheader.i.i
                                        #   in Loop: Header=BB3_19 Depth=6
	movl	%edx, 404(%rsp)         # 4-byte Spill
	movq	%rcx, 312(%rsp)         # 8-byte Spill
	movl	%r13d, 296(%rsp)        # 4-byte Spill
	movq	%rbx, 304(%rsp)         # 8-byte Spill
	movl	36(%r8), %eax
	testl	%eax, %eax
	je	.LBB3_183
# BB#155:                               # %for.cond.3.preheader.lr.ph.i.i
                                        #   in Loop: Header=BB3_19 Depth=6
	movq	312(%rsp), %rcx         # 8-byte Reload
	leaq	176(%rcx), %rdx
	movq	%rdx, 264(%rsp)         # 8-byte Spill
	leaq	184(%rcx), %rcx
	movq	%rcx, 240(%rsp)         # 8-byte Spill
	movl	404(%rsp), %ecx         # 4-byte Reload
	negl	%ecx
	movl	%ecx, 384(%rsp)         # 4-byte Spill
	movl	32(%r8), %ecx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB3_156:                              # %for.cond.3.preheader.i.i
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        #           Parent Loop BB3_12 Depth=5
                                        #             Parent Loop BB3_19 Depth=6
                                        # =>            This Loop Header: Depth=7
                                        #                 Child Loop BB3_159 Depth 8
                                        #                   Child Loop BB3_174 Depth 9
	movq	%rbp, 352(%rsp)         # 8-byte Spill
	testl	%ecx, %ecx
	je	.LBB3_157
# BB#158:                               # %for.body.5.lr.ph.i.i
                                        #   in Loop: Header=BB3_156 Depth=7
	movl	%ebp, %ecx
	orl	$3, %ecx
	movl	%ecx, 360(%rsp)         # 4-byte Spill
	movl	%ebp, %edx
	orl	$1, %edx
	movq	%rdx, 344(%rsp)         # 8-byte Spill
	leal	1(%rdx), %esi
	movl	%esi, 328(%rsp)         # 4-byte Spill
	leal	3(%rdx), %edx
	movl	%edx, 324(%rsp)         # 4-byte Spill
	leal	4(%rbp), %esi
	movl	%esi, 408(%rsp)         # 4-byte Spill
	negl	%ecx
	movq	%rcx, 336(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%rcx, 448(%rsp)         # 8-byte Spill
	jmp	.LBB3_159
	.align	16, 0x90
.LBB3_157:                              # %for.cond.3.preheader.for.inc.106_crit_edge.i.i
                                        #   in Loop: Header=BB3_156 Depth=7
	addl	$4, %ebp
	xorl	%ecx, %ecx
	movl	%ebp, %esi
	jmp	.LBB3_182
.LBB3_170:                              #   in Loop: Header=BB3_159 Depth=8
	movq	%r15, %r8
	movl	408(%rsp), %esi         # 4-byte Reload
	jmp	.LBB3_181
	.align	16, 0x90
.LBB3_159:                              # %for.body.5.i.i
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        #           Parent Loop BB3_12 Depth=5
                                        #             Parent Loop BB3_19 Depth=6
                                        #               Parent Loop BB3_156 Depth=7
                                        # =>              This Loop Header: Depth=8
                                        #                   Child Loop BB3_174 Depth 9
	cmpl	%eax, 360(%rsp)         # 4-byte Folded Reload
	jae	.LBB3_160
# BB#161:                               # %if.then.8.i.i
                                        #   in Loop: Header=BB3_159 Depth=8
	movl	48(%r8), %eax
	movl	%eax, %ecx
	movq	344(%rsp), %rdx         # 8-byte Reload
	imull	%edx, %ecx
	movq	448(%rsp), %rdx         # 8-byte Reload
	leal	1(%rdx), %ebx
	leal	1(%rcx,%rdx), %edx
	movq	24(%r8), %rcx
	movzwl	(%rcx,%rdx,2), %edx
	movl	$0, 432(%rsp)           # 4-byte Folded Spill
	testw	$20735, %dx             # imm = 0x50FF
	je	.LBB3_163
# BB#162:                               #   in Loop: Header=BB3_159 Depth=8
	xorl	%r9d, %r9d
	jmp	.LBB3_172
	.align	16, 0x90
.LBB3_160:                              # %for.body.5.i.if.end.66.i_crit_edge.i
                                        #   in Loop: Header=BB3_159 Depth=8
	movq	448(%rsp), %rax         # 8-byte Reload
	leal	1(%rax), %ebx
	movl	$0, 432(%rsp)           # 4-byte Folded Spill
	xorl	%r9d, %r9d
	jmp	.LBB3_172
.LBB3_163:                              # %lor.lhs.false.i.i
                                        #   in Loop: Header=BB3_159 Depth=8
	movl	%eax, %edx
	imull	328(%rsp), %edx         # 4-byte Folded Reload
	addl	%ebx, %edx
	movzwl	(%rcx,%rdx,2), %edx
	movl	$0, 432(%rsp)           # 4-byte Folded Spill
	testw	$20735, %dx             # imm = 0x50FF
	je	.LBB3_165
# BB#164:                               #   in Loop: Header=BB3_159 Depth=8
	xorl	%r9d, %r9d
	jmp	.LBB3_172
.LBB3_165:                              # %lor.lhs.false.26.i.i
                                        #   in Loop: Header=BB3_159 Depth=8
	movl	%eax, %edx
	imull	360(%rsp), %edx         # 4-byte Folded Reload
	addl	%ebx, %edx
	movzwl	(%rcx,%rdx,2), %edx
	movl	$0, 432(%rsp)           # 4-byte Folded Spill
	testw	$20735, %dx             # imm = 0x50FF
	je	.LBB3_167
# BB#166:                               #   in Loop: Header=BB3_159 Depth=8
	xorl	%r9d, %r9d
	jmp	.LBB3_172
.LBB3_167:                              # %lor.rhs.i.303.i
                                        #   in Loop: Header=BB3_159 Depth=8
	movq	%r8, %r15
	imull	324(%rsp), %eax         # 4-byte Folded Reload
	addl	%ebx, %eax
	movzwl	(%rcx,%rax,2), %eax
	movl	$0, 432(%rsp)           # 4-byte Folded Spill
	testw	$20665, %ax             # imm = 0x50B9
	je	.LBB3_169
# BB#168:                               #   in Loop: Header=BB3_159 Depth=8
	xorl	%r9d, %r9d
	movq	%r15, %r8
	jmp	.LBB3_172
.LBB3_169:                              # %if.then.53.i.i
                                        #   in Loop: Header=BB3_159 Depth=8
	movl	%esi, 408(%rsp)         # 4-byte Spill
	movq	312(%rsp), %r13         # 8-byte Reload
	movq	264(%rsp), %rax         # 8-byte Reload
	movq	%rax, 192(%r13)
	movq	%r13, %rdi
	callq	opj_mqc_decode
	testl	%eax, %eax
	je	.LBB3_170
# BB#171:                               # %if.end.57.i.i
                                        #   in Loop: Header=BB3_159 Depth=8
	movq	240(%rsp), %rax         # 8-byte Reload
	movq	%rax, 192(%r13)
	movq	%r13, %rdi
	callq	opj_mqc_decode
	movl	%eax, %r14d
	addl	%r14d, %r14d
	movq	%r13, %rdi
	callq	opj_mqc_decode
	movl	%eax, %r9d
	orl	%r14d, %r9d
	movb	$1, %al
	movl	%eax, 432(%rsp)         # 4-byte Spill
	movq	%r15, %r8
	movl	408(%rsp), %esi         # 4-byte Reload
	.align	16, 0x90
.LBB3_172:                              # %if.end.66.i.i
                                        #   in Loop: Header=BB3_159 Depth=8
	movl	%ebx, 424(%rsp)         # 4-byte Spill
	addl	%ebp, %r9d
	cmpl	%esi, %r9d
	jae	.LBB3_181
# BB#173:                               # %land.rhs.i.304.i.preheader
                                        #   in Loop: Header=BB3_159 Depth=8
	movq	336(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%r9), %eax
	movq	%rax, 416(%rsp)         # 8-byte Spill
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB3_174:                              # %land.rhs.i.304.i
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        #           Parent Loop BB3_12 Depth=5
                                        #             Parent Loop BB3_19 Depth=6
                                        #               Parent Loop BB3_156 Depth=7
                                        #                 Parent Loop BB3_159 Depth=8
                                        # =>                This Inner Loop Header: Depth=9
	leal	(%r9,%r12), %eax
	movl	36(%r8), %ecx
	cmpl	%ecx, %eax
	jae	.LBB3_180
# BB#175:                               # %for.body.75.i.i
                                        #   in Loop: Header=BB3_174 Depth=9
	decl	%ecx
	leal	1(%r9,%r12), %edx
	imull	48(%r8), %edx
	addl	%ebx, %edx
	movq	24(%r8), %rsi
	movl	32(%r8), %r14d
	imull	%eax, %r14d
	movq	448(%rsp), %rdi         # 8-byte Reload
	addl	%edi, %r14d
	testl	%r12d, %r12d
	sete	%dil
	movl	432(%rsp), %ebp         # 4-byte Reload
	andb	%bpl, %dil
	movswl	(%rsi,%rdx,2), %ebx
	movl	%ebx, %ebp
	andl	$-1095, %ebp            # imm = 0xFFFFFFFFFFFFFBB9
	cmpl	%ecx, %eax
	movq	416(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%r12), %eax
	cmovel	%ebp, %ebx
	testl	%eax, %eax
	leaq	(%rsi,%rdx,2), %r15
	cmovel	%ebp, %ebx
	movq	(%r8), %rbp
	movzbl	%dil, %eax
	cmpl	$1, %eax
	movq	16(%r8), %r13
	je	.LBB3_178
# BB#176:                               # %if.end.i.i.310.i
                                        #   in Loop: Header=BB3_174 Depth=9
	testb	$80, %bh
	jne	.LBB3_179
# BB#177:                               # %if.then.6.i.i.i
                                        #   in Loop: Header=BB3_174 Depth=9
	movzbl	%bl, %eax
	orl	376(%rsp), %eax         # 4-byte Folded Reload
	movzbl	lut_ctxno_zc(%rax), %eax
	leaq	40(%rbp,%rax,8), %rax
	movq	%rax, 192(%rbp)
	movq	%rbp, %rdi
	movl	%ebx, 440(%rsp)         # 4-byte Spill
	movq	%r9, %rbx
	callq	opj_mqc_decode
	movq	%rbx, %r9
	movl	440(%rsp), %ebx         # 4-byte Reload
	movq	392(%rsp), %r8          # 8-byte Reload
	testl	%eax, %eax
	je	.LBB3_179
	.align	16, 0x90
.LBB3_178:                              # %LABEL_PARTIAL.i.i.i
                                        #   in Loop: Header=BB3_174 Depth=9
	shrl	$4, %ebx
	movzbl	%bl, %ebx
	movzbl	lut_ctxno_sc(%rbx), %eax
	leaq	40(%rbp,%rax,8), %rax
	movq	%rax, 192(%rbp)
	movq	%rbp, %rdi
	movq	%r8, %rbp
	movq	%r13, 440(%rsp)         # 8-byte Spill
	movq	%r9, %r13
	callq	opj_mqc_decode
	movq	%r13, %r9
	movq	%rbp, %r8
	movzbl	lut_spb(%rbx), %edx
	movl	%edx, %ecx
	xorl	%eax, %ecx
	cmpl	%edx, %eax
	movl	404(%rsp), %eax         # 4-byte Reload
	cmovnel	384(%rsp), %eax         # 4-byte Folded Reload
	movq	440(%rsp), %rdx         # 8-byte Reload
	movl	%eax, (%rdx,%r14,4)
	movl	48(%r8), %eax
	leaq	(%rax,%rax), %rdx
	movq	%r15, %rsi
	subq	%rdx, %rsi
	orw	$2, -2(%rsi)
	negq	%rdx
	movw	opj_t1_updateflags.mod(%rcx,%rcx), %di
	orw	%di, (%rsi)
	orb	$4, 2(%r15,%rdx)
	leal	2(%rcx), %edx
	movw	opj_t1_updateflags.mod(%rdx,%rdx), %dx
	orw	%dx, -2(%r15)
	orb	$16, 1(%r15)
	leal	4(%rcx), %edx
	movw	opj_t1_updateflags.mod(%rdx,%rdx), %dx
	orw	%dx, 2(%r15)
	orb	$1, -2(%r15,%rax,2)
	addl	$6, %ecx
	movw	opj_t1_updateflags.mod(%rcx,%rcx), %cx
	orw	%cx, (%r15,%rax,2)
	orb	$8, 2(%r15,%rax,2)
.LBB3_179:                              # %opj_t1_dec_clnpass_step_vsc.exit.i.i
                                        #   in Loop: Header=BB3_174 Depth=9
	andb	$-65, 1(%r15)
	leal	1(%r9,%r12), %eax
	leal	1(%r12), %ecx
	movl	408(%rsp), %esi         # 4-byte Reload
	cmpl	%esi, %eax
	movl	%ecx, %r12d
	movl	424(%rsp), %ebx         # 4-byte Reload
	jb	.LBB3_174
.LBB3_180:                              #   in Loop: Header=BB3_159 Depth=8
	movq	368(%rsp), %r12         # 8-byte Reload
	movq	352(%rsp), %rbp         # 8-byte Reload
.LBB3_181:                              # %for.inc.103.i.i
                                        #   in Loop: Header=BB3_159 Depth=8
	movl	32(%r8), %ecx
	movl	36(%r8), %eax
	cmpl	%ecx, %ebx
	movl	%ebx, %edx
	movq	%rdx, 448(%rsp)         # 8-byte Spill
	jb	.LBB3_159
.LBB3_182:                              # %for.inc.106.i.i
                                        #   in Loop: Header=BB3_156 Depth=7
	cmpl	%eax, %esi
	movl	%esi, %ebp
	jb	.LBB3_156
	jmp	.LBB3_183
.LBB3_195:                              # %if.else.109.for.cond.272.preheader_crit_edge.i.i
                                        #   in Loop: Header=BB3_19 Depth=6
	movl	%edx, 404(%rsp)         # 4-byte Spill
	movq	%rcx, 312(%rsp)         # 8-byte Spill
	movl	%r13d, 296(%rsp)        # 4-byte Spill
	movq	%rbx, 304(%rsp)         # 8-byte Spill
	movl	32(%r8), %ecx
	xorl	%ebp, %ebp
.LBB3_196:                              # %for.cond.272.preheader.i.i
                                        #   in Loop: Header=BB3_19 Depth=6
	movl	%ebp, 416(%rsp)         # 4-byte Spill
	xorl	%edx, %edx
	testl	%ecx, %ecx
	je	.LBB3_183
	.align	16, 0x90
.LBB3_197:                              # %for.body.276.i.i
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        #           Parent Loop BB3_12 Depth=5
                                        #             Parent Loop BB3_19 Depth=6
                                        # =>            This Loop Header: Depth=7
                                        #                 Child Loop BB3_199 Depth 8
	movl	%edx, %edx
	movq	%rdx, 432(%rsp)         # 8-byte Spill
	cmpl	%eax, %ebp
	movl	364(%rsp), %r13d        # 4-byte Reload
	movl	404(%rsp), %r14d        # 4-byte Reload
	jae	.LBB3_200
# BB#198:                               # %for.body.287.lr.ph.i.i
                                        #   in Loop: Header=BB3_197 Depth=7
	movq	440(%rsp), %rax         # 8-byte Reload
	movq	432(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx,2), %r15
	movq	448(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rcx,4), %rbp
	movl	416(%rsp), %ebx         # 4-byte Reload
	.align	16, 0x90
.LBB3_199:                              # %for.body.287.i.i
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        #           Parent Loop BB3_12 Depth=5
                                        #             Parent Loop BB3_19 Depth=6
                                        #               Parent Loop BB3_197 Depth=7
                                        # =>              This Inner Loop Header: Depth=8
	movl	48(%r8), %eax
	leaq	(%r15,%rax,2), %r15
	movq	%r8, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	movl	%r13d, %ecx
	movq	%r8, %r12
	movl	%r14d, %r8d
	callq	opj_t1_dec_clnpass_step
	movq	%r12, %r8
	movl	32(%r8), %ecx
	movl	36(%r8), %eax
	leaq	(%rbp,%rcx,4), %rbp
	incl	%ebx
	cmpl	%eax, %ebx
	jb	.LBB3_199
.LBB3_200:                              # %for.end.296.i.i
                                        #   in Loop: Header=BB3_197 Depth=7
	movq	432(%rsp), %rdx         # 8-byte Reload
	incl	%edx
	cmpl	%ecx, %edx
	movq	368(%rsp), %r12         # 8-byte Reload
	movl	416(%rsp), %ebp         # 4-byte Reload
	jb	.LBB3_197
.LBB3_183:                              # %if.end.300.i.i
                                        #   in Loop: Header=BB3_19 Depth=6
	cmpl	$0, 236(%rsp)           # 4-byte Folded Reload
	je	.LBB3_185
# BB#184:                               # %if.then.302.i.i
                                        #   in Loop: Header=BB3_19 Depth=6
	movq	312(%rsp), %rbp         # 8-byte Reload
	leaq	184(%rbp), %rax
	movq	%rax, 192(%rbp)
	movq	%rbp, %rdi
	movq	%r8, %rbx
	callq	opj_mqc_decode
	movq	%rbp, %rdi
	callq	opj_mqc_decode
	movq	%rbp, %rdi
	callq	opj_mqc_decode
	movq	%rbp, %rdi
	callq	opj_mqc_decode
	movq	%rbx, %r8
	jmp	.LBB3_185
.LBB3_44:                               # %if.else.40.i
                                        #   in Loop: Header=BB3_19 Depth=6
	cmpl	$0, 380(%rsp)           # 4-byte Folded Reload
	jne	.LBB3_45
# BB#62:                                # %if.else.45.i
                                        #   in Loop: Header=BB3_19 Depth=6
	movq	16(%r8), %rax
	movq	%rax, 424(%rsp)         # 8-byte Spill
	movq	24(%r8), %rax
	addq	$2, %rax
	movq	%rax, 416(%rsp)         # 8-byte Spill
	movl	$1, %eax
	shll	%cl, %eax
	movl	%eax, %edx
	sarl	%edx
	orl	%eax, %edx
	movl	36(%r8), %ecx
	cmpl	$3, %ecx
	jbe	.LBB3_63
# BB#68:                                # %for.cond.1.preheader.lr.ph.i.138.i
                                        #   in Loop: Header=BB3_19 Depth=6
	movl	%edx, %eax
	movl	%edx, 440(%rsp)         # 4-byte Spill
	negl	%eax
	movl	%eax, 432(%rsp)         # 4-byte Spill
	movl	32(%r8), %eax
	xorl	%edi, %edi
	movl	%eax, %edx
	.align	16, 0x90
.LBB3_69:                               # %for.cond.1.preheader.i.139.i
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        #           Parent Loop BB3_12 Depth=5
                                        #             Parent Loop BB3_19 Depth=6
                                        # =>            This Loop Header: Depth=7
                                        #                 Child Loop BB3_70 Depth 8
	movl	%edi, 408(%rsp)         # 4-byte Spill
	testl	%edx, %edx
	movl	$0, %r13d
	movl	$0, %edx
	je	.LBB3_95
	.align	16, 0x90
.LBB3_70:                               # %for.body.3.i.i
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        #           Parent Loop BB3_12 Depth=5
                                        #             Parent Loop BB3_19 Depth=6
                                        #               Parent Loop BB3_69 Depth=7
                                        # =>              This Inner Loop Header: Depth=8
	movl	%r13d, %ecx
	movq	424(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rcx,4), %r12
	movq	416(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rcx,2), %rdx
	movl	48(%r8), %ecx
	leaq	(%rdx,%rcx,2), %r14
	movq	(%r8), %rbp
	movswl	(%rdx,%rcx,2), %ebx
	movl	%ebx, %edx
	andl	$255, %edx
	je	.LBB3_76
# BB#71:                                # %for.body.3.i.i
                                        #   in Loop: Header=BB3_70 Depth=8
	movl	%ebx, %esi
	andl	$20480, %esi            # imm = 0x5000
	jne	.LBB3_76
# BB#72:                                # %if.then.i.i.150.i
                                        #   in Loop: Header=BB3_70 Depth=8
	movq	%r8, %r15
	orl	376(%rsp), %edx         # 4-byte Folded Reload
	movzbl	lut_ctxno_zc(%rdx), %eax
	leaq	40(%rbp,%rax,8), %rax
	movq	%rax, 192(%rbp)
	movq	%rbp, %rdi
	callq	opj_mqc_decode
	testl	%eax, %eax
	je	.LBB3_73
# BB#74:                                # %if.then.7.i.i.i
                                        #   in Loop: Header=BB3_70 Depth=8
	shrl	$4, %ebx
	movzbl	%bl, %ebx
	movzbl	lut_ctxno_sc(%rbx), %eax
	leaq	40(%rbp,%rax,8), %rax
	movq	%rax, 192(%rbp)
	movq	%rbp, %rdi
	callq	opj_mqc_decode
	movzbl	lut_spb(%rbx), %ecx
	movl	%ecx, %edx
	xorl	%eax, %edx
	cmpl	%ecx, %eax
	movl	440(%rsp), %eax         # 4-byte Reload
	cmovnel	432(%rsp), %eax         # 4-byte Folded Reload
	movl	%eax, (%r12)
	movq	%r15, %r8
	movl	48(%r8), %ecx
	leaq	(%rcx,%rcx), %rax
	movq	%r14, %rsi
	subq	%rax, %rsi
	orw	$2, -2(%rsi)
	negq	%rax
	movw	opj_t1_updateflags.mod(%rdx,%rdx), %di
	orw	%di, (%rsi)
	orb	$4, 2(%r14,%rax)
	leal	2(%rdx), %eax
	movw	opj_t1_updateflags.mod(%rax,%rax), %ax
	orw	%ax, -2(%r14)
	orb	$16, 1(%r14)
	leal	4(%rdx), %eax
	movw	opj_t1_updateflags.mod(%rax,%rax), %ax
	orw	%ax, 2(%r14)
	orb	$1, -2(%r14,%rcx,2)
	addl	$6, %edx
	movw	opj_t1_updateflags.mod(%rdx,%rdx), %ax
	orw	%ax, (%r14,%rcx,2)
	orb	$8, 2(%r14,%rcx,2)
	jmp	.LBB3_75
.LBB3_73:                               # %if.then.i.if.end.i_crit_edge.i.i
                                        #   in Loop: Header=BB3_70 Depth=8
	movq	%r15, %r8
	movl	48(%r8), %ecx
.LBB3_75:                               # %if.end.i.i.155.i
                                        #   in Loop: Header=BB3_70 Depth=8
	orb	$64, 1(%r14)
	movl	32(%r8), %eax
	movq	(%r8), %rbp
.LBB3_76:                               # %opj_t1_dec_sigpass_step_mqc.exit.i.i
                                        #   in Loop: Header=BB3_70 Depth=8
	movl	%eax, %edx
	leaq	(%r12,%rdx,4), %r12
	movl	%ecx, %edx
	leaq	(%r14,%rdx,2), %r15
	movswl	(%r14,%rdx,2), %ebx
	movl	%ebx, %edx
	andl	$255, %edx
	je	.LBB3_82
# BB#77:                                # %opj_t1_dec_sigpass_step_mqc.exit.i.i
                                        #   in Loop: Header=BB3_70 Depth=8
	movl	%ebx, %esi
	andl	$20480, %esi            # imm = 0x5000
	jne	.LBB3_82
# BB#78:                                # %if.then.i.90.i.i
                                        #   in Loop: Header=BB3_70 Depth=8
	movq	%r8, %r14
	orl	376(%rsp), %edx         # 4-byte Folded Reload
	movzbl	lut_ctxno_zc(%rdx), %eax
	leaq	40(%rbp,%rax,8), %rax
	movq	%rax, 192(%rbp)
	movq	%rbp, %rdi
	callq	opj_mqc_decode
	testl	%eax, %eax
	je	.LBB3_79
# BB#80:                                # %if.then.7.i.105.i.i
                                        #   in Loop: Header=BB3_70 Depth=8
	shrl	$4, %ebx
	movzbl	%bl, %ebx
	movzbl	lut_ctxno_sc(%rbx), %eax
	leaq	40(%rbp,%rax,8), %rax
	movq	%rax, 192(%rbp)
	movq	%rbp, %rdi
	callq	opj_mqc_decode
	movzbl	lut_spb(%rbx), %ecx
	movl	%ecx, %edx
	xorl	%eax, %edx
	cmpl	%ecx, %eax
	movl	440(%rsp), %eax         # 4-byte Reload
	cmovnel	432(%rsp), %eax         # 4-byte Folded Reload
	movl	%eax, (%r12)
	movq	%r14, %r8
	movl	48(%r8), %ecx
	leaq	(%rcx,%rcx), %rax
	movq	%r15, %rsi
	subq	%rax, %rsi
	orw	$2, -2(%rsi)
	negq	%rax
	movw	opj_t1_updateflags.mod(%rdx,%rdx), %di
	orw	%di, (%rsi)
	orb	$4, 2(%r15,%rax)
	leal	2(%rdx), %eax
	movw	opj_t1_updateflags.mod(%rax,%rax), %ax
	orw	%ax, -2(%r15)
	orb	$16, 1(%r15)
	leal	4(%rdx), %eax
	movw	opj_t1_updateflags.mod(%rax,%rax), %ax
	orw	%ax, 2(%r15)
	orb	$1, -2(%r15,%rcx,2)
	addl	$6, %edx
	movw	opj_t1_updateflags.mod(%rdx,%rdx), %ax
	orw	%ax, (%r15,%rcx,2)
	orb	$8, 2(%r15,%rcx,2)
	jmp	.LBB3_81
.LBB3_79:                               # %if.then.i.90.if.end.i.107_crit_edge.i.i
                                        #   in Loop: Header=BB3_70 Depth=8
	movq	%r14, %r8
	movl	48(%r8), %ecx
.LBB3_81:                               # %if.end.i.107.i.i
                                        #   in Loop: Header=BB3_70 Depth=8
	orb	$64, 1(%r15)
	movl	32(%r8), %eax
	movq	(%r8), %rbp
.LBB3_82:                               # %opj_t1_dec_sigpass_step_mqc.exit108.i.i
                                        #   in Loop: Header=BB3_70 Depth=8
	movl	%eax, %edx
	leaq	(%r12,%rdx,4), %rdx
	movq	%rdx, 448(%rsp)         # 8-byte Spill
	movl	%ecx, %edx
	leaq	(%r15,%rdx,2), %r12
	movswl	(%r15,%rdx,2), %ebx
	movl	%ebx, %edx
	andl	$255, %edx
	je	.LBB3_88
# BB#83:                                # %opj_t1_dec_sigpass_step_mqc.exit108.i.i
                                        #   in Loop: Header=BB3_70 Depth=8
	movl	%ebx, %esi
	andl	$20480, %esi            # imm = 0x5000
	jne	.LBB3_88
# BB#84:                                # %if.then.i.125.i.i
                                        #   in Loop: Header=BB3_70 Depth=8
	movq	%r8, %r14
	orl	376(%rsp), %edx         # 4-byte Folded Reload
	movzbl	lut_ctxno_zc(%rdx), %eax
	leaq	40(%rbp,%rax,8), %rax
	movq	%rax, 192(%rbp)
	movq	%rbp, %rdi
	callq	opj_mqc_decode
	testl	%eax, %eax
	je	.LBB3_85
# BB#86:                                # %if.then.7.i.140.i.i
                                        #   in Loop: Header=BB3_70 Depth=8
	shrl	$4, %ebx
	movzbl	%bl, %ebx
	movzbl	lut_ctxno_sc(%rbx), %eax
	leaq	40(%rbp,%rax,8), %rax
	movq	%rax, 192(%rbp)
	movq	%rbp, %rdi
	callq	opj_mqc_decode
	movzbl	lut_spb(%rbx), %ecx
	movl	%ecx, %edx
	xorl	%eax, %edx
	cmpl	%ecx, %eax
	movl	440(%rsp), %eax         # 4-byte Reload
	cmovnel	432(%rsp), %eax         # 4-byte Folded Reload
	movq	448(%rsp), %rcx         # 8-byte Reload
	movl	%eax, (%rcx)
	movq	%r14, %r8
	movl	48(%r8), %ecx
	leaq	(%rcx,%rcx), %rax
	movq	%r12, %rsi
	subq	%rax, %rsi
	orw	$2, -2(%rsi)
	negq	%rax
	movw	opj_t1_updateflags.mod(%rdx,%rdx), %di
	orw	%di, (%rsi)
	orb	$4, 2(%r12,%rax)
	leal	2(%rdx), %eax
	movw	opj_t1_updateflags.mod(%rax,%rax), %ax
	orw	%ax, -2(%r12)
	orb	$16, 1(%r12)
	leal	4(%rdx), %eax
	movw	opj_t1_updateflags.mod(%rax,%rax), %ax
	orw	%ax, 2(%r12)
	orb	$1, -2(%r12,%rcx,2)
	addl	$6, %edx
	movw	opj_t1_updateflags.mod(%rdx,%rdx), %ax
	orw	%ax, (%r12,%rcx,2)
	orb	$8, 2(%r12,%rcx,2)
	jmp	.LBB3_87
.LBB3_85:                               # %if.then.i.125.if.end.i.142_crit_edge.i.i
                                        #   in Loop: Header=BB3_70 Depth=8
	movq	%r14, %r8
	movl	48(%r8), %ecx
.LBB3_87:                               # %if.end.i.142.i.i
                                        #   in Loop: Header=BB3_70 Depth=8
	orb	$64, 1(%r12)
	movl	32(%r8), %eax
	movq	(%r8), %rbp
.LBB3_88:                               # %opj_t1_dec_sigpass_step_mqc.exit143.i.i
                                        #   in Loop: Header=BB3_70 Depth=8
	movl	%eax, %r15d
	movl	%ecx, %edx
	movswl	(%r12,%rdx,2), %r14d
	movl	%r14d, %ecx
	andl	$255, %ecx
	je	.LBB3_93
# BB#89:                                # %opj_t1_dec_sigpass_step_mqc.exit143.i.i
                                        #   in Loop: Header=BB3_70 Depth=8
	movl	%r14d, %esi
	andl	$20480, %esi            # imm = 0x5000
	jne	.LBB3_93
# BB#90:                                # %if.then.i.160.i.i
                                        #   in Loop: Header=BB3_70 Depth=8
	leaq	(%r12,%rdx,2), %rbx
	orl	376(%rsp), %ecx         # 4-byte Folded Reload
	movzbl	lut_ctxno_zc(%rcx), %eax
	leaq	40(%rbp,%rax,8), %rax
	movq	%rax, 192(%rbp)
	movq	%rbp, %rdi
	movq	%r8, %r12
	callq	opj_mqc_decode
	testl	%eax, %eax
	je	.LBB3_92
# BB#91:                                # %if.then.7.i.175.i.i
                                        #   in Loop: Header=BB3_70 Depth=8
	shrl	$4, %r14d
	movzbl	%r14b, %r14d
	movzbl	lut_ctxno_sc(%r14), %eax
	leaq	40(%rbp,%rax,8), %rax
	movq	%rax, 192(%rbp)
	movq	%rbp, %rdi
	callq	opj_mqc_decode
	movzbl	lut_spb(%r14), %edx
	movl	%edx, %ecx
	xorl	%eax, %ecx
	cmpl	%edx, %eax
	movl	440(%rsp), %eax         # 4-byte Reload
	cmovnel	432(%rsp), %eax         # 4-byte Folded Reload
	movq	448(%rsp), %rdx         # 8-byte Reload
	movl	%eax, (%rdx,%r15,4)
	movl	48(%r12), %eax
	leaq	(%rax,%rax), %rdx
	movq	%rbx, %rsi
	subq	%rdx, %rsi
	orw	$2, -2(%rsi)
	negq	%rdx
	movw	opj_t1_updateflags.mod(%rcx,%rcx), %di
	orw	%di, (%rsi)
	orb	$4, 2(%rbx,%rdx)
	leal	2(%rcx), %edx
	movw	opj_t1_updateflags.mod(%rdx,%rdx), %dx
	orw	%dx, -2(%rbx)
	orb	$16, 1(%rbx)
	leal	4(%rcx), %edx
	movw	opj_t1_updateflags.mod(%rdx,%rdx), %dx
	orw	%dx, 2(%rbx)
	orb	$1, -2(%rbx,%rax,2)
	addl	$6, %ecx
	movw	opj_t1_updateflags.mod(%rcx,%rcx), %cx
	orw	%cx, (%rbx,%rax,2)
	orb	$8, 2(%rbx,%rax,2)
.LBB3_92:                               # %if.end.i.177.i.i
                                        #   in Loop: Header=BB3_70 Depth=8
	orb	$64, 1(%rbx)
	movl	32(%r12), %eax
	movq	%r12, %r8
.LBB3_93:                               # %opj_t1_dec_sigpass_step_mqc.exit178.i.i
                                        #   in Loop: Header=BB3_70 Depth=8
	incl	%r13d
	cmpl	%eax, %r13d
	jb	.LBB3_70
# BB#94:                                # %for.cond.1.for.end_crit_edge.i.i
                                        #   in Loop: Header=BB3_69 Depth=7
	movl	36(%r8), %ecx
	movl	%eax, %edx
.LBB3_95:                               # %for.end.i.i
                                        #   in Loop: Header=BB3_69 Depth=7
	leal	(,%rdx,4), %esi
	movq	424(%rsp), %rdi         # 8-byte Reload
	leaq	(%rdi,%rsi,4), %rdi
	movq	%rdi, 424(%rsp)         # 8-byte Spill
	movl	48(%r8), %esi
	shll	$2, %esi
	movq	416(%rsp), %rdi         # 8-byte Reload
	leaq	(%rdi,%rsi,2), %rdi
	movq	%rdi, 416(%rsp)         # 8-byte Spill
	movl	408(%rsp), %edi         # 4-byte Reload
	addl	$4, %edi
	movl	%ecx, %esi
	andl	$-4, %esi
	cmpl	%esi, %edi
	jb	.LBB3_69
	jmp	.LBB3_64
.LBB3_119:                              # %if.then.58.i
                                        #   in Loop: Header=BB3_19 Depth=6
	movl	$1, %eax
	shll	%cl, %eax
	sarl	%eax
	movl	%eax, 424(%rsp)         # 4-byte Spill
	movl	%eax, %ecx
	negl	%ecx
	testl	%ebx, %ebx
	movq	%rbx, 304(%rsp)         # 8-byte Spill
	movl	$-1, %eax
	cmovsl	%eax, %ecx
	movl	%ecx, 416(%rsp)         # 4-byte Spill
	movl	36(%r8), %ecx
	testl	%ecx, %ecx
	je	.LBB3_185
# BB#120:                               # %for.cond.2.preheader.lr.ph.i.198.i
                                        #   in Loop: Header=BB3_19 Depth=6
	movl	32(%r8), %eax
	xorl	%r14d, %r14d
	movl	%eax, %edx
	.align	16, 0x90
.LBB3_121:                              # %for.cond.2.preheader.i.202.i
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        #           Parent Loop BB3_12 Depth=5
                                        #             Parent Loop BB3_19 Depth=6
                                        # =>            This Loop Header: Depth=7
                                        #                 Child Loop BB3_124 Depth 8
                                        #                   Child Loop BB3_125 Depth 9
	leal	4(%r14), %edi
	movl	%edi, 432(%rsp)         # 4-byte Spill
	testl	%edx, %edx
	je	.LBB3_122
# BB#123:                               # %for.cond.5.preheader.lr.ph.i.205.i
                                        #   in Loop: Header=BB3_121 Depth=7
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB3_124:                              # %for.cond.5.preheader.i.208.i
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        #           Parent Loop BB3_12 Depth=5
                                        #             Parent Loop BB3_19 Depth=6
                                        #               Parent Loop BB3_121 Depth=7
                                        # =>              This Loop Header: Depth=8
                                        #                   Child Loop BB3_125 Depth 9
	leal	1(%r13), %r11d
	cmpl	$-4, %r14d
	movl	$0, %r12d
	je	.LBB3_129
	.align	16, 0x90
.LBB3_125:                              # %land.rhs.i.211.i
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        #           Parent Loop BB3_12 Depth=5
                                        #             Parent Loop BB3_19 Depth=6
                                        #               Parent Loop BB3_121 Depth=7
                                        #                 Parent Loop BB3_124 Depth=8
                                        # =>                This Inner Loop Header: Depth=9
	leal	(%r14,%r12), %ecx
	movl	36(%r8), %edx
	cmpl	%edx, %ecx
	jae	.LBB3_128
# BB#126:                               # %for.body.9.i.222.i
                                        #   in Loop: Header=BB3_125 Depth=9
	decl	%edx
	leal	1(%r14,%r12), %ebx
	imull	48(%r8), %ebx
	addl	%r11d, %ebx
	movq	24(%r8), %rbp
	movl	32(%r8), %r15d
	imull	%ecx, %r15d
	addl	%r13d, %r15d
	movswl	(%rbp,%rbx,2), %eax
	movl	%eax, %esi
	andl	$-1095, %esi            # imm = 0xFFFFFFFFFFFFFBB9
	cmpl	%edx, %ecx
	cmovel	%esi, %eax
	cmpl	$3, %r12d
	cmovel	%esi, %eax
	movl	%eax, %ecx
	andl	$20480, %ecx            # imm = 0x5000
	cmpl	$4096, %ecx             # imm = 0x1000
	jne	.LBB3_127
# BB#260:                               # %if.then.i.i.233.i
                                        #   in Loop: Header=BB3_125 Depth=9
	movq	(%r8), %rdi
	movq	16(%r8), %rcx
	movq	%rcx, 448(%rsp)         # 8-byte Spill
	testb	%al, %al
	setne	%cl
	movzbl	%cl, %ecx
	orq	$14, %rcx
	testb	$32, %ah
	movl	$16, %eax
	cmoveq	%rcx, %rax
	leaq	40(%rdi,%rax,8), %rax
	movq	%rax, 192(%rdi)
	movq	%rbp, 440(%rsp)         # 8-byte Spill
	movl	%r11d, %ebp
	callq	opj_mqc_decode
	movl	%ebp, %r11d
	movl	432(%rsp), %edi         # 4-byte Reload
	movq	392(%rsp), %r8          # 8-byte Reload
	testl	%eax, %eax
	movl	416(%rsp), %eax         # 4-byte Reload
	cmovnel	424(%rsp), %eax         # 4-byte Folded Reload
	movq	448(%rsp), %rsi         # 8-byte Reload
	movl	(%rsi,%r15,4), %ecx
	movl	%eax, %edx
	negl	%edx
	testl	%ecx, %ecx
	cmovnsl	%eax, %edx
	addl	%ecx, %edx
	movl	%edx, (%rsi,%r15,4)
	movq	440(%rsp), %rax         # 8-byte Reload
	orb	$32, 1(%rax,%rbx,2)
.LBB3_127:                              # %for.cond.5.backedge.i.224.i
                                        #   in Loop: Header=BB3_125 Depth=9
	leal	1(%r14,%r12), %eax
	leal	1(%r12), %ecx
	cmpl	%edi, %eax
	movl	%ecx, %r12d
	jb	.LBB3_125
.LBB3_128:                              # %for.inc.24.i.235.loopexit.i
                                        #   in Loop: Header=BB3_124 Depth=8
	movl	32(%r8), %eax
.LBB3_129:                              # %for.inc.24.i.235.i
                                        #   in Loop: Header=BB3_124 Depth=8
	cmpl	%eax, %r11d
	movl	%r11d, %r13d
	jb	.LBB3_124
# BB#130:                               # %for.cond.2.for.inc.27_crit_edge.i.i
                                        #   in Loop: Header=BB3_121 Depth=7
	movl	36(%r8), %ecx
	movl	%eax, %edx
	movq	368(%rsp), %r12         # 8-byte Reload
	jmp	.LBB3_131
	.align	16, 0x90
.LBB3_122:                              #   in Loop: Header=BB3_121 Depth=7
	xorl	%edx, %edx
.LBB3_131:                              # %for.inc.27.i.i
                                        #   in Loop: Header=BB3_121 Depth=7
	cmpl	%ecx, %edi
	movl	%edi, %r14d
	jb	.LBB3_121
	jmp	.LBB3_185
.LBB3_45:                               # %if.then.43.i
                                        #   in Loop: Header=BB3_19 Depth=6
	movl	$1, %eax
	shll	%cl, %eax
	movl	36(%r8), %ecx
	testl	%ecx, %ecx
	je	.LBB3_185
# BB#46:                                # %for.cond.1.preheader.lr.ph.i.69.i
                                        #   in Loop: Header=BB3_19 Depth=6
	movl	%eax, %edx
	sarl	%edx
	orl	%eax, %edx
	movl	%edx, 416(%rsp)         # 4-byte Spill
	negl	%edx
	movl	%edx, 408(%rsp)         # 4-byte Spill
	movl	32(%r8), %eax
	xorl	%r14d, %r14d
	movl	%eax, %edx
	.align	16, 0x90
.LBB3_47:                               # %for.cond.1.preheader.i.70.i
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        #           Parent Loop BB3_12 Depth=5
                                        #             Parent Loop BB3_19 Depth=6
                                        # =>            This Loop Header: Depth=7
                                        #                 Child Loop BB3_50 Depth 8
                                        #                   Child Loop BB3_51 Depth 9
	leal	4(%r14), %r9d
	movl	%r9d, 424(%rsp)         # 4-byte Spill
	testl	%edx, %edx
	je	.LBB3_48
# BB#49:                                # %for.cond.4.preheader.lr.ph.i.71.i
                                        #   in Loop: Header=BB3_47 Depth=7
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB3_50:                               # %for.cond.4.preheader.i.72.i
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        #           Parent Loop BB3_12 Depth=5
                                        #             Parent Loop BB3_19 Depth=6
                                        #               Parent Loop BB3_47 Depth=7
                                        # =>              This Loop Header: Depth=8
                                        #                   Child Loop BB3_51 Depth 9
	movq	%rbx, 440(%rsp)         # 8-byte Spill
	leal	1(%rbx), %r10d
	movl	%r10d, 432(%rsp)        # 4-byte Spill
	cmpl	$-4, %r14d
	movl	$0, %r13d
	je	.LBB3_56
	.align	16, 0x90
.LBB3_51:                               # %land.rhs.i.74.i
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        #           Parent Loop BB3_12 Depth=5
                                        #             Parent Loop BB3_19 Depth=6
                                        #               Parent Loop BB3_47 Depth=7
                                        #                 Parent Loop BB3_50 Depth=8
                                        # =>                This Inner Loop Header: Depth=9
	leal	(%r14,%r13), %edx
	movl	36(%r8), %esi
	cmpl	%esi, %edx
	jae	.LBB3_55
# BB#52:                                # %for.body.8.i.88.i
                                        #   in Loop: Header=BB3_51 Depth=9
	decl	%esi
	leal	1(%r14,%r13), %eax
	imull	48(%r8), %eax
	addl	%r10d, %eax
	movq	24(%r8), %rcx
	movl	32(%r8), %ebp
	imull	%edx, %ebp
	addl	%ebx, %ebp
	movswl	(%rcx,%rax,2), %r15d
	movl	%r15d, %edi
	andl	$-1095, %edi            # imm = 0xFFFFFFFFFFFFFBB9
	cmpl	%esi, %edx
	cmovel	%edi, %r15d
	cmpl	$3, %r13d
	cmovel	%edi, %r15d
	movl	%r15d, %edx
	andl	$255, %edx
	je	.LBB3_54
# BB#53:                                # %for.body.8.i.88.i
                                        #   in Loop: Header=BB3_51 Depth=9
	movl	%r15d, %esi
	andl	$20480, %esi            # imm = 0x5000
	jne	.LBB3_54
# BB#59:                                # %if.then.i.i.94.i
                                        #   in Loop: Header=BB3_51 Depth=9
	leaq	(%rcx,%rax,2), %r12
	movq	(%r8), %rbx
	movq	16(%r8), %rax
	movq	%rax, 448(%rsp)         # 8-byte Spill
	orl	376(%rsp), %edx         # 4-byte Folded Reload
	movzbl	lut_ctxno_zc(%rdx), %eax
	leaq	40(%rbx,%rax,8), %rax
	movq	%rax, 192(%rbx)
	movq	%rbx, %rdi
	callq	opj_mqc_decode
	testl	%eax, %eax
	je	.LBB3_61
# BB#60:                                # %if.then.10.i.i.i
                                        #   in Loop: Header=BB3_51 Depth=9
	shrl	$4, %r15d
	movzbl	%r15b, %r15d
	movzbl	lut_ctxno_sc(%r15), %eax
	leaq	40(%rbx,%rax,8), %rax
	movq	%rax, 192(%rbx)
	movq	%rbx, %rdi
	callq	opj_mqc_decode
	movzbl	lut_spb(%r15), %edx
	movl	%edx, %ecx
	xorl	%eax, %ecx
	cmpl	%edx, %eax
	movl	416(%rsp), %eax         # 4-byte Reload
	cmovnel	408(%rsp), %eax         # 4-byte Folded Reload
	movq	448(%rsp), %rdx         # 8-byte Reload
	movl	%eax, (%rdx,%rbp,4)
	movq	392(%rsp), %rax         # 8-byte Reload
	movl	48(%rax), %eax
	leaq	(%rax,%rax), %rdx
	movq	%r12, %rsi
	subq	%rdx, %rsi
	orw	$2, -2(%rsi)
	negq	%rdx
	movw	opj_t1_updateflags.mod(%rcx,%rcx), %di
	orw	%di, (%rsi)
	orb	$4, 2(%r12,%rdx)
	leal	2(%rcx), %edx
	movw	opj_t1_updateflags.mod(%rdx,%rdx), %dx
	orw	%dx, -2(%r12)
	orb	$16, 1(%r12)
	leal	4(%rcx), %edx
	movw	opj_t1_updateflags.mod(%rdx,%rdx), %dx
	orw	%dx, 2(%r12)
	orb	$1, -2(%r12,%rax,2)
	addl	$6, %ecx
	movw	opj_t1_updateflags.mod(%rcx,%rcx), %cx
	orw	%cx, (%r12,%rax,2)
	orb	$8, 2(%r12,%rax,2)
.LBB3_61:                               # %if.end.i.i.123.i
                                        #   in Loop: Header=BB3_51 Depth=9
	orb	$64, 1(%r12)
	movq	392(%rsp), %r8          # 8-byte Reload
	movq	368(%rsp), %r12         # 8-byte Reload
	movl	424(%rsp), %r9d         # 4-byte Reload
	movq	440(%rsp), %rbx         # 8-byte Reload
	movl	432(%rsp), %r10d        # 4-byte Reload
.LBB3_54:                               # %for.cond.4.backedge.i.90.i
                                        #   in Loop: Header=BB3_51 Depth=9
	leal	1(%r14,%r13), %eax
	leal	1(%r13), %ecx
	cmpl	%r9d, %eax
	movl	%ecx, %r13d
	jb	.LBB3_51
.LBB3_55:                               # %for.inc.21.i.loopexit.i
                                        #   in Loop: Header=BB3_50 Depth=8
	movl	32(%r8), %eax
.LBB3_56:                               # %for.inc.21.i.i
                                        #   in Loop: Header=BB3_50 Depth=8
	cmpl	%eax, %r10d
	movl	%r10d, %ebx
	jb	.LBB3_50
# BB#57:                                # %for.cond.1.for.inc.24_crit_edge.i.i
                                        #   in Loop: Header=BB3_47 Depth=7
	movl	36(%r8), %ecx
	movl	%eax, %edx
	jmp	.LBB3_58
	.align	16, 0x90
.LBB3_48:                               #   in Loop: Header=BB3_47 Depth=7
	xorl	%edx, %edx
.LBB3_58:                               # %for.inc.24.i.i
                                        #   in Loop: Header=BB3_47 Depth=7
	cmpl	%ecx, %r9d
	movl	%r9d, %r14d
	jb	.LBB3_47
	jmp	.LBB3_185
.LBB3_63:                               # %entry.for.cond.39.preheader_crit_edge.i.i
                                        #   in Loop: Header=BB3_19 Depth=6
	movl	%edx, 440(%rsp)         # 4-byte Spill
	movl	32(%r8), %eax
	xorl	%edi, %edi
.LBB3_64:                               # %for.cond.39.preheader.i.i
                                        #   in Loop: Header=BB3_19 Depth=6
	movl	%edi, 408(%rsp)         # 4-byte Spill
	testl	%eax, %eax
	movq	368(%rsp), %r12         # 8-byte Reload
	je	.LBB3_185
# BB#65:                                # %for.body.42.lr.ph.i.i
                                        #   in Loop: Header=BB3_19 Depth=6
	movl	440(%rsp), %edx         # 4-byte Reload
	negl	%edx
	movl	%edx, 448(%rsp)         # 4-byte Spill
	xorl	%esi, %esi
	.align	16, 0x90
.LBB3_66:                               # %for.body.42.i.i
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        #           Parent Loop BB3_12 Depth=5
                                        #             Parent Loop BB3_19 Depth=6
                                        # =>            This Loop Header: Depth=7
                                        #                 Child Loop BB3_97 Depth 8
	movl	%esi, %esi
	cmpl	%ecx, %edi
	jae	.LBB3_67
# BB#96:                                # %for.body.52.lr.ph.i.i
                                        #   in Loop: Header=BB3_66 Depth=7
	movq	416(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rsi,2), %r15
	movq	424(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rsi,4), %r12
	movq	%rsi, 432(%rsp)         # 8-byte Spill
	movl	%edi, %r14d
	.align	16, 0x90
.LBB3_97:                               # %for.body.52.i.i
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        #           Parent Loop BB3_12 Depth=5
                                        #             Parent Loop BB3_19 Depth=6
                                        #               Parent Loop BB3_66 Depth=7
                                        # =>              This Inner Loop Header: Depth=8
	movl	48(%r8), %edx
	movswl	(%r15,%rdx,2), %ebp
	leaq	(%r15,%rdx,2), %r15
	movl	%ebp, %edx
	andl	$255, %edx
	je	.LBB3_102
# BB#98:                                # %for.body.52.i.i
                                        #   in Loop: Header=BB3_97 Depth=8
	movl	%ebp, %esi
	andl	$20480, %esi            # imm = 0x5000
	jne	.LBB3_102
# BB#99:                                # %if.then.i.195.i.i
                                        #   in Loop: Header=BB3_97 Depth=8
	movq	(%r8), %rbx
	orl	376(%rsp), %edx         # 4-byte Folded Reload
	movzbl	lut_ctxno_zc(%rdx), %eax
	leaq	40(%rbx,%rax,8), %rax
	movq	%rax, 192(%rbx)
	movq	%rbx, %rdi
	movq	%r8, %r13
	callq	opj_mqc_decode
	testl	%eax, %eax
	je	.LBB3_101
# BB#100:                               # %if.then.7.i.210.i.i
                                        #   in Loop: Header=BB3_97 Depth=8
	shrl	$4, %ebp
	movzbl	%bpl, %ebp
	movzbl	lut_ctxno_sc(%rbp), %eax
	leaq	40(%rbx,%rax,8), %rax
	movq	%rax, 192(%rbx)
	movq	%rbx, %rdi
	callq	opj_mqc_decode
	movzbl	lut_spb(%rbp), %edx
	movl	%edx, %ecx
	xorl	%eax, %ecx
	cmpl	%edx, %eax
	movl	440(%rsp), %eax         # 4-byte Reload
	cmovnel	448(%rsp), %eax         # 4-byte Folded Reload
	movl	%eax, (%r12)
	movl	48(%r13), %eax
	leaq	(%rax,%rax), %rdx
	movq	%r15, %rsi
	subq	%rdx, %rsi
	orw	$2, -2(%rsi)
	negq	%rdx
	movw	opj_t1_updateflags.mod(%rcx,%rcx), %di
	orw	%di, (%rsi)
	orb	$4, 2(%r15,%rdx)
	leal	2(%rcx), %edx
	movw	opj_t1_updateflags.mod(%rdx,%rdx), %dx
	orw	%dx, -2(%r15)
	orb	$16, 1(%r15)
	leal	4(%rcx), %edx
	movw	opj_t1_updateflags.mod(%rdx,%rdx), %dx
	orw	%dx, 2(%r15)
	orb	$1, -2(%r15,%rax,2)
	addl	$6, %ecx
	movw	opj_t1_updateflags.mod(%rcx,%rcx), %cx
	orw	%cx, (%r15,%rax,2)
	orb	$8, 2(%r15,%rax,2)
.LBB3_101:                              # %if.end.i.212.i.i
                                        #   in Loop: Header=BB3_97 Depth=8
	orb	$64, 1(%r15)
	movl	32(%r13), %eax
	movl	36(%r13), %ecx
	movq	%r13, %r8
.LBB3_102:                              # %opj_t1_dec_sigpass_step_mqc.exit213.i.i
                                        #   in Loop: Header=BB3_97 Depth=8
	movl	%eax, %edx
	leaq	(%r12,%rdx,4), %r12
	incl	%r14d
	cmpl	%ecx, %r14d
	jb	.LBB3_97
	jmp	.LBB3_103
	.align	16, 0x90
.LBB3_67:                               #   in Loop: Header=BB3_66 Depth=7
	movq	%rsi, 432(%rsp)         # 8-byte Spill
.LBB3_103:                              # %for.end.61.i.i
                                        #   in Loop: Header=BB3_66 Depth=7
	movq	432(%rsp), %rsi         # 8-byte Reload
	incl	%esi
	cmpl	%eax, %esi
	movq	368(%rsp), %r12         # 8-byte Reload
	movl	408(%rsp), %edi         # 4-byte Reload
	jb	.LBB3_66
	.align	16, 0x90
.LBB3_185:                              # %sw.epilog.i
                                        #   in Loop: Header=BB3_19 Depth=6
	cmpb	$0, 279(%rsp)           # 1-byte Folded Reload
	movq	288(%rsp), %rbp         # 8-byte Reload
	movq	304(%rsp), %rbx         # 8-byte Reload
	jne	.LBB3_187
# BB#186:                               # %if.then.72.i
                                        #   in Loop: Header=BB3_19 Depth=6
	movq	%rbp, %rdi
	movq	%r8, %r14
	callq	opj_mqc_resetstates
	movl	$18, %esi
	xorl	%edx, %edx
	movl	$46, %ecx
	movq	%rbp, %rdi
	callq	opj_mqc_setstate
	movl	$17, %esi
	xorl	%edx, %edx
	movl	$3, %ecx
	movq	%rbp, %rdi
	callq	opj_mqc_setstate
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$4, %ecx
	movq	%rbp, %rdi
	callq	opj_mqc_setstate
	movq	%r14, %r8
.LBB3_187:                              # %if.end.73.i
                                        #   in Loop: Header=BB3_19 Depth=6
	movl	296(%rsp), %r13d        # 4-byte Reload
	incl	%r13d
	cmpl	$3, %r13d
	sete	%al
	movzbl	%al, %eax
	movl	$0, %ecx
	cmovel	%ecx, %r13d
	subl	%eax, %ebx
	movl	300(%rsp), %ecx         # 4-byte Reload
	incl	%ecx
	movq	280(%rsp), %rax         # 8-byte Reload
	cmpl	(%rax), %ecx
	jb	.LBB3_19
	jmp	.LBB3_188
	.align	16, 0x90
.LBB3_17:                               #   in Loop: Header=BB3_12 Depth=5
	movq	%r14, %r8
	movq	288(%rsp), %rbp         # 8-byte Reload
.LBB3_188:                              # %for.inc.79.loopexit.i
                                        #   in Loop: Header=BB3_12 Depth=5
	movq	%rbp, 288(%rsp)         # 8-byte Spill
	movq	184(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %esi
.LBB3_189:                              # %for.inc.79.i
                                        #   in Loop: Header=BB3_12 Depth=5
	movq	224(%rsp), %rcx         # 8-byte Reload
	incl	%ecx
	cmpl	%esi, %ecx
	jb	.LBB3_12
.LBB3_190:                              # %if.end
                                        #   in Loop: Header=BB3_8 Depth=4
	movq	144(%rsp), %rcx         # 8-byte Reload
	leaq	16(%rcx,%r12), %rax
	leaq	20(%rcx,%r12), %rcx
	movl	(%rax), %edi
	movq	88(%rsp), %rax          # 8-byte Reload
	subl	(%rax), %edi
	movl	(%rcx), %esi
	movq	80(%rsp), %rax          # 8-byte Reload
	subl	(%rax), %esi
	movq	128(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	testb	$1, %al
	je	.LBB3_192
# BB#191:                               # %if.then.25
                                        #   in Loop: Header=BB3_8 Depth=4
	movq	136(%rsp), %rcx         # 8-byte Reload
	movq	24(%rcx), %rcx
	imulq	$176, 72(%rsp), %rdx    # 8-byte Folded Reload
	addl	8(%rcx,%rdx), %edi
	subl	(%rcx,%rdx), %edi
.LBB3_192:                              # %if.end.33
                                        #   in Loop: Header=BB3_8 Depth=4
	testb	$2, %al
	jne	.LBB3_221
# BB#193:                               #   in Loop: Header=BB3_8 Depth=4
	movl	%edi, 416(%rsp)         # 4-byte Spill
	jmp	.LBB3_222
	.align	16, 0x90
.LBB3_221:                              # %if.then.37
                                        #   in Loop: Header=BB3_8 Depth=4
	movl	%edi, 416(%rsp)         # 4-byte Spill
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rax
	imulq	$176, 72(%rsp), %rcx    # 8-byte Folded Reload
	addl	12(%rax,%rcx), %esi
	subl	4(%rax,%rcx), %esi
.LBB3_222:                              # %if.end.46
                                        #   in Loop: Header=BB3_8 Depth=4
	movq	%rsi, 424(%rsp)         # 8-byte Spill
	movq	16(%r8), %r14
	movl	32(%r8), %r13d
	movq	%r13, 432(%rsp)         # 8-byte Spill
	movl	36(%r8), %eax
	movl	%eax, 440(%rsp)         # 4-byte Spill
	movq	248(%rsp), %rax         # 8-byte Reload
	movl	808(%rax), %ecx
	testl	%ecx, %ecx
	je	.LBB3_230
# BB#223:                               # %if.then.49
                                        #   in Loop: Header=BB3_8 Depth=4
	movl	$1, %ebp
	shll	%cl, %ebp
	cmpl	$0, 440(%rsp)           # 4-byte Folded Reload
	je	.LBB3_230
# BB#224:                               # %for.cond.54.preheader.lr.ph
                                        #   in Loop: Header=BB3_8 Depth=4
	xorl	%eax, %eax
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB3_225:                              # %for.cond.54.preheader
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB3_226 Depth 6
	movl	%eax, 448(%rsp)         # 4-byte Spill
	testl	%r13d, %r13d
	movl	%r13d, %r15d
	movl	%eax, %r13d
	je	.LBB3_229
	.align	16, 0x90
.LBB3_226:                              # %for.body.56
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        #           Parent Loop BB3_225 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movl	%r13d, %r13d
	movl	(%r14,%r13,4), %ebx
	movl	%ebx, %edi
	callq	abs
	cmpl	%ebp, %eax
	jl	.LBB3_228
# BB#227:                               # %if.then.63
                                        #   in Loop: Header=BB3_226 Depth=6
	movq	248(%rsp), %rcx         # 8-byte Reload
	movb	808(%rcx), %cl
	sarl	%cl, %eax
	movl	%eax, %ecx
	negl	%ecx
	testl	%ebx, %ebx
	cmovnsl	%eax, %ecx
	movl	%ecx, (%r14,%r13,4)
.LBB3_228:                              # %if.end.71
                                        #   in Loop: Header=BB3_226 Depth=6
	incl	%r13d
	decl	%r15d
	jne	.LBB3_226
.LBB3_229:                              # %for.inc.72
                                        #   in Loop: Header=BB3_225 Depth=5
	incl	%r12d
	movq	432(%rsp), %r13         # 8-byte Reload
	movl	448(%rsp), %eax         # 4-byte Reload
	addl	%r13d, %eax
	cmpl	440(%rsp), %r12d        # 4-byte Folded Reload
	jne	.LBB3_225
.LBB3_230:                              # %if.end.75
                                        #   in Loop: Header=BB3_8 Depth=4
	movq	192(%rsp), %rax         # 8-byte Reload
	movq	424(%rsp), %rdx         # 8-byte Reload
	imull	%eax, %edx
	addl	416(%rsp), %edx         # 4-byte Folded Reload
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	40(%rax), %rax
	movq	248(%rsp), %rcx         # 8-byte Reload
	cmpl	$1, 20(%rcx)
	jne	.LBB3_240
# BB#231:                               # %for.cond.83.preheader
                                        #   in Loop: Header=BB3_8 Depth=4
	movl	440(%rsp), %r12d        # 4-byte Reload
	testl	%r12d, %r12d
	je	.LBB3_251
# BB#232:                               # %for.cond.86.preheader.lr.ph
                                        #   in Loop: Header=BB3_8 Depth=4
	leaq	(%rax,%rdx,4), %r15
	movl	%r13d, %r8d
	andl	$1, %r8d
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	.align	16, 0x90
.LBB3_233:                              # %for.cond.86.preheader
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB3_238 Depth 6
	testl	%r13d, %r13d
	je	.LBB3_239
# BB#234:                               # %for.body.88.lr.ph
                                        #   in Loop: Header=BB3_233 Depth=5
	testl	%r8d, %r8d
	movl	$0, %ebx
	je	.LBB3_236
# BB#235:                               # %for.body.88.prol
                                        #   in Loop: Header=BB3_233 Depth=5
	movl	%r11d, %ecx
	imull	%r13d, %ecx
	movl	%r11d, %edx
	movq	192(%rsp), %rax         # 8-byte Reload
	imull	%eax, %edx
	movl	%ecx, %ecx
	movl	(%r14,%rcx,4), %ecx
	movl	%ecx, %esi
	shrl	$31, %esi
	addl	%ecx, %esi
	sarl	%esi
	movl	%edx, %ecx
	movl	%esi, (%r15,%rcx,4)
	movl	$1, %ebx
.LBB3_236:                              # %for.body.88.lr.ph.split
                                        #   in Loop: Header=BB3_233 Depth=5
	cmpl	$1, %r13d
	je	.LBB3_239
# BB#237:                               # %for.body.88.lr.ph.split.split
                                        #   in Loop: Header=BB3_233 Depth=5
	leal	1(%rbx), %ebp
	movl	%r9d, %ecx
	movl	%r10d, %edx
	movl	%r13d, %esi
	.align	16, 0x90
.LBB3_238:                              # %for.body.88
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        #           Parent Loop BB3_233 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	leal	(%rbx,%rcx), %edi
	movl	(%r14,%rdi,4), %eax
	movl	%eax, %edi
	shrl	$31, %edi
	addl	%eax, %edi
	sarl	%edi
	leal	(%rbx,%rdx), %eax
	movl	%edi, (%r15,%rax,4)
	leal	(%rbp,%rcx), %eax
	movl	(%r14,%rax,4), %eax
	movl	%eax, %edi
	shrl	$31, %edi
	addl	%eax, %edi
	sarl	%edi
	leal	(%rbp,%rdx), %eax
	movl	%edi, (%r15,%rax,4)
	addl	$-2, %esi
	addl	$2, %edx
	addl	$2, %ecx
	cmpl	%esi, %ebx
	jne	.LBB3_238
.LBB3_239:                              # %for.inc.100
                                        #   in Loop: Header=BB3_233 Depth=5
	incl	%r11d
	movq	192(%rsp), %rax         # 8-byte Reload
	addl	%eax, %r10d
	addl	%r13d, %r9d
	cmpl	%r12d, %r11d
	jne	.LBB3_233
	jmp	.LBB3_251
	.align	16, 0x90
.LBB3_240:                              # %if.else
                                        #   in Loop: Header=BB3_8 Depth=4
	movl	440(%rsp), %r11d        # 4-byte Reload
	testl	%r11d, %r11d
	je	.LBB3_251
# BB#241:                               # %for.cond.114.preheader.lr.ph
                                        #   in Loop: Header=BB3_8 Depth=4
	leal	-1(%r13), %r8d
	movl	%r13d, %r10d
	andl	$3, %r10d
	leaq	(%rax,%rdx,4), %rdx
	xorl	%r9d, %r9d
	.align	16, 0x90
.LBB3_242:                              # %for.cond.114.preheader
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB3_244 Depth 6
                                        #             Child Loop BB3_248 Depth 6
	testl	%r13d, %r13d
	je	.LBB3_250
# BB#243:                               # %for.body.116.lr.ph
                                        #   in Loop: Header=BB3_242 Depth=5
	xorl	%esi, %esi
	testl	%r10d, %r10d
	movl	$0, %ebx
	movq	%rdx, %rdi
	movq	%r14, %rbp
	movq	152(%rsp), %rcx         # 8-byte Reload
	je	.LBB3_246
	.align	16, 0x90
.LBB3_244:                              # %for.body.116.prol
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        #           Parent Loop BB3_242 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movq	%rsi, %rax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	(%r14,%rax), %xmm0
	mulss	(%rcx), %xmm0
	movss	%xmm0, (%rdx,%rax)
	incl	%ebx
	leaq	4(%rax), %rsi
	cmpl	%ebx, %r10d
	jne	.LBB3_244
# BB#245:                               #   in Loop: Header=BB3_242 Depth=5
	leaq	4(%rdx,%rax), %rdi
	leaq	4(%r14,%rax), %rbp
	movl	%ebx, %esi
.LBB3_246:                              # %for.body.116.lr.ph.split
                                        #   in Loop: Header=BB3_242 Depth=5
	addq	$4, %r14
	cmpl	$3, %r8d
	jb	.LBB3_249
# BB#247:                               # %for.body.116.lr.ph.split.split
                                        #   in Loop: Header=BB3_242 Depth=5
	movl	%r13d, %ebx
	subl	%esi, %ebx
	.align	16, 0x90
.LBB3_248:                              # %for.body.116
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_8 Depth=4
                                        #           Parent Loop BB3_242 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	xorps	%xmm0, %xmm0
	cvtsi2ssl	(%rbp), %xmm0
	mulss	(%rcx), %xmm0
	movss	%xmm0, (%rdi)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	4(%rbp), %xmm0
	mulss	(%rcx), %xmm0
	movss	%xmm0, 4(%rdi)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	8(%rbp), %xmm0
	mulss	(%rcx), %xmm0
	movss	%xmm0, 8(%rdi)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	12(%rbp), %xmm0
	mulss	(%rcx), %xmm0
	movss	%xmm0, 12(%rdi)
	addq	$16, %rbp
	addq	$16, %rdi
	addl	$-4, %ebx
	jne	.LBB3_248
.LBB3_249:                              # %for.cond.114.for.end.123_crit_edge
                                        #   in Loop: Header=BB3_242 Depth=5
	leaq	(%r14,%r8,4), %r14
.LBB3_250:                              # %for.end.123
                                        #   in Loop: Header=BB3_242 Depth=5
	addq	176(%rsp), %rdx         # 8-byte Folded Reload
	incl	%r9d
	cmpl	%r11d, %r9d
	jne	.LBB3_242
.LBB3_251:                              # %for.inc.135
                                        #   in Loop: Header=BB3_8 Depth=4
	movq	120(%rsp), %rbx         # 8-byte Reload
	incl	%ebx
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	movq	104(%rsp), %rcx         # 8-byte Reload
	imull	(%rcx), %eax
	cmpl	%eax, %ebx
	movq	392(%rsp), %rdi         # 8-byte Reload
	jb	.LBB3_8
# BB#252:                               # %for.cond.11.for.inc.141_crit_edge
                                        #   in Loop: Header=BB3_6 Depth=3
	movq	32(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %r8d
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	(%rcx), %r9d
	movq	64(%rsp), %rbx          # 8-byte Reload
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	40(%rsp), %r10          # 8-byte Reload
	movq	48(%rsp), %rcx          # 8-byte Reload
	.align	16, 0x90
.LBB3_253:                              # %for.inc.141
                                        #   in Loop: Header=BB3_6 Depth=3
	incl	%ecx
	movl	%r9d, %edx
	imull	%r8d, %edx
	cmpl	%edx, %ecx
	jb	.LBB3_6
# BB#254:                               # %for.cond.6.for.inc.147_crit_edge
                                        #   in Loop: Header=BB3_4 Depth=2
	movq	8(%rsp), %rdx           # 8-byte Reload
	movl	(%rdx), %edx
	movq	16(%rsp), %rbp          # 8-byte Reload
	.align	16, 0x90
.LBB3_255:                              # %for.inc.147
                                        #   in Loop: Header=BB3_4 Depth=2
	incl	%eax
	cmpl	%edx, %eax
	jb	.LBB3_4
# BB#256:                               # %for.cond.1.for.inc.153_crit_edge
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	136(%rsp), %rax         # 8-byte Reload
	movl	20(%rax), %ecx
	movq	(%rsp), %rsi            # 8-byte Reload
	.align	16, 0x90
.LBB3_257:                              # %for.inc.153
                                        #   in Loop: Header=BB3_2 Depth=1
	incl	%esi
	movl	$1, %eax
	cmpl	%ecx, %esi
	jb	.LBB3_2
	jmp	.LBB3_258
.LBB3_9:
	xorl	%eax, %eax
.LBB3_258:                              # %cleanup.156
	addq	$456, %rsp              # imm = 0x1C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	opj_t1_decode_cblks, .Lfunc_end3-opj_t1_decode_cblks
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_0:
	.long	1174405120              # float 8192
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_1:
	.quad	4607182418800017408     # double 1
.LCPI4_2:
	.quad	4548635623644200960     # double 1.220703125E-4
	.text
	.globl	opj_t1_encode_cblks
	.align	16, 0x90
	.type	opj_t1_encode_cblks,@function
opj_t1_encode_cblks:                    # @opj_t1_encode_cblks
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
	subq	$536, %rsp              # imm = 0x218
.Ltmp36:
	.cfi_def_cfa_offset 592
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
	movq	%rcx, 256(%rsp)         # 8-byte Spill
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movq	%rsi, 264(%rsp)         # 8-byte Spill
	movq	$0, 40(%rsi)
	movl	16(%rsi), %ecx
	movl	$1, %eax
	testl	%ecx, %ecx
	je	.LBB4_214
# BB#1:                                 # %for.body.lr.ph
	xorl	%ebp, %ebp
.LBB4_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_4 Depth 2
                                        #       Child Loop BB4_6 Depth 3
                                        #         Child Loop BB4_8 Depth 4
                                        #           Child Loop BB4_10 Depth 5
                                        #             Child Loop BB4_19 Depth 6
                                        #               Child Loop BB4_24 Depth 7
                                        #             Child Loop BB4_28 Depth 6
                                        #               Child Loop BB4_33 Depth 7
                                        #             Child Loop BB4_38 Depth 6
                                        #             Child Loop BB4_41 Depth 6
                                        #             Child Loop BB4_44 Depth 6
                                        #             Child Loop BB4_48 Depth 6
                                        #               Child Loop BB4_53 Depth 7
                                        #                 Child Loop BB4_56 Depth 8
                                        #                   Child Loop BB4_57 Depth 9
                                        #               Child Loop BB4_83 Depth 7
                                        #                 Child Loop BB4_86 Depth 8
                                        #                   Child Loop BB4_87 Depth 9
                                        #               Child Loop BB4_109 Depth 7
                                        #                 Child Loop BB4_112 Depth 8
                                        #                   Child Loop BB4_138 Depth 9
                                        #             Child Loop BB4_196 Depth 6
	movl	%ebp, %ebp
	movq	264(%rsp), %rax         # 8-byte Reload
	movq	24(%rax), %rax
	imulq	$56, %rbp, %rsi
	movl	16(%rax,%rsi), %edx
	testl	%edx, %edx
	je	.LBB4_213
# BB#3:                                 # %for.body.5.lr.ph
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	64(%rsp), %rcx          # 8-byte Reload
	movq	5584(%rcx), %rcx
	movl	8(%rax,%rsi), %ebx
	subl	(%rax,%rsi), %ebx
	movl	%ebx, 308(%rsp)         # 4-byte Spill
	leaq	16(%rax,%rsi), %rbx
	movq	%rbx, 104(%rsp)         # 8-byte Spill
	leaq	24(%rax,%rsi), %r8
	movq	%r8, 160(%rsp)          # 8-byte Spill
	leaq	40(%rax,%rsi), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	imulq	$1080, %rbp, %rax       # imm = 0x438
	leaq	20(%rcx,%rax), %rsi
	movq	%rsi, 184(%rsp)         # 8-byte Spill
	leaq	16(%rcx,%rax), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	xorl	%ecx, %ecx
.LBB4_4:                                # %for.body.5
                                        #   Parent Loop BB4_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_6 Depth 3
                                        #         Child Loop BB4_8 Depth 4
                                        #           Child Loop BB4_10 Depth 5
                                        #             Child Loop BB4_19 Depth 6
                                        #               Child Loop BB4_24 Depth 7
                                        #             Child Loop BB4_28 Depth 6
                                        #               Child Loop BB4_33 Depth 7
                                        #             Child Loop BB4_38 Depth 6
                                        #             Child Loop BB4_41 Depth 6
                                        #             Child Loop BB4_44 Depth 6
                                        #             Child Loop BB4_48 Depth 6
                                        #               Child Loop BB4_53 Depth 7
                                        #                 Child Loop BB4_56 Depth 8
                                        #                   Child Loop BB4_57 Depth 9
                                        #               Child Loop BB4_83 Depth 7
                                        #                 Child Loop BB4_86 Depth 8
                                        #                   Child Loop BB4_87 Depth 9
                                        #               Child Loop BB4_109 Depth 7
                                        #                 Child Loop BB4_112 Depth 8
                                        #                   Child Loop BB4_138 Depth 9
                                        #             Child Loop BB4_196 Depth 6
	movl	%ecx, %ecx
	movq	(%r8), %rsi
	imulq	$176, %rcx, %rax
	movl	24(%rsi,%rax), %ebx
	testl	%ebx, %ebx
	je	.LBB4_211
# BB#5:                                 # %for.body.10.lr.ph
                                        #   in Loop: Header=BB4_4 Depth=2
	leaq	24(%rsi,%rax), %rdx
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	leaq	16(%rsi,%rax), %rdx
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	leaq	20(%rsi,%rax), %rdx
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movl	%ecx, %edx
	notl	%edx
	movl	%edx, 100(%rsp)         # 4-byte Spill
	leal	-1(%rcx), %edx
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	movq	%rcx, (%rsp)            # 8-byte Spill
	movl	16(%rsi,%rax), %r14d
	movl	20(%rsi,%rax), %r15d
	xorl	%edx, %edx
.LBB4_6:                                # %for.body.10
                                        #   Parent Loop BB4_2 Depth=1
                                        #     Parent Loop BB4_4 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_8 Depth 4
                                        #           Child Loop BB4_10 Depth 5
                                        #             Child Loop BB4_19 Depth 6
                                        #               Child Loop BB4_24 Depth 7
                                        #             Child Loop BB4_28 Depth 6
                                        #               Child Loop BB4_33 Depth 7
                                        #             Child Loop BB4_38 Depth 6
                                        #             Child Loop BB4_41 Depth 6
                                        #             Child Loop BB4_44 Depth 6
                                        #             Child Loop BB4_48 Depth 6
                                        #               Child Loop BB4_53 Depth 7
                                        #                 Child Loop BB4_56 Depth 8
                                        #                   Child Loop BB4_57 Depth 9
                                        #               Child Loop BB4_83 Depth 7
                                        #                 Child Loop BB4_86 Depth 8
                                        #                   Child Loop BB4_87 Depth 9
                                        #               Child Loop BB4_109 Depth 7
                                        #                 Child Loop BB4_112 Depth 8
                                        #                   Child Loop BB4_138 Depth 9
                                        #             Child Loop BB4_196 Depth 6
	movl	%edx, %edx
	movl	%r15d, %ecx
	imull	%r14d, %ecx
	testl	%ecx, %ecx
	je	.LBB4_209
# BB#7:                                 # %for.body.18.lr.ph
                                        #   in Loop: Header=BB4_6 Depth=3
	movq	%rbp, 248(%rsp)         # 8-byte Spill
	movq	%rdi, %r12
	movq	%r12, 496(%rsp)         # 8-byte Spill
	leaq	(%rsi,%rax), %rbx
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	leaq	(%rdx,%rdx,2), %rbp
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	shlq	$4, %rbp
	leaq	72(%rbp,%rbx), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI4_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %ecx
	movl	$67108864, %eax         # imm = 0x4000000
	xorl	%edx, %edx
	idivl	%ecx
	leaq	56(%rbp,%rbx), %rsi
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	leaq	32(%rbp,%rbx), %rcx
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	leaq	36(%rbp,%rbx), %rcx
	movq	%rcx, 144(%rsp)         # 8-byte Spill
	leaq	48(%rbp,%rbx), %rcx
	movq	%rcx, 192(%rsp)         # 8-byte Spill
	cltq
	movq	%rax, 232(%rsp)         # 8-byte Spill
	xorl	%ebp, %ebp
.LBB4_8:                                # %for.body.18
                                        #   Parent Loop BB4_2 Depth=1
                                        #     Parent Loop BB4_4 Depth=2
                                        #       Parent Loop BB4_6 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB4_10 Depth 5
                                        #             Child Loop BB4_19 Depth 6
                                        #               Child Loop BB4_24 Depth 7
                                        #             Child Loop BB4_28 Depth 6
                                        #               Child Loop BB4_33 Depth 7
                                        #             Child Loop BB4_38 Depth 6
                                        #             Child Loop BB4_41 Depth 6
                                        #             Child Loop BB4_44 Depth 6
                                        #             Child Loop BB4_48 Depth 6
                                        #               Child Loop BB4_53 Depth 7
                                        #                 Child Loop BB4_56 Depth 8
                                        #                   Child Loop BB4_57 Depth 9
                                        #               Child Loop BB4_83 Depth 7
                                        #                 Child Loop BB4_86 Depth 8
                                        #                   Child Loop BB4_87 Depth 9
                                        #               Child Loop BB4_109 Depth 7
                                        #                 Child Loop BB4_112 Depth 8
                                        #                   Child Loop BB4_138 Depth 9
                                        #             Child Loop BB4_196 Depth 6
	movl	%ebp, %ebp
	movq	(%rsi), %rax
	imulq	$56, %rbp, %rcx
	movl	20(%rax,%rcx), %edx
	imull	16(%rax,%rcx), %edx
	testl	%edx, %edx
	movq	%r12, %rdi
	je	.LBB4_207
# BB#9:                                 # %for.body.25.lr.ph
                                        #   in Loop: Header=BB4_8 Depth=4
	movq	%rbp, 72(%rsp)          # 8-byte Spill
	leaq	16(%rax,%rcx), %rdx
	movq	%rdx, 128(%rsp)         # 8-byte Spill
	leaq	20(%rax,%rcx), %rdx
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	leaq	24(%rax,%rcx), %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB4_10:                               # %for.body.25
                                        #   Parent Loop BB4_2 Depth=1
                                        #     Parent Loop BB4_4 Depth=2
                                        #       Parent Loop BB4_6 Depth=3
                                        #         Parent Loop BB4_8 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB4_19 Depth 6
                                        #               Child Loop BB4_24 Depth 7
                                        #             Child Loop BB4_28 Depth 6
                                        #               Child Loop BB4_33 Depth 7
                                        #             Child Loop BB4_38 Depth 6
                                        #             Child Loop BB4_41 Depth 6
                                        #             Child Loop BB4_44 Depth 6
                                        #             Child Loop BB4_48 Depth 6
                                        #               Child Loop BB4_53 Depth 7
                                        #                 Child Loop BB4_56 Depth 8
                                        #                   Child Loop BB4_57 Depth 9
                                        #               Child Loop BB4_83 Depth 7
                                        #                 Child Loop BB4_86 Depth 8
                                        #                   Child Loop BB4_87 Depth 9
                                        #               Child Loop BB4_109 Depth 7
                                        #                 Child Loop BB4_112 Depth 8
                                        #                   Child Loop BB4_138 Depth 9
                                        #             Child Loop BB4_196 Depth 6
	movl	%ebp, %ebp
	movq	168(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %r9
	movq	%rbp, %rdx
	shlq	$6, %rdx
	movl	24(%r9,%rdx), %ecx
	movl	28(%r9,%rdx), %eax
	movq	%rdx, %r10
	movl	%ecx, %r14d
	movq	152(%rsp), %rdx         # 8-byte Reload
	subl	(%rdx), %r14d
	movl	%eax, %r13d
	movq	144(%rsp), %rdx         # 8-byte Reload
	subl	(%rdx), %r13d
	movq	192(%rsp), %rdx         # 8-byte Reload
	movl	(%rdx), %edx
	testb	$1, %dl
	jne	.LBB4_12
# BB#11:                                #   in Loop: Header=BB4_10 Depth=5
	movq	160(%rsp), %r8          # 8-byte Reload
	jmp	.LBB4_13
	.align	16, 0x90
.LBB4_12:                               # %if.then
                                        #   in Loop: Header=BB4_10 Depth=5
	movq	160(%rsp), %r8          # 8-byte Reload
	movq	(%r8), %rsi
	imulq	$176, 136(%rsp), %rbx   # 8-byte Folded Reload
	addl	8(%rsi,%rbx), %r14d
	subl	(%rsi,%rbx), %r14d
.LBB4_13:                               # %if.end
                                        #   in Loop: Header=BB4_10 Depth=5
	testb	$2, %dl
	je	.LBB4_15
# BB#14:                                # %if.then.44
                                        #   in Loop: Header=BB4_10 Depth=5
	movq	(%r8), %rdx
	imulq	$176, 136(%rsp), %rsi   # 8-byte Folded Reload
	addl	12(%rdx,%rsi), %r13d
	subl	4(%rdx,%rsi), %r13d
.LBB4_15:                               # %if.end.53
                                        #   in Loop: Header=BB4_10 Depth=5
	movq	%r9, 216(%rsp)          # 8-byte Spill
	movq	%r10, 208(%rsp)         # 8-byte Spill
	movl	32(%r9,%r10), %esi
	movl	36(%r9,%r10), %edx
	subl	%ecx, %esi
	subl	%eax, %edx
	movq	%rdi, %rbx
	callq	opj_t1_allocate_buffers
	movq	%rbx, %rdx
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB4_214
# BB#16:                                # %if.end.63
                                        #   in Loop: Header=BB4_10 Depth=5
	movq	%rbp, 176(%rsp)         # 8-byte Spill
	movq	16(%rdx), %r12
	movl	32(%rdx), %r10d
	movl	36(%rdx), %r9d
	imull	308(%rsp), %r13d        # 4-byte Folded Reload
	addl	%r14d, %r13d
	shlq	$2, %r13
	movq	88(%rsp), %rax          # 8-byte Reload
	addq	(%rax), %r13
	movq	184(%rsp), %rax         # 8-byte Reload
	cmpl	$1, (%rax)
	jne	.LBB4_17
# BB#26:                                # %for.cond.72.preheader
                                        #   in Loop: Header=BB4_10 Depth=5
	testl	%r9d, %r9d
	je	.LBB4_35
# BB#27:                                # %for.cond.76.preheader.lr.ph
                                        #   in Loop: Header=BB4_10 Depth=5
	movl	%r10d, %r8d
	andl	$1, %r8d
	xorl	%r11d, %r11d
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB4_28:                               # %for.cond.76.preheader
                                        #   Parent Loop BB4_2 Depth=1
                                        #     Parent Loop BB4_4 Depth=2
                                        #       Parent Loop BB4_6 Depth=3
                                        #         Parent Loop BB4_8 Depth=4
                                        #           Parent Loop BB4_10 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB4_33 Depth 7
	testl	%r10d, %r10d
	je	.LBB4_34
# BB#29:                                # %for.body.79.lr.ph
                                        #   in Loop: Header=BB4_28 Depth=6
	testl	%r8d, %r8d
	movl	$0, %eax
	je	.LBB4_31
# BB#30:                                # %for.body.79.prol
                                        #   in Loop: Header=BB4_28 Depth=6
	movl	%r15d, %eax
	imull	308(%rsp), %eax         # 4-byte Folded Reload
	movl	%r15d, %ecx
	imull	%r10d, %ecx
	movl	%eax, %eax
	movl	(%r13,%rax,4), %eax
	shll	$6, %eax
	movl	%ecx, %ecx
	movl	%eax, (%r12,%rcx,4)
	movl	$1, %eax
.LBB4_31:                               # %for.body.79.lr.ph.split
                                        #   in Loop: Header=BB4_28 Depth=6
	cmpl	$1, %r10d
	je	.LBB4_34
# BB#32:                                # %for.body.79.lr.ph.split.split
                                        #   in Loop: Header=BB4_28 Depth=6
	leal	1(%rax), %ecx
	movl	%r11d, %ebp
	movl	%r14d, %esi
	movl	%r10d, %edi
	.align	16, 0x90
.LBB4_33:                               # %for.body.79
                                        #   Parent Loop BB4_2 Depth=1
                                        #     Parent Loop BB4_4 Depth=2
                                        #       Parent Loop BB4_6 Depth=3
                                        #         Parent Loop BB4_8 Depth=4
                                        #           Parent Loop BB4_10 Depth=5
                                        #             Parent Loop BB4_28 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	leal	(%rax,%rbp), %edx
	movl	(%r13,%rdx,4), %edx
	shll	$6, %edx
	leal	(%rax,%rsi), %ebx
	movl	%edx, (%r12,%rbx,4)
	leal	(%rcx,%rbp), %edx
	movl	(%r13,%rdx,4), %edx
	shll	$6, %edx
	leal	(%rcx,%rsi), %ebx
	movl	%edx, (%r12,%rbx,4)
	addl	$-2, %edi
	addl	$2, %esi
	addl	$2, %ebp
	cmpl	%edi, %eax
	jne	.LBB4_33
.LBB4_34:                               # %for.inc.88
                                        #   in Loop: Header=BB4_28 Depth=6
	incl	%r15d
	addl	%r10d, %r14d
	addl	308(%rsp), %r11d        # 4-byte Folded Reload
	cmpl	%r9d, %r15d
	jne	.LBB4_28
	jmp	.LBB4_35
	.align	16, 0x90
.LBB4_17:                               # %for.cond.91.preheader
                                        #   in Loop: Header=BB4_10 Depth=5
	testl	%r9d, %r9d
	je	.LBB4_35
# BB#18:                                # %for.cond.95.preheader.lr.ph
                                        #   in Loop: Header=BB4_10 Depth=5
	movl	%r10d, %eax
	andl	$1, %eax
	movl	%eax, 528(%rsp)         # 4-byte Spill
	xorl	%r11d, %r11d
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB4_19:                               # %for.cond.95.preheader
                                        #   Parent Loop BB4_2 Depth=1
                                        #     Parent Loop BB4_4 Depth=2
                                        #       Parent Loop BB4_6 Depth=3
                                        #         Parent Loop BB4_8 Depth=4
                                        #           Parent Loop BB4_10 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB4_24 Depth 7
	testl	%r10d, %r10d
	movq	232(%rsp), %r8          # 8-byte Reload
	je	.LBB4_25
# BB#20:                                # %for.body.98.lr.ph
                                        #   in Loop: Header=BB4_19 Depth=6
	cmpl	$0, 528(%rsp)           # 4-byte Folded Reload
	movl	$0, %ecx
	je	.LBB4_22
# BB#21:                                # %for.body.98.prol
                                        #   in Loop: Header=BB4_19 Depth=6
	movl	%r15d, %eax
	imull	308(%rsp), %eax         # 4-byte Folded Reload
	movl	%r15d, %ecx
	imull	%r10d, %ecx
	movl	%eax, %eax
	movslq	(%r13,%rax,4), %rax
	imulq	%r8, %rax
	movl	%eax, %edx
	andl	$4096, %edx             # imm = 0x1000
	addq	%rax, %rdx
	shrq	$13, %rdx
	sarl	$5, %edx
	movl	%ecx, %eax
	movl	%edx, (%r12,%rax,4)
	movl	$1, %ecx
.LBB4_22:                               # %for.body.98.lr.ph.split
                                        #   in Loop: Header=BB4_19 Depth=6
	cmpl	$1, %r10d
	je	.LBB4_25
# BB#23:                                # %for.body.98.lr.ph.split.split
                                        #   in Loop: Header=BB4_19 Depth=6
	leal	1(%rcx), %eax
	movl	%r11d, %esi
	movl	%r14d, %edi
	movl	%r10d, %edx
	.align	16, 0x90
.LBB4_24:                               # %for.body.98
                                        #   Parent Loop BB4_2 Depth=1
                                        #     Parent Loop BB4_4 Depth=2
                                        #       Parent Loop BB4_6 Depth=3
                                        #         Parent Loop BB4_8 Depth=4
                                        #           Parent Loop BB4_10 Depth=5
                                        #             Parent Loop BB4_19 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	leal	(%rcx,%rsi), %ebx
	movslq	(%r13,%rbx,4), %rbx
	imulq	%r8, %rbx
	movl	%ebx, %ebp
	andl	$4096, %ebp             # imm = 0x1000
	addq	%rbx, %rbp
	shrq	$13, %rbp
	sarl	$5, %ebp
	leal	(%rcx,%rdi), %ebx
	movl	%ebp, (%r12,%rbx,4)
	leal	(%rax,%rsi), %ebx
	movslq	(%r13,%rbx,4), %rbx
	imulq	%r8, %rbx
	movl	%ebx, %ebp
	andl	$4096, %ebp             # imm = 0x1000
	addq	%rbx, %rbp
	shrq	$13, %rbp
	sarl	$5, %ebp
	leal	(%rax,%rdi), %ebx
	movl	%ebp, (%r12,%rbx,4)
	addl	$-2, %edx
	addl	$2, %edi
	addl	$2, %esi
	cmpl	%edx, %ecx
	jne	.LBB4_24
.LBB4_25:                               # %for.inc.113
                                        #   in Loop: Header=BB4_19 Depth=6
	incl	%r15d
	addl	%r10d, %r14d
	addl	308(%rsp), %r11d        # 4-byte Folded Reload
	cmpl	%r9d, %r15d
	jne	.LBB4_19
.LBB4_35:                               # %if.end.116
                                        #   in Loop: Header=BB4_10 Depth=5
	movq	192(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movl	%eax, 304(%rsp)         # 4-byte Spill
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	addl	100(%rsp), %eax         # 4-byte Folded Reload
	movl	%eax, 296(%rsp)         # 4-byte Spill
	movq	184(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movl	%eax, 300(%rsp)         # 4-byte Spill
	movq	112(%rsp), %rax         # 8-byte Reload
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 528(%rsp)        # 4-byte Spill
	movq	80(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %eax
	movl	%eax, 204(%rsp)         # 4-byte Spill
	movq	496(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movl	32(%rax), %r14d
	imull	36(%rax), %r14d
	testl	%r14d, %r14d
	movl	$0, %ebp
	je	.LBB4_46
# BB#36:                                # %for.body.lr.ph.i
                                        #   in Loop: Header=BB4_10 Depth=5
	movq	%rdi, 368(%rsp)         # 8-byte Spill
	leaq	-1(%r14), %r13
	xorl	%r15d, %r15d
	testb	$3, %r14b
	movl	$0, %ebp
	je	.LBB4_39
# BB#37:                                # %for.body.i.prol.preheader
                                        #   in Loop: Header=BB4_10 Depth=5
	movl	%r14d, %ebx
	andl	$3, %ebx
	xorl	%r15d, %r15d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB4_38:                               # %for.body.i.prol
                                        #   Parent Loop BB4_2 Depth=1
                                        #     Parent Loop BB4_4 Depth=2
                                        #       Parent Loop BB4_6 Depth=3
                                        #         Parent Loop BB4_8 Depth=4
                                        #           Parent Loop BB4_10 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movl	(%r12,%r15,4), %edi
	callq	abs
	cmpl	%eax, %ebp
	cmovll	%eax, %ebp
	incq	%r15
	cmpq	%r15, %rbx
	jne	.LBB4_38
.LBB4_39:                               # %for.body.lr.ph.i.split
                                        #   in Loop: Header=BB4_10 Depth=5
	cmpq	$3, %r13
	movl	%ebp, %ebx
	jb	.LBB4_42
# BB#40:                                # %for.body.lr.ph.i.split.split
                                        #   in Loop: Header=BB4_10 Depth=5
	subq	%r15, %r14
	leaq	12(%r12,%r15,4), %r15
	.align	16, 0x90
.LBB4_41:                               # %for.body.i
                                        #   Parent Loop BB4_2 Depth=1
                                        #     Parent Loop BB4_4 Depth=2
                                        #       Parent Loop BB4_6 Depth=3
                                        #         Parent Loop BB4_8 Depth=4
                                        #           Parent Loop BB4_10 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movl	-12(%r15), %edi
	callq	abs
	movl	%eax, %ebx
	cmpl	%ebx, %ebp
	cmovgel	%ebp, %ebx
	movl	-8(%r15), %edi
	callq	abs
	cmpl	%eax, %ebx
	cmovll	%eax, %ebx
	movl	-4(%r15), %edi
	callq	abs
	cmpl	%eax, %ebx
	cmovll	%eax, %ebx
	movl	(%r15), %edi
	callq	abs
	cmpl	%eax, %ebx
	cmovll	%eax, %ebx
	addq	$16, %r15
	addq	$-4, %r14
	movl	%ebx, %ebp
	jne	.LBB4_41
.LBB4_42:                               # %for.end.i
                                        #   in Loop: Header=BB4_10 Depth=5
	xorl	%ebp, %ebp
	testl	%ebx, %ebx
	movq	368(%rsp), %rdi         # 8-byte Reload
	je	.LBB4_46
# BB#43:                                # %cond.true.i
                                        #   in Loop: Header=BB4_10 Depth=5
	movl	$-5, %ebp
	movl	$-1, %eax
	cmpl	$2, %ebx
	jl	.LBB4_46
	.align	16, 0x90
.LBB4_44:                               # %for.body.i.i
                                        #   Parent Loop BB4_2 Depth=1
                                        #     Parent Loop BB4_4 Depth=2
                                        #       Parent Loop BB4_6 Depth=3
                                        #         Parent Loop BB4_8 Depth=4
                                        #           Parent Loop BB4_10 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	sarl	%ebx
	incl	%eax
	cmpl	$1, %ebx
	jg	.LBB4_44
# BB#45:                                # %opj_int_floorlog2.exit.loopexit.i
                                        #   in Loop: Header=BB4_10 Depth=5
	addl	$-4, %eax
	movl	%eax, %ebp
	.align	16, 0x90
.LBB4_46:                               # %cond.end.i
                                        #   in Loop: Header=BB4_10 Depth=5
	movq	%rdi, 368(%rsp)         # 8-byte Spill
	movq	216(%rsp), %r14         # 8-byte Reload
	movq	208(%rsp), %r15         # 8-byte Reload
	movl	%ebp, 40(%r14,%r15)
	movq	%rdi, %rbx
	callq	opj_mqc_resetstates
	movl	$18, %esi
	xorl	%edx, %edx
	movl	$46, %ecx
	movq	%rbx, %rdi
	callq	opj_mqc_setstate
	movl	$17, %esi
	xorl	%edx, %edx
	movl	$3, %ecx
	movq	%rbx, %rdi
	callq	opj_mqc_setstate
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$4, %ecx
	movq	%rbx, %rdi
	callq	opj_mqc_setstate
	movq	(%r14,%r15), %rsi
	movq	%rbx, %rdi
	callq	opj_mqc_init_enc
	decl	%ebp
	movl	$0, %edx
	movq	%rbp, %rsi
	js	.LBB4_190
# BB#47:                                # %for.body.9.lr.ph.i
                                        #   in Loop: Header=BB4_10 Depth=5
	movss	528(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 288(%rsp)        # 8-byte Spill
	movq	216(%rsp), %rax         # 8-byte Reload
	movq	208(%rsp), %rcx         # 8-byte Reload
	leaq	40(%rax,%rcx), %rdx
	movq	%rdx, 344(%rsp)         # 8-byte Spill
	leaq	16(%rax,%rcx), %rax
	movq	%rax, 280(%rsp)         # 8-byte Spill
	movl	204(%rsp), %eax         # 4-byte Reload
	movl	%eax, %ecx
	andl	$1, %ecx
	movl	%ecx, 356(%rsp)         # 4-byte Spill
	movl	%eax, %ecx
	andl	$4, %ecx
	movl	%ecx, 276(%rsp)         # 4-byte Spill
	movl	%eax, %ecx
	andl	$2, %ecx
	movl	%ecx, 272(%rsp)         # 4-byte Spill
	movl	%eax, %ecx
	andl	$8, %ecx
	movl	%ecx, 528(%rsp)         # 4-byte Spill
	movl	304(%rsp), %ecx         # 4-byte Reload
	shll	$8, %ecx
	movl	%ecx, 456(%rsp)         # 4-byte Spill
	andl	$32, %eax
	movl	%eax, 228(%rsp)         # 4-byte Spill
	movl	$2, %r12d
	xorl	%edx, %edx
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 360(%rsp)        # 8-byte Spill
	movl	$0, 520(%rsp)           # 4-byte Folded Spill
	.align	16, 0x90
.LBB4_48:                               # %for.body.9.i
                                        #   Parent Loop BB4_2 Depth=1
                                        #     Parent Loop BB4_4 Depth=2
                                        #       Parent Loop BB4_6 Depth=3
                                        #         Parent Loop BB4_8 Depth=4
                                        #           Parent Loop BB4_10 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB4_53 Depth 7
                                        #                 Child Loop BB4_56 Depth 8
                                        #                   Child Loop BB4_57 Depth 9
                                        #               Child Loop BB4_83 Depth 7
                                        #                 Child Loop BB4_86 Depth 8
                                        #                   Child Loop BB4_87 Depth 9
                                        #               Child Loop BB4_109 Depth 7
                                        #                 Child Loop BB4_112 Depth 8
                                        #                   Child Loop BB4_138 Depth 9
	cmpl	$0, 356(%rsp)           # 4-byte Folded Reload
	setne	%bl
	movq	344(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	addl	$-4, %eax
	cmpl	%eax, %esi
	setl	%al
	cmpl	$2, %r12d
	sbbb	%cl, %cl
	cmpl	$2, %r12d
	movl	%edx, %edx
	movq	280(%rsp), %rdi         # 8-byte Reload
	movq	(%rdi), %rdi
	movq	%rdi, 328(%rsp)         # 8-byte Spill
	je	.LBB4_107
# BB#49:                                # %for.body.9.i
                                        #   in Loop: Header=BB4_48 Depth=6
	andb	%al, %cl
	andb	%cl, %bl
	movb	%bl, 512(%rsp)          # 1-byte Spill
	cmpl	$1, %r12d
	jne	.LBB4_50
# BB#81:                                # %sw.bb.20.i
                                        #   in Loop: Header=BB4_48 Depth=6
	movl	%r12d, 340(%rsp)        # 4-byte Spill
	movq	%rdx, 320(%rsp)         # 8-byte Spill
	leal	6(%rsi), %ecx
	movl	%ecx, 480(%rsp)         # 4-byte Spill
	movq	%rsi, 472(%rsp)         # 8-byte Spill
	movl	$1, %eax
	shll	%cl, %eax
	movl	%eax, 464(%rsp)         # 4-byte Spill
	movq	496(%rsp), %r8          # 8-byte Reload
	movl	36(%r8), %ecx
	movl	$0, 520(%rsp)           # 4-byte Folded Spill
	testl	%ecx, %ecx
	je	.LBB4_159
# BB#82:                                # %for.cond.1.preheader.lr.ph.i.29.i
                                        #   in Loop: Header=BB4_48 Depth=6
	movl	32(%r8), %eax
	movl	$0, 520(%rsp)           # 4-byte Folded Spill
	movl	%eax, %edx
	xorl	%r11d, %r11d
	.align	16, 0x90
.LBB4_83:                               # %for.cond.1.preheader.i.33.i
                                        #   Parent Loop BB4_2 Depth=1
                                        #     Parent Loop BB4_4 Depth=2
                                        #       Parent Loop BB4_6 Depth=3
                                        #         Parent Loop BB4_8 Depth=4
                                        #           Parent Loop BB4_10 Depth=5
                                        #             Parent Loop BB4_48 Depth=6
                                        # =>            This Loop Header: Depth=7
                                        #                 Child Loop BB4_86 Depth 8
                                        #                   Child Loop BB4_87 Depth 9
	movq	%r11, 488(%rsp)         # 8-byte Spill
	leal	4(%r11), %r9d
	movl	%r9d, 504(%rsp)         # 4-byte Spill
	testl	%edx, %edx
	je	.LBB4_84
# BB#85:                                # %for.cond.4.preheader.lr.ph.i.36.i
                                        #   in Loop: Header=BB4_83 Depth=7
	xorl	%r14d, %r14d
	movl	520(%rsp), %edi         # 4-byte Reload
	.align	16, 0x90
.LBB4_86:                               # %for.cond.4.preheader.i.39.i
                                        #   Parent Loop BB4_2 Depth=1
                                        #     Parent Loop BB4_4 Depth=2
                                        #       Parent Loop BB4_6 Depth=3
                                        #         Parent Loop BB4_8 Depth=4
                                        #           Parent Loop BB4_10 Depth=5
                                        #             Parent Loop BB4_48 Depth=6
                                        #               Parent Loop BB4_83 Depth=7
                                        # =>              This Loop Header: Depth=8
                                        #                   Child Loop BB4_87 Depth 9
	movq	%r14, 520(%rsp)         # 8-byte Spill
	leal	1(%r14), %r13d
	cmpl	$-4, %r11d
	movl	$0, %r12d
	je	.LBB4_97
	.align	16, 0x90
.LBB4_87:                               # %land.rhs.i.42.i
                                        #   Parent Loop BB4_2 Depth=1
                                        #     Parent Loop BB4_4 Depth=2
                                        #       Parent Loop BB4_6 Depth=3
                                        #         Parent Loop BB4_8 Depth=4
                                        #           Parent Loop BB4_10 Depth=5
                                        #             Parent Loop BB4_48 Depth=6
                                        #               Parent Loop BB4_83 Depth=7
                                        #                 Parent Loop BB4_86 Depth=8
                                        # =>                This Inner Loop Header: Depth=9
	leal	(%r11,%r12), %ecx
	movl	36(%r8), %eax
	cmpl	%eax, %ecx
	jae	.LBB4_88
# BB#89:                                # %for.body.9.i.43.i
                                        #   in Loop: Header=BB4_87 Depth=9
	cmpl	$0, 528(%rsp)           # 4-byte Folded Reload
	jne	.LBB4_91
# BB#90:                                #   in Loop: Header=BB4_87 Depth=9
	xorl	%edx, %edx
	jmp	.LBB4_93
	.align	16, 0x90
.LBB4_91:                               # %land.rhs.10.i.45.i
                                        #   in Loop: Header=BB4_87 Depth=9
	movb	$1, %dl
	cmpl	$3, %r12d
	je	.LBB4_93
# BB#92:                                # %lor.rhs.i.48.i
                                        #   in Loop: Header=BB4_87 Depth=9
	decl	%eax
	cmpl	%eax, %ecx
	sete	%dl
.LBB4_93:                               # %land.end.15.i.62.i
                                        #   in Loop: Header=BB4_87 Depth=9
	leal	1(%r11,%r12), %ebp
	imull	48(%r8), %ebp
	addl	%r13d, %ebp
	movq	24(%r8), %r15
	movswl	(%r15,%rbp,2), %esi
	movl	%esi, %eax
	andl	$-1095, %eax            # imm = 0xFFFFFFFFFFFFFBB9
	testb	%dl, %dl
	cmovel	%esi, %eax
	movl	%eax, %edx
	andl	$20480, %edx            # imm = 0x5000
	cmpl	$4096, %edx             # imm = 0x1000
	jne	.LBB4_94
# BB#100:                               # %if.then.i.i.68.i
                                        #   in Loop: Header=BB4_87 Depth=9
	movl	%edi, %r9d
	movq	(%r8), %rdi
	movq	16(%r8), %rdx
	imull	32(%r8), %ecx
	addl	%r14d, %ecx
	movl	(%rdx,%rcx,4), %ecx
	movl	%ecx, %edx
	negl	%edx
	cmovll	%ecx, %edx
	cmpl	$7, 480(%rsp)           # 4-byte Folded Reload
	jb	.LBB4_102
# BB#101:                               # %if.then.i.i.i.71.i
                                        #   in Loop: Header=BB4_87 Depth=9
	movl	%edx, %esi
	movq	472(%rsp), %rcx         # 8-byte Reload
	shrl	%cl, %esi
	andl	$127, %esi
	leaq	lut_nmsedec_ref(%rsi,%rsi), %rcx
	jmp	.LBB4_103
	.align	16, 0x90
.LBB4_94:                               #   in Loop: Header=BB4_87 Depth=9
	movl	%edi, %ebx
	jmp	.LBB4_95
	.align	16, 0x90
.LBB4_102:                              # %if.end.i.i.i.74.i
                                        #   in Loop: Header=BB4_87 Depth=9
	movl	%edx, %ecx
	andl	$127, %ecx
	leaq	lut_nmsedec_ref0(%rcx,%rcx), %rcx
.LBB4_103:                              # %opj_t1_getnmsedec_ref.exit.i.i.i
                                        #   in Loop: Header=BB4_87 Depth=9
	movq	%r8, %r14
	movswl	(%rcx), %ebx
	addl	%r9d, %ebx
	testl	464(%rsp), %edx         # 4-byte Folded Reload
	setne	%cl
	movzbl	%cl, %esi
	testb	%al, %al
	setne	%cl
	movzbl	%cl, %ecx
	orq	$14, %rcx
	testb	$32, %ah
	movl	$16, %eax
	cmovneq	%rax, %rcx
	leaq	40(%rdi,%rcx,8), %rax
	movq	%rax, 192(%rdi)
	cmpb	$0, 512(%rsp)           # 1-byte Folded Reload
	je	.LBB4_106
# BB#104:                               # %if.then.16.i.i.81.i
                                        #   in Loop: Header=BB4_87 Depth=9
	callq	opj_mqc_bypass_enc
	jmp	.LBB4_105
	.align	16, 0x90
.LBB4_106:                              # %if.else.i.i.82.i
                                        #   in Loop: Header=BB4_87 Depth=9
	callq	opj_mqc_encode
.LBB4_105:                              # %for.cond.4.backedge.i.64.i
                                        #   in Loop: Header=BB4_87 Depth=9
	orb	$32, 1(%r15,%rbp,2)
	movq	%r14, %r8
	movl	504(%rsp), %r9d         # 4-byte Reload
	movq	488(%rsp), %r11         # 8-byte Reload
	movq	520(%rsp), %r14         # 8-byte Reload
.LBB4_95:                               # %for.cond.4.backedge.i.64.i
                                        #   in Loop: Header=BB4_87 Depth=9
	leal	1(%r11,%r12), %eax
	leal	1(%r12), %ecx
	cmpl	%r9d, %eax
	movl	%ecx, %r12d
	movl	%ebx, %edi
	jb	.LBB4_87
	jmp	.LBB4_96
	.align	16, 0x90
.LBB4_88:                               #   in Loop: Header=BB4_86 Depth=8
	movl	%edi, %ebx
.LBB4_96:                               # %for.inc.24.i.86.loopexit.i
                                        #   in Loop: Header=BB4_86 Depth=8
	movl	32(%r8), %eax
	movl	%ebx, %edi
.LBB4_97:                               # %for.inc.24.i.86.i
                                        #   in Loop: Header=BB4_86 Depth=8
	cmpl	%eax, %r13d
	movl	%r13d, %r14d
	jb	.LBB4_86
# BB#98:                                # %for.cond.1.for.inc.27_crit_edge.i.88.i
                                        #   in Loop: Header=BB4_83 Depth=7
	movl	%edi, 520(%rsp)         # 4-byte Spill
	movl	36(%r8), %ecx
	movl	%eax, %edx
	jmp	.LBB4_99
	.align	16, 0x90
.LBB4_84:                               #   in Loop: Header=BB4_83 Depth=7
	xorl	%edx, %edx
.LBB4_99:                               # %for.inc.27.i.90.i
                                        #   in Loop: Header=BB4_83 Depth=7
	cmpl	%ecx, %r9d
	movl	%r9d, %r11d
	jb	.LBB4_83
	jmp	.LBB4_159
	.align	16, 0x90
.LBB4_107:                              # %sw.bb.21.i
                                        #   in Loop: Header=BB4_48 Depth=6
	movl	%r12d, 340(%rsp)        # 4-byte Spill
	movq	%rdx, 320(%rsp)         # 8-byte Spill
	leal	6(%rsi), %ecx
	movl	%ecx, 464(%rsp)         # 4-byte Spill
	movq	%rsi, 472(%rsp)         # 8-byte Spill
	movl	$1, %eax
	shll	%cl, %eax
	movl	%eax, 440(%rsp)         # 4-byte Spill
	movq	496(%rsp), %r10         # 8-byte Reload
	movl	36(%r10), %ecx
	movl	$0, 520(%rsp)           # 4-byte Folded Spill
	testl	%ecx, %ecx
	je	.LBB4_157
# BB#108:                               # %for.cond.2.preheader.lr.ph.i.i
                                        #   in Loop: Header=BB4_48 Depth=6
	movq	(%r10), %r12
	movq	%r12, 400(%rsp)         # 8-byte Spill
	leaq	176(%r12), %rax
	movq	%rax, 312(%rsp)         # 8-byte Spill
	leaq	184(%r12), %rax
	movq	%rax, 240(%rsp)         # 8-byte Spill
	movl	32(%r10), %eax
	movl	$0, 520(%rsp)           # 4-byte Folded Spill
	movl	%eax, %edx
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB4_109:                              # %for.cond.2.preheader.i.i
                                        #   Parent Loop BB4_2 Depth=1
                                        #     Parent Loop BB4_4 Depth=2
                                        #       Parent Loop BB4_6 Depth=3
                                        #         Parent Loop BB4_8 Depth=4
                                        #           Parent Loop BB4_10 Depth=5
                                        #             Parent Loop BB4_48 Depth=6
                                        # =>            This Loop Header: Depth=7
                                        #                 Child Loop BB4_112 Depth 8
                                        #                   Child Loop BB4_138 Depth 9
	movq	%rbx, 432(%rsp)         # 8-byte Spill
	testl	%edx, %edx
	je	.LBB4_110
# BB#111:                               # %for.body.4.lr.ph.i.i
                                        #   in Loop: Header=BB4_109 Depth=7
	movl	%ebx, %r13d
	orl	$3, %r13d
	movl	%r13d, 420(%rsp)        # 4-byte Spill
	movl	%ebx, %edx
	orl	$1, %edx
	movq	%rdx, 424(%rsp)         # 8-byte Spill
	leal	1(%rdx), %esi
	movl	%esi, 396(%rsp)         # 4-byte Spill
	leal	3(%rdx), %edx
	movl	%edx, 392(%rsp)         # 4-byte Spill
	leal	4(%rbx), %r8d
	movl	%r8d, 444(%rsp)         # 4-byte Spill
	leal	1(%rbx), %edx
	movl	%edx, 388(%rsp)         # 4-byte Spill
	leal	2(%rbx), %edx
	movl	%edx, 384(%rsp)         # 4-byte Spill
	leal	3(%rbx), %edx
	movl	%edx, 380(%rsp)         # 4-byte Spill
	movl	%r13d, %edx
	negl	%edx
	movq	%rdx, 408(%rsp)         # 8-byte Spill
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB4_112:                              # %for.body.4.i.i
                                        #   Parent Loop BB4_2 Depth=1
                                        #     Parent Loop BB4_4 Depth=2
                                        #       Parent Loop BB4_6 Depth=3
                                        #         Parent Loop BB4_8 Depth=4
                                        #           Parent Loop BB4_10 Depth=5
                                        #             Parent Loop BB4_48 Depth=6
                                        #               Parent Loop BB4_109 Depth=7
                                        # =>              This Loop Header: Depth=8
                                        #                   Child Loop BB4_138 Depth 9
	movq	%rbp, 504(%rsp)         # 8-byte Spill
	cmpl	%ecx, %r13d
	jae	.LBB4_113
# BB#114:                               # %if.then.i.107.i
                                        #   in Loop: Header=BB4_112 Depth=8
	movl	48(%r10), %ecx
	movl	%ecx, %edx
	movq	424(%rsp), %rsi         # 8-byte Reload
	imull	%esi, %edx
	leal	1(%rbp), %r9d
	leal	1(%rdx,%rbp), %esi
	movq	24(%r10), %rdx
	movzwl	(%rdx,%rsi,2), %esi
	andl	$20735, %esi            # imm = 0x50FF
	cmpl	$0, 528(%rsp)           # 4-byte Folded Reload
	jne	.LBB4_115
# BB#121:                               # %if.else.i.108.i
                                        #   in Loop: Header=BB4_112 Depth=8
	movl	$0, 512(%rsp)           # 4-byte Folded Spill
	testw	%si, %si
	je	.LBB4_123
# BB#122:                               #   in Loop: Header=BB4_112 Depth=8
	xorl	%edi, %edi
	jmp	.LBB4_136
	.align	16, 0x90
.LBB4_113:                              # %for.body.4.i.if.end.135.i_crit_edge.i
                                        #   in Loop: Header=BB4_112 Depth=8
	leal	1(%rbp), %r9d
	movl	$0, 512(%rsp)           # 4-byte Folded Spill
	xorl	%edi, %edi
	jmp	.LBB4_136
	.align	16, 0x90
.LBB4_115:                              # %if.then.8.i.i
                                        #   in Loop: Header=BB4_112 Depth=8
	movl	$0, 512(%rsp)           # 4-byte Folded Spill
	testw	%si, %si
	je	.LBB4_117
# BB#116:                               #   in Loop: Header=BB4_112 Depth=8
	xorl	%edi, %edi
	jmp	.LBB4_136
.LBB4_123:                              # %lor.lhs.false.63.i.i
                                        #   in Loop: Header=BB4_112 Depth=8
	movl	%ecx, %esi
	imull	396(%rsp), %esi         # 4-byte Folded Reload
	addl	%r9d, %esi
	movzwl	(%rdx,%rsi,2), %esi
	movl	$0, 512(%rsp)           # 4-byte Folded Spill
	testw	$20735, %si             # imm = 0x50FF
	je	.LBB4_125
# BB#124:                               #   in Loop: Header=BB4_112 Depth=8
	xorl	%edi, %edi
	jmp	.LBB4_136
.LBB4_117:                              # %lor.lhs.false.i.i
                                        #   in Loop: Header=BB4_112 Depth=8
	movl	%ecx, %esi
	imull	396(%rsp), %esi         # 4-byte Folded Reload
	addl	%r9d, %esi
	movzwl	(%rdx,%rsi,2), %esi
	movl	$0, 512(%rsp)           # 4-byte Folded Spill
	testw	$20735, %si             # imm = 0x50FF
	je	.LBB4_119
# BB#118:                               #   in Loop: Header=BB4_112 Depth=8
	xorl	%edi, %edi
	jmp	.LBB4_136
.LBB4_125:                              # %lor.lhs.false.76.i.i
                                        #   in Loop: Header=BB4_112 Depth=8
	movl	%ecx, %esi
	imull	%r13d, %esi
	addl	%r9d, %esi
	movzwl	(%rdx,%rsi,2), %esi
	movl	$0, 512(%rsp)           # 4-byte Folded Spill
	testw	$20735, %si             # imm = 0x50FF
	je	.LBB4_127
# BB#126:                               #   in Loop: Header=BB4_112 Depth=8
	xorl	%edi, %edi
	jmp	.LBB4_136
.LBB4_119:                              # %lor.lhs.false.26.i.i
                                        #   in Loop: Header=BB4_112 Depth=8
	movl	%ecx, %esi
	imull	%r13d, %esi
	addl	%r9d, %esi
	movzwl	(%rdx,%rsi,2), %esi
	movl	$0, 512(%rsp)           # 4-byte Folded Spill
	testw	$20735, %si             # imm = 0x50FF
	je	.LBB4_129
# BB#120:                               #   in Loop: Header=BB4_112 Depth=8
	xorl	%edi, %edi
	jmp	.LBB4_136
.LBB4_127:                              # %lor.rhs.89.i.i
                                        #   in Loop: Header=BB4_112 Depth=8
	imull	392(%rsp), %ecx         # 4-byte Folded Reload
	addl	%r9d, %ecx
	movzwl	(%rdx,%rcx,2), %ecx
	movl	$0, 512(%rsp)           # 4-byte Folded Spill
	testw	$20735, %cx             # imm = 0x50FF
	je	.LBB4_131
# BB#128:                               #   in Loop: Header=BB4_112 Depth=8
	xorl	%edi, %edi
	jmp	.LBB4_136
.LBB4_129:                              # %if.end.106.i.i
                                        #   in Loop: Header=BB4_112 Depth=8
	imull	392(%rsp), %ecx         # 4-byte Folded Reload
	addl	%r9d, %ecx
	movzwl	(%rdx,%rcx,2), %ecx
	movl	$0, 512(%rsp)           # 4-byte Folded Spill
	testw	$20665, %cx             # imm = 0x50B9
	je	.LBB4_131
# BB#130:                               #   in Loop: Header=BB4_112 Depth=8
	xorl	%edi, %edi
	jmp	.LBB4_136
.LBB4_131:                              # %for.cond.109.preheader.i.i
                                        #   in Loop: Header=BB4_112 Depth=8
	movl	%r9d, 488(%rsp)         # 4-byte Spill
	movl	%r8d, 444(%rsp)         # 4-byte Spill
	movq	16(%r10), %rcx
	movq	%r10, %r14
	movl	%eax, %edx
	imull	%ebx, %edx
	leal	(%rdx,%rbp), %edx
	movl	(%rcx,%rdx,4), %edx
	movl	%edx, %esi
	negl	%esi
	cmovll	%edx, %esi
	xorl	%r15d, %r15d
	movl	440(%rsp), %edi         # 4-byte Reload
	testl	%edi, %esi
	jne	.LBB4_133
# BB#132:                               # %for.inc.i.i
                                        #   in Loop: Header=BB4_112 Depth=8
	movl	%eax, %edx
	imull	388(%rsp), %edx         # 4-byte Folded Reload
	leal	(%rdx,%rbp), %edx
	movl	(%rcx,%rdx,4), %edx
	movl	%edx, %esi
	negl	%esi
	cmovll	%edx, %esi
	movl	$1, %r15d
	testl	%edi, %esi
	jne	.LBB4_133
# BB#163:                               # %for.inc.1.i.i
                                        #   in Loop: Header=BB4_112 Depth=8
	movl	%eax, %edx
	imull	384(%rsp), %edx         # 4-byte Folded Reload
	leal	(%rdx,%rbp), %edx
	movl	(%rcx,%rdx,4), %edx
	movl	%edx, %esi
	negl	%esi
	cmovll	%edx, %esi
	movl	$2, %r15d
	testl	%edi, %esi
	jne	.LBB4_133
# BB#164:                               # %for.inc.2.i.i
                                        #   in Loop: Header=BB4_112 Depth=8
	imull	380(%rsp), %eax         # 4-byte Folded Reload
	leal	(%rax,%rbp), %eax
	movl	(%rcx,%rax,4), %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovll	%eax, %ecx
	andl	%edi, %ecx
	cmpl	$1, %ecx
	movl	$3, %r15d
	adcl	$0, %r15d
.LBB4_133:                              # %for.end.i.i
                                        #   in Loop: Header=BB4_112 Depth=8
	movq	312(%rsp), %rax         # 8-byte Reload
	movq	%rax, 192(%r12)
	cmpl	$4, %r15d
	setne	%al
	movzbl	%al, %esi
	movq	%r12, %rdi
	callq	opj_mqc_encode
	cmpl	$4, %r15d
	jne	.LBB4_135
# BB#134:                               #   in Loop: Header=BB4_112 Depth=8
	movq	%r14, %r10
	movl	444(%rsp), %r8d         # 4-byte Reload
	movl	488(%rsp), %r9d         # 4-byte Reload
	jmp	.LBB4_154
.LBB4_135:                              # %if.end.129.i.i
                                        #   in Loop: Header=BB4_112 Depth=8
	movq	240(%rsp), %rax         # 8-byte Reload
	movq	%rax, 192(%r12)
	movl	%r15d, %esi
	shrl	%esi
	movq	%r12, %rdi
	callq	opj_mqc_encode
	movl	%r15d, %esi
	andl	$1, %esi
	movq	%r12, %rdi
	callq	opj_mqc_encode
	movq	%r15, %rdi
	movb	$1, %al
	movl	%eax, 512(%rsp)         # 4-byte Spill
	movq	%r14, %r10
	movl	444(%rsp), %r8d         # 4-byte Reload
	movl	488(%rsp), %r9d         # 4-byte Reload
	.align	16, 0x90
.LBB4_136:                              # %if.end.135.i.i
                                        #   in Loop: Header=BB4_112 Depth=8
	movl	%r9d, 488(%rsp)         # 4-byte Spill
	addl	%ebx, %edi
	movq	%rdi, 480(%rsp)         # 8-byte Spill
	cmpl	%r8d, %edi
	jae	.LBB4_154
# BB#137:                               # %land.rhs.i.112.i.preheader
                                        #   in Loop: Header=BB4_112 Depth=8
	movq	408(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rdi), %eax
	movl	%eax, 460(%rsp)         # 4-byte Spill
	xorl	%r15d, %r15d
	jmp	.LBB4_138
.LBB4_147:                              #   in Loop: Header=BB4_138 Depth=9
	movq	504(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB4_152
	.align	16, 0x90
.LBB4_138:                              # %land.rhs.i.112.i
                                        #   Parent Loop BB4_2 Depth=1
                                        #     Parent Loop BB4_4 Depth=2
                                        #       Parent Loop BB4_6 Depth=3
                                        #         Parent Loop BB4_8 Depth=4
                                        #           Parent Loop BB4_10 Depth=5
                                        #             Parent Loop BB4_48 Depth=6
                                        #               Parent Loop BB4_109 Depth=7
                                        #                 Parent Loop BB4_112 Depth=8
                                        # =>                This Inner Loop Header: Depth=9
	leal	(%rdi,%r15), %r12d
	movl	36(%r10), %ecx
	cmpl	%ecx, %r12d
	jae	.LBB4_153
# BB#139:                               # %for.body.144.i.i
                                        #   in Loop: Header=BB4_138 Depth=9
	cmpl	$0, 528(%rsp)           # 4-byte Folded Reload
	jne	.LBB4_141
# BB#140:                               #   in Loop: Header=BB4_138 Depth=9
	xorl	%esi, %esi
	jmp	.LBB4_143
	.align	16, 0x90
.LBB4_141:                              # %land.rhs.147.i.i
                                        #   in Loop: Header=BB4_138 Depth=9
	movl	460(%rsp), %eax         # 4-byte Reload
	addl	%r15d, %eax
	movb	$1, %sil
	je	.LBB4_143
# BB#142:                               # %lor.rhs.151.i.i
                                        #   in Loop: Header=BB4_138 Depth=9
	decl	%ecx
	cmpl	%ecx, %r12d
	sete	%sil
.LBB4_143:                              # %land.end.156.i.i
                                        #   in Loop: Header=BB4_138 Depth=9
	leal	1(%rdi,%r15), %ecx
	imull	48(%r10), %ecx
	addl	%r9d, %ecx
	movq	24(%r10), %rdx
	leaq	(%rdx,%rcx,2), %rbx
	imull	32(%r10), %r12d
	addl	%ebp, %r12d
	movq	(%r10), %r13
	movq	16(%r10), %r11
	testl	%r15d, %r15d
	sete	%al
	movswl	(%rdx,%rcx,2), %ecx
	movl	%ecx, %r14d
	andl	$-1095, %r14d           # imm = 0xFFFFFFFFFFFFFBB9
	testb	%sil, %sil
	cmovel	%ecx, %r14d
	movl	512(%rsp), %edx         # 4-byte Reload
	testb	%al, %dl
	jne	.LBB4_148
# BB#144:                               # %if.end.i.i.118.i
                                        #   in Loop: Header=BB4_138 Depth=9
	testb	$80, %ch
	je	.LBB4_146
# BB#145:                               #   in Loop: Header=BB4_138 Depth=9
	movq	504(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB4_152
.LBB4_146:                              # %if.then.7.i.i.i
                                        #   in Loop: Header=BB4_138 Depth=9
	movzbl	%r14b, %eax
	orl	456(%rsp), %eax         # 4-byte Folded Reload
	movzbl	lut_ctxno_zc(%rax), %eax
	leaq	40(%r13,%rax,8), %rax
	movq	%rax, 192(%r13)
	movl	(%r11,%r12,4), %eax
	movl	%eax, %ebp
	negl	%ebp
	cmovll	%eax, %ebp
	andl	440(%rsp), %ebp         # 4-byte Folded Reload
	setne	%al
	movzbl	%al, %esi
	movq	%r13, %rdi
	movq	%r11, 448(%rsp)         # 8-byte Spill
	callq	opj_mqc_encode
	movq	448(%rsp), %r11         # 8-byte Reload
	movq	480(%rsp), %rdi         # 8-byte Reload
	movl	488(%rsp), %r9d         # 4-byte Reload
	movl	444(%rsp), %r8d         # 4-byte Reload
	movq	496(%rsp), %r10         # 8-byte Reload
	testl	%ebp, %ebp
	je	.LBB4_147
	.align	16, 0x90
.LBB4_148:                              # %LABEL_PARTIAL.i.i.i
                                        #   in Loop: Header=BB4_138 Depth=9
	movl	(%r11,%r12,4), %ebp
	movl	%ebp, %eax
	negl	%eax
	cmovll	%ebp, %eax
	cmpl	$7, 464(%rsp)           # 4-byte Folded Reload
	jb	.LBB4_150
# BB#149:                               # %if.then.i.i.i.128.i
                                        #   in Loop: Header=BB4_138 Depth=9
	movl	%r8d, %r12d
	movq	472(%rsp), %rcx         # 8-byte Reload
	shrl	%cl, %eax
	andl	$127, %eax
	leaq	lut_nmsedec_sig(%rax,%rax), %rax
	jmp	.LBB4_151
	.align	16, 0x90
.LBB4_150:                              # %if.end.i.i.i.132.i
                                        #   in Loop: Header=BB4_138 Depth=9
	movl	%r8d, %r12d
	andl	$127, %eax
	leaq	lut_nmsedec_sig0(%rax,%rax), %rax
.LBB4_151:                              # %opj_t1_getnmsedec_sig.exit.i.i.164.i
                                        #   in Loop: Header=BB4_138 Depth=9
	movl	520(%rsp), %ecx         # 4-byte Reload
	movswl	(%rax), %eax
	addl	%eax, %ecx
	movl	%ecx, 520(%rsp)         # 4-byte Spill
	shrl	$4, %r14d
	movzbl	%r14b, %eax
	movzbl	lut_ctxno_sc(%rax), %ecx
	leaq	40(%r13,%rcx,8), %rcx
	movq	%rcx, 192(%r13)
	shrl	$31, %ebp
	movzbl	lut_spb(%rax), %esi
	xorl	%ebp, %esi
	movq	%r13, %rdi
	callq	opj_mqc_encode
	movq	496(%rsp), %r10         # 8-byte Reload
	movl	48(%r10), %eax
	leaq	(%rax,%rax), %rcx
	movq	%rbx, %rdx
	subq	%rcx, %rdx
	orw	$2, -2(%rdx)
	negq	%rcx
	movw	opj_t1_updateflags.mod(%rbp,%rbp), %si
	orw	%si, (%rdx)
	orb	$4, 2(%rbx,%rcx)
	leal	2(%rbp), %ecx
	movw	opj_t1_updateflags.mod(%rcx,%rcx), %cx
	orw	%cx, -2(%rbx)
	orb	$16, 1(%rbx)
	leal	4(%rbp), %ecx
	movw	opj_t1_updateflags.mod(%rcx,%rcx), %cx
	orw	%cx, 2(%rbx)
	orb	$1, -2(%rbx,%rax,2)
	orl	$6, %ebp
	movw	opj_t1_updateflags.mod(%rbp,%rbp), %cx
	orw	%cx, (%rbx,%rax,2)
	orb	$8, 2(%rbx,%rax,2)
	movl	%r12d, %r8d
	movl	488(%rsp), %r9d         # 4-byte Reload
	movq	504(%rsp), %rbp         # 8-byte Reload
	movq	480(%rsp), %rdi         # 8-byte Reload
.LBB4_152:                              # %opj_t1_enc_clnpass_step.exit.i.i
                                        #   in Loop: Header=BB4_138 Depth=9
	andb	$-65, 1(%rbx)
	leal	1(%rdi,%r15), %eax
	leal	1(%r15), %ecx
	cmpl	%r8d, %eax
	movl	%ecx, %r15d
	jb	.LBB4_138
.LBB4_153:                              #   in Loop: Header=BB4_112 Depth=8
	movq	400(%rsp), %r12         # 8-byte Reload
	movq	432(%rsp), %rbx         # 8-byte Reload
	movl	420(%rsp), %r13d        # 4-byte Reload
.LBB4_154:                              # %for.inc.180.i.i
                                        #   in Loop: Header=BB4_112 Depth=8
	movl	32(%r10), %eax
	movl	36(%r10), %ecx
	cmpl	%eax, %r9d
	movl	%r9d, %ebp
	jb	.LBB4_112
# BB#155:                               #   in Loop: Header=BB4_109 Depth=7
	movl	%eax, %edx
	jmp	.LBB4_156
	.align	16, 0x90
.LBB4_110:                              # %for.cond.2.preheader.for.inc.183_crit_edge.i.i
                                        #   in Loop: Header=BB4_109 Depth=7
	addl	$4, %ebx
	xorl	%edx, %edx
	movl	%ebx, %r8d
.LBB4_156:                              # %for.inc.183.i.i
                                        #   in Loop: Header=BB4_109 Depth=7
	cmpl	%ecx, %r8d
	movl	%r8d, %ebx
	jb	.LBB4_109
.LBB4_157:                              # %opj_t1_enc_clnpass.exit.i
                                        #   in Loop: Header=BB4_48 Depth=6
	cmpl	$0, 228(%rsp)           # 4-byte Folded Reload
	je	.LBB4_159
# BB#158:                               # %if.then.i
                                        #   in Loop: Header=BB4_48 Depth=6
	movq	368(%rsp), %rdi         # 8-byte Reload
	callq	opj_mqc_segmark_enc
	jmp	.LBB4_159
	.align	16, 0x90
.LBB4_50:                               # %for.body.9.i
                                        #   in Loop: Header=BB4_48 Depth=6
	movq	%rsi, 472(%rsp)         # 8-byte Spill
	movq	%rdx, 320(%rsp)         # 8-byte Spill
	testl	%r12d, %r12d
	movl	%r12d, 340(%rsp)        # 4-byte Spill
	movq	496(%rsp), %r10         # 8-byte Reload
	jne	.LBB4_159
# BB#51:                                # %sw.bb.i
                                        #   in Loop: Header=BB4_48 Depth=6
	movq	472(%rsp), %rax         # 8-byte Reload
	leal	6(%rax), %ecx
	movl	%ecx, 440(%rsp)         # 4-byte Spill
	movl	$1, %eax
	shll	%cl, %eax
	movl	%eax, 444(%rsp)         # 4-byte Spill
	movl	36(%r10), %ecx
	movl	$0, 520(%rsp)           # 4-byte Folded Spill
	testl	%ecx, %ecx
	je	.LBB4_159
# BB#52:                                # %for.cond.1.preheader.lr.ph.i.i
                                        #   in Loop: Header=BB4_48 Depth=6
	movl	32(%r10), %eax
	movl	$0, 520(%rsp)           # 4-byte Folded Spill
	movl	%eax, %ebp
	xorl	%edx, %edx
	.align	16, 0x90
.LBB4_53:                               # %for.cond.1.preheader.i.i
                                        #   Parent Loop BB4_2 Depth=1
                                        #     Parent Loop BB4_4 Depth=2
                                        #       Parent Loop BB4_6 Depth=3
                                        #         Parent Loop BB4_8 Depth=4
                                        #           Parent Loop BB4_10 Depth=5
                                        #             Parent Loop BB4_48 Depth=6
                                        # =>            This Loop Header: Depth=7
                                        #                 Child Loop BB4_56 Depth 8
                                        #                   Child Loop BB4_57 Depth 9
	movq	%rdx, 448(%rsp)         # 8-byte Spill
	leal	4(%rdx), %r8d
	movl	%r8d, 460(%rsp)         # 4-byte Spill
	testl	%ebp, %ebp
	je	.LBB4_54
# BB#55:                                # %for.cond.4.preheader.lr.ph.i.i
                                        #   in Loop: Header=BB4_53 Depth=7
	xorl	%esi, %esi
	.align	16, 0x90
.LBB4_56:                               # %for.cond.4.preheader.i.i
                                        #   Parent Loop BB4_2 Depth=1
                                        #     Parent Loop BB4_4 Depth=2
                                        #       Parent Loop BB4_6 Depth=3
                                        #         Parent Loop BB4_8 Depth=4
                                        #           Parent Loop BB4_10 Depth=5
                                        #             Parent Loop BB4_48 Depth=6
                                        #               Parent Loop BB4_53 Depth=7
                                        # =>              This Loop Header: Depth=8
                                        #                   Child Loop BB4_57 Depth 9
	movq	%rsi, 464(%rsp)         # 8-byte Spill
	leal	1(%rsi), %r9d
	movl	%r9d, 480(%rsp)         # 4-byte Spill
	cmpl	$-4, %edx
	movl	$0, %r15d
	je	.LBB4_66
	.align	16, 0x90
.LBB4_57:                               # %land.rhs.i.i
                                        #   Parent Loop BB4_2 Depth=1
                                        #     Parent Loop BB4_4 Depth=2
                                        #       Parent Loop BB4_6 Depth=3
                                        #         Parent Loop BB4_8 Depth=4
                                        #           Parent Loop BB4_10 Depth=5
                                        #             Parent Loop BB4_48 Depth=6
                                        #               Parent Loop BB4_53 Depth=7
                                        #                 Parent Loop BB4_56 Depth=8
                                        # =>                This Inner Loop Header: Depth=9
	leal	(%rdx,%r15), %ebx
	movl	36(%r10), %ecx
	cmpl	%ecx, %ebx
	jae	.LBB4_65
# BB#58:                                # %for.body.9.i.i
                                        #   in Loop: Header=BB4_57 Depth=9
	cmpl	$0, 528(%rsp)           # 4-byte Folded Reload
	jne	.LBB4_60
# BB#59:                                #   in Loop: Header=BB4_57 Depth=9
	xorl	%eax, %eax
	jmp	.LBB4_62
	.align	16, 0x90
.LBB4_60:                               # %land.rhs.10.i.i
                                        #   in Loop: Header=BB4_57 Depth=9
	movb	$1, %al
	cmpl	$3, %r15d
	je	.LBB4_62
# BB#61:                                # %lor.rhs.i.i
                                        #   in Loop: Header=BB4_57 Depth=9
	decl	%ecx
	cmpl	%ecx, %ebx
	sete	%al
.LBB4_62:                               # %land.end.15.i.i
                                        #   in Loop: Header=BB4_57 Depth=9
	leal	1(%rdx,%r15), %ebp
	imull	48(%r10), %ebp
	addl	%r9d, %ebp
	movq	24(%r10), %r13
	imull	32(%r10), %ebx
	addl	%esi, %ebx
	movswl	(%r13,%rbp,2), %ecx
	movl	%ecx, %r14d
	andl	$-1095, %r14d           # imm = 0xFFFFFFFFFFFFFBB9
	testb	%al, %al
	cmovel	%ecx, %r14d
	movl	%r14d, %eax
	andl	$255, %eax
	je	.LBB4_64
# BB#63:                                # %land.end.15.i.i
                                        #   in Loop: Header=BB4_57 Depth=9
	movl	%r14d, %ecx
	andl	$20480, %ecx            # imm = 0x5000
	jne	.LBB4_64
# BB#69:                                # %if.then.i.i.i
                                        #   in Loop: Header=BB4_57 Depth=9
	movq	(%r10), %rdi
	movq	16(%r10), %rcx
	movq	%rcx, 488(%rsp)         # 8-byte Spill
	movl	(%rcx,%rbx,4), %ecx
	movl	%ecx, %r12d
	negl	%r12d
	cmovll	%ecx, %r12d
	andl	444(%rsp), %r12d        # 4-byte Folded Reload
	setne	%cl
	movzbl	%cl, %esi
	orl	456(%rsp), %eax         # 4-byte Folded Reload
	movzbl	lut_ctxno_zc(%rax), %eax
	leaq	40(%rdi,%rax,8), %rax
	movq	%rax, 192(%rdi)
	cmpb	$0, 512(%rsp)           # 1-byte Folded Reload
	je	.LBB4_71
# BB#70:                                # %if.then.14.i.i.i
                                        #   in Loop: Header=BB4_57 Depth=9
	movq	%rdi, 504(%rsp)         # 8-byte Spill
	callq	opj_mqc_bypass_enc
	jmp	.LBB4_72
	.align	16, 0x90
.LBB4_71:                               # %if.else.i.i.i
                                        #   in Loop: Header=BB4_57 Depth=9
	movq	%rdi, 504(%rsp)         # 8-byte Spill
	callq	opj_mqc_encode
.LBB4_72:                               # %if.end.i.i.i
                                        #   in Loop: Header=BB4_57 Depth=9
	leaq	(%r13,%rbp,2), %rbp
	testl	%r12d, %r12d
	movq	496(%rsp), %r10         # 8-byte Reload
	je	.LBB4_80
# BB#73:                                # %if.then.16.i.i.i
                                        #   in Loop: Header=BB4_57 Depth=9
	movq	488(%rsp), %rax         # 8-byte Reload
	movl	(%rax,%rbx,4), %ebx
	movl	%ebx, %eax
	negl	%eax
	cmovll	%ebx, %eax
	cmpl	$7, 440(%rsp)           # 4-byte Folded Reload
	jb	.LBB4_75
# BB#74:                                # %if.then.i.i.i.i
                                        #   in Loop: Header=BB4_57 Depth=9
	movq	472(%rsp), %rcx         # 8-byte Reload
	shrl	%cl, %eax
	andl	$127, %eax
	leaq	lut_nmsedec_sig(%rax,%rax), %rax
	jmp	.LBB4_76
.LBB4_75:                               # %if.end.i.i.i.i
                                        #   in Loop: Header=BB4_57 Depth=9
	andl	$127, %eax
	leaq	lut_nmsedec_sig0(%rax,%rax), %rax
.LBB4_76:                               # %opj_t1_getnmsedec_sig.exit.i.i.i
                                        #   in Loop: Header=BB4_57 Depth=9
	movq	504(%rsp), %rdi         # 8-byte Reload
	movq	%r10, %r13
	shrl	$31, %ebx
	movswl	(%rax), %r12d
	shrl	$4, %r14d
	movzbl	%r14b, %eax
	movzbl	lut_ctxno_sc(%rax), %ecx
	leaq	40(%rdi,%rcx,8), %rcx
	movq	%rcx, 192(%rdi)
	cmpb	$0, 512(%rsp)           # 1-byte Folded Reload
	je	.LBB4_78
# BB#77:                                # %if.then.33.i.i.i
                                        #   in Loop: Header=BB4_57 Depth=9
	movl	%ebx, %esi
	callq	opj_mqc_bypass_enc
	jmp	.LBB4_79
.LBB4_78:                               # %if.else.34.i.i.i
                                        #   in Loop: Header=BB4_57 Depth=9
	movzbl	lut_spb(%rax), %esi
	xorl	%ebx, %esi
	callq	opj_mqc_encode
.LBB4_79:                               # %if.end.37.i.i.i
                                        #   in Loop: Header=BB4_57 Depth=9
	movq	%r13, %r10
	addl	%r12d, 520(%rsp)        # 4-byte Folded Spill
	movl	48(%r10), %eax
	leaq	(%rax,%rax), %rcx
	movq	%rbp, %rdx
	subq	%rcx, %rdx
	orw	$2, -2(%rdx)
	negq	%rcx
	movw	opj_t1_updateflags.mod(%rbx,%rbx), %si
	orw	%si, (%rdx)
	orb	$4, 2(%rbp,%rcx)
	leal	2(%rbx), %ecx
	movw	opj_t1_updateflags.mod(%rcx,%rcx), %cx
	orw	%cx, -2(%rbp)
	orb	$16, 1(%rbp)
	leal	4(%rbx), %ecx
	movw	opj_t1_updateflags.mod(%rcx,%rcx), %cx
	orw	%cx, 2(%rbp)
	orb	$1, -2(%rbp,%rax,2)
	orl	$6, %ebx
	movw	opj_t1_updateflags.mod(%rbx,%rbx), %cx
	orw	%cx, (%rbp,%rax,2)
	orb	$8, 2(%rbp,%rax,2)
.LBB4_80:                               # %if.end.38.i.i.i
                                        #   in Loop: Header=BB4_57 Depth=9
	orb	$64, 1(%rbp)
	movl	460(%rsp), %r8d         # 4-byte Reload
	movq	448(%rsp), %rdx         # 8-byte Reload
	movl	480(%rsp), %r9d         # 4-byte Reload
	movq	464(%rsp), %rsi         # 8-byte Reload
.LBB4_64:                               # %for.cond.4.backedge.i.i
                                        #   in Loop: Header=BB4_57 Depth=9
	leal	1(%rdx,%r15), %eax
	leal	1(%r15), %ecx
	cmpl	%r8d, %eax
	movl	%ecx, %r15d
	jb	.LBB4_57
.LBB4_65:                               # %for.inc.24.i.loopexit.i
                                        #   in Loop: Header=BB4_56 Depth=8
	movl	32(%r10), %eax
.LBB4_66:                               # %for.inc.24.i.i
                                        #   in Loop: Header=BB4_56 Depth=8
	cmpl	%eax, %r9d
	movl	%r9d, %esi
	jb	.LBB4_56
# BB#67:                                # %for.cond.1.for.inc.27_crit_edge.i.i
                                        #   in Loop: Header=BB4_53 Depth=7
	movl	36(%r10), %ecx
	movl	%eax, %ebp
	jmp	.LBB4_68
	.align	16, 0x90
.LBB4_54:                               #   in Loop: Header=BB4_53 Depth=7
	xorl	%ebp, %ebp
.LBB4_68:                               # %for.inc.27.i.i
                                        #   in Loop: Header=BB4_53 Depth=7
	cmpl	%ecx, %r8d
	movl	%r8d, %edx
	jb	.LBB4_53
	.align	16, 0x90
.LBB4_159:                              # %sw.epilog.i
                                        #   in Loop: Header=BB4_48 Depth=6
	movq	256(%rsp), %rax         # 8-byte Reload
	testq	%rax, %rax
	movsd	.LCPI4_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	248(%rsp), %rcx         # 8-byte Reload
	je	.LBB4_161
# BB#160:                               # %if.then.i.i
                                        #   in Loop: Header=BB4_48 Depth=6
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
.LBB4_161:                              # %if.end.i.i
                                        #   in Loop: Header=BB4_48 Depth=6
	cmpl	$1, 300(%rsp)           # 4-byte Folded Reload
	jne	.LBB4_165
# BB#162:                               # %if.then.1.i.i
                                        #   in Loop: Header=BB4_48 Depth=6
	movsd	%xmm0, 512(%rsp)        # 8-byte Spill
	movl	296(%rsp), %edi         # 4-byte Reload
	movl	304(%rsp), %esi         # 4-byte Reload
	callq	opj_dwt_getnorm
	jmp	.LBB4_166
	.align	16, 0x90
.LBB4_165:                              # %if.else.i.i
                                        #   in Loop: Header=BB4_48 Depth=6
	movsd	%xmm0, 512(%rsp)        # 8-byte Spill
	movl	296(%rsp), %edi         # 4-byte Reload
	movl	304(%rsp), %esi         # 4-byte Reload
	callq	opj_dwt_getnorm_real
.LBB4_166:                              # %opj_t1_getwmsedec.exit.i
                                        #   in Loop: Header=BB4_48 Depth=6
	movq	472(%rsp), %rcx         # 8-byte Reload
	movl	340(%rsp), %r12d        # 4-byte Reload
	movl	520(%rsp), %edx         # 4-byte Reload
	movl	$1, %eax
	shll	%cl, %eax
	cmpl	$0, 276(%rsp)           # 4-byte Folded Reload
	movsd	512(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	mulsd	288(%rsp), %xmm1        # 8-byte Folded Reload
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm0, %xmm1
	mulsd	.LCPI4_2(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	movq	264(%rsp), %rax         # 8-byte Reload
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 40(%rax)
	je	.LBB4_170
# BB#167:                               # %land.lhs.true.29.i
                                        #   in Loop: Header=BB4_48 Depth=6
	testl	%ecx, %ecx
	jg	.LBB4_169
# BB#168:                               # %land.lhs.true.29.i
                                        #   in Loop: Header=BB4_48 Depth=6
	cmpl	$2, %r12d
	jne	.LBB4_169
.LBB4_170:                              # %if.else.42.i
                                        #   in Loop: Header=BB4_48 Depth=6
	movq	344(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	addl	$-4, %eax
	testl	%r12d, %r12d
	je	.LBB4_172
# BB#171:                               # %if.else.42.i
                                        #   in Loop: Header=BB4_48 Depth=6
	cmpl	%eax, %ecx
	jge	.LBB4_172
# BB#176:                               # %land.lhs.true.57.i
                                        #   in Loop: Header=BB4_48 Depth=6
	movsd	%xmm1, 512(%rsp)        # 8-byte Spill
	movl	%edx, 520(%rsp)         # 4-byte Spill
	cmpl	$0, 356(%rsp)           # 4-byte Folded Reload
	je	.LBB4_175
	jmp	.LBB4_177
	.align	16, 0x90
.LBB4_172:                              # %lor.lhs.false.i
                                        #   in Loop: Header=BB4_48 Depth=6
	movsd	%xmm1, 512(%rsp)        # 8-byte Spill
	movl	%edx, 520(%rsp)         # 4-byte Spill
	cmpl	$0, 356(%rsp)           # 4-byte Folded Reload
	je	.LBB4_175
# BB#173:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB4_48 Depth=6
	cmpl	$2, %r12d
	jne	.LBB4_175
# BB#174:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB4_48 Depth=6
	cmpl	%eax, %ecx
	jne	.LBB4_175
.LBB4_177:                              # %if.then.60.i
                                        #   in Loop: Header=BB4_48 Depth=6
	movq	%rcx, %rbx
	movq	368(%rsp), %rdi         # 8-byte Reload
	callq	opj_mqc_flush
	movq	%rbx, %rcx
	movq	320(%rsp), %rsi         # 8-byte Reload
	leaq	(%rsi,%rsi,2), %rdx
	movq	328(%rsp), %rdi         # 8-byte Reload
	movb	20(%rdi,%rdx,8), %al
	orb	$1, %al
	movb	%al, 20(%rdi,%rdx,8)
	movq	%rdi, %r13
	movl	$1, %r14d
	jmp	.LBB4_178
	.align	16, 0x90
.LBB4_175:                              # %if.else.71.i
                                        #   in Loop: Header=BB4_48 Depth=6
	movq	320(%rsp), %rsi         # 8-byte Reload
	leaq	(%rsi,%rsi,2), %rdx
	movq	328(%rsp), %rdi         # 8-byte Reload
	movb	20(%rdi,%rdx,8), %al
	andb	$-2, %al
	movb	%al, 20(%rdi,%rdx,8)
	movq	%rdi, %r13
	movl	$3, %r14d
.LBB4_178:                              # %if.end.76.i
                                        #   in Loop: Header=BB4_48 Depth=6
	movsd	360(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	512(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jmp	.LBB4_179
	.align	16, 0x90
.LBB4_169:                              # %if.then.36.i
                                        #   in Loop: Header=BB4_48 Depth=6
	movl	%edx, 520(%rsp)         # 4-byte Spill
	movq	%rcx, %rbx
	movq	368(%rsp), %rdi         # 8-byte Reload
	movsd	%xmm1, 512(%rsp)        # 8-byte Spill
	callq	opj_mqc_flush
	movsd	512(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	%rbx, %rcx
	movq	320(%rsp), %rsi         # 8-byte Reload
	leaq	(%rsi,%rsi,2), %rdx
	movq	328(%rsp), %rdi         # 8-byte Reload
	movb	20(%rdi,%rdx,8), %al
	orb	$1, %al
	movb	%al, 20(%rdi,%rdx,8)
	movq	%rdi, %r13
	movl	$1, %r14d
	movsd	360(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB4_179:                              # %if.end.76.i
                                        #   in Loop: Header=BB4_48 Depth=6
	addsd	%xmm1, %xmm0
	incl	%r12d
	cmpl	$3, %r12d
	sete	%bl
	movl	$0, %edx
	cmovel	%edx, %r12d
	movzbl	%bl, %edx
	subl	%edx, %ecx
	testl	%ecx, %ecx
	movq	%rcx, %r15
	jle	.LBB4_187
# BB#180:                               # %if.end.76.i
                                        #   in Loop: Header=BB4_48 Depth=6
	andb	$1, %al
	je	.LBB4_187
# BB#181:                               # %if.then.89.i
                                        #   in Loop: Header=BB4_48 Depth=6
	movsd	%xmm0, 360(%rsp)        # 8-byte Spill
	movq	%rsi, %rbx
	cmpl	$0, 356(%rsp)           # 4-byte Folded Reload
	movq	368(%rsp), %rdi         # 8-byte Reload
	je	.LBB4_185
# BB#182:                               # %if.then.89.i
                                        #   in Loop: Header=BB4_48 Depth=6
	cmpl	$1, %r12d
	ja	.LBB4_185
# BB#183:                               # %if.then.89.i
                                        #   in Loop: Header=BB4_48 Depth=6
	movq	344(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	addl	$-4, %eax
	cmpl	%eax, %r15d
	jge	.LBB4_185
# BB#184:                               # %if.then.106.i
                                        #   in Loop: Header=BB4_48 Depth=6
	callq	opj_mqc_bypass_init_enc
	jmp	.LBB4_186
	.align	16, 0x90
.LBB4_185:                              # %if.else.107.i
                                        #   in Loop: Header=BB4_48 Depth=6
	callq	opj_mqc_restart_init_enc
.LBB4_186:                              # %if.end.109.i
                                        #   in Loop: Header=BB4_48 Depth=6
	movq	%rbx, %rsi
	movsd	360(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB4_187:                              # %if.end.109.i
                                        #   in Loop: Header=BB4_48 Depth=6
	movsd	%xmm0, 360(%rsp)        # 8-byte Spill
	leaq	(%rsi,%rsi,2), %rbp
	movsd	%xmm0, 8(%r13,%rbp,8)
	movq	%rsi, %rbx
	movq	368(%rsp), %rdi         # 8-byte Reload
	callq	opj_mqc_numbytes
	addl	%r14d, %eax
	cmpl	$0, 272(%rsp)           # 4-byte Folded Reload
	movl	%eax, (%r13,%rbp,8)
	je	.LBB4_189
# BB#188:                               # %if.then.114.i
                                        #   in Loop: Header=BB4_48 Depth=6
	movq	368(%rsp), %rdi         # 8-byte Reload
	callq	opj_mqc_reset_enc
.LBB4_189:                              # %if.end.115.i
                                        #   in Loop: Header=BB4_48 Depth=6
	incl	%ebx
	movq	%r15, %rsi
	testl	%esi, %esi
	movq	%rbx, %rdx
	jns	.LBB4_48
.LBB4_190:                              # %for.end.118.i
                                        #   in Loop: Header=BB4_10 Depth=5
	movq	%rdx, %rbx
	movl	204(%rsp), %eax         # 4-byte Reload
	testb	$16, %al
	jne	.LBB4_191
# BB#192:                               # %if.else.122.i
                                        #   in Loop: Header=BB4_10 Depth=5
	testb	$1, %al
	jne	.LBB4_194
# BB#193:                               # %if.then.125.i
                                        #   in Loop: Header=BB4_10 Depth=5
	movq	368(%rsp), %rdi         # 8-byte Reload
	callq	opj_mqc_flush
	jmp	.LBB4_194
	.align	16, 0x90
.LBB4_191:                              # %if.then.121.i
                                        #   in Loop: Header=BB4_10 Depth=5
	movq	368(%rsp), %rdi         # 8-byte Reload
	callq	opj_mqc_erterm_enc
.LBB4_194:                              # %if.end.127.i
                                        #   in Loop: Header=BB4_10 Depth=5
	movq	216(%rsp), %rax         # 8-byte Reload
	movq	208(%rsp), %rcx         # 8-byte Reload
	movl	%ebx, 56(%rax,%rcx)
	testl	%ebx, %ebx
	je	.LBB4_205
# BB#195:                               # %for.body.132.lr.ph.i
                                        #   in Loop: Header=BB4_10 Depth=5
	leaq	(%rax,%rcx), %rdx
	movq	%rdx, 512(%rsp)         # 8-byte Spill
	leaq	56(%rax,%rcx), %rdx
	movq	%rdx, 520(%rsp)         # 8-byte Spill
	leaq	16(%rax,%rcx), %rax
	movq	%rax, 528(%rsp)         # 8-byte Spill
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB4_196:                              # %for.body.132.i
                                        #   Parent Loop BB4_2 Depth=1
                                        #     Parent Loop BB4_4 Depth=2
                                        #       Parent Loop BB4_6 Depth=3
                                        #         Parent Loop BB4_8 Depth=4
                                        #           Parent Loop BB4_10 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movl	%ebp, %ebp
	movq	528(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %r13
	leaq	(%rbp,%rbp,2), %rbx
	leaq	(%r13,%rbx,8), %r14
	movl	(%r13,%rbx,8), %r15d
	movq	368(%rsp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	callq	opj_mqc_numbytes
	cmpl	%eax, %r15d
	jbe	.LBB4_198
# BB#197:                               # %if.then.142.i
                                        #   in Loop: Header=BB4_196 Depth=6
	movq	%r12, %rdi
	callq	opj_mqc_numbytes
	movl	%eax, (%r14)
	jmp	.LBB4_199
	.align	16, 0x90
.LBB4_198:                              # %if.end.145thread-pre-split.i
                                        #   in Loop: Header=BB4_196 Depth=6
	movl	(%r14), %eax
.LBB4_199:                              # %if.end.145.i
                                        #   in Loop: Header=BB4_196 Depth=6
	cmpl	$2, %eax
	jb	.LBB4_202
# BB#200:                               # %land.lhs.true.149.i
                                        #   in Loop: Header=BB4_196 Depth=6
	leal	-1(%rax), %ecx
	movq	512(%rsp), %rdx         # 8-byte Reload
	movq	(%rdx), %rdx
	movzbl	(%rdx,%rcx), %edx
	cmpl	$255, %edx
	jne	.LBB4_202
# BB#201:                               # %if.then.158.i
                                        #   in Loop: Header=BB4_196 Depth=6
	movl	%ecx, (%r14)
	movl	%ecx, %eax
	.align	16, 0x90
.LBB4_202:                              # %if.end.161.i
                                        #   in Loop: Header=BB4_196 Depth=6
	xorl	%ecx, %ecx
	testl	%ebp, %ebp
	je	.LBB4_204
# BB#203:                               # %cond.false.166.i
                                        #   in Loop: Header=BB4_196 Depth=6
	leal	-1(%rbp), %ecx
	movq	528(%rsp), %rdx         # 8-byte Reload
	movq	(%rdx), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	movl	(%rdx,%rcx,8), %ecx
.LBB4_204:                              # %cond.end.172.i
                                        #   in Loop: Header=BB4_196 Depth=6
	subl	%ecx, %eax
	movl	%eax, 16(%r13,%rbx,8)
	incl	%ebp
	movq	520(%rsp), %rax         # 8-byte Reload
	cmpl	(%rax), %ebp
	jb	.LBB4_196
.LBB4_205:                              # %for.inc.133
                                        #   in Loop: Header=BB4_10 Depth=5
	movq	176(%rsp), %rbp         # 8-byte Reload
	incl	%ebp
	movq	120(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movq	128(%rsp), %rcx         # 8-byte Reload
	imull	(%rcx), %eax
	cmpl	%eax, %ebp
	movq	496(%rsp), %rdi         # 8-byte Reload
	jb	.LBB4_10
# BB#206:                               # %for.cond.21.for.inc.139_crit_edge
                                        #   in Loop: Header=BB4_8 Depth=4
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %r14d
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %r15d
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	72(%rsp), %rbp          # 8-byte Reload
.LBB4_207:                              # %for.inc.139
                                        #   in Loop: Header=BB4_8 Depth=4
	movq	%rdi, %r12
	incl	%ebp
	movl	%r15d, %eax
	imull	%r14d, %eax
	cmpl	%eax, %ebp
	jb	.LBB4_8
# BB#208:                               # %for.cond.14.for.inc.146_crit_edge
                                        #   in Loop: Header=BB4_6 Depth=3
	movq	8(%rsp), %rax           # 8-byte Reload
	movl	(%rax), %ebx
	movq	%r12, %rdi
	movq	248(%rsp), %rbp         # 8-byte Reload
	movq	160(%rsp), %r8          # 8-byte Reload
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	16(%rsp), %rdx          # 8-byte Reload
	.align	16, 0x90
.LBB4_209:                              # %for.inc.146
                                        #   in Loop: Header=BB4_6 Depth=3
	incl	%edx
	cmpl	%ebx, %edx
	jb	.LBB4_6
# BB#210:                               # %for.cond.8.for.inc.152_crit_edge
                                        #   in Loop: Header=BB4_4 Depth=2
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	(%rax), %edx
	movq	(%rsp), %rcx            # 8-byte Reload
	.align	16, 0x90
.LBB4_211:                              # %for.inc.152
                                        #   in Loop: Header=BB4_4 Depth=2
	incl	%ecx
	cmpl	%edx, %ecx
	jb	.LBB4_4
# BB#212:                               # %for.cond.3.for.inc.160_crit_edge
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	264(%rsp), %rax         # 8-byte Reload
	movl	16(%rax), %ecx
	.align	16, 0x90
.LBB4_213:                              # %for.inc.160
                                        #   in Loop: Header=BB4_2 Depth=1
	incl	%ebp
	movl	$1, %eax
	cmpl	%ecx, %ebp
	jb	.LBB4_2
.LBB4_214:                              # %cleanup.163
	addq	$536, %rsp              # imm = 0x218
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	opj_t1_encode_cblks, .Lfunc_end4-opj_t1_encode_cblks
	.cfi_endproc

	.align	16, 0x90
	.type	opj_t1_dec_clnpass_step,@function
opj_t1_dec_clnpass_step:                # @opj_t1_dec_clnpass_step
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp44:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp46:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp47:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp48:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp49:
	.cfi_def_cfa_offset 64
.Ltmp50:
	.cfi_offset %rbx, -56
.Ltmp51:
	.cfi_offset %r12, -48
.Ltmp52:
	.cfi_offset %r13, -40
.Ltmp53:
	.cfi_offset %r14, -32
.Ltmp54:
	.cfi_offset %r15, -24
.Ltmp55:
	.cfi_offset %rbp, -16
	movl	%r8d, %r15d
	movq	%rdx, %r14
	movq	%rsi, %rbp
	movq	%rdi, %r12
	movswl	(%rbp), %ebx
	testb	$80, %bh
	jne	.LBB5_3
# BB#1:                                 # %if.then
	movq	(%r12), %r13
	shll	$8, %ecx
	movzbl	%bl, %eax
	orl	%ecx, %eax
	movzbl	lut_ctxno_zc(%rax), %eax
	leaq	40(%r13,%rax,8), %rax
	movq	%rax, 192(%r13)
	movq	%r13, %rdi
	callq	opj_mqc_decode
	testl	%eax, %eax
	je	.LBB5_3
# BB#2:                                 # %if.then.5
	shrl	$4, %ebx
	movzbl	%bl, %ebx
	movzbl	lut_ctxno_sc(%rbx), %eax
	leaq	40(%r13,%rax,8), %rax
	movq	%rax, 192(%r13)
	movq	%r13, %rdi
	callq	opj_mqc_decode
	movzbl	lut_spb(%rbx), %edx
	movl	%edx, %ecx
	xorl	%eax, %ecx
	movl	%r15d, %esi
	negl	%esi
	cmpl	%edx, %eax
	cmovel	%r15d, %esi
	movl	%esi, (%r14)
	movl	48(%r12), %eax
	leaq	(%rax,%rax), %rdx
	movq	%rbp, %rsi
	subq	%rdx, %rsi
	orw	$2, -2(%rsi)
	negq	%rdx
	movw	opj_t1_updateflags.mod(%rcx,%rcx), %di
	orw	%di, (%rsi)
	orb	$4, 2(%rbp,%rdx)
	leal	2(%rcx), %edx
	movw	opj_t1_updateflags.mod(%rdx,%rdx), %dx
	orw	%dx, -2(%rbp)
	orb	$16, 1(%rbp)
	leal	4(%rcx), %edx
	movw	opj_t1_updateflags.mod(%rdx,%rdx), %dx
	orw	%dx, 2(%rbp)
	orb	$1, -2(%rbp,%rax,2)
	addl	$6, %ecx
	movw	opj_t1_updateflags.mod(%rcx,%rcx), %cx
	orw	%cx, (%rbp,%rax,2)
	orb	$8, 2(%rbp,%rax,2)
.LBB5_3:                                # %if.end.16
	andb	$-65, 1(%rbp)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	opj_t1_dec_clnpass_step, .Lfunc_end5-opj_t1_dec_clnpass_step
	.cfi_endproc

	.type	opj_t1_updateflags.mod,@object # @opj_t1_updateflags.mod
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
opj_t1_updateflags.mod:
	.short	64                      # 0x40
	.short	1088                    # 0x440
	.short	32                      # 0x20
	.short	544                     # 0x220
	.short	128                     # 0x80
	.short	2176                    # 0x880
	.short	16                      # 0x10
	.short	272                     # 0x110
	.size	opj_t1_updateflags.mod, 16

	.type	lut_ctxno_zc,@object    # @lut_ctxno_zc
	.section	.rodata,"a",@progbits
	.align	16
lut_ctxno_zc:
	.ascii	"\000\001\001\002\001\002\002\002\001\002\002\002\002\002\002\002\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\005\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\005\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\000\001\001\002\001\002\002\002\001\002\002\002\002\002\002\002\005\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\005\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\000\001\001\002\001\002\002\002\001\002\002\002\002\002\002\002\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\005\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\003\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\004\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\005\006\006\006\006\006\006\006\006\006\006\006\006\006\006\006\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\007\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\000\003\003\006\003\006\006\b\003\006\006\b\006\b\b\b\001\004\004\007\004\007\007\b\004\007\007\b\007\b\b\b\001\004\004\007\004\007\007\b\004\007\007\b\007\b\b\b\002\005\005\007\005\007\007\b\005\007\007\b\007\b\b\b\001\004\004\007\004\007\007\b\004\007\007\b\007\b\b\b\002\005\005\007\005\007\007\b\005\007\007\b\007\b\b\b\002\005\005\007\005\007\007\b\005\007\007\b\007\b\b\b\002\005\005\007\005\007\007\b\005\007\007\b\007\b\b\b\001\004\004\007\004\007\007\b\004\007\007\b\007\b\b\b\002\005\005\007\005\007\007\b\005\007\007\b\007\b\b\b\002\005\005\007\005\007\007\b\005\007\007\b\007\b\b\b\002\005\005\007\005\007\007\b\005\007\007\b\007\b\b\b\002\005\005\007\005\007\007\b\005\007\007\b\007\b\b\b\002\005\005\007\005\007\007\b\005\007\007\b\007\b\b\b\002\005\005\007\005\007\007\b\005\007\007\b\007\b\b\b\002\005\005\007\005\007\007\b\005\007\007\b\007\b\b\b"
	.size	lut_ctxno_zc, 1024

	.type	lut_ctxno_sc,@object    # @lut_ctxno_sc
	.align	16
lut_ctxno_sc:
	.ascii	"\t\n\f\r\n\n\r\r\f\r\f\r\r\r\r\r\t\n\f\013\n\t\r\f\f\013\f\013\r\f\r\f\t\n\f\013\n\n\013\013\f\r\t\n\r\r\n\n\t\n\f\r\n\t\013\f\f\013\t\n\r\f\n\t\t\n\f\r\n\t\013\f\f\r\f\r\013\f\013\f\t\n\f\013\n\n\013\013\f\013\f\013\013\013\013\013\t\n\f\013\n\t\r\f\f\r\t\n\013\f\n\t\t\n\f\r\n\n\r\r\f\013\t\n\013\013\n\n\t\n\f\r\n\n\r\r\f\013\t\n\013\013\n\n\t\n\f\013\n\t\r\f\f\r\t\n\013\f\n\t\t\n\f\013\n\n\013\013\f\013\f\013\013\013\013\013\t\n\f\r\n\t\013\f\f\r\f\r\013\f\013\f\t\n\f\r\n\t\013\f\f\013\t\n\r\f\n\t\t\n\f\013\n\n\013\013\f\r\t\n\r\r\n\n\t\n\f\013\n\t\r\f\f\013\f\013\r\f\r\f\t\n\f\r\n\n\r\r\f\r\f\r\r\r\r\r"
	.size	lut_ctxno_sc, 256

	.type	lut_spb,@object         # @lut_spb
	.align	16
lut_spb:
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\001\000\000\001\001\000\000\000\000\000\000\000\000\000\001\001\001\000\000\001\001\000\000\000\001\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\001\001\000\000\000\000\000\000\000\000\000\000\000\000\001\001\001\000\001\001\000\000\000\000\000\000\001\000\000\001\001\001\001\001\001\001\000\000\000\001\000\000\001\001\000\000\000\000\000\000\000\000\001\001\000\000\001\001\000\000\000\001\000\000\000\000\000\000\001\001\000\001\001\001\000\000\000\000\001\001\000\000\001\001\001\001\001\001\001\001\001\001\000\001\001\001\000\000\001\001\001\001\001\001\001\001\001\001\000\000\000\000\001\000\000\000\001\001\000\000\001\001\001\000\000\001\000\000\001\001\000\000\001\001\000\001\001\001\001\001\000\000\001\001\001\000\001\001\001\001\001\001\001\001\001\001\000\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001"
	.size	lut_spb, 256

	.type	lut_nmsedec_sig,@object # @lut_nmsedec_sig
	.align	16
lut_nmsedec_sig:
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	384                     # 0x180
	.short	768                     # 0x300
	.short	1152                    # 0x480
	.short	1536                    # 0x600
	.short	1920                    # 0x780
	.short	2304                    # 0x900
	.short	2688                    # 0xa80
	.short	3072                    # 0xc00
	.short	3456                    # 0xd80
	.short	3840                    # 0xf00
	.short	4224                    # 0x1080
	.short	4608                    # 0x1200
	.short	4992                    # 0x1380
	.short	5376                    # 0x1500
	.short	5760                    # 0x1680
	.short	6144                    # 0x1800
	.short	6528                    # 0x1980
	.short	6912                    # 0x1b00
	.short	7296                    # 0x1c80
	.short	7680                    # 0x1e00
	.short	8064                    # 0x1f80
	.short	8448                    # 0x2100
	.short	8832                    # 0x2280
	.short	9216                    # 0x2400
	.short	9600                    # 0x2580
	.short	9984                    # 0x2700
	.short	10368                   # 0x2880
	.short	10752                   # 0x2a00
	.short	11136                   # 0x2b80
	.short	11520                   # 0x2d00
	.short	11904                   # 0x2e80
	.short	12288                   # 0x3000
	.short	12672                   # 0x3180
	.short	13056                   # 0x3300
	.short	13440                   # 0x3480
	.short	13824                   # 0x3600
	.short	14208                   # 0x3780
	.short	14592                   # 0x3900
	.short	14976                   # 0x3a80
	.short	15360                   # 0x3c00
	.short	15744                   # 0x3d80
	.short	16128                   # 0x3f00
	.short	16512                   # 0x4080
	.short	16896                   # 0x4200
	.short	17280                   # 0x4380
	.short	17664                   # 0x4500
	.short	18048                   # 0x4680
	.short	18432                   # 0x4800
	.short	18816                   # 0x4980
	.short	19200                   # 0x4b00
	.short	19584                   # 0x4c80
	.short	19968                   # 0x4e00
	.short	20352                   # 0x4f80
	.short	20736                   # 0x5100
	.short	21120                   # 0x5280
	.short	21504                   # 0x5400
	.short	21888                   # 0x5580
	.short	22272                   # 0x5700
	.short	22656                   # 0x5880
	.short	23040                   # 0x5a00
	.short	23424                   # 0x5b80
	.short	23808                   # 0x5d00
	.short	24192                   # 0x5e80
	.short	24576                   # 0x6000
	.short	24960                   # 0x6180
	.short	25344                   # 0x6300
	.short	25728                   # 0x6480
	.short	26112                   # 0x6600
	.short	26496                   # 0x6780
	.short	26880                   # 0x6900
	.short	27264                   # 0x6a80
	.short	27648                   # 0x6c00
	.short	28032                   # 0x6d80
	.short	28416                   # 0x6f00
	.short	28800                   # 0x7080
	.short	29184                   # 0x7200
	.short	29568                   # 0x7380
	.short	29952                   # 0x7500
	.short	30336                   # 0x7680
	.size	lut_nmsedec_sig, 256

	.type	lut_nmsedec_sig0,@object # @lut_nmsedec_sig0
	.align	16
lut_nmsedec_sig0:
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	128                     # 0x80
	.short	128                     # 0x80
	.short	128                     # 0x80
	.short	128                     # 0x80
	.short	256                     # 0x100
	.short	256                     # 0x100
	.short	256                     # 0x100
	.short	384                     # 0x180
	.short	384                     # 0x180
	.short	512                     # 0x200
	.short	512                     # 0x200
	.short	640                     # 0x280
	.short	640                     # 0x280
	.short	768                     # 0x300
	.short	768                     # 0x300
	.short	896                     # 0x380
	.short	1024                    # 0x400
	.short	1024                    # 0x400
	.short	1152                    # 0x480
	.short	1280                    # 0x500
	.short	1408                    # 0x580
	.short	1408                    # 0x580
	.short	1536                    # 0x600
	.short	1664                    # 0x680
	.short	1792                    # 0x700
	.short	1920                    # 0x780
	.short	2048                    # 0x800
	.short	2176                    # 0x880
	.short	2304                    # 0x900
	.short	2432                    # 0x980
	.short	2560                    # 0xa00
	.short	2688                    # 0xa80
	.short	2944                    # 0xb80
	.short	3072                    # 0xc00
	.short	3200                    # 0xc80
	.short	3328                    # 0xd00
	.short	3584                    # 0xe00
	.short	3712                    # 0xe80
	.short	3840                    # 0xf00
	.short	4096                    # 0x1000
	.short	4224                    # 0x1080
	.short	4480                    # 0x1180
	.short	4608                    # 0x1200
	.short	4864                    # 0x1300
	.short	4992                    # 0x1380
	.short	5248                    # 0x1480
	.short	5376                    # 0x1500
	.short	5632                    # 0x1600
	.short	5888                    # 0x1700
	.short	6016                    # 0x1780
	.short	6272                    # 0x1880
	.short	6528                    # 0x1980
	.short	6784                    # 0x1a80
	.short	6912                    # 0x1b00
	.short	7168                    # 0x1c00
	.short	7424                    # 0x1d00
	.short	7680                    # 0x1e00
	.short	7936                    # 0x1f00
	.short	8192                    # 0x2000
	.short	8448                    # 0x2100
	.short	8704                    # 0x2200
	.short	8960                    # 0x2300
	.short	9216                    # 0x2400
	.short	9472                    # 0x2500
	.short	9856                    # 0x2680
	.short	10112                   # 0x2780
	.short	10368                   # 0x2880
	.short	10624                   # 0x2980
	.short	11008                   # 0x2b00
	.short	11264                   # 0x2c00
	.short	11520                   # 0x2d00
	.short	11904                   # 0x2e80
	.short	12160                   # 0x2f80
	.short	12544                   # 0x3100
	.short	12800                   # 0x3200
	.short	13184                   # 0x3380
	.short	13440                   # 0x3480
	.short	13824                   # 0x3600
	.short	14080                   # 0x3700
	.short	14464                   # 0x3880
	.short	14848                   # 0x3a00
	.short	15104                   # 0x3b00
	.short	15488                   # 0x3c80
	.short	15872                   # 0x3e00
	.short	16256                   # 0x3f80
	.short	16512                   # 0x4080
	.short	16896                   # 0x4200
	.short	17280                   # 0x4380
	.short	17664                   # 0x4500
	.short	18048                   # 0x4680
	.short	18432                   # 0x4800
	.short	18816                   # 0x4980
	.short	19200                   # 0x4b00
	.short	19584                   # 0x4c80
	.short	19968                   # 0x4e00
	.short	20352                   # 0x4f80
	.short	20864                   # 0x5180
	.short	21248                   # 0x5300
	.short	21632                   # 0x5480
	.short	22016                   # 0x5600
	.short	22528                   # 0x5800
	.short	22912                   # 0x5980
	.short	23296                   # 0x5b00
	.short	23808                   # 0x5d00
	.short	24192                   # 0x5e80
	.short	24704                   # 0x6080
	.short	25088                   # 0x6200
	.short	25600                   # 0x6400
	.short	25984                   # 0x6580
	.short	26496                   # 0x6780
	.short	26880                   # 0x6900
	.short	27392                   # 0x6b00
	.short	27904                   # 0x6d00
	.short	28288                   # 0x6e80
	.short	28800                   # 0x7080
	.short	29312                   # 0x7280
	.short	29824                   # 0x7480
	.short	30208                   # 0x7600
	.short	30720                   # 0x7800
	.short	31232                   # 0x7a00
	.short	31744                   # 0x7c00
	.short	32256                   # 0x7e00
	.size	lut_nmsedec_sig0, 256

	.type	lut_nmsedec_ref,@object # @lut_nmsedec_ref
	.align	16
lut_nmsedec_ref:
	.short	6144                    # 0x1800
	.short	6016                    # 0x1780
	.short	5888                    # 0x1700
	.short	5760                    # 0x1680
	.short	5632                    # 0x1600
	.short	5504                    # 0x1580
	.short	5376                    # 0x1500
	.short	5248                    # 0x1480
	.short	5120                    # 0x1400
	.short	4992                    # 0x1380
	.short	4864                    # 0x1300
	.short	4736                    # 0x1280
	.short	4608                    # 0x1200
	.short	4480                    # 0x1180
	.short	4352                    # 0x1100
	.short	4224                    # 0x1080
	.short	4096                    # 0x1000
	.short	3968                    # 0xf80
	.short	3840                    # 0xf00
	.short	3712                    # 0xe80
	.short	3584                    # 0xe00
	.short	3456                    # 0xd80
	.short	3328                    # 0xd00
	.short	3200                    # 0xc80
	.short	3072                    # 0xc00
	.short	2944                    # 0xb80
	.short	2816                    # 0xb00
	.short	2688                    # 0xa80
	.short	2560                    # 0xa00
	.short	2432                    # 0x980
	.short	2304                    # 0x900
	.short	2176                    # 0x880
	.short	2048                    # 0x800
	.short	1920                    # 0x780
	.short	1792                    # 0x700
	.short	1664                    # 0x680
	.short	1536                    # 0x600
	.short	1408                    # 0x580
	.short	1280                    # 0x500
	.short	1152                    # 0x480
	.short	1024                    # 0x400
	.short	896                     # 0x380
	.short	768                     # 0x300
	.short	640                     # 0x280
	.short	512                     # 0x200
	.short	384                     # 0x180
	.short	256                     # 0x100
	.short	128                     # 0x80
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	128                     # 0x80
	.short	256                     # 0x100
	.short	384                     # 0x180
	.short	512                     # 0x200
	.short	640                     # 0x280
	.short	768                     # 0x300
	.short	896                     # 0x380
	.short	1024                    # 0x400
	.short	1152                    # 0x480
	.short	1280                    # 0x500
	.short	1408                    # 0x580
	.short	1536                    # 0x600
	.short	1664                    # 0x680
	.short	1792                    # 0x700
	.short	1920                    # 0x780
	.short	2048                    # 0x800
	.short	2176                    # 0x880
	.short	2304                    # 0x900
	.short	2432                    # 0x980
	.short	2560                    # 0xa00
	.short	2688                    # 0xa80
	.short	2816                    # 0xb00
	.short	2944                    # 0xb80
	.short	3072                    # 0xc00
	.short	3200                    # 0xc80
	.short	3328                    # 0xd00
	.short	3456                    # 0xd80
	.short	3584                    # 0xe00
	.short	3712                    # 0xe80
	.short	3840                    # 0xf00
	.short	3968                    # 0xf80
	.short	4096                    # 0x1000
	.short	4224                    # 0x1080
	.short	4352                    # 0x1100
	.short	4480                    # 0x1180
	.short	4608                    # 0x1200
	.short	4736                    # 0x1280
	.short	4864                    # 0x1300
	.short	4992                    # 0x1380
	.short	5120                    # 0x1400
	.short	5248                    # 0x1480
	.short	5376                    # 0x1500
	.short	5504                    # 0x1580
	.short	5632                    # 0x1600
	.short	5760                    # 0x1680
	.short	5888                    # 0x1700
	.short	6016                    # 0x1780
	.size	lut_nmsedec_ref, 256

	.type	lut_nmsedec_ref0,@object # @lut_nmsedec_ref0
	.align	16
lut_nmsedec_ref0:
	.short	8192                    # 0x2000
	.short	7936                    # 0x1f00
	.short	7680                    # 0x1e00
	.short	7424                    # 0x1d00
	.short	7168                    # 0x1c00
	.short	6912                    # 0x1b00
	.short	6784                    # 0x1a80
	.short	6528                    # 0x1980
	.short	6272                    # 0x1880
	.short	6016                    # 0x1780
	.short	5888                    # 0x1700
	.short	5632                    # 0x1600
	.short	5376                    # 0x1500
	.short	5248                    # 0x1480
	.short	4992                    # 0x1380
	.short	4864                    # 0x1300
	.short	4608                    # 0x1200
	.short	4480                    # 0x1180
	.short	4224                    # 0x1080
	.short	4096                    # 0x1000
	.short	3840                    # 0xf00
	.short	3712                    # 0xe80
	.short	3584                    # 0xe00
	.short	3328                    # 0xd00
	.short	3200                    # 0xc80
	.short	3072                    # 0xc00
	.short	2944                    # 0xb80
	.short	2688                    # 0xa80
	.short	2560                    # 0xa00
	.short	2432                    # 0x980
	.short	2304                    # 0x900
	.short	2176                    # 0x880
	.short	2048                    # 0x800
	.short	1920                    # 0x780
	.short	1792                    # 0x700
	.short	1664                    # 0x680
	.short	1536                    # 0x600
	.short	1408                    # 0x580
	.short	1408                    # 0x580
	.short	1280                    # 0x500
	.short	1152                    # 0x480
	.short	1024                    # 0x400
	.short	1024                    # 0x400
	.short	896                     # 0x380
	.short	768                     # 0x300
	.short	768                     # 0x300
	.short	640                     # 0x280
	.short	640                     # 0x280
	.short	512                     # 0x200
	.short	512                     # 0x200
	.short	384                     # 0x180
	.short	384                     # 0x180
	.short	256                     # 0x100
	.short	256                     # 0x100
	.short	256                     # 0x100
	.short	128                     # 0x80
	.short	128                     # 0x80
	.short	128                     # 0x80
	.short	128                     # 0x80
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	128                     # 0x80
	.short	128                     # 0x80
	.short	128                     # 0x80
	.short	128                     # 0x80
	.short	256                     # 0x100
	.short	256                     # 0x100
	.short	256                     # 0x100
	.short	384                     # 0x180
	.short	384                     # 0x180
	.short	512                     # 0x200
	.short	512                     # 0x200
	.short	640                     # 0x280
	.short	640                     # 0x280
	.short	768                     # 0x300
	.short	768                     # 0x300
	.short	896                     # 0x380
	.short	1024                    # 0x400
	.short	1024                    # 0x400
	.short	1152                    # 0x480
	.short	1280                    # 0x500
	.short	1408                    # 0x580
	.short	1408                    # 0x580
	.short	1536                    # 0x600
	.short	1664                    # 0x680
	.short	1792                    # 0x700
	.short	1920                    # 0x780
	.short	2048                    # 0x800
	.short	2176                    # 0x880
	.short	2304                    # 0x900
	.short	2432                    # 0x980
	.short	2560                    # 0xa00
	.short	2688                    # 0xa80
	.short	2944                    # 0xb80
	.short	3072                    # 0xc00
	.short	3200                    # 0xc80
	.short	3328                    # 0xd00
	.short	3584                    # 0xe00
	.short	3712                    # 0xe80
	.short	3840                    # 0xf00
	.short	4096                    # 0x1000
	.short	4224                    # 0x1080
	.short	4480                    # 0x1180
	.short	4608                    # 0x1200
	.short	4864                    # 0x1300
	.short	4992                    # 0x1380
	.short	5248                    # 0x1480
	.short	5376                    # 0x1500
	.short	5632                    # 0x1600
	.short	5888                    # 0x1700
	.short	6016                    # 0x1780
	.short	6272                    # 0x1880
	.short	6528                    # 0x1980
	.short	6784                    # 0x1a80
	.short	6912                    # 0x1b00
	.short	7168                    # 0x1c00
	.short	7424                    # 0x1d00
	.short	7680                    # 0x1e00
	.short	7936                    # 0x1f00
	.size	lut_nmsedec_ref0, 256


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
