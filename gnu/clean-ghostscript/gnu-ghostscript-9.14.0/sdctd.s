	.text
	.file	"sdctd.bc"
	.align	16, 0x90
	.type	s_DCTD_init,@function
s_DCTD_init:                            # @s_DCTD_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	152(%rdi), %rax
	movq	$dctd_init_source, 1360(%rax)
	movq	$dctd_fill_input_buffer, 1368(%rax)
	movq	$dctd_skip_input_data, 1376(%rax)
	movq	$dctd_term_source, 1392(%rax)
	movq	$jpeg_resync_to_restart, 1384(%rax)
	leaq	1344(%rax), %rax
	movq	144(%rdi), %rcx
	movq	152(%rdi), %rdx
	movq	%rcx, 432(%rdx)
	movq	152(%rdi), %rcx
	movq	%rax, 504(%rcx)
	movq	152(%rdi), %rax
	movq	$0, 1400(%rax)
	movl	$0, 1408(%rax)
	movl	$0, 1412(%rax)
	movl	$0, 188(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	s_DCTD_init, .Lfunc_end0-s_DCTD_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_DCTD_process,@function
s_DCTD_process:                         # @s_DCTD_process
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
	subq	$56, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 112
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
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movq	%rsi, %r13
	movq	%rdi, %r14
	movq	152(%r14), %r12
	movq	504(%r12), %r8
	movq	1400(%r12), %rax
	testq	%rax, %rax
	je	.LBB1_1
# BB#2:                                 # %if.then
	movq	(%r13), %rdx
	movq	8(%r13), %rbx
	movq	%rbx, %rdi
	subq	%rdx, %rdi
	movq	%rax, %rsi
	subq	%rdi, %rsi
	jle	.LBB1_5
# BB#3:                                 # %if.then.4
	movq	%rsi, 1400(%r12)
	movq	%rbx, (%r13)
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB1_81
# BB#4:                                 # %if.end
	movq	$0, 1400(%r12)
	xorl	%eax, %eax
	movq	%rbx, %rdx
.LBB1_5:                                # %if.end.10
	leaq	8(%r13), %rsi
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	addq	%rax, %rdx
	movq	%rdx, (%r13)
	movq	$0, 1400(%r12)
	movq	%rbx, %rsi
	jmp	.LBB1_6
.LBB1_1:                                # %entry.if.end.14_crit_edge
	movq	(%r13), %rdx
	movq	8(%r13), %rsi
	movq	%r13, %rax
	addq	$8, %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%rsi, %rbx
.LBB1_6:                                # %if.end.14
	leaq	1(%rdx), %rbp
	movq	%rbp, (%r8)
	subq	%rdx, %rbx
	movq	%rbx, 8(%r8)
	movl	%ecx, 1408(%r12)
	movl	188(%r14), %ecx
	cmpq	$5, %rcx
	jbe	.LBB1_7
# BB#80:                                # %sw.epilog.288
	movl	$-2, %eax
.LBB1_81:                               # %cleanup.289
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_7:                                # %if.end.14
	movq	%r8, 16(%rsp)           # 8-byte Spill
	movl	$-1, %eax
	jmpq	*.LJTI1_0(,%rcx,8)
.LBB1_9:                                # %while.cond.preheader
	cmpq	%rsi, %rdx
	jae	.LBB1_10
	.align	16, 0x90
.LBB1_11:                               # %land.end
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rax
	movzbl	(%rax), %ecx
	cmpl	$255, %ecx
	je	.LBB1_14
# BB#12:                                # %while.body
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	%rax, (%r13)
	leaq	1(%rax), %rbp
	cmpq	%rsi, %rax
	movq	%rax, %rdx
	jb	.LBB1_11
# BB#13:                                # %while.end.loopexitsplit
	decq	%rbp
	movq	%rax, %rdx
	jmp	.LBB1_15
.LBB1_8:                                # %if.end.14.dumpbuffer.preheader_crit_edge
	leaq	1424(%r12), %rcx
	leaq	184(%r14), %r15
	leaq	1412(%r12), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	jmp	.LBB1_42
.LBB1_10:
	movq	%rdx, %rbp
	jmp	.LBB1_15
.LBB1_14:                               # %land.end.while.end.loopexit_crit_edge
	decq	%rax
	movq	%rax, %rbp
.LBB1_15:                               # %while.end
	xorl	%eax, %eax
	cmpq	%rsi, %rbp
	je	.LBB1_81
# BB#16:                                # %if.end.34
	incq	%rbp
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	%rbp, (%rcx)
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	subq	%rdx, %rax
	movq	%rax, 8(%rcx)
	movl	$1, 188(%r14)
.LBB1_17:                               # %sw.bb.45
	movl	$1, %esi
	movq	%r14, %rdi
	callq	gs_jpeg_read_header
	movl	%eax, %ecx
	movl	$-2, %eax
	testl	%ecx, %ecx
	js	.LBB1_81
# BB#18:                                # %if.end.49
	cmpl	$0, 1412(%r12)
	je	.LBB1_20
# BB#19:                                # %cond.true
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	jmp	.LBB1_21
.LBB1_20:                               # %cond.false
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	decq	%rax
.LBB1_21:                               # %cond.end
	movq	%rax, (%r13)
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB1_81
# BB#22:                                # %sw.epilog
	movl	132(%r14), %eax
	cmpl	$-1, %eax
	jne	.LBB1_26
# BB#23:                                # %if.then.58
	cmpl	$3, 520(%r12)
	jne	.LBB1_25
# BB#24:                                # %if.then.62
	movl	$1, 132(%r14)
	movl	$1, %eax
	jmp	.LBB1_26
.LBB1_25:                               # %if.else
	movl	$0, 132(%r14)
	xorl	%eax, %eax
.LBB1_26:                               # %if.end.66
	cmpl	$0, 852(%r12)
	je	.LBB1_28
# BB#27:                                # %if.then.69
	movzbl	856(%r12), %eax
	movl	%eax, 132(%r14)
.LBB1_28:                               # %if.end.73
	movl	520(%r12), %ecx
	cmpl	$4, %ecx
	jne	.LBB1_29
# BB#31:                                # %sw.bb.81
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	orl	$4, %eax
	jmp	.LBB1_32
.LBB1_29:                               # %if.end.73
	cmpl	$3, %ecx
	jne	.LBB1_33
# BB#30:                                # %sw.bb.76
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	orl	$2, %eax
.LBB1_32:                               # %sw.epilog.87
	movl	%eax, 524(%r12)
.LBB1_33:                               # %sw.epilog.87
	movl	$2, 188(%r14)
.LBB1_34:                               # %sw.bb.89
	movq	%r14, %rdi
	callq	gs_jpeg_start_decompress
	movl	%eax, %ecx
	movl	$-2, %eax
	testl	%ecx, %ecx
	js	.LBB1_81
# BB#35:                                # %if.end.94
	cmpl	$0, 1412(%r12)
	movq	16(%rsp), %rax          # 8-byte Reload
	je	.LBB1_37
# BB#36:                                # %cond.true.97
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	jmp	.LBB1_38
.LBB1_37:                               # %cond.false.99
	movq	(%rax), %rax
	decq	%rax
.LBB1_38:                               # %cond.end.102
	movq	%rax, (%r13)
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB1_81
# BB#39:                                # %if.end.108
	movl	612(%r12), %eax
	imull	600(%r12), %eax
	leaq	184(%r14), %r15
	movl	%eax, 184(%r14)
	cmpl	28(%r12), %eax
	jbe	.LBB1_41
# BB#40:                                # %if.then.117
	movq	432(%r12), %rdi
	callq	*32(%rdi)
	movq	8(%rax), %rbx
	movq	432(%r12), %rdi
	callq	*32(%rdi)
	movl	(%r15), %esi
	movl	$.L.str, %edx
	movq	%rax, %rdi
	callq	*%rbx
	movq	%rax, 1416(%r12)
	testq	%rax, %rax
	movl	$-2, %eax
	je	.LBB1_81
.LBB1_41:                               # %if.end.133
	leaq	1412(%r12), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leaq	1424(%r12), %rcx
	movl	$0, 1424(%r12)
	movl	$3, 188(%r14)
.LBB1_42:                               # %dumpbuffer.preheader
	movq	%rcx, (%rsp)            # 8-byte Spill
	jmp	.LBB1_43
.LBB1_82:                               # %cleanup.260
                                        #   in Loop: Header=BB1_43 Depth=1
	movq	(%rsp), %rcx            # 8-byte Reload
	movl	%eax, (%rcx)
.LBB1_43:                               # %dumpbuffer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_46 Depth 2
	movl	(%rcx), %eax
	testl	%eax, %eax
	je	.LBB1_45
# BB#44:                                # %if.then.139
                                        #   in Loop: Header=BB1_43 Depth=1
	movq	40(%rsp), %rbx          # 8-byte Reload
	movl	16(%rbx), %ebp
	movq	8(%rbx), %rdi
	subl	%edi, %ebp
	cmpl	%ebp, %eax
	cmovbl	%eax, %ebp
	incq	%rdi
	movl	(%r15), %esi
	subl	%eax, %esi
	addq	1416(%r12), %rsi
	movl	%ebp, %edx
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	callq	memcpy
	movq	8(%rsp), %rax           # 8-byte Reload
	addq	%rax, 8(%rbx)
	movl	1424(%r12), %eax
	subl	%ebp, %eax
	movl	%eax, 1424(%r12)
	movl	$1, %eax
	jne	.LBB1_81
.LBB1_45:                               # %while.cond.182.preheader
                                        #   in Loop: Header=BB1_43 Depth=1
	movl	604(%r12), %eax
	cmpl	632(%r12), %eax
	movq	40(%rsp), %rbx          # 8-byte Reload
	movq	32(%rsp), %rbp          # 8-byte Reload
	jbe	.LBB1_73
	.align	16, 0x90
.LBB1_46:                               # %while.body.187
                                        #   Parent Loop BB1_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	1416(%r12), %rcx
	testq	%rcx, %rcx
	jne	.LBB1_49
# BB#47:                                # %if.else.193
                                        #   in Loop: Header=BB1_46 Depth=2
	movl	16(%rbx), %edx
	movq	8(%rbx), %rcx
	subl	%ecx, %edx
	movl	$1, %eax
	cmpl	(%r15), %edx
	jb	.LBB1_81
# BB#48:                                # %if.end.204
                                        #   in Loop: Header=BB1_46 Depth=2
	incq	%rcx
.LBB1_49:                               # %if.end.207
                                        #   in Loop: Header=BB1_46 Depth=2
	movq	%rcx, 48(%rsp)
	movl	$1, %edx
	movq	%r14, %rdi
	leaq	48(%rsp), %rsi
	callq	gs_jpeg_read_scanlines
	movl	%eax, %ecx
	movl	$-2, %eax
	testl	%ecx, %ecx
	js	.LBB1_81
# BB#50:                                # %do.end.215
                                        #   in Loop: Header=BB1_46 Depth=2
	movq	24(%rsp), %rdx          # 8-byte Reload
	cmpl	$0, (%rdx)
	je	.LBB1_52
# BB#51:                                # %cond.true.218
                                        #   in Loop: Header=BB1_46 Depth=2
	movq	(%rbp), %rdx
	jmp	.LBB1_53
	.align	16, 0x90
.LBB1_52:                               # %cond.false.220
                                        #   in Loop: Header=BB1_46 Depth=2
	movq	16(%rsp), %rdx          # 8-byte Reload
	movq	(%rdx), %rdx
	decq	%rdx
.LBB1_53:                               # %cond.end.223
                                        #   in Loop: Header=BB1_46 Depth=2
	movq	%rdx, (%r13)
	testl	%ecx, %ecx
	je	.LBB1_54
# BB#71:                                # %if.end.248
                                        #   in Loop: Header=BB1_46 Depth=2
	movl	(%r15), %eax
	cmpq	$0, 1416(%r12)
	jne	.LBB1_82
# BB#72:                                # %cleanup.260.thread129
                                        #   in Loop: Header=BB1_46 Depth=2
	addq	%rax, 8(%rbx)
	movl	604(%r12), %eax
	cmpl	632(%r12), %eax
	ja	.LBB1_46
.LBB1_73:                               # %while.end.264
	movl	$4, 188(%r14)
.LBB1_74:                               # %sw.bb.266
	movq	%r14, %rdi
	callq	gs_jpeg_finish_decompress
	movl	%eax, %ecx
	movl	$-2, %eax
	testl	%ecx, %ecx
	js	.LBB1_81
# BB#75:                                # %if.end.271
	cmpl	$0, 1412(%r12)
	je	.LBB1_77
# BB#76:                                # %cond.true.274
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	jmp	.LBB1_78
.LBB1_54:                               # %if.then.227
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx), %rcx
	decq	%rcx
	cmpq	%rdx, %rcx
	jne	.LBB1_70
