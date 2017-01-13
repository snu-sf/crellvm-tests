	.text
	.file	"gdevpsfm.bc"
	.globl	psf_write_cmap
	.align	16, 0x90
	.type	psf_write_cmap,@function
psf_write_cmap:                         # @psf_write_cmap
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
	subq	$1272, %rsp             # imm = 0x4F8
.Ltmp6:
	.cfi_def_cfa_offset 1328
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
	movq	%rdx, %r14
	movq	%rsi, %r15
	leaq	16(%r14), %rbp
	testq	%r8, %r8
	cmovneq	%r8, %rbp
	movl	$-15, %eax
	cmpl	$2, (%r14)
	ja	.LBB0_31
# BB#1:                                 # %sw.epilog
	movq	%rcx, %rbx
	movl	%r9d, 28(%rsp)          # 4-byte Spill
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movq	32(%r14), %r12
	cmpl	$0, 80(%r14)
	je	.LBB0_3
# BB#2:                                 # %sw.epilog.if.end_crit_edge
	movq	%rbp, %r13
	addq	$8, %r13
	jmp	.LBB0_4
.LBB0_3:                                # %if.then
	movl	$.L.str, %esi
	movq	%r15, %rdi
	callq	stream_puts
	movl	$.L.str.1, %esi
	movq	%r15, %rdi
	callq	stream_puts
	movl	$.L.str.2, %esi
	movq	%r15, %rdi
	callq	stream_puts
	movl	$.L.str.3, %esi
	movq	%r15, %rdi
	callq	stream_puts
	movq	(%rbp), %rsi
	movl	8(%rbp), %edx
	movq	%r15, %rdi
	callq	stream_write
	movl	$.L.str.4, %esi
	movq	%r15, %rdi
	callq	stream_puts
	movq	(%rbp), %rsi
	movl	8(%rbp), %edx
	leaq	8(%rbp), %r13
	movq	%r15, %rdi
	callq	stream_write
	movl	$.L.str.5, %esi
	movq	%r15, %rdi
	callq	stream_puts
	movq	(%r12), %rsi
	movl	8(%r12), %edx
	movq	%r15, %rdi
	callq	stream_write
	movl	$.L.str.5, %esi
	movq	%r15, %rdi
	callq	stream_puts
	movq	16(%r12), %rsi
	movl	24(%r12), %edx
	movq	%r15, %rdi
	callq	stream_write
	movl	32(%r12), %edx
	movl	$.L.str.6, %esi
	movq	%r15, %rdi
	callq	pprintd1
	movss	44(%r14), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.7, %esi
	movq	%r15, %rdi
	callq	pprintg1
.LBB0_4:                                # %if.end
	movl	$.L.str.8, %esi
	movq	%r15, %rdi
	callq	stream_puts
	movl	$.L.str.9, %esi
	movq	%r15, %rdi
	callq	stream_puts
	movl	(%r14), %edx
	movl	$.L.str.10, %esi
	movq	%r15, %rdi
	callq	pprintd1
	movl	$.L.str.11, %esi
	movq	%r15, %rdi
	callq	stream_puts
	movq	(%rbp), %rsi
	movl	(%r13), %edx
	movq	%r15, %rdi
	callq	*%rbx
	movl	$.L.str.12, %esi
	movq	%r15, %rdi
	callq	stream_puts
	cmpl	$0, 80(%r14)
	jne	.LBB0_18
# BB#5:                                 # %if.then.15
	movss	44(%r14), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.13, %esi
	movq	%r15, %rdi
	callq	pprintg1
	movl	$.L.str.14, %esi
	movq	%r15, %rdi
	callq	stream_puts
	movl	40(%r14), %edx
	movl	28(%rsp), %eax          # 4-byte Reload
	testl	%eax, %eax
	js	.LBB0_8
# BB#6:                                 # %if.then.15
	cmpl	%eax, %edx
	jle	.LBB0_8
# BB#7:                                 # %if.then.23
	cltq
	leaq	(%rax,%rax,4), %rax
	leaq	(%r12,%rax,8), %rsi
	movq	%r15, %rdi
	callq	cmap_put_system_info
	jmp	.LBB0_12
