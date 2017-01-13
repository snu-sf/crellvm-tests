	.text
	.file	"gsfont.bc"
	.globl	gs_no_define_font
	.align	16, 0x90
	.type	gs_no_define_font,@function
gs_no_define_font:                      # @gs_no_define_font
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	gs_no_define_font, .Lfunc_end0-gs_no_define_font
	.cfi_endproc

	.globl	gs_no_make_font
	.align	16, 0x90
	.type	gs_no_make_font,@function
gs_no_make_font:                        # @gs_no_make_font
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	gs_no_make_font, .Lfunc_end1-gs_no_make_font
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	0                       # double 0
	.text
	.globl	gs_default_font_info
	.align	16, 0x90
	.type	gs_default_font_info,@function
gs_default_font_info:                   # @gs_default_font_info
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
	subq	$216, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 272
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
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movslq	148(%rbx), %r12
	xorl	%eax, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	testq	%rsi, %rsi
	je	.LBB2_2
# BB#1:                                 # %if.else
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	leaq	176(%rsp), %rdi
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movl	%edx, %ebp
	callq	gs_make_scaling
	movl	%ebp, %edx
.LBB2_2:                                # %if.end
	movl	$0, (%r14)
	movl	%edx, %eax
	andl	$32, %eax
	je	.LBB2_4
# BB#3:                                 # %if.then.4
	movl	$0, 44(%r14)
.LBB2_4:                                # %if.end.5
	xorl	%ebp, %ebp
	cmpl	$0, 128(%rbx)
	je	.LBB2_51
# BB#5:                                 # %if.end.8
	testb	$4, %dl
	je	.LBB2_7
# BB#6:                                 # %if.then.11
	cvttsd2si	376(%rbx), %ecx
	movl	%ecx, 12(%r14)
	cvttsd2si	384(%rbx), %ecx
	movl	%ecx, 16(%r14)
	cvttsd2si	392(%rbx), %ecx
	movl	%ecx, 20(%r14)
	cvttsd2si	400(%rbx), %ecx
	movl	%ecx, 24(%r14)
	orb	$4, 44(%r14)
.LBB2_7:                                # %if.end.36
	testl	%eax, %eax
	je	.LBB2_36
# BB#8:                                 # %land.lhs.true
	testb	$1, 40(%r14)
	jne	.LBB2_9
.LBB2_36:                               # %if.else.121
	testb	$8, %dh
	je	.LBB2_51
# BB#37:                                # %if.then.124
	movq	%r14, 40(%rsp)          # 8-byte Spill
	movl	$0, 168(%rsp)
	leaq	168(%rsp), %rsi
	xorl	%ebp, %ebp
	leaq	200(%rsp), %rcx
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	*216(%rbx)
	testl	%eax, %eax
	js	.LBB2_51
# BB#38:                                # %if.then.124
	movl	168(%rsp), %eax
	testl	%eax, %eax
	je	.LBB2_51
# BB#39:
	leaq	168(%rsp), %r14
	leaq	200(%rsp), %r13
	leaq	56(%rsp), %r15
	.align	16, 0x90
.LBB2_40:                               # %for.body.137
                                        # =>This Inner Loop Header: Depth=1
	movq	200(%rsp), %rsi
	cmpq	$2147483647, %rsi       # imm = 0x7FFFFFFF
	je	.LBB2_41
# BB#43:                                # %if.end.i.71
                                        #   in Loop: Header=BB2_40 Depth=1
	testq	$-2147483648, %rsi      # imm = 0xFFFFFFFF80000000
	je	.LBB2_45
# BB#44:                                # %if.then.2.i.74
                                        #   in Loop: Header=BB2_40 Depth=1
	movl	$2147483648, %eax       # imm = 0x80000000
	cmpq	%rax, %rsi
	jne	.LBB2_41
	jmp	.LBB2_48
	.align	16, 0x90
.LBB2_45:                               # %if.end.4.i.78
                                        #   in Loop: Header=BB2_40 Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	*240(%rbx)
	testl	%eax, %eax
	js	.LBB2_41
# BB#46:                                # %land.lhs.true.i.81
                                        #   in Loop: Header=BB2_40 Depth=1
	cmpl	$7, 64(%rsp)
	jne	.LBB2_41
# BB#47:                                # %gs_font_glyph_is_notdef.exit89
                                        #   in Loop: Header=BB2_40 Depth=1
	movq	56(%rsp), %rdi
	movl	$.L.str.12, %esi
	movl	$7, %edx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB2_48
	.align	16, 0x90
.LBB2_41:                               # %for.cond.127.backedge
                                        #   in Loop: Header=BB2_40 Depth=1
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r13, %rcx
	callq	*216(%rbx)
	testl	%eax, %eax
	js	.LBB2_51
# BB#42:                                # %for.cond.127.backedge
                                        #   in Loop: Header=BB2_40 Depth=1
	movl	168(%rsp), %eax
	testl	%eax, %eax
	jne	.LBB2_40
	jmp	.LBB2_51
.LBB2_9:                                # %if.then.41
	movq	%r14, 40(%rsp)          # 8-byte Spill
	movl	$0, 164(%rsp)
	movl	$1, %r13d
	movb	%r12b, %cl
	shll	%cl, %r13d
	shlq	$4, %r12
	leaq	64(%rsp,%r12), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leaq	72(%rsp,%r12), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	xorl	%ecx, %ecx
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leaq	164(%rsp), %r14
	leaq	168(%rsp), %r15
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	jmp	.LBB2_10
.LBB2_48:                               # %if.end.141
	movq	200(%rsp), %rsi
	movl	$1, %eax
	movb	%r12b, %cl
	shll	%cl, %eax
	leaq	56(%rsp), %r8
	movq	%rbx, %rdi
	movq	48(%rsp), %rdx          # 8-byte Reload
	movl	%eax, %ecx
	callq	*224(%rbx)
	testl	%eax, %eax
	js	.LBB2_50
# BB#49:                                # %cleanup.160.thread
	shlq	$4, %r12
	cvttsd2si	64(%rsp,%r12), %eax
	movq	40(%rsp), %rcx          # 8-byte Reload
	movl	%eax, 60(%rcx)
	orb	$8, 1(%rcx)
	jmp	.LBB2_51
.LBB2_50:                               # %cleanup.164
	movl	%eax, %ebp
	jmp	.LBB2_51
	.align	16, 0x90
.LBB2_10:                               # %land.lhs.true.44.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_13 Depth 2
	movl	%ecx, 32(%rsp)          # 4-byte Spill
	movl	%eax, 36(%rsp)          # 4-byte Spill
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rcx
	callq	*216(%rbx)
	testl	%eax, %eax
	js	.LBB2_11
# BB#12:                                # %land.lhs.true.44.outer
                                        #   in Loop: Header=BB2_10 Depth=1
	movl	164(%rsp), %eax
	testl	%eax, %eax
	movl	%r12d, %ebp
	je	.LBB2_16
	.align	16, 0x90
.LBB2_13:                               # %for.body
                                        #   Parent Loop BB2_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	168(%rsp), %rsi
	movq	%rbx, %rdi
	movq	48(%rsp), %rdx          # 8-byte Reload
	movl	%r13d, %ecx
	leaq	56(%rsp), %r8
	callq	*224(%rbx)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jns	.LBB2_20
# BB#14:                                # %cleanup.thread106
                                        #   in Loop: Header=BB2_13 Depth=2
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rcx
	callq	*216(%rbx)
	testl	%eax, %eax
	js	.LBB2_16
# BB#15:                                # %cleanup.thread106
                                        #   in Loop: Header=BB2_13 Depth=2
	movl	164(%rsp), %eax
	testl	%eax, %eax
	movl	%ebp, %r12d
	jne	.LBB2_13
	jmp	.LBB2_16
.LBB2_20:                               # %if.end.56
                                        #   in Loop: Header=BB2_10 Depth=1
	cmpq	$2147483647, 24(%rsp)   # 8-byte Folded Reload
                                        # imm = 0x7FFFFFFF
	jne	.LBB2_30
# BB#21:                                # %land.lhs.true.59
                                        #   in Loop: Header=BB2_10 Depth=1
	movq	168(%rsp), %rsi
	cmpq	$2147483647, %rsi       # imm = 0x7FFFFFFF
	je	.LBB2_29
# BB#22:                                # %if.end.i
                                        #   in Loop: Header=BB2_10 Depth=1
	testq	$-2147483648, %rsi      # imm = 0xFFFFFFFF80000000
	je	.LBB2_24
# BB#23:                                # %if.then.2.i
                                        #   in Loop: Header=BB2_10 Depth=1
	movl	$2147483648, %eax       # imm = 0x80000000
	cmpq	%rax, %rsi
	jmp	.LBB2_27
.LBB2_24:                               # %if.end.4.i
                                        #   in Loop: Header=BB2_10 Depth=1
	movq	%rbx, %rdi
	leaq	200(%rsp), %rdx
	callq	*240(%rbx)
	testl	%eax, %eax
	js	.LBB2_29
# BB#25:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB2_10 Depth=1
	cmpl	$7, 208(%rsp)
	jne	.LBB2_29
# BB#26:                                # %gs_font_glyph_is_notdef.exit
                                        #   in Loop: Header=BB2_10 Depth=1
	movq	200(%rsp), %rdi
	movl	$.L.str.12, %esi
	movl	$7, %edx
	callq	memcmp
	testl	%eax, %eax
.LBB2_27:                               # %gs_font_glyph_is_notdef.exit
                                        #   in Loop: Header=BB2_10 Depth=1
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	%rax, 24(%rsp)          # 8-byte Spill
	jne	.LBB2_30
