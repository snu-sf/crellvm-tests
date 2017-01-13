	.text
	.file	"gdevpdts.bc"
	.globl	pdf_text_state_alloc
	.align	16, 0x90
	.type	pdf_text_state_alloc,@function
pdf_text_state_alloc:                   # @pdf_text_state_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movl	$st_pdf_text_state, %esi
	movl	$.L.str, %edx
	callq	*72(%rdi)
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB0_2
# BB#1:                                 # %if.end
	movl	$ts_default, %esi
	movl	$808, %edx              # imm = 0x328
	movq	%rbx, %rdi
	callq	memcpy
	movq	%rbx, %rax
.LBB0_2:                                # %cleanup
	popq	%rbx
	retq
.Lfunc_end0:
	.size	pdf_text_state_alloc, .Lfunc_end0-pdf_text_state_alloc
	.cfi_endproc

	.globl	pdf_set_text_state_default
	.align	16, 0x90
	.type	pdf_set_text_state_default,@function
pdf_set_text_state_default:             # @pdf_set_text_state_default
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$ts_default, %esi
	movl	$808, %edx              # imm = 0x328
	jmp	memcpy                  # TAILCALL
.Lfunc_end1:
	.size	pdf_set_text_state_default, .Lfunc_end1-pdf_set_text_state_default
	.cfi_endproc

	.globl	pdf_text_state_copy
	.align	16, 0x90
	.type	pdf_text_state_copy,@function
pdf_text_state_copy:                    # @pdf_text_state_copy
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$808, %edx              # imm = 0x328
	jmp	memcpy                  # TAILCALL
.Lfunc_end2:
	.size	pdf_text_state_copy, .Lfunc_end2-pdf_text_state_copy
	.cfi_endproc

	.globl	pdf_reset_text_page
	.align	16, 0x90
	.type	pdf_reset_text_page,@function
pdf_reset_text_page:                    # @pdf_reset_text_page
	.cfi_startproc
# BB#0:                                 # %entry
	movq	16(%rdi), %rdi
	movl	$ts_default, %esi
	movl	$808, %edx              # imm = 0x328
	jmp	memcpy                  # TAILCALL
.Lfunc_end3:
	.size	pdf_reset_text_page, .Lfunc_end3-pdf_reset_text_page
	.cfi_endproc

	.globl	pdf_reset_text_state
	.align	16, 0x90
	.type	pdf_reset_text_state,@function
pdf_reset_text_state:                   # @pdf_reset_text_state
	.cfi_startproc
# BB#0:                                 # %entry
	movq	16(%rdi), %rax
	movq	ts_default+744(%rip), %rcx
	movq	%rcx, 744(%rax)
	movups	ts_default+728(%rip), %xmm0
	movups	%xmm0, 728(%rax)
	movups	ts_default+712(%rip), %xmm0
	movups	%xmm0, 712(%rax)
	movups	ts_default+696(%rip), %xmm0
	movups	%xmm0, 696(%rax)
	movq	$0, 752(%rax)
	retq
.Lfunc_end4:
	.size	pdf_reset_text_state, .Lfunc_end4-pdf_reset_text_state
	.cfi_endproc

	.globl	pdf_from_stream_to_text
	.align	16, 0x90
	.type	pdf_from_stream_to_text,@function
