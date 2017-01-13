	.text
	.file	"gsht.bc"
	.align	16, 0x90
	.type	ht_order_enum_ptrs,@function
ht_order_enum_ptrs:                     # @ht_order_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	movl	%ecx, %edx
	cmpl	$3, %ecx
	ja	.LBB0_9
# BB#1:                                 # %entry
	jmpq	*.LJTI0_0(,%rdx,8)
.LBB0_2:                                # %sw.bb
	xorl	%eax, %eax
	cmpq	$0, 72(%rsi)
	je	.LBB0_8
# BB#3:                                 # %cond.true
	movq	80(%rsi), %rax
	jmp	.LBB0_8
.LBB0_4:                                # %sw.bb.1
	xorl	%eax, %eax
	cmpq	$0, 72(%rsi)
	je	.LBB0_8
# BB#5:                                 # %cond.true.4
	movq	88(%rsi), %rax
	jmp	.LBB0_8
.LBB0_6:                                # %sw.bb.9
	movq	96(%rsi), %rax
	jmp	.LBB0_8
.LBB0_7:                                # %sw.bb.11
	movq	104(%rsi), %rax
.LBB0_8:                                # %cleanup
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
.LBB0_9:                                # %cleanup
	retq
.Lfunc_end0:
	.size	ht_order_enum_ptrs, .Lfunc_end0-ht_order_enum_ptrs
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_2
	.quad	.LBB0_4
	.quad	.LBB0_6
	.quad	.LBB0_7

	.text
	.align	16, 0x90
	.type	ht_order_reloc_ptrs,@function
