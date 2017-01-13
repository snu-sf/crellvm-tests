	.text
	.file	"gxht.bc"
	.align	16, 0x90
	.type	dc_ht_binary_enum_ptrs,@function
dc_ht_binary_enum_ptrs:                 # @dc_ht_binary_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	cmpl	$1, %ecx
	jne	.LBB0_1
# BB#3:                                 # %sw.bb.1
	movq	40(%rsi), %rax
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB0_5
# BB#4:                                 # %cond.true
	movl	52(%rax), %ecx
	negq	%rcx
	imulq	$56, %rcx, %rcx
	addq	%rax, %rcx
.LBB0_5:                                # %cond.end
	movq	%rcx, (%r8)
	jmp	.LBB0_6
.LBB0_1:                                # %entry
	testl	%ecx, %ecx
	jne	.LBB0_7
# BB#2:                                 # %sw.bb
	movq	8(%rsi), %rax
	movq	%rax, (%r8)
.LBB0_6:                                # %cleanup
	movl	$ptr_struct_procs, %eax
.LBB0_7:                                # %cleanup
	retq
.Lfunc_end0:
	.size	dc_ht_binary_enum_ptrs, .Lfunc_end0-dc_ht_binary_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	dc_ht_binary_reloc_ptrs,@function
dc_ht_binary_reloc_ptrs:                # @dc_ht_binary_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movq	40(%rbx), %rax
	xorl	%r15d, %r15d
	testq	%rax, %rax
	je	.LBB1_2
# BB#1:                                 # %cond.true
	movl	52(%rax), %r15d
