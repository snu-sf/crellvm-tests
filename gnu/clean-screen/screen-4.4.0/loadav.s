	.text
	.file	"loadav.bc"
	.globl	InitLoadav
	.align	16, 0x90
	.type	InitLoadav,@function
InitLoadav:                             # @InitLoadav
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
	movl	$1, loadok
	popq	%rbp
	retq
.Lfunc_end0:
	.size	InitLoadav, .Lfunc_end0-InitLoadav
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	AddLoadav
	.align	16, 0x90
	.type	AddLoadav,@function
AddLoadav:                              # @AddLoadav
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
	movq	%rdi, -8(%rbp)
	cmpl	$0, loadok
	jne	.LBB1_2
# BB#1:                                 # %if.then
	jmp	.LBB1_6
.LBB1_2:                                # %if.end
	callq	GetLoadav
	movl	%eax, -16(%rbp)
	movl	$0, -12(%rbp)
.LBB1_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB1_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB1_3 Depth=1
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movabsq	$.L.str, %rax
	movq	-8(%rbp), %rdi
	cmpl	$0, -12(%rbp)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	addq	%rsi, %rax
	movslq	-12(%rbp), %rsi
	movsd	loadav(,%rsi,8), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	%rax, %rsi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	sprintf
	movq	-8(%rbp), %rdi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	strlen
	addq	-8(%rbp), %rax
	movq	%rax, -8(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB1_3
.LBB1_6:                                # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	AddLoadav, .Lfunc_end1-AddLoadav
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4621819117588971520     # double 10
.LCPI2_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	GetLoadav,@function
GetLoadav:                              # @GetLoadav
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
	subq	$208, %rsp
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.2, %rsi
	callq	secfopen
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB2_26
.LBB2_2:                                # %if.end
	movl	$128, %esi
	leaq	-144(%rbp), %rdi
	movb	$0, -144(%rbp)
	movq	-16(%rbp), %rdx
	callq	fgets
	movq	-16(%rbp), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	fclose
	leaq	-144(%rbp), %rdx
	movq	%rdx, -152(%rbp)
	movl	$0, -156(%rbp)
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB2_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_5 Depth 2
                                        #     Child Loop BB2_10 Depth 2
	cmpl	$3, -156(%rbp)
	jge	.LBB2_25
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB2_3 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -176(%rbp)
	movsd	%xmm0, -168(%rbp)
.LBB2_5:                                # %while.cond
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-152(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	jne	.LBB2_7
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB2_5 Depth=2
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB2_5
.LBB2_7:                                # %while.end
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	-152(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB2_9
# BB#8:                                 # %if.then.11
	jmp	.LBB2_25
.LBB2_9:                                # %if.end.12
                                        #   in Loop: Header=BB2_3 Depth=1
	jmp	.LBB2_10
.LBB2_10:                               # %for.cond.13
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-152(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB2_12
# BB#11:                                # %if.then.17
                                        #   in Loop: Header=BB2_10 Depth=2
	movsd	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)
	jmp	.LBB2_19
.LBB2_12:                               # %if.else
                                        #   in Loop: Header=BB2_10 Depth=2
	movq	-152(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$48, %ecx
	jl	.LBB2_17
# BB#13:                                # %land.lhs.true
                                        #   in Loop: Header=BB2_10 Depth=2
	movq	-152(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	jg	.LBB2_17
# BB#14:                                # %if.then.24
                                        #   in Loop: Header=BB2_10 Depth=2
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero
	mulsd	-168(%rbp), %xmm1
	movq	-152(%rbp), %rax
	movsbl	(%rax), %ecx
	subl	$48, %ecx
	cvtsi2sdl	%ecx, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -168(%rbp)
	movsd	-176(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB2_15
	jp	.LBB2_15
	jmp	.LBB2_16
.LBB2_15:                               # %if.then.27
                                        #   in Loop: Header=BB2_10 Depth=2
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	mulsd	-176(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
.LBB2_16:                               # %if.end.29
                                        #   in Loop: Header=BB2_10 Depth=2
	jmp	.LBB2_18
.LBB2_17:                               # %if.else.30
                                        #   in Loop: Header=BB2_3 Depth=1
	jmp	.LBB2_20
.LBB2_18:                               # %if.end.31
                                        #   in Loop: Header=BB2_10 Depth=2
	jmp	.LBB2_19
.LBB2_19:                               # %if.end.32
                                        #   in Loop: Header=BB2_10 Depth=2
	movq	-152(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB2_10
.LBB2_20:                               # %for.end
                                        #   in Loop: Header=BB2_3 Depth=1
	xorps	%xmm0, %xmm0
	movsd	-176(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB2_21
	jp	.LBB2_21
	jmp	.LBB2_22
.LBB2_21:                               # %cond.true
                                        #   in Loop: Header=BB2_3 Depth=1
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-176(%rbp), %xmm0
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	jmp	.LBB2_23
.LBB2_22:                               # %cond.false
                                        #   in Loop: Header=BB2_3 Depth=1
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
.LBB2_23:                               # %cond.end
                                        #   in Loop: Header=BB2_3 Depth=1
	movsd	-200(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movslq	-156(%rbp), %rax
	movsd	%xmm0, loadav(,%rax,8)
# BB#24:                                # %for.inc
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB2_3
.LBB2_25:                               # %for.end.35
	movl	-156(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB2_26:                               # %return
	movl	-4(%rbp), %eax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	GetLoadav, .Lfunc_end2-GetLoadav
	.cfi_endproc

	.type	loadok,@object          # @loadok
	.local	loadok
	.comm	loadok,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" %2.2f"
	.size	.L.str, 7

	.type	loadav,@object          # @loadav
	.local	loadav
	.comm	loadav,24,16
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"/proc/loadavg"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"r"
	.size	.L.str.2, 2


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