.LBB0_8:                                # %if.else
	cmpl	$1, %edx
	jne	.LBB0_10
# BB#9:                                 # %if.then.27
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	cmap_put_system_info
	jmp	.LBB0_12
.LBB0_10:                               # %if.else.28
	movl	$.L.str.15, %esi
	movq	%r15, %rdi
	callq	pprintd1
	xorl	%ebp, %ebp
	cmpl	$0, 40(%r14)
	jle	.LBB0_12
	.align	16, 0x90
.LBB0_11:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.16, %esi
	movq	%r15, %rdi
	movl	%ebp, %edx
	callq	pprintd1
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	cmap_put_system_info
	movl	$.L.str.17, %esi
	movq	%r15, %rdi
	callq	stream_puts
	incq	%rbp
	movslq	40(%r14), %rax
	addq	$40, %r12
	cmpq	%rax, %rbp
	jl	.LBB0_11
.LBB0_12:                               # %if.end.39
	movl	$.L.str.12, %esi
	movq	%r15, %rdi
	callq	stream_puts
	movq	48(%r14), %rbp
	testq	%rbp, %rbp
	jns	.LBB0_17
# BB#13:                                # %if.then.43
	movq	%rbx, %r12
	movq	56(%r14), %rbx
	movl	$.L.str.18, %esi
	movq	%r15, %rdi
	callq	stream_puts
	testl	%ebp, %ebp
	je	.LBB0_16
# BB#14:                                # %for.body.53.preheader
	negl	%ebp
	.align	16, 0x90
.LBB0_15:                               # %for.body.53
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdx
	movl	$.L.str.19, %esi
	movq	%r15, %rdi
	callq	pprintld1
	addq	$8, %rbx
	decl	%ebp
	jne	.LBB0_15
.LBB0_16:                               # %for.end.57
	movl	$.L.str.20, %esi
	movq	%r15, %rdi
	callq	stream_puts
	movq	%r12, %rbx
.LBB0_17:                               # %if.end.59
	movq	64(%r14), %rdx
	movl	$.L.str.21, %esi
	movq	%r15, %rdi
	callq	pprintld1
	movl	72(%r14), %edx
	movl	$.L.str.22, %esi
	movq	%r15, %rdi
	callq	pprintd1
.LBB0_18:                               # %if.end.62
	leaq	1232(%rsp), %rbp
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	gs_cmap_ranges_enum_init
	movq	%rbp, %rdi
	callq	gs_cmap_enum_next_range
	xorl	%ebp, %ebp
	testl	%eax, %eax
	jne	.LBB0_23
# BB#19:                                # %for.body.67.lr.ph
	leaq	32(%rsp), %r12
	leaq	1232(%rsp), %r13
	.align	16, 0x90
.LBB0_20:                               # %for.body.67
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$100, %ebp
	jne	.LBB0_22
# BB#21:                                # %if.then.70
                                        #   in Loop: Header=BB0_20 Depth=1
	movl	$100, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	cmap_put_ranges
	xorl	%ebp, %ebp
.LBB0_22:                               # %if.end.71
                                        #   in Loop: Header=BB0_20 Depth=1
	movslq	%ebp, %rax
	incl	%ebp
	leaq	(%rax,%rax,2), %rax
	movl	1240(%rsp), %ecx
	movl	%ecx, 40(%rsp,%rax,4)
	movq	1232(%rsp), %rcx
	movq	%rcx, 32(%rsp,%rax,4)
	movq	%r13, %rdi
	callq	gs_cmap_enum_next_range
	testl	%eax, %eax
	je	.LBB0_20
.LBB0_23:                               # %for.end.75
	testl	%eax, %eax
	js	.LBB0_31
# BB#24:                                # %if.end.79
	testl	%ebp, %ebp
	movq	%rbx, %r12
	je	.LBB0_26
# BB#25:                                # %if.then.81
	leaq	32(%rsp), %rsi
	movq	%r15, %rdi
	movl	%ebp, %edx
	callq	cmap_put_ranges
