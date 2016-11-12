	.text
	.file	"gdevescv.bc"
	.align	16, 0x90
	.type	device_escv_enum_ptrs,@function
device_escv_enum_ptrs:                  # @device_escv_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$st_device_vector, %r9d
	jmpq	*st_device_vector+32(%rip) # TAILCALL
.Lfunc_end0:
	.size	device_escv_enum_ptrs, .Lfunc_end0-device_escv_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	device_escv_reloc_ptrs,@function
device_escv_reloc_ptrs:                 # @device_escv_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$st_device_vector, %edx
	jmpq	*st_device_vector+40(%rip) # TAILCALL
.Lfunc_end1:
	.size	device_escv_reloc_ptrs, .Lfunc_end1-device_escv_reloc_ptrs
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	-4599203600562549993    # double -14.173228346456694
.LCPI2_1:
	.quad	4634766966517661696     # double 72
.LCPI2_2:
	.quad	4648488871632306176     # double 600
	.text
	.align	16, 0x90
	.type	escv_open,@function
escv_open:                              # @escv_open
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cvttss2si	856(%rbx), %edx
	cvttss2si	860(%rbx), %esi
	cvttss2si	884(%rbx), %eax
	cvttss2si	888(%rbx), %ecx
	cmpl	%esi, %edx
	jle	.LBB2_1
# BB#2:                                 # %if.else.i
	addl	$-415, %edx             # imm = 0xFFFFFFFFFFFFFE61
	addl	$-274, %esi             # imm = 0xFFFFFFFFFFFFFEEE
	cmpl	$664, %esi              # imm = 0x298
	seta	%sil
	cmpl	$959, %edx              # imm = 0x3BF
	jmp	.LBB2_3
.LBB2_1:                                # %if.then.i
	addl	$-274, %edx             # imm = 0xFFFFFFFFFFFFFEEE
	addl	$-415, %esi             # imm = 0xFFFFFFFFFFFFFE61
	cmpl	$959, %esi              # imm = 0x3BF
	seta	%sil
	cmpl	$664, %edx              # imm = 0x298
.LBB2_3:                                # %if.else.i
	seta	%dl
	cmpl	%ecx, %eax
	setne	%cl
	addl	$-60, %eax
	cmpl	$1140, %eax             # imm = 0x474
	movl	$-15, %eax
	ja	.LBB2_11
# BB#4:                                 # %if.else.i
	orb	%sil, %dl
	orb	%cl, %dl
	jne	.LBB2_11
# BB#5:                                 # %if.end
	movq	24(%rbx), %rax
	movq	%rax, 1728(%rbx)
	movq	$escv_vector_procs, 1736(%rbx)
	movl	$512, %esi              # imm = 0x200
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	gdev_vector_open_file_options
	testl	%eax, %eax
	js	.LBB2_11
# BB#6:                                 # %if.end.4
	movq	%rbx, %rdi
	callq	gdev_vector_init
	movl	$1, 8908(%rbx)
	xorl	%eax, %eax
	cmpl	$0, 8896(%rbx)
	je	.LBB2_11
# BB#7:                                 # %if.then.5
	movl	832(%rbx), %ecx
	subl	836(%rbx), %ecx
	cmpl	$0, 8848(%rbx)
	je	.LBB2_8
# BB#9:                                 # %if.else
	imull	$600, %ecx, %ecx        # imm = 0x258
	cvtsi2ssl	%ecx, %xmm0
	divss	884(%rbx), %xmm0
	jmp	.LBB2_10
