	.text
	.file	"mct.bc"
	.globl	opj_mct_get_mct_norms
	.align	16, 0x90
	.type	opj_mct_get_mct_norms,@function
opj_mct_get_mct_norms:                  # @opj_mct_get_mct_norms
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$opj_mct_norms, %eax
	retq
.Lfunc_end0:
	.size	opj_mct_get_mct_norms, .Lfunc_end0-opj_mct_get_mct_norms
	.cfi_endproc

	.globl	opj_mct_get_mct_norms_real
	.align	16, 0x90
	.type	opj_mct_get_mct_norms_real,@function
opj_mct_get_mct_norms_real:             # @opj_mct_get_mct_norms_real
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$opj_mct_norms_real, %eax
	retq
.Lfunc_end1:
	.size	opj_mct_get_mct_norms_real, .Lfunc_end1-opj_mct_get_mct_norms_real
	.cfi_endproc

	.globl	opj_mct_encode
	.align	16, 0x90
	.type	opj_mct_encode,@function
opj_mct_encode:                         # @opj_mct_encode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	testl	%ecx, %ecx
	je	.LBB2_8
# BB#1:                                 # %for.body.preheader
	leal	-1(%rcx), %r10d
	leaq	1(%r10), %r8
	xorl	%ebx, %ebx
	movabsq	$8589934588, %rax       # imm = 0x1FFFFFFFC
	movq	%r8, %r9
	andq	%rax, %r9
	je	.LBB2_5
# BB#2:                                 # %vector.body.preheader
	incq	%r10
	andq	%rax, %r10
	movq	%rdx, %r11
	movq	%rsi, %rax
	movq	%rdi, %rbx
	.align	16, 0x90
.LBB2_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%rbx), %xmm0
	movdqu	(%rax), %xmm1
	movdqu	(%r11), %xmm2
	movdqa	%xmm1, %xmm3
	paddd	%xmm3, %xmm3
	paddd	%xmm0, %xmm3
	paddd	%xmm2, %xmm3
	psrad	$2, %xmm3
	psubd	%xmm1, %xmm2
	psubd	%xmm1, %xmm0
	movdqu	%xmm3, (%rbx)
	movdqu	%xmm2, (%rax)
	movdqu	%xmm0, (%r11)
	addq	$16, %rbx
	addq	$16, %rax
	addq	$16, %r11
	addq	$-4, %r10
	jne	.LBB2_3
# BB#4:
	movq	%r9, %rbx
.LBB2_5:                                # %middle.block
	cmpq	%rbx, %r8
	je	.LBB2_8
# BB#6:                                 # %for.body.preheader28
	leaq	(%rdi,%rbx,4), %r9
	leaq	(%rsi,%rbx,4), %rsi
	leaq	(%rdx,%rbx,4), %rdx
	subl	%ebx, %ecx
	.align	16, 0x90
.LBB2_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%r9), %edi
	movl	(%rsi), %r8d
	movl	(%rdx), %ebx
	leal	(%rdi,%r8,2), %eax
	addl	%ebx, %eax
	sarl	$2, %eax
	subl	%r8d, %ebx
	subl	%r8d, %edi
	movl	%eax, (%r9)
	movl	%ebx, (%rsi)
	movl	%edi, (%rdx)
	addq	$4, %r9
	addq	$4, %rsi
	addq	$4, %rdx
	decl	%ecx
	jne	.LBB2_7
.LBB2_8:                                # %for.end
	popq	%rbx
	retq
.Lfunc_end2:
	.size	opj_mct_encode, .Lfunc_end2-opj_mct_encode
	.cfi_endproc

	.globl	opj_mct_decode
	.align	16, 0x90
	.type	opj_mct_decode,@function
opj_mct_decode:                         # @opj_mct_decode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 16
.Ltmp3:
	.cfi_offset %rbx, -16
	testl	%ecx, %ecx
	je	.LBB3_8
# BB#1:                                 # %for.body.preheader
	leal	-1(%rcx), %r10d
	leaq	1(%r10), %r8
	xorl	%ebx, %ebx
	movabsq	$8589934588, %rax       # imm = 0x1FFFFFFFC
	movq	%r8, %r9
	andq	%rax, %r9
	je	.LBB3_5
# BB#2:                                 # %vector.body.preheader
	incq	%r10
	andq	%rax, %r10
	movq	%rdx, %r11
	movq	%rsi, %rax
	movq	%rdi, %rbx
	.align	16, 0x90
.LBB3_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%rbx), %xmm0
	movdqu	(%rax), %xmm1
	movdqu	(%r11), %xmm2
	movdqa	%xmm2, %xmm3
	paddd	%xmm1, %xmm3
	psrad	$2, %xmm3
	psubd	%xmm3, %xmm0
	paddd	%xmm0, %xmm2
	paddd	%xmm0, %xmm1
	movdqu	%xmm2, (%rbx)
	movdqu	%xmm0, (%rax)
	movdqu	%xmm1, (%r11)
	addq	$16, %rbx
	addq	$16, %rax
	addq	$16, %r11
	addq	$-4, %r10
	jne	.LBB3_3
