	.text
	.file	"gsparam.bc"
	.globl	gs_param_typed_value_enum_ptrs
	.align	16, 0x90
	.type	gs_param_typed_value_enum_ptrs,@function
gs_param_typed_value_enum_ptrs:         # @gs_param_typed_value_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB0_7
# BB#1:                                 # %sw.bb
	movl	16(%rsi), %eax
	addl	$-5, %eax
	cmpl	$5, %eax
	jbe	.LBB0_2
# BB#5:                                 # %sw.default.30
	movq	$0, (%r8)
	jmp	.LBB0_6
.LBB0_2:                                # %sw.bb
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_4:                                # %sw.bb.14
	movq	(%rsi), %rax
	movq	%rax, (%r8)
.LBB0_6:                                # %cleanup
	movl	$ptr_struct_procs, %eax
.LBB0_7:                                # %cleanup
	retq
.LBB0_3:                                # %sw.bb.6
	movq	(%rsi), %rax
	movq	%rax, (%r8)
	movl	8(%rsi), %eax
	movl	%eax, 8(%r8)
	movl	$ptr_string_procs, %eax
	retq
.Lfunc_end0:
	.size	gs_param_typed_value_enum_ptrs, .Lfunc_end0-gs_param_typed_value_enum_ptrs
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_3
	.quad	.LBB0_3
	.quad	.LBB0_4
	.quad	.LBB0_4
	.quad	.LBB0_4
	.quad	.LBB0_4

	.text
	.globl	gs_param_typed_value_reloc_ptrs
	.align	16, 0x90
	.type	gs_param_typed_value_reloc_ptrs,@function
gs_param_typed_value_reloc_ptrs:        # @gs_param_typed_value_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp1:
	.cfi_def_cfa_offset 32
.Ltmp2:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	16(%rbx), %eax
	addl	$-5, %eax
	cmpl	$5, %eax
	ja	.LBB1_5
# BB#1:                                 # %entry
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_3:                                # %sw.bb.32
	movq	(%rcx), %rax
	movq	(%rbx), %rdi
	movq	%rcx, %rsi
	callq	*(%rax)
	jmp	.LBB1_4
.LBB1_2:                                # %sw.bb
	movq	(%rbx), %rax
	movq	%rax, (%rsp)
	movl	8(%rbx), %eax
	movl	%eax, 8(%rsp)
	movq	(%rcx), %rax
	leaq	(%rsp), %rdi
	movq	%rcx, %rsi
	callq	*16(%rax)
	movq	(%rsp), %rax
.LBB1_4:                                # %sw.epilog
	movq	%rax, (%rbx)
.LBB1_5:                                # %sw.epilog
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end1:
	.size	gs_param_typed_value_reloc_ptrs, .Lfunc_end1-gs_param_typed_value_reloc_ptrs
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_2
	.quad	.LBB1_2
	.quad	.LBB1_3
	.quad	.LBB1_3
	.quad	.LBB1_3
	.quad	.LBB1_3

	.text
	.globl	gs_param_list_init
	.align	16, 0x90
	.type	gs_param_list_init,@function
gs_param_list_init:                     # @gs_param_list_init
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	movl	$1, 16(%rdi)
	retq
.Lfunc_end2:
	.size	gs_param_list_init, .Lfunc_end2-gs_param_list_init
	.cfi_endproc

	.globl	gs_param_list_set_persist_keys
	.align	16, 0x90
	.type	gs_param_list_set_persist_keys,@function
gs_param_list_set_persist_keys:         # @gs_param_list_set_persist_keys
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, 16(%rdi)
	retq
.Lfunc_end3:
	.size	gs_param_list_set_persist_keys, .Lfunc_end3-gs_param_list_set_persist_keys
	.cfi_endproc

	.globl	param_init_enumerator
	.align	16, 0x90
	.type	param_init_enumerator,@function
param_init_enumerator:                  # @param_init_enumerator
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%esi, %esi
	movl	$8, %edx
	jmp	memset                  # TAILCALL
.Lfunc_end4:
	.size	param_init_enumerator, .Lfunc_end4-param_init_enumerator
	.cfi_endproc

	.globl	gs_param_read_items
	.align	16, 0x90
	.type	gs_param_read_items,@function
gs_param_read_items:                    # @gs_param_read_items
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp4:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp5:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp6:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp7:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp8:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp9:
	.cfi_def_cfa_offset 96
.Ltmp10:
	.cfi_offset %rbx, -56
.Ltmp11:
	.cfi_offset %r12, -48
