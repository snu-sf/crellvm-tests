	.text
	.file	"imap_rectangle.bc"
	.globl	create_rectangle
	.align	16, 0x90
	.type	create_rectangle,@function
create_rectangle:                       # @create_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %eax
	movl	%eax, %r8d
	movl	$104, %eax
	movl	%eax, %r9d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movq	%r8, %rdi
	movq	%r9, %rsi
	callq	g_malloc_n
	movabsq	$rectangle_class, %rsi
	movq	%rax, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 88(%rax)
	movl	-8(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 92(%rax)
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 96(%rax)
	movl	-16(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 100(%rax)
	movq	-24(%rbp), %rdi
	callq	object_init
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	create_rectangle, .Lfunc_end0-create_rectangle
	.cfi_endproc

	.globl	get_rectangle_factory
	.align	16, 0x90
	.type	get_rectangle_factory,@function
get_rectangle_factory:                  # @get_rectangle_factory
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	movabsq	$rectangle_factory, %rax
	movl	%edi, -4(%rbp)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	get_rectangle_factory, .Lfunc_end1-get_rectangle_factory
	.cfi_endproc

	.align	16, 0x90
	.type	rectangle_is_valid,@function
rectangle_is_valid:                     # @rectangle_is_valid
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpl	$0, 96(%rdi)
	movb	%cl, -17(%rbp)          # 1-byte Spill
	je	.LBB2_2
# BB#1:                                 # %land.rhs
	movq	-16(%rbp), %rax
	cmpl	$0, 100(%rax)
	setne	%cl
	movb	%cl, -17(%rbp)          # 1-byte Spill
.LBB2_2:                                # %land.end
	movb	-17(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	rectangle_is_valid, .Lfunc_end2-rectangle_is_valid
	.cfi_endproc

	.align	16, 0x90
	.type	rectangle_clone,@function
rectangle_clone:                        # @rectangle_clone
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$104, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	%rcx, %rdi
	callq	g_malloc_n
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	88(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 88(%rax)
	movq	-16(%rbp), %rax
	movl	92(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 92(%rax)
	movq	-16(%rbp), %rax
	movl	96(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 96(%rax)
	movq	-16(%rbp), %rax
	movl	100(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 100(%rax)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	rectangle_clone, .Lfunc_end3-rectangle_clone
	.cfi_endproc

	.align	16, 0x90
	.type	rectangle_assign,@function
rectangle_assign:                       # @rectangle_assign
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movl	88(%rsi), %eax
	movq	-32(%rbp), %rsi
	movl	%eax, 88(%rsi)
	movq	-24(%rbp), %rsi
	movl	92(%rsi), %eax
	movq	-32(%rbp), %rsi
	movl	%eax, 92(%rsi)
	movq	-24(%rbp), %rsi
	movl	96(%rsi), %eax
	movq	-32(%rbp), %rsi
	movl	%eax, 96(%rsi)
	movq	-24(%rbp), %rsi
	movl	100(%rsi), %eax
	movq	-32(%rbp), %rsi
	movl	%eax, 100(%rsi)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	rectangle_assign, .Lfunc_end4-rectangle_assign
	.cfi_endproc

	.align	16, 0x90
	.type	rectangle_normalize,@function
rectangle_normalize:                    # @rectangle_normalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpl	$0, 96(%rdi)
	jge	.LBB5_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %edx
	movq	-16(%rbp), %rcx
	addl	88(%rcx), %edx
	movl	%edx, 88(%rcx)
	movq	-16(%rbp), %rcx
	subl	96(%rcx), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 96(%rcx)
.LBB5_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpl	$0, 100(%rax)
	jge	.LBB5_4
# BB#3:                                 # %if.then.5
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movl	100(%rcx), %edx
	movq	-16(%rbp), %rcx
	addl	92(%rcx), %edx
	movl	%edx, 92(%rcx)
	movq	-16(%rbp), %rcx
	subl	100(%rcx), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 100(%rcx)
.LBB5_4:                                # %if.end.11
	popq	%rbp
	retq
.Lfunc_end5:
	.size	rectangle_normalize, .Lfunc_end5-rectangle_normalize
	.cfi_endproc

	.align	16, 0x90
	.type	rectangle_draw,@function
rectangle_draw:                         # @rectangle_draw
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	88(%rsi), %esi
	movq	-24(%rbp), %rax
	movl	92(%rax), %edx
	movq	-24(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	100(%rax), %r8d
	callq	draw_any_rectangle
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	rectangle_draw, .Lfunc_end6-rectangle_draw
	.cfi_endproc

	.align	16, 0x90
	.type	rectangle_draw_sashes,@function
rectangle_draw_sashes:                  # @rectangle_draw_sashes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	88(%rsi), %esi
	movq	-24(%rbp), %rax
	movl	92(%rax), %edx
	callq	draw_sash
	movl	$2, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	88(%rax), %esi
	movq	-24(%rbp), %rax
	movl	96(%rax), %eax
	movl	%edx, -28(%rbp)         # 4-byte Spill
	cltd
	movl	-28(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	addl	%eax, %esi
	movq	-24(%rbp), %r8
	movl	92(%r8), %eax
	movl	%eax, %edx
	callq	draw_sash
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %r8
	movl	88(%r8), %eax
	movq	-24(%rbp), %r8
	addl	96(%r8), %eax
	movq	-24(%rbp), %r8
	movl	92(%r8), %edx
	movl	%eax, %esi
	callq	draw_sash
	movl	$2, %eax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %r8
	movl	88(%r8), %esi
	movq	-24(%rbp), %r8
	movl	92(%r8), %ecx
	movq	-24(%rbp), %r8
	movl	100(%r8), %edx
	movl	%eax, -32(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-32(%rbp), %r9d         # 4-byte Reload
	idivl	%r9d
	addl	%eax, %ecx
	movl	%ecx, %edx
	callq	draw_sash
	movl	$2, %eax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %r8
	movl	88(%r8), %ecx
	movq	-24(%rbp), %r8
	addl	96(%r8), %ecx
	movq	-24(%rbp), %r8
	movl	92(%r8), %edx
	movq	-24(%rbp), %r8
	movl	100(%r8), %esi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -40(%rbp)         # 4-byte Spill
	cltd
	movl	-36(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	-40(%rbp), %r9d         # 4-byte Reload
	addl	%eax, %r9d
	movl	%ecx, %esi
	movl	%r9d, %edx
	callq	draw_sash
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %r8
	movl	88(%r8), %esi
	movq	-24(%rbp), %r8
	movl	92(%r8), %eax
	movq	-24(%rbp), %r8
	addl	100(%r8), %eax
	movl	%eax, %edx
	callq	draw_sash
	movl	$2, %eax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %r8
	movl	88(%r8), %ecx
	movq	-24(%rbp), %r8
	movl	96(%r8), %edx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-44(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	addl	%eax, %ecx
	movq	-24(%rbp), %r8
	movl	92(%r8), %eax
	movq	-24(%rbp), %r8
	addl	100(%r8), %eax
	movl	%ecx, %esi
	movl	%eax, %edx
	callq	draw_sash
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %r8
	movl	88(%r8), %eax
	movq	-24(%rbp), %r8
	addl	96(%r8), %eax
	movq	-24(%rbp), %r8
	movl	92(%r8), %ecx
	movq	-24(%rbp), %r8
	addl	100(%r8), %ecx
	movl	%eax, %esi
	movl	%ecx, %edx
	callq	draw_sash
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	rectangle_draw_sashes, .Lfunc_end7-rectangle_draw_sashes
	.cfi_endproc

	.align	16, 0x90
	.type	rectangle_near_sash,@function
rectangle_near_sash:                    # @rectangle_near_sash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	88(%rdi), %edi
	movq	-32(%rbp), %rax
	movl	92(%rax), %esi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	near_sash
	cmpl	$0, %eax
	je	.LBB8_2
# BB#1:                                 # %if.then
	movabsq	$MoveUpperLeftSash, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_24
.LBB8_2:                                # %if.else
	movl	$2, %eax
	movq	-32(%rbp), %rcx
	movl	88(%rcx), %edx
	movq	-32(%rbp), %rcx
	movl	96(%rcx), %esi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -40(%rbp)         # 4-byte Spill
	cltd
	movl	-36(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	-40(%rbp), %edi         # 4-byte Reload
	addl	%eax, %edi
	movq	-32(%rbp), %rcx
	movl	92(%rcx), %esi
	movl	-20(%rbp), %eax
	movl	-24(%rbp), %ecx
	movl	%eax, %edx
	callq	near_sash
	cmpl	$0, %eax
	je	.LBB8_4
# BB#3:                                 # %if.then.7
	movabsq	$MoveUpperSash, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_24
.LBB8_4:                                # %if.else.8
	movq	-32(%rbp), %rax
	movl	88(%rax), %ecx
	movq	-32(%rbp), %rax
	addl	96(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	92(%rax), %esi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %edi
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movl	%ecx, %edi
	movl	-44(%rbp), %ecx         # 4-byte Reload
	callq	near_sash
	cmpl	$0, %eax
	je	.LBB8_6
# BB#5:                                 # %if.then.15
	movabsq	$MoveUpperRightSash, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_24
.LBB8_6:                                # %if.else.16
	movl	$2, %eax
	movq	-32(%rbp), %rcx
	movl	88(%rcx), %edi
	movq	-32(%rbp), %rcx
	movl	92(%rcx), %edx
	movq	-32(%rbp), %rcx
	movl	100(%rcx), %esi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -52(%rbp)         # 4-byte Spill
	cltd
	movl	-48(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	-52(%rbp), %r8d         # 4-byte Reload
	addl	%eax, %r8d
	movl	-20(%rbp), %eax
	movl	-24(%rbp), %ecx
	movl	%r8d, %esi
	movl	%eax, %edx
	callq	near_sash
	cmpl	$0, %eax
	je	.LBB8_8
# BB#7:                                 # %if.then.23
	movabsq	$MoveLeftSash, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_24
.LBB8_8:                                # %if.else.24
	movl	$2, %eax
	movq	-32(%rbp), %rcx
	movl	88(%rcx), %edx
	movq	-32(%rbp), %rcx
	addl	96(%rcx), %edx
	movq	-32(%rbp), %rcx
	movl	92(%rcx), %esi
	movq	-32(%rbp), %rcx
	movl	100(%rcx), %edi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movl	%edi, %eax
	movl	%edx, -60(%rbp)         # 4-byte Spill
	cltd
	movl	-56(%rbp), %edi         # 4-byte Reload
	idivl	%edi
	addl	%eax, %esi
	movl	-20(%rbp), %eax
	movl	-24(%rbp), %ecx
	movl	-60(%rbp), %edi         # 4-byte Reload
	movl	%eax, %edx
	callq	near_sash
	cmpl	$0, %eax
	je	.LBB8_10
# BB#9:                                 # %if.then.34
	movabsq	$MoveRightSash, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_24
.LBB8_10:                               # %if.else.35
	movq	-32(%rbp), %rax
	movl	88(%rax), %edi
	movq	-32(%rbp), %rax
	movl	92(%rax), %ecx
	movq	-32(%rbp), %rax
	addl	100(%rax), %ecx
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %esi
	movl	%esi, -64(%rbp)         # 4-byte Spill
	movl	%ecx, %esi
	movl	-64(%rbp), %ecx         # 4-byte Reload
	callq	near_sash
	cmpl	$0, %eax
	je	.LBB8_12
# BB#11:                                # %if.then.42
	movabsq	$MoveLowerLeftSash, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_24
.LBB8_12:                               # %if.else.43
	movl	$2, %eax
	movq	-32(%rbp), %rcx
	movl	88(%rcx), %edx
	movq	-32(%rbp), %rcx
	movl	96(%rcx), %esi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -72(%rbp)         # 4-byte Spill
	cltd
	movl	-68(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	-72(%rbp), %edi         # 4-byte Reload
	addl	%eax, %edi
	movq	-32(%rbp), %rcx
	movl	92(%rcx), %eax
	movq	-32(%rbp), %rcx
	addl	100(%rcx), %eax
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %ecx
	movl	%eax, %esi
	movl	%r8d, %edx
	callq	near_sash
	cmpl	$0, %eax
	je	.LBB8_14
# BB#13:                                # %if.then.53
	movabsq	$MoveLowerSash, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_24
.LBB8_14:                               # %if.else.54
	movq	-32(%rbp), %rax
	movl	88(%rax), %ecx
	movq	-32(%rbp), %rax
	addl	96(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	92(%rax), %edx
	movq	-32(%rbp), %rax
	addl	100(%rax), %edx
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edi
	movl	%edi, -76(%rbp)         # 4-byte Spill
	movl	%ecx, %edi
	movl	%esi, -80(%rbp)         # 4-byte Spill
	movl	%edx, %esi
	movl	-80(%rbp), %edx         # 4-byte Reload
	movl	-76(%rbp), %ecx         # 4-byte Reload
	callq	near_sash
	cmpl	$0, %eax
	je	.LBB8_16
# BB#15:                                # %if.then.63
	movabsq	$MoveLowerRightSash, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_24
.LBB8_16:                               # %if.end
	jmp	.LBB8_17
.LBB8_17:                               # %if.end.64
	jmp	.LBB8_18
.LBB8_18:                               # %if.end.65
	jmp	.LBB8_19
.LBB8_19:                               # %if.end.66
	jmp	.LBB8_20
.LBB8_20:                               # %if.end.67
	jmp	.LBB8_21
.LBB8_21:                               # %if.end.68
	jmp	.LBB8_22
.LBB8_22:                               # %if.end.69
	jmp	.LBB8_23
.LBB8_23:                               # %if.end.70
	movq	$0, -8(%rbp)
.LBB8_24:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	rectangle_near_sash, .Lfunc_end8-rectangle_near_sash
	.cfi_endproc

	.align	16, 0x90
	.type	rectangle_point_is_on,@function
rectangle_point_is_on:                  # @rectangle_point_is_on
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rdi
	cmpl	88(%rdi), %eax
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jl	.LBB9_4
# BB#1:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rdx
	movl	88(%rdx), %esi
	movq	-24(%rbp), %rdx
	addl	96(%rdx), %esi
	cmpl	%esi, %eax
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jg	.LBB9_4
# BB#2:                                 # %land.lhs.true.4
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-16(%rbp), %eax
	movq	-24(%rbp), %rdx
	cmpl	92(%rdx), %eax
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jl	.LBB9_4
# BB#3:                                 # %land.rhs
	movl	-16(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	92(%rcx), %edx
	movq	-24(%rbp), %rcx
	addl	100(%rcx), %edx
	cmpl	%edx, %eax
	setle	%sil
	movb	%sil, -25(%rbp)         # 1-byte Spill
.LBB9_4:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end9:
	.size	rectangle_point_is_on, .Lfunc_end9-rectangle_point_is_on
	.cfi_endproc

	.align	16, 0x90
	.type	rectangle_get_dimensions,@function
rectangle_get_dimensions:               # @rectangle_get_dimensions
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rcx
	movl	88(%rcx), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-48(%rbp), %rcx
	movl	92(%rcx), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-48(%rbp), %rcx
	movl	96(%rcx), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-48(%rbp), %rcx
	movl	100(%rcx), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	popq	%rbp
	retq
.Lfunc_end10:
	.size	rectangle_get_dimensions, .Lfunc_end10-rectangle_get_dimensions
	.cfi_endproc

	.align	16, 0x90
	.type	rectangle_resize,@function
rectangle_resize:                       # @rectangle_resize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	movl	$100, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	88(%rdi), %edx
	imull	-12(%rbp), %edx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-28(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movq	-24(%rbp), %rdi
	movl	%eax, 88(%rdi)
	movq	-24(%rbp), %rdi
	movl	92(%rdi), %eax
	imull	-16(%rbp), %eax
	cltd
	idivl	%esi
	movq	-24(%rbp), %rdi
	movl	%eax, 92(%rdi)
	movq	-24(%rbp), %rdi
	movl	96(%rdi), %eax
	imull	-12(%rbp), %eax
	cltd
	idivl	%esi
	movq	-24(%rbp), %rdi
	movl	%eax, 96(%rdi)
	movq	-24(%rbp), %rdi
	movl	100(%rdi), %eax
	imull	-16(%rbp), %eax
	cltd
	idivl	%esi
	movq	-24(%rbp), %rdi
	movl	%eax, 100(%rdi)
	popq	%rbp
	retq
.Lfunc_end11:
	.size	rectangle_resize, .Lfunc_end11-rectangle_resize
	.cfi_endproc

	.align	16, 0x90
	.type	rectangle_move,@function
rectangle_move:                         # @rectangle_move
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rdi
	addl	88(%rdi), %edx
	movl	%edx, 88(%rdi)
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rdi
	addl	92(%rdi), %edx
	movl	%edx, 92(%rdi)
	popq	%rbp
	retq
.Lfunc_end12:
	.size	rectangle_move, .Lfunc_end12-rectangle_move
	.cfi_endproc

	.align	16, 0x90
	.type	rectangle_create_info_widget,@function
rectangle_create_info_widget:           # @rectangle_create_info_widget
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$296, %rsp              # imm = 0x128
.Ltmp42:
	.cfi_offset %rbx, -24
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$48, %eax
	movl	%eax, %esi
	movq	%rdi, -16(%rbp)
	movq	%rcx, %rdi
	callq	g_malloc_n
	movq	%rax, -24(%rbp)
	callq	get_image_width
	movl	%eax, -52(%rbp)
	callq	get_image_height
	movl	$4, %edx
	xorl	%r8d, %r8d
	movl	%eax, -56(%rbp)
	movl	%edx, %edi
	movl	%edx, %esi
	movl	%r8d, %edx
	callq	gtk_table_new
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.1, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	%edx, %esi
	movq	%rax, %rcx
	callq	create_label_in_table
	xorl	%edx, %edx
	movl	$1, %esi
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	-52(%rbp), %r8d
	subl	$1, %r8d
	movl	%esi, -92(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movl	%edx, -96(%rbp)         # 4-byte Spill
	movl	-92(%rbp), %ecx         # 4-byte Reload
	movl	-92(%rbp), %r9d         # 4-byte Reload
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-96(%rbp), %r9d         # 4-byte Reload
	movl	-100(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	callq	create_spin_button_in_table
	movabsq	$.L.str.2, %rsi
	movabsq	$x_changed_cb, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %r11
	movq	%rax, 8(%r11)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %r11
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.3, %rdi
	movq	-32(%rbp), %rcx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$3, %edx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_label_in_table
	movabsq	$.L.str.4, %rdi
	movq	-32(%rbp), %rcx
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_label_in_table
	movl	$1, %edx
	xorl	%r9d, %r9d
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-56(%rbp), %r10d
	subl	$1, %r10d
	movl	%edx, -148(%rbp)        # 4-byte Spill
	movl	-148(%rbp), %ecx        # 4-byte Reload
	movl	-148(%rbp), %r8d        # 4-byte Reload
	movl	%r10d, (%rsp)
	callq	create_spin_button_in_table
	movabsq	$.L.str.2, %rsi
	movabsq	$y_changed_cb, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %r11
	movq	%rax, 16(%r11)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-24(%rbp), %r11
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-160(%rbp), %rdx        # 8-byte Reload
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.3, %rdi
	movq	-32(%rbp), %rcx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %esi
	movl	$3, %edx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_label_in_table
	movabsq	$.L.str.5, %rdi
	movq	-32(%rbp), %rcx
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %esi
	xorl	%edx, %edx
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_label_in_table
	movl	$2, %edx
	movl	$1, %esi
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	-52(%rbp), %r9d
	movl	%esi, -196(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-196(%rbp), %ecx        # 4-byte Reload
	movl	-196(%rbp), %r8d        # 4-byte Reload
	movl	-196(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -200(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	-200(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, (%rsp)
	callq	create_spin_button_in_table
	movabsq	$.L.str.2, %rsi
	movabsq	$width_changed_cb, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %r11
	movq	%rax, 24(%r11)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %r11
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-208(%rbp), %rdx        # 8-byte Reload
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.3, %rdi
	movq	-32(%rbp), %rcx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %esi
	movl	$3, %edx
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_label_in_table
	movabsq	$.L.str.6, %rdi
	movq	-32(%rbp), %rcx
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$3, %esi
	xorl	%edx, %edx
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	create_label_in_table
	movl	$3, %edx
	movl	$1, %esi
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	-56(%rbp), %r9d
	movl	%esi, -244(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	-244(%rbp), %ecx        # 4-byte Reload
	movl	-244(%rbp), %r8d        # 4-byte Reload
	movl	-244(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -248(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	-248(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, (%rsp)
	callq	create_spin_button_in_table
	movabsq	$.L.str.2, %rsi
	movabsq	$height_changed_cb, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %r11
	movq	%rax, 32(%r11)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	-24(%rbp), %r11
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-256(%rbp), %rdx        # 8-byte Reload
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.3, %rdi
	movq	-32(%rbp), %rcx
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$3, %r9d
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movl	%r9d, %edx
	movq	%rax, %rcx
	callq	create_label_in_table
	movl	$3, %edi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_chain_button_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$3, %ecx
	movl	$4, %r9d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -292(%rbp)        # 4-byte Spill
	movl	-292(%rbp), %r8d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	rectangle_create_info_widget, .Lfunc_end13-rectangle_create_info_widget
	.cfi_endproc

	.align	16, 0x90
	.type	rectangle_fill_info_tab,@function
rectangle_fill_info_tab:                # @rectangle_fill_info_tab
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	%rsi, (%rdi)
	movq	-32(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	cvtsi2sdl	88(%rsi), %xmm0
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	cvtsi2sdl	92(%rsi), %xmm0
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	cvtsi2sdl	96(%rsi), %xmm0
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	cvtsi2sdl	100(%rsi), %xmm0
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	rectangle_fill_info_tab, .Lfunc_end14-rectangle_fill_info_tab
	.cfi_endproc

	.align	16, 0x90
	.type	rectangle_set_initial_focus,@function
rectangle_set_initial_focus:            # @rectangle_set_initial_focus
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rdi
	callq	gtk_widget_grab_focus
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	rectangle_set_initial_focus, .Lfunc_end15-rectangle_set_initial_focus
	.cfi_endproc

	.align	16, 0x90
	.type	rectangle_update,@function
rectangle_update:                       # @rectangle_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movq	-24(%rbp), %rsi
	movl	%eax, 88(%rsi)
	movq	-32(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movq	-24(%rbp), %rsi
	movl	%eax, 92(%rsi)
	movq	-32(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movq	-24(%rbp), %rsi
	movl	%eax, 96(%rsi)
	movq	-32(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movq	-24(%rbp), %rsi
	movl	%eax, 100(%rsi)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	rectangle_update, .Lfunc_end16-rectangle_update
	.cfi_endproc

	.align	16, 0x90
	.type	rectangle_write_csim,@function
rectangle_write_csim:                   # @rectangle_write_csim
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$.L.str.7, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	88(%rsi), %ecx
	movq	-32(%rbp), %rsi
	movl	92(%rsi), %r8d
	movq	-32(%rbp), %rsi
	movl	88(%rsi), %r9d
	movq	-32(%rbp), %rsi
	addl	96(%rsi), %r9d
	movq	-32(%rbp), %rsi
	movl	92(%rsi), %r10d
	movq	-32(%rbp), %rsi
	addl	100(%rsi), %r10d
	movq	%rax, %rsi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%ecx, %edx
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movb	$0, %al
	movq	-40(%rbp), %r11         # 8-byte Reload
	callq	*%r11
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	rectangle_write_csim, .Lfunc_end17-rectangle_write_csim
	.cfi_endproc

	.align	16, 0x90
	.type	rectangle_write_cern,@function
rectangle_write_cern:                   # @rectangle_write_cern
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$.L.str.8, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	88(%rsi), %ecx
	movq	-32(%rbp), %rsi
	movl	92(%rsi), %r8d
	movq	-32(%rbp), %rsi
	movl	88(%rsi), %r9d
	movq	-32(%rbp), %rsi
	addl	96(%rsi), %r9d
	movq	-32(%rbp), %rsi
	movl	92(%rsi), %r10d
	movq	-32(%rbp), %rsi
	addl	100(%rsi), %r10d
	movq	%rax, %rsi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%ecx, %edx
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movb	$0, %al
	movq	-40(%rbp), %r11         # 8-byte Reload
	callq	*%r11
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	rectangle_write_cern, .Lfunc_end18-rectangle_write_cern
	.cfi_endproc

	.align	16, 0x90
	.type	rectangle_write_ncsa,@function
rectangle_write_ncsa:                   # @rectangle_write_ncsa
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
.Ltmp61:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.9, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	-40(%rbp), %rcx
	movl	88(%rcx), %ecx
	movq	-40(%rbp), %r8
	movl	92(%r8), %r8d
	movq	-40(%rbp), %r9
	movl	88(%r9), %r10d
	movq	-40(%rbp), %r9
	addl	96(%r9), %r10d
	movq	-40(%rbp), %r9
	movl	92(%r9), %r11d
	movq	-40(%rbp), %r9
	addl	100(%r9), %r11d
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movl	%r10d, %r9d
	movl	%r11d, (%rsp)
	movb	$0, %al
	movq	-56(%rbp), %rbx         # 8-byte Reload
	callq	*%rbx
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end19:
	.size	rectangle_write_ncsa, .Lfunc_end19-rectangle_write_ncsa
	.cfi_endproc

	.align	16, 0x90
	.type	rectangle_get_stock_icon_name,@function
rectangle_get_stock_icon_name:          # @rectangle_get_stock_icon_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	movabsq	$.L.str.10, %rax
	popq	%rbp
	retq
.Lfunc_end20:
	.size	rectangle_get_stock_icon_name, .Lfunc_end20-rectangle_get_stock_icon_name
	.cfi_endproc

	.align	16, 0x90
	.type	draw_any_rectangle,@function
draw_any_rectangle:                     # @draw_any_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	cmpl	$0, -20(%rbp)
	jge	.LBB21_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	-20(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movl	%ecx, -12(%rbp)
	subl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB21_2:                               # %if.end
	cmpl	$0, -24(%rbp)
	jge	.LBB21_4
# BB#3:                                 # %if.then.2
	xorl	%eax, %eax
	movl	-24(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movl	%ecx, -16(%rbp)
	subl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB21_4:                               # %if.end.5
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	-24(%rbp), %r9d
	callq	draw_rectangle
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	draw_any_rectangle, .Lfunc_end21-draw_any_rectangle
	.cfi_endproc

	.align	16, 0x90
	.type	MoveUpperLeftSash,@function
MoveUpperLeftSash:                      # @MoveUpperLeftSash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rdi
	addl	88(%rdi), %edx
	movl	%edx, 88(%rdi)
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rdi
	addl	92(%rdi), %edx
	movl	%edx, 92(%rdi)
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rdi
	movl	96(%rdi), %esi
	subl	%edx, %esi
	movl	%esi, 96(%rdi)
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rdi
	movl	100(%rdi), %esi
	subl	%edx, %esi
	movl	%esi, 100(%rdi)
	popq	%rbp
	retq
.Lfunc_end22:
	.size	MoveUpperLeftSash, .Lfunc_end22-MoveUpperLeftSash
	.cfi_endproc

	.align	16, 0x90
	.type	MoveUpperSash,@function
MoveUpperSash:                          # @MoveUpperSash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rdi
	addl	92(%rdi), %edx
	movl	%edx, 92(%rdi)
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rdi
	movl	100(%rdi), %esi
	subl	%edx, %esi
	movl	%esi, 100(%rdi)
	popq	%rbp
	retq
.Lfunc_end23:
	.size	MoveUpperSash, .Lfunc_end23-MoveUpperSash
	.cfi_endproc

	.align	16, 0x90
	.type	MoveUpperRightSash,@function
MoveUpperRightSash:                     # @MoveUpperRightSash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rdi
	addl	92(%rdi), %edx
	movl	%edx, 92(%rdi)
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rdi
	addl	96(%rdi), %edx
	movl	%edx, 96(%rdi)
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rdi
	movl	100(%rdi), %esi
	subl	%edx, %esi
	movl	%esi, 100(%rdi)
	popq	%rbp
	retq
.Lfunc_end24:
	.size	MoveUpperRightSash, .Lfunc_end24-MoveUpperRightSash
	.cfi_endproc

	.align	16, 0x90
	.type	MoveLeftSash,@function
MoveLeftSash:                           # @MoveLeftSash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rdi
	addl	88(%rdi), %edx
	movl	%edx, 88(%rdi)
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rdi
	movl	96(%rdi), %esi
	subl	%edx, %esi
	movl	%esi, 96(%rdi)
	popq	%rbp
	retq
.Lfunc_end25:
	.size	MoveLeftSash, .Lfunc_end25-MoveLeftSash
	.cfi_endproc

	.align	16, 0x90
	.type	MoveRightSash,@function
MoveRightSash:                          # @MoveRightSash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rdi
	addl	96(%rdi), %edx
	movl	%edx, 96(%rdi)
	popq	%rbp
	retq
.Lfunc_end26:
	.size	MoveRightSash, .Lfunc_end26-MoveRightSash
	.cfi_endproc

	.align	16, 0x90
	.type	MoveLowerLeftSash,@function
MoveLowerLeftSash:                      # @MoveLowerLeftSash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp85:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rdi
	addl	88(%rdi), %edx
	movl	%edx, 88(%rdi)
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rdi
	movl	96(%rdi), %esi
	subl	%edx, %esi
	movl	%esi, 96(%rdi)
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rdi
	addl	100(%rdi), %edx
	movl	%edx, 100(%rdi)
	popq	%rbp
	retq
.Lfunc_end27:
	.size	MoveLowerLeftSash, .Lfunc_end27-MoveLowerLeftSash
	.cfi_endproc

	.align	16, 0x90
	.type	MoveLowerSash,@function
MoveLowerSash:                          # @MoveLowerSash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp88:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rdi
	addl	100(%rdi), %edx
	movl	%edx, 100(%rdi)
	popq	%rbp
	retq
.Lfunc_end28:
	.size	MoveLowerSash, .Lfunc_end28-MoveLowerSash
	.cfi_endproc

	.align	16, 0x90
	.type	MoveLowerRightSash,@function
MoveLowerRightSash:                     # @MoveLowerRightSash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp91:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rdi
	addl	96(%rdi), %edx
	movl	%edx, 96(%rdi)
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rdi
	addl	100(%rdi), %edx
	movl	%edx, 100(%rdi)
	popq	%rbp
	retq
.Lfunc_end29:
	.size	MoveLowerRightSash, .Lfunc_end29-MoveLowerRightSash
	.cfi_endproc

	.align	16, 0x90
	.type	x_changed_cb,@function
x_changed_cb:                           # @x_changed_cb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp94:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_chain_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_chain_button_get_active
	cmpl	$0, %eax
	je	.LBB30_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvtsi2sdl	-36(%rbp), %xmm0
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
.LBB30_2:                               # %if.end
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 88(%rcx)
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	8(%rcx), %rdi
	callq	edit_area_info_dialog_emit_geometry_signal
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	x_changed_cb, .Lfunc_end30-x_changed_cb
	.cfi_endproc

	.align	16, 0x90
	.type	y_changed_cb,@function
y_changed_cb:                           # @y_changed_cb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp97:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rsi
	movl	%eax, 92(%rsi)
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	8(%rsi), %rdi
	callq	edit_area_info_dialog_emit_geometry_signal
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	y_changed_cb, .Lfunc_end31-y_changed_cb
	.cfi_endproc

	.align	16, 0x90
	.type	width_changed_cb,@function
width_changed_cb:                       # @width_changed_cb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp100:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rsi
	movl	%eax, 96(%rsi)
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	8(%rsi), %rdi
	callq	edit_area_info_dialog_emit_geometry_signal
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	width_changed_cb, .Lfunc_end32-width_changed_cb
	.cfi_endproc

	.align	16, 0x90
	.type	height_changed_cb,@function
height_changed_cb:                      # @height_changed_cb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp103:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value_as_int
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rsi
	movl	%eax, 100(%rsi)
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	8(%rsi), %rdi
	callq	edit_area_info_dialog_emit_geometry_signal
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	height_changed_cb, .Lfunc_end33-height_changed_cb
	.cfi_endproc

	.align	16, 0x90
	.type	rectangle_factory_finish,@function
rectangle_factory_finish:               # @rectangle_factory_finish
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
.Ltmp105:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp106:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rdi
	subl	88(%rdi), %edx
	movq	-24(%rbp), %rdi
	movl	%edx, 96(%rdi)
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rdi
	subl	92(%rdi), %edx
	movq	-24(%rbp), %rdi
	movl	%edx, 100(%rdi)
	movq	-8(%rbp), %rdi
	callq	rectangle_normalize
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	rectangle_factory_finish, .Lfunc_end34-rectangle_factory_finish
	.cfi_endproc

	.align	16, 0x90
	.type	rectangle_factory_create_object,@function
rectangle_factory_create_object:        # @rectangle_factory_create_object
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp107:
	.cfi_def_cfa_offset 16
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp109:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	create_rectangle
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	rectangle_factory_create_object, .Lfunc_end35-rectangle_factory_create_object
	.cfi_endproc

	.align	16, 0x90
	.type	rectangle_factory_set_xy,@function
rectangle_factory_set_xy:               # @rectangle_factory_set_xy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
.Ltmp111:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp112:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)
	movl	-16(%rbp), %ecx
	movq	-32(%rbp), %rdi
	subl	88(%rdi), %ecx
	movq	-32(%rbp), %rdi
	movl	%ecx, 96(%rdi)
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %rdi
	subl	92(%rdi), %ecx
	movq	-32(%rbp), %rdi
	movl	%ecx, 100(%rdi)
	movl	-12(%rbp), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB36_11
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movl	96(%rax), %edi
	callq	abs
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rcx
	movl	100(%rcx), %edi
	callq	abs
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB36_6
# BB#2:                                 # %if.then.9
	movq	-32(%rbp), %rax
	cmpl	$0, 100(%rax)
	jge	.LBB36_4
# BB#3:                                 # %cond.true
	xorl	%eax, %eax
	subl	-36(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB36_5
.LBB36_4:                               # %cond.false
	movl	-36(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB36_5:                               # %cond.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	movq	-32(%rbp), %rcx
	movl	%eax, 100(%rcx)
	jmp	.LBB36_10
.LBB36_6:                               # %if.else
	movq	-32(%rbp), %rax
	cmpl	$0, 96(%rax)
	jge	.LBB36_8
# BB#7:                                 # %cond.true.16
	xorl	%eax, %eax
	subl	-40(%rbp), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB36_9
.LBB36_8:                               # %cond.false.18
	movl	-40(%rbp), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB36_9:                               # %cond.end.19
	movl	-48(%rbp), %eax         # 4-byte Reload
	movq	-32(%rbp), %rcx
	movl	%eax, 96(%rcx)
.LBB36_10:                              # %if.end
	jmp	.LBB36_11
.LBB36_11:                              # %if.end.22
	movq	-32(%rbp), %rax
	movl	96(%rax), %edi
	movq	-32(%rbp), %rax
	movl	100(%rax), %esi
	callq	main_set_dimension
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	rectangle_factory_set_xy, .Lfunc_end36-rectangle_factory_set_xy
	.cfi_endproc

	.type	rectangle_class,@object # @rectangle_class
	.data
	.align	8
rectangle_class:
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	0
	.quad	rectangle_is_valid
	.quad	0
	.quad	rectangle_clone
	.quad	rectangle_assign
	.quad	rectangle_normalize
	.quad	rectangle_draw
	.quad	rectangle_draw_sashes
	.quad	rectangle_near_sash
	.quad	rectangle_point_is_on
	.quad	rectangle_get_dimensions
	.quad	rectangle_resize
	.quad	rectangle_move
	.quad	rectangle_create_info_widget
	.quad	rectangle_fill_info_tab
	.quad	rectangle_fill_info_tab
	.quad	rectangle_set_initial_focus
	.quad	rectangle_update
	.quad	rectangle_write_csim
	.quad	rectangle_write_cern
	.quad	rectangle_write_ncsa
	.quad	object_do_popup
	.quad	rectangle_get_stock_icon_name
	.size	rectangle_class, 208

	.type	rectangle_factory,@object # @rectangle_factory
	.align	8
rectangle_factory:
	.quad	0
	.quad	rectangle_factory_finish
	.quad	0
	.quad	rectangle_factory_create_object
	.quad	rectangle_factory_set_xy
	.size	rectangle_factory, 40

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"_Rectangle"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Upper left _x:"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"value-changed"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"pixels"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Upper left _y:"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"_Width:"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"_Height:"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\"rect\" coords=\"%d,%d,%d,%d\""
	.size	.L.str.7, 28

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"rect (%d,%d) (%d,%d)"
	.size	.L.str.8, 21

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"rect %s %d,%d %d,%d"
	.size	.L.str.9, 20

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"imap-rectangle"
	.size	.L.str.10, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
