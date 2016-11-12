	.text
	.file	"gxacpath.bc"
	.align	16, 0x90
	.type	device_cpath_accum_enum_ptrs,@function
device_cpath_accum_enum_ptrs:           # @device_cpath_accum_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	testl	%ecx, %ecx
	js	.LBB0_2
# BB#1:                                 # %if.then
	addq	$1768, %rsi             # imm = 0x6E8
	movl	$80, %edx
	movl	$st_clip_list, %r9d
	jmpq	*st_clip_list+32(%rip)  # TAILCALL
.LBB0_2:                                # %if.end
	movl	$st_device, %r9d
	jmpq	*st_device+32(%rip)     # TAILCALL
.Lfunc_end0:
	.size	device_cpath_accum_enum_ptrs, .Lfunc_end0-device_cpath_accum_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	device_cpath_accum_reloc_ptrs,@function
device_cpath_accum_reloc_ptrs:          # @device_cpath_accum_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
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
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	$st_device, %edx
	callq	*st_device+40(%rip)
	addq	$1768, %rbx             # imm = 0x6E8
	movl	$st_clip_list, %edx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movq	%r14, %rcx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmpq	*st_clip_list+40(%rip)  # TAILCALL
.Lfunc_end1:
	.size	device_cpath_accum_reloc_ptrs, .Lfunc_end1-device_cpath_accum_reloc_ptrs
	.cfi_endproc

	.globl	gx_cpath_accum_begin
	.align	16, 0x90
	.type	gx_cpath_accum_begin,@function
gx_cpath_accum_begin:                   # @gx_cpath_accum_begin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp8:
	.cfi_def_cfa_offset 32
.Ltmp9:
	.cfi_offset %rbx, -24
.Ltmp10:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$gs_cpath_accum_device, %esi
	movq	%r14, %rdx
	callq	gx_device_init_on_stack
	movq	%rbx, %rdi
	movq	%r14, 1728(%rdi)
	movq	$gx_default_gray_encode, 1552(%rdi)
	movq	$gx_default_decode_color, 1560(%rdi)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*1144(%rdi)             # TAILCALL
.Lfunc_end2:
	.size	gx_cpath_accum_begin, .Lfunc_end2-gx_cpath_accum_begin
	.cfi_endproc

	.globl	gx_cpath_accum_set_cbox
	.align	16, 0x90
	.type	gx_cpath_accum_set_cbox,@function