.Ltmp12:
	.cfi_offset %r13, -40
.Ltmp13:
	.cfi_offset %r14, -32
.Ltmp14:
	.cfi_offset %r15, -24
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %r15
	movq	(%rbx), %rsi
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.LBB5_10
# BB#1:                                 # %for.body.lr.ph
	addq	$16, %rbx
	xorl	%r13d, %r13d
	leaq	16(%rsp), %r12
	.align	16, 0x90
.LBB5_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movswq	-6(%rbx), %r14
	movzbl	-8(%rbx), %ebp
	movl	%ebp, 32(%rsp)
	movq	(%r15), %rax
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	*(%rax)
	movl	%eax, %ecx
	testl	%ecx, %ecx
	jne	.LBB5_4
# BB#3:                                 # %if.end.i
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	8(%r15), %rdx
	movq	%r12, %rdi
	movl	%ebp, %esi
	callq	param_coerce_typed
	movl	%eax, %ecx
.LBB5_4:                                # %param_read_requested_typed.exit
                                        #   in Loop: Header=BB5_2 Depth=1
	testl	%ecx, %ecx
	jne	.LBB5_5
# BB#7:                                 # %sw.bb
                                        #   in Loop: Header=BB5_2 Depth=1
	movzbl	-8(%rbx), %ecx
	movl	$-20, %eax
	cmpl	%ecx, 32(%rsp)
	jne	.LBB5_9
# BB#8:                                 # %if.else
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	8(%rsp), %rax           # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	movzbl	xfer_item_sizes(%rcx), %edx
	movq	%r12, %rsi
	callq	memcpy
	movl	%r13d, %eax
	jmp	.LBB5_9
	.align	16, 0x90
.LBB5_5:                                # %param_read_requested_typed.exit
                                        #   in Loop: Header=BB5_2 Depth=1
	cmpl	$1, %ecx
	movl	%r13d, %eax
	je	.LBB5_9
# BB#6:                                 # %sw.default
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	%ecx, %eax
.LBB5_9:                                # %sw.epilog
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	(%rbx), %rsi
	addq	$16, %rbx
	testq	%rsi, %rsi
	movl	%eax, %r13d
	jne	.LBB5_2
.LBB5_10:                               # %for.end
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gs_param_read_items, .Lfunc_end5-gs_param_read_items
	.cfi_endproc

	.globl	param_read_requested_typed
	.align	16, 0x90
	.type	param_read_requested_typed,@function
param_read_requested_typed:             # @param_read_requested_typed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp17:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 32
.Ltmp19:
	.cfi_offset %rbx, -32
.Ltmp20:
	.cfi_offset %r14, -24
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rdi, %rbp
	movl	16(%rbx), %r14d
	movq	(%rbp), %rax
	callq	*(%rax)
	testl	%eax, %eax
	je	.LBB6_2
# BB#1:                                 # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB6_2:                                # %if.end
	movq	8(%rbp), %rdx
	movq	%rbx, %rdi
	movl	%r14d, %esi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	param_coerce_typed      # TAILCALL
.Lfunc_end6:
	.size	param_read_requested_typed, .Lfunc_end6-param_read_requested_typed
	.cfi_endproc

	.globl	gs_param_write_items
	.align	16, 0x90
	.type	gs_param_write_items,@function
gs_param_write_items:                   # @gs_param_write_items
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp25:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp26:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp28:
	.cfi_def_cfa_offset 112
.Ltmp29:
	.cfi_offset %rbx, -56
.Ltmp30:
	.cfi_offset %r12, -48
.Ltmp31:
	.cfi_offset %r13, -40
.Ltmp32:
	.cfi_offset %r14, -32
.Ltmp33:
	.cfi_offset %r15, -24
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rdx, %rbp
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	(%rbx), %r13
	movl	$0, 28(%rsp)            # 4-byte Folded Spill
	testq	%r13, %r13
	je	.LBB7_6
# BB#1:                                 # %for.body.lr.ph
	addq	$16, %rbx
	movl	$0, 28(%rsp)            # 4-byte Folded Spill
	leaq	32(%rsp), %r14
	.align	16, 0x90
.LBB7_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movswq	-6(%rbx), %rax
	movq	16(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rax), %r15
	movzbl	-8(%rbx), %ecx
	movzbl	xfer_item_sizes(%rcx), %r12d
	testq	%rbp, %rbp
	je	.LBB7_4
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB7_2 Depth=1
	leaq	(%rax,%rbp), %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB7_5
