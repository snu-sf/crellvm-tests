	.text
	.file	"spsdf.bc"
	.globl	s_write_ps_string
	.align	16, 0x90
	.type	s_write_ps_string,@function
s_write_ps_string:                      # @s_write_ps_string
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
	subq	$296, %rsp              # imm = 0x128
.Ltmp6:
	.cfi_def_cfa_offset 352
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
	movq	%rsi, %r15
	movq	%rdi, %rbx
	testb	$1, %cl
	jne	.LBB0_5
# BB#1:                                 # %for.cond.8.preheader
	movl	%ecx, 4(%rsp)           # 4-byte Spill
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	xorl	%r13d, %r13d
	testl	%r14d, %r14d
	je	.LBB0_21
# BB#2:
	movl	%r14d, %r12d
	movq	%r15, %rbx
	.align	16, 0x90
.LBB0_3:                                # %for.body.11
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %ebp
	movb	%bpl, %al
	decb	%al
	movzbl	%al, %eax
	cmpl	$126, %eax
	jb	.LBB0_17
# BB#4:                                 # %if.then.21
                                        #   in Loop: Header=BB0_3 Depth=1
	addl	$3, %r13d
	jmp	.LBB0_20
	.align	16, 0x90
.LBB0_17:                               # %if.else
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$.L.str.2, %edi
	movl	%ebp, %esi
	callq	strchr
	testq	%rax, %rax
	je	.LBB0_19
# BB#18:                                # %if.then.26
                                        #   in Loop: Header=BB0_3 Depth=1
	incl	%r13d
	jmp	.LBB0_20
.LBB0_19:                               # %if.else.28
                                        #   in Loop: Header=BB0_3 Depth=1
	leal	3(%r13), %eax
	cmpl	$32, %ebp
	cmovbl	%eax, %r13d
	.align	16, 0x90
.LBB0_20:                               # %if.end.36
                                        #   in Loop: Header=BB0_3 Depth=1
	incq	%rbx
	decl	%r12d
	jne	.LBB0_3
.LBB0_21:                               # %for.end.39
	movl	4(%rsp), %eax           # 4-byte Reload
	testb	$4, %al
	jne	.LBB0_23
# BB#22:                                # %for.end.39
	cmpl	%r14d, %r13d
	jb	.LBB0_23
# BB#24:                                # %if.else.47
	leaq	176(%rsp), %r12
	movq	$1, 284(%rsp)
	movl	$60, %esi
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	spputc
	movl	$s_AXE_template, %eax
	jmp	.LBB0_25
.LBB0_5:                                # %if.then
	movl	$40, %esi
	movq	%rbx, %rdi
	callq	spputc
	testl	%r14d, %r14d
	je	.LBB0_16
	.align	16, 0x90
.LBB0_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r15), %ebp
	cmpl	$39, %ebp
	jle	.LBB0_7
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB0_6 Depth=1
	leal	-40(%rbp), %eax
	cmpl	$2, %eax
	jb	.LBB0_13
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$92, %ebp
	jne	.LBB0_14
	.align	16, 0x90
.LBB0_13:                               # %sw.bb.4
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$92, %esi
	movq	%rbx, %rdi
	callq	spputc
	jmp	.LBB0_14
	.align	16, 0x90
.LBB0_7:                                # %for.body
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$10, %ebp
	jne	.LBB0_8
# BB#28:                                # %sw.bb.2
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$.L.str.1, %esi
	jmp	.LBB0_10
	.align	16, 0x90
.LBB0_8:                                # %for.body
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$13, %ebp
	jne	.LBB0_14
# BB#9:                                 # %sw.bb
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$.L.str, %esi
.LBB0_10:                               # %cleanup
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	%rbx, %rdi
	callq	stream_puts
	jmp	.LBB0_15
	.align	16, 0x90
.LBB0_14:                               # %sw.epilog
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	spputc
.LBB0_15:                               # %cleanup
                                        #   in Loop: Header=BB0_6 Depth=1
	incq	%r15
	decl	%r14d
	jne	.LBB0_6
.LBB0_16:                               # %for.end
	movl	$41, %esi
	movq	%rbx, %rdi
	callq	spputc
	jmp	.LBB0_27
.LBB0_23:                               # %if.then.45
	movl	$40, %esi
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	spputc
	movl	$s_PSSE_template, %eax
	xorl	%r12d, %r12d