# BB#4:
	movq	%r9, %rbx
.LBB3_5:                                # %middle.block
	cmpq	%rbx, %r8
	je	.LBB3_8
# BB#6:                                 # %for.body.preheader28
	leaq	(%rdi,%rbx,4), %rax
	leaq	(%rsi,%rbx,4), %rsi
	leaq	(%rdx,%rbx,4), %rdx
	subl	%ebx, %ecx
	.align	16, 0x90
.LBB3_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rax), %edi
	movl	(%rsi), %r8d
	movl	(%rdx), %r9d
	leal	(%r9,%r8), %ebx
	sarl	$2, %ebx
	subl	%ebx, %edi
	leal	(%r9,%rdi), %r9d
	leal	(%r8,%rdi), %ebx
	movl	%r9d, (%rax)
	movl	%edi, (%rsi)
	movl	%ebx, (%rdx)
	addq	$4, %rax
	addq	$4, %rsi
	addq	$4, %rdx
	decl	%ecx
	jne	.LBB3_7
.LBB3_8:                                # %for.end
	popq	%rbx
	retq
.Lfunc_end3:
	.size	opj_mct_decode, .Lfunc_end3-opj_mct_decode
	.cfi_endproc

	.globl	opj_mct_getnorm
	.align	16, 0x90
	.type	opj_mct_getnorm,@function
opj_mct_getnorm:                        # @opj_mct_getnorm
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edi, %eax
	movsd	opj_mct_norms(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	retq
.Lfunc_end4:
	.size	opj_mct_getnorm, .Lfunc_end4-opj_mct_getnorm
	.cfi_endproc

	.globl	opj_mct_encode_real
	.align	16, 0x90
	.type	opj_mct_encode_real,@function
opj_mct_encode_real:                    # @opj_mct_encode_real
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp4:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp5:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 32
.Ltmp7:
	.cfi_offset %rbx, -32
.Ltmp8:
	.cfi_offset %r14, -24
.Ltmp9:
	.cfi_offset %r15, -16
	testl	%ecx, %ecx
	je	.LBB5_2
	.align	16, 0x90
.LBB5_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rdi), %r9
	imulq	$2449, %r9, %r8         # imm = 0x991
	movl	%r8d, %eax
	andl	$4096, %eax             # imm = 0x1000
	addq	%r8, %rax
	shrq	$13, %rax
	movslq	(%rsi), %r8
	imulq	$4809, %r8, %r10        # imm = 0x12C9
	movl	%r10d, %ebx
	andl	$4096, %ebx             # imm = 0x1000
	addq	%r10, %rbx
	shrq	$13, %rbx
	addl	%eax, %ebx
	movslq	(%rdx), %r10
	imulq	$934, %r10, %rax        # imm = 0x3A6
	movl	%eax, %r11d
	andl	$4096, %r11d            # imm = 0x1000
	addq	%rax, %r11
	shrq	$13, %r11
	addl	%ebx, %r11d
	imulq	$1382, %r9, %rax        # imm = 0x566
	movl	%eax, %ebx
	andl	$4096, %ebx             # imm = 0x1000
	addq	%rax, %rbx
	shrq	$13, %rbx
	imulq	$2714, %r8, %r14        # imm = 0xA9A
	movl	%r14d, %eax
	andl	$4096, %eax             # imm = 0x1000
	addq	%r14, %rax
	shrq	$13, %rax
	addl	%ebx, %eax
	imulq	$666, %r10, %r14        # imm = 0x29A
	shlq	$12, %r10
	movl	%r10d, %r15d
	andl	$4096, %r15d            # imm = 0x1000
	addq	%r10, %r15
	shrq	$13, %r15
	subl	%eax, %r15d
	shlq	$12, %r9
	movl	%r9d, %eax
	andl	$4096, %eax             # imm = 0x1000
	addq	%r9, %rax
	shrq	$13, %rax
	imulq	$3430, %r8, %r8         # imm = 0xD66
	movl	%r8d, %ebx
	andl	$4096, %ebx             # imm = 0x1000
	addq	%r8, %rbx
	shrq	$13, %rbx
	subl	%ebx, %eax
	movl	%r14d, %ebx
	andl	$4096, %ebx             # imm = 0x1000
	addq	%r14, %rbx
	shrq	$13, %rbx
	subl	%ebx, %eax
	movl	%r11d, (%rdi)
	movl	%r15d, (%rsi)
	movl	%eax, (%rdx)
	addq	$4, %rdi
	addq	$4, %rsi
	addq	$4, %rdx
	decl	%ecx
	jne	.LBB5_1
.LBB5_2:                                # %for.end
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	opj_mct_encode_real, .Lfunc_end5-opj_mct_encode_real
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI6_0:
	.long	1068725436              # float 1.402000e+00
	.long	1068725436              # float 1.402000e+00
	.long	1068725436              # float 1.402000e+00
	.long	1068725436              # float 1.402000e+00
