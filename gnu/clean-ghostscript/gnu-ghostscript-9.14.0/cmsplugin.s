	.text
	.file	"cmsplugin.bc"
	.globl	_cmsAdjustEndianess16
	.align	16, 0x90
	.type	_cmsAdjustEndianess16,@function
_cmsAdjustEndianess16:                  # @_cmsAdjustEndianess16
	.cfi_startproc
# BB#0:                                 # %entry
	rolw	$8, %di
	movzwl	%di, %eax
	retq
.Lfunc_end0:
	.size	_cmsAdjustEndianess16, .Lfunc_end0-_cmsAdjustEndianess16
	.cfi_endproc

	.globl	_cmsAdjustEndianess32
	.align	16, 0x90
	.type	_cmsAdjustEndianess32,@function
_cmsAdjustEndianess32:                  # @_cmsAdjustEndianess32
	.cfi_startproc
# BB#0:                                 # %entry
	bswapl	%edi
	movl	%edi, %eax
	retq
.Lfunc_end1:
	.size	_cmsAdjustEndianess32, .Lfunc_end1-_cmsAdjustEndianess32
	.cfi_endproc

	.globl	_cmsAdjustEndianess64
	.align	16, 0x90
	.type	_cmsAdjustEndianess64,@function
_cmsAdjustEndianess64:                  # @_cmsAdjustEndianess64
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp0:
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.LBB2_2
# BB#1:                                 # %cond.end
	movb	(%rsi), %al
	movb	%al, 7(%rdi)
	movb	1(%rsi), %al
	movb	%al, 6(%rdi)
	movb	2(%rsi), %al
	movb	%al, 5(%rdi)
	movb	3(%rsi), %al
	movb	%al, 4(%rdi)
	movb	4(%rsi), %al
	movb	%al, 3(%rdi)
	movb	5(%rsi), %al
	movb	%al, 2(%rdi)
	movb	6(%rsi), %al
	movb	%al, 1(%rdi)
	movb	7(%rsi), %al
	movb	%al, (%rdi)
	popq	%rax
	retq
.LBB2_2:                                # %cond.false
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$87, %edx
	movl	$.L__PRETTY_FUNCTION__._cmsAdjustEndianess64, %ecx
	callq	__assert_fail
.Lfunc_end2:
	.size	_cmsAdjustEndianess64, .Lfunc_end2-_cmsAdjustEndianess64
	.cfi_endproc

	.globl	_cmsReadUInt8Number
	.align	16, 0x90
	.type	_cmsReadUInt8Number,@function
_cmsReadUInt8Number:                    # @_cmsReadUInt8Number
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	testq	%rdi, %rdi
	je	.LBB3_6
# BB#1:                                 # %cond.end
	leaq	15(%rsp), %rsi
	movl	$1, %edx
	movl	$1, %ecx
	callq	*280(%rdi)
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$1, %ecx
	jne	.LBB3_5
# BB#2:                                 # %if.end
	testq	%rbx, %rbx
	je	.LBB3_4
# BB#3:                                 # %if.then.3
	movb	15(%rsp), %al
	movb	%al, (%rbx)
.LBB3_4:                                # %cleanup
	movl	$1, %eax
.LBB3_5:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.LBB3_6:                                # %cond.false
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$115, %edx
	movl	$.L__PRETTY_FUNCTION__._cmsReadUInt8Number, %ecx
	callq	__assert_fail
.Lfunc_end3:
	.size	_cmsReadUInt8Number, .Lfunc_end3-_cmsReadUInt8Number
	.cfi_endproc

	.globl	_cmsReadUInt16Number
	.align	16, 0x90
	.type	_cmsReadUInt16Number,@function
_cmsReadUInt16Number:                   # @_cmsReadUInt16Number
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp5:
	.cfi_def_cfa_offset 32
.Ltmp6:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	testq	%rdi, %rdi
	je	.LBB4_6
# BB#1:                                 # %cond.end
	leaq	14(%rsp), %rsi
	movl	$2, %edx
	movl	$1, %ecx
	callq	*280(%rdi)
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$1, %ecx
	jne	.LBB4_5
# BB#2:                                 # %if.end
	testq	%rbx, %rbx
	je	.LBB4_4
# BB#3:                                 # %if.then.3
	movw	14(%rsp), %ax
	rolw	$8, %ax
	movw	%ax, (%rbx)
.LBB4_4:                                # %cleanup
	movl	$1, %eax
.LBB4_5:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.LBB4_6:                                # %cond.false
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$128, %edx
	movl	$.L__PRETTY_FUNCTION__._cmsReadUInt16Number, %ecx
	callq	__assert_fail
.Lfunc_end4:
	.size	_cmsReadUInt16Number, .Lfunc_end4-_cmsReadUInt16Number
	.cfi_endproc

	.globl	_cmsReadUInt16Array
	.align	16, 0x90
	.type	_cmsReadUInt16Array,@function
_cmsReadUInt16Array:                    # @_cmsReadUInt16Array
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp9:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp10:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp11:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp12:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp13:
	.cfi_def_cfa_offset 64
.Ltmp14:
	.cfi_offset %rbx, -56
.Ltmp15:
	.cfi_offset %r12, -48
.Ltmp16:
	.cfi_offset %r13, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB5_11
# BB#1:                                 # %for.cond.preheader
	movl	$1, %eax
	testl	%esi, %esi
	je	.LBB5_10
# BB#2:                                 # %for.body.lr.ph
	movl	%esi, %r13d
	xorl	%ebp, %ebp
	leaq	4(%rsp), %r12
	movq	%r15, %r14
	.align	16, 0x90
.LBB5_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$2, %edx
	movl	$1, %ecx
	movq	%rbx, %rdi
	testq	%r15, %r15
	je	.LBB5_8
# BB#4:                                 # %cond.end.i
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	%r12, %rsi
	callq	*280(%rbx)
	cmpl	$1, %eax
	jne	.LBB5_5
# BB#6:                                 # %if.end.i
                                        #   in Loop: Header=BB5_3 Depth=1
	testq	%r14, %r14
	je	.LBB5_9
# BB#7:                                 # %if.then.3.i
                                        #   in Loop: Header=BB5_3 Depth=1
	movw	4(%rsp), %ax
	rolw	$8, %ax
	movw	%ax, (%r14)
	jmp	.LBB5_9
	.align	16, 0x90
.LBB5_8:                                # %cond.end.i.12
                                        #   in Loop: Header=BB5_3 Depth=1
	leaq	6(%rsp), %rsi
	callq	*280(%rbx)
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$1, %ecx
	jne	.LBB5_10
.LBB5_9:                                # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=1
	incq	%rbp
	addq	$2, %r14
	movl	$1, %eax
	cmpq	%r13, %rbp
	jb	.LBB5_3
	jmp	.LBB5_10
.LBB5_5:                                # %_cmsReadUInt16Number.exit.thread17
	xorl	%eax, %eax
.LBB5_10:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_11:                               # %cond.false
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$141, %edx
	movl	$.L__PRETTY_FUNCTION__._cmsReadUInt16Array, %ecx
	callq	__assert_fail
.Lfunc_end5:
	.size	_cmsReadUInt16Array, .Lfunc_end5-_cmsReadUInt16Array
	.cfi_endproc

	.globl	_cmsReadUInt32Number
	.align	16, 0x90
	.type	_cmsReadUInt32Number,@function
_cmsReadUInt32Number:                   # @_cmsReadUInt32Number
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp21:
	.cfi_def_cfa_offset 32
.Ltmp22:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	testq	%rdi, %rdi
	je	.LBB6_6
# BB#1:                                 # %cond.end
	leaq	12(%rsp), %rsi
	movl	$4, %edx
	movl	$1, %ecx
	callq	*280(%rdi)
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$1, %ecx
	jne	.LBB6_5
# BB#2:                                 # %if.end
	testq	%rbx, %rbx
	je	.LBB6_4
# BB#3:                                 # %if.then.3
	movl	12(%rsp), %eax
	bswapl	%eax
	movl	%eax, (%rbx)
.LBB6_4:                                # %cleanup
	movl	$1, %eax
.LBB6_5:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.LBB6_6:                                # %cond.false
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$160, %edx
	movl	$.L__PRETTY_FUNCTION__._cmsReadUInt32Number, %ecx
	callq	__assert_fail
.Lfunc_end6:
	.size	_cmsReadUInt32Number, .Lfunc_end6-_cmsReadUInt32Number
	.cfi_endproc

	.globl	_cmsReadFloat32Number
	.align	16, 0x90
	.type	_cmsReadFloat32Number,@function
_cmsReadFloat32Number:                  # @_cmsReadFloat32Number
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp24:
	.cfi_def_cfa_offset 32
.Ltmp25:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	testq	%rdi, %rdi
	je	.LBB7_6
# BB#1:                                 # %cond.end
	leaq	12(%rsp), %rsi
	movl	$4, %edx
	movl	$1, %ecx
	callq	*280(%rdi)
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$1, %ecx
	jne	.LBB7_5
# BB#2:                                 # %if.end
	testq	%rbx, %rbx
	je	.LBB7_4
# BB#3:                                 # %if.then.3
	movl	12(%rsp), %eax
	bswapl	%eax
	movl	%eax, 12(%rsp)
	movl	%eax, (%rbx)
.LBB7_4:                                # %cleanup
	movl	$1, %eax
.LBB7_5:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.LBB7_6:                                # %cond.false
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$173, %edx
	movl	$.L__PRETTY_FUNCTION__._cmsReadFloat32Number, %ecx
	callq	__assert_fail
.Lfunc_end7:
	.size	_cmsReadFloat32Number, .Lfunc_end7-_cmsReadFloat32Number
	.cfi_endproc

	.globl	_cmsReadUInt64Number
	.align	16, 0x90
	.type	_cmsReadUInt64Number,@function
_cmsReadUInt64Number:                   # @_cmsReadUInt64Number
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp26:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp27:
	.cfi_def_cfa_offset 32