.LBB2_8:                                # %if.then.7
	cvtsi2sdl	%ecx, %xmm0
	movss	884(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	.LCPI2_0(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	divsd	.LCPI2_1(%rip), %xmm2
	addsd	%xmm0, %xmm2
	mulsd	.LCPI2_2(%rip), %xmm2
	divsd	%xmm1, %xmm2
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm2, %xmm0
.LBB2_10:                               # %if.end.29
	movss	%xmm0, 904(%rbx)
	movl	856(%rbx), %ecx
	movl	860(%rbx), %edx
	movl	%edx, 856(%rbx)
	movl	%ecx, 860(%rbx)
.LBB2_11:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end2:
	.size	escv_open, .Lfunc_end2-escv_open
	.cfi_endproc

	.align	16, 0x90
	.type	escv_output_page,@function
escv_output_page:                       # @escv_output_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 32
.Ltmp5:
	.cfi_offset %rbx, -24
.Ltmp6:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	callq	gdev_vector_stream
	movq	%rax, %r14
	movl	$.L.str.195, %edi
	callq	strlen
	leaq	4(%rsp), %rcx
	movl	$.L.str.195, %esi
	movq	%r14, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	%r14, %rdi
	callq	*208(%r14)
	movl	$0, 8816(%rbx)
	movl	$0, 8908(%rbx)
	movq	%rbx, %rdi
	callq	gdev_vector_reset
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	escv_output_page, .Lfunc_end3-escv_output_page
	.cfi_endproc

	.align	16, 0x90
	.type	escv_close,@function
escv_close:                             # @escv_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	5840(%rbx), %rdi
	movl	$.L.str.196, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	%rbx, %rdi
	callq	gdev_vector_close_file
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end4:
	.size	escv_close, .Lfunc_end4-escv_close
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_0:
	.long	1150681088              # float 1200
.LCPI5_1:
	.long	1142292480              # float 600
	.text
	.align	16, 0x90
	.type	escv_copy_mono,@function
escv_copy_mono:                         # @escv_copy_mono
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp12:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp13:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 56
	subq	$1512, %rsp             # imm = 0x5E8
.Ltmp15:
	.cfi_def_cfa_offset 1568
.Ltmp16:
	.cfi_offset %rbx, -56
.Ltmp17:
	.cfi_offset %r12, -48
.Ltmp18:
	.cfi_offset %r13, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
.Ltmp21:
	.cfi_offset %rbp, -16
	movl	%r9d, 40(%rsp)          # 4-byte Spill
	movq	%r8, %r14
	movl	%ecx, %r12d
	movl	%edx, %ebx
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	movq	%rsi, %r13
	movq	%rdi, %rbp
	movq	1592(%rsp), %r15
	callq	gdev_vector_stream
	movq	%rax, 56(%rsp)          # 8-byte Spill
	testl	%ebx, %ebx
	movq	%r15, %rbx
	movq	%rbp, %r15
	movq	1600(%rsp), %rbp
	jne	.LBB5_5
# BB#1:                                 # %entry
	testq	%r14, %r14
	je	.LBB5_5
# BB#2:                                 # %entry
	cmpq	$-1, %rbx
	jne	.LBB5_5
# BB#3:                                 # %entry
	cmpq	$-1, %rbp
	je	.LBB5_5
# BB#4:                                 # %if.then
	movq	%rbp, 72(%rsp)
	movq	gx_dc_type_pure(%rip), %rax
	movq	%rax, 64(%rsp)
	leaq	64(%rsp), %rdx
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	escv_setfillcolor
.LBB5_5:                                # %if.end
	cmpq	$-1, %rbx
	je	.LBB5_6
# BB#17:                                # %if.else.36
	cmpq	$-1, %rbp
	je	.LBB5_18
# BB#22:                                # %if.else.50
	movl	8928(%r15), %eax
	cmpq	%rbp, 8840(%r15)
	jne	.LBB5_27
# BB#23:                                # %if.then.52
	testl	%eax, %eax
	je	.LBB5_32
# BB#24:                                # %if.then.55
	cmpl	$0, 8848(%r15)
	je	.LBB5_26
# BB#25:                                # %if.else.59
	movl	$.L.str.233, %edi
	callq	strlen
	leaq	64(%rsp), %rcx
	movl	$.L.str.233, %esi
	movq	56(%rsp), %rdi          # 8-byte Reload
	movl	%eax, %edx
	callq	sputs
.LBB5_26:                               # %if.end.61
	movl	$0, 8928(%r15)
	jmp	.LBB5_32
.LBB5_6:                                # %if.then.8
	cmpq	$-1, %rbp
	je	.LBB5_48
# BB#7:                                 # %if.end.11
	cmpl	$1, 8928(%r15)
	jne	.LBB5_9
# BB#8:
	movq	%rbp, %rbx
	jmp	.LBB5_32
.LBB5_18:                               # %if.then.38
	cmpl	$1, 8928(%r15)
	je	.LBB5_32
# BB#19:                                # %if.then.41
	cmpl	$0, 8848(%r15)
	je	.LBB5_21
# BB#20:                                # %if.else.45
	movl	$.L.str.232, %edi
	callq	strlen
	leaq	64(%rsp), %rcx
	movl	$.L.str.232, %esi
	movq	56(%rsp), %rdi          # 8-byte Reload
	movl	%eax, %edx
	callq	sputs
.LBB5_21:                               # %if.end.47
	movl	$1, 8928(%r15)
	jmp	.LBB5_32
.LBB5_27:                               # %if.else.64
	cmpl	$1, %eax
	je	.LBB5_31
# BB#28:                                # %if.then.67
	cmpl	$0, 8848(%r15)
	je	.LBB5_30
# BB#29:                                # %if.else.71
	movl	$.L.str.232, %edi
	callq	strlen
	leaq	64(%rsp), %rcx
	movl	$.L.str.232, %esi
	movq	56(%rsp), %rdi          # 8-byte Reload
	movl	%eax, %edx
	callq	sputs
.LBB5_30:                               # %if.end.73
	movl	$1, 8928(%r15)
.LBB5_31:                               # %if.end.82
	movq	%rbp, 864(%rsp)
	movq	gx_dc_type_pure(%rip), %rax
	movq	%rax, 856(%rsp)
	xorl	%ebx, %ebx
	leaq	856(%rsp), %rdx
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	gdev_vector_update_fill_color
	testl	%eax, %eax
	jns	.LBB5_32
	jmp	.LBB5_48
.LBB5_9:                                # %if.then.13
	cmpl	$0, 8848(%r15)
	je	.LBB5_10
# BB#16:                                # %if.else.31
	movl	$.L.str.231, %edi
	callq	strlen
	leaq	64(%rsp), %rcx
	movl	$.L.str.231, %esi
	movq	56(%rsp), %rdi          # 8-byte Reload
	movl	%eax, %edx
	callq	sputs
	movl	$1, 8928(%r15)
	movq	%rbp, %rbx
	jmp	.LBB5_32
.LBB5_10:                               # %if.then.15
	movq	%rbp, %r14
	leaq	720(%rsp), %rbp
	movl	$.L.str.230, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	gs_sprintf
	movq	%rbp, %rdi
	callq	strlen
	leaq	64(%rsp), %rcx
	movq	56(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	sputs
	movss	884(%r15), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI5_0(%rip), %xmm0
	jne	.LBB5_13
	jp	.LBB5_13
# BB#11:                                # %if.then.20
	movl	$.L.str.114, %edi
	callq	strlen
	leaq	64(%rsp), %rcx
	movl	$.L.str.114, %esi
	jmp	.LBB5_12
.LBB5_13:                               # %if.else
	ucomiss	.LCPI5_1(%rip), %xmm0
	jne	.LBB5_15
	jp	.LBB5_15
# BB#14:                                # %if.then.25
	movl	$.L.str.118, %edi
	callq	strlen
	leaq	64(%rsp), %rcx
	movl	$.L.str.118, %esi
	jmp	.LBB5_12
.LBB5_15:                               # %if.else.27
	movl	$.L.str.121, %edi
	callq	strlen
	leaq	64(%rsp), %rcx
	movl	$.L.str.121, %esi
.LBB5_12:                               # %if.end.85
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$1, 8928(%r15)
	movq	%r14, %rbx
.LBB5_32:                               # %if.end.85
	movl	1584(%rsp), %r14d
	movl	1568(%rsp), %ecx
	cmpl	$0, 8848(%r15)
	je	.LBB5_34
# BB#33:                                # %if.else.89
	movl	%ebx, %eax
	shrl	$16, %eax
	movzbl	%al, %edx
	movzbl	%bh, %ecx  # NOREX
	movzbl	%bl, %r8d
	leaq	720(%rsp), %rbp
	movl	$.L.str.174, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	gs_sprintf
	movq	%rbp, %rdi
	callq	strlen
	leaq	64(%rsp), %rcx
	movq	%r15, 32(%rsp)          # 8-byte Spill
	movq	56(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.234, %edi
	callq	strlen
	leaq	64(%rsp), %rcx
	movl	$.L.str.234, %esi
	movq	%rbx, %rdi
	movq	32(%rsp), %r15          # 8-byte Reload
	movl	%eax, %edx
	callq	sputs
	movl	1568(%rsp), %ecx
.LBB5_34:                               # %if.end.103
	movl	%r14d, 8(%rsp)
	movl	1576(%rsp), %ebp
	movl	%ebp, (%rsp)
	movl	$0, 16(%rsp)
	movl	$1, %esi
	movq	%r15, %rdi
	movl	40(%rsp), %edx          # 4-byte Reload
	movl	%ebp, %r8d
	movl	%r14d, %r9d
	callq	escv_write_begin
	movq	%r15, %rax
	leal	7(%rbp), %r15d
	sarl	$3, %r15d
	movl	%r15d, %esi
	imull	%r14d, %esi
	movl	%esi, 28(%rsp)          # 4-byte Spill
	movq	24(%rax), %rdi
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	$.L.str.235, %edx
	callq	*64(%rdi)
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	48(%rsp), %rdx          # 8-byte Reload
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%rdx), %ecx
	andl	$-8, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	je	.LBB5_44
# BB#35:                                # %for.cond.122.preheader
	testl	%r14d, %r14d
	jle	.LBB5_47
# BB#36:                                # %for.cond.126.preheader.lr.ph
	sarl	$3, %edx
	movslq	%edx, %rcx
	leaq	(%r13,%rcx), %r10
	movl	$8, %edx
	subl	%eax, %edx
	movl	%r15d, %r11d
	andl	$1, %r11d
	leaq	2(%r13,%rcx), %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	56(%rsp), %rcx          # 8-byte Reload
	incq	%rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	xorl	%r9d, %r9d
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB5_37:                               # %for.cond.126.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_42 Depth 2
	testl	%r15d, %r15d
	movl	%r9d, %r9d
	je	.LBB5_43
# BB#38:                                # %for.body.129.lr.ph
                                        #   in Loop: Header=BB5_37 Depth=1
	movl	%r13d, %esi
	imull	%r15d, %esi
	testl	%r11d, %r11d
	movl	$0, %ecx
	je	.LBB5_40
# BB#39:                                # %for.body.129.prol
                                        #   in Loop: Header=BB5_37 Depth=1
	movl	%r13d, %ecx
	imull	%r12d, %ecx
	movslq	%ecx, %r8
	movl	%r12d, %edi
	movzbl	(%r10,%r8), %r12d
	movb	%al, %cl
	shll	%cl, %r12d
	movzbl	1(%r10,%r8), %ebp
	movb	%dl, %cl
	shrl	%cl, %ebp
	orl	%r12d, %ebp
	movl	%edi, %r12d
	movq	56(%rsp), %rcx          # 8-byte Reload
	movb	%bpl, (%rcx,%rsi)
	movl	$1, %ecx
.LBB5_40:                               # %for.body.129.lr.ph.split
                                        #   in Loop: Header=BB5_37 Depth=1
	cmpl	$1, %r15d
	je	.LBB5_43
# BB#41:                                # %for.body.129.lr.ph.split.split
                                        #   in Loop: Header=BB5_37 Depth=1
	movslq	%r14d, %rsi
	movl	%r15d, %ebp
	subl	%ecx, %ebp
	leaq	(%rsi,%rcx), %rsi
	movq	48(%rsp), %rdi          # 8-byte Reload
	leaq	(%rsi,%rdi), %rsi
	addq	%r9, %rcx
	movq	40(%rsp), %rdi          # 8-byte Reload
	leaq	(%rcx,%rdi), %r8
	.align	16, 0x90
.LBB5_42:                               # %for.body.129
                                        #   Parent Loop BB5_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-2(%rsi), %edi
	movb	%al, %cl
	shll	%cl, %edi
	movzbl	-1(%rsi), %ebx
	movb	%dl, %cl
	shrl	%cl, %ebx
	orl	%edi, %ebx
	movb	%bl, -1(%r8)
	movzbl	-1(%rsi), %edi
	movb	%al, %cl
	shll	%cl, %edi
	movzbl	(%rsi), %ebx
	movb	%dl, %cl
	shrl	%cl, %ebx
	orl	%edi, %ebx
	movb	%bl, (%r8)
	addq	$2, %rsi
	addq	$2, %r8
	addl	$-2, %ebp
	jne	.LBB5_42
.LBB5_43:                               # %for.inc.161
                                        #   in Loop: Header=BB5_37 Depth=1
	incq	%r13
	addl	%r12d, %r14d
	addl	%r15d, %r9d
	cmpl	1584(%rsp), %r13d
	jne	.LBB5_37
	jmp	.LBB5_47
.LBB5_44:                               # %for.cond.preheader
	testl	%r14d, %r14d
	jle	.LBB5_47
# BB#45:                                # %for.body.lr.ph
	sarl	$3, %edx
	movl	%r15d, %r14d
	movslq	%edx, %rax
	addq	%rax, %r13
	movslq	%r12d, %rbp
	xorl	%ebx, %ebx
	movl	1584(%rsp), %r12d
	.align	16, 0x90
.LBB5_46:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %eax
	movq	56(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	memcpy
	addl	%r15d, %ebx
	addq	%rbp, %r13
	decl	%r12d
	jne	.LBB5_46
.LBB5_47:                               # %if.end.164
	movl	$1, %esi
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movq	56(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdx
	movl	28(%rsp), %ecx          # 4-byte Reload
	movl	1576(%rsp), %r8d
	movl	1584(%rsp), %r9d
	callq	escv_write_data
	movq	24(%rbx), %rdi
	movl	$.L.str.235, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	escv_write_end
.LBB5_48:                               # %cleanup
	xorl	%eax, %eax
	addq	$1512, %rsp             # imm = 0x5E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	escv_copy_mono, .Lfunc_end5-escv_copy_mono
	.cfi_endproc

	.align	16, 0x90
	.type	escv_copy_color,@function
escv_copy_color:                        # @escv_copy_color
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
	subq	$72, %rsp
.Ltmp28:
	.cfi_def_cfa_offset 128
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
	movl	%r9d, %r13d
	movl	%ecx, 40(%rsp)          # 4-byte Spill
	movl	%edx, 36(%rsp)          # 4-byte Spill
	movq	%rsi, %rbp
	movq	%rdi, %r15
	movl	136(%rsp), %r8d
	movl	128(%rsp), %ecx
	movzwl	108(%r15), %r14d
	cmpl	$23, %r14d
	seta	%al
	movzbl	%al, %eax
	leal	1(%rax,%rax), %r12d
	imull	%r8d, %r12d
	cmpl	$0, 8928(%r15)
	je	.LBB6_4
# BB#1:                                 # %if.then
	cmpl	$0, 8848(%r15)
	je	.LBB6_3
# BB#2:                                 # %if.else
	movq	%r15, %rdi
	callq	gdev_vector_stream
	movl	%r12d, %ebx
	movq	%rax, %r12
	movl	$.L.str.233, %edi
	callq	strlen
	leaq	68(%rsp), %rcx
	movl	$.L.str.233, %esi
	movq	%r12, %rdi
	movl	%ebx, %r12d
	movl	%eax, %edx
	callq	sputs
	movl	128(%rsp), %ecx
	movl	136(%rsp), %r8d
.LBB6_3:                                # %if.end
	movl	$0, 8928(%r15)
.LBB6_4:                                # %if.end.10
	movl	%r12d, 64(%rsp)         # 4-byte Spill
	movl	144(%rsp), %ebx
	movl	%ebx, 8(%rsp)
	movl	%r8d, (%rsp)
	movl	$0, 16(%rsp)
	movq	%r15, %rdi
	movl	%r14d, %esi
	movl	%r14d, 60(%rsp)         # 4-byte Spill
	movl	%r13d, %edx
	movl	%ebx, %r9d
	callq	escv_write_begin
	movl	%r12d, %esi
	imull	%ebx, %esi
	movl	%esi, 44(%rsp)          # 4-byte Spill
	movq	24(%r15), %rdi
	movq	%r15, 48(%rsp)          # 8-byte Spill
	movl	$.L.str.255, %edx
	callq	*64(%rdi)
	movq	%rax, %r15
	testl	%ebx, %ebx
	jle	.LBB6_7
# BB#5:                                 # %for.body.lr.ph
	movl	36(%rsp), %ecx          # 4-byte Reload
	imull	60(%rsp), %ecx          # 4-byte Folded Reload
	sarl	$3, %ecx
	movl	64(%rsp), %r12d         # 4-byte Reload
	movslq	%ecx, %rcx
	addq	%rcx, %rbp
	movslq	40(%rsp), %r13          # 4-byte Folded Reload
	xorl	%ebx, %ebx
	movl	144(%rsp), %r14d
	.align	16, 0x90
.LBB6_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ecx
	leaq	(%rcx,%r15), %rdi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	callq	memcpy
	addl	64(%rsp), %ebx          # 4-byte Folded Reload
	addq	%r13, %rbp
	decl	%r14d
	jne	.LBB6_6
.LBB6_7:                                # %for.end
	movq	48(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movl	60(%rsp), %ebp          # 4-byte Reload
	movl	%ebp, %esi
	movq	%r15, %rdx
	movl	44(%rsp), %ecx          # 4-byte Reload
	movl	136(%rsp), %r8d
	movl	144(%rsp), %r9d
	callq	escv_write_data
	movq	24(%rbx), %rdi
	movl	$.L.str.255, %edx
	movq	%r15, %rsi
	callq	*24(%rdi)
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	escv_write_end
	xorl	%eax, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	escv_copy_color, .Lfunc_end6-escv_copy_color
	.cfi_endproc

	.align	16, 0x90
	.type	escv_get_params,@function
escv_get_params:                        # @escv_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp37:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp39:
	.cfi_def_cfa_offset 48
.Ltmp40:
	.cfi_offset %rbx, -40
.Ltmp41:
	.cfi_offset %r14, -32
.Ltmp42:
	.cfi_offset %r15, -24
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	gdev_vector_get_params
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB7_2
# BB#1:                                 # %if.end
	leaq	18632(%r15), %rdx
	movl	$.L.str.197, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	leaq	18636(%r15), %rdx
	movl	$.L.str.198, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	leaq	18640(%r15), %rdx
	movl	$.L.str.199, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	leaq	18644(%r15), %rdx
	movl	$.L.str.200, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	leaq	8852(%r15), %rdx
	movl	$.L.str.201, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	leaq	8856(%r15), %rdx
	movl	$.L.str.202, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	leaq	8860(%r15), %rdx
	movl	$.L.str.203, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	leaq	8864(%r15), %rdx
	movl	$.L.str.204, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	leaq	8868(%r15), %rdx
	movl	$.L.str.205, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	leaq	8896(%r15), %rdx
	movl	$.L.str.206, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	movl	%eax, %ebp
	leaq	8872(%r15), %rdx
	movl	$.L.str.207, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	orl	%ebp, %eax
	cmovsl	%ebp, %ebx
	leaq	8912(%r15), %rdx
	movl	$.L.str.208, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	leaq	8916(%r15), %rdx
	movl	$.L.str.209, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	leaq	8900(%r15), %rdx
	movl	$.L.str.210, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	leaq	8904(%r15), %rdx
	movl	$.L.str.211, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	leaq	18552(%r15), %rdx
	movl	$.L.str.212, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	leaq	18568(%r15), %rdx
	movl	$.L.str.213, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	leaq	18584(%r15), %rdx
	movl	$.L.str.214, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	leaq	18600(%r15), %rdx
	movl	$.L.str.215, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	cmovsl	%eax, %ebx
	addq	$18616, %r15            # imm = 0x48B8
	movl	$.L.str.216, %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	param_write_string
	testl	%eax, %eax
	cmovsl	%eax, %ebx
.LBB7_2:                                # %cleanup
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	escv_get_params, .Lfunc_end7-escv_get_params
	.cfi_endproc

	.align	16, 0x90
	.type	escv_put_params,@function
escv_put_params:                        # @escv_put_params
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
	subq	$104, %rsp
.Ltmp50:
	.cfi_def_cfa_offset 160
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	8852(%r14), %eax
	movl	%eax, 68(%rsp)
	movl	8856(%r14), %eax
	movl	%eax, 64(%rsp)
	movl	8916(%r14), %eax
	movl	%eax, 60(%rsp)
	movl	8864(%r14), %eax
	movl	%eax, 56(%rsp)
	movl	8868(%r14), %eax
	movl	%eax, 52(%rsp)
	movl	8872(%r14), %eax
	movl	%eax, 48(%rsp)
	movl	8896(%r14), %eax
	movl	%eax, 44(%rsp)
	movl	8900(%r14), %eax
	movl	%eax, 40(%rsp)
	movl	8912(%r14), %eax
	movl	%eax, 36(%rsp)
	movl	8860(%r14), %eax
	movl	%eax, 32(%rsp)
	movzwl	108(%r14), %r13d
	movl	$0, 28(%rsp)
	movl	$0, 24(%rsp)
	movl	$0, 20(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 12(%rsp)
	leaq	88(%rsp), %rdx
	movl	$.L.str.212, %esi
	movq	%rbx, %rdi
	callq	param_read_string
	movl	%eax, %ebp
	xorl	%r15d, %r15d
	cmpl	$1, %ebp
	je	.LBB8_4
# BB#1:                                 # %entry
	testl	%ebp, %ebp
	jne	.LBB8_3
# BB#2:                                 # %sw.bb.i
	leaq	17272(%r14), %r12
	movl	96(%rsp), %eax
	cmpl	$255, %eax
	movl	$255, %ecx
	cmovbel	%eax, %ecx
	movq	88(%rsp), %rsi
	movslq	%ecx, %rbp
	movq	%r12, %rdi
	movq	%rbp, %rdx
	callq	strncpy
	movb	$0, (%r12,%rbp)
	jmp	.LBB8_4
.LBB8_3:                                # %sw.default.i
	movq	(%rbx), %rax
	movl	$.L.str.212, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB8_4:                                # %escv_set_str_param.exit
	leaq	88(%rsp), %rdx
	movl	$.L.str.213, %esi
	movq	%rbx, %rdi
	callq	param_read_string
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB8_8
# BB#5:                                 # %escv_set_str_param.exit
	testl	%ebp, %ebp
	jne	.LBB8_7
# BB#6:                                 # %sw.bb.i.376
	leaq	17528(%r14), %r12
	movl	96(%rsp), %eax
	cmpl	$255, %eax
	movl	$255, %ecx
	cmovbel	%eax, %ecx
	movq	88(%rsp), %rsi
	movslq	%ecx, %rbp
	movq	%r12, %rdi
	movq	%rbp, %rdx
	callq	strncpy
	movb	$0, (%r12,%rbp)
	jmp	.LBB8_8
.LBB8_7:                                # %sw.default.i.380
	movq	(%rbx), %rax
	movl	$.L.str.213, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB8_8:                                # %escv_set_str_param.exit382
	leaq	88(%rsp), %rdx
	movl	$.L.str.214, %esi
	movq	%rbx, %rdi
	callq	param_read_string
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB8_12
# BB#9:                                 # %escv_set_str_param.exit382
	testl	%ebp, %ebp
	jne	.LBB8_11
# BB#10:                                # %sw.bb.i.392
	leaq	17784(%r14), %r12
	movl	96(%rsp), %eax
	cmpl	$255, %eax
	movl	$255, %ecx
	cmovbel	%eax, %ecx
	movq	88(%rsp), %rsi
	movslq	%ecx, %rbp
	movq	%r12, %rdi
	movq	%rbp, %rdx
	callq	strncpy
	movb	$0, (%r12,%rbp)
	jmp	.LBB8_12
.LBB8_11:                               # %sw.default.i.396
	movq	(%rbx), %rax
	movl	$.L.str.214, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB8_12:                               # %escv_set_str_param.exit398
	leaq	88(%rsp), %rdx
	movl	$.L.str.215, %esi
	movq	%rbx, %rdi
	callq	param_read_string
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB8_16
# BB#13:                                # %escv_set_str_param.exit398
	testl	%ebp, %ebp
	jne	.LBB8_15
# BB#14:                                # %sw.bb.i.408
	leaq	18040(%r14), %r12
	movl	96(%rsp), %eax
	cmpl	$255, %eax
	movl	$255, %ecx
	cmovbel	%eax, %ecx
	movq	88(%rsp), %rsi
	movslq	%ecx, %rbp
	movq	%r12, %rdi
	movq	%rbp, %rdx
	callq	strncpy
	movb	$0, (%r12,%rbp)
	jmp	.LBB8_16
.LBB8_15:                               # %sw.default.i.412
	movq	(%rbx), %rax
	movl	$.L.str.215, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB8_16:                               # %escv_set_str_param.exit414
	leaq	88(%rsp), %rdx
	movl	$.L.str.216, %esi
	movq	%rbx, %rdi
	callq	param_read_string
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB8_20
# BB#17:                                # %escv_set_str_param.exit414
	testl	%ebp, %ebp
	jne	.LBB8_19
# BB#18:                                # %sw.bb.i.424
	leaq	18296(%r14), %r12
	movl	96(%rsp), %eax
	cmpl	$255, %eax
	movl	$255, %ecx
	cmovbel	%eax, %ecx
	movq	88(%rsp), %rsi
	movslq	%ecx, %rbp
	movq	%r12, %rdi
	movq	%rbp, %rdx
	callq	strncpy
	movb	$0, (%r12,%rbp)
	jmp	.LBB8_20
.LBB8_19:                               # %sw.default.i.428
	movq	(%rbx), %rax
	movl	$.L.str.216, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB8_20:                               # %escv_set_str_param.exit430
	movl	18632(%r14), %eax
	movl	%eax, 24(%rsp)
	leaq	24(%rsp), %rdx
	movl	$.L.str.197, %esi
	movq	%rbx, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB8_22
# BB#21:                                # %if.then
	movq	(%rbx), %rax
	movl	$.L.str.197, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB8_22:                               # %if.end
	movl	18636(%r14), %eax
	movl	%eax, 20(%rsp)
	leaq	20(%rsp), %rdx
	movl	$.L.str.198, %esi
	movq	%rbx, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB8_24
# BB#23:                                # %if.then.21
	movq	(%rbx), %rax
	movl	$.L.str.198, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB8_24:                               # %if.end.25
	movl	18640(%r14), %eax
	movl	%eax, 16(%rsp)
	leaq	16(%rsp), %rdx
	movl	$.L.str.199, %esi
	movq	%rbx, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB8_26
# BB#25:                                # %if.then.30
	movq	(%rbx), %rax
	movl	$.L.str.199, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB8_26:                               # %if.end.34
	movl	18644(%r14), %eax
	movl	%eax, 12(%rsp)
	leaq	12(%rsp), %rdx
	movl	$.L.str.200, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB8_31
# BB#27:                                # %if.end.34
	testl	%ebp, %ebp
	jne	.LBB8_30
# BB#28:                                # %sw.bb
	movl	12(%rsp), %eax
	cmpl	$600, %eax              # imm = 0x258
	je	.LBB8_31
# BB#29:                                # %sw.bb
	movl	$-13, %ebp
	cmpl	$1200, %eax             # imm = 0x4B0
	je	.LBB8_31
.LBB8_30:                               # %maxrese
	movq	(%rbx), %rax
	movl	$.L.str.200, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB8_31:                               # %sw.epilog
	leaq	68(%rsp), %rdx
	movl	$.L.str.201, %esi
	movq	%rbx, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB8_33
# BB#32:                                # %if.then.49
	movq	(%rbx), %rax
	movl	$.L.str.201, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB8_33:                               # %if.end.53
	leaq	64(%rsp), %rdx
	movl	$.L.str.202, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB8_37
# BB#34:                                # %if.end.53
	testl	%ebp, %ebp
	jne	.LBB8_36
# BB#35:                                # %sw.bb.55
	movl	64(%rsp), %eax
	incl	%eax
	movl	$-13, %ebp
	cmpl	$17, %eax
	jb	.LBB8_37
.LBB8_36:                               # %casse
	movq	(%rbx), %rax
	movl	$.L.str.202, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB8_37:                               # %sw.epilog.66
	leaq	56(%rsp), %rdx
	movl	$.L.str.204, %esi
	movq	%rbx, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB8_39
# BB#38:                                # %if.then.70
	movq	(%rbx), %rax
	movl	$.L.str.204, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB8_39:                               # %if.end.74
	leaq	32(%rsp), %rdx
	movl	$.L.str.203, %esi
	movq	%rbx, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB8_41
# BB#40:                                # %if.then.78
	movq	(%rbx), %rax
	movl	$.L.str.203, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB8_41:                               # %if.end.82
	leaq	72(%rsp), %rdx
	movl	$.L.str.211, %esi
	movq	%rbx, %rdi
	callq	param_read_string
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB8_175
# BB#42:                                # %if.end.82
	testl	%ebp, %ebp
	jne	.LBB8_174
# BB#43:                                # %sw.bb.84
	movl	$-13, %ebp
	cmpl	$32, 80(%rsp)
	ja	.LBB8_174
# BB#44:                                # %land.lhs.true.89
	movl	$.L.str.217, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	72(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB8_52
# BB#45:                                # %cond.true
	movzbl	(%rdi), %eax
	addl	$-78, %eax
	testq	%rcx, %rcx
	je	.LBB8_53
# BB#46:                                # %cond.true
	testl	%eax, %eax
	jne	.LBB8_53
# BB#47:                                # %if.then.102
	movzbl	1(%rdi), %eax
	addl	$-77, %eax
	cmpq	$2, %rcx
	jb	.LBB8_53
# BB#48:                                # %if.then.102
	testl	%eax, %eax
	jne	.LBB8_53
# BB#49:                                # %if.then.112
	movb	2(%rdi), %dl
	movzbl	%dl, %eax
	cmpq	$3, %rcx
	jb	.LBB8_53
# BB#50:                                # %if.then.112
	testb	%dl, %dl
	jne	.LBB8_53
# BB#51:                                # %if.then.122
	movzbl	3(%rdi), %eax
	jmp	.LBB8_53
.LBB8_52:                               # %cond.false
	movl	$.L.str.217, %esi
	callq	strcmp
.LBB8_53:                               # %cond.end
	testl	%eax, %eax
	je	.LBB8_54
# BB#55:                                # %land.lhs.true.142
	movl	$.L.str.218, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	72(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB8_63
# BB#56:                                # %cond.true.146
	movzbl	(%rdi), %eax
	addl	$-84, %eax
	testq	%rcx, %rcx
	je	.LBB8_64
# BB#57:                                # %cond.true.146
	testl	%eax, %eax
	jne	.LBB8_64
# BB#58:                                # %if.then.161
	movzbl	1(%rdi), %eax
	addl	$-72, %eax
	cmpq	$2, %rcx
	jb	.LBB8_64
# BB#59:                                # %if.then.161
	testl	%eax, %eax
	jne	.LBB8_64
# BB#60:                                # %if.then.171
	movzbl	2(%rdi), %eax
	addl	$-73, %eax
	cmpq	$3, %rcx
	jb	.LBB8_64
# BB#61:                                # %if.then.171
	testl	%eax, %eax
	jne	.LBB8_64
# BB#62:                                # %if.then.181
	movzbl	3(%rdi), %eax
	addl	$-67, %eax
	jmp	.LBB8_64
.LBB8_54:                               # %if.then.135
	movl	$0, 8904(%r14)
	jmp	.LBB8_177
.LBB8_63:                               # %cond.false.190
	movl	$.L.str.218, %esi
	callq	strcmp
.LBB8_64:                               # %cond.end.193
	testl	%eax, %eax
	je	.LBB8_75
# BB#65:                                # %land.lhs.true.203
	movl	$.L.str.219, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	72(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB8_73
# BB#66:                                # %cond.true.207
	movzbl	(%rdi), %eax
	addl	$-84, %eax
	testq	%rcx, %rcx
	je	.LBB8_74
# BB#67:                                # %cond.true.207
	testl	%eax, %eax
	jne	.LBB8_74
# BB#68:                                # %if.then.222
	movzbl	1(%rdi), %eax
	addl	$-72, %eax
	cmpq	$2, %rcx
	jb	.LBB8_74
# BB#69:                                # %if.then.222
	testl	%eax, %eax
	jne	.LBB8_74
# BB#70:                                # %if.then.232
	movb	2(%rdi), %dl
	movzbl	%dl, %eax
	cmpq	$3, %rcx
	jb	.LBB8_74
# BB#71:                                # %if.then.232
	testb	%dl, %dl
	jne	.LBB8_74
# BB#72:                                # %if.then.242
	movzbl	3(%rdi), %eax
	jmp	.LBB8_74
.LBB8_73:                               # %cond.false.251
	movl	$.L.str.219, %esi
	callq	strcmp
.LBB8_74:                               # %cond.end.254
	testl	%eax, %eax
	je	.LBB8_75
# BB#76:                                # %land.lhs.true.266
	movl	$.L.str.220, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	72(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB8_84
# BB#77:                                # %cond.true.270
	movzbl	(%rdi), %eax
	addl	$-84, %eax
	testq	%rcx, %rcx
	je	.LBB8_85
# BB#78:                                # %cond.true.270
	testl	%eax, %eax
	jne	.LBB8_85
# BB#79:                                # %if.then.285
	movzbl	1(%rdi), %eax
	addl	$-82, %eax
	cmpq	$2, %rcx
	jb	.LBB8_85
# BB#80:                                # %if.then.285
	testl	%eax, %eax
	jne	.LBB8_85
# BB#81:                                # %if.then.295
	movzbl	2(%rdi), %eax
	addl	$-65, %eax
	cmpq	$3, %rcx
	jb	.LBB8_85
# BB#82:                                # %if.then.295
	testl	%eax, %eax
	jne	.LBB8_85
# BB#83:                                # %if.then.305
	movzbl	3(%rdi), %eax
	addl	$-78, %eax
	jmp	.LBB8_85
.LBB8_75:                               # %if.then.258
	movl	$1, 8904(%r14)
	jmp	.LBB8_177
.LBB8_84:                               # %cond.false.314
	movl	$.L.str.220, %esi
	callq	strcmp
.LBB8_85:                               # %cond.end.317
	testl	%eax, %eax
	je	.LBB8_96
# BB#86:                                # %land.lhs.true.327
	movl	$.L.str.221, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	72(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB8_94
# BB#87:                                # %cond.true.331
	movzbl	(%rdi), %eax
	addl	$-84, %eax
	testq	%rcx, %rcx
	je	.LBB8_95
# BB#88:                                # %cond.true.331
	testl	%eax, %eax
	jne	.LBB8_95
# BB#89:                                # %if.then.346
	movzbl	1(%rdi), %eax
	addl	$-82, %eax
	cmpq	$2, %rcx
	jb	.LBB8_95
# BB#90:                                # %if.then.346
	testl	%eax, %eax
	jne	.LBB8_95
# BB#91:                                # %if.then.356
	movb	2(%rdi), %dl
	movzbl	%dl, %eax
	cmpq	$3, %rcx
	jb	.LBB8_95
# BB#92:                                # %if.then.356
	testb	%dl, %dl
	jne	.LBB8_95
# BB#93:                                # %if.then.366
	movzbl	3(%rdi), %eax
	jmp	.LBB8_95
.LBB8_94:                               # %cond.false.375
	movl	$.L.str.221, %esi
	callq	strcmp
.LBB8_95:                               # %cond.end.378
	testl	%eax, %eax
	je	.LBB8_96
# BB#97:                                # %land.lhs.true.390
	movl	$.L.str.222, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	72(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB8_105
# BB#98:                                # %cond.true.394
	movzbl	(%rdi), %eax
	addl	$-84, %eax
	testq	%rcx, %rcx
	je	.LBB8_106
# BB#99:                                # %cond.true.394
	testl	%eax, %eax
	jne	.LBB8_106
# BB#100:                               # %if.then.409
	movzbl	1(%rdi), %eax
	addl	$-78, %eax
	cmpq	$2, %rcx
	jb	.LBB8_106
# BB#101:                               # %if.then.409
	testl	%eax, %eax
	jne	.LBB8_106
# BB#102:                               # %if.then.419
	movb	2(%rdi), %dl
	movzbl	%dl, %eax
	cmpq	$3, %rcx
	jb	.LBB8_106
# BB#103:                               # %if.then.419
	testb	%dl, %dl
	jne	.LBB8_106
# BB#104:                               # %if.then.429
	movzbl	3(%rdi), %eax
	jmp	.LBB8_106
.LBB8_96:                               # %if.then.382
	movl	$2, 8904(%r14)
	jmp	.LBB8_177
.LBB8_105:                              # %cond.false.438
	movl	$.L.str.222, %esi
	callq	strcmp
.LBB8_106:                              # %cond.end.441
	testl	%eax, %eax
	je	.LBB8_107
# BB#108:                               # %land.lhs.true.453
	movl	$.L.str.223, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	72(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB8_116
# BB#109:                               # %cond.true.457
	movzbl	(%rdi), %eax
	addl	$-76, %eax
	testq	%rcx, %rcx
	je	.LBB8_117
# BB#110:                               # %cond.true.457
	testl	%eax, %eax
	jne	.LBB8_117
# BB#111:                               # %if.then.472
	movzbl	1(%rdi), %eax
	addl	$-72, %eax
	cmpq	$2, %rcx
	jb	.LBB8_117
# BB#112:                               # %if.then.472
	testl	%eax, %eax
	jne	.LBB8_117
# BB#113:                               # %if.then.482
	movb	2(%rdi), %dl
	movzbl	%dl, %eax
	cmpq	$3, %rcx
	jb	.LBB8_117
# BB#114:                               # %if.then.482
	testb	%dl, %dl
	jne	.LBB8_117
# BB#115:                               # %if.then.492
	movzbl	3(%rdi), %eax
	jmp	.LBB8_117
.LBB8_107:                              # %if.then.445
	movl	$3, 8904(%r14)
	jmp	.LBB8_177
.LBB8_116:                              # %cond.false.501
	movl	$.L.str.223, %esi
	callq	strcmp
.LBB8_117:                              # %cond.end.504
	testl	%eax, %eax
	je	.LBB8_118
# BB#119:                               # %land.lhs.true.516
	movl	$.L.str.224, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	72(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB8_127
# BB#120:                               # %cond.true.520
	movzbl	(%rdi), %eax
	addl	$-67, %eax
	testq	%rcx, %rcx
	je	.LBB8_128
# BB#121:                               # %cond.true.520
	testl	%eax, %eax
	jne	.LBB8_128
# BB#122:                               # %if.then.535
	movzbl	1(%rdi), %eax
	addl	$-84, %eax
	cmpq	$2, %rcx
	jb	.LBB8_128
# BB#123:                               # %if.then.535
	testl	%eax, %eax
	jne	.LBB8_128
# BB#124:                               # %if.then.545
	movb	2(%rdi), %dl
	movzbl	%dl, %eax
	cmpq	$3, %rcx
	jb	.LBB8_128
# BB#125:                               # %if.then.545
	testb	%dl, %dl
	jne	.LBB8_128
# BB#126:                               # %if.then.555
	movzbl	3(%rdi), %eax
	jmp	.LBB8_128
.LBB8_118:                              # %if.then.508
	movl	$4, 8904(%r14)
	jmp	.LBB8_177
.LBB8_127:                              # %cond.false.564
	movl	$.L.str.224, %esi
	callq	strcmp
.LBB8_128:                              # %cond.end.567
	testl	%eax, %eax
	je	.LBB8_129
# BB#130:                               # %land.lhs.true.579
	movl	$.L.str.225, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	72(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB8_138
# BB#131:                               # %cond.true.583
	movzbl	(%rdi), %eax
	addl	$-69, %eax
	testq	%rcx, %rcx
	je	.LBB8_139
# BB#132:                               # %cond.true.583
	testl	%eax, %eax
	jne	.LBB8_139
# BB#133:                               # %if.then.598
	movzbl	1(%rdi), %eax
	addl	$-84, %eax
	cmpq	$2, %rcx
	jb	.LBB8_139
# BB#134:                               # %if.then.598
	testl	%eax, %eax
	jne	.LBB8_139
# BB#135:                               # %if.then.608
	movb	2(%rdi), %dl
	movzbl	%dl, %eax
	cmpq	$3, %rcx
	jb	.LBB8_139
# BB#136:                               # %if.then.608
	testb	%dl, %dl
	jne	.LBB8_139
# BB#137:                               # %if.then.618
	movzbl	3(%rdi), %eax
	jmp	.LBB8_139
.LBB8_129:                              # %if.then.571
	movl	$5, 8904(%r14)
	jmp	.LBB8_177
.LBB8_138:                              # %cond.false.627
	movl	$.L.str.225, %esi
	callq	strcmp
.LBB8_139:                              # %cond.end.630
	testl	%eax, %eax
	je	.LBB8_140
# BB#141:                               # %land.lhs.true.642
	movl	$.L.str.226, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	72(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB8_149
# BB#142:                               # %cond.true.646
	movzbl	(%rdi), %eax
	addl	$-72, %eax
	testq	%rcx, %rcx
	je	.LBB8_150
# BB#143:                               # %cond.true.646
	testl	%eax, %eax
	jne	.LBB8_150
# BB#144:                               # %if.then.661
	movzbl	1(%rdi), %eax
	addl	$-81, %eax
	cmpq	$2, %rcx
	jb	.LBB8_150
# BB#145:                               # %if.then.661
	testl	%eax, %eax
	jne	.LBB8_150
# BB#146:                               # %if.then.671
	movb	2(%rdi), %dl
	movzbl	%dl, %eax
	cmpq	$3, %rcx
	jb	.LBB8_150
# BB#147:                               # %if.then.671
	testb	%dl, %dl
	jne	.LBB8_150
# BB#148:                               # %if.then.681
	movzbl	3(%rdi), %eax
	jmp	.LBB8_150
.LBB8_140:                              # %if.then.634
	movl	$6, 8904(%r14)
	jmp	.LBB8_177
.LBB8_149:                              # %cond.false.690
	movl	$.L.str.226, %esi
	callq	strcmp
.LBB8_150:                              # %cond.end.693
	testl	%eax, %eax
	je	.LBB8_151
# BB#152:                               # %land.lhs.true.705
	movl	$.L.str.227, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	72(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB8_160
# BB#153:                               # %cond.true.709
	movzbl	(%rdi), %eax
	addl	$-85, %eax
	testq	%rcx, %rcx
	je	.LBB8_161
# BB#154:                               # %cond.true.709
	testl	%eax, %eax
	jne	.LBB8_161
# BB#155:                               # %if.then.724
	movzbl	1(%rdi), %eax
	addl	$-84, %eax
	cmpq	$2, %rcx
	jb	.LBB8_161
# BB#156:                               # %if.then.724
	testl	%eax, %eax
	jne	.LBB8_161
# BB#157:                               # %if.then.734
	movb	2(%rdi), %dl
	movzbl	%dl, %eax
	cmpq	$3, %rcx
	jb	.LBB8_161
# BB#158:                               # %if.then.734
	testb	%dl, %dl
	jne	.LBB8_161
# BB#159:                               # %if.then.744
	movzbl	3(%rdi), %eax
	jmp	.LBB8_161
.LBB8_151:                              # %if.then.697
	movl	$7, 8904(%r14)
	jmp	.LBB8_177
.LBB8_160:                              # %cond.false.753
	movl	$.L.str.227, %esi
	callq	strcmp
.LBB8_161:                              # %cond.end.756
	testl	%eax, %eax
	je	.LBB8_162
# BB#163:                               # %land.lhs.true.768
	movl	$.L.str.228, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	72(%rsp), %rdi
	cmpq	$3, %rcx
	ja	.LBB8_171
# BB#164:                               # %cond.true.772
	movzbl	(%rdi), %eax
	addl	$-85, %eax
	testq	%rcx, %rcx
	je	.LBB8_172
# BB#165:                               # %cond.true.772
	testl	%eax, %eax
	jne	.LBB8_172
# BB#166:                               # %if.then.787
	movzbl	1(%rdi), %eax
	addl	$-77, %eax
	cmpq	$2, %rcx
	jb	.LBB8_172
# BB#167:                               # %if.then.787
	testl	%eax, %eax
	jne	.LBB8_172
# BB#168:                               # %if.then.797
	movb	2(%rdi), %dl
	movzbl	%dl, %eax
	cmpq	$3, %rcx
	jb	.LBB8_172
# BB#169:                               # %if.then.797
	testb	%dl, %dl
	jne	.LBB8_172
# BB#170:                               # %if.then.807
	movzbl	3(%rdi), %eax
	jmp	.LBB8_172
.LBB8_162:                              # %if.then.760
	movl	$8, 8904(%r14)
	jmp	.LBB8_177
.LBB8_171:                              # %cond.false.816
	movl	$.L.str.228, %esi
	callq	strcmp
.LBB8_172:                              # %cond.end.819
	movl	$-15, %ebp
	testl	%eax, %eax
	je	.LBB8_173
.LBB8_174:                              # %pmediae
	movq	(%rbx), %rax
	movl	$.L.str.211, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB8_175:                              # %sw.bb.841
	cmpl	$0, 8904(%r14)
	jne	.LBB8_177
# BB#176:                               # %if.then.843
	movl	$0, 8904(%r14)
	movq	$0, 72(%rsp)
.LBB8_177:                              # %sw.epilog.847
	leaq	52(%rsp), %rdx
	movl	$.L.str.205, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB8_181
# BB#178:                               # %sw.epilog.847
	testl	%ebp, %ebp
	jne	.LBB8_180
# BB#179:                               # %sw.bb.849
	movl	$-15, %ebp
	cmpl	$6, 52(%rsp)
	jb	.LBB8_181
.LBB8_180:                              # %tden
	movq	(%rbx), %rax
	movl	$.L.str.205, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB8_181:                              # %sw.epilog.862
	leaq	48(%rsp), %rdx
	movl	$.L.str.207, %esi
	movq	%rbx, %rdi
	callq	param_read_bool
	cmpl	$2, %eax
	jb	.LBB8_184
# BB#182:                               # %sw.default.864
	movl	$.L.str.207, %esi
	movq	%rbx, %rdi
	callq	param_read_null
	movl	%eax, %ebp
	testl	%ebp, %ebp
	je	.LBB8_184
# BB#183:                               # %if.end.869
	movq	(%rbx), %rax
	movl	$.L.str.207, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB8_184:                              # %sw.epilog.873
	leaq	36(%rsp), %rdx
	movl	$.L.str.208, %esi
	movq	%rbx, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB8_186
# BB#185:                               # %if.then.877
	movq	(%rbx), %rax
	movl	$.L.str.208, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB8_186:                              # %if.end.881
	leaq	60(%rsp), %rdx
	movl	$.L.str.209, %esi
	movq	%rbx, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB8_188
# BB#187:                               # %if.then.885
	movq	(%rbx), %rax
	movl	$.L.str.209, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB8_188:                              # %if.end.889
	leaq	44(%rsp), %rdx
	movl	$.L.str.206, %esi
	movq	%rbx, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB8_190
# BB#189:                               # %if.then.893
	movq	(%rbx), %rax
	movl	$.L.str.206, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB8_190:                              # %if.end.897
	leaq	40(%rsp), %rdx
	movl	$.L.str.210, %esi
	movq	%rbx, %rdi
	callq	param_read_bool
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB8_192
# BB#191:                               # %if.then.901
	movq	(%rbx), %rax
	movl	$.L.str.210, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB8_192:                              # %if.end.905
	leaq	28(%rsp), %rdx
	movl	$.L.str.229, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	movl	%eax, %ebp
	cmpl	$1, %ebp
	je	.LBB8_196
# BB#193:                               # %if.end.905
	testl	%ebp, %ebp
	jne	.LBB8_195
# BB#194:                               # %sw.bb.907
	movl	$-15, %ebp
	movl	28(%rsp), %eax
	movl	%eax, %ecx
	orl	$16, %ecx
	cmpl	$24, %ecx
	je	.LBB8_197
.LBB8_195:                              # %bppe
	movq	(%rbx), %rax
	movl	$.L.str.229, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB8_196:                              # %sw.epilog.920
	movl	28(%rsp), %eax
	testl	%eax, %eax
	je	.LBB8_198
.LBB8_197:                              # %if.then.923
	movw	%ax, 108(%r14)
	cmpl	$8, %eax
	setne	%al
	movzbl	%al, %eax
	leal	1(%rax,%rax), %eax
	movl	%eax, 100(%r14)
	movl	$255, %eax
	movl	$1000, %ecx             # imm = 0x3E8
	cmovgl	%eax, %ecx
	movl	%ecx, 112(%r14)
	movl	%ecx, 116(%r14)
	movl	$256, %eax              # imm = 0x100
	movl	$5, %ecx
	cmovgl	%eax, %ecx
	movl	%ecx, 120(%r14)
	movl	$2, %ecx
	cmovgl	%eax, %ecx
	movl	%ecx, 124(%r14)
	movl	$gx_default_gray_map_rgb_color, %eax
	movl	$gx_default_rgb_map_rgb_color, %ecx
	cmoveq	%rax, %rcx
	movq	%rcx, 1184(%r14)
	movl	$gx_default_gray_map_color_rgb, %eax
	movl	$gx_default_rgb_map_color_rgb, %ecx
	cmoveq	%rax, %rcx
	movq	%rcx, 1192(%r14)
.LBB8_198:                              # %if.end.955
	testl	%r15d, %r15d
	js	.LBB8_204
# BB#199:                               # %if.end.959
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gdev_vector_put_params
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB8_204
# BB#200:                               # %if.end.964
	movl	24(%rsp), %eax
	movl	%eax, 18632(%r14)
	movl	20(%rsp), %eax
	movl	%eax, 18636(%r14)
	movl	16(%rsp), %eax
	movl	%eax, 18640(%r14)
	movl	12(%rsp), %eax
	movl	%eax, 18644(%r14)
	movl	68(%rsp), %eax
	movl	%eax, 8852(%r14)
	movl	64(%rsp), %eax
	movl	%eax, 8856(%r14)
	movl	40(%rsp), %eax
	movl	%eax, 8900(%r14)
	movl	32(%rsp), %eax
	movl	%eax, 8860(%r14)
	movl	44(%rsp), %eax
	movl	%eax, 8896(%r14)
	movl	52(%rsp), %eax
	movl	%eax, 8868(%r14)
	movl	48(%rsp), %eax
	movl	%eax, 8872(%r14)
	movl	56(%rsp), %eax
	movl	%eax, 8864(%r14)
	movl	36(%rsp), %eax
	movl	%eax, 8912(%r14)
	movl	60(%rsp), %eax
	movl	%eax, 8916(%r14)
	movl	28(%rsp), %eax
	xorl	%r15d, %r15d
	testl	%eax, %eax
	je	.LBB8_204
# BB#201:                               # %if.end.964
	cmpl	%r13d, %eax
	je	.LBB8_204
# BB#202:                               # %land.lhs.true.984
	cmpl	$0, 84(%r14)
	je	.LBB8_204
# BB#203:                               # %if.then.986
	movq	%r14, %rdi
	callq	gs_closedevice
	movl	%eax, %r15d
.LBB8_204:                              # %cleanup
	movl	%r15d, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_173:                              # %if.then.823
	movl	$9, 8904(%r14)
	jmp	.LBB8_177
.Lfunc_end8:
	.size	escv_put_params, .Lfunc_end8-escv_put_params
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI9_0:
	.long	1150681088              # float 1200
.LCPI9_1:
	.long	1142292480              # float 600
	.text
	.align	16, 0x90
	.type	escv_fill_mask,@function
escv_fill_mask:                         # @escv_fill_mask
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
	subq	$328, %rsp              # imm = 0x148
.Ltmp63:
	.cfi_def_cfa_offset 384
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
	movl	%r9d, %r13d
	movq	%r8, 120(%rsp)          # 8-byte Spill
	movl	%ecx, %ebp
	movl	%edx, %ebx
	movq	%rsi, 112(%rsp)         # 8-byte Spill
	movl	392(%rsp), %r14d
	movq	%rdi, %r15
	callq	gdev_vector_stream
	xorl	%r12d, %r12d
	testl	%r14d, %r14d
	jle	.LBB9_32
# BB#1:                                 # %entry
	movl	%ebx, 104(%rsp)         # 4-byte Spill
	movl	%ebp, 96(%rsp)          # 4-byte Spill
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	%r13d, 100(%rsp)        # 4-byte Spill
	movl	400(%rsp), %r13d
	testl	%r13d, %r13d
	jle	.LBB9_32
# BB#2:                                 # %if.end
	movq	432(%rsp), %rdx
	movl	424(%rsp), %ecx
	movl	416(%rsp), %r12d
	movq	408(%rsp), %r14
	cmpl	$1, %r12d
	movq	%r15, %rbp
	jg	.LBB9_6
# BB#3:                                 # %lor.lhs.false.3
	movq	8(%r14), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movl	%ecx, %r15d
	movq	%rdx, %rbx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movq	%r14, %rdx
	callq	gdev_vector_update_fill_color
	movq	%rbx, %rdx
	movl	%r15d, %ecx
	testl	%eax, %eax
	js	.LBB9_6
# BB#4:                                 # %lor.lhs.false.6
	movq	%rbp, %rdi
	movl	%ecx, %r15d
	movq	%rdx, %rbx
	movq	%rbx, %rsi
	callq	gdev_vector_update_clip_path
	movq	%rbx, %rdx
	movl	%r15d, %ecx
	testl	%eax, %eax
	js	.LBB9_6
# BB#5:                                 # %lor.lhs.false.9
	movq	%rbp, %rdi
	movl	%ecx, %r15d
	movq	%rdx, %rbx
	movl	%r15d, %esi
	callq	gdev_vector_update_log_op
	movq	%rbx, %rdx
	movl	%r15d, %ecx
	testl	%eax, %eax
	js	.LBB9_6
# BB#7:                                 # %if.end.14
	cmpl	$0, 8848(%rbp)
	movq	%rbp, %rcx
	je	.LBB9_8
# BB#21:                                # %if.else.39
	cmpl	$1, 8928(%rcx)
	je	.LBB9_23
# BB#22:                                # %if.then.42
	movl	$.L.str.232, %edi
	movq	%rcx, %rbx
	callq	strlen
	leaq	128(%rsp), %rcx
	movl	$.L.str.232, %esi
	movq	88(%rsp), %rdi          # 8-byte Reload
	movl	%eax, %edx
	callq	sputs
	movq	%rbx, %rcx
	movl	$1, 8928(%rcx)
.LBB9_23:                               # %if.end.45
	cmpl	$0, 104(%rsp)           # 4-byte Folded Reload
	movl	392(%rsp), %r15d
	movq	112(%rsp), %rbp         # 8-byte Reload
	movq	120(%rsp), %rax         # 8-byte Reload
	jne	.LBB9_17
# BB#24:                                # %if.end.45
	testq	%rax, %rax
	je	.LBB9_17
# BB#25:                                # %if.end.45
	cmpl	$1, 416(%rsp)
	jne	.LBB9_17
# BB#26:                                # %if.then.50
	movl	%eax, %ebx
	andl	$1023, %ebx             # imm = 0x3FF
	cmpq	%rax, 9080(%rcx,%rbx,8)
	je	.LBB9_31
# BB#27:                                # %if.then.54
	movq	%rbx, 72(%rsp)          # 8-byte Spill
	leal	7(%r15), %r15d
	sarl	$3, %r15d
	movl	%r15d, %esi
	imull	%r13d, %esi
	movl	%esi, 68(%rsp)          # 4-byte Spill
	movq	24(%rcx), %rdi
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movl	$.L.str.256, %edx
	callq	*64(%rdi)
	movq	%rax, %r14
	testl	%r13d, %r13d
	jle	.LBB9_30
# BB#28:                                # %for.body.lr.ph
	movl	%r15d, %eax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movslq	96(%rsp), %r13          # 4-byte Folded Reload
	xorl	%r12d, %r12d
	movl	400(%rsp), %ebx
.LBB9_29:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r12d, %eax
	leaq	(%rax,%r14), %rdi
	movq	%rbp, %rsi
	movq	104(%rsp), %rdx         # 8-byte Reload
	callq	memcpy
	addl	%r15d, %r12d
	addq	%r13, %rbp
	decl	%ebx
	jne	.LBB9_29
.LBB9_30:                               # %for.end
	leaq	128(%rsp), %r12
	movl	$.L.str.257, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movl	68(%rsp), %r13d         # 4-byte Reload
	movl	%r13d, %edx
	movl	392(%rsp), %r8d
	movl	400(%rsp), %r9d
	movq	72(%rsp), %rbx          # 8-byte Reload
	movl	%ebx, %ecx
	callq	gs_sprintf
	movq	%r12, %rdi
	callq	strlen
	leaq	324(%rsp), %rcx
	movq	88(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movl	%eax, %edx
	callq	sputs
	leaq	324(%rsp), %rcx
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movl	%r13d, %edx
	callq	sputs
	movq	80(%rsp), %r15          # 8-byte Reload
	movq	24(%r15), %rdi
	movl	$.L.str.256, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
	movq	120(%rsp), %rax         # 8-byte Reload
	movq	%rax, 9080(%r15,%rbx,8)
.LBB9_31:                               # %if.end.78
	xorl	%r12d, %r12d
	leaq	128(%rsp), %r14
	movl	$.L.str.236, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	100(%rsp), %edx         # 4-byte Reload
	movl	384(%rsp), %ecx
	callq	gs_sprintf
	movq	%r14, %rdi
	callq	strlen
	leaq	324(%rsp), %rcx
	movq	88(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.258, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	gs_sprintf
	movq	%r14, %rdi
	callq	strlen
	leaq	324(%rsp), %rcx
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movl	%eax, %edx
	callq	sputs
	jmp	.LBB9_32
.LBB9_6:                                # %if.then.12
	movq	%rdx, 48(%rsp)
	movl	%ecx, 40(%rsp)
	movl	%r12d, 32(%rsp)
	movq	%r14, 24(%rsp)
	movl	%r13d, 16(%rsp)
	movl	392(%rsp), %eax
	movl	%eax, 8(%rsp)
	movl	384(%rsp), %eax
	movl	%eax, (%rsp)
	movq	%rbp, %rdi
	movq	112(%rsp), %rsi         # 8-byte Reload
	movl	104(%rsp), %edx         # 4-byte Reload
	movl	96(%rsp), %ecx          # 4-byte Reload
	movq	120(%rsp), %r8          # 8-byte Reload
	movl	100(%rsp), %r9d         # 4-byte Reload
	callq	gx_default_fill_mask
	movl	%eax, %r12d
.LBB9_32:                               # %cleanup
	movl	%r12d, %eax
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_8:                                # %if.then.16
	movq	80(%rsp), %rdx          # 8-byte Reload
	movq	(%r14), %rax
	movl	$-15, %r12d
	cmpq	gx_dc_type_pure(%rip), %rax
	movl	392(%rsp), %r15d
	jne	.LBB9_32
# BB#9:                                 # %if.end.19
	movq	%rcx, %rbp
	movq	%rdx, 8960(%rbp)
	leaq	256(%rsp), %r14
	movl	$.L.str.176, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	gs_sprintf
	movq	%r14, %rdi
	callq	strlen
	leaq	128(%rsp), %rcx
	movq	88(%rsp), %r12          # 8-byte Reload
	movq	%r12, %rdi
	movq	%r14, %rsi
	movl	%eax, %edx
	callq	sputs
	movss	884(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	%rbp, %rbx
	ucomiss	.LCPI9_0(%rip), %xmm0
	jne	.LBB9_11
	jp	.LBB9_11
# BB#10:                                # %if.then.24
	movl	$.L.str.114, %edi
	callq	strlen
	leaq	128(%rsp), %rcx
	movl	$.L.str.114, %esi
	movq	%r12, %rdi
	jmp	.LBB9_15
.LBB9_11:                               # %if.else
	movq	%r12, %r14
	ucomiss	.LCPI9_1(%rip), %xmm0
	jne	.LBB9_13
	jp	.LBB9_13
# BB#12:                                # %if.then.29
	movl	$.L.str.118, %edi
	callq	strlen
	leaq	128(%rsp), %rcx
	movl	$.L.str.118, %esi
	jmp	.LBB9_14
.LBB9_13:                               # %if.else.31
	movl	$.L.str.121, %edi
	callq	strlen
	leaq	128(%rsp), %rcx
	movl	$.L.str.121, %esi
.LBB9_14:                               # %if.end.34
	movq	%r14, %rdi
.LBB9_15:                               # %if.end.34
	movl	%eax, %edx
	callq	sputs
	movq	112(%rsp), %rbp         # 8-byte Reload
	movq	%rbx, %rcx
	cmpl	$1, 8928(%rcx)
	je	.LBB9_17
# BB#16:                                # %if.then.36
	movl	$1, 8928(%rcx)
.LBB9_17:                               # %if.end.89
	movl	%r13d, 8(%rsp)
	movl	%r15d, (%rsp)
	movl	$0, 16(%rsp)
	movq	%rcx, %rdi
	movl	416(%rsp), %esi
	movl	100(%rsp), %edx         # 4-byte Reload
	movq	%rcx, %r12
	movl	384(%rsp), %ecx
	movl	%r15d, %r8d
	movl	%r13d, %r9d
	callq	escv_write_begin
	leal	7(%r15), %esi
	sarl	$3, %esi
	movl	%esi, 120(%rsp)         # 4-byte Spill
	imull	%r13d, %esi
	movl	%esi, 112(%rsp)         # 4-byte Spill
	movq	24(%r12), %rdi
	movq	%r12, 80(%rsp)          # 8-byte Spill
	movl	$.L.str.256, %edx
	callq	*64(%rdi)
	testl	%r13d, %r13d
	jle	.LBB9_20
# BB#18:                                # %for.body.105.lr.ph
	movl	104(%rsp), %ecx         # 4-byte Reload
	sarl	$3, %ecx
	movl	120(%rsp), %ebx         # 4-byte Reload
	movslq	%ecx, %rcx
	addq	%rcx, %rbp
	movslq	96(%rsp), %r12          # 4-byte Folded Reload
	xorl	%r14d, %r14d
	movl	400(%rsp), %r15d
	.align	16, 0x90
.LBB9_19:                               # %for.body.105
                                        # =>This Inner Loop Header: Depth=1
	movl	%r14d, %ecx
	leaq	(%rcx,%rax), %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	movq	%rax, %r13
	callq	memcpy
	movq	%r13, %rax
	addl	120(%rsp), %r14d        # 4-byte Folded Reload
	addq	%r12, %rbp
	decl	%r15d
	jne	.LBB9_19
.LBB9_20:                               # %for.end.119
	movq	80(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movl	416(%rsp), %ebp
	movl	%ebp, %esi
	movq	%rax, %rdx
	movq	%rax, %r14
	movl	112(%rsp), %ecx         # 4-byte Reload
	movl	392(%rsp), %r8d
	movl	400(%rsp), %r9d
	callq	escv_write_data
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	escv_write_end
	movq	24(%rbx), %rdi
	movl	$.L.str.256, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
	xorl	%r12d, %r12d
	jmp	.LBB9_32
.Lfunc_end9:
	.size	escv_fill_mask, .Lfunc_end9-escv_fill_mask
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI10_0:
	.long	1065353216              # float 1
.LCPI10_1:
	.long	1150681088              # float 1200
.LCPI10_2:
	.long	1142292480              # float 600
	.text
	.align	16, 0x90
	.type	escv_begin_image,@function
escv_begin_image:                       # @escv_begin_image
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
	subq	$264, %rsp              # imm = 0x108
.Ltmp76:
	.cfi_def_cfa_offset 320
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
	movq	%r9, %r14
	movq	%r8, %r15
	movl	%ecx, 72(%rsp)          # 4-byte Spill
	movq	%rdx, %r12
	movq	%rsi, 80(%rsp)          # 8-byte Spill
	movq	%rdi, %rbp
	movq	328(%rsp), %rbx
	callq	gdev_vector_stream
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	$st_vector_image_enum, %esi
	movl	$.L.str.259, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movq	%r12, %rdx
	movq	576(%rdx), %r12
	testq	%r15, %r15
	je	.LBB10_2
# BB#1:
	movq	%rbp, 88(%rsp)          # 8-byte Spill
	movl	$0, 68(%rsp)            # 4-byte Folded Spill
	jmp	.LBB10_3
.LBB10_2:                               # %land.rhs
	movq	%rbp, 88(%rsp)          # 8-byte Spill
	cmpl	$2, 568(%rdx)
	setb	%cl
	movl	%ecx, 68(%rsp)          # 4-byte Spill
.LBB10_3:                               # %land.end
	movl	$-25, %r13d
	testq	%rax, %rax
	je	.LBB10_50
# BB#4:                                 # %if.end
	movq	320(%rsp), %rsi
	movq	8(%r14), %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movq	%rbx, 24(%rax)
	movq	%rax, 24(%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rsi, (%rsp)
	movq	$escv_image_enum_procs, 16(%rsp)
	movq	88(%rsp), %rdi          # 8-byte Reload
	movq	80(%rsp), %rsi          # 8-byte Reload
	movq	%rdx, %rbx
	movl	72(%rsp), %ecx          # 4-byte Reload
	movq	%r15, %r8
	movq	%rax, %rbp
	movq	%r14, %r9
	callq	gdev_vector_begin_image
	movq	%rbx, %rdx
	movq	%rbp, %rcx
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB10_50
# BB#5:                                 # %if.end.10
	movq	336(%rsp), %rax
	movq	%rcx, (%rax)
	movl	$1, %eax
	cmpl	$0, 584(%rdx)
	jne	.LBB10_18
# BB#6:                                 # %if.then.11
	movq	%r12, %rdi
	movq	%rcx, %rbp
	movq	%rdx, %rbx
	callq	gs_color_space_get_index
	movl	%eax, %r13d
	movq	%r12, %rdi
	callq	gs_color_space_num_components
	movq	%rbx, %rdx
	movq	%rbp, %rcx
	cmpl	$0, 572(%rdx)
	jne	.LBB10_19
# BB#7:                                 # %if.else
	cmpl	$1, %r13d
	jne	.LBB10_8
# BB#13:                                # %sw.bb.29
	movss	44(%rdx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB10_19
	jp	.LBB10_19
# BB#14:                                # %lor.lhs.false.33
	movss	48(%rdx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI10_0(%rip), %xmm0
	jne	.LBB10_19
	jp	.LBB10_19
# BB#15:                                # %lor.lhs.false.37
	movss	52(%rdx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB10_19
	jp	.LBB10_19
# BB#16:                                # %lor.lhs.false.41
	movss	56(%rdx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI10_0(%rip), %xmm0
	jne	.LBB10_19
	jp	.LBB10_19
# BB#17:                                # %lor.lhs.false.45
	movss	60(%rdx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB10_19
	jp	.LBB10_19
	jmp	.LBB10_18
.LBB10_8:                               # %if.else
	testl	%r13d, %r13d
	jne	.LBB10_19
# BB#9:                                 # %sw.bb
	movss	44(%rdx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB10_11
	jp	.LBB10_11
# BB#10:                                # %lor.lhs.false
	movss	48(%rdx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	.LCPI10_0(%rip), %xmm1
	jne	.LBB10_11
	jnp	.LBB10_18
.LBB10_11:                              # %land.lhs.true
	ucomiss	.LCPI10_0(%rip), %xmm0
	jne	.LBB10_19
	jp	.LBB10_19
# BB#12:                                # %lor.lhs.false.23
	movss	48(%rdx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB10_19
	jnp	.LBB10_18
	jmp	.LBB10_19
.LBB10_18:                              # %if.end.52
	movl	68(%rsp), %esi          # 4-byte Reload
	testb	%sil, %sil
	je	.LBB10_19
# BB#20:                                # %if.end.56
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	cmpl	$0, 584(%rdx)
	movq	88(%rsp), %r13          # 8-byte Reload
	jne	.LBB10_23
# BB#21:                                # %lor.lhs.false.59
	cmpl	$1, %eax
	jne	.LBB10_28
# BB#22:                                # %lor.lhs.false.59
	cmpl	$1, 40(%rdx)
	jne	.LBB10_28
.LBB10_23:                              # %if.then.63
	movss	44(%rdx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	48(%rdx), %xmm0
	jbe	.LBB10_25
# BB#24:                                # %if.then.69
	movl	$1, 8924(%r13)
	jmp	.LBB10_28
.LBB10_19:                              # %if.then.54
	addq	$568, %rcx              # imm = 0x238
	movq	%rcx, 16(%rsp)
	movq	328(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	320(%rsp), %rax
	movq	%rax, (%rsp)
	movq	88(%rsp), %rdi          # 8-byte Reload
	movq	80(%rsp), %rsi          # 8-byte Reload
	movl	72(%rsp), %ecx          # 4-byte Reload
	movq	%r15, %r8
	movq	%r14, %r9
	callq	gx_default_begin_image
	movl	%eax, %r13d
	jmp	.LBB10_50
.LBB10_25:                              # %if.else.70
	cmpl	$0, 8848(%r13)
	je	.LBB10_27
# BB#26:                                # %if.else.73
	movl	$.L.str.136, %edi
	movl	%eax, %r15d
	movq	%rdx, %rbp
	callq	strlen
	leaq	260(%rsp), %rcx
	movl	$.L.str.136, %esi
	movq	56(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	leaq	260(%rsp), %rcx
	movl	$.L.str.260, %esi
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	sputs
	movq	%rbp, %rdx
	movl	%r15d, %eax
.LBB10_27:                              # %if.end.75
	movl	$0, 8924(%r13)
.LBB10_28:                              # %if.end.78
	movl	%eax, 44(%rsp)          # 4-byte Spill
	leaq	8(%rdx), %rdi
	leaq	232(%rsp), %rbx
	movq	%rbx, %rsi
	movq	%rdx, %rbp
	callq	gs_matrix_invert
	movq	80(%rsp), %rsi          # 8-byte Reload
	addq	$132, %rsi
	movq	%rbx, %rdi
	movq	%rbx, %rdx
	callq	gs_matrix_multiply
	movq	%rbp, %rcx
	movss	248(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movss	252(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvttss2si	%xmm0, %r12d
	cvtsi2ssl	32(%rcx), %xmm3
	movss	232(%rsp), %xmm4        # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm4
	cvtsi2ssl	36(%rcx), %xmm1
	movss	240(%rsp), %xmm5        # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm5
	addss	%xmm4, %xmm5
	addss	%xmm2, %xmm5
	cvttss2si	%xmm5, %ebp
	mulss	236(%rsp), %xmm3
	mulss	244(%rsp), %xmm1
	addss	%xmm1, %xmm3
	addss	%xmm0, %xmm3
	cvttss2si	%xmm3, %r15d
	addss	%xmm0, %xmm1
	cvttss2si	%xmm2, %eax
	movl	$0, 9048(%r13)
	xorps	%xmm3, %xmm3
	movups	%xmm3, 8992(%r13)
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%ebp, %xmm3
	subl	%eax, %ebp
	ucomiss	%xmm3, %xmm2
	jbe	.LBB10_30
# BB#29:                                # %if.then.134
	movq	$1, 8992(%r13)
	negl	%ebp
	movss	%xmm3, 248(%rsp)
.LBB10_30:                              # %if.end.139
	movq	%rcx, %rbx
	cvttss2si	%xmm1, %r14d
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%r15d, %xmm1
	subl	%r12d, %r15d
	ucomiss	%xmm1, %xmm0
	jbe	.LBB10_32
# BB#31:                                # %if.then.144
	movq	$1, 9000(%r13)
	negl	%r15d
	movss	%xmm1, 252(%rsp)
.LBB10_32:                              # %if.end.149
	leaq	9008(%r13), %rdi
	leaq	232(%rsp), %rsi
	movl	$24, %edx
	callq	memcpy
	cvtsi2ssl	%ebp, %xmm0
	movl	%ebp, 80(%rsp)          # 4-byte Spill
	movss	%xmm0, 9052(%r13)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%r15d, %xmm0
	movss	%xmm0, 9056(%r13)
	movl	36(%rbx), %eax
	movl	%eax, 9044(%r13)
	movl	32(%rbx), %eax
	movl	%eax, 9040(%r13)
	movq	$0, 9064(%r13)
	movl	$0, 9032(%r13)
	movl	$0, 9036(%r13)
	movq	%r13, %rbp
	movl	$-1, %r13d
	cmpl	%r14d, %r12d
	movq	72(%rsp), %rax          # 8-byte Reload
	je	.LBB10_50
# BB#33:                                # %if.end.162
	cmpl	$0, 584(%rbx)
	movq	56(%rsp), %rbx          # 8-byte Reload
	je	.LBB10_43
# BB#34:                                # %if.then.165
	movl	$1, 8920(%rbp)
	cmpl	$1, 8928(%rbp)
	je	.LBB10_48
# BB#35:                                # %if.then.168
	movq	%rax, %r14
	cmpl	$0, 8848(%rbp)
	je	.LBB10_36
# BB#42:                                # %if.else.192
	movl	$.L.str.232, %edi
	callq	strlen
	leaq	260(%rsp), %rcx
	movl	$.L.str.232, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$1, 8928(%rbp)
	movq	%r14, %rax
	jmp	.LBB10_48
.LBB10_43:                              # %if.else.197
	cmpl	$0, 8928(%rbp)
	je	.LBB10_47
# BB#44:                                # %if.then.201
	cmpl	$0, 8848(%rbp)
	je	.LBB10_46
# BB#45:                                # %if.else.206
	movl	$.L.str.233, %edi
	movq	%rax, %r14
	callq	strlen
	leaq	260(%rsp), %rcx
	movl	$.L.str.233, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	%r14, %rax
.LBB10_46:                              # %if.end.208
	movl	$0, 8928(%rbp)
.LBB10_47:                              # %if.end.210
	movl	44(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 8920(%rbp)
	jmp	.LBB10_48
.LBB10_36:                              # %if.then.172
	leaq	96(%rsp), %r12
	movl	$.L.str.230, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	movq	48(%rsp), %rdx          # 8-byte Reload
	callq	gs_sprintf
	movq	%r12, %rdi
	callq	strlen
	leaq	260(%rsp), %rcx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	%eax, %edx
	callq	sputs
	movss	884(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI10_1(%rip), %xmm0
	jne	.LBB10_39
	jp	.LBB10_39
# BB#37:                                # %if.then.179
	movl	$.L.str.114, %edi
	callq	strlen
	leaq	260(%rsp), %rcx
	movl	$.L.str.114, %esi
	jmp	.LBB10_38
.LBB10_39:                              # %if.else.181
	ucomiss	.LCPI10_2(%rip), %xmm0
	jne	.LBB10_41
	jp	.LBB10_41
# BB#40:                                # %if.then.186
	movl	$.L.str.118, %edi
	callq	strlen
	leaq	260(%rsp), %rcx
	movl	$.L.str.118, %esi
	jmp	.LBB10_38
.LBB10_41:                              # %if.else.188
	movl	$.L.str.121, %edi
	callq	strlen
	leaq	260(%rsp), %rcx
	movl	$.L.str.121, %esi
.LBB10_38:                              # %if.end.212
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	%r14, %rax
.LBB10_48:                              # %if.end.212
	movq	%rbp, %rdi
	xorl	%r13d, %r13d
	cmpq	$0, 9000(%rdi)
	jne	.LBB10_50
# BB#49:                                # %if.end.216
	movl	592(%rax), %esi
	cvttss2si	248(%rsp), %edx
	cvttss2si	252(%rsp), %ecx
	movl	584(%rax), %r8d
	movl	588(%rax), %r9d
	movl	9048(%rdi), %eax
	movl	%eax, 16(%rsp)
	movl	%r15d, 8(%rsp)
	movl	80(%rsp), %eax          # 4-byte Reload
	movl	%eax, (%rsp)
	callq	escv_write_begin
.LBB10_50:                              # %cleanup
	movl	%r13d, %eax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	escv_begin_image, .Lfunc_end10-escv_begin_image
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI11_0:
	.long	1150681088              # float 1200
.LCPI11_1:
	.long	1142292480              # float 600
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI11_2:
	.quad	2                       # 0x2
	.quad	3                       # 0x3
.LCPI11_3:
	.quad	6                       # 0x6
	.quad	7                       # 0x7
.LCPI11_4:
	.quad	4                       # 0x4
	.quad	5                       # 0x5
.LCPI11_5:
	.zero	16
	.text
	.align	16, 0x90
	.type	escv_beginpage,@function
escv_beginpage:                         # @escv_beginpage
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
	subq	$2040, %rsp             # imm = 0x7F8
.Ltmp89:
	.cfi_def_cfa_offset 2096
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
	movq	%rdi, %r13
	cmpl	$0, 8908(%r13)
	je	.LBB11_234
# BB#1:                                 # %if.then
	movq	5848(%r13), %rbp
	leaq	17272(%r13), %rbx
	cmpb	$0, 17272(%r13)
	jne	.LBB11_3
# BB#2:                                 # %if.then.2
	movl	$.L.str.56, %esi
	movq	%rbx, %rdi
	callq	strcpy
.LBB11_3:                               # %if.end
	movl	$.L.str.57, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.57, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.58, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.58, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	%rbx, %rdi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.59, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.59, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.60, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.60, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	%rbx, %rdi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.61, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.61, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	leaq	72(%rsp), %rbx
	movq	%rbx, %rdi
	callq	time
	movl	$.L.str.62, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.62, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	%rbx, %rdi
	callq	localtime
	leaq	1120(%rsp), %rdi
	movl	$30, %esi
	movl	$.L.str.63, %edx
	movq	%rax, %rcx
	callq	strftime
	cmpq	$30, %rax
	ja	.LBB11_5
# BB#4:                                 # %if.then.21
	movb	$0, 1120(%rsp,%rax)
.LBB11_5:                               # %if.end.22
	leaq	1120(%rsp), %rbx
	movq	%rbx, %rdi
	callq	strlen
	leaq	1116(%rsp), %rcx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.61, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.61, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.64, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.64, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.65, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.65, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.66, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.66, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	cmpb	$0, 17528(%r13)
	je	.LBB11_7
# BB#6:                                 # %if.then.31
	leaq	17528(%r13), %rbx
	movq	%rbx, %rdi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
.LBB11_7:                               # %if.end.35
	movl	$.L.str.61, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.61, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.67, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.67, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	cmpb	$0, 17784(%r13)
	je	.LBB11_9
# BB#8:                                 # %if.then.40
	leaq	17784(%r13), %rbx
	movq	%rbx, %rdi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
.LBB11_9:                               # %if.end.44
	movl	$.L.str.61, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.61, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.68, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.68, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	cmpb	$0, 18040(%r13)
	je	.LBB11_11
# BB#10:                                # %if.then.49
	leaq	18040(%r13), %rbx
	movq	%rbx, %rdi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
.LBB11_11:                              # %if.end.53
	movl	$.L.str.61, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.61, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.64, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.64, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.69, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.69, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	leaq	1120(%rsp), %rdi
	callq	uname
	testl	%eax, %eax
	jne	.LBB11_14
# BB#12:                                # %get_sysname.exit
	leaq	1120(%rsp), %rdi
	callq	__strdup
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB11_14
# BB#13:                                # %if.then.59
	movq	%rbx, %rdi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
	movq	%rbx, %rdi
	callq	free
.LBB11_14:                              # %if.end.61
	movl	$.L.str.59, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.59, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.54, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	16(%r13), %rdi
	cmpq	$3, %rcx
	ja	.LBB11_22
# BB#15:                                # %cond.true
	movzbl	(%rdi), %eax
	addl	$-101, %eax
	testq	%rcx, %rcx
	je	.LBB11_23
# BB#16:                                # %cond.true
	testl	%eax, %eax
	jne	.LBB11_23
# BB#17:                                # %if.then.74
	movzbl	1(%rdi), %eax
	addl	$-112, %eax
	cmpq	$2, %rcx
	jb	.LBB11_23
# BB#18:                                # %if.then.74
	testl	%eax, %eax
	jne	.LBB11_23
# BB#19:                                # %if.then.84
	movzbl	2(%rdi), %eax
	addl	$-108, %eax
	cmpq	$3, %rcx
	jb	.LBB11_23
# BB#20:                                # %if.then.84
	testl	%eax, %eax
	jne	.LBB11_23
# BB#21:                                # %if.then.94
	movzbl	3(%rdi), %eax
	addl	$-99, %eax
	jmp	.LBB11_23
.LBB11_22:                              # %cond.false
	movl	$.L.str.54, %esi
	callq	strcmp
.LBB11_23:                              # %cond.end
	testl	%eax, %eax
	je	.LBB11_34
# BB#24:                                # %land.lhs.true.112
	movl	$.L.str.34, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	16(%r13), %rdi
	cmpq	$3, %rcx
	ja	.LBB11_32
# BB#25:                                # %cond.true.116
	movzbl	(%rdi), %eax
	addl	$-101, %eax
	testq	%rcx, %rcx
	je	.LBB11_33
# BB#26:                                # %cond.true.116
	testl	%eax, %eax
	jne	.LBB11_33
# BB#27:                                # %if.then.131
	movzbl	1(%rdi), %eax
	addl	$-112, %eax
	cmpq	$2, %rcx
	jb	.LBB11_33
# BB#28:                                # %if.then.131
	testl	%eax, %eax
	jne	.LBB11_33
# BB#29:                                # %if.then.141
	movzbl	2(%rdi), %eax
	addl	$-108, %eax
	cmpq	$3, %rcx
	jb	.LBB11_33
# BB#30:                                # %if.then.141
	testl	%eax, %eax
	jne	.LBB11_33
# BB#31:                                # %if.then.151
	movzbl	3(%rdi), %eax
	addl	$-109, %eax
	jmp	.LBB11_33
.LBB11_32:                              # %cond.false.160
	movl	$.L.str.34, %esi
	callq	strcmp
.LBB11_33:                              # %cond.end.163
	testl	%eax, %eax
	je	.LBB11_34
# BB#35:                                # %if.else
	movq	%rbp, %r15
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 1360(%rsp)
	movaps	%xmm0, 1344(%rsp)
	movaps	%xmm0, 1328(%rsp)
	movaps	%xmm0, 1312(%rsp)
	movaps	%xmm0, 1296(%rsp)
	movaps	%xmm0, 1280(%rsp)
	movaps	%xmm0, 1264(%rsp)
	movaps	%xmm0, 1248(%rsp)
	movaps	%xmm0, 1232(%rsp)
	movaps	%xmm0, 1216(%rsp)
	movaps	%xmm0, 1200(%rsp)
	movaps	%xmm0, 1184(%rsp)
	movaps	%xmm0, 1168(%rsp)
	movaps	%xmm0, 1152(%rsp)
	movaps	%xmm0, 1136(%rsp)
	movaps	%xmm0, 1120(%rsp)
	movq	16(%r13), %rdi
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movq	%r13, %r12
	movl	$.L.str.35, %esi
	callq	strcmp
	movl	$escv_beginpage.model_resource, %ebp
	movl	$1, %ecx
	movl	$escv_beginpage.model_resource+24, %edx
	xorl	%r14d, %r14d
	movl	$escv_beginpage.model_resource+8, %r13d
	testl	%eax, %eax
	movl	$0, %ebx
	je	.LBB11_41
	.align	16, 0x90
.LBB11_36:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rbx
	movq	%rdx, %rbp
	cmpl	$50, %ebx
	je	.LBB11_37
# BB#38:                                # %for.cond.for.body_crit_edge
                                        #   in Loop: Header=BB11_36 Depth=1
	movq	16(%r12), %rdi
	movq	(%rbp), %rsi
	callq	strcmp
	leaq	1(%rbx), %rcx
	leaq	24(%rbp), %rdx
	testl	%eax, %eax
	jne	.LBB11_36
# BB#39:
	xorl	%r14d, %r14d
	jmp	.LBB11_40
.LBB11_34:                              # %if.then.167
	movl	18632(%r13), %eax
	movl	%eax, 24(%rsp)          # 4-byte Spill
	movl	18636(%r13), %r14d
	movl	18640(%r13), %r12d
	movl	18644(%r13), %r15d
	movl	$.L.str.70, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.70, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	16(%r13), %rbx
	movq	%rbx, %rdi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.59, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.59, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.71, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.71, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	16(%r13), %rbx
	movq	%rbx, %rdi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.59, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.59, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	jmp	.LBB11_78
.LBB11_37:
	movb	$1, %r14b
.LBB11_40:                              # %for.end.loopexit
	leaq	(%rbx,%rbx,2), %rax
	leaq	escv_beginpage.model_resource+8(,%rax,8), %r13
.LBB11_41:                              # %for.end
	movl	$.L.str.70, %edi
	callq	strlen
	leaq	72(%rsp), %rcx
	movl	$.L.str.70, %esi
	movq	%r15, %rdi
	movl	%eax, %edx
	callq	sputs
	testb	%r14b, %r14b
	je	.LBB11_42
# BB#76:                                # %if.else.224
	movl	$.L.str.72, %edi
	callq	strlen
	leaq	72(%rsp), %rcx
	movl	$.L.str.72, %esi
	movq	%r15, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$600, 20(%rsp)          # 4-byte Folded Spill
                                        # imm = 0x258
	movl	$1, 24(%rsp)            # 4-byte Folded Spill
	xorl	%r14d, %r14d
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	%r15, %rbp
	movq	%r12, %r13
	xorl	%r12d, %r12d
	jmp	.LBB11_77
.LBB11_42:                              # %if.then.203
	movl	(%r13), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movq	(%rbp), %r14
	movb	$0, 1120(%rsp)
	movl	$.L.str.139, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$2, %rcx
	ja	.LBB11_48
# BB#43:                                # %cond.true.3.i
	movzbl	(%r14), %eax
	addl	$-101, %eax
	testq	%rcx, %rcx
	movq	%r15, %rbp
	movq	%r12, %r13
	je	.LBB11_49
# BB#44:                                # %cond.true.3.i
	testl	%eax, %eax
	jne	.LBB11_49
# BB#45:                                # %if.then.i.392
	movzbl	1(%r14), %eax
	addl	$-112, %eax
	cmpq	$2, %rcx
	jb	.LBB11_49
# BB#46:                                # %if.then.i.392
	testl	%eax, %eax
	jne	.LBB11_49
# BB#47:                                # %if.then.22.i
	movzbl	2(%r14), %eax
	addl	$-108, %eax
	jmp	.LBB11_49
.LBB11_48:                              # %cond.false.41.i
	movl	$.L.str.139, %esi
	movl	$3, %edx
	movq	%r14, %rdi
	callq	strncmp
	movq	%r15, %rbp
	movq	%r12, %r13
.LBB11_49:                              # %cond.end.43.i
	leaq	(%rbx,%rbx,2), %rbx
	testl	%eax, %eax
	je	.LBB11_50
# BB#57:                                # %if.else.i
	movl	$.L.str.141, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$1, %rcx
	ja	.LBB11_62
# BB#58:                                # %cond.true.63.i
	movzbl	(%r14), %eax
	addl	$-97, %eax
	testq	%rcx, %rcx
	je	.LBB11_59
# BB#60:                                # %cond.true.63.i
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	testl	%eax, %eax
	leaq	1120(%rsp), %rbx
	jne	.LBB11_64
# BB#61:                                # %if.then.77.i
	movzbl	1(%r14), %eax
	addl	$-108, %eax
	jmp	.LBB11_64
.LBB11_50:                              # %if.then.47.i
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	leaq	1120(%rsp), %rdi
	movl	$.L.str.140, %esi
	callq	strcat
	addq	$3, %r14
	movq	%r14, %r12
	leaq	1120(%rsp), %rbx
	jmp	.LBB11_51
.LBB11_62:                              # %cond.false.110.i
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movl	$.L.str.141, %esi
	movl	$2, %edx
	movq	%r14, %rdi
	callq	strncmp
	jmp	.LBB11_63
.LBB11_59:
	movq	%rbx, 8(%rsp)           # 8-byte Spill
.LBB11_63:                              # %cond.end.112.i
	leaq	1120(%rsp), %rbx
.LBB11_64:                              # %cond.end.112.i
	testl	%eax, %eax
	je	.LBB11_65
# BB#67:                                # %if.else.119.i
	movl	$.L.str.143, %edi
	callq	strlen
	movq	%rax, %rcx
	cmpq	$1, %rcx
	ja	.LBB11_71
# BB#68:                                # %cond.true.133.i
	movzbl	(%r14), %eax
	addl	$-108, %eax
	testq	%rcx, %rcx
	je	.LBB11_72
# BB#69:                                # %cond.true.133.i
	testl	%eax, %eax
	jne	.LBB11_72
# BB#70:                                # %if.then.147.i
	movzbl	1(%r14), %eax
	addl	$-112, %eax
	jmp	.LBB11_72
.LBB11_65:                              # %if.then.116.i
	leaq	1120(%rsp), %rdi
	movl	$.L.str.142, %esi
	jmp	.LBB11_66
.LBB11_71:                              # %cond.false.180.i
	movl	$.L.str.143, %esi
	movl	$2, %edx
	movq	%r14, %rdi
	callq	strncmp
.LBB11_72:                              # %cond.end.182.i
	leaq	1120(%rsp), %rdi
	testl	%eax, %eax
	je	.LBB11_73
# BB#74:                                # %if.else.189.i
	movl	$255, %edx
	movq	%r14, %rsi
	callq	strncpy
	movb	$0, 1375(%rsp)
	jmp	.LBB11_75
.LBB11_73:                              # %if.then.186.i
	movl	$.L.str.144, %esi
.LBB11_66:                              # %if.end.194.i
	callq	strcat
	addq	$2, %r14
	movq	%r14, %r12
.LBB11_51:                              # %if.end.194.i
	leaq	1120(%rsp), %r14
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	__rawmemchr
	movq	%rax, %r15
	movq	%r14, %rdi
	callq	strlen
	cmpq	$253, %rax
	ja	.LBB11_56
# BB#52:
	movq	%rbx, %r14
	jmp	.LBB11_53
.LBB11_235:                             # %while.body.i
                                        #   in Loop: Header=BB11_53 Depth=1
	callq	__ctype_toupper_loc
	movq	(%rax), %rax
	movb	(%rax,%rbx,4), %al
	movb	%al, (%r15)
	incq	%r15
	incq	%r12
.LBB11_53:                              # %land.lhs.true.202.i
                                        # =>This Inner Loop Header: Depth=1
	movsbq	(%r12), %rbx
	testq	%rbx, %rbx
	je	.LBB11_55
# BB#54:                                # %land.lhs.true.202.i
                                        #   in Loop: Header=BB11_53 Depth=1
	movzbl	%bl, %eax
	cmpl	$95, %eax
	jne	.LBB11_235
.LBB11_55:
	movq	%r14, %rbx
.LBB11_56:                              # %while.end.i
	movb	$0, (%r15)
.LBB11_75:                              # %trans_modelname.exit
	movq	8(%rsp), %rcx           # 8-byte Reload
	movl	escv_beginpage.model_resource+12(,%rcx,8), %eax
	movl	%eax, 24(%rsp)          # 4-byte Spill
	movl	escv_beginpage.model_resource+16(,%rcx,8), %r12d
	movl	escv_beginpage.model_resource+20(,%rcx,8), %r14d
	movq	%rbx, %rdi
	callq	strlen
	leaq	72(%rsp), %rcx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
.LBB11_77:                              # %if.end.226
	movl	$.L.str.59, %edi
	callq	strlen
	leaq	72(%rsp), %rcx
	movl	$.L.str.59, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.71, %edi
	callq	strlen
	leaq	72(%rsp), %rcx
	movl	$.L.str.71, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	%rbx, %rdi
	callq	strlen
	leaq	72(%rsp), %rcx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.59, %edi
	callq	strlen
	leaq	72(%rsp), %rcx
	movl	$.L.str.59, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	20(%rsp), %r15d         # 4-byte Reload
.LBB11_78:                              # %if.end.231
	cmpb	$0, 18296(%r13)
	je	.LBB11_80
# BB#79:                                # %if.then.234
	leaq	18296(%r13), %rbx
	movl	$.L.str.73, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.73, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	%rbx, %rdi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.64, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.64, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
.LBB11_80:                              # %if.end.240
	movl	$.L.str.74, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.74, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.75, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.75, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movss	884(%r13), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI11_0(%rip), %xmm0
	jne	.LBB11_83
	jp	.LBB11_83
# BB#81:                                # %if.then.246
	cmpl	$1200, %r15d            # imm = 0x4B0
	jne	.LBB11_84
# BB#82:                                # %if.then.249
	movl	$.L.str.76, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.76, %esi
	jmp	.LBB11_86
.LBB11_83:                              # %if.else.254
	ucomiss	.LCPI11_1(%rip), %xmm0
	jne	.LBB11_85
	jp	.LBB11_85
.LBB11_84:                              # %if.else.251
	movl	$.L.str.77, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.77, %esi
	jmp	.LBB11_86
.LBB11_85:                              # %if.else.261
	movl	$.L.str.78, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.78, %esi
.LBB11_86:                              # %if.end.264
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	testl	%r14d, %r14d
	je	.LBB11_88
# BB#87:                                # %if.end.264
	movl	8900(%r13), %eax
	testl	%eax, %eax
	jne	.LBB11_90
.LBB11_88:                              # %lor.lhs.false.269
	testl	%r14d, %r14d
	je	.LBB11_91
# BB#89:                                # %lor.lhs.false.269
	movl	8904(%r13), %eax
	testl	%eax, %eax
	je	.LBB11_91
.LBB11_90:                              # %if.then.273
	movl	$.L.str.79, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.79, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	leaq	8904(%r13), %r14
	jmp	.LBB11_92
.LBB11_91:                              # %if.else.275
	leaq	8904(%r13), %r14
	movl	$.L.str.80, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.80, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
.LBB11_92:                              # %if.end.277
	cmpl	$0, (%r14)
	jne	.LBB11_93
# BB#95:                                # %if.else.288
	cmpl	$0, 8852(%r13)
	je	.LBB11_96
.LBB11_93:                              # %if.then.280
	cmpl	$0, 24(%rsp)            # 4-byte Folded Reload
	je	.LBB11_94
# BB#236:                               # %if.else.285
	movl	$.L.str.82, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.82, %esi
	jmp	.LBB11_99
.LBB11_94:                              # %if.then.283
	movl	$.L.str.81, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.81, %esi
.LBB11_99:                              # %if.end.310
	movq	%rbp, %rdi
.LBB11_100:                             # %if.end.310
	movl	%eax, %edx
	callq	sputs
	testl	%r12d, %r12d
	je	.LBB11_105
# BB#101:                               # %land.lhs.true.312
	cmpl	$0, 8912(%r13)
	je	.LBB11_105
# BB#102:                               # %if.then.315
	movl	$.L.str.85, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.85, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	cmpl	$0, 8916(%r13)
	je	.LBB11_104
# BB#103:                               # %if.then.318
	movl	$.L.str.86, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.86, %esi
	jmp	.LBB11_106
.LBB11_105:                             # %if.else.323
	movl	$.L.str.88, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.88, %esi
	jmp	.LBB11_106
.LBB11_104:                             # %if.else.320
	movl	$.L.str.87, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.87, %esi
.LBB11_106:                             # %if.end.325
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	944(%r13), %eax
	testl	%eax, %eax
	je	.LBB11_124
# BB#107:                               # %if.then.327
	cmpl	$1000, %eax             # imm = 0x3E8
	jl	.LBB11_109
# BB#108:                               # %if.then.331
	movl	$999, 944(%r13)         # imm = 0x3E7
.LBB11_109:                             # %land.lhs.true.339
	movl	$.L.str.44, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	16(%r13), %rdi
	cmpq	$3, %rcx
	ja	.LBB11_117
# BB#110:                               # %cond.true.343
	movzbl	(%rdi), %eax
	addl	$-108, %eax
	testq	%rcx, %rcx
	je	.LBB11_118
# BB#111:                               # %cond.true.343
	testl	%eax, %eax
	jne	.LBB11_118
# BB#112:                               # %if.then.358
	movzbl	1(%rdi), %eax
	addl	$-112, %eax
	cmpq	$2, %rcx
	jb	.LBB11_118
# BB#113:                               # %if.then.358
	testl	%eax, %eax
	jne	.LBB11_118
# BB#114:                               # %if.then.368
	movzbl	2(%rdi), %eax
	addl	$-56, %eax
	cmpq	$3, %rcx
	jb	.LBB11_118
# BB#115:                               # %if.then.368
	testl	%eax, %eax
	jne	.LBB11_118
# BB#116:                               # %if.then.378
	movzbl	3(%rdi), %eax
	addl	$-48, %eax
	jmp	.LBB11_118
.LBB11_124:                             # %if.else.412
	movl	$.L.str.91, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.91, %esi
	movq	%rbp, %rdi
	jmp	.LBB11_125
.LBB11_117:                             # %cond.false.387
	movl	$.L.str.44, %esi
	callq	strcmp
.LBB11_118:                             # %cond.end.390
	testl	%eax, %eax
	je	.LBB11_119
# BB#121:                               # %if.else.398
	cmpl	$0, 8864(%r13)
	movl	944(%r13), %edx
	je	.LBB11_120
# BB#122:                               # %if.then.400
	leaq	80(%rsp), %rdi
	movl	$.L.str.90, %esi
	jmp	.LBB11_123
.LBB11_119:                             # %if.then.394
	movl	944(%r13), %edx
.LBB11_120:                             # %if.else.404
	leaq	80(%rsp), %rdi
	movl	$.L.str.89, %esi
.LBB11_123:                             # %if.end.409
	xorl	%eax, %eax
	callq	gs_sprintf
	leaq	80(%rsp), %rbx
	movq	%rbx, %rdi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
.LBB11_125:                             # %if.end.414
	movl	%eax, %edx
	callq	sputs
	movl	8868(%r13), %edx
	testl	%edx, %edx
	je	.LBB11_127
# BB#126:                               # %if.then.416
	leaq	80(%rsp), %rbx
	movl	$.L.str.92, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
.LBB11_127:                             # %if.end.422
	cmpl	$0, 8896(%r13)
	je	.LBB11_129
# BB#128:                               # %if.then.424
	movl	$.L.str.93, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.93, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
.LBB11_129:                             # %if.end.426
	cmpl	$0, 8872(%r13)
	je	.LBB11_131
# BB#130:                               # %if.then.428
	movl	$.L.str.94, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.94, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
.LBB11_131:                             # %if.end.430
	cmpl	$0, 8860(%r13)
	je	.LBB11_133
# BB#132:                               # %if.then.432
	movl	$.L.str.95, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.95, %esi
	jmp	.LBB11_134
.LBB11_133:                             # %if.else.434
	movl	$.L.str.96, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.96, %esi
.LBB11_134:                             # %if.end.436
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	(%r14), %eax
	cmpq	$9, %rax
	ja	.LBB11_145
# BB#135:                               # %if.end.436
	jmpq	*.LJTI11_0(,%rax,8)
.LBB11_145:                             # %if.else.496
	movl	$.L.str.97, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.97, %esi
.LBB11_146:                             # %if.end.507
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.107, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.107, %esi
	movq	%rbp, %rdi
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movl	%eax, %edx
	callq	sputs
	movss	856(%r13), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	860(%r13), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	%r13, (%rsp)            # 8-byte Spill
	movaps	%xmm0, %xmm2
	minss	%xmm1, %xmm2
	maxss	%xmm0, %xmm1
	cvttss2si	%xmm1, %ebx
	cvttss2si	%xmm2, %edx
	movl	%edx, 20(%rsp)          # 4-byte Spill
	xorl	%ebp, %ebp
	xorl	%edi, %edi
	.align	16, 0x90
.LBB11_147:                             # %for.cond.16.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_148 Depth 2
	movl	$ePaperTable, %r14d
	.align	16, 0x90
.LBB11_148:                             # %for.body.19.i
                                        #   Parent Loop BB11_147 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r14), %r13d
	leal	(%r13,%rbp), %eax
	cmpl	%edx, %eax
	jl	.LBB11_157
# BB#149:                               # %for.body.19.i
                                        #   in Loop: Header=BB11_148 Depth=2
	movl	%r13d, %eax
	subl	%ebp, %eax
	cmpl	%edx, %eax
	jg	.LBB11_157
# BB#150:                               # %land.lhs.true.25.i
                                        #   in Loop: Header=BB11_148 Depth=2
	movl	4(%r14), %r15d
	leal	(%r15,%rbp), %eax
	cmpl	%ebx, %eax
	jl	.LBB11_157
# BB#151:                               # %land.lhs.true.25.i
                                        #   in Loop: Header=BB11_148 Depth=2
	movl	%r15d, %eax
	subl	%ebp, %eax
	cmpl	%ebx, %eax
	jg	.LBB11_157
# BB#152:                               # %if.then.34.i
                                        #   in Loop: Header=BB11_148 Depth=2
	movslq	%edi, %rax
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	leaq	(%rax,%rax,4), %r12
	movq	%r14, 1120(%rsp,%r12,8)
	movl	%r13d, %edi
	subl	%edx, %edi
	callq	abs
	movl	%eax, 1128(%rsp,%r12,8)
	movl	%r15d, %edi
	subl	%ebx, %edi
	callq	abs
	movl	20(%rsp), %edx          # 4-byte Reload
	cmpl	%edx, %r13d
	movl	%eax, 1132(%rsp,%r12,8)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 1136(%rsp,%r12,8)
	movl	$0, 1152(%rsp,%r12,8)
	jl	.LBB11_154
# BB#153:                               # %if.then.59.i
                                        #   in Loop: Header=BB11_148 Depth=2
	movl	$1, 1140(%rsp,%r12,8)
.LBB11_154:                             # %if.end.63.i
                                        #   in Loop: Header=BB11_148 Depth=2
	cmpl	%ebx, %r15d
	jl	.LBB11_156
# BB#155:                               # %if.then.68.i
                                        #   in Loop: Header=BB11_148 Depth=2
	leaq	1144(%rsp,%r12,8), %rax
	movl	$1, (%rax)
.LBB11_156:                             # %if.end.72.i
                                        #   in Loop: Header=BB11_148 Depth=2
	movq	24(%rsp), %rdi          # 8-byte Reload
	incl	%edi
.LBB11_157:                             # %for.inc.i
                                        #   in Loop: Header=BB11_148 Depth=2
	cmpl	$0, 32(%r14)
	leaq	24(%r14), %r14
	jns	.LBB11_148
# BB#158:                               # %for.end.i
                                        #   in Loop: Header=BB11_147 Depth=1
	incl	%ebp
	cmpl	$5, %ebp
	jg	.LBB11_160
# BB#159:                               # %for.end.i
                                        #   in Loop: Header=BB11_147 Depth=1
	testl	%edi, %edi
	jle	.LBB11_147
.LBB11_160:                             # %for.end.80.i
	cmpl	$1, %edi
	jne	.LBB11_161
# BB#163:                               # %if.then.87.i
	movq	1120(%rsp), %rax
	movq	8(%rsp), %rbp           # 8-byte Reload
	movq	(%rsp), %r15            # 8-byte Reload
	jmp	.LBB11_205
.LBB11_161:                             # %for.end.80.i
	testl	%edi, %edi
	movq	(%rsp), %r15            # 8-byte Reload
	jne	.LBB11_164
# BB#162:                               # %escv_checkpapersize.exit.thread
	movq	8(%rsp), %rbp           # 8-byte Reload
	jmp	.LBB11_206
.LBB11_164:                             # %if.end.90.i
	xorl	%ecx, %ecx
	cmpl	$2, %edi
	jl	.LBB11_204
# BB#165:                               # %for.body.98.i.preheader
	movq	1128(%rsp), %r11
	movq	%r11, %rcx
	shrq	$32, %rcx
	leal	-2(%rdi), %r10d
	leaq	1(%r10), %r9
	leaq	2(%r10), %r8
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rax, %r9
	orq	$1, %r9
	cmpq	$1, %r9
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movd	%r11d, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	jne	.LBB11_167
# BB#166:
	movl	$1, %r9d
	movdqa	%xmm0, %xmm2
	movdqa	%xmm1, %xmm3
	jmp	.LBB11_170
.LBB11_96:                              # %if.else.298
	movl	8856(%r13), %edx
	testl	%edx, %edx
	je	.LBB11_98
# BB#97:                                # %if.then.300
	leaq	80(%rsp), %rbx
	movl	$.L.str.83, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	jmp	.LBB11_100
.LBB11_167:                             # %vector.body.preheader
	movq	%rdi, %r13
	leaq	1172(%rsp), %rdi
	incq	%r10
	andq	%rax, %r10
	xorl	%ebp, %ebp
	movl	$1, %eax
	movd	%rax, %xmm11
	pslldq	$8, %xmm11              # xmm11 = zero,zero,zero,zero,zero,zero,zero,zero,xmm11[0,1,2,3,4,5,6,7]
	movdqa	.LCPI11_2(%rip), %xmm8  # xmm8 = [2,3]
	movdqa	.LCPI11_3(%rip), %xmm9  # xmm9 = [6,7]
	movdqa	.LCPI11_4(%rip), %xmm10 # xmm10 = [4,5]
	movdqa	%xmm0, %xmm2
	movdqa	%xmm1, %xmm3
	.align	16, 0x90
.LBB11_168:                             # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	1(%rbp), %rax
	movd	%rax, %xmm5
	pshufd	$68, %xmm5, %xmm5       # xmm5 = xmm5[0,1,0,1]
	movdqa	%xmm5, %xmm6
	paddq	%xmm11, %xmm6
	movdqa	%xmm5, %xmm7
	paddq	%xmm8, %xmm7
	movdqa	%xmm5, %xmm4
	paddq	%xmm9, %xmm4
	paddq	%xmm10, %xmm5
	pshufd	$78, %xmm6, %xmm6       # xmm6 = xmm6[2,3,0,1]
	movd	%xmm6, %rax
	leaq	(%rax,%rax,4), %rdx
	movd	%xmm7, %rax
	leaq	(%rax,%rax,4), %rax
	pshufd	$78, %xmm7, %xmm6       # xmm6 = xmm7[2,3,0,1]
	movd	%xmm6, %rcx
	leaq	(%rcx,%rcx,4), %rsi
	movd	%xmm5, %rcx
	leaq	(%rcx,%rcx,4), %r12
	pshufd	$78, %xmm5, %xmm5       # xmm5 = xmm5[2,3,0,1]
	movd	%xmm5, %rcx
	leaq	(%rcx,%rcx,4), %r14
	movd	%xmm4, %rcx
	leaq	(%rcx,%rcx,4), %rcx
	pshufd	$78, %xmm4, %xmm4       # xmm4 = xmm4[2,3,0,1]
	movd	%xmm4, %rbx
	leaq	(%rbx,%rbx,4), %rbx
	movd	-4(%rdi), %xmm4         # xmm4 = mem[0],zero,zero,zero
	movd	1128(%rsp,%rax,8), %xmm5 # xmm5 = mem[0],zero,zero,zero
	punpckldq	%xmm5, %xmm4    # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	movd	1128(%rsp,%rdx,8), %xmm5 # xmm5 = mem[0],zero,zero,zero
	movd	1128(%rsp,%rsi,8), %xmm6 # xmm6 = mem[0],zero,zero,zero
	punpckldq	%xmm6, %xmm5    # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1]
	punpckldq	%xmm5, %xmm4    # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	movd	1128(%rsp,%rcx,8), %xmm5 # xmm5 = mem[0],zero,zero,zero
	movd	1128(%rsp,%r12,8), %xmm6 # xmm6 = mem[0],zero,zero,zero
	punpckldq	%xmm5, %xmm6    # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	movd	1128(%rsp,%rbx,8), %xmm5 # xmm5 = mem[0],zero,zero,zero
	movd	1128(%rsp,%r14,8), %xmm7 # xmm7 = mem[0],zero,zero,zero
	punpckldq	%xmm5, %xmm7    # xmm7 = xmm7[0],xmm5[0],xmm7[1],xmm5[1]
	punpckldq	%xmm7, %xmm6    # xmm6 = xmm6[0],xmm7[0],xmm6[1],xmm7[1]
	movdqa	%xmm1, %xmm5
	pcmpgtd	%xmm4, %xmm5
	movdqa	%xmm3, %xmm7
	pcmpgtd	%xmm6, %xmm7
	pand	%xmm5, %xmm4
	pandn	%xmm1, %xmm5
	movdqa	%xmm5, %xmm1
	por	%xmm4, %xmm1
	pand	%xmm7, %xmm6
	pandn	%xmm3, %xmm7
	movdqa	%xmm7, %xmm3
	por	%xmm6, %xmm3
	movd	(%rdi), %xmm4           # xmm4 = mem[0],zero,zero,zero
	movd	1132(%rsp,%rax,8), %xmm5 # xmm5 = mem[0],zero,zero,zero
	punpckldq	%xmm5, %xmm4    # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	movd	1132(%rsp,%rdx,8), %xmm5 # xmm5 = mem[0],zero,zero,zero
	movd	1132(%rsp,%rsi,8), %xmm6 # xmm6 = mem[0],zero,zero,zero
	punpckldq	%xmm6, %xmm5    # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1]
	punpckldq	%xmm5, %xmm4    # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	movd	1132(%rsp,%rcx,8), %xmm5 # xmm5 = mem[0],zero,zero,zero
	movd	1132(%rsp,%r12,8), %xmm6 # xmm6 = mem[0],zero,zero,zero
	punpckldq	%xmm5, %xmm6    # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	movd	1132(%rsp,%rbx,8), %xmm5 # xmm5 = mem[0],zero,zero,zero
	movd	1132(%rsp,%r14,8), %xmm7 # xmm7 = mem[0],zero,zero,zero
	punpckldq	%xmm5, %xmm7    # xmm7 = xmm7[0],xmm5[0],xmm7[1],xmm5[1]
	punpckldq	%xmm7, %xmm6    # xmm6 = xmm6[0],xmm7[0],xmm6[1],xmm7[1]
	movdqa	%xmm0, %xmm5
	pcmpgtd	%xmm4, %xmm5
	movdqa	%xmm2, %xmm7
	pcmpgtd	%xmm6, %xmm7
	pand	%xmm5, %xmm4
	pandn	%xmm0, %xmm5
	movdqa	%xmm5, %xmm0
	por	%xmm4, %xmm0
	pand	%xmm7, %xmm6
	pandn	%xmm2, %xmm7
	movdqa	%xmm7, %xmm2
	por	%xmm6, %xmm2
	addq	$320, %rdi              # imm = 0x140
	addq	$8, %rbp
	cmpq	%rbp, %r10
	jne	.LBB11_168
# BB#169:
	movq	%r13, %rdi
.LBB11_170:                             # %middle.block
	movdqa	%xmm3, %xmm4
	pcmpgtd	%xmm1, %xmm4
	pand	%xmm4, %xmm1
	pandn	%xmm3, %xmm4
	por	%xmm1, %xmm4
	pshufd	$78, %xmm4, %xmm1       # xmm1 = xmm4[2,3,0,1]
	movdqa	%xmm1, %xmm3
	pcmpgtd	%xmm4, %xmm3
	pand	%xmm3, %xmm4
	pandn	%xmm1, %xmm3
	por	%xmm4, %xmm3
	pshufd	$229, %xmm3, %xmm1      # xmm1 = xmm3[1,1,2,3]
	movd	%xmm1, %eax
	pcmpgtd	%xmm3, %xmm1
	movdqa	%xmm1, 32(%rsp)
	testb	$1, 32(%rsp)
	movd	%xmm3, %esi
	cmovel	%eax, %esi
	movdqa	%xmm2, %xmm1
	pcmpgtd	%xmm0, %xmm1
	pand	%xmm1, %xmm0
	pandn	%xmm2, %xmm1
	por	%xmm0, %xmm1
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	movdqa	%xmm0, %xmm2
	pcmpgtd	%xmm1, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm0, %xmm2
	por	%xmm1, %xmm2
	pshufd	$229, %xmm2, %xmm0      # xmm0 = xmm2[1,1,2,3]
	movd	%xmm0, %eax
	pcmpgtd	%xmm2, %xmm0
	movdqa	%xmm0, 48(%rsp)
	movd	%xmm2, %ebx
	testb	$1, 48(%rsp)
	cmovel	%eax, %ebx
	cmpq	%r9, %r8
	je	.LBB11_173
# BB#171:                               # %for.body.98.i.preheader783
	movl	%edi, %eax
	subl	%r9d, %eax
	leaq	(%r9,%r9,4), %rcx
	leaq	1132(%rsp,%rcx,8), %rcx
	.align	16, 0x90
.LBB11_172:                             # %for.body.98.i
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rcx), %edx
	movl	(%rcx), %ebp
	cmpl	%edx, %esi
	cmovgl	%edx, %esi
	cmpl	%ebp, %ebx
	cmovgl	%ebp, %ebx
	addq	$40, %rcx
	decl	%eax
	jne	.LBB11_172
.LBB11_173:                             # %for.cond.122.preheader.i
	testl	%edi, %edi
	jle	.LBB11_195
# BB#174:                               # %for.body.125.i.preheader
	leaq	1168(%rsp), %rax
	movl	%edi, %ecx
	jmp	.LBB11_175
	.align	16, 0x90
.LBB11_180:                             # %for.inc.146.for.body.125_crit_edge.i
                                        #   in Loop: Header=BB11_175 Depth=1
	movl	(%rax), %r11d
	addq	$40, %rax
.LBB11_175:                             # %for.body.125.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%r11d, %esi
	jne	.LBB11_177
# BB#176:                               # %if.then.131.i
                                        #   in Loop: Header=BB11_175 Depth=1
	movl	$1, -20(%rax)
.LBB11_177:                             # %if.end.135.i
                                        #   in Loop: Header=BB11_175 Depth=1
	cmpl	-36(%rax), %ebx
	jne	.LBB11_179
# BB#178:                               # %if.then.141.i
                                        #   in Loop: Header=BB11_175 Depth=1
	movl	$1, -16(%rax)
.LBB11_179:                             # %for.inc.146.i
                                        #   in Loop: Header=BB11_175 Depth=1
	decl	%ecx
	jne	.LBB11_180
# BB#181:                               # %for.body.152.lr.ph.i
	leaq	1152(%rsp), %rax
	movl	%edi, %ecx
	.align	16, 0x90
.LBB11_182:                             # %for.body.152.i
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rax), %edx
	cmpl	$1, %edx
	jne	.LBB11_184
# BB#183:                               # %if.then.158.i
                                        #   in Loop: Header=BB11_182 Depth=1
	addl	$100, -16(%rax)
.LBB11_184:                             # %if.end.163.i
                                        #   in Loop: Header=BB11_182 Depth=1
	movl	(%rax), %ebp
	cmpl	$1, %ebp
	jne	.LBB11_186
# BB#185:                               # %if.then.169.i
                                        #   in Loop: Header=BB11_182 Depth=1
	addl	$100, -16(%rax)
.LBB11_186:                             # %if.end.174.i
                                        #   in Loop: Header=BB11_182 Depth=1
	cmpl	$1, -12(%rax)
	jne	.LBB11_188
# BB#187:                               # %if.then.180.i
                                        #   in Loop: Header=BB11_182 Depth=1
	addl	$10, -16(%rax)
.LBB11_188:                             # %if.end.185.i
                                        #   in Loop: Header=BB11_182 Depth=1
	cmpl	$1, -8(%rax)
	jne	.LBB11_190
# BB#189:                               # %if.then.191.i
                                        #   in Loop: Header=BB11_182 Depth=1
	addl	$10, -16(%rax)
.LBB11_190:                             # %if.end.196.i
                                        #   in Loop: Header=BB11_182 Depth=1
	cmpl	%ebx, %esi
	jge	.LBB11_192
# BB#191:                               # %if.then.199.i
                                        #   in Loop: Header=BB11_182 Depth=1
	cmpl	$1, %edx
	je	.LBB11_193
	jmp	.LBB11_194
	.align	16, 0x90
.LBB11_192:                             # %if.else.211.i
                                        #   in Loop: Header=BB11_182 Depth=1
	cmpl	$1, %ebp
	jne	.LBB11_194
.LBB11_193:                             # %if.then.217.i
                                        #   in Loop: Header=BB11_182 Depth=1
	incl	-16(%rax)
.LBB11_194:                             # %for.inc.224.i
                                        #   in Loop: Header=BB11_182 Depth=1
	addq	$40, %rax
	decl	%ecx
	jne	.LBB11_182
.LBB11_195:                             # %for.body.231.i.preheader
	xorl	%ecx, %ecx
	movl	$1, %eax
	testb	$1, %dil
	movl	$0, %edx
	jne	.LBB11_197
# BB#196:                               # %for.body.231.i.prol
	movl	1136(%rsp), %eax
	cmpl	1176(%rsp), %eax
	setle	%al
	movzbl	%al, %ecx
	movl	$2, %eax
	movl	%ecx, %edx
.LBB11_197:                             # %for.body.231.i.preheader.split
	cmpl	$2, %edi
	je	.LBB11_204
# BB#198:                               # %for.body.231.i.preheader.split.split
	leaq	(%rax,%rax,4), %rsi
	leaq	1176(%rsp,%rsi,8), %rsi
	.align	16, 0x90
.LBB11_199:                             # %for.body.231.i
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%rcx,%rcx,4), %rcx
	movl	1136(%rsp,%rcx,8), %ecx
	cmpl	-40(%rsi), %ecx
	jg	.LBB11_201
# BB#200:                               # %select.mid
                                        #   in Loop: Header=BB11_199 Depth=1
	movl	%eax, %edx
.LBB11_201:                             # %select.end
                                        #   in Loop: Header=BB11_199 Depth=1
	movslq	%edx, %rcx
	leaq	(%rcx,%rcx,4), %rcx
	movl	1136(%rsp,%rcx,8), %ecx
	cmpl	(%rsi), %ecx
	jg	.LBB11_203
# BB#202:                               # %select.mid898
                                        #   in Loop: Header=BB11_199 Depth=1
	leal	1(%rax), %edx
.LBB11_203:                             # %select.end897
                                        #   in Loop: Header=BB11_199 Depth=1
	addq	$2, %rax
	movslq	%edx, %rcx
	addq	$80, %rsi
	cmpl	%edi, %eax
	jne	.LBB11_199
.LBB11_204:                             # %for.end.244.i
	leaq	(%rcx,%rcx,4), %rax
	movq	1120(%rsp,%rax,8), %rax
	movq	8(%rsp), %rbp           # 8-byte Reload
.LBB11_205:                             # %escv_checkpapersize.exit
	testq	%rax, %rax
	je	.LBB11_206
# BB#207:                               # %if.else.515
	movq	16(%rax), %rbx
	movq	%rbx, %rdi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	jmp	.LBB11_208
.LBB11_206:                             # %if.then.513
	movl	$.L.str.108, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.108, %esi
	movq	%rbp, %rdi
.LBB11_208:                             # %if.end.518
	movl	%eax, %edx
	callq	sputs
	cmpl	$0, 8848(%r15)
	je	.LBB11_209
# BB#215:                               # %if.else.552
	movl	$.L.str.125, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.125, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.126, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.126, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.111, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.111, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.44, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	16(%r15), %rdi
	cmpq	$3, %rcx
	ja	.LBB11_223
# BB#216:                               # %cond.true.565
	movzbl	(%rdi), %eax
	addl	$-108, %eax
	testq	%rcx, %rcx
	je	.LBB11_224
# BB#217:                               # %cond.true.565
	testl	%eax, %eax
	jne	.LBB11_224
# BB#218:                               # %if.then.580
	movzbl	1(%rdi), %eax
	addl	$-112, %eax
	cmpq	$2, %rcx
	jb	.LBB11_224
# BB#219:                               # %if.then.580
	testl	%eax, %eax
	jne	.LBB11_224
# BB#220:                               # %if.then.590
	movzbl	2(%rdi), %eax
	addl	$-56, %eax
	cmpq	$3, %rcx
	jb	.LBB11_224
# BB#221:                               # %if.then.590
	testl	%eax, %eax
	jne	.LBB11_224
# BB#222:                               # %if.then.600
	movzbl	3(%rdi), %eax
	addl	$-48, %eax
	jmp	.LBB11_224
.LBB11_209:                             # %if.then.521
	movl	$.L.str.109, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.109, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.110, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.110, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.111, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.111, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.112, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.112, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movss	884(%r15), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI11_0(%rip), %xmm0
	jne	.LBB11_211
	jp	.LBB11_211
# BB#210:                               # %if.then.530
	movl	$.L.str.113, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.113, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.114, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.114, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.115, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.115, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.116, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.116, %esi
	jmp	.LBB11_214
.LBB11_223:                             # %cond.false.609
	movl	$.L.str.44, %esi
	callq	strcmp
.LBB11_224:                             # %cond.end.612
	testl	%eax, %eax
	je	.LBB11_225
# BB#226:                               # %if.else.618
	movl	$.L.str.128, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.128, %esi
	jmp	.LBB11_227
.LBB11_225:                             # %if.then.616
	movl	$.L.str.127, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.127, %esi
.LBB11_227:                             # %if.end.620
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	leaq	1120(%rsp), %rcx
	movl	$.L.str.129, %esi
	movl	$20, %edx
	movq	%rbp, %rdi
	callq	sputs
	movl	$.L.str.130, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.130, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movss	884(%r15), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI11_0(%rip), %xmm0
	jne	.LBB11_229
	jp	.LBB11_229
# BB#228:                               # %if.then.626
	movl	$.L.str.113, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.113, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.131, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.131, %esi
	jmp	.LBB11_232
.LBB11_229:                             # %if.else.629
	ucomiss	.LCPI11_1(%rip), %xmm0
	jne	.LBB11_231
	jp	.LBB11_231
# BB#230:                               # %if.then.634
	movl	$.L.str.117, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.117, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.132, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.132, %esi
	jmp	.LBB11_232
.LBB11_211:                             # %if.else.535
	ucomiss	.LCPI11_1(%rip), %xmm0
	jne	.LBB11_213
	jp	.LBB11_213
# BB#212:                               # %if.then.540
	movl	$.L.str.117, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.117, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.118, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.118, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.119, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.119, %esi
	jmp	.LBB11_214
.LBB11_231:                             # %if.else.637
	movl	$.L.str.120, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.120, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.133, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.133, %esi
.LBB11_232:                             # %if.end.641
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.134, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.134, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.135, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.135, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.136, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.136, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	leaq	1120(%rsp), %rcx
	movl	$.L.str.137, %esi
	movl	$8, %edx
	movq	%rbp, %rdi
	callq	sputs
	movl	$.L.str.124, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.124, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.138, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.138, %esi
	jmp	.LBB11_233
.LBB11_98:                              # %if.else.306
	movl	$.L.str.84, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.84, %esi
	jmp	.LBB11_99
.LBB11_213:                             # %if.else.544
	movl	$.L.str.120, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.120, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.121, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.121, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.122, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.122, %esi
.LBB11_214:                             # %if.end.549
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.123, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.123, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.124, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.124, %esi
.LBB11_233:                             # %if.end.647
	movq	%rbp, %rdi
	movl	%eax, %edx
	callq	sputs
.LBB11_234:                             # %if.end.648
	xorl	%eax, %eax
	addq	$2040, %rsp             # imm = 0x7F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_136:                             # %if.then.446
	movl	$.L.str.98, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.98, %esi
	jmp	.LBB11_146
.LBB11_137:                             # %if.then.452
	movl	$.L.str.99, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.99, %esi
	jmp	.LBB11_146
.LBB11_138:                             # %if.then.458
	movl	$.L.str.100, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.100, %esi
	jmp	.LBB11_146
.LBB11_139:                             # %if.then.464
	movl	$.L.str.101, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.101, %esi
	jmp	.LBB11_146
.LBB11_140:                             # %if.then.470
	movl	$.L.str.102, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.102, %esi
	jmp	.LBB11_146
.LBB11_141:                             # %if.then.476
	movl	$.L.str.103, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.103, %esi
	jmp	.LBB11_146
.LBB11_142:                             # %if.then.482
	movl	$.L.str.104, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.104, %esi
	jmp	.LBB11_146
.LBB11_143:                             # %if.then.488
	movl	$.L.str.105, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.105, %esi
	jmp	.LBB11_146
.LBB11_144:                             # %if.then.494
	movl	$.L.str.106, %edi
	callq	strlen
	leaq	1120(%rsp), %rcx
	movl	$.L.str.106, %esi
	jmp	.LBB11_146
.Lfunc_end11:
	.size	escv_beginpage, .Lfunc_end11-escv_beginpage
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI11_0:
	.quad	.LBB11_145
	.quad	.LBB11_136
	.quad	.LBB11_137
	.quad	.LBB11_138
	.quad	.LBB11_139
	.quad	.LBB11_140
	.quad	.LBB11_141
	.quad	.LBB11_142
	.quad	.LBB11_143
	.quad	.LBB11_144

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	escv_setlinewidth,@function
escv_setlinewidth:                      # @escv_setlinewidth
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp96:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp97:
	.cfi_def_cfa_offset 24
	subq	$88, %rsp
.Ltmp98:
	.cfi_def_cfa_offset 112
.Ltmp99:
	.cfi_offset %rbx, -24
.Ltmp100:
	.cfi_offset %r14, -16
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	callq	gdev_vector_stream
	movq	%rax, %r14
	movsd	.LCPI12_0(%rip), %xmm0  # xmm0 = mem[0],zero
	maxsd	8(%rsp), %xmm0          # 8-byte Folded Reload
	movsd	%xmm0, 8968(%rbx)
	cvttsd2si	%xmm0, %edx
	movl	8976(%rbx), %ecx
	movl	8984(%rbx), %r8d
	leaq	16(%rsp), %rbx
	movl	$.L.str.165, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	leaq	84(%rsp), %rcx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
	xorl	%eax, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end12:
	.size	escv_setlinewidth, .Lfunc_end12-escv_setlinewidth
	.cfi_endproc

	.align	16, 0x90
	.type	escv_setlinecap,@function
escv_setlinecap:                        # @escv_setlinecap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp102:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp103:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp104:
	.cfi_def_cfa_offset 40
	subq	$72, %rsp
.Ltmp105:
	.cfi_def_cfa_offset 112
.Ltmp106:
	.cfi_offset %rbx, -40
.Ltmp107:
	.cfi_offset %r14, -32
.Ltmp108:
	.cfi_offset %r15, -24
.Ltmp109:
	.cfi_offset %rbp, -16
	movl	%esi, %ebx
	movq	%rdi, %rbp
	callq	gdev_vector_stream
	movq	%rax, %r14
	movl	%ebx, %eax
	movq	%rax, 8976(%rbp)
	movl	$-1, %r15d
	cmpl	$2, %ebx
	ja	.LBB13_2
# BB#1:                                 # %if.end
	cvttsd2si	8968(%rbp), %edx
	movl	8984(%rbp), %r8d
	xorl	%r15d, %r15d
	leaq	(%rsp), %rbp
	movl	$.L.str.165, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%ebx, %ecx
	callq	gs_sprintf
	movq	%rbp, %rdi
	callq	strlen
	leaq	68(%rsp), %rcx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	sputs
.LBB13_2:                               # %cleanup
	movl	%r15d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	escv_setlinecap, .Lfunc_end13-escv_setlinecap
	.cfi_endproc

	.align	16, 0x90
	.type	escv_setlinejoin,@function
escv_setlinejoin:                       # @escv_setlinejoin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp111:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp112:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp113:
	.cfi_def_cfa_offset 40
	subq	$72, %rsp
.Ltmp114:
	.cfi_def_cfa_offset 112
.Ltmp115:
	.cfi_offset %rbx, -40
.Ltmp116:
	.cfi_offset %r14, -32
.Ltmp117:
	.cfi_offset %r15, -24
.Ltmp118:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	callq	gdev_vector_stream
	movq	%rax, %r14
	cmpl	$2, %ebp
	je	.LBB14_5
# BB#1:                                 # %entry
	cmpl	$1, %ebp
	jne	.LBB14_2
# BB#4:                                 # %sw.bb.2
	movq	$1, 8984(%rbx)
	movl	$1, %r8d
	jmp	.LBB14_6
.LBB14_5:                               # %sw.bb.4
	movq	$2, 8984(%rbx)
	movl	$2, %r8d
	jmp	.LBB14_6
.LBB14_2:                               # %entry
	movl	$-1, %r15d
	testl	%ebp, %ebp
	jne	.LBB14_7
# BB#3:                                 # %sw.bb
	movq	$3, 8984(%rbx)
	movl	$3, %r8d
.LBB14_6:                               # %sw.epilog
	cvttsd2si	8968(%rbx), %edx
	movl	8976(%rbx), %ecx
	xorl	%r15d, %r15d
	leaq	(%rsp), %rbx
	movl	$.L.str.165, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	leaq	68(%rsp), %rcx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
.LBB14_7:                               # %cleanup
	movl	%r15d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	escv_setlinejoin, .Lfunc_end14-escv_setlinejoin
	.cfi_endproc

	.align	16, 0x90
	.type	escv_setmiterlimit,@function
escv_setmiterlimit:                     # @escv_setmiterlimit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp119:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp120:
	.cfi_def_cfa_offset 24
	subq	$152, %rsp
.Ltmp121:
	.cfi_def_cfa_offset 176
.Ltmp122:
	.cfi_offset %rbx, -24
.Ltmp123:
	.cfi_offset %r14, -16
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	callq	gdev_vector_stream
	movq	%rax, %r14
	cmpq	$3, 8984(%rbx)
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	$3, 8984(%rbx)
	cvttsd2si	8968(%rbx), %edx
	movl	8976(%rbx), %ecx
	leaq	16(%rsp), %rbx
	movl	$.L.str.165, %esi
	movl	$3, %r8d
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	leaq	148(%rsp), %rcx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
.LBB15_2:                               # %if.end
	cvttsd2si	8(%rsp), %edx   # 8-byte Folded Reload
	leaq	16(%rsp), %rbx
	movl	$.L.str.166, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	leaq	148(%rsp), %rcx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
	xorl	%eax, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end15:
	.size	escv_setmiterlimit, .Lfunc_end15-escv_setmiterlimit
	.cfi_endproc

	.align	16, 0x90
	.type	escv_setdash,@function
escv_setdash:                           # @escv_setdash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp124:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp125:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp126:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp127:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp128:
	.cfi_def_cfa_offset 48
	subq	$96, %rsp
.Ltmp129:
	.cfi_def_cfa_offset 144
.Ltmp130:
	.cfi_offset %rbx, -48
.Ltmp131:
	.cfi_offset %r12, -40
.Ltmp132:
	.cfi_offset %r14, -32
.Ltmp133:
	.cfi_offset %r15, -24
.Ltmp134:
	.cfi_offset %rbp, -16
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movl	%edx, %ebp
	movq	%rsi, %rbx
	callq	gdev_vector_stream
	movq	%rax, %r14
	testl	%ebp, %ebp
	je	.LBB16_1
# BB#2:                                 # %if.end
	movl	$-1, %eax
	xorpd	%xmm0, %xmm0
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB16_13
	jp	.LBB16_13
# BB#3:                                 # %if.end.4
	xorl	%ecx, %ecx
	cmpl	$1, %ebp
	jne	.LBB16_4
# BB#5:                                 # %if.then.7
	cvttss2si	(%rbx), %edx
	leaq	16(%rsp), %rbx
	movl	$.L.str.168, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%edx, %ecx
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	leaq	92(%rsp), %rcx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	jmp	.LBB16_11
.LBB16_1:                               # %if.then
	movl	$.L.str.167, %edi
	callq	strlen
	leaq	92(%rsp), %rcx
	movl	$.L.str.167, %esi
	jmp	.LBB16_12
.LBB16_4:
	xorpd	%xmm0, %xmm0
	.align	16, 0x90
.LBB16_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rbx,%rcx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB16_6
	jp	.LBB16_6
	jmp	.LBB16_13
.LBB16_6:                               # %for.cond
                                        #   in Loop: Header=BB16_7 Depth=1
	incq	%rcx
	cmpl	%ebp, %ecx
	jb	.LBB16_7
# BB#8:                                 # %for.body.24.lr.ph
	movl	$.L.str.169, %edi
	callq	strlen
	leaq	92(%rsp), %r15
	movl	$.L.str.169, %esi
	movq	%r14, %rdi
	movl	%eax, %edx
	movq	%r15, %rcx
	callq	sputs
	leaq	16(%rsp), %r12
	.align	16, 0x90
.LBB16_9:                               # %for.body.24
                                        # =>This Inner Loop Header: Depth=1
	cvttss2si	(%rbx), %edx
	movl	$.L.str.170, %esi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	gs_sprintf
	movq	%r12, %rdi
	callq	strlen
	movq	%r14, %rdi
	movq	%r12, %rsi
	movl	%eax, %edx
	movq	%r15, %rcx
	callq	sputs
	addq	$4, %rbx
	decl	%ebp
	jne	.LBB16_9
# BB#10:                                # %for.end.34
	movl	$.L.str.171, %edi
	callq	strlen
	leaq	92(%rsp), %rcx
	movl	$.L.str.171, %esi
	movq	%r14, %rdi
.LBB16_11:                              # %if.end.36
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.172, %edi
	callq	strlen
	leaq	92(%rsp), %rcx
	movl	$.L.str.172, %esi
.LBB16_12:                              # %cleanup
	movq	%r14, %rdi
	movl	%eax, %edx
	callq	sputs
	xorl	%eax, %eax
.LBB16_13:                              # %cleanup
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	escv_setdash, .Lfunc_end16-escv_setdash
	.cfi_endproc

	.align	16, 0x90
	.type	escv_setflat,@function
escv_setflat:                           # @escv_setflat
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end17:
	.size	escv_setflat, .Lfunc_end17-escv_setflat
	.cfi_endproc

	.align	16, 0x90
	.type	escv_setlogop,@function
escv_setlogop:                          # @escv_setlogop
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end18:
	.size	escv_setlogop, .Lfunc_end18-escv_setlogop
	.cfi_endproc

	.align	16, 0x90
	.type	escv_can_handle_hl_color,@function
escv_can_handle_hl_color:               # @escv_can_handle_hl_color
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end19:
	.size	escv_can_handle_hl_color, .Lfunc_end19-escv_can_handle_hl_color
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI20_0:
	.long	1150681088              # float 1200
.LCPI20_1:
	.long	1142292480              # float 600
	.text
	.align	16, 0x90
	.type	escv_setfillcolor,@function
escv_setfillcolor:                      # @escv_setfillcolor
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
	pushq	%rbx
.Ltmp138:
	.cfi_def_cfa_offset 40
	subq	$72, %rsp
.Ltmp139:
	.cfi_def_cfa_offset 112
.Ltmp140:
	.cfi_offset %rbx, -40
.Ltmp141:
	.cfi_offset %r14, -32
.Ltmp142:
	.cfi_offset %r15, -24
.Ltmp143:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	movq	%rdi, %rbx
	callq	gdev_vector_stream
	movq	%rax, %r14
	movq	(%rbp), %rax
	movl	$-15, %r15d
	cmpq	gx_dc_type_pure(%rip), %rax
	jne	.LBB20_10
# BB#1:                                 # %if.end
	movq	8(%rbp), %rdx
	movq	%rdx, 8960(%rbx)
	cmpl	$0, 8848(%rbx)
	je	.LBB20_2
# BB#8:                                 # %if.else.18
	movl	%edx, %eax
	shrl	$16, %eax
	movzbl	%al, %ebp
	movzbl	%dh, %ecx  # NOREX
	movzbl	%dl, %r8d
	xorl	%r15d, %r15d
	leaq	(%rsp), %rbx
	movl	$.L.str.174, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	leaq	68(%rsp), %rcx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
	movl	$.L.str.175, %edi
	callq	strlen
	leaq	68(%rsp), %rcx
	movl	$.L.str.175, %esi
	jmp	.LBB20_9
.LBB20_2:                               # %if.then.2
	xorl	%r15d, %r15d
	leaq	(%rsp), %rbp
	movl	$.L.str.173, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	gs_sprintf
	movq	%rbp, %rdi
	callq	strlen
	leaq	68(%rsp), %rcx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	sputs
	movss	884(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI20_0(%rip), %xmm0
	jne	.LBB20_4
	jp	.LBB20_4
# BB#3:                                 # %if.then.7
	movl	$.L.str.114, %edi
	callq	strlen
	leaq	68(%rsp), %rcx
	movl	$.L.str.114, %esi
.LBB20_9:                               # %cleanup
	movq	%r14, %rdi
	movl	%eax, %edx
	callq	sputs
.LBB20_10:                              # %cleanup
	movl	%r15d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB20_4:                               # %if.else
	ucomiss	.LCPI20_1(%rip), %xmm0
	jne	.LBB20_7
	jp	.LBB20_7
# BB#5:                                 # %if.then.12
	movl	$.L.str.118, %edi
	callq	strlen
	leaq	68(%rsp), %rcx
	movl	$.L.str.118, %esi
	jmp	.LBB20_6
.LBB20_7:                               # %if.else.14
	movl	$.L.str.121, %edi
	callq	strlen
	leaq	68(%rsp), %rcx
	movl	$.L.str.121, %esi
.LBB20_6:                               # %cleanup
	movq	%r14, %rdi
	movl	%eax, %edx
	callq	sputs
	xorl	%r15d, %r15d
	jmp	.LBB20_10
.Lfunc_end20:
	.size	escv_setfillcolor, .Lfunc_end20-escv_setfillcolor
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI21_0:
	.long	1150681088              # float 1200
.LCPI21_1:
	.long	1142292480              # float 600
	.text
	.align	16, 0x90
	.type	escv_setstrokecolor,@function
escv_setstrokecolor:                    # @escv_setstrokecolor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp144:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp145:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp146:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp147:
	.cfi_def_cfa_offset 40
	subq	$72, %rsp
.Ltmp148:
	.cfi_def_cfa_offset 112
.Ltmp149:
	.cfi_offset %rbx, -40
.Ltmp150:
	.cfi_offset %r14, -32
.Ltmp151:
	.cfi_offset %r15, -24
.Ltmp152:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	movq	%rdi, %rbx
	callq	gdev_vector_stream
	movq	%rax, %r14
	movq	(%rbp), %rax
	movl	$-15, %r15d
	cmpq	gx_dc_type_pure(%rip), %rax
	jne	.LBB21_11
# BB#1:                                 # %if.end
	movq	8(%rbp), %rdx
	cmpl	$0, 8848(%rbx)
	je	.LBB21_2
# BB#8:                                 # %if.else.18
	xorl	%r15d, %r15d
	movzwl	108(%rbx), %eax
	cmpl	$24, %eax
	jne	.LBB21_11
# BB#9:                                 # %if.then.21
	movq	%rdx, 8960(%rbx)
	movl	%edx, %eax
	shrl	$16, %eax
	movzbl	%al, %ebp
	movzbl	%dh, %ecx  # NOREX
	movzbl	%dl, %r8d
	xorl	%r15d, %r15d
	leaq	(%rsp), %rbx
	movl	$.L.str.177, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	leaq	68(%rsp), %rcx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	jmp	.LBB21_10
.LBB21_2:                               # %if.then.2
	movq	%rdx, 8960(%rbx)
	xorl	%r15d, %r15d
	leaq	(%rsp), %rbp
	movl	$.L.str.176, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	gs_sprintf
	movq	%rbp, %rdi
	callq	strlen
	leaq	68(%rsp), %rcx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	sputs
	movss	884(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI21_0(%rip), %xmm0
	jne	.LBB21_4
	jp	.LBB21_4
# BB#3:                                 # %if.then.7
	movl	$.L.str.114, %edi
	callq	strlen
	leaq	68(%rsp), %rcx
	movl	$.L.str.114, %esi
	movq	%r14, %rdi
.LBB21_10:                              # %cleanup
	movl	%eax, %edx
	callq	sputs
	jmp	.LBB21_11
.LBB21_4:                               # %if.else
	ucomiss	.LCPI21_1(%rip), %xmm0
	jne	.LBB21_7
	jp	.LBB21_7
# BB#5:                                 # %if.then.12
	movl	$.L.str.118, %edi
	callq	strlen
	leaq	68(%rsp), %rcx
	movl	$.L.str.118, %esi
	jmp	.LBB21_6
.LBB21_7:                               # %if.else.14
	movl	$.L.str.121, %edi
	callq	strlen
	leaq	68(%rsp), %rcx
	movl	$.L.str.121, %esi
.LBB21_6:                               # %cleanup
	movq	%r14, %rdi
	movl	%eax, %edx
	callq	sputs
	xorl	%r15d, %r15d
.LBB21_11:                              # %cleanup
	movl	%r15d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	escv_setstrokecolor, .Lfunc_end21-escv_setstrokecolor
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.align	16, 0x90
	.type	escv_vector_dopath,@function
escv_vector_dopath:                     # @escv_vector_dopath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp153:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp154:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp155:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp156:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp157:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp158:
	.cfi_def_cfa_offset 56
	subq	$312, %rsp              # imm = 0x138
.Ltmp159:
	.cfi_def_cfa_offset 368
.Ltmp160:
	.cfi_offset %rbx, -56
.Ltmp161:
	.cfi_offset %r12, -48
.Ltmp162:
	.cfi_offset %r13, -40
.Ltmp163:
	.cfi_offset %r14, -32
.Ltmp164:
	.cfi_offset %r15, -24
.Ltmp165:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gdev_vector_stream
	movq	%rax, %rbp
	leaq	288(%rsp), %rsi
	movq	%r14, %rdi
	callq	gx_path_is_rectangular
	testl	%eax, %eax
	je	.LBB22_2
# BB#1:                                 # %if.then
	movq	1736(%rbx), %rax
	movl	288(%rsp), %esi
	movl	292(%rsp), %edx
	movl	296(%rsp), %ecx
	movl	300(%rsp), %r8d
	movq	%rbx, %rdi
	movl	%r15d, %r9d
	callq	*96(%rax)
	jmp	.LBB22_30
.LBB22_2:                               # %if.end
	movl	%r15d, %eax
	andl	$2, %eax
	movl	%eax, 32(%rsp)          # 4-byte Spill
	movsd	8800(%rbx), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, 56(%rsp)         # 8-byte Spill
	movsd	8808(%rbx), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movq	1736(%rbx), %rax
	movq	%rbx, %rdi
	movq	%rbx, 40(%rsp)          # 8-byte Spill
	movl	%r15d, %esi
	movl	%r15d, 28(%rsp)         # 4-byte Spill
	callq	*104(%rax)
	movl	%eax, 36(%rsp)          # 4-byte Spill
	leaq	224(%rsp), %r13
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	gx_path_enum_init
	leaq	64(%rsp), %rbx
	leaq	96(%rsp), %r14
	leaq	308(%rsp), %r15
.LBB22_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_4 Depth 2
                                        #       Child Loop BB22_16 Depth 3
                                        #       Child Loop BB22_20 Depth 3
                                        #       Child Loop BB22_8 Depth 3
                                        #       Child Loop BB22_12 Depth 3
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	gx_path_enum_next
	movl	%eax, %r12d
	jmp	.LBB22_4
	.align	16, 0x90
.LBB22_14:                              # %sw
                                        #   in Loop: Header=BB22_4 Depth=2
	movq	%rbp, %rdi
	movl	%eax, %edx
	movq	%r15, %rcx
	callq	sputs
	movq	40(%rsp), %rax          # 8-byte Reload
	movl	$1, 9072(%rax)
.LBB22_4:                               # %sw
                                        #   Parent Loop BB22_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB22_16 Depth 3
                                        #       Child Loop BB22_20 Depth 3
                                        #       Child Loop BB22_8 Depth 3
                                        #       Child Loop BB22_12 Depth 3
	movl	$-1, %eax
	movl	%r12d, %ecx
	cmpl	$4, %r12d
	movsd	.LCPI22_0(%rip), %xmm2  # xmm2 = mem[0],zero
	ja	.LBB22_30
# BB#5:                                 # %sw
                                        #   in Loop: Header=BB22_4 Depth=2
	jmpq	*.LJTI22_0(,%rcx,8)
.LBB22_7:                               # %sw.bb.34
                                        #   in Loop: Header=BB22_4 Depth=2
	movq	256(%rsp), %rax
	movl	$1, %edx
	jmp	.LBB22_8
	.align	16, 0x90
.LBB22_10:                              # %for.inc
                                        #   in Loop: Header=BB22_8 Depth=3
	incl	%edx
	movq	8(%rax), %rax
.LBB22_8:                               # %sw.bb.34
                                        #   Parent Loop BB22_3 Depth=1
                                        #     Parent Loop BB22_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testq	%rax, %rax
	je	.LBB22_11
# BB#9:                                 # %land.rhs
                                        #   in Loop: Header=BB22_8 Depth=3
	movzwl	16(%rax), %ecx
	cmpl	$1, %ecx
	je	.LBB22_10
.LBB22_11:                              # %for.end
                                        #   in Loop: Header=BB22_4 Depth=2
	movl	$.L.str.179, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	gs_sprintf
	movq	%r14, %rdi
	callq	strlen
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movl	%eax, %edx
	movq	%r15, %rcx
	callq	sputs
	.align	16, 0x90
.LBB22_12:                              # %do.body
                                        #   Parent Loop BB22_3 Depth=1
                                        #     Parent Loop BB22_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	64(%rsp), %rax
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI22_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	divsd	56(%rsp), %xmm0         # 8-byte Folded Reload
	cvttsd2si	%xmm0, %edx
	shrq	$32, %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm1, %xmm0
	divsd	48(%rsp), %xmm0         # 8-byte Folded Reload
	cvttsd2si	%xmm0, %ecx
	movl	$.L.str.180, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	gs_sprintf
	movq	%r14, %rdi
	callq	strlen
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movl	%eax, %edx
	movq	%r15, %rcx
	callq	sputs
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	gx_path_enum_next
	movl	%eax, %r12d
	cmpl	$2, %r12d
	je	.LBB22_12
# BB#13:                                # %do.end
                                        #   in Loop: Header=BB22_4 Depth=2
	movl	$.L.str.181, %edi
	callq	strlen
	movl	$.L.str.181, %esi
	jmp	.LBB22_14
	.align	16, 0x90
.LBB22_15:                              # %sw.bb.68
                                        #   in Loop: Header=BB22_4 Depth=2
	movq	256(%rsp), %rcx
	movl	$1, %eax
	jmp	.LBB22_16
	.align	16, 0x90
.LBB22_18:                              # %for.inc.80
                                        #   in Loop: Header=BB22_16 Depth=3
	incl	%eax
	movq	8(%rcx), %rcx
.LBB22_16:                              # %sw.bb.68
                                        #   Parent Loop BB22_3 Depth=1
                                        #     Parent Loop BB22_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testq	%rcx, %rcx
	je	.LBB22_19
# BB#17:                                # %land.rhs.73
                                        #   in Loop: Header=BB22_16 Depth=3
	movzwl	16(%rcx), %edx
	cmpl	$3, %edx
	je	.LBB22_18
.LBB22_19:                              # %for.end.83
                                        #   in Loop: Header=BB22_4 Depth=2
	leal	(%rax,%rax,2), %edx
	movl	$.L.str.179, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	gs_sprintf
	movq	%r14, %rdi
	callq	strlen
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movl	%eax, %edx
	movq	%r15, %rcx
	callq	sputs
	.align	16, 0x90
.LBB22_20:                              # %do.body.89
                                        #   Parent Loop BB22_3 Depth=1
                                        #     Parent Loop BB22_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	64(%rsp), %rax
	movq	72(%rsp), %rsi
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI22_0(%rip), %xmm3  # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm0
	movsd	56(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	shrq	$32, %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm3, %xmm0
	movsd	48(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm0
	mulsd	%xmm3, %xmm0
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r8d
	shrq	$32, %rsi
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%esi, %xmm0
	mulsd	%xmm3, %xmm0
	divsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %r9d
	movq	80(%rsp), %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm3, %xmm0
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	shrq	$32, %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm3, %xmm0
	divsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%esi, (%rsp)
	movl	%eax, 8(%rsp)
	movl	$.L.str.182, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	gs_sprintf
	movq	%r14, %rdi
	callq	strlen
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movl	%eax, %edx
	movq	%r15, %rcx
	callq	sputs
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	gx_path_enum_next
	movl	%eax, %r12d
	cmpl	$3, %r12d
	je	.LBB22_20
# BB#21:                                # %do.end.135
                                        #   in Loop: Header=BB22_4 Depth=2
	movl	$.L.str.183, %edi
	callq	strlen
	movl	$.L.str.183, %esi
	jmp	.LBB22_14
	.align	16, 0x90
.LBB22_22:                              # %sw.bb.138
                                        #   in Loop: Header=BB22_4 Depth=2
	cmpl	$0, 32(%rsp)            # 4-byte Folded Reload
	jne	.LBB22_23
# BB#26:                                # %if.end.142
                                        #   in Loop: Header=BB22_4 Depth=2
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	gx_path_enum_next
	movl	%eax, %r12d
	testl	%r12d, %r12d
	je	.LBB22_29
# BB#27:                                # %if.then.147
                                        #   in Loop: Header=BB22_4 Depth=2
	movl	$.L.str.184, %edi
	callq	strlen
	movl	$.L.str.184, %esi
	movq	%rbp, %rdi
	movl	%eax, %edx
	movq	%r15, %rcx
	callq	sputs
	cmpl	$0, 36(%rsp)            # 4-byte Folded Reload
	jns	.LBB22_4
	jmp	.LBB22_28
.LBB22_23:                              # %if.then.140
                                        #   in Loop: Header=BB22_3 Depth=1
	movl	$.L.str.184, %edi
	callq	strlen
	movl	$.L.str.184, %esi
	movq	%rbp, %rdi
	jmp	.LBB22_24
.LBB22_6:                               # %sw.bb.18
                                        #   in Loop: Header=BB22_3 Depth=1
	movq	64(%rsp), %rax
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm2, %xmm0
	divsd	56(%rsp), %xmm0         # 8-byte Folded Reload
	shrq	$32, %rax
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm2, %xmm1
	divsd	48(%rsp), %xmm1         # 8-byte Folded Reload
	cvttsd2si	%xmm0, %edx
	cvttsd2si	%xmm1, %ecx
	movl	$.L.str.178, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	gs_sprintf
	movq	%r14, %rdi
	callq	strlen
	movq	%rbp, %rdi
	movq	%r14, %rsi
.LBB22_24:                              # %cleanup
                                        #   in Loop: Header=BB22_3 Depth=1
	movl	%eax, %edx
	movq	%r15, %rcx
	callq	sputs
	cmpl	$0, 36(%rsp)            # 4-byte Folded Reload
	jns	.LBB22_3
# BB#25:
	movl	36(%rsp), %eax          # 4-byte Reload
	jmp	.LBB22_30
.LBB22_29:                              # %if.end.153
	movq	40(%rsp), %rdi          # 8-byte Reload
	movq	1736(%rdi), %rax
	movl	28(%rsp), %esi          # 4-byte Reload
	callq	*144(%rax)
	jmp	.LBB22_30
.LBB22_28:
	movl	36(%rsp), %eax          # 4-byte Reload
.LBB22_30:                              # %cleanup.166
	addq	$312, %rsp              # imm = 0x138
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	escv_vector_dopath, .Lfunc_end22-escv_vector_dopath
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI22_0:
	.quad	.LBB22_29
	.quad	.LBB22_6
	.quad	.LBB22_7
	.quad	.LBB22_15
	.quad	.LBB22_22

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI23_0:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.align	16, 0x90
	.type	escv_vector_dorect,@function
escv_vector_dorect:                     # @escv_vector_dorect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp166:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp167:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp168:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp169:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp170:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp171:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp172:
	.cfi_def_cfa_offset 208
.Ltmp173:
	.cfi_offset %rbx, -56
.Ltmp174:
	.cfi_offset %r12, -48
.Ltmp175:
	.cfi_offset %r13, -40
.Ltmp176:
	.cfi_offset %r14, -32
.Ltmp177:
	.cfi_offset %r15, -24
.Ltmp178:
	.cfi_offset %rbp, -16
	movl	%r9d, %r12d
	movl	%r8d, %r15d
	movl	%ecx, %r13d
	movl	%edx, %ebp
	movl	%esi, %r14d
	movq	%rdi, %rbx
	callq	gdev_vector_stream
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	1736(%rbx), %rax
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	*104(%rax)
	testl	%eax, %eax
	js	.LBB23_2
# BB#1:                                 # %if.end
	movsd	8800(%rbx), %xmm0       # xmm0 = mem[0],zero
	movsd	8808(%rbx), %xmm1       # xmm1 = mem[0],zero
	cvtsi2sdl	%r14d, %xmm2
	movsd	.LCPI23_0(%rip), %xmm3  # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm2
	divsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %edx
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%ebp, %xmm2
	mulsd	%xmm3, %xmm2
	divsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %ecx
	xorps	%xmm2, %xmm2
	cvtsi2sdl	%r13d, %xmm2
	mulsd	%xmm3, %xmm2
	divsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %r8d
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%r15d, %xmm0
	mulsd	%xmm3, %xmm0
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r9d
	leaq	16(%rsp), %rbp
	movl	$.L.str.185, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	gs_sprintf
	movq	%rbp, %rdi
	callq	strlen
	leaq	148(%rsp), %rcx
	movq	8(%rsp), %rdi           # 8-byte Reload
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	sputs
	movl	$1, 9072(%rbx)
	movq	1736(%rbx), %rax
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	*144(%rax)
.LBB23_2:                               # %cleanup
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	escv_vector_dorect, .Lfunc_end23-escv_vector_dorect
	.cfi_endproc

	.align	16, 0x90
	.type	escv_beginpath,@function
escv_beginpath:                         # @escv_beginpath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp179:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp180:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp181:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp182:
	.cfi_def_cfa_offset 48
.Ltmp183:
	.cfi_offset %rbx, -32
.Ltmp184:
	.cfi_offset %r14, -24
.Ltmp185:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	callq	gdev_vector_stream
	movq	%rax, %r14
	testb	$4, %bpl
	jne	.LBB24_1
# BB#2:                                 # %if.else
	movl	$.L.str.187, %edi
	callq	strlen
	leaq	12(%rsp), %rcx
	movl	$.L.str.187, %esi
	jmp	.LBB24_3
.LBB24_1:                               # %if.then
	movl	$.L.str.186, %edi
	callq	strlen
	leaq	8(%rsp), %rcx
	movl	$.L.str.186, %esi
.LBB24_3:                               # %if.end
	movq	%r14, %rdi
	movl	%eax, %edx
	callq	sputs
	movl	$0, 9072(%rbx)
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end24:
	.size	escv_beginpath, .Lfunc_end24-escv_beginpath
	.cfi_endproc

	.align	16, 0x90
	.type	escv_moveto,@function
escv_moveto:                            # @escv_moveto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp186:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp187:
	.cfi_def_cfa_offset 24
	subq	$88, %rsp
.Ltmp188:
	.cfi_def_cfa_offset 112
.Ltmp189:
	.cfi_offset %rbx, -24
.Ltmp190:
	.cfi_offset %r14, -16
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	movsd	%xmm2, (%rsp)           # 8-byte Spill
	callq	gdev_vector_stream
	movq	%rax, %r14
	cvttsd2si	(%rsp), %edx    # 8-byte Folded Reload
	cvttsd2si	8(%rsp), %ecx   # 8-byte Folded Reload
	leaq	16(%rsp), %rbx
	movl	$.L.str.178, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	leaq	84(%rsp), %rcx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
	xorl	%eax, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end25:
	.size	escv_moveto, .Lfunc_end25-escv_moveto
	.cfi_endproc

	.align	16, 0x90
	.type	escv_lineto,@function
escv_lineto:                            # @escv_lineto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp191:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp192:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp193:
	.cfi_def_cfa_offset 32
	subq	$96, %rsp
.Ltmp194:
	.cfi_def_cfa_offset 128
.Ltmp195:
	.cfi_offset %rbx, -32
.Ltmp196:
	.cfi_offset %r14, -24
.Ltmp197:
	.cfi_offset %r15, -16
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	movsd	%xmm2, (%rsp)           # 8-byte Spill
	movq	%rdi, %rbx
	callq	gdev_vector_stream
	movq	%rax, %r14
	cvttsd2si	(%rsp), %edx    # 8-byte Folded Reload
	cvttsd2si	8(%rsp), %ecx   # 8-byte Folded Reload
	leaq	16(%rsp), %r15
	movl	$.L.str.188, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	gs_sprintf
	movq	%r15, %rdi
	callq	strlen
	leaq	92(%rsp), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	%eax, %edx
	callq	sputs
	movl	$1, 9072(%rbx)
	xorl	%eax, %eax
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end26:
	.size	escv_lineto, .Lfunc_end26-escv_lineto
	.cfi_endproc

	.align	16, 0x90
	.type	escv_curveto,@function
escv_curveto:                           # @escv_curveto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp198:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp199:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp200:
	.cfi_def_cfa_offset 32
	subq	$208, %rsp
.Ltmp201:
	.cfi_def_cfa_offset 240
.Ltmp202:
	.cfi_offset %rbx, -32
.Ltmp203:
	.cfi_offset %r14, -24
.Ltmp204:
	.cfi_offset %r15, -16
	movsd	%xmm7, 56(%rsp)         # 8-byte Spill
	movsd	%xmm6, 48(%rsp)         # 8-byte Spill
	movsd	%xmm5, 40(%rsp)         # 8-byte Spill
	movsd	%xmm4, 32(%rsp)         # 8-byte Spill
	movsd	%xmm3, 24(%rsp)         # 8-byte Spill
	movsd	%xmm2, 16(%rsp)         # 8-byte Spill
	movq	%rdi, %r15
	callq	gdev_vector_stream
	movq	%rax, %r14
	cvttsd2si	16(%rsp), %edx  # 8-byte Folded Reload
	cvttsd2si	24(%rsp), %ecx  # 8-byte Folded Reload
	cvttsd2si	32(%rsp), %r8d  # 8-byte Folded Reload
	cvttsd2si	40(%rsp), %r9d  # 8-byte Folded Reload
	cvttsd2si	48(%rsp), %eax  # 8-byte Folded Reload
	cvttsd2si	56(%rsp), %esi  # 8-byte Folded Reload
	movl	%esi, 8(%rsp)
	movl	%eax, (%rsp)
	leaq	64(%rsp), %rbx
	movl	$.L.str.189, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	leaq	204(%rsp), %rcx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
	movl	$1, 9072(%r15)
	xorl	%eax, %eax
	addq	$208, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end27:
	.size	escv_curveto, .Lfunc_end27-escv_curveto
	.cfi_endproc

	.align	16, 0x90
	.type	escv_closepath,@function
escv_closepath:                         # @escv_closepath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp205:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp206:
	.cfi_def_cfa_offset 32
.Ltmp207:
	.cfi_offset %rbx, -16
	callq	gdev_vector_stream
	movq	%rax, %rbx
	movl	$.L.str.184, %edi
	callq	strlen
	leaq	12(%rsp), %rcx
	movl	$.L.str.184, %esi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	sputs
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end28:
	.size	escv_closepath, .Lfunc_end28-escv_closepath
	.cfi_endproc

	.align	16, 0x90
	.type	escv_endpath,@function
escv_endpath:                           # @escv_endpath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp208:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp209:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp210:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp211:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp212:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp213:
	.cfi_def_cfa_offset 64
.Ltmp214:
	.cfi_offset %rbx, -48
.Ltmp215:
	.cfi_offset %r12, -40
.Ltmp216:
	.cfi_offset %r14, -32
.Ltmp217:
	.cfi_offset %r15, -24
.Ltmp218:
	.cfi_offset %rbp, -16
	movl	%esi, %r12d
	movq	%rdi, %r15
	callq	gdev_vector_stream
	movq	%rax, %r14
	movl	%r12d, %ebp
	andl	$1, %ebp
	sete	%al
	movl	%r12d, %ebx
	andl	$4, %ebx
	jne	.LBB29_2
# BB#1:                                 # %entry
	testb	%al, %al
	jne	.LBB29_3
.LBB29_2:                               # %if.then
	movl	$.L.str.184, %edi
	callq	strlen
	leaq	12(%rsp), %rcx
	movl	$.L.str.184, %esi
	movq	%r14, %rdi
	movl	%eax, %edx
	callq	sputs
.LBB29_3:                               # %if.end
	movl	$.L.str.190, %edi
	callq	strlen
	leaq	12(%rsp), %rcx
	movl	$.L.str.190, %esi
	movq	%r14, %rdi
	movl	%eax, %edx
	callq	sputs
	testl	%ebx, %ebx
	jne	.LBB29_4
# BB#6:                                 # %if.else
	testl	%ebp, %ebp
	je	.LBB29_10
# BB#7:                                 # %if.then.13
	testb	$8, %r12b
	jne	.LBB29_8
# BB#9:                                 # %if.else.18
	movl	$.L.str.193, %edi
	callq	strlen
	leaq	12(%rsp), %rcx
	movl	$.L.str.193, %esi
	jmp	.LBB29_11
.LBB29_4:                               # %if.then.7
	cmpl	$0, 9072(%r15)
	je	.LBB29_12
# BB#5:                                 # %if.then.8
	movl	$.L.str.191, %edi
	callq	strlen
	leaq	12(%rsp), %rcx
	movl	$.L.str.191, %esi
	jmp	.LBB29_11
.LBB29_10:                              # %if.else.21
	movl	$.L.str.194, %edi
	callq	strlen
	leaq	12(%rsp), %rcx
	movl	$.L.str.194, %esi
	jmp	.LBB29_11
.LBB29_8:                               # %if.then.16
	movl	$.L.str.192, %edi
	callq	strlen
	leaq	12(%rsp), %rcx
	movl	$.L.str.192, %esi
.LBB29_11:                              # %if.end.24
	movq	%r14, %rdi
	movl	%eax, %edx
	callq	sputs
.LBB29_12:                              # %if.end.24
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	escv_endpath, .Lfunc_end29-escv_endpath
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI30_0:
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	16                      # 0x10
	.byte	16                      # 0x10
	.byte	16                      # 0x10
	.byte	16                      # 0x10
	.byte	32                      # 0x20
	.byte	32                      # 0x20
	.byte	32                      # 0x20
	.byte	32                      # 0x20
	.byte	48                      # 0x30
	.byte	48                      # 0x30
	.byte	48                      # 0x30
	.byte	48                      # 0x30
.LCPI30_1:
	.byte	64                      # 0x40
	.byte	64                      # 0x40
	.byte	64                      # 0x40
	.byte	64                      # 0x40
	.byte	80                      # 0x50
	.byte	80                      # 0x50
	.byte	80                      # 0x50
	.byte	80                      # 0x50
	.byte	96                      # 0x60
	.byte	96                      # 0x60
	.byte	96                      # 0x60
	.byte	96                      # 0x60
	.byte	112                     # 0x70
	.byte	112                     # 0x70
	.byte	112                     # 0x70
	.byte	112                     # 0x70
.LCPI30_2:
	.byte	128                     # 0x80
	.byte	128                     # 0x80
	.byte	128                     # 0x80
	.byte	128                     # 0x80
	.byte	144                     # 0x90
	.byte	144                     # 0x90
	.byte	144                     # 0x90
	.byte	144                     # 0x90
	.byte	160                     # 0xa0
	.byte	160                     # 0xa0
	.byte	160                     # 0xa0
	.byte	160                     # 0xa0
	.byte	176                     # 0xb0
	.byte	176                     # 0xb0
	.byte	176                     # 0xb0
	.byte	176                     # 0xb0
.LCPI30_3:
	.byte	192                     # 0xc0
	.byte	192                     # 0xc0
	.byte	192                     # 0xc0
	.byte	192                     # 0xc0
	.byte	208                     # 0xd0
	.byte	208                     # 0xd0
	.byte	208                     # 0xd0
	.byte	208                     # 0xd0
	.byte	224                     # 0xe0
	.byte	224                     # 0xe0
	.byte	224                     # 0xe0
	.byte	224                     # 0xe0
	.byte	240                     # 0xf0
	.byte	240                     # 0xf0
	.byte	240                     # 0xf0
	.byte	240                     # 0xf0
	.text
	.align	16, 0x90
	.type	escv_write_begin,@function
escv_write_begin:                       # @escv_write_begin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp219:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp220:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp221:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp222:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp223:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp224:
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
.Ltmp225:
	.cfi_def_cfa_offset 224
.Ltmp226:
	.cfi_offset %rbx, -56
.Ltmp227:
	.cfi_offset %r12, -48
.Ltmp228:
	.cfi_offset %r13, -40
.Ltmp229:
	.cfi_offset %r14, -32
.Ltmp230:
	.cfi_offset %r15, -24
.Ltmp231:
	.cfi_offset %rbp, -16
	movl	%r9d, 20(%rsp)          # 4-byte Spill
	movl	%r8d, 24(%rsp)          # 4-byte Spill
	movl	%ecx, %r15d
	movl	%edx, %r14d
	movl	%esi, 28(%rsp)          # 4-byte Spill
	movq	%rdi, %rbx
	callq	gdev_vector_stream
	movq	%rax, %rbp
	movl	8848(%rbx), %r12d
	leaq	32(%rsp), %r13
	movl	$.L.str.236, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	%r14d, %edx
	movl	%r15d, %ecx
	callq	gs_sprintf
	movq	%r13, %rdi
	callq	strlen
	leaq	164(%rsp), %rcx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movl	%eax, %edx
	callq	sputs
	cmpl	$0, %r12d
	movl	240(%rsp), %r14d
	movl	232(%rsp), %r13d
	movl	224(%rsp), %r12d
	je	.LBB30_1
# BB#33:                                # %if.else.145
	movl	28(%rsp), %eax          # 4-byte Reload
	cmpl	$1, %eax
	jne	.LBB30_35
# BB#34:                                # %if.then.152
	movl	%r14d, 8(%rsp)
	movl	%r13d, (%rsp)
	leaq	32(%rsp), %rdi
	movl	$.L.str.240, %esi
	jmp	.LBB30_48
.LBB30_1:                               # %if.then
	movl	28(%rsp), %eax          # 4-byte Reload
	cmpl	$1, %eax
	jne	.LBB30_25
# BB#2:                                 # %land.lhs.true
	movl	$.L.str.11, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	16(%rbx), %rdi
	cmpq	$3, %rcx
	ja	.LBB30_10
# BB#3:                                 # %cond.true
	movzbl	(%rdi), %eax
	addl	$-108, %eax
	testq	%rcx, %rcx
	je	.LBB30_11
# BB#4:                                 # %cond.true
	testl	%eax, %eax
	movq	%rbp, %r15
	jne	.LBB30_12
# BB#5:                                 # %if.then.22
	movzbl	1(%rdi), %eax
	addl	$-112, %eax
	cmpq	$2, %rcx
	jb	.LBB30_12
# BB#6:                                 # %if.then.22
	testl	%eax, %eax
	jne	.LBB30_12
# BB#7:                                 # %if.then.32
	movzbl	2(%rdi), %eax
	addl	$-49, %eax
	cmpq	$3, %rcx
	jb	.LBB30_12
# BB#8:                                 # %if.then.32
	testl	%eax, %eax
	jne	.LBB30_12
# BB#9:                                 # %if.then.42
	movzbl	3(%rdi), %eax
	addl	$-56, %eax
	jmp	.LBB30_12
.LBB30_35:                              # %if.else.155
	cmpl	$8, %eax
	jne	.LBB30_36
# BB#42:                                # %if.then.187
	cmpl	$0, 8936(%rbx)
	movq	%rbp, %r15
	je	.LBB30_46
# BB#43:                                # %if.then.190
	movl	$.L.str.244, %edi
	callq	strlen
	leaq	164(%rsp), %rcx
	movl	$.L.str.244, %esi
	movq	%r15, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	24(%rbx), %rdi
	movq	%rbx, %rbp
	movl	$1024, %esi             # imm = 0x400
	movl	$.L.str.245, %edx
	callq	*64(%rdi)
	movq	%rax, %rbx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB30_44:                              # %for.body.200
                                        # =>This Inner Loop Header: Depth=1
	movb	%al, (%rbx,%rax,4)
	movb	%al, 1(%rbx,%rax,4)
	movb	%al, 2(%rbx,%rax,4)
	movb	%al, 3(%rbx,%rax,4)
	movl	%eax, %ecx
	orl	$1, %ecx
	movb	%cl, 4(%rbx,%rax,4)
	movb	%cl, 5(%rbx,%rax,4)
	movb	%cl, 6(%rbx,%rax,4)
	movb	%cl, 7(%rbx,%rax,4)
	movl	%eax, %ecx
	orl	$2, %ecx
	movb	%cl, 8(%rbx,%rax,4)
	movb	%cl, 9(%rbx,%rax,4)
	movb	%cl, 10(%rbx,%rax,4)
	movb	%cl, 11(%rbx,%rax,4)
	movl	%eax, %ecx
	orl	$3, %ecx
	movb	%cl, 12(%rbx,%rax,4)
	movb	%cl, 13(%rbx,%rax,4)
	movb	%cl, 14(%rbx,%rax,4)
	movb	%cl, 15(%rbx,%rax,4)
	addq	$4, %rax
	cmpl	$256, %eax              # imm = 0x100
	jne	.LBB30_44
# BB#45:                                # %for.end.211
	leaq	164(%rsp), %rcx
	movl	$1024, %edx             # imm = 0x400
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	sputs
	movq	24(%rbp), %rdi
	movl	$.L.str.245, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movl	$0, 8936(%rbp)
.LBB30_46:                              # %if.end.217
	movl	%r14d, 8(%rsp)
	movl	%r13d, (%rsp)
	leaq	32(%rsp), %rdi
	movl	$.L.str.246, %esi
	jmp	.LBB30_40
.LBB30_25:                              # %if.else.120
	cmpl	$8, %eax
	jne	.LBB30_26
# BB#30:                                # %if.then.132
	cmpl	$0, 8936(%rbx)
	movq	%rbp, %r15
	je	.LBB30_29
# BB#31:                                # %if.then.134
	movl	$0, 8936(%rbx)
	jmp	.LBB30_29
.LBB30_36:                              # %if.else.155
	cmpl	$4, %eax
	jne	.LBB30_47
# BB#37:                                # %if.then.158
	cmpl	$0, 8932(%rbx)
	movq	%rbp, %r15
	je	.LBB30_39
# BB#38:                                # %if.then.161
	movl	$.L.str.241, %edi
	callq	strlen
	leaq	164(%rsp), %rcx
	movl	$.L.str.241, %esi
	movq	%r15, %rdi
	movl	%eax, %edx
	callq	sputs
	movq	24(%rbx), %rdi
	movl	$64, %esi
	movl	$.L.str.242, %edx
	callq	*64(%rdi)
	movq	%rbx, %rbp
	movq	%rax, %rbx
	movaps	.LCPI30_0(%rip), %xmm0  # xmm0 = [0,0,0,0,16,16,16,16,32,32,32,32,48,48,48,48]
	movups	%xmm0, (%rbx)
	movaps	.LCPI30_1(%rip), %xmm0  # xmm0 = [64,64,64,64,80,80,80,80,96,96,96,96,112,112,112,112]
	movups	%xmm0, 16(%rbx)
	movaps	.LCPI30_2(%rip), %xmm0  # xmm0 = [128,128,128,128,144,144,144,144,160,160,160,160,176,176,176,176]
	movups	%xmm0, 32(%rbx)
	movaps	.LCPI30_3(%rip), %xmm0  # xmm0 = [192,192,192,192,208,208,208,208,224,224,224,224,240,240,240,240]
	movups	%xmm0, 48(%rbx)
	leaq	164(%rsp), %rcx
	movl	$64, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	sputs
	movq	24(%rbp), %rdi
	movl	$.L.str.242, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	movl	$0, 8932(%rbp)
.LBB30_39:                              # %if.end.181
	movl	%r14d, 8(%rsp)
	movl	%r13d, (%rsp)
	leaq	32(%rsp), %rdi
	movl	$.L.str.243, %esi
.LBB30_40:                              # %if.end.226
	movl	$0, %edx
	jmp	.LBB30_41
.LBB30_10:                              # %cond.false
	movl	$.L.str.11, %esi
	callq	strcmp
.LBB30_11:                              # %cond.end
	movq	%rbp, %r15
.LBB30_12:                              # %cond.end
	testl	%eax, %eax
	je	.LBB30_23
# BB#13:                                # %land.lhs.true.59
	movl	$.L.str.31, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	16(%rbx), %rdi
	cmpq	$3, %rcx
	ja	.LBB30_21
# BB#14:                                # %cond.true.63
	movzbl	(%rdi), %eax
	addl	$-108, %eax
	testq	%rcx, %rcx
	je	.LBB30_22
# BB#15:                                # %cond.true.63
	testl	%eax, %eax
	jne	.LBB30_22
# BB#16:                                # %if.then.78
	movzbl	1(%rdi), %eax
	addl	$-112, %eax
	cmpq	$2, %rcx
	jb	.LBB30_22
# BB#17:                                # %if.then.78
	testl	%eax, %eax
	jne	.LBB30_22
# BB#18:                                # %if.then.88
	movzbl	2(%rdi), %eax
	addl	$-57, %eax
	cmpq	$3, %rcx
	jb	.LBB30_22
# BB#19:                                # %if.then.88
	testl	%eax, %eax
	jne	.LBB30_22
# BB#20:                                # %if.then.98
	movzbl	3(%rdi), %eax
	addl	$-54, %eax
	jmp	.LBB30_22
.LBB30_26:                              # %if.else.120
	cmpl	$4, %eax
	jne	.LBB30_32
# BB#27:                                # %if.then.123
	cmpl	$0, 8932(%rbx)
	movq	%rbp, %r15
	je	.LBB30_29
# BB#28:                                # %if.then.124
	movl	$0, 8932(%rbx)
.LBB30_29:                              # %if.end.126
	movl	%r14d, 8(%rsp)
	movl	%r13d, (%rsp)
	leaq	32(%rsp), %rdi
	movl	$.L.str.239, %esi
	movl	$10, %edx
.LBB30_41:                              # %if.end.226
	xorl	%eax, %eax
	movl	20(%rsp), %r8d          # 4-byte Reload
	movl	%r12d, %r9d
	movl	24(%rsp), %ecx          # 4-byte Reload
	callq	gs_sprintf
	jmp	.LBB30_50
.LBB30_47:                              # %if.else.220
	movl	%r14d, 8(%rsp)
	movl	%r13d, (%rsp)
	leaq	32(%rsp), %rdi
	movl	$.L.str.247, %esi
.LBB30_48:                              # %if.end.226
	movl	$0, %edx
.LBB30_49:                              # %if.end.226
	xorl	%eax, %eax
	movl	20(%rsp), %r8d          # 4-byte Reload
	movl	%r12d, %r9d
	movl	24(%rsp), %ecx          # 4-byte Reload
	callq	gs_sprintf
	movq	%rbp, %r15
	jmp	.LBB30_50
.LBB30_21:                              # %cond.false.107
	movl	$.L.str.31, %esi
	callq	strcmp
.LBB30_22:                              # %cond.end.110
	testl	%eax, %eax
	je	.LBB30_23
# BB#24:                                # %if.else
	movl	%r14d, (%rsp)
	leaq	32(%rsp), %rdi
	movl	$.L.str.238, %esi
	xorl	%eax, %eax
	movl	%r12d, %r8d
	movl	24(%rsp), %edx          # 4-byte Reload
	movl	%r13d, %r9d
	movl	20(%rsp), %ecx          # 4-byte Reload
	callq	gs_sprintf
	jmp	.LBB30_50
.LBB30_23:                              # %if.then.114
	leaq	32(%rsp), %rdi
	movl	$.L.str.237, %esi
	xorl	%eax, %eax
	callq	gs_sprintf
.LBB30_50:                              # %if.end.226
	leaq	32(%rsp), %rbx
	movq	%rbx, %rdi
	callq	strlen
	leaq	164(%rsp), %rcx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB30_32:                              # %if.else.139
	movl	%r14d, 8(%rsp)
	movl	%r13d, (%rsp)
	leaq	32(%rsp), %rdi
	movl	$.L.str.239, %esi
	movl	$10, %edx
	jmp	.LBB30_49
.Lfunc_end30:
	.size	escv_write_begin, .Lfunc_end30-escv_write_begin
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI31_0:
	.quad	-7415591117631239750    # x86_fp80 0.29899999999999999999
	.short	16381
	.zero	6
.LCPI31_1:
	.quad	-7618505302442044817    # x86_fp80 0.587000000000000000022
	.short	16382
	.zero	6
.LCPI31_2:
	.quad	-1623313478486440542    # x86_fp80 0.114000000000000000001
	.short	16379
	.zero	6
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI31_3:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	escv_write_data,@function
escv_write_data:                        # @escv_write_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp232:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp233:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp234:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp235:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp236:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp237:
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
.Ltmp238:
	.cfi_def_cfa_offset 256
.Ltmp239:
	.cfi_offset %rbx, -56
.Ltmp240:
	.cfi_offset %r12, -48
.Ltmp241:
	.cfi_offset %r13, -40
.Ltmp242:
	.cfi_offset %r14, -32
.Ltmp243:
	.cfi_offset %r15, -24
.Ltmp244:
	.cfi_offset %rbp, -16
	movl	%r9d, 28(%rsp)          # 4-byte Spill
	movl	%r8d, %r12d
	movl	%ecx, %ebx
	movq	%rdx, %r15
	movl	%esi, %r14d
	movq	%rdi, %rbp
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	callq	gdev_vector_stream
	cmpl	$0, 8848(%rbp)
	je	.LBB31_1
# BB#53:                                # %if.else.224
	xorl	%ebp, %ebp
	movq	%rax, %r13
	movl	%r14d, %r12d
	cmpl	$12, %r14d
	jne	.LBB31_54
# BB#55:                                # %if.then.229
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rdi
	leal	(%rbx,%rbx), %r14d
	movl	$.L.str.248, %edx
	movl	%r14d, %esi
	callq	*64(%rdi)
	movq	%rax, %rbp
	testl	%ebx, %ebx
	jle	.LBB31_58
# BB#56:                                # %for.body.239.preheader
	movl	%ebx, %eax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB31_57:                              # %for.body.239
                                        # =>This Inner Loop Header: Depth=1
	movsbl	(%r15,%rcx), %edx
	andl	$-16, %edx
	movl	%edx, %esi
	shrl	$4, %esi
	andl	$15, %esi
	orl	%edx, %esi
	movb	%sil, (%rbp,%rcx,2)
	movb	(%r15,%rcx), %dl
	shlb	$4, %dl
	movsbl	%dl, %edx
	movl	%edx, %esi
	shrl	$4, %esi
	andl	$15, %esi
	orl	%edx, %esi
	movb	%sil, 1(%rbp,%rcx,2)
	incq	%rcx
	cmpl	%ecx, %eax
	jne	.LBB31_57
.LBB31_58:
	movq	%rbp, %r15
	jmp	.LBB31_59
.LBB31_1:                               # %if.then
	movl	%r12d, 12(%rsp)         # 4-byte Spill
	movq	%rax, 16(%rsp)          # 8-byte Spill
	xorl	%r12d, %r12d
	movl	%r14d, %r13d
	cmpl	$12, %r14d
	jne	.LBB31_2
# BB#3:                                 # %if.then.2
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rdi
	leal	(%rbx,%rbx), %r14d
	movl	$.L.str.248, %edx
	movl	%r14d, %esi
	callq	*64(%rdi)
	movq	%rax, %r12
	testl	%ebx, %ebx
	jle	.LBB31_4
# BB#6:                                 # %for.body.preheader
	xorl	%ecx, %ecx
	testb	$1, %bl
	movq	%r12, %rax
	je	.LBB31_8
# BB#7:                                 # %for.body.prol
	movb	(%r15), %al
	andb	$-16, %al
	movb	%al, (%r12)
	movb	(%r15), %cl
	shlb	$4, %cl
	movq	%r12, %rax
	addq	$2, %rax
	movb	%cl, 1(%r12)
	movl	$1, %ecx
.LBB31_8:                               # %for.body.preheader.split
	cmpl	$1, %ebx
	je	.LBB31_11
# BB#9:                                 # %for.body.preheader.split.split
	subl	%ecx, %ebx
	leaq	1(%rcx,%r15), %rcx
	.align	16, 0x90
.LBB31_10:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	-1(%rcx), %dl
	andb	$-16, %dl
	movb	%dl, (%rax)
	movb	-1(%rcx), %dl
	shlb	$4, %dl
	movb	%dl, 1(%rax)
	movb	(%rcx), %dl
	andb	$-16, %dl
	movb	%dl, 2(%rax)
	movb	(%rcx), %dl
	shlb	$4, %dl
	movb	%dl, 3(%rax)
	addq	$2, %rcx
	addq	$4, %rax
	addl	$-2, %ebx
	jne	.LBB31_10
.LBB31_11:
	movq	%r12, %r15
	jmp	.LBB31_12
.LBB31_54:
	movl	%ebx, %r14d
.LBB31_59:                              # %if.end.267
	movl	28(%rsp), %ecx          # 4-byte Reload
	leaq	64(%rsp), %rbx
	movl	$.L.str.251, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%r14d, %edx
	callq	gs_sprintf
	movq	%rbx, %rdi
	callq	strlen
	leaq	196(%rsp), %rcx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sputs
	leaq	196(%rsp), %rcx
	movq	%r13, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	sputs
	cmpl	$12, %r12d
	jne	.LBB31_62
# BB#60:                                # %if.then.274
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rdi
	movl	$.L.str.248, %edx
	movq	%rbp, %rsi
	jmp	.LBB31_61
.LBB31_2:
	movl	%ebx, %r14d
.LBB31_12:                              # %if.end
	cmpl	$4, %r13d
	jne	.LBB31_13
# BB#14:                                # %if.then.15
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rdi
	leal	(%r14,%r14), %ebx
	movl	$.L.str.248, %edx
	movl	%ebx, %esi
	callq	*64(%rdi)
	movq	%rax, %r12
	testl	%r14d, %r14d
	jle	.LBB31_15
# BB#16:                                # %for.body.25.preheader
	movl	%r14d, %eax
	xorl	%ecx, %ecx
	movl	$2290649225, %edx       # imm = 0x88888889
	.align	16, 0x90
.LBB31_17:                              # %for.body.25
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r15,%rcx), %esi
	andl	$240, %esi
	imull	$255, %esi, %esi
	imulq	%rdx, %rsi
	shrq	$39, %rsi
	movb	%sil, (%r12,%rcx,2)
	movzbl	(%r15,%rcx), %esi
	andl	$15, %esi
	shll	$4, %esi
	imull	$255, %esi, %esi
	imulq	%rdx, %rsi
	shrq	$39, %rsi
	movb	%sil, 1(%r12,%rcx,2)
	incq	%rcx
	cmpl	%ecx, %eax
	jne	.LBB31_17
# BB#18:
	movq	%r12, %r15
	jmp	.LBB31_19
.LBB31_13:
	movl	%r14d, %ebx
.LBB31_19:                              # %if.end.46
	cmpl	$24, %r13d
	jne	.LBB31_26
# BB#20:                                # %if.then.49
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rdi
	movslq	%ebx, %rbp
	imulq	$1431655766, %rbp, %rbx # imm = 0x55555556
	movq	%rbx, %rax
	shrq	$63, %rax
	shrq	$32, %rbx
	addl	%eax, %ebx
	movl	$.L.str.248, %edx
	movl	%ebx, %esi
	callq	*64(%rdi)
	movq	%rax, %r12
	testl	%ebp, %ebp
	jle	.LBB31_15
# BB#21:                                # %for.body.59.lr.ph
	xorl	%eax, %eax
	fldt	.LCPI31_0(%rip)
	fldt	.LCPI31_1(%rip)
	fldt	.LCPI31_2(%rip)
	movq	%r12, %rcx
	.align	16, 0x90
.LBB31_22:                              # %for.body.59
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r15,%rax), %edx
	movl	%edx, 60(%rsp)
	fld	%st(2)
	fimull	60(%rsp)
	movzbl	1(%r15,%rax), %edx
	movl	%edx, 52(%rsp)
	fld	%st(2)
	fimull	52(%rsp)
	faddp	%st(1)
	movzbl	2(%r15,%rax), %edx
	movl	%edx, 56(%rsp)
	fld	%st(1)
	fimull	56(%rsp)
	faddp	%st(1)
	fstpl	40(%rsp)
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	ucomisd	.LCPI31_3(%rip), %xmm0
	movb	$-1, %dl
	ja	.LBB31_24
# BB#23:                                # %for.body.59
                                        #   in Loop: Header=BB31_22 Depth=1
	cvttsd2si	%xmm0, %edx
.LBB31_24:                              # %for.body.59
                                        #   in Loop: Header=BB31_22 Depth=1
	movb	%dl, (%rcx)
	incq	%rcx
	addq	$3, %rax
	cmpq	%rbp, %rax
	jl	.LBB31_22
# BB#25:
	fstp	%st(2)
	fstp	%st(0)
	fstp	%st(0)
	movq	%r12, %r15
.LBB31_26:                              # %if.end.89
	cmpl	$1, %r13d
	jne	.LBB31_27
# BB#28:                                # %land.lhs.true
	movl	$.L.str.11, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	16(%rax), %rdi
	cmpq	$3, %rcx
	ja	.LBB31_36
# BB#29:                                # %cond.true
	movzbl	(%rdi), %eax
	addl	$-108, %eax
	testq	%rcx, %rcx
	je	.LBB31_37
# BB#30:                                # %cond.true
	testl	%eax, %eax
	jne	.LBB31_37
# BB#31:                                # %if.then.106
	movzbl	1(%rdi), %eax
	addl	$-112, %eax
	cmpq	$2, %rcx
	jb	.LBB31_37
# BB#32:                                # %if.then.106
	testl	%eax, %eax
	jne	.LBB31_37
# BB#33:                                # %if.then.116
	movzbl	2(%rdi), %eax
	addl	$-49, %eax
	cmpq	$3, %rcx
	jb	.LBB31_37
# BB#34:                                # %if.then.116
	testl	%eax, %eax
	jne	.LBB31_37
# BB#35:                                # %if.then.126
	movzbl	3(%rdi), %eax
	addl	$-56, %eax
	jmp	.LBB31_37
.LBB31_15:
	movq	%r12, %r15
	movl	%ebx, %r14d
	jmp	.LBB31_5
.LBB31_27:
	movl	%ebx, %r14d
	jmp	.LBB31_5
.LBB31_4:
	movq	%r12, %r15
.LBB31_5:                               # %if.else.205
	movl	28(%rsp), %ecx          # 4-byte Reload
	leaq	64(%rsp), %rdi
	movl	$.L.str.251, %esi
	xorl	%eax, %eax
	movl	%r14d, %edx
	callq	gs_sprintf
	movl	%r14d, %ebx
	jmp	.LBB31_50
.LBB31_36:                              # %cond.false
	movl	$.L.str.11, %esi
	callq	strcmp
.LBB31_37:                              # %cond.end
	testl	%eax, %eax
	je	.LBB31_48
# BB#38:                                # %land.lhs.true.144
	movl	$.L.str.31, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	16(%rax), %rdi
	cmpq	$3, %rcx
	ja	.LBB31_46
# BB#39:                                # %cond.true.148
	movzbl	(%rdi), %eax
	addl	$-108, %eax
	testq	%rcx, %rcx
	je	.LBB31_47
# BB#40:                                # %cond.true.148
	testl	%eax, %eax
	jne	.LBB31_47
# BB#41:                                # %if.then.163
	movzbl	1(%rdi), %eax
	addl	$-112, %eax
	cmpq	$2, %rcx
	jb	.LBB31_47
# BB#42:                                # %if.then.163
	testl	%eax, %eax
	jne	.LBB31_47
# BB#43:                                # %if.then.173
	movzbl	2(%rdi), %eax
	addl	$-57, %eax
	cmpq	$3, %rcx
	jb	.LBB31_47
# BB#44:                                # %if.then.173
	testl	%eax, %eax
	jne	.LBB31_47
# BB#45:                                # %if.then.183
	movzbl	3(%rdi), %eax
	addl	$-54, %eax
	jmp	.LBB31_47
.LBB31_46:                              # %cond.false.192
	movl	$.L.str.31, %esi
	callq	strcmp
.LBB31_47:                              # %cond.end.195
	testl	%eax, %eax
	je	.LBB31_48
# BB#49:                                # %if.else.201
	leaq	64(%rsp), %rdi
	movl	$.L.str.250, %esi
	xorl	%eax, %eax
	movl	%ebx, %edx
	movl	28(%rsp), %ecx          # 4-byte Reload
	callq	gs_sprintf
	jmp	.LBB31_50
.LBB31_48:                              # %if.then.199
	leaq	64(%rsp), %rdi
	movl	$.L.str.249, %esi
	xorl	%eax, %eax
	movl	%ebx, %edx
	movl	12(%rsp), %ecx          # 4-byte Reload
	movl	28(%rsp), %r8d          # 4-byte Reload
	callq	gs_sprintf
.LBB31_50:                              # %if.end.208
	leaq	64(%rsp), %rbp
	movq	%rbp, %rdi
	callq	strlen
	leaq	196(%rsp), %rcx
	movq	16(%rsp), %r14          # 8-byte Reload
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movl	%eax, %edx
	callq	sputs
	leaq	196(%rsp), %rcx
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	%ebx, %edx
	callq	sputs
	cmpl	$24, %r13d
	ja	.LBB31_62
# BB#51:                                # %if.end.208
	movl	$16781328, %eax         # imm = 0x1001010
	btl	%r13d, %eax
	jae	.LBB31_62
# BB#52:                                # %if.then.219
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rdi
	movl	$.L.str.248, %edx
	movq	%r12, %rsi
.LBB31_61:                              # %if.end.280
	callq	*24(%rdi)
.LBB31_62:                              # %if.end.280
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end31:
	.size	escv_write_data, .Lfunc_end31-escv_write_data
	.cfi_endproc

	.align	16, 0x90
	.type	escv_write_end,@function
escv_write_end:                         # @escv_write_end
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp245:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp246:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp247:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp248:
	.cfi_def_cfa_offset 48
.Ltmp249:
	.cfi_offset %rbx, -32
.Ltmp250:
	.cfi_offset %r14, -24
.Ltmp251:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	callq	gdev_vector_stream
	movq	%rax, %r14
	cmpl	$0, 8848(%rbx)
	jne	.LBB32_24
# BB#1:                                 # %if.then
	cmpl	$1, %ebp
	jne	.LBB32_24
# BB#2:                                 # %land.lhs.true
	movl	$.L.str.11, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	16(%rbx), %rdi
	cmpq	$3, %rcx
	ja	.LBB32_10
# BB#3:                                 # %cond.true
	movzbl	(%rdi), %eax
	addl	$-108, %eax
	testq	%rcx, %rcx
	je	.LBB32_11
# BB#4:                                 # %cond.true
	testl	%eax, %eax
	jne	.LBB32_11
# BB#5:                                 # %if.then.13
	movzbl	1(%rdi), %eax
	addl	$-112, %eax
	cmpq	$2, %rcx
	jb	.LBB32_11
# BB#6:                                 # %if.then.13
	testl	%eax, %eax
	jne	.LBB32_11
# BB#7:                                 # %if.then.23
	movzbl	2(%rdi), %eax
	addl	$-49, %eax
	cmpq	$3, %rcx
	jb	.LBB32_11
# BB#8:                                 # %if.then.23
	testl	%eax, %eax
	jne	.LBB32_11
# BB#9:                                 # %if.then.33
	movzbl	3(%rdi), %eax
	addl	$-56, %eax
	jmp	.LBB32_11
.LBB32_24:                              # %if.else.112
	movl	$.L.str.254, %edi
	callq	strlen
	leaq	12(%rsp), %rcx
	movl	$.L.str.254, %esi
.LBB32_25:                              # %if.end.114
	movq	%r14, %rdi
	movl	%eax, %edx
	callq	sputs
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB32_10:                              # %cond.false
	movl	$.L.str.11, %esi
	callq	strcmp
.LBB32_11:                              # %cond.end
	testl	%eax, %eax
	je	.LBB32_22
# BB#12:                                # %land.lhs.true.50
	movl	$.L.str.31, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	16(%rbx), %rdi
	cmpq	$3, %rcx
	ja	.LBB32_20
# BB#13:                                # %cond.true.54
	movzbl	(%rdi), %eax
	addl	$-108, %eax
	testq	%rcx, %rcx
	je	.LBB32_21
# BB#14:                                # %cond.true.54
	testl	%eax, %eax
	jne	.LBB32_21
# BB#15:                                # %if.then.69
	movzbl	1(%rdi), %eax
	addl	$-112, %eax
	cmpq	$2, %rcx
	jb	.LBB32_21
# BB#16:                                # %if.then.69
	testl	%eax, %eax
	jne	.LBB32_21
# BB#17:                                # %if.then.79
	movzbl	2(%rdi), %eax
	addl	$-57, %eax
	cmpq	$3, %rcx
	jb	.LBB32_21
# BB#18:                                # %if.then.79
	testl	%eax, %eax
	jne	.LBB32_21
# BB#19:                                # %if.then.89
	movzbl	3(%rdi), %eax
	addl	$-54, %eax
	jmp	.LBB32_21
.LBB32_20:                              # %cond.false.98
	movl	$.L.str.31, %esi
	callq	strcmp
.LBB32_21:                              # %cond.end.101
	testl	%eax, %eax
	je	.LBB32_22
# BB#23:                                # %if.else
	movl	$.L.str.253, %edi
	callq	strlen
	leaq	12(%rsp), %rcx
	movl	$.L.str.253, %esi
	jmp	.LBB32_25
.LBB32_22:                              # %if.then.105
	movl	$.L.str.252, %edi
	callq	strlen
	leaq	12(%rsp), %rcx
	movl	$.L.str.252, %esi
	jmp	.LBB32_25
.Lfunc_end32:
	.size	escv_write_end, .Lfunc_end32-escv_write_end
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI33_0:
	.long	1056964608              # float 0.5
.LCPI33_2:
	.long	973078528               # float 4.8828125E-4
.LCPI33_16:
	.long	1088421888              # float 7
.LCPI33_17:
	.long	1040187392              # float 0.125
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI33_1:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
.LCPI33_3:
	.zero	16,1
.LCPI33_4:
	.zero	16,7
.LCPI33_5:
	.zero	16,2
.LCPI33_6:
	.zero	16,31
.LCPI33_7:
	.zero	16,4
.LCPI33_8:
	.zero	16,127
.LCPI33_9:
	.zero	16,8
.LCPI33_10:
	.zero	16,16
.LCPI33_11:
	.zero	16,248
.LCPI33_12:
	.zero	16,32
.LCPI33_13:
	.zero	16,224
.LCPI33_14:
	.zero	16,64
.LCPI33_15:
	.zero	16,128
	.text
	.align	16, 0x90
	.type	escv_image_plane_data,@function
escv_image_plane_data:                  # @escv_image_plane_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp252:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp253:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp254:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp255:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp256:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp257:
	.cfi_def_cfa_offset 56
	subq	$440, %rsp              # imm = 0x1B8
.Ltmp258:
	.cfi_def_cfa_offset 496
.Ltmp259:
	.cfi_offset %rbx, -56
.Ltmp260:
	.cfi_offset %r12, -48
.Ltmp261:
	.cfi_offset %r13, -40
.Ltmp262:
	.cfi_offset %r14, -32
.Ltmp263:
	.cfi_offset %r15, -24
.Ltmp264:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %r13
	movq	%r13, 248(%rsp)         # 8-byte Spill
	movq	%rdi, %rax
	movq	568(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB33_1
# BB#142:                               # %if.then
	movq	%r13, %rsi
	movl	%ebp, %edx
	addq	$440, %rsp              # imm = 0x1B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_image_plane_data     # TAILCALL
.LBB33_1:                               # %if.end
	movq	16(%rax), %r14
	movq	%r14, 344(%rsp)         # 8-byte Spill
	movq	576(%rax), %rdi
	movq	%r13, %rsi
	movl	%ebp, %edx
	movq	%rax, %rbx
	callq	gx_image_plane_data
	cmpl	$260, %ebp              # imm = 0x104
	movl	$1, %r15d
	cmovnel	%ebp, %r15d
	movl	592(%rbx), %eax
	imull	584(%rbx), %eax
	movl	8920(%r14), %ecx
	cltd
	idivl	%ecx
	leal	7(%rax), %edx
	sarl	$31, %edx
	shrl	$29, %edx
	leal	7(%rax,%rdx), %r12d
	sarl	$3, %r12d
	imull	%ecx, %r12d
	movq	%r12, 360(%rsp)         # 8-byte Spill
	movl	%r12d, %esi
	imull	%r15d, %esi
	movq	%rsi, 240(%rsp)         # 8-byte Spill
	movq	24(%r14), %rdi
	movl	$.L.str.261, %edx
	callq	*64(%rdi)
	movq	%r14, %r9
	movq	%rax, %r10
	movq	%r10, 320(%rsp)         # 8-byte Spill
	cmpq	$0, 9000(%r9)
	je	.LBB33_36
# BB#2:                                 # %if.then.13
	movl	9044(%r9), %eax
	cmpl	%r15d, %eax
	jne	.LBB33_30
# BB#3:                                 # %if.then.15
	cmpl	$0, 8848(%r9)
	movq	%rbx, %rbp
	je	.LBB33_4
# BB#27:                                # %if.else
	movq	240(%rsp), %rax         # 8-byte Reload
	movq	%r10, %r14
	cmpl	$1, %eax
	jne	.LBB33_29
	jmp	.LBB33_28
.LBB33_30:                              # %if.else.160
	cvtsi2ssl	%eax, %xmm1
	movss	9020(%r9), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	mulss	%xmm0, %xmm2
	cvtsi2ssq	9064(%r9), %xmm3
	movaps	%xmm0, %xmm4
	mulss	%xmm3, %xmm4
	subss	%xmm4, %xmm2
	xorps	%xmm4, %xmm4
	cvtsi2ssl	%r15d, %xmm4
	mulss	%xmm4, %xmm0
	subss	%xmm0, %xmm2
	pxor	%xmm5, %xmm5
	ucomiss	%xmm5, %xmm2
	movq	%rbx, %rbp
	jne	.LBB33_32
	jp	.LBB33_32
# BB#31:                                # %if.then.181
	movss	9016(%r9), %xmm2        # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	mulss	%xmm2, %xmm3
	subss	%xmm3, %xmm1
	mulss	%xmm2, %xmm4
	subss	%xmm4, %xmm1
	movaps	%xmm1, %xmm2
.LBB33_32:                              # %if.end.197
	movl	9036(%r9), %eax
	movq	%r10, %r12
	testl	%eax, %eax
	je	.LBB33_34
# BB#33:                                # %if.then.199
	movss	9028(%r9), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvttss2si	%xmm1, %ecx
	cvttss2si	%xmm2, %r14d
	subl	%r14d, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%ecx, %xmm0
	cvttss2si	%xmm0, %ecx
	subl	%ecx, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	jmp	.LBB33_35
.LBB33_4:                               # %if.then.17
	movq	%r9, %rbx
	movq	240(%rsp), %rax         # 8-byte Reload
	movq	%r10, %r14
	cmpl	$1, %eax
	jne	.LBB33_5
# BB#6:                                 # %land.lhs.true
	movl	$.L.str.11, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	%rbx, %rdx
	movq	16(%rdx), %rdi
	cmpq	$3, %rcx
	ja	.LBB33_14
# BB#7:                                 # %cond.true
	movzbl	(%rdi), %eax
	addl	$-108, %eax
	movq	%rdx, %rbx
	testq	%rcx, %rcx
	je	.LBB33_15
# BB#8:                                 # %cond.true
	testl	%eax, %eax
	jne	.LBB33_15
# BB#9:                                 # %if.then.30
	movzbl	1(%rdi), %eax
	addl	$-112, %eax
	cmpq	$2, %rcx
	jb	.LBB33_15
# BB#10:                                # %if.then.30
	testl	%eax, %eax
	jne	.LBB33_15
# BB#11:                                # %if.then.40
	movzbl	2(%rdi), %eax
	addl	$-49, %eax
	cmpq	$3, %rcx
	jb	.LBB33_15
# BB#12:                                # %if.then.40
	testl	%eax, %eax
	jne	.LBB33_15
# BB#13:                                # %if.then.50
	movzbl	3(%rdi), %eax
	addl	$-56, %eax
	jmp	.LBB33_15
.LBB33_34:                              # %if.else.210
	addss	.LCPI33_0(%rip), %xmm0
	movss	9028(%r9), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvttss2si	%xmm2, %r14d
.LBB33_35:                              # %if.end.218
	movaps	.LCPI33_1(%rip), %xmm2  # xmm2 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm0, %xmm2
	xorps	%xmm3, %xmm3
	movaps	%xmm0, %xmm4
	cmpltss	%xmm3, %xmm4
	movaps	%xmm4, %xmm3
	andnps	%xmm0, %xmm3
	andps	%xmm2, %xmm4
	orps	%xmm3, %xmm4
	movl	592(%rbp), %esi
	cvttss2si	9024(%r9), %edx
	cvttss2si	%xmm1, %ecx
	subl	%r14d, %ecx
	cvttss2si	9052(%r9), %eax
	cvttss2si	%xmm4, %edi
	movq	%rbp, %rbx
	movl	9040(%r9), %r8d
	movl	9048(%r9), %ebp
	movl	%ebp, 16(%rsp)
	movl	%eax, (%rsp)
	movl	%edi, 8(%rsp)
	movq	%r9, %rdi
	movq	%r9, %rbp
	movl	%r15d, %r9d
	callq	escv_write_begin
	movq	%rbp, %r9
	cvttss2si	9028(%r9), %eax
	subl	%r14d, %eax
	movl	%eax, 9036(%r9)
	movq	%r12, %r10
	movq	360(%rsp), %r12         # 8-byte Reload
	jmp	.LBB33_36
.LBB33_5:
	movq	%rbx, %r9
	jmp	.LBB33_29
.LBB33_14:                              # %cond.false
	movq	%rdx, %rbx
	movl	$.L.str.11, %esi
	callq	strcmp
.LBB33_15:                              # %cond.end
	testl	%eax, %eax
	je	.LBB33_16
# BB#17:                                # %land.lhs.true.69
	movl	$.L.str.31, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	%rbx, %r9
	movq	16(%r9), %rdi
	cmpq	$3, %rcx
	ja	.LBB33_25
# BB#18:                                # %cond.true.73
	movzbl	(%rdi), %eax
	addl	$-108, %eax
	testq	%rcx, %rcx
	je	.LBB33_26
# BB#19:                                # %cond.true.73
	testl	%eax, %eax
	jne	.LBB33_26
# BB#20:                                # %if.then.88
	movzbl	1(%rdi), %eax
	addl	$-112, %eax
	cmpq	$2, %rcx
	jb	.LBB33_26
# BB#21:                                # %if.then.88
	testl	%eax, %eax
	jne	.LBB33_26
# BB#22:                                # %if.then.98
	movzbl	2(%rdi), %eax
	addl	$-57, %eax
	cmpq	$3, %rcx
	jb	.LBB33_26
# BB#23:                                # %if.then.98
	testl	%eax, %eax
	jne	.LBB33_26
# BB#24:                                # %if.then.108
	movzbl	3(%rdi), %eax
	addl	$-54, %eax
	jmp	.LBB33_26
.LBB33_16:
	movq	%rbx, %r9
	jmp	.LBB33_29
.LBB33_25:                              # %cond.false.117
	movl	$.L.str.31, %esi
	movq	%r9, %rbx
	callq	strcmp
	movq	%rbx, %r9
.LBB33_26:                              # %cond.end.120
	testl	%eax, %eax
	je	.LBB33_29
.LBB33_28:                              # %if.end.150
	movss	.LCPI33_2(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	9052(%r9), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	cvtsi2ssl	9040(%r9), %xmm2
	addss	%xmm1, %xmm2
	cvttss2si	%xmm2, %eax
	movl	%eax, 9040(%r9)
	mulss	9056(%r9), %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%r15d, %xmm1
	addss	%xmm0, %xmm1
	cvttss2si	%xmm1, %r15d
.LBB33_29:                              # %if.end.150
	movl	592(%rbp), %esi
	cvttss2si	9024(%r9), %edx
	cvttss2si	9028(%r9), %ecx
	cvttss2si	9052(%r9), %eax
	cvttss2si	9056(%r9), %edi
	movq	%rbp, %rbx
	movl	9040(%r9), %r8d
	movl	9048(%r9), %ebp
	movl	%ebp, 16(%rsp)
	movl	%edi, 8(%rsp)
	movl	%eax, (%rsp)
	movq	%r9, %rdi
	movq	%r9, %rbp
	movl	%r15d, %r9d
	callq	escv_write_begin
	movq	%rbp, %r9
	movq	%r14, %r10
.LBB33_36:                              # %if.end.245
	movl	%r15d, 428(%rsp)        # 4-byte Spill
	movq	%rbx, 352(%rsp)         # 8-byte Spill
	movslq	%r15d, %rax
	movq	%rax, 392(%rsp)         # 8-byte Spill
	addq	%rax, 9064(%r9)
	movl	44(%rbx), %eax
	testl	%eax, %eax
	movq	%rbx, %r11
	jle	.LBB33_89
# BB#37:                                # %for.cond.251.preheader.lr.ph
	movslq	%r12d, %r8
	imulq	$1431655766, %r8, %rdi  # imm = 0x55555556
	movq	%rdi, %rcx
	shrq	$63, %rcx
	shrq	$32, %rdi
	addl	%ecx, %edi
	movq	%rdi, 336(%rsp)         # 8-byte Spill
	leal	-1(%r12), %ecx
	movq	%rcx, 328(%rsp)         # 8-byte Spill
	leaq	1(%rcx), %rdx
	movq	%rdx, 368(%rsp)         # 8-byte Spill
	notq	%rcx
	movq	%rcx, 312(%rsp)         # 8-byte Spill
	movq	%rdx, %rsi
	movabsq	$8589934560, %rcx       # imm = 0x1FFFFFFE0
	andq	%rcx, %rsi
	movq	%rsi, 304(%rsp)         # 8-byte Spill
	leaq	-32(%rsi), %rbx
	shrq	$5, %rbx
	movq	%rbx, 272(%rsp)         # 8-byte Spill
	leaq	16(%rcx), %rcx
	andq	%rdx, %rcx
	movq	%rcx, 376(%rsp)         # 8-byte Spill
	negq	%rcx
	movq	%rcx, 296(%rsp)         # 8-byte Spill
	negq	%rsi
	movq	%rsi, 264(%rsp)         # 8-byte Spill
	andl	$1, %ebx
	movq	%rbx, 256(%rsp)         # 8-byte Spill
	movabsq	$8589934576, %rcx       # imm = 0x1FFFFFFF0
	andq	%rdx, %rcx
	movq	%rcx, 288(%rsp)         # 8-byte Spill
	xorl	%edx, %edx
	movdqa	.LCPI33_5(%rip), %xmm10 # xmm10 = [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]
	movdqa	.LCPI33_6(%rip), %xmm11 # xmm11 = [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31]
	movdqa	.LCPI33_7(%rip), %xmm12 # xmm12 = [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]
	movdqa	.LCPI33_8(%rip), %xmm13 # xmm13 = [127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127]
	movdqa	.LCPI33_9(%rip), %xmm14 # xmm14 = [8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8]
	movdqa	.LCPI33_10(%rip), %xmm15 # xmm15 = [16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16]
	movdqa	.LCPI33_11(%rip), %xmm9 # xmm9 = [248,248,248,248,248,248,248,248,248,248,248,248,248,248,248,248]
	movdqa	.LCPI33_12(%rip), %xmm7 # xmm7 = [32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32]
	movdqa	.LCPI33_13(%rip), %xmm3 # xmm3 = [224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224]
	movdqa	.LCPI33_14(%rip), %xmm4 # xmm4 = [64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64]
	movdqa	.LCPI33_15(%rip), %xmm5 # xmm5 = [128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128]
	.align	16, 0x90
.LBB33_38:                              # %for.cond.251.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_40 Depth 2
                                        #       Child Loop BB33_85 Depth 3
                                        #       Child Loop BB33_60 Depth 3
                                        #       Child Loop BB33_66 Depth 3
                                        #       Child Loop BB33_69 Depth 3
                                        #       Child Loop BB33_77 Depth 3
                                        #       Child Loop BB33_82 Depth 3
	cmpl	$0, 428(%rsp)           # 4-byte Folded Reload
	jle	.LBB33_88
# BB#39:                                # %for.body.254.lr.ph
                                        #   in Loop: Header=BB33_38 Depth=1
	movq	%rdx, %rax
	movq	%rdx, 280(%rsp)         # 8-byte Spill
	shlq	$4, %rax
	leaq	(%r13,%rax), %r15
	movq	%r15, 384(%rsp)         # 8-byte Spill
	leaq	8(%r13,%rax), %rcx
	movq	%rcx, 416(%rsp)         # 8-byte Spill
	leaq	12(%r13,%rax), %rax
	movq	%rax, 408(%rsp)         # 8-byte Spill
	xorl	%esi, %esi
	.align	16, 0x90
.LBB33_40:                              # %for.body.254
                                        #   Parent Loop BB33_38 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB33_85 Depth 3
                                        #       Child Loop BB33_60 Depth 3
                                        #       Child Loop BB33_66 Depth 3
                                        #       Child Loop BB33_69 Depth 3
                                        #       Child Loop BB33_77 Depth 3
                                        #       Child Loop BB33_82 Depth 3
	movq	(%r15), %rbx
	movl	592(%r11), %eax
	movq	416(%rsp), %rcx         # 8-byte Reload
	imull	(%rcx), %eax
	sarl	$3, %eax
	cltq
	movq	%rax, 432(%rsp)         # 8-byte Spill
	leaq	(%rbx,%rax), %rax
	movq	408(%rsp), %rcx         # 8-byte Reload
	movl	(%rcx), %ebp
	imull	%esi, %ebp
	movq	%rbp, %r13
	addq	%rax, %r13
	cmpq	$0, 9000(%r9)
	je	.LBB33_43
# BB#41:                                # %if.then.273
                                        #   in Loop: Header=BB33_40 Depth=2
	movq	392(%rsp), %rax         # 8-byte Reload
	subq	%rsi, %rax
	movq	%rax, %rcx
	imulq	%r8, %rcx
	leaq	(%rcx,%r10), %r14
	cmpq	$0, 8992(%r9)
	jne	.LBB33_46
# BB#42:                                # %if.then.279
                                        #   in Loop: Header=BB33_40 Depth=2
	movq	%rsi, 400(%rsp)         # 8-byte Spill
	decq	%rax
	jmp	.LBB33_45
	.align	16, 0x90
.LBB33_43:                              # %if.else.305
                                        #   in Loop: Header=BB33_40 Depth=2
	leaq	1(%rsi), %rax
	imulq	%r8, %rax
	leaq	(%rax,%r10), %r14
	cmpq	$0, 8992(%r9)
	jne	.LBB33_46
# BB#44:                                # %if.then.312
                                        #   in Loop: Header=BB33_40 Depth=2
	movq	%rsi, %rax
	movq	%rsi, 400(%rsp)         # 8-byte Spill
.LBB33_45:                              # %if.end.336
                                        #   in Loop: Header=BB33_40 Depth=2
	imulq	%r8, %rax
	leaq	(%rax,%r10), %rdi
	movq	%r10, %r12
	movq	%r13, %rsi
	movq	%r8, %rdx
	movq	%r8, %r15
	callq	memcpy
	movq	344(%rsp), %r9          # 8-byte Reload
	cmpq	$0, 8992(%r9)
	movq	352(%rsp), %r11         # 8-byte Reload
	movq	%r12, %r10
	movq	360(%rsp), %r12         # 8-byte Reload
	movq	%r15, %r8
	movq	336(%rsp), %rdi         # 8-byte Reload
	movdqa	.LCPI33_5(%rip), %xmm5  # xmm5 = [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]
	movdqa	%xmm5, %xmm10
	movdqa	.LCPI33_6(%rip), %xmm6  # xmm6 = [31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31]
	movdqa	%xmm6, %xmm11
	movdqa	.LCPI33_7(%rip), %xmm7  # xmm7 = [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]
	movdqa	%xmm7, %xmm12
	movdqa	.LCPI33_8(%rip), %xmm3  # xmm3 = [127,127,127,127,127,127,127,127,127,127,127,127,127,127,127,127]
	movdqa	%xmm3, %xmm13
	movdqa	.LCPI33_9(%rip), %xmm4  # xmm4 = [8,8,8,8,8,8,8,8,8,8,8,8,8,8,8,8]
	movdqa	%xmm4, %xmm14
	movdqa	.LCPI33_10(%rip), %xmm5 # xmm5 = [16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16]
	movdqa	%xmm5, %xmm15
	movdqa	.LCPI33_11(%rip), %xmm9 # xmm9 = [248,248,248,248,248,248,248,248,248,248,248,248,248,248,248,248]
	movdqa	.LCPI33_12(%rip), %xmm7 # xmm7 = [32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32]
	movdqa	.LCPI33_13(%rip), %xmm3 # xmm3 = [224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224]
	movdqa	.LCPI33_14(%rip), %xmm4 # xmm4 = [64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64]
	movdqa	.LCPI33_15(%rip), %xmm5 # xmm5 = [128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128]
	movq	384(%rsp), %r15         # 8-byte Reload
	movq	400(%rsp), %rsi         # 8-byte Reload
	je	.LBB33_86
.LBB33_46:                              # %if.then.339
                                        #   in Loop: Header=BB33_40 Depth=2
	movl	592(%r11), %eax
	cmpl	$1, %eax
	jne	.LBB33_47
# BB#70:                                # %for.cond.344.preheader
                                        #   in Loop: Header=BB33_40 Depth=2
	testl	%r12d, %r12d
	jle	.LBB33_86
# BB#71:                                # %overflow.checked
                                        #   in Loop: Header=BB33_40 Depth=2
	xorl	%eax, %eax
	cmpq	$0, 376(%rsp)           # 8-byte Folded Reload
	je	.LBB33_72
# BB#73:                                # %vector.memcheck
                                        #   in Loop: Header=BB33_40 Depth=2
	movq	%r12, %r10
	movq	%rsi, %r12
	leaq	-1(%r14), %rdx
	movq	432(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rbp), %rcx
	movq	328(%rsp), %rax         # 8-byte Reload
	leaq	(%rbx,%rax), %rsi
	addq	%rcx, %rsi
	xorl	%eax, %eax
	cmpq	%rsi, %rdx
	ja	.LBB33_76
# BB#74:                                # %vector.memcheck
                                        #   in Loop: Header=BB33_40 Depth=2
	movq	312(%rsp), %rdx         # 8-byte Reload
	leaq	(%r14,%rdx), %rdx
	leaq	(%rcx,%rbx), %rcx
	cmpq	%rdx, %rcx
	ja	.LBB33_76
# BB#75:                                #   in Loop: Header=BB33_40 Depth=2
	xorl	%ecx, %ecx
	jmp	.LBB33_79
	.align	16, 0x90
.LBB33_47:                              # %if.then.339
                                        #   in Loop: Header=BB33_40 Depth=2
	cmpl	$8, %eax
	jne	.LBB33_83
# BB#48:                                # %for.cond.369.preheader
                                        #   in Loop: Header=BB33_40 Depth=2
	testl	%r12d, %r12d
	jle	.LBB33_86
# BB#49:                                # %overflow.checked422
                                        #   in Loop: Header=BB33_40 Depth=2
	xorl	%ecx, %ecx
	movq	304(%rsp), %r15         # 8-byte Reload
	testq	%r15, %r15
	je	.LBB33_50
# BB#51:                                # %vector.memcheck438
                                        #   in Loop: Header=BB33_40 Depth=2
	movq	%r12, %r10
	movq	%rsi, %r12
	leaq	-1(%r14), %rdx
	movq	432(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rbp), %rax
	movq	328(%rsp), %rcx         # 8-byte Reload
	leaq	(%rbx,%rcx), %rsi
	addq	%rax, %rsi
	xorl	%ecx, %ecx
	cmpq	%rsi, %rdx
	ja	.LBB33_55
# BB#52:                                # %vector.memcheck438
                                        #   in Loop: Header=BB33_40 Depth=2
	movq	312(%rsp), %rdx         # 8-byte Reload
	leaq	(%r14,%rdx), %rdx
	leaq	(%rax,%rbx), %rax
	cmpq	%rdx, %rax
	ja	.LBB33_55
# BB#53:                                #   in Loop: Header=BB33_40 Depth=2
	xorl	%eax, %eax
	movq	384(%rsp), %r15         # 8-byte Reload
	movq	%r12, %rsi
	movq	%r10, %r12
	jmp	.LBB33_62
	.align	16, 0x90
.LBB33_83:                              # %for.cond.379.preheader
                                        #   in Loop: Header=BB33_40 Depth=2
	cmpl	$3, %r12d
	jl	.LBB33_86
# BB#84:                                # %for.body.383.preheader
                                        #   in Loop: Header=BB33_40 Depth=2
	decq	%r14
	movq	432(%rsp), %rax         # 8-byte Reload
	addq	%rbp, %rax
	leaq	2(%rbx,%rax), %rax
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB33_85:                              # %for.body.383
                                        #   Parent Loop BB33_38 Depth=1
                                        #     Parent Loop BB33_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	(%rax), %dl
	movb	%dl, (%r14)
	movb	-1(%rax), %dl
	movb	%dl, -1(%r14)
	movb	-2(%rax), %dl
	movb	%dl, -2(%r14)
	incl	%ecx
	addq	$-3, %r14
	addq	$3, %rax
	cmpl	%edi, %ecx
	jl	.LBB33_85
	jmp	.LBB33_86
.LBB33_72:                              #   in Loop: Header=BB33_40 Depth=2
	xorl	%ecx, %ecx
	jmp	.LBB33_80
.LBB33_76:                              # %vector.body.preheader
                                        #   in Loop: Header=BB33_40 Depth=2
	addq	376(%rsp), %r13         # 8-byte Folded Reload
	movq	432(%rsp), %rax         # 8-byte Reload
	addq	%rbp, %rax
	addq	%rax, %rbx
	movq	296(%rsp), %rax         # 8-byte Reload
	leaq	(%r14,%rax), %rax
	addq	$-16, %r14
	movq	288(%rsp), %rcx         # 8-byte Reload
	pxor	%xmm8, %xmm8
	.align	16, 0x90
.LBB33_77:                              # %vector.body
                                        #   Parent Loop BB33_38 Depth=1
                                        #     Parent Loop BB33_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movdqu	(%rbx), %xmm0
	movdqa	%xmm0, %xmm1
	psrlw	$7, %xmm1
	pand	.LCPI33_3(%rip), %xmm1
	movdqa	%xmm0, %xmm2
	psrlw	$5, %xmm2
	pand	.LCPI33_4(%rip), %xmm2
	pand	%xmm10, %xmm2
	por	%xmm1, %xmm2
	movdqa	%xmm0, %xmm1
	psrlw	$3, %xmm1
	pand	%xmm11, %xmm1
	pand	%xmm12, %xmm1
	por	%xmm2, %xmm1
	movdqa	%xmm0, %xmm2
	psrlw	$1, %xmm2
	pand	%xmm13, %xmm2
	pand	%xmm14, %xmm2
	por	%xmm1, %xmm2
	movdqa	%xmm0, %xmm1
	paddb	%xmm1, %xmm1
	pand	%xmm15, %xmm1
	por	%xmm2, %xmm1
	movdqa	%xmm0, %xmm2
	psllw	$3, %xmm2
	pand	%xmm9, %xmm2
	pand	%xmm7, %xmm2
	por	%xmm1, %xmm2
	movdqa	%xmm0, %xmm1
	psllw	$5, %xmm1
	pand	%xmm3, %xmm1
	pand	%xmm4, %xmm1
	por	%xmm2, %xmm1
	psllw	$7, %xmm0
	pand	%xmm5, %xmm0
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpcklbw	%xmm8, %xmm1    # xmm1 = xmm1[0],xmm8[0],xmm1[1],xmm8[1],xmm1[2],xmm8[2],xmm1[3],xmm8[3],xmm1[4],xmm8[4],xmm1[5],xmm8[5],xmm1[6],xmm8[6],xmm1[7],xmm8[7]
	pshufd	$78, %xmm1, %xmm1       # xmm1 = xmm1[2,3,0,1]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm8, %xmm0    # xmm0 = xmm0[8],xmm8[8],xmm0[9],xmm8[9],xmm0[10],xmm8[10],xmm0[11],xmm8[11],xmm0[12],xmm8[12],xmm0[13],xmm8[13],xmm0[14],xmm8[14],xmm0[15],xmm8[15]
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm0, %xmm0       # xmm0 = xmm0[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm0, %xmm0       # xmm0 = xmm0[0,1,2,3,7,6,5,4]
	packuswb	%xmm1, %xmm0
	movdqu	%xmm0, (%r14)
	addq	$16, %rbx
	addq	$-16, %r14
	addq	$-16, %rcx
	jne	.LBB33_77
# BB#78:                                #   in Loop: Header=BB33_40 Depth=2
	movq	%rax, %r14
	movq	376(%rsp), %rcx         # 8-byte Reload
	movq	%rcx, %rax
.LBB33_79:                              # %middle.block
                                        #   in Loop: Header=BB33_40 Depth=2
	movq	%r12, %rsi
	movq	%r10, %r12
	movq	320(%rsp), %r10         # 8-byte Reload
.LBB33_80:                              # %middle.block
                                        #   in Loop: Header=BB33_40 Depth=2
	cmpq	%rax, 368(%rsp)         # 8-byte Folded Reload
	je	.LBB33_86
# BB#81:                                # %for.cond.348.preheader.preheader
                                        #   in Loop: Header=BB33_40 Depth=2
	decq	%r14
	movl	%r12d, %eax
	subl	%ecx, %eax
	.align	16, 0x90
.LBB33_82:                              # %for.cond.348.preheader
                                        #   Parent Loop BB33_38 Depth=1
                                        #     Parent Loop BB33_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	(%r13), %bl
	movb	%bl, %dl
	shrb	$7, %dl
	movb	%bl, %cl
	shrb	$5, %cl
	andb	$2, %cl
	orb	%dl, %cl
	movb	%bl, %dl
	shrb	$3, %dl
	andb	$4, %dl
	orb	%cl, %dl
	movb	%bl, %cl
	shrb	%cl
	andb	$8, %cl
	orb	%dl, %cl
	movb	%bl, %dl
	addb	%dl, %dl
	andb	$16, %dl
	orb	%cl, %dl
	movb	%bl, %cl
	shlb	$3, %cl
	andb	$32, %cl
	orb	%dl, %cl
	movb	%bl, %dl
	shlb	$5, %dl
	andb	$64, %dl
	orb	%cl, %dl
	shlb	$7, %bl
	orb	%dl, %bl
	incq	%r13
	movb	%bl, (%r14)
	decq	%r14
	decl	%eax
	jne	.LBB33_82
	jmp	.LBB33_86
.LBB33_50:                              #   in Loop: Header=BB33_40 Depth=2
	xorl	%eax, %eax
	movq	384(%rsp), %r15         # 8-byte Reload
	jmp	.LBB33_63
.LBB33_55:                              # %vector.body418.preheader
                                        #   in Loop: Header=BB33_40 Depth=2
	cmpq	$0, 256(%rsp)           # 8-byte Folded Reload
	movl	$0, %edx
	jne	.LBB33_57
# BB#56:                                # %vector.body418.prol
                                        #   in Loop: Header=BB33_40 Depth=2
	movdqu	(%r13), %xmm0
	movdqu	16(%r13), %xmm1
	movdqa	%xmm0, %xmm2
	pxor	%xmm6, %xmm6
	punpcklbw	%xmm6, %xmm2    # xmm2 = xmm2[0],xmm6[0],xmm2[1],xmm6[1],xmm2[2],xmm6[2],xmm2[3],xmm6[3],xmm2[4],xmm6[4],xmm2[5],xmm6[5],xmm2[6],xmm6[6],xmm2[7],xmm6[7]
	pshufd	$78, %xmm2, %xmm2       # xmm2 = xmm2[2,3,0,1]
	pshuflw	$27, %xmm2, %xmm2       # xmm2 = xmm2[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm2, %xmm2       # xmm2 = xmm2[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm6, %xmm0    # xmm0 = xmm0[8],xmm6[8],xmm0[9],xmm6[9],xmm0[10],xmm6[10],xmm0[11],xmm6[11],xmm0[12],xmm6[12],xmm0[13],xmm6[13],xmm0[14],xmm6[14],xmm0[15],xmm6[15]
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm0, %xmm0       # xmm0 = xmm0[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm0, %xmm0       # xmm0 = xmm0[0,1,2,3,7,6,5,4]
	packuswb	%xmm2, %xmm0
	movdqu	%xmm0, -16(%r14)
	movdqa	%xmm1, %xmm0
	punpcklbw	%xmm6, %xmm0    # xmm0 = xmm0[0],xmm6[0],xmm0[1],xmm6[1],xmm0[2],xmm6[2],xmm0[3],xmm6[3],xmm0[4],xmm6[4],xmm0[5],xmm6[5],xmm0[6],xmm6[6],xmm0[7],xmm6[7]
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm0, %xmm0       # xmm0 = xmm0[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm0, %xmm0       # xmm0 = xmm0[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm6, %xmm1    # xmm1 = xmm1[8],xmm6[8],xmm1[9],xmm6[9],xmm1[10],xmm6[10],xmm1[11],xmm6[11],xmm1[12],xmm6[12],xmm1[13],xmm6[13],xmm1[14],xmm6[14],xmm1[15],xmm6[15]
	pshufd	$78, %xmm1, %xmm1       # xmm1 = xmm1[2,3,0,1]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	packuswb	%xmm0, %xmm1
	movdqu	%xmm1, -32(%r14)
	movl	$32, %edx
.LBB33_57:                              # %vector.body418.preheader.split
                                        #   in Loop: Header=BB33_40 Depth=2
	movq	264(%rsp), %rax         # 8-byte Reload
	leaq	(%r14,%rax), %rax
	addq	%r15, %r13
	cmpq	$0, 272(%rsp)           # 8-byte Folded Reload
	movq	%r12, %rsi
	je	.LBB33_58
# BB#59:                                # %vector.body418.preheader.split.split
                                        #   in Loop: Header=BB33_40 Depth=2
	movq	%rax, 400(%rsp)         # 8-byte Spill
	movq	%r15, %rcx
	subq	%rdx, %rcx
	subq	%rdx, %r14
	addq	$-16, %r14
	movq	432(%rsp), %rax         # 8-byte Reload
	addq	%rdx, %rax
	addq	%rax, %rbp
	leaq	48(%rbx,%rbp), %rdx
	pxor	%xmm6, %xmm6
	movq	%r10, %r12
	.align	16, 0x90
.LBB33_60:                              # %vector.body418
                                        #   Parent Loop BB33_38 Depth=1
                                        #     Parent Loop BB33_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movdqu	-48(%rdx), %xmm0
	movdqu	-32(%rdx), %xmm1
	movdqa	%xmm0, %xmm2
	punpcklbw	%xmm6, %xmm2    # xmm2 = xmm2[0],xmm6[0],xmm2[1],xmm6[1],xmm2[2],xmm6[2],xmm2[3],xmm6[3],xmm2[4],xmm6[4],xmm2[5],xmm6[5],xmm2[6],xmm6[6],xmm2[7],xmm6[7]
	pshufd	$78, %xmm2, %xmm2       # xmm2 = xmm2[2,3,0,1]
	pshuflw	$27, %xmm2, %xmm2       # xmm2 = xmm2[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm2, %xmm2       # xmm2 = xmm2[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm6, %xmm0    # xmm0 = xmm0[8],xmm6[8],xmm0[9],xmm6[9],xmm0[10],xmm6[10],xmm0[11],xmm6[11],xmm0[12],xmm6[12],xmm0[13],xmm6[13],xmm0[14],xmm6[14],xmm0[15],xmm6[15]
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm0, %xmm0       # xmm0 = xmm0[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm0, %xmm0       # xmm0 = xmm0[0,1,2,3,7,6,5,4]
	packuswb	%xmm2, %xmm0
	movdqu	%xmm0, (%r14)
	movdqa	%xmm1, %xmm0
	punpcklbw	%xmm6, %xmm0    # xmm0 = xmm0[0],xmm6[0],xmm0[1],xmm6[1],xmm0[2],xmm6[2],xmm0[3],xmm6[3],xmm0[4],xmm6[4],xmm0[5],xmm6[5],xmm0[6],xmm6[6],xmm0[7],xmm6[7]
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm0, %xmm0       # xmm0 = xmm0[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm0, %xmm0       # xmm0 = xmm0[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm6, %xmm1    # xmm1 = xmm1[8],xmm6[8],xmm1[9],xmm6[9],xmm1[10],xmm6[10],xmm1[11],xmm6[11],xmm1[12],xmm6[12],xmm1[13],xmm6[13],xmm1[14],xmm6[14],xmm1[15],xmm6[15]
	pshufd	$78, %xmm1, %xmm1       # xmm1 = xmm1[2,3,0,1]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	packuswb	%xmm0, %xmm1
	movdqu	%xmm1, -16(%r14)
	movdqu	-16(%rdx), %xmm0
	movdqu	(%rdx), %xmm1
	movdqa	%xmm0, %xmm2
	punpcklbw	%xmm6, %xmm2    # xmm2 = xmm2[0],xmm6[0],xmm2[1],xmm6[1],xmm2[2],xmm6[2],xmm2[3],xmm6[3],xmm2[4],xmm6[4],xmm2[5],xmm6[5],xmm2[6],xmm6[6],xmm2[7],xmm6[7]
	pshufd	$78, %xmm2, %xmm2       # xmm2 = xmm2[2,3,0,1]
	pshuflw	$27, %xmm2, %xmm2       # xmm2 = xmm2[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm2, %xmm2       # xmm2 = xmm2[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm6, %xmm0    # xmm0 = xmm0[8],xmm6[8],xmm0[9],xmm6[9],xmm0[10],xmm6[10],xmm0[11],xmm6[11],xmm0[12],xmm6[12],xmm0[13],xmm6[13],xmm0[14],xmm6[14],xmm0[15],xmm6[15]
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm0, %xmm0       # xmm0 = xmm0[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm0, %xmm0       # xmm0 = xmm0[0,1,2,3,7,6,5,4]
	packuswb	%xmm2, %xmm0
	movdqu	%xmm0, -32(%r14)
	movdqa	%xmm1, %xmm0
	punpcklbw	%xmm6, %xmm0    # xmm0 = xmm0[0],xmm6[0],xmm0[1],xmm6[1],xmm0[2],xmm6[2],xmm0[3],xmm6[3],xmm0[4],xmm6[4],xmm0[5],xmm6[5],xmm0[6],xmm6[6],xmm0[7],xmm6[7]
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	pshuflw	$27, %xmm0, %xmm0       # xmm0 = xmm0[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm0, %xmm0       # xmm0 = xmm0[0,1,2,3,7,6,5,4]
	punpckhbw	%xmm6, %xmm1    # xmm1 = xmm1[8],xmm6[8],xmm1[9],xmm6[9],xmm1[10],xmm6[10],xmm1[11],xmm6[11],xmm1[12],xmm6[12],xmm1[13],xmm6[13],xmm1[14],xmm6[14],xmm1[15],xmm6[15]
	pshufd	$78, %xmm1, %xmm1       # xmm1 = xmm1[2,3,0,1]
	pshuflw	$27, %xmm1, %xmm1       # xmm1 = xmm1[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm1, %xmm1       # xmm1 = xmm1[0,1,2,3,7,6,5,4]
	packuswb	%xmm0, %xmm1
	movdqu	%xmm1, -48(%r14)
	addq	$-64, %r14
	addq	$64, %rdx
	addq	$-64, %rcx
	jne	.LBB33_60
# BB#61:                                #   in Loop: Header=BB33_40 Depth=2
	movq	400(%rsp), %r14         # 8-byte Reload
	movq	%r15, %rcx
	movl	%r15d, %eax
	movq	384(%rsp), %r15         # 8-byte Reload
	jmp	.LBB33_62
.LBB33_58:                              #   in Loop: Header=BB33_40 Depth=2
	movq	%rax, %r14
	movq	%r15, %rcx
	movl	%r15d, %eax
	movq	384(%rsp), %r15         # 8-byte Reload
	movq	%r10, %r12
.LBB33_62:                              # %middle.block419
                                        #   in Loop: Header=BB33_40 Depth=2
	movq	320(%rsp), %r10         # 8-byte Reload
.LBB33_63:                              # %middle.block419
                                        #   in Loop: Header=BB33_40 Depth=2
	cmpq	%rcx, 368(%rsp)         # 8-byte Folded Reload
	je	.LBB33_86
# BB#64:                                # %for.body.372.preheader
                                        #   in Loop: Header=BB33_40 Depth=2
	movl	%r12d, %edx
	subl	%eax, %edx
	movq	328(%rsp), %rcx         # 8-byte Reload
	subl	%eax, %ecx
	testb	$7, %dl
	je	.LBB33_67
# BB#65:                                # %for.body.372.prol.preheader
                                        #   in Loop: Header=BB33_40 Depth=2
	andl	$7, %edx
	negl	%edx
	.align	16, 0x90
.LBB33_66:                              # %for.body.372.prol
                                        #   Parent Loop BB33_38 Depth=1
                                        #     Parent Loop BB33_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	(%r13), %bl
	incq	%r13
	movb	%bl, -1(%r14)
	decq	%r14
	incl	%eax
	incl	%edx
	jne	.LBB33_66
.LBB33_67:                              # %for.body.372.preheader.split
                                        #   in Loop: Header=BB33_40 Depth=2
	cmpl	$7, %ecx
	jb	.LBB33_86
# BB#68:                                # %for.body.372.preheader.split.split
                                        #   in Loop: Header=BB33_40 Depth=2
	decq	%r14
	movl	%r12d, %ecx
	subl	%eax, %ecx
	.align	16, 0x90
.LBB33_69:                              # %for.body.372
                                        #   Parent Loop BB33_38 Depth=1
                                        #     Parent Loop BB33_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	(%r13), %al
	movb	%al, (%r14)
	movb	1(%r13), %al
	movb	%al, -1(%r14)
	movb	2(%r13), %al
	movb	%al, -2(%r14)
	movb	3(%r13), %al
	movb	%al, -3(%r14)
	movb	4(%r13), %al
	movb	%al, -4(%r14)
	movb	5(%r13), %al
	movb	%al, -5(%r14)
	movb	6(%r13), %al
	movb	%al, -6(%r14)
	movb	7(%r13), %al
	movb	%al, -7(%r14)
	addq	$-8, %r14
	addq	$8, %r13
	addl	$-8, %ecx
	jne	.LBB33_69
	.align	16, 0x90
.LBB33_86:                              # %if.end.395
                                        #   in Loop: Header=BB33_40 Depth=2
	incq	%rsi
	cmpl	428(%rsp), %esi         # 4-byte Folded Reload
	jne	.LBB33_40
# BB#87:                                # %for.cond.251.for.inc.399_crit_edge
                                        #   in Loop: Header=BB33_38 Depth=1
	movl	44(%r11), %eax
	movq	248(%rsp), %r13         # 8-byte Reload
	movq	280(%rsp), %rdx         # 8-byte Reload
.LBB33_88:                              # %for.inc.399
                                        #   in Loop: Header=BB33_38 Depth=1
	incq	%rdx
	movslq	%eax, %rcx
	cmpq	%rcx, %rdx
	jl	.LBB33_38
.LBB33_89:                              # %for.end.401
	movq	240(%rsp), %rcx         # 8-byte Reload
	cmpl	$1, %ecx
	jne	.LBB33_139
# BB#90:                                # %if.then.404
	movq	%r11, %r14
	movq	24(%r9), %rdi
	movl	8848(%r9), %ebx
	movl	$.L.str.261, %edx
	movq	%r10, %rsi
	movq	%r9, %rbp
	callq	*24(%rdi)
	cmpl	$0, %ebx
	je	.LBB33_91
# BB#127:                               # %if.else.601
	movss	9052(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	9056(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	movl	$1, %eax
	movl	$1, %r12d
	cmoval	428(%rsp), %r12d        # 4-byte Folded Reload
	ucomiss	%xmm1, %xmm0
	cmoval	%eax, %r12d
	movl	%r12d, %ebx
	movq	24(%rbp), %rdi
	movq	%rbp, %r13
	movl	$.L.str.261, %edx
	movl	%r12d, %esi
	callq	*64(%rdi)
	movq	%rax, %r10
	testl	%r12d, %r12d
	jle	.LBB33_128
# BB#129:                               # %for.body.629.preheader
	leal	-1(%rbx), %eax
	movq	%rbx, %rbp
	incq	%rax
	xorl	%edx, %edx
	movq	%rax, %rcx
	movabsq	$8589934560, %rbx       # imm = 0x1FFFFFFE0
	andq	%rbx, %rcx
	je	.LBB33_137
# BB#130:                               # %vector.body593.preheader
	leal	-1(%rbp), %edx
	incq	%rdx
	andq	%rbx, %rdx
	addq	$-32, %rdx
	movl	%edx, %edi
	shrl	$5, %edi
	incl	%edi
	xorl	%esi, %esi
	testb	$3, %dil
	je	.LBB33_133
# BB#131:                               # %vector.body593.prol.preheader
	movl	%ebp, %edi
	andl	$96, %edi
	addl	$-32, %edi
	shrl	$5, %edi
	incl	%edi
	andl	$3, %edi
	negq	%rdi
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB33_132:                             # %vector.body593.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%r10,%rsi)
	movups	%xmm0, 16(%r10,%rsi)
	addq	$32, %rsi
	incq	%rdi
	jne	.LBB33_132
.LBB33_133:                             # %vector.body593.preheader.split
	cmpq	$96, %rdx
	jb	.LBB33_136
# BB#134:                               # %vector.body593.preheader.split.split
	leal	-1(%rbp), %edx
	incq	%rdx
	andq	%rbx, %rdx
	subq	%rsi, %rdx
	leaq	112(%rsi,%r10), %rsi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB33_135:                             # %vector.body593
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, -112(%rsi)
	movups	%xmm0, -96(%rsi)
	movups	%xmm0, -80(%rsi)
	movups	%xmm0, -64(%rsi)
	movups	%xmm0, -48(%rsi)
	movups	%xmm0, -32(%rsi)
	movups	%xmm0, -16(%rsi)
	movups	%xmm0, (%rsi)
	subq	$-128, %rsi
	addq	$-128, %rdx
	jne	.LBB33_135
.LBB33_136:
	movq	%rcx, %rdx
.LBB33_137:                             # %middle.block594
	cmpq	%rdx, %rax
	movq	%r14, %r11
	movq	%r13, %r9
	movq	%rbp, %rcx
	je	.LBB33_139
	.align	16, 0x90
.LBB33_138:                             # %for.body.629
                                        # =>This Inner Loop Header: Depth=1
	movb	$0, (%r10,%rdx)
	incq	%rdx
	cmpl	%edx, %ecx
	jne	.LBB33_138
	jmp	.LBB33_139
.LBB33_91:                              # %land.lhs.true.418
	movl	$.L.str.11, %edi
	callq	strlen
	movq	%rax, %rcx
	movq	16(%rbp), %rdi
	cmpq	$3, %rcx
	movq	%rbp, %rdx
	ja	.LBB33_99
# BB#92:                                # %cond.true.422
	movzbl	(%rdi), %eax
	addl	$-108, %eax
	testq	%rcx, %rcx
	je	.LBB33_100
# BB#93:                                # %cond.true.422
	testl	%eax, %eax
	jne	.LBB33_100
# BB#94:                                # %if.then.437
	movzbl	1(%rdi), %eax
	addl	$-112, %eax
	cmpq	$2, %rcx
	jb	.LBB33_100
# BB#95:                                # %if.then.437
	testl	%eax, %eax
	jne	.LBB33_100
# BB#96:                                # %if.then.447
	movzbl	2(%rdi), %eax
	addl	$-49, %eax
	cmpq	$3, %rcx
	jb	.LBB33_100
# BB#97:                                # %if.then.447
	testl	%eax, %eax
	jne	.LBB33_100
# BB#98:                                # %if.then.457
	movzbl	3(%rdi), %eax
	addl	$-56, %eax
	jmp	.LBB33_100
.LBB33_128:
	movl	428(%rsp), %eax         # 4-byte Reload
	movl	%eax, %ecx
	movq	%r14, %r11
	movq	%r13, %r9
	jmp	.LBB33_139
.LBB33_99:                              # %cond.false.466
	movl	$.L.str.11, %esi
	movq	%rdx, %rbx
	callq	strcmp
	movq	%rbx, %rdx
.LBB33_100:                             # %cond.end.469
	testl	%eax, %eax
	je	.LBB33_111
# BB#101:                               # %land.lhs.true.478
	movl	$.L.str.31, %edi
	movq	%rdx, %rbx
	callq	strlen
	movq	%rbx, %rdx
	movq	%rax, %rcx
	movq	16(%rdx), %rdi
	cmpq	$3, %rcx
	ja	.LBB33_109
# BB#102:                               # %cond.true.482
	movzbl	(%rdi), %eax
	addl	$-108, %eax
	testq	%rcx, %rcx
	je	.LBB33_110
# BB#103:                               # %cond.true.482
	testl	%eax, %eax
	jne	.LBB33_110
# BB#104:                               # %if.then.497
	movzbl	1(%rdi), %eax
	addl	$-112, %eax
	cmpq	$2, %rcx
	jb	.LBB33_110
# BB#105:                               # %if.then.497
	testl	%eax, %eax
	jne	.LBB33_110
# BB#106:                               # %if.then.507
	movzbl	2(%rdi), %eax
	addl	$-57, %eax
	cmpq	$3, %rcx
	jb	.LBB33_110
# BB#107:                               # %if.then.507
	testl	%eax, %eax
	jne	.LBB33_110
# BB#108:                               # %if.then.517
	movzbl	3(%rdi), %eax
	addl	$-54, %eax
	jmp	.LBB33_110
.LBB33_109:                             # %cond.false.526
	movl	$.L.str.31, %esi
	movq	%rdx, %rbx
	callq	strcmp
	movq	%rbx, %rdx
.LBB33_110:                             # %cond.end.529
	testl	%eax, %eax
	je	.LBB33_111
# BB#114:                               # %if.else.570
	movss	9052(%rdx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	9056(%rdx), %xmm1       # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	movl	$1, %eax
	movl	$1, %r12d
	cmoval	428(%rsp), %r12d        # 4-byte Folded Reload
	ucomiss	%xmm1, %xmm0
	cmoval	%eax, %r12d
	jmp	.LBB33_115
.LBB33_111:                             # %if.then.533
	movss	9052(%rdx), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	9056(%rdx), %xmm1       # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	ja	.LBB33_112
# BB#113:                               # %if.else.550
	movl	$1, %r12d
	ucomiss	%xmm0, %xmm1
	jbe	.LBB33_115
.LBB33_112:                             # %if.then.538
	cvttss2si	%xmm1, %eax
	movl	%eax, 428(%rsp)         # 4-byte Spill
	cvttss2si	%xmm0, %eax
	movl	%eax, 9040(%rdx)
	addss	.LCPI33_16(%rip), %xmm0
	mulss	.LCPI33_17(%rip), %xmm0
	mulss	%xmm1, %xmm0
	cvttss2si	%xmm0, %r12d
.LBB33_115:                             # %if.end.586
	movl	%r12d, %ebp
	movq	24(%rdx), %rdi
	movq	%rdx, %r13
	movl	$.L.str.261, %edx
	movl	%r12d, %esi
	callq	*64(%rdi)
	movq	%rax, %r10
	testl	%r12d, %r12d
	jle	.LBB33_116
# BB#117:                               # %for.body.595.preheader
	leal	-1(%rbp), %eax
	incq	%rax
	xorl	%edx, %edx
	movq	%rax, %rcx
	movabsq	$8589934560, %rbx       # imm = 0x1FFFFFFE0
	andq	%rbx, %rcx
	je	.LBB33_125
# BB#118:                               # %vector.body617.preheader
	leal	-1(%rbp), %edx
	incq	%rdx
	andq	%rbx, %rdx
	addq	$-32, %rdx
	movl	%edx, %edi
	shrl	$5, %edi
	incl	%edi
	xorl	%esi, %esi
	testb	$3, %dil
	je	.LBB33_121
# BB#119:                               # %vector.body617.prol.preheader
	movl	%ebp, %edi
	andl	$96, %edi
	addl	$-32, %edi
	shrl	$5, %edi
	incl	%edi
	andl	$3, %edi
	negq	%rdi
	xorl	%esi, %esi
	pcmpeqd	%xmm0, %xmm0
	.align	16, 0x90
.LBB33_120:                             # %vector.body617.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, (%r10,%rsi)
	movdqu	%xmm0, 16(%r10,%rsi)
	addq	$32, %rsi
	incq	%rdi
	jne	.LBB33_120
.LBB33_121:                             # %vector.body617.preheader.split
	cmpq	$96, %rdx
	jb	.LBB33_124
# BB#122:                               # %vector.body617.preheader.split.split
	leal	-1(%rbp), %edx
	incq	%rdx
	andq	%rbx, %rdx
	subq	%rsi, %rdx
	leaq	112(%rsi,%r10), %rsi
	pcmpeqd	%xmm0, %xmm0
	.align	16, 0x90
.LBB33_123:                             # %vector.body617
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, -112(%rsi)
	movdqu	%xmm0, -96(%rsi)
	movdqu	%xmm0, -80(%rsi)
	movdqu	%xmm0, -64(%rsi)
	movdqu	%xmm0, -48(%rsi)
	movdqu	%xmm0, -32(%rsi)
	movdqu	%xmm0, -16(%rsi)
	movdqu	%xmm0, (%rsi)
	subq	$-128, %rsi
	addq	$-128, %rdx
	jne	.LBB33_123
.LBB33_124:
	movq	%rcx, %rdx
.LBB33_125:                             # %middle.block618
	cmpq	%rdx, %rax
	movq	%r14, %r11
	movq	%r13, %r9
	movq	%rbp, %rcx
	je	.LBB33_139
	.align	16, 0x90
.LBB33_126:                             # %for.body.595
                                        # =>This Inner Loop Header: Depth=1
	movb	$-1, (%r10,%rdx)
	incq	%rdx
	cmpl	%edx, %ecx
	jne	.LBB33_126
	jmp	.LBB33_139
.LBB33_116:                             # %if.end.586.if.end.636_crit_edge
	movq	%r14, %r11
	movq	%r13, %r9
	movq	%rbp, %rcx
.LBB33_139:                             # %if.end.636
	movl	592(%r11), %esi
	movq	%r11, %rbx
	movl	9040(%r9), %r8d
	movq	%r9, %rdi
	movq	%r10, %rdx
	movq	%r10, %r14
	movq	%r9, %rbp
	movl	428(%rsp), %r9d         # 4-byte Reload
	callq	escv_write_data
	movq	%rbp, %rdi
	cmpq	$0, 9000(%rdi)
	je	.LBB33_141
# BB#140:                               # %if.then.641
	movl	592(%rbx), %esi
	movq	%rdi, %rbp
	callq	escv_write_end
	movq	%rbp, %rdi
.LBB33_141:                             # %cleanup
	movq	24(%rdi), %rdi
	movl	$.L.str.261, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
	movl	428(%rsp), %eax         # 4-byte Reload
	addl	600(%rbx), %eax
	movl	%eax, 600(%rbx)
	cmpl	588(%rbx), %eax
	setge	%al
	movzbl	%al, %eax
	addq	$440, %rsp              # imm = 0x1B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end33:
	.size	escv_image_plane_data, .Lfunc_end33-escv_image_plane_data
	.cfi_endproc

	.align	16, 0x90
	.type	escv_image_end_image,@function
escv_image_end_image:                   # @escv_image_end_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp265:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp266:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp267:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp268:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp269:
	.cfi_def_cfa_offset 48
.Ltmp270:
	.cfi_offset %rbx, -40
.Ltmp271:
	.cfi_offset %r14, -32
.Ltmp272:
	.cfi_offset %r15, -24
.Ltmp273:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	16(%rbx), %rbp
	cmpq	$0, 9000(%rbp)
	jne	.LBB34_2
# BB#1:                                 # %if.then
	movl	592(%rbx), %esi
	movq	%rbp, %rdi
	callq	escv_write_end
.LBB34_2:                               # %if.end
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8992(%rbp)
	cmpl	$0, 8924(%rbp)
	jne	.LBB34_5
# BB#3:                                 # %if.then.3
	cmpl	$0, 8848(%rbp)
	je	.LBB34_5
# BB#4:                                 # %if.else
	movq	%rbp, %rdi
	callq	gdev_vector_stream
	movq	%rax, %r15
	movl	$.L.str.136, %edi
	callq	strlen
	leaq	(%rsp), %rcx
	movl	$.L.str.136, %esi
	movq	%r15, %rdi
	movl	%eax, %edx
	callq	sputs
	leaq	4(%rsp), %rcx
	movl	$.L.str.137, %esi
	movl	$8, %edx
	movq	%r15, %rdi
	callq	sputs
.LBB34_5:                               # %if.end.8
	movl	$-1, 8924(%rbp)
	movq	8840(%rbp), %rcx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	callq	gdev_vector_end_image
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end34:
	.size	escv_image_end_image, .Lfunc_end34-escv_image_end_image
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gx_device_escv"
	.size	.L.str, 15

	.type	st_device_escv,@object  # @st_device_escv
	.section	.rodata,"a",@progbits
	.globl	st_device_escv
	.align	8
st_device_escv:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	device_escv_enum_ptrs
	.quad	device_escv_reloc_ptrs
	.quad	gx_device_finalize
	.quad	0
	.size	st_device_escv, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"epl2050"
	.size	.L.str.1, 8

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"DeviceGray"
	.size	.L.str.2, 11

	.type	gs_epl2050_device,@object # @gs_epl2050_device
	.data
	.globl	gs_epl2050_device
	.align	8
gs_epl2050_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.1
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_epl2050_device, 18648

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"epl2050p"
	.size	.L.str.3, 9

	.type	gs_epl2050p_device,@object # @gs_epl2050p_device
	.data
	.globl	gs_epl2050p_device
	.align	8
gs_epl2050p_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.3
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_epl2050p_device, 18648

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"epl2120"
	.size	.L.str.4, 8

	.type	gs_epl2120_device,@object # @gs_epl2120_device
	.data
	.globl	gs_epl2120_device
	.align	8
gs_epl2120_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.4
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_epl2120_device, 18648

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"epl2500"
	.size	.L.str.5, 8

	.type	gs_epl2500_device,@object # @gs_epl2500_device
	.data
	.globl	gs_epl2500_device
	.align	8
gs_epl2500_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.5
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_epl2500_device, 18648

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"epl2750"
	.size	.L.str.6, 8

	.type	gs_epl2750_device,@object # @gs_epl2750_device
	.data
	.globl	gs_epl2750_device
	.align	8
gs_epl2750_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.6
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_epl2750_device, 18648

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"epl5800"
	.size	.L.str.7, 8

	.type	gs_epl5800_device,@object # @gs_epl5800_device
	.data
	.globl	gs_epl5800_device
	.align	8
gs_epl5800_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.7
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_epl5800_device, 18648

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"epl5900"
	.size	.L.str.8, 8

	.type	gs_epl5900_device,@object # @gs_epl5900_device
	.data
	.globl	gs_epl5900_device
	.align	8
gs_epl5900_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.8
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_epl5900_device, 18648

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"epl6100"
	.size	.L.str.9, 8

	.type	gs_epl6100_device,@object # @gs_epl6100_device
	.data
	.globl	gs_epl6100_device
	.align	8
gs_epl6100_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.9
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_epl6100_device, 18648

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"epl6200"
	.size	.L.str.10, 8

	.type	gs_epl6200_device,@object # @gs_epl6200_device
	.data
	.globl	gs_epl6200_device
	.align	8
gs_epl6200_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.10
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_epl6200_device, 18648

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"lp1800"
	.size	.L.str.11, 7

	.type	gs_lp1800_device,@object # @gs_lp1800_device
	.data
	.globl	gs_lp1800_device
	.align	8
gs_lp1800_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.11
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_lp1800_device, 18648

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"lp1900"
	.size	.L.str.12, 7

	.type	gs_lp1900_device,@object # @gs_lp1900_device
	.data
	.globl	gs_lp1900_device
	.align	8
gs_lp1900_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.12
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_lp1900_device, 18648

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"lp2200"
	.size	.L.str.13, 7

	.type	gs_lp2200_device,@object # @gs_lp2200_device
	.data
	.globl	gs_lp2200_device
	.align	8
gs_lp2200_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.13
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_lp2200_device, 18648

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"lp2400"
	.size	.L.str.14, 7

	.type	gs_lp2400_device,@object # @gs_lp2400_device
	.data
	.globl	gs_lp2400_device
	.align	8
gs_lp2400_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.14
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_lp2400_device, 18648

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"lp2500"
	.size	.L.str.15, 7

	.type	gs_lp2500_device,@object # @gs_lp2500_device
	.data
	.globl	gs_lp2500_device
	.align	8
gs_lp2500_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.15
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_lp2500_device, 18648

	.type	.L.str.16,@object       # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"lp7500"
	.size	.L.str.16, 7

	.type	gs_lp7500_device,@object # @gs_lp7500_device
	.data
	.globl	gs_lp7500_device
	.align	8
gs_lp7500_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.16
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_lp7500_device, 18648

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"lp7700"
	.size	.L.str.17, 7

	.type	gs_lp7700_device,@object # @gs_lp7700_device
	.data
	.globl	gs_lp7700_device
	.align	8
gs_lp7700_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.17
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_lp7700_device, 18648

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"lp7900"
	.size	.L.str.18, 7

	.type	gs_lp7900_device,@object # @gs_lp7900_device
	.data
	.globl	gs_lp7900_device
	.align	8
gs_lp7900_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.18
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_lp7900_device, 18648

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"lp8100"
	.size	.L.str.19, 7

	.type	gs_lp8100_device,@object # @gs_lp8100_device
	.data
	.globl	gs_lp8100_device
	.align	8
gs_lp8100_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.19
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_lp8100_device, 18648

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"lp8300f"
	.size	.L.str.20, 8

	.type	gs_lp8300f_device,@object # @gs_lp8300f_device
	.data
	.globl	gs_lp8300f_device
	.align	8
gs_lp8300f_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.20
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_lp8300f_device, 18648

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"lp8400f"
	.size	.L.str.21, 8

	.type	gs_lp8400f_device,@object # @gs_lp8400f_device
	.data
	.globl	gs_lp8400f_device
	.align	8
gs_lp8400f_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.21
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_lp8400f_device, 18648

	.type	.L.str.22,@object       # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"lp8600"
	.size	.L.str.22, 7

	.type	gs_lp8600_device,@object # @gs_lp8600_device
	.data
	.globl	gs_lp8600_device
	.align	8
gs_lp8600_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.22
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_lp8600_device, 18648

	.type	.L.str.23,@object       # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"lp8600f"
	.size	.L.str.23, 8

	.type	gs_lp8600f_device,@object # @gs_lp8600f_device
	.data
	.globl	gs_lp8600f_device
	.align	8
gs_lp8600f_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.23
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_lp8600f_device, 18648

	.type	.L.str.24,@object       # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"lp8700"
	.size	.L.str.24, 7

	.type	gs_lp8700_device,@object # @gs_lp8700_device
	.data
	.globl	gs_lp8700_device
	.align	8
gs_lp8700_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.24
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_lp8700_device, 18648

	.type	.L.str.25,@object       # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"lp8900"
	.size	.L.str.25, 7

	.type	gs_lp8900_device,@object # @gs_lp8900_device
	.data
	.globl	gs_lp8900_device
	.align	8
gs_lp8900_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.25
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_lp8900_device, 18648

	.type	.L.str.26,@object       # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"lp9000b"
	.size	.L.str.26, 8

	.type	gs_lp9000b_device,@object # @gs_lp9000b_device
	.data
	.globl	gs_lp9000b_device
	.align	8
gs_lp9000b_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.26
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_lp9000b_device, 18648

	.type	.L.str.27,@object       # @.str.27
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.27:
	.asciz	"lp9100"
	.size	.L.str.27, 7

	.type	gs_lp9100_device,@object # @gs_lp9100_device
	.data
	.globl	gs_lp9100_device
	.align	8
gs_lp9100_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.27
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_lp9100_device, 18648

	.type	.L.str.28,@object       # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"lp9200b"
	.size	.L.str.28, 8

	.type	gs_lp9200b_device,@object # @gs_lp9200b_device
	.data
	.globl	gs_lp9200b_device
	.align	8
gs_lp9200b_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.28
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_lp9200b_device, 18648

	.type	.L.str.29,@object       # @.str.29
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.29:
	.asciz	"lp9300"
	.size	.L.str.29, 7

	.type	gs_lp9300_device,@object # @gs_lp9300_device
	.data
	.globl	gs_lp9300_device
	.align	8
gs_lp9300_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.29
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_lp9300_device, 18648

	.type	.L.str.30,@object       # @.str.30
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.30:
	.asciz	"lp9400"
	.size	.L.str.30, 7

	.type	gs_lp9400_device,@object # @gs_lp9400_device
	.data
	.globl	gs_lp9400_device
	.align	8
gs_lp9400_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.30
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_lp9400_device, 18648

	.type	.L.str.31,@object       # @.str.31
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.31:
	.asciz	"lp9600"
	.size	.L.str.31, 7

	.type	gs_lp9600_device,@object # @gs_lp9600_device
	.data
	.globl	gs_lp9600_device
	.align	8
gs_lp9600_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.31
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_lp9600_device, 18648

	.type	.L.str.32,@object       # @.str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.32:
	.asciz	"lp9600s"
	.size	.L.str.32, 8

	.type	gs_lp9600s_device,@object # @gs_lp9600s_device
	.data
	.globl	gs_lp9600s_device
	.align	8
gs_lp9600s_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.32
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_lp9600s_device, 18648

	.type	.L.str.33,@object       # @.str.33
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.33:
	.asciz	"lps4500"
	.size	.L.str.33, 8

	.type	gs_lps4500_device,@object # @gs_lps4500_device
	.data
	.globl	gs_lps4500_device
	.align	8
gs_lps4500_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.33
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_lps4500_device, 18648

	.type	.L.str.34,@object       # @.str.34
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.34:
	.asciz	"eplmono"
	.size	.L.str.34, 8

	.type	gs_eplmono_device,@object # @gs_eplmono_device
	.data
	.globl	gs_eplmono_device
	.align	8
gs_eplmono_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.34
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.2
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	3270260849              # float -1.181102e+02
	.long	3270260849              # float -1.181102e+02
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_eplmono_device, 18648

	.type	.L.str.35,@object       # @.str.35
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.35:
	.asciz	"alc1900"
	.size	.L.str.35, 8

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"DeviceRGB"
	.size	.L.str.36, 10

	.type	gs_alc1900_device,@object # @gs_alc1900_device
	.data
	.globl	gs_alc1900_device
	.align	8
gs_alc1900_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.35
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.36
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	981668463               # float 1.000000e-03
	.long	981668463               # float 1.000000e-03
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_alc1900_device, 18648

	.type	.L.str.37,@object       # @.str.37
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.37:
	.asciz	"alc2000"
	.size	.L.str.37, 8

	.type	gs_alc2000_device,@object # @gs_alc2000_device
	.data
	.globl	gs_alc2000_device
	.align	8
gs_alc2000_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.37
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.36
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	981668463               # float 1.000000e-03
	.long	981668463               # float 1.000000e-03
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_alc2000_device, 18648

	.type	.L.str.38,@object       # @.str.38
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.38:
	.asciz	"alc4000"
	.size	.L.str.38, 8

	.type	gs_alc4000_device,@object # @gs_alc4000_device
	.data
	.globl	gs_alc4000_device
	.align	8
gs_alc4000_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.38
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.36
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	981668463               # float 1.000000e-03
	.long	981668463               # float 1.000000e-03
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_alc4000_device, 18648

	.type	.L.str.39,@object       # @.str.39
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.39:
	.asciz	"alc4100"
	.size	.L.str.39, 8

	.type	gs_alc4100_device,@object # @gs_alc4100_device
	.data
	.globl	gs_alc4100_device
	.align	8
gs_alc4100_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.39
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.36
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	981668463               # float 1.000000e-03
	.long	981668463               # float 1.000000e-03
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_alc4100_device, 18648

	.type	.L.str.40,@object       # @.str.40
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.40:
	.asciz	"alc8500"
	.size	.L.str.40, 8

	.type	gs_alc8500_device,@object # @gs_alc8500_device
	.data
	.globl	gs_alc8500_device
	.align	8
gs_alc8500_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.40
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.36
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	981668463               # float 1.000000e-03
	.long	981668463               # float 1.000000e-03
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_alc8500_device, 18648

	.type	.L.str.41,@object       # @.str.41
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.41:
	.asciz	"alc8600"
	.size	.L.str.41, 8

	.type	gs_alc8600_device,@object # @gs_alc8600_device
	.data
	.globl	gs_alc8600_device
	.align	8
gs_alc8600_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.41
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.36
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	981668463               # float 1.000000e-03
	.long	981668463               # float 1.000000e-03
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_alc8600_device, 18648

	.type	.L.str.42,@object       # @.str.42
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.42:
	.asciz	"alc9100"
	.size	.L.str.42, 8

	.type	gs_alc9100_device,@object # @gs_alc9100_device
	.data
	.globl	gs_alc9100_device
	.align	8
gs_alc9100_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.42
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.36
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	981668463               # float 1.000000e-03
	.long	981668463               # float 1.000000e-03
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_alc9100_device, 18648

	.type	.L.str.43,@object       # @.str.43
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.43:
	.asciz	"lp3000c"
	.size	.L.str.43, 8

	.type	gs_lp3000c_device,@object # @gs_lp3000c_device
	.data
	.globl	gs_lp3000c_device
	.align	8
gs_lp3000c_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.43
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.36
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	981668463               # float 1.000000e-03
	.long	981668463               # float 1.000000e-03
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_lp3000c_device, 18648

	.type	.L.str.44,@object       # @.str.44
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.44:
	.asciz	"lp8000c"
	.size	.L.str.44, 8

	.type	gs_lp8000c_device,@object # @gs_lp8000c_device
	.data
	.globl	gs_lp8000c_device
	.align	8
gs_lp8000c_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.44
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.36
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	981668463               # float 1.000000e-03
	.long	981668463               # float 1.000000e-03
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_lp8000c_device, 18648

	.type	.L.str.45,@object       # @.str.45
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.45:
	.asciz	"lp8200c"
	.size	.L.str.45, 8

	.type	gs_lp8200c_device,@object # @gs_lp8200c_device
	.data
	.globl	gs_lp8200c_device
	.align	8
gs_lp8200c_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.45
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.36
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	981668463               # float 1.000000e-03
	.long	981668463               # float 1.000000e-03
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_lp8200c_device, 18648

	.type	.L.str.46,@object       # @.str.46
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.46:
	.asciz	"lp8300c"
	.size	.L.str.46, 8

	.type	gs_lp8300c_device,@object # @gs_lp8300c_device
	.data
	.globl	gs_lp8300c_device
	.align	8
gs_lp8300c_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.46
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.36
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	981668463               # float 1.000000e-03
	.long	981668463               # float 1.000000e-03
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_lp8300c_device, 18648

	.type	.L.str.47,@object       # @.str.47
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.47:
	.asciz	"lp8500c"
	.size	.L.str.47, 8

	.type	gs_lp8500c_device,@object # @gs_lp8500c_device
	.data
	.globl	gs_lp8500c_device
	.align	8
gs_lp8500c_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.47
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.36
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	981668463               # float 1.000000e-03
	.long	981668463               # float 1.000000e-03
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_lp8500c_device, 18648

	.type	.L.str.48,@object       # @.str.48
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.48:
	.asciz	"lp8800c"
	.size	.L.str.48, 8

	.type	gs_lp8800c_device,@object # @gs_lp8800c_device
	.data
	.globl	gs_lp8800c_device
	.align	8
gs_lp8800c_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.48
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.36
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	981668463               # float 1.000000e-03
	.long	981668463               # float 1.000000e-03
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_lp8800c_device, 18648

	.type	.L.str.49,@object       # @.str.49
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.49:
	.asciz	"lp9000c"
	.size	.L.str.49, 8

	.type	gs_lp9000c_device,@object # @gs_lp9000c_device
	.data
	.globl	gs_lp9000c_device
	.align	8
gs_lp9000c_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.49
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.36
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	981668463               # float 1.000000e-03
	.long	981668463               # float 1.000000e-03
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_lp9000c_device, 18648

	.type	.L.str.50,@object       # @.str.50
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.50:
	.asciz	"lp9200c"
	.size	.L.str.50, 8

	.type	gs_lp9200c_device,@object # @gs_lp9200c_device
	.data
	.globl	gs_lp9200c_device
	.align	8
gs_lp9200c_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.50
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.36
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	981668463               # float 1.000000e-03
	.long	981668463               # float 1.000000e-03
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_lp9200c_device, 18648

	.type	.L.str.51,@object       # @.str.51
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.51:
	.asciz	"lp9500c"
	.size	.L.str.51, 8

	.type	gs_lp9500c_device,@object # @gs_lp9500c_device
	.data
	.globl	gs_lp9500c_device
	.align	8
gs_lp9500c_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.51
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.36
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	981668463               # float 1.000000e-03
	.long	981668463               # float 1.000000e-03
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_lp9500c_device, 18648

	.type	.L.str.52,@object       # @.str.52
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.52:
	.asciz	"lp9800c"
	.size	.L.str.52, 8

	.type	gs_lp9800c_device,@object # @gs_lp9800c_device
	.data
	.globl	gs_lp9800c_device
	.align	8
gs_lp9800c_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.52
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.36
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	981668463               # float 1.000000e-03
	.long	981668463               # float 1.000000e-03
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_lp9800c_device, 18648

	.type	.L.str.53,@object       # @.str.53
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.53:
	.asciz	"lps6500"
	.size	.L.str.53, 8

	.type	gs_lps6500_device,@object # @gs_lps6500_device
	.data
	.globl	gs_lps6500_device
	.align	8
gs_lps6500_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.53
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.36
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	981668463               # float 1.000000e-03
	.long	981668463               # float 1.000000e-03
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_lps6500_device, 18648

	.type	.L.str.54,@object       # @.str.54
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.54:
	.asciz	"eplcolor"
	.size	.L.str.54, 9

	.type	gs_eplcolor_device,@object # @gs_eplcolor_device
	.data
	.globl	gs_eplcolor_device
	.align	8
gs_eplcolor_device:
	.long	18648                   # 0x48d8
	.zero	4
	.quad	0
	.quad	.L.str.54
	.quad	0
	.quad	st_device_escv
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.36
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	4840                    # 0x12e8
	.long	6896                    # 0x1af0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1141977907              # float 5.808000e+02
	.long	1146020168              # float 8.275200e+02
	.zero	16
	.long	0                       # 0x0
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	1142292480              # float 6.000000e+02
	.long	981668463               # float 1.000000e-03
	.long	981668463               # float 1.000000e-03
	.long	1096992139              # float 1.417323e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	1096992139              # float 1.417323e+01
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.quad	escv_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	escv_output_page
	.quad	escv_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	gdev_vector_fill_rectangle
	.quad	0
	.quad	escv_copy_mono
	.quad	escv_copy_color
	.quad	0
	.quad	0
	.quad	escv_get_params
	.quad	escv_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_vector_fill_path
	.quad	gdev_vector_stroke_path
	.quad	escv_fill_mask
	.quad	gdev_vector_fill_trapezoid
	.quad	gdev_vector_fill_parallelogram
	.quad	gdev_vector_fill_triangle
	.quad	0
	.quad	escv_begin_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	4096
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	1616
	.quad	0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	4
	.zero	632
	.zero	632
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	4620880867666602667     # double 8.3333333333333339
	.quad	4620880867666602667     # double 8.3333333333333339
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.quad	4613937818241073152     # double 3
	.quad	0                       # 0x0
	.quad	3                       # 0x3
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # float 0
	.long	0                       # float 0
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.zero	8192
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	256
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	600                     # 0x258
	.size	gs_eplcolor_device, 18648

	.type	escv_vector_procs,@object # @escv_vector_procs
	.section	.rodata,"a",@progbits
	.align	8
escv_vector_procs:
	.quad	escv_beginpage
	.quad	escv_setlinewidth
	.quad	escv_setlinecap
	.quad	escv_setlinejoin
	.quad	escv_setmiterlimit
	.quad	escv_setdash
	.quad	escv_setflat
	.quad	escv_setlogop
	.quad	escv_can_handle_hl_color
	.quad	escv_setfillcolor
	.quad	escv_setstrokecolor
	.quad	escv_vector_dopath
	.quad	escv_vector_dorect
	.quad	escv_beginpath
	.quad	escv_moveto
	.quad	escv_lineto
	.quad	escv_curveto
	.quad	escv_closepath
	.quad	escv_endpath
	.size	escv_vector_procs, 152

	.type	escv_beginpage.model_resource,@object # @escv_beginpage.model_resource
	.align	16
escv_beginpage.model_resource:
	.quad	.L.str.35
	.long	600                     # 0x258
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.37
	.long	600                     # 0x258
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.38
	.long	1200                    # 0x4b0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.39
	.long	600                     # 0x258
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.40
	.long	600                     # 0x258
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.41
	.long	600                     # 0x258
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.42
	.long	600                     # 0x258
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.1
	.long	1200                    # 0x4b0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.3
	.long	1200                    # 0x4b0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.4
	.long	1200                    # 0x4b0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.5
	.long	600                     # 0x258
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.6
	.long	600                     # 0x258
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.7
	.long	1200                    # 0x4b0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.8
	.long	1200                    # 0x4b0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.9
	.long	1200                    # 0x4b0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.10
	.long	1200                    # 0x4b0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.11
	.long	600                     # 0x258
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.12
	.long	1200                    # 0x4b0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.13
	.long	1200                    # 0x4b0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.14
	.long	1200                    # 0x4b0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.15
	.long	1200                    # 0x4b0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.43
	.long	600                     # 0x258
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.16
	.long	600                     # 0x258
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.17
	.long	600                     # 0x258
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.18
	.long	600                     # 0x258
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.44
	.long	600                     # 0x258
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.19
	.long	600                     # 0x258
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.45
	.long	600                     # 0x258
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.46
	.long	600                     # 0x258
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.20
	.long	600                     # 0x258
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.21
	.long	600                     # 0x258
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.47
	.long	600                     # 0x258
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.22
	.long	600                     # 0x258
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.23
	.long	600                     # 0x258
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.24
	.long	1200                    # 0x4b0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.48
	.long	600                     # 0x258
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.25
	.long	600                     # 0x258
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.26
	.long	600                     # 0x258
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.49
	.long	600                     # 0x258
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.27
	.long	600                     # 0x258
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.28
	.long	600                     # 0x258
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.50
	.long	600                     # 0x258
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.29
	.long	600                     # 0x258
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.30
	.long	600                     # 0x258
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.51
	.long	600                     # 0x258
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.31
	.long	600                     # 0x258
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.32
	.long	600                     # 0x258
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.52
	.long	600                     # 0x258
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.33
	.long	600                     # 0x258
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.53
	.long	600                     # 0x258
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.55
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	escv_beginpage.model_resource, 1224

	.type	.L.str.55,@object       # @.str.55
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.55:
	.zero	1
	.size	.L.str.55, 1

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"0"
	.size	.L.str.56, 2

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"\033\001@EJL \n"
	.size	.L.str.57, 9

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"@EJL SJ ID=\""
	.size	.L.str.58, 13

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"\"\n"
	.size	.L.str.59, 3

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"@EJL JI ID=\""
	.size	.L.str.60, 13

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"\""
	.size	.L.str.61, 2

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	" DATE=\""
	.size	.L.str.62, 8

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"%Y/%m/%d %H:%M:%S"
	.size	.L.str.63, 18

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"\n"
	.size	.L.str.64, 2

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"@EJL JI"
	.size	.L.str.65, 8

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	" USER=\""
	.size	.L.str.66, 8

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	" MACHINE=\""
	.size	.L.str.67, 11

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	" DOCUMENT=\""
	.size	.L.str.68, 12

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"@EJL JI OS=\""
	.size	.L.str.69, 13

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"@EJL JI DRIVER=\""
	.size	.L.str.70, 17

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"@EJL JI PRINTER=\""
	.size	.L.str.71, 18

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"Ghostscript"
	.size	.L.str.72, 12

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"@EJL CO "
	.size	.L.str.73, 9

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"@EJL SE LA=ESC/PAGE\n"
	.size	.L.str.74, 21

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"@EJL SET"
	.size	.L.str.75, 9

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	" RS=1200"
	.size	.L.str.76, 9

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	" RS=FN"
	.size	.L.str.77, 7

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	" RS=QK"
	.size	.L.str.78, 7

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	" OU=FU"
	.size	.L.str.79, 7

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	" OU=FD"
	.size	.L.str.80, 7

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	" PU=1"
	.size	.L.str.81, 6

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	" PU=15"
	.size	.L.str.82, 7

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	" PU=%d"
	.size	.L.str.83, 7

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	" PU=AU"
	.size	.L.str.84, 7

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	" DX=ON"
	.size	.L.str.85, 7

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	" BD=SE"
	.size	.L.str.86, 7

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	" BD=LE"
	.size	.L.str.87, 7

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	" DX=OFF"
	.size	.L.str.88, 8

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	" QT=1 CO=%d"
	.size	.L.str.89, 12

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	" QT=%d CO=1"
	.size	.L.str.90, 12

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	" QT=1 CO=1"
	.size	.L.str.91, 11

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	" DL=%d"
	.size	.L.str.92, 7

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	" OR=LA"
	.size	.L.str.93, 7

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	" SN=ON"
	.size	.L.str.94, 7

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	" RI=OFF"
	.size	.L.str.95, 8

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	" RI=ON"
	.size	.L.str.96, 7

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	" PK=NM"
	.size	.L.str.97, 7

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	" PK=TH"
	.size	.L.str.98, 7

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	" PK=TR"
	.size	.L.str.99, 7

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	" PK=TN"
	.size	.L.str.100, 7

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	" PK=LH"
	.size	.L.str.101, 7

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	" PK=CT"
	.size	.L.str.102, 7

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	" PK=ET"
	.size	.L.str.103, 7

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	" PK=HQ"
	.size	.L.str.104, 7

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	" PK=UT"
	.size	.L.str.105, 7

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	" PK=UM"
	.size	.L.str.106, 7

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	" PS="
	.size	.L.str.107, 5

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"A4"
	.size	.L.str.108, 3

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	" ZO=OFF EC=ON SZ=OFF SL=YES TO=0.0MM LO=0.0MM\n"
	.size	.L.str.109, 47

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"@EJL EN LA=ESC/PAGE\n"
	.size	.L.str.110, 21

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"\035rhE"
	.size	.L.str.111, 5

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"\0351mmE\0351csE"
	.size	.L.str.112, 11

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"\0350;0.06muE"
	.size	.L.str.113, 11

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"\0351;45;156htmE"
	.size	.L.str.114, 14

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"\0359;1200;1200drE\0352;1200;1200drE\0351;1200;1200drE\0350;1200;1200drE"
	.size	.L.str.115, 61

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"\0351;1;raE"
	.size	.L.str.116, 9

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"\0350;0.12muE"
	.size	.L.str.117, 11

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"\0351;45;106htmE"
	.size	.L.str.118, 14

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"\0359;600;600drE\0352;600;600drE\0351;600;600drE\0350;600;600drE"
	.size	.L.str.119, 53

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"\0350;0.24muE"
	.size	.L.str.120, 11

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"\0351;45;71htmE"
	.size	.L.str.121, 13

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"\0359;300;300drE\0352;300;300drE\0351;300;300drE\0350;300;300drE"
	.size	.L.str.122, 53

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"\0351tsE\0351owE\0350alfP\0350affP\0350;0;0clfP\0350pmP\0351024ibI\0352cmE\0350bcI\0351;10mlG"
	.size	.L.str.123, 64

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"\0350sarG"
	.size	.L.str.124, 7

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	" ZO=OFF EC=ON SZ=OFF SL=YES TO=0 LO=0\n"
	.size	.L.str.125, 39

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"@EJL EN LA=ESC/PAGE-COLOR\n"
	.size	.L.str.126, 27

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"\0350pddO\0350;0mmE\0352csE\0350;1;3cmmE\0350;1raE\0350;2;4ccmE"
	.size	.L.str.127, 46

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"\0350pddO\0350;0cmmE\0351;2;3ccmE\0352;2;3ccmE\0353;2;4ccmE\0351;1raE\0352;1raE\0353;1raE"
	.size	.L.str.128, 66

	.type	.L.str.129,@object      # @.str.129
	.section	.rodata,"a",@progbits
.L.str.129:
	.asciz	"\0357;0;2;0cam{E\n\000\000\000\000\000\000"
	.size	.L.str.129, 21

	.type	.L.str.130,@object      # @.str.130
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.130:
	.asciz	"\0350;0cmmE"
	.size	.L.str.130, 9

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"\0353;1200;1200drE\0352;1200;1200drE\0351;1200;1200drE\0350;1200;1200drE"
	.size	.L.str.131, 61

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"\0353;600;600drE\0352;600;600drE\0351;600;600drE\0350;600;600drE"
	.size	.L.str.132, 53

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"\0353;300;300drE\0352;300;300drE\0351;300;300drE\0350;300;300drE"
	.size	.L.str.133, 53

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"\0350;0loE"
	.size	.L.str.134, 8

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"\0351tsE\0350alfP\0350affP\0350;0;0clfP\0350pmP\0351024ibI\0352cmE\0350bcI\0351;10mlG"
	.size	.L.str.135, 59

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"\0358;1;2;2;2plr{E"
	.size	.L.str.136, 16

	.type	.L.str.137,@object      # @.str.137
	.section	.rodata,"a",@progbits
.L.str.137:
	.asciz	"\377\377\377\377\000\000\000\000"
	.size	.L.str.137, 9

	.type	.L.str.138,@object      # @.str.138
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.138:
	.asciz	"\0352;204wfE"
	.size	.L.str.138, 10

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"epl"
	.size	.L.str.139, 4

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"EPSON EPL-"
	.size	.L.str.140, 11

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"al"
	.size	.L.str.141, 3

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"EPSON AL-"
	.size	.L.str.142, 10

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"lp"
	.size	.L.str.143, 3

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"EPSON LP-"
	.size	.L.str.144, 10

	.type	ePaperTable,@object     # @ePaperTable
	.section	.rodata,"a",@progbits
	.align	16
ePaperTable:
	.long	933                     # 0x3a5
	.long	1369                    # 0x559
	.long	72                      # 0x48
	.zero	4
	.quad	.L.str.145
	.long	842                     # 0x34a
	.long	1191                    # 0x4a7
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.146
	.long	792                     # 0x318
	.long	1224                    # 0x4c8
	.long	36                      # 0x24
	.zero	4
	.quad	.L.str.147
	.long	729                     # 0x2d9
	.long	1032                    # 0x408
	.long	24                      # 0x18
	.zero	4
	.quad	.L.str.148
	.long	709                     # 0x2c5
	.long	1001                    # 0x3e9
	.long	24                      # 0x18
	.zero	4
	.quad	.L.str.148
	.long	612                     # 0x264
	.long	1008                    # 0x3f0
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str.149
	.long	612                     # 0x264
	.long	936                     # 0x3a8
	.long	34                      # 0x22
	.zero	4
	.quad	.L.str.150
	.long	612                     # 0x264
	.long	792                     # 0x318
	.long	30                      # 0x1e
	.zero	4
	.quad	.L.str.151
	.long	595                     # 0x253
	.long	935                     # 0x3a7
	.long	37                      # 0x25
	.zero	4
	.quad	.L.str.152
	.long	595                     # 0x253
	.long	842                     # 0x34a
	.long	14                      # 0xe
	.zero	4
	.quad	.L.str.108
	.long	576                     # 0x240
	.long	756                     # 0x2f4
	.long	35                      # 0x23
	.zero	4
	.quad	.L.str.153
	.long	522                     # 0x20a
	.long	756                     # 0x2f4
	.long	33                      # 0x21
	.zero	4
	.quad	.L.str.154
	.long	516                     # 0x204
	.long	729                     # 0x2d9
	.long	25                      # 0x19
	.zero	4
	.quad	.L.str.155
	.long	499                     # 0x1f3
	.long	709                     # 0x2c5
	.long	99                      # 0x63
	.zero	4
	.quad	.L.str.156
	.long	459                     # 0x1cb
	.long	649                     # 0x289
	.long	91                      # 0x5b
	.zero	4
	.quad	.L.str.157
	.long	420                     # 0x1a4
	.long	595                     # 0x253
	.long	15                      # 0xf
	.zero	4
	.quad	.L.str.158
	.long	396                     # 0x18c
	.long	612                     # 0x264
	.long	31                      # 0x1f
	.zero	4
	.quad	.L.str.159
	.long	312                     # 0x138
	.long	624                     # 0x270
	.long	90                      # 0x5a
	.zero	4
	.quad	.L.str.160
	.long	298                     # 0x12a
	.long	666                     # 0x29a
	.long	64                      # 0x40
	.zero	4
	.quad	.L.str.161
	.long	297                     # 0x129
	.long	684                     # 0x2ac
	.long	81                      # 0x51
	.zero	4
	.quad	.L.str.162
	.long	283                     # 0x11b
	.long	420                     # 0x1a4
	.long	38                      # 0x26
	.zero	4
	.quad	.L.str.163
	.long	279                     # 0x117
	.long	540                     # 0x21c
	.long	80                      # 0x50
	.zero	4
	.quad	.L.str.164
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	.L.str.55
	.size	ePaperTable, 552

	.type	.L.str.145,@object      # @.str.145
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.145:
	.asciz	"A3PLUS"
	.size	.L.str.145, 7

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"A3"
	.size	.L.str.146, 3

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"B"
	.size	.L.str.147, 2

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"B4"
	.size	.L.str.148, 3

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"LGL"
	.size	.L.str.149, 4

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"GLG"
	.size	.L.str.150, 4

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"LT"
	.size	.L.str.151, 3

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"F4"
	.size	.L.str.152, 3

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"GLT"
	.size	.L.str.153, 4

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"EXE"
	.size	.L.str.154, 4

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"B5"
	.size	.L.str.155, 3

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"IB5"
	.size	.L.str.156, 4

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"C5"
	.size	.L.str.157, 3

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"A5"
	.size	.L.str.158, 3

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"HLT"
	.size	.L.str.159, 4

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"DL"
	.size	.L.str.160, 3

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"YOU4"
	.size	.L.str.161, 5

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"C10"
	.size	.L.str.162, 4

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"POSTCARD"
	.size	.L.str.163, 9

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"MON"
	.size	.L.str.164, 4

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"\035%d;%d;%dlwG"
	.size	.L.str.165, 13

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"\0351;%dmlG"
	.size	.L.str.166, 9

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"\0350;0lpG"
	.size	.L.str.167, 8

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"\0351;%d;%ddlG"
	.size	.L.str.168, 12

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"\0351"
	.size	.L.str.169, 3

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	";%d"
	.size	.L.str.170, 4

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"dlG"
	.size	.L.str.171, 4

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"\0351;1lpG"
	.size	.L.str.172, 8

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"\0350;0;100spE\0351;0;%ldccE"
	.size	.L.str.173, 23

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"\0351;2;3;%d;%d;%dfpE"
	.size	.L.str.174, 19

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"\0353;2;1;0;0cpE\0351;2;1;0;0cpE\0355;2;1;0;0cpE"
	.size	.L.str.175, 40

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"\0350;0;100spE\0351;1;%ldccE"
	.size	.L.str.176, 23

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"\0351;2;3;%d;%d;%dfpE\0352;2;1;0;0cpE"
	.size	.L.str.177, 32

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"\0350;%d;%dmvpG"
	.size	.L.str.178, 13

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"\0350;%d"
	.size	.L.str.179, 6

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	";%d;%d"
	.size	.L.str.180, 7

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"lnpG"
	.size	.L.str.181, 5

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	";%d;%d;%d;%d;%d;%d"
	.size	.L.str.182, 19

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"bzpG"
	.size	.L.str.183, 5

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"\035clpG"
	.size	.L.str.184, 6

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"\0350;%d;%d;%d;%d;0;0rrpG"
	.size	.L.str.185, 23

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"\0351bgpG"
	.size	.L.str.186, 7

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"\0350bgpG"
	.size	.L.str.187, 7

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"\0350;1;%d;%dlnpG"
	.size	.L.str.188, 15

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"\0350;3;%d;%d;%d;%d;%d;%dbzpG"
	.size	.L.str.189, 27

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"\035enpG"
	.size	.L.str.190, 6

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"\0351;2capG"
	.size	.L.str.191, 9

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"\0350;2drpG"
	.size	.L.str.192, 9

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"\0350;1drpG"
	.size	.L.str.193, 9

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"\0350;0drpG"
	.size	.L.str.194, 9

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"\0353;0;0lwG\0351;10mlG\f"
	.size	.L.str.195, 19

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"\035rhE\033\001@EJL \n@EJL EJ \n\033\001@EJL \n"
	.size	.L.str.196, 30

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"EPLModelJP"
	.size	.L.str.197, 11

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"EPLCapFaceUp"
	.size	.L.str.198, 13

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"EPLCapDuplexUnit"
	.size	.L.str.199, 17

	.type	.L.str.200,@object      # @.str.200
.L.str.200:
	.asciz	"EPLCapMaxResolution"
	.size	.L.str.200, 20

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"ManualFeed"
	.size	.L.str.201, 11

	.type	.L.str.202,@object      # @.str.202
.L.str.202:
	.asciz	"Casset"
	.size	.L.str.202, 7

	.type	.L.str.203,@object      # @.str.203
.L.str.203:
	.asciz	"RITOff"
	.size	.L.str.203, 7

	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	"Collate"
	.size	.L.str.204, 8

	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	"TonerDensity"
	.size	.L.str.205, 13

	.type	.L.str.206,@object      # @.str.206
.L.str.206:
	.asciz	"Landscape"
	.size	.L.str.206, 10

	.type	.L.str.207,@object      # @.str.207
.L.str.207:
	.asciz	"TonerSaving"
	.size	.L.str.207, 12

	.type	.L.str.208,@object      # @.str.208
.L.str.208:
	.asciz	"Duplex"
	.size	.L.str.208, 7

	.type	.L.str.209,@object      # @.str.209
.L.str.209:
	.asciz	"Tumble"
	.size	.L.str.209, 7

	.type	.L.str.210,@object      # @.str.210
.L.str.210:
	.asciz	"FaceUp"
	.size	.L.str.210, 7

	.type	.L.str.211,@object      # @.str.211
.L.str.211:
	.asciz	"MediaType"
	.size	.L.str.211, 10

	.type	.L.str.212,@object      # @.str.212
.L.str.212:
	.asciz	"JobID"
	.size	.L.str.212, 6

	.type	.L.str.213,@object      # @.str.213
.L.str.213:
	.asciz	"UserName"
	.size	.L.str.213, 9

	.type	.L.str.214,@object      # @.str.214
.L.str.214:
	.asciz	"HostName"
	.size	.L.str.214, 9

	.type	.L.str.215,@object      # @.str.215
.L.str.215:
	.asciz	"Document"
	.size	.L.str.215, 9

	.type	.L.str.216,@object      # @.str.216
.L.str.216:
	.asciz	"eplComment"
	.size	.L.str.216, 11

	.type	.L.str.217,@object      # @.str.217
.L.str.217:
	.asciz	"NM"
	.size	.L.str.217, 3

	.type	.L.str.218,@object      # @.str.218
.L.str.218:
	.asciz	"THICK"
	.size	.L.str.218, 6

	.type	.L.str.219,@object      # @.str.219
.L.str.219:
	.asciz	"TH"
	.size	.L.str.219, 3

	.type	.L.str.220,@object      # @.str.220
.L.str.220:
	.asciz	"TRANS"
	.size	.L.str.220, 6

	.type	.L.str.221,@object      # @.str.221
.L.str.221:
	.asciz	"TR"
	.size	.L.str.221, 3

	.type	.L.str.222,@object      # @.str.222
.L.str.222:
	.asciz	"TN"
	.size	.L.str.222, 3

	.type	.L.str.223,@object      # @.str.223
.L.str.223:
	.asciz	"LH"
	.size	.L.str.223, 3

	.type	.L.str.224,@object      # @.str.224
.L.str.224:
	.asciz	"CT"
	.size	.L.str.224, 3

	.type	.L.str.225,@object      # @.str.225
.L.str.225:
	.asciz	"ET"
	.size	.L.str.225, 3

	.type	.L.str.226,@object      # @.str.226
.L.str.226:
	.asciz	"HQ"
	.size	.L.str.226, 3

	.type	.L.str.227,@object      # @.str.227
.L.str.227:
	.asciz	"UT"
	.size	.L.str.227, 3

	.type	.L.str.228,@object      # @.str.228
.L.str.228:
	.asciz	"UM"
	.size	.L.str.228, 3

	.type	.L.str.229,@object      # @.str.229
.L.str.229:
	.asciz	"BitsPerPixel"
	.size	.L.str.229, 13

	.type	.L.str.230,@object      # @.str.230
.L.str.230:
	.asciz	"\0351;1;%ldccE"
	.size	.L.str.230, 12

	.type	.L.str.231,@object      # @.str.231
.L.str.231:
	.asciz	"\0352;184wfE\0353;184wfE\0355;184wfE"
	.size	.L.str.231, 28

	.type	.L.str.232,@object      # @.str.232
.L.str.232:
	.asciz	"\0353;184wfE\0355;184wfE"
	.size	.L.str.232, 19

	.type	.L.str.233,@object      # @.str.233
.L.str.233:
	.asciz	"\0353;204wfE\0355;204wfE"
	.size	.L.str.233, 19

	.type	.L.str.234,@object      # @.str.234
.L.str.234:
	.asciz	"\0355;2;1;0;0cpE"
	.size	.L.str.234, 14

	.type	.L.str.235,@object      # @.str.235
.L.str.235:
	.asciz	"escv_copy_mono(buf)"
	.size	.L.str.235, 20

	.type	.L.str.236,@object      # @.str.236
.L.str.236:
	.asciz	"\035%dX\035%dY"
	.size	.L.str.236, 9

	.type	.L.str.237,@object      # @.str.237
.L.str.237:
	.asciz	"\0350bcI"
	.size	.L.str.237, 6

	.type	.L.str.238,@object      # @.str.238
.L.str.238:
	.asciz	"\0355;%d;%d;%d;%d;%dsrI"
	.size	.L.str.238, 21

	.type	.L.str.239,@object      # @.str.239
.L.str.239:
	.asciz	"\0351;1;1;0;%d;%d;%d;%d;%d;%dscrI"
	.size	.L.str.239, 31

	.type	.L.str.240,@object      # @.str.240
.L.str.240:
	.asciz	"\0352;201;1;%d;%d;%d;%d;%d;%dscrI"
	.size	.L.str.240, 31

	.type	.L.str.241,@object      # @.str.241
.L.str.241:
	.asciz	"\03564;2;2;16;16plr{E"
	.size	.L.str.241, 19

	.type	.L.str.242,@object      # @.str.242
.L.str.242:
	.asciz	"escv_write_begin(tmp4)"
	.size	.L.str.242, 23

	.type	.L.str.243,@object      # @.str.243
.L.str.243:
	.asciz	"\0352;203;2;%d;%d;%d;%d;%d;%dscrI"
	.size	.L.str.243, 31

	.type	.L.str.244,@object      # @.str.244
.L.str.244:
	.asciz	"\0351024;4;2;256;256plr{E"
	.size	.L.str.244, 23

	.type	.L.str.245,@object      # @.str.245
.L.str.245:
	.asciz	"escv_write_begin(tmp)"
	.size	.L.str.245, 22

	.type	.L.str.246,@object      # @.str.246
.L.str.246:
	.asciz	"\0352;204;4;%d;%d;%d;%d;%d;%dscrI"
	.size	.L.str.246, 31

	.type	.L.str.247,@object      # @.str.247
.L.str.247:
	.asciz	"\0352;102;0;%d;%d;%d;%d;%d;%dscrI"
	.size	.L.str.247, 31

	.type	.L.str.248,@object      # @.str.248
.L.str.248:
	.asciz	"escv_write_data(tmp)"
	.size	.L.str.248, 21

	.type	.L.str.249,@object      # @.str.249
.L.str.249:
	.asciz	"\035%d;1;%d;%d;0db{I"
	.size	.L.str.249, 18

	.type	.L.str.250,@object      # @.str.250
.L.str.250:
	.asciz	"\035%d;%du{I"
	.size	.L.str.250, 10

	.type	.L.str.251,@object      # @.str.251
.L.str.251:
	.asciz	"\035%d;%dcu{I"
	.size	.L.str.251, 11

	.type	.L.str.252,@object      # @.str.252
.L.str.252:
	.asciz	"\0351dbI"
	.size	.L.str.252, 6

	.type	.L.str.253,@object      # @.str.253
.L.str.253:
	.asciz	"\035erI"
	.size	.L.str.253, 5

	.type	.L.str.254,@object      # @.str.254
.L.str.254:
	.asciz	"\035ecrI"
	.size	.L.str.254, 6

	.type	.L.str.255,@object      # @.str.255
.L.str.255:
	.asciz	"escv_copy_color(buf)"
	.size	.L.str.255, 21

	.type	.L.str.256,@object      # @.str.256
.L.str.256:
	.asciz	"escv_fill_mask(buf)"
	.size	.L.str.256, 20

	.type	.L.str.257,@object      # @.str.257
.L.str.257:
	.asciz	"\035%d;%d;%d;%d;0db{F"
	.size	.L.str.257, 19

	.type	.L.str.258,@object      # @.str.258
.L.str.258:
	.asciz	"\035%lddbF"
	.size	.L.str.258, 8

	.type	.L.str.259,@object      # @.str.259
.L.str.259:
	.asciz	"escv_begin_image"
	.size	.L.str.259, 17

	.type	escv_image_enum_procs,@object # @escv_image_enum_procs
	.section	.rodata,"a",@progbits
	.align	8
escv_image_enum_procs:
	.quad	escv_image_plane_data
	.quad	escv_image_end_image
	.quad	0
	.quad	0
	.size	escv_image_enum_procs, 32

	.type	.L.str.260,@object      # @.str.260
.L.str.260:
	.asciz	"\000\000\000\000\377\377\377\377"
	.size	.L.str.260, 9

	.type	.L.str.261,@object      # @.str.261
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.261:
	.asciz	"escv_image_data(buf)"
	.size	.L.str.261, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