# BB#28:                                # %if.then.62
                                        #   in Loop: Header=BB2_10 Depth=1
	movq	168(%rsp), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	16(%rsp), %rax          # 8-byte Reload
	cvttsd2si	(%rax), %eax
	movq	40(%rsp), %rcx          # 8-byte Reload
	movl	%eax, 60(%rcx)
	orb	$8, 1(%rcx)
	jmp	.LBB2_30
.LBB2_29:                               # %if.end.67.critedge96
                                        #   in Loop: Header=BB2_10 Depth=1
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	%rax, 24(%rsp)          # 8-byte Spill
.LBB2_30:                               # %if.end.67
                                        #   in Loop: Header=BB2_10 Depth=1
	movq	8(%rsp), %rax           # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	ucomisd	.LCPI2_0, %xmm0
	movl	36(%rsp), %eax          # 4-byte Reload
	jne	.LBB2_35
	jp	.LBB2_35
# BB#31:                                # %if.else.75
                                        #   in Loop: Header=BB2_10 Depth=1
	movq	16(%rsp), %rcx          # 8-byte Reload
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	testl	%eax, %eax
	jne	.LBB2_34
# BB#32:                                # %if.then.78
                                        #   in Loop: Header=BB2_10 Depth=1
	cvttsd2si	%xmm0, %eax
.LBB2_33:                               # %cleanup
                                        #   in Loop: Header=BB2_10 Depth=1
	movl	$1, %ecx
	testl	%eax, %eax
	jns	.LBB2_10
	jmp	.LBB2_35
.LBB2_34:                               # %if.else.84
                                        #   in Loop: Header=BB2_10 Depth=1
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB2_35
	jnp	.LBB2_33
.LBB2_35:                               # %if.end.109
	movq	40(%rsp), %rax          # 8-byte Reload
	orb	$1, 44(%rax)
	xorl	%ebp, %ebp
	jmp	.LBB2_51
.LBB2_11:
	movl	%r12d, %ebp
.LBB2_16:                               # %for.end
	testl	%ebp, %ebp
	jns	.LBB2_18
# BB#17:                                # %for.end
	cmpl	$0, 32(%rsp)            # 4-byte Folded Reload
	jne	.LBB2_18
.LBB2_51:                               # %cleanup.170
	movl	%ebp, %eax
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_18:                               # %if.end.101
	movl	36(%rsp), %ecx          # 4-byte Reload
	testl	%ecx, %ecx
	jle	.LBB2_35
# BB#19:                                # %if.then.104
	movq	40(%rsp), %rax          # 8-byte Reload
	orb	$1, 36(%rax)
	orl	$3074, (%rax)           # imm = 0xC02
	movl	%ecx, 60(%rax)
	movl	%ecx, 56(%rax)
	movl	%ecx, 8(%rax)
	jmp	.LBB2_35
.Lfunc_end2:
	.size	gs_default_font_info, .Lfunc_end2-gs_default_font_info
	.cfi_endproc

	.globl	gs_default_same_font
	.align	16, 0x90
	.type	gs_default_same_font,@function
gs_default_same_font:                   # @gs_default_same_font
	.cfi_startproc
# BB#0:                                 # %entry
	.align	16, 0x90
.LBB3_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, %rcx
	movq	64(%rcx), %rdi
	cmpq	%rcx, %rdi
	jne	.LBB3_1
	.align	16, 0x90
.LBB3_2:                                # %while.cond.2
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rdi
	movq	64(%rdi), %rsi
	cmpq	%rdi, %rsi
	jne	.LBB3_2
# BB#3:                                 # %while.end.7
	xorl	%eax, %eax
	cmpq	%rcx, %rdi
	cmovel	%edx, %eax
	retq
.Lfunc_end3:
	.size	gs_default_same_font, .Lfunc_end3-gs_default_same_font
	.cfi_endproc

	.globl	gs_no_encode_char
	.align	16, 0x90
	.type	gs_no_encode_char,@function
gs_no_encode_char:                      # @gs_no_encode_char
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	retq
.Lfunc_end4:
	.size	gs_no_encode_char, .Lfunc_end4-gs_no_encode_char
	.cfi_endproc

	.globl	gs_no_decode_glyph
	.align	16, 0x90
	.type	gs_no_decode_glyph,@function
gs_no_decode_glyph:                     # @gs_no_decode_glyph
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$-1, %rax
	retq
.Lfunc_end5:
	.size	gs_no_decode_glyph, .Lfunc_end5-gs_no_decode_glyph
	.cfi_endproc

	.globl	gs_no_enumerate_glyph
	.align	16, 0x90
	.type	gs_no_enumerate_glyph,@function
gs_no_enumerate_glyph:                  # @gs_no_enumerate_glyph
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-21, %eax
	retq
.Lfunc_end6:
	.size	gs_no_enumerate_glyph, .Lfunc_end6-gs_no_enumerate_glyph
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.globl	gs_default_glyph_info
	.align	16, 0x90
	.type	gs_default_glyph_info,@function
gs_default_glyph_info:                  # @gs_default_glyph_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
	subq	$216, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 272
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%r8, 24(%rsp)           # 8-byte Spill
	movl	%ecx, %r15d
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %r13
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 64(%rsp)
	movapd	%xmm0, 48(%rsp)
	movl	128(%r13), %ecx
	decl	%ecx
	cmpl	$9, %ecx
	sbbb	%al, %al
	movb	%al, 23(%rsp)           # 1-byte Spill
	movl	$259, %eax              # imm = 0x103
	shrl	%cl, %eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	leaq	88(%rsp), %rbx
	movq	%rbx, %rdi
	callq	gx_path_init_bbox_accumulator
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	gx_path_add_point
	testl	%eax, %eax
	js	.LBB7_1
# BB#2:                                 # %if.end
	movl	%r15d, %ebp
	shrl	%ebp
	andl	$1, %ebp
	leaq	88(%rsp), %r8
	leaq	48(%rsp), %r9
	movq	%r13, %rdi
	movl	%ebp, %esi
	movq	%r14, %rdx
	movq	%r12, %rcx
	callq	*232(%r13)
	testl	%eax, %eax
	js	.LBB7_3
# BB#4:                                 # %if.end.15
	movl	$0, 12(%rsp)            # 4-byte Folded Spill
	testb	$3, %r15b
	movl	%r15d, %r14d
	je	.LBB7_5
# BB#6:                                 # %if.then.17
	movslq	148(%r13), %rbx
	movl	$1, %r13d
	movb	%bl, %cl
	shll	%cl, %r13d
	btl	%ebx, %r14d
	movq	24(%rsp), %r15          # 8-byte Reload
	jae	.LBB7_9
# BB#7:                                 # %if.then.21
	leaq	88(%rsp), %rdi
	leaq	32(%rsp), %rsi
	callq	gx_path_current_point
	testl	%eax, %eax
	js	.LBB7_29
# BB#8:                                 # %cleanup.thread
	cvtsi2sdl	32(%rsp), %xmm0
	movsd	.LCPI7_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	shlq	$4, %rbx
	movsd	%xmm0, 8(%r15,%rbx)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	36(%rsp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%r15,%rbx)
	movl	%r13d, 12(%rsp)         # 4-byte Spill
	jmp	.LBB7_9
.LBB7_1:
	movq	24(%rsp), %r15          # 8-byte Reload
	jmp	.LBB7_27
.LBB7_3:
	movq	24(%rsp), %r15          # 8-byte Reload
	xorl	%ebp, %ebp
	jmp	.LBB7_27
.LBB7_5:
	movq	24(%rsp), %r15          # 8-byte Reload
.LBB7_9:                                # %if.end.40
	testb	$4, %r14b
	je	.LBB7_10
# BB#13:                                # %if.then.43
	leaq	88(%rsp), %rdi
	leaq	32(%rsp), %rsi
	callq	gx_path_bbox
	testl	%eax, %eax
	js	.LBB7_15