.Ltmp28:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	testq	%rdi, %rdi
	je	.LBB8_6
# BB#1:                                 # %cond.end
	leaq	8(%rsp), %rsi
	movl	$8, %edx
	movl	$1, %ecx
	callq	*280(%rdi)
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$1, %ecx
	jne	.LBB8_5
# BB#2:                                 # %if.end
	testq	%rbx, %rbx
	je	.LBB8_4
# BB#3:                                 # %_cmsAdjustEndianess64.exit
	movb	11(%rsp), %cl
	movq	8(%rsp), %rax
	movb	%al, 7(%rbx)
	movb	%ah, 6(%rbx)  # NOREX
	movl	%eax, %edx
	shrl	$16, %edx
	movb	%dl, 5(%rbx)
	movb	%cl, 4(%rbx)
	movq	%rax, %rcx
	shrq	$32, %rcx
	movb	%cl, 3(%rbx)
	movq	%rax, %rcx
	shrq	$40, %rcx
	movb	%cl, 2(%rbx)
	movq	%rax, %rcx
	shrq	$48, %rcx
	movb	%cl, 1(%rbx)
	shrq	$56, %rax
	movb	%al, (%rbx)
.LBB8_4:                                # %cleanup
	movl	$1, %eax
.LBB8_5:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.LBB8_6:                                # %cond.false
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$191, %edx
	movl	$.L__PRETTY_FUNCTION__._cmsReadUInt64Number, %ecx
	callq	__assert_fail
.Lfunc_end8:
	.size	_cmsReadUInt64Number, .Lfunc_end8-_cmsReadUInt64Number
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4535124824762089472     # double 1.52587890625E-5
	.text
	.globl	_cmsRead15Fixed16Number
	.align	16, 0x90
	.type	_cmsRead15Fixed16Number,@function
_cmsRead15Fixed16Number:                # @_cmsRead15Fixed16Number
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp30:
	.cfi_def_cfa_offset 32
.Ltmp31:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	testq	%rdi, %rdi
	je	.LBB9_6
# BB#1:                                 # %cond.end
	leaq	12(%rsp), %rsi
	movl	$4, %edx
	movl	$1, %ecx
	callq	*280(%rdi)
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$1, %ecx
	jne	.LBB9_5
# BB#2:                                 # %if.end
	testq	%rbx, %rbx
	je	.LBB9_4
# BB#3:                                 # %if.then.3
	movl	12(%rsp), %edi
	bswapl	%edi
	movl	%edi, %eax
	sarl	$31, %eax
	orl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	callq	abs
	movzwl	%ax, %ecx
	shrl	$16, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	mulsd	.LCPI9_0(%rip), %xmm0
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm0, %xmm1
	mulsd	(%rsp), %xmm1           # 8-byte Folded Reload
	movsd	%xmm1, (%rbx)
.LBB9_4:                                # %cleanup
	movl	$1, %eax
.LBB9_5:                                # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.LBB9_6:                                # %cond.false
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$205, %edx
	movl	$.L__PRETTY_FUNCTION__._cmsRead15Fixed16Number, %ecx
	callq	__assert_fail
.Lfunc_end9:
	.size	_cmsRead15Fixed16Number, .Lfunc_end9-_cmsRead15Fixed16Number
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4535124824762089472     # double 1.52587890625E-5
	.text
	.globl	_cms15Fixed16toDouble
	.align	16, 0x90
	.type	_cms15Fixed16toDouble,@function
_cms15Fixed16toDouble:                  # @_cms15Fixed16toDouble
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp32:
	.cfi_def_cfa_offset 16
	movl	%edi, %eax
	sarl	$31, %eax
	orl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	callq	abs
	movzwl	%ax, %ecx
	shrl	$16, %eax
	cvtsi2sdl	%ecx, %xmm1
	mulsd	.LCPI10_0(%rip), %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	%xmm1, %xmm0
	mulsd	(%rsp), %xmm0           # 8-byte Folded Reload
	popq	%rax
	retq
.Lfunc_end10:
	.size	_cms15Fixed16toDouble, .Lfunc_end10-_cms15Fixed16toDouble
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4535124824762089472     # double 1.52587890625E-5
.LCPI11_1:
	.quad	4611686018427387904     # double 2
.LCPI11_2:
	.quad	4621819117588971520     # double 10
	.text
	.globl	_cmsReadXYZNumber
	.align	16, 0x90
	.type	_cmsReadXYZNumber,@function
_cmsReadXYZNumber:                      # @_cmsReadXYZNumber
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 16
	subq	$48, %rsp
.Ltmp34:
	.cfi_def_cfa_offset 64
.Ltmp35:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	testq	%rdi, %rdi
	je	.LBB11_10
# BB#1:                                 # %cond.end
	leaq	32(%rsp), %rsi
	movl	$12, %edx
	movl	$1, %ecx
	callq	*280(%rdi)
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$1, %ecx
	jne	.LBB11_9
# BB#2:                                 # %if.end
	testq	%rbx, %rbx
	je	.LBB11_8