pdf_from_stream_to_text:                # @pdf_from_stream_to_text
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 16
.Ltmp3:
	.cfi_offset %rbx, -16
	movq	26592(%rdi), %rax
	movq	16(%rax), %rbx
	leaq	720(%rbx), %rdi
	callq	gs_make_identity
	xorps	%xmm0, %xmm0
	movups	%xmm0, 768(%rbx)
	movl	$0, 764(%rbx)
	movq	$0, 680(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end5:
	.size	pdf_from_stream_to_text, .Lfunc_end5-pdf_from_stream_to_text
	.cfi_endproc

	.globl	pdf_get_stoted_text_size
	.align	16, 0x90
	.type	pdf_get_stoted_text_size,@function
pdf_get_stoted_text_size:               # @pdf_get_stoted_text_size
	.cfi_startproc
# BB#0:                                 # %entry
	movl	684(%rdi), %eax
	retq
.Lfunc_end6:
	.size	pdf_get_stoted_text_size, .Lfunc_end6-pdf_get_stoted_text_size
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4634766966517661696     # double 72
.LCPI7_1:
	.quad	4602678819172646912     # double 0.5
.LCPI7_2:
	.quad	4557750909289998844     # double 5.0000000000000001E-4
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI7_3:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.text
	.globl	sync_text_state
	.align	16, 0x90
	.type	sync_text_state,@function
sync_text_state:                        # @sync_text_state
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp5:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp6:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp7:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp8:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp10:
	.cfi_def_cfa_offset 144
.Ltmp11:
	.cfi_offset %rbx, -56
.Ltmp12:
	.cfi_offset %r12, -48
.Ltmp13:
	.cfi_offset %r13, -40
.Ltmp14:
	.cfi_offset %r14, -32
.Ltmp15:
	.cfi_offset %r15, -24
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	movq	26592(%r13), %rax
	movq	16(%rax), %rbp
	xorl	%eax, %eax
	cmpl	$0, 684(%rbp)
	je	.LBB7_41
# BB#1:                                 # %if.end
	cmpl	$0, 764(%rbp)
	je	.LBB7_2
# BB#42:                                # %if.then.1
	movq	%r13, %rdi
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	flush_text_buffer       # TAILCALL
.LBB7_2:                                # %if.end.2
	movq	5848(%r13), %r14
	movss	696(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	(%rbp), %xmm0           # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB7_3
	jnp	.LBB7_4
.LBB7_3:                                # %if.then.5
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.1, %esi
	movq	%r14, %rdi
	callq	pprintg1
	movl	(%rbp), %eax
	movl	%eax, 696(%rbp)
.LBB7_4:                                # %if.end.13
	movq	8(%rbp), %rbx
	cmpq	%rbx, 704(%rbp)
	jne	.LBB7_6
# BB#5:                                 # %lor.lhs.false
	movsd	712(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	16(%rbp), %xmm0
	jne	.LBB7_6
	jnp	.LBB7_10
.LBB7_6:                                # %if.then.24
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	pdf_assign_font_object_id
	testl	%eax, %eax
	js	.LBB7_41
# BB#7:                                 # %if.end.32
	leaq	32(%rbx), %rdx
	movl	$.L.str.2, %esi
	movq	%r14, %rdi
	callq	pprints1
	movsd	16(%rbp), %xmm0         # xmm0 = mem[0],zero
	movl	$.L.str.3, %esi
	movq	%r14, %rdi
	callq	pprintg1
	movq	%rbx, 704(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, 712(%rbp)
	xorl	%eax, %eax
	cmpl	$0, 72(%rbx)
	jne	.LBB7_9
# BB#8:                                 # %cond.true
	movl	240(%rbx), %eax
.LBB7_9:                                # %cleanup
	movl	%eax, 688(%rbp)
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	pdf_used_charproc_resources
	testl	%eax, %eax
	js	.LBB7_41
.LBB7_10:                               # %if.end.50
	leaq	24(%rbp), %rdi
	leaq	720(%rbp), %rsi
	callq	gs_matrix_compare
	testl	%eax, %eax
	jne	.LBB7_15
# BB#11:                                # %lor.lhs.false.56
	movsd	56(%rbp), %xmm0         # xmm0 = mem[0],zero
	ucomisd	784(%rbp), %xmm0
	jne	.LBB7_13
	jp	.LBB7_13
# BB#12:                                # %lor.lhs.false.60
	movsd	64(%rbp), %xmm0         # xmm0 = mem[0],zero
	ucomisd	792(%rbp), %xmm0
	jne	.LBB7_13
	jnp	.LBB7_35
.LBB7_13:                               # %land.lhs.true
	cmpl	$0, 684(%rbp)
	jne	.LBB7_15
# BB#14:                                # %lor.lhs.false.70
	cmpl	$0, 680(%rbp)
	je	.LBB7_35
.LBB7_15:                               # %if.then.74
	movq	26592(%r13), %rax
	movq	16(%rax), %rbx
	movq	5848(%r13), %rdi
	movl	$0, 760(%rbx)
	leaq	24(%rbx), %r15
	movss	24(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	28(%rbx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	720(%rbx), %xmm0
	jne	.LBB7_32
	jp	.LBB7_32
# BB#16:                                # %land.lhs.true.i.i
	ucomiss	724(%rbx), %xmm1
	jne	.LBB7_32
	jp	.LBB7_32
# BB#17:                                # %land.lhs.true.4.i.i
	movss	32(%rbx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	ucomiss	728(%rbx), %xmm2
	jne	.LBB7_32
	jp	.LBB7_32
# BB#18:                                # %land.rhs.i.i
	movss	36(%rbx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	ucomiss	732(%rbx), %xmm2
	jne	.LBB7_32
	jp	.LBB7_32
# BB#19:                                # %if.then.i
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movsd	56(%rbx), %xmm0         # xmm0 = mem[0],zero
	movsd	64(%rbx), %xmm1         # xmm1 = mem[0],zero
	subsd	768(%rbx), %xmm0
	subsd	776(%rbx), %xmm1
	leaq	64(%rsp), %rsi
	movq	%r15, %rdi
	callq	gs_distance_transform_inverse
	cmpl	$-23, %eax
	jne	.LBB7_21
# BB#20:                                # %if.then.i.i
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 64(%rsp)
	xorpd	%xmm1, %xmm1
	jmp	.LBB7_23
.LBB7_32:                               # %if.else.35.i
	movq	%r15, 56(%rsp)          # 8-byte Spill
	movss	884(%r13), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movss	888(%r13), %xmm3        # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	movsd	.LCPI7_0(%rip), %xmm5   # xmm5 = mem[0],zero
	movapd	%xmm5, %xmm4
	divsd	%xmm2, %xmm4
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm3, %xmm2
	divsd	%xmm2, %xmm5
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm4, %xmm0
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm5, %xmm1
	movss	32(%rbx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	movss	36(%rbx), %xmm3         # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm4, %xmm2
	cvtss2sd	%xmm3, %xmm3
	mulsd	%xmm5, %xmm3
	mulsd	56(%rbx), %xmm4
	leaq	64(%rbx), %r12
	mulsd	64(%rbx), %xmm5
	movl	$.L.str.16, %esi
	callq	pprintg6
	leaq	776(%rbx), %r15
.LBB7_34:                               # %pdf_set_text_matrix.exit
	movq	56(%rbx), %rax
	movq	%rax, 768(%rbx)
	leaq	720(%rbx), %rax
	movq	(%r12), %rcx
	movq	%rcx, (%r15)
	movq	56(%rsp), %rdx          # 8-byte Reload
	movq	16(%rdx), %rcx
	movq	%rcx, 16(%rax)
	movupd	(%rdx), %xmm0
	movupd	%xmm0, (%rax)
.LBB7_35:                               # %if.end.80
	movl	48(%rbp), %eax
	cmpl	%eax, 744(%rbp)
	je	.LBB7_37
# BB#36:                                # %if.then.86
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movl	$.L.str.4, %esi
	movq	%r14, %rdi
	callq	pprintg1
	movl	48(%rbp), %eax
	movl	%eax, 744(%rbp)
.LBB7_37:                               # %if.end.95
	movss	748(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	52(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jne	.LBB7_38
	jnp	.LBB7_40
.LBB7_38:                               # %if.then.101
	leaq	480(%rbp), %rdi
	movslq	684(%rbp), %rdx
	movl	$32, %esi
	movss	%xmm1, 56(%rsp)         # 4-byte Spill
	callq	memchr
	movss	56(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	testq	%rax, %rax
	je	.LBB7_40
# BB#39:                                # %if.then.109
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.5, %esi
	movq	%r14, %rdi
	callq	pprintg1
	movl	52(%rbp), %eax
	movl	%eax, 748(%rbp)
.LBB7_40:                               # %if.end.119
	movq	%r13, %rdi
	callq	flush_text_buffer
.LBB7_41:                               # %cleanup.121
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_21:                               # %if.else.i.i
	testl	%eax, %eax
	js	.LBB7_41
# BB#22:                                # %if.else.if.end.3_crit_edge.i.i
	movsd	64(%rsp), %xmm1         # xmm1 = mem[0],zero
.LBB7_23:                               # %if.end.3.i.i
	movsd	%xmm1, 32(%rsp)         # 8-byte Spill
	movsd	.LCPI7_1(%rip), %xmm0   # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	callq	floor
	movapd	%xmm0, %xmm1
	movsd	%xmm1, 56(%rsp)         # 8-byte Spill
	movsd	32(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	callq	fabs
	movsd	.LCPI7_2(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_25
# BB#24:                                # %if.then.9.i.i
	movsd	56(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 64(%rsp)
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
.LBB7_25:                               # %if.end.11.i.i
	movq	%r15, 56(%rsp)          # 8-byte Spill
	movsd	72(%rsp), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, 24(%rsp)         # 8-byte Spill
	movsd	.LCPI7_1(%rip), %xmm0   # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	callq	floor
	movapd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	callq	fabs
	movsd	.LCPI7_2(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_27
# BB#26:                                # %if.then.19.i.i
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 72(%rsp)
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
.LBB7_27:                               # %if.end.i
	leaq	64(%rbx), %r12
	leaq	776(%rbx), %r15
	xorps	%xmm2, %xmm2
	movsd	32(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jne	.LBB7_33
	jp	.LBB7_33
# BB#28:                                # %if.end.i
	ucomisd	%xmm1, %xmm2
	jbe	.LBB7_33
# BB#29:                                # %if.then.15.i
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movaps	%xmm0, 32(%rsp)         # 16-byte Spill
	cvtss2sd	%xmm0, %xmm0
	addsd	752(%rbx), %xmm0
	callq	fabs
	ucomisd	.LCPI7_2(%rip), %xmm0
	jbe	.LBB7_31
# BB#30:                                # %if.then.23.i
	movaps	32(%rsp), %xmm0         # 16-byte Reload
	xorps	.LCPI7_3(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	movl	$.L.str.14, %esi
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	pprintg1
	movsd	32(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 752(%rbx)
.LBB7_31:                               # %if.end.28.i
	movl	$1, 760(%rbx)
	jmp	.LBB7_34
.LBB7_33:                               # %if.else.i
	movl	$.L.str.15, %esi
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	pprintg2
	jmp	.LBB7_34
.Lfunc_end7:
	.size	sync_text_state, .Lfunc_end7-sync_text_state
	.cfi_endproc

	.align	16, 0x90
	.type	flush_text_buffer,@function
flush_text_buffer:                      # @flush_text_buffer
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
	pushq	%rax
.Ltmp23:
	.cfi_def_cfa_offset 64
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
	movq	%rdi, %r12
	movq	26592(%r12), %rax
	movq	16(%rax), %r13
	movq	5848(%r12), %r14
	cmpl	$0, 684(%r13)
	je	.LBB8_3
# BB#1:                                 # %if.then
	movq	8(%r13), %r15
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	pdf_assign_font_object_id
	testl	%eax, %eax
	js	.LBB8_15
# BB#2:                                 # %cleanup
	movq	30448(%r12), %rsi
	movl	$.L.str.7, %edx
	movq	%r12, %rdi
	movq	%r15, %rcx
	callq	pdf_add_resource
	testl	%eax, %eax
	js	.LBB8_15
.LBB8_3:                                # %if.end.9
	cmpl	$0, 680(%r13)
	jle	.LBB8_12
# BB#4:                                 # %if.then.12
	cmpl	$0, 760(%r13)
	je	.LBB8_6
# BB#5:                                 # %if.then.13
	movl	$.L.str.8, %esi
	movq	%r14, %rdi
	callq	stream_puts
.LBB8_6:                                # %if.end.15
	movl	$.L.str.9, %esi
	movq	%r14, %rdi
	callq	stream_puts
	xorl	%ebp, %ebp
	cmpl	$0, 680(%r13)
	jle	.LBB8_9
# BB#7:                                 # %for.body.preheader
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB8_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	72(%r13,%rbx,8), %ebp
	cltq
	leaq	480(%r13,%rax), %rsi
	movl	%ebp, %edx
	subl	%eax, %edx
	movq	%r12, %rdi
	callq	pdf_put_string
	movss	76(%r13,%rbx,8), %xmm0  # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	callq	pprintg1
	incq	%rbx
	movslq	680(%r13), %rax
	cmpq	%rax, %rbx
	movl	%ebp, %eax
	jl	.LBB8_8
.LBB8_9:                                # %for.end
	movl	684(%r13), %edx
	subl	%ebp, %edx
	jle	.LBB8_11
# BB#10:                                # %if.then.32
	movslq	%ebp, %rax
	leaq	480(%r13,%rax), %rsi
	movq	%r12, %rdi
	callq	pdf_put_string
.LBB8_11:                               # %if.end.42
	movl	$.L.str.11, %esi
	jmp	.LBB8_14
.LBB8_12:                               # %if.else
	leaq	480(%r13), %rsi
	movl	684(%r13), %edx
	movq	%r12, %rdi
	callq	pdf_put_string
	movl	$.L.str.12, %esi
	cmpl	$0, 760(%r13)
	jne	.LBB8_14
# BB#13:                                # %select.mid
	movl	$.L.str.13, %esi
.LBB8_14:                               # %select.end
	movq	%r14, %rdi
	callq	stream_puts
	movq	$0, 680(%r13)
	movl	$0, 760(%r13)
	xorl	%eax, %eax
.LBB8_15:                               # %cleanup.59
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	flush_text_buffer, .Lfunc_end8-flush_text_buffer
	.cfi_endproc

	.globl	pdf_from_string_to_text
	.align	16, 0x90
	.type	pdf_from_string_to_text,@function
pdf_from_string_to_text:                # @pdf_from_string_to_text
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	sync_text_state         # TAILCALL
.Lfunc_end9:
	.size	pdf_from_string_to_text, .Lfunc_end9-pdf_from_string_to_text
	.cfi_endproc

	.globl	pdf_close_text_contents
	.align	16, 0x90
	.type	pdf_close_text_contents,@function
pdf_close_text_contents:                # @pdf_close_text_contents
	.cfi_startproc
# BB#0:                                 # %entry
	movq	26592(%rdi), %rax
	movq	16(%rax), %rax
	movq	$0, 704(%rax)
	movq	$0, 8(%rax)
	movq	$0, 712(%rax)
	movq	$0, 16(%rax)
	retq
.Lfunc_end10:
	.size	pdf_close_text_contents, .Lfunc_end10-pdf_close_text_contents
	.cfi_endproc

	.globl	pdf_render_mode_uses_stroke
	.align	16, 0x90
	.type	pdf_render_mode_uses_stroke,@function
pdf_render_mode_uses_stroke:            # @pdf_render_mode_uses_stroke
	.cfi_startproc
# BB#0:                                 # %entry
	movl	48(%rsi), %ecx
	decl	%ecx
	cmpl	$6, %ecx
	sbbb	%al, %al
	movb	$51, %dl
	shrb	%cl, %dl
	andb	%al, %dl
	andb	$1, %dl
	movzbl	%dl, %eax
	retq
.Lfunc_end11:
	.size	pdf_render_mode_uses_stroke, .Lfunc_end11-pdf_render_mode_uses_stroke
	.cfi_endproc

	.globl	pdf_get_text_state_values
	.align	16, 0x90
	.type	pdf_get_text_state_values,@function
pdf_get_text_state_values:              # @pdf_get_text_state_values
	.cfi_startproc
# BB#0:                                 # %entry
	movq	26592(%rdi), %rax
	movq	16(%rax), %rax
	movq	48(%rax), %rcx
	movq	%rcx, 48(%rsi)
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movups	%xmm2, 32(%rsi)
	movups	%xmm1, 16(%rsi)
	movups	%xmm0, (%rsi)
	retq
.Lfunc_end12:
	.size	pdf_get_text_state_values, .Lfunc_end12-pdf_get_text_state_values
	.cfi_endproc

	.globl	pdf_set_text_wmode
	.align	16, 0x90
	.type	pdf_set_text_wmode,@function
pdf_set_text_wmode:                     # @pdf_set_text_wmode
	.cfi_startproc
# BB#0:                                 # %entry
	movq	26592(%rdi), %rax
	movq	16(%rax), %rax
	movl	%esi, 688(%rax)
	retq
.Lfunc_end13:
	.size	pdf_set_text_wmode, .Lfunc_end13-pdf_set_text_wmode
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4602678819172646912     # double 0.5
.LCPI14_1:
	.quad	4557750909289998844     # double 5.0000000000000001E-4
.LCPI14_2:
	.quad	-4571364728013586432    # double -1000
.LCPI14_3:
	.quad	-4553185402759938048    # double -16300
.LCPI14_4:
	.quad	4670186634094837760     # double 16300
.LCPI14_5:
	.quad	4562254508917369340     # double 0.001
	.text
	.globl	pdf_set_text_state_values
	.align	16, 0x90
	.type	pdf_set_text_state_values,@function
pdf_set_text_state_values:              # @pdf_set_text_state_values
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
	subq	$72, %rsp
.Ltmp36:
	.cfi_def_cfa_offset 128
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	26592(%r14), %rax
	movq	16(%rax), %rbp
	cmpl	$0, 684(%rbp)
	jle	.LBB14_37
# BB#1:                                 # %if.then
	movss	(%rbp), %xmm0           # xmm0 = mem[0],zero,zero,zero
	ucomiss	(%rbx), %xmm0
	jne	.LBB14_36
	jp	.LBB14_36
# BB#2:                                 # %land.lhs.true
	movq	8(%rbp), %rax
	cmpq	8(%rbx), %rax
	jne	.LBB14_36
# BB#3:                                 # %land.lhs.true.6
	movsd	16(%rbp), %xmm0         # xmm0 = mem[0],zero
	ucomisd	16(%rbx), %xmm0
	jne	.LBB14_36
	jp	.LBB14_36
# BB#4:                                 # %land.lhs.true.10
	movl	48(%rbp), %eax
	cmpl	48(%rbx), %eax
	jne	.LBB14_36
# BB#5:                                 # %land.lhs.true.14
	movss	52(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	52(%rbx), %xmm0
	jne	.LBB14_36
	jp	.LBB14_36
# BB#6:                                 # %if.then.18
	leaq	24(%rbp), %rdi
	leaq	24(%rbx), %r15
	movq	%r15, %rsi
	callq	gs_matrix_compare
	xorl	%r12d, %r12d
	testl	%eax, %eax
	je	.LBB14_38
# BB#7:                                 # %if.end
	movq	26592(%r14), %rax
	movq	16(%rax), %r13
	movss	24(%r13), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	(%r15), %xmm0
	jne	.LBB14_36
	jp	.LBB14_36
# BB#8:                                 # %land.lhs.true.i.i
	movss	28(%r13), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	28(%rbx), %xmm0
	jne	.LBB14_36
	jp	.LBB14_36
# BB#9:                                 # %land.lhs.true.4.i.i
	movss	32(%r13), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	32(%rbx), %xmm0
	jne	.LBB14_36
	jp	.LBB14_36
# BB#10:                                # %land.rhs.i.i
	movss	36(%r13), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	36(%rbx), %xmm0
	jne	.LBB14_36
	jp	.LBB14_36
# BB#11:                                # %if.then.i
	movss	40(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	44(%rbx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	subss	40(%r13), %xmm0
	cvtss2sd	%xmm0, %xmm0
	subss	44(%r13), %xmm1
	cvtss2sd	%xmm1, %xmm1
	leaq	48(%rsp), %rsi
	movq	%r15, %rdi
	callq	gs_distance_transform_inverse
	cmpl	$-23, %eax
	jne	.LBB14_13
# BB#12:                                # %if.then.i.30.i
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 48(%rsp)
	xorpd	%xmm1, %xmm1
	jmp	.LBB14_15
.LBB14_13:                              # %if.else.i.i
	testl	%eax, %eax
	js	.LBB14_36
# BB#14:                                # %if.else.if.end.3_crit_edge.i.i
	movsd	48(%rsp), %xmm1         # xmm1 = mem[0],zero
.LBB14_15:                              # %if.end.3.i.i
	movsd	%xmm1, 40(%rsp)         # 8-byte Spill
	movsd	.LCPI14_0(%rip), %xmm0  # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	callq	floor
	movapd	%xmm0, %xmm1
	movsd	%xmm1, 32(%rsp)         # 8-byte Spill
	movsd	40(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	callq	fabs
	movsd	.LCPI14_1(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB14_17
# BB#16:                                # %if.then.9.i.i
	movsd	32(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 48(%rsp)
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
.LBB14_17:                              # %if.end.11.i.i
	movsd	56(%rsp), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, 32(%rsp)         # 8-byte Spill
	movsd	.LCPI14_0(%rip), %xmm0  # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	callq	floor
	movapd	%xmm0, %xmm1
	movsd	%xmm1, 24(%rsp)         # 8-byte Spill
	movsd	32(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	callq	fabs
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	.LCPI14_1(%rip), %xmm2  # xmm2 = mem[0],zero
	ucomisd	%xmm0, %xmm2
	jbe	.LBB14_19
# BB#18:                                # %if.then.19.i.i
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 56(%rsp)
	movapd	%xmm0, %xmm1
.LBB14_19:                              # %if.end.i
	leaq	24(%r13), %rax
	cmpl	$0, 688(%r13)
	movapd	%xmm1, %xmm0
	movsd	40(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	je	.LBB14_21
# BB#20:                                # %if.end.i
	movapd	%xmm2, %xmm0
.LBB14_21:                              # %if.end.i
	je	.LBB14_23
# BB#22:                                # %if.end.i
	movapd	%xmm1, %xmm2
.LBB14_23:                              # %if.end.i
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB14_36
	jp	.LBB14_36
# BB#24:                                # %land.lhs.true.i
	movl	684(%r13), %ecx
	testl	%ecx, %ecx
	jle	.LBB14_36
# BB#25:                                # %land.lhs.true.21.i
	mulsd	.LCPI14_2(%rip), %xmm2
	movsd	16(%r13), %xmm0         # xmm0 = mem[0],zero
	divsd	%xmm0, %xmm2
	ucomisd	.LCPI14_3(%rip), %xmm2
	jb	.LBB14_36
# BB#26:                                # %land.lhs.true.21.i
	mulsd	%xmm2, %xmm0
	movsd	.LCPI14_4(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB14_36
# BB#27:                                # %if.then.30.i
	movslq	680(%r13), %rdx
	testq	%rdx, %rdx
	jle	.LBB14_28
# BB#29:                                # %land.lhs.true.i.27.i
	cmpl	%ecx, 64(%r13,%rdx,8)
	jne	.LBB14_28
# BB#30:                                # %if.then.i.i
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movss	68(%r13,%rdx,8), %xmm0  # xmm0 = mem[0],zero,zero,zero
	decq	%rdx
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	jmp	.LBB14_31
.LBB14_28:
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movq	%rax, 24(%rsp)          # 8-byte Spill
.LBB14_31:                              # %if.end.i.i
	movsd	%xmm2, 40(%rsp)         # 8-byte Spill
	movsd	.LCPI14_0(%rip), %xmm0  # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	callq	floor
	movapd	%xmm0, %xmm1
	movsd	%xmm1, 32(%rsp)         # 8-byte Spill
	movsd	40(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	callq	fabs
	cmpltsd	.LCPI14_5(%rip), %xmm0
	movsd	32(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	andpd	%xmm0, %xmm2
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	andnpd	%xmm1, %xmm0
	orpd	%xmm2, %xmm0
	movsd	.LCPI14_3(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	20(%rsp), %edx          # 4-byte Reload
	ja	.LBB14_36
# BB#32:                                # %if.end.18.i.i
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	movq	8(%rsp), %rsi           # 8-byte Reload
	jne	.LBB14_33
	jnp	.LBB14_35
.LBB14_33:                              # %if.then.21.i.i
	cmpl	$50, %esi
	jne	.LBB14_34
.LBB14_36:                              # %cleanup
	movq	%r14, %rdi
	callq	sync_text_state
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB14_38
.LBB14_37:                              # %if.end.32
	movq	48(%rbx), %rax
	movq	%rax, 48(%rbp)
	movups	(%rbx), %xmm0
	movupd	16(%rbx), %xmm1
	movupd	32(%rbx), %xmm2
	movupd	%xmm2, 32(%rbp)
	movupd	%xmm1, 16(%rbp)
	movups	%xmm0, (%rbp)
	movl	$0, 764(%rbp)
	xorl	%r12d, %r12d
.LBB14_38:                              # %cleanup.34
	movl	%r12d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB14_34:                              # %if.end.25.i.i
	movslq	%esi, %rax
	movl	%edx, 72(%r13,%rax,8)
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 76(%r13,%rax,8)
	incl	%esi
.LBB14_35:                              # %add_text_delta_move.exit
	movl	%esi, 680(%r13)
	movq	16(%r15), %rax
	movq	%rax, 16(%rcx)
	movups	(%r15), %xmm0
	movups	%xmm0, (%rcx)
	jmp	.LBB14_38
.Lfunc_end14:
	.size	pdf_set_text_state_values, .Lfunc_end14-pdf_set_text_state_values
	.cfi_endproc

	.globl	pdf_text_distance_transform
	.align	16, 0x90
	.type	pdf_text_distance_transform,@function
pdf_text_distance_transform:            # @pdf_text_distance_transform
	.cfi_startproc
# BB#0:                                 # %entry
	addq	$24, %rdi
	jmp	gs_distance_transform   # TAILCALL
.Lfunc_end15:
	.size	pdf_text_distance_transform, .Lfunc_end15-pdf_text_distance_transform
	.cfi_endproc

	.globl	pdf_text_position
	.align	16, 0x90
	.type	pdf_text_position,@function
pdf_text_position:                      # @pdf_text_position
	.cfi_startproc
# BB#0:                                 # %entry
	movq	26592(%rdi), %rax
	movq	16(%rax), %rax
	cvtps2pd	40(%rax), %xmm0
	movups	%xmm0, (%rsi)
	retq
.Lfunc_end16:
	.size	pdf_text_position, .Lfunc_end16-pdf_text_position
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI17_0:
	.long	1116733440              # float 72
	.text
	.globl	pdf_bitmap_char_update_bbox
	.align	16, 0x90
	.type	pdf_bitmap_char_update_bbox,@function
pdf_bitmap_char_update_bbox:            # @pdf_bitmap_char_update_bbox
	.cfi_startproc
# BB#0:                                 # %entry
	movq	26592(%rdi), %rax
	movq	16(%rax), %rax
	cvtsi2ssl	%esi, %xmm2
	addss	40(%rax), %xmm2
	movss	884(%rdi), %xmm4        # xmm4 = mem[0],zero,zero,zero
	movss	888(%rdi), %xmm3        # xmm3 = mem[0],zero,zero,zero
	movss	.LCPI17_0(%rip), %xmm5  # xmm5 = mem[0],zero,zero,zero
	divss	%xmm5, %xmm4
	divss	%xmm4, %xmm2
	cvtss2sd	%xmm2, %xmm2
	cvtsi2ssl	%edx, %xmm6
	addss	44(%rax), %xmm6
	divss	%xmm5, %xmm3
	divss	%xmm3, %xmm6
	xorps	%xmm3, %xmm3
	cvtss2sd	%xmm6, %xmm3
	cvtss2sd	%xmm4, %xmm4
	divsd	%xmm4, %xmm0
	movsd	9784(%rdi), %xmm5       # xmm5 = mem[0],zero
	ucomisd	%xmm2, %xmm5
	jbe	.LBB17_2
# BB#1:                                 # %if.then
	movsd	%xmm2, 9784(%rdi)
.LBB17_2:                               # %if.end
	divsd	%xmm4, %xmm1
	addsd	%xmm0, %xmm2
	movsd	9792(%rdi), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm3, %xmm0
	jbe	.LBB17_4
# BB#3:                                 # %if.then.51
	movsd	%xmm3, 9792(%rdi)
.LBB17_4:                               # %if.end.57
	addsd	%xmm1, %xmm3
	ucomisd	9800(%rdi), %xmm2
	jbe	.LBB17_6
# BB#5:                                 # %if.then.65
	movsd	%xmm2, 9800(%rdi)
.LBB17_6:                               # %if.end.71
	ucomisd	9808(%rdi), %xmm3
	jbe	.LBB17_8
# BB#7:                                 # %if.then.79
	movsd	%xmm3, 9808(%rdi)
.LBB17_8:                               # %if.end.85
	xorl	%eax, %eax
	retq
.Lfunc_end17:
	.size	pdf_bitmap_char_update_bbox, .Lfunc_end17-pdf_bitmap_char_update_bbox
	.cfi_endproc

	.globl	pdf_append_chars
	.align	16, 0x90
	.type	pdf_append_chars,@function
pdf_append_chars:                       # @pdf_append_chars
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
	subq	$56, %rsp
.Ltmp49:
	.cfi_def_cfa_offset 112
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
	movl	%ecx, %r15d
	movapd	%xmm1, 16(%rsp)         # 16-byte Spill
	movapd	%xmm0, 32(%rsp)         # 16-byte Spill
	movl	%edx, %r13d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	26592(%rbx), %rax
	movq	16(%rax), %rbp
	movl	684(%rbp), %eax
	testl	%eax, %eax
	jne	.LBB18_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, 680(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	cvtps2pd	40(%rbp), %xmm0
	movupd	%xmm0, 56(%rbp)
	movupd	%xmm0, 784(%rbp)
.LBB18_3:                               # %while.cond.preheader
	testl	%r13d, %r13d
	jne	.LBB18_4
	jmp	.LBB18_11
	.align	16, 0x90
.LBB18_8:                               # %cleanup.thread.while.body_crit_edge
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	$1, 764(%rbp)
	movl	684(%rbp), %eax
.LBB18_4:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$200, %eax
	je	.LBB18_7
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB18_4 Depth=1
	testl	%r15d, %r15d
	je	.LBB18_9
# BB#6:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB18_4 Depth=1
	addl	%r13d, %eax
	cmpl	$201, %eax
	jb	.LBB18_9
.LBB18_7:                               # %if.then.20
                                        #   in Loop: Header=BB18_4 Depth=1
	movq	%rbx, %rdi
	callq	sync_text_state
	testl	%eax, %eax
	jns	.LBB18_8
	jmp	.LBB18_12
.LBB18_9:                               # %if.else
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	$3, %esi
	movq	%rbx, %rdi
	callq	pdf_open_page
	testl	%eax, %eax
	js	.LBB18_12
# BB#10:                                # %cleanup.49.thread
                                        #   in Loop: Header=BB18_4 Depth=1
	movslq	684(%rbp), %rax
	movl	$200, %r12d
	subl	%eax, %r12d
	cmpl	%r13d, %r12d
	cmovael	%r13d, %r12d
	leaq	480(%rbp,%rax), %rdi
	movl	%r12d, %edx
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movq	%r14, %rsi
	callq	memcpy
	movl	684(%rbp), %eax
	addl	%r12d, %eax
	movl	%eax, 684(%rbp)
	addq	8(%rsp), %r14           # 8-byte Folded Reload
	subl	%r12d, %r13d
	jne	.LBB18_4
.LBB18_11:                              # %while.end
	movss	40(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movapd	32(%rsp), %xmm1         # 16-byte Reload
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 40(%rbp)
	movss	44(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movapd	16(%rsp), %xmm2         # 16-byte Reload
	addsd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 44(%rbp)
	movupd	784(%rbp), %xmm0
	unpcklpd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0]
	addpd	%xmm0, %xmm1
	movupd	%xmm1, 784(%rbp)
	xorl	%eax, %eax
.LBB18_12:                              # %cleanup.72
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	pdf_append_chars, .Lfunc_end18-pdf_append_chars
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4576918229304087675     # double 0.01
	.text
	.globl	pdf_compare_text_state_for_charpath
	.align	16, 0x90
	.type	pdf_compare_text_state_for_charpath,@function
pdf_compare_text_state_for_charpath:    # @pdf_compare_text_state_for_charpath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp57:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp58:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp59:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp60:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp61:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp62:
	.cfi_def_cfa_offset 128
.Ltmp63:
	.cfi_offset %rbx, -56
.Ltmp64:
	.cfi_offset %r12, -48
.Ltmp65:
	.cfi_offset %r13, -40
.Ltmp66:
	.cfi_offset %r14, -32
.Ltmp67:
	.cfi_offset %r15, -24
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, %rbx
	movl	16(%r8), %edx
	xorl	%r14d, %r14d
	cmpl	684(%rbx), %edx
	jne	.LBB19_10
# BB#1:                                 # %if.end
	movl	128(%r15), %eax
	cmpq	$54, %rax
	ja	.LBB19_3
# BB#2:                                 # %if.end
	movabsq	$33776997205278728, %rcx # imm = 0x78000000000008
	btq	%rax, %rcx
	jb	.LBB19_10
.LBB19_3:                               # %if.end.15
	movq	8(%r8), %rdi
	leaq	480(%rbx), %rsi
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB19_10
# BB#4:                                 # %if.end.19
	movq	$0, (%rsp)
	xorl	%r14d, %r14d
	leaq	16(%rsp), %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	pdf_attached_font_resource
	testl	%eax, %eax
	js	.LBB19_10
# BB#5:                                 # %if.end.24
	movq	16(%rsp), %rbp
	testq	%rbp, %rbp
	je	.LBB19_10
# BB#6:                                 # %lor.lhs.false.26
	cmpq	8(%rbx), %rbp
	jne	.LBB19_10
# BB#7:                                 # %if.end.31
	movsd	56(%rbx), %xmm0         # xmm0 = mem[0],zero
	subsd	176(%r12), %xmm0
	callq	fabs
	ucomisd	.LCPI19_0(%rip), %xmm0
	ja	.LBB19_10
# BB#8:                                 # %lor.lhs.false.36
	movsd	64(%rbx), %xmm0         # xmm0 = mem[0],zero
	subsd	184(%r12), %xmm0
	callq	fabs
	ucomisd	.LCPI19_0(%rip), %xmm0
	ja	.LBB19_10
# BB#9:                                 # %if.end.45
	leaq	80(%r15), %rdx
	movq	%r13, (%rsp)
	leaq	48(%rsp), %rcx
	leaq	24(%rsp), %r8
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movq	%r15, %r9
	callq	pdf_calculate_text_size
	cvtss2sd	%xmm0, %xmm0
	cmpeqsd	16(%rbx), %xmm0
	movd	%xmm0, %r14
	andl	$1, %r14d
.LBB19_10:                              # %cleanup
	movl	%r14d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	pdf_compare_text_state_for_charpath, .Lfunc_end19-pdf_compare_text_state_for_charpath
	.cfi_endproc

	.globl	pdf_get_text_render_mode
	.align	16, 0x90
	.type	pdf_get_text_render_mode,@function
pdf_get_text_render_mode:               # @pdf_get_text_render_mode
	.cfi_startproc
# BB#0:                                 # %entry
	movl	48(%rdi), %eax
	retq
.Lfunc_end20:
	.size	pdf_get_text_render_mode, .Lfunc_end20-pdf_get_text_render_mode
	.cfi_endproc

	.globl	pdf_set_text_render_mode
	.align	16, 0x90
	.type	pdf_set_text_render_mode,@function
pdf_set_text_render_mode:               # @pdf_set_text_render_mode
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, 48(%rdi)
	retq
.Lfunc_end21:
	.size	pdf_set_text_render_mode, .Lfunc_end21-pdf_set_text_render_mode
	.cfi_endproc

	.globl	pdf_modify_text_render_mode
	.align	16, 0x90
	.type	pdf_modify_text_render_mode,@function
pdf_modify_text_render_mode:            # @pdf_modify_text_render_mode
	.cfi_startproc
# BB#0:                                 # %entry
	movl	48(%rdi), %eax
	cmpq	$7, %rax
	ja	.LBB22_11
# BB#1:                                 # %entry
	jmpq	*.LJTI22_0(,%rax,8)
.LBB22_10:                              # %sw.bb.4
	movl	$1, %eax
	cmpl	$1, %esi
	je	.LBB22_12
	jmp	.LBB22_11
.LBB22_2:                               # %sw.bb
	cmpl	$1, %esi
	jne	.LBB22_11
# BB#3:                                 # %if.then
	movl	$2, 48(%rdi)
	movl	$1, %eax
	retq
.LBB22_4:                               # %sw.bb.12
	cmpl	$1, %esi
	jne	.LBB22_11
# BB#5:                                 # %if.then.14
	movl	$1, 48(%rdi)
	movl	$1, %eax
	retq
.LBB22_6:                               # %sw.bb.18
	cmpl	$1, %esi
	jne	.LBB22_11
# BB#7:                                 # %if.then.20
	movl	$6, 48(%rdi)
	movl	$1, %eax
	retq
.LBB22_8:                               # %sw.bb.32
	cmpl	$1, %esi
	jne	.LBB22_11
# BB#9:                                 # %if.then.34
	movl	$5, 48(%rdi)
	movl	$1, %eax
	retq
.LBB22_11:                              # %sw.epilog
	xorl	%eax, %eax
.LBB22_12:                              # %return
	retq
.Lfunc_end22:
	.size	pdf_modify_text_render_mode, .Lfunc_end22-pdf_modify_text_render_mode
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI22_0:
	.quad	.LBB22_2
	.quad	.LBB22_10
	.quad	.LBB22_10
	.quad	.LBB22_4
	.quad	.LBB22_6
	.quad	.LBB22_10
	.quad	.LBB22_10
	.quad	.LBB22_8

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI23_0:
	.quad	4602678819172646912     # double 0.5
.LCPI23_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	pdf_set_PaintType0_params
	.align	16, 0x90
	.type	pdf_set_PaintType0_params,@function
pdf_set_PaintType0_params:              # @pdf_set_PaintType0_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp70:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp71:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp72:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp73:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp74:
	.cfi_def_cfa_offset 64
.Ltmp75:
	.cfi_offset %rbx, -48
.Ltmp76:
	.cfi_offset %r12, -40
.Ltmp77:
	.cfi_offset %r14, -32
.Ltmp78:
	.cfi_offset %r15, -24
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	26592(%rbx), %rax
	movq	16(%rax), %r12
	xorl	%eax, %eax
	cmpl	$0, 684(%r12)
	jle	.LBB23_7
# BB#1:                                 # %if.then
	movsd	800(%r12), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB23_2
	jnp	.LBB23_7
.LBB23_2:                               # %if.then.4
	movl	24(%r14), %ebp
	movsd	.LCPI23_0(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 24(%r14)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	pdf_set_text_state_values
	testl	%eax, %eax
	js	.LBB23_7
# BB#3:                                 # %if.end
	movq	26592(%rbx), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	cmpl	48(%r15), %eax
	jne	.LBB23_6
# BB#4:                                 # %if.then.16
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	pdf_prepare_stroke
	testl	%eax, %eax
	js	.LBB23_7
# BB#5:                                 # %if.end.23
	movsd	.LCPI23_1(%rip), %xmm0  # xmm0 = mem[0],zero
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gdev_vector_prepare_stroke
	testl	%eax, %eax
	js	.LBB23_7
.LBB23_6:                               # %if.end.27
	movl	%ebp, 24(%r14)
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 800(%r12)
	xorl	%eax, %eax
.LBB23_7:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	pdf_set_PaintType0_params, .Lfunc_end23-pdf_set_PaintType0_params
	.cfi_endproc

	.type	st_pdf_text_state,@object # @st_pdf_text_state
	.section	.rodata,"a",@progbits
	.align	8
st_pdf_text_state:
	.long	808                     # 0x328
	.zero	4
	.quad	.L.str.6
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pdf_text_state_reloc_ptrs
	.size	st_pdf_text_state, 64

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pdf_text_state_alloc"
	.size	.L.str, 21

	.type	ts_default,@object      # @ts_default
	.section	.rodata,"a",@progbits
	.align	8
ts_default:
	.long	0                       # float 0
	.zero	4
	.quad	0
	.quad	0                       # double 0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # float 0
	.zero	16
	.zero	616
	.long	0                       # 0x0
	.zero	4
	.long	0                       # float 0
	.zero	4
	.quad	0
	.quad	0                       # double 0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	1065353216              # float 1
	.long	0                       # float 0
	.long	0                       # float 0
	.long	0                       # 0x0
	.long	0                       # float 0
	.quad	0                       # double 0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	16
	.zero	16
	.quad	0                       # double 0
	.size	ts_default, 808

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"%g Tc\n"
	.size	.L.str.1, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"/%s "
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%g Tf\n"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%g Tr\n"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%g Tw\n"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"pdf_text_state_t"
	.size	.L.str.6, 17

	.type	pdf_text_state_reloc_ptrs,@object # @pdf_text_state_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
pdf_text_state_reloc_ptrs:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	pdf_text_state_enum_ptrs
	.size	pdf_text_state_reloc_ptrs, 24

	.type	pdf_text_state_enum_ptrs,@object # @pdf_text_state_enum_ptrs
	.align	2
pdf_text_state_enum_ptrs:
	.short	0                       # 0x0
	.short	8                       # 0x8
	.short	0                       # 0x0
	.short	704                     # 0x2c0
	.size	pdf_text_state_enum_ptrs, 8

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"/Font"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"T*"
	.size	.L.str.8, 3

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"["
	.size	.L.str.9, 2

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%g"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"]TJ\n"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"'\n"
	.size	.L.str.12, 3

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Tj\n"
	.size	.L.str.13, 4

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%g TL\n"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%g %g Td\n"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%g %g %g %g %g %g Tm\n"
	.size	.L.str.16, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