.LBB0_26:                               # %cleanup
	movl	28(%rsp), %ebx          # 4-byte Reload
	movl	%ebx, (%rsp)
	movl	$1, %edx
	movl	$cmap_notdef_operators, %r8d
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%r14, %rcx
	movq	%r12, %r9
	callq	cmap_put_code_map
	testl	%eax, %eax
	js	.LBB0_31
# BB#27:                                # %cleanup.98
	movl	%ebx, (%rsp)
	xorl	%edx, %edx
	movl	$cmap_cid_operators, %r8d
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%r14, %rcx
	movq	%r12, %r9
	callq	cmap_put_code_map
	testl	%eax, %eax
	js	.LBB0_31
# BB#28:                                # %cleanup.cont.100
	movl	$.L.str.23, %esi
	movq	%r15, %rdi
	callq	stream_puts
	movl	$.L.str.24, %esi
	movq	%r15, %rdi
	callq	stream_puts
	cmpl	$0, 80(%r14)
	jne	.LBB0_30
# BB#29:                                # %if.then.105
	movl	$.L.str.25, %esi
	movq	%r15, %rdi
	callq	stream_puts
	movl	$.L.str.26, %esi
	movq	%r15, %rdi
	callq	stream_puts
.LBB0_30:                               # %cleanup.109
	xorl	%eax, %eax
.LBB0_31:                               # %cleanup.109
	addq	$1272, %rsp             # imm = 0x4F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	psf_write_cmap, .Lfunc_end0-psf_write_cmap
	.cfi_endproc

	.align	16, 0x90
	.type	cmap_put_system_info,@function
cmap_put_system_info:                   # @cmap_put_system_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp15:
	.cfi_def_cfa_offset 32
.Ltmp16:
	.cfi_offset %rbx, -24
.Ltmp17:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rbx, %rdi
	callq	cid_system_info_is_null
	testl	%eax, %eax
	je	.LBB1_2
# BB#1:                                 # %if.then
	movl	$.L.str.27, %esi
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	stream_puts             # TAILCALL
.LBB1_2:                                # %if.else
	movl	$.L.str.28, %esi
	movq	%r14, %rdi
	callq	stream_puts
	movl	$.L.str.29, %esi
	movq	%r14, %rdi
	callq	stream_puts
	movq	(%rbx), %rsi
	movl	8(%rbx), %edx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	s_write_ps_string
	movl	$.L.str.30, %esi
	movq	%r14, %rdi
	callq	stream_puts
	movq	16(%rbx), %rsi
	movl	24(%rbx), %edx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	s_write_ps_string
	movl	32(%rbx), %edx
	movl	$.L.str.31, %esi
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	pprintd1                # TAILCALL
.Lfunc_end1:
	.size	cmap_put_system_info, .Lfunc_end1-cmap_put_system_info
	.cfi_endproc

	.align	16, 0x90
	.type	cmap_put_ranges,@function
cmap_put_ranges:                        # @cmap_put_ranges
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
	pushq	%r13
.Ltmp21:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp22:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp24:
	.cfi_def_cfa_offset 64
.Ltmp25:
	.cfi_offset %rbx, -56
.Ltmp26:
	.cfi_offset %r12, -48
.Ltmp27:
	.cfi_offset %r13, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
.Ltmp30:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbp
	movq	%rdi, %r13
	movl	$.L.str.32, %esi
	callq	pprintd1
	testl	%r14d, %r14d
	jle	.LBB2_9
# BB#1:
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB2_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
                                        #     Child Loop BB2_7 Depth 2
	movl	$.L.str.33, %esi
	movq	%r13, %rdi
	callq	stream_puts
	movl	8(%rbp), %r12d
	testl	%r12d, %r12d
	jle	.LBB2_5