.LBB7_4:                                # %if.end
                                        #   in Loop: Header=BB7_2 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	memcpy
	movzbl	-8(%rbx), %eax
	movl	%eax, 48(%rsp)
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	(%rdi), %rax
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	*(%rax)
	testl	%eax, %eax
	movl	28(%rsp), %ecx          # 4-byte Reload
	cmovsl	%eax, %ecx
	movl	%ecx, 28(%rsp)          # 4-byte Spill
.LBB7_5:                                # %cleanup
                                        #   in Loop: Header=BB7_2 Depth=1
	movq	(%rbx), %r13
	addq	$16, %rbx
	testq	%r13, %r13
	jne	.LBB7_2
.LBB7_6:                                # %for.end
	movl	28(%rsp), %eax          # 4-byte Reload
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gs_param_write_items, .Lfunc_end7-gs_param_write_items
	.cfi_endproc

	.globl	param_coerce_typed
	.align	16, 0x90
	.type	param_coerce_typed,@function
param_coerce_typed:                     # @param_coerce_typed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp37:
	.cfi_def_cfa_offset 32
.Ltmp38:
	.cfi_offset %rbx, -32
.Ltmp39:
	.cfi_offset %r14, -24
.Ltmp40:
	.cfi_offset %r15, -16
	movq	%rdx, %rax
	movl	%esi, %ebx
	movq	%rdi, %r14
	xorl	%ecx, %ecx
	cmpl	$-1, %ebx
	je	.LBB8_34
# BB#1:                                 # %lor.lhs.false
	movl	16(%r14), %edx
	cmpl	%ebx, %edx
	je	.LBB8_34
# BB#2:                                 # %if.end
	movl	$-20, %ecx
	addl	$-2, %edx
	cmpl	$11, %edx
	ja	.LBB8_34
# BB#3:                                 # %if.end
	jmpq	*.LJTI8_0(,%rdx,8)
.LBB8_4:                                # %sw.bb
	cmpl	$4, %ebx
	je	.LBB8_11
# BB#5:                                 # %sw.bb
	cmpl	$3, %ebx
	jne	.LBB8_34
# BB#6:                                 # %sw.bb.3
	movslq	(%r14), %rax
	movq	%rax, (%r14)
	jmp	.LBB8_33
.LBB8_7:                                # %sw.bb.10
	cmpl	$4, %ebx
	jne	.LBB8_8
.LBB8_11:                               # %sw.bb.5
	cvtsi2ssq	(%r14), %xmm0
	movss	%xmm0, (%r14)
	jmp	.LBB8_33
.LBB8_12:                               # %sw.bb.35
	cmpl	$6, %ebx
	je	.LBB8_33
	jmp	.LBB8_34
.LBB8_13:                               # %sw.bb.40
	cmpl	$5, %ebx
	je	.LBB8_33
	jmp	.LBB8_34
.LBB8_14:                               # %sw.bb.45
	cmpl	$8, %ebx
	jne	.LBB8_34
# BB#15:                                # %sw.bb.46
	testq	%rax, %rax
	je	.LBB8_34
# BB#16:                                # %if.end.53
	movl	8(%r14), %r15d
	movl	$4, %edx
	movl	$.L.str, %ecx
	movq	%rax, %rdi
	movl	%r15d, %esi
	callq	*88(%rax)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB8_34
# BB#17:                                # %for.cond.preheader
	testl	%r15d, %r15d
	je	.LBB8_28
# BB#18:                                # %for.body.lr.ph
	movabsq	$8589934584, %r8        # imm = 0x1FFFFFFF8
	movq	(%r14), %r9
	leal	-1(%r15), %esi
	leaq	1(%rsi), %r10
	xorl	%edi, %edi
	movq	%r10, %r11
	andq	%r8, %r11
	je	.LBB8_25
# BB#19:                                # %vector.body.preheader
	leaq	1(%rsi), %rdi
	andq	%r8, %rdi
	addq	$-8, %rdi
	movq	%rdi, %rcx
	shrq	$3, %rcx
	xorl	%edx, %edx
	btq	$3, %rdi
	jb	.LBB8_21
# BB#20:                                # %vector.body.prol
	movups	(%r9), %xmm0
	movups	16(%r9), %xmm1
	cvtdq2ps	%xmm0, %xmm0
	cvtdq2ps	%xmm1, %xmm1
	movups	%xmm0, (%rax)
	movups	%xmm1, 16(%rax)
	movl	$8, %edx
.LBB8_21:                               # %vector.body.preheader.split
	testq	%rcx, %rcx
	je	.LBB8_24