.LCPI6_1:
	.long	1051734479              # float 3.441300e-01
	.long	1051734479              # float 3.441300e-01
	.long	1051734479              # float 3.441300e-01
	.long	1051734479              # float 3.441300e-01
.LCPI6_2:
	.long	1060557281              # float 7.141400e-01
	.long	1060557281              # float 7.141400e-01
	.long	1060557281              # float 7.141400e-01
	.long	1060557281              # float 7.141400e-01
.LCPI6_3:
	.long	1071829221              # float 1.772000e+00
	.long	1071829221              # float 1.772000e+00
	.long	1071829221              # float 1.772000e+00
	.long	1071829221              # float 1.772000e+00
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI6_4:
	.long	1068725436              # float 1.40199995
.LCPI6_5:
	.long	3199218127              # float -0.344130009
.LCPI6_6:
	.long	3208040929              # float -0.714139997
.LCPI6_7:
	.long	1071829221              # float 1.77199996
	.text
	.globl	opj_mct_decode_real
	.align	16, 0x90
	.type	opj_mct_decode_real,@function
opj_mct_decode_real:                    # @opj_mct_decode_real
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbx, -16
	movl	%ecx, %r10d
	shrl	$3, %r10d
	je	.LBB6_1
# BB#2:                                 # %for.body.lr.ph
	leal	-1(%r10), %eax
	leaq	8(,%rax,8), %r9
	shlq	$3, %rax
	leaq	32(%rsi,%rax,4), %r8
	movaps	.LCPI6_0(%rip), %xmm8   # xmm8 = [1.402000e+00,1.402000e+00,1.402000e+00,1.402000e+00]
	movaps	.LCPI6_1(%rip), %xmm1   # xmm1 = [3.441300e-01,3.441300e-01,3.441300e-01,3.441300e-01]
	movaps	.LCPI6_2(%rip), %xmm2   # xmm2 = [7.141400e-01,7.141400e-01,7.141400e-01,7.141400e-01]
	movaps	.LCPI6_3(%rip), %xmm3   # xmm3 = [1.772000e+00,1.772000e+00,1.772000e+00,1.772000e+00]
	movq	%rdi, %r11
	movq	%rdx, %rax
	.align	16, 0x90
.LBB6_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movaps	(%r11), %xmm4
	movaps	(%rsi), %xmm5
	movaps	(%rax), %xmm6
	movaps	%xmm6, %xmm7
	mulps	%xmm8, %xmm7
	addps	%xmm4, %xmm7
	movaps	%xmm5, %xmm0
	mulps	%xmm1, %xmm0
	mulps	%xmm3, %xmm5
	addps	%xmm4, %xmm5
	subps	%xmm0, %xmm4
	mulps	%xmm2, %xmm6
	subps	%xmm6, %xmm4
	movaps	%xmm7, (%r11)
	movaps	%xmm4, (%rsi)
	movaps	%xmm5, (%rax)
	movaps	16(%r11), %xmm0
	movaps	16(%rsi), %xmm4
	movaps	16(%rax), %xmm5
	movaps	%xmm5, %xmm6
	mulps	%xmm8, %xmm6
	addps	%xmm0, %xmm6
	movaps	%xmm4, %xmm7
	mulps	%xmm1, %xmm7
	mulps	%xmm3, %xmm4
	addps	%xmm0, %xmm4
	subps	%xmm7, %xmm0
	mulps	%xmm2, %xmm5
	subps	%xmm5, %xmm0
	movaps	%xmm6, 16(%r11)
	movaps	%xmm0, 16(%rsi)
	movaps	%xmm4, 16(%rax)
	addq	$32, %r11
	addq	$32, %rsi
	addq	$32, %rax
	decl	%r10d
	jne	.LBB6_3
# BB#4:                                 # %for.cond.for.end_crit_edge
	leaq	(%rdx,%r9,4), %rdx
	leaq	(%rdi,%r9,4), %rdi
	jmp	.LBB6_5
.LBB6_1:
	movq	%rsi, %r8
.LBB6_5:                                # %for.end
	testb	$7, %cl
	je	.LBB6_13
# BB#6:                                 # %for.body.33.lr.ph
	andl	$7, %ecx
	leal	-1(%rcx), %r11d
	leaq	1(%r11), %r9
	xorl	%ebx, %ebx
	movabsq	$8589934588, %rax       # imm = 0x1FFFFFFFC
	movq	%r9, %r10
	andq	%rax, %r10
	je	.LBB6_10
# BB#7:                                 # %vector.body.preheader
	incq	%r11
	andq	%rax, %r11
	movaps	.LCPI6_0(%rip), %xmm8   # xmm8 = [1.402000e+00,1.402000e+00,1.402000e+00,1.402000e+00]
	movaps	.LCPI6_1(%rip), %xmm1   # xmm1 = [3.441300e-01,3.441300e-01,3.441300e-01,3.441300e-01]
	movaps	.LCPI6_2(%rip), %xmm2   # xmm2 = [7.141400e-01,7.141400e-01,7.141400e-01,7.141400e-01]
	movaps	.LCPI6_3(%rip), %xmm3   # xmm3 = [1.772000e+00,1.772000e+00,1.772000e+00,1.772000e+00]
	movq	%rdx, %rax
	movq	%r8, %rsi
	movq	%rdi, %rbx
	.align	16, 0x90