# BB#55:                                # %land.lhs.true
	movq	(%rbp), %rcx
	movq	%rcx, %rsi
	subq	%rdx, %rsi
	movq	(%r14), %rdi
	movl	24(%rdi), %edi
	cmpq	%rdi, %rsi
	jl	.LBB1_70
# BB#56:                                # %land.lhs.true.242
	cmpq	$2, %rsi
	jl	.LBB1_81
.LBB1_57:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	leaq	-1(%rcx), %rsi
	movzbl	(%rcx), %edi
	cmpl	$255, %edi
	jne	.LBB1_58
# BB#59:                                # %if.then.i
                                        #   in Loop: Header=BB1_57 Depth=1
	movzbl	-1(%rcx), %edi
	addq	$-2, %rcx
	cmpl	$255, %edi
	je	.LBB1_61
# BB#60:                                #   in Loop: Header=BB1_57 Depth=1
	movq	%rcx, %rsi
.LBB1_58:                               # %while.cond.backedge.i
                                        #   in Loop: Header=BB1_57 Depth=1
	movq	%rsi, %rcx
	subq	%rdx, %rcx
	cmpq	$1, %rcx
	movq	%rsi, %rcx
	jg	.LBB1_57
	jmp	.LBB1_81
.LBB1_77:                               # %cond.false.276
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	decq	%rax
.LBB1_78:                               # %cond.end.279
	movq	%rax, (%r13)
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB1_81
# BB#79:                                # %if.end.285
	movl	$5, 188(%r14)
	movl	$-1, %eax
	jmp	.LBB1_81
