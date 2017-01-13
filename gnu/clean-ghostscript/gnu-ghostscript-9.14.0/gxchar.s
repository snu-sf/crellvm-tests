	.text
	.file	"gxchar.bc"
	.align	16, 0x90
	.type	show_enum_enum_ptrs,@function
show_enum_enum_ptrs:                    # @show_enum_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%ecx, %eax
	cmpl	$4, %ecx
	jbe	.LBB0_1
# BB#2:                                 # %sw.default
	addl	$-5, %ecx
	movl	$st_gs_text_enum, %r9d
	jmpq	*st_gs_text_enum+32(%rip) # TAILCALL
.LBB0_1:                                # %entry
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_3:                                # %sw.bb
	movq	456(%rsi), %rax
	jmp	.LBB0_8
.LBB0_4:                                # %sw.bb.1
	movq	472(%rsi), %rax
	jmp	.LBB0_8
.LBB0_5:                                # %sw.bb.3
	movq	536(%rsi), %rax
	jmp	.LBB0_8
.LBB0_6:                                # %sw.bb.5
	movq	544(%rsi), %rax
	jmp	.LBB0_8
.LBB0_7:                                # %sw.bb.7
	movq	552(%rsi), %rax
.LBB0_8:                                # %return
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
	retq
.Lfunc_end0:
	.size	show_enum_enum_ptrs, .Lfunc_end0-show_enum_enum_ptrs
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_3
	.quad	.LBB0_4
	.quad	.LBB0_5
	.quad	.LBB0_6
	.quad	.LBB0_7

	.text
	.align	16, 0x90
	.type	show_enum_reloc_ptrs,@function