gx_cpath_accum_set_cbox:                # @gx_cpath_accum_set_cbox
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$255, %eax
	movl	8(%rsi), %ecx
	addl	%eax, %ecx
	addl	12(%rsi), %eax
	movd	%eax, %xmm0
	movd	4(%rsi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movd	%ecx, %xmm0
	movd	(%rsi), %xmm2           # xmm2 = mem[0],zero,zero,zero
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	psrad	$8, %xmm2
	movdqu	%xmm2, 1736(%rdi)
	retq
.Lfunc_end3:
	.size	gx_cpath_accum_set_cbox, .Lfunc_end3-gx_cpath_accum_set_cbox
	.cfi_endproc

	.globl	gx_cpath_accum_end
	.align	16, 0x90
	.type	gx_cpath_accum_end,@function
gx_cpath_accum_end:                     # @gx_cpath_accum_end
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp12:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 32
	subq	$304, %rsp              # imm = 0x130
.Ltmp14:
	.cfi_def_cfa_offset 336
.Ltmp15:
	.cfi_offset %rbx, -32
.Ltmp16:
	.cfi_offset %r14, -24
.Ltmp17:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	*1176(%rbx)
	testl	%eax, %eax
	js	.LBB4_7
# BB#1:                                 # %if.end
	movq	1728(%rbx), %rdx
	leaq	(%rsp), %rdi
	xorl	%esi, %esi
	callq	gx_cpath_init_local_shared
	movq	272(%rsp), %rax
	movups	1832(%rbx), %xmm0
	movups	%xmm0, 88(%rax)
	movdqu	1768(%rbx), %xmm0
	movups	1784(%rbx), %xmm1
	movups	1800(%rbx), %xmm2
	movups	1816(%rbx), %xmm3
	movups	%xmm3, 72(%rax)
	movups	%xmm2, 56(%rax)
	movups	%xmm1, 40(%rax)
	movdqu	%xmm0, 24(%rax)
	movl	1840(%rbx), %eax
	pxor	%xmm0, %xmm0
	testl	%eax, %eax
	je	.LBB4_3
# BB#2:                                 # %if.else
	movdqu	1752(%rbx), %xmm0
	pslld	$8, %xmm0
.LBB4_3:                                # %if.end.47
	movdqu	%xmm0, 72(%rsp)
	movb	$1, 99(%rsp)
	cmpl	$1, %eax
	jg	.LBB4_5
# BB#4:                                 # %if.then.52
	leaq	236(%rsp), %rax
	movdqu	72(%rsp), %xmm0
	movdqu	%xmm0, (%rax)
	jmp	.LBB4_6
.LBB4_5:                                # %if.else.55
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 236(%rsp)
.LBB4_6:                                # %if.end.68
	leaq	(%rsp), %r15
	movq	%r15, %rdi
	callq	gx_cpath_set_outer_box
	movl	$0, 280(%rsp)
	movq	1728(%rbx), %rdi
	movl	$1, %esi
	callq	gs_next_ids
	movq	%rax, 296(%rsp)
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	gx_cpath_assign_free
	xorl	%eax, %eax
.LBB4_7:                                # %cleanup
	addq	$304, %rsp              # imm = 0x130
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	gx_cpath_accum_end, .Lfunc_end4-gx_cpath_accum_end
	.cfi_endproc

	.globl	gx_cpath_accum_discard
	.align	16, 0x90
	.type	gx_cpath_accum_discard,@function
gx_cpath_accum_discard:                 # @gx_cpath_accum_discard
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1728(%rdi), %rsi
	addq	$1768, %rdi             # imm = 0x6E8
	jmp	gx_clip_list_free       # TAILCALL
.Lfunc_end5:
	.size	gx_cpath_accum_discard, .Lfunc_end5-gx_cpath_accum_discard
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4643211215818981376     # double 256
	.text
	.globl	gx_cpath_intersect_path_slow
	.align	16, 0x90
	.type	gx_cpath_intersect_path_slow,@function
gx_cpath_intersect_path_slow:           # @gx_cpath_intersect_path_slow
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
	subq	$2552, %rsp             # imm = 0x9F8
.Ltmp24:
	.cfi_def_cfa_offset 2608
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
	movq	%r8, %r12
	movq	%rcx, %rbx
	movl	%edx, %r13d
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rdi, %r14
	movl	212(%rbx), %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movq	40(%r14), %rbp
	leaq	704(%rsp), %r15
	movl	$gs_cpath_accum_device, %esi
	movq	%r15, %rdi
	movq	%rbp, %rdx
	callq	gx_device_init_on_stack
	movq	%rbp, 2432(%rsp)
	movq	$gx_default_gray_encode, 2256(%rsp)
	movq	$gx_default_decode_color, 2264(%rsp)
	movq	%r15, %rdi
	callq	*1848(%rsp)
	movq	$0, 56(%rsp)
	movq	gx_dc_type_pure(%rip), %rax
	movq	%rax, 48(%rsp)
	movl	$0, 408(%rsp)
	movl	$252, 212(%rbx)
	testq	%r12, %r12
	je	.LBB6_2
# BB#1:                                 # %if.then
	movupd	(%r12), %xmm0
	movapd	%xmm0, 32(%rsp)
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	movl	%r13d, 32(%rsp)
	leaq	16(%rsp), %rsi
	movq	%rbx, %rdi
	callq	gs_currentfilladjust
	movsd	.LCPI6_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	16(%rsp), %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 36(%rsp)
	mulsd	24(%rsp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 40(%rsp)
	movl	296(%rbx), %eax
	movl	%eax, 44(%rsp)
.LBB6_3:                                # %if.end
	leaq	704(%rsp), %rdi
	leaq	32(%rsp), %rcx
	leaq	48(%rsp), %r8
	movq	%rbx, %rsi
	movq	(%rsp), %rdx            # 8-byte Reload
	movq	%r14, %r9
	callq	*2040(%rsp)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB6_5
# BB#4:                                 # %lor.lhs.false
	leaq	704(%rsp), %rdi
	movq	%r14, %rsi
	callq	gx_cpath_accum_end
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB6_6
.LBB6_5:                                # %if.then.15
	leaq	2472(%rsp), %rdi
	movq	2432(%rsp), %rsi
	callq	gx_clip_list_free
.LBB6_6:                                # %if.end.16
	movl	12(%rsp), %eax          # 4-byte Reload
	movl	%eax, 212(%rbx)
	movl	%ebp, %eax
	addq	$2552, %rsp             # imm = 0x9F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gx_cpath_intersect_path_slow, .Lfunc_end6-gx_cpath_intersect_path_slow
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI7_0:
	.long	2147483647              # 0x7fffffff
	.long	2147483647              # 0x7fffffff
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
.LCPI7_1:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483647              # 0x7fffffff
	.long	2147483647              # 0x7fffffff
	.text
	.align	16, 0x90
	.type	accum_open_device,@function
accum_open_device:                      # @accum_open_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	leaq	1768(%rbx), %rdi
	callq	gx_clip_list_init
	movaps	.LCPI7_0(%rip), %xmm0   # xmm0 = [2147483647,2147483647,2147483648,2147483648]
	movups	%xmm0, 1752(%rbx)
	movaps	.LCPI7_1(%rip), %xmm0   # xmm0 = [2147483648,2147483648,2147483647,2147483647]
	movups	%xmm0, 1736(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end7:
	.size	accum_open_device, .Lfunc_end7-accum_open_device
	.cfi_endproc

	.align	16, 0x90
	.type	accum_close,@function
accum_close:                            # @accum_close
	.cfi_startproc
# BB#0:                                 # %entry
	movl	1752(%rdi), %eax
	movl	%eax, 1832(%rdi)
	movl	1760(%rdi), %eax
	movl	%eax, 1836(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end8:
	.size	accum_close, .Lfunc_end8-accum_close
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI9_0:
	.zero	16
	.text
	.align	16, 0x90
	.type	accum_fill_rectangle,@function
accum_fill_rectangle:                   # @accum_fill_rectangle
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
	pushq	%r13
.Ltmp36:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp37:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp39:
	.cfi_def_cfa_offset 112
.Ltmp40:
	.cfi_offset %rbx, -56
.Ltmp41:
	.cfi_offset %r12, -48
.Ltmp42:
	.cfi_offset %r13, -40
.Ltmp43:
	.cfi_offset %r14, -32
.Ltmp44:
	.cfi_offset %r15, -24
.Ltmp45:
	.cfi_offset %rbp, -16
	movl	%ecx, %r12d
	movl	%edx, %r14d
	movl	%esi, %r13d
	addl	%r14d, %r8d
	movl	1740(%rdi), %eax
	movl	1748(%rdi), %ecx
	cmpl	%r14d, %eax
	cmovgel	%eax, %r14d
	cmpl	%ecx, %r8d
	cmovgl	%ecx, %r8d
	cmpl	%r8d, %r14d
	jge	.LBB9_86
# BB#1:                                 # %if.end.16
	addl	%r13d, %r12d
	movl	1736(%rdi), %eax
	movl	1744(%rdi), %ecx
	cmpl	%r13d, %eax
	cmovgel	%eax, %r13d
	movl	%r13d, 28(%rsp)         # 4-byte Spill
	cmpl	%ecx, %r12d
	cmovgl	%ecx, %r12d
	movl	%r12d, 12(%rsp)         # 4-byte Spill
	cmpl	%r12d, %r13d
	jge	.LBB9_86
# BB#2:                                 # %if.end.37
	cmpl	1752(%rdi), %r13d
	jge	.LBB9_4
# BB#3:                                 # %if.then.41
	movl	%r13d, 1752(%rdi)
.LBB9_4:                                # %if.end.45
	cmpl	1756(%rdi), %r14d
	jge	.LBB9_6
# BB#5:                                 # %if.then.50
	movl	%r14d, 1756(%rdi)
.LBB9_6:                                # %if.end.54
	cmpl	1760(%rdi), %r12d
	jle	.LBB9_8
# BB#7:                                 # %if.then.59
	movl	%r12d, 1760(%rdi)
.LBB9_8:                                # %if.end.63
	cmpl	1764(%rdi), %r8d
	jle	.LBB9_10
# BB#9:                                 # %if.then.68
	movl	%r8d, 1764(%rdi)
.LBB9_10:                               # %top.preheader
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	leaq	1768(%rdi), %rdi
	jmp	.LBB9_11
	.align	16, 0x90
.LBB9_33:                               # %if.else.165
                                        #   in Loop: Header=BB9_11 Depth=1
	cmpl	%edx, %r8d
	jne	.LBB9_39
# BB#34:                                # %if.else.165
                                        #   in Loop: Header=BB9_11 Depth=1
	cmpl	16(%rcx), %r14d
	jne	.LBB9_39
# BB#35:                                # %land.lhs.true.171
                                        #   in Loop: Header=BB9_11 Depth=1
	cmpl	24(%rcx), %r13d
	jge	.LBB9_36
.LBB9_39:                               # %if.end.216
                                        #   in Loop: Header=BB9_11 Depth=1
	leal	1(%rax), %ecx
	movl	%ecx, 72(%rdi)
	testl	%eax, %eax
	movq	%rdi, %rcx
	je	.LBB9_41
# BB#40:                                # %if.else.224
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	%rdi, %rbp
	movq	48(%rsp), %rdi          # 8-byte Reload
	movl	%r8d, %ebx
	callq	accum_alloc_rect
	movl	%ebx, %r8d
	movq	%rbp, %rdi
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB9_87
.LBB9_41:                               # %if.end.229
                                        #   in Loop: Header=BB9_11 Depth=1
	movl	28(%rsp), %eax          # 4-byte Reload
	movq	%rcx, %rdx
	movl	%eax, 24(%rdx)
	movl	%r14d, %ecx
	movl	%ecx, 16(%rdx)
	movl	%r12d, %eax
	movl	%eax, 28(%rdx)
	movl	%r8d, 20(%rdx)
	movq	56(%rdi), %rax
	movq	8(%rax), %r15
	cmpl	16(%r15), %r8d
	jle	.LBB9_42
	.align	16, 0x90
.LBB9_43:                               # %do.body.249
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r15), %r15
	cmpl	16(%r15), %r8d
	jg	.LBB9_43
# BB#44:                                # %do.end.254
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	8(%r15), %r15
	movl	16(%r15), %r12d
	jmp	.LBB9_45
	.align	16, 0x90
.LBB9_42:                               # %do.body.242
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%r15), %r15
	movl	16(%r15), %r12d
	cmpl	%r12d, %r8d
	jle	.LBB9_42
.LBB9_45:                               # %if.end.256
                                        #   in Loop: Header=BB9_11 Depth=1
	leaq	20(%r15), %rbp
	movl	20(%r15), %ebx
	movl	%ebx, 32(%rsp)          # 4-byte Spill
	cmpl	%ebx, %r8d
	jle	.LBB9_51
# BB#46:                                # %if.then.260
                                        #   in Loop: Header=BB9_11 Depth=1
	cmpl	%ebx, %ecx
	jge	.LBB9_47
# BB#48:                                # %if.end.270
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movl	%ecx, 8(%rsp)           # 4-byte Spill
	movl	72(%rdi), %eax
	leal	1(%rax), %ecx
	movl	%ecx, 72(%rdi)
	testl	%eax, %eax
	movq	%rdi, %rcx
	je	.LBB9_50
# BB#49:                                # %if.else.278
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	%rdi, %r14
	movq	48(%rsp), %rdi          # 8-byte Reload
	movl	%r8d, %ebp
	callq	accum_alloc_rect
	movl	%ebp, %r8d
	movq	%r14, %rdi
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB9_87
.LBB9_50:                               # %if.end.300.thread
                                        #   in Loop: Header=BB9_11 Depth=1
	movl	28(%rsp), %eax          # 4-byte Reload
	movl	%eax, 24(%rcx)
	movl	%ebx, 16(%rcx)
	movl	12(%rsp), %eax          # 4-byte Reload
	movl	%eax, 28(%rcx)
	movl	%r8d, 20(%rcx)
	movq	%r15, 8(%rcx)
	movq	(%r15), %rax
	movq	%rax, (%rcx)
	movq	%rcx, 8(%rax)
	movq	%rcx, (%r15)
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	%ebx, 20(%rax)
	jmp	.LBB9_56
	.align	16, 0x90
.LBB9_51:                               # %if.end.300
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movl	%ecx, 8(%rsp)           # 4-byte Spill
	jge	.LBB9_56
# BB#52:                                # %while.body.lr.ph
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	%r15, %r14
	.align	16, 0x90
.LBB9_53:                               # %while.body
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	72(%rdi), %eax
	leal	1(%rax), %ecx
	movl	%ecx, 72(%rdi)
	testl	%eax, %eax
	movq	%rdi, %rcx
	je	.LBB9_55
# BB#54:                                # %if.else.312
                                        #   in Loop: Header=BB9_53 Depth=2
	movq	%rdi, %rbx
	movq	48(%rsp), %rdi          # 8-byte Reload
	movl	%r8d, %r13d
	callq	accum_alloc_rect
	movl	%r13d, %r8d
	movq	%rbx, %rdi
	movl	32(%rsp), %ebx          # 4-byte Reload
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB9_87
.LBB9_55:                               # %if.end.317
                                        #   in Loop: Header=BB9_53 Depth=2
	movl	24(%r14), %eax
	movl	%eax, 24(%rcx)
	movl	%r8d, 16(%rcx)
	movl	28(%r14), %eax
	movl	%eax, 28(%rcx)
	movl	%ebx, 20(%rcx)
	movq	%r15, 8(%rcx)
	movq	(%r15), %rax
	movq	%rax, (%rcx)
	movq	%rcx, 8(%rax)
	movq	%rcx, (%r15)
	movl	%r8d, (%rbp)
	movq	8(%r14), %r14
	leaq	20(%r14), %rbp
	cmpl	%ebx, 20(%r14)
	je	.LBB9_53
	.align	16, 0x90
.LBB9_56:                               # %if.end.334
                                        #   in Loop: Header=BB9_11 Depth=1
	movl	8(%rsp), %r14d          # 4-byte Reload
	cmpl	%r12d, %r14d
	movq	%r15, %rcx
	jle	.LBB9_57
	.align	16, 0x90
.LBB9_61:                               # %while.cond.338
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rbp
	movq	8(%rbp), %rcx
	cmpl	%r12d, 16(%rcx)
	je	.LBB9_61
# BB#62:                                # %for.cond.preheader
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	%rbp, %rbx
	jmp	.LBB9_63
	.align	16, 0x90
.LBB9_68:                               # %if.end.375
                                        #   in Loop: Header=BB9_63 Depth=2
	movq	(%rbx), %rbx
.LBB9_63:                               # %for.cond
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	72(%rdi), %eax
	leal	1(%rax), %edx
	movl	%edx, 72(%rdi)
	testl	%eax, %eax
	movq	%rcx, %rax
	movq	%rdi, %rcx
	je	.LBB9_66
# BB#64:                                # %if.else.352
                                        #   in Loop: Header=BB9_63 Depth=2
	movq	%rdi, %r13
	movq	48(%rsp), %rdi          # 8-byte Reload
	callq	accum_alloc_rect
	movq	%r13, %rdi
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB9_87
# BB#65:                                # %if.else.352.if.end.357_crit_edge
                                        #   in Loop: Header=BB9_63 Depth=2
	movq	8(%rbp), %rax
.LBB9_66:                               # %if.end.357
                                        #   in Loop: Header=BB9_63 Depth=2
	movl	24(%rbx), %edx
	movl	%edx, 24(%rcx)
	movl	%r12d, 16(%rcx)
	movl	28(%rbx), %edx
	movl	%edx, 28(%rcx)
	movl	%r14d, 20(%rcx)
	movq	%rax, 8(%rcx)
	movq	%rcx, (%rax)
	movq	%rbp, (%rcx)
	movq	%rcx, 8(%rbp)
	movl	%r14d, 16(%rbx)
	cmpq	%r15, %rbx
	jne	.LBB9_68
# BB#67:                                #   in Loop: Header=BB9_11 Depth=1
	movl	%r14d, %r8d
	jmp	.LBB9_58
	.align	16, 0x90
.LBB9_57:                               #   in Loop: Header=BB9_11 Depth=1
	movl	%r12d, %r8d
.LBB9_58:                               # %if.end.381
                                        #   in Loop: Header=BB9_11 Depth=1
	movl	12(%rsp), %r12d         # 4-byte Reload
	movl	28(%rsp), %r13d         # 4-byte Reload
	movq	16(%rsp), %rsi          # 8-byte Reload
	movl	%r8d, 16(%rsi)
	cmpl	%r8d, 16(%r15)
	movq	%r15, %rax
	jne	.LBB9_79
	.align	16, 0x90
.LBB9_59:                               # %for.body
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	24(%r15), %eax
	cmpl	%eax, %r12d
	jge	.LBB9_69
# BB#60:                                # %for.body.for.inc_crit_edge
                                        #   in Loop: Header=BB9_59 Depth=2
	movq	8(%r15), %rax
	jmp	.LBB9_78
	.align	16, 0x90
.LBB9_69:                               # %if.end.389
                                        #   in Loop: Header=BB9_59 Depth=2
	movl	28(%r15), %ecx
	cmpl	%ecx, %r13d
	jg	.LBB9_70
# BB#71:                                # %if.end.393
                                        #   in Loop: Header=BB9_59 Depth=2
	cmpl	%ecx, %r12d
	jle	.LBB9_73
# BB#72:                                # %if.then.396
                                        #   in Loop: Header=BB9_59 Depth=2
	movl	28(%rsi), %ecx
	movl	%ecx, 28(%r15)
.LBB9_73:                               # %if.end.402
                                        #   in Loop: Header=BB9_59 Depth=2
	decl	72(%rdi)
	movq	%rdi, %rbp
	je	.LBB9_75
# BB#74:                                # %do.end.408
                                        #   in Loop: Header=BB9_59 Depth=2
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	1728(%rax), %rdi
	movl	$.L.str.3, %edx
	movl	%r8d, %ebx
	callq	*24(%rdi)
	movl	%ebx, %r8d
	movl	24(%r15), %eax
.LBB9_75:                               # %if.end.410
                                        #   in Loop: Header=BB9_59 Depth=2
	cmpl	%eax, %r13d
	jge	.LBB9_76
# BB#77:                                # %if.end.416
                                        #   in Loop: Header=BB9_59 Depth=2
	movl	%r13d, 24(%r15)
	movq	(%r15), %rcx
	movq	8(%r15), %rax
	movq	%rax, 8(%rcx)
	movq	8(%r15), %rax
	movq	%rcx, (%rax)
	movq	%r15, %rsi
	movq	%rbp, %rdi
.LBB9_78:                               # %for.inc
                                        #   in Loop: Header=BB9_59 Depth=2
	cmpl	%r8d, 16(%rax)
	movq	%rax, %r15
	je	.LBB9_59
	jmp	.LBB9_79
.LBB9_70:                               #   in Loop: Header=BB9_11 Depth=1
	movq	%r15, %rax
	.align	16, 0x90
.LBB9_79:                               # %for.end.428
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	%rax, 8(%rsi)
	movq	(%rax), %rcx
	movq	%rcx, (%rsi)
	movq	%rsi, 8(%rcx)
	movq	%rsi, (%rax)
	movq	%rsi, %r15
.LBB9_80:                               # %out
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	%r15, 56(%rdi)
	cmpl	$1, 72(%rdi)
	jg	.LBB9_85
# BB#81:                                # %if.then.439
                                        #   in Loop: Header=BB9_11 Depth=1
	movl	%r14d, %r15d
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	1728(%rcx), %r14
	movq	1808(%rcx), %rax
	movq	(%rax), %rsi
	movq	1816(%rcx), %rax
	movl	%r8d, %ebx
	cmpq	%rax, %rsi
	je	.LBB9_82
# BB#83:                                # %if.then.447
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	32(%rsi), %rax
	movq	%rax, 32(%rdi)
	movups	(%rsi), %xmm0
	movups	16(%rsi), %xmm1
	movups	%xmm1, 16(%rdi)
	movups	%xmm0, (%rdi)
	movl	$.L.str.4, %edx
	movq	%rdi, %rbp
	movq	%r14, %rdi
	callq	*24(%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rbp)
	movq	48(%rbp), %rax
	jmp	.LBB9_84
.LBB9_82:                               # %if.then.439.if.end.458_crit_edge
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	%rdi, %rbp
.LBB9_84:                               # %if.end.458
                                        #   in Loop: Header=BB9_11 Depth=1
	movl	$.L.str.5, %edx
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	*24(%r14)
	movq	40(%rbp), %rsi
	movl	$.L.str.6, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 40(%rbp)
	movq	$0, 56(%rbp)
	movl	%r15d, %r14d
	movq	%rbp, %rdi
	movl	%ebx, %r8d
.LBB9_85:                               # %if.end.473
                                        #   in Loop: Header=BB9_11 Depth=1
	cmpl	%r8d, %r14d
	jl	.LBB9_11
	jmp	.LBB9_86
.LBB9_76:                               #   in Loop: Header=BB9_11 Depth=1
	movq	%rbp, %rdi
	jmp	.LBB9_80
	.align	16, 0x90
.LBB9_11:                               # %top
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_42 Depth 2
                                        #     Child Loop BB9_43 Depth 2
                                        #     Child Loop BB9_53 Depth 2
                                        #     Child Loop BB9_61 Depth 2
                                        #     Child Loop BB9_63 Depth 2
                                        #     Child Loop BB9_59 Depth 2
	movl	72(%rdi), %eax
	cmpl	$1, %eax
	jne	.LBB9_12
# BB#14:                                # %if.then.90
                                        #   in Loop: Header=BB9_11 Depth=1
	cmpl	24(%rdi), %r13d
	movq	%rdi, %rcx
	jne	.LBB9_23
# BB#15:                                # %land.lhs.true
                                        #   in Loop: Header=BB9_11 Depth=1
	cmpl	28(%rdi), %r12d
	movq	%rdi, %rcx
	jne	.LBB9_23
# BB#16:                                # %land.lhs.true.97
                                        #   in Loop: Header=BB9_11 Depth=1
	movl	20(%rdi), %edx
	cmpl	%edx, %r14d
	movq	%rdi, %rcx
	jg	.LBB9_23
# BB#17:                                # %land.lhs.true.100
                                        #   in Loop: Header=BB9_11 Depth=1
	movl	16(%rdi), %esi
	cmpl	%esi, %r8d
	movq	%rdi, %rcx
	jl	.LBB9_23
	jmp	.LBB9_18
.LBB9_12:                               # %top
                                        #   in Loop: Header=BB9_11 Depth=1
	testl	%eax, %eax
	je	.LBB9_13
# BB#22:                                # %if.else
                                        #   in Loop: Header=BB9_11 Depth=1
	movq	48(%rdi), %rcx
	movq	8(%rcx), %rcx
	.align	16, 0x90
.LBB9_23:                               # %if.end.116
                                        #   in Loop: Header=BB9_11 Depth=1
	movl	20(%rcx), %edx
	cmpl	%edx, %r14d
	jl	.LBB9_33
# BB#24:                                # %if.then.119
	jne	.LBB9_30
# BB#25:                                # %land.lhs.true.122
	cmpl	24(%rcx), %r13d
	jne	.LBB9_30
# BB#26:                                # %land.lhs.true.125
	cmpl	28(%rcx), %r12d
	jne	.LBB9_30
# BB#27:                                # %land.lhs.true.128
	movq	8(%rcx), %rdx
	testq	%rdx, %rdx
	je	.LBB9_29
# BB#28:                                # %lor.lhs.false
	cmpl	20(%rdx), %r14d
	je	.LBB9_30
.LBB9_29:                               # %if.then.134
	movl	%r8d, 20(%rcx)
	jmp	.LBB9_86
.LBB9_36:                               # %if.then.174
	movl	28(%rcx), %edx
	cmpl	%edx, %r13d
	jle	.LBB9_37
.LBB9_30:                               # %if.end.136
	leal	1(%rax), %ecx
	movl	%ecx, 72(%rdi)
	testl	%eax, %eax
	movq	%rdi, %rcx
	je	.LBB9_32
# BB#31:                                # %if.else.143
	movq	%rdi, %rbp
	movq	48(%rsp), %rdi          # 8-byte Reload
	movl	%r8d, %ebx
	callq	accum_alloc_rect
	movl	%ebx, %r8d
	movq	%rbp, %rdi
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB9_87
.LBB9_32:                               # %if.end.147
	movl	%r13d, 24(%rcx)
	movl	%r14d, 16(%rcx)
	movl	%r12d, 28(%rcx)
	movl	%r8d, 20(%rcx)
	movq	48(%rdi), %rax
	movq	8(%rax), %rdx
	movq	%rdx, 8(%rcx)
	movq	%rcx, (%rdx)
	movq	%rax, (%rcx)
	movq	%rcx, 8(%rax)
	jmp	.LBB9_86
.LBB9_47:                               # %if.then.262
	movq	%r15, 8(%rdx)
	movq	(%r15), %rax
	movq	%rax, (%rdx)
	movq	%rdx, 8(%rax)
	movq	%rdx, (%r15)
	movq	%rdx, 56(%rdi)
	jmp	.LBB9_86
.LBB9_37:                               # %if.then.177
	cmpl	%edx, %r12d
	jle	.LBB9_86
# BB#38:                                # %if.then.180
	movl	%r12d, 28(%rcx)
	jmp	.LBB9_86
.LBB9_13:                               # %if.then.74
	movl	$1, 72(%rdi)
	movl	%r13d, 24(%rdi)
	movl	%r14d, 16(%rdi)
	movl	%r12d, 28(%rdi)
	movl	%r8d, 20(%rdi)
	jmp	.LBB9_86
.LBB9_18:                               # %if.then.103
	cmpl	%esi, %r14d
	jge	.LBB9_20
# BB#19:                                # %if.then.106
	movl	%r14d, 16(%rdi)
.LBB9_20:                               # %if.end.108
	cmpl	%edx, %r8d
	jle	.LBB9_86
# BB#21:                                # %if.then.111
	movl	%r8d, 20(%rdi)
.LBB9_86:
	xorl	%eax, %eax
.LBB9_87:                               # %cleanup.480
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	accum_fill_rectangle, .Lfunc_end9-accum_fill_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	accum_dev_spec_op,@function
accum_dev_spec_op:                      # @accum_dev_spec_op
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$8, %esi
	jae	.LBB10_2
# BB#1:                                 # %switch.lookup
	movslq	%esi, %rax
	movl	.Lswitch.table(,%rax,4), %eax
	retq
.LBB10_2:                               # %sw.epilog
	jmp	gx_default_dev_spec_op  # TAILCALL
.Lfunc_end10:
	.size	accum_dev_spec_op, .Lfunc_end10-accum_dev_spec_op
	.cfi_endproc

	.align	16, 0x90
	.type	accum_alloc_rect,@function
accum_alloc_rect:                       # @accum_alloc_rect
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp46:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp47:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp48:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp49:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 48
.Ltmp51:
	.cfi_offset %rbx, -48
.Ltmp52:
	.cfi_offset %r12, -40
.Ltmp53:
	.cfi_offset %r13, -32
.Ltmp54:
	.cfi_offset %r14, -24
.Ltmp55:
	.cfi_offset %r15, -16
	movq	%rdi, %r15
	movq	1728(%r15), %rbx
	movl	$st_clip_rect, %esi
	movl	$.L.str.7, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movq	%rax, %r14
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.LBB11_8
# BB#1:                                 # %if.end
	cmpl	$2, 1840(%r15)
	jne	.LBB11_2
# BB#3:                                 # %if.then.2
	movl	$st_clip_rect, %esi
	movl	$.L.str.8, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movq	%rax, %r12
	movl	$st_clip_rect, %esi
	movl	$.L.str.9, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movq	%rax, %r13
	movl	$st_clip_rect, %esi
	movl	$.L.str.10, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	testq	%r12, %r12
	je	.LBB11_6
# BB#4:                                 # %if.then.2
	testq	%r13, %r13
	je	.LBB11_6
# BB#5:                                 # %if.then.2
	testq	%rax, %rax
	je	.LBB11_6
# BB#7:                                 # %if.end.24
	leaq	1768(%r15), %rcx
	movq	clip_head_rect+32(%rip), %rdx
	movq	%rdx, 32(%r14)
	movups	clip_head_rect+16(%rip), %xmm0
	movups	%xmm0, 16(%r14)
	movups	clip_head_rect(%rip), %xmm0
	movups	%xmm0, (%r14)
	movq	%r13, (%r14)
	movq	32(%rcx), %rdx
	movq	%rdx, 32(%r13)
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	%xmm1, 16(%r13)
	movups	%xmm0, (%r13)
	movq	%r14, 8(%r13)
	movq	%r12, (%r13)
	movq	clip_tail_rect+32(%rip), %rcx
	movq	%rcx, 32(%r12)
	movups	clip_tail_rect+16(%rip), %xmm0
	movups	%xmm0, 16(%r12)
	movups	clip_tail_rect(%rip), %xmm0
	movups	%xmm0, (%r12)
	movq	%r13, 8(%r12)
	movq	%r14, 1808(%r15)
	movq	%r12, 1816(%r15)
	movq	%r12, 1824(%r15)
	jmp	.LBB11_8
.LBB11_2:
	movq	%r14, %rax
	jmp	.LBB11_8
.LBB11_6:                               # %if.then.16
	movl	$.L.str.7, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	*24(%rbx)
	movl	$.L.str.9, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	*24(%rbx)
	movl	$.L.str.8, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	*24(%rbx)
	movl	$.L.str.10, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*24(%rbx)
	xorl	%eax, %eax
.LBB11_8:                               # %cleanup.37
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end11:
	.size	accum_alloc_rect, .Lfunc_end11-accum_alloc_rect
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gx_device_cpath_accum"
	.size	.L.str, 22

	.type	st_device_cpath_accum,@object # @st_device_cpath_accum
	.section	.rodata,"a",@progbits
	.globl	st_device_cpath_accum
	.align	8
st_device_cpath_accum:
	.long	1848                    # 0x738
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	device_cpath_accum_enum_ptrs
	.quad	device_cpath_accum_reloc_ptrs
	.quad	gx_device_finalize
	.quad	0
	.size	st_device_cpath_accum, 64

	.type	gs_cpath_accum_device,@object # @gs_cpath_accum_device
	.align	8
gs_cpath_accum_device:
	.long	1848                    # 0x738
	.zero	4
	.quad	0
	.quad	.L.str.1
	.quad	0
	.quad	0
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
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	1                       # 0x1
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
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	8
	.zero	16
	.long	0                       # 0x0
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.long	1065353216              # float 1.000000e+00
	.zero	8
	.zero	16
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
	.quad	accum_open_device
	.quad	0
	.quad	0
	.quad	0
	.quad	accum_close
	.quad	0
	.quad	0
	.quad	accum_fill_rectangle
	.quad	0
	.quad	gx_default_copy_mono
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_fill_path
	.quad	gx_default_stroke_path
	.quad	gx_default_fill_mask
	.quad	gx_default_fill_trapezoid
	.quad	gx_default_fill_parallelogram
	.quad	gx_default_fill_triangle
	.quad	gx_default_draw_thin_line
	.quad	gx_default_begin_image
	.quad	gx_default_image_data
	.quad	gx_default_end_image
	.quad	0
	.quad	0
	.quad	gx_get_largest_clipping_box
	.quad	gx_default_begin_typed_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_text_begin
	.quad	gx_default_finish_copydevice
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_DevGray_get_color_mapping_procs
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	accum_dev_spec_op
	.quad	0
	.quad	0
	.quad	gx_default_set_graphics_type_tag
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.zero	16
	.zero	16
	.zero	80
	.size	gs_cpath_accum_device, 1848

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"clip list accumulator"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"DeviceGray"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"accum_rect"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"accum_free_rect(single)"
	.size	.L.str.4, 24

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"accum_free_rect(tail)"
	.size	.L.str.5, 22

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"accum_free_rect(head)"
	.size	.L.str.6, 22

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"accum_alloc_rect"
	.size	.L.str.7, 17

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"accum_alloc_rect(tail)"
	.size	.L.str.8, 23

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"accum_alloc_rect(single)"
	.size	.L.str.9, 25

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"accum_alloc_rect(head)"
	.size	.L.str.10, 23

	.type	clip_head_rect,@object  # @clip_head_rect
	.section	.rodata,"a",@progbits
	.align	8
clip_head_rect:
	.quad	0
	.quad	0
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.byte	0                       # 0x0
	.zero	7
	.size	clip_head_rect, 40

	.type	clip_tail_rect,@object  # @clip_tail_rect
	.align	8
clip_tail_rect:
	.quad	0
	.quad	0
	.long	2147483647              # 0x7fffffff
	.long	2147483647              # 0x7fffffff
	.long	2147483647              # 0x7fffffff
	.long	2147483647              # 0x7fffffff
	.byte	0                       # 0x0
	.zero	7
	.size	clip_tail_rect, 40

	.type	.Lswitch.table,@object  # @switch.table
	.align	16
.Lswitch.table:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	.Lswitch.table, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