.LBB1_61:                               # %while.cond.9.outer.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_62 Depth 2
                                        #     Child Loop BB1_65 Depth 2
	cmpq	%rdx, %rcx
	je	.LBB1_64
.LBB1_62:                               # %land.rhs.i
                                        #   Parent Loop BB1_61 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rcx), %edi
	cmpl	$255, %edi
	jne	.LBB1_65
# BB#63:                                # %while.body.16.i
                                        #   in Loop: Header=BB1_62 Depth=2
	decq	%rcx
	cmpq	%rcx, %rdx
	jne	.LBB1_62
.LBB1_64:                               #   in Loop: Header=BB1_61 Depth=1
	movq	%rdx, %rcx
.LBB1_65:                               # %while.cond.19.i
                                        #   Parent Loop BB1_61 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rdx, %rcx
	je	.LBB1_66
# BB#67:                                # %while.body.23.i
                                        #   in Loop: Header=BB1_65 Depth=2
	movzbl	(%rcx), %edi
	decq	%rcx
	movb	%dil, (%rsi)
	decq	%rsi
	movq	(%r13), %rdx
	cmpl	$255, %edi
	jne	.LBB1_65
# BB#68:                                # %do.cond.i
                                        #   in Loop: Header=BB1_61 Depth=1
	cmpq	%rdx, %rcx
	jne	.LBB1_61
	jmp	.LBB1_69