.LBB6_8:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	(%rbx), %xmm4
	movups	(%rsi), %xmm5
	movups	(%rax), %xmm6
	movaps	%xmm6, %xmm7
	mulps	%xmm8, %xmm7
	addps	%xmm4, %xmm7
	movaps	%xmm5, %xmm0
	mulps	%xmm1, %xmm0
	mulps	%xmm3, %xmm5
	addps	%xmm4, %xmm5
	subps	%xmm0, %xmm4
	mulps	%xmm2, %xmm6
	subps	%xmm6, %xmm4
	movups	%xmm7, (%rbx)
	movups	%xmm4, (%rsi)
	movups	%xmm5, (%rax)
	addq	$16, %rbx
	addq	$16, %rsi
	addq	$16, %rax
	addq	$-4, %r11
	jne	.LBB6_8
# BB#9:
	movq	%r10, %rbx
.LBB6_10:                               # %middle.block
	cmpq	%rbx, %r9
	je	.LBB6_13
# BB#11:                                # %for.body.33.preheader
	leaq	(%rdi,%rbx,4), %rax
	leaq	(%r8,%rbx,4), %rsi
	leaq	(%rdx,%rbx,4), %rdx
	subl	%ebx, %ecx
	movss	.LCPI6_4(%rip), %xmm8   # xmm8 = mem[0],zero,zero,zero
	movss	.LCPI6_5(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI6_6(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	movss	.LCPI6_7(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	.align	16, 0x90
.LBB6_12:                               # %for.body.33
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rax), %xmm4           # xmm4 = mem[0],zero,zero,zero
	movss	(%rsi), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	(%rdx), %xmm6           # xmm6 = mem[0],zero,zero,zero
	movaps	%xmm6, %xmm7
	mulss	%xmm8, %xmm7
	addss	%xmm4, %xmm7
	movaps	%xmm0, %xmm5
	mulss	%xmm1, %xmm5
	addss	%xmm4, %xmm5
	mulss	%xmm2, %xmm6
	addss	%xmm5, %xmm6
	mulss	%xmm3, %xmm0
	addss	%xmm4, %xmm0
	movss	%xmm7, (%rax)
	movss	%xmm6, (%rsi)
	movss	%xmm0, (%rdx)
	addq	$4, %rax
	addq	$4, %rsi
	addq	$4, %rdx
	decl	%ecx
	jne	.LBB6_12
.LBB6_13:                               # %for.end.51
	popq	%rbx
	retq
.Lfunc_end6:
	.size	opj_mct_decode_real, .Lfunc_end6-opj_mct_decode_real
	.cfi_endproc

	.globl	opj_mct_getnorm_real
	.align	16, 0x90
	.type	opj_mct_getnorm_real,@function
opj_mct_getnorm_real:                   # @opj_mct_getnorm_real
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edi, %eax
	movsd	opj_mct_norms_real(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	retq
.Lfunc_end7:
	.size	opj_mct_getnorm_real, .Lfunc_end7-opj_mct_getnorm_real
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI8_0:
	.long	1174405120              # float 8.192000e+03
	.long	1174405120              # float 8.192000e+03
	.long	1174405120              # float 8.192000e+03
	.long	1174405120              # float 8.192000e+03
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI8_1:
	.long	1174405120              # float 8192
	.text
	.globl	opj_mct_encode_custom
	.align	16, 0x90
	.type	opj_mct_encode_custom,@function
opj_mct_encode_custom:                  # @opj_mct_encode_custom
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp13:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp14:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp15:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp16:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp18:
	.cfi_def_cfa_offset 128
.Ltmp19:
	.cfi_offset %rbx, -56
.Ltmp20:
	.cfi_offset %r12, -48
.Ltmp21:
	.cfi_offset %r13, -40
.Ltmp22:
	.cfi_offset %r14, -32
.Ltmp23:
	.cfi_offset %r15, -24
.Ltmp24:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rdx, %rbx
	movl	%esi, 36(%rsp)          # 4-byte Spill
	movq	%rdi, %r15
	movl	%r14d, %ebp
	imull	%ebp, %ebp
	leal	(%rbp,%r14), %edi
	shlq	$2, %rdi
	callq	malloc
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB8_29
# BB#1:                                 # %if.end
	movl	%r14d, %r10d
	leaq	(%rax,%r10,4), %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	testl	%ebp, %ebp
	je	.LBB8_12
# BB#2:                                 # %for.body.lr.ph
	movabsq	$8589934584, %r8        # imm = 0x1FFFFFFF8
	leal	-1(%rbp), %edi
	leaq	1(%rdi), %r9
	xorl	%ecx, %ecx
	movq	%r9, %r11
	andq	%r8, %r11
	movq	%r15, %rsi
	je	.LBB8_9
# BB#3:                                 # %vector.body.preheader
	leaq	1(%rdi), %rcx
	andq	%r8, %rcx
	addq	$-8, %rcx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	xorl	%r12d, %r12d
	btq	$3, %rcx
	jb	.LBB8_5
# BB#4:                                 # %vector.body.prol
	movups	(%r15), %xmm0
	movups	16(%r15), %xmm1
	movaps	.LCPI8_0(%rip), %xmm2   # xmm2 = [8.192000e+03,8.192000e+03,8.192000e+03,8.192000e+03]
	mulps	%xmm2, %xmm0
	mulps	%xmm2, %xmm1
	cvttps2dq	%xmm0, %xmm0
	cvttps2dq	%xmm1, %xmm1
	movq	24(%rsp), %rcx          # 8-byte Reload
	movups	%xmm0, (%rcx)
	movups	%xmm1, 16(%rcx)
	movl	$8, %r12d
.LBB8_5:                                # %vector.body.preheader.split
	leaq	(%r15,%r11,4), %rsi
	testq	%rdx, %rdx
	je	.LBB8_8
# BB#6:                                 # %vector.body.preheader.split.split
	incq	%rdi
	andq	%r8, %rdi
	subq	%r12, %rdi
	leaq	(,%r10,4), %rcx
	leaq	(%rcx,%r12,4), %rcx
	leaq	48(%rax,%rcx), %rcx
	leaq	48(%r15,%r12,4), %rdx
	movaps	.LCPI8_0(%rip), %xmm0   # xmm0 = [8.192000e+03,8.192000e+03,8.192000e+03,8.192000e+03]
	.align	16, 0x90
.LBB8_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	-48(%rdx), %xmm1
	movups	-32(%rdx), %xmm2
	mulps	%xmm0, %xmm1
	mulps	%xmm0, %xmm2
	cvttps2dq	%xmm1, %xmm1
	cvttps2dq	%xmm2, %xmm2
	movups	%xmm1, -48(%rcx)
	movups	%xmm2, -32(%rcx)
	movups	-16(%rdx), %xmm1
	movups	(%rdx), %xmm2
	mulps	%xmm0, %xmm1
	mulps	%xmm0, %xmm2
	cvttps2dq	%xmm1, %xmm1
	cvttps2dq	%xmm2, %xmm2
	movups	%xmm1, -16(%rcx)
	movups	%xmm2, (%rcx)
	addq	$64, %rcx
	addq	$64, %rdx
	addq	$-16, %rdi
	jne	.LBB8_7
.LBB8_8:
	movq	%r11, %rcx
.LBB8_9:                                # %middle.block
	cmpq	%rcx, %r9
	je	.LBB8_12
# BB#10:                                # %for.body.preheader
	shlq	$2, %r10
	leaq	(%r10,%rcx,4), %rdx
	leaq	(%rdx,%rax), %rdx
	subl	%ecx, %ebp
	movss	.LCPI8_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	.align	16, 0x90
.LBB8_11:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rsi), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	addq	$4, %rsi
	cvttss2si	%xmm1, %ecx
	movl	%ecx, (%rdx)
	addq	$4, %rdx
	decl	%ebp
	jne	.LBB8_11
.LBB8_12:                               # %for.cond.11.preheader
	movq	%rax, 48(%rsp)          # 8-byte Spill
	cmpl	$0, 36(%rsp)            # 4-byte Folded Reload
	je	.LBB8_28
# BB#13:                                # %for.cond.15.preheader.lr.ph
	leal	-1(%r14), %edx
	leaq	1(%rdx), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movl	%r14d, %eax
	andl	$3, %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movl	%r14d, %r13d
	andl	$1, %r13d
	movl	%r14d, %ebp
	andl	$3, %ebp
	leaq	24(%rbx), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	48(%rsp), %rax          # 8-byte Reload
	leaq	12(%rax), %rcx
	movq	%rcx, (%rsp)            # 8-byte Spill
	addq	$4, %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	.align	16, 0x90
.LBB8_14:                               # %for.cond.15.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_16 Depth 2
                                        #     Child Loop BB8_19 Depth 2
                                        #     Child Loop BB8_21 Depth 2
                                        #       Child Loop BB8_25 Depth 3
	movq	%rax, 40(%rsp)          # 8-byte Spill
	testl	%r14d, %r14d
	je	.LBB8_27
# BB#15:                                # %for.body.18.preheader
                                        #   in Loop: Header=BB8_14 Depth=1
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	movl	$0, %ecx
	movq	48(%rsp), %rax          # 8-byte Reload
	je	.LBB8_17
	.align	16, 0x90
.LBB8_16:                               # %for.body.18.prol
                                        #   Parent Loop BB8_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx,%rcx,8), %rsi
	movl	(%rsi), %esi
	movl	%esi, (%rax,%rcx,4)
	incq	%rcx
	cmpl	%ecx, %ebp
	jne	.LBB8_16
.LBB8_17:                               # %for.body.18.preheader.split
                                        #   in Loop: Header=BB8_14 Depth=1
	cmpl	$3, %edx
	jb	.LBB8_20
# BB#18:                                # %for.body.18.preheader.split.split
                                        #   in Loop: Header=BB8_14 Depth=1
	movl	%r14d, %edi
	subl	%ecx, %edi
	movq	(%rsp), %rax            # 8-byte Reload
	leaq	(%rax,%rcx,4), %rsi
	movq	8(%rsp), %rax           # 8-byte Reload
	leaq	(%rax,%rcx,8), %rcx
	.align	16, 0x90
.LBB8_19:                               # %for.body.18
                                        #   Parent Loop BB8_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rcx), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rsi)
	movq	-16(%rcx), %rax
	movl	(%rax), %eax
	movl	%eax, -8(%rsi)
	movq	-8(%rcx), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rsi)
	movq	(%rcx), %rax
	movl	(%rax), %eax
	movl	%eax, (%rsi)
	addq	$16, %rsi
	addq	$32, %rcx
	addl	$-4, %edi
	jne	.LBB8_19
.LBB8_20:                               # %for.cond.26.preheader
                                        #   in Loop: Header=BB8_14 Depth=1
	testl	%r14d, %r14d
	movl	$0, %edi
	movq	24(%rsp), %r12          # 8-byte Reload
	je	.LBB8_27
	.align	16, 0x90
.LBB8_21:                               # %for.body.35.lr.ph
                                        #   Parent Loop BB8_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_25 Depth 3
	xorl	%r8d, %r8d
	testl	%r13d, %r13d
	movq	(%rbx,%rdi,8), %r10
	movl	$0, (%r10)
	movl	$0, %ecx
	movq	%r12, %r9
	je	.LBB8_23
# BB#22:                                # %for.body.35.prol
                                        #   in Loop: Header=BB8_21 Depth=2
	movslq	(%r12), %rax
	movq	48(%rsp), %rcx          # 8-byte Reload
	movslq	(%rcx), %rcx
	imulq	%rax, %rcx
	movl	%ecx, %r8d
	andl	$4096, %r8d             # imm = 0x1000
	addq	%rcx, %r8
	shrq	$13, %r8
	movl	%r8d, (%r10)
	leaq	4(%r12), %r9
	movl	$1, %ecx
.LBB8_23:                               # %for.body.35.lr.ph.split
                                        #   in Loop: Header=BB8_21 Depth=2
	testl	%edx, %edx
	je	.LBB8_26
# BB#24:                                # %for.body.35.lr.ph.split.split
                                        #   in Loop: Header=BB8_21 Depth=2
	movl	%r14d, %r11d
	subl	%ecx, %r11d
	movq	56(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rcx,4), %r15
	.align	16, 0x90
.LBB8_25:                               # %for.body.35
                                        #   Parent Loop BB8_14 Depth=1
                                        #     Parent Loop BB8_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	(%r9), %rax
	movslq	-4(%r15), %rcx
	imulq	%rax, %rcx
	movl	%ecx, %eax
	andl	$4096, %eax             # imm = 0x1000
	addq	%rcx, %rax
	shrq	$13, %rax
	addl	%r8d, %eax
	movl	%eax, (%r10)
	movslq	4(%r9), %rcx
	movslq	(%r15), %rsi
	imulq	%rcx, %rsi
	movl	%esi, %r8d
	andl	$4096, %r8d             # imm = 0x1000
	addq	%rsi, %r8
	shrq	$13, %r8
	addl	%eax, %r8d
	movl	%r8d, (%r10)
	addq	$8, %r15
	addq	$8, %r9
	addl	$-2, %r11d
	jne	.LBB8_25
.LBB8_26:                               # %for.end.45
                                        #   in Loop: Header=BB8_21 Depth=2
	movq	64(%rsp), %rax          # 8-byte Reload
	leaq	(%r12,%rax,4), %r12
	addq	$4, %r10
	movq	%r10, (%rbx,%rdi,8)
	incq	%rdi
	cmpl	%r14d, %edi
	jne	.LBB8_21
.LBB8_27:                               # %for.inc.52
                                        #   in Loop: Header=BB8_14 Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	incl	%eax
	cmpl	36(%rsp), %eax          # 4-byte Folded Reload
	jne	.LBB8_14
.LBB8_28:                               # %for.end.54
	movq	48(%rsp), %rdi          # 8-byte Reload
	callq	free
	movl	$1, %ecx
.LBB8_29:                               # %cleanup
	movl	%ecx, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	opj_mct_encode_custom, .Lfunc_end8-opj_mct_encode_custom
	.cfi_endproc

	.globl	opj_mct_decode_custom
	.align	16, 0x90
	.type	opj_mct_decode_custom,@function
opj_mct_decode_custom:                  # @opj_mct_decode_custom
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp26:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp28:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp29:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp31:
	.cfi_def_cfa_offset 112
.Ltmp32:
	.cfi_offset %rbx, -56
.Ltmp33:
	.cfi_offset %r12, -48
.Ltmp34:
	.cfi_offset %r13, -40
.Ltmp35:
	.cfi_offset %r14, -32
.Ltmp36:
	.cfi_offset %r15, -24
.Ltmp37:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rdx, %rbx
	movl	%esi, %ebp
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	leal	(%r14,%r14), %edi
	shlq	$2, %rdi
	callq	malloc
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB9_18
# BB#1:                                 # %if.end
	movl	%r14d, %ecx
	testl	%ebp, %ebp
	je	.LBB9_17
# BB#2:                                 # %for.body.lr.ph
	leaq	(%rax,%rcx,4), %rcx
	leal	-1(%r14), %r11d
	leaq	1(%r11), %rdi
	movl	%r14d, %edx
	andl	$3, %edx
	movl	%edx, 28(%rsp)          # 4-byte Spill
	movl	%r14d, %r13d
	andl	$1, %r13d
	movl	%r14d, %r12d
	andl	$3, %r12d
	leaq	24(%rbx), %rdx
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	leaq	12(%rax), %rdx
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	movq	%rax, %rdx
	addq	$4, %rdx
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	xorl	%edx, %edx
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB9_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_5 Depth 2
                                        #     Child Loop BB9_8 Depth 2
                                        #     Child Loop BB9_10 Depth 2
                                        #       Child Loop BB9_14 Depth 3
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	testl	%r14d, %r14d
	je	.LBB9_16
# BB#4:                                 # %for.body.11.preheader
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	%rdi, %r10
	movl	%ebp, %r8d
	cmpl	$0, 28(%rsp)            # 4-byte Folded Reload
	movl	$0, %edx
	je	.LBB9_6
	.align	16, 0x90
.LBB9_5:                                # %for.body.11.prol
                                        #   Parent Loop BB9_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx,%rdx,8), %rsi
	movl	(%rsi), %esi
	movl	%esi, (%rax,%rdx,4)
	incq	%rdx
	cmpl	%edx, %r12d
	jne	.LBB9_5
.LBB9_6:                                # %for.body.11.preheader.split
                                        #   in Loop: Header=BB9_3 Depth=1
	cmpl	$3, %r11d
	jb	.LBB9_9
# BB#7:                                 # %for.body.11.preheader.split.split
                                        #   in Loop: Header=BB9_3 Depth=1
	movl	%r14d, %esi
	subl	%edx, %esi
	movq	8(%rsp), %rdi           # 8-byte Reload
	leaq	(%rdi,%rdx,4), %rdi
	movq	16(%rsp), %rbp          # 8-byte Reload
	leaq	(%rbp,%rdx,8), %rdx
	.align	16, 0x90
.LBB9_8:                                # %for.body.11
                                        #   Parent Loop BB9_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rdx), %rbp
	movl	(%rbp), %ebp
	movl	%ebp, -12(%rdi)
	movq	-16(%rdx), %rbp
	movl	(%rbp), %ebp
	movl	%ebp, -8(%rdi)
	movq	-8(%rdx), %rbp
	movl	(%rbp), %ebp
	movl	%ebp, -4(%rdi)
	movq	(%rdx), %rbp
	movl	(%rbp), %ebp
	movl	%ebp, (%rdi)
	addq	$16, %rdi
	addq	$32, %rdx
	addl	$-4, %esi
	jne	.LBB9_8
.LBB9_9:                                # %for.cond.14.preheader
                                        #   in Loop: Header=BB9_3 Depth=1
	testl	%r14d, %r14d
	movl	$0, %r9d
	movq	32(%rsp), %r15          # 8-byte Reload
	movl	%r8d, %ebp
	movq	%r10, %rdi
	je	.LBB9_16
	.align	16, 0x90
.LBB9_10:                               # %for.body.23.lr.ph
                                        #   Parent Loop BB9_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_14 Depth 3
	testl	%r13d, %r13d
	movl	$0, (%rcx,%r9,4)
	xorps	%xmm1, %xmm1
	movl	$0, %edx
	movq	%r15, %r10
	je	.LBB9_12
# BB#11:                                # %for.body.23.prol
                                        #   in Loop: Header=BB9_10 Depth=2
	leaq	4(%r15), %r10
	movss	(%r15), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	(%rax), %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, (%rcx,%r9,4)
	movl	$1, %edx
.LBB9_12:                               # %for.body.23.lr.ph.split
                                        #   in Loop: Header=BB9_10 Depth=2
	testl	%r11d, %r11d
	je	.LBB9_15
# BB#13:                                # %for.body.23.lr.ph.split.split
                                        #   in Loop: Header=BB9_10 Depth=2
	movl	%r14d, %r8d
	subl	%edx, %r8d
	movq	48(%rsp), %rsi          # 8-byte Reload
	leaq	(%rsi,%rdx,4), %rsi
	.align	16, 0x90
.LBB9_14:                               # %for.body.23
                                        #   Parent Loop BB9_3 Depth=1
                                        #     Parent Loop BB9_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movss	(%r10), %xmm2           # xmm2 = mem[0],zero,zero,zero
	mulss	-4(%rsi), %xmm2
	addss	%xmm1, %xmm2
	movss	%xmm2, (%rcx,%r9,4)
	movss	4(%r10), %xmm1          # xmm1 = mem[0],zero,zero,zero
	mulss	(%rsi), %xmm1
	addss	%xmm2, %xmm1
	movss	%xmm1, (%rcx,%r9,4)
	addq	$8, %rsi
	addq	$8, %r10
	addl	$-2, %r8d
	jne	.LBB9_14
.LBB9_15:                               # %for.end.31
                                        #   in Loop: Header=BB9_10 Depth=2
	leaq	(%r15,%rdi,4), %r15
	movq	(%rbx,%r9,8), %rdx
	leaq	4(%rdx), %rsi
	movq	%rsi, (%rbx,%r9,8)
	movss	%xmm1, (%rdx)
	incq	%r9
	cmpl	%r14d, %r9d
	jne	.LBB9_10
.LBB9_16:                               # %for.inc.40
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	40(%rsp), %rdx          # 8-byte Reload
	incl	%edx
	cmpl	%ebp, %edx
	jne	.LBB9_3
.LBB9_17:                               # %for.end.42
	movq	%rax, %rdi
	callq	free
	movl	$1, %ecx
.LBB9_18:                               # %cleanup
	movl	%ecx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	opj_mct_decode_custom, .Lfunc_end9-opj_mct_decode_custom
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	0                       # double 0
	.text
	.globl	opj_calculate_norms
	.align	16, 0x90
	.type	opj_calculate_norms,@function
opj_calculate_norms:                    # @opj_calculate_norms
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp39:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp41:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp43:
	.cfi_def_cfa_offset 64
.Ltmp44:
	.cfi_offset %rbx, -48
.Ltmp45:
	.cfi_offset %r12, -40
.Ltmp46:
	.cfi_offset %r14, -32
.Ltmp47:
	.cfi_offset %r15, -24
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %ebx
	movq	%rdi, %r15
	testl	%ebx, %ebx
	je	.LBB10_10
# BB#1:                                 # %for.body.3.lr.ph.preheader
	movl	%ebx, %r12d
	andl	$1, %r12d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB10_2:                               # %for.body.3.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_6 Depth 2
	testl	%r12d, %r12d
	movq	$0, (%r15,%rbp,8)
	jne	.LBB10_4
# BB#3:                                 #   in Loop: Header=BB10_2 Depth=1
	xorpd	%xmm0, %xmm0
	xorl	%ecx, %ecx
	movl	%ebp, %eax
	jmp	.LBB10_5
	.align	16, 0x90
.LBB10_4:                               # %for.body.3.prol
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	%ebp, %eax
	movss	(%r14,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	leal	(%rbp,%rbx), %eax
	mulss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI10_0, %xmm0
	movl	$1, %ecx
.LBB10_5:                               # %for.body.3.lr.ph.split
                                        #   in Loop: Header=BB10_2 Depth=1
	cmpl	$1, %ebx
	je	.LBB10_7
	.align	16, 0x90
.LBB10_6:                               # %for.body.3
                                        #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %edx
	movss	(%r14,%rdx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	addl	%ebx, %eax
	mulss	%xmm1, %xmm1
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	movss	(%r14,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	addl	%ebx, %eax
	mulss	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	addl	$2, %ecx
	cmpl	%ecx, %ebx
	jne	.LBB10_6
.LBB10_7:                               # %for.end
                                        #   in Loop: Header=BB10_2 Depth=1
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	%xmm0, (%r15,%rbp,8)
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB10_9
# BB#8:                                 # %call.sqrt
                                        #   in Loop: Header=BB10_2 Depth=1
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB10_9:                               # %for.end.split
                                        #   in Loop: Header=BB10_2 Depth=1
	movsd	%xmm0, (%r15,%rbp,8)
	incq	%rbp
	cmpl	%ebx, %ebp
	jne	.LBB10_2
.LBB10_10:                              # %for.end.15
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	opj_calculate_norms, .Lfunc_end10-opj_calculate_norms
	.cfi_endproc

	.type	opj_mct_norms,@object   # @opj_mct_norms
	.section	.rodata,"a",@progbits
	.align	16
opj_mct_norms:
	.quad	4610479053727252611     # double 1.732000e+00
	.quad	4605643989167307647     # double 8.292000e-01
	.quad	4605643989167307647     # double 8.292000e-01
	.size	opj_mct_norms, 24

	.type	opj_mct_norms_real,@object # @opj_mct_norms_real
	.align	16
opj_mct_norms_real:
	.quad	4610479053727252611     # double 1.732000e+00
	.quad	4610807816500050657     # double 1.805000e+00
	.quad	4609762981386500702     # double 1.573000e+00
	.size	opj_mct_norms_real, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