# BB#14:                                # %cleanup.76.thread
	xorps	%xmm0, %xmm0
	cvtsi2sdl	32(%rsp), %xmm0
	movsd	.LCPI7_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 56(%r15)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	36(%rsp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 64(%r15)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	40(%rsp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 72(%r15)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	44(%rsp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 80(%r15)
	orl	$4, 12(%rsp)            # 4-byte Folded Spill
.LBB7_10:
	movq	%r12, %r13
	movb	23(%rsp), %r12b         # 1-byte Reload
	movl	16(%rsp), %ecx          # 4-byte Reload
	andl	$1, %ecx
	andb	%cl, %r12b
	movl	$1, %ebx
	movb	%bpl, %cl
	shll	%cl, %ebx
	btl	%ebp, %r14d
	sbbb	%cl, %cl
	andb	%r12b, %cl
	movzbl	%cl, %ecx
	cmpl	$1, %ecx
	jne	.LBB7_18
# BB#11:                                # %if.then.84
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	testq	%r13, %r13
	je	.LBB7_12
# BB#16:                                # %if.else
	movsd	72(%rsp), %xmm1         # xmm1 = mem[0],zero
	movq	%rbp, %rax
	shlq	$4, %rax
	leaq	8(%r15,%rax), %rsi
	movq	%r13, %rdi
	callq	gs_distance_transform
	testl	%eax, %eax
	jns	.LBB7_17
	jmp	.LBB7_28
.LBB7_15:                               # %cleanup.76
	movl	12(%rsp), %ebp          # 4-byte Reload
	jmp	.LBB7_27
.LBB7_29:                               # %cleanup.36
	xorl	%ebp, %ebp
	jmp	.LBB7_27
.LBB7_12:                               # %if.then.87
	movq	%rbp, %rcx
	shlq	$4, %rcx
	movsd	%xmm0, 8(%r15,%rcx)
	movq	72(%rsp), %rdx
	movq	%rdx, 16(%r15,%rcx)
.LBB7_17:                               # %if.end.108
	orl	%ebx, 12(%rsp)          # 4-byte Folded Spill
.LBB7_18:                               # %if.end.111
	movl	$64, %ebx
	movb	%bpl, %cl
	shll	%cl, %ebx
	testl	%r14d, %ebx
	setne	%cl
	andb	%r12b, %cl
	movzbl	%cl, %ecx
	cmpl	$1, %ecx
	jne	.LBB7_19
# BB#20:                                # %if.then.117
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	testq	%r13, %r13
	je	.LBB7_21
# BB#22:                                # %if.else.126
	movsd	56(%rsp), %xmm1         # xmm1 = mem[0],zero
	leaq	40(%r15), %rsi
	movq	%r13, %rdi
	callq	gs_distance_transform
	testl	%eax, %eax
	jns	.LBB7_23
	jmp	.LBB7_28
.LBB7_19:
	movl	12(%rsp), %ebp          # 4-byte Reload
	jmp	.LBB7_24
.LBB7_21:                               # %if.then.120
	movsd	%xmm0, 40(%r15)
	movq	56(%rsp), %rcx
	movq	%rcx, 48(%r15)
.LBB7_23:                               # %if.end.135
	movl	12(%rsp), %ebp          # 4-byte Reload
	orl	%ebx, %ebp
.LBB7_24:                               # %if.end.138
	testb	$8, %r14b
	je	.LBB7_26
# BB#25:                                # %if.then.141
	movl	$0, 88(%r15)
	orl	$8, %ebp
.LBB7_26:                               # %if.end.143
	andl	$16, %r14d
	orl	%r14d, %ebp
.LBB7_27:                               # %out
	movl	%ebp, (%r15)
.LBB7_28:                               # %cleanup.147
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gs_default_glyph_info, .Lfunc_end7-gs_default_glyph_info
	.cfi_endproc

	.globl	gs_no_glyph_outline
	.align	16, 0x90
	.type	gs_no_glyph_outline,@function
gs_no_glyph_outline:                    # @gs_no_glyph_outline
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-21, %eax
	retq
.Lfunc_end8:
	.size	gs_no_glyph_outline, .Lfunc_end8-gs_no_glyph_outline
	.cfi_endproc

	.globl	gs_no_glyph_name
	.align	16, 0x90
	.type	gs_no_glyph_name,@function
gs_no_glyph_name:                       # @gs_no_glyph_name
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-21, %eax
	retq
.Lfunc_end9:
	.size	gs_no_glyph_name, .Lfunc_end9-gs_no_glyph_name
	.cfi_endproc

	.align	16, 0x90
	.type	font_enum_ptrs,@function
font_enum_ptrs:                         # @font_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%ecx, %eax
	cmpl	$4, %ecx
	jbe	.LBB10_1
# BB#2:                                 # %sw.default
	addq	$40, %rsi
	addl	$-5, %ecx
	movl	$16, %edx
	movl	$st_gs_notify_list, %r9d
	jmpq	*st_gs_notify_list+32(%rip) # TAILCALL
.LBB10_1:                               # %entry
	jmpq	*.LJTI10_0(,%rax,8)
.LBB10_3:                               # %sw.bb
	xorl	%eax, %eax
	cmpq	%rsi, 64(%rsi)
	je	.LBB10_10
# BB#4:                                 # %cond.false
	movq	(%rsi), %rax
	jmp	.LBB10_10
.LBB10_5:                               # %sw.bb.1
	xorl	%eax, %eax
	cmpq	%rsi, 64(%rsi)
	je	.LBB10_10
# BB#6:                                 # %cond.false.5
	movq	8(%rsi), %rax
	jmp	.LBB10_10
.LBB10_7:                               # %sw.bb.9
	movq	24(%rsi), %rax
	jmp	.LBB10_10
.LBB10_8:                               # %sw.bb.11
	movq	64(%rsi), %rax
	jmp	.LBB10_10
.LBB10_9:                               # %sw.bb.14
	movq	72(%rsi), %rax
.LBB10_10:                              # %cleanup
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
	retq
.Lfunc_end10:
	.size	font_enum_ptrs, .Lfunc_end10-font_enum_ptrs
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI10_0:
	.quad	.LBB10_3
	.quad	.LBB10_5
	.quad	.LBB10_7
	.quad	.LBB10_8
	.quad	.LBB10_9

	.text
	.align	16, 0x90
	.type	font_reloc_ptrs,@function
font_reloc_ptrs:                        # @font_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp28:
	.cfi_def_cfa_offset 32
.Ltmp29:
	.cfi_offset %rbx, -24
.Ltmp30:
	.cfi_offset %r14, -16
	movq	%rcx, %rbx
	movq	%rdi, %r14
	leaq	40(%r14), %rdi
	movl	$16, %esi
	movl	$st_gs_notify_list, %edx
	callq	*st_gs_notify_list+40(%rip)
	movq	(%rbx), %rax
	movq	(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, (%r14)
	movq	(%rbx), %rax
	movq	8(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 8(%r14)
	movq	(%rbx), %rax
	movq	24(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 24(%r14)
	movq	(%rbx), %rax
	movq	64(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 64(%r14)
	movq	(%rbx), %rax
	movq	72(%r14), %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movq	%rax, 72(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end11:
	.size	font_reloc_ptrs, .Lfunc_end11-font_reloc_ptrs
	.cfi_endproc

	.globl	gs_font_finalize
	.align	16, 0x90
	.type	gs_font_finalize,@function
gs_font_finalize:                       # @gs_font_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp33:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp34:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 48
.Ltmp36:
	.cfi_offset %rbx, -48
.Ltmp37:
	.cfi_offset %r12, -40
.Ltmp38:
	.cfi_offset %r13, -32
.Ltmp39:
	.cfi_offset %r14, -24
.Ltmp40:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	(%rbx), %r15
	movq	8(%rbx), %r12
	leaq	40(%rbx), %r14
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	gs_notify_all
	movq	%rbx, %rdi
	callq	gs_purge_font_from_char_caches
	movq	24(%rbx), %rax
	testq	%rax, %rax
	je	.LBB12_7
# BB#1:                                 # %if.else
	cmpq	%rbx, 64(%rbx)
	je	.LBB12_6
# BB#2:                                 # %if.else.7
	movq	%r15, %rcx
	orq	%r12, %rcx
	jne	.LBB12_4
# BB#3:                                 # %lor.lhs.false.9
	cmpq	%rbx, 8(%rax)
	jne	.LBB12_5
.LBB12_4:                               # %if.then.12
	decl	16(%rax)
.LBB12_5:                               # %if.end.17
	addq	$8, %rax
.LBB12_6:                               # %if.end.17
	movq	%rax, %r13
.LBB12_7:                               # %if.end.17
	testq	%r15, %r15
	je	.LBB12_10
# BB#8:                                 # %land.lhs.true
	cmpq	%rbx, 8(%r15)
	jne	.LBB12_10
# BB#9:                                 # %if.then.21
	movq	%r12, 8(%r15)
.LBB12_10:                              # %if.end.23
	testq	%r12, %r12
	je	.LBB12_13
# BB#11:                                # %if.then.25
	cmpq	%rbx, (%r12)
	jne	.LBB12_16
# BB#12:                                # %if.then.28
	movq	%r15, (%r12)
	jmp	.LBB12_16
.LBB12_13:                              # %if.else.31
	testq	%r13, %r13
	je	.LBB12_16
# BB#14:                                # %land.lhs.true.33
	cmpq	%rbx, (%r13)
	jne	.LBB12_16
# BB#15:                                # %if.then.35
	movq	%r15, (%r13)
.LBB12_16:                              # %if.end.37
	movq	%r14, %rdi
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	jmp	gs_notify_release       # TAILCALL
.Lfunc_end12:
	.size	gs_font_finalize, .Lfunc_end12-gs_font_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	font_ptr_element_enum_ptrs,@function
font_ptr_element_enum_ptrs:             # @font_ptr_element_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %edi
	xorl	%eax, %eax
	shrl	$3, %edi
	je	.LBB13_3
# BB#1:                                 # %if.end
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%edi
	movl	%eax, %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	jne	.LBB13_3
# BB#2:                                 # %sw.bb.i
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%edi
	movq	(%rsi,%rdx,8), %rax
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
.LBB13_3:                               # %cleanup
	retq
.Lfunc_end13:
	.size	font_ptr_element_enum_ptrs, .Lfunc_end13-font_ptr_element_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	font_ptr_element_reloc_ptrs,@function
font_ptr_element_reloc_ptrs:            # @font_ptr_element_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp42:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 32
.Ltmp44:
	.cfi_offset %rbx, -32
.Ltmp45:
	.cfi_offset %r14, -24
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%esi, %ebp
	movq	%rdi, %rbx
	testl	$-8, %ebp
	je	.LBB14_3
# BB#1:                                 # %for.body.lr.ph
	shrl	$3, %ebp
	negl	%ebp
	.align	16, 0x90
.LBB14_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rax
	movq	(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, (%rbx)
	addq	$8, %rbx
	incl	%ebp
	jne	.LBB14_2
.LBB14_3:                               # %for.end
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end14:
	.size	font_ptr_element_reloc_ptrs, .Lfunc_end14-font_ptr_element_reloc_ptrs
	.cfi_endproc

	.globl	gs_font_dir_alloc2
	.align	16, 0x90
	.type	gs_font_dir_alloc2,@function
gs_font_dir_alloc2:                     # @gs_font_dir_alloc2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp47:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp48:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp49:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp51:
	.cfi_def_cfa_offset 48
.Ltmp52:
	.cfi_offset %rbx, -40
.Ltmp53:
	.cfi_offset %r12, -32
.Ltmp54:
	.cfi_offset %r14, -24
.Ltmp55:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$st_font_dir, %esi
	movl	$.L.str.4, %edx
	callq	*72(%r15)
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB15_3
# BB#1:                                 # %if.end.i
	xorl	%esi, %esi
	movl	$224, %edx
	movq	%rbx, %rdi
	callq	memset
	movl	$32000, (%rsp)          # imm = 0x7D00
	movl	$1000000, %ecx          # imm = 0xF4240
	movl	$200, %r8d
	movl	$5000, %r9d             # imm = 0x1388
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	gx_char_cache_alloc
	testl	%eax, %eax
	js	.LBB15_2
# BB#9:                                 # %gs_font_dir_alloc2_limits.exit
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rbx)
	movl	$0, 16(%rbx)
	movl	$50, 20(%rbx)
	movl	$0, 156(%rbx)
	movq	$0, 160(%rbx)
	movl	$1, 192(%rbx)
	movq	%r15, 168(%rbx)
	movq	$0, 176(%rbx)
	movq	$0, 184(%rbx)
	movq	$0, 200(%rbx)
	movq	$0, 208(%rbx)
	movq	$0, 216(%rbx)
	movl	$42, 152(%rbx)
	jmp	.LBB15_7
.LBB15_2:                               # %if.then.4.i
	movl	$.L.str.4, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*24(%r15)
.LBB15_3:                               # %if.then
	movl	$st_font_dir, %esi
	movl	$.L.str.4, %edx
	movq	%r15, %rdi
	callq	*72(%r15)
	movq	%rax, %r12
	xorl	%ebx, %ebx
	testq	%r12, %r12
	je	.LBB15_8
# BB#4:                                 # %if.end.i.14
	xorl	%esi, %esi
	movl	$224, %edx
	movq	%r12, %rdi
	callq	memset
	movl	$100, (%rsp)
	movl	$25000, %ecx            # imm = 0x61A8
	movl	$40, %r8d
	movl	$500, %r9d              # imm = 0x1F4
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	gx_char_cache_alloc
	testl	%eax, %eax
	js	.LBB15_5
# BB#6:                                 # %if.end.6.i.31
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%r12)
	movl	$0, 16(%r12)
	movl	$20, 20(%r12)
	movl	$0, 156(%r12)
	movq	$0, 160(%r12)
	movl	$1, 192(%r12)
	movq	%r15, 168(%r12)
	movq	$0, 176(%r12)
	movq	$0, 184(%r12)
	movq	$0, 200(%r12)
	movq	$0, 208(%r12)
	movq	$0, 216(%r12)
	movl	$42, 152(%r12)
	movq	%r12, %rbx
.LBB15_7:                               # %if.end.4
	movq	$cc_no_mark_glyph, 128(%rbx)
	movq	$0, 136(%rbx)
	jmp	.LBB15_8
.LBB15_5:                               # %if.then.4.i.16
	movl	$.L.str.4, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	*24(%r15)
	xorl	%ebx, %ebx
.LBB15_8:                               # %cleanup
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end15:
	.size	gs_font_dir_alloc2, .Lfunc_end15-gs_font_dir_alloc2
	.cfi_endproc

	.globl	gs_font_dir_alloc2_limits
	.align	16, 0x90
	.type	gs_font_dir_alloc2_limits,@function
gs_font_dir_alloc2_limits:              # @gs_font_dir_alloc2_limits
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
	subq	$24, %rsp
.Ltmp62:
	.cfi_def_cfa_offset 80
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
	movl	%r9d, %r12d
	movl	%r8d, %r13d
	movl	%ecx, %ebp
	movl	%edx, 20(%rsp)          # 4-byte Spill
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$st_font_dir, %esi
	movl	$.L.str.4, %edx
	callq	*72(%r14)
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB16_4
# BB#1:                                 # %if.end
	xorl	%esi, %esi
	movl	$224, %edx
	movq	%rbx, %rdi
	callq	memset
	movl	80(%rsp), %eax
	movl	%eax, (%rsp)
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	movl	%ebp, %ecx
	movl	%r13d, %r8d
	movl	%r12d, %r9d
	callq	gx_char_cache_alloc
	testl	%eax, %eax
	js	.LBB16_2
# BB#3:                                 # %if.end.6
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rbx)
	movl	$0, 16(%rbx)
	movl	20(%rsp), %eax          # 4-byte Reload
	movl	%eax, 20(%rbx)
	movl	$0, 156(%rbx)
	movq	$0, 160(%rbx)
	movl	$1, 192(%rbx)
	movq	%r14, 168(%rbx)
	movq	$0, 176(%rbx)
	movq	$0, 184(%rbx)
	movq	$0, 200(%rbx)
	movq	$0, 208(%rbx)
	movq	$0, 216(%rbx)
	movl	$42, 152(%rbx)
	movq	%rbx, %rax
	jmp	.LBB16_4
.LBB16_2:                               # %if.then.4
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	*24(%r14)
	xorl	%eax, %eax
.LBB16_4:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gs_font_dir_alloc2_limits, .Lfunc_end16-gs_font_dir_alloc2_limits
	.cfi_endproc

	.align	16, 0x90
	.type	cc_no_mark_glyph,@function
cc_no_mark_glyph:                       # @cc_no_mark_glyph
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end17:
	.size	cc_no_mark_glyph, .Lfunc_end17-cc_no_mark_glyph
	.cfi_endproc

	.globl	gs_font_alloc
	.align	16, 0x90
	.type	gs_font_alloc,@function
gs_font_alloc:                          # @gs_font_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp69:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp70:
	.cfi_def_cfa_offset 24
	pushq	%r13
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
	.cfi_offset %r13, -32
.Ltmp77:
	.cfi_offset %r14, -24
.Ltmp78:
	.cfi_offset %r15, -16
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	%rsi, %r13
	movq	%rdi, %r15
	movq	%r8, %rdx
	callq	*72(%r15)
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB18_2
# BB#1:                                 # %if.end
	movl	(%r13), %edx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	memset
	movq	%r15, 16(%rbx)
	movq	%r12, 24(%rbx)
	movq	%rbx, %r12
	addq	$40, %r12
	movq	%r15, %rdi
	callq	*32(%r15)
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	gs_notify_init
	movl	$1, %esi
	movq	%r15, %rdi
	callq	gs_next_ids
	movq	%rax, 56(%rbx)
	movq	%rbx, 64(%rbx)
	movl	$0, 144(%rbx)
	movq	$0, 136(%rbx)
	movq	96(%r14), %rax
	movq	%rax, 264(%rbx)
	movups	80(%r14), %xmm0
	movups	%xmm0, 248(%rbx)
	movups	64(%r14), %xmm0
	movups	%xmm0, 232(%rbx)
	movups	(%r14), %xmm0
	movups	16(%r14), %xmm1
	movups	32(%r14), %xmm2
	movups	48(%r14), %xmm3
	movups	%xmm3, 216(%rbx)
	movups	%xmm2, 200(%rbx)
	movups	%xmm1, 184(%rbx)
	movups	%xmm0, 168(%rbx)
	movq	%rbx, %rax
.LBB18_2:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end18:
	.size	gs_font_alloc, .Lfunc_end18-gs_font_alloc
	.cfi_endproc

	.globl	gs_font_notify_init
	.align	16, 0x90
	.type	gs_font_notify_init,@function
gs_font_notify_init:                    # @gs_font_notify_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	16(%rbx), %rdi
	addq	$40, %rbx
	callq	*32(%rdi)
	movq	%rbx, %rdi
	movq	%rax, %rsi
	popq	%rbx
	jmp	gs_notify_init          # TAILCALL
.Lfunc_end19:
	.size	gs_font_notify_init, .Lfunc_end19-gs_font_notify_init
	.cfi_endproc

	.globl	gs_font_base_alloc
	.align	16, 0x90
	.type	gs_font_base_alloc,@function
gs_font_base_alloc:                     # @gs_font_base_alloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp81:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp82:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp83:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp84:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp85:
	.cfi_def_cfa_offset 48
.Ltmp86:
	.cfi_offset %rbx, -48
.Ltmp87:
	.cfi_offset %r12, -40
.Ltmp88:
	.cfi_offset %r13, -32
.Ltmp89:
	.cfi_offset %r14, -24
.Ltmp90:
	.cfi_offset %r15, -16
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	%rsi, %r13
	movq	%rdi, %r15
	movq	%r8, %rdx
	callq	*72(%r15)
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB20_2
# BB#1:                                 # %gs_font_alloc.exit
	movl	(%r13), %edx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	memset
	movq	%r15, 16(%rbx)
	movq	%r12, 24(%rbx)
	movq	%rbx, %r12
	addq	$40, %r12
	movq	%r15, %rdi
	callq	*32(%r15)
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	gs_notify_init
	movl	$1, %esi
	movq	%r15, %rdi
	callq	gs_next_ids
	movq	%rax, 56(%rbx)
	movq	%rbx, 64(%rbx)
	movl	$0, 144(%rbx)
	movq	$0, 136(%rbx)
	movq	96(%r14), %rax
	movq	%rax, 264(%rbx)
	movups	80(%r14), %xmm0
	movups	%xmm0, 248(%rbx)
	movups	64(%r14), %xmm0
	movups	%xmm0, 232(%rbx)
	movups	(%r14), %xmm0
	movups	16(%r14), %xmm1
	movups	32(%r14), %xmm2
	movups	48(%r14), %xmm3
	movups	%xmm3, 216(%rbx)
	movups	%xmm2, 200(%rbx)
	movups	%xmm1, 184(%rbx)
	movups	%xmm0, 168(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 392(%rbx)
	movups	%xmm0, 376(%rbx)
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, 408(%rbx)
	movq	$0, 416(%rbx)
	movq	$-1, 440(%rbx)
	movq	%rbx, %rax
.LBB20_2:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end20:
	.size	gs_font_base_alloc, .Lfunc_end20-gs_font_base_alloc
	.cfi_endproc

	.globl	gs_font_notify_register
	.align	16, 0x90
	.type	gs_font_notify_register,@function
gs_font_notify_register:                # @gs_font_notify_register
	.cfi_startproc
# BB#0:                                 # %entry
	addq	$40, %rdi
	jmp	gs_notify_register      # TAILCALL
.Lfunc_end21:
	.size	gs_font_notify_register, .Lfunc_end21-gs_font_notify_register
	.cfi_endproc

	.globl	gs_font_notify_unregister
	.align	16, 0x90
	.type	gs_font_notify_unregister,@function
gs_font_notify_unregister:              # @gs_font_notify_unregister
	.cfi_startproc
# BB#0:                                 # %entry
	addq	$40, %rdi
	jmp	gs_notify_unregister    # TAILCALL
.Lfunc_end22:
	.size	gs_font_notify_unregister, .Lfunc_end22-gs_font_notify_unregister
	.cfi_endproc

	.globl	gs_definefont
	.align	16, 0x90
	.type	gs_definefont,@function
gs_definefont:                          # @gs_definefont
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp91:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp92:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp93:
	.cfi_def_cfa_offset 32
.Ltmp94:
	.cfi_offset %rbx, -24
.Ltmp95:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%r14, 24(%rbx)
	movq	%rbx, 64(%rbx)
	callq	*168(%rbx)
	testl	%eax, %eax
	js	.LBB23_1
# BB#2:                                 # %if.end
	movq	(%r14), %rax
	movq	%rax, (%rbx)
	testq	%rax, %rax
	je	.LBB23_4
# BB#3:                                 # %if.then.i
	movq	%rbx, 8(%rax)
.LBB23_4:                               # %font_link_first.exit
	movq	$0, 8(%rbx)
	movq	%rbx, (%r14)
	xorl	%eax, %eax
	jmp	.LBB23_5
.LBB23_1:                               # %if.then
	movq	$0, 64(%rbx)
.LBB23_5:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end23:
	.size	gs_definefont, .Lfunc_end23-gs_definefont
	.cfi_endproc

	.globl	gs_font_find_similar
	.align	16, 0x90
	.type	gs_font_find_similar,@function
gs_font_find_similar:                   # @gs_font_find_similar
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
	pushq	%r12
.Ltmp99:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp100:
	.cfi_def_cfa_offset 48
.Ltmp101:
	.cfi_offset %rbx, -48
.Ltmp102:
	.cfi_offset %r12, -40
.Ltmp103:
	.cfi_offset %r14, -32
.Ltmp104:
	.cfi_offset %r15, -24
.Ltmp105:
	.cfi_offset %rbp, -16
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	(%rdi), %rbp
	xorl	%r15d, %r15d
	testq	%rbp, %rbp
	je	.LBB24_7
# BB#1:                                 # %for.body.lr.ph
	movq	(%r14), %rbx
	.align	16, 0x90
.LBB24_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rbx, %rbp
	je	.LBB24_6
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB24_2 Depth=1
	movl	128(%rbp), %eax
	cmpl	128(%rbx), %eax
	jne	.LBB24_6
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB24_2 Depth=1
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*%r12
	testl	%eax, %eax
	jne	.LBB24_5
.LBB24_6:                               # %for.inc
                                        #   in Loop: Header=BB24_2 Depth=1
	movq	(%rbp), %rbp
	testq	%rbp, %rbp
	jne	.LBB24_2
	jmp	.LBB24_7
.LBB24_5:                               # %cleanup
	movq	%rbp, (%r14)
	movl	%eax, %r15d
.LBB24_7:                               # %cleanup.7
	movl	%r15d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gs_font_find_similar, .Lfunc_end24-gs_font_find_similar
	.cfi_endproc

	.globl	gs_scalefont
	.align	16, 0x90
	.type	gs_scalefont,@function
gs_scalefont:                           # @gs_scalefont
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp106:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp107:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp108:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp109:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp110:
	.cfi_def_cfa_offset 64
.Ltmp111:
	.cfi_offset %rbx, -40
.Ltmp112:
	.cfi_offset %r12, -32
.Ltmp113:
	.cfi_offset %r14, -24
.Ltmp114:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	leaq	(%rsp), %r12
	movaps	%xmm0, %xmm1
	movq	%r12, %rdi
	callq	gs_make_scaling
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	movq	%r14, %rcx
	callq	gs_makefont
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end25:
	.size	gs_scalefont, .Lfunc_end25-gs_scalefont
	.cfi_endproc

	.globl	gs_makefont
	.align	16, 0x90
	.type	gs_makefont,@function
gs_makefont:                            # @gs_makefont
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp116:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp117:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp118:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp119:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp120:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp121:
	.cfi_def_cfa_offset 112
.Ltmp122:
	.cfi_offset %rbx, -56
.Ltmp123:
	.cfi_offset %r12, -48
.Ltmp124:
	.cfi_offset %r13, -40
.Ltmp125:
	.cfi_offset %r14, -32
.Ltmp126:
	.cfi_offset %r15, -24
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	%rdx, %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movq	8(%r12), %rbp
	movq	16(%rbx), %r13
	leaq	80(%rbx), %rdi
	leaq	32(%rsp), %rdx
	movq	%rax, %rsi
	callq	gs_matrix_multiply
	testl	%eax, %eax
	js	.LBB26_28
# BB#1:                                 # %if.end
	movl	128(%rbx), %eax
	xorl	%r15d, %r15d
	testl	%eax, %eax
	movl	$0, %edx
	je	.LBB26_14
# BB#2:                                 # %for.cond.preheader
	movl	$1, %edx
	xorl	%r15d, %r15d
	testq	%rbp, %rbp
	je	.LBB26_14
# BB#3:                                 # %for.body.lr.ph
	movss	32(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	36(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	40(%rsp), %xmm2         # xmm2 = mem[0],zero,zero,zero
	movss	44(%rsp), %xmm3         # xmm3 = mem[0],zero,zero,zero
	movss	48(%rsp), %xmm4         # xmm4 = mem[0],zero,zero,zero
	movss	52(%rsp), %xmm5         # xmm5 = mem[0],zero,zero,zero
	.align	16, 0x90
.LBB26_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %r15
	cmpl	%eax, 128(%r15)
	jne	.LBB26_13
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB26_4 Depth=1
	movq	64(%r15), %rcx
	cmpq	64(%rbx), %rcx
	jne	.LBB26_13
# BB#6:                                 # %land.lhs.true.9
                                        #   in Loop: Header=BB26_4 Depth=1
	movss	80(%r15), %xmm6         # xmm6 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm6
	jne	.LBB26_13
	jp	.LBB26_13
# BB#7:                                 # %land.lhs.true.13
                                        #   in Loop: Header=BB26_4 Depth=1
	movss	84(%r15), %xmm6         # xmm6 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm6
	jne	.LBB26_13
	jp	.LBB26_13
# BB#8:                                 # %land.lhs.true.17
                                        #   in Loop: Header=BB26_4 Depth=1
	movss	88(%r15), %xmm6         # xmm6 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm6
	jne	.LBB26_13
	jp	.LBB26_13
# BB#9:                                 # %land.lhs.true.21
                                        #   in Loop: Header=BB26_4 Depth=1
	movss	92(%r15), %xmm6         # xmm6 = mem[0],zero,zero,zero
	ucomiss	%xmm3, %xmm6
	jne	.LBB26_13
	jp	.LBB26_13
# BB#10:                                # %land.lhs.true.25
                                        #   in Loop: Header=BB26_4 Depth=1
	movss	96(%r15), %xmm6         # xmm6 = mem[0],zero,zero,zero
	ucomiss	%xmm4, %xmm6
	jne	.LBB26_13
	jp	.LBB26_13
# BB#11:                                # %land.lhs.true.29
                                        #   in Loop: Header=BB26_4 Depth=1
	movss	100(%r15), %xmm6        # xmm6 = mem[0],zero,zero,zero
	ucomiss	%xmm5, %xmm6
	jne	.LBB26_13
	jp	.LBB26_13
	jmp	.LBB26_12
	.align	16, 0x90
.LBB26_13:                              # %for.inc
                                        #   in Loop: Header=BB26_4 Depth=1
	movq	(%r15), %rbp
	testq	%rbp, %rbp
	jne	.LBB26_4
.LBB26_14:                              # %if.end.35
	movl	%edx, 12(%rsp)          # 4-byte Spill
	movq	72(%r13), %rbp
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	*128(%r13)
	movl	$.L.str.5, %edx
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	*%rbp
	movq	%rax, %r14
	movl	$-25, %eax
	testq	%r14, %r14
	je	.LBB26_28
# BB#15:                                # %if.end.40
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	*120(%r13)
	movl	%eax, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movq	%r14, %rbp
	addq	$40, %rbp
	movq	16(%r14), %rdi
	callq	*32(%rdi)
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	gs_notify_init
	movq	48(%rsp), %rax
	movq	%rax, 96(%r14)
	movups	32(%rsp), %xmm0
	movups	%xmm0, 80(%r14)
	movq	$0, 72(%r14)
	movq	%r12, 24(%r14)
	movq	64(%rbx), %rax
	movq	%rax, 64(%r14)
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	%r14, (%rcx)
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	16(%rsp), %rdx          # 8-byte Reload
	callq	*176(%r14)
	testl	%eax, %eax
	js	.LBB26_28
# BB#16:                                # %if.end.52
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	je	.LBB26_26
# BB#17:                                # %if.then.54
	movl	16(%r12), %eax
	testq	%r15, %r15
	je	.LBB26_23
# BB#18:                                # %if.then.54
	cmpl	20(%r12), %eax
	jb	.LBB26_23
# BB#19:                                # %do.end.63
	movq	8(%r15), %rcx
	testq	%rcx, %rcx
	je	.LBB26_21
# BB#20:                                # %if.then.67
	movq	$0, (%rcx)
	jmp	.LBB26_22
.LBB26_26:                              # %if.else.78
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%r14)
	jmp	.LBB26_27
.LBB26_21:                              # %if.else.70
	movq	$0, 8(%r12)
.LBB26_22:                              # %if.end.72
	decl	%eax
	movl	%eax, 16(%r12)
	movq	$0, 8(%r15)
.LBB26_23:                              # %if.end.75
	incl	%eax
	movl	%eax, 16(%r12)
	movq	8(%r12), %rax
	movq	%rax, (%r14)
	testq	%rax, %rax
	je	.LBB26_25
# BB#24:                                # %if.then.i
	movq	%r14, 8(%rax)
.LBB26_25:                              # %font_link_first.exit
	movq	$0, 8(%r14)
	movq	%r14, 8(%r12)
.LBB26_27:                              # %cleanup
	movl	$1, %eax
.LBB26_28:                              # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB26_12:                              # %if.then.33
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%r15, (%rax)
	xorl	%eax, %eax
	jmp	.LBB26_28
.Lfunc_end26:
	.size	gs_makefont, .Lfunc_end26-gs_makefont
	.cfi_endproc

	.globl	gs_set_currentfont
	.align	16, 0x90
	.type	gs_set_currentfont,@function
gs_set_currentfont:                     # @gs_set_currentfont
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 1792(%rdi)
	movl	$0, 1844(%rdi)
	retq
.Lfunc_end27:
	.size	gs_set_currentfont, .Lfunc_end27-gs_set_currentfont
	.cfi_endproc

	.globl	gs_setfont
	.align	16, 0x90
	.type	gs_setfont,@function
gs_setfont:                             # @gs_setfont
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 1800(%rdi)
	movq	%rsi, 1792(%rdi)
	movl	$0, 1844(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end28:
	.size	gs_setfont, .Lfunc_end28-gs_setfont
	.cfi_endproc

	.globl	gs_currentfont
	.align	16, 0x90
	.type	gs_currentfont,@function
gs_currentfont:                         # @gs_currentfont
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1792(%rdi), %rax
	retq
.Lfunc_end29:
	.size	gs_currentfont, .Lfunc_end29-gs_currentfont
	.cfi_endproc

	.globl	gs_rootfont
	.align	16, 0x90
	.type	gs_rootfont,@function
gs_rootfont:                            # @gs_rootfont
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1800(%rdi), %rax
	retq
.Lfunc_end30:
	.size	gs_rootfont, .Lfunc_end30-gs_rootfont
	.cfi_endproc

	.globl	gs_cachestatus
	.align	16, 0x90
	.type	gs_cachestatus,@function
gs_cachestatus:                         # @gs_cachestatus
	.cfi_startproc
# BB#0:                                 # %entry
	movl	68(%rdi), %eax
	movl	%eax, (%rsi)
	movl	108(%rdi), %eax
	movl	%eax, 4(%rsi)
	movl	24(%rdi), %eax
	movl	%eax, 8(%rsi)
	movl	28(%rdi), %eax
	movl	%eax, 12(%rsi)
	movl	72(%rdi), %eax
	movl	%eax, 16(%rsi)
	movl	112(%rdi), %eax
	movl	%eax, 20(%rsi)
	movl	124(%rdi), %eax
	movl	%eax, 24(%rsi)
	retq
.Lfunc_end31:
	.size	gs_cachestatus, .Lfunc_end31-gs_cachestatus
	.cfi_endproc

	.globl	gs_setcachesize
	.align	16, 0x90
	.type	gs_setcachesize,@function
gs_setcachesize:                        # @gs_setcachesize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp129:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp130:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp131:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp132:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp133:
	.cfi_def_cfa_offset 64
.Ltmp134:
	.cfi_offset %rbx, -48
.Ltmp135:
	.cfi_offset %r12, -40
.Ltmp136:
	.cfi_offset %r14, -32
.Ltmp137:
	.cfi_offset %r15, -24
.Ltmp138:
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movq	8(%r12), %rbp
	movq	168(%r12), %rax
	movq	(%rax), %r14
	cmpl	$100000000, %edx        # imm = 0x5F5E100
	movl	$100000000, %eax        # imm = 0x5F5E100
	cmovbel	%edx, %eax
	cmpl	$100000, %edx           # imm = 0x186A0
	movl	$100000, %r15d          # imm = 0x186A0
	cmovael	%eax, %r15d
	jmp	.LBB32_1
	.align	16, 0x90
.LBB32_4:                               # %for.inc
                                        #   in Loop: Header=BB32_1 Depth=1
	movq	(%rbp), %rbp
.LBB32_1:                               # %entry
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbp, %rbp
	je	.LBB32_5
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB32_1 Depth=1
	movq	%rbp, %rdi
	callq	gs_purge_font_from_char_caches_completely
	movl	%eax, %ebx
	testl	%ebx, %ebx
	je	.LBB32_4
# BB#3:                                 # %if.then.6
                                        #   in Loop: Header=BB32_1 Depth=1
	movl	%ebx, %edi
	callq	gs_errstr
	movq	%rax, (%rsp)
	movl	$.L__func__.gs_setcachesize, %edi
	movl	$.L.str.6, %esi
	movl	$662, %edx              # imm = 0x296
	movl	$1, %ecx
	movl	$.L.str.7, %r9d
	xorl	%eax, %eax
	movl	%ebx, %r8d
	callq	gs_throw_imp
	jmp	.LBB32_4
.LBB32_5:                               # %for.end
	movq	32(%r12), %rsi
	movl	$.L.str.8, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	movq	96(%r12), %rsi
	movl	$.L.str.9, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	movl	%r15d, 108(%r12)
	movq	200(%r14), %rsi
	movl	28(%r12), %r8d
	movl	112(%r12), %r9d
	movl	124(%r12), %eax
	movl	%eax, (%rsp)
	movq	%r14, %rdi
	movq	%r12, %rdx
	movl	%r15d, %ecx
	callq	gx_char_cache_alloc
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gs_setcachesize, .Lfunc_end32-gs_setcachesize
	.cfi_endproc

	.globl	gs_setcachelower
	.align	16, 0x90
	.type	gs_setcachelower,@function
gs_setcachelower:                       # @gs_setcachelower
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testl	%esi, %esi
	cmovsl	%eax, %esi
	movl	%esi, 120(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end33:
	.size	gs_setcachelower, .Lfunc_end33-gs_setcachelower
	.cfi_endproc

	.globl	gs_setcacheupper
	.align	16, 0x90
	.type	gs_setcacheupper,@function
gs_setcacheupper:                       # @gs_setcacheupper
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testl	%esi, %esi
	cmovsl	%eax, %esi
	movl	%esi, 124(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end34:
	.size	gs_setcacheupper, .Lfunc_end34-gs_setcacheupper
	.cfi_endproc

	.globl	gs_setaligntopixels
	.align	16, 0x90
	.type	gs_setaligntopixels,@function
gs_setaligntopixels:                    # @gs_setaligntopixels
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, 156(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end35:
	.size	gs_setaligntopixels, .Lfunc_end35-gs_setaligntopixels
	.cfi_endproc

	.globl	gs_setgridfittt
	.align	16, 0x90
	.type	gs_setgridfittt,@function
gs_setgridfittt:                        # @gs_setgridfittt
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, 192(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end36:
	.size	gs_setgridfittt, .Lfunc_end36-gs_setgridfittt
	.cfi_endproc

	.globl	gs_currentcachesize
	.align	16, 0x90
	.type	gs_currentcachesize,@function
gs_currentcachesize:                    # @gs_currentcachesize
	.cfi_startproc
# BB#0:                                 # %entry
	movl	108(%rdi), %eax
	retq
.Lfunc_end37:
	.size	gs_currentcachesize, .Lfunc_end37-gs_currentcachesize
	.cfi_endproc

	.globl	gs_currentcachelower
	.align	16, 0x90
	.type	gs_currentcachelower,@function
gs_currentcachelower:                   # @gs_currentcachelower
	.cfi_startproc
# BB#0:                                 # %entry
	movl	120(%rdi), %eax
	retq
.Lfunc_end38:
	.size	gs_currentcachelower, .Lfunc_end38-gs_currentcachelower
	.cfi_endproc

	.globl	gs_currentcacheupper
	.align	16, 0x90
	.type	gs_currentcacheupper,@function
gs_currentcacheupper:                   # @gs_currentcacheupper
	.cfi_startproc
# BB#0:                                 # %entry
	movl	124(%rdi), %eax
	retq
.Lfunc_end39:
	.size	gs_currentcacheupper, .Lfunc_end39-gs_currentcacheupper
	.cfi_endproc

	.globl	gs_currentaligntopixels
	.align	16, 0x90
	.type	gs_currentaligntopixels,@function
gs_currentaligntopixels:                # @gs_currentaligntopixels
	.cfi_startproc
# BB#0:                                 # %entry
	movl	156(%rdi), %eax
	retq
.Lfunc_end40:
	.size	gs_currentaligntopixels, .Lfunc_end40-gs_currentaligntopixels
	.cfi_endproc

	.globl	gs_currentgridfittt
	.align	16, 0x90
	.type	gs_currentgridfittt,@function
gs_currentgridfittt:                    # @gs_currentgridfittt
	.cfi_startproc
# BB#0:                                 # %entry
	movl	192(%rdi), %eax
	retq
.Lfunc_end41:
	.size	gs_currentgridfittt, .Lfunc_end41-gs_currentgridfittt
	.cfi_endproc

	.globl	gs_purge_font
	.align	16, 0x90
	.type	gs_purge_font,@function
gs_purge_font:                          # @gs_purge_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp139:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp140:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp141:
	.cfi_def_cfa_offset 32
.Ltmp142:
	.cfi_offset %rbx, -32
.Ltmp143:
	.cfi_offset %r14, -24
.Ltmp144:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	24(%rbx), %r15
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	testq	%rax, %rax
	je	.LBB42_2
# BB#1:                                 # %if.then
	movq	%rcx, 8(%rax)
	movq	$0, (%rbx)
.LBB42_2:                               # %if.end
	testq	%rcx, %rcx
	je	.LBB42_4
# BB#3:                                 # %if.then.6
	movq	%rax, (%rcx)
	movq	$0, 8(%rbx)
	jmp	.LBB42_9
.LBB42_4:                               # %if.else
	cmpq	%rbx, (%r15)
	je	.LBB42_5
# BB#6:                                 # %if.else.12
	cmpq	%rbx, 8(%r15)
	je	.LBB42_7
# BB#8:                                 # %if.else.16
	callq	gs_program_name
	movq	%rax, %r14
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.6, %edi
	movl	$750, %esi              # imm = 0x2EE
	callq	lprintf_file_and_line
	movl	$.L.str.10, %edi
	xorl	%eax, %eax
	movq	%rbx, %rsi
	callq	errprintf_nomem
	jmp	.LBB42_9
.LBB42_5:                               # %if.then.10
	movq	%rax, (%r15)
	jmp	.LBB42_9
.LBB42_7:                               # %if.then.14
	movq	%rax, 8(%r15)
.LBB42_9:                               # %if.end.21
	movq	8(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB42_14
# BB#10:
	addq	$8, %r15
	.align	16, 0x90
.LBB42_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rbx, 64(%rdi)
	jne	.LBB42_13
# BB#12:                                # %if.then.25
                                        #   in Loop: Header=BB42_11 Depth=1
	callq	gs_purge_font
	testl	%eax, %eax
	movq	%r15, %rdi
	js	.LBB42_15
.LBB42_13:                              # %for.cond.backedge
                                        #   in Loop: Header=BB42_11 Depth=1
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	jne	.LBB42_11
.LBB42_14:                              # %for.end
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%r15
	jmp	gs_purge_font_from_char_caches # TAILCALL
.LBB42_15:                              # %cleanup.35
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end42:
	.size	gs_purge_font, .Lfunc_end42-gs_purge_font
	.cfi_endproc

	.globl	gs_find_font_by_id
	.align	16, 0x90
	.type	gs_find_font_by_id,@function
gs_find_font_by_id:                     # @gs_find_font_by_id
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp145:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp146:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp147:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp148:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp149:
	.cfi_def_cfa_offset 48
.Ltmp150:
	.cfi_offset %rbx, -40
.Ltmp151:
	.cfi_offset %r12, -32
.Ltmp152:
	.cfi_offset %r14, -24
.Ltmp153:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	(%rdi), %rbx
	xorl	%r15d, %r15d
	testq	%rbx, %rbx
	je	.LBB43_6
# BB#1:
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB43_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r12, 56(%rbx)
	jne	.LBB43_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB43_2 Depth=1
	leaq	80(%rbx), %rdi
	movq	%r14, %rsi
	callq	gs_matrix_compare
	testl	%eax, %eax
	je	.LBB43_4
.LBB43_5:                               # %for.inc
                                        #   in Loop: Header=BB43_2 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB43_2
	jmp	.LBB43_6
.LBB43_4:
	movq	%rbx, %r15
.LBB43_6:                               # %cleanup
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end43:
	.size	gs_find_font_by_id, .Lfunc_end43-gs_find_font_by_id
	.cfi_endproc

	.globl	gs_base_make_font
	.align	16, 0x90
	.type	gs_base_make_font,@function
gs_base_make_font:                      # @gs_base_make_font
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rcx), %rdi
	movq	16(%rdi), %rsi
	addq	$408, %rdi              # imm = 0x198
	movl	$.L.str.11, %edx
	jmp	uid_copy                # TAILCALL
.Lfunc_end44:
	.size	gs_base_make_font, .Lfunc_end44-gs_base_make_font
	.cfi_endproc

	.globl	gs_font_glyph_is_notdef
	.align	16, 0x90
	.type	gs_font_glyph_is_notdef,@function
gs_font_glyph_is_notdef:                # @gs_font_glyph_is_notdef
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp154:
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	cmpq	$2147483647, %rsi       # imm = 0x7FFFFFFF
	je	.LBB45_9
# BB#1:                                 # %if.end
	testq	$-2147483648, %rsi      # imm = 0xFFFFFFFF80000000
	je	.LBB45_3
# BB#2:                                 # %if.then.2
	movl	$2147483648, %eax       # imm = 0x80000000
	cmpq	%rax, %rsi
	sete	%al
	movzbl	%al, %eax
	addq	$24, %rsp
	retq
.LBB45_3:                               # %if.end.4
	leaq	8(%rsp), %rdx
	callq	*240(%rdi)
	testl	%eax, %eax
	js	.LBB45_4
# BB#5:                                 # %land.lhs.true
	cmpl	$7, 16(%rsp)
	jne	.LBB45_6
# BB#7:                                 # %land.rhs
	movq	8(%rsp), %rdi
	movl	$.L.str.12, %esi
	movl	$7, %edx
	callq	memcmp
	testl	%eax, %eax
	sete	%al
	jmp	.LBB45_8
.LBB45_4:
	xorl	%eax, %eax
	jmp	.LBB45_8
.LBB45_6:
	xorl	%eax, %eax
.LBB45_8:                               # %land.end
	movzbl	%al, %eax
.LBB45_9:                               # %cleanup
	addq	$24, %rsp
	retq
.Lfunc_end45:
	.size	gs_font_glyph_is_notdef, .Lfunc_end45-gs_font_glyph_is_notdef
	.cfi_endproc

	.globl	gs_base_same_font
	.align	16, 0x90
	.type	gs_base_same_font,@function
gs_base_same_font:                      # @gs_base_same_font
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	.align	16, 0x90
.LBB46_1:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %r8
	movq	64(%r8), %rax
	cmpq	%r8, %rax
	jne	.LBB46_1
# BB#2:                                 # %while.cond.2.i.preheader
	movq	%rsi, %rax
	.align	16, 0x90
.LBB46_3:                               # %while.cond.2.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	movq	64(%rcx), %rax
	cmpq	%rcx, %rax
	jne	.LBB46_3
# BB#4:                                 # %gs_default_same_font.exit
	xorl	%eax, %eax
	cmpq	%r8, %rcx
	cmovel	%edx, %eax
	testb	$4, %dl
	je	.LBB46_8
# BB#5:                                 # %gs_default_same_font.exit
	testl	%eax, %eax
	jne	.LBB46_8
# BB#6:                                 # %if.then.2
	movl	440(%rdi), %ecx
	movl	440(%rsi), %edx
	movl	%ecx, %esi
	andl	%edx, %esi
	cmpl	$-1, %esi
	je	.LBB46_8
# BB#7:                                 # %if.then.5
	cmpl	%edx, %ecx
	sete	%al
	movzbl	%al, %eax
	shll	$2, %eax
.LBB46_8:                               # %if.end.12
	retq
.Lfunc_end46:
	.size	gs_base_same_font, .Lfunc_end46-gs_base_same_font
	.cfi_endproc

	.align	16, 0x90
	.type	font_dir_enum_ptrs,@function
font_dir_enum_ptrs:                     # @font_dir_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp155:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp156:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp157:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp158:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp159:
	.cfi_def_cfa_offset 48
.Ltmp160:
	.cfi_offset %rbx, -48
.Ltmp161:
	.cfi_offset %r12, -40
.Ltmp162:
	.cfi_offset %r14, -32
.Ltmp163:
	.cfi_offset %r15, -24
.Ltmp164:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movl	%ecx, %r12d
	movq	%rsi, %r15
	movl	%r12d, %eax
	cmpl	$7, %r12d
	jbe	.LBB47_1
# BB#2:                                 # %sw.default
	xorl	%ebx, %ebx
	addl	$-8, %r12d
	movl	104(%r15), %ecx
	movl	$1, %edx
	je	.LBB47_5
# BB#3:                                 # %if.else
	movl	144(%r15), %eax
	incl	%eax
	cmpl	%eax, %r12d
	movl	%r12d, %edx
	jne	.LBB47_5
# BB#4:                                 # %for.cond.preheader
	movl	148(%r15), %ebx
	incl	%ebx
	xorl	%eax, %eax
	cmpl	%ecx, %ebx
	movl	$1, %edx
	ja	.LBB47_10
.LBB47_5:                               # %for.body.lr.ph
	movq	96(%r15), %rsi
	xorl	%eax, %eax
	.align	16, 0x90
.LBB47_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %ebp
	movq	(%rsi,%rbp,8), %rbp
	testq	%rbp, %rbp
	je	.LBB47_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB47_6 Depth=1
	decl	%edx
	je	.LBB47_8
.LBB47_9:                               # %for.inc
                                        #   in Loop: Header=BB47_6 Depth=1
	incl	%ebx
	cmpl	%ecx, %ebx
	jbe	.LBB47_6
	jmp	.LBB47_10
.LBB47_1:                               # %entry
	jmpq	*.LJTI47_0(,%rax,8)
.LBB47_11:                              # %sw.bb
	movq	8(%r15), %rax
	jmp	.LBB47_12
.LBB47_8:                               # %cleanup
	movq	40(%rbp), %rsi
	movq	136(%r15), %rdx
	callq	*128(%r15)
	movl	%r12d, 144(%r15)
	movl	%ebx, 148(%r15)
	movl	68(%rbp), %eax
	negq	%rax
	imulq	$112, %rax, %rax
	addq	24(%rbp), %rax
	jmp	.LBB47_12
.LBB47_13:                              # %sw.bb.22
	movq	32(%r15), %rax
	jmp	.LBB47_12
.LBB47_14:                              # %sw.bb.24
	movq	96(%r15), %rax
	jmp	.LBB47_12
.LBB47_15:                              # %sw.bb.28
	movq	136(%r15), %rax
	jmp	.LBB47_12
.LBB47_16:                              # %sw.bb.32
	movq	160(%r15), %rax
	jmp	.LBB47_12
.LBB47_17:                              # %sw.bb.34
	movq	176(%r15), %rax
	jmp	.LBB47_12
.LBB47_18:                              # %sw.bb.36
	movq	184(%r15), %rax
	jmp	.LBB47_12
.LBB47_19:                              # %sw.bb.38
	movq	200(%r15), %rax
.LBB47_12:                              # %cleanup.15
	movq	%rax, (%r14)
	movl	$ptr_struct_procs, %eax
.LBB47_10:                              # %cleanup.15
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end47:
	.size	font_dir_enum_ptrs, .Lfunc_end47-font_dir_enum_ptrs
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI47_0:
	.quad	.LBB47_11
	.quad	.LBB47_13
	.quad	.LBB47_14
	.quad	.LBB47_15
	.quad	.LBB47_16
	.quad	.LBB47_17
	.quad	.LBB47_18
	.quad	.LBB47_19

	.text
	.align	16, 0x90
	.type	font_dir_reloc_ptrs,@function
font_dir_reloc_ptrs:                    # @font_dir_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp165:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp166:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp167:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp168:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp169:
	.cfi_def_cfa_offset 48
.Ltmp170:
	.cfi_offset %rbx, -48
.Ltmp171:
	.cfi_offset %r12, -40
.Ltmp172:
	.cfi_offset %r13, -32
.Ltmp173:
	.cfi_offset %r14, -24
.Ltmp174:
	.cfi_offset %r15, -16
	movq	%rcx, %r12
	movq	%rdi, %r14
	movslq	104(%r14), %rbx
	leaq	96(%r14), %r15
	testq	%rbx, %rbx
	js	.LBB48_5
# BB#1:                                 # %for.body.lr.ph
	incq	%rbx
	.align	16, 0x90
.LBB48_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rax
	movq	-8(%rax,%rbx,8), %r13
	testq	%r13, %r13
	je	.LBB48_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB48_2 Depth=1
	movq	(%r12), %rax
	movl	68(%r13), %ecx
	negq	%rcx
	imulq	$112, %rcx, %rdi
	addq	24(%r13), %rdi
	movq	%r12, %rsi
	callq	*(%rax)
	movl	68(%r13), %ecx
	imulq	$112, %rcx, %rcx
	addq	%rax, %rcx
	movq	%rcx, 24(%r13)
.LBB48_4:                               # %if.end
                                        #   in Loop: Header=BB48_2 Depth=1
	decq	%rbx
	testq	%rbx, %rbx
	jg	.LBB48_2
.LBB48_5:                               # %for.end
	movq	(%r12), %rax
	movq	(%r14), %rdi
	movq	%r12, %rsi
	callq	*(%rax)
	movq	%rax, (%r14)
	movq	(%r12), %rax
	movq	8(%r14), %rdi
	movq	%r12, %rsi
	callq	*(%rax)
	movq	%rax, 8(%r14)
	movq	(%r12), %rax
	movq	32(%r14), %rdi
	movq	%r12, %rsi
	callq	*(%rax)
	movq	%rax, 32(%r14)
	movq	(%r12), %rax
	movq	(%r15), %rdi
	movq	%r12, %rsi
	callq	*(%rax)
	movq	%rax, (%r15)
	movq	(%r12), %rax
	movq	136(%r14), %rdi
	movq	%r12, %rsi
	callq	*(%rax)
	movq	%rax, 136(%r14)
	movq	(%r12), %rax
	movq	160(%r14), %rdi
	movq	%r12, %rsi
	callq	*(%rax)
	movq	%rax, 160(%r14)
	movq	(%r12), %rax
	movq	176(%r14), %rdi
	movq	%r12, %rsi
	callq	*(%rax)
	movq	%rax, 176(%r14)
	movq	(%r12), %rax
	movq	184(%r14), %rdi
	movq	%r12, %rsi
	callq	*(%rax)
	movq	%rax, 184(%r14)
	movq	(%r12), %rax
	movq	200(%r14), %rdi
	movq	%r12, %rsi
	callq	*(%rax)
	movq	%rax, 200(%r14)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end48:
	.size	font_dir_reloc_ptrs, .Lfunc_end48-font_dir_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	gs_font_dir_finalize,@function
gs_font_dir_finalize:                   # @gs_font_dir_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	movq	192(%rdi), %rax
	cmpq	168(%rax), %rsi
	jne	.LBB49_2
# BB#1:                                 # %if.then
	movq	$0, 168(%rax)
.LBB49_2:                               # %if.end
	retq
.Lfunc_end49:
	.size	gs_font_dir_finalize, .Lfunc_end49-gs_font_dir_finalize
	.cfi_endproc

	.type	gs_font_procs_default,@object # @gs_font_procs_default
	.section	.rodata,"a",@progbits
	.globl	gs_font_procs_default
	.align	8
gs_font_procs_default:
	.quad	gs_no_define_font
	.quad	gs_no_make_font
	.quad	gs_default_font_info
	.quad	gs_default_same_font
	.quad	gs_no_encode_char
	.quad	gs_no_decode_glyph
	.quad	gs_no_enumerate_glyph
	.quad	gs_default_glyph_info
	.quad	gs_no_glyph_outline
	.quad	gs_no_glyph_name
	.quad	gs_default_init_fstack
	.quad	gs_default_next_char_glyph
	.quad	gs_no_build_char
	.size	gs_font_procs_default, 104

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_font_info_t"
	.size	.L.str, 15

	.type	gs_font_info_data,@object # @gs_font_info_data
	.section	.rodata,"a",@progbits
	.align	8
gs_font_info_data:
	.short	4                       # 0x4
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	gs_font_info_ptrs
	.size	gs_font_info_data, 24

	.type	st_gs_font_info,@object # @st_gs_font_info
	.globl	st_gs_font_info
	.align	8
st_gs_font_info:
	.long	160                     # 0xa0
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	gs_font_info_data
	.size	st_gs_font_info, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gs_font"
	.size	.L.str.1, 8

	.type	st_gs_font,@object      # @st_gs_font
	.section	.rodata,"a",@progbits
	.globl	st_gs_font
	.align	8
st_gs_font:
	.long	376                     # 0x178
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.quad	font_enum_ptrs
	.quad	font_reloc_ptrs
	.quad	gs_font_finalize
	.quad	0
	.size	st_gs_font, 64

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"gs_font_base"
	.size	.L.str.2, 13

	.type	font_base_reloc_ptrs,@object # @font_base_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
font_base_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	st_gs_font
	.quad	font_base_enum_ptrs
	.size	font_base_reloc_ptrs, 24

	.type	st_gs_font_base,@object # @st_gs_font_base
	.globl	st_gs_font_base
	.align	8
st_gs_font_base:
	.long	448                     # 0x1c0
	.zero	4
	.quad	.L.str.2
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	gs_font_finalize
	.quad	font_base_reloc_ptrs
	.size	st_gs_font_base, 64

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"gs_font *[]"
	.size	.L.str.3, 12

	.type	st_gs_font_ptr_element,@object # @st_gs_font_ptr_element
	.section	.rodata,"a",@progbits
	.globl	st_gs_font_ptr_element
	.align	8
st_gs_font_ptr_element:
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.3
	.quad	0
	.quad	0
	.quad	font_ptr_element_enum_ptrs
	.quad	font_ptr_element_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_gs_font_ptr_element, 64

	.type	st_font_dir,@object     # @st_font_dir
	.align	8
st_font_dir:
	.long	224                     # 0xe0
	.zero	4
	.quad	.L.str.14
	.quad	0
	.quad	0
	.quad	font_dir_enum_ptrs
	.quad	font_dir_reloc_ptrs
	.quad	gs_font_dir_finalize
	.quad	0
	.size	st_font_dir, 64

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"font_dir_alloc(dir)"
	.size	.L.str.4, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gs_makefont"
	.size	.L.str.5, 12

	.type	.L__func__.gs_setcachesize,@object # @__func__.gs_setcachesize
.L__func__.gs_setcachesize:
	.asciz	"gs_setcachesize"
	.size	.L__func__.gs_setcachesize, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"./base/gsfont.c"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%s"
	.size	.L.str.7, 3

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gs_setcachesize(mdata)"
	.size	.L.str.8, 23

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gs_setcachesize(table)"
	.size	.L.str.9, 23

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"purged font 0x%lx not found\n"
	.size	.L.str.10, 29

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gs_base_make_font(XUID)"
	.size	.L.str.11, 24

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	".notdef"
	.size	.L.str.12, 8

	.type	gs_font_info_ptrs,@object # @gs_font_info_ptrs
	.section	.rodata,"a",@progbits
	.align	16
gs_font_info_ptrs:
	.short	2                       # 0x2
	.short	88                      # 0x58
	.short	2                       # 0x2
	.short	104                     # 0x68
	.short	2                       # 0x2
	.short	120                     # 0x78
	.short	2                       # 0x2
	.short	136                     # 0x88
	.size	gs_font_info_ptrs, 16

	.type	font_base_enum_ptrs,@object # @font_base_enum_ptrs
	.align	2
font_base_enum_ptrs:
	.short	0                       # 0x0
	.short	416                     # 0x1a0
	.size	font_base_enum_ptrs, 4

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"gs_font_dir"
	.size	.L.str.14, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