# BB#22:                                # %vector.body.preheader.split.split
	incq	%rsi
	andq	%r8, %rsi
	subq	%rdx, %rsi
	leaq	48(%r9,%rdx,4), %rcx
	leaq	48(%rax,%rdx,4), %rdx
.LBB8_23:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	-48(%rcx), %xmm0
	movups	-32(%rcx), %xmm1
	cvtdq2ps	%xmm0, %xmm0
	cvtdq2ps	%xmm1, %xmm1
	movups	%xmm0, -48(%rdx)
	movups	%xmm1, -32(%rdx)
	movups	-16(%rcx), %xmm0
	movups	(%rcx), %xmm1
	cvtdq2ps	%xmm0, %xmm0
	cvtdq2ps	%xmm1, %xmm1
	movups	%xmm0, -16(%rdx)
	movups	%xmm1, (%rdx)
	addq	$64, %rcx
	addq	$64, %rdx
	addq	$-16, %rsi
	jne	.LBB8_23
.LBB8_24:
	movq	%r11, %rdi
.LBB8_25:                               # %middle.block
	cmpq	%rdi, %r10
	je	.LBB8_28
# BB#26:                                # %for.body.preheader
	leaq	(%r9,%rdi,4), %rcx
	leaq	(%rax,%rdi,4), %rdx
	subl	%edi, %r15d
.LBB8_27:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	(%rcx), %xmm0
	movss	%xmm0, (%rdx)
	addq	$4, %rcx
	addq	$4, %rdx
	decl	%r15d
	jne	.LBB8_27
.LBB8_28:                               # %cleanup
	movq	%rax, (%r14)
	movl	$0, 12(%r14)
	jmp	.LBB8_33
.LBB8_29:                               # %sw.bb.73
	cmpl	$10, %ebx
	je	.LBB8_33
	jmp	.LBB8_34
.LBB8_30:                               # %sw.bb.78
	cmpl	$9, %ebx
	je	.LBB8_33
	jmp	.LBB8_34
.LBB8_31:                               # %sw.bb.83
	leal	-7(%rbx), %eax
	cmpl	$3, %eax
	ja	.LBB8_34
# BB#32:                                # %sw.bb.83
	movl	8(%r14), %eax
	testl	%eax, %eax
	je	.LBB8_33
	jmp	.LBB8_34
.LBB8_8:                                # %sw.bb.10
	cmpl	$2, %ebx
	jne	.LBB8_34
# BB#9:                                 # %sw.bb.11
	movq	(%r14), %rax
	movslq	%eax, %rdx
	movl	$-15, %ecx
	cmpq	%rdx, %rax
	jne	.LBB8_34
# BB#10:                                # %if.end.21
	movl	%eax, (%r14)
.LBB8_33:                               # %ok
	movl	%ebx, 16(%r14)
	xorl	%ecx, %ecx
.LBB8_34:                               # %return
	movl	%ecx, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end8:
	.size	param_coerce_typed, .Lfunc_end8-param_coerce_typed
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_4
	.quad	.LBB8_7
	.quad	.LBB8_34
	.quad	.LBB8_12
	.quad	.LBB8_13
	.quad	.LBB8_14
	.quad	.LBB8_34
	.quad	.LBB8_29
	.quad	.LBB8_30
	.quad	.LBB8_34
	.quad	.LBB8_34
	.quad	.LBB8_31

	.text
	.globl	param_read_null
	.align	16, 0x90
	.type	param_read_null,@function
param_read_null:                        # @param_read_null
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp42:
	.cfi_def_cfa_offset 48
.Ltmp43:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$0, 24(%rsp)
	movq	(%rbx), %rax
	leaq	8(%rsp), %rdx
	callq	*(%rax)
	testl	%eax, %eax
	jne	.LBB9_2
# BB#1:                                 # %if.end.i
	movq	8(%rbx), %rdx
	leaq	8(%rsp), %rdi
	xorl	%esi, %esi
	callq	param_coerce_typed
.LBB9_2:                                # %param_read_requested_typed.exit
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end9:
	.size	param_read_null, .Lfunc_end9-param_read_null
	.cfi_endproc

	.globl	param_read_bool
	.align	16, 0x90
	.type	param_read_bool,@function
param_read_bool:                        # @param_read_bool
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp45:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp46:
	.cfi_def_cfa_offset 48
.Ltmp47:
	.cfi_offset %rbx, -24