.LBB0_25:                               # %if.end.49
	leaq	-1(%r15), %rcx
	movq	%rcx, 40(%rsp)
	movl	%r14d, %ecx
	leaq	-1(%r15,%rcx), %rcx
	movq	%rcx, 48(%rsp)
	leaq	163(%rsp), %rcx
	movq	%rcx, 32(%rsp)
	movq	16(%rax), %r15
	leaq	16(%rsp), %r13
	leaq	64(%rsp), %rbx
	movq	8(%rsp), %r14           # 8-byte Reload
	.align	16, 0x90
.LBB0_26:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	63(%rsp), %rax
	movq	%rax, 24(%rsp)
	movl	$1, %ecx
	movq	%r12, %rdi
	leaq	40(%rsp), %rsi
	movq	%r13, %rdx
	callq	*%r15
	movl	%eax, %ebp
	movl	24(%rsp), %edx
	incl	%edx
	subl	%ebx, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	stream_write
	cmpl	$1, %ebp
	je	.LBB0_26
.LBB0_27:                               # %cleanup.67
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	s_write_ps_string, .Lfunc_end0-s_write_ps_string
	.cfi_endproc

	.globl	s_alloc_position_stream
	.align	16, 0x90
	.type	s_alloc_position_stream,@function
s_alloc_position_stream:                # @s_alloc_position_stream
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbx, -16
	movq	%rsi, %rax
	movq	%rdi, %rbx
	movl	$.L.str.3, %esi
	movq	%rax, %rdi
	callq	s_alloc
	movq	%rax, (%rbx)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB1_2
# BB#1:                                 # %if.end
	movq	%rax, %rdi
	callq	swrite_position_only
	xorl	%ecx, %ecx
.LBB1_2:                                # %cleanup
	movl	%ecx, %eax
	popq	%rbx
	retq
.Lfunc_end1:
	.size	s_alloc_position_stream, .Lfunc_end1-s_alloc_position_stream
	.cfi_endproc

	.globl	s_init_param_printer
	.align	16, 0x90
	.type	s_init_param_printer,@function
s_init_param_printer:                   # @s_init_param_printer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 32
.Ltmp18:
	.cfi_offset %rbx, -32
.Ltmp19:
	.cfi_offset %r14, -24