show_enum_reloc_ptrs:                   # @show_enum_reloc_ptrs
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
	movq	%rcx, %rbx
	movq	%rdi, %r14
	movl	$st_gs_text_enum, %edx
	callq	*st_gs_text_enum+40(%rip)
	movq	(%rbx), %rax
	movq	456(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 456(%r14)
	movq	(%rbx), %rax
	movq	472(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 472(%r14)
	movq	(%rbx), %rax
	movq	536(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 536(%r14)
	movq	(%rbx), %rax
	movq	544(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 544(%r14)
	movq	(%rbx), %rax
	movq	552(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 552(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end1:
	.size	show_enum_reloc_ptrs, .Lfunc_end1-show_enum_reloc_ptrs
	.cfi_endproc

	.globl	gs_show_enum_alloc
	.align	16, 0x90
	.type	gs_show_enum_alloc,@function
gs_show_enum_alloc:                     # @gs_show_enum_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp7:
	.cfi_def_cfa_offset 32
.Ltmp8:
	.cfi_offset %rbx, -24
.Ltmp9:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$st_gs_show_enum, %esi
	callq	*72(%rbx)
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB2_2
# BB#1:                                 # %do.body.1
	movq	$1, 160(%rax)
	movq	%rbx, 168(%rax)
	movq	$rc_free_text_enum, 176(%rax)
	movl	$1, 448(%rax)
	movl	$0, (%rax)
	movq	$0, 88(%rax)
	movq	%r14, 456(%rax)
	movq	$0, 472(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 536(%rax)
	movl	$-1, 392(%rax)
	movl	$-1, 388(%rax)
	movups	%xmm0, 400(%rax)
	movq	$0, 552(%rax)
	movl	$-1, 240(%rax)
	movq	%rax, %rcx
.LBB2_2:                                # %cleanup
	movq	%rcx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	gs_show_enum_alloc, .Lfunc_end2-gs_show_enum_alloc
	.cfi_endproc

	.globl	gx_default_text_begin
	.align	16, 0x90
	.type	gx_default_text_begin,@function
gx_default_text_begin:                  # @gx_default_text_begin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp11:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp12:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp13:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp14:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp16:
	.cfi_def_cfa_offset 144
.Ltmp17:
	.cfi_offset %rbx, -56
.Ltmp18:
	.cfi_offset %r12, -48
.Ltmp19:
	.cfi_offset %r13, -40
.Ltmp20:
	.cfi_offset %r14, -32
.Ltmp21:
	.cfi_offset %r15, -24
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%r9, 80(%rsp)           # 8-byte Spill
	movq	%r8, %r15
	movq	%rcx, %r13
	movq	%rdx, %r14
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movq	152(%rsp), %rbp
	movl	(%r14), %eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
	movq	%rbp, %rdi
	callq	*128(%rbp)
	movl	$st_gs_state, %ecx
	movl	$-100, %r12d
	cmpq	%rcx, %rax
	jne	.LBB3_26
# BB#1:                                 # %if.end
	movq	%r14, 40(%rsp)          # 8-byte Spill
	movq	80(%rsp), %r14          # 8-byte Reload
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movq	%r13, 56(%rsp)          # 8-byte Spill
	movl	$st_gs_show_enum, %esi
	movl	$.L.str.1, %edx
	movq	%rbp, %rbx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movq	%rbx, %rcx
	movq	%rax, %rbx
	movl	$-25, %r12d
	testq	%rbx, %rbx
	je	.LBB3_26
# BB#2:                                 # %gs_show_enum_alloc.exit
	movq	144(%rsp), %rax
	movq	$1, 160(%rbx)
	movq	%rcx, 168(%rbx)
	movq	$rc_free_text_enum, 176(%rbx)
	movl	$1, 448(%rbx)
	movl	$0, (%rbx)
	movq	$0, 88(%rbx)
	movq	64(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, 456(%rbx)
	movq	$0, 472(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 536(%rbx)
	movl	$-1, 392(%rbx)
	movl	$-1, 388(%rbx)
	movups	%xmm0, 400(%rbx)
	movq	$0, 552(%rbx)
	movl	$-1, 240(%rbx)
	movq	%rcx, 24(%rsp)
	movq	%rcx, %r13
	movq	%rax, 16(%rsp)
	movq	%r14, 8(%rsp)
	movq	%r15, (%rsp)
	movl	$default_text_procs, %esi
	movq	%rbx, %rdi
	movq	48(%rsp), %rdx          # 8-byte Reload
	movq	%rbp, %rcx
	movq	40(%rsp), %r8           # 8-byte Reload
	movq	56(%rsp), %r9           # 8-byte Reload
	callq	gs_text_enum_init
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB3_3
# BB#4:                                 # %if.end.12
	movq	%r13, %r15
	movl	76(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, %r13d
	andl	$1024, %r13d            # imm = 0x400
	movl	$0, 448(%rbx)
	movl	1864(%rbp), %eax
	movl	%eax, 464(%rbx)
	testb	$-8, %ch
	je	.LBB3_10
# BB#5:                                 # %if.then.16
	movl	$2, %eax
	testb	$16, %ch
	jne	.LBB3_12
# BB#6:                                 # %cond.false
	movl	$3, %eax
	testb	$32, %ch
	jne	.LBB3_12
# BB#7:                                 # %cond.false.22
	movl	$4, %eax
	testb	$64, %ch
	jne	.LBB3_12
# BB#8:                                 # %cond.false.26
	movl	$5, %eax
	testb	$-128, %ch
	jne	.LBB3_12
# BB#9:                                 # %cond.false.30
	movl	%ecx, %eax
	shrl	$11, %eax
	andl	$1, %eax
	jmp	.LBB3_12
.LBB3_3:                                # %if.then.10
	movl	$.L.str.1, %edx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	*24(%rdi)
	jmp	.LBB3_26
.LBB3_10:                               # %if.else
	xorl	%eax, %eax
	testl	%r13d, %r13d
	je	.LBB3_12
# BB#11:                                # %cond.true.41
	movl	1852(%rbp), %eax
.LBB3_12:                               # %cond.end.43
	movl	%eax, 468(%rbx)
	movq	$0, 600(%rbx)
	movq	$continue_show, 616(%rbx)
	leal	-4(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB3_13
# BB#15:                                # %sw.bb.48
	movq	%rbp, %r14
	movl	$0, 480(%rbx)
	jmp	.LBB3_17
.LBB3_13:                               # %if.end.46
	addl	$-2, %eax
	movq	%rbp, %r14
	cmpl	$1, %eax
	ja	.LBB3_16
# BB#14:                                # %sw.bb
	movl	$-1, 480(%rbx)
	jmp	.LBB3_17
.LBB3_16:                               # %sw.default
	movl	$1, 480(%rbx)
.LBB3_17:                               # %sw.epilog
	movq	%rbx, %rdi
	callq	show_state_setup
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB3_26
# BB#18:                                # %if.end.56
	movq	%r15, %rdx
	testl	%r13d, %r13d
	movq	%r14, %rcx
	movq	%rcx, %rax
	je	.LBB3_21
# BB#19:                                # %land.lhs.true
	cmpl	$0, 1852(%rcx)
	movq	%rcx, %rax
	je	.LBB3_21
# BB#20:                                # %cond.true.61
	movq	1856(%rcx), %rax
.LBB3_21:                               # %cond.end.63
	movq	%rcx, %r14
	movq	%rax, 472(%rbx)
	movl	76(%rsp), %eax          # 4-byte Reload
	andl	$393728, %eax           # imm = 0x60200
	cmpl	$131584, %eax           # imm = 0x20200
	movq	%rdx, %rbp
	jne	.LBB3_25
# BB#22:                                # %if.then.69
	movl	$st_device_null, %esi
	movl	$.L.str.2, %edx
	movq	%rbp, %rdi
	callq	*72(%rbp)
	movq	%rax, %r15
	testq	%r15, %r15
	movl	$-25, %r12d
	je	.LBB3_26
# BB#23:                                # %if.end.75
	movq	%r14, %rdi
	callq	gs_gsave
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB3_26
# BB#24:                                # %cleanup
	movl	1864(%r14), %eax
	movl	%eax, 464(%rbx)
	movq	1872(%r14), %rsi
	movq	%r15, %rdi
	movq	%rbp, %rdx
	callq	gs_make_null_device
	movl	$0, 1676(%r14)
	movq	%r15, 552(%rbx)
	movl	$1, %esi
	movq	%r15, %rdi
	callq	gx_device_retain
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	gs_setdevice_no_init
	movq	%r14, %rdi
	callq	gs_newpath
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r14, %rdi
	callq	gx_translate_to_fixed
	movq	1680(%r14), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	gx_path_add_point
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB3_26
.LBB3_25:                               # %if.end.93
	movq	160(%rsp), %rax
	movq	%rbx, (%rax)
	xorl	%r12d, %r12d
.LBB3_26:                               # %cleanup.94
	movl	%r12d, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gx_default_text_begin, .Lfunc_end3-gx_default_text_begin
	.cfi_endproc

	.align	16, 0x90
	.type	continue_show,@function
continue_show:                          # @continue_show
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	show_proceed            # TAILCALL
.Lfunc_end4:
	.size	continue_show, .Lfunc_end4-continue_show
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_0:
	.long	1317011456              # float 1.07374182E+9
.LCPI5_1:
	.long	3464495104              # float -1.07374182E+9
	.text
	.align	16, 0x90
	.type	show_state_setup,@function
show_state_setup:                       # @show_state_setup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp25:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp26:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 48
	subq	$48, %rsp
.Ltmp28:
	.cfi_def_cfa_offset 96
.Ltmp29:
	.cfi_offset %rbx, -48
.Ltmp30:
	.cfi_offset %r12, -40
.Ltmp31:
	.cfi_offset %r13, -32
.Ltmp32:
	.cfi_offset %r14, -24
.Ltmp33:
	.cfi_offset %r15, -16
	movq	%rdi, %r13
	movq	456(%r13), %r14
	movslq	240(%r13), %rbx
	testq	%rbx, %rbx
	jle	.LBB5_1
# BB#7:                                 # %if.else.20
	shlq	$4, %rbx
	movq	232(%r13,%rbx), %rsi
	movq	248(%r13,%rbx), %r15
	leaq	80(%r15), %rdi
	addq	$80, %rsi
	leaq	16(%rsp), %rdx
	callq	gs_matrix_multiply
	cmpl	$9, 128(%r15)
	jne	.LBB5_9
# BB#8:                                 # %if.then.33
	movl	256(%r13,%rbx), %esi
	movq	%r15, %rdi
	callq	gs_cid0_indexed_font
	leaq	80(%rax), %rdi
	leaq	16(%rsp), %rsi
	movq	%rsi, %rdx
	callq	gs_matrix_multiply
.LBB5_9:                                # %if.end.37
	leaq	16(%rsp), %rsi
	movq	%r14, %rdi
	jmp	.LBB5_10
.LBB5_1:                                # %if.then
	movq	1792(%r14), %r15
	cmpl	$9, 128(%r15)
	jne	.LBB5_6
# BB#2:                                 # %if.then.3
	movq	8(%r13), %rsi
	leaq	12(%rsp), %rcx
	xorl	%edx, %edx
	movq	%r15, %rdi
	callq	*528(%r15)
	testl	%eax, %eax
	jns	.LBB5_4
# BB#3:                                 # %if.then.5
	leaq	12(%rsp), %rcx
	movl	$2147483648, %esi       # imm = 0x80000000
	xorl	%edx, %edx
	movq	%r15, %rdi
	callq	*528(%r15)
	testl	%eax, %eax
	js	.LBB5_5
.LBB5_4:                                # %if.end.11
	movl	12(%rsp), %esi
	movq	%r15, %rdi
	callq	gs_cid0_indexed_font
	leaq	80(%rax), %rdi
	leaq	80(%r15), %rsi
	leaq	16(%rsp), %r12
	movq	%r12, %rdx
	callq	gs_matrix_multiply
	movq	%r14, %rdi
	movq	%r12, %rsi
.LBB5_10:                               # %if.end.39
	callq	gs_setcharmatrix
	jmp	.LBB5_11
.LBB5_6:                                # %if.else
	xorl	%esi, %esi
	movl	$1, %edx
	movq	%r14, %rdi
	callq	gs_currentcharmatrix
.LBB5_11:                               # %if.end.39
	movq	%r15, 192(%r13)
	cmpl	$0, 480(%r13)
	js	.LBB5_22
# BB#12:                                # %land.lhs.true
	leaq	40(%rsp), %rsi
	movq	%r14, %rdi
	callq	gx_effective_clip_path
	testl	%eax, %eax
	js	.LBB5_22
# BB#13:                                # %if.then.43
	movq	40(%rsp), %rdi
	leaq	16(%rsp), %r15
	movq	%r15, %rsi
	callq	gx_cpath_inner_box
	movl	$255, %ebx
	movl	24(%rsp), %eax
	addl	%ebx, %eax
	movl	28(%rsp), %ecx
	addl	%ebx, %ecx
	movd	%ecx, %xmm0
	movd	20(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movd	%eax, %xmm0
	movd	16(%rsp), %xmm2         # xmm2 = mem[0],zero,zero,zero
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	psrad	$8, %xmm2
	movdqu	%xmm2, 484(%r13)
	movq	40(%rsp), %rdi
	movq	%r15, %rsi
	callq	gx_cpath_outer_box
	movl	24(%rsp), %eax
	addl	%ebx, %eax
	addl	28(%rsp), %ebx
	movd	%ebx, %xmm0
	movd	20(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movd	%eax, %xmm0
	movd	16(%rsp), %xmm2         # xmm2 = mem[0],zero,zero,zero
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	psrad	$8, %xmm2
	movdqu	%xmm2, 500(%r13)
	cmpl	$0, 164(%r14)
	je	.LBB5_16
# BB#14:                                # %land.lhs.true.90
	cmpl	$0, 1840(%r14)
	je	.LBB5_16
# BB#15:                                # %if.then.93
	movl	1832(%r14), %eax
	subl	156(%r14), %eax
	sarl	$8, %eax
	movl	%eax, 516(%r13)
	movl	1836(%r14), %eax
	subl	160(%r14), %eax
	sarl	$8, %eax
	jmp	.LBB5_21
.LBB5_16:                               # %if.else.106
	movss	1828(%r14), %xmm0       # xmm0 = mem[0],zero,zero,zero
	subss	152(%r14), %xmm0
	movss	.LCPI5_0(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm2
	jbe	.LBB5_29
# BB#17:                                # %if.else.106
	movss	1824(%r14), %xmm1       # xmm1 = mem[0],zero,zero,zero
	subss	148(%r14), %xmm1
	ucomiss	.LCPI5_1(%rip), %xmm1
	jb	.LBB5_29
# BB#18:                                # %if.else.106
	ucomiss	%xmm1, %xmm2
	jbe	.LBB5_29
# BB#19:                                # %if.else.106
	ucomiss	.LCPI5_1(%rip), %xmm0
	jb	.LBB5_29
# BB#20:                                # %cleanup.134.thread
	cvttss2si	%xmm1, %eax
	movl	%eax, 516(%r13)
	cvttss2si	%xmm0, %eax
.LBB5_21:                               # %if.end.142
	movl	%eax, 520(%r13)
.LBB5_22:                               # %if.end.142
	movl	$gs_no_encode_char, %eax
	testb	$40, (%r13)
	jne	.LBB5_27
# BB#23:                                # %cond.false.i
	movslq	240(%r13), %rax
	testq	%rax, %rax
	js	.LBB5_24
# BB#25:                                # %cond.false.i.i
	shlq	$4, %rax
	leaq	248(%r13,%rax), %rax
	jmp	.LBB5_26
.LBB5_24:                               # %cond.true.i.i
	movl	$1792, %eax             # imm = 0x700
	addq	456(%r13), %rax
.LBB5_26:                               # %gs_show_current_font.exit.i
	movq	(%rax), %rax
	movq	200(%rax), %rax
.LBB5_27:                               # %show_set_encode_char.exit
	movq	%rax, 528(%r13)
	xorl	%eax, %eax
.LBB5_28:                               # %cleanup.143
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.LBB5_29:                               # %cleanup.139
	movl	$-13, %eax
	jmp	.LBB5_28
.LBB5_5:                                # %cleanup
	movl	$-10, %eax
	jmp	.LBB5_28
.Lfunc_end5:
	.size	show_state_setup, .Lfunc_end5-show_state_setup
	.cfi_endproc

	.globl	gs_text_count_chars
	.align	16, 0x90
	.type	gs_text_count_chars,@function
gs_text_count_chars:                    # @gs_text_count_chars
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp34:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp36:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp37:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 48
	subq	$496, %rsp              # imm = 0x1F0
.Ltmp39:
	.cfi_def_cfa_offset 544
.Ltmp40:
	.cfi_offset %rbx, -48
.Ltmp41:
	.cfi_offset %r12, -40
.Ltmp42:
	.cfi_offset %r13, -32
.Ltmp43:
	.cfi_offset %r14, -24
.Ltmp44:
	.cfi_offset %r15, -16
	movq	%rsi, %rax
	movq	1792(%rdi), %rcx
	movq	256(%rcx), %r13
	movl	$gs_default_next_char_glyph, %ecx
	cmpq	%rcx, %r13
	je	.LBB6_1
# BB#2:                                 # %if.else
	movq	1800(%rdi), %r9
	movq	%rdx, 24(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 8(%rsp)
	movq	$0, (%rsp)
	leaq	48(%rsp), %rdi
	movl	$default_text_procs, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rax, %r8
	callq	gs_text_enum_init
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB6_7
# BB#3:
	movl	$-1, %ebx
	leaq	48(%rsp), %r14
	leaq	40(%rsp), %r15
	leaq	32(%rsp), %r12
	.align	16, 0x90
.LBB6_4:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	*%r13
	incl	%ebx
	cmpl	$2, %eax
	je	.LBB6_6
# BB#5:                                 # %while.cond
                                        #   in Loop: Header=BB6_4 Depth=1
	testl	%eax, %eax
	jns	.LBB6_4
.LBB6_6:                                # %while.end
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	jmp	.LBB6_7
.LBB6_1:                                # %if.then
	movl	16(%rax), %ebx
.LBB6_7:                                # %cleanup.16
	movl	%ebx, %eax
	addq	$496, %rsp              # imm = 0x1F0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end6:
	.size	gs_text_count_chars, .Lfunc_end6-gs_text_count_chars
	.cfi_endproc

	.globl	gx_hld_stringwidth_begin
	.align	16, 0x90
	.type	gx_hld_stringwidth_begin,@function
gx_hld_stringwidth_begin:               # @gx_hld_stringwidth_begin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp47:
	.cfi_def_cfa_offset 32
.Ltmp48:
	.cfi_offset %rbx, -24
.Ltmp49:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	8(%rbx), %rdi
	movq	%rbx, %rsi
	callq	*128(%rdi)
	movq	%rax, %rcx
	movl	$st_gs_state, %edx
	movl	$-28, %eax
	cmpq	%rdx, %rcx
	jne	.LBB7_2
# BB#1:                                 # %if.end
	movq	%rbx, %rdi
	callq	gs_gsave
	testl	%eax, %eax
	js	.LBB7_2
# BB#3:                                 # %if.end.5
	movq	%rbx, %rdi
	callq	gs_newpath
	movq	1680(%rbx), %rax
	movq	%rax, (%r14)
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	gx_translate_to_fixed
	movq	1680(%rbx), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	gx_path_add_point       # TAILCALL
.LBB7_2:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end7:
	.size	gx_hld_stringwidth_begin, .Lfunc_end7-gx_hld_stringwidth_begin
	.cfi_endproc

	.globl	gx_default_text_restore_state
	.align	16, 0x90
	.type	gx_default_text_restore_state,@function
gx_default_text_restore_state:          # @gx_default_text_restore_state
	.cfi_startproc
# BB#0:                                 # %entry
	testb	$2, 1(%rdi)
	jne	.LBB8_1
# BB#2:                                 # %if.end
	movq	456(%rdi), %rdi
	jmp	gs_grestore             # TAILCALL
.LBB8_1:                                # %cleanup
	xorl	%eax, %eax
	retq
.Lfunc_end8:
	.size	gx_default_text_restore_state, .Lfunc_end8-gx_default_text_restore_state
	.cfi_endproc

	.globl	set_char_width
	.align	16, 0x90
	.type	set_char_width,@function
set_char_width:                         # @set_char_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp52:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp54:
	.cfi_def_cfa_offset 64
.Ltmp55:
	.cfi_offset %rbx, -40
.Ltmp56:
	.cfi_offset %r12, -32
.Ltmp57:
	.cfi_offset %r14, -24
.Ltmp58:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	608(%rbx), %ecx
	movl	$-21, %eax
	orl	$4, %ecx
	cmpl	$4, %ecx
	jne	.LBB9_11
# BB#1:                                 # %if.end
	leaq	132(%r14), %r12
	leaq	560(%rbx), %r15
	movq	%r12, %rdi
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	%xmm1, 16(%rsp)         # 8-byte Spill
	movq	%r15, %rsi
	callq	gs_distance_transform2fixed
	testl	%eax, %eax
	jns	.LBB9_4
# BB#2:                                 # %land.lhs.true.4
	cmpq	$0, 600(%rbx)
	je	.LBB9_3
.LBB9_4:                                # %if.else
	movl	$0, 584(%rbx)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 568(%rbx)
.LBB9_5:                                # %if.end.16
	testl	%eax, %eax
	js	.LBB9_11
# BB#6:                                 # %if.end.19
	movq	600(%rbx), %rcx
	movl	$2, %eax
	testq	%rcx, %rcx
	je	.LBB9_8
# BB#7:                                 # %if.then.22
	movq	(%r15), %rax
	movq	%rax, 88(%rcx)
	movl	$3, %eax
.LBB9_8:                                # %if.end.29
	movl	%eax, 608(%rbx)
	movl	(%rbx), %eax
	movl	%eax, %ecx
	andl	$66048, %ecx            # imm = 0x10200
	cmpl	$66048, %ecx            # imm = 0x10200
	jne	.LBB9_10
# BB#9:                                 # %if.then.31
	movq	%r14, %rdi
	callq	gs_nulldevice
	movl	(%rbx), %eax
.LBB9_10:                               # %if.end.33
	shrl	$9, %eax
	andl	$1, %eax
.LBB9_11:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB9_3:                                # %if.then.6
	leaq	568(%rbx), %rsi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	16(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	%r12, %rdi
	callq	gs_distance_transform
	movl	$0, 564(%rbx)
	movl	$0, 560(%rbx)
	movl	$1, 584(%rbx)
	jmp	.LBB9_5
.Lfunc_end9:
	.size	set_char_width, .Lfunc_end9-set_char_width
	.cfi_endproc

	.globl	gx_compute_text_oversampling
	.align	16, 0x90
	.type	gx_compute_text_oversampling,@function
gx_compute_text_oversampling:           # @gx_compute_text_oversampling
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp60:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp61:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp62:
	.cfi_def_cfa_offset 48
.Ltmp63:
	.cfi_offset %rbx, -32
.Ltmp64:
	.cfi_offset %r14, -24
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %ebp
	xorl	%ebx, %ebx
	cmpl	$1, %ebp
	je	.LBB10_1
# BB#3:                                 # %if.else
	cmpl	$0, 152(%rsi)
	je	.LBB10_4
.LBB10_1:
	xorl	%eax, %eax
.LBB10_2:                               # %if.end.30
	shlq	$32, %rbx
	movl	%eax, %eax
	orq	%rbx, %rax
	movq	%rax, (%r14)
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB10_4:                               # %if.else.5
	cmpl	$0, 208(%rdi)
	movl	$0, %eax
	je	.LBB10_2
# BB#5:                                 # %if.else.9
	xorl	%ebx, %ebx
	cmpl	$1, 468(%rdi)
	ja	.LBB10_12
# BB#6:                                 # %land.lhs.true.i
	testb	$10, 1(%rdi)
	jne	.LBB10_12
# BB#7:                                 # %if.then.i
	movq	456(%rdi), %rax
	movq	192(%rdi), %rcx
	addq	$1808, %rax             # imm = 0x710
	movsd	392(%rcx), %xmm0        # xmm0 = mem[0],zero
	movsd	400(%rcx), %xmm1        # xmm1 = mem[0],zero
	subsd	376(%rcx), %xmm0
	subsd	384(%rcx), %xmm1
	leaq	8(%rsp), %rsi
	movq	%rax, %rdi
	callq	gs_distance_transform2fixed
	testl	%eax, %eax
	js	.LBB10_12
# BB#8:                                 # %if.then.14.i
	movl	8(%rsp), %eax
	movl	12(%rsp), %ecx
	movl	%eax, %edx
	negl	%edx
	cmovll	%eax, %edx
	cmpl	$51200, %edx            # imm = 0xC800
	setl	%al
	cmpl	$15360, %edx            # imm = 0x3C00
	movzbl	%al, %eax
	movl	$2, %edx
	cmovll	%edx, %eax
	movl	%ecx, %esi
	negl	%esi
	cmovll	%ecx, %esi
	cmpl	$51200, %esi            # imm = 0xC800
	setl	%cl
	cmpl	$15360, %esi            # imm = 0x3C00
	movzbl	%cl, %ebx
	cmovll	%edx, %ebx
	testl	%eax, %eax
	jne	.LBB10_11
# BB#9:                                 # %if.then.14.i
	testl	%ebx, %ebx
	je	.LBB10_11
# BB#10:
	movl	$1, %eax
	jmp	.LBB10_13
.LBB10_12:                              # %cleanup.i
	xorl	%eax, %eax
.LBB10_13:                              # %show_set_scale.exit
	movl	%ebx, %ecx
	subl	%ebp, %ecx
	addl	%eax, %ecx
	jmp	.LBB10_14
.LBB10_18:                              # %if.then.23
                                        #   in Loop: Header=BB10_14 Depth=1
	decl	%eax
	decl	%ecx
	.align	16, 0x90
.LBB10_14:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	testl	%ecx, %ecx
	jle	.LBB10_2
# BB#15:                                # %while.body
                                        #   in Loop: Header=BB10_14 Depth=1
	testl	%ebx, %ebx
	jle	.LBB10_17
# BB#16:                                # %if.then.15
                                        #   in Loop: Header=BB10_14 Depth=1
	decl	%ebx
	decl	%ecx
	je	.LBB10_2
.LBB10_17:                              # %if.end.20
                                        #   in Loop: Header=BB10_14 Depth=1
	testl	%eax, %eax
	jle	.LBB10_14
	jmp	.LBB10_18
.LBB10_11:                              # %if.else.i
	testl	%ebx, %ebx
	movl	$1, %ecx
	cmovnel	%ebx, %ecx
	testl	%eax, %eax
	cmovnel	%ecx, %ebx
	jmp	.LBB10_13
.Lfunc_end10:
	.size	gx_compute_text_oversampling, .Lfunc_end10-gx_compute_text_oversampling
	.cfi_endproc

	.globl	gs_incachedevice
	.align	16, 0x90
	.type	gs_incachedevice,@function
gs_incachedevice:                       # @gs_incachedevice
	.cfi_startproc
# BB#0:                                 # %entry
	movl	1848(%rdi), %eax
	retq
.Lfunc_end11:
	.size	gs_incachedevice, .Lfunc_end11-gs_incachedevice
	.cfi_endproc

	.globl	gx_current_char
	.align	16, 0x90
	.type	gx_current_char,@function
gx_current_char:                        # @gx_current_char
	.cfi_startproc
# BB#0:                                 # %entry
	movq	416(%rdi), %rax
	movzbl	%al, %r8d
	movslq	240(%rdi), %rsi
	testq	%rsi, %rsi
	jle	.LBB12_1
# BB#2:                                 # %if.then
	shlq	$4, %rsi
	movl	240(%rsi,%rdi), %edx
	movq	232(%rsi,%rdi), %rsi
	movl	376(%rsi), %esi
	leal	-4(%rsi), %ecx
	cmpl	$2, %ecx
	jae	.LBB12_3
# BB#8:                                 # %sw.bb
	shll	$7, %edx
	jmp	.LBB12_6
.LBB12_1:
	movq	%r8, %rax
	retq
.LBB12_3:                               # %if.then
	cmpl	$9, %esi
	jne	.LBB12_5
# BB#4:                                 # %sw.bb.7
	cmpl	$0, 344(%rdi)
	movq	%rax, %r8
	je	.LBB12_7
.LBB12_5:                               # %sw.default
	shll	$8, %edx
.LBB12_6:                               # %if.end.14
	addq	%r8, %rdx
	movq	%rdx, %rax
.LBB12_7:                               # %if.end.14
	retq
.Lfunc_end12:
	.size	gx_current_char, .Lfunc_end12-gx_current_char
	.cfi_endproc

	.globl	gs_show_in_charpath
	.align	16, 0x90
	.type	gs_show_in_charpath,@function
gs_show_in_charpath:                    # @gs_show_in_charpath
	.cfi_startproc
# BB#0:                                 # %entry
	movl	468(%rdi), %eax
	retq
.Lfunc_end13:
	.size	gs_show_in_charpath, .Lfunc_end13-gs_show_in_charpath
	.cfi_endproc

	.globl	gs_show_current_font
	.align	16, 0x90
	.type	gs_show_current_font,@function
gs_show_current_font:                   # @gs_show_current_font
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	240(%rdi), %rax
	testq	%rax, %rax
	js	.LBB14_1
# BB#2:                                 # %cond.false
	shlq	$4, %rax
	leaq	248(%rdi,%rax), %rax
	movq	(%rax), %rax
	retq
.LBB14_1:                               # %cond.true
	movl	$1792, %eax             # imm = 0x700
	addq	456(%rdi), %rax
	movq	(%rax), %rax
	retq
.Lfunc_end14:
	.size	gs_show_current_font, .Lfunc_end14-gs_show_current_font
	.cfi_endproc

	.align	16, 0x90
	.type	gx_show_text_resync,@function
gx_show_text_resync:                    # @gx_show_text_resync
	.cfi_startproc
# BB#0:                                 # %entry
	movl	(%rsi), %ecx
	xorl	(%rdi), %ecx
	movl	$-15, %eax
	cmpl	$63, %ecx
	ja	.LBB15_7
# BB#1:                                 # %if.end
	movq	80(%rsi), %rax
	movq	%rax, 80(%rdi)
	movups	64(%rsi), %xmm0
	movups	%xmm0, 64(%rdi)
	movups	(%rsi), %xmm0
	movups	16(%rsi), %xmm1
	movups	32(%rsi), %xmm2
	movups	48(%rsi), %xmm3
	movups	%xmm3, 48(%rdi)
	movups	%xmm2, 32(%rdi)
	movups	%xmm1, 16(%rdi)
	movups	%xmm0, (%rdi)
	movl	$gs_no_encode_char, %eax
	testb	$40, (%rdi)
	jne	.LBB15_6
# BB#2:                                 # %cond.false.i
	movslq	240(%rdi), %rax
	testq	%rax, %rax
	js	.LBB15_3
# BB#4:                                 # %cond.false.i.i
	shlq	$4, %rax
	leaq	248(%rdi,%rax), %rax
	jmp	.LBB15_5
.LBB15_3:                               # %cond.true.i.i
	movl	$1792, %eax             # imm = 0x700
	addq	456(%rdi), %rax
.LBB15_5:                               # %gs_show_current_font.exit.i
	movq	(%rax), %rax
	movq	200(%rax), %rax
.LBB15_6:                               # %show_set_encode_char.exit
	movq	%rax, 528(%rdi)
	xorl	%eax, %eax
.LBB15_7:                               # %cleanup
	retq
.Lfunc_end15:
	.size	gx_show_text_resync, .Lfunc_end15-gx_show_text_resync
	.cfi_endproc

	.align	16, 0x90
	.type	gx_show_text_process,@function
gx_show_text_process:                   # @gx_show_text_process
	.cfi_startproc
# BB#0:                                 # %entry
	jmpq	*616(%rdi)              # TAILCALL
.Lfunc_end16:
	.size	gx_show_text_process, .Lfunc_end16-gx_show_text_process
	.cfi_endproc

	.align	16, 0x90
	.type	gx_show_text_is_width_only,@function
gx_show_text_is_width_only:             # @gx_show_text_is_width_only
	.cfi_startproc
# BB#0:                                 # %entry
	testb	$10, 1(%rdi)
	jne	.LBB17_3
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, 600(%rdi)
	je	.LBB17_2
.LBB17_3:                               # %land.rhs
	movq	456(%rdi), %rax
	movl	464(%rdi), %ecx
	incl	%ecx
	cmpl	%ecx, 1864(%rax)
	sete	%al
	movzbl	%al, %eax
	retq
.LBB17_2:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.Lfunc_end17:
	.size	gx_show_text_is_width_only, .Lfunc_end17-gx_show_text_is_width_only
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.align	16, 0x90
	.type	gx_show_text_current_width,@function
gx_show_text_current_width:             # @gx_show_text_current_width
	.cfi_startproc
# BB#0:                                 # %entry
	movq	456(%rdi), %rax
	cvtsi2sdl	560(%rdi), %xmm0
	movsd	.LCPI18_0(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	cvtsi2sdl	564(%rdi), %xmm1
	mulsd	%xmm2, %xmm1
	movq	%rax, %rdi
	jmp	gs_idtransform          # TAILCALL
.Lfunc_end18:
	.size	gx_show_text_current_width, .Lfunc_end18-gx_show_text_current_width
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI19_0:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.text
	.align	16, 0x90
	.type	gx_show_text_set_cache,@function
gx_show_text_set_cache:                 # @gx_show_text_set_cache
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp67:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp68:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp69:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp70:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp71:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp72:
	.cfi_def_cfa_offset 112
.Ltmp73:
	.cfi_offset %rbx, -56
.Ltmp74:
	.cfi_offset %r12, -48
.Ltmp75:
	.cfi_offset %r13, -40
.Ltmp76:
	.cfi_offset %r14, -32
.Ltmp77:
	.cfi_offset %r15, -24
.Ltmp78:
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movq	%rsi, %r13
	movq	%rdi, %r15
	movq	456(%r15), %r14
	movq	%r14, %rdi
	callq	gs_rootfont
	movss	80(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorpd	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB19_4
	jp	.LBB19_4
# BB#1:                                 # %land.lhs.true
	movss	84(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB19_4
	jp	.LBB19_4
# BB#2:                                 # %land.lhs.true.4
	movss	88(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorpd	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB19_4
	jp	.LBB19_4
# BB#3:                                 # %land.lhs.true.7
	movss	92(%rax), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$-23, %ebp
	ucomiss	%xmm0, %xmm1
	jne	.LBB19_4
	jnp	.LBB19_22
.LBB19_4:                               # %if.end
	cmpl	$2, %ebx
	je	.LBB19_11
# BB#5:                                 # %if.end
	cmpl	$1, %ebx
	je	.LBB19_8
# BB#6:                                 # %if.end
	movl	$-15, %ebp
	testl	%ebx, %ebx
	jne	.LBB19_22
# BB#7:                                 # %sw.bb
	movsd	(%r13), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%r13), %xmm1          # xmm1 = mem[0],zero
	movq	%r15, %rdi
	movq	%r14, %rsi
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	set_char_width          # TAILCALL
.LBB19_11:                              # %sw.bb.27
	cmpl	$0, 148(%rax)
	je	.LBB19_8
# BB#12:                                # %if.then.30
	movl	608(%r15), %ebx
	movsd	64(%r13), %xmm0         # xmm0 = mem[0],zero
	movsd	72(%r13), %xmm1         # xmm1 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movaps	%xmm0, 16(%rsp)         # 16-byte Spill
	cvtsd2ss	%xmm1, %xmm2
	movaps	%xmm2, (%rsp)           # 16-byte Spill
	leaq	132(%r14), %r12
	movaps	.LCPI19_0(%rip), %xmm1  # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	xorps	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	leaq	48(%rsp), %rsi
	movq	%r12, %rdi
	callq	gs_point_transform2fixed
	xorl	%ebp, %ebp
	testl	%eax, %eax
	js	.LBB19_22
# BB#13:                                # %lor.lhs.false
	movaps	16(%rsp), %xmm0         # 16-byte Reload
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movaps	(%rsp), %xmm1           # 16-byte Reload
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, (%rsp)           # 8-byte Spill
	leaq	40(%rsp), %rsi
	movq	%r12, %rdi
	callq	gs_distance_transform2fixed
	testl	%eax, %eax
	js	.LBB19_22
# BB#14:                                # %if.end.48
	movsd	48(%r13), %xmm0         # xmm0 = mem[0],zero
	movsd	56(%r13), %xmm1         # xmm1 = mem[0],zero
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	set_char_width
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB19_22
# BB#15:                                # %if.end.55
	movl	$66048, %eax            # imm = 0x10200
	andl	(%r15), %eax
	cmpl	$66048, %eax            # imm = 0x10200
	je	.LBB19_22
# BB#16:                                # %if.end.62
	movl	48(%rsp), %esi
	movl	52(%rsp), %edx
	movq	%r14, %rdi
	callq	gx_translate_to_fixed
	movsd	16(%r13), %xmm0         # xmm0 = mem[0],zero
	movsd	24(%r13), %xmm1         # xmm1 = mem[0],zero
	movsd	32(%r13), %xmm2         # xmm2 = mem[0],zero
	movsd	40(%r13), %xmm3         # xmm3 = mem[0],zero
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	set_cache_device
	movl	%eax, %r13d
	cmpl	$1, %r13d
	jne	.LBB19_17
# BB#21:                                # %cleanup.94
	movl	40(%rsp), %eax
	movq	600(%r15), %rcx
	addl	%eax, 96(%rcx)
	movl	44(%rsp), %eax
	addl	%eax, 100(%rcx)
	movl	$1, %ebp
	jmp	.LBB19_22
.LBB19_8:                               # %sw.bb.12
	movsd	(%r13), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%r13), %xmm1          # xmm1 = mem[0],zero
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	set_char_width
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB19_22
# BB#9:                                 # %if.end.18
	movl	$66048, %eax            # imm = 0x10200
	andl	(%r15), %eax
	cmpl	$66048, %eax            # imm = 0x10200
	je	.LBB19_22
# BB#10:                                # %if.end.21
	movsd	16(%r13), %xmm0         # xmm0 = mem[0],zero
	movsd	24(%r13), %xmm1         # xmm1 = mem[0],zero
	movsd	32(%r13), %xmm2         # xmm2 = mem[0],zero
	movsd	40(%r13), %xmm3         # xmm3 = mem[0],zero
	movq	%r15, %rdi
	movq	%r14, %rsi
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	set_cache_device        # TAILCALL
.LBB19_17:                              # %if.then.71
	cmpl	$4, %ebx
	jne	.LBB19_20
# BB#18:                                # %if.then.73
	leaq	32(%rsp), %rsi
	movq	%r12, %rdi
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	(%rsp), %xmm1           # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gs_point_transform2fixed
	movl	$-28, %ebp
	testl	%eax, %eax
	js	.LBB19_22
# BB#19:                                # %if.end.81
	movl	32(%rsp), %esi
	movl	36(%rsp), %edx
	movq	%r14, %rdi
	callq	gx_translate_to_fixed
.LBB19_20:                              # %cleanup.94.thread
	movl	%r13d, %ebp
.LBB19_22:                              # %cleanup.122
	movl	%ebp, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gx_show_text_set_cache, .Lfunc_end19-gx_show_text_set_cache
	.cfi_endproc

	.align	16, 0x90
	.type	gx_show_text_retry,@function
gx_show_text_retry:                     # @gx_show_text_retry
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	600(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB20_2
# BB#1:                                 # %if.then
	movq	192(%rbx), %rax
	movq	24(%rax), %rdi
	callq	gx_free_cached_char
	movq	$0, 600(%rbx)
.LBB20_2:                               # %if.end
	movq	456(%rbx), %rdi
	callq	gs_grestore
	movl	$4, 608(%rbx)
	movl	$0, 216(%rbx)
	movl	$0, 212(%rbx)
	movq	$0, 224(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end20:
	.size	gx_show_text_retry, .Lfunc_end20-gx_show_text_retry
	.cfi_endproc

	.align	16, 0x90
	.type	gx_show_text_release,@function
gx_show_text_release:                   # @gx_show_text_release
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp81:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp82:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp83:
	.cfi_def_cfa_offset 32
.Ltmp84:
	.cfi_offset %rbx, -24
.Ltmp85:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	$0, 600(%rbx)
	movq	544(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB21_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	callq	gx_device_retain
	movq	$0, 544(%rbx)
.LBB21_2:                               # %if.end
	movq	536(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB21_4
# BB#3:                                 # %if.then.4
	xorl	%esi, %esi
	callq	gx_device_retain
	movq	$0, 536(%rbx)
.LBB21_4:                               # %if.end.7
	movq	552(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB21_6
# BB#5:                                 # %if.then.9
	xorl	%esi, %esi
	callq	gx_device_retain
	movq	$0, 552(%rbx)
.LBB21_6:                               # %if.end.12
	movq	%rbx, %rdi
	movq	%r14, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	gx_default_text_release # TAILCALL
.Lfunc_end21:
	.size	gx_show_text_release, .Lfunc_end21-gx_show_text_release
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	4674525306978041856     # double 32000
	.text
	.align	16, 0x90
	.type	set_cache_device,@function
set_cache_device:                       # @set_cache_device
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
	subq	$264, %rsp              # imm = 0x108
.Ltmp92:
	.cfi_def_cfa_offset 320
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	xorl	%ebp, %ebp
	cmpl	$0, 1848(%rbx)
	jne	.LBB22_66
# BB#1:                                 # %if.end
	movl	$66048, %eax            # imm = 0x10200
	andl	(%r14), %eax
	cmpl	$66048, %eax            # imm = 0x10200
	jne	.LBB22_3
# BB#2:                                 # %if.then.1
	movq	%rbx, %rdi
	callq	gs_nulldevice
	movl	%eax, %ebp
	sarl	$31, %ebp
	andl	%eax, %ebp
	jmp	.LBB22_66
.LBB22_3:                               # %if.end.5
	movl	$1, 1848(%rbx)
	movq	424(%r14), %r15
	cmpq	$2147483647, %r15       # imm = 0x7FFFFFFF
	je	.LBB22_66
# BB#4:                                 # %if.end.9
	cmpl	$0, 480(%r14)
	jle	.LBB22_66
# BB#5:                                 # %lor.lhs.false
	movsd	%xmm1, 64(%rsp)         # 8-byte Spill
	movsd	%xmm2, 56(%rsp)         # 8-byte Spill
	movsd	%xmm3, 48(%rsp)         # 8-byte Spill
	cmpl	$0, 1844(%rbx)
	je	.LBB22_66
# BB#6:                                 # %if.end.16
	movq	1792(%rbx), %rax
	movq	24(%rax), %r12
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	callq	fabs
	xorl	%ecx, %ecx
	ucomisd	.LCPI22_0(%rip), %xmm0
	movl	$0, %ebp
	ja	.LBB22_64
# BB#7:                                 # %lor.lhs.false.21
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	fabs
	xorl	%ecx, %ecx
	ucomisd	.LCPI22_0(%rip), %xmm0
	movl	$0, %ebp
	ja	.LBB22_64
# BB#8:                                 # %lor.lhs.false.24
	movsd	56(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	fabs
	xorl	%ecx, %ecx
	ucomisd	.LCPI22_0(%rip), %xmm0
	movl	$0, %ebp
	ja	.LBB22_64
# BB#9:                                 # %lor.lhs.false.27
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	fabs
	xorl	%ecx, %ecx
	ucomisd	.LCPI22_0(%rip), %xmm0
	movl	$0, %ebp
	jae	.LBB22_64
# BB#10:                                # %if.end.31
	leaq	132(%rbx), %r13
	leaq	224(%rsp), %rsi
	movq	%r13, %rdi
	movsd	40(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	64(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gs_distance_transform2fixed
	xorl	%ecx, %ecx
	testl	%eax, %eax
	movl	$0, %ebp
	js	.LBB22_64
# BB#11:                                # %lor.lhs.false.34
	leaq	216(%rsp), %rsi
	movq	%r13, %rdi
	movsd	40(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	48(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gs_distance_transform2fixed
	xorl	%ecx, %ecx
	testl	%eax, %eax
	movl	$0, %ebp
	js	.LBB22_64
# BB#12:                                # %lor.lhs.false.38
	leaq	208(%rsp), %rsi
	movq	%r13, %rdi
	movsd	56(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	64(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gs_distance_transform2fixed
	xorl	%ecx, %ecx
	testl	%eax, %eax
	movl	$0, %ebp
	js	.LBB22_64
# BB#13:                                # %lor.lhs.false.42
	leaq	200(%rsp), %rsi
	movq	%r13, %rdi
	movsd	56(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	48(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gs_distance_transform2fixed
	xorl	%ecx, %ecx
	testl	%eax, %eax
	movl	$0, %ebp
	js	.LBB22_64
# BB#14:                                # %if.end.47
	movq	%r13, 40(%rsp)          # 8-byte Spill
	movl	224(%rsp), %ecx
	movl	200(%rsp), %eax
	cmpl	%eax, %ecx
	jle	.LBB22_15
# BB#16:                                # %if.then.50
	movl	%eax, 224(%rsp)
	movl	%ecx, 200(%rsp)
	jmp	.LBB22_17
.LBB22_15:
	movl	%ecx, %eax
.LBB22_17:                              # %if.end.55
	movl	228(%rsp), %edx
	movl	204(%rsp), %ecx
	cmpl	%ecx, %edx
	jle	.LBB22_18
# BB#19:                                # %if.then.58
	movl	%ecx, 228(%rsp)
	movl	%edx, 204(%rsp)
	jmp	.LBB22_20
.LBB22_18:
	movl	%edx, %ecx
.LBB22_20:                              # %if.end.63
	movl	216(%rsp), %edi
	movl	208(%rsp), %edx
	cmpl	%edx, %edi
	jle	.LBB22_21
# BB#22:                                # %if.then.67
	movl	%edx, 216(%rsp)
	movl	%edi, 208(%rsp)
	movl	%edi, %r8d
	jmp	.LBB22_23
.LBB22_21:
	movl	%edx, %r8d
	movl	%edi, %edx
.LBB22_23:                              # %if.end.72
	movl	220(%rsp), %ebp
	movl	212(%rsp), %edi
	cmpl	%edi, %ebp
	jle	.LBB22_24
# BB#25:                                # %if.then.76
	movl	%edi, 220(%rsp)
	movl	%ebp, 212(%rsp)
	movl	%ebp, %esi
	jmp	.LBB22_26
.LBB22_24:
	movl	%edi, %esi
	movl	%ebp, %edi
.LBB22_26:                              # %if.end.81
	cmpl	%eax, %edx
	jge	.LBB22_28
# BB#27:                                # %if.then.85
	movl	%edx, 224(%rsp)
	movl	%r8d, 200(%rsp)
.LBB22_28:                              # %if.end.90
	cmpl	%ecx, %edi
	jge	.LBB22_30
# BB#29:                                # %if.then.94
	movl	%edi, 228(%rsp)
	movl	%esi, 204(%rsp)
.LBB22_30:                              # %if.end.99
	movq	456(%r14), %rax
	movq	1872(%rax), %rdi
	xorl	%esi, %esi
	callq	*1304(%rdi)
	cmpl	$-1, 388(%r14)
	je	.LBB22_32
# BB#31:                                # %if.then.26.i
	movq	388(%r14), %r13
	movq	%r13, 256(%rsp)
	leaq	192(%r14), %rbp
	jmp	.LBB22_33
.LBB22_32:                              # %if.else.28.i
	leaq	192(%r14), %rbp
	movq	192(%r14), %rsi
	leaq	256(%rsp), %rcx
	movq	%r14, %rdi
	movl	%eax, %r13d
	movl	%r13d, %edx
	callq	gx_compute_text_oversampling
	movl	%r13d, %eax
	movq	256(%rsp), %r13
.LBB22_33:                              # %if.end.29.i
	movl	%eax, 48(%rsp)          # 4-byte Spill
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	%r13, %rcx
	shrq	$32, %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	leal	(%r13,%rcx), %edx
	cmpl	%eax, %edx
	movl	%eax, %ecx
	cmovlel	%edx, %ecx
	testl	%edx, %edx
	movl	$1, %eax
	cmovnel	%ecx, %eax
	movl	%eax, 56(%rsp)          # 4-byte Spill
	movq	(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gs_currentaligntopixels
	xorl	%ebp, %ebp
	testl	%eax, %eax
	movl	$0, %edi
	jne	.LBB22_35
# BB#34:                                # %if.then.55.i
	movl	256(%rsp), %r13d
	movl	$8, %ecx
	subl	%r13d, %ecx
	movq	$-1, %rax
	shlq	%cl, %rax
	movl	$7, %ecx
	subl	%r13d, %ecx
	movl	$1, %edx
	shlq	%cl, %rdx
	addl	588(%r14), %edx
	andl	%eax, %edx
	movzbl	%dl, %edi
.LBB22_35:                              # %if.end.103
	movl	200(%rsp), %eax
	subl	224(%rsp), %eax
	movslq	%r13d, %rcx
	cmpl	set_cache_device.max_cdim(,%rcx,4), %eax
	movl	$0, %ecx
	jg	.LBB22_64
# BB#36:                                # %lor.lhs.false.114
	movl	204(%rsp), %edx
	subl	228(%rsp), %edx
	movq	64(%rsp), %rsi          # 8-byte Reload
	shlq	$32, %rsi
	sarq	$30, %rsi
	xorl	%ecx, %ecx
	cmpl	set_cache_device.max_cdim(%rsi), %edx
	movl	$0, %ebp
	jg	.LBB22_64
# BB#37:                                # %if.end.121
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	shrl	$8, %eax
	movzwl	%ax, %ebp
	addl	$3, %ebp
	movb	%r13b, %cl
	shll	%cl, %ebp
	shrl	$8, %edx
	movzwl	%dx, %r13d
	addl	$3, %r13d
	movq	64(%rsp), %rcx          # 8-byte Reload
	shll	%cl, %r13d
	movq	536(%r14), %rsi
	testq	%rsi, %rsi
	jne	.LBB22_41
# BB#38:                                # %if.then.139
	movl	%ebp, 64(%rsp)          # 4-byte Spill
	movq	%r14, %rdi
	callq	show_cache_setup
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB22_39
# BB#40:                                # %if.then.139.if.end.145_crit_edge
	movq	536(%r14), %rsi
	movl	64(%rsp), %ebp          # 4-byte Reload
.LBB22_41:                              # %if.end.145
	movzwl	%bp, %edi
	movl	%edi, 20(%rsp)          # 4-byte Spill
	movzwl	%r13w, %ecx
	movl	%ecx, 64(%rsp)          # 4-byte Spill
	movl	$80000, %eax            # imm = 0x13880
	xorl	%edx, %edx
	divl	%ecx
	xorl	%edx, %edx
	cmpl	%eax, %edi
	jbe	.LBB22_44
# BB#42:                                # %land.lhs.true
	movq	256(%rsp), %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
	addl	%eax, %ecx
	xorl	%edx, %edx
	cmpl	48(%rsp), %ecx          # 4-byte Folded Reload
	jle	.LBB22_44
# BB#43:                                # %cond.true
	movq	544(%r14), %rdx
.LBB22_44:                              # %cond.end
	leaq	248(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	56(%rsp), %eax          # 4-byte Reload
	movl	%eax, (%rsp)
	movzwl	%bp, %ecx
	movzwl	%r13w, %r8d
	leaq	256(%rsp), %r9
	movq	%r12, %rdi
	callq	gx_alloc_char_bits
	movq	248(%rsp), %rax
	testq	%rax, %rax
	je	.LBB22_45
# BB#50:                                # %if.end.232
	movl	$511, %ecx              # imm = 0x1FF
	movl	$511, %edx              # imm = 0x1FF
	subl	224(%rsp), %edx
	andl	$-256, %edx
	movl	%edx, 96(%rax)
	subl	228(%rsp), %ecx
	andl	$-256, %ecx
	movl	%ecx, 100(%rax)
	movl	$0, 1848(%rbx)
	movq	%rbx, %rdi
	callq	gs_gsave
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB22_51
# BB#52:                                # %if.end.258
	movq	248(%rsp), %rax
	movq	%rax, 600(%r14)
	movq	%r15, 40(%rax)
	movq	%rbx, %rdi
	callq	gs_rootfont
	movb	148(%rax), %al
	movq	248(%rsp), %rcx
	movb	%al, 48(%rcx)
	movq	560(%r14), %rax
	movq	%rax, 88(%rcx)
	movq	248(%rsp), %rax
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 72(%rax)
	movq	224(%r14), %rax
	testq	%rax, %rax
	movq	248(%rsp), %rcx
	je	.LBB22_54
# BB#53:                                # %if.then.267
	movq	%rax, 24(%rcx)
	movl	72(%rax), %eax
	movq	248(%rsp), %rcx
	movl	%eax, 68(%rcx)
	jmp	.LBB22_55
.LBB22_45:                              # %if.then.159
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rax
	xorl	%ebp, %ebp
	movl	128(%rax), %eax
	cmpq	$53, %rax
	ja	.LBB22_49
# BB#46:                                # %if.then.159
	movabsq	$13510798882112520, %rcx # imm = 0x30000000000408
	btq	%rax, %rcx
	jae	.LBB22_49
# BB#47:                                # %if.end.178
	movl	$0, 1848(%rbx)
	movl	588(%r14), %eax
	movl	$255, %ecx
	movl	$255, %edx
	subl	224(%rsp), %edx
	andl	$-256, %edx
	subl	%edx, %eax
	movl	%eax, 232(%rsp)
	movl	592(%r14), %edx
	subl	228(%rsp), %ecx
	andl	$-256, %ecx
	subl	%ecx, %edx
	movl	%edx, 236(%rsp)
	movl	20(%rsp), %ecx          # 4-byte Reload
	shll	$8, %ecx
	addl	%eax, %ecx
	movl	%ecx, 240(%rsp)
	movl	64(%rsp), %eax          # 4-byte Reload
	shll	$8, %eax
	addl	%edx, %eax
	movl	%eax, 244(%rsp)
	movq	8(%rbx), %rdx
	leaq	72(%rsp), %rbp
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	gx_path_init_local_shared
	movl	232(%rsp), %esi
	movl	236(%rsp), %edx
	movl	240(%rsp), %ecx
	movl	244(%rsp), %r8d
	movq	%rbp, %rdi
	callq	gx_path_add_rectangle
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB22_49
# BB#48:                                # %if.end.228
	movq	1688(%rbx), %rsi
	leaq	72(%rsp), %rbp
	movl	$-1, %ecx
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	callq	gx_cpath_clip
	movl	$.L.str.3, %esi
	movq	%rbp, %rdi
	callq	gx_path_free
	movl	$2, 1848(%rbx)
	xorl	%ebp, %ebp
.LBB22_49:                              # %cleanup.231
	xorl	%ecx, %ecx
	jmp	.LBB22_64
.LBB22_51:                              # %if.then.257
	movq	248(%rsp), %rsi
	movq	%r12, %rdi
	callq	gx_free_cached_char
	xorl	%ecx, %ecx
	jmp	.LBB22_64
.LBB22_39:
	xorl	%ecx, %ecx
	jmp	.LBB22_64
.LBB22_54:                              # %if.else
	movq	$0, 24(%rcx)
.LBB22_55:                              # %if.end.271
	movq	536(%r14), %rsi
	movq	%rbx, %rdi
	callq	gx_set_device_only
	movl	$0, 1676(%rbx)
	movq	248(%rsp), %rax
	movq	24(%rsp), %rsi          # 8-byte Reload
	addl	96(%rax), %esi
	movq	256(%rsp), %rcx
	shll	%cl, %esi
	movl	100(%rax), %edx
	shrq	$32, %rcx
	shll	%cl, %edx
	movq	%rbx, %rdi
	callq	gx_translate_to_fixed
	movq	256(%rsp), %rcx
	movq	%rcx, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	orl	%ecx, %edx
	je	.LBB22_57
# BB#56:                                # %if.then.290
	movl	$1, %edx
	movl	$1, %esi
	shll	%cl, %esi
	movb	%al, %cl
	shll	%cl, %edx
	movq	%rbx, %rdi
	callq	gx_scale_char_matrix
	movq	256(%rsp), %rcx
	movq	%rcx, %rax
	shrq	$32, %rax
.LBB22_57:                              # %if.end.296
	movq	536(%r14), %rdx
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	16(%rdi), %rsi
	movq	%rsi, 2564(%rdx)
	movupd	(%rdi), %xmm0
	movupd	%xmm0, 2548(%rdx)
	movl	%ecx, 212(%r14)
	movl	%eax, 216(%r14)
	movl	$0, 236(%rsp)
	movl	$0, 232(%rsp)
	movl	20(%rsp), %eax          # 4-byte Reload
	shll	$8, %eax
	movl	%eax, 240(%rsp)
	movl	64(%rsp), %eax          # 4-byte Reload
	shll	$8, %eax
	movl	%eax, 244(%rsp)
	leaq	232(%rsp), %rsi
	movq	%rbx, %rdi
	callq	gx_clip_to_rectangle
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB22_58
# BB#59:                                # %if.end.321
	movq	%rbx, %rdi
	callq	gx_set_device_color_1
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB22_60
# BB#61:                                # %if.end.326
	movq	%rbx, %rdi
	callq	gs_swapcolors_quick
	movq	%rbx, %rdi
	callq	gx_set_device_color_1
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB22_62
# BB#63:                                # %if.end.331
	movq	%rbx, %rdi
	callq	gs_swapcolors_quick
	movl	$3, 1848(%rbx)
	movb	$1, %cl
                                        # implicit-def: EBP
	jmp	.LBB22_64
.LBB22_58:
	xorl	%ecx, %ecx
	jmp	.LBB22_64
.LBB22_60:
	xorl	%ecx, %ecx
	jmp	.LBB22_64
.LBB22_62:
	xorl	%ecx, %ecx
.LBB22_64:                              # %cleanup.333
	testb	%cl, %cl
	je	.LBB22_66
# BB#65:                                # %cleanup.cont
	movl	$1, 608(%r14)
	movl	$1, %ebp
.LBB22_66:                              # %cleanup.349
	movl	%ebp, %eax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	set_cache_device, .Lfunc_end22-set_cache_device
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI23_0:
	.quad	4643211215818981376     # double 256
.LCPI23_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	compute_glyph_raster_params,@function
compute_glyph_raster_params:            # @compute_glyph_raster_params
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
	pushq	%rax
.Ltmp105:
	.cfi_def_cfa_offset 64
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
	movq	%r9, %r15
	movq	%r8, (%rsp)             # 8-byte Spill
	movq	%rcx, %r12
	movq	%rdx, %r13
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	456(%rbx), %r14
	movq	1872(%r14), %rdi
	xorl	%esi, %esi
	callq	*1304(%rdi)
	movl	%eax, (%r13)
	testl	%ebp, %ebp
	jne	.LBB23_5
# BB#1:                                 # %if.else
	cmpl	$0, 168(%r14)
	je	.LBB23_3
# BB#2:                                 # %cond.end
	movsd	176(%r14), %xmm0        # xmm0 = mem[0],zero
	mulsd	.LCPI23_0(%rip), %xmm0
	addsd	.LCPI23_1(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 588(%rbx)
	movsd	.LCPI23_0(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	184(%r14), %xmm0
	addsd	.LCPI23_1(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 592(%rbx)
	jmp	.LBB23_5
.LBB23_3:                               # %if.then.13
	movl	$-14, %eax
	testb	$2, 1(%rbx)
	je	.LBB23_14
# BB#4:                                 # %if.end
	movl	$0, 592(%rbx)
	movl	$0, 588(%rbx)
.LBB23_5:                               # %if.end.22
	cmpl	$-1, 388(%rbx)
	je	.LBB23_7
# BB#6:                                 # %if.then.26
	movq	388(%rbx), %rcx
	movq	%rcx, (%r15)
	movq	%rcx, %rax
	shrq	$32, %rax
	jmp	.LBB23_8
.LBB23_7:                               # %if.else.28
	movq	192(%rbx), %rsi
	movl	(%r13), %edx
	movq	%rbx, %rdi
	movq	%r15, %rcx
	callq	gx_compute_text_oversampling
	movl	(%r15), %ecx
	movl	4(%r15), %eax
.LBB23_8:                               # %if.end.29
	addl	%ecx, %eax
	movl	$1, %ecx
	je	.LBB23_10
# BB#9:                                 # %cond.false.36
	movl	(%r13), %ecx
	cmpl	%ecx, %eax
	cmovlel	%eax, %ecx
.LBB23_10:                              # %cond.end.49
	movl	%ecx, (%r12)
	movq	192(%rbx), %rax
	movq	24(%rax), %rdi
	callq	gs_currentaligntopixels
	testl	%eax, %eax
	je	.LBB23_11
# BB#12:                                # %if.else.72
	movq	(%rsp), %rax            # 8-byte Reload
	movq	$0, (%rax)
	jmp	.LBB23_13
.LBB23_11:                              # %if.then.55
	movl	(%r15), %eax
	movl	$8, %ecx
	subl	%eax, %ecx
	movq	$-1, %rdx
	shlq	%cl, %rdx
	movl	$7, %ecx
	subl	%eax, %ecx
	movl	$1, %eax
	shlq	%cl, %rax
	movq	(%rsp), %rcx            # 8-byte Reload
	movl	$0, 4(%rcx)
	addl	588(%rbx), %eax
	andl	%edx, %eax
	movzbl	%al, %eax
	movl	%eax, (%rcx)
.LBB23_13:                              # %cleanup
	xorl	%eax, %eax
.LBB23_14:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	compute_glyph_raster_params, .Lfunc_end23-compute_glyph_raster_params
	.cfi_endproc

	.align	16, 0x90
	.type	show_cache_setup,@function
show_cache_setup:                       # @show_cache_setup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp112:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp113:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp114:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp115:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp116:
	.cfi_def_cfa_offset 48
.Ltmp117:
	.cfi_offset %rbx, -48
.Ltmp118:
	.cfi_offset %r12, -40
.Ltmp119:
	.cfi_offset %r13, -32
.Ltmp120:
	.cfi_offset %r14, -24
.Ltmp121:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	144(%r15), %rbx
	movq	456(%r15), %r13
	movl	$st_device_memory, %esi
	movl	$.L.str.4, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movq	%rax, %r14
	movl	$st_device_memory, %esi
	movl	$.L.str.5, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movq	%rax, %r12
	testq	%r14, %r14
	je	.LBB24_2
# BB#1:                                 # %entry
	testq	%r12, %r12
	je	.LBB24_2
# BB#3:                                 # %if.end
	movq	1872(%r13), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gs_make_mem_mono_device
	movq	%r14, 536(%r15)
	movq	1872(%r13), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	gs_make_mem_mono_device
	movq	%r12, 544(%r15)
	movq	1872(%r13), %rax
	movl	884(%rax), %ecx
	movl	%ecx, 884(%r14)
	movl	888(%rax), %eax
	movl	%eax, 888(%r14)
	movl	$1, %esi
	movq	%r14, %rdi
	callq	gx_device_retain
	movl	$1, %esi
	movq	%r12, %rdi
	callq	gx_device_retain
	xorl	%eax, %eax
	jmp	.LBB24_4
.LBB24_2:                               # %if.then
	movl	$.L.str.5, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	*24(%rbx)
	movl	$.L.str.4, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*24(%rbx)
	movl	$-25, %eax
.LBB24_4:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end24:
	.size	show_cache_setup, .Lfunc_end24-show_cache_setup
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI25_0:
	.quad	4571153621781053440     # double 0.00390625
.LCPI25_1:
	.quad	4643211215818981376     # double 256
.LCPI25_2:
	.quad	4602678819172646912     # double 0.5
.LCPI25_3:
	.quad	4710765210229538816     # double 8388608
.LCPI25_4:
	.quad	-4512606826625236992    # double -8388608
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI25_5:
	.zero	16
	.text
	.align	16, 0x90
	.type	show_proceed,@function
show_proceed:                           # @show_proceed
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
	subq	$296, %rsp              # imm = 0x128
.Ltmp128:
	.cfi_def_cfa_offset 352
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
	movq	%rdi, %r12
	movq	456(%r12), %r14
	movq	%r14, 88(%rsp)          # 8-byte Spill
	movq	$0, 288(%rsp)
	leaq	1792(%r14), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	cmpl	$0, 240(%r12)
	js	.LBB25_2
# BB#1:                                 # %select.mid
	leaq	248(%r12), %rax
.LBB25_2:                               # %select.end
	movq	(%rax), %rax
	movl	148(%rax), %r15d
	movl	%r15d, 60(%rsp)         # 4-byte Spill
	movq	256(%rax), %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	cmpl	$0, 468(%r12)
	jne	.LBB25_5
# BB#3:                                 # %land.lhs.true
	testb	$10, 1(%r12)
	jne	.LBB25_5
# BB#4:                                 # %if.then
	movq	1760(%r14), %rdi
	movq	1872(%r14), %rdx
	movq	(%rdi), %rax
	xorl	%ecx, %ecx
	movq	%r14, %rsi
	callq	*32(%rax)
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB25_84
.LBB25_5:                               # %more.preheader
	leaq	1808(%r14), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
                                        # implicit-def: EAX
	movl	%eax, 56(%rsp)          # 4-byte Spill
.LBB25_6:                               # %more
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_7 Depth 2
	movslq	240(%r12), %rax
	movq	%rax, %rcx
	shlq	$4, %rcx
	testq	%rax, %rax
	leaq	248(%r12,%rcx), %rax
	cmovsq	64(%rsp), %rax          # 8-byte Folded Reload
	movq	(%rax), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	%rax, 192(%r12)
	cmpl	$0, 480(%r12)
	js	.LBB25_43
	.align	16, 0x90
.LBB25_7:                               # %for.cond
                                        #   Parent Loop BB25_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	232(%r12), %ebp
	incl	236(%r12)
	movq	%r12, %rdi
	leaq	280(%rsp), %rsi
	leaq	272(%rsp), %rdx
	callq	*96(%rsp)               # 8-byte Folded Reload
	movl	%eax, %r13d
	testl	%r13d, %r13d
	je	.LBB25_18
# BB#8:                                 # %for.cond
                                        #   in Loop: Header=BB25_7 Depth=2
	cmpl	$1, %r13d
	jne	.LBB25_9
# BB#17:                                # %sw.bb.32
                                        #   in Loop: Header=BB25_7 Depth=2
	movslq	240(%r12), %rax
	shlq	$4, %rax
	movq	248(%r12,%rax), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	%rax, 192(%r12)
	movl	$0, 1844(%r14)
	movq	%r12, %rdi
	callq	show_state_setup
	movq	$0, 288(%rsp)
	movq	$0, 224(%r12)
.LBB25_18:                              # %sw.bb.43
                                        #   in Loop: Header=BB25_7 Depth=2
	movq	280(%rsp), %rsi
	movq	%rsi, 416(%r12)
	movq	272(%rsp), %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jne	.LBB25_20
# BB#19:                                # %if.then.45
                                        #   in Loop: Header=BB25_7 Depth=2
	xorl	%edx, %edx
	movq	104(%rsp), %rdi         # 8-byte Reload
	callq	*528(%r12)
	movq	%rax, 272(%rsp)
.LBB25_20:                              # %if.end.50
                                        #   in Loop: Header=BB25_7 Depth=2
	movq	%rax, 424(%r12)
	movl	232(%r12), %eax
	subl	%ebp, %eax
	movl	%eax, 352(%r12)
	movq	456(%r12), %rax
	movq	1760(%rax), %rcx
	movl	$gx_dc_type_data_pure, %edx
	cmpq	%rdx, (%rcx)
	leaq	128(%rsp), %rbx
	je	.LBB25_22
# BB#21:                                #   in Loop: Header=BB25_7 Depth=2
	xorl	%eax, %eax
	jmp	.LBB25_23
	.align	16, 0x90
.LBB25_22:                              # %land.rhs
                                        #   in Loop: Header=BB25_7 Depth=2
	movl	212(%rax), %eax
	movl	$563, %ecx              # imm = 0x233
	andl	%ecx, %eax
	cmpl	$48, %eax
	sete	%al
.LBB25_23:                              # %land.end
                                        #   in Loop: Header=BB25_7 Depth=2
	movzbl	%al, %eax
	movl	%eax, 208(%r12)
	xorl	%esi, %esi
	movq	%r12, %rdi
	leaq	120(%rsp), %rdx
	leaq	260(%rsp), %rcx
	movq	%rbx, %r8
	leaq	264(%rsp), %r9
	callq	compute_glyph_raster_params
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB25_84
# BB#24:                                # %if.end.65
                                        #   in Loop: Header=BB25_7 Depth=2
	movq	288(%rsp), %rsi
	testq	%rsi, %rsi
	jne	.LBB25_27
# BB#25:                                # %if.then.67
                                        #   in Loop: Header=BB25_7 Depth=2
	cmpl	$0, 468(%r12)
	setne	%al
	movzbl	%al, %ecx
	movq	104(%rsp), %rdi         # 8-byte Reload
	movq	80(%rsp), %rsi          # 8-byte Reload
	leaq	264(%rsp), %rdx
	leaq	288(%rsp), %r8
	callq	gx_lookup_fm_pair
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB25_84
# BB#26:                                # %if.then.67.if.end.75_crit_edge
                                        #   in Loop: Header=BB25_7 Depth=2
	movq	288(%rsp), %rsi
.LBB25_27:                              # %if.end.75
                                        #   in Loop: Header=BB25_7 Depth=2
	movq	%rsi, 224(%r12)
	movq	272(%rsp), %rdx
	cmpq	$2147483647, %rdx       # imm = 0x7FFFFFFF
	je	.LBB25_58
# BB#28:                                # %cleanup.cont
                                        #   in Loop: Header=BB25_7 Depth=2
	movl	260(%rsp), %r8d
	movq	104(%rsp), %rdi         # 8-byte Reload
	movl	%r15d, %ecx
	movq	%rbx, %r9
	callq	gx_lookup_cached_char
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB25_58
# BB#29:                                # %if.end.87
                                        #   in Loop: Header=BB25_7 Depth=2
	movl	468(%r12), %eax
	testl	%eax, %eax
	jne	.LBB25_30
# BB#36:                                # %if.else.154
                                        #   in Loop: Header=BB25_7 Depth=2
	testb	$2, 1(%r12)
	jne	.LBB25_39
# BB#37:                                # %if.then.160
                                        #   in Loop: Header=BB25_7 Depth=2
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	gx_image_cached_char
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB25_84
# BB#38:                                # %if.else.165
                                        #   in Loop: Header=BB25_7 Depth=2
	jle	.LBB25_39
	jmp	.LBB25_58
	.align	16, 0x90
.LBB25_30:                              # %if.end.87
                                        #   in Loop: Header=BB25_7 Depth=2
	cmpl	$1, %eax
	je	.LBB25_39
# BB#31:                                # %if.then.96
                                        #   in Loop: Header=BB25_7 Depth=2
	movq	1680(%r14), %rdi
	leaq	120(%rsp), %rsi
	callq	gx_path_current_point
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB25_84
# BB#32:                                # %if.end.101
                                        #   in Loop: Header=BB25_7 Depth=2
	movl	120(%rsp), %eax
	movl	$128, %ecx
	addl	%ecx, %eax
	subl	96(%rbp), %eax
	andl	$-256, %eax
	movl	516(%r12), %edx
	movl	520(%r12), %r13d
	shll	$8, %edx
	addl	%eax, %edx
	movl	%edx, 72(%rsp)          # 4-byte Spill
	movl	124(%rsp), %eax
	addl	%ecx, %eax
	subl	100(%rbp), %eax
	andl	$-256, %eax
	shll	$8, %r13d
	addl	%eax, %r13d
	movzwl	8(%rbp), %r15d
	shll	$8, %r15d
	addl	%edx, %r15d
	movzwl	10(%rbp), %r14d
	shll	$8, %r14d
	addl	%r13d, %r14d
	movq	88(%rsp), %rax          # 8-byte Reload
	movq	8(%rax), %rdx
	xorl	%esi, %esi
	leaq	128(%rsp), %rbx
	movq	%rbx, %rdi
	callq	gx_path_init_local_shared
	movq	%rbx, %rdi
	movl	72(%rsp), %esi          # 4-byte Reload
	movl	%r13d, %edx
	movl	%r15d, %ecx
	movl	%r14d, %r8d
	movq	88(%rsp), %r14          # 8-byte Reload
	callq	gx_path_add_rectangle
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB25_35
# BB#33:                                # %if.end.133
                                        #   in Loop: Header=BB25_7 Depth=2
	movq	1856(%r14), %rax
	movq	1680(%rax), %rdi
	movl	468(%r12), %edx
	movq	%rbx, %rsi
	callq	gx_path_add_char_path
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB25_35
# BB#34:                                # %if.then.136
                                        #   in Loop: Header=BB25_7 Depth=2
	movq	1680(%r14), %rdi
	movl	120(%rsp), %esi
	movl	124(%rsp), %edx
	callq	gx_path_add_point
	movl	%eax, %r13d
.LBB25_35:                              # %cleanup.146
                                        #   in Loop: Header=BB25_7 Depth=2
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	callq	gx_path_free
	testl	%r13d, %r13d
	movl	60(%rsp), %r15d         # 4-byte Reload
	js	.LBB25_84
.LBB25_39:                              # %if.end.173
                                        #   in Loop: Header=BB25_7 Depth=2
	movl	$0, 584(%r12)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 568(%r12)
	testl	$65984, (%r12)          # imm = 0x101C0
	movl	88(%rbp), %ecx
	movl	92(%rbp), %eax
	je	.LBB25_41
# BB#40:                                # %if.then.182
                                        #   in Loop: Header=BB25_7 Depth=2
	movl	%ecx, 560(%r12)
	movl	%eax, 564(%r12)
	movq	%r12, %rdi
	callq	show_move
	jmp	.LBB25_42
	.align	16, 0x90
.LBB25_41:                              # %if.else.191
                                        #   in Loop: Header=BB25_7 Depth=2
	movq	1680(%r14), %rsi
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	movsd	.LCPI25_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	addsd	176(%r14), %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm2, %xmm1
	addsd	184(%r14), %xmm1
	movq	%r14, %rdi
	callq	gs_moveto_aux
.LBB25_42:                              # %if.end.194
                                        #   in Loop: Header=BB25_7 Depth=2
	movl	%eax, %r13d
	testl	%r13d, %r13d
	je	.LBB25_7
	jmp	.LBB25_84
	.align	16, 0x90
.LBB25_43:                              # %if.else.197
                                        #   in Loop: Header=BB25_6 Depth=1
	incl	236(%r12)
	movq	%r12, %rdi
	leaq	280(%rsp), %rsi
	leaq	272(%rsp), %rdx
	callq	*96(%rsp)               # 8-byte Folded Reload
	movl	%eax, %r13d
	testl	%r13d, %r13d
	leaq	128(%rsp), %rbx
	je	.LBB25_46
# BB#44:                                # %if.else.197
                                        #   in Loop: Header=BB25_6 Depth=1
	cmpl	$1, %r13d
	jne	.LBB25_9
# BB#45:                                # %sw.bb.204
                                        #   in Loop: Header=BB25_6 Depth=1
	movslq	240(%r12), %rax
	shlq	$4, %rax
	movq	248(%r12,%rax), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	%rax, 192(%r12)
	movq	%r12, %rdi
	callq	show_state_setup
	movq	$0, 288(%rsp)
.LBB25_46:                              # %sw.bb.214
                                        #   in Loop: Header=BB25_6 Depth=1
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%r12, %rdi
	leaq	260(%rsp), %rdx
	leaq	116(%rsp), %rcx
	leaq	120(%rsp), %r8
	movq	%rbx, %r9
	callq	compute_glyph_raster_params
	testl	%eax, %eax
	js	.LBB25_47
# BB#48:                                # %if.end.223
                                        #   in Loop: Header=BB25_6 Depth=1
	movq	288(%rsp), %rax
	testq	%rax, %rax
	jne	.LBB25_52
# BB#49:                                # %if.then.226
                                        #   in Loop: Header=BB25_6 Depth=1
	cmpl	$0, 468(%r12)
	setne	%al
	movzbl	%al, %ecx
	movq	104(%rsp), %rdi         # 8-byte Reload
	movq	80(%rsp), %rsi          # 8-byte Reload
	movq	%rbx, %rdx
	leaq	288(%rsp), %r8
	callq	gx_lookup_fm_pair
	testl	%eax, %eax
	js	.LBB25_50
# BB#51:                                # %if.then.226.if.end.236_crit_edge
                                        #   in Loop: Header=BB25_6 Depth=1
	movq	288(%rsp), %rax
.LBB25_52:                              # %if.end.236
                                        #   in Loop: Header=BB25_6 Depth=1
	movq	%rax, 224(%r12)
	movb	$1, %bpl
	jmp	.LBB25_53
.LBB25_47:                              #   in Loop: Header=BB25_6 Depth=1
	movl	%eax, 56(%rsp)          # 4-byte Spill
	jmp	.LBB25_53
.LBB25_50:                              #   in Loop: Header=BB25_6 Depth=1
	xorl	%ebp, %ebp
	movl	%eax, 56(%rsp)          # 4-byte Spill
	.align	16, 0x90
.LBB25_53:                              # %cleanup.238
                                        #   in Loop: Header=BB25_6 Depth=1
	testb	%bpl, %bpl
	je	.LBB25_54
# BB#55:                                # %sw.epilog.244
                                        #   in Loop: Header=BB25_6 Depth=1
	movq	280(%rsp), %rsi
	movq	%rsi, 416(%r12)
	movq	272(%rsp), %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jne	.LBB25_57
# BB#56:                                # %if.then.249
                                        #   in Loop: Header=BB25_6 Depth=1
	xorl	%edx, %edx
	movq	104(%rsp), %rdi         # 8-byte Reload
	callq	*528(%r12)
	movq	%rax, 272(%rsp)
.LBB25_57:                              # %if.end.252
                                        #   in Loop: Header=BB25_6 Depth=1
	movq	%rax, 424(%r12)
.LBB25_58:                              # %no_cache
                                        #   in Loop: Header=BB25_6 Depth=1
	movq	%r14, %rdi
	callq	gs_gsave
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB25_84
# BB#59:                                # %if.end.260
                                        #   in Loop: Header=BB25_6 Depth=1
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	%rax, 1792(%r14)
	movl	$0, 1848(%r14)
	movl	468(%r12), %eax
	movl	%eax, 1852(%r14)
	movq	472(%r12), %rax
	cmpq	%r14, %rax
	jne	.LBB25_61
# BB#60:                                # %cond.true.266
                                        #   in Loop: Header=BB25_6 Depth=1
	movq	1616(%r14), %rax
.LBB25_61:                              # %cond.end.269
                                        #   in Loop: Header=BB25_6 Depth=1
	movq	%rax, 1856(%r14)
	movl	$0, 308(%r14)
	cmpl	$0, 168(%r14)
	je	.LBB25_63
# BB#62:                                # %cond.end.287
                                        #   in Loop: Header=BB25_6 Depth=1
	movsd	176(%r14), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI25_1(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI25_2(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %r13d
	movsd	184(%r14), %xmm0        # xmm0 = mem[0],zero
	mulsd	.LCPI25_1(%rip), %xmm0
	addsd	.LCPI25_2(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %ebp
	jmp	.LBB25_64
	.align	16, 0x90
.LBB25_63:                              # %if.then.291
                                        #   in Loop: Header=BB25_6 Depth=1
	xorl	%r13d, %r13d
	movl	$-14, %ebx
	testb	$2, 1(%r12)
	movl	$0, %ebp
	je	.LBB25_83
.LBB25_64:                              # %if.end.301
                                        #   in Loop: Header=BB25_6 Depth=1
	movl	%r13d, 588(%r12)
	movl	%ebp, 592(%r12)
	xorl	%esi, %esi
	movl	$1, %edx
	movq	%r14, %rdi
	callq	gs_currentcharmatrix
	cmpl	$0, 164(%r14)
	je	.LBB25_67
# BB#65:                                # %land.lhs.true.309
                                        #   in Loop: Header=BB25_6 Depth=1
	cmpl	$0, 1840(%r14)
	je	.LBB25_67
# BB#66:                                # %if.then.313
                                        #   in Loop: Header=BB25_6 Depth=1
	subl	156(%r14), %r13d
	subl	160(%r14), %ebp
	movq	%r14, %rdi
	callq	gs_settocharmatrix
	addl	156(%r14), %r13d
	addl	160(%r14), %ebp
	jmp	.LBB25_72
	.align	16, 0x90
.LBB25_67:                              # %if.else.327
                                        #   in Loop: Header=BB25_6 Depth=1
	movss	148(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 52(%rsp)         # 4-byte Spill
	movss	152(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 72(%rsp)         # 8-byte Spill
	movq	%r14, %rdi
	callq	gs_settocharmatrix
	movss	152(%r14), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtsi2sdl	%ebp, %xmm1
	movsd	.LCPI25_0(%rip), %xmm4  # xmm4 = mem[0],zero
	mulsd	%xmm4, %xmm1
	cvtss2sd	%xmm0, %xmm0
	subsd	72(%rsp), %xmm0         # 8-byte Folded Reload
	addsd	%xmm1, %xmm0
	movl	$-13, %ebx
	movsd	.LCPI25_3(%rip), %xmm5  # xmm5 = mem[0],zero
	ucomisd	%xmm0, %xmm5
	jbe	.LBB25_83
# BB#68:                                # %if.else.327
                                        #   in Loop: Header=BB25_6 Depth=1
	movss	52(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm2
	cvtsi2sdl	%r13d, %xmm3
	mulsd	%xmm4, %xmm3
	movss	148(%r14), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	subsd	%xmm2, %xmm1
	addsd	%xmm3, %xmm1
	ucomisd	.LCPI25_4(%rip), %xmm1
	jb	.LBB25_83
# BB#69:                                # %if.else.327
                                        #   in Loop: Header=BB25_6 Depth=1
	ucomisd	%xmm1, %xmm5
	jbe	.LBB25_83
# BB#70:                                # %if.else.327
                                        #   in Loop: Header=BB25_6 Depth=1
	ucomisd	.LCPI25_4(%rip), %xmm0
	jb	.LBB25_83
# BB#71:                                # %cleanup.372.thread
                                        #   in Loop: Header=BB25_6 Depth=1
	movsd	.LCPI25_1(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %r13d
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ebp
.LBB25_72:                              # %if.end.378
                                        #   in Loop: Header=BB25_6 Depth=1
	movq	%r14, %rdi
	callq	gs_newpath
	cmpl	$0, 468(%r12)
	jne	.LBB25_76
# BB#73:                                # %if.then.i.244
                                        #   in Loop: Header=BB25_6 Depth=1
	movq	192(%r12), %rax
	movq	24(%rax), %rdi
	callq	gs_currentaligntopixels
	testl	%eax, %eax
	je	.LBB25_74
# BB#75:                                # %if.else.i
                                        #   in Loop: Header=BB25_6 Depth=1
	subl	$-128, %r13d
	andl	$-256, %r13d
	subl	$-128, %ebp
	andl	$-256, %ebp
	jmp	.LBB25_76
.LBB25_74:                              # %if.then.2.i
                                        #   in Loop: Header=BB25_6 Depth=1
	movl	212(%r12), %eax
	movl	216(%r12), %edx
	movl	$8, %ecx
	subl	%eax, %ecx
	movq	$-1, %rsi
	shlq	%cl, %rsi
	movl	$8, %ecx
	subl	%edx, %ecx
	movq	$-1, %rdi
	shlq	%cl, %rdi
	movl	$7, %ecx
	subl	%eax, %ecx
	movl	$1, %eax
	shlq	%cl, %rax
	movl	$7, %ecx
	subl	%edx, %ecx
	movl	$1, %edx
	shlq	%cl, %rdx
	addl	%r13d, %eax
	andl	%esi, %eax
	addl	%ebp, %edx
	andl	%edi, %edx
	movl	%edx, %ebp
	movl	%eax, %r13d
	.align	16, 0x90
.LBB25_76:                              # %cleanup.387
                                        #   in Loop: Header=BB25_6 Depth=1
	movq	%r14, %rdi
	movl	%r13d, %esi
	movl	%ebp, %edx
	callq	gx_translate_to_fixed
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB25_83
# BB#77:                                # %cleanup.cont.389
                                        #   in Loop: Header=BB25_6 Depth=1
	movl	$0, 608(%r12)
	movq	$continue_show_update, 616(%r12)
	movl	$0, 216(%r12)
	movl	$0, 212(%r12)
	movq	$0, 600(%r12)
	movq	280(%rsp), %rcx
	movq	272(%rsp), %r8
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	104(%rsp), %rdx         # 8-byte Reload
	callq	*264(%rdx)
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB25_83
# BB#78:                                # %if.end.400
                                        #   in Loop: Header=BB25_6 Depth=1
	jne	.LBB25_81
# BB#79:                                # %if.then.403
                                        #   in Loop: Header=BB25_6 Depth=1
	movq	%r12, %rdi
	callq	show_update
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB25_83
# BB#80:                                # %if.end.408
                                        #   in Loop: Header=BB25_6 Depth=1
	movq	%r12, %rdi
	callq	show_move
	movl	%eax, %r13d
	testl	%r13d, %r13d
	je	.LBB25_6
	jmp	.LBB25_84
.LBB25_9:                               # %for.cond
	cmpl	$2, %r13d
	jne	.LBB25_84
# BB#10:                                # %sw.bb
	movq	456(%r12), %rbp
	movl	(%r12), %eax
	testb	$48, %ah
	je	.LBB25_13
# BB#11:                                # %if.then.i
	movq	1680(%rbp), %rcx
	movq	56(%rcx), %rdx
	movq	32(%rdx), %rdx
	testq	%rdx, %rdx
	je	.LBB25_13
# BB#12:                                # %if.then.7.i
	movq	32(%rdx), %rdx
	movq	%rdx, 64(%rcx)
.LBB25_13:                              # %if.end.13.i
	cmpl	$0, 448(%r12)
	je	.LBB25_15
# BB#14:                                # %if.then.15.i
	movq	152(%r12), %rax
	movl	$.L.str.7, %esi
	movq	%r12, %rdi
	callq	*48(%rax)
	movl	(%r12), %eax
.LBB25_15:                              # %if.end.16.i
	andl	$393728, %eax           # imm = 0x60200
	xorl	%r13d, %r13d
	cmpl	$131584, %eax           # imm = 0x20200
	jne	.LBB25_84
# BB#16:                                # %if.then.20.i
	addq	$432, %r12              # imm = 0x1B0
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	gs_currentpoint
	movl	%eax, %ebx
	movq	%rbp, %rdi
	callq	gs_grestore
	movl	%eax, %r13d
	testl	%ebx, %ebx
	cmovsl	%ebx, %r13d
	jmp	.LBB25_84
.LBB25_81:                              # %if.end.413
	movl	$1, %r13d
	cmpq	$0, 536(%r12)
	jne	.LBB25_84
# BB#82:                                # %if.then.416
	movq	%r12, %rdi
	callq	show_cache_setup
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jns	.LBB25_84
.LBB25_83:                              # %rret
	movq	%r14, %rdi
	callq	gs_grestore
	movl	%ebx, %r13d
.LBB25_84:                              # %cleanup.424
	movl	%r13d, %eax
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB25_54:
	movl	56(%rsp), %r13d         # 4-byte Reload
	jmp	.LBB25_84
.Lfunc_end25:
	.size	show_proceed, .Lfunc_end25-show_proceed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI26_0:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.align	16, 0x90
	.type	show_move,@function
show_move:                              # @show_move
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp135:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp136:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp137:
	.cfi_def_cfa_offset 48
.Ltmp138:
	.cfi_offset %rbx, -24
.Ltmp139:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	456(%rbx), %r14
	movl	(%rbx), %eax
	testb	$1, %ah
	jne	.LBB26_1
# BB#3:                                 # %if.else
	xorpd	%xmm0, %xmm0
	testb	$-128, %al
	je	.LBB26_15
# BB#4:                                 # %land.lhs.true
	cmpl	$0, 348(%rbx)
	je	.LBB26_6
# BB#5:                                 # %lor.lhs.false
	cmpl	$1, 352(%rbx)
	jne	.LBB26_15
.LBB26_6:                               # %if.then.14
	movq	416(%rbx), %rdx
	movzbl	%dl, %r8d
	movslq	240(%rbx), %rdi
	testq	%rdi, %rdi
	jle	.LBB26_7
# BB#8:                                 # %if.then.i
	shlq	$4, %rdi
	movl	240(%rdi,%rbx), %esi
	movq	232(%rdi,%rbx), %rdi
	movl	376(%rdi), %edi
	leal	-4(%rdi), %ecx
	cmpl	$2, %ecx
	jae	.LBB26_9
# BB#30:                                # %sw.bb.i
	shll	$7, %esi
	jmp	.LBB26_12
.LBB26_1:                               # %if.then
	movl	236(%rbx), %esi
	decl	%esi
	leaq	8(%rsp), %rdx
	movq	%rbx, %rdi
	callq	gs_text_replaced_width
	testl	%eax, %eax
	js	.LBB26_29
# BB#2:                                 # %cleanup
	leaq	132(%r14), %rdi
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	movsd	16(%rsp), %xmm1         # xmm1 = mem[0],zero
	leaq	560(%rbx), %rsi
	callq	gs_distance_transform2fixed
	testl	%eax, %eax
	jns	.LBB26_21
	jmp	.LBB26_29
.LBB26_7:
	movq	%r8, %rdx
	jmp	.LBB26_13
.LBB26_9:                               # %if.then.i
	cmpl	$9, %edi
	jne	.LBB26_11
# BB#10:                                # %sw.bb.7.i
	cmpl	$0, 344(%rbx)
	movq	%rdx, %r8
	je	.LBB26_13
.LBB26_11:                              # %sw.default.i
	shll	$8, %esi
.LBB26_12:                              # %gx_current_char.exit
	addq	%r8, %rsi
	movq	%rsi, %rdx
.LBB26_13:                              # %gx_current_char.exit
	movslq	%edx, %rcx
	cmpq	56(%rbx), %rcx
	jne	.LBB26_15
# BB#14:                                # %if.then.19
	movupd	40(%rbx), %xmm0
.LBB26_15:                              # %if.end.26
	testb	$64, %al
	je	.LBB26_17
# BB#16:                                # %if.then.32
	movupd	24(%rbx), %xmm1
	addpd	%xmm1, %xmm0
.LBB26_17:                              # %if.end.39
	movapd	%xmm0, %xmm1
	shufpd	$1, %xmm1, %xmm1        # xmm1 = xmm1[1,0]
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm2, %xmm0
	jne	.LBB26_19
	jp	.LBB26_19
# BB#18:                                # %if.end.39
	ucomisd	%xmm2, %xmm1
	jne	.LBB26_19
	jnp	.LBB26_21
.LBB26_19:                              # %if.then.45
	leaq	132(%r14), %rdi
	leaq	8(%rsp), %rsi
	callq	gs_distance_transform2fixed
	testl	%eax, %eax
	js	.LBB26_29
# BB#20:                                # %cleanup.60.thread
	movl	8(%rsp), %eax
	addl	%eax, 560(%rbx)
	movl	12(%rsp), %eax
	addl	%eax, 564(%rbx)
.LBB26_21:                              # %if.end.68
	movl	$66048, %eax            # imm = 0x10200
	andl	(%rbx), %eax
	cmpl	$66048, %eax            # imm = 0x10200
	je	.LBB26_28
# BB#22:                                # %if.end.75
	cmpl	$0, 584(%rbx)
	movq	1680(%r14), %rsi
	movsd	176(%r14), %xmm0        # xmm0 = mem[0],zero
	movsd	184(%r14), %xmm1        # xmm1 = mem[0],zero
	movl	560(%rbx), %ecx
	movl	564(%rbx), %eax
	je	.LBB26_24
# BB#23:                                # %if.then.78
	addsd	568(%rbx), %xmm0
	cvtsi2sdl	%ecx, %xmm2
	movsd	.LCPI26_0(%rip), %xmm4  # xmm4 = mem[0],zero
	mulsd	%xmm4, %xmm2
	addsd	%xmm0, %xmm2
	addsd	576(%rbx), %xmm1
	cvtsi2sdl	%eax, %xmm3
	mulsd	%xmm4, %xmm3
	addsd	%xmm1, %xmm3
	movq	%r14, %rdi
	movapd	%xmm2, %xmm0
	movapd	%xmm3, %xmm1
	jmp	.LBB26_25
.LBB26_24:                              # %if.else.97
	cvtsi2sdl	%ecx, %xmm2
	movsd	.LCPI26_0(%rip), %xmm3  # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movq	%r14, %rdi
.LBB26_25:                              # %if.end.100
	callq	gs_moveto_aux
	testl	%eax, %eax
	js	.LBB26_29
# BB#26:                                # %cleanup.cont.107
	xorl	%eax, %eax
	testb	$1, 2(%rbx)
	je	.LBB26_29
# BB#27:                                # %land.lhs.true.113
	movl	232(%rbx), %ecx
	cmpl	16(%rbx), %ecx
	jae	.LBB26_29
.LBB26_28:                              # %if.then.117
	movq	$continue_kshow, 616(%rbx)
	movl	$2, %eax
.LBB26_29:                              # %cleanup.120
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end26:
	.size	show_move, .Lfunc_end26-show_move
	.cfi_endproc

	.align	16, 0x90
	.type	continue_show_update,@function
continue_show_update:                   # @continue_show_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp140:
	.cfi_def_cfa_offset 16
.Ltmp141:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	show_update
	testl	%eax, %eax
	js	.LBB27_2
# BB#1:                                 # %if.end
	movq	%rbx, %rdi
	callq	show_move
	testl	%eax, %eax
	je	.LBB27_3
.LBB27_2:                               # %cleanup
	popq	%rbx
	retq
.LBB27_3:                               # %if.end.4
	movq	%rbx, %rdi
	popq	%rbx
	jmp	show_proceed            # TAILCALL
.Lfunc_end27:
	.size	continue_show_update, .Lfunc_end27-continue_show_update
	.cfi_endproc

	.align	16, 0x90
	.type	show_update,@function
show_update:                            # @show_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp142:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp143:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp144:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp145:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp146:
	.cfi_def_cfa_offset 48
.Ltmp147:
	.cfi_offset %rbx, -40
.Ltmp148:
	.cfi_offset %r12, -32
.Ltmp149:
	.cfi_offset %r14, -24
.Ltmp150:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	456(%rbx), %r14
	movl	608(%rbx), %eax
	cmpq	$4, %rax
	ja	.LBB28_14
# BB#1:                                 # %entry
	movq	600(%rbx), %r15
	jmpq	*.LJTI28_0(,%rax,8)
.LBB28_13:                              # %sw.bb
	movl	$0, 564(%rbx)
	movl	$0, 560(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 568(%rbx)
	movl	$0, 584(%rbx)
.LBB28_14:                              # %sw.epilog.49
	cmpl	$0, 468(%rbx)
	je	.LBB28_16
# BB#15:                                # %if.then.53
	movq	1856(%r14), %rax
	movq	1680(%rax), %rdi
	movl	588(%rbx), %esi
	movl	592(%rbx), %edx
	callq	gx_path_add_point
	testl	%eax, %eax
	js	.LBB28_17
.LBB28_16:                              # %if.end.62
	movq	%r14, %rdi
	callq	gs_grestore
.LBB28_17:                              # %cleanup.64
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB28_2:                               # %sw.bb.7
	movl	1864(%r14), %eax
	subl	464(%rbx), %eax
	cmpl	$1, %eax
	je	.LBB28_6
# BB#3:                                 # %sw.bb.7
	cmpl	$2, %eax
	jne	.LBB28_4
# BB#5:                                 # %sw.bb.10
	movq	%r14, %rdi
	callq	gs_grestore
	testl	%eax, %eax
	js	.LBB28_17
.LBB28_6:                               # %sw.epilog
	movq	1792(%r14), %rdi
	leaq	1808(%r14), %rsi
	leaq	212(%rbx), %r12
	cmpl	$0, 468(%rbx)
	setne	%al
	movzbl	%al, %ecx
	leaq	(%rsp), %r8
	movq	%r12, %rdx
	callq	gx_lookup_fm_pair
	testl	%eax, %eax
	js	.LBB28_17
# BB#7:                                 # %cleanup
	movq	1792(%r14), %rax
	movq	24(%rax), %rdi
	movq	536(%rbx), %rsi
	movq	(%rsp), %rcx
	movq	%r15, %rdx
	movq	%r12, %r8
	callq	gx_add_cached_char
	testl	%eax, %eax
	js	.LBB28_17
# BB#8:                                 # %cleanup.cont
	testb	$10, 1(%rbx)
	jne	.LBB28_14
# BB#9:                                 # %lor.lhs.false
	cmpl	$0, 468(%rbx)
	jne	.LBB28_14
.LBB28_10:                              # %sw.bb.33
	movq	%r14, %rdi
	callq	gs_grestore
	testl	%eax, %eax
	js	.LBB28_17
# BB#11:                                # %if.end.38
	movq	1760(%r14), %rdi
	movq	1872(%r14), %rdx
	movq	(%rdi), %rax
	xorl	%ecx, %ecx
	movq	%r14, %rsi
	callq	*32(%rax)
	testl	%eax, %eax
	js	.LBB28_17
# BB#12:                                # %if.end.46
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	gx_image_cached_char
	jmp	.LBB28_17
.LBB28_4:                               # %sw.default
	movq	112(%rbx), %rax
	movq	24(%rax), %rdi
	movq	%r15, %rsi
	callq	gx_free_cached_char
	movl	$-10, %eax
	jmp	.LBB28_17
.Lfunc_end28:
	.size	show_update, .Lfunc_end28-show_update
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI28_0:
	.quad	.LBB28_13
	.quad	.LBB28_2
	.quad	.LBB28_14
	.quad	.LBB28_10
	.quad	.LBB28_13

	.text
	.align	16, 0x90
	.type	continue_kshow,@function
continue_kshow:                         # @continue_kshow
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp151:
	.cfi_def_cfa_offset 16
.Ltmp152:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	112(%rbx), %rsi
	movq	456(%rbx), %rdi
	cmpq	%rsi, 1792(%rdi)
	je	.LBB29_2
# BB#1:                                 # %if.then
	callq	gs_setfont
.LBB29_2:                               # %if.end
	movq	%rbx, %rdi
	callq	show_state_setup
	testl	%eax, %eax
	js	.LBB29_3
# BB#4:                                 # %if.end.6
	movq	%rbx, %rdi
	popq	%rbx
	jmp	show_proceed            # TAILCALL
.LBB29_3:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end29:
	.size	continue_kshow, .Lfunc_end29-continue_kshow
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_show_enum"
	.size	.L.str, 13

	.type	st_gs_show_enum,@object # @st_gs_show_enum
	.section	.rodata,"a",@progbits
	.globl	st_gs_show_enum
	.align	8
st_gs_show_enum:
	.long	624                     # 0x270
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	show_enum_enum_ptrs
	.quad	show_enum_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_gs_show_enum, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gx_default_text_begin"
	.size	.L.str.1, 22

	.type	default_text_procs,@object # @default_text_procs
	.section	.rodata,"a",@progbits
	.align	8
default_text_procs:
	.quad	gx_show_text_resync
	.quad	gx_show_text_process
	.quad	gx_show_text_is_width_only
	.quad	gx_show_text_current_width
	.quad	gx_show_text_set_cache
	.quad	gx_show_text_retry
	.quad	gx_show_text_release
	.size	default_text_procs, 56

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"stringwidth(dev_null)"
	.size	.L.str.2, 22

	.type	set_cache_device.max_cdim,@object # @set_cache_device.max_cdim
	.section	.rodata,"a",@progbits
	.align	4
set_cache_device.max_cdim:
	.long	16776448                # 0xfffd00
	.long	8388224                 # 0x7ffe80
	.long	4194112                 # 0x3fff40
	.size	set_cache_device.max_cdim, 12

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"set_cache_device"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"show_cache_setup(dev_cache)"
	.size	.L.str.4, 28

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"show_cache_setup(dev_cache2)"
	.size	.L.str.5, 29

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"show_proceed(box path)"
	.size	.L.str.6, 23

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"show_finish"
	.size	.L.str.7, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