# BB#3:                                 # %if.then.3
	movl	32(%rsp), %edi
	bswapl	%edi
	movl	%edi, %eax
	sarl	$31, %eax
	orl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	callq	abs
	movzwl	%ax, %ecx
	shrl	$16, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	mulsd	.LCPI11_0(%rip), %xmm0
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm0, %xmm1
	mulsd	24(%rsp), %xmm1         # 8-byte Folded Reload
	movsd	%xmm1, 24(%rsp)         # 8-byte Spill
	movsd	%xmm1, (%rbx)
	movl	36(%rsp), %edi
	bswapl	%edi
	movl	%edi, %eax
	sarl	$31, %eax
	orl	$1, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	callq	abs
	movzwl	%ax, %ecx
	shrl	$16, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	mulsd	.LCPI11_0(%rip), %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm0, %xmm1
	mulsd	16(%rsp), %xmm1         # 8-byte Folded Reload
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	movsd	%xmm1, 8(%rbx)
	movl	40(%rsp), %edi
	bswapl	%edi
	movl	%edi, %eax
	sarl	$31, %eax
	orl	$1, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	callq	abs
	movsd	24(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movzwl	%ax, %ecx
	shrl	$16, %eax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%ecx, %xmm1
	mulsd	.LCPI11_0(%rip), %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	addsd	%xmm1, %xmm0
	mulsd	16(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 16(%rbx)
	ucomisd	.LCPI11_1(%rip), %xmm2
	jbe	.LBB11_8
# BB#4:
	movsd	.LCPI11_2(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	8(%rsp), %xmm3          # 8-byte Reload
                                        # xmm3 = mem[0],zero
	.align	16, 0x90
.LBB11_5:                               # %land.lhs.true.i
                                        # =>This Inner Loop Header: Depth=1
	ucomisd	.LCPI11_1(%rip), %xmm3
	jbe	.LBB11_8
# BB#6:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB11_5 Depth=1
	ucomisd	.LCPI11_1(%rip), %xmm0
	jbe	.LBB11_8
# BB#7:                                 # %while.body.i
                                        #   in Loop: Header=BB11_5 Depth=1
	divsd	%xmm1, %xmm2
	movsd	%xmm2, (%rbx)
	divsd	%xmm1, %xmm3
	movsd	%xmm3, 8(%rbx)
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%rbx)
	ucomisd	.LCPI11_1(%rip), %xmm2
	ja	.LBB11_5
.LBB11_8:
	movl	$1, %eax
.LBB11_9:                               # %cleanup
	addq	$48, %rsp
	popq	%rbx
	retq
.LBB11_10:                              # %cond.false
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$238, %edx
	movl	$.L__PRETTY_FUNCTION__._cmsReadXYZNumber, %ecx
	callq	__assert_fail
.Lfunc_end11:
	.size	_cmsReadXYZNumber, .Lfunc_end11-_cmsReadXYZNumber
	.cfi_endproc

	.globl	_cmsWriteUInt8Number
	.align	16, 0x90
	.type	_cmsWriteUInt8Number,@function
_cmsWriteUInt8Number:                   # @_cmsWriteUInt8Number
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp36:
	.cfi_def_cfa_offset 16
	movb	%sil, 7(%rsp)
	testq	%rdi, %rdi
	je	.LBB12_2
# BB#1:                                 # %cond.end
	leaq	7(%rsp), %rdx
	movl	$1, %esi
	callq	*312(%rdi)
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	popq	%rdx
	retq
.LBB12_2:                               # %cond.false
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$255, %edx
	movl	$.L__PRETTY_FUNCTION__._cmsWriteUInt8Number, %ecx
	callq	__assert_fail
.Lfunc_end12:
	.size	_cmsWriteUInt8Number, .Lfunc_end12-_cmsWriteUInt8Number
	.cfi_endproc

	.globl	_cmsWriteUInt16Number
	.align	16, 0x90
	.type	_cmsWriteUInt16Number,@function
_cmsWriteUInt16Number:                  # @_cmsWriteUInt16Number
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp37:
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.LBB13_2
# BB#1:                                 # %cond.end
	rolw	$8, %si
	movw	%si, 6(%rsp)
	leaq	6(%rsp), %rdx
	movl	$2, %esi
	callq	*312(%rdi)
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	popq	%rdx
	retq
.LBB13_2:                               # %cond.false
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$267, %edx              # imm = 0x10B
	movl	$.L__PRETTY_FUNCTION__._cmsWriteUInt16Number, %ecx
	callq	__assert_fail
.Lfunc_end13:
	.size	_cmsWriteUInt16Number, .Lfunc_end13-_cmsWriteUInt16Number
	.cfi_endproc

	.globl	_cmsWriteUInt16Array
	.align	16, 0x90
	.type	_cmsWriteUInt16Array,@function
_cmsWriteUInt16Array:                   # @_cmsWriteUInt16Array
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
	pushq	%r13
.Ltmp41:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp42:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp43:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp44:
	.cfi_def_cfa_offset 64
.Ltmp45:
	.cfi_offset %rbx, -56
.Ltmp46:
	.cfi_offset %r12, -48
.Ltmp47:
	.cfi_offset %r13, -40
.Ltmp48:
	.cfi_offset %r14, -32
.Ltmp49:
	.cfi_offset %r15, -24
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB14_9
# BB#1:                                 # %cond.end
	testq	%r14, %r14
	je	.LBB14_4
# BB#2:                                 # %for.cond.preheader
	movl	$1, %r15d
	testl	%esi, %esi
	je	.LBB14_8
# BB#3:                                 # %_cmsWriteUInt16Number.exit.lr.ph
	movl	%esi, %r13d
	xorl	%ebp, %ebp
	leaq	6(%rsp), %r12
	.align	16, 0x90
.LBB14_6:                               # %_cmsWriteUInt16Number.exit
                                        # =>This Inner Loop Header: Depth=1
	movw	(%r14,%rbp,2), %ax
	rolw	$8, %ax
	movw	%ax, 6(%rsp)
	movl	$2, %esi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	*312(%rbx)
	cmpl	$1, %eax
	jne	.LBB14_7
# BB#5:                                 # %for.cond
                                        #   in Loop: Header=BB14_6 Depth=1
	incq	%rbp
	cmpq	%r13, %rbp
	jb	.LBB14_6
	jmp	.LBB14_8
.LBB14_7:
	xorl	%r15d, %r15d
.LBB14_8:                               # %cleanup
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB14_9:                               # %cond.false
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$280, %edx              # imm = 0x118
	movl	$.L__PRETTY_FUNCTION__._cmsWriteUInt16Array, %ecx
	callq	__assert_fail
.LBB14_4:                               # %cond.false.3
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$281, %edx              # imm = 0x119
	movl	$.L__PRETTY_FUNCTION__._cmsWriteUInt16Array, %ecx
	callq	__assert_fail
.Lfunc_end14:
	.size	_cmsWriteUInt16Array, .Lfunc_end14-_cmsWriteUInt16Array
	.cfi_endproc

	.globl	_cmsWriteUInt32Number
	.align	16, 0x90
	.type	_cmsWriteUInt32Number,@function
_cmsWriteUInt32Number:                  # @_cmsWriteUInt32Number
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp51:
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.LBB15_2
# BB#1:                                 # %cond.end
	bswapl	%esi
	movl	%esi, 4(%rsp)
	leaq	4(%rsp), %rdx
	movl	$4, %esi
	callq	*312(%rdi)
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	popq	%rdx
	retq
.LBB15_2:                               # %cond.false
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$294, %edx              # imm = 0x126
	movl	$.L__PRETTY_FUNCTION__._cmsWriteUInt32Number, %ecx
	callq	__assert_fail
.Lfunc_end15:
	.size	_cmsWriteUInt32Number, .Lfunc_end15-_cmsWriteUInt32Number
	.cfi_endproc

	.globl	_cmsWriteFloat32Number
	.align	16, 0x90
	.type	_cmsWriteFloat32Number,@function
_cmsWriteFloat32Number:                 # @_cmsWriteFloat32Number
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp52:
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.LBB16_2
# BB#1:                                 # %cond.end
	movd	%xmm0, %eax
	bswapl	%eax
	movl	%eax, 4(%rsp)
	leaq	4(%rsp), %rdx
	movl	$4, %esi
	callq	*312(%rdi)
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	popq	%rdx
	retq
.LBB16_2:                               # %cond.false
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$308, %edx              # imm = 0x134
	movl	$.L__PRETTY_FUNCTION__._cmsWriteFloat32Number, %ecx
	callq	__assert_fail
.Lfunc_end16:
	.size	_cmsWriteFloat32Number, .Lfunc_end16-_cmsWriteFloat32Number
	.cfi_endproc

	.globl	_cmsWriteUInt64Number
	.align	16, 0x90
	.type	_cmsWriteUInt64Number,@function
_cmsWriteUInt64Number:                  # @_cmsWriteUInt64Number
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp53:
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.LBB17_2
# BB#1:                                 # %cond.end
	movb	(%rsi), %al
	movb	%al, 7(%rsp)
	movb	1(%rsi), %al
	movb	%al, 6(%rsp)
	movb	2(%rsi), %al
	movb	%al, 5(%rsp)
	movb	3(%rsi), %al
	movb	%al, 4(%rsp)
	movb	4(%rsi), %al
	movb	%al, 3(%rsp)
	movb	5(%rsi), %al
	movb	%al, 2(%rsp)
	movb	6(%rsi), %al
	movb	%al, 1(%rsp)
	movb	7(%rsi), %al
	movb	%al, (%rsp)
	leaq	(%rsp), %rdx
	movl	$8, %esi
	callq	*312(%rdi)
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	popq	%rdx
	retq
.LBB17_2:                               # %cond.false
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$322, %edx              # imm = 0x142
	movl	$.L__PRETTY_FUNCTION__._cmsWriteUInt64Number, %ecx
	callq	__assert_fail
.Lfunc_end17:
	.size	_cmsWriteUInt64Number, .Lfunc_end17-_cmsWriteUInt64Number
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4679240012837945344     # double 65536
.LCPI18_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	_cmsWrite15Fixed16Number
	.align	16, 0x90
	.type	_cmsWrite15Fixed16Number,@function
_cmsWrite15Fixed16Number:               # @_cmsWrite15Fixed16Number
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp54:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp55:
	.cfi_def_cfa_offset 32
.Ltmp56:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB18_2
# BB#1:                                 # %cond.end
	mulsd	.LCPI18_0(%rip), %xmm0
	addsd	.LCPI18_1(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	bswapl	%eax
	movl	%eax, 12(%rsp)
	leaq	12(%rsp), %rdx
	movl	$4, %esi
	movq	%rbx, %rdi
	callq	*312(%rbx)
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbx
	retq
.LBB18_2:                               # %cond.false
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$335, %edx              # imm = 0x14F
	movl	$.L__PRETTY_FUNCTION__._cmsWrite15Fixed16Number, %ecx
	callq	__assert_fail
.Lfunc_end18:
	.size	_cmsWrite15Fixed16Number, .Lfunc_end18-_cmsWrite15Fixed16Number
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4679240012837945344     # double 65536
.LCPI19_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	_cmsDoubleTo15Fixed16
	.align	16, 0x90
	.type	_cmsDoubleTo15Fixed16,@function
_cmsDoubleTo15Fixed16:                  # @_cmsDoubleTo15Fixed16
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp57:
	.cfi_def_cfa_offset 16
	mulsd	.LCPI19_0(%rip), %xmm0
	addsd	.LCPI19_1(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	popq	%rdx
	retq
.Lfunc_end19:
	.size	_cmsDoubleTo15Fixed16, .Lfunc_end19-_cmsDoubleTo15Fixed16
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4679240012837945344     # double 65536
.LCPI20_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	_cmsWriteXYZNumber
	.align	16, 0x90
	.type	_cmsWriteXYZNumber,@function
_cmsWriteXYZNumber:                     # @_cmsWriteXYZNumber
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp58:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp60:
	.cfi_def_cfa_offset 48
.Ltmp61:
	.cfi_offset %rbx, -24
.Ltmp62:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testq	%r14, %r14
	je	.LBB20_3
# BB#1:                                 # %cond.end
	testq	%rbx, %rbx
	je	.LBB20_4
# BB#2:                                 # %cond.end.4
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	mulsd	.LCPI20_0(%rip), %xmm0
	addsd	.LCPI20_1(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	bswapl	%eax
	movl	%eax, 8(%rsp)
	movsd	8(%rbx), %xmm0          # xmm0 = mem[0],zero
	mulsd	.LCPI20_0(%rip), %xmm0
	addsd	.LCPI20_1(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	bswapl	%eax
	movl	%eax, 12(%rsp)
	movsd	.LCPI20_0(%rip), %xmm0  # xmm0 = mem[0],zero
	mulsd	16(%rbx), %xmm0
	addsd	.LCPI20_1(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	bswapl	%eax
	movl	%eax, 16(%rsp)
	leaq	8(%rsp), %rdx
	movl	$12, %esi
	movq	%r14, %rdi
	callq	*312(%r14)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.LBB20_3:                               # %cond.false
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$348, %edx              # imm = 0x15C
	movl	$.L__PRETTY_FUNCTION__._cmsWriteXYZNumber, %ecx
	callq	__assert_fail
.LBB20_4:                               # %cond.false.3
	movl	$.L.str.4, %edi
	movl	$.L.str.1, %esi
	movl	$349, %edx              # imm = 0x15D
	movl	$.L__PRETTY_FUNCTION__._cmsWriteXYZNumber, %ecx
	callq	__assert_fail
.Lfunc_end20:
	.size	_cmsWriteXYZNumber, .Lfunc_end20-_cmsWriteXYZNumber
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4571153621781053440     # double 0.00390625
	.text
	.globl	_cms8Fixed8toDouble
	.align	16, 0x90
	.type	_cms8Fixed8toDouble,@function
_cms8Fixed8toDouble:                    # @_cms8Fixed8toDouble
	.cfi_startproc
# BB#0:                                 # %entry
	movzbl	%dil, %eax
	shrl	$8, %edi
	cvtsi2sdl	%edi, %xmm1
	cvtsi2sdl	%eax, %xmm0
	mulsd	.LCPI21_0(%rip), %xmm0
	addsd	%xmm1, %xmm0
	retq
.Lfunc_end21:
	.size	_cms8Fixed8toDouble, .Lfunc_end21-_cms8Fixed8toDouble
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	4679240012837945344     # double 65536
.LCPI22_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	_cmsDoubleTo8Fixed8
	.align	16, 0x90
	.type	_cmsDoubleTo8Fixed8,@function
_cmsDoubleTo8Fixed8:                    # @_cmsDoubleTo8Fixed8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp63:
	.cfi_def_cfa_offset 16
	mulsd	.LCPI22_0(%rip), %xmm0
	addsd	.LCPI22_1(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	shrl	$8, %eax
	movzwl	%ax, %eax
	popq	%rdx
	retq
.Lfunc_end22:
	.size	_cmsDoubleTo8Fixed8, .Lfunc_end22-_cmsDoubleTo8Fixed8
	.cfi_endproc

	.globl	_cmsDecodeDateTimeNumber
	.align	16, 0x90
	.type	_cmsDecodeDateTimeNumber,@function
_cmsDecodeDateTimeNumber:               # @_cmsDecodeDateTimeNumber
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp64:
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.LBB23_3
# BB#1:                                 # %cond.end
	testq	%rdi, %rdi
	je	.LBB23_4
# BB#2:                                 # %cond.end.4
	movw	10(%rdi), %ax
	rolw	$8, %ax
	movzwl	%ax, %eax
	movl	%eax, (%rsi)
	movw	8(%rdi), %ax
	rolw	$8, %ax
	movzwl	%ax, %eax
	movl	%eax, 4(%rsi)
	movw	6(%rdi), %ax
	rolw	$8, %ax
	movzwl	%ax, %eax
	movl	%eax, 8(%rsi)
	movw	4(%rdi), %ax
	rolw	$8, %ax
	movzwl	%ax, %eax
	movl	%eax, 12(%rsi)
	movw	2(%rdi), %ax
	rolw	$8, %ax
	movzwl	%ax, %eax
	decl	%eax
	movl	%eax, 16(%rsi)
	movw	(%rdi), %ax
	rolw	$8, %ax
	movzwl	%ax, %eax
	addl	$-1900, %eax            # imm = 0xFFFFFFFFFFFFF894
	movl	%eax, 20(%rsi)
	movl	$-1, 24(%rsi)
	movl	$-1, 28(%rsi)
	movl	$0, 32(%rsi)
	popq	%rax
	retq
.LBB23_3:                               # %cond.false
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$404, %edx              # imm = 0x194
	movl	$.L__PRETTY_FUNCTION__._cmsDecodeDateTimeNumber, %ecx
	callq	__assert_fail
.LBB23_4:                               # %cond.false.3
	movl	$.L.str.6, %edi
	movl	$.L.str.1, %esi
	movl	$405, %edx              # imm = 0x195
	movl	$.L__PRETTY_FUNCTION__._cmsDecodeDateTimeNumber, %ecx
	callq	__assert_fail
.Lfunc_end23:
	.size	_cmsDecodeDateTimeNumber, .Lfunc_end23-_cmsDecodeDateTimeNumber
	.cfi_endproc

	.globl	_cmsEncodeDateTimeNumber
	.align	16, 0x90
	.type	_cmsEncodeDateTimeNumber,@function
_cmsEncodeDateTimeNumber:               # @_cmsEncodeDateTimeNumber
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp65:
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.LBB24_3
# BB#1:                                 # %cond.end
	testq	%rsi, %rsi
	je	.LBB24_4
# BB#2:                                 # %cond.end.4
	movw	(%rsi), %ax
	rolw	$8, %ax
	movw	%ax, 10(%rdi)
	movw	4(%rsi), %ax
	rolw	$8, %ax
	movw	%ax, 8(%rdi)
	movw	8(%rsi), %ax
	rolw	$8, %ax
	movw	%ax, 6(%rdi)
	movw	12(%rsi), %ax
	rolw	$8, %ax
	movw	%ax, 4(%rdi)
	movl	16(%rsi), %eax
	incl	%eax
	rolw	$8, %ax
	movw	%ax, 2(%rdi)
	movl	$1900, %eax             # imm = 0x76C
	addl	20(%rsi), %eax
	rolw	$8, %ax
	movw	%ax, (%rdi)
	popq	%rax
	retq
.LBB24_3:                               # %cond.false
	movl	$.L.str.5, %edi
	movl	$.L.str.1, %esi
	movl	$420, %edx              # imm = 0x1A4
	movl	$.L__PRETTY_FUNCTION__._cmsEncodeDateTimeNumber, %ecx
	callq	__assert_fail
.LBB24_4:                               # %cond.false.3
	movl	$.L.str.6, %edi
	movl	$.L.str.1, %esi
	movl	$421, %edx              # imm = 0x1A5
	movl	$.L__PRETTY_FUNCTION__._cmsEncodeDateTimeNumber, %ecx
	callq	__assert_fail
.Lfunc_end24:
	.size	_cmsEncodeDateTimeNumber, .Lfunc_end24-_cmsEncodeDateTimeNumber
	.cfi_endproc

	.globl	_cmsReadTypeBase
	.align	16, 0x90
	.type	_cmsReadTypeBase,@function
_cmsReadTypeBase:                       # @_cmsReadTypeBase
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp66:
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	je	.LBB25_2
# BB#1:                                 # %cond.end
	leaq	(%rsp), %rsi
	movl	$8, %edx
	movl	$1, %ecx
	callq	*280(%rdi)
	xorl	%ecx, %ecx
	cmpl	$1, %eax
	movl	(%rsp), %eax
	bswapl	%eax
	cmovnel	%ecx, %eax
	popq	%rdx
	retq
.LBB25_2:                               # %cond.false
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$436, %edx              # imm = 0x1B4
	movl	$.L__PRETTY_FUNCTION__._cmsReadTypeBase, %ecx
	callq	__assert_fail
.Lfunc_end25:
	.size	_cmsReadTypeBase, .Lfunc_end25-_cmsReadTypeBase
	.cfi_endproc

	.globl	_cmsWriteTypeBase
	.align	16, 0x90
	.type	_cmsWriteTypeBase,@function
_cmsWriteTypeBase:                      # @_cmsWriteTypeBase
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp67:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp68:
	.cfi_def_cfa_offset 32
.Ltmp69:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB26_2
# BB#1:                                 # %cond.end
	bswapl	%esi
	movl	%esi, 8(%rsp)
	leaq	12(%rsp), %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	callq	memset
	leaq	8(%rsp), %rdx
	movl	$8, %esi
	movq	%rbx, %rdi
	callq	*312(%rbx)
	addq	$16, %rsp
	popq	%rbx
	retq
.LBB26_2:                               # %cond.false
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$449, %edx              # imm = 0x1C1
	movl	$.L__PRETTY_FUNCTION__._cmsWriteTypeBase, %ecx
	callq	__assert_fail
.Lfunc_end26:
	.size	_cmsWriteTypeBase, .Lfunc_end26-_cmsWriteTypeBase
	.cfi_endproc

	.globl	_cmsReadAlignment
	.align	16, 0x90
	.type	_cmsReadAlignment,@function
_cmsReadAlignment:                      # @_cmsReadAlignment
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp70:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp71:
	.cfi_def_cfa_offset 32
.Ltmp72:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB27_5
# BB#1:                                 # %cond.end
	movq	%rbx, %rdi
	callq	*304(%rbx)
	leal	3(%rax), %edx
	andl	$-4, %edx
	subl	%eax, %edx
	movl	$1, %eax
	je	.LBB27_4
# BB#2:                                 # %if.end
	xorl	%eax, %eax
	cmpl	$4, %edx
	ja	.LBB27_4
# BB#3:                                 # %if.end.7
	leaq	12(%rsp), %rsi
	movl	$1, %ecx
	movq	%rbx, %rdi
	callq	*280(%rbx)
	cmpl	$1, %eax
	sete	%al
	movzbl	%al, %eax
.LBB27_4:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	retq
.LBB27_5:                               # %cond.false
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$462, %edx              # imm = 0x1CE
	movl	$.L__PRETTY_FUNCTION__._cmsReadAlignment, %ecx
	callq	__assert_fail
.Lfunc_end27:
	.size	_cmsReadAlignment, .Lfunc_end27-_cmsReadAlignment
	.cfi_endproc

	.globl	_cmsWriteAlignment
	.align	16, 0x90
	.type	_cmsWriteAlignment,@function
_cmsWriteAlignment:                     # @_cmsWriteAlignment
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp74:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp75:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp76:
	.cfi_def_cfa_offset 48
.Ltmp77:
	.cfi_offset %rbx, -32
.Ltmp78:
	.cfi_offset %r14, -24
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB28_5
# BB#1:                                 # %cond.end
	movq	%rbx, %rdi
	callq	*304(%rbx)
	leal	3(%rax), %ebp
	andl	$-4, %ebp
	subl	%eax, %ebp
	movl	$1, %eax
	je	.LBB28_4
# BB#2:                                 # %if.end
	xorl	%eax, %eax
	cmpl	$4, %ebp
	ja	.LBB28_4
# BB#3:                                 # %if.end.7
	movl	%ebp, %edx
	leaq	12(%rsp), %r14
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	memset
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movq	%r14, %rdx
	callq	*312(%rbx)
.LBB28_4:                               # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB28_5:                               # %cond.false
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$479, %edx              # imm = 0x1DF
	movl	$.L__PRETTY_FUNCTION__._cmsWriteAlignment, %ecx
	callq	__assert_fail
.Lfunc_end28:
	.size	_cmsWriteAlignment, .Lfunc_end28-_cmsWriteAlignment
	.cfi_endproc

	.globl	_cmsIOPrintf
	.align	16, 0x90
	.type	_cmsIOPrintf,@function
_cmsIOPrintf:                           # @_cmsIOPrintf
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp80:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp81:
	.cfi_def_cfa_offset 24
	subq	$2248, %rsp             # imm = 0x8C8
.Ltmp82:
	.cfi_def_cfa_offset 2272
.Ltmp83:
	.cfi_offset %rbx, -24
.Ltmp84:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testb	%al, %al
	je	.LBB29_2
# BB#1:                                 # %entry
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB29_2:                               # %entry
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	testq	%r14, %r14
	je	.LBB29_7
# BB#3:                                 # %cond.end
	testq	%rbx, %rbx
	je	.LBB29_8
# BB#4:                                 # %cond.end.4
	leaq	(%rsp), %rax
	movq	%rax, 2240(%rsp)
	leaq	2272(%rsp), %rax
	movq	%rax, 2232(%rsp)
	movl	$48, 2228(%rsp)
	movl	$16, 2224(%rsp)
	leaq	176(%rsp), %rdi
	leaq	2224(%rsp), %rcx
	movl	$2047, %esi             # imm = 0x7FF
	movq	%rbx, %rdx
	callq	vsnprintf
	xorl	%ecx, %ecx
	testl	%eax, %eax
	js	.LBB29_6
# BB#5:                                 # %if.end
	leaq	176(%rsp), %rdx
	movq	%r14, %rdi
	movl	%eax, %esi
	callq	*312(%r14)
	movl	%eax, %ecx
.LBB29_6:                               # %cleanup
	movl	%ecx, %eax
	addq	$2248, %rsp             # imm = 0x8C8
	popq	%rbx
	popq	%r14
	retq
.LBB29_7:                               # %cond.false
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$500, %edx              # imm = 0x1F4
	movl	$.L__PRETTY_FUNCTION__._cmsIOPrintf, %ecx
	callq	__assert_fail
.LBB29_8:                               # %cond.false.3
	movl	$.L.str.7, %edi
	movl	$.L.str.1, %esi
	movl	$501, %edx              # imm = 0x1F5
	movl	$.L__PRETTY_FUNCTION__._cmsIOPrintf, %ecx
	callq	__assert_fail
.Lfunc_end29:
	.size	_cmsIOPrintf, .Lfunc_end29-_cmsIOPrintf
	.cfi_endproc

	.globl	_cmsPluginMalloc
	.align	16, 0x90
	.type	_cmsPluginMalloc,@function
_cmsPluginMalloc:                       # @_cmsPluginMalloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp86:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp87:
	.cfi_def_cfa_offset 32
.Ltmp88:
	.cfi_offset %rbx, -24
.Ltmp89:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movl	$globalContext, %ebx
	testq	%rdi, %rdi
	je	.LBB30_6
# BB#1:                                 # %for.cond.preheader.i
	movq	_cmsContextPoolHead(%rip), %rax
	movl	$globalContext, %ebx
	testq	%rax, %rax
	je	.LBB30_6
# BB#2:
	movl	$globalContext, %ebx
	.align	16, 0x90
.LBB30_3:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rdi, %rax
	je	.LBB30_4
# BB#5:                                 # %for.inc.i
                                        #   in Loop: Header=BB30_3 Depth=1
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.LBB30_3
	jmp	.LBB30_6
.LBB30_4:
	movq	%rdi, %rbx
.LBB30_6:                               # %_cmsGetContext.exit
	movq	8(%rbx), %rax
	testq	%rax, %rax
	jne	.LBB30_9
# BB#7:                                 # %if.then
	testq	%rdi, %rdi
	je	.LBB30_8
# BB#10:                                # %cleanup
	movl	$12, %esi
	movl	$.L.str.8, %edx
	xorl	%eax, %eax
	callq	cmsSignalError
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB30_8:                               # %if.then.2
	xorl	%edi, %edi
	movl	$2048, %esi             # imm = 0x800
	callq	_cmsCreateSubAlloc
	movq	%rax, 8(%rbx)
.LBB30_9:                               # %if.end.5
	movq	%rax, %rdi
	movl	%ebp, %esi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	_cmsSubAlloc            # TAILCALL
.Lfunc_end30:
	.size	_cmsPluginMalloc, .Lfunc_end30-_cmsPluginMalloc
	.cfi_endproc

	.globl	_cmsGetContext
	.align	16, 0x90
	.type	_cmsGetContext,@function
_cmsGetContext:                         # @_cmsGetContext
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$globalContext, %eax
	testq	%rdi, %rdi
	je	.LBB31_6
# BB#1:                                 # %for.cond.preheader
	movq	_cmsContextPoolHead(%rip), %rcx
	movl	$globalContext, %eax
	testq	%rcx, %rcx
	je	.LBB31_6
# BB#2:
	movl	$globalContext, %eax
	.align	16, 0x90
.LBB31_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rdi, %rcx
	je	.LBB31_4
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB31_3 Depth=1
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB31_3
.LBB31_6:                               # %cleanup
	retq
.LBB31_4:
	movq	%rdi, %rax
	retq
.Lfunc_end31:
	.size	_cmsGetContext, .Lfunc_end31-_cmsGetContext
	.cfi_endproc

	.globl	cmsPlugin
	.align	16, 0x90
	.type	cmsPlugin,@function
cmsPlugin:                              # @cmsPlugin
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	xorl	%edi, %edi
	movq	%rax, %rsi
	jmp	cmsPluginTHR            # TAILCALL
.Lfunc_end32:
	.size	cmsPlugin, .Lfunc_end32-cmsPlugin
	.cfi_endproc

	.globl	cmsPluginTHR
	.align	16, 0x90
	.type	cmsPluginTHR,@function
cmsPluginTHR:                           # @cmsPluginTHR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp91:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp92:
	.cfi_def_cfa_offset 32
.Ltmp93:
	.cfi_offset %rbx, -32
.Ltmp94:
	.cfi_offset %r14, -24
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	jmp	.LBB33_1
	.align	16, 0x90
.LBB33_26:                              # %for.inc
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	16(%rbx), %rbx
.LBB33_1:                               # %entry
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	.LBB33_27
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB33_1 Depth=1
	cmpl	$1633906800, (%rbx)     # imm = 0x61637070
	jne	.LBB33_3
# BB#4:                                 # %if.end
                                        #   in Loop: Header=BB33_1 Depth=1
	movl	4(%rbx), %ecx
	cmpl	$2061, %ecx             # imm = 0x80D
	jae	.LBB33_5
# BB#6:                                 # %if.end.5
                                        #   in Loop: Header=BB33_1 Depth=1
	movl	8(%rbx), %ecx
	cmpl	$1836350023, %ecx       # imm = 0x6D747A47
	jle	.LBB33_7
# BB#15:                                # %if.end.5
                                        #   in Loop: Header=BB33_1 Depth=1
	cmpl	$1952540487, %ecx       # imm = 0x74616747
	jg	.LBB33_20
# BB#16:                                # %if.end.5
                                        #   in Loop: Header=BB33_1 Depth=1
	cmpl	$1836350024, %ecx       # imm = 0x6D747A48
	je	.LBB33_33
# BB#17:                                # %if.end.5
                                        #   in Loop: Header=BB33_1 Depth=1
	cmpl	$1869640776, %ecx       # imm = 0x6F707448
	jne	.LBB33_18
# BB#32:                                # %sw.bb.43
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_cmsRegisterOptimizationPlugin
	jmp	.LBB33_25
	.align	16, 0x90
.LBB33_7:                               # %if.end.5
                                        #   in Loop: Header=BB33_1 Depth=1
	cmpl	$1768846407, %ecx       # imm = 0x696E7447
	jle	.LBB33_8
# BB#11:                                # %if.end.5
                                        #   in Loop: Header=BB33_1 Depth=1
	cmpl	$1768846408, %ecx       # imm = 0x696E7448
	je	.LBB33_31
# BB#12:                                # %if.end.5
                                        #   in Loop: Header=BB33_1 Depth=1
	cmpl	$1835363656, %ecx       # imm = 0x6D656D48
	jne	.LBB33_13
# BB#24:                                # %sw.bb
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_cmsRegisterMemHandlerPlugin
	jmp	.LBB33_25
	.align	16, 0x90
.LBB33_20:                              # %if.end.5
                                        #   in Loop: Header=BB33_1 Depth=1
	cmpl	$1952540488, %ecx       # imm = 0x74616748
	je	.LBB33_29
# BB#21:                                # %if.end.5
                                        #   in Loop: Header=BB33_1 Depth=1
	cmpl	$1954115656, %ecx       # imm = 0x74797048
	jne	.LBB33_22
# BB#28:                                # %sw.bb.13
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_cmsRegisterTagTypePlugin
	jmp	.LBB33_25
.LBB33_8:                               # %if.end.5
                                        #   in Loop: Header=BB33_1 Depth=1
	cmpl	$1718775112, %ecx       # imm = 0x66726D48
	jne	.LBB33_9
# BB#30:                                # %sw.bb.23
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_cmsRegisterFormattersPlugin
	jmp	.LBB33_25
.LBB33_33:                              # %sw.bb.53
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_cmsRegisterMutexPlugin
	jmp	.LBB33_25
.LBB33_18:                              # %if.end.5
                                        #   in Loop: Header=BB33_1 Depth=1
	cmpl	$1885434440, %ecx       # imm = 0x70617248
	jne	.LBB33_34
# BB#19:                                # %sw.bb.33
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_cmsRegisterParametricCurvesPlugin
	jmp	.LBB33_25
.LBB33_31:                              # %sw.bb.28
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_cmsRegisterRenderingIntentPlugin
	jmp	.LBB33_25
.LBB33_13:                              # %if.end.5
                                        #   in Loop: Header=BB33_1 Depth=1
	cmpl	$1836082504, %ecx       # imm = 0x6D706548
	jne	.LBB33_34
# BB#14:                                # %sw.bb.38
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_cmsRegisterMultiProcessElementPlugin
	jmp	.LBB33_25
.LBB33_29:                              # %sw.bb.18
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_cmsRegisterTagPlugin
	jmp	.LBB33_25
.LBB33_22:                              # %if.end.5
                                        #   in Loop: Header=BB33_1 Depth=1
	cmpl	$2053533000, %ecx       # imm = 0x7A666D48
	jne	.LBB33_34
# BB#23:                                # %sw.bb.48
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_cmsRegisterTransformPlugin
	jmp	.LBB33_25
.LBB33_9:                               # %if.end.5
                                        #   in Loop: Header=BB33_1 Depth=1
	cmpl	$1768845384, %ecx       # imm = 0x696E7048
	jne	.LBB33_34
# BB#10:                                # %sw.bb.8
                                        #   in Loop: Header=BB33_1 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_cmsRegisterInterpPlugin
	.align	16, 0x90
.LBB33_25:                              # %sw.bb
                                        #   in Loop: Header=BB33_1 Depth=1
	xorl	%ebp, %ebp
	testl	%eax, %eax
	jne	.LBB33_26
	jmp	.LBB33_35
.LBB33_27:
	movl	$1, %ebp
	jmp	.LBB33_35
.LBB33_34:                              # %sw.default
	xorl	%ebp, %ebp
	movl	$8, %esi
	movl	$.L.str.11, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	cmsSignalError
	jmp	.LBB33_35
.LBB33_3:                               # %if.then
	xorl	%ebp, %ebp
	movl	$8, %esi
	movl	$.L.str.9, %edx
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	cmsSignalError
	jmp	.LBB33_35
.LBB33_5:                               # %if.then.3
	xorl	%ebp, %ebp
	movl	$8, %esi
	movl	$.L.str.10, %edx
	movl	$2060, %r8d             # imm = 0x80C
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	cmsSignalError
.LBB33_35:                              # %cleanup
	movl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end33:
	.size	cmsPluginTHR, .Lfunc_end33-cmsPluginTHR
	.cfi_endproc

	.globl	cmsUnregisterPlugins
	.align	16, 0x90
	.type	cmsUnregisterPlugins,@function
cmsUnregisterPlugins:                   # @cmsUnregisterPlugins
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%edi, %edi
	jmp	cmsUnregisterPluginsTHR # TAILCALL
.Lfunc_end34:
	.size	cmsUnregisterPlugins, .Lfunc_end34-cmsUnregisterPlugins
	.cfi_endproc

	.globl	cmsUnregisterPluginsTHR
	.align	16, 0x90
	.type	cmsUnregisterPluginsTHR,@function
cmsUnregisterPluginsTHR:                # @cmsUnregisterPluginsTHR
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	xorl	%esi, %esi
	callq	_cmsRegisterMemHandlerPlugin
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsRegisterInterpPlugin
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsRegisterTagTypePlugin
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsRegisterTagPlugin
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsRegisterFormattersPlugin
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsRegisterRenderingIntentPlugin
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsRegisterParametricCurvesPlugin
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsRegisterMultiProcessElementPlugin
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsRegisterOptimizationPlugin
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsRegisterTransformPlugin
	xorl	%esi, %esi
	movq	%rbx, %rdi
	popq	%rbx
	jmp	_cmsRegisterMutexPlugin # TAILCALL
.Lfunc_end35:
	.size	cmsUnregisterPluginsTHR, .Lfunc_end35-cmsUnregisterPluginsTHR
	.cfi_endproc

	.globl	_cmsContextGetClientChunk
	.align	16, 0x90
	.type	_cmsContextGetClientChunk,@function
_cmsContextGetClientChunk:              # @_cmsContextGetClientChunk
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbx, -16
	cmpl	$15, %esi
	jb	.LBB36_2
# BB#1:                                 # %if.then
	xorl	%ebx, %ebx
	movl	$2, %esi
	movl	$.L.str.12, %edx
	xorl	%eax, %eax
	callq	cmsSignalError
	jmp	.LBB36_10
.LBB36_2:                               # %if.end
	movl	$globalContext, %eax
	testq	%rdi, %rdi
	je	.LBB36_8
# BB#3:                                 # %for.cond.preheader.i
	movq	_cmsContextPoolHead(%rip), %rcx
	movl	$globalContext, %eax
	testq	%rcx, %rcx
	je	.LBB36_8
# BB#4:
	movl	$globalContext, %eax
	.align	16, 0x90
.LBB36_5:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rdi, %rcx
	je	.LBB36_6
# BB#7:                                 # %for.inc.i
                                        #   in Loop: Header=BB36_5 Depth=1
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB36_5
	jmp	.LBB36_8
.LBB36_6:
	movq	%rdi, %rax
.LBB36_8:                               # %_cmsGetContext.exit
	movl	%esi, %ecx
	movq	16(%rax,%rcx,8), %rbx
	testq	%rbx, %rbx
	jne	.LBB36_10
# BB#9:                                 # %if.end.4
	movq	globalContext+16(,%rcx,8), %rbx
.LBB36_10:                              # %cleanup
	movq	%rbx, %rax
	popq	%rbx
	retq
.Lfunc_end36:
	.size	_cmsContextGetClientChunk, .Lfunc_end36-_cmsContextGetClientChunk
	.cfi_endproc

	.globl	cmsCreateContext
	.align	16, 0x90
	.type	cmsCreateContext,@function
cmsCreateContext:                       # @cmsCreateContext
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp100:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp101:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp102:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp103:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp104:
	.cfi_def_cfa_offset 48
	subq	$192, %rsp
.Ltmp105:
	.cfi_def_cfa_offset 240
.Ltmp106:
	.cfi_offset %rbx, -48
.Ltmp107:
	.cfi_offset %r12, -40
.Ltmp108:
	.cfi_offset %r13, -32
.Ltmp109:
	.cfi_offset %r14, -24
.Ltmp110:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	xorl	%edi, %edi
	testq	%r14, %r14
	je	.LBB37_7
# BB#1:                                 # %for.body.lr.ph.i
	xorl	%edi, %edi
	movq	%r14, %rax
	.align	16, 0x90
.LBB37_2:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$1633906800, (%rax)     # imm = 0x61637070
	jne	.LBB37_6
# BB#3:                                 # %land.lhs.true.i
                                        #   in Loop: Header=BB37_2 Depth=1
	cmpl	$2060, 4(%rax)          # imm = 0x80C
	ja	.LBB37_6
# BB#4:                                 # %land.lhs.true.3.i
                                        #   in Loop: Header=BB37_2 Depth=1
	cmpl	$1835363656, 8(%rax)    # imm = 0x6D656D48
	je	.LBB37_5
.LBB37_6:                               # %for.inc.i
                                        #   in Loop: Header=BB37_2 Depth=1
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.LBB37_2
	jmp	.LBB37_7
.LBB37_5:                               # %if.then.i
	movq	%rax, %rdi
.LBB37_7:                               # %_cmsFindMemoryPlugin.exit
	leaq	144(%rsp), %r12
	movq	%r12, %rsi
	callq	_cmsInstallAllocFunctions
	movq	%r15, 24(%rsp)
	movq	%r12, 56(%rsp)
	leaq	8(%rsp), %rdi
	movl	$184, %esi
	callq	_cmsMalloc
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB37_11
# BB#8:                                 # %if.end
	xorl	%esi, %esi
	movl	$184, %edx
	movq	%rbx, %rdi
	callq	memset
	movq	%rbx, %r13
	addq	$136, %r13
	movl	$48, %edx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	memcpy
	movl	$_cmsContextPoolHeadMutex, %edi
	callq	pthread_mutex_lock
	movq	_cmsContextPoolHead(%rip), %rax
	movq	%rax, (%rbx)
	movq	%rbx, _cmsContextPoolHead(%rip)
	movl	$_cmsContextPoolHeadMutex, %edi
	callq	pthread_mutex_unlock
	movq	%r15, 16(%rbx)
	movq	%r13, 48(%rbx)
	movl	$176, %esi
	movq	%rbx, %rdi
	callq	_cmsCreateSubAlloc
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.LBB37_10
# BB#9:                                 # %if.end.20
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsAllocLogErrorChunk
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsAllocAlarmCodesChunk
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsAllocAdaptationStateChunk
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsAllocMemPluginChunk
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsAllocInterpPluginChunk
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsAllocCurvesPluginChunk
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsAllocFormattersPluginChunk
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsAllocTagTypePluginChunk
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsAllocMPETypePluginChunk
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsAllocTagPluginChunk
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsAllocIntentsPluginChunk
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsAllocOptimizationPluginChunk
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsAllocTransformPluginChunk
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	_cmsAllocMutexPluginChunk
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	cmsPluginTHR
	testl	%eax, %eax
	movq	%rbx, %rax
	jne	.LBB37_11
.LBB37_10:                              # %if.then.22
	movq	%rbx, %rdi
	callq	cmsDeleteContext
	xorl	%eax, %eax
.LBB37_11:                              # %cleanup
	addq	$192, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end37:
	.size	cmsCreateContext, .Lfunc_end37-cmsCreateContext
	.cfi_endproc

	.globl	cmsDeleteContext
	.align	16, 0x90
	.type	cmsDeleteContext,@function
cmsDeleteContext:                       # @cmsDeleteContext
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp111:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp112:
	.cfi_def_cfa_offset 24
	subq	$184, %rsp
.Ltmp113:
	.cfi_def_cfa_offset 208
.Ltmp114:
	.cfi_offset %rbx, -24
.Ltmp115:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB38_9
# BB#1:                                 # %if.then
	leaq	136(%rsp), %r14
	leaq	136(%rbx), %rsi
	movl	$48, %edx
	movq	%r14, %rdi
	callq	memcpy
	movq	16(%rbx), %rax
	movq	%rax, 16(%rsp)
	movq	%r14, 48(%rsp)
	movq	%rbx, %rdi
	callq	cmsUnregisterPluginsTHR
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB38_3
# BB#2:                                 # %if.then.8
	callq	_cmsSubAllocDestroy
.LBB38_3:                               # %if.end
	movq	$0, 8(%rbx)
	movl	$_cmsContextPoolHeadMutex, %edi
	callq	pthread_mutex_lock
	movq	_cmsContextPoolHead(%rip), %rcx
	cmpq	%rbx, %rcx
	je	.LBB38_4
	.align	16, 0x90
.LBB38_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	testq	%rax, %rax
	je	.LBB38_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB38_5 Depth=1
	movq	(%rax), %rcx
	cmpq	%rbx, %rcx
	jne	.LBB38_5
# BB#7:                                 # %if.then.17
	movq	(%rbx), %rcx
	movq	%rcx, (%rax)
	jmp	.LBB38_8
.LBB38_4:                               # %if.then.13
	movq	(%rbx), %rax
	movq	%rax, _cmsContextPoolHead(%rip)
.LBB38_8:                               # %if.end.22
	movl	$_cmsContextPoolHeadMutex, %edi
	callq	pthread_mutex_unlock
	leaq	(%rsp), %rdi
	movq	%rbx, %rsi
	callq	_cmsFree
.LBB38_9:                               # %if.end.24
	addq	$184, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end38:
	.size	cmsDeleteContext, .Lfunc_end38-cmsDeleteContext
	.cfi_endproc

	.globl	cmsDupContext
	.align	16, 0x90
	.type	cmsDupContext,@function
cmsDupContext:                          # @cmsDupContext
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp116:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp117:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp118:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp119:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp120:
	.cfi_def_cfa_offset 48
.Ltmp121:
	.cfi_offset %rbx, -40
.Ltmp122:
	.cfi_offset %r12, -32
.Ltmp123:
	.cfi_offset %r14, -24
.Ltmp124:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movl	$globalContext, %r14d
	testq	%rdi, %rdi
	je	.LBB39_6
# BB#1:                                 # %for.cond.preheader.i
	movq	_cmsContextPoolHead(%rip), %rax
	movl	$globalContext, %r14d
	testq	%rax, %rax
	je	.LBB39_6
# BB#2:
	movl	$globalContext, %r14d
	.align	16, 0x90
.LBB39_3:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rdi, %rax
	je	.LBB39_4
# BB#5:                                 # %for.inc.i
                                        #   in Loop: Header=BB39_3 Depth=1
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.LBB39_3
	jmp	.LBB39_6
.LBB39_4:
	movq	%rdi, %r14
.LBB39_6:                               # %_cmsGetContext.exit
	testq	%r15, %r15
	jne	.LBB39_8
# BB#7:                                 # %cond.false
	movq	16(%r14), %r15
.LBB39_8:                               # %cond.end
	movl	$184, %esi
	callq	_cmsMalloc
	movq	%rax, %r12
	xorl	%eax, %eax
	testq	%r12, %r12
	je	.LBB39_13
# BB#9:                                 # %if.end
	movq	%r12, %rbx
	addq	$136, %rbx
	leaq	136(%r14), %rsi
	movl	$48, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movl	$_cmsContextPoolHeadMutex, %edi
	callq	pthread_mutex_lock
	movq	_cmsContextPoolHead(%rip), %rax
	movq	%rax, (%r12)
	movq	%r12, _cmsContextPoolHead(%rip)
	movl	$_cmsContextPoolHeadMutex, %edi
	callq	pthread_mutex_unlock
	movq	%r15, 16(%r12)
	movq	%rbx, 48(%r12)
	movl	$176, %esi
	movq	%r12, %rdi
	callq	_cmsCreateSubAlloc
	movq	%rax, 8(%r12)
	testq	%rax, %rax
	je	.LBB39_12
# BB#10:                                # %if.end.16
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	_cmsAllocLogErrorChunk
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	_cmsAllocAlarmCodesChunk
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	_cmsAllocAdaptationStateChunk
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	_cmsAllocMemPluginChunk
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	_cmsAllocInterpPluginChunk
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	_cmsAllocCurvesPluginChunk
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	_cmsAllocFormattersPluginChunk
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	_cmsAllocTagTypePluginChunk
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	_cmsAllocMPETypePluginChunk
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	_cmsAllocTagPluginChunk
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	_cmsAllocIntentsPluginChunk
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	_cmsAllocOptimizationPluginChunk
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	_cmsAllocTransformPluginChunk
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	_cmsAllocMutexPluginChunk
	cmpq	$0, 24(%r14)
	je	.LBB39_12
# BB#11:                                # %for.cond
	cmpq	$0, 32(%r14)
	je	.LBB39_12
# BB#14:                                # %for.cond.1
	cmpq	$0, 40(%r14)
	je	.LBB39_12
# BB#15:                                # %for.cond.2
	cmpq	$0, 48(%r14)
	je	.LBB39_12
# BB#16:                                # %for.cond.3
	cmpq	$0, 56(%r14)
	je	.LBB39_12
# BB#17:                                # %for.cond.4
	cmpq	$0, 64(%r14)
	je	.LBB39_12
# BB#18:                                # %for.cond.5
	cmpq	$0, 72(%r14)
	je	.LBB39_12
# BB#19:                                # %for.cond.6
	cmpq	$0, 80(%r14)
	je	.LBB39_12
# BB#20:                                # %for.cond.7
	cmpq	$0, 88(%r14)
	je	.LBB39_12
# BB#21:                                # %for.cond.8
	cmpq	$0, 96(%r14)
	je	.LBB39_12
# BB#22:                                # %for.cond.9
	cmpq	$0, 104(%r14)
	je	.LBB39_12
# BB#23:                                # %for.cond.10
	cmpq	$0, 112(%r14)
	je	.LBB39_12
# BB#24:                                # %for.cond.11
	cmpq	$0, 120(%r14)
	je	.LBB39_12
# BB#25:                                # %for.cond.12
	cmpq	$0, 128(%r14)
	movq	%r12, %rax
	jne	.LBB39_13
.LBB39_12:                              # %if.then.21
	movq	%r12, %rdi
	callq	cmsDeleteContext
	xorl	%eax, %eax
.LBB39_13:                              # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end39:
	.size	cmsDupContext, .Lfunc_end39-cmsDupContext
	.cfi_endproc

	.globl	cmsGetContextUserData
	.align	16, 0x90
	.type	cmsGetContextUserData,@function
cmsGetContextUserData:                  # @cmsGetContextUserData
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$globalContext, %eax
	testq	%rdi, %rdi
	je	.LBB40_6
# BB#1:                                 # %for.cond.preheader.i.i
	movq	_cmsContextPoolHead(%rip), %rcx
	movl	$globalContext, %eax
	testq	%rcx, %rcx
	je	.LBB40_6
# BB#2:
	movl	$globalContext, %eax
	.align	16, 0x90
.LBB40_3:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rdi, %rcx
	je	.LBB40_4
# BB#5:                                 # %for.inc.i.i
                                        #   in Loop: Header=BB40_3 Depth=1
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB40_3
	jmp	.LBB40_6
.LBB40_4:
	movq	%rdi, %rax
.LBB40_6:                               # %_cmsGetContext.exit.i
	movq	16(%rax), %rax
	testq	%rax, %rax
	cmoveq	globalContext+16(%rip), %rax
	retq
.Lfunc_end40:
	.size	cmsGetContextUserData, .Lfunc_end40-cmsGetContextUserData
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"(Result != ((void*)0))"
	.size	.L.str, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"./lcms2/src/cmsplugin.c"
	.size	.L.str.1, 24

	.type	.L__PRETTY_FUNCTION__._cmsAdjustEndianess64,@object # @__PRETTY_FUNCTION__._cmsAdjustEndianess64
.L__PRETTY_FUNCTION__._cmsAdjustEndianess64:
	.asciz	"void _cmsAdjustEndianess64(cmsUInt64Number *, cmsUInt64Number *)"
	.size	.L__PRETTY_FUNCTION__._cmsAdjustEndianess64, 65

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"(io != ((void*)0))"
	.size	.L.str.2, 19

	.type	.L__PRETTY_FUNCTION__._cmsReadUInt8Number,@object # @__PRETTY_FUNCTION__._cmsReadUInt8Number
.L__PRETTY_FUNCTION__._cmsReadUInt8Number:
	.asciz	"cmsBool _cmsReadUInt8Number(cmsIOHANDLER *, cmsUInt8Number *)"
	.size	.L__PRETTY_FUNCTION__._cmsReadUInt8Number, 62

	.type	.L__PRETTY_FUNCTION__._cmsReadUInt16Number,@object # @__PRETTY_FUNCTION__._cmsReadUInt16Number
.L__PRETTY_FUNCTION__._cmsReadUInt16Number:
	.asciz	"cmsBool _cmsReadUInt16Number(cmsIOHANDLER *, cmsUInt16Number *)"
	.size	.L__PRETTY_FUNCTION__._cmsReadUInt16Number, 64

	.type	.L__PRETTY_FUNCTION__._cmsReadUInt16Array,@object # @__PRETTY_FUNCTION__._cmsReadUInt16Array
.L__PRETTY_FUNCTION__._cmsReadUInt16Array:
	.asciz	"cmsBool _cmsReadUInt16Array(cmsIOHANDLER *, cmsUInt32Number, cmsUInt16Number *)"
	.size	.L__PRETTY_FUNCTION__._cmsReadUInt16Array, 80

	.type	.L__PRETTY_FUNCTION__._cmsReadUInt32Number,@object # @__PRETTY_FUNCTION__._cmsReadUInt32Number
.L__PRETTY_FUNCTION__._cmsReadUInt32Number:
	.asciz	"cmsBool _cmsReadUInt32Number(cmsIOHANDLER *, cmsUInt32Number *)"
	.size	.L__PRETTY_FUNCTION__._cmsReadUInt32Number, 64

	.type	.L__PRETTY_FUNCTION__._cmsReadFloat32Number,@object # @__PRETTY_FUNCTION__._cmsReadFloat32Number
.L__PRETTY_FUNCTION__._cmsReadFloat32Number:
	.asciz	"cmsBool _cmsReadFloat32Number(cmsIOHANDLER *, cmsFloat32Number *)"
	.size	.L__PRETTY_FUNCTION__._cmsReadFloat32Number, 66

	.type	.L__PRETTY_FUNCTION__._cmsReadUInt64Number,@object # @__PRETTY_FUNCTION__._cmsReadUInt64Number
.L__PRETTY_FUNCTION__._cmsReadUInt64Number:
	.asciz	"cmsBool _cmsReadUInt64Number(cmsIOHANDLER *, cmsUInt64Number *)"
	.size	.L__PRETTY_FUNCTION__._cmsReadUInt64Number, 64

	.type	.L__PRETTY_FUNCTION__._cmsRead15Fixed16Number,@object # @__PRETTY_FUNCTION__._cmsRead15Fixed16Number
.L__PRETTY_FUNCTION__._cmsRead15Fixed16Number:
	.asciz	"cmsBool _cmsRead15Fixed16Number(cmsIOHANDLER *, cmsFloat64Number *)"
	.size	.L__PRETTY_FUNCTION__._cmsRead15Fixed16Number, 68

	.type	.L__PRETTY_FUNCTION__._cmsReadXYZNumber,@object # @__PRETTY_FUNCTION__._cmsReadXYZNumber
.L__PRETTY_FUNCTION__._cmsReadXYZNumber:
	.asciz	"cmsBool _cmsReadXYZNumber(cmsIOHANDLER *, cmsCIEXYZ *)"
	.size	.L__PRETTY_FUNCTION__._cmsReadXYZNumber, 55

	.type	.L__PRETTY_FUNCTION__._cmsWriteUInt8Number,@object # @__PRETTY_FUNCTION__._cmsWriteUInt8Number
.L__PRETTY_FUNCTION__._cmsWriteUInt8Number:
	.asciz	"cmsBool _cmsWriteUInt8Number(cmsIOHANDLER *, cmsUInt8Number)"
	.size	.L__PRETTY_FUNCTION__._cmsWriteUInt8Number, 61

	.type	.L__PRETTY_FUNCTION__._cmsWriteUInt16Number,@object # @__PRETTY_FUNCTION__._cmsWriteUInt16Number
.L__PRETTY_FUNCTION__._cmsWriteUInt16Number:
	.asciz	"cmsBool _cmsWriteUInt16Number(cmsIOHANDLER *, cmsUInt16Number)"
	.size	.L__PRETTY_FUNCTION__._cmsWriteUInt16Number, 63

	.type	.L__PRETTY_FUNCTION__._cmsWriteUInt16Array,@object # @__PRETTY_FUNCTION__._cmsWriteUInt16Array
.L__PRETTY_FUNCTION__._cmsWriteUInt16Array:
	.asciz	"cmsBool _cmsWriteUInt16Array(cmsIOHANDLER *, cmsUInt32Number, const cmsUInt16Number *)"
	.size	.L__PRETTY_FUNCTION__._cmsWriteUInt16Array, 87

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"(Array != ((void*)0))"
	.size	.L.str.3, 22

	.type	.L__PRETTY_FUNCTION__._cmsWriteUInt32Number,@object # @__PRETTY_FUNCTION__._cmsWriteUInt32Number
.L__PRETTY_FUNCTION__._cmsWriteUInt32Number:
	.asciz	"cmsBool _cmsWriteUInt32Number(cmsIOHANDLER *, cmsUInt32Number)"
	.size	.L__PRETTY_FUNCTION__._cmsWriteUInt32Number, 63

	.type	.L__PRETTY_FUNCTION__._cmsWriteFloat32Number,@object # @__PRETTY_FUNCTION__._cmsWriteFloat32Number
.L__PRETTY_FUNCTION__._cmsWriteFloat32Number:
	.asciz	"cmsBool _cmsWriteFloat32Number(cmsIOHANDLER *, cmsFloat32Number)"
	.size	.L__PRETTY_FUNCTION__._cmsWriteFloat32Number, 65

	.type	.L__PRETTY_FUNCTION__._cmsWriteUInt64Number,@object # @__PRETTY_FUNCTION__._cmsWriteUInt64Number
.L__PRETTY_FUNCTION__._cmsWriteUInt64Number:
	.asciz	"cmsBool _cmsWriteUInt64Number(cmsIOHANDLER *, cmsUInt64Number *)"
	.size	.L__PRETTY_FUNCTION__._cmsWriteUInt64Number, 65

	.type	.L__PRETTY_FUNCTION__._cmsWrite15Fixed16Number,@object # @__PRETTY_FUNCTION__._cmsWrite15Fixed16Number
.L__PRETTY_FUNCTION__._cmsWrite15Fixed16Number:
	.asciz	"cmsBool _cmsWrite15Fixed16Number(cmsIOHANDLER *, cmsFloat64Number)"
	.size	.L__PRETTY_FUNCTION__._cmsWrite15Fixed16Number, 67

	.type	.L__PRETTY_FUNCTION__._cmsWriteXYZNumber,@object # @__PRETTY_FUNCTION__._cmsWriteXYZNumber
.L__PRETTY_FUNCTION__._cmsWriteXYZNumber:
	.asciz	"cmsBool _cmsWriteXYZNumber(cmsIOHANDLER *, const cmsCIEXYZ *)"
	.size	.L__PRETTY_FUNCTION__._cmsWriteXYZNumber, 62

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"(XYZ != ((void*)0))"
	.size	.L.str.4, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"(Dest != ((void*)0))"
	.size	.L.str.5, 21

	.type	.L__PRETTY_FUNCTION__._cmsDecodeDateTimeNumber,@object # @__PRETTY_FUNCTION__._cmsDecodeDateTimeNumber
.L__PRETTY_FUNCTION__._cmsDecodeDateTimeNumber:
	.asciz	"void _cmsDecodeDateTimeNumber(const cmsDateTimeNumber *, struct tm *)"
	.size	.L__PRETTY_FUNCTION__._cmsDecodeDateTimeNumber, 70

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"(Source != ((void*)0))"
	.size	.L.str.6, 23

	.type	.L__PRETTY_FUNCTION__._cmsEncodeDateTimeNumber,@object # @__PRETTY_FUNCTION__._cmsEncodeDateTimeNumber
.L__PRETTY_FUNCTION__._cmsEncodeDateTimeNumber:
	.asciz	"void _cmsEncodeDateTimeNumber(cmsDateTimeNumber *, const struct tm *)"
	.size	.L__PRETTY_FUNCTION__._cmsEncodeDateTimeNumber, 70

	.type	.L__PRETTY_FUNCTION__._cmsReadTypeBase,@object # @__PRETTY_FUNCTION__._cmsReadTypeBase
.L__PRETTY_FUNCTION__._cmsReadTypeBase:
	.asciz	"cmsTagTypeSignature _cmsReadTypeBase(cmsIOHANDLER *)"
	.size	.L__PRETTY_FUNCTION__._cmsReadTypeBase, 53

	.type	.L__PRETTY_FUNCTION__._cmsWriteTypeBase,@object # @__PRETTY_FUNCTION__._cmsWriteTypeBase
.L__PRETTY_FUNCTION__._cmsWriteTypeBase:
	.asciz	"cmsBool _cmsWriteTypeBase(cmsIOHANDLER *, cmsTagTypeSignature)"
	.size	.L__PRETTY_FUNCTION__._cmsWriteTypeBase, 63

	.type	.L__PRETTY_FUNCTION__._cmsReadAlignment,@object # @__PRETTY_FUNCTION__._cmsReadAlignment
.L__PRETTY_FUNCTION__._cmsReadAlignment:
	.asciz	"cmsBool _cmsReadAlignment(cmsIOHANDLER *)"
	.size	.L__PRETTY_FUNCTION__._cmsReadAlignment, 42

	.type	.L__PRETTY_FUNCTION__._cmsWriteAlignment,@object # @__PRETTY_FUNCTION__._cmsWriteAlignment
.L__PRETTY_FUNCTION__._cmsWriteAlignment:
	.asciz	"cmsBool _cmsWriteAlignment(cmsIOHANDLER *)"
	.size	.L__PRETTY_FUNCTION__._cmsWriteAlignment, 43

	.type	.L__PRETTY_FUNCTION__._cmsIOPrintf,@object # @__PRETTY_FUNCTION__._cmsIOPrintf
.L__PRETTY_FUNCTION__._cmsIOPrintf:
	.asciz	"cmsBool _cmsIOPrintf(cmsIOHANDLER *, const char *, ...)"
	.size	.L__PRETTY_FUNCTION__._cmsIOPrintf, 56

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"(frm != ((void*)0))"
	.size	.L.str.7, 20

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"NULL memory pool on context"
	.size	.L.str.8, 28

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Unrecognized plugin"
	.size	.L.str.9, 20

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"plugin needs Little CMS %d, current version is %d"
	.size	.L.str.10, 50

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Unrecognized plugin type '%X'"
	.size	.L.str.11, 30

	.type	globalContext,@object   # @globalContext
	.data
	.align	8
globalContext:
	.quad	0
	.quad	0
	.quad	0
	.quad	_cmsLogErrorChunk
	.quad	_cmsAlarmCodesChunk
	.quad	_cmsAdaptationStateChunk
	.quad	_cmsMemPluginChunk
	.quad	_cmsInterpPluginChunk
	.quad	_cmsCurvesPluginChunk
	.quad	_cmsFormattersPluginChunk
	.quad	_cmsTagTypePluginChunk
	.quad	_cmsTagPluginChunk
	.quad	_cmsIntentsPluginChunk
	.quad	_cmsMPETypePluginChunk
	.quad	_cmsOptimizationPluginChunk
	.quad	_cmsTransformPluginChunk
	.quad	_cmsMutexPluginChunk
	.zero	48
	.size	globalContext, 184

	.type	_cmsContextPoolHead,@object # @_cmsContextPoolHead
	.local	_cmsContextPoolHead
	.comm	_cmsContextPoolHead,8,8
	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"Bad context client"
	.size	.L.str.12, 19

	.type	_cmsContextPoolHeadMutex,@object # @_cmsContextPoolHeadMutex
	.local	_cmsContextPoolHeadMutex
	.comm	_cmsContextPoolHeadMutex,40,8

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
