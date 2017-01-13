	.text
	.file	"gdevespg.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4634766966517661696     # double 72
.LCPI0_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	lp2000_print_page_copies,@function
lp2000_print_page_copies:               # @lp2000_print_page_copies
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
	subq	$24, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 80
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
	movl	%edx, %r12d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, %r15d
	movl	18508(%rbx), %ebp
	movl	%ebp, %eax
	cltd
	idivl	18548(%rbx)
	subl	%edx, %ebp
	cmpq	$0, 928(%rbx)
	jne	.LBB0_48
# BB#1:                                 # %if.then
	movss	884(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	888(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movl	$can_inits, %edi
	movl	$31, %esi
	movl	$1, %edx
	movq	%r14, %rcx
	callq	fwrite
	cmpl	$0, 17168(%rbx)
	jle	.LBB0_8
# BB#2:                                 # %if.then.i
	cmpl	$0, 17164(%rbx)
	je	.LBB0_6
# BB#3:                                 # %if.then.5.i
	movl	$.L.str.17, %esi
	movl	$29, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	cmpl	$0, 18492(%rbx)
	je	.LBB0_4
# BB#5:                                 # %if.else.i
	movl	$.L.str.19, %esi
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.12.i
	movl	$.L.str.20, %esi
	jmp	.LBB0_7
.LBB0_4:                                # %if.then.9.i
	movl	$.L.str.18, %esi
.LBB0_7:                                # %if.end.15.i
	movl	$29, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
.LBB0_8:                                # %if.end.15.i
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	divsd	16(%rsp), %xmm0         # 8-byte Folded Reload
	movl	$.L.str.21, %esi
	movl	$29, %edx
	movb	$1, %al
	movq	%r14, %rdi
	callq	fprintf
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	16(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r8d
	xorl	%r13d, %r13d
	movl	$.L.str.22, %esi
	movl	$29, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	cvttss2si	856(%rbx), %edx
	cvttss2si	860(%rbx), %eax
	movss	884(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	888(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cmpl	%eax, %edx
	jge	.LBB0_10
# BB#9:                                 # %if.then.i.i
	cvtsi2sdl	%edx, %xmm2
	movsd	.LCPI0_0(%rip), %xmm3   # xmm3 = mem[0],zero
	movapd	%xmm3, %xmm4
	divsd	%xmm4, %xmm2
	xorps	%xmm3, %xmm3
	cvtss2sd	%xmm0, %xmm3
	mulsd	%xmm2, %xmm3
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	divsd	%xmm4, %xmm0
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	movl	%edx, %ecx
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.i.i
	cvtsi2sdl	%eax, %xmm2
	movsd	.LCPI0_0(%rip), %xmm3   # xmm3 = mem[0],zero
	movapd	%xmm3, %xmm4
	divsd	%xmm4, %xmm2
	xorps	%xmm3, %xmm3
	cvtss2sd	%xmm1, %xmm3
	mulsd	%xmm2, %xmm3
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%edx, %xmm1
	divsd	%xmm4, %xmm1
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	mulsd	%xmm1, %xmm2
	movl	$1, %r13d
	movl	%eax, %ecx
	movl	%edx, %eax
.LBB0_11:                               # %if.end.i.i
	cmpl	$575, %ecx              # imm = 0x23F
	jg	.LBB0_29
# BB#12:                                # %if.end.i.i
	cmpl	$395, %ecx              # imm = 0x18B
	jle	.LBB0_13
# BB#20:                                # %if.end.i.i
	cmpl	$458, %ecx              # imm = 0x1CA
	jle	.LBB0_21
# BB#24:                                # %if.end.i.i
	cmpl	$459, %ecx              # imm = 0x1CB
	je	.LBB0_67
# BB#25:                                # %if.end.i.i
	cmpl	$516, %ecx              # imm = 0x204
	jne	.LBB0_26
# BB#56:                                # %land.lhs.true.6.i.i
	movsd	%xmm2, (%rsp)           # 8-byte Spill
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	movl	%r13d, 16(%rsp)         # 4-byte Spill
	movl	$epagPaperTable+80, %r13d
	cmpl	$729, %eax              # imm = 0x2D9
	je	.LBB0_45
	jmp	.LBB0_68
.LBB0_29:                               # %if.end.i.i
	cmpl	$611, %ecx              # imm = 0x263
	jle	.LBB0_30
# BB#37:                                # %if.end.i.i
	cmpl	$791, %ecx              # imm = 0x317
	jle	.LBB0_38
# BB#41:                                # %if.end.i.i
	cmpl	$792, %ecx              # imm = 0x318
	je	.LBB0_62
# BB#42:                                # %if.end.i.i
	cmpl	$933, %ecx              # imm = 0x3A5
	jne	.LBB0_43
# BB#63:                                # %land.lhs.true.16.i.i
	movsd	%xmm2, (%rsp)           # 8-byte Spill
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	movl	%r13d, 16(%rsp)         # 4-byte Spill
	movl	$epagPaperTable+200, %r13d
	cmpl	$1369, %eax             # imm = 0x559
	je	.LBB0_45
	jmp	.LBB0_68
.LBB0_13:                               # %if.end.i.i
	cmpl	$296, %ecx              # imm = 0x128
	jg	.LBB0_17
# BB#14:                                # %if.end.i.i
	cmpl	$279, %ecx              # imm = 0x117
	jne	.LBB0_15
# BB#64:                                # %land.lhs.true.17.i.i
	movsd	%xmm2, (%rsp)           # 8-byte Spill
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	movl	%r13d, 16(%rsp)         # 4-byte Spill
	movl	$epagPaperTable+212, %r13d
	cmpl	$540, %eax              # imm = 0x21C
	je	.LBB0_45
	jmp	.LBB0_68
.LBB0_30:                               # %if.end.i.i
	cmpl	$594, %ecx              # imm = 0x252
	jg	.LBB0_34
# BB#31:                                # %if.end.i.i
	cmpl	$576, %ecx              # imm = 0x240
	jne	.LBB0_32
# BB#61:                                # %land.lhs.true.12.i.i
	movsd	%xmm2, (%rsp)           # 8-byte Spill
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	movl	%r13d, 16(%rsp)         # 4-byte Spill
	movl	$epagPaperTable+152, %r13d
	jmp	.LBB0_28
.LBB0_21:                               # %if.end.i.i
	cmpl	$396, %ecx              # imm = 0x18C
	jne	.LBB0_22
# BB#57:                                # %land.lhs.true.8.i.i
	movsd	%xmm2, (%rsp)           # 8-byte Spill
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	movl	%r13d, 16(%rsp)         # 4-byte Spill
	movl	$epagPaperTable+104, %r13d
	cmpl	$612, %eax              # imm = 0x264
	je	.LBB0_45
	jmp	.LBB0_68
.LBB0_38:                               # %if.end.i.i
	cmpl	$612, %ecx              # imm = 0x264
	jne	.LBB0_39
# BB#58:                                # %land.lhs.true.7.i.i
	movsd	%xmm2, (%rsp)           # 8-byte Spill
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	movl	%r13d, 16(%rsp)         # 4-byte Spill
	movl	$epagPaperTable+92, %r13d
	cmpl	$792, %eax              # imm = 0x318
	je	.LBB0_45
# BB#59:                                # %land.lhs.true.9.i.i
	movl	$epagPaperTable+116, %r13d
	cmpl	$1008, %eax             # imm = 0x3F0
	je	.LBB0_45
# BB#60:                                # %land.lhs.true.11.i.i
	movl	$epagPaperTable+140, %r13d
	cmpl	$936, %eax              # imm = 0x3A8
	je	.LBB0_45
	jmp	.LBB0_68
.LBB0_17:                               # %if.end.i.i
	cmpl	$297, %ecx              # imm = 0x129
	jne	.LBB0_18
# BB#65:                                # %land.lhs.true.4.i.i
	movsd	%xmm2, (%rsp)           # 8-byte Spill
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	movl	%r13d, 16(%rsp)         # 4-byte Spill
	movl	$epagPaperTable+56, %r13d
	cmpl	$421, %eax              # imm = 0x1A5
	je	.LBB0_45
# BB#66:                                # %for.inc.17.i.i
	movl	$epagPaperTable+224, %r13d
	cmpl	$684, %eax              # imm = 0x2AC
	je	.LBB0_45
	jmp	.LBB0_68
.LBB0_34:                               # %if.end.i.i
	cmpl	$595, %ecx              # imm = 0x253
	jne	.LBB0_35
# BB#54:                                # %land.lhs.true.1.i.i
	movsd	%xmm2, (%rsp)           # 8-byte Spill
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	movl	%r13d, 16(%rsp)         # 4-byte Spill
	movl	$epagPaperTable+20, %r13d
	jmp	.LBB0_55
.LBB0_67:                               # %land.lhs.true.20.i.i
	movsd	%xmm2, (%rsp)           # 8-byte Spill
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	movl	%r13d, 16(%rsp)         # 4-byte Spill
	movl	$epagPaperTable+248, %r13d
	cmpl	$649, %eax              # imm = 0x289
	je	.LBB0_45
	jmp	.LBB0_68
.LBB0_26:                               # %if.end.i.i
	movsd	%xmm2, (%rsp)           # 8-byte Spill
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	movl	%r13d, 16(%rsp)         # 4-byte Spill
	cmpl	$522, %ecx              # imm = 0x20A
	jne	.LBB0_68
# BB#27:                                # %land.lhs.true.10.i.i
	movl	$epagPaperTable+128, %r13d
.LBB0_28:                               # %land.lhs.true.10.i.i
	cmpl	$756, %eax              # imm = 0x2F4
	je	.LBB0_45
	jmp	.LBB0_68
.LBB0_62:                               # %land.lhs.true.13.i.i
	movsd	%xmm2, (%rsp)           # 8-byte Spill
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	movl	%r13d, 16(%rsp)         # 4-byte Spill
	movl	$epagPaperTable+164, %r13d
	cmpl	$1224, %eax             # imm = 0x4C8
	je	.LBB0_45
	jmp	.LBB0_68
.LBB0_43:                               # %if.end.i.i
	movsd	%xmm2, (%rsp)           # 8-byte Spill
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	movl	%r13d, 16(%rsp)         # 4-byte Spill
	cmpl	$842, %ecx              # imm = 0x34A
	jne	.LBB0_68
# BB#44:                                # %land.lhs.true.i.i
	movl	$epagPaperTable+8, %r13d
	cmpl	$1190, %eax             # imm = 0x4A6
	jne	.LBB0_68
	jmp	.LBB0_45
.LBB0_15:                               # %if.end.i.i
	movsd	%xmm2, (%rsp)           # 8-byte Spill
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	movl	%r13d, 16(%rsp)         # 4-byte Spill
	cmpl	$284, %ecx              # imm = 0x11C
	jne	.LBB0_68
# BB#16:                                # %land.lhs.true.15.i.i
	movl	$epagPaperTable+188, %r13d
	cmpl	$419, %eax              # imm = 0x1A3
	je	.LBB0_45
	jmp	.LBB0_68
.LBB0_32:                               # %if.end.i.i
	movsd	%xmm2, (%rsp)           # 8-byte Spill
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	movl	%r13d, 16(%rsp)         # 4-byte Spill
	cmpl	$593, %ecx              # imm = 0x251
	jne	.LBB0_68
# BB#33:                                # %land.lhs.true.14.i.i
	movl	$epagPaperTable+176, %r13d
	cmpl	$935, %eax              # imm = 0x3A7
	je	.LBB0_45
	jmp	.LBB0_68
.LBB0_22:                               # %if.end.i.i
	movsd	%xmm2, (%rsp)           # 8-byte Spill
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	movl	%r13d, 16(%rsp)         # 4-byte Spill
	cmpl	$421, %ecx              # imm = 0x1A5
	jne	.LBB0_68
# BB#23:                                # %land.lhs.true.3.i.i
	movl	$epagPaperTable+44, %r13d
	cmpl	$595, %eax              # imm = 0x253
	je	.LBB0_45
	jmp	.LBB0_68
.LBB0_39:                               # %if.end.i.i
	movsd	%xmm2, (%rsp)           # 8-byte Spill
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	movl	%r13d, 16(%rsp)         # 4-byte Spill
	cmpl	$729, %ecx              # imm = 0x2D9
	jne	.LBB0_68
# BB#40:                                # %land.lhs.true.5.i.i
	movl	$epagPaperTable+68, %r13d
	cmpl	$1032, %eax             # imm = 0x408
	je	.LBB0_45
	jmp	.LBB0_68
.LBB0_18:                               # %if.end.i.i
	movsd	%xmm2, (%rsp)           # 8-byte Spill
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	movl	%r13d, 16(%rsp)         # 4-byte Spill
	cmpl	$312, %ecx              # imm = 0x138
	jne	.LBB0_68
# BB#19:                                # %land.lhs.true.19.i.i
	movl	$epagPaperTable+236, %r13d
	cmpl	$624, %eax              # imm = 0x270
	je	.LBB0_45
	jmp	.LBB0_68
.LBB0_35:                               # %if.end.i.i
	movsd	%xmm2, (%rsp)           # 8-byte Spill
	movsd	%xmm3, 8(%rsp)          # 8-byte Spill
	movl	%r13d, 16(%rsp)         # 4-byte Spill
	cmpl	$597, %ecx              # imm = 0x255
	jne	.LBB0_68
# BB#36:                                # %land.lhs.true.2.i.i
	movl	$epagPaperTable+32, %r13d
.LBB0_55:                               # %land.lhs.true.2.i.i
	cmpl	$842, %eax              # imm = 0x34A
	je	.LBB0_45
.LBB0_68:                               # %for.inc.20.i.i
	movl	$epagPaperTable+260, %r13d
.LBB0_45:                               # %for.end.i.i
	movl	(%r13), %ecx
	movl	$.L.str.25, %esi
	movl	$29, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	cmpl	$0, (%r13)
	jns	.LBB0_47
# BB#46:                                # %if.then.44.i.i
	cvttsd2si	(%rsp), %ecx    # 8-byte Folded Reload
	cvttsd2si	8(%rsp), %edx   # 8-byte Folded Reload
	movl	$.L.str.26, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
.LBB0_47:                               # %escpage_printer_initialize.exit
	movl	$.L.str.27, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.28, %esi
	movl	$29, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	16(%rsp), %ecx          # 4-byte Reload
	callq	fprintf
	cmpl	$255, %r12d
	movl	$255, %ecx
	cmovlel	%r12d, %ecx
	movl	$.L.str.23, %esi
	movl	$29, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.24, %esi
	movl	$29, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
.LBB0_48:                               # %if.end
	movq	24(%rbx), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	leal	(%r15,%r15,2), %eax
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%eax, %esi
	sarl	%esi
	incl	%esi
	movl	$.L.str.12, %ecx
	movl	%ebp, %edx
	callq	*88(%rdi)
	movq	%rax, 18528(%rbx)
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB0_70
# BB#49:                                # %if.end.10
	cmpl	$0, 18488(%rbx)
	je	.LBB0_51
# BB#50:                                # %if.then.12
	movl	$.L.str.13, %esi
	movl	$29, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	832(%rbx), %ecx
	movl	836(%rbx), %r8d
	movl	$.L.str.14, %esi
	movl	$29, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	movl	$.L.str.15, %esi
	movl	$29, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
.LBB0_51:                               # %if.end.16
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	lprn_print_image
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB0_70
# BB#52:                                # %if.end.20
	movq	24(%rbx), %rax
	movq	200(%rax), %rax
	movq	200(%rax), %rdi
	movq	18528(%rbx), %rsi
	movl	$.L.str.12, %edx
	callq	*24(%rdi)
	cmpl	$0, 17164(%rbx)
	je	.LBB0_69
# BB#53:                                # %if.then.30
	movl	$.L.str.3, %esi
	movl	$29, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
	jmp	.LBB0_70
.LBB0_69:                               # %if.else
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	fprintf
.LBB0_70:                               # %cleanup
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	lp2000_print_page_copies, .Lfunc_end0-lp2000_print_page_copies
	.cfi_endproc

	.align	16, 0x90
	.type	escpage_image_out,@function
escpage_image_out:                      # @escpage_image_out
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
	subq	$24, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 80
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
	movl	%r9d, %r12d
	movl	%r8d, %ebx
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movl	%edx, %r15d
	movq	%rsi, %r13
	movq	%rdi, %rbp
	movl	$.L.str.29, %esi
	movl	$29, %edx
	movl	$29, %r8d
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	%r15d, %r9d
	callq	fprintf
	movq	18520(%rbp), %rdi
	movq	18528(%rbp), %rsi
	movl	%ebx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%rbx), %edx
	sarl	$3, %edx
	imull	%r12d, %edx
	callq	lips_mode3format_encode
	movl	%eax, %r14d
	movl	$.L.str.30, %esi
	movl	$29, %edx
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	%r14d, %ecx
	movl	%ebx, %r8d
	movl	%r12d, %r9d
	callq	fprintf
	movq	18528(%rbp), %rdi
	movslq	%r14d, %rdx
	movl	$1, %esi
	movq	%r13, %rcx
	callq	fwrite
	cmpl	$0, 18568(%rbp)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movl	$.L.str.31, %esi
	movl	$29, %edx
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	fprintf
	addl	%r15d, %ebx
	movl	20(%rsp), %r8d          # 4-byte Reload
	addl	%r8d, %r12d
	movl	%r12d, (%rsp)
	movl	$.L.str.32, %esi
	movl	$29, %edx
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	%ebx, %r9d
	movl	%r15d, %ecx
	callq	fprintf
.LBB1_2:                                # %if.end
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	escpage_image_out, .Lfunc_end1-escpage_image_out
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_0:
	.long	1133903872              # float 300
	.text
	.align	16, 0x90
	.type	escpage_print_page_copies,@function
escpage_print_page_copies:              # @escpage_print_page_copies
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp29:
	.cfi_def_cfa_offset 48
.Ltmp30:
	.cfi_offset %rbx, -32
.Ltmp31:
	.cfi_offset %r14, -24
.Ltmp32:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	cmpq	$0, 928(%rbp)
	jne	.LBB2_7
# BB#1:                                 # %if.then
	movss	884(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 12(%rsp)         # 4-byte Spill
	movl	$.L.str.4, %edi
	movq	%rbx, %rsi
	callq	fputs
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	cmpl	$0, 18496(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then.2
	movl	$.L.str.6, %esi
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movl	$.L.str.7, %esi
.LBB2_4:                                # %if.end
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movl	$.L.str.9, %edx
	movss	12(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI2_0(%rip), %xmm0
	ja	.LBB2_6
# BB#5:                                 # %select.mid
	movl	$.L.str.10, %edx
.LBB2_6:                                # %select.end
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movl	$.L.str.11, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
.LBB2_7:                                # %if.end.9
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	lp2000_print_page_copies # TAILCALL
.Lfunc_end2:
	.size	escpage_print_page_copies, .Lfunc_end2-escpage_print_page_copies
	.cfi_endproc

	.align	16, 0x90
	.type	lp2000_open,@function
lp2000_open:                            # @lp2000_open
	.cfi_startproc
# BB#0:                                 # %entry
	cvttss2si	884(%rdi), %eax
	cvttss2si	888(%rdi), %ecx
	cmpl	%ecx, %eax
	jne	.LBB3_2
# BB#1:                                 # %entry
	addl	$-60, %eax
	cmpl	$240, %eax
	ja	.LBB3_2
# BB#3:                                 # %if.end.10
	jmp	gdev_prn_open           # TAILCALL
.LBB3_2:                                # %cleanup
	movl	$-15, %eax
	retq
.Lfunc_end3:
	.size	lp2000_open, .Lfunc_end3-lp2000_open
	.cfi_endproc

	.align	16, 0x90
	.type	escpage_open,@function
escpage_open:                           # @escpage_open
	.cfi_startproc
# BB#0:                                 # %entry
	cvttss2si	884(%rdi), %eax
	cvttss2si	888(%rdi), %ecx
	cmpl	%ecx, %eax
	jne	.LBB4_2
# BB#1:                                 # %entry
	addl	$-60, %eax
	cmpl	$540, %eax              # imm = 0x21C
	ja	.LBB4_2
# BB#3:                                 # %if.end.10
	jmp	gdev_prn_open           # TAILCALL
.LBB4_2:                                # %cleanup
	movl	$-15, %eax
	retq
.Lfunc_end4:
	.size	escpage_open, .Lfunc_end4-escpage_open
	.cfi_endproc

	.align	16, 0x90
	.type	escpage_close,@function
escpage_close:                          # @escpage_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$1, %esi
	callq	gdev_prn_open_printer
	cmpl	$0, 17164(%rbx)
	je	.LBB5_3
# BB#1:                                 # %land.lhs.true
	testb	$1, 928(%rbx)
	je	.LBB5_3
# BB#2:                                 # %if.then
	movq	17176(%rbx), %rdi
	movl	$.L.str.3, %esi
	movl	$29, %edx
	xorl	%eax, %eax
	callq	fprintf
.LBB5_3:                                # %if.end
	movq	17176(%rbx), %rsi
	movl	$.L.str.4, %edi
	callq	fputs
	movq	17176(%rbx), %rsi
	movl	$.L.str.4, %edi
	callq	fputs
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_close          # TAILCALL
.Lfunc_end5:
	.size	escpage_close, .Lfunc_end5-escpage_close
	.cfi_endproc

	.type	lp2000_prn_procs,@object # @lp2000_prn_procs
	.data
	.align	8
lp2000_prn_procs:
	.quad	lp2000_open
	.quad	0
	.quad	0
	.quad	gdev_prn_output_page
	.quad	gdev_prn_close
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	lprn_get_params
	.quad	lprn_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_dev_spec_op
	.quad	0
	.quad	gx_default_get_profile
	.quad	gx_default_set_graphics_type_tag
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	lp2000_prn_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"lp2000"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_lp2000_device,@object # @gs_lp2000_device
	.data
	.globl	gs_lp2000_device
	.align	8
gs_lp2000_device:
	.long	18576                   # 0x4890
	.zero	4
	.quad	lp2000_prn_procs
	.quad	.L.str
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
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	2460                    # 0x99c
	.long	3480                    # 0xd98
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142135194              # float 5.904000e+02
	.long	1146145997              # float 8.352000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
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
	.zero	584
	.zero	11240
	.quad	0
	.quad	lp2000_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.quad	escpage_image_out
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	256                     # 0x100
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	4                       # 0x4
	.long	32                      # 0x20
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.size	gs_lp2000_device, 18576

	.type	escpage_prn_procs,@object # @escpage_prn_procs
	.align	8
escpage_prn_procs:
	.quad	escpage_open
	.quad	0
	.quad	0
	.quad	gdev_prn_output_page
	.quad	escpage_close
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	lprn_get_params
	.quad	lprn_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_b_w_map_rgb_color
	.quad	gx_default_b_w_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_dev_spec_op
	.quad	0
	.quad	gx_default_get_profile
	.quad	gx_default_set_graphics_type_tag
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	escpage_prn_procs, 584

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"escpage"
	.size	.L.str.2, 8

	.type	gs_escpage_device,@object # @gs_escpage_device
	.data
	.globl	gs_escpage_device
	.align	8
gs_escpage_device:
	.long	18576                   # 0x4890
	.zero	4
	.quad	escpage_prn_procs
	.quad	.L.str.2
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
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	2460                    # 0x99c
	.long	3480                    # 0xd98
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142135194              # float 5.904000e+02
	.long	1146145997              # float 8.352000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	1133903872              # float 3.000000e+02
	.long	2147483648              # float -0.000000e+00
	.long	2147483648              # float -0.000000e+00
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
	.zero	584
	.zero	11240
	.quad	0
	.quad	escpage_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.quad	escpage_image_out
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	256                     # 0x100
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	4                       # 0x4
	.long	32                      # 0x20
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.size	gs_escpage_device, 18576

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"%c0dpsE"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\033\001@EJL \r\n"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"@EJL SELECT LANGUAGE=ESC/PAGE\r\n"
	.size	.L.str.5, 32

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"@EJL SET RI=OFF\r\n"
	.size	.L.str.6, 18

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"@EJL SET RI=ON\r\n"
	.size	.L.str.7, 17

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"@EJL SET RS=%s\r\n"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"FN"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"QK"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"@EJL ENTER LANGUAGE=ESC/PAGE\r\n"
	.size	.L.str.11, 31

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"lp2000_print_page_copies(CompBuf)"
	.size	.L.str.12, 34

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%c1dmG"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%c0;0;%d;%d;0rG"
	.size	.L.str.14, 16

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%c2owE"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"\f"
	.size	.L.str.16, 2

	.type	can_inits,@object       # @can_inits
	.data
	.align	16
can_inits:
	.ascii	"\033S\033\033S\034\033z\000\000\035rhE\0351mmE\0353bcI\0350;0iuE"
	.size	can_inits, 31

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"%c1sdE"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%c0bdE"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%c1bdE"
	.size	.L.str.19, 7

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%c0sdE"
	.size	.L.str.20, 7

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"%c0;%4.2fmuE"
	.size	.L.str.21, 13

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%c0;%d;%ddrE"
	.size	.L.str.22, 13

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%c%dcoO"
	.size	.L.str.23, 8

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%c0;0loE"
	.size	.L.str.24, 9

	.type	epagPaperTable,@object  # @epagPaperTable
	.section	.rodata,"a",@progbits
	.align	16
epagPaperTable:
	.long	842                     # 0x34a
	.long	1190                    # 0x4a6
	.long	13                      # 0xd
	.long	595                     # 0x253
	.long	842                     # 0x34a
	.long	14                      # 0xe
	.long	597                     # 0x255
	.long	842                     # 0x34a
	.long	14                      # 0xe
	.long	421                     # 0x1a5
	.long	595                     # 0x253
	.long	15                      # 0xf
	.long	297                     # 0x129
	.long	421                     # 0x1a5
	.long	16                      # 0x10
	.long	729                     # 0x2d9
	.long	1032                    # 0x408
	.long	24                      # 0x18
	.long	516                     # 0x204
	.long	729                     # 0x2d9
	.long	25                      # 0x19
	.long	612                     # 0x264
	.long	792                     # 0x318
	.long	30                      # 0x1e
	.long	396                     # 0x18c
	.long	612                     # 0x264
	.long	31                      # 0x1f
	.long	612                     # 0x264
	.long	1008                    # 0x3f0
	.long	32                      # 0x20
	.long	522                     # 0x20a
	.long	756                     # 0x2f4
	.long	33                      # 0x21
	.long	612                     # 0x264
	.long	936                     # 0x3a8
	.long	34                      # 0x22
	.long	576                     # 0x240
	.long	756                     # 0x2f4
	.long	35                      # 0x23
	.long	792                     # 0x318
	.long	1224                    # 0x4c8
	.long	36                      # 0x24
	.long	593                     # 0x251
	.long	935                     # 0x3a7
	.long	37                      # 0x25
	.long	284                     # 0x11c
	.long	419                     # 0x1a3
	.long	38                      # 0x26
	.long	933                     # 0x3a5
	.long	1369                    # 0x559
	.long	72                      # 0x48
	.long	279                     # 0x117
	.long	540                     # 0x21c
	.long	80                      # 0x50
	.long	297                     # 0x129
	.long	684                     # 0x2ac
	.long	81                      # 0x51
	.long	312                     # 0x138
	.long	624                     # 0x270
	.long	90                      # 0x5a
	.long	459                     # 0x1cb
	.long	649                     # 0x289
	.long	91                      # 0x5b
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.size	epagPaperTable, 264

	.type	.L.str.25,@object       # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"%c%d"
	.size	.L.str.25, 5

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	";%d;%d"
	.size	.L.str.26, 7

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"psE"
	.size	.L.str.27, 4

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"%c%dpoE"
	.size	.L.str.28, 8

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"%c%dY%c%dX"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"%c%d;%d;%d;0bi{I"
	.size	.L.str.30, 17

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"%c0dmG"
	.size	.L.str.31, 7

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%c%d;%d;%d;%d;0rG"
	.size	.L.str.32, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