.Ltmp20:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	$printer_param_list_procs, %esi
	xorl	%edx, %edx
	callq	gs_param_list_init
	movq	%r14, 24(%rbx)
	movq	32(%r15), %rax
	movq	%rax, 64(%rbx)
	movups	(%r15), %xmm0
	movups	16(%r15), %xmm1
	movups	%xmm1, 48(%rbx)
	movups	%xmm0, 32(%rbx)
	movl	$0, 72(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	s_init_param_printer, .Lfunc_end2-s_init_param_printer
	.cfi_endproc

	.globl	s_alloc_param_printer
	.align	16, 0x90
	.type	s_alloc_param_printer,@function
s_alloc_param_printer:                  # @s_alloc_param_printer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp21:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp22:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp23:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp24:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 48
.Ltmp26:
	.cfi_offset %rbx, -48
.Ltmp27:
	.cfi_offset %r12, -40
.Ltmp28:
	.cfi_offset %r13, -32
.Ltmp29:
	.cfi_offset %r14, -24
.Ltmp30:
	.cfi_offset %r15, -16
	movq	%rcx, %r12
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %r13
	movl	$st_printer_param_list, %esi
	movl	$.L.str.5, %edx
	movq	%r12, %rdi
	callq	*72(%r12)
	movq	%rax, %rbx
	movq	%rbx, (%r13)
	movl	$-25, %r13d
	testq	%rbx, %rbx
	je	.LBB3_2
# BB#1:                                 # %if.end
	xorl	%r13d, %r13d
	movl	$printer_param_list_procs, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	gs_param_list_init
	movq	%r15, 24(%rbx)
	movq	32(%r14), %rax
	movq	%rax, 64(%rbx)
	movups	(%r14), %xmm0
	movups	16(%r14), %xmm1
	movups	%xmm1, 48(%rbx)
	movups	%xmm0, 32(%rbx)
	movl	$0, 72(%rbx)
	movq	%r12, 8(%rbx)
.LBB3_2:                                # %cleanup
	movl	%r13d, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	s_alloc_param_printer, .Lfunc_end3-s_alloc_param_printer
	.cfi_endproc

	.globl	s_release_param_printer
	.align	16, 0x90
	.type	s_release_param_printer,@function
s_release_param_printer:                # @s_release_param_printer
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rdi, %rdi
	je	.LBB4_3
# BB#1:                                 # %if.then
	cmpl	$0, 72(%rdi)
	je	.LBB4_3
# BB#2:                                 # %land.lhs.true
	movq	40(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB4_3
# BB#4:                                 # %if.then.3
	movq	24(%rdi), %rdi
	jmp	stream_puts             # TAILCALL
.LBB4_3:                                # %if.end.6
	retq
.Lfunc_end4:
	.size	s_release_param_printer, .Lfunc_end4-s_release_param_printer
	.cfi_endproc

	.globl	s_free_param_printer
	.align	16, 0x90
	.type	s_free_param_printer,@function
s_free_param_printer:                   # @s_free_param_printer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB5_5
# BB#1:                                 # %if.then.i
	cmpl	$0, 72(%rbx)
	je	.LBB5_4
# BB#2:                                 # %land.lhs.true.i
	movq	40(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB5_4
# BB#3:                                 # %if.then.3.i
	movq	24(%rbx), %rdi
	callq	stream_puts
.LBB5_4:                                # %s_release_param_printer.exit
	movq	8(%rbx), %rdi
	movq	24(%rdi), %rax
	movl	$.L.str.6, %edx
	movq	%rbx, %rsi
	popq	%rbx
	jmpq	*%rax                   # TAILCALL
.LBB5_5:                                # %if.end
	popq	%rbx
	retq
.Lfunc_end5:
	.size	s_free_param_printer, .Lfunc_end5-s_free_param_printer
	.cfi_endproc

	.align	16, 0x90
	.type	param_print_typed,@function
param_print_typed:                      # @param_print_typed
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
	pushq	%r12
.Ltmp36:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp37:
	.cfi_def_cfa_offset 48
.Ltmp38:
	.cfi_offset %rbx, -48
.Ltmp39:
	.cfi_offset %r12, -40
.Ltmp40:
	.cfi_offset %r14, -32
.Ltmp41:
	.cfi_offset %r15, -24
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movq	%rdi, %r14
	movq	24(%r14), %r15
	cmpl	$0, 72(%r14)
	jne	.LBB6_4
# BB#1:                                 # %if.then
	movq	32(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB6_3
# BB#2:                                 # %if.then.2
	movq	%r15, %rdi
	callq	stream_puts
.LBB6_3:                                # %if.end
	movl	$1, 72(%r14)
.LBB6_4:                                # %if.end.6
	movq	48(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB6_6
# BB#5:                                 # %if.then.9
	movq	%r15, %rdi
	callq	stream_puts
.LBB6_6:                                # %if.end.13
	movl	$.L.str.7, %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	pprints1
	movl	$-20, %ebp
	movl	16(%rbx), %eax
	cmpq	$8, %rax
	ja	.LBB6_30
# BB#7:                                 # %if.end.13
	jmpq	*.LJTI6_0(,%rax,8)
.LBB6_8:                                # %sw.bb
	movl	$.L.str.8, %esi
	jmp	.LBB6_11
.LBB6_9:                                # %sw.bb.16
	movl	$.L.str.9, %esi
	cmpl	$0, (%rbx)
	jne	.LBB6_11
# BB#10:                                # %select.mid
	movl	$.L.str.10, %esi
.LBB6_11:                               # %select.end
	movq	%r15, %rdi
	callq	stream_puts
	jmp	.LBB6_28
.LBB6_12:                               # %sw.bb.19
	movl	(%rbx), %edx
	movl	$.L.str.11, %esi
	movq	%r15, %rdi
	callq	pprintd1
	jmp	.LBB6_28
.LBB6_13:                               # %sw.bb.22
	movq	(%rbx), %rdx
	movl	$.L.str.12, %esi
	movq	%r15, %rdi
	callq	pprintld1
	jmp	.LBB6_28
.LBB6_14:                               # %sw.bb.25
	movss	(%rbx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.13, %esi
	movq	%r15, %rdi
	callq	pprintg1
	jmp	.LBB6_28
.LBB6_15:                               # %sw.bb.28
	movq	(%rbx), %rsi
	movl	8(%rbx), %edx
	movl	64(%r14), %ecx
	movq	%r15, %rdi
	callq	s_write_ps_string
	jmp	.LBB6_28
.LBB6_16:                               # %sw.bb.34
	movl	$47, %esi
	movq	%r15, %rdi
	callq	spputc
	movq	(%rbx), %rsi
	movl	8(%rbx), %edx
	movq	%r15, %rdi
	callq	stream_write
	jmp	.LBB6_28
.LBB6_17:                               # %sw.bb.42
	movb	$32, %r12b
	cmpl	$11, 8(%rbx)
	jb	.LBB6_19
# BB#18:                                # %select.mid58
	movb	$10, %r12b
.LBB6_19:                               # %select.end57
	movl	$91, %esi
	movq	%r15, %rdi
	callq	spputc
	cmpl	$0, 8(%rbx)
	je	.LBB6_27
# BB#20:                                # %for.body.lr.ph
	xorl	%ebp, %ebp
	movzbl	%r12b, %r12d
	.align	16, 0x90
.LBB6_21:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	movq	(%rbx), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	$.L.str.14, %esi
	movq	%r15, %rdi
	callq	pprintd1
	movq	%r15, %rdi
	movl	%r12d, %esi
	callq	spputc
	incl	%ebp
	cmpl	8(%rbx), %ebp
	jb	.LBB6_21
	jmp	.LBB6_27
.LBB6_22:                               # %sw.bb.61
	movb	$32, %r12b
	cmpl	$11, 8(%rbx)
	jb	.LBB6_24
# BB#23:                                # %select.mid63
	movb	$10, %r12b
.LBB6_24:                               # %select.end62
	movl	$91, %esi
	movq	%r15, %rdi
	callq	spputc
	cmpl	$0, 8(%rbx)
	je	.LBB6_27
# BB#25:                                # %for.body.77.lr.ph
	xorl	%ebp, %ebp
	movzbl	%r12b, %r12d
	.align	16, 0x90
.LBB6_26:                               # %for.body.77
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	movq	(%rbx), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.15, %esi
	movq	%r15, %rdi
	callq	pprintg1
	movq	%r15, %rdi
	movl	%r12d, %esi
	callq	spputc
	incl	%ebp
	cmpl	8(%rbx), %ebp
	jb	.LBB6_26
.LBB6_27:                               # %for.end.88
	movl	$93, %esi
	movq	%r15, %rdi
	callq	spputc
.LBB6_28:                               # %sw.epilog
	movq	56(%r14), %rsi
	xorl	%ebp, %ebp
	testq	%rsi, %rsi
	je	.LBB6_30
# BB#29:                                # %if.then.92
	movq	%r15, %rdi
	callq	stream_puts
.LBB6_30:                               # %cleanup
	movl	%ebp, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	param_print_typed, .Lfunc_end6-param_print_typed
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_8
	.quad	.LBB6_9
	.quad	.LBB6_12
	.quad	.LBB6_13
	.quad	.LBB6_14
	.quad	.LBB6_15
	.quad	.LBB6_16
	.quad	.LBB6_17
	.quad	.LBB6_22

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\\r"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"\\n"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"()\\\n\r\t\b\f"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"s_alloc_position_stream"
	.size	.L.str.3, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\n"
	.size	.L.str.4, 2

	.type	param_printer_params_default,@object # @param_printer_params_default
	.section	.rodata,"a",@progbits
	.globl	param_printer_params_default
	.align	8
param_printer_params_default:
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.4
	.long	0                       # 0x0
	.zero	4
	.size	param_printer_params_default, 40

	.type	printer_param_list_procs,@object # @printer_param_list_procs
	.align	8
printer_param_list_procs:
	.quad	param_print_typed
	.quad	0
	.quad	0
	.quad	0
	.quad	gs_param_request_default
	.quad	gs_param_requested_default
	.quad	0
	.quad	0
	.quad	0
	.size	printer_param_list_procs, 72

	.type	st_printer_param_list,@object # @st_printer_param_list
	.align	8
st_printer_param_list:
	.long	80                      # 0x50
	.zero	4
	.quad	.L.str.16
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	printer_plist_reloc_ptrs
	.size	st_printer_param_list, 64

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"s_alloc_param_printer"
	.size	.L.str.5, 22

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"s_free_param_printer"
	.size	.L.str.6, 21

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"/%s"
	.size	.L.str.7, 4

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	" null"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	" true"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	" false"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	" %d"
	.size	.L.str.11, 4

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	" %l"
	.size	.L.str.12, 4

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	" %g"
	.size	.L.str.13, 4

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%d"
	.size	.L.str.14, 3

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%g"
	.size	.L.str.15, 3

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"printer_param_list_t"
	.size	.L.str.16, 21

	.type	printer_plist_reloc_ptrs,@object # @printer_plist_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
printer_plist_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	printer_plist_enum_ptrs
	.size	printer_plist_reloc_ptrs, 24

	.type	printer_plist_enum_ptrs,@object # @printer_plist_enum_ptrs
	.align	2
printer_plist_enum_ptrs:
	.short	0                       # 0x0
	.short	24                      # 0x18
	.size	printer_plist_enum_ptrs, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