.LBB1_66:
	movq	%rdx, %rcx
.LBB1_69:                               # %compact_jpeg_buffer.exit
	movq	%rsi, (%r13)
	cmpl	%ecx, %esi
	je	.LBB1_81
.LBB1_70:                               # %if.end.247
	xorl	%eax, %eax
	jmp	.LBB1_81
.Lfunc_end1:
	.size	s_DCTD_process, .Lfunc_end1-s_DCTD_process
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_9
	.quad	.LBB1_17
	.quad	.LBB1_34
	.quad	.LBB1_8
	.quad	.LBB1_74
	.quad	.LBB1_81

	.text
	.align	16, 0x90
	.type	s_DCTD_set_defaults,@function
s_DCTD_set_defaults:                    # @s_DCTD_set_defaults
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	s_DCT_set_defaults      # TAILCALL
.Lfunc_end2:
	.size	s_DCTD_set_defaults, .Lfunc_end2-s_DCTD_set_defaults
	.cfi_endproc

	.align	16, 0x90
	.type	dctd_init_source,@function
dctd_init_source:                       # @dctd_init_source
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end3:
	.size	dctd_init_source, .Lfunc_end3-dctd_init_source
	.cfi_endproc

	.align	16, 0x90
	.type	dctd_fill_input_buffer,@function