.LBB1_2:                                # %cond.end
	movq	(%r14), %rax
	movq	8(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 8(%rbx)
	movq	(%r14), %rax
	movq	%r15, %rcx
	negq	%rcx
	imulq	$56, %rcx, %rdi
	addq	40(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	imulq	$56, %r15, %rcx
	addq	%rax, %rcx
	movq	%rcx, 40(%rbx)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	dc_ht_binary_reloc_ptrs, .Lfunc_end1-dc_ht_binary_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_ht_binary_save_dc,@function
gx_dc_ht_binary_save_dc:                # @gx_dc_ht_binary_save_dc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	movq	%rax, (%rsi)
	movq	16(%rdi), %rax
	movq	%rax, 8(%rsi)
	movq	24(%rdi), %rax
	movq	%rax, 16(%rsi)
	movl	32(%rdi), %eax
	movl	%eax, 24(%rsi)
	movl	36(%rdi), %eax
	movl	%eax, 28(%rsi)
	movq	352(%rdi), %rax
	movq	%rax, 336(%rsi)
	retq
.Lfunc_end2:
	.size	gx_dc_ht_binary_save_dc, .Lfunc_end2-gx_dc_ht_binary_save_dc
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_ht_binary_get_dev_halftone,@function
gx_dc_ht_binary_get_dev_halftone:       # @gx_dc_ht_binary_get_dev_halftone
	.cfi_startproc
# BB#0:                                 # %entry
	movq	8(%rdi), %rax
	retq
.Lfunc_end3:
	.size	gx_dc_ht_binary_get_dev_halftone, .Lfunc_end3-gx_dc_ht_binary_get_dev_halftone
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_ht_binary_load,@function
gx_dc_ht_binary_load:                   # @gx_dc_ht_binary_load
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movslq	36(%rbx), %rax
	testq	%rax, %rax
	movq	8(%rbx), %rdx
	js	.LBB4_2
# BB#1:                                 # %cond.false
	imulq	$168, %rax, %rax
	addq	200(%rdx), %rax
	movq	%rax, %rdx
.LBB4_2:                                # %cond.end
	movq	96(%rdx), %rax
	movq	120(%rax), %rcx
	cmpq	88(%rdx), %rcx
	je	.LBB4_4
# BB#3:                                 # %if.then
	movq	8(%rsi), %rdi
	movq	%rax, %rsi
	callq	gx_ht_init_cache
.LBB4_4:                                # %if.end
	movq	$0, 40(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end4:
	.size	gx_dc_ht_binary_load, .Lfunc_end4-gx_dc_ht_binary_load
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_ht_binary_fill_rectangle,@function
gx_dc_ht_binary_fill_rectangle:         # @gx_dc_ht_binary_fill_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp9:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp11:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp12:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp14:
	.cfi_def_cfa_offset 208
.Ltmp15:
	.cfi_offset %rbx, -56
.Ltmp16:
	.cfi_offset %r12, -48
.Ltmp17:
	.cfi_offset %r13, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movl	%r8d, 84(%rsp)          # 4-byte Spill
	movl	%ecx, 88(%rsp)          # 4-byte Spill
	movl	%edx, 92(%rsp)          # 4-byte Spill
	movl	%esi, %r11d
	movq	%rdi, %r13
	movq	216(%rsp), %r12
	movq	%r12, 144(%rsp)
	movslq	36(%r13), %rax
	movq	8(%r13), %rcx
	movq	200(%rcx), %rbx
	imulq	$168, %rax, %rbp
	movq	80(%rbx,%rbp), %rax
	movq	96(%rbx,%rbp), %rdi
	movslq	32(%r13), %rcx
	movl	(%rax,%rcx,4), %r8d
	movl	192(%rdi), %eax
	movq	16(%rdi), %rsi
	cmpl	56(%rbx,%rbp), %eax
	movq	%rcx, %rax
	jae	.LBB5_2
# BB#1:                                 # %if.then.i
	movl	%r8d, %eax
	cltd
	idivl	196(%rdi)
	cltq
.LBB5_2:                                # %if.end.i
	imulq	$56, %rax, %rax
	leaq	(%rsi,%rax), %r15
	cmpl	%r8d, 48(%rsi,%rax)
	je	.LBB5_4
# BB#3:                                 # %if.then.15.i
	addq	%rbp, %rbx
	addq	208(%rdi), %rcx
	movq	%r15, %rdi
	movl	%r8d, %esi
	movq	%rbx, %rdx
	movl	%r11d, %ebx
	callq	render_ht
	movl	%ebx, %r11d
	testl	%eax, %eax
	js	.LBB5_5
.LBB5_4:                                # %if.end.20.i
	movq	%r15, 40(%r13)
.LBB5_5:                                # %gx_dc_ht_binary_load_cache.exit
	movl	208(%rsp), %ebx
	movzwl	108(%r14), %eax
	cmpl	$1, %eax
	jbe	.LBB5_7
# BB#6:
	andl	$-513, %ebx             # imm = 0xFFFFFFFFFFFFFDFF
.LBB5_7:                                # %select.end
	testq	%r12, %r12
	jne	.LBB5_10
# BB#8:                                 # %select.end
	movl	%ebx, %eax
	andl	$563, %eax              # imm = 0x233
	cmpl	$48, %eax
	jne	.LBB5_10
# BB#9:                                 # %if.then.7
	movq	40(%r13), %rsi
	movq	16(%r13), %rax
	movq	24(%r13), %rcx
	movl	352(%r13), %edx
	movl	356(%r13), %edi
	movl	%edi, 24(%rsp)
	movl	%edx, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	movl	%r11d, %edx
	movl	92(%rsp), %ecx          # 4-byte Reload
	movl	88(%rsp), %r8d          # 4-byte Reload
	movl	84(%rsp), %r9d          # 4-byte Reload
	callq	*1416(%r14)
	jmp	.LBB5_19
.LBB5_10:                               # %if.end.18
	leaq	16(%r13), %r15
	cmpq	$-1, 16(%r13)
	jne	.LBB5_12
# BB#11:
	andl	$-16, %ebx
	orl	$10, %ebx
.LBB5_12:                               # %select.end36
	cmpq	$-1, 8(%r15)
	jne	.LBB5_14
# BB#13:
	andl	$-241, %ebx
	orl	$160, %ebx
.LBB5_14:                               # %select.end40
	testq	%r12, %r12
	jne	.LBB5_16
# BB#15:                                # %if.then.40
	leaq	144(%rsp), %rdi
	leaq	96(%rsp), %rsi
	movq	%r14, %rdx
	movl	%r11d, %ebp
	callq	gx_set_rop_no_source
	movl	%ebp, %r11d
	movq	144(%rsp), %r12
.LBB5_16:                               # %if.end.41
	movl	40(%r12), %eax
	movq	(%r12), %rsi
	movl	8(%r12), %edx
	movl	12(%r12), %ecx
	movq	16(%r12), %r8
	movl	44(%r12), %edi
	addq	$24, %r12
	xorl	%r9d, %r9d
	testl	%eax, %eax
	je	.LBB5_17
# BB#18:                                # %if.else
	testl	%edi, %edi
	cmovneq	%r12, %r9
	movq	40(%r13), %r10
	movl	352(%r13), %ebp
	movl	356(%r13), %edi
	movl	%eax, 72(%rsp)
	movl	%ebx, 64(%rsp)
	movl	%edi, 56(%rsp)
	movl	%ebp, 48(%rsp)
	movl	84(%rsp), %eax          # 4-byte Reload
	movl	%eax, 40(%rsp)
	movl	88(%rsp), %eax          # 4-byte Reload
	movl	%eax, 32(%rsp)
	movl	92(%rsp), %eax          # 4-byte Reload
	movl	%eax, 24(%rsp)
	movl	%r11d, 16(%rsp)
	movq	%r15, 8(%rsp)
	movq	%r10, (%rsp)
	movq	%r14, %rdi
	callq	*1696(%r14)
	jmp	.LBB5_19
.LBB5_17:                               # %if.then.44
	testl	%edi, %edi
	cmovneq	%r12, %r9
	movq	40(%r13), %rax
	movl	352(%r13), %edi
	movl	356(%r13), %ebp
	movl	%ebx, 64(%rsp)
	movl	%ebp, 56(%rsp)
	movl	%edi, 48(%rsp)
	movl	84(%rsp), %edi          # 4-byte Reload
	movl	%edi, 40(%rsp)
	movl	88(%rsp), %edi          # 4-byte Reload
	movl	%edi, 32(%rsp)
	movl	92(%rsp), %edi          # 4-byte Reload
	movl	%edi, 24(%rsp)
	movl	%r11d, 16(%rsp)
	movq	%r15, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	callq	*1424(%r14)
.LBB5_19:                               # %cleanup
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gx_dc_ht_binary_fill_rectangle, .Lfunc_end5-gx_dc_ht_binary_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_ht_binary_fill_masked,@function
gx_dc_ht_binary_fill_masked:            # @gx_dc_ht_binary_fill_masked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp22:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp23:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp24:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp25:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp27:
	.cfi_def_cfa_offset 64
.Ltmp28:
	.cfi_offset %rbx, -56
.Ltmp29:
	.cfi_offset %r12, -48
.Ltmp30:
	.cfi_offset %r13, -40
.Ltmp31:
	.cfi_offset %r14, -32
.Ltmp32:
	.cfi_offset %r15, -24
.Ltmp33:
	.cfi_offset %rbp, -16
	movl	%ecx, %r12d
	movl	%edx, %r13d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movslq	36(%rbx), %rax
	movq	8(%rbx), %rcx
	movq	200(%rcx), %rbp
	imulq	$168, %rax, %rsi
	movq	80(%rbp,%rsi), %rax
	movq	96(%rbp,%rsi), %rdi
	movslq	32(%rbx), %rcx
	movl	(%rax,%rcx,4), %r11d
	movl	192(%rdi), %eax
	movq	16(%rdi), %r10
	cmpl	56(%rbp,%rsi), %eax
	movq	%rcx, %rax
	jae	.LBB6_2
# BB#1:                                 # %if.then.i
	movl	%r11d, %eax
	cltd
	idivl	196(%rdi)
	cltq
.LBB6_2:                                # %if.end.i
	imulq	$56, %rax, %rax
	leaq	(%r10,%rax), %r15
	cmpl	%r11d, 48(%r10,%rax)
	je	.LBB6_5
# BB#3:                                 # %if.then.15.i
	addq	%rsi, %rbp
	addq	208(%rdi), %rcx
	movq	%r15, %rdi
	movl	%r11d, %esi
	movq	%rbp, %rdx
	movl	%r9d, %ebp
	movq	%r14, (%rsp)            # 8-byte Spill
	movl	%r13d, %r14d
	movl	%r12d, %r13d
	movq	%r8, %r12
	callq	render_ht
	movq	%r12, %r8
	movl	%r13d, %r12d
	movl	%r14d, %r13d
	movq	(%rsp), %r14            # 8-byte Reload
	movl	%ebp, %r9d
	testl	%eax, %eax
	js	.LBB6_4
.LBB6_5:                                # %if.end
	movq	%r15, 40(%rbx)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%r13d, %edx
	movl	%r12d, %ecx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_dc_default_fill_masked # TAILCALL
.LBB6_4:                                # %cleanup
	movl	$-100, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gx_dc_ht_binary_fill_masked, .Lfunc_end6-gx_dc_ht_binary_fill_masked
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_ht_binary_equal,@function
gx_dc_ht_binary_equal:                  # @gx_dc_ht_binary_equal
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	cmpq	(%rdi), %rax
	je	.LBB7_2
# BB#1:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.LBB7_2:                                # %land.lhs.true
	movl	352(%rdi), %eax
	cmpl	352(%rsi), %eax
	jne	.LBB7_3
# BB#4:                                 # %land.lhs.true.5
	movl	356(%rdi), %eax
	cmpl	356(%rsi), %eax
	jne	.LBB7_5
# BB#6:                                 # %land.lhs.true.10
	movq	16(%rdi), %rax
	cmpq	16(%rsi), %rax
	jne	.LBB7_7
# BB#8:                                 # %land.lhs.true.16
	movq	24(%rdi), %rax
	cmpq	24(%rsi), %rax
	jne	.LBB7_9
# BB#10:                                # %land.rhs
	movl	32(%rdi), %eax
	cmpl	32(%rsi), %eax
	sete	%al
	movzbl	%al, %eax
	retq
.LBB7_3:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.LBB7_5:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.LBB7_7:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.LBB7_9:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.Lfunc_end7:
	.size	gx_dc_ht_binary_equal, .Lfunc_end7-gx_dc_ht_binary_equal
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_ht_binary_write,@function
gx_dc_ht_binary_write:                  # @gx_dc_ht_binary_write
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp35:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp36:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp37:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp38:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp39:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp40:
	.cfi_def_cfa_offset 96
.Ltmp41:
	.cfi_offset %rbx, -56
.Ltmp42:
	.cfi_offset %r12, -48
.Ltmp43:
	.cfi_offset %r13, -40
.Ltmp44:
	.cfi_offset %r14, -32
.Ltmp45:
	.cfi_offset %r15, -24
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbp
	movl	$-28, %eax
	testq	%rcx, %rcx
	jne	.LBB8_40
# BB#1:                                 # %if.end
	movq	%r8, 24(%rsp)           # 8-byte Spill
	movq	%r9, 16(%rsp)           # 8-byte Spill
	movb	$1, %r13b
	xorl	%r12d, %r12d
	testq	%rsi, %rsi
	je	.LBB8_4
# BB#2:                                 # %land.lhs.true
	movq	(%rsi), %rax
	xorl	%r15d, %r15d
	cmpq	(%rbp), %rax
	movl	$0, %r12d
	jne	.LBB8_4
# BB#3:                                 # %lor.lhs.false
	movq	16(%rbp), %rax
	movl	$1, %r14d
	cmpq	8(%rsi), %rax
	movl	$0, %r13d
	movq	%rsi, %r12
	je	.LBB8_6
.LBB8_4:                                # %if.end.16
	movl	$0, 36(%rsp)
	movq	16(%rbp), %rdi
	leaq	36(%rsp), %rcx
	movq	%rdx, %rsi
	movq	%rdx, %rbx
	movq	24(%rsp), %rdx          # 8-byte Reload
	callq	gx_dc_write_color
	movl	36(%rsp), %r14d
	incl	%r14d
	movl	$1, %r15d
	testb	%r13b, %r13b
	je	.LBB8_5
# BB#41:                                # %if.end.16.if.end.36_crit_edge
	movq	24(%rbp), %rdi
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movb	$1, %bpl
	movl	$1, %r15d
	movq	%rbx, %rdx
	jmp	.LBB8_9
.LBB8_5:
	movq	%r12, %rsi
	movq	%rbx, %rdx
.LBB8_6:                                # %lor.lhs.false.18
	movq	24(%rbp), %rdi
	cmpq	16(%rsi), %rdi
	jne	.LBB8_8
# BB#7:
	movq	%rdx, %r13
	movq	%rsi, %r12
	movq	16(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB8_11
.LBB8_8:
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	xorl	%ebp, %ebp
	movq	%rsi, %r12
.LBB8_9:                                # %if.end.36
	orl	$2, %r15d
	movl	$0, 36(%rsp)
	leaq	36(%rsp), %rcx
	movq	%rdx, %rsi
	movq	%rdx, %r13
	movq	24(%rsp), %rdx          # 8-byte Reload
	callq	gx_dc_write_color
	addl	36(%rsp), %r14d
	testb	%bpl, %bpl
	je	.LBB8_10
# BB#42:                                # %if.end.36.if.then.45_crit_edge
	movq	8(%rsp), %rbp           # 8-byte Reload
	movl	32(%rbp), %edi
	movb	$1, %bl
	movq	16(%rsp), %rcx          # 8-byte Reload
	jmp	.LBB8_14
.LBB8_10:
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	8(%rsp), %rbp           # 8-byte Reload
.LBB8_11:                               # %lor.lhs.false.38
	movl	32(%rbp), %edi
	cmpl	24(%r12), %edi
	jne	.LBB8_13
# BB#12:
	movq	%r13, %rsi
	jmp	.LBB8_18
.LBB8_13:
	xorl	%ebx, %ebx
.LBB8_14:                               # %if.then.45
	movq	%r13, %rsi
	movl	$1, %eax
	cmpl	$128, %edi
	jb	.LBB8_17
# BB#15:                                # %cond.false
	movl	$2, %eax
	cmpl	$16384, %edi            # imm = 0x4000
	jb	.LBB8_17
# BB#16:                                # %cond.false.56
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movq	%rsi, %rbp
	movq	%rcx, %r13
	callq	enc_u_size_uint
	movq	%r13, %rcx
	movq	%rbp, %rsi
	movq	8(%rsp), %rbp           # 8-byte Reload
.LBB8_17:                               # %if.end.64
	orl	$4, %r15d
	addl	%eax, %r14d
	testb	%bl, %bl
	jne	.LBB8_19
.LBB8_18:                               # %lor.lhs.false.66
	movl	36(%rbp), %eax
	cmpl	28(%r12), %eax
	jne	.LBB8_19
# BB#22:                                # %if.end.76
	testl	%r15d, %r15d
	jne	.LBB8_20
# BB#23:                                # %if.then.78
	movl	$0, (%rcx)
	movl	$1, %eax
	jmp	.LBB8_40
.LBB8_19:                               # %if.end.76.thread
	orl	$8, %r15d
	incl	%r14d
.LBB8_20:                               # %if.end.79
	cmpl	(%rcx), %r14d
	jbe	.LBB8_24
# BB#21:                                # %if.then.81
	movl	%r14d, (%rcx)
	movl	$-15, %eax
	jmp	.LBB8_40
.LBB8_24:                               # %if.end.82
	movq	24(%rsp), %r12          # 8-byte Reload
	leaq	1(%r12), %r13
	movb	%r15b, (%r12)
	testb	$1, %r15b
	je	.LBB8_27
# BB#25:                                # %if.then.85
	leal	-1(%r14), %eax
	movl	%eax, 36(%rsp)
	movq	16(%rbp), %rdi
	leaq	36(%rsp), %rcx
	movq	%rbp, %rbx
	movq	%rsi, %rbp
	movq	%r13, %rdx
	callq	gx_dc_write_color
	movq	%rbp, %rsi
	movq	%rbx, %rbp
	testl	%eax, %eax
	js	.LBB8_40
# BB#26:                                # %if.end.96
	movl	36(%rsp), %eax
	addq	%rax, %r13
	movq	16(%rsp), %rcx          # 8-byte Reload
.LBB8_27:                               # %if.end.97
	testb	$2, %r15b
	je	.LBB8_30
# BB#28:                                # %if.then.101
	movq	%rcx, %rbx
	addl	%r12d, %r14d
	subl	%r13d, %r14d
	movl	%r14d, 36(%rsp)
	movq	24(%rbp), %rdi
	leaq	36(%rsp), %rcx
	movq	%r13, %rdx
	callq	gx_dc_write_color
	testl	%eax, %eax
	js	.LBB8_40
# BB#29:                                # %if.end.116
	movl	36(%rsp), %eax
	addq	%rax, %r13
	movq	%rbx, %rcx
.LBB8_30:                               # %if.end.119
	testb	$4, %r15b
	je	.LBB8_37
# BB#31:                                # %do.body
	movl	32(%rbp), %edi
	cmpl	$127, %edi
	ja	.LBB8_33
# BB#32:                                # %if.then.129
	movb	%dil, (%r13)
	incq	%r13
	jmp	.LBB8_37
.LBB8_33:                               # %if.else
	movq	%rcx, %rbx
	cmpl	$16383, %edi            # imm = 0x3FFF
	ja	.LBB8_35
# BB#34:                                # %if.then.140
	orl	$128, %edi
	movb	%dil, (%r13)
	movl	32(%rbp), %eax
	shrl	$7, %eax
	movb	%al, 1(%r13)
	addq	$2, %r13
	jmp	.LBB8_36
.LBB8_35:                               # %if.else.153
	movq	%r13, %rsi
	callq	enc_u_put_uint
	movq	%rax, %r13
.LBB8_36:                               # %if.end.160
	movq	%rbx, %rcx
.LBB8_37:                               # %if.end.160
	testb	$8, %r15b
	je	.LBB8_39
# BB#38:                                # %if.then.164
	movb	36(%rbp), %al
	movb	%al, (%r13)
	incq	%r13
.LBB8_39:                               # %if.end.170
	subl	%r12d, %r13d
	movl	%r13d, (%rcx)
	xorl	%eax, %eax
.LBB8_40:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gx_dc_ht_binary_write, .Lfunc_end8-gx_dc_ht_binary_write
	.cfi_endproc

	.align	16, 0x90
	.type	gx_dc_ht_binary_read,@function
gx_dc_ht_binary_read:                   # @gx_dc_ht_binary_read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp48:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp49:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp50:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp51:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp52:
	.cfi_def_cfa_offset 56
	subq	$680, %rsp              # imm = 0x2A8
.Ltmp53:
	.cfi_def_cfa_offset 736
.Ltmp54:
	.cfi_offset %rbx, -56
.Ltmp55:
	.cfi_offset %r12, -48
.Ltmp56:
	.cfi_offset %r13, -40
.Ltmp57:
	.cfi_offset %r14, -32
.Ltmp58:
	.cfi_offset %r15, -24
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%r9, %rbp
	movq	%rcx, %r15
	movq	%rdx, %rcx
	movq	%rsi, %r13
	movq	%rdi, %rbx
	movl	$-28, %eax
	testq	%r8, %r8
	jne	.LBB9_25
# BB#1:                                 # %if.end
	movl	736(%rsp), %r14d
	testq	%rcx, %rcx
	je	.LBB9_4
# BB#2:                                 # %land.lhs.true
	movl	$gx_dc_type_data_ht_binary, %eax
	cmpq	%rax, (%rcx)
	je	.LBB9_3
.LBB9_4:                                # %if.else
	leaq	24(%rsp), %rdi
	xorl	%esi, %esi
	movl	$656, %edx              # imm = 0x290
	callq	memset
	jmp	.LBB9_5
.LBB9_3:                                # %if.then.3
	leaq	24(%rsp), %rdi
	movl	$656, %edx              # imm = 0x290
	movq	%rcx, %rsi
	callq	memcpy
.LBB9_5:                                # %if.end.4
	movq	$gx_dc_type_data_ht_binary, 24(%rsp)
	movq	392(%r13), %rax
	movq	%rax, 32(%rsp)
	movq	$0, 64(%rsp)
	testl	%r14d, %r14d
	je	.LBB9_6
# BB#7:                                 # %if.end.10
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	decl	%r14d
	leaq	1(%rbp), %r12
	movzbl	(%rbp), %ebx
	testb	$1, %bl
	je	.LBB9_10
# BB#8:                                 # %if.then.13
	leaq	40(%rsp), %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	movl	%r14d, %ecx
	callq	gx_dc_read_color
	testl	%eax, %eax
	js	.LBB9_25
# BB#9:                                 # %if.end.20
	subl	%eax, %r14d
	cltq
	addq	%rax, %r12
.LBB9_10:                               # %if.end.21
	testb	$2, %bl
	je	.LBB9_13
# BB#11:                                # %if.then.25
	leaq	48(%rsp), %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	movl	%r14d, %ecx
	callq	gx_dc_read_color
	testl	%eax, %eax
	js	.LBB9_25
# BB#12:                                # %if.end.34
	subl	%eax, %r14d
	cltq
	addq	%rax, %r12
.LBB9_13:                               # %if.end.38
	testb	$4, %bl
	je	.LBB9_20
# BB#14:                                # %if.then.42
	testl	%r14d, %r14d
	je	.LBB9_15
# BB#16:                                # %do.body
	movzbl	(%r12), %eax
	movl	%eax, 56(%rsp)
	testb	%al, %al
	js	.LBB9_17
# BB#18:                                # %if.else.57
	leaq	1(%r12), %rax
	jmp	.LBB9_19
.LBB9_6:
	movl	$-15, %eax
	jmp	.LBB9_25
.LBB9_15:
	movl	$-15, %eax
	jmp	.LBB9_25
.LBB9_17:                               # %if.then.52
	leaq	20(%rsp), %rdi
	movq	%r12, %rsi
	callq	enc_u_get_uint
	movl	20(%rsp), %ecx
	movl	%ecx, 56(%rsp)
.LBB9_19:                               # %cleanup.thread
	addl	%r14d, %r12d
	subl	%eax, %r12d
	movl	%r12d, %r14d
	movq	%rax, %r12
.LBB9_20:                               # %if.end.63
	testb	$8, %bl
	je	.LBB9_23
# BB#21:                                # %if.then.67
	testl	%r14d, %r14d
	movl	$-15, %eax
	je	.LBB9_25
# BB#22:                                # %if.end.71
	movzbl	(%r12), %eax
	incq	%r12
	movl	%eax, 60(%rsp)
.LBB9_23:                               # %if.end.77
	movq	392(%r13), %rcx
	testq	%rcx, %rcx
	movl	$-28, %eax
	je	.LBB9_25
# BB#24:                                # %if.end.82
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	subl	376(%r13), %edi
	movl	216(%rcx), %esi
	callq	imod
	movl	%eax, 376(%rsp)
	subl	380(%r13), %ebx
	movq	392(%r13), %rax
	movl	220(%rax), %esi
	movl	%ebx, %edi
	callq	imod
	movl	%eax, 380(%rsp)
	leaq	24(%rsp), %rsi
	movl	$656, %edx              # imm = 0x290
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	memcpy
	subl	%ebp, %r12d
	movl	%r12d, %eax
.LBB9_25:                               # %cleanup.99
	addq	$680, %rsp              # imm = 0x2A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gx_dc_ht_binary_read, .Lfunc_end9-gx_dc_ht_binary_read
	.cfi_endproc

	.globl	gx_dc_ht_binary_get_nonzero_comps
	.align	16, 0x90
	.type	gx_dc_ht_binary_get_nonzero_comps,@function
gx_dc_ht_binary_get_nonzero_comps:      # @gx_dc_ht_binary_get_nonzero_comps
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp60:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp61:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp62:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp63:
	.cfi_def_cfa_offset 40
	subq	$264, %rsp              # imm = 0x108
.Ltmp64:
	.cfi_def_cfa_offset 304
.Ltmp65:
	.cfi_offset %rbx, -40
.Ltmp66:
	.cfi_offset %r12, -32
.Ltmp67:
	.cfi_offset %r14, -24
.Ltmp68:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r15
	movq	16(%r15), %rsi
	leaq	128(%rsp), %rbx
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	*1560(%r12)
	testl	%eax, %eax
	js	.LBB10_19
# BB#1:                                 # %land.lhs.true
	movq	24(%r15), %rsi
	leaq	(%rsp), %r15
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	*1560(%r12)
	testl	%eax, %eax
	js	.LBB10_19
# BB#2:                                 # %if.then
	movl	100(%r12), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	movl	$0, %edx
	jle	.LBB10_18
# BB#3:                                 # %for.body.preheader
	xorl	%edi, %edi
	testb	$1, %cl
	jne	.LBB10_5
# BB#4:
	movl	$1, %esi
	xorl	%edx, %edx
	jmp	.LBB10_9
.LBB10_5:                               # %for.body.prol
	cmpw	$0, 128(%rsp)
	jne	.LBB10_8
# BB#6:                                 # %lor.lhs.false.prol
	movl	$1, %edi
	cmpw	$0, (%rsp)
	je	.LBB10_7
.LBB10_8:                               # %if.then.19.prol
	movl	$2, %esi
	movl	$1, %edx
	movl	$1, %edi
.LBB10_9:                               # %for.body.preheader.split
	cmpl	$1, %ecx
	je	.LBB10_18
# BB#10:                                # %for.body.preheader.split.split
	subl	%edi, %ecx
	leaq	2(%rdi,%rdi), %rdi
	orq	%rdi, %rbx
	orq	%rdi, %r15
	.align	16, 0x90
.LBB10_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpw	$0, -2(%rbx)
	jne	.LBB10_13
# BB#12:                                # %lor.lhs.false
                                        #   in Loop: Header=BB10_11 Depth=1
	cmpw	$0, -2(%r15)
	je	.LBB10_14
.LBB10_13:                              # %if.then.19
                                        #   in Loop: Header=BB10_11 Depth=1
	orl	%esi, %edx
.LBB10_14:                              # %for.inc
                                        #   in Loop: Header=BB10_11 Depth=1
	cmpw	$0, (%rbx)
	jne	.LBB10_16
# BB#15:                                # %lor.lhs.false.1
                                        #   in Loop: Header=BB10_11 Depth=1
	cmpw	$0, (%r15)
	je	.LBB10_17
.LBB10_16:                              # %if.then.19.1
                                        #   in Loop: Header=BB10_11 Depth=1
	leal	(%rsi,%rsi), %edi
	orl	%edi, %edx
.LBB10_17:                              # %for.inc.1
                                        #   in Loop: Header=BB10_11 Depth=1
	shll	$2, %esi
	addq	$4, %rbx
	addq	$4, %r15
	addl	$-2, %ecx
	jne	.LBB10_11
.LBB10_18:                              # %for.end
	movslq	%edx, %rcx
	movq	%rcx, (%r14)
.LBB10_19:                              # %if.end.21
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB10_7:
	movl	$2, %esi
	xorl	%edx, %edx
	jmp	.LBB10_9
.Lfunc_end10:
	.size	gx_dc_ht_binary_get_nonzero_comps, .Lfunc_end10-gx_dc_ht_binary_get_nonzero_comps
	.cfi_endproc

	.globl	gx_ht_cache_default_tiles
	.align	16, 0x90
	.type	gx_ht_cache_default_tiles,@function
gx_ht_cache_default_tiles:              # @gx_ht_cache_default_tiles
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$8192, %eax             # imm = 0x2000
	retq
.Lfunc_end11:
	.size	gx_ht_cache_default_tiles, .Lfunc_end11-gx_ht_cache_default_tiles
	.cfi_endproc

	.globl	gx_ht_cache_default_bits_size
	.align	16, 0x90
	.type	gx_ht_cache_default_bits_size,@function
gx_ht_cache_default_bits_size:          # @gx_ht_cache_default_bits_size
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1048576, %eax          # imm = 0x100000
	retq
.Lfunc_end12:
	.size	gx_ht_cache_default_bits_size, .Lfunc_end12-gx_ht_cache_default_bits_size
	.cfi_endproc

	.globl	gx_ht_alloc_cache
	.align	16, 0x90
	.type	gx_ht_alloc_cache,@function
gx_ht_alloc_cache:                      # @gx_ht_alloc_cache
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
.Ltmp74:
	.cfi_offset %rbx, -48
.Ltmp75:
	.cfi_offset %r12, -40
.Ltmp76:
	.cfi_offset %r14, -32
.Ltmp77:
	.cfi_offset %r15, -24
.Ltmp78:
	.cfi_offset %rbp, -16
	movl	%edx, %r12d
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movl	$st_ht_cache, %esi
	movl	$.L.str.1, %edx
	callq	*72(%rbx)
	movq	%rax, %r14
	movl	$.L.str.2, %edx
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	*64(%rbx)
	movq	%rax, %rbp
	movl	$st_ht_tiles, %edx
	movl	$.L.str.3, %ecx
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	*104(%rbx)
	testq	%r14, %r14
	je	.LBB13_3
# BB#1:                                 # %entry
	testq	%rbp, %rbp
	je	.LBB13_3
# BB#2:                                 # %entry
	testq	%rax, %rax
	je	.LBB13_3
# BB#4:                                 # %if.end
	movq	%rbp, (%r14)
	movl	%r12d, 8(%r14)
	movq	%rax, 16(%r14)
	movl	%r15d, 24(%r14)
	movq	%r14, 128(%r14)
	movq	$0, 136(%r14)
	movq	$0, 112(%r14)
	movq	$0, 120(%r14)
	movq	$0, (%rax)
	jmp	.LBB13_5
.LBB13_3:                               # %if.then
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	*24(%rbx)
	movl	$.L.str.2, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*24(%rbx)
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*24(%rbx)
	xorl	%r14d, %r14d
.LBB13_5:                               # %cleanup
	movq	%r14, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gx_ht_alloc_cache, .Lfunc_end13-gx_ht_alloc_cache
	.cfi_endproc

	.globl	gx_ht_free_cache
	.align	16, 0x90
	.type	gx_ht_free_cache,@function
gx_ht_free_cache:                       # @gx_ht_free_cache
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp79:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp80:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp81:
	.cfi_def_cfa_offset 32
.Ltmp82:
	.cfi_offset %rbx, -24
.Ltmp83:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	16(%r14), %rsi
	movl	$.L.str.4, %edx
	callq	*24(%rbx)
	movq	(%r14), %rsi
	movl	$.L.str.5, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	24(%rbx), %rax
	movl	$.L.str.6, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*%rax                   # TAILCALL
.Lfunc_end14:
	.size	gx_ht_free_cache, .Lfunc_end14-gx_ht_free_cache
	.cfi_endproc

	.globl	gx_ht_init_cache
	.align	16, 0x90
	.type	gx_ht_init_cache,@function
gx_ht_init_cache:                       # @gx_ht_init_cache
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp85:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp86:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp87:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp88:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp89:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp90:
	.cfi_def_cfa_offset 112
.Ltmp91:
	.cfi_offset %rbx, -56
.Ltmp92:
	.cfi_offset %r12, -48
.Ltmp93:
	.cfi_offset %r13, -40
.Ltmp94:
	.cfi_offset %r14, -32
.Ltmp95:
	.cfi_offset %r15, -24
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rdx, %r9
	movzwl	40(%r9), %r8d
	movw	42(%r9), %ax
	movzwl	%ax, %ebp
	movl	%ebp, %ecx
	imull	%r8d, %ecx
	incl	%ecx
	cmpq	$16, %r8
	movq	%r8, %r13
	ja	.LBB15_2
# BB#1:                                 # %cond.true
	movl	$32, %r13d
	movl	$32, %eax
	xorl	%edx, %edx
	divq	%r8
	subq	%rdx, %r13
.LBB15_2:                               # %cond.end
	movzwl	44(%r9), %r12d
	movl	%r12d, %r11d
	imull	%ebp, %r11d
	movzwl	46(%r9), %r15d
	movq	(%rsi), %rbx
	movl	60(%r9), %eax
	leal	1(%rax), %r10d
	cmpl	%ecx, %eax
	cmovbl	%ecx, %r10d
	movl	8(%rsi), %ecx
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%r11d
	cmpl	%r10d, %eax
	cmoval	%r10d, %eax
	movl	24(%rsi), %edx
	cmpl	%edx, %eax
	cmoval	%edx, %eax
	cmpl	%r10d, %eax
	jne	.LBB15_3
# BB#4:                                 # %land.lhs.true
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	%r8, 40(%rsp)           # 8-byte Spill
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movl	%r10d, %eax
	imull	%r11d, %eax
	movl	%ecx, %edx
	shrl	%edx
	cmpl	%edx, %eax
	ja	.LBB15_6
# BB#5:                                 # %if.then.37
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%r10d
	xorl	%edx, %edx
	divl	%ebp
	shll	$3, %eax
	andl	$-64, %eax
	xorl	%edx, %edx
	movq	40(%rsp), %rcx          # 8-byte Reload
	divl	%ecx
	cmpl	$64, %eax
	movl	$64, %r13d
	cmovbel	%eax, %r13d
	imull	%ecx, %r13d
	leal	63(%r13), %r12d
	sarl	$6, %r12d
	shll	$3, %r12d
	movl	%r12d, %r11d
	imull	%ebp, %r11d
	jmp	.LBB15_6
.LBB15_3:
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	%r8, 40(%rsp)           # 8-byte Spill
	movq	%rsi, 16(%rsp)          # 8-byte Spill
.LBB15_6:                               # %if.end.51
	movl	%r11d, 12(%rsp)         # 4-byte Spill
	movl	56(%r9), %esi
	incl	%esi
	movq	%r9, 24(%rsp)           # 8-byte Spill
	movq	%r10, 32(%rsp)          # 8-byte Spill
	callq	gs_next_ids
	movq	16(%rsp), %r14          # 8-byte Reload
	movq	%rax, 208(%r14)
	leaq	32(%r14), %rdi
	movl	$160, %edx
	movq	24(%rsp), %rsi          # 8-byte Reload
	callq	memcpy
	movq	$0, 136(%r14)
	movq	48(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, 192(%r14)
	movq	32(%rsp), %rax          # 8-byte Reload
	leal	-1(%rax,%rcx), %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%eax, 196(%r14)
	movl	$-1, 200(%r14)
	movl	8(%r14), %edx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	memset
	movq	48(%rsp), %rdx          # 8-byte Reload
	testl	%edx, %edx
	movq	40(%rsp), %rdi          # 8-byte Reload
	jle	.LBB15_9
# BB#7:                                 # %for.body.lr.ph
	movq	16(%r14), %rax
	movl	12(%rsp), %ecx          # 4-byte Reload
	movslq	%edx, %rdx
	addq	$52, %rax
	xorl	%esi, %esi
	.align	16, 0x90
.LBB15_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, -4(%rax)
	movl	%esi, (%rax)
	movq	%rbx, -52(%rax)
	movl	%r12d, -44(%rax)
	movl	%r13d, -40(%rax)
	movl	%ebp, -36(%rax)
	movw	%di, -20(%rax)
	movw	%bp, -18(%rax)
	movw	%r15w, -16(%rax)
	movw	%r15w, -14(%rax)
	movl	$1, -12(%rax)
	incq	%rsi
	addq	%rcx, %rbx
	addq	$56, %rax
	cmpq	%rdx, %rsi
	jl	.LBB15_8
.LBB15_9:                               # %for.end
	movq	$gx_render_ht_default, 216(%r14)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gx_ht_init_cache, .Lfunc_end15-gx_ht_init_cache
	.cfi_endproc

	.align	16, 0x90
	.type	gx_render_ht_default,@function
gx_render_ht_default:                   # @gx_render_ht_default
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp97:
	.cfi_def_cfa_offset 16
.Ltmp98:
	.cfi_offset %rbx, -16
	movq	%rdi, %r8
	movslq	%esi, %rcx
	movq	16(%r8), %rdi
	movq	112(%r8), %rax
	movl	(%rax,%rcx,4), %esi
	movl	192(%r8), %eax
	cmpl	88(%r8), %eax
	movq	%rcx, %rax
	jae	.LBB16_2
# BB#1:                                 # %if.then
	movl	%esi, %eax
	cltd
	idivl	196(%r8)
	cltq
.LBB16_2:                               # %if.end
	imulq	$56, %rax, %rax
	leaq	(%rdi,%rax), %rbx
	cmpl	%esi, 48(%rdi,%rax)
	je	.LBB16_4
# BB#3:                                 # %if.then.8
	addq	208(%r8), %rcx
	addq	$32, %r8
	movq	%rbx, %rdi
	movq	%r8, %rdx
	callq	render_ht
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	js	.LBB16_5
.LBB16_4:                               # %if.end.13
	movq	%rbx, %rax
.LBB16_5:                               # %cleanup.14
	popq	%rbx
	retq
.Lfunc_end16:
	.size	gx_render_ht_default, .Lfunc_end16-gx_render_ht_default
	.cfi_endproc

	.align	16, 0x90
	.type	ht_tiles_enum_ptrs,@function
ht_tiles_enum_ptrs:                     # @ht_tiles_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end17:
	.size	ht_tiles_enum_ptrs, .Lfunc_end17-ht_tiles_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	ht_tiles_reloc_ptrs,@function
ht_tiles_reloc_ptrs:                    # @ht_tiles_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp100:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp101:
	.cfi_def_cfa_offset 32
.Ltmp102:
	.cfi_offset %rbx, -24
.Ltmp103:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB18_6
# BB#1:                                 # %if.end
	movq	(%rcx), %rax
	movq	%rcx, %rsi
	callq	*(%rax)
	testl	%ebp, %ebp
	je	.LBB18_6
# BB#2:                                 # %if.end
	cmpl	$56, %ebp
	jne	.LBB18_4
# BB#3:                                 # %if.then.2
	movq	%rax, (%rbx)
	jmp	.LBB18_6
.LBB18_4:                               # %for.body.lr.ph
	movl	56(%rbx), %ecx
	subl	(%rbx), %ecx
	.align	16, 0x90
.LBB18_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, (%rbx)
	addq	$56, %rbx
	addq	%rcx, %rax
	addl	$-56, %ebp
	jne	.LBB18_5
.LBB18_6:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end18:
	.size	ht_tiles_reloc_ptrs, .Lfunc_end18-ht_tiles_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	render_ht,@function
render_ht:                              # @render_ht
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp105:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp106:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp107:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp108:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp109:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp110:
	.cfi_def_cfa_offset 64
.Ltmp111:
	.cfi_offset %rbx, -56
.Ltmp112:
	.cfi_offset %r12, -48
.Ltmp113:
	.cfi_offset %r13, -40
.Ltmp114:
	.cfi_offset %r14, -32
.Ltmp115:
	.cfi_offset %r15, -24
.Ltmp116:
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movq	%rdx, %rbp
	movl	%esi, %r13d
	movq	%rdi, %rbx
	movq	(%rbx), %r14
	movq	64(%rbp), %rax
	callq	*24(%rax)
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB19_6
# BB#1:                                 # %if.end
	movl	%r13d, 48(%rbx)
	movq	%r12, 24(%rbx)
	movl	$1, 40(%rbx)
	movl	8(%rbx), %r9d
	movzwl	44(%rbp), %ecx
	cmpl	%ecx, %r9d
	jle	.LBB19_3
# BB#2:                                 # %if.then.9
	movzwl	32(%rbx), %esi
	movzwl	34(%rbx), %edx
	movl	12(%rbx), %r8d
	movq	%r14, %rdi
	callq	bits_replicate_horizontally
.LBB19_3:                               # %if.end.19
	movl	16(%rbx), %ecx
	movzwl	34(%rbx), %esi
	xorl	%r15d, %r15d
	cmpl	%esi, %ecx
	jle	.LBB19_6
# BB#4:                                 # %land.lhs.true
	cmpw	$0, 38(%rbx)
	jne	.LBB19_6
# BB#5:                                 # %if.then.31
	movl	8(%rbx), %edx
	movq	%r14, %rdi
	callq	bits_replicate_vertically
.LBB19_6:                               # %cleanup
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	render_ht, .Lfunc_end19-render_ht
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"dc_ht_binary"
	.size	.L.str, 13

	.type	st_dc_ht_binary,@object # @st_dc_ht_binary
	.section	.rodata,"a",@progbits
	.globl	st_dc_ht_binary
	.align	8
st_dc_ht_binary:
	.long	656                     # 0x290
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	dc_ht_binary_enum_ptrs
	.quad	dc_ht_binary_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_dc_ht_binary, 64

	.type	gx_dc_type_data_ht_binary,@object # @gx_dc_type_data_ht_binary
	.globl	gx_dc_type_data_ht_binary
	.align	8
gx_dc_type_data_ht_binary:
	.quad	st_dc_ht_binary
	.quad	gx_dc_ht_binary_save_dc
	.quad	gx_dc_ht_binary_get_dev_halftone
	.quad	gx_dc_ht_get_phase
	.quad	gx_dc_ht_binary_load
	.quad	gx_dc_ht_binary_fill_rectangle
	.quad	gx_dc_ht_binary_fill_masked
	.quad	gx_dc_ht_binary_equal
	.quad	gx_dc_ht_binary_write
	.quad	gx_dc_ht_binary_read
	.quad	gx_dc_ht_binary_get_nonzero_comps
	.size	gx_dc_type_data_ht_binary, 88

	.type	gx_dc_type_ht_binary,@object # @gx_dc_type_ht_binary
	.globl	gx_dc_type_ht_binary
	.align	8
gx_dc_type_ht_binary:
	.quad	gx_dc_type_data_ht_binary
	.size	gx_dc_type_ht_binary, 8

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"alloc_ht_cache(struct)"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"alloc_ht_cache(bits)"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"alloc_ht_cache(ht_tiles)"
	.size	.L.str.3, 25

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"free_ht_cache(ht_tiles)"
	.size	.L.str.4, 24

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"free_ht_cache(bits)"
	.size	.L.str.5, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"free_ht_cache(struct)"
	.size	.L.str.6, 22

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"ht cache"
	.size	.L.str.7, 9

	.type	ht_cache_reloc_ptrs,@object # @ht_cache_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
ht_cache_reloc_ptrs:
	.short	2                       # 0x2
	.short	32                      # 0x20
	.zero	4
	.quad	st_ht_order
	.quad	ht_cache_enum_ptrs
	.size	ht_cache_reloc_ptrs, 24

	.type	st_ht_cache,@object     # @st_ht_cache
	.align	8
st_ht_cache:
	.long	224                     # 0xe0
	.zero	4
	.quad	.L.str.7
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	ht_cache_reloc_ptrs
	.size	st_ht_cache, 64

	.type	ht_cache_enum_ptrs,@object # @ht_cache_enum_ptrs
	.align	2
ht_cache_enum_ptrs:
	.zero	4
	.short	0                       # 0x0
	.short	16                      # 0x10
	.size	ht_cache_enum_ptrs, 8

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"ht tiles"
	.size	.L.str.8, 9

	.type	st_ht_tiles,@object     # @st_ht_tiles
	.section	.rodata,"a",@progbits
	.align	8
st_ht_tiles:
	.long	56                      # 0x38
	.zero	4
	.quad	.L.str.8
	.quad	0
	.quad	0
	.quad	ht_tiles_enum_ptrs
	.quad	ht_tiles_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_ht_tiles, 64


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