.Ltmp48:
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movl	$1, 16(%rsp)
	movq	(%rbx), %rax
	leaq	(%rsp), %rdx
	callq	*(%rax)
	testl	%eax, %eax
	jne	.LBB10_3
# BB#1:                                 # %param_read_requested_typed.exit
	movq	8(%rbx), %rdx
	leaq	(%rsp), %rdi
	movl	$1, %esi
	callq	param_coerce_typed
	testl	%eax, %eax
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	(%rsp), %eax
	movl	%eax, (%r14)
	xorl	%eax, %eax
.LBB10_3:                               # %if.end
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end10:
	.size	param_read_bool, .Lfunc_end10-param_read_bool
	.cfi_endproc

	.globl	param_read_int
	.align	16, 0x90
	.type	param_read_int,@function
param_read_int:                         # @param_read_int
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp49:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp51:
	.cfi_def_cfa_offset 48
.Ltmp52:
	.cfi_offset %rbx, -24
.Ltmp53:
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movl	$2, 16(%rsp)
	movq	(%rbx), %rax
	leaq	(%rsp), %rdx
	callq	*(%rax)
	testl	%eax, %eax
	jne	.LBB11_3
# BB#1:                                 # %param_read_requested_typed.exit
	movq	8(%rbx), %rdx
	leaq	(%rsp), %rdi
	movl	$2, %esi
	callq	param_coerce_typed
	testl	%eax, %eax
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	(%rsp), %eax
	movl	%eax, (%r14)
	xorl	%eax, %eax
.LBB11_3:                               # %if.end
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end11:
	.size	param_read_int, .Lfunc_end11-param_read_int
	.cfi_endproc

	.globl	param_read_long
	.align	16, 0x90
	.type	param_read_long,@function
param_read_long:                        # @param_read_long
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp54:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp56:
	.cfi_def_cfa_offset 48
.Ltmp57:
	.cfi_offset %rbx, -24
.Ltmp58:
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movl	$3, 16(%rsp)
	movq	(%rbx), %rax
	leaq	(%rsp), %rdx
	callq	*(%rax)
	testl	%eax, %eax
	jne	.LBB12_3
# BB#1:                                 # %param_read_requested_typed.exit
	movq	8(%rbx), %rdx
	leaq	(%rsp), %rdi
	movl	$3, %esi
	callq	param_coerce_typed
	testl	%eax, %eax
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movq	(%rsp), %rax
	movq	%rax, (%r14)
	xorl	%eax, %eax
.LBB12_3:                               # %if.end
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end12:
	.size	param_read_long, .Lfunc_end12-param_read_long
	.cfi_endproc

	.globl	param_read_float
	.align	16, 0x90
	.type	param_read_float,@function
param_read_float:                       # @param_read_float
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp59:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp60:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp61:
	.cfi_def_cfa_offset 48
.Ltmp62:
	.cfi_offset %rbx, -24
.Ltmp63:
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movl	$4, 16(%rsp)
	movq	(%rbx), %rax
	leaq	(%rsp), %rdx
	callq	*(%rax)
	testl	%eax, %eax
	jne	.LBB13_3
# BB#1:                                 # %param_read_requested_typed.exit
	movq	8(%rbx), %rdx
	leaq	(%rsp), %rdi
	movl	$4, %esi
	callq	param_coerce_typed
	testl	%eax, %eax
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	(%rsp), %eax
	movl	%eax, (%r14)
	xorl	%eax, %eax
.LBB13_3:                               # %if.end
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end13:
	.size	param_read_float, .Lfunc_end13-param_read_float
	.cfi_endproc

	.globl	param_read_string
	.align	16, 0x90
	.type	param_read_string,@function
param_read_string:                      # @param_read_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp64:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp65:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp66:
	.cfi_def_cfa_offset 48
.Ltmp67:
	.cfi_offset %rbx, -24
.Ltmp68:
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movl	$5, 16(%rsp)
	movq	(%rbx), %rax
	leaq	(%rsp), %rdx
	callq	*(%rax)
	testl	%eax, %eax
	jne	.LBB14_3
# BB#1:                                 # %param_read_requested_typed.exit
	movq	8(%rbx), %rdx
	leaq	(%rsp), %rdi
	movl	$5, %esi
	callq	param_coerce_typed
	testl	%eax, %eax
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movups	(%rsp), %xmm0
	movups	%xmm0, (%r14)
	xorl	%eax, %eax
.LBB14_3:                               # %if.end
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end14:
	.size	param_read_string, .Lfunc_end14-param_read_string
	.cfi_endproc

	.globl	param_read_name
	.align	16, 0x90
	.type	param_read_name,@function
