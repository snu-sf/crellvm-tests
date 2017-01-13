	.text
	.file	"math.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4532020583610935537     # double 1.0000000000000001E-5
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.globl	epsilon_equal
	.align	16, 0x90
	.type	epsilon_equal,@function
epsilon_equal:                          # @epsilon_equal
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
	movb	$1, %al
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	ucomisd	-16(%rbp), %xmm0
	movb	%al, -17(%rbp)          # 1-byte Spill
	jne	.LBB0_1
	jp	.LBB0_1
	jmp	.LBB0_2
.LBB0_1:                                # %lor.rhs
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	subsd	-16(%rbp), %xmm1
	movapd	.LCPI0_1(%rip), %xmm2   # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	setae	%al
	movb	%al, -17(%rbp)          # 1-byte Spill
.LBB0_2:                                # %lor.end
	movb	-17(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	epsilon_equal, .Lfunc_end0-epsilon_equal
	.cfi_endproc

	.globl	distance
	.align	16, 0x90
	.type	distance,@function
distance:                               # @distance
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
	subq	$32, %rsp
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -8(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -24(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-32(%rbp), %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	subsd	-24(%rbp), %xmm1
	callq	hypot
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	distance, .Lfunc_end1-distance
	.cfi_endproc

	.globl	int_distance
	.align	16, 0x90
	.type	int_distance,@function
int_distance:                           # @int_distance
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cvtsi2sdl	-8(%rbp), %xmm0
	cvtsi2sdl	-16(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvtsi2sdl	-4(%rbp), %xmm1
	cvtsi2sdl	-12(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	callq	hypot
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	int_distance, .Lfunc_end2-int_distance
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
.LCPI3_1:
	.quad	-4616189618054758400    # double -1
.LCPI3_2:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI3_3:
	.quad	4640537203540230144     # double 180
	.text
	.globl	my_acosd
	.align	16, 0x90
	.type	my_acosd,@function
my_acosd:                               # @my_acosd
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
	subq	$16, %rsp
	movsd	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	callq	epsilon_equal
	cmpl	$0, %eax
	je	.LBB3_2
# BB#1:                                 # %if.then
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB3_5
.LBB3_2:                                # %if.else
	movsd	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	callq	epsilon_equal
	cmpl	$0, %eax
	je	.LBB3_4
# BB#3:                                 # %if.then.3
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %if.end.4
	callq	__errno_location
	movl	$0, (%rax)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	callq	acos
	movsd	%xmm0, -16(%rbp)
	callq	__errno_location
	cmpl	$34, (%rax)
	je	.LBB3_7
# BB#6:                                 # %lor.lhs.false
	callq	__errno_location
	cmpl	$33, (%rax)
	jne	.LBB3_9
.LBB3_7:                                # %if.then.10
	jmp	.LBB3_8
.LBB3_8:                                # %do.body
	movabsq	$.L.str, %rdi
	callq	perror
	callq	__errno_location
	movl	(%rax), %edi
	callq	exit
.LBB3_9:                                # %if.end.12
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_3, %xmm1         # xmm1 = mem[0],zero
	mulsd	-16(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	my_acosd, .Lfunc_end3-my_acosd
	.cfi_endproc

	.globl	slope
	.align	16, 0x90
	.type	slope,@function
slope:                                  # @slope
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
	subq	$32, %rsp
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -8(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -24(%rbp)
# BB#1:                                 # %do.body
	xorps	%xmm0, %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-16(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jne	.LBB4_2
	jp	.LBB4_2
	jmp	.LBB4_3
.LBB4_2:                                # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.1, %rsi
	movl	$87, %edx
	movabsq	$.L__func__.slope, %rcx
	movabsq	$.L.str.2, %r8
	callq	g_assertion_message_expr
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-8(%rbp), %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-16(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	slope, .Lfunc_end4-slope
	.cfi_endproc

	.globl	int_to_real_coord
	.align	16, 0x90
	.type	int_to_real_coord,@function
int_to_real_coord:                      # @int_to_real_coord
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
	movq	%rdi, -24(%rbp)
	cvtsi2sdl	-24(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	cvtsi2sdl	-20(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movups	-40(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end5:
	.size	int_to_real_coord, .Lfunc_end5-int_to_real_coord
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	real_to_int_coord
	.align	16, 0x90
	.type	real_to_int_coord,@function
real_to_int_coord:                      # @real_to_int_coord
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
	xorps	%xmm2, %xmm2
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -16(%rbp)
	cvttsd2si	-24(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm2, %xmm1
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	jbe	.LBB6_2
# BB#1:                                 # %cond.true
	movl	$1, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB6_3
.LBB6_2:                                # %cond.false
	xorps	%xmm0, %xmm0
	xorl	%eax, %eax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	ucomisd	-24(%rbp), %xmm0
	cmoval	%ecx, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB6_3:                                # %cond.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	xorps	%xmm0, %xmm0
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm1
	movsd	-40(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -32(%rbp)
	cvttsd2si	-16(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	-16(%rbp), %xmm2        # xmm2 = mem[0],zero
	ucomisd	%xmm0, %xmm2
	movsd	%xmm1, -56(%rbp)        # 8-byte Spill
	jbe	.LBB6_5
# BB#4:                                 # %cond.true.16
	movl	$1, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB6_6
.LBB6_5:                                # %cond.false.17
	xorps	%xmm0, %xmm0
	xorl	%eax, %eax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	ucomisd	-16(%rbp), %xmm0
	cmoval	%ecx, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB6_6:                                # %cond.end.22
	movl	-60(%rbp), %eax         # 4-byte Reload
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -28(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end6:
	.size	real_to_int_coord, .Lfunc_end6-real_to_int_coord
	.cfi_endproc

	.globl	points_adjacent_p
	.align	16, 0x90
	.type	points_adjacent_p,@function
points_adjacent_p:                      # @points_adjacent_p
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	-4(%rbp), %ecx
	subl	-12(%rbp), %ecx
	movl	%ecx, %edi
	callq	abs
	movl	%eax, -20(%rbp)
	movl	-8(%rbp), %eax
	subl	-16(%rbp), %eax
	movl	%eax, %edi
	callq	abs
	movl	%eax, -24(%rbp)
	cmpl	$1, -20(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %land.lhs.true
	movb	$1, %al
	cmpl	$1, -24(%rbp)
	movb	%al, -25(%rbp)          # 1-byte Spill
	je	.LBB7_7
.LBB7_2:                                # %lor.lhs.false
	cmpl	$0, -20(%rbp)
	jne	.LBB7_4
# BB#3:                                 # %land.lhs.true.5
	movb	$1, %al
	cmpl	$1, -24(%rbp)
	movb	%al, -25(%rbp)          # 1-byte Spill
	je	.LBB7_7
.LBB7_4:                                # %lor.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$1, -20(%rbp)
	movb	%cl, -26(%rbp)          # 1-byte Spill
	jne	.LBB7_6
# BB#5:                                 # %land.rhs
	cmpl	$0, -24(%rbp)
	sete	%al
	movb	%al, -26(%rbp)          # 1-byte Spill
.LBB7_6:                                # %land.end
	movb	-26(%rbp), %al          # 1-byte Reload
	movb	%al, -25(%rbp)          # 1-byte Spill
.LBB7_7:                                # %lor.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	points_adjacent_p, .Lfunc_end7-points_adjacent_p
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4039728865751334912     # double 1.1754943508222875E-38
.LCPI8_1:
	.quad	5183643170566569984     # double 3.4028234663852886E+38
	.text
	.globl	find_bounds
	.align	16, 0x90
	.type	find_bounds,@function
find_bounds:                            # @find_bounds
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
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_1, %xmm1         # xmm1 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movsd	%xmm1, (%rcx)
	movq	-32(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movl	$0, -36(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jae	.LBB8_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-24(%rbp), %rcx
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB8_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-24(%rbp), %rcx
	movsd	%xmm0, (%rcx)
.LBB8_4:                                # %if.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-32(%rbp), %rcx
	ucomisd	(%rcx), %xmm0
	jbe	.LBB8_6
# BB#5:                                 # %if.then.7
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movsd	(%rdx,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movq	-32(%rbp), %rcx
	movsd	%xmm0, (%rcx)
.LBB8_6:                                # %if.end.10
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_7
.LBB8_7:                                # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB8_1
.LBB8_8:                                # %for.end
	popq	%rbp
	retq
.Lfunc_end8:
	.size	find_bounds, .Lfunc_end8-find_bounds
	.cfi_endproc

	.globl	map_to_unit
	.align	16, 0x90
	.type	map_to_unit,@function
map_to_unit:                            # @map_to_unit
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
	subq	$48, %rsp
	movl	$8, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	g_malloc_n
	leaq	-24(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	find_bounds
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jae	.LBB9_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movsd	(%rcx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	subsd	-24(%rbp), %xmm0
	divsd	-32(%rbp), %xmm0
	movslq	-36(%rbp), %rax
	movq	-48(%rbp), %rcx
	movsd	%xmm0, (%rcx,%rax,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB9_1
.LBB9_4:                                # %for.end
	movq	-48(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	map_to_unit, .Lfunc_end9-map_to_unit
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"acosd"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"math.c"
	.size	.L.str.1, 7

	.type	.L__func__.slope,@object # @__func__.slope
.L__func__.slope:
	.asciz	"slope"
	.size	.L__func__.slope, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"coord2.x - coord1.x != 0"
	.size	.L.str.2, 25


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
