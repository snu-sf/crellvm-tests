	.text
	.file	"printlen.bc"
	.globl	vprintflen
	.align	16, 0x90
	.type	vprintflen,@function
vprintflen:                             # @vprintflen
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
	subq	$64, %rsp
	leaq	-48(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movq	16(%rsi), %rcx
	movq	%rcx, 16(%rdi)
	movups	(%rsi), %xmm0
	movups	%xmm0, (%rdi)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	int_printflen
	leaq	-48(%rbp), %rcx
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	vprintflen, .Lfunc_end0-vprintflen
	.cfi_endproc

	.align	16, 0x90
	.type	int_printflen,@function
int_printflen:                          # @int_printflen
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
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
                                        #     Child Loop BB1_20 Depth 2
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB1_42
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$37, %ecx
	je	.LBB1_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB1_40
.LBB1_4:                                # %if.else
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movl	$0, -32(%rbp)
.LBB1_5:                                # %while.cond
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabsq	$.L.str, %rdi
	movq	-24(%rbp), %rax
	movsbl	(%rax), %esi
	callq	strchr
	cmpq	$0, %rax
	je	.LBB1_7
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB1_5 Depth=2
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB1_5
.LBB1_7:                                # %while.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$42, %ecx
	jne	.LBB1_12
# BB#8:                                 # %if.then.8
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	ja	.LBB1_10
# BB#9:                                 # %vaarg.in_reg
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx         # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB1_11
.LBB1_10:                               # %vaarg.in_mem
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -56(%rbp)         # 8-byte Spill
.LBB1_11:                               # %vaarg.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %edi
	callq	abs
	movl	%eax, -32(%rbp)
.LBB1_12:                               # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB1_19
# BB#13:                                # %if.then.14
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$42, %ecx
	jne	.LBB1_18
# BB#14:                                # %if.then.19
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	ja	.LBB1_16
# BB#15:                                # %vaarg.in_reg.24
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx         # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB1_17
.LBB1_16:                               # %vaarg.in_mem.26
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -80(%rbp)         # 8-byte Spill
.LBB1_17:                               # %vaarg.end.30
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %edi
	callq	abs
	movl	%eax, -32(%rbp)
.LBB1_18:                               # %if.end.33
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_19
.LBB1_19:                               # %if.end.34
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_20
.LBB1_20:                               # %while.cond.35
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movabsq	$.L.str.1, %rdi
	movq	-24(%rbp), %rax
	movsbl	(%rax), %esi
	callq	strchr
	cmpq	$0, %rax
	je	.LBB1_22
# BB#21:                                # %while.body.39
                                        #   in Loop: Header=BB1_20 Depth=2
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB1_20
.LBB1_22:                               # %while.end.41
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$69, %edx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movl	%edx, -88(%rbp)         # 4-byte Spill
	je	.LBB1_27
	jmp	.LBB1_43
.LBB1_43:                               # %while.end.41
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$71, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_27
	jmp	.LBB1_44
.LBB1_44:                               # %while.end.41
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$88, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB1_23
	jmp	.LBB1_45
.LBB1_45:                               # %while.end.41
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	addl	$-99, %eax
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jb	.LBB1_23
	jmp	.LBB1_46
.LBB1_46:                               # %while.end.41
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	addl	$-101, %eax
	subl	$3, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jb	.LBB1_27
	jmp	.LBB1_47
.LBB1_47:                               # %while.end.41
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$105, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB1_23
	jmp	.LBB1_48
.LBB1_48:                               # %while.end.41
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$110, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB1_35
	jmp	.LBB1_49
.LBB1_49:                               # %while.end.41
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$111, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB1_23
	jmp	.LBB1_50
.LBB1_50:                               # %while.end.41
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$112, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB1_35
	jmp	.LBB1_51
.LBB1_51:                               # %while.end.41
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$115, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB1_31
	jmp	.LBB1_52
.LBB1_52:                               # %while.end.41
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$117, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB1_23
	jmp	.LBB1_53
.LBB1_53:                               # %while.end.41
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$120, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jne	.LBB1_39
	jmp	.LBB1_23
.LBB1_23:                               # %sw.bb
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	ja	.LBB1_25
# BB#24:                                # %vaarg.in_reg.46
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-148(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-144(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	jmp	.LBB1_26
.LBB1_25:                               # %vaarg.in_mem.48
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -160(%rbp)        # 8-byte Spill
.LBB1_26:                               # %vaarg.end.52
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB1_39
.LBB1_27:                               # %sw.bb.54
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movl	4(%rax), %edx
	cmpl	$160, %edx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movl	%edx, -188(%rbp)        # 4-byte Spill
	ja	.LBB1_29
# BB#28:                                # %vaarg.in_reg.55
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-176(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$16, %eax
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movl	%eax, (%rsi)
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jmp	.LBB1_30
.LBB1_29:                               # %vaarg.in_mem.57
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -200(%rbp)        # 8-byte Spill
.LBB1_30:                               # %vaarg.end.61
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB1_39
.LBB1_31:                               # %sw.bb.63
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	ja	.LBB1_33
# BB#32:                                # %vaarg.in_reg.67
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-220(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-216(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	jmp	.LBB1_34
.LBB1_33:                               # %vaarg.in_mem.69
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -232(%rbp)        # 8-byte Spill
.LBB1_34:                               # %vaarg.end.73
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rdi
	callq	strlen
	movslq	-28(%rbp), %rdi
	addq	%rax, %rdi
	movl	%edi, %ecx
	movl	%ecx, -28(%rbp)
	jmp	.LBB1_39
.LBB1_35:                               # %sw.bb.78
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	ja	.LBB1_37
# BB#36:                                # %vaarg.in_reg.82
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-244(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-240(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	jmp	.LBB1_38
.LBB1_37:                               # %vaarg.in_mem.84
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -256(%rbp)        # 8-byte Spill
.LBB1_38:                               # %vaarg.end.88
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB1_39:                               # %sw.epilog
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_40
.LBB1_40:                               # %if.end.90
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_41
.LBB1_41:                               # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB1_1
.LBB1_42:                               # %for.end
	movl	-28(%rbp), %eax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end1:
	.size	int_printflen, .Lfunc_end1-int_printflen
	.cfi_endproc

	.globl	printflen
	.align	16, 0x90
	.type	printflen,@function
printflen:                              # @printflen
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
	subq	$400, %rsp              # imm = 0x190
	testb	%al, %al
	movaps	%xmm7, -240(%rbp)       # 16-byte Spill
	movaps	%xmm6, -256(%rbp)       # 16-byte Spill
	movaps	%xmm5, -272(%rbp)       # 16-byte Spill
	movaps	%xmm4, -288(%rbp)       # 16-byte Spill
	movaps	%xmm3, -304(%rbp)       # 16-byte Spill
	movaps	%xmm2, -320(%rbp)       # 16-byte Spill
	movaps	%xmm1, -336(%rbp)       # 16-byte Spill
	movaps	%xmm0, -352(%rbp)       # 16-byte Spill
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%r9, -368(%rbp)         # 8-byte Spill
	movq	%r8, -376(%rbp)         # 8-byte Spill
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	movq	%rsi, -400(%rbp)        # 8-byte Spill
	je	.LBB2_2
# BB#1:                                 # %entry
	movaps	-352(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -176(%rbp)
	movaps	-336(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -160(%rbp)
	movaps	-320(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -144(%rbp)
	movaps	-304(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -128(%rbp)
	movaps	-288(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -112(%rbp)
	movaps	-272(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -96(%rbp)
	movaps	-256(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -80(%rbp)
	movaps	-240(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -64(%rbp)
.LBB2_2:                                # %entry
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, -184(%rbp)
	movq	-376(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -192(%rbp)
	movq	-384(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -200(%rbp)
	movq	-392(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -208(%rbp)
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -216(%rbp)
	movq	-360(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-224(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	vprintflen
	movl	%eax, -36(%rbp)
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end2:
	.size	printflen, .Lfunc_end2-printflen
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-+ #0"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"hlL"
	.size	.L.str.1, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