param_read_name:                        # @param_read_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp69:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp70:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp71:
	.cfi_def_cfa_offset 48
.Ltmp72:
	.cfi_offset %rbx, -24
.Ltmp73:
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movl	$5, 16(%rsp)
	movq	(%rbx), %rax
	leaq	(%rsp), %rdx
	callq	*(%rax)
	testl	%eax, %eax
	jne	.LBB15_3
# BB#1:                                 # %param_read_requested_typed.exit
	movq	8(%rbx), %rdx
	leaq	(%rsp), %rdi
	movl	$5, %esi
	callq	param_coerce_typed
	testl	%eax, %eax
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movups	(%rsp), %xmm0
	movups	%xmm0, (%r14)
	xorl	%eax, %eax
.LBB15_3:                               # %if.end
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end15:
	.size	param_read_name, .Lfunc_end15-param_read_name
	.cfi_endproc

	.globl	param_read_int_array
	.align	16, 0x90
	.type	param_read_int_array,@function
param_read_int_array:                   # @param_read_int_array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp74:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp75:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp76:
	.cfi_def_cfa_offset 48
.Ltmp77:
	.cfi_offset %rbx, -24
.Ltmp78:
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movl	$7, 16(%rsp)
	movq	(%rbx), %rax
	leaq	(%rsp), %rdx
	callq	*(%rax)
	testl	%eax, %eax
	jne	.LBB16_3
# BB#1:                                 # %param_read_requested_typed.exit
	movq	8(%rbx), %rdx
	leaq	(%rsp), %rdi
	movl	$7, %esi
	callq	param_coerce_typed
	testl	%eax, %eax
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movups	(%rsp), %xmm0
	movups	%xmm0, (%r14)
	xorl	%eax, %eax
.LBB16_3:                               # %if.end
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end16:
	.size	param_read_int_array, .Lfunc_end16-param_read_int_array
	.cfi_endproc

	.globl	param_read_float_array
	.align	16, 0x90
	.type	param_read_float_array,@function
param_read_float_array:                 # @param_read_float_array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp79:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp80:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp81:
	.cfi_def_cfa_offset 48
.Ltmp82:
	.cfi_offset %rbx, -24
.Ltmp83:
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movl	$8, 16(%rsp)
	movq	(%rbx), %rax
	leaq	(%rsp), %rdx
	callq	*(%rax)
	testl	%eax, %eax
	jne	.LBB17_3
# BB#1:                                 # %param_read_requested_typed.exit
	movq	8(%rbx), %rdx
	leaq	(%rsp), %rdi
	movl	$8, %esi
	callq	param_coerce_typed
	testl	%eax, %eax
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movups	(%rsp), %xmm0
	movups	%xmm0, (%r14)
	xorl	%eax, %eax
.LBB17_3:                               # %if.end
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end17:
	.size	param_read_float_array, .Lfunc_end17-param_read_float_array
	.cfi_endproc

	.globl	param_read_string_array
	.align	16, 0x90
	.type	param_read_string_array,@function
param_read_string_array:                # @param_read_string_array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp84:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp85:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp86:
	.cfi_def_cfa_offset 48
.Ltmp87:
	.cfi_offset %rbx, -24
.Ltmp88:
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movl	$9, 16(%rsp)
	movq	(%rbx), %rax
	leaq	(%rsp), %rdx
	callq	*(%rax)
	testl	%eax, %eax
	jne	.LBB18_3
# BB#1:                                 # %param_read_requested_typed.exit
	movq	8(%rbx), %rdx
	leaq	(%rsp), %rdi
	movl	$9, %esi
	callq	param_coerce_typed
	testl	%eax, %eax
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movups	(%rsp), %xmm0
	movups	%xmm0, (%r14)
	xorl	%eax, %eax
.LBB18_3:                               # %if.end
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end18:
	.size	param_read_string_array, .Lfunc_end18-param_read_string_array
	.cfi_endproc

	.globl	param_read_name_array
	.align	16, 0x90
	.type	param_read_name_array,@function
param_read_name_array:                  # @param_read_name_array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp89:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp90:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp91:
	.cfi_def_cfa_offset 48
.Ltmp92:
	.cfi_offset %rbx, -24
.Ltmp93:
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movl	$10, 16(%rsp)
	movq	(%rbx), %rax
	leaq	(%rsp), %rdx
	callq	*(%rax)
	testl	%eax, %eax
	jne	.LBB19_3