# BB#3:                                 # %for.body.i.preheader
                                        #   in Loop: Header=BB2_2 Depth=1
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB2_4:                                # %for.body.i
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rbp,%rbx), %eax
	shrq	$4, %rax
	movzbl	.L.str.37(%rax), %esi
	movq	%r13, %rdi
	callq	spputc
	movzbl	(%rbp,%rbx), %eax
	andl	$15, %eax
	movzbl	.L.str.37(%rax), %esi
	movq	%r13, %rdi
	callq	spputc
	incq	%rbx
	cmpl	%ebx, %r12d
	jne	.LBB2_4
.LBB2_5:                                # %pput_hex.exit
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	$.L.str.34, %esi
	movq	%r13, %rdi
	callq	stream_puts
	movl	8(%rbp), %r12d
	testl	%r12d, %r12d
	jle	.LBB2_8
# BB#6:                                 # %for.body.i.27.preheader
                                        #   in Loop: Header=BB2_2 Depth=1
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB2_7:                                # %for.body.i.27
                                        #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	4(%rbp,%rbx), %eax
	shrq	$4, %rax
	movzbl	.L.str.37(%rax), %esi
	movq	%r13, %rdi
	callq	spputc
	movzbl	4(%rbp,%rbx), %eax
	andl	$15, %eax
	movzbl	.L.str.37(%rax), %esi
	movq	%r13, %rdi
	callq	spputc
	incq	%rbx
	cmpl	%ebx, %r12d
	jne	.LBB2_7
.LBB2_8:                                # %pput_hex.exit28
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	$.L.str.35, %esi
	movq	%r13, %rdi
	callq	stream_puts
	incl	%r15d
	addq	$12, %rbp
	cmpl	%r14d, %r15d
	jne	.LBB2_2
.LBB2_9:                                # %for.end
	movl	$.L.str.36, %esi
	movq	%r13, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	stream_puts             # TAILCALL
.Lfunc_end2:
	.size	cmap_put_ranges, .Lfunc_end2-cmap_put_ranges
	.cfi_endproc

	.align	16, 0x90
	.type	cmap_put_code_map,@function
cmap_put_code_map:                      # @cmap_put_code_map
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp34:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp35:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 56
	subq	$264, %rsp              # imm = 0x108
.Ltmp37:
	.cfi_def_cfa_offset 320
.Ltmp38:
	.cfi_offset %rbx, -56
.Ltmp39:
	.cfi_offset %r12, -48
.Ltmp40:
	.cfi_offset %r13, -40
.Ltmp41:
	.cfi_offset %r14, -32
.Ltmp42:
	.cfi_offset %r15, -24
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%r9, 24(%rsp)           # 8-byte Spill
	movq	%r8, 48(%rsp)           # 8-byte Spill
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movl	40(%rcx), %r15d
	leaq	184(%rsp), %r14
	movq	%rcx, %rdi
	movl	%edx, %esi
	movq	%r14, %rdx
	callq	gs_cmap_lookups_enum_init
	movq	%r14, %rdi
	callq	gs_cmap_enum_next_lookup
	testl	%eax, %eax
	jne	.LBB3_5
# BB#1:                                 # %for.body.lr.ph
	movl	320(%rsp), %r12d
	xorl	%eax, %eax
	cmpl	$1, %r15d
	movl	$-1, %ebp
	cmovlel	%eax, %ebp
	leaq	96(%rsp), %r15
.LBB3_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_9 Depth 2
                                        #     Child Loop BB3_12 Depth 2
                                        #       Child Loop BB3_22 Depth 3
                                        #         Child Loop BB3_32 Depth 4
                                        #           Child Loop BB3_33 Depth 5
                                        #         Child Loop BB3_26 Depth 4
                                        #         Child Loop BB3_29 Depth 4
                                        #         Child Loop BB3_38 Depth 4
	movl	224(%rsp), %edx
	testl	%r12d, %r12d
	js	.LBB3_6
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB3_2 Depth=1
	cmpl	%r12d, %edx
	je	.LBB3_8
	jmp	.LBB3_4
	.align	16, 0x90
.LBB3_6:                                # %land.lhs.true.7
                                        #   in Loop: Header=BB3_2 Depth=1
	cmpl	%ebp, %edx
	je	.LBB3_8