ht_order_reloc_ptrs:                    # @ht_order_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	cmpq	$0, 72(%rbx)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	(%r14), %rax
	movq	80(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 80(%rbx)
	movq	(%r14), %rax
	movq	88(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 88(%rbx)
.LBB1_2:                                # %if.end
	movq	(%r14), %rax
	movq	96(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 96(%rbx)
	movq	(%r14), %rax
	movq	104(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 104(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	ht_order_reloc_ptrs, .Lfunc_end1-ht_order_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	ht_order_element_enum_ptrs,@function
ht_order_element_enum_ptrs:             # @ht_order_element_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %eax
	shrl	$3, %eax
	cmpl	$168, %edx
	jae	.LBB2_2
# BB#1:                                 # %cleanup
	xorl	%eax, %eax
	retq
.LBB2_2:                                # %if.end
	imulq	$409044505, %rax, %r9   # imm = 0x18618619
	shrq	$33, %r9
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%r9d
	imulq	$168, %rdx, %rcx
	addq	%rcx, %rsi
	movl	$168, %edx
	movl	$st_ht_order_component, %r9d
	movl	%eax, %ecx
	jmp	basic_enum_ptrs         # TAILCALL
.Lfunc_end2:
	.size	ht_order_element_enum_ptrs, .Lfunc_end2-ht_order_element_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	ht_order_element_reloc_ptrs,@function
ht_order_element_reloc_ptrs:            # @ht_order_element_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 32
.Ltmp8:
	.cfi_offset %rbx, -32
.Ltmp9:
	.cfi_offset %r14, -24
.Ltmp10:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	cmpl	$168, %esi
	jb	.LBB3_3
# BB#1:                                 # %for.body.lr.ph
	shrl	$3, %esi
	imulq	$409044505, %rsi, %r15  # imm = 0x18618619
	shrq	$33, %r15
	negl	%r15d
	.align	16, 0x90
.LBB3_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$168, %esi
	movl	$st_ht_order_component, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	basic_reloc_ptrs
	addq	$168, %rbx
	incl	%r15d
	jne	.LBB3_2
.LBB3_3:                                # %for.end
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end3:
	.size	ht_order_element_reloc_ptrs, .Lfunc_end3-ht_order_element_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	halftone_enum_ptrs,@function
halftone_enum_ptrs:                     # @halftone_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB4_1
# BB#8:                                 # %sw.bb
	movl	(%rsi), %ecx
	xorl	%eax, %eax
	cmpq	$8, %rcx
	ja	.LBB4_3
# BB#9:                                 # %sw.bb
	jmpq	*.LJTI4_0(,%rcx,8)
.LBB4_15:                               # %sw.bb.19
	movq	32(%rsi), %rax
	jmp	.LBB4_18
.LBB4_1:                                # %entry
	cmpl	$1, %ecx
	jne	.LBB4_19
# BB#2:                                 # %entry.sw.bb.23_crit_edge
	movl	(%rsi), %ecx
.LBB4_3:                                # %sw.bb.23
	xorl	%eax, %eax
	cmpl	$8, %ecx
	je	.LBB4_17
# BB#4:                                 # %sw.bb.23
	cmpl	$5, %ecx
	jne	.LBB4_5
# BB#16:                                # %sw.bb.39
	movq	48(%rsi), %rax
	jmp	.LBB4_18
.LBB4_17:                               # %sw.bb.45
	movq	72(%rsi), %rax
	jmp	.LBB4_18
.LBB4_5:                                # %sw.bb.23
	cmpl	$4, %ecx
	jne	.LBB4_19
# BB#6:                                 # %sw.bb.25
	xorl	%eax, %eax
	cmpq	$0, 72(%rsi)
	jne	.LBB4_18
# BB#7:                                 # %cond.true.30
	movq	48(%rsi), %rax
	jmp	.LBB4_18
.LBB4_10:                               # %sw.bb.1
	xorl	%eax, %eax
	cmpq	$0, 64(%rsi)
	jne	.LBB4_18
# BB#11:                                # %cond.true
	movq	80(%rsi), %rax
	jmp	.LBB4_18
.LBB4_12:                               # %sw.bb.4
	movq	56(%rsi), %rax
	movq	%rax, (%r8)
	movl	64(%rsi), %eax
	movl	%eax, 8(%r8)
	movl	$ptr_const_string_procs, %eax
	retq
.LBB4_13:                               # %sw.bb.13
	addq	$72, %rsi
	movq	%r8, %rdi
	jmp	enum_const_bytestring   # TAILCALL
.LBB4_14:                               # %sw.bb.16
	movq	56(%rsi), %rax
.LBB4_18:                               # %cleanup
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
.LBB4_19:                               # %cleanup
	retq
.Lfunc_end4:
	.size	halftone_enum_ptrs, .Lfunc_end4-halftone_enum_ptrs
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_19
	.quad	.LBB4_19
	.quad	.LBB4_19
	.quad	.LBB4_10
	.quad	.LBB4_12
	.quad	.LBB4_13
	.quad	.LBB4_15
	.quad	.LBB4_15
	.quad	.LBB4_14

	.text
	.align	16, 0x90
	.type	halftone_reloc_ptrs,@function
halftone_reloc_ptrs:                    # @halftone_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp13:
	.cfi_def_cfa_offset 32
.Ltmp14:
	.cfi_offset %rbx, -24
.Ltmp15:
	.cfi_offset %r14, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movl	(%rbx), %eax
	addl	$-3, %eax
	cmpl	$5, %eax
	ja	.LBB5_9
# BB#1:                                 # %entry
	jmpq	*.LJTI5_0(,%rax,8)
.LBB5_8:                                # %sw.bb.55
	movq	(%r14), %rax
	movq	32(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 32(%rbx)
	jmp	.LBB5_9
.LBB5_2:                                # %sw.bb
	cmpq	$0, 64(%rbx)
	jne	.LBB5_9
# BB#3:                                 # %if.then
	movq	(%r14), %rax
	movq	80(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 80(%rbx)
	jmp	.LBB5_9
.LBB5_4:                                # %sw.bb.7
	movq	(%r14), %rax
	leaq	56(%rbx), %rdi
	movq	%r14, %rsi
	callq	*16(%rax)
	cmpq	$0, 72(%rbx)
	jne	.LBB5_9
	jmp	.LBB5_5
.LBB5_6:                                # %sw.bb.25
	leaq	72(%rbx), %rdi
	movq	%r14, %rsi
	callq	reloc_const_bytestring
.LBB5_5:                                # %if.then.13
	movq	(%r14), %rax
	movq	48(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 48(%rbx)
	jmp	.LBB5_9
.LBB5_7:                                # %sw.bb.38
	movq	(%r14), %rax
	movq	56(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 56(%rbx)
	movq	(%r14), %rax
	movq	72(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 72(%rbx)
.LBB5_9:                                # %sw.epilog
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end5:
	.size	halftone_reloc_ptrs, .Lfunc_end5-halftone_reloc_ptrs
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_2
	.quad	.LBB5_4
	.quad	.LBB5_6
	.quad	.LBB5_8
	.quad	.LBB5_8
	.quad	.LBB5_7

	.text
	.globl	gs_setscreen
	.align	16, 0x90
	.type	gs_setscreen,@function
gs_setscreen:                           # @gs_setscreen
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp17:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 32
	subq	$384, %rsp              # imm = 0x180
.Ltmp19:
	.cfi_def_cfa_offset 416
.Ltmp20:
	.cfi_offset %rbx, -32
.Ltmp21:
	.cfi_offset %r14, -24
.Ltmp22:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	callq	gs_currentaccuratescreens
	movq	8(%rbx), %r8
	leaq	8(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	movl	%eax, %ecx
	callq	gs_screen_init_memory
	testl	%eax, %eax
	js	.LBB6_5
# BB#1:                                 # %while.cond.preheader.i
	leaq	8(%rsp), %rbx
	leaq	368(%rsp), %r15
	.align	16, 0x90
.LBB6_2:                                # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	gs_screen_currentpoint
	testl	%eax, %eax
	jne	.LBB6_4
# BB#3:                                 # %while.body.i
                                        #   in Loop: Header=BB6_2 Depth=1
	movsd	368(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	376(%rsp), %xmm1        # xmm1 = mem[0],zero
	callq	*8(%r14)
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	gs_screen_next
	testl	%eax, %eax
	jns	.LBB6_2
	jmp	.LBB6_5
.LBB6_4:                                # %if.end
	leaq	8(%rsp), %rdi
	callq	gs_screen_install
.LBB6_5:                                # %cleanup
	addq	$384, %rsp              # imm = 0x180
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end6:
	.size	gs_setscreen, .Lfunc_end6-gs_setscreen
	.cfi_endproc

	.globl	gx_ht_process_screen_memory
	.align	16, 0x90
	.type	gx_ht_process_screen_memory,@function
gx_ht_process_screen_memory:            # @gx_ht_process_screen_memory
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp26:
	.cfi_def_cfa_offset 48
.Ltmp27:
	.cfi_offset %rbx, -32
.Ltmp28:
	.cfi_offset %r14, -24
.Ltmp29:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	callq	gs_screen_init_memory
	testl	%eax, %eax
	js	.LBB7_4
# BB#1:                                 # %while.cond.preheader
	leaq	(%rsp), %r15
	.align	16, 0x90
.LBB7_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	gs_screen_currentpoint
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB7_4
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB7_2 Depth=1
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rsp), %xmm1          # xmm1 = mem[0],zero
	callq	*8(%r14)
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	gs_screen_next
	testl	%eax, %eax
	jns	.LBB7_2
.LBB7_4:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end7:
	.size	gx_ht_process_screen_memory, .Lfunc_end7-gx_ht_process_screen_memory
	.cfi_endproc

	.globl	gs_currentscreen
	.align	16, 0x90
	.type	gs_currentscreen,@function
gs_currentscreen:                       # @gs_currentscreen
	.cfi_startproc
# BB#0:                                 # %entry
	movq	368(%rdi), %rcx
	movl	(%rcx), %edx
	cmpl	$2, %edx
	jne	.LBB8_1
# BB#3:                                 # %sw.bb.2
	movq	120(%rcx), %rax
	movq	%rax, 16(%rsi)
	movups	104(%rcx), %xmm0
	jmp	.LBB8_4
.LBB8_1:                                # %entry
	movl	$-21, %eax
	cmpl	$1, %edx
	jne	.LBB8_5
# BB#2:                                 # %sw.bb
	movq	48(%rcx), %rax
	movq	%rax, 16(%rsi)
	movups	32(%rcx), %xmm0
.LBB8_4:                                # %return
	movups	%xmm0, (%rsi)
	xorl	%eax, %eax
.LBB8_5:                                # %return
	retq
.Lfunc_end8:
	.size	gs_currentscreen, .Lfunc_end8-gs_currentscreen
	.cfi_endproc

	.globl	gs_currentscreenlevels
	.align	16, 0x90
	.type	gs_currentscreenlevels,@function
gs_currentscreenlevels:                 # @gs_currentscreenlevels
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1872(%rdi), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB9_2
# BB#1:                                 # %if.end
	movzbl	110(%rcx), %eax
	cmpq	$255, %rax
	je	.LBB9_3
.LBB9_2:                                # %if.then.4
	movq	392(%rdi), %rcx
	movq	200(%rcx), %rcx
	imulq	$168, %rax, %rax
	leaq	56(%rcx,%rax), %rax
	movl	(%rax), %eax
	retq
.LBB9_3:                                # %if.else
	movq	392(%rdi), %rax
	movq	200(%rax), %rax
	addq	$56, %rax
	movl	(%rax), %eax
	retq
.Lfunc_end9:
	.size	gs_currentscreenlevels, .Lfunc_end9-gs_currentscreenlevels
	.cfi_endproc

	.globl	gx_imager_setscreenphase
	.align	16, 0x90
	.type	gx_imager_setscreenphase,@function
gx_imager_setscreenphase:               # @gx_imager_setscreenphase
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
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp34:
	.cfi_def_cfa_offset 48
.Ltmp35:
	.cfi_offset %rbx, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %r15d
	movq	%rdi, %rbx
	cmpl	$-1, %ecx
	je	.LBB10_1
# BB#2:                                 # %if.else
	movl	$-15, %ebp
	cmpl	$1, %ecx
	ja	.LBB10_4
# BB#3:                                 # %if.end.5
	movslq	%ecx, %rax
	movl	%r15d, 376(%rbx,%rax,8)
	movl	%r14d, 380(%rbx,%rax,8)
	xorl	%ebp, %ebp
	jmp	.LBB10_4
.LBB10_1:                               # %for.cond.preheader
	xorl	%ebp, %ebp
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movl	%r14d, %edx
	callq	gx_imager_setscreenphase
	movl	$1, %ecx
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movl	%r14d, %edx
	callq	gx_imager_setscreenphase
.LBB10_4:                               # %return
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gx_imager_setscreenphase, .Lfunc_end10-gx_imager_setscreenphase
	.cfi_endproc

	.globl	gs_setscreenphase
	.align	16, 0x90
	.type	gs_setscreenphase,@function
gs_setscreenphase:                      # @gs_setscreenphase
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp41:
	.cfi_def_cfa_offset 32
.Ltmp42:
	.cfi_offset %rbx, -24
.Ltmp43:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movq	%rdi, %rbx
	callq	gx_imager_setscreenphase
	testl	%eax, %eax
	js	.LBB11_3
# BB#1:                                 # %land.lhs.true
	incl	%ebp
	cmpl	$1, %ebp
	ja	.LBB11_3
# BB#2:                                 # %if.then
	movq	1760(%rbx), %rcx
	movq	$gx_dc_type_data_none, (%rcx)
.LBB11_3:                               # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gs_setscreenphase, .Lfunc_end11-gs_setscreenphase
	.cfi_endproc

	.globl	gs_currentscreenphase_pis
	.align	16, 0x90
	.type	gs_currentscreenphase_pis,@function
gs_currentscreenphase_pis:              # @gs_currentscreenphase_pis
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-15, %eax
	cmpl	$1, %edx
	ja	.LBB12_2
# BB#1:                                 # %if.end
	movslq	%edx, %rax
	movq	376(%rdi,%rax,8), %rax
	movq	%rax, (%rsi)
	xorl	%eax, %eax
.LBB12_2:                               # %return
	retq
.Lfunc_end12:
	.size	gs_currentscreenphase_pis, .Lfunc_end12-gs_currentscreenphase_pis
	.cfi_endproc

	.globl	gs_currentscreenphase
	.align	16, 0x90
	.type	gs_currentscreenphase,@function
gs_currentscreenphase:                  # @gs_currentscreenphase
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-15, %eax
	cmpl	$1, %edx
	ja	.LBB13_2
# BB#1:                                 # %if.end.i
	movslq	%edx, %rax
	movq	376(%rdi,%rax,8), %rax
	movq	%rax, (%rsi)
	xorl	%eax, %eax
.LBB13_2:                               # %gs_currentscreenphase_pis.exit
	retq
.Lfunc_end13:
	.size	gs_currentscreenphase, .Lfunc_end13-gs_currentscreenphase
	.cfi_endproc

	.globl	gs_currenthalftone
	.align	16, 0x90
	.type	gs_currenthalftone,@function
gs_currenthalftone:                     # @gs_currenthalftone
	.cfi_startproc
# BB#0:                                 # %entry
	movq	368(%rdi), %rax
	movups	112(%rax), %xmm0
	movups	%xmm0, 112(%rsi)
	movups	96(%rax), %xmm0
	movups	%xmm0, 96(%rsi)
	movups	80(%rax), %xmm0
	movups	%xmm0, 80(%rsi)
	movups	64(%rax), %xmm0
	movups	%xmm0, 64(%rsi)
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movups	48(%rax), %xmm3
	movups	%xmm3, 48(%rsi)
	movups	%xmm2, 32(%rsi)
	movups	%xmm1, 16(%rsi)
	movups	%xmm0, (%rsi)
	xorl	%eax, %eax
	retq
.Lfunc_end14:
	.size	gs_currenthalftone, .Lfunc_end14-gs_currenthalftone
	.cfi_endproc

	.globl	gx_ht_alloc_ht_order
	.align	16, 0x90
	.type	gx_ht_alloc_ht_order,@function
gx_ht_alloc_ht_order:                   # @gx_ht_alloc_ht_order
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp45:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp46:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp47:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp48:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp49:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp50:
	.cfi_def_cfa_offset 64
.Ltmp51:
	.cfi_offset %rbx, -56
.Ltmp52:
	.cfi_offset %r12, -48
.Ltmp53:
	.cfi_offset %r13, -40
.Ltmp54:
	.cfi_offset %r14, -32
.Ltmp55:
	.cfi_offset %r15, -24
.Ltmp56:
	.cfi_offset %rbp, -16
	movl	%r8d, %r15d
	movl	%ecx, %r12d
	movq	%rdi, %rbx
	movq	72(%rsp), %r14
	movq	64(%rsp), %r13
	movq	$0, 144(%rbx)
	movw	%si, 40(%rbx)
	movw	%dx, 42(%rbx)
	leal	63(%rsi), %eax
	shrl	$3, %eax
	andl	$65528, %eax            # imm = 0xFFF8
	movw	%ax, 44(%rbx)
	movw	%r9w, 46(%rbx)
	movw	%dx, 48(%rbx)
	movw	%r9w, 50(%rbx)
	andl	$65535, %r9d            # imm = 0xFFFF
	je	.LBB15_1
# BB#2:                                 # %cond.false
	movzwl	%si, %ebp
	movl	%ebp, %edi
	movl	%r9d, %esi
	callq	igcd
	movl	%eax, %ecx
	xorl	%edx, %edx
	movl	%ebp, %eax
	idivl	%ecx
	movzwl	42(%rbx), %ecx
	imull	%eax, %ecx
	jmp	.LBB15_3
.LBB15_1:                               # %cond.true
	movzwl	%dx, %ecx
.LBB15_3:                               # %cond.end
	movl	%ecx, 52(%rbx)
	movl	%r12d, 56(%rbx)
	movl	%r15d, 60(%rbx)
	movq	%r13, 64(%rbx)
	movq	%r14, 72(%rbx)
	testl	%r12d, %r12d
	je	.LBB15_5
# BB#4:                                 # %if.then
	movl	$4, %edx
	movl	$.L.str.4, %ecx
	movq	%r14, %rdi
	movl	%r12d, %esi
	callq	*88(%r14)
	movq	%rax, %rcx
	movq	%rcx, 80(%rbx)
	movl	$-25, %eax
	testq	%rcx, %rcx
	jne	.LBB15_6
	jmp	.LBB15_11
.LBB15_5:                               # %if.else
	movq	$0, 80(%rbx)
.LBB15_6:                               # %if.end.34
	testl	%r15d, %r15d
	je	.LBB15_9
# BB#7:                                 # %if.then.37
	movl	60(%rbx), %esi
	movq	64(%rbx), %rax
	movl	(%rax), %edx
	movl	$.L.str.5, %ecx
	movq	%r14, %rdi
	callq	*88(%r14)
	movq	%rax, 88(%rbx)
	testq	%rax, %rax
	jne	.LBB15_10
# BB#8:                                 # %if.then.46
	movq	80(%rbx), %rsi
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	movq	$0, 80(%rbx)
	movl	$-25, %eax
	jmp	.LBB15_11
.LBB15_9:                               # %if.else.51
	movq	$0, 88(%rbx)
.LBB15_10:                              # %if.end.53
	xorps	%xmm0, %xmm0
	movups	%xmm0, 96(%rbx)
	xorl	%eax, %eax
.LBB15_11:                              # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gx_ht_alloc_ht_order, .Lfunc_end15-gx_ht_alloc_ht_order
	.cfi_endproc

	.globl	gx_ht_alloc_order
	.align	16, 0x90
	.type	gx_ht_alloc_order,@function
gx_ht_alloc_order:                      # @gx_ht_alloc_order
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp59:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp60:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp61:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp63:
	.cfi_def_cfa_offset 224
.Ltmp64:
	.cfi_offset %rbx, -56
.Ltmp65:
	.cfi_offset %r12, -48
.Ltmp66:
	.cfi_offset %r13, -40
.Ltmp67:
	.cfi_offset %r14, -32
.Ltmp68:
	.cfi_offset %r15, -24
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%r9, %r15
	movl	%r8d, %r12d
	movl	%ecx, %ebx
	movl	%edx, %r13d
	movl	%esi, %ebp
	movq	%rdi, %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	leaq	8(%rsp), %r14
	movl	$160, %edx
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movq	%r14, %rdi
	callq	gx_compute_cell_values
	movl	%r13d, %r14d
	imull	%ebp, %r14d
	movq	$0, 152(%rsp)
	movw	%bp, 48(%rsp)
	movw	%r13w, 50(%rsp)
	leal	63(%rbp), %eax
	shrl	$3, %eax
	andl	$65528, %eax            # imm = 0xFFF8
	movw	%ax, 52(%rsp)
	movw	%bx, 54(%rsp)
	movw	%r13w, 56(%rsp)
	movw	%bx, 58(%rsp)
	andl	$65535, %ebx            # imm = 0xFFFF
	je	.LBB16_1
# BB#2:                                 # %cond.false.i
	movzwl	%bp, %ebp
	movl	%ebp, %edi
	movl	%ebx, %esi
	callq	igcd
	movl	%eax, %ecx
	xorl	%edx, %edx
	movl	%ebp, %eax
	idivl	%ecx
	movzwl	50(%rsp), %ecx
	imull	%eax, %ecx
	jmp	.LBB16_3
.LBB16_1:                               # %cond.true.i
	movzwl	%r13w, %ecx
.LBB16_3:                               # %cond.end.i
	movl	%ecx, 60(%rsp)
	movl	%r12d, 64(%rsp)
	movl	%r14d, 68(%rsp)
	movq	$ht_order_procs_table, 72(%rsp)
	movq	%r15, 80(%rsp)
	testl	%r12d, %r12d
	je	.LBB16_5
# BB#4:                                 # %if.then.i
	movl	$4, %edx
	movl	$.L.str.4, %ecx
	movq	%r15, %rdi
	movl	%r12d, %esi
	callq	*88(%r15)
	movq	%rax, %rcx
	movq	%rcx, 88(%rsp)
	movl	$-25, %eax
	testq	%rcx, %rcx
	jne	.LBB16_6
	jmp	.LBB16_11
.LBB16_5:                               # %if.else.i
	movq	$0, 88(%rsp)
.LBB16_6:                               # %if.end.34.i
	testl	%r14d, %r14d
	je	.LBB16_9
# BB#7:                                 # %if.then.37.i
	movl	68(%rsp), %esi
	movq	72(%rsp), %rax
	movl	(%rax), %edx
	movl	$.L.str.5, %ecx
	movq	%r15, %rdi
	callq	*88(%r15)
	movq	%rax, 96(%rsp)
	testq	%rax, %rax
	jne	.LBB16_10
# BB#8:                                 # %if.then.46.i
	movq	88(%rsp), %rsi
	movl	$.L.str.4, %edx
	movq	%r15, %rdi
	callq	*24(%r15)
	movq	$0, 88(%rsp)
	movl	$-25, %eax
	jmp	.LBB16_11
.LBB16_9:                               # %if.else.51.i
	movq	$0, 96(%rsp)
.LBB16_10:                              # %if.end
	xorps	%xmm0, %xmm0
	movups	%xmm0, 104(%rsp)
	leaq	8(%rsp), %rsi
	movl	$160, %edx
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	memcpy
	xorl	%eax, %eax
.LBB16_11:                              # %cleanup
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gx_ht_alloc_order, .Lfunc_end16-gx_ht_alloc_order
	.cfi_endproc

	.globl	gx_ht_alloc_threshold_order
	.align	16, 0x90
	.type	gx_ht_alloc_threshold_order,@function
gx_ht_alloc_threshold_order:            # @gx_ht_alloc_threshold_order
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp71:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp72:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp73:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp74:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp75:
	.cfi_def_cfa_offset 56
	subq	$184, %rsp
.Ltmp76:
	.cfi_def_cfa_offset 240
.Ltmp77:
	.cfi_offset %rbx, -56
.Ltmp78:
	.cfi_offset %r12, -48
.Ltmp79:
	.cfi_offset %r13, -40
.Ltmp80:
	.cfi_offset %r14, -32
.Ltmp81:
	.cfi_offset %r15, -24
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%r8, 16(%rsp)           # 8-byte Spill
	movl	%ecx, %r12d
	movl	%edx, %ebx
	movl	%esi, %ebp
	movq	%rdi, %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movl	%ebx, %r14d
	imull	%ebp, %r14d
	leal	-2001(%r14), %eax
	cmpl	$63535, %eax            # imm = 0xF82F
	movl	$ht_order_procs_table, %eax
	movl	$ht_order_procs_table+40, %r15d
	cmovaeq	%rax, %r15
	leaq	24(%rsp), %r13
	movl	$160, %edx
	movq	%r13, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	%r13, %rdi
	callq	gx_compute_cell_values
	movq	$0, 168(%rsp)
	movw	%bp, 64(%rsp)
	movw	%bx, 66(%rsp)
	addl	$63, %ebp
	shrl	$3, %ebp
	andl	$65528, %ebp            # imm = 0xFFF8
	movw	%bp, 68(%rsp)
	movw	$0, 70(%rsp)
	movw	%bx, 72(%rsp)
	movw	$0, 74(%rsp)
	movzwl	%bx, %eax
	movq	16(%rsp), %rbx          # 8-byte Reload
	movl	%eax, 76(%rsp)
	movl	%r12d, 80(%rsp)
	movl	%r14d, 84(%rsp)
	movq	%r15, 88(%rsp)
	movq	%rbx, 96(%rsp)
	testl	%r12d, %r12d
	je	.LBB17_2
# BB#1:                                 # %if.then.i
	movl	$4, %edx
	movl	$.L.str.4, %ecx
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	*88(%rbx)
	movq	%rax, %rcx
	movq	%rcx, 104(%rsp)
	movl	$-25, %eax
	testq	%rcx, %rcx
	jne	.LBB17_3
	jmp	.LBB17_8
.LBB17_2:                               # %if.else.i
	movq	$0, 104(%rsp)
.LBB17_3:                               # %if.end.34.i
	testl	%r14d, %r14d
	je	.LBB17_6
# BB#4:                                 # %if.then.37.i
	movl	84(%rsp), %esi
	movq	88(%rsp), %rax
	movl	(%rax), %edx
	movl	$.L.str.5, %ecx
	movq	%rbx, %rdi
	callq	*88(%rbx)
	movq	%rax, 112(%rsp)
	testq	%rax, %rax
	jne	.LBB17_7
# BB#5:                                 # %if.then.46.i
	movq	104(%rsp), %rsi
	movl	$.L.str.4, %edx
	movq	%rbx, %rdi
	callq	*24(%rbx)
	movq	$0, 104(%rsp)
	movl	$-25, %eax
	jmp	.LBB17_8
.LBB17_6:                               # %if.else.51.i
	movq	$0, 112(%rsp)
.LBB17_7:                               # %if.end
	xorps	%xmm0, %xmm0
	movups	%xmm0, 120(%rsp)
	leaq	24(%rsp), %rsi
	movl	$160, %edx
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	memcpy
	xorl	%eax, %eax
.LBB17_8:                               # %cleanup
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gx_ht_alloc_threshold_order, .Lfunc_end17-gx_ht_alloc_threshold_order
	.cfi_endproc

	.globl	gx_ht_alloc_client_order
	.align	16, 0x90
	.type	gx_ht_alloc_client_order,@function
gx_ht_alloc_client_order:               # @gx_ht_alloc_client_order
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp84:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp85:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp86:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp87:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp88:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp89:
	.cfi_def_cfa_offset 224
.Ltmp90:
	.cfi_offset %rbx, -56
.Ltmp91:
	.cfi_offset %r12, -48
.Ltmp92:
	.cfi_offset %r13, -40
.Ltmp93:
	.cfi_offset %r14, -32
.Ltmp94:
	.cfi_offset %r15, -24
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%r9, %r12
	movl	%r8d, %r15d
	movl	%ecx, %r13d
	movl	%edx, %ebx
	movl	%esi, %ebp
	movq	%rdi, %rax
	movq	%rax, (%rsp)            # 8-byte Spill
	leaq	8(%rsp), %r14
	movl	$160, %edx
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movw	%bp, 8(%rsp)
	movw	$0, 10(%rsp)
	movw	$1, 12(%rsp)
	movw	%bx, 14(%rsp)
	movw	$0, 16(%rsp)
	movw	$1, 18(%rsp)
	movq	%r14, %rdi
	callq	gx_compute_cell_values
	movq	$0, 152(%rsp)
	movw	%bp, 48(%rsp)
	movw	%bx, 50(%rsp)
	addl	$63, %ebp
	shrl	$3, %ebp
	andl	$65528, %ebp            # imm = 0xFFF8
	movw	%bp, 52(%rsp)
	movw	$0, 54(%rsp)
	movw	%bx, 56(%rsp)
	movw	$0, 58(%rsp)
	movzwl	%bx, %eax
	movl	%eax, 60(%rsp)
	movl	%r13d, 64(%rsp)
	movl	%r15d, 68(%rsp)
	movq	$ht_order_procs_table, 72(%rsp)
	movq	%r12, 80(%rsp)
	testl	%r13d, %r13d
	je	.LBB18_2
# BB#1:                                 # %if.then.i
	movl	$4, %edx
	movl	$.L.str.4, %ecx
	movq	%r12, %rdi
	movl	%r13d, %esi
	callq	*88(%r12)
	movq	%rax, %rcx
	movq	%rcx, 88(%rsp)
	movl	$-25, %eax
	testq	%rcx, %rcx
	jne	.LBB18_3
	jmp	.LBB18_8
.LBB18_2:                               # %if.else.i
	movq	$0, 88(%rsp)
.LBB18_3:                               # %if.end.34.i
	testl	%r15d, %r15d
	je	.LBB18_6
# BB#4:                                 # %if.then.37.i
	movl	68(%rsp), %esi
	movq	72(%rsp), %rax
	movl	(%rax), %edx
	movl	$.L.str.5, %ecx
	movq	%r12, %rdi
	callq	*88(%r12)
	movq	%rax, 96(%rsp)
	testq	%rax, %rax
	jne	.LBB18_7
# BB#5:                                 # %if.then.46.i
	movq	88(%rsp), %rsi
	movl	$.L.str.4, %edx
	movq	%r12, %rdi
	callq	*24(%r12)
	movq	$0, 88(%rsp)
	movl	$-25, %eax
	jmp	.LBB18_8
.LBB18_6:                               # %if.else.51.i
	movq	$0, 96(%rsp)
.LBB18_7:                               # %if.end
	xorps	%xmm0, %xmm0
	movups	%xmm0, 104(%rsp)
	leaq	8(%rsp), %rsi
	movl	$160, %edx
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	memcpy
	xorl	%eax, %eax
.LBB18_8:                               # %cleanup
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gx_ht_alloc_client_order, .Lfunc_end18-gx_ht_alloc_client_order
	.cfi_endproc

	.globl	gx_sort_ht_order
	.align	16, 0x90
	.type	gx_sort_ht_order,@function
gx_sort_ht_order:                       # @gx_sort_ht_order
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%esi, %esi
	je	.LBB19_6
# BB#1:                                 # %for.body.preheader
	leal	-1(%rsi), %ecx
	xorl	%eax, %eax
	testb	$7, %sil
	je	.LBB19_4
# BB#2:                                 # %for.body.prol.preheader
	movl	%esi, %edx
	andl	$7, %edx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB19_3:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, (%rdi,%rax,8)
	incq	%rax
	cmpl	%eax, %edx
	jne	.LBB19_3
.LBB19_4:                               # %for.body.preheader.split
	cmpl	$7, %ecx
	jb	.LBB19_6
	.align	16, 0x90
.LBB19_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, (%rdi,%rax,8)
	leal	1(%rax), %ecx
	movl	%ecx, 8(%rdi,%rax,8)
	leal	2(%rax), %ecx
	movl	%ecx, 16(%rdi,%rax,8)
	leal	3(%rax), %ecx
	movl	%ecx, 24(%rdi,%rax,8)
	leal	4(%rax), %ecx
	movl	%ecx, 32(%rdi,%rax,8)
	leal	5(%rax), %ecx
	movl	%ecx, 40(%rdi,%rax,8)
	leal	6(%rax), %ecx
	movl	%ecx, 48(%rdi,%rax,8)
	leal	7(%rax), %ecx
	movl	%ecx, 56(%rdi,%rax,8)
	addq	$8, %rax
	cmpl	%esi, %eax
	jne	.LBB19_5
.LBB19_6:                               # %for.end
	movl	%esi, %esi
	movl	$8, %edx
	movl	$compare_samples, %ecx
	jmp	qsort                   # TAILCALL
.Lfunc_end19:
	.size	gx_sort_ht_order, .Lfunc_end19-gx_sort_ht_order
	.cfi_endproc

	.align	16, 0x90
	.type	compare_samples,@function
compare_samples:                        # @compare_samples
	.cfi_startproc
# BB#0:                                 # %entry
	movl	4(%rdi), %eax
	movl	4(%rsi), %ecx
	cmpl	%ecx, %eax
	jne	.LBB20_2
# BB#1:                                 # %if.then
	movl	(%rdi), %eax
	movl	(%rsi), %ecx
.LBB20_2:                               # %if.end
	cmpl	%ecx, %eax
	seta	%al
	movzbl	%al, %ecx
	movl	$-1, %eax
	cmovael	%ecx, %eax
	retq
.Lfunc_end20:
	.size	compare_samples, .Lfunc_end20-compare_samples
	.cfi_endproc

	.globl	gx_ht_construct_spot_order
	.align	16, 0x90
	.type	gx_ht_construct_spot_order,@function
gx_ht_construct_spot_order:             # @gx_ht_construct_spot_order
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp97:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp98:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp99:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp100:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp101:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp102:
	.cfi_def_cfa_offset 80
.Ltmp103:
	.cfi_offset %rbx, -56
.Ltmp104:
	.cfi_offset %r12, -48
.Ltmp105:
	.cfi_offset %r13, -40
.Ltmp106:
	.cfi_offset %r14, -32
.Ltmp107:
	.cfi_offset %r15, -24
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movzwl	40(%r15), %r13d
	movl	52(%r15), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movl	56(%r15), %r14d
	movl	60(%r15), %ebx
	xorl	%edx, %edx
	movl	%r14d, %eax
	divl	%r13d
	movl	%r14d, %ecx
	subl	%edx, %ecx
	xorl	%edx, %edx
	movl	%ebx, %eax
	divl	%ecx
	movl	%eax, %ebp
	testq	%r14, %r14
	movq	88(%r15), %r12
	je	.LBB21_12
# BB#1:                                 # %for.body.i.preheader
	movq	80(%r15), %rsi
	movzwl	50(%r15), %eax
	movl	%eax, 4(%rsp)           # 4-byte Spill
	leal	-1(%r14), %ecx
	xorl	%eax, %eax
	testb	$7, %r14b
	je	.LBB21_4
# BB#2:                                 # %for.body.i.prol.preheader
	movl	%r14d, %edx
	andl	$7, %edx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB21_3:                               # %for.body.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, (%r12,%rax,8)
	incq	%rax
	cmpl	%eax, %edx
	jne	.LBB21_3
.LBB21_4:                               # %for.body.i.preheader.split
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	cmpl	$7, %ecx
	jb	.LBB21_6
	.align	16, 0x90
.LBB21_5:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, (%r12,%rax,8)
	leal	1(%rax), %ecx
	movl	%ecx, 8(%r12,%rax,8)
	leal	2(%rax), %ecx
	movl	%ecx, 16(%r12,%rax,8)
	leal	3(%rax), %ecx
	movl	%ecx, 24(%r12,%rax,8)
	leal	4(%rax), %ecx
	movl	%ecx, 32(%r12,%rax,8)
	leal	5(%rax), %ecx
	movl	%ecx, 40(%r12,%rax,8)
	leal	6(%rax), %ecx
	movl	%ecx, 48(%r12,%rax,8)
	leal	7(%rax), %ecx
	movl	%ecx, 56(%r12,%rax,8)
	addq	$8, %rax
	cmpl	%r14d, %eax
	jne	.LBB21_5
.LBB21_6:                               # %gx_sort_ht_order.exit
	movl	$8, %edx
	movl	$compare_samples, %ecx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	qsort
	testl	%r14d, %r14d
	movq	%rbx, %r10
	movq	8(%rsp), %r11           # 8-byte Reload
	je	.LBB21_13
# BB#7:                                 # %for.body.lr.ph
	leaq	-8(%r12,%r10,8), %rsi
	movl	%r13d, %edi
	subl	4(%rsp), %edi           # 4-byte Folded Reload
	movq	%r14, %r8
	.align	16, 0x90
.LBB21_9:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_11 Depth 2
	leal	-1(%r8), %r9d
	movl	(%r12,%r9,8), %ecx
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%r13d
	movl	%r9d, %eax
	imull	%ebp, %eax
	testl	%ebp, %ebp
	movl	%eax, (%r11,%r9,4)
	je	.LBB21_8
# BB#10:                                # %for.body.17.lr.ph
                                        #   in Loop: Header=BB21_9 Depth=1
	subl	%edx, %ecx
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB21_11:                              # %for.body.17
                                        #   Parent Loop BB21_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	(%rcx,%rdx), %eax
	movl	%eax, (%rsi)
	incl	%ebx
	addq	$-8, %rsi
	addl	%r14d, %ecx
	leal	(%rdx,%rdi), %eax
	xorl	%edx, %edx
	divl	%r13d
	cmpl	%ebp, %ebx
	jb	.LBB21_11
.LBB21_8:                               # %for.cond.loopexit
                                        #   in Loop: Header=BB21_9 Depth=1
	decq	%r8
	testl	%r9d, %r9d
	jne	.LBB21_9
	jmp	.LBB21_13
.LBB21_12:                              # %gx_sort_ht_order.exit.thread
	movl	$8, %edx
	movl	$compare_samples, %ecx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	qsort
	movq	%rbx, %r10
.LBB21_13:                              # %for.end.23
	movl	20(%rsp), %eax          # 4-byte Reload
	imull	%eax, %r13d
	cmpl	%r13d, %r10d
	jne	.LBB21_15
# BB#14:                                # %if.then
	movw	%ax, 42(%r15)
	movw	$0, 46(%r15)
.LBB21_15:                              # %if.end
	movl	60(%r15), %r8d
	testl	%r8d, %r8d
	je	.LBB21_26
# BB#16:                                # %for.body.lr.ph.i
	movq	88(%r15), %rdi
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB21_17:                              # %for.body.i.50
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_19 Depth 2
                                        #     Child Loop BB21_23 Depth 2
	movzwl	40(%r15), %esi
	movl	(%rdi), %ecx
	leal	63(%rsi), %ebx
	andl	$131008, %ebx           # imm = 0x1FFC0
	subl	%esi, %ebx
	movl	%ecx, %eax
	cltd
	idivl	%esi
	imull	%ebx, %eax
	addl	%ecx, %eax
	movl	%eax, %ecx
	notl	%ecx
	sarl	$3, %eax
	andl	$-4, %eax
	movl	%eax, (%rdi)
	movl	$1, %eax
	shll	%cl, %eax
	movl	$32, %edx
	subl	%esi, %edx
	subl	%esi, %edx
	js	.LBB21_18
	.align	16, 0x90
.LBB21_19:                              # %while.body.i.i
                                        #   Parent Loop BB21_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %ebx
	movb	%sil, %cl
	shrl	%cl, %eax
	orl	%ebx, %eax
	subl	%esi, %edx
	jns	.LBB21_19
# BB#20:                                # %while.end.i.i
                                        #   in Loop: Header=BB21_17 Depth=1
	movl	$0, 4(%rdi)
	testl	%eax, %eax
	je	.LBB21_25
# BB#21:                                #   in Loop: Header=BB21_17 Depth=1
	leaq	4(%rdi), %rcx
	jmp	.LBB21_22
	.align	16, 0x90
.LBB21_18:                              # %while.end.thread.i.i
                                        #   in Loop: Header=BB21_17 Depth=1
	leaq	4(%rdi), %rcx
	movl	$0, 4(%rdi)
.LBB21_22:                              # %for.body.lr.ph.i.i
                                        #   in Loop: Header=BB21_17 Depth=1
	addq	$3, %rcx
	.align	16, 0x90
.LBB21_23:                              # %for.body.i.i
                                        #   Parent Loop BB21_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	%al, (%rcx)
	shrl	$8, %eax
	decq	%rcx
	testl	%eax, %eax
	jne	.LBB21_23
# BB#24:                                # %gx_ht_construct_bit.exit.loopexit.i
                                        #   in Loop: Header=BB21_17 Depth=1
	movl	60(%r15), %r8d
.LBB21_25:                              # %gx_ht_construct_bit.exit.i
                                        #   in Loop: Header=BB21_17 Depth=1
	incl	%ebp
	addq	$8, %rdi
	cmpl	%r8d, %ebp
	jb	.LBB21_17
.LBB21_26:                              # %gx_ht_construct_bits.exit
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gx_ht_construct_spot_order, .Lfunc_end21-gx_ht_construct_spot_order
	.cfi_endproc

	.globl	gx_ht_construct_bits
	.align	16, 0x90
	.type	gx_ht_construct_bits,@function
gx_ht_construct_bits:                   # @gx_ht_construct_bits
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp109:
	.cfi_def_cfa_offset 16
.Ltmp110:
	.cfi_offset %rbx, -16
	movl	60(%rdi), %r10d
	testl	%r10d, %r10d
	je	.LBB22_11
# BB#1:                                 # %for.body.lr.ph
	movq	88(%rdi), %r8
	xorl	%r9d, %r9d
	.align	16, 0x90
.LBB22_2:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_4 Depth 2
                                        #     Child Loop BB22_8 Depth 2
	movzwl	40(%rdi), %ebx
	movl	(%r8), %r11d
	leal	63(%rbx), %ecx
	andl	$131008, %ecx           # imm = 0x1FFC0
	subl	%ebx, %ecx
	movl	%r11d, %eax
	cltd
	idivl	%ebx
	imull	%ecx, %eax
	addl	%r11d, %eax
	movl	%eax, %ecx
	notl	%ecx
	sarl	$3, %eax
	andl	$-4, %eax
	movl	%eax, (%r8)
	movl	$1, %eax
	shll	%cl, %eax
	movl	$32, %edx
	subl	%ebx, %edx
	subl	%ebx, %edx
	js	.LBB22_3
	.align	16, 0x90
.LBB22_4:                               # %while.body.i
                                        #   Parent Loop BB22_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %esi
	movb	%bl, %cl
	shrl	%cl, %eax
	orl	%esi, %eax
	subl	%ebx, %edx
	jns	.LBB22_4
# BB#5:                                 # %while.end.i
                                        #   in Loop: Header=BB22_2 Depth=1
	movl	$0, 4(%r8)
	testl	%eax, %eax
	je	.LBB22_10
# BB#6:                                 #   in Loop: Header=BB22_2 Depth=1
	leaq	4(%r8), %rcx
	jmp	.LBB22_7
	.align	16, 0x90
.LBB22_3:                               # %while.end.thread.i
                                        #   in Loop: Header=BB22_2 Depth=1
	leaq	4(%r8), %rcx
	movl	$0, 4(%r8)
.LBB22_7:                               # %for.body.lr.ph.i
                                        #   in Loop: Header=BB22_2 Depth=1
	addq	$3, %rcx
	.align	16, 0x90
.LBB22_8:                               # %for.body.i
                                        #   Parent Loop BB22_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	%al, (%rcx)
	shrl	$8, %eax
	decq	%rcx
	testl	%eax, %eax
	jne	.LBB22_8
# BB#9:                                 # %gx_ht_construct_bit.exit.loopexit
                                        #   in Loop: Header=BB22_2 Depth=1
	movl	60(%rdi), %r10d
.LBB22_10:                              # %gx_ht_construct_bit.exit
                                        #   in Loop: Header=BB22_2 Depth=1
	incl	%r9d
	addq	$8, %r8
	cmpl	%r10d, %r9d
	jb	.LBB22_2
.LBB22_11:                              # %for.end
	popq	%rbx
	retq
.Lfunc_end22:
	.size	gx_ht_construct_bits, .Lfunc_end22-gx_ht_construct_bits
	.cfi_endproc

	.globl	gx_ht_construct_bit
	.align	16, 0x90
	.type	gx_ht_construct_bit,@function
gx_ht_construct_bit:                    # @gx_ht_construct_bit
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %r8d
	movl	%esi, %r9d
	leal	63(%r9), %ecx
	andl	$-64, %ecx
	subl	%r9d, %ecx
	movl	%r8d, %eax
	cltd
	idivl	%r9d
	imull	%ecx, %eax
	addl	%r8d, %eax
	movl	%eax, %ecx
	notl	%ecx
	sarl	$3, %eax
	andl	$-4, %eax
	movl	%eax, (%rdi)
	movl	$1, %eax
	shll	%cl, %eax
	movl	$32, %edx
	subl	%r9d, %edx
	subl	%r9d, %edx
	js	.LBB23_1
	.align	16, 0x90
.LBB23_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %esi
	movb	%r9b, %cl
	shrl	%cl, %eax
	orl	%esi, %eax
	subl	%r9d, %edx
	jns	.LBB23_2
# BB#3:                                 # %while.end
	movl	$0, 4(%rdi)
	testl	%eax, %eax
	jne	.LBB23_4
	jmp	.LBB23_6
.LBB23_1:                               # %while.end.thread
	movl	$0, 4(%rdi)
.LBB23_4:
	addq	$4, %rdi
	addq	$3, %rdi
	.align	16, 0x90
.LBB23_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	%al, (%rdi)
	shrl	$8, %eax
	decq	%rdi
	testl	%eax, %eax
	jne	.LBB23_5
.LBB23_6:                               # %for.end
	retq
.Lfunc_end23:
	.size	gx_ht_construct_bit, .Lfunc_end23-gx_ht_construct_bit
	.cfi_endproc

	.globl	gx_ht_order_release
	.align	16, 0x90
	.type	gx_ht_order_release,@function
gx_ht_order_release:                    # @gx_ht_order_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testl	%edx, %edx
	je	.LBB24_3
# BB#1:                                 # %if.then
	movq	96(%rbx), %rax
	testq	%rax, %rax
	je	.LBB24_3
# BB#2:                                 # %if.then.1
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	gx_ht_free_cache
.LBB24_3:                               # %if.end.3
	movq	$0, 96(%rbx)
	movq	104(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB24_6
# BB#4:                                 # %do.end
	decq	(%rsi)
	jne	.LBB24_6
# BB#5:                                 # %do.end.18
	movq	8(%rsi), %rdi
	movl	$.L.str.6, %edx
	callq	*16(%rsi)
	movq	$0, 104(%rbx)
.LBB24_6:                               # %do.end.30
	movq	$0, 104(%rbx)
	movq	72(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB24_8
# BB#7:                                 # %if.then.33
	movq	88(%rbx), %rsi
	movl	$.L.str.7, %edx
	callq	*24(%rdi)
	movq	72(%rbx), %rdi
	movq	80(%rbx), %rsi
	movl	$.L.str.8, %edx
	callq	*24(%rdi)
.LBB24_8:                               # %if.end.40
	movq	144(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB24_10
# BB#9:                                 # %if.then.42
	movq	72(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.9, %edx
	callq	*24(%rdi)
.LBB24_10:                              # %if.end.49
	xorps	%xmm0, %xmm0
	movups	%xmm0, 80(%rbx)
	popq	%rbx
	retq
.Lfunc_end24:
	.size	gx_ht_order_release, .Lfunc_end24-gx_ht_order_release
	.cfi_endproc

	.globl	gx_device_halftone_release
	.align	16, 0x90
	.type	gx_device_halftone_release,@function
gx_device_halftone_release:             # @gx_device_halftone_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp113:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp114:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp115:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp116:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp117:
	.cfi_def_cfa_offset 48
.Ltmp118:
	.cfi_offset %rbx, -40
.Ltmp119:
	.cfi_offset %r12, -32
.Ltmp120:
	.cfi_offset %r14, -24
.Ltmp121:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	200(%r15), %rax
	testq	%rax, %rax
	je	.LBB25_9
# BB#1:                                 # %for.cond.preheader
	movl	208(%r15), %ecx
	testl	%ecx, %ecx
	je	.LBB25_8
# BB#2:                                 # %for.body.lr.ph
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	jmp	.LBB25_3
	.align	16, 0x90
.LBB25_6:                               # %for.inc.for.body_crit_edge
                                        #   in Loop: Header=BB25_3 Depth=1
	addq	$168, %r12
	movq	200(%r15), %rax
.LBB25_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	88(%rax,%r12), %rdx
	cmpq	88(%r15), %rdx
	je	.LBB25_5
# BB#4:                                 # %if.then.4
                                        #   in Loop: Header=BB25_3 Depth=1
	addq	%r12, %rax
	movl	$1, %edx
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	gx_ht_order_release
	movl	208(%r15), %ecx
.LBB25_5:                               # %for.inc
                                        #   in Loop: Header=BB25_3 Depth=1
	incl	%ebx
	cmpl	%ecx, %ebx
	jb	.LBB25_6
# BB#7:                                 # %for.cond.for.end_crit_edge
	movq	200(%r15), %rax
.LBB25_8:                               # %for.end
	movl	$.L.str.10, %edx
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	*24(%r14)
	movq	$0, 200(%r15)
	movl	$0, 208(%r15)
.LBB25_9:                               # %if.end.12
	movq	$0, 96(%r15)
	movq	104(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB25_12
# BB#10:                                # %do.end.i
	decq	(%rsi)
	jne	.LBB25_12
# BB#11:                                # %do.end.18.i
	movq	8(%rsi), %rdi
	movl	$.L.str.6, %edx
	callq	*16(%rsi)
	movq	$0, 104(%r15)
.LBB25_12:                              # %do.end.30.i
	movq	$0, 104(%r15)
	movq	72(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB25_14
# BB#13:                                # %if.then.33.i
	movq	88(%r15), %rsi
	movl	$.L.str.7, %edx
	callq	*24(%rdi)
	movq	72(%r15), %rdi
	movq	80(%r15), %rsi
	movl	$.L.str.8, %edx
	callq	*24(%rdi)
.LBB25_14:                              # %if.end.40.i
	movq	144(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB25_16
# BB#15:                                # %if.then.42.i
	movq	72(%r15), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.9, %edx
	callq	*24(%rdi)
.LBB25_16:                              # %gx_ht_order_release.exit
	xorps	%xmm0, %xmm0
	movups	%xmm0, 80(%r15)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end25:
	.size	gx_device_halftone_release, .Lfunc_end25-gx_device_halftone_release
	.cfi_endproc

	.globl	gs_color_name_component_number
	.align	16, 0x90
	.type	gs_color_name_component_number,@function
gs_color_name_component_number:         # @gs_color_name_component_number
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp123:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp124:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp125:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp126:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp127:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp128:
	.cfi_def_cfa_offset 64
.Ltmp129:
	.cfi_offset %rbx, -56
.Ltmp130:
	.cfi_offset %r12, -48
.Ltmp131:
	.cfi_offset %r13, -40
.Ltmp132:
	.cfi_offset %r14, -32
.Ltmp133:
	.cfi_offset %r15, -24
.Ltmp134:
	.cfi_offset %rbp, -16
	movl	%ecx, %r13d
	movl	%edx, %ebx
	movq	%rsi, %r12
	movq	%rdi, %r14
	xorl	%ecx, %ecx
	callq	*1544(%r14)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB26_19
# BB#1:                                 # %if.end.3
	movl	$.L.str.11, %edi
	callq	strlen
	movslq	%ebx, %r15
	cmpq	%r15, %rax
	jne	.LBB26_3
# BB#2:                                 # %land.lhs.true
	movl	$.L.str.11, %esi
	movq	%r12, %rdi
	movq	%rax, %rdx
	callq	strncmp
	movl	%eax, %ecx
	movl	$64, %eax
	testl	%ecx, %ecx
	je	.LBB26_20
.LBB26_3:                               # %if.end.12
	cmpl	$7, %r13d
	je	.LBB26_6
# BB#4:                                 # %if.end.12
	cmpl	$2, %r13d
	jne	.LBB26_5
.LBB26_6:                               # %if.then.17
	movl	$.L.str.12, %edi
	callq	strlen
	cmpq	%r15, %rax
	jne	.LBB26_9
# BB#7:                                 # %land.lhs.true.22
	movl	$.L.str.12, %esi
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB26_8
.LBB26_9:                               # %if.else
	movl	$.L.str.14, %edi
	callq	strlen
	cmpq	%r15, %rax
	jne	.LBB26_12
# BB#10:                                # %land.lhs.true.37
	movl	$.L.str.14, %esi
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB26_11
.LBB26_12:                              # %if.else.48
	movl	$.L.str.16, %edi
	callq	strlen
	cmpq	%r15, %rax
	jne	.LBB26_15
# BB#13:                                # %land.lhs.true.53
	movl	$.L.str.16, %esi
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB26_14
.LBB26_15:                              # %if.else.64
	movl	$.L.str.18, %edi
	callq	strlen
	cmpq	%r15, %rax
	jne	.LBB26_19
# BB#16:                                # %land.lhs.true.69
	movl	$.L.str.18, %esi
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB26_19
# BB#17:                                # %if.then.74
	movq	1544(%r14), %rbx
	movl	$.L.str.19, %edi
	callq	strlen
	movl	$.L.str.19, %esi
	jmp	.LBB26_18
.LBB26_5:
	movl	%ebp, %eax
	jmp	.LBB26_20
.LBB26_8:                               # %if.then.27
	movq	1544(%r14), %rbx
	movl	$.L.str.13, %edi
	callq	strlen
	movl	$.L.str.13, %esi
	jmp	.LBB26_18
.LBB26_11:                              # %if.then.42
	movq	1544(%r14), %rbx
	movl	$.L.str.15, %edi
	callq	strlen
	movl	$.L.str.15, %esi
	jmp	.LBB26_18
.LBB26_14:                              # %if.then.58
	movq	1544(%r14), %rbx
	movl	$.L.str.17, %edi
	callq	strlen
	movl	$.L.str.17, %esi
.LBB26_18:                              # %if.end.83
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	movl	%eax, %edx
	callq	*%rbx
	movl	%eax, %ebp
.LBB26_19:                              # %if.end.83
	cmpl	$64, %ebp
	movl	$-1, %eax
	cmovnel	%ebp, %eax
.LBB26_20:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gs_color_name_component_number, .Lfunc_end26-gs_color_name_component_number
	.cfi_endproc

	.globl	gs_cname_to_colorant_number
	.align	16, 0x90
	.type	gs_cname_to_colorant_number,@function
gs_cname_to_colorant_number:            # @gs_cname_to_colorant_number
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1872(%rdi), %rdi
	jmp	gs_color_name_component_number # TAILCALL
.Lfunc_end27:
	.size	gs_cname_to_colorant_number, .Lfunc_end27-gs_cname_to_colorant_number
	.cfi_endproc

	.globl	gx_imager_dev_ht_install
	.align	16, 0x90
	.type	gx_imager_dev_ht_install,@function
gx_imager_dev_ht_install:               # @gx_imager_dev_ht_install
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp136:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp137:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp138:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp139:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp140:
	.cfi_def_cfa_offset 56
	subq	$344, %rsp              # imm = 0x158
.Ltmp141:
	.cfi_def_cfa_offset 400
.Ltmp142:
	.cfi_offset %rbx, -56
.Ltmp143:
	.cfi_offset %r12, -48
.Ltmp144:
	.cfi_offset %r13, -40
.Ltmp145:
	.cfi_offset %r14, -32
.Ltmp146:
	.cfi_offset %r15, -24
.Ltmp147:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %r13
	movq	%rdi, %rbx
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	movl	212(%r13), %ebp
	movq	168(%r13), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	8(%rbx), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leaq	120(%rsp), %rdi
	xorl	%esi, %esi
	movl	$160, %edx
	callq	memset
	movq	8(%rbx), %rdi
	movl	$1, %esi
	callq	gs_next_ids
	movq	%rax, 304(%rsp)
	movl	%r14d, 312(%rsp)
	movq	8(%rbx), %rdi
	movl	$st_ht_order_component_element, %edx
	movl	$.L.str.20, %ecx
	movl	%ebp, %esi
	callq	*104(%rdi)
	movq	%rax, 320(%rsp)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB28_69
# BB#1:                                 # %if.end
	movslq	%ebp, %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movl	%ebp, 332(%rsp)
	movl	%ebp, 328(%rsp)
	imulq	$168, %rcx, %rdx
	movl	$0, 60(%rsp)            # 4-byte Folded Spill
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	testl	%ebp, %ebp
	jle	.LBB28_8
# BB#2:                                 # %for.body.lr.ph
	movq	320(%rsp), %rax
	leal	-1(%rbp), %ecx
	xorl	%edx, %edx
	testb	$7, %bpl
	je	.LBB28_5
# BB#3:                                 # %for.body.prol.preheader
	leaq	160(%rax), %rsi
	movl	%ebp, %edi
	andl	$7, %edi
	xorl	%edx, %edx
	.align	16, 0x90
.LBB28_4:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	$-1, (%rsi)
	incq	%rdx
	addq	$168, %rsi
	cmpl	%edx, %edi
	jne	.LBB28_4
.LBB28_5:                               # %for.body.lr.ph.split
	cmpl	$7, %ecx
	jb	.LBB28_8
# BB#6:                                 # %for.body.lr.ph.split.split
	movl	%ebp, %ecx
	subl	%edx, %ecx
	imulq	$168, %rdx, %rdx
	leaq	1336(%rdx,%rax), %rax
	.align	16, 0x90
.LBB28_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$-1, -1176(%rax)
	movl	$-1, -1008(%rax)
	movl	$-1, -840(%rax)
	movl	$-1, -672(%rax)
	movl	$-1, -504(%rax)
	movl	$-1, -336(%rax)
	movl	$-1, -168(%rax)
	movl	$-1, (%rax)
	addq	$1344, %rax             # imm = 0x540
	addl	$-8, %ecx
	jne	.LBB28_7
.LBB28_8:                               # %for.end
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movq	200(%r13), %rbp
	testq	%rbp, %rbp
	je	.LBB28_9
# BB#16:                                # %if.then.21
	movslq	208(%r13), %r14
	testq	%r14, %r14
	movl	$0, %eax
	jle	.LBB28_10
# BB#17:                                # %for.body.28.lr.ph
	xorl	%r12d, %r12d
	movl	$1, %r15d
	xorl	%eax, %eax
	movl	$0, 60(%rsp)            # 4-byte Folded Spill
	jmp	.LBB28_18
	.align	16, 0x90
.LBB28_26:                              # %if.end.55.for.body.28_crit_edge
                                        #   in Loop: Header=BB28_18 Depth=1
	movq	200(%r13), %rbp
	addq	$168, %r12
	incq	%r15
.LBB28_18:                              # %for.body.28
                                        # =>This Inner Loop Header: Depth=1
	movslq	160(%rbp,%r12), %rcx
	cmpq	$63, %rcx
	ja	.LBB28_24
# BB#19:                                # %if.then.37
                                        #   in Loop: Header=BB28_18 Depth=1
	leaq	(%rbp,%r12), %rsi
	movq	320(%rsp), %rdx
	imulq	$168, %rcx, %rbx
	leaq	(%rdx,%rbx), %rdi
	movl	%ecx, 160(%rdx,%rbx)
	movq	40(%rsp), %rcx          # 8-byte Reload
	cmpq	%rcx, 48(%rsp)          # 8-byte Folded Reload
	je	.LBB28_21
# BB#20:                                # %if.then.46
                                        #   in Loop: Header=BB28_18 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rdx
	callq	gx_ht_copy_ht_order
	jmp	.LBB28_24
.LBB28_21:                              # %if.else
                                        #   in Loop: Header=BB28_18 Depth=1
	movl	%eax, %ebx
	movb	$1, %cl
	cmpl	$0, 60(%rsp)            # 4-byte Folded Reload
	jne	.LBB28_23
# BB#22:                                # %lor.rhs
                                        #   in Loop: Header=BB28_18 Depth=1
	movq	88(%rbp,%r12), %rax
	cmpq	88(%r13), %rax
	sete	%cl
.LBB28_23:                              # %lor.end
                                        #   in Loop: Header=BB28_18 Depth=1
	movzbl	%cl, %eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	callq	gx_ht_move_ht_order
	movl	%ebx, %eax
	.align	16, 0x90
.LBB28_24:                              # %if.end.55
                                        #   in Loop: Header=BB28_18 Depth=1
	testl	%eax, %eax
	js	.LBB28_10
# BB#25:                                # %if.end.55
                                        #   in Loop: Header=BB28_18 Depth=1
	cmpq	%r14, %r15
	jl	.LBB28_26
	jmp	.LBB28_10
.LBB28_9:
	xorl	%eax, %eax
.LBB28_10:                              # %for.cond.60.preheader
	testl	%eax, %eax
	setns	%dl
	movl	$1, %r15d
	js	.LBB28_11
# BB#12:                                # %for.cond.60.preheader
	movq	8(%rsp), %rcx           # 8-byte Reload
	testl	%ecx, %ecx
	jle	.LBB28_11
# BB#13:                                # %for.body.67.lr.ph
	movq	%r13, 16(%rsp)          # 8-byte Spill
	movl	$1, %r15d
	xorl	%r13d, %r13d
	xorl	%ebx, %ebx
	movl	$1, %r12d
	.align	16, 0x90
.LBB28_14:                              # %for.body.67
                                        # =>This Inner Loop Header: Depth=1
	movq	320(%rsp), %rbp
	leaq	(%rbp,%r13), %rcx
	cmpl	160(%rbp,%r13), %ebx
	jne	.LBB28_27
# BB#15:                                #   in Loop: Header=BB28_14 Depth=1
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	%rbx, 72(%rsp)          # 8-byte Spill
	movl	%r12d, %r14d
	movl	%eax, 84(%rsp)          # 4-byte Spill
	jmp	.LBB28_32
	.align	16, 0x90
.LBB28_27:                              # %if.then.78
                                        #   in Loop: Header=BB28_14 Depth=1
	movl	%eax, 84(%rsp)          # 4-byte Spill
	movq	40(%rsp), %rax          # 8-byte Reload
	cmpq	%rax, 48(%rsp)          # 8-byte Folded Reload
	jne	.LBB28_29
# BB#28:                                # %if.then.78
                                        #   in Loop: Header=BB28_14 Depth=1
	cmpl	$0, 60(%rsp)            # 4-byte Folded Reload
	jne	.LBB28_29
# BB#30:                                # %if.else.85
                                        #   in Loop: Header=BB28_14 Depth=1
	movl	%r12d, %r14d
	movq	%rcx, %rdi
	movq	%rdi, 64(%rsp)          # 8-byte Spill
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	gx_ht_move_ht_order
	movl	$1, 60(%rsp)            # 4-byte Folded Spill
	jmp	.LBB28_31
	.align	16, 0x90
.LBB28_29:                              # %if.then.81
                                        #   in Loop: Header=BB28_14 Depth=1
	movl	%r12d, %r14d
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rdx
	movq	%rcx, %rdi
	movq	%rdi, 64(%rsp)          # 8-byte Spill
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	gx_ht_copy_ht_order
	movl	%eax, 84(%rsp)          # 4-byte Spill
.LBB28_31:                              # %if.end.87
                                        #   in Loop: Header=BB28_14 Depth=1
	movq	320(%rsp), %rax
	movl	%ebx, 160(%rax,%r13)
	movq	%rbx, 72(%rsp)          # 8-byte Spill
.LBB28_32:                              # %if.end.92
                                        #   in Loop: Header=BB28_14 Depth=1
	movzwl	40(%rbp,%r13), %ebx
	movq	%r13, 88(%rsp)          # 8-byte Spill
	movq	88(%rsp), %rax          # 8-byte Reload
	movl	52(%rbp,%rax), %r13d
	movl	%r15d, %edi
	movl	%ebx, %esi
	callq	igcd
	movl	%r15d, %r12d
	movl	%eax, %r15d
	movl	%r14d, %edi
	movl	%r13d, %esi
	callq	igcd
	movl	%eax, %ecx
	movl	%r12d, %eax
	cltd
	idivl	%r15d
	movl	%eax, %r15d
	movl	%r14d, %eax
	movq	%rbp, %r14
	cltd
	idivl	%ecx
	movl	%eax, %r12d
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	xorl	%edx, %edx
	idivl	%r15d
	imull	%ebx, %r15d
	cmpl	%eax, %ebx
	movl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	cmoval	%ecx, %r15d
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	xorl	%edx, %edx
	idivl	%r12d
	imull	%r13d, %r12d
	cmpl	%eax, %r13d
	movq	88(%rsp), %r13          # 8-byte Reload
	cmoval	%ecx, %r12d
	cmpq	$0, 96(%r14,%r13)
	jne	.LBB28_38
# BB#33:                                # %if.then.111
                                        #   in Loop: Header=BB28_14 Depth=1
	movl	%r15d, %ebp
	movzwl	44(%r14,%r13), %ecx
	movl	60(%r14,%r13), %eax
	movzwl	40(%r14,%r13), %esi
	xorl	%edx, %edx
	divl	%esi
	movl	%eax, %r15d
	imull	%ecx, %r15d
	callq	gx_ht_cache_default_bits_size
	xorl	%edx, %edx
	divl	%r15d
	movl	%eax, %ecx
	incl	%ecx
	movzwl	40(%r14,%r13), %esi
	movzwl	42(%r14,%r13), %edi
	movl	%ecx, %eax
	imull	%r15d, %eax
	xorl	%edx, %edx
	divl	%edi
	imull	%esi, %edi
	incl	%edi
	xorl	%edx, %edx
	divl	%edi
	shll	$3, %eax
	andl	$-64, %eax
	xorl	%edx, %edx
	divl	%esi
	cmpl	$65, %eax
	jb	.LBB28_35
# BB#34:                                # %land.lhs.true.136
                                        #   in Loop: Header=BB28_14 Depth=1
	movl	%eax, %esi
	movl	%ecx, %edi
	leal	(,%rcx,8), %eax
	shlq	$3, %rax
	xorl	%edx, %edx
	divq	%rsi
	incq	%rax
	cmpq	%rax, %rdi
	cmovbel	%ecx, %eax
	movl	%eax, %ecx
.LBB28_35:                              # %if.end.154
                                        #   in Loop: Header=BB28_14 Depth=1
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	8(%rbx), %rdi
	imull	%ecx, %r15d
	movl	%ecx, %esi
	movl	%r15d, %edx
	callq	gx_ht_alloc_cache
	testq	%rax, %rax
	je	.LBB28_36
# BB#37:                                # %if.else.161
                                        #   in Loop: Header=BB28_14 Depth=1
	movq	%rax, 96(%r14,%r13)
	movq	8(%rbx), %rdi
	movq	%rax, %rsi
	movq	64(%rsp), %rdx          # 8-byte Reload
	callq	gx_ht_init_cache
	movl	%ebp, %r15d
.LBB28_38:                              # %if.end.165
                                        #   in Loop: Header=BB28_14 Depth=1
	movl	84(%rsp), %eax          # 4-byte Reload
	testl	%eax, %eax
	setns	%dl
	movq	72(%rsp), %rbx          # 8-byte Reload
	js	.LBB28_40
# BB#39:                                # %if.end.165
                                        #   in Loop: Header=BB28_14 Depth=1
	incq	%rbx
	addq	$168, %r13
	cmpq	24(%rsp), %rbx          # 8-byte Folded Reload
	jl	.LBB28_14
	jmp	.LBB28_40
.LBB28_11:
	movq	%r13, 16(%rsp)          # 8-byte Spill
	movl	$1, %r12d
.LBB28_40:                              # %for.end.168
	movl	%r15d, 336(%rsp)
	movl	%r12d, 340(%rsp)
	testb	%dl, %dl
	movq	32(%rsp), %r15          # 8-byte Reload
	je	.LBB28_49
# BB#41:                                # %if.then.173
	movq	392(%r15), %rbp
	testq	%rbp, %rbp
	movq	16(%rsp), %r12          # 8-byte Reload
	je	.LBB28_47
# BB#42:                                # %land.lhs.true.176
	cmpq	$1, 160(%rbp)
	jne	.LBB28_45
# BB#43:                                # %if.then.180
	cmpq	%r12, %rbp
	movq	%r12, %r14
	je	.LBB28_57
# BB#44:                                # %if.then.183
	movq	168(%rbp), %rsi
	movq	%rbp, %rdi
	callq	gx_device_halftone_release
	movq	%rbp, %r14
	jmp	.LBB28_57
.LBB28_36:                              # %for.end.168.thread
	movl	%ebp, 336(%rsp)
	movl	%r12d, 340(%rsp)
	movl	$-25, %eax
	movq	%rbx, %r15
	jmp	.LBB28_49
.LBB28_45:                              # %lor.lhs.false.191
	cmpq	$1, 160(%rbp)
	jg	.LBB28_47
# BB#46:                                # %lor.lhs.false.197
	movq	168(%rbp), %rax
	cmpq	8(%r15), %rax
	movq	%rbp, %r14
	je	.LBB28_57
.LBB28_47:                              # %if.then.204
	movq	8(%r15), %rdi
	movl	$st_device_halftone, %esi
	movl	$.L.str.21, %edx
	callq	*72(%rdi)
	movq	%rax, %r14
	testq	%r14, %r14
	je	.LBB28_48
# BB#54:                                # %do.body.215
	movq	$1, 160(%r14)
	movq	8(%r15), %rax
	movq	%rax, 168(%r14)
	movq	$rc_free_struct_only, 176(%r14)
	movq	392(%r15), %rax
	testq	%rax, %rax
	je	.LBB28_56
# BB#55:                                # %do.end.236
	decq	160(%rax)
.LBB28_56:                              # %cleanup.thread
	movq	%r14, 392(%r15)
.LBB28_57:                              # %if.end.249
	movq	200(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB28_66
# BB#58:                                # %if.then.253
	movl	208(%r12), %ebp
	testl	%ebp, %ebp
	jle	.LBB28_66
# BB#59:                                # %for.body.259.lr.ph
	xorl	%ebx, %ebx
	jmp	.LBB28_60
	.align	16, 0x90
.LBB28_65:                              # %if.end.283.for.body.259_crit_edge
                                        #   in Loop: Header=BB28_60 Depth=1
	addq	$168, %rbx
	movq	200(%r12), %rdi
.LBB28_60:                              # %for.body.259
                                        # =>This Inner Loop Header: Depth=1
	movl	160(%rdi,%rbx), %eax
	cmpl	$63, %eax
	jbe	.LBB28_63
# BB#61:                                # %if.else.275
                                        #   in Loop: Header=BB28_60 Depth=1
	cmpl	$0, 60(%rsp)            # 4-byte Folded Reload
	je	.LBB28_64
# BB#62:                                # %if.else.275
                                        #   in Loop: Header=BB28_60 Depth=1
	cmpl	$64, %eax
	jne	.LBB28_64
.LBB28_63:                              # %if.then.280
                                        #   in Loop: Header=BB28_60 Depth=1
	addq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$160, %edx
	callq	memset
.LBB28_64:                              # %if.end.283
                                        #   in Loop: Header=BB28_60 Depth=1
	decl	%ebp
	jne	.LBB28_65
.LBB28_66:                              # %if.end.287
	cmpl	$0, 60(%rsp)            # 4-byte Folded Reload
	je	.LBB28_68
# BB#67:                                # %if.then.289
	xorl	%esi, %esi
	movl	$160, %edx
	movq	%r12, %rdi
	callq	memset
.LBB28_68:                              # %cleanup.295
	movq	176(%r14), %rax
	movq	%rax, 112(%rsp)
	movups	160(%r14), %xmm0
	movaps	%xmm0, 96(%rsp)
	leaq	120(%rsp), %rsi
	movl	$224, %edx
	movq	%r14, %rdi
	callq	memcpy
	movq	112(%rsp), %rax
	movq	%rax, 176(%r14)
	movaps	96(%rsp), %xmm0
	movups	%xmm0, 160(%r14)
	movq	%r15, %rdi
	callq	gx_imager_set_effective_xfer
	xorl	%ecx, %ecx
	jmp	.LBB28_69
.LBB28_48:                              # %cleanup.295.thread
	movl	$-25, %eax
.LBB28_49:                              # %err
	movl	%eax, %r14d
	xorl	%ebx, %ebx
	movq	8(%rsp), %rbp           # 8-byte Reload
	testl	%ebp, %ebp
	jle	.LBB28_53
	.align	16, 0x90
.LBB28_50:                              # %for.body.302
                                        # =>This Inner Loop Header: Depth=1
	movq	320(%rsp), %rdi
	cmpl	$-1, 160(%rdi,%rbx)
	jne	.LBB28_52
# BB#51:                                # %if.then.311
                                        #   in Loop: Header=BB28_50 Depth=1
	movq	8(%r15), %rsi
	addq	%rbx, %rdi
	movl	$1, %edx
	callq	gx_ht_order_release
.LBB28_52:                              # %if.end.313
                                        #   in Loop: Header=BB28_50 Depth=1
	addq	$168, %rbx
	decl	%ebp
	jne	.LBB28_50
.LBB28_53:                              # %for.end.316
	movq	8(%r15), %rdi
	movq	320(%rsp), %rsi
	movl	$.L.str.21, %edx
	callq	*24(%rdi)
	movl	%r14d, %ecx
.LBB28_69:                              # %cleanup.321
	movl	%ecx, %eax
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gx_imager_dev_ht_install, .Lfunc_end28-gx_imager_dev_ht_install
	.cfi_endproc

	.align	16, 0x90
	.type	gx_ht_copy_ht_order,@function
gx_ht_copy_ht_order:                    # @gx_ht_copy_ht_order
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp148:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp149:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp150:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp151:
	.cfi_def_cfa_offset 48
.Ltmp152:
	.cfi_offset %rbx, -32
.Ltmp153:
	.cfi_offset %r14, -24
.Ltmp154:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$160, %edx
	callq	memcpy
	movzwl	40(%rbx), %esi
	movzwl	42(%rbx), %edx
	movl	56(%rbx), %ecx
	movl	60(%rbx), %r8d
	movzwl	46(%rbx), %r9d
	movq	64(%rbx), %rax
	movq	%r15, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	callq	gx_ht_alloc_ht_order
	testl	%eax, %eax
	js	.LBB29_7
# BB#1:                                 # %if.end
	movq	80(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB29_3
# BB#2:                                 # %if.then.6
	movq	80(%rbx), %rsi
	movl	56(%rbx), %edx
	shlq	$2, %rdx
	callq	memcpy
.LBB29_3:                               # %if.end.12
	movq	88(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB29_5
# BB#4:                                 # %if.then.15
	movq	64(%rbx), %rax
	movq	88(%rbx), %rsi
	movl	(%rax), %edx
	imull	60(%rbx), %edx
	callq	memcpy
.LBB29_5:                               # %if.end.23
	movq	104(%rbx), %rcx
	movq	%rcx, 104(%r14)
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB29_7
# BB#6:                                 # %do.body.27
	incq	(%rcx)
.LBB29_7:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end29:
	.size	gx_ht_copy_ht_order, .Lfunc_end29-gx_ht_copy_ht_order
	.cfi_endproc

	.align	16, 0x90
	.type	gx_ht_move_ht_order,@function
gx_ht_move_ht_order:                    # @gx_ht_move_ht_order
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp155:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp156:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp157:
	.cfi_def_cfa_offset 32
.Ltmp158:
	.cfi_offset %rbx, -32
.Ltmp159:
	.cfi_offset %r14, -24
.Ltmp160:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movzwl	40(%r14), %r15d
	movzwl	42(%r14), %ecx
	movzwl	46(%r14), %esi
	leal	63(%r15), %eax
	shrl	$3, %eax
	andl	$16376, %eax            # imm = 0x3FF8
	testl	%esi, %esi
	movq	32(%r14), %rdx
	movq	%rdx, 32(%rbx)
	movups	(%r14), %xmm0
	movups	16(%r14), %xmm1
	movups	%xmm1, 16(%rbx)
	movups	%xmm0, (%rbx)
	movw	%r15w, 40(%rbx)
	movw	%cx, 42(%rbx)
	movw	%ax, 44(%rbx)
	movw	%si, 46(%rbx)
	movw	%cx, 48(%rbx)
	movw	%si, 50(%rbx)
	je	.LBB30_2
# BB#1:                                 # %cond.false
	movl	%r15d, %edi
	callq	igcd
	movl	%eax, %ecx
	xorl	%edx, %edx
	movl	%r15d, %eax
	idivl	%ecx
	movzwl	42(%rbx), %ecx
	imull	%eax, %ecx
.LBB30_2:                               # %cond.end
	movl	%ecx, 52(%rbx)
	movl	56(%r14), %eax
	movl	%eax, 56(%rbx)
	movl	60(%r14), %eax
	movl	%eax, 60(%rbx)
	movups	64(%r14), %xmm0
	movups	%xmm0, 64(%rbx)
	movups	80(%r14), %xmm0
	movups	%xmm0, 80(%rbx)
	movups	96(%r14), %xmm0
	movups	%xmm0, 96(%rbx)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end30:
	.size	gx_ht_move_ht_order, .Lfunc_end30-gx_ht_move_ht_order
	.cfi_endproc

	.globl	gx_imager_set_effective_xfer
	.align	16, 0x90
	.type	gx_imager_set_effective_xfer,@function
gx_imager_set_effective_xfer:           # @gx_imager_set_effective_xfer
	.cfi_startproc
# BB#0:                                 # %entry
	movq	392(%rdi), %rax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB31_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	488(%rdi), %rdx
	movq	%rdx, 496(%rdi,%rcx,8)
	movq	488(%rdi), %rdx
	movq	%rdx, 504(%rdi,%rcx,8)
	movq	488(%rdi), %rdx
	movq	%rdx, 512(%rdi,%rcx,8)
	movq	488(%rdi), %rdx
	movq	%rdx, 520(%rdi,%rcx,8)
	addq	$4, %rcx
	cmpq	$64, %rcx
	jne	.LBB31_1
# BB#2:                                 # %for.end
	movq	440(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB31_5
# BB#3:                                 # %if.then
	movslq	432(%rdi), %rdx
	testq	%rdx, %rdx
	js	.LBB31_5
# BB#4:                                 # %if.then.4
	movq	%rcx, 496(%rdi,%rdx,8)
.LBB31_5:                               # %if.end.10
	movq	456(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB31_8
# BB#6:                                 # %if.then.13
	movslq	448(%rdi), %rdx
	testq	%rdx, %rdx
	js	.LBB31_8
# BB#7:                                 # %if.then.16
	movq	%rcx, 496(%rdi,%rdx,8)
.LBB31_8:                               # %if.end.23
	movq	472(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB31_11
# BB#9:                                 # %if.then.26
	movslq	464(%rdi), %rdx
	testq	%rdx, %rdx
	js	.LBB31_11
# BB#10:                                # %if.then.29
	movq	%rcx, 496(%rdi,%rdx,8)
.LBB31_11:                              # %if.end.36
	testq	%rax, %rax
	je	.LBB31_23
# BB#12:                                # %for.cond.40.preheader
	movl	208(%rax), %r8d
	testl	%r8d, %r8d
	je	.LBB31_23
# BB#13:                                # %for.body.42.lr.ph
	xorl	%edx, %edx
	testb	$1, %r8b
	je	.LBB31_16
# BB#14:                                # %for.body.42.prol
	movq	200(%rax), %rcx
	movq	104(%rcx), %rsi
	movl	$1, %edx
	testq	%rsi, %rsi
	je	.LBB31_16
# BB#15:                                # %if.then.46.prol
	movq	%rsi, 496(%rdi)
	movl	$1, %edx
.LBB31_16:                              # %for.body.42.lr.ph.split
	cmpl	$1, %r8d
	je	.LBB31_23
# BB#17:                                # %for.body.42.lr.ph.split.split
	imulq	$168, %rdx, %rsi
	.align	16, 0x90
.LBB31_18:                              # %for.body.42
                                        # =>This Inner Loop Header: Depth=1
	movq	200(%rax), %rcx
	movq	104(%rcx,%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB31_20
# BB#19:                                # %if.then.46
                                        #   in Loop: Header=BB31_18 Depth=1
	movq	%rcx, 496(%rdi,%rdx,8)
.LBB31_20:                              # %for.inc.51
                                        #   in Loop: Header=BB31_18 Depth=1
	movq	200(%rax), %rcx
	movq	272(%rcx,%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB31_22
# BB#21:                                # %if.then.46.1
                                        #   in Loop: Header=BB31_18 Depth=1
	movq	%rcx, 504(%rdi,%rdx,8)
.LBB31_22:                              # %for.inc.51.1
                                        #   in Loop: Header=BB31_18 Depth=1
	addq	$2, %rdx
	addq	$336, %rsi              # imm = 0x150
	cmpl	%r8d, %edx
	jb	.LBB31_18
.LBB31_23:                              # %cleanup
	retq
.Lfunc_end31:
	.size	gx_imager_set_effective_xfer, .Lfunc_end31-gx_imager_set_effective_xfer
	.cfi_endproc

	.globl	gx_ht_install
	.align	16, 0x90
	.type	gx_ht_install,@function
gx_ht_install:                          # @gx_ht_install
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp161:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp162:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp163:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp164:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp165:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp166:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp167:
	.cfi_def_cfa_offset 96
.Ltmp168:
	.cfi_offset %rbx, -56
.Ltmp169:
	.cfi_offset %r12, -48
.Ltmp170:
	.cfi_offset %r13, -40
.Ltmp171:
	.cfi_offset %r14, -32
.Ltmp172:
	.cfi_offset %r15, -24
.Ltmp173:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	movq	%rsi, %r15
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	16(%r15), %r13
	movq	368(%rdi), %r12
	movq	1872(%rdi), %rax
	movl	100(%rax), %eax
	movl	%eax, 212(%rbp)
	testq	%r12, %r12
	je	.LBB32_3
# BB#1:                                 # %land.lhs.true
	cmpq	%r13, 16(%r12)
	jne	.LBB32_3
# BB#2:                                 # %land.lhs.true.4
	cmpq	$1, 8(%r12)
	movq	%r12, %rbx
	je	.LBB32_5
.LBB32_3:                               # %do.body
	movl	$st_halftone, %esi
	movl	$.L.str.22, %edx
	movq	%r13, %rdi
	callq	*72(%r13)
	movq	%rax, %rbx
	movl	$-25, %r14d
	testq	%rbx, %rbx
	je	.LBB32_13
# BB#4:                                 # %do.body.10
	movq	$1, 8(%rbx)
	movq	%r13, 16(%rbx)
	movq	$rc_free_struct_only, 24(%rbx)
.LBB32_5:                               # %if.end.21
	movl	(%r15), %edx
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%rbp, %rsi
	callq	gx_imager_dev_ht_install
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB32_6
# BB#8:                                 # %if.end.30
	movq	168(%rbp), %rsi
	movq	%rbp, %rdi
	callq	gx_device_halftone_release
	testq	%r12, %r12
	je	.LBB32_12
# BB#9:                                 # %if.end.30
	cmpq	%r12, %rbx
	je	.LBB32_12
# BB#10:                                # %do.end.40
	decq	8(%r12)
	jne	.LBB32_12
# BB#11:                                # %do.end.52
	movq	16(%r12), %rdi
	movl	$.L.str.23, %edx
	movq	%r12, %rsi
	callq	*24(%r12)
.LBB32_12:                              # %if.end.67
	movq	24(%rbx), %rax
	movq	%rax, 32(%rsp)
	movups	8(%rbx), %xmm0
	movaps	%xmm0, 16(%rsp)
	movups	112(%r15), %xmm0
	movups	%xmm0, 112(%rbx)
	movups	96(%r15), %xmm0
	movups	%xmm0, 96(%rbx)
	movups	80(%r15), %xmm0
	movups	%xmm0, 80(%rbx)
	movups	64(%r15), %xmm0
	movups	%xmm0, 64(%rbx)
	movups	(%r15), %xmm0
	movups	16(%r15), %xmm1
	movups	32(%r15), %xmm2
	movups	48(%r15), %xmm3
	movups	%xmm3, 48(%rbx)
	movups	%xmm2, 32(%rbx)
	movups	%xmm1, 16(%rbx)
	movups	%xmm0, (%rbx)
	movq	32(%rsp), %rax
	movq	%rax, 24(%rbx)
	movaps	16(%rsp), %xmm0
	movups	%xmm0, 8(%rbx)
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	%rbx, 368(%rcx)
	movq	1760(%rcx), %rax
	movq	$gx_dc_type_data_none, (%rax)
	movq	1784(%rcx), %rax
	movq	$gx_dc_type_data_none, (%rax)
	xorl	%r14d, %r14d
	jmp	.LBB32_13
.LBB32_6:                               # %if.then.25
	cmpq	%r12, %rbx
	je	.LBB32_13
# BB#7:                                 # %if.then.27
	movl	$.L.str.22, %edx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	*24(%r13)
.LBB32_13:                              # %cleanup
	movl	%r14d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gx_ht_install, .Lfunc_end32-gx_ht_install
	.cfi_endproc

	.globl	gx_set_effective_transfer
	.align	16, 0x90
	.type	gx_set_effective_transfer,@function
gx_set_effective_transfer:              # @gx_set_effective_transfer
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	gx_imager_set_effective_xfer # TAILCALL
.Lfunc_end33:
	.size	gx_set_effective_transfer, .Lfunc_end33-gx_set_effective_transfer
	.cfi_endproc

	.globl	gx_ht_construct_threshold
	.align	16, 0x90
	.type	gx_ht_construct_threshold,@function
gx_ht_construct_threshold:              # @gx_ht_construct_threshold
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp174:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp175:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp176:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp177:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp178:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp179:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp180:
	.cfi_def_cfa_offset 96
.Ltmp181:
	.cfi_offset %rbx, -56
.Ltmp182:
	.cfi_offset %r12, -48
.Ltmp183:
	.cfi_offset %r13, -40
.Ltmp184:
	.cfi_offset %r14, -32
.Ltmp185:
	.cfi_offset %r15, -24
.Ltmp186:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebx
	movq	%rsi, %r13
	movq	%rdi, %r12
	movl	52(%r12), %r8d
	movzwl	42(%r12), %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%r8d, %eax
	divl	%esi
	movl	%eax, %r15d
	testq	%r12, %r12
	je	.LBB34_1
# BB#2:                                 # %if.end
	cmpq	$0, 144(%r12)
	jne	.LBB34_31
# BB#3:                                 # %if.end.7
	movq	72(%r12), %rax
	movq	200(%rax), %rax
	movzwl	46(%r12), %ebp
	movl	$0, 152(%r12)
	movq	200(%rax), %rdi
	movzwl	40(%r12), %esi
	imull	%r8d, %esi
	movl	$1, %edx
	movl	$.L.str.24, %ecx
	callq	*88(%rdi)
	movq	%rax, %r14
	testq	%r14, %r14
	movl	$-1, %ecx
	je	.LBB34_31
# BB#4:                                 # %if.end.15
	movl	$0, 152(%r12)
	movzbl	110(%r13), %eax
	leaq	120(%r13), %rcx
	leaq	124(%r13), %rdx
	cmpl	%ebx, %eax
	cmoveq	%rcx, %rdx
	movl	(%rdx), %esi
	decl	%esi
	movl	56(%r12), %ebx
	movl	%ebx, %ecx
	movl	$128, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%eax, %r8d
	movl	%r8d, 24(%rsp)          # 4-byte Spill
	cmpq	$128, %rbx
	jb	.LBB34_5
# BB#6:                                 # %if.end.15
	movb	$-1, %al
	jmp	.LBB34_7
.LBB34_1:
	movl	$-1, %ecx
.LBB34_31:                              # %cleanup.170
	movl	%ecx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB34_5:
	movl	$256, %eax              # imm = 0x100
	subl	%r8d, %eax
.LBB34_7:                               # %if.end.15
	xorl	%edx, %edx
	cmpl	$0, 60(%r12)
	je	.LBB34_10
	.align	16, 0x90
.LBB34_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	%al, (%r14,%rdx)
	incq	%rdx
	cmpl	60(%r12), %edx
	jb	.LBB34_8
# BB#9:                                 # %for.cond.while.cond.preheader_crit_edge
	movl	56(%r12), %ecx
.LBB34_10:                              # %while.cond.preheader
	cmpl	$2, %ecx
	jb	.LBB34_23
# BB#11:                                # %while.body.lr.ph
	imulq	%rsi, %rbx
	incq	%rbx
	movq	%rbx, (%rsp)            # 8-byte Spill
	movq	80(%r12), %rax
	xorl	%r9d, %r9d
	movl	$1, %r10d
	movabsq	$3941491667408409, %r11 # imm = 0xE00C40AB89619
	xorl	%edx, %edx
	xorl	%esi, %esi
.LBB34_12:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_14 Depth 2
                                        #       Child Loop BB34_18 Depth 3
	movslq	%edx, %rdi
	movl	(%rax,%rdi,4), %edi
	cmpl	%edi, (%rax,%r10,4)
	jbe	.LBB34_22
# BB#13:                                # %for.body.85.lr.ph
                                        #   in Loop: Header=BB34_12 Depth=1
	movq	%r13, 16(%rsp)          # 8-byte Spill
	movl	%r10d, %eax
	shll	$8, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%eax, %r13d
	subl	%r8d, %r13d
	movl	%r13d, %eax
	shll	$7, %eax
	movl	%r13d, %ecx
	shrl	%ecx
	addl	%eax, %ecx
	movl	%r13d, %eax
	shrl	$5, %eax
	subl	%eax, %ecx
	movswq	%cx, %rcx
	imulq	%rbx, %rcx
	movq	%rcx, %rax
	mulq	%r11
	subq	%rdx, %rcx
	shrq	%rcx
	addq	%rdx, %rcx
	shrq	$14, %rcx
	subl	%r13d, %ecx
	cmpl	%esi, %ecx
	cmovlel	%r9d, %ecx
	addl	%esi, %ecx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	subl	%esi, %r13d
	movl	%edi, %ecx
	.align	16, 0x90
.LBB34_14:                              # %for.body.85
                                        #   Parent Loop BB34_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB34_18 Depth 3
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	movq	%r10, %rbx
	movq	64(%r12), %rax
	movq	%r12, %rdi
	movl	%ecx, %esi
	leaq	32(%rsp), %rdx
	callq	*16(%rax)
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB34_31
# BB#15:                                # %if.end.91
                                        #   in Loop: Header=BB34_14 Depth=2
	movl	32(%rsp), %ecx
	movzwl	40(%r12), %eax
	cmpl	%eax, %ecx
	movl	%ebp, %r8d
	movq	%rbx, %r10
	jge	.LBB34_20
# BB#16:                                # %if.end.91
                                        #   in Loop: Header=BB34_14 Depth=2
	testl	%r15d, %r15d
	jle	.LBB34_20
# BB#17:                                #   in Loop: Header=BB34_14 Depth=2
	movl	36(%rsp), %esi
	movl	$1, %edi
	jmp	.LBB34_18
	.align	16, 0x90
.LBB34_19:                              # %for.body.100.for.body.100_crit_edge
                                        #   in Loop: Header=BB34_18 Depth=3
	movzwl	40(%r12), %eax
	incl	%edi
	addl	%r8d, %ecx
.LBB34_18:                              # %for.body.100
                                        #   Parent Loop BB34_12 Depth=1
                                        #     Parent Loop BB34_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzwl	42(%r12), %edx
	leal	-1(%rdi), %ebp
	imull	%edx, %ebp
	addl	%esi, %ebp
	movzwl	%ax, %ebx
	movl	%ecx, %eax
	cltd
	idivl	%ebx
	movslq	%edx, %rax
	leaq	(%rax,%r14), %rax
	imull	%ebx, %ebp
	movslq	%ebp, %rdx
	movb	%r13b, (%rdx,%rax)
	cmpl	%r15d, %edi
	jl	.LBB34_19
.LBB34_20:                              # %for.inc.119
                                        #   in Loop: Header=BB34_14 Depth=2
	movl	%r8d, %ebp
	movl	28(%rsp), %ecx          # 4-byte Reload
	incl	%ecx
	movq	80(%r12), %rax
	cmpl	(%rax,%r10,4), %ecx
	jb	.LBB34_14
# BB#21:                                # %if.end.122.loopexit
                                        #   in Loop: Header=BB34_12 Depth=1
	movl	56(%r12), %ecx
	movl	%r10d, %edx
	movq	16(%rsp), %r13          # 8-byte Reload
	movq	(%rsp), %rbx            # 8-byte Reload
	movl	24(%rsp), %r8d          # 4-byte Reload
	xorl	%r9d, %r9d
	movabsq	$3941491667408409, %r11 # imm = 0xE00C40AB89619
	movq	8(%rsp), %rsi           # 8-byte Reload
.LBB34_22:                              # %if.end.122
                                        #   in Loop: Header=BB34_12 Depth=1
	incq	%r10
	cmpl	%ecx, %r10d
	jb	.LBB34_12
.LBB34_23:                              # %while.end
	movq	%r14, 144(%r12)
	xorl	%ecx, %ecx
	cmpl	$0, 104(%r13)
	jne	.LBB34_31
# BB#24:                                # %for.cond.129.preheader
	movw	42(%r12), %si
	xorl	%ecx, %ecx
	testw	%si, %si
	je	.LBB34_31
# BB#25:
	xorl	%eax, %eax
	.align	16, 0x90
.LBB34_26:                              # %for.body.134
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_28 Depth 2
	movzwl	40(%r12), %edx
	testq	%rdx, %rdx
	je	.LBB34_30
# BB#27:                                # %for.body.141.lr.ph
                                        #   in Loop: Header=BB34_26 Depth=1
	leaq	(%rdx,%r14), %rsi
	movl	%edx, %edi
	imull	%eax, %edi
	movslq	%edi, %rdi
	notb	-1(%rdi,%rsi)
	cmpl	$2, %edx
	jb	.LBB34_29
	.align	16, 0x90
.LBB34_28:                              # %for.body.141.for.body.141_crit_edge
                                        #   Parent Loop BB34_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	40(%r12), %esi
	imull	%eax, %esi
	movslq	%esi, %rsi
	leaq	(%rsi,%r14), %rsi
	notb	-2(%rdx,%rsi)
	decq	%rdx
	cmpq	$1, %rdx
	jg	.LBB34_28
.LBB34_29:                              # %for.cond.138.for.inc.161_crit_edge
                                        #   in Loop: Header=BB34_26 Depth=1
	movzwl	42(%r12), %esi
.LBB34_30:                              # %for.inc.161
                                        #   in Loop: Header=BB34_26 Depth=1
	incl	%eax
	movzwl	%si, %edx
	cmpl	%edx, %eax
	jl	.LBB34_26
	jmp	.LBB34_31
.Lfunc_end34:
	.size	gx_ht_construct_threshold, .Lfunc_end34-gx_ht_construct_threshold
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gx_ht_order"
	.size	.L.str, 12

	.type	st_ht_order,@object     # @st_ht_order
	.section	.rodata,"a",@progbits
	.globl	st_ht_order
	.align	8
st_ht_order:
	.long	160                     # 0xa0
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	ht_order_enum_ptrs
	.quad	ht_order_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_ht_order, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gx_ht_order_component[]"
	.size	.L.str.1, 24

	.type	st_ht_order_component_element,@object # @st_ht_order_component_element
	.section	.rodata,"a",@progbits
	.globl	st_ht_order_component_element
	.align	8
st_ht_order_component_element:
	.long	168                     # 0xa8
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.quad	ht_order_element_enum_ptrs
	.quad	ht_order_element_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_ht_order_component_element, 64

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"gs_halftone"
	.size	.L.str.2, 12

	.type	st_halftone,@object     # @st_halftone
	.section	.rodata,"a",@progbits
	.globl	st_halftone
	.align	8
st_halftone:
	.long	128                     # 0x80
	.zero	4
	.quad	.L.str.2
	.quad	0
	.quad	0
	.quad	halftone_enum_ptrs
	.quad	halftone_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_halftone, 64

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"gx_device_halftone"
	.size	.L.str.3, 19

	.type	device_halftone_reloc_ptrs,@object # @device_halftone_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
device_halftone_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	st_ht_order
	.quad	device_halftone_enum_ptrs
	.size	device_halftone_reloc_ptrs, 24

	.type	st_device_halftone,@object # @st_device_halftone
	.globl	st_device_halftone
	.align	8
st_device_halftone:
	.long	224                     # 0xe0
	.zero	4
	.quad	.L.str.3
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	device_halftone_reloc_ptrs
	.size	st_device_halftone, 64

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"alloc_ht_order_data(levels)"
	.size	.L.str.4, 28

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"alloc_ht_order_data(bit_data)"
	.size	.L.str.5, 30

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gx_ht_order_release(transfer)"
	.size	.L.str.6, 30

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gx_ht_order_release(bit_data)"
	.size	.L.str.7, 30

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gx_ht_order_release(levels)"
	.size	.L.str.8, 28

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gx_ht_order_release(threshold)"
	.size	.L.str.9, 31

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gx_dev_ht_release(components)"
	.size	.L.str.10, 30

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Default"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Red"
	.size	.L.str.12, 4

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Cyan"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Green"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Magenta"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Blue"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Yellow"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Gray"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Black"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gx_imager_dev_ht_install(components)"
	.size	.L.str.20, 37

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gx_imager_dev_ht_install"
	.size	.L.str.21, 25

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gx_ht_install(new halftone)"
	.size	.L.str.22, 28

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gx_ht_install(old halftone)"
	.size	.L.str.23, 28

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gx_ht_construct_threshold"
	.size	.L.str.24, 26

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gx_ht_order_component"
	.size	.L.str.25, 22

	.type	ht_order_component_reloc_ptrs,@object # @ht_order_component_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
ht_order_component_reloc_ptrs:
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	st_ht_order
	.quad	0
	.size	ht_order_component_reloc_ptrs, 24

	.type	st_ht_order_component,@object # @st_ht_order_component
	.align	8
st_ht_order_component:
	.long	168                     # 0xa8
	.zero	4
	.quad	.L.str.25
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	ht_order_component_reloc_ptrs
	.size	st_ht_order_component, 64

	.type	device_halftone_enum_ptrs,@object # @device_halftone_enum_ptrs
	.align	2
device_halftone_enum_ptrs:
	.short	0                       # 0x0
	.short	200                     # 0xc8
	.size	device_halftone_enum_ptrs, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