# BB#1:                                 # %param_read_requested_typed.exit
	movq	8(%rbx), %rdx
	leaq	(%rsp), %rdi
	movl	$10, %esi
	callq	param_coerce_typed
	testl	%eax, %eax
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movups	(%rsp), %xmm0
	movups	%xmm0, (%r14)
	xorl	%eax, %eax
.LBB19_3:                               # %if.end
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end19:
	.size	param_read_name_array, .Lfunc_end19-param_read_name_array
	.cfi_endproc

	.globl	param_write_null
	.align	16, 0x90
	.type	param_write_null,@function
param_write_null:                       # @param_write_null
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp94:
	.cfi_def_cfa_offset 32
	movl	$0, 16(%rsp)
	movq	(%rdi), %rax
	leaq	(%rsp), %rdx
	callq	*(%rax)
	addq	$24, %rsp
	retq
.Lfunc_end20:
	.size	param_write_null, .Lfunc_end20-param_write_null
	.cfi_endproc

	.globl	param_write_bool
	.align	16, 0x90
	.type	param_write_bool,@function
param_write_bool:                       # @param_write_bool
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp95:
	.cfi_def_cfa_offset 32
	movl	(%rdx), %eax
	movl	%eax, (%rsp)
	movl	$1, 16(%rsp)
	movq	(%rdi), %rax
	leaq	(%rsp), %rdx
	callq	*(%rax)
	addq	$24, %rsp
	retq
.Lfunc_end21:
	.size	param_write_bool, .Lfunc_end21-param_write_bool
	.cfi_endproc

	.globl	param_write_int
	.align	16, 0x90
	.type	param_write_int,@function
param_write_int:                        # @param_write_int
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp96:
	.cfi_def_cfa_offset 32
	movl	(%rdx), %eax
	movl	%eax, (%rsp)
	movl	$2, 16(%rsp)
	movq	(%rdi), %rax
	leaq	(%rsp), %rdx
	callq	*(%rax)
	addq	$24, %rsp
	retq
.Lfunc_end22:
	.size	param_write_int, .Lfunc_end22-param_write_int
	.cfi_endproc

	.globl	param_write_long
	.align	16, 0x90
	.type	param_write_long,@function
param_write_long:                       # @param_write_long
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp97:
	.cfi_def_cfa_offset 32
	movq	(%rdx), %rax
	movq	%rax, (%rsp)
	movl	$3, 16(%rsp)
	movq	(%rdi), %rax
	leaq	(%rsp), %rdx
	callq	*(%rax)
	addq	$24, %rsp
	retq
.Lfunc_end23:
	.size	param_write_long, .Lfunc_end23-param_write_long
	.cfi_endproc

	.globl	param_write_float
	.align	16, 0x90
	.type	param_write_float,@function
param_write_float:                      # @param_write_float
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp98:
	.cfi_def_cfa_offset 32
	movl	(%rdx), %eax
	movl	%eax, (%rsp)
	movl	$4, 16(%rsp)
	movq	(%rdi), %rax
	leaq	(%rsp), %rdx
	callq	*(%rax)
	addq	$24, %rsp
	retq
.Lfunc_end24:
	.size	param_write_float, .Lfunc_end24-param_write_float
	.cfi_endproc

	.globl	param_write_string
	.align	16, 0x90
	.type	param_write_string,@function
param_write_string:                     # @param_write_string
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp99:
	.cfi_def_cfa_offset 32
	movups	(%rdx), %xmm0
	movaps	%xmm0, (%rsp)
	movl	$5, 16(%rsp)
	movq	(%rdi), %rax
	leaq	(%rsp), %rdx
	callq	*(%rax)
	addq	$24, %rsp
	retq
.Lfunc_end25:
	.size	param_write_string, .Lfunc_end25-param_write_string
	.cfi_endproc

	.globl	param_write_name
	.align	16, 0x90
	.type	param_write_name,@function
param_write_name:                       # @param_write_name
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp100:
	.cfi_def_cfa_offset 32
	movups	(%rdx), %xmm0
	movaps	%xmm0, (%rsp)
	movl	$6, 16(%rsp)
	movq	(%rdi), %rax
	leaq	(%rsp), %rdx
	callq	*(%rax)
	addq	$24, %rsp
	retq
.Lfunc_end26:
	.size	param_write_name, .Lfunc_end26-param_write_name
	.cfi_endproc

	.globl	param_write_int_array
	.align	16, 0x90
	.type	param_write_int_array,@function