# BB#7:                                 # %if.then.11
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	$.L.str.38, %esi
	movq	%rbx, %rdi
	callq	pprintd1
	movl	224(%rsp), %ebp
.LBB3_8:                                # %if.end.17
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	%ebp, 4(%rsp)           # 4-byte Spill
	movups	248(%rsp), %xmm0
	movaps	%xmm0, 160(%rsp)
	movups	184(%rsp), %xmm0
	movups	200(%rsp), %xmm1
	movups	216(%rsp), %xmm2
	movups	232(%rsp), %xmm3
	movaps	%xmm3, 144(%rsp)
	movaps	%xmm2, 128(%rsp)
	movaps	%xmm1, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	movl	$-1, %r13d
	movq	48(%rsp), %r12          # 8-byte Reload
	.align	16, 0x90
.LBB3_9:                                # %while.cond
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %rdi
	callq	gs_cmap_enum_next_entry
	incl	%r13d
	testl	%eax, %eax
	je	.LBB3_9
# BB#10:                                # %for.cond.20.preheader
                                        #   in Loop: Header=BB3_2 Depth=1
	xorl	%ebp, %ebp
	testl	%r13d, %r13d
	jle	.LBB3_11
.LBB3_12:                               # %for.body.22
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_22 Depth 3
                                        #         Child Loop BB3_32 Depth 4
                                        #           Child Loop BB3_33 Depth 5
                                        #         Child Loop BB3_26 Depth 4
                                        #         Child Loop BB3_29 Depth 4
                                        #         Child Loop BB3_38 Depth 4
	leal	100(%rbp), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	cmpl	%r13d, %eax
	movl	%r13d, %ecx
	cmovlel	%eax, %ecx
	movl	%ecx, 60(%rsp)          # 4-byte Spill
	movl	%ecx, %edx
	subl	%ebp, %edx
	movl	$.L.str.39, %esi
	movq	%rbx, %rdi
	callq	pprintd1
	cmpl	$0, 196(%rsp)
	movl	200(%rsp), %eax
	je	.LBB3_17
# BB#13:                                # %if.then.28
                                        #   in Loop: Header=BB3_12 Depth=2
	cmpl	$3, %eax
	je	.LBB3_15
# BB#14:                                # %if.then.28
                                        #   in Loop: Header=BB3_12 Depth=2
	testl	%eax, %eax
	jne	.LBB3_16
.LBB3_15:                               # %if.then.34
                                        #   in Loop: Header=BB3_12 Depth=2
	movq	16(%r12), %rsi
	movq	%rbx, %rdi
	callq	stream_puts
	movq	24(%r12), %rax
	jmp	.LBB3_21
	.align	16, 0x90
.LBB3_17:                               # %if.else.38
                                        #   in Loop: Header=BB3_12 Depth=2
	cmpl	$3, %eax
	je	.LBB3_19
# BB#18:                                # %if.else.38
                                        #   in Loop: Header=BB3_12 Depth=2
	testl	%eax, %eax
	jne	.LBB3_20
.LBB3_19:                               # %if.then.46
                                        #   in Loop: Header=BB3_12 Depth=2
	movq	(%r12), %rsi
	movq	%rbx, %rdi
	callq	stream_puts
	movq	8(%r12), %rax
	jmp	.LBB3_21
.LBB3_16:                               # %if.else
                                        #   in Loop: Header=BB3_12 Depth=2
	movl	$.L.str.40, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.41, %eax
	jmp	.LBB3_21
.LBB3_20:                               # %if.else.48
                                        #   in Loop: Header=BB3_12 Depth=2
	movl	$.L.str.42, %esi
	movq	%rbx, %rdi
	callq	stream_puts
	movl	$.L.str.43, %eax
	.align	16, 0x90
.LBB3_21:                               # %for.cond.52.preheader
                                        #   in Loop: Header=BB3_12 Depth=2
	movq	%rax, 8(%rsp)           # 8-byte Spill
	cmpl	%ebp, 60(%rsp)          # 4-byte Folded Reload
	jle	.LBB3_43