dctd_fill_input_buffer:                 # @dctd_fill_input_buffer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	xorl	%eax, %eax
	cmpl	$0, 944(%rbx)
	je	.LBB4_2
# BB#1:                                 # %if.end
	movq	(%rbx), %rax
	movl	$123, 40(%rax)
	movl	$-1, %esi
	movq	%rbx, %rdi
	callq	*8(%rax)
	movq	40(%rbx), %rax
	movq	$fake_eoi, (%rax)
	movq	$2, 8(%rax)
	movl	$1, 948(%rbx)
	movl	$1, %eax
.LBB4_2:                                # %cleanup
	popq	%rbx
	retq
.Lfunc_end4:
	.size	dctd_fill_input_buffer, .Lfunc_end4-dctd_fill_input_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	dctd_skip_input_data,@function
dctd_skip_input_data:                   # @dctd_skip_input_data
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rsi, %rsi
	jle	.LBB5_4
# BB#1:                                 # %if.then
	movq	40(%rdi), %rax
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	subq	%rsi, %rdx
	jae	.LBB5_3
# BB#2:                                 # %if.then.3
	subq	%rcx, %rsi
	addq	%rsi, 936(%rdi)
	addq	%rcx, (%rax)
	movq	$0, 8(%rax)
	retq
.LBB5_3:                                # %if.end
	addq	%rsi, (%rax)
	movq	%rdx, 8(%rax)
.LBB5_4:                                # %cleanup
	retq
.Lfunc_end5:
	.size	dctd_skip_input_data, .Lfunc_end5-dctd_skip_input_data
	.cfi_endproc

	.align	16, 0x90
	.type	dctd_term_source,@function
dctd_term_source:                       # @dctd_term_source
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end6:
	.size	dctd_term_source, .Lfunc_end6-dctd_term_source
	.cfi_endproc

	.type	s_DCTD_template,@object # @s_DCTD_template
	.section	.rodata,"a",@progbits
	.globl	s_DCTD_template
	.align	8
s_DCTD_template:
	.quad	st_DCT_state
	.quad	s_DCTD_init
	.quad	s_DCTD_process
	.long	2000                    # 0x7d0
	.long	4000                    # 0xfa0
	.quad	0
	.quad	s_DCTD_set_defaults
	.quad	0
	.size	s_DCTD_template, 56

	.type	fake_eoi,@object        # @fake_eoi
fake_eoi:
	.ascii	"\377\331"
	.size	fake_eoi, 2

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"s_DCTD_process(scanline_buffer)"
	.size	.L.str, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