param_write_int_array:                  # @param_write_int_array
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp101:
	.cfi_def_cfa_offset 32
	movups	(%rdx), %xmm0
	movaps	%xmm0, (%rsp)
	movl	$7, 16(%rsp)
	movq	(%rdi), %rax
	leaq	(%rsp), %rdx
	callq	*(%rax)
	addq	$24, %rsp
	retq
.Lfunc_end27:
	.size	param_write_int_array, .Lfunc_end27-param_write_int_array
	.cfi_endproc

	.globl	param_write_int_values
	.align	16, 0x90
	.type	param_write_int_values,@function
param_write_int_values:                 # @param_write_int_values
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp102:
	.cfi_def_cfa_offset 32
	movq	%rdx, (%rsp)
	movl	%ecx, 8(%rsp)
	movl	%r8d, 12(%rsp)
	movl	$7, 16(%rsp)
	movq	(%rdi), %rax
	leaq	(%rsp), %rdx
	callq	*(%rax)
	addq	$24, %rsp
	retq
.Lfunc_end28:
	.size	param_write_int_values, .Lfunc_end28-param_write_int_values
	.cfi_endproc

	.globl	param_write_float_array
	.align	16, 0x90
	.type	param_write_float_array,@function
param_write_float_array:                # @param_write_float_array
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp103:
	.cfi_def_cfa_offset 32
	movups	(%rdx), %xmm0
	movaps	%xmm0, (%rsp)
	movl	$8, 16(%rsp)
	movq	(%rdi), %rax
	leaq	(%rsp), %rdx
	callq	*(%rax)
	addq	$24, %rsp
	retq
.Lfunc_end29:
	.size	param_write_float_array, .Lfunc_end29-param_write_float_array
	.cfi_endproc

	.globl	param_write_float_values
	.align	16, 0x90
	.type	param_write_float_values,@function
param_write_float_values:               # @param_write_float_values
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp104:
	.cfi_def_cfa_offset 32
	movq	%rdx, (%rsp)
	movl	%ecx, 8(%rsp)
	movl	%r8d, 12(%rsp)
	movl	$8, 16(%rsp)
	movq	(%rdi), %rax
	leaq	(%rsp), %rdx
	callq	*(%rax)
	addq	$24, %rsp
	retq
.Lfunc_end30:
	.size	param_write_float_values, .Lfunc_end30-param_write_float_values
	.cfi_endproc

	.globl	param_write_string_array
	.align	16, 0x90
	.type	param_write_string_array,@function
param_write_string_array:               # @param_write_string_array
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp105:
	.cfi_def_cfa_offset 32
	movups	(%rdx), %xmm0
	movaps	%xmm0, (%rsp)
	movl	$9, 16(%rsp)
	movq	(%rdi), %rax
	leaq	(%rsp), %rdx
	callq	*(%rax)
	addq	$24, %rsp
	retq
.Lfunc_end31:
	.size	param_write_string_array, .Lfunc_end31-param_write_string_array
	.cfi_endproc

	.globl	param_write_name_array
	.align	16, 0x90
	.type	param_write_name_array,@function
param_write_name_array:                 # @param_write_name_array
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp106:
	.cfi_def_cfa_offset 32
	movups	(%rdx), %xmm0
	movaps	%xmm0, (%rsp)
	movl	$10, 16(%rsp)
	movq	(%rdi), %rax
	leaq	(%rsp), %rdx
	callq	*(%rax)
	addq	$24, %rsp
	retq
.Lfunc_end32:
	.size	param_write_name_array, .Lfunc_end32-param_write_name_array
	.cfi_endproc

	.globl	gs_param_request_default
	.align	16, 0x90
	.type	gs_param_request_default,@function
gs_param_request_default:               # @gs_param_request_default
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end33:
	.size	gs_param_request_default, .Lfunc_end33-gs_param_request_default
	.cfi_endproc

	.globl	gs_param_requested_default
	.align	16, 0x90
	.type	gs_param_requested_default,@function
gs_param_requested_default:             # @gs_param_requested_default
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-1, %eax
	retq
.Lfunc_end34:
	.size	gs_param_requested_default, .Lfunc_end34-gs_param_requested_default
	.cfi_endproc

	.type	xfer_item_sizes,@object # @xfer_item_sizes
	.section	.rodata,"a",@progbits
xfer_item_sizes:
	.asciz	"\000\004\004\b\004\020\020\020\020\020\020\000\000"
	.size	xfer_item_sizes, 14

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"int array => float array"
	.size	.L.str, 25


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