.LBB3_22:                               # %for.body.54
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_12 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_32 Depth 4
                                        #           Child Loop BB3_33 Depth 5
                                        #         Child Loop BB3_26 Depth 4
                                        #         Child Loop BB3_29 Depth 4
                                        #         Child Loop BB3_38 Depth 4
	movq	%rbp, 64(%rsp)          # 8-byte Spill
	movq	%r14, %rdi
	callq	gs_cmap_enum_next_entry
	movl	216(%rsp), %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	cmpl	$0, 196(%rsp)
	movq	%r14, %rbp
	movl	$0, %r14d
	js	.LBB3_23
	.align	16, 0x90
.LBB3_32:                               # %for.body.62
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_12 Depth=2
                                        #       Parent Loop BB3_22 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB3_33 Depth 5
	movl	$60, %esi
	movq	%rbx, %rdi
	callq	spputc
	movl	192(%rsp), %r15d
	testl	%r15d, %r15d
	movq	%rbp, %r12
	jle	.LBB3_34
	.align	16, 0x90
.LBB3_33:                               # %for.body.i
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_12 Depth=2
                                        #       Parent Loop BB3_22 Depth=3
                                        #         Parent Loop BB3_32 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movzbl	(%r12), %eax
	shrq	$4, %rax
	movzbl	.L.str.37(%rax), %esi
	movq	%rbx, %rdi
	callq	spputc
	movzbl	(%r12), %eax
	andl	$15, %eax
	movzbl	.L.str.37(%rax), %esi
	movq	%rbx, %rdi
	callq	spputc
	incq	%r12
	decl	%r15d
	jne	.LBB3_33
.LBB3_34:                               # %pput_hex.exit
                                        #   in Loop: Header=BB3_32 Depth=4
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
	movslq	196(%rsp), %rax
	addq	$4, %rbp
	cmpq	%rax, %r14
	leaq	1(%r14), %r14
	jl	.LBB3_32
.LBB3_23:                               # %for.cond.68.preheader
                                        #   in Loop: Header=BB3_22 Depth=3
	movq	72(%rsp), %r14          # 8-byte Reload
	testl	%r14d, %r14d
	movl	$0, %edx
	jle	.LBB3_30
# BB#24:                                # %for.body.70.lr.ph
                                        #   in Loop: Header=BB3_22 Depth=3
	movq	208(%rsp), %rax
	leal	-1(%r14), %ecx
	testb	$3, %r14b
	movl	$0, %esi
	movl	$0, %edx
	je	.LBB3_27
# BB#25:                                # %for.body.70.prol.preheader
                                        #   in Loop: Header=BB3_22 Depth=3
	movl	%r14d, %edi
	andl	$3, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	.align	16, 0x90
.LBB3_26:                               # %for.body.70.prol
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_12 Depth=2
                                        #       Parent Loop BB3_22 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	shlq	$8, %rdx
	movzbl	(%rax,%rsi), %ebp
	orq	%rbp, %rdx
	incq	%rsi
	cmpl	%esi, %edi
	jne	.LBB3_26
.LBB3_27:                               # %for.body.70.lr.ph.split
                                        #   in Loop: Header=BB3_22 Depth=3
	cmpl	$3, %ecx
	jb	.LBB3_30
# BB#28:                                # %for.body.70.lr.ph.split.split
                                        #   in Loop: Header=BB3_22 Depth=3
	movl	%r14d, %ecx
	subl	%esi, %ecx
	leaq	3(%rax,%rsi), %rax
	.align	16, 0x90
.LBB3_29:                               # %for.body.70
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_12 Depth=2
                                        #       Parent Loop BB3_22 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	shlq	$8, %rdx
	movzbl	-3(%rax), %esi
	orq	%rdx, %rsi
	shlq	$8, %rsi
	movzbl	-2(%rax), %edx
	orq	%rsi, %rdx
	shlq	$8, %rdx
	movzbl	-1(%rax), %esi
	orq	%rdx, %rsi
	shlq	$8, %rsi
	movzbl	(%rax), %edx
	orq	%rsi, %rdx
	addq	$4, %rax
	addl	$-4, %ecx
	jne	.LBB3_29
.LBB3_30:                               # %for.end.78
                                        #   in Loop: Header=BB3_22 Depth=3
	movl	$-28, %eax
	movl	200(%rsp), %ecx
	cmpq	$3, %rcx
	ja	.LBB3_5
# BB#31:                                # %for.end.78
                                        #   in Loop: Header=BB3_22 Depth=3
	jmpq	*.LJTI3_0(,%rcx,8)
.LBB3_35:                               # %sw.bb
                                        #   in Loop: Header=BB3_22 Depth=3
	movl	$.L.str.44, %esi
	movq	%rbx, %rdi
	callq	pprintld1
	jmp	.LBB3_42
	.align	16, 0x90
.LBB3_40:                               # %sw.bb.88
                                        #   in Loop: Header=BB3_22 Depth=3
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	96(%rax), %rcx
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	%rdx, %rsi
	leaq	80(%rsp), %rdx
	callq	*88(%rax)
	testl	%eax, %eax
	js	.LBB3_5
# BB#41:                                # %if.end.94
                                        #   in Loop: Header=BB3_22 Depth=3
	movl	$47, %esi
	movq	%rbx, %rdi
	callq	spputc
	movq	80(%rsp), %rsi
	movl	88(%rsp), %edx
	movq	%rbx, %rdi
	callq	*24(%rsp)               # 8-byte Folded Reload
	testl	%eax, %eax
	jns	.LBB3_42
	jmp	.LBB3_5
	.align	16, 0x90
.LBB3_36:                               # %sw.bb.82
                                        #   in Loop: Header=BB3_22 Depth=3
	movl	$60, %esi
	movq	%rbx, %rdi
	callq	spputc
	testl	%r14d, %r14d
	jle	.LBB3_39
# BB#37:                                #   in Loop: Header=BB3_22 Depth=3
	movq	208(%rsp), %rbp
	.align	16, 0x90
.LBB3_38:                               # %for.body.i.78
                                        #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_12 Depth=2
                                        #       Parent Loop BB3_22 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%rbp), %eax
	shrq	$4, %rax
	movzbl	.L.str.37(%rax), %esi
	movq	%rbx, %rdi
	callq	spputc
	movzbl	(%rbp), %eax
	andl	$15, %eax
	movzbl	.L.str.37(%rax), %esi
	movq	%rbx, %rdi
	callq	spputc
	incq	%rbp
	decl	%r14d
	jne	.LBB3_38
.LBB3_39:                               # %pput_hex.exit79
                                        #   in Loop: Header=BB3_22 Depth=3
	movl	$62, %esi
	movq	%rbx, %rdi
	callq	spputc
.LBB3_42:                               # %cleanup.thread82
                                        #   in Loop: Header=BB3_22 Depth=3
	leaq	184(%rsp), %r14
	leaq	96(%rsp), %r15
	movq	64(%rsp), %rbp          # 8-byte Reload
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	spputc
	incl	%ebp
	cmpl	60(%rsp), %ebp          # 4-byte Folded Reload
	jl	.LBB3_22
	.align	16, 0x90
.LBB3_43:                               # %cleanup.114.thread
                                        #   in Loop: Header=BB3_12 Depth=2
	movq	%rbx, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	stream_puts
	movl	20(%rsp), %eax          # 4-byte Reload
	cmpl	%r13d, %eax
	movl	%eax, %ebp
	movq	48(%rsp), %r12          # 8-byte Reload
	jl	.LBB3_12
	.align	16, 0x90
.LBB3_11:                               #   in Loop: Header=BB3_2 Depth=1
	movl	320(%rsp), %r12d
	movl	4(%rsp), %ebp           # 4-byte Reload
.LBB3_4:                                # %cleanup.122.thread88
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	%r14, %rdi
	callq	gs_cmap_enum_next_lookup
	testl	%eax, %eax
	je	.LBB3_2
.LBB3_5:                                # %cleanup.128
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	cmap_put_code_map, .Lfunc_end3-cmap_put_code_map
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_35
	.quad	.LBB3_40
	.quad	.LBB3_36
	.quad	.LBB3_35

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%!PS-Adobe-3.0 Resource-CMap\n"
	.size	.L.str, 30

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%%DocumentNeededResources: ProcSet (CIDInit)\n"
	.size	.L.str.1, 46

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%%IncludeResource: ProcSet (CIDInit)\n"
	.size	.L.str.2, 38

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%%BeginResource: CMap ("
	.size	.L.str.3, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	")\n%%Title: ("
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	" "
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	" %d)\n"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%%%%Version: %g\n"
	.size	.L.str.7, 17

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"/CIDInit /ProcSet findresource begin\n"
	.size	.L.str.8, 38

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"12 dict begin\nbegincmap\n"
	.size	.L.str.9, 25

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"/CMapType %d def\n"
	.size	.L.str.10, 18

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"/CMapName/"
	.size	.L.str.11, 11

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	" def\n"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"/CMapVersion %g def\n"
	.size	.L.str.13, 21

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"/CIDSystemInfo"
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	" %d array\n"
	.size	.L.str.15, 11

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"dup %d"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"put\n"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"/XUID ["
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	" %ld"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"] def\n"
	.size	.L.str.20, 7

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"/UIDOffset %ld def\n"
	.size	.L.str.21, 20

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"/WMode %d def\n"
	.size	.L.str.22, 15

	.type	cmap_notdef_operators,@object # @cmap_notdef_operators
	.section	.rodata,"a",@progbits
	.align	8
cmap_notdef_operators:
	.quad	.L.str.45
	.quad	.L.str.46
	.quad	.L.str.47
	.quad	.L.str.48
	.size	cmap_notdef_operators, 32

	.type	cmap_cid_operators,@object # @cmap_cid_operators
	.align	8
cmap_cid_operators:
	.quad	.L.str.49
	.quad	.L.str.50
	.quad	.L.str.51
	.quad	.L.str.52
	.size	cmap_cid_operators, 32

	.type	.L.str.23,@object       # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"endcmap\n"
	.size	.L.str.23, 9

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"CMapName currentdict /CMap defineresource pop\nend end\n"
	.size	.L.str.24, 55

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"%%EndResource\n"
	.size	.L.str.25, 15

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"%%EOF\n"
	.size	.L.str.26, 7

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	" null "
	.size	.L.str.27, 7

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	" 3 dict dup begin\n"
	.size	.L.str.28, 19

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"/Registry "
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	" def\n/Ordering "
	.size	.L.str.30, 16

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	" def\n/Supplement %d def\nend "
	.size	.L.str.31, 29

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%d begincodespacerange\n"
	.size	.L.str.32, 24

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"<"
	.size	.L.str.33, 2

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"><"
	.size	.L.str.34, 3

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	">\n"
	.size	.L.str.35, 3

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"endcodespacerange\n"
	.size	.L.str.36, 19

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"0123456789abcdef"
	.size	.L.str.37, 17

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"%d usefont\n"
	.size	.L.str.38, 12

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"%d "
	.size	.L.str.39, 4

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"beginbfrange\n"
	.size	.L.str.40, 14

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"endbfrange\n"
	.size	.L.str.41, 12

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"beginbfchar\n"
	.size	.L.str.42, 13

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"endbfchar\n"
	.size	.L.str.43, 11

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"%ld"
	.size	.L.str.44, 4

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"beginnotdefchar\n"
	.size	.L.str.45, 17

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"endnotdefchar\n"
	.size	.L.str.46, 15

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"beginnotdefrange\n"
	.size	.L.str.47, 18

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"endnotdefrange\n"
	.size	.L.str.48, 16

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"begincidchar\n"
	.size	.L.str.49, 14

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"endcidchar\n"
	.size	.L.str.50, 12

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"begincidrange\n"
	.size	.L.str.51, 15

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"endcidrange\n"
	.size	.L.str.52, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
