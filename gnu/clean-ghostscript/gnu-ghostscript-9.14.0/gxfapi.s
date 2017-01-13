	.text
	.file	"gxfapi.bc"
	.globl	gs_fapi_get_metrics_count
	.align	16, 0x90
	.type	gs_fapi_get_metrics_count,@function
gs_fapi_get_metrics_count:              # @gs_fapi_get_metrics_count
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	cmpl	$0, 48(%rdi)
	jne	.LBB0_3
# BB#1:                                 # %land.lhs.true
	cmpl	$0, 52(%rdi)
	je	.LBB0_3
# BB#2:                                 # %if.then
	movq	160(%rdi), %rax
	movl	712(%rax), %eax
.LBB0_3:                                # %return
	retq
.Lfunc_end0:
	.size	gs_fapi_get_metrics_count, .Lfunc_end0-gs_fapi_get_metrics_count
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
.LCPI1_1:
	.quad	4652007308841189376     # double 1000
.LCPI1_2:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gs_fapi_prepare_font
	.align	16, 0x90
	.type	gs_fapi_prepare_font,@function
gs_fapi_prepare_font:                   # @gs_fapi_prepare_font
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
	subq	$168, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 224
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
	movq	%r9, 40(%rsp)           # 8-byte Spill
	movq	%r8, 32(%rsp)           # 8-byte Spill
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movl	%edx, %ebx
	movq	%rsi, %r12
	movq	%rdi, %rbp
	movq	16(%rbp), %r14
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	movq	$0, 112(%rsp)
	movl	$1, 112(%rsp)
	movl	$1, 116(%rsp)
	movl	$1, 120(%rsp)
	movl	16(%r12), %r15d
	movl	$1, %r13d
	movb	%r15b, %cl
	shll	%cl, %r13d
	movss	80(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	84(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm2
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB1_2
# BB#1:                                 # %call.sqrt
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB1_2:                                # %entry.split
	movsd	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
	maxsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%r13d, %xmm1
	mulsd	%xmm0, %xmm1
	addsd	.LCPI1_2(%rip), %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 92(%rsp)
	movl	%eax, 80(%rsp)
	movl	$72, %eax
	movb	%r15b, %cl
	shll	%cl, %eax
	movl	%eax, 104(%rsp)
	movl	%eax, 108(%rsp)
	movl	%ebx, 124(%r12)
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	%rax, 104(%r12)
	movl	128(%rbp), %ecx
	decl	%ecx
	cmpl	$9, %ecx
	sbbb	%dl, %dl
	movl	$259, %eax              # imm = 0x103
	shrl	%cl, %eax
	andl	$1, %eax
	movb	%al, %bl
	andb	%dl, %bl
	movzbl	%bl, %edx
	movl	%edx, 128(%r12)
	cmpl	$0, 148(%rbp)
	setne	%dl
	movzbl	%dl, %edx
	movl	%edx, 144(%r12)
	movq	%r14, 96(%r12)
	movq	8(%r12), %rdx
	movq	%rdx, 232(%r12)
	movq	%rbp, 240(%r12)
	movq	%rbp, 248(%r12)
	movq	432(%rbp), %rdx
	movq	%rdx, 80(%r12)
	movq	32(%rsp), %rsi          # 8-byte Reload
	testq	%rsi, %rsi
	movq	%r14, %r13
	movq	%rbp, %r14
	je	.LBB1_4
# BB#3:                                 # %if.then.44
	movq	(%rsi), %rdx
	movq	%rdx, 112(%r12)
	movl	8(%rsi), %edx
	jmp	.LBB1_5
.LBB1_4:                                # %if.else
	movq	$0, 112(%r12)
	xorl	%edx, %edx
.LBB1_5:                                # %if.end.53
	leaq	80(%r12), %r15
	movl	%edx, 120(%r12)
	movl	128(%r14), %edx
	addl	$-9, %edx
	cmpl	$3, %edx
	sbbl	%esi, %esi
	andl	$1, %esi
	movl	%esi, 132(%r12)
	cmpl	$0, 152(%r14)
	setne	%bl
	movzbl	%bl, %esi
	movl	%esi, 136(%r12)
	cmpl	$0, 140(%r12)
	jne	.LBB1_10
# BB#6:                                 # %if.then.73
	testw	%ax, %ax
	setne	%bl
	cmpl	$9, %ecx
	sbbb	%cl, %cl
	cmpl	$2, %edx
	seta	%dl
	xorl	%eax, %eax
	testb	%bl, %cl
	jne	.LBB1_9
# BB#7:                                 # %if.then.73
	testb	%dl, %dl
	jne	.LBB1_9
# BB#8:                                 # %if.then.i
	movl	712(%r14), %eax
.LBB1_9:                                # %gs_fapi_get_metrics_count.exit
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 140(%r12)
.LBB1_10:                               # %if.end.80
	leaq	80(%rsp), %rdx
	movl	$-3, %r8d
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	40(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rcx
	callq	*448(%r12)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	je	.LBB1_14
# BB#11:                                # %if.end.i
	movl	$49, %edi
	callq	gs_debug_c
	testl	%eax, %eax
	je	.LBB1_13
# BB#12:                                # %if.then.1.i
	callq	gs_program_name
	movq	%rax, %r14
	callq	gs_revision_number
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	(%r12), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	%ebp, %ecx
	callq	errprintf
.LBB1_13:                               # %if.end.5.i
	testl	%ebp, %ebp
	movl	$-10, %r15d
	cmovsl	%ebp, %r15d
	jmp	.LBB1_69
.LBB1_14:                               # %if.end.87
	movq	%r13, 16(%rsp)          # 8-byte Spill
	movq	%rbx, %r13
	movq	(%r15), %rax
	movq	%r15, 32(%rsp)          # 8-byte Spill
	movq	%rax, 432(%r14)
	xorl	%r15d, %r15d
	testq	%rax, %rax
	je	.LBB1_22
# BB#15:                                # %if.then.95
	leaq	144(%rsp), %rdx
	leaq	136(%rsp), %rcx
	movq	%r12, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	*464(%r12)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	je	.LBB1_21
# BB#16:                                # %if.end.i.169
	movl	$49, %edi
	callq	gs_debug_c
	testl	%eax, %eax
	je	.LBB1_18
# BB#17:                                # %if.then.1.i.175
	callq	gs_program_name
	movq	%rax, %r15
	callq	gs_revision_number
	movq	16(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	(%r12), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ebp, %ecx
	callq	errprintf
.LBB1_18:                               # %if.end.5.i.178
	testl	%ebp, %ebp
	movl	$-10, %r15d
	cmovsl	%ebp, %r15d
	movq	432(%r14), %rsi
	movq	%r12, %rdi
	callq	*560(%r12)
	movq	$0, 24(%r12)
	movq	80(%r12), %rax
	cmpq	432(%r14), %rax
	jne	.LBB1_20
# BB#19:                                # %if.then.i.186
	movq	$0, 80(%r12)
.LBB1_20:                               # %gs_fapi_release_typeface.exit188
	movq	$0, 432(%r14)
	jmp	.LBB1_69
.LBB1_21:                               # %if.end.104
	movq	144(%rsp), %rax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	136(%rsp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 376(%r14)
	shrq	$32, %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	140(%rsp), %xmm2
	divsd	%xmm2, %xmm0
	movsd	%xmm0, 384(%r14)
	movq	152(%rsp), %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 392(%r14)
	shrq	$32, %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	divsd	%xmm2, %xmm0
	movsd	%xmm0, 400(%r14)
	movl	$1, %r15d
.LBB1_22:                               # %if.end.132
	testq	%r13, %r13
	je	.LBB1_30
# BB#23:                                # %land.lhs.true
	cmpq	$0, 432(%r14)
	je	.LBB1_30
# BB#24:                                # %if.then.138
	movq	224(%rsp), %rdx
	movq	%r12, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	*456(%r12)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	je	.LBB1_30
# BB#25:                                # %if.end.i.192
	movl	$49, %edi
	callq	gs_debug_c
	testl	%eax, %eax
	je	.LBB1_27
# BB#26:                                # %if.then.1.i.198
	callq	gs_program_name
	movq	%rax, %r15
	callq	gs_revision_number
	movq	16(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	(%r12), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ebp, %ecx
	callq	errprintf
.LBB1_27:                               # %if.end.5.i.201
	testl	%ebp, %ebp
	movl	$-10, %r15d
	cmovsl	%ebp, %r15d
	movq	432(%r14), %rsi
	movq	%r12, %rdi
	callq	*560(%r12)
	movq	$0, 24(%r12)
	movq	80(%r12), %rax
	cmpq	432(%r14), %rax
	jne	.LBB1_29
# BB#28:                                # %if.then.i.209
	movq	$0, 80(%r12)
.LBB1_29:                               # %gs_fapi_release_typeface.exit211
	movq	$0, 432(%r14)
	jmp	.LBB1_69
.LBB1_30:                               # %if.end.147
	cmpq	$0, 48(%rsp)            # 8-byte Folded Reload
	jne	.LBB1_61
# BB#31:                                # %land.lhs.true.150
	cmpl	$0, 128(%r12)
	je	.LBB1_61
# BB#32:                                # %land.lhs.true.154
	cmpl	$0, 132(%r12)
	je	.LBB1_61
# BB#33:                                # %if.then.158
	movq	%r14, 8(%rsp)           # 8-byte Spill
	movq	512(%r14), %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movslq	520(%r14), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
	testq	%rax, %rax
	movl	$1, 128(%r12)
	movl	$0, 144(%r12)
	movq	16(%rsp), %r13          # 8-byte Reload
	movq	%r13, 96(%r12)
	movq	8(%r12), %rax
	movq	%rax, 232(%r12)
	jle	.LBB1_47
# BB#34:                                # %for.body.lr.ph
	movq	8(%rsp), %rax           # 8-byte Reload
	leaq	376(%rax), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
	movq	32(%rsp), %r14          # 8-byte Reload
.LBB1_35:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r13, 16(%rsp)          # 8-byte Spill
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	(%rax,%rbx,8), %rbp
	movq	24(%rsp), %rax          # 8-byte Reload
	movupd	(%rax), %xmm0
	movupd	16(%rax), %xmm1
	movupd	%xmm1, 392(%rbp)
	movupd	%xmm0, 376(%rbp)
	movq	%rbp, 240(%r12)
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	424(%rax), %rax
	movq	%rax, 424(%rbp)
	movq	%rbp, 248(%r12)
	movq	432(%rbp), %rax
	movq	%rax, 80(%r12)
	movl	$1, 132(%r12)
	cmpl	$0, 152(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 136(%r12)
	cmpl	$0, 140(%r12)
	jne	.LBB1_39
# BB#36:                                # %if.then.193
                                        #   in Loop: Header=BB1_35 Depth=1
	xorl	%eax, %eax
	cmpl	$0, 128(%r12)
	jne	.LBB1_38
# BB#37:                                # %if.then.i.219
                                        #   in Loop: Header=BB1_35 Depth=1
	movl	712(%rbp), %eax
.LBB1_38:                               # %gs_fapi_get_metrics_count.exit221
                                        #   in Loop: Header=BB1_35 Depth=1
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 140(%r12)
.LBB1_39:                               # %if.end.200
                                        #   in Loop: Header=BB1_35 Depth=1
	movl	$0, 124(%r12)
	xorl	%ecx, %ecx
	movq	%r12, %rdi
	movq	%r14, %rsi
	leaq	80(%rsp), %rdx
	movl	%ebx, %r8d
	callq	*448(%r12)
	movl	%eax, %r13d
	testl	%r13d, %r13d
	jne	.LBB1_40
# BB#43:                                # %if.end.210
                                        #   in Loop: Header=BB1_35 Depth=1
	movq	80(%r12), %rax
	movq	%rax, 432(%rbp)
	movq	%r12, %rdi
	movq	%r14, %rsi
	leaq	64(%rsp), %rdx
	leaq	56(%rsp), %rcx
	callq	*464(%r12)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	movq	16(%rsp), %r13          # 8-byte Reload
	jne	.LBB1_45
# BB#44:                                # %gs_fapi_renderer_retcode.exit251.thread
                                        #   in Loop: Header=BB1_35 Depth=1
	incq	%rbx
	cmpq	48(%rsp), %rbx          # 8-byte Folded Reload
	jl	.LBB1_35
	jmp	.LBB1_47
.LBB1_61:                               # %if.end.264
	leaq	80(%rsp), %rdx
	movl	$-4, %r8d
	movq	%r12, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	%r13, %rcx
	callq	*448(%r12)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	je	.LBB1_67
# BB#62:                                # %if.end.i.286
	movl	$49, %edi
	callq	gs_debug_c
	testl	%eax, %eax
	movq	16(%rsp), %rbx          # 8-byte Reload
	je	.LBB1_64
# BB#63:                                # %if.then.1.i.292
	callq	gs_program_name
	movq	%rax, %r15
	callq	gs_revision_number
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	(%r12), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ebp, %ecx
	callq	errprintf
.LBB1_64:                               # %if.end.5.i.295
	testl	%ebp, %ebp
	movl	$-10, %r15d
	cmovsl	%ebp, %r15d
	movq	432(%r14), %rsi
	movq	%r12, %rdi
	callq	*560(%r12)
	movq	$0, 24(%r12)
	movq	80(%r12), %rax
	cmpq	432(%r14), %rax
	jne	.LBB1_66
# BB#65:                                # %if.then.i.161
	movq	$0, 80(%r12)
.LBB1_66:                               # %gs_fapi_release_typeface.exit
	movq	$0, 432(%r14)
	jmp	.LBB1_69
.LBB1_67:                               # %if.end.273
	leaq	40(%r14), %rdi
	movl	$notify_remove_font, %esi
	movq	%r14, %rdx
	callq	gs_notify_register
	testl	%eax, %eax
	movq	16(%rsp), %rbp          # 8-byte Reload
	jns	.LBB1_69
# BB#68:                                # %if.then.277
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movl	$.L.str, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	errprintf
	jmp	.LBB1_69
.LBB1_40:                               # %if.end.i.225
	movl	$49, %edi
	callq	gs_debug_c
	testl	%eax, %eax
	je	.LBB1_42
# BB#41:                                # %if.then.1.i.231
	callq	gs_program_name
	movq	%rax, %r14
	callq	gs_revision_number
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	(%r12), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%r13d, %ecx
	callq	errprintf
.LBB1_42:                               # %for.end.critedge
	movq	16(%rsp), %r13          # 8-byte Reload
	jmp	.LBB1_47
.LBB1_45:                               # %if.end.i.240
	movl	$49, %edi
	callq	gs_debug_c
	testl	%eax, %eax
	je	.LBB1_47
# BB#46:                                # %if.then.1.i.246
	callq	gs_program_name
	movq	%rax, %r14
	callq	gs_revision_number
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	(%r12), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	%ebp, %ecx
	callq	errprintf
.LBB1_47:                               # %for.end
	movq	48(%rsp), %rax          # 8-byte Reload
	cmpl	%eax, %ebx
	jne	.LBB1_51
# BB#48:                                # %if.then.228
	leaq	80(%rsp), %rdx
	xorl	%ecx, %ecx
	movl	$-4, %r8d
	movq	%r12, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	*448(%r12)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	je	.LBB1_69
# BB#49:                                # %if.end.i.255
	movl	$49, %edi
	callq	gs_debug_c
	testl	%eax, %eax
	je	.LBB1_51
# BB#50:                                # %if.then.1.i.261
	callq	gs_program_name
	movq	%rax, %r15
	callq	gs_revision_number
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	(%r12), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	%ebp, %ecx
	callq	errprintf
.LBB1_51:                               # %for.cond.238.preheader
	movq	48(%rsp), %rbx          # 8-byte Reload
	testl	%ebx, %ebx
	movq	8(%rsp), %r14           # 8-byte Reload
	movq	40(%rsp), %rbp          # 8-byte Reload
	jle	.LBB1_57
	.align	16, 0x90
.LBB1_52:                               # %for.body.241
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbp), %r15
	movq	432(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB1_56
# BB#53:                                # %if.then.248
                                        #   in Loop: Header=BB1_52 Depth=1
	movq	%r12, %rdi
	callq	*560(%r12)
	movq	$0, 24(%r12)
	movq	80(%r12), %rax
	cmpq	432(%r15), %rax
	jne	.LBB1_55
# BB#54:                                # %if.then.i.272
                                        #   in Loop: Header=BB1_52 Depth=1
	movq	$0, 80(%r12)
.LBB1_55:                               # %gs_fapi_release_typeface.exit274
                                        #   in Loop: Header=BB1_52 Depth=1
	movq	$0, 432(%r15)
.LBB1_56:                               # %if.end.250
                                        #   in Loop: Header=BB1_52 Depth=1
	addq	$8, %rbp
	decl	%ebx
	jne	.LBB1_52
.LBB1_57:                               # %for.end.253
	movq	432(%r14), %rsi
	movl	$-10, %r15d
	testq	%rsi, %rsi
	je	.LBB1_69
# BB#58:                                # %if.then.257
	movq	%r12, %rdi
	callq	*560(%r12)
	movq	$0, 24(%r12)
	movq	80(%r12), %rax
	cmpq	432(%r14), %rax
	jne	.LBB1_60
# BB#59:                                # %if.then.i.280
	movq	$0, 80(%r12)
.LBB1_60:                               # %gs_fapi_release_typeface.exit282
	movq	$0, 432(%r14)
.LBB1_69:                               # %cleanup.282
	movl	%r15d, %eax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gs_fapi_prepare_font, .Lfunc_end1-gs_fapi_prepare_font
	.cfi_endproc

	.align	16, 0x90
	.type	notify_remove_font,@function
notify_remove_font:                     # @notify_remove_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp15:
	.cfi_def_cfa_offset 32
.Ltmp16:
	.cfi_offset %rbx, -24
.Ltmp17:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	testq	%rsi, %rsi
	jne	.LBB2_5
# BB#1:                                 # %if.then
	movq	432(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_5
# BB#2:                                 # %if.then.2
	movq	424(%rbx), %r14
	movq	%r14, %rdi
	callq	*560(%r14)
	movq	$0, 24(%r14)
	movq	80(%r14), %rax
	cmpq	432(%rbx), %rax
	jne	.LBB2_4
# BB#3:                                 # %if.then.i
	movq	$0, 80(%r14)
.LBB2_4:                                # %gs_fapi_release_typeface.exit
	movq	$0, 432(%rbx)
.LBB2_5:                                # %if.end.4
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end2:
	.size	notify_remove_font, .Lfunc_end2-notify_remove_font
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
.LCPI3_1:
	.quad	4589168020290535424     # double 0.0625
.LCPI3_2:
	.quad	4602678819172646912     # double 0.5
.LCPI3_3:
	.quad	4643211215818981376     # double 256
	.text
	.globl	gs_fapi_finish_render
	.align	16, 0x90
	.type	gs_fapi_finish_render,@function
gs_fapi_finish_render:                  # @gs_fapi_finish_render
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
	subq	$856, %rsp              # imm = 0x358
.Ltmp24:
	.cfi_def_cfa_offset 912
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
	movq	%rcx, %r15
	movq	%rdx, %rbx
	movq	%rdi, %r12
	movl	$-21, %r13d
	testq	%rbx, %rbx
	je	.LBB3_183
# BB#1:                                 # %if.end
	movq	%rsi, %r14
	movq	16(%r12), %rbp
	movq	104(%rbx), %rsi
	movq	144(%rbx), %rdi
	callq	*128(%rdi)
	movl	$st_gs_state, %ecx
	cmpq	%rcx, %rax
	je	.LBB3_4
# BB#2:                                 # %if.then.4
	movq	144(%rbx), %rdi
	movq	%rbx, %rsi
	callq	*128(%rdi)
	movl	$st_gs_show_enum, %ecx
	cmpq	%rcx, %rax
	jne	.LBB3_183
# BB#3:                                 # %if.then.11
	movq	%rbp, 192(%rsp)         # 8-byte Spill
	leaq	456(%rbx), %rax
	jmp	.LBB3_5
.LBB3_4:                                # %if.else.14
	movq	%rbp, 192(%rsp)         # 8-byte Spill
	leaq	104(%rbx), %rax
.LBB3_5:                                # %if.end.16
	movq	(%rax), %r13
	movq	1872(%r13), %rax
	cmpl	$0, 1852(%r14)
	movq	%rbx, %rbp
	je	.LBB3_9
# BB#6:                                 # %land.lhs.true
	testb	$2, 1(%rbp)
	jne	.LBB3_9
# BB#7:                                 # %if.then.18
	movq	1680(%r13), %rcx
	cmpl	$0, 152(%r12)
	sete	%al
	movzbl	%al, %r8d
	movq	192(%rsp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	outline_char
	movq	%r13, %rcx
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB3_183
# BB#8:                                 # %if.end.23
	movq	1856(%rcx), %rax
	movq	1680(%rax), %rdi
	movq	1680(%rcx), %rsi
	movl	1852(%rcx), %edx
	callq	gx_path_add_char_path
	movl	%eax, %r13d
	jmp	.LBB3_83
.LBB3_9:                                # %if.else.31
	movq	%rax, 176(%rsp)         # 8-byte Spill
	movq	%r14, 152(%rsp)         # 8-byte Spill
	leaq	200(%rsp), %rbx
	xorl	%esi, %esi
	movl	$48, %edx
	movq	%rbx, %rdi
	callq	memset
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*528(%r15)
	movl	$512, %eax              # imm = 0x200
	andl	(%rbp), %eax
	movq	%rbp, 184(%rsp)         # 8-byte Spill
	jne	.LBB3_19
# BB#10:                                # %land.lhs.true.39
	cmpl	$0, 404(%r15)
	je	.LBB3_19
# BB#11:                                # %if.then.41
	movq	1856(%r13), %rbp
	leaq	256(%rsp), %rsi
	movq	%r13, %rdi
	callq	gs_currentpoint
	movq	%r13, %rbx
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB3_183
# BB#12:                                # %if.end.47
	movq	1680(%rbx), %rcx
	cmpl	$0, 152(%r12)
	sete	%al
	movzbl	%al, %r8d
	movq	192(%rsp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	movq	184(%rsp), %rdx         # 8-byte Reload
	callq	outline_char
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB3_183
# BB#13:                                # %if.end.56
	movsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%rbp, %rdi
	callq	gs_char_flatness
	movq	%rbx, %rdi
	callq	gs_imager_setflat
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB3_183
# BB#14:                                # %if.end.61
	cmpl	$0, 152(%r12)
	je	.LBB3_16
# BB#15:                                # %if.then.64
	movq	%rbx, %rdi
	callq	gs_currentlinewidth
	movss	%xmm0, 192(%rsp)        # 4-byte Spill
	movss	156(%r12), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	gs_setlinewidth
	movq	%rbx, %rdi
	callq	gs_stroke
	movl	%eax, %r13d
	movss	192(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	callq	gs_setlinewidth
	testl	%r13d, %r13d
	jns	.LBB3_18
	jmp	.LBB3_183
.LBB3_19:                               # %if.else.99
	movl	220(%rsp), %r15d
	movq	224(%rsp), %r14
	cmpl	$3, 1848(%r13)
	jne	.LBB3_44
# BB#20:                                # %if.then.103
	movq	208(%rsp), %rsi
	movl	%esi, %edx
	testl	%edx, %edx
	je	.LBB3_84
# BB#21:                                # %if.then.106
	movq	%r14, %rax
	shrq	$32, %rax
	movl	156(%r13), %ecx
	sarl	$4, %ecx
	addl	%r15d, %ecx
	cmpl	$-9, %ecx
	movq	%r13, %rdi
	jg	.LBB3_23
# BB#22:                                # %cond.true
	movl	$-9, %r15d
	subl	%ecx, %r15d
	sarl	$4, %r15d
	notl	%r15d
	jmp	.LBB3_24
.LBB3_44:                               # %if.else.220
	testl	%eax, %eax
	jne	.LBB3_84
# BB#45:                                # %if.then.226
	movq	184(%rsp), %rax         # 8-byte Reload
	movq	104(%rax), %rbx
	negl	%r14d
	movq	424(%r12), %rbp
	movq	200(%rsp), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movslq	216(%rsp), %r12
	movq	1760(%rbx), %rax
	movl	$gx_dc_type_data_pure, %ecx
	cmpq	%rcx, (%rax)
	jne	.LBB3_65
# BB#46:                                # %land.lhs.true.i
	movl	$563, %eax              # imm = 0x233
	andl	212(%rbx), %eax
	cmpl	$48, %eax
	jne	.LBB3_65
# BB#47:                                # %land.lhs.true.4.i
	movss	268(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB3_65
	jp	.LBB3_65
# BB#48:                                # %if.then.i.121
	movq	184(%rsp), %rbp         # 8-byte Reload
	movq	88(%rbp), %rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	1688(%rax), %rax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movq	128(%rbp), %r13
	movq	208(%rsp), %rsi
	leal	63(%rsi), %edx
	sarl	$6, %edx
	shll	$3, %edx
	cmpl	%r12d, %edx
	je	.LBB3_60
# BB#49:                                # %if.then.9.i
	movq	%r13, 136(%rsp)         # 8-byte Spill
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	shrq	$32, %rsi
	movq	144(%rbp), %rdi
	imull	%edx, %esi
	movl	%edx, %ebp
	movl	$.L.str.12, %edx
	callq	*64(%rdi)
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movl	$-25, %r13d
	testq	%rax, %rax
	je	.LBB3_183
# BB#50:                                # %if.end.i.125
	movl	%r15d, 176(%rsp)        # 4-byte Spill
	cmpl	%ebp, %r12d
	movl	%r12d, %eax
	cmovgel	%ebp, %eax
	movl	%ebp, %ecx
	subl	%eax, %ecx
	movl	212(%rsp), %r15d
	movq	200(%rsp), %rbx
	movl	%ebp, %edx
	jle	.LBB3_51
# BB#53:                                # %while.cond.preheader.i
	testl	%r15d, %r15d
	jle	.LBB3_52
# BB#54:                                # %while.body.lr.ph.i
	movslq	%eax, %rbp
	movslq	%ecx, %rax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movslq	%edx, %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movl	%r12d, %eax
	notl	%eax
	movl	%edx, %ecx
	movl	%edx, 132(%rsp)         # 4-byte Spill
	notl	%ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	notl	%ecx
	movslq	%ecx, %rax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	incl	%r15d
	movq	104(%rsp), %r13         # 8-byte Reload
.LBB3_55:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	memcpy
	movq	160(%rsp), %rax         # 8-byte Reload
	leaq	(%r13,%rax), %rdi
	xorl	%esi, %esi
	movq	192(%rsp), %rdx         # 8-byte Reload
	callq	memset
	addq	%r12, %rbx
	addq	168(%rsp), %r13         # 8-byte Folded Reload
	decl	%r15d
	cmpl	$1, %r15d
	jg	.LBB3_55
	jmp	.LBB3_58
.LBB3_65:                               # %if.else.98.i
	movl	%r15d, 176(%rsp)        # 4-byte Spill
	movq	%r12, 192(%rsp)         # 8-byte Spill
	movq	184(%rsp), %rax         # 8-byte Reload
	movq	144(%rax), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.13, %esi
	callq	gs_image_enum_alloc
	movq	%rax, 144(%rsp)         # 8-byte Spill
	testq	%rax, %rax
	je	.LBB3_182
# BB#66:                                # %if.end.106.i
	movss	148(%rbx), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movss	152(%rbx), %xmm3        # xmm3 = mem[0],zero,zero,zero
	movq	208(%rsp), %r13
	movq	%r13, %r15
	shrq	$32, %r15
	movss	268(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorl	%ecx, %ecx
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	movl	$0, %eax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movl	$0, %eax
	jne	.LBB3_67
	jnp	.LBB3_70
.LBB3_67:                               # %if.then.130.i
	movss	%xmm2, 168(%rsp)        # 4-byte Spill
	movss	%xmm3, 184(%rsp)        # 4-byte Spill
	leaq	(%r15,%r15), %rax
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm1
	mulss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI3_2(%rip), %xmm0
	cvttsd2si	%xmm0, %rcx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %rdi
	leal	2(%rcx), %esi
	leal	63(%r13,%rcx), %ebp
	shrl	$3, %ebp
	andl	$536870904, %ebp        # imm = 0x1FFFFFF8
	movl	$.L.str.14, %ecx
	movl	%ebp, %edx
	callq	*88(%rdi)
	movq	%rax, 112(%rsp)         # 8-byte Spill
	testq	%rax, %rax
	je	.LBB3_182
# BB#68:                                # %if.end.145.i
	movq	152(%rsp), %r12         # 8-byte Reload
	movq	8(%r12), %rdi
	orl	$1, %ebp
	movl	$1, %esi
	movl	$.L.str.11, %ecx
	movl	%ebp, %edx
	callq	*88(%rdi)
	testq	%rax, %rax
	je	.LBB3_181
# BB#69:
	movq	136(%rsp), %rcx         # 8-byte Reload
	movss	184(%rsp), %xmm3        # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	movss	168(%rsp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
.LBB3_70:                               # %if.end.163.i
	movq	%rax, 88(%rsp)          # 8-byte Spill
	leaq	132(%rbx), %rax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	movl	176(%rsp), %eax         # 4-byte Reload
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	movsd	.LCPI3_1(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	movsd	.LCPI3_2(%rip), %xmm0   # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	movq	%rbx, %r12
	cvttsd2si	%xmm1, %ebx
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm3, %xmm1
	cvtsi2sdl	%r14d, %xmm3
	mulsd	%xmm2, %xmm3
	addsd	%xmm1, %xmm3
	addsd	%xmm0, %xmm3
	cvttsd2si	%xmm3, %ebp
	leaq	256(%rsp), %rdi
	movl	$1, %esi
	movl	$1, %edx
	movq	%rcx, %r14
	callq	gs_image_t_init_mask_adjust
	negl	%ebx
	cvtsi2sdl	%ebx, %xmm0
	movq	%r12, %rbx
	movl	%r14d, %eax
	subl	%ebp, %eax
	cvtsi2sdl	%eax, %xmm1
	leaq	264(%rsp), %rbp
	movq	%rbp, %rdi
	callq	gs_make_translation
	movq	184(%rsp), %rdi         # 8-byte Reload
	movq	%rbp, %rsi
	movq	%rbp, %rdx
	callq	gs_matrix_multiply
	leal	(%r13,%r14), %eax
	movl	%eax, 288(%rsp)
	leal	(%r14,%r15), %eax
	movl	%eax, 292(%rsp)
	movl	$0, 844(%rsp)
	xorl	%edx, %edx
	movq	144(%rsp), %rdi         # 8-byte Reload
	leaq	256(%rsp), %rsi
	movq	%rbx, %rcx
	callq	gs_image_init
	movl	%eax, %r12d
	testl	%r12d, %r12d
	jne	.LBB3_71
# BB#73:                                # %sw.bb.180.i
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	movq	208(%rsp), %r13
	testl	%r14d, %r14d
	movq	%r14, 136(%rsp)         # 8-byte Spill
	je	.LBB3_74
# BB#85:                                # %if.else.191.i
	movq	288(%rsp), %rdx
	movq	%rdx, %rax
	shrq	$32, %rax
	xorl	%r12d, %r12d
	testl	%eax, %eax
	jle	.LBB3_78
# BB#86:                                # %for.body.204.lr.ph.i
	shrq	$32, %r13
	leal	63(%rdx), %eax
	sarl	$6, %eax
	shll	$3, %eax
	movl	%eax, 168(%rsp)         # 4-byte Spill
	addl	$7, %edx
	sarl	$3, %edx
	movq	%rdx, 96(%rsp)          # 8-byte Spill
	leal	1(%r14), %r9d
	movl	%r9d, 128(%rsp)         # 4-byte Spill
	movl	%eax, %edi
	movl	%eax, %esi
	orl	$1, %edi
	movl	%edi, 84(%rsp)          # 4-byte Spill
	movl	%edx, %eax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leaq	7(%rax), %rdx
	shrq	$3, %rdx
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	leal	-4(%rdx), %edi
	shrl	$2, %edi
	leal	(,%rdi,4), %eax
	shlq	$5, %rdi
	negl	%eax
	leal	-4(%rdx,%rax), %eax
	movl	%eax, 184(%rsp)         # 4-byte Spill
	movq	%rdx, %rax
	movq	112(%rsp), %r15         # 8-byte Reload
	leaq	32(%r15,%rdi), %rdx
	movq	%rdx, 176(%rsp)         # 8-byte Spill
	addq	$32, %rdi
	movq	%rdi, 192(%rsp)         # 8-byte Spill
	xorl	%ebp, %ebp
	jmp	.LBB3_87
.LBB3_180:                              # %for.end.310.i.for.body.204.i_crit_edge
                                        #   in Loop: Header=BB3_87 Depth=1
	movq	%r13, %rax
	movl	%ebp, %esi
	movl	212(%rsp), %r13d
	movl	%ecx, %ebp
	movq	136(%rsp), %r14         # 8-byte Reload
	movl	%ebx, %r9d
.LBB3_87:                               # %for.body.204.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_94 Depth 2
                                        #     Child Loop BB3_92 Depth 2
                                        #       Child Loop BB3_104 Depth 3
                                        #         Child Loop BB3_105 Depth 4
                                        #     Child Loop BB3_118 Depth 2
                                        #     Child Loop BB3_124 Depth 2
                                        #       Child Loop BB3_127 Depth 3
                                        #       Child Loop BB3_139 Depth 3
                                        #       Child Loop BB3_144 Depth 3
                                        #       Child Loop BB3_146 Depth 3
                                        #     Child Loop BB3_152 Depth 2
                                        #       Child Loop BB3_153 Depth 3
                                        #         Child Loop BB3_149 Depth 4
                                        #         Child Loop BB3_178 Depth 4
                                        #         Child Loop BB3_167 Depth 4
                                        #         Child Loop BB3_172 Depth 4
                                        #         Child Loop BB3_179 Depth 4
	movl	%ebp, %r12d
	subl	%r14d, %r12d
	movl	$0, %ecx
	cmovbl	%ecx, %r12d
	leal	1(%rbp), %ecx
	movl	%ecx, 132(%rsp)         # 4-byte Spill
	cmpl	%r13d, %ecx
	movl	%r13d, %r14d
	cmovlel	%ecx, %r14d
	cmpl	%r13d, %ebp
	movl	%esi, %r10d
	movq	%rax, %r13
	jge	.LBB3_88
# BB#90:                                # %if.then.225.i
                                        #   in Loop: Header=BB3_87 Depth=1
	movslq	216(%rsp), %rdx
	movslq	%ebp, %rax
	imulq	%rdx, %rax
	movq	104(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rsi
	movq	88(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movq	%rbp, 160(%rsp)         # 8-byte Spill
	movl	%r10d, %ebp
	callq	memcpy
	movslq	216(%rsp), %rax
	leaq	(%rax,%rbx), %rdi
	movl	84(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, %edx
	subl	%eax, %edx
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	callq	memset
	movq	160(%rsp), %rax         # 8-byte Reload
	cltd
	idivl	128(%rsp)               # 4-byte Folded Reload
	incl	%edx
	imull	%ebp, %edx
	leaq	(%rdx,%r15), %rax
	movq	%rbx, %rdx
	movl	208(%rsp), %r8d
	movzbl	(%rdx), %r9d
	movq	136(%rsp), %rcx         # 8-byte Reload
	cmpl	%r8d, %ecx
	movl	%r8d, %r10d
	cmovbl	%ecx, %r10d
	movl	$128, %r15d
	testl	%r10d, %r10d
	movq	%rdx, %rsi
	movl	$0, %ebp
	movl	$128, %ecx
	movl	%r9d, %ebx
	movl	$0, %edi
	movl	$128, %r11d
	je	.LBB3_91
	.align	16, 0x90
.LBB3_94:                               # %for.body.i.i
                                        #   Parent Loop BB3_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%r11d, %ebx
	je	.LBB3_96
# BB#95:                                # %if.then.i.i
                                        #   in Loop: Header=BB3_94 Depth=2
	incl	%r13d
	jmp	.LBB3_97
	.align	16, 0x90
.LBB3_96:                               # %if.else.i.i
                                        #   in Loop: Header=BB3_94 Depth=2
	testl	%r13d, %r13d
	movl	%r11d, %ecx
	cmovel	%r13d, %ecx
	orl	%ecx, %r9d
.LBB3_97:                               # %if.end.6.i.i
                                        #   in Loop: Header=BB3_94 Depth=2
	shrl	%r11d
	jne	.LBB3_99
# BB#98:                                # %if.then.9.i.i
                                        #   in Loop: Header=BB3_94 Depth=2
	movb	%r9b, (%rax)
	incq	%rax
	movzbl	1(%rsi), %ebx
	incq	%rsi
	movl	$128, %r11d
	movl	%ebx, %r9d
.LBB3_99:                               # %for.inc.i.i
                                        #   in Loop: Header=BB3_94 Depth=2
	incl	%edi
	cmpl	%r10d, %edi
	jb	.LBB3_94
# BB#100:                               #   in Loop: Header=BB3_87 Depth=1
	movl	%r10d, %ebp
	movl	%r11d, %ecx
.LBB3_91:                               # %for.cond.15.preheader.i.i
                                        #   in Loop: Header=BB3_87 Depth=1
	cmpl	%r8d, %ebp
	movq	%rdx, %rdi
	movl	$128, %r11d
	jae	.LBB3_115
	.align	16, 0x90
.LBB3_92:                               # %for.body.18.i.i
                                        #   Parent Loop BB3_87 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_104 Depth 3
                                        #         Child Loop BB3_105 Depth 4
	testl	%ecx, %ebx
	je	.LBB3_101
# BB#93:                                # %if.then.21.i.i
                                        #   in Loop: Header=BB3_92 Depth=2
	incl	%r13d
	jmp	.LBB3_102
	.align	16, 0x90
.LBB3_101:                              # %if.else.23.i.i
                                        #   in Loop: Header=BB3_92 Depth=2
	testl	%r13d, %r13d
	movl	%ecx, %edx
	cmovel	%r13d, %edx
	orl	%edx, %r9d
.LBB3_102:                              # %if.end.28.i.i
                                        #   in Loop: Header=BB3_92 Depth=2
	movzbl	(%rdi), %edx
	andl	%r15d, %edx
	cmpl	$1, %edx
	adcl	$-1, %r13d
	shrl	%ecx
	jne	.LBB3_114
# BB#103:                               # %if.then.37.i.i
                                        #   in Loop: Header=BB3_92 Depth=2
	movb	%r9b, (%rax)
	leal	-1(%r15), %r9d
	movl	%r15d, %r10d
	negl	%r10d
	jmp	.LBB3_104
.LBB3_110:                              # %if.end.45.i.i
                                        #   in Loop: Header=BB3_104 Depth=3
	movb	$-1, (%rax)
	movzbl	(%rdi), %ecx
	andl	%r9d, %ecx
	movzbl	1(%rdi), %edx
	incq	%rdi
	andl	%r10d, %edx
	movzbl	byte_count_bits(%rdx,%rcx), %ecx
	addl	$8, %r13d
	subl	%ecx, %r13d
	addl	$8, %ebp
	.align	16, 0x90
.LBB3_104:                              # %on.outer.i.i
                                        #   Parent Loop BB3_87 Depth=1
                                        #     Parent Loop BB3_92 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_105 Depth 4
	incq	%rax
	movl	%r8d, %edx
	subl	%ebp, %edx
	jmp	.LBB3_105
	.align	16, 0x90
.LBB3_184:                              # %if.end.65.i.i
                                        #   in Loop: Header=BB3_105 Depth=4
	movb	$0, (%rax)
	incq	%rdi
	addl	$8, %ebp
	incq	%rax
	addl	$-8, %edx
.LBB3_105:                              # %on.i.i
                                        #   Parent Loop BB3_87 Depth=1
                                        #     Parent Loop BB3_92 Depth=2
                                        #       Parent Loop BB3_104 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	incq	%rsi
	movzbl	(%rsi), %ebx
	testl	%ebx, %ebx
	movl	$128, %ecx
	jne	.LBB3_106
# BB#111:                               # %sw.bb.59.i.i
                                        #   in Loop: Header=BB3_105 Depth=4
	xorl	%ebx, %ebx
	testl	%r13d, %r13d
	jne	.LBB3_113
# BB#112:                               # %sw.bb.59.i.i
                                        #   in Loop: Header=BB3_105 Depth=4
	cmpl	$9, %edx
	jae	.LBB3_184
	jmp	.LBB3_113
.LBB3_106:                              # %on.i.i
                                        #   in Loop: Header=BB3_104 Depth=3
	cmpl	$255, %ebx
	jne	.LBB3_107
# BB#108:                               # %sw.bb.i.i
                                        #   in Loop: Header=BB3_104 Depth=3
	movl	%r8d, %edx
	subl	%ebp, %edx
	movl	$255, %ebx
	cmpl	$9, %edx
	jae	.LBB3_110
# BB#109:                               #   in Loop: Header=BB3_92 Depth=2
	movl	$255, %r9d
	jmp	.LBB3_114
	.align	16, 0x90
.LBB3_113:                              #   in Loop: Header=BB3_92 Depth=2
	xorl	%r9d, %r9d
	jmp	.LBB3_114
.LBB3_107:                              #   in Loop: Header=BB3_92 Depth=2
	movl	%ebx, %r9d
	.align	16, 0x90
.LBB3_114:                              # %if.end.69.i.i
                                        #   in Loop: Header=BB3_92 Depth=2
	shrl	%r15d
	leaq	1(%rdi), %rdx
	testl	%r15d, %r15d
	cmoveq	%rdx, %rdi
	cmovel	%r11d, %r15d
	incl	%ebp
	cmpl	%r8d, %ebp
	jb	.LBB3_92
.LBB3_115:                              # %for.end.78.i.i
                                        #   in Loop: Header=BB3_87 Depth=1
	movq	136(%rsp), %rdx         # 8-byte Reload
	addl	%edx, %r8d
	cmpl	%r8d, %ebp
	jae	.LBB3_116
# BB#117:                               # %for.body.84.i.i.preheader
                                        #   in Loop: Header=BB3_87 Depth=1
	subl	%ebp, %r8d
	.align	16, 0x90
.LBB3_118:                              # %for.body.84.i.i
                                        #   Parent Loop BB3_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%r13d, %r13d
	movl	%ecx, %esi
	cmovel	%r13d, %esi
	orl	%r9d, %esi
	shrl	%ecx
	jne	.LBB3_120
# BB#119:                               # %if.then.92.i.i
                                        #   in Loop: Header=BB3_118 Depth=2
	movb	%sil, (%rax)
	incq	%rax
	movl	$128, %ecx
	xorl	%esi, %esi
.LBB3_120:                              # %if.end.95.i.i
                                        #   in Loop: Header=BB3_118 Depth=2
	movzbl	(%rdi), %edx
	andl	%r15d, %edx
	cmpl	$1, %edx
	adcl	$-1, %r13d
	shrl	%r15d
	leaq	1(%rdi), %rdx
	testl	%r15d, %r15d
	cmoveq	%rdx, %rdi
	cmovel	%r11d, %r15d
	decl	%r8d
	movl	%esi, %r9d
	jne	.LBB3_118
	jmp	.LBB3_121
.LBB3_116:                              #   in Loop: Header=BB3_87 Depth=1
	movl	%r9d, %esi
.LBB3_121:                              # %for.end.110.i.i
                                        #   in Loop: Header=BB3_87 Depth=1
	cmpl	$128, %ecx
	je	.LBB3_123
# BB#122:                               # %if.then.113.i.i
                                        #   in Loop: Header=BB3_87 Depth=1
	movb	%sil, (%rax)
.LBB3_123:                              # %for.cond.246.preheader.i
                                        #   in Loop: Header=BB3_87 Depth=1
	movl	$1, %r11d
	movq	160(%rsp), %r8          # 8-byte Reload
	testb	$1, %r8b
	movq	112(%rsp), %r15         # 8-byte Reload
	movl	168(%rsp), %r10d        # 4-byte Reload
	movl	128(%rsp), %r9d         # 4-byte Reload
	movq	120(%rsp), %r13         # 8-byte Reload
	je	.LBB3_88
	.align	16, 0x90
.LBB3_124:                              # %land.rhs.250.i
                                        #   Parent Loop BB3_87 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_127 Depth 3
                                        #       Child Loop BB3_139 Depth 3
                                        #       Child Loop BB3_144 Depth 3
                                        #       Child Loop BB3_146 Depth 3
	movl	%r8d, %eax
	subl	%r11d, %eax
	cmpl	%r12d, %eax
	jl	.LBB3_88
# BB#125:                               # %for.body.255.i
                                        #   in Loop: Header=BB3_124 Depth=2
	cltd
	idivl	%r9d
	incl	%edx
	imull	%r10d, %edx
	leaq	(%rdx,%r15), %rcx
	movl	%r11d, %edx
	sarl	%edx
	movl	%r8d, %eax
	subl	%edx, %eax
	cltd
	idivl	%r9d
	incl	%edx
	imull	%r10d, %edx
	leaq	(%rdx,%r15), %rdx
	cmpl	$3, %r13d
	movl	%r13d, %eax
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	jbe	.LBB3_126
	.align	16, 0x90
.LBB3_127:                              # %for.body.i.11.i
                                        #   Parent Loop BB3_87 Depth=1
                                        #     Parent Loop BB3_124 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rdi), %rbp
	orq	%rbp, (%rsi)
	movq	8(%rdi), %rbp
	orq	%rbp, 8(%rsi)
	movq	16(%rdi), %rbp
	orq	%rbp, 16(%rsi)
	movq	24(%rdi), %rbp
	orq	%rbp, 24(%rsi)
	addl	$-4, %eax
	addq	$32, %rdi
	addq	$32, %rsi
	cmpl	$3, %eax
	ja	.LBB3_127
# BB#128:                               # %for.cond.for.cond.15.preheader_crit_edge.i.i
                                        #   in Loop: Header=BB3_124 Depth=2
	movq	192(%rsp), %rax         # 8-byte Reload
	addq	%rax, %rcx
	addq	%rax, %rdx
	movl	184(%rsp), %eax         # 4-byte Reload
	jmp	.LBB3_129
.LBB3_126:                              #   in Loop: Header=BB3_124 Depth=2
	movl	%r13d, %eax
.LBB3_129:                              # %for.cond.15.preheader.i.8.i
                                        #   in Loop: Header=BB3_124 Depth=2
	testl	%eax, %eax
	je	.LBB3_147
# BB#130:                               # %for.body.16.i.i.preheader
                                        #   in Loop: Header=BB3_124 Depth=2
	movl	%r10d, %ebp
	leal	-1(%rax), %ebx
	leaq	1(%rbx), %r10
	movq	%r10, %rdi
	movabsq	$8589934588, %rsi       # imm = 0x1FFFFFFFC
	andq	%rsi, %rdi
	je	.LBB3_131
# BB#132:                               # %vector.memcheck246
                                        #   in Loop: Header=BB3_124 Depth=2
	leaq	(%rdx,%rbx,8), %rsi
	cmpq	%rsi, %rcx
	ja	.LBB3_135
# BB#133:                               # %vector.memcheck246
                                        #   in Loop: Header=BB3_124 Depth=2
	leaq	(%rcx,%rbx,8), %rsi
	cmpq	%rsi, %rdx
	ja	.LBB3_135
# BB#134:                               #   in Loop: Header=BB3_124 Depth=2
	xorl	%edi, %edi
	jmp	.LBB3_141
.LBB3_131:                              #   in Loop: Header=BB3_124 Depth=2
	xorl	%edi, %edi
	jmp	.LBB3_141
.LBB3_135:                              # %vector.body225.preheader
                                        #   in Loop: Header=BB3_124 Depth=2
	movq	%r15, %r13
	leaq	1(%rbx), %rsi
	movabsq	$8589934588, %rbp       # imm = 0x1FFFFFFFC
	andq	%rbp, %rsi
	addq	$-4, %rsi
	movq	%rsi, %rbp
	shrq	$2, %rbp
	btq	$2, %rsi
	movl	$0, %r15d
	jb	.LBB3_137
# BB#136:                               # %vector.body225.prol
                                        #   in Loop: Header=BB3_124 Depth=2
	movupd	(%rdx), %xmm0
	movupd	16(%rdx), %xmm1
	movupd	(%rcx), %xmm2
	movupd	16(%rcx), %xmm3
	orpd	%xmm0, %xmm2
	orpd	%xmm1, %xmm3
	movupd	%xmm2, (%rcx)
	movupd	%xmm3, 16(%rcx)
	movl	$4, %r15d
.LBB3_137:                              # %vector.body225.preheader.split
                                        #   in Loop: Header=BB3_124 Depth=2
	subl	%edi, %eax
	leaq	(%rdx,%rdi,8), %r9
	leaq	(%rcx,%rdi,8), %r8
	testq	%rbp, %rbp
	je	.LBB3_140
# BB#138:                               # %vector.body225.preheader.split.split
                                        #   in Loop: Header=BB3_124 Depth=2
	incq	%rbx
	movabsq	$8589934588, %rsi       # imm = 0x1FFFFFFFC
	andq	%rsi, %rbx
	subq	%r15, %rbx
	leaq	48(%rcx,%r15,8), %rsi
	leaq	48(%rdx,%r15,8), %rdx
	.align	16, 0x90
.LBB3_139:                              # %vector.body225
                                        #   Parent Loop BB3_87 Depth=1
                                        #     Parent Loop BB3_124 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	-48(%rdx), %xmm0
	movups	-32(%rdx), %xmm1
	movups	-48(%rsi), %xmm2
	movups	-32(%rsi), %xmm3
	orps	%xmm0, %xmm2
	orps	%xmm1, %xmm3
	movups	%xmm2, -48(%rsi)
	movups	%xmm3, -32(%rsi)
	movupd	-16(%rdx), %xmm0
	movupd	(%rdx), %xmm1
	movupd	-16(%rsi), %xmm2
	movupd	(%rsi), %xmm3
	orpd	%xmm0, %xmm2
	orpd	%xmm1, %xmm3
	movupd	%xmm2, -16(%rsi)
	movupd	%xmm3, (%rsi)
	addq	$64, %rsi
	addq	$64, %rdx
	addq	$-8, %rbx
	jne	.LBB3_139
.LBB3_140:                              #   in Loop: Header=BB3_124 Depth=2
	movq	%r9, %rdx
	movq	%r8, %rcx
	movq	%r13, %r15
	movl	168(%rsp), %ebp         # 4-byte Reload
	movl	128(%rsp), %r9d         # 4-byte Reload
	movq	120(%rsp), %r13         # 8-byte Reload
	movq	160(%rsp), %r8          # 8-byte Reload
.LBB3_141:                              # %middle.block226
                                        #   in Loop: Header=BB3_124 Depth=2
	cmpq	%rdi, %r10
	movl	%ebp, %r10d
	je	.LBB3_147
# BB#142:                               # %for.body.16.i.i.preheader291
                                        #   in Loop: Header=BB3_124 Depth=2
	leal	-1(%rax), %edi
	testb	$3, %al
	je	.LBB3_145
# BB#143:                               # %for.body.16.i.i.prol.preheader
                                        #   in Loop: Header=BB3_124 Depth=2
	movl	%eax, %ebp
	andl	$3, %ebp
	negl	%ebp
	.align	16, 0x90
.LBB3_144:                              # %for.body.16.i.i.prol
                                        #   Parent Loop BB3_87 Depth=1
                                        #     Parent Loop BB3_124 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rdx), %rsi
	orq	%rsi, (%rcx)
	addq	$8, %rdx
	addq	$8, %rcx
	decl	%eax
	incl	%ebp
	jne	.LBB3_144
.LBB3_145:                              # %for.body.16.i.i.preheader291.split
                                        #   in Loop: Header=BB3_124 Depth=2
	cmpl	$3, %edi
	jb	.LBB3_147
	.align	16, 0x90
.LBB3_146:                              # %for.body.16.i.i
                                        #   Parent Loop BB3_87 Depth=1
                                        #     Parent Loop BB3_124 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rdx), %rsi
	orq	%rsi, (%rcx)
	movq	8(%rdx), %rsi
	orq	%rsi, 8(%rcx)
	movq	16(%rdx), %rsi
	orq	%rsi, 16(%rcx)
	movq	24(%rdx), %rsi
	orq	%rsi, 24(%rcx)
	addq	$32, %rdx
	addq	$32, %rcx
	addl	$-4, %eax
	jne	.LBB3_146
	.align	16, 0x90
.LBB3_147:                              # %bits_merge.exit.i
                                        #   in Loop: Header=BB3_124 Depth=2
	leal	1(%r11,%r11), %r11d
	movl	%r11d, %eax
	andl	%r8d, %eax
	cmpl	%r11d, %eax
	je	.LBB3_124
.LBB3_88:                               # %for.cond.275.preheader.i
                                        #   in Loop: Header=BB3_87 Depth=1
	cmpl	%r12d, %r14d
	jle	.LBB3_175
# BB#89:                                #   in Loop: Header=BB3_87 Depth=1
	xorl	%r8d, %r8d
.LBB3_152:                              # %for.body.278.lr.ph.i
                                        #   Parent Loop BB3_87 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_153 Depth 3
                                        #         Child Loop BB3_149 Depth 4
                                        #         Child Loop BB3_178 Depth 4
                                        #         Child Loop BB3_167 Depth 4
                                        #         Child Loop BB3_172 Depth 4
                                        #         Child Loop BB3_179 Depth 4
	movl	%r8d, 160(%rsp)         # 4-byte Spill
	.align	16, 0x90
.LBB3_153:                              # %for.body.278.i
                                        #   Parent Loop BB3_87 Depth=1
                                        #     Parent Loop BB3_152 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_149 Depth 4
                                        #         Child Loop BB3_178 Depth 4
                                        #         Child Loop BB3_167 Depth 4
                                        #         Child Loop BB3_172 Depth 4
                                        #         Child Loop BB3_179 Depth 4
	decl	%r14d
	movl	$1, %eax
	testb	$1, %r14b
	movl	%r14d, %ecx
	je	.LBB3_150
	.align	16, 0x90
.LBB3_149:                              # %land.rhs.283.i
                                        #   Parent Loop BB3_87 Depth=1
                                        #     Parent Loop BB3_152 Depth=2
                                        #       Parent Loop BB3_153 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	%ecx, %r14d
	subl	%eax, %ecx
	cmpl	%r12d, %ecx
	jl	.LBB3_150
# BB#148:                               # %while.cond.279.i
                                        #   in Loop: Header=BB3_149 Depth=4
	addl	%eax, %eax
	movl	%ecx, %edx
	andl	%eax, %edx
	cmpl	%eax, %edx
	movl	%ecx, %r14d
	je	.LBB3_149
.LBB3_150:                              # %while.end.291.i
                                        #   in Loop: Header=BB3_153 Depth=3
	movl	%r14d, %eax
	cltd
	idivl	%r9d
	incl	%edx
	imull	%r10d, %edx
	leaq	(%r15,%rdx), %rsi
	testb	$1, %r8b
	je	.LBB3_151
# BB#154:                               # %if.else.301.i
                                        #   in Loop: Header=BB3_153 Depth=3
	cmpl	$4, %r13d
	jb	.LBB3_155
# BB#177:                               # %for.body.i.48.i.preheader
                                        #   in Loop: Header=BB3_153 Depth=3
	movl	%r13d, %eax
	movq	%rsi, %rcx
	movq	%r15, %rdi
	.align	16, 0x90
.LBB3_178:                              # %for.body.i.48.i
                                        #   Parent Loop BB3_87 Depth=1
                                        #     Parent Loop BB3_152 Depth=2
                                        #       Parent Loop BB3_153 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	(%rdx,%rdi), %rbp
	orq	%rbp, (%rdi)
	movq	8(%rcx), %rbp
	orq	%rbp, 8(%rdi)
	movq	16(%rcx), %rbp
	orq	%rbp, 16(%rdi)
	movq	24(%rcx), %rbp
	orq	%rbp, 24(%rdi)
	addq	$32, %rcx
	addl	$-4, %eax
	addq	$32, %rdi
	cmpl	$3, %eax
	ja	.LBB3_178
# BB#156:                               # %for.cond.for.cond.15.preheader_crit_edge.i.25.i
                                        #   in Loop: Header=BB3_153 Depth=3
	addq	192(%rsp), %rsi         # 8-byte Folded Reload
	movl	184(%rsp), %eax         # 4-byte Reload
	movq	176(%rsp), %rdx         # 8-byte Reload
	jmp	.LBB3_157
	.align	16, 0x90
.LBB3_155:                              #   in Loop: Header=BB3_153 Depth=3
	movl	%r13d, %eax
	movq	%r15, %rdx
.LBB3_157:                              # %for.cond.15.preheader.i.30.i
                                        #   in Loop: Header=BB3_153 Depth=3
	testl	%eax, %eax
	je	.LBB3_174
# BB#158:                               # %for.body.16.i.57.i.preheader
                                        #   in Loop: Header=BB3_153 Depth=3
	leal	-1(%rax), %ebx
	leaq	1(%rbx), %r11
	movq	%r11, %rdi
	movabsq	$8589934588, %rcx       # imm = 0x1FFFFFFFC
	andq	%rcx, %rdi
	je	.LBB3_159
# BB#160:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_153 Depth=3
	leaq	(%rsi,%rbx,8), %rcx
	cmpq	%rcx, %rdx
	ja	.LBB3_163
# BB#161:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_153 Depth=3
	leaq	(%rdx,%rbx,8), %rcx
	cmpq	%rcx, %rsi
	ja	.LBB3_163
# BB#162:                               #   in Loop: Header=BB3_153 Depth=3
	xorl	%edi, %edi
	jmp	.LBB3_169
	.align	16, 0x90
.LBB3_159:                              #   in Loop: Header=BB3_153 Depth=3
	xorl	%edi, %edi
	jmp	.LBB3_169
.LBB3_163:                              # %vector.body.preheader
                                        #   in Loop: Header=BB3_153 Depth=3
	movq	%r13, %r8
	movl	%r9d, %r13d
	leaq	1(%rbx), %rcx
	movabsq	$8589934588, %rbp       # imm = 0x1FFFFFFFC
	andq	%rbp, %rcx
	addq	$-4, %rcx
	movq	%rcx, %rbp
	shrq	$2, %rbp
	btq	$2, %rcx
	movl	$0, %ecx
	jb	.LBB3_165
# BB#164:                               # %vector.body.prol
                                        #   in Loop: Header=BB3_153 Depth=3
	movupd	(%rsi), %xmm0
	movupd	16(%rsi), %xmm1
	movupd	(%rdx), %xmm2
	movupd	16(%rdx), %xmm3
	orpd	%xmm0, %xmm2
	orpd	%xmm1, %xmm3
	movupd	%xmm2, (%rdx)
	movupd	%xmm3, 16(%rdx)
	movl	$4, %ecx
.LBB3_165:                              # %vector.body.preheader.split
                                        #   in Loop: Header=BB3_153 Depth=3
	subl	%edi, %eax
	leaq	(%rsi,%rdi,8), %r10
	leaq	(%rdx,%rdi,8), %r9
	testq	%rbp, %rbp
	je	.LBB3_168
# BB#166:                               # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB3_153 Depth=3
	incq	%rbx
	movabsq	$8589934588, %rbp       # imm = 0x1FFFFFFFC
	andq	%rbp, %rbx
	subq	%rcx, %rbx
	leaq	48(%rdx,%rcx,8), %rdx
	leaq	48(%rsi,%rcx,8), %rsi
	.align	16, 0x90
.LBB3_167:                              # %vector.body
                                        #   Parent Loop BB3_87 Depth=1
                                        #     Parent Loop BB3_152 Depth=2
                                        #       Parent Loop BB3_153 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movups	-48(%rsi), %xmm0
	movups	-32(%rsi), %xmm1
	movups	-48(%rdx), %xmm2
	movups	-32(%rdx), %xmm3
	orps	%xmm0, %xmm2
	orps	%xmm1, %xmm3
	movups	%xmm2, -48(%rdx)
	movups	%xmm3, -32(%rdx)
	movupd	-16(%rsi), %xmm0
	movupd	(%rsi), %xmm1
	movupd	-16(%rdx), %xmm2
	movupd	(%rdx), %xmm3
	orpd	%xmm0, %xmm2
	orpd	%xmm1, %xmm3
	movupd	%xmm2, -16(%rdx)
	movupd	%xmm3, (%rdx)
	addq	$64, %rdx
	addq	$64, %rsi
	addq	$-8, %rbx
	jne	.LBB3_167
.LBB3_168:                              #   in Loop: Header=BB3_153 Depth=3
	movq	%r10, %rsi
	movq	%r9, %rdx
	movl	%r13d, %r9d
	movq	%r8, %r13
	movl	168(%rsp), %r10d        # 4-byte Reload
	movl	160(%rsp), %r8d         # 4-byte Reload
.LBB3_169:                              # %middle.block
                                        #   in Loop: Header=BB3_153 Depth=3
	cmpq	%rdi, %r11
	je	.LBB3_174
# BB#170:                               # %for.body.16.i.57.i.preheader290
                                        #   in Loop: Header=BB3_153 Depth=3
	leal	-1(%rax), %ecx
	testb	$3, %al
	je	.LBB3_173
# BB#171:                               # %for.body.16.i.57.i.prol.preheader
                                        #   in Loop: Header=BB3_153 Depth=3
	movl	%eax, %edi
	andl	$3, %edi
	negl	%edi
	.align	16, 0x90
.LBB3_172:                              # %for.body.16.i.57.i.prol
                                        #   Parent Loop BB3_87 Depth=1
                                        #     Parent Loop BB3_152 Depth=2
                                        #       Parent Loop BB3_153 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	(%rsi), %rbp
	orq	%rbp, (%rdx)
	addq	$8, %rsi
	addq	$8, %rdx
	decl	%eax
	incl	%edi
	jne	.LBB3_172
.LBB3_173:                              # %for.body.16.i.57.i.preheader290.split
                                        #   in Loop: Header=BB3_153 Depth=3
	cmpl	$2, %ecx
	jbe	.LBB3_174
	.align	16, 0x90
.LBB3_179:                              # %for.body.16.i.57.i
                                        #   Parent Loop BB3_87 Depth=1
                                        #     Parent Loop BB3_152 Depth=2
                                        #       Parent Loop BB3_153 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	(%rsi), %rcx
	orq	%rcx, (%rdx)
	movq	8(%rsi), %rcx
	orq	%rcx, 8(%rdx)
	movq	16(%rsi), %rcx
	orq	%rcx, 16(%rdx)
	movq	24(%rsi), %rcx
	orq	%rcx, 24(%rdx)
	addq	$32, %rsi
	addq	$32, %rdx
	addl	$-4, %eax
	jne	.LBB3_179
	.align	16, 0x90
.LBB3_174:                              # %for.cond.275.backedge.i
                                        #   in Loop: Header=BB3_153 Depth=3
	cmpl	%r12d, %r14d
	jg	.LBB3_153
	jmp	.LBB3_175
.LBB3_151:                              # %if.then.293.i
                                        #   in Loop: Header=BB3_152 Depth=2
	movq	%r15, %rdi
	movq	72(%rsp), %rdx          # 8-byte Reload
	movl	%r9d, %ebx
	movl	%r10d, %ebp
	callq	memcpy
	movl	%ebp, %r10d
	movl	%ebx, %r9d
	movb	$1, %r8b
	cmpl	%r12d, %r14d
	jg	.LBB3_152
.LBB3_175:                              # %for.end.310.i
                                        #   in Loop: Header=BB3_87 Depth=1
	movl	%r10d, %ebp
	movl	%r9d, %ebx
	movq	144(%rsp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	movq	96(%rsp), %rdx          # 8-byte Reload
	leaq	252(%rsp), %rcx
	callq	gs_image_next
	movl	%eax, %r12d
	movl	132(%rsp), %ecx         # 4-byte Reload
	cmpl	292(%rsp), %ecx
	jl	.LBB3_180
# BB#176:
	movq	%r15, 112(%rsp)         # 8-byte Spill
	jmp	.LBB3_78
.LBB3_23:                               # %cond.false
	addl	$8, %ecx
	sarl	$4, %ecx
	movl	%ecx, %r15d
.LBB3_24:                               # %cond.end
	movq	176(%rsp), %rbx         # 8-byte Reload
	movl	160(%rdi), %ecx
	sarl	$4, %ecx
	subl	%r14d, %ecx
	cmpl	$-9, %ecx
	jg	.LBB3_26
# BB#25:                                # %cond.true.129
	movl	$-9, %ebp
	subl	%ecx, %ebp
	sarl	$4, %ebp
	notl	%ebp
	jmp	.LBB3_27
.LBB3_26:                               # %cond.false.138
	addl	$8, %ecx
	sarl	$4, %ecx
	movl	%ecx, %ebp
.LBB3_27:                               # %cond.end.145
	movl	%eax, %ecx
	addl	%r15d, %ecx
	js	.LBB3_29
# BB#28:                                # %lor.lhs.false
	movl	236(%rsp), %edi
	addl	%ecx, %edi
	cmpl	832(%rbx), %edi
	jle	.LBB3_30
.LBB3_29:                               # %if.then.156
	negl	%eax
	testl	%ecx, %ecx
	cmovsl	%eax, %r15d
.LBB3_30:                               # %if.end.166
	shrq	$32, %rsi
	movl	232(%rsp), %eax
	movl	%eax, %ecx
	addl	%ebp, %ecx
	js	.LBB3_32
# BB#31:                                # %lor.lhs.false.170
	movl	240(%rsp), %edi
	addl	%ecx, %edi
	cmpl	836(%rbx), %edi
	jle	.LBB3_33
.LBB3_32:                               # %if.then.176
	negl	%eax
	testl	%ecx, %ecx
	cmovsl	%eax, %ebp
.LBB3_33:                               # %if.end.186
	leal	63(%rdx), %r12d
	sarl	$6, %r12d
	shll	$3, %r12d
	movl	216(%rsp), %ecx
	cmpl	%r12d, %ecx
	jge	.LBB3_34
# BB#35:                                # %if.else.i
	movq	24(%rbx), %rdi
	movq	%rbx, 176(%rsp)         # 8-byte Spill
	movl	$.L.str.11, %ecx
	movl	%r12d, %edx
	callq	*88(%rdi)
	movq	%rax, %rbx
	movl	$-25, %r13d
	testq	%rbx, %rbx
	je	.LBB3_183
# BB#36:                                # %if.end.i
	movl	212(%rsp), %eax
	movl	%eax, %ecx
	imull	%r12d, %ecx
	testl	%ecx, %ecx
	jle	.LBB3_40
# BB#37:                                # %for.body.lr.ph.i
	movl	%ebp, 168(%rsp)         # 4-byte Spill
	movl	%r15d, 192(%rsp)        # 4-byte Spill
	movslq	%ecx, %rax
	movq	%rbx, %r15
	addq	%rax, %r15
	movq	%rbx, %rcx
	movq	200(%rsp), %rbx
	movslq	%r12d, %r14
	movl	216(%rsp), %eax
	movq	%rcx, %rbp
	movq	%rcx, %r13
	.align	16, 0x90
.LBB3_38:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movslq	%eax, %rdx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	addq	%r14, %rbp
	movslq	216(%rsp), %rax
	addq	%rax, %rbx
	cmpq	%r15, %rbp
	jb	.LBB3_38
# BB#39:                                # %for.cond.for.end_crit_edge.i
	movl	212(%rsp), %eax
	movl	192(%rsp), %r15d        # 4-byte Reload
	movl	168(%rsp), %ebp         # 4-byte Reload
	movq	%r13, %rbx
.LBB3_40:                               # %for.end.i
	movl	208(%rsp), %ecx
	movl	%eax, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%ebp, (%rsp)
	movq	$1, 32(%rsp)
	movq	$0, 24(%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	176(%rsp), %r14         # 8-byte Reload
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%r12d, %ecx
	movl	%r15d, %r9d
	callq	*1216(%r14)
	movl	%eax, %r13d
	movq	24(%r14), %rdi
	movl	$.L.str.11, %edx
	movq	%rbx, %rsi
	callq	*24(%rdi)
	jmp	.LBB3_41
.LBB3_34:                               # %if.then.i
	movq	200(%rsp), %rax
	movl	%esi, 16(%rsp)
	movl	%edx, 8(%rsp)
	movl	%ebp, (%rsp)
	movq	$1, 32(%rsp)
	movq	$0, 24(%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	%r15d, %r9d
	callq	*1216(%rbx)
	movl	%eax, %r13d
.LBB3_41:                               # %fapi_copy_mono.exit
	testl	%r13d, %r13d
	js	.LBB3_183
# BB#42:                                # %if.end.191
	movq	184(%rsp), %rsi         # 8-byte Reload
	movq	144(%rsi), %rdi
	movq	%rsi, %rbx
	callq	*128(%rdi)
	movl	$st_gs_show_enum, %ecx
	cmpq	%rcx, %rax
	jne	.LBB3_84
# BB#43:                                # %if.then.199
	movsd	.LCPI3_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	400(%rbx), %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movq	600(%rbx), %rcx
	addl	%eax, 96(%rcx)
	mulsd	408(%rbx), %xmm0
	cvttsd2si	%xmm0, %eax
	addl	%eax, 100(%rcx)
	xorl	%r13d, %r13d
	jmp	.LBB3_183
.LBB3_71:                               # %if.end.163.i
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	cmpl	$1, %r12d
	jne	.LBB3_78
# BB#72:                                # %sw.bb.i
	xorl	%r12d, %r12d
	jmp	.LBB3_78
.LBB3_16:                               # %if.else.74
	movl	1848(%rbx), %ebp
	movl	$1, 1848(%rbx)
	movl	$0, 304(%rbx)
	movl	$0, 300(%rbx)
	movq	%rbx, %rdi
	callq	gs_fill
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB3_183
# BB#17:                                # %cleanup.84.thread
	movl	%ebp, 1848(%rbx)
.LBB3_18:                               # %if.end.87
	movsd	256(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	264(%rsp), %xmm1        # xmm1 = mem[0],zero
	movq	%rbx, %rdi
	callq	gs_moveto
	movl	%eax, %r13d
	jmp	.LBB3_83
.LBB3_181:                              # %if.then.157.i
	movq	8(%r12), %rdi
	movl	$.L.str.15, %edx
	movq	112(%rsp), %rsi         # 8-byte Reload
	callq	*24(%rdi)
.LBB3_182:                              # %cleanup.thread.i
	movl	$-25, %r13d
	jmp	.LBB3_183
.LBB3_74:                               # %for.cond.preheader.i
	xorl	%r12d, %r12d
	testl	%r15d, %r15d
	movq	104(%rsp), %rbp         # 8-byte Reload
	jle	.LBB3_78
# BB#75:                                # %for.body.lr.ph.i.130
	addl	$7, %r13d
	sarl	$3, %r13d
	movl	$1, %ebx
	leaq	252(%rsp), %r14
.LBB3_76:                               # %for.body.i.131
                                        # =>This Inner Loop Header: Depth=1
	movq	144(%rsp), %rdi         # 8-byte Reload
	movq	%rbp, %rsi
	movl	%r13d, %edx
	movq	%r14, %rcx
	callq	gs_image_next
	movl	%eax, %r12d
	cmpl	%r15d, %ebx
	jge	.LBB3_78
# BB#77:                                # %for.body.i.131
                                        #   in Loop: Header=BB3_76 Depth=1
	addq	192(%rsp), %rbp         # 8-byte Folded Reload
	incl	%ebx
	testl	%r12d, %r12d
	jns	.LBB3_76
.LBB3_78:                               # %sw.epilog.i
	movq	112(%rsp), %rsi         # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB3_80
# BB#79:                                # %if.then.317.i
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	8(%rax), %rdi
	movl	$.L.str.15, %edx
	callq	*24(%rdi)
.LBB3_80:                               # %if.end.322.i
	movq	88(%rsp), %rcx          # 8-byte Reload
	testq	%rcx, %rcx
	movq	64(%rsp), %rbx          # 8-byte Reload
	movq	152(%rsp), %rax         # 8-byte Reload
	je	.LBB3_82
# BB#81:                                # %if.then.324.i
	movq	8(%rax), %rdi
	movq	%rcx, %rsi
	movl	$.L.str.16, %edx
	callq	*24(%rdi)
.LBB3_82:                               # %cleanup.i
	movq	144(%rsp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	gs_image_cleanup_and_free_enum
	movl	%eax, %r13d
	testl	%r13d, %r13d
	cmovnsl	%r12d, %r13d
	testl	%r12d, %r12d
	cmovsl	%r12d, %r13d
.LBB3_83:                               # %fapi_image_uncached_glyph.exit
	testl	%r13d, %r13d
	js	.LBB3_183
.LBB3_84:                               # %if.end.242
	xorl	%r13d, %r13d
.LBB3_183:                              # %cleanup.243
	movl	%r13d, %eax
	addq	$856, %rsp              # imm = 0x358
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_51:                               # %while.cond.30.preheader.i
	testl	%r15d, %r15d
	jle	.LBB3_52
# BB#56:                                # %while.body.34.lr.ph.i
	cltq
	movq	%r12, %r13
	movq	%rax, %r12
	movslq	%edx, %rax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movl	%edx, 132(%rsp)         # 4-byte Spill
	incl	%r15d
	movq	104(%rsp), %rbp         # 8-byte Reload
.LBB3_57:                               # %while.body.34.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	memcpy
	addq	%r13, %rbx
	addq	192(%rsp), %rbp         # 8-byte Folded Reload
	decl	%r15d
	cmpl	$1, %r15d
	jg	.LBB3_57
.LBB3_58:
	movq	64(%rsp), %rbx          # 8-byte Reload
	movl	176(%rsp), %r15d        # 4-byte Reload
	movl	132(%rsp), %edx         # 4-byte Reload
	jmp	.LBB3_59
.LBB3_52:
	movq	64(%rsp), %rbx          # 8-byte Reload
	movl	176(%rsp), %r15d        # 4-byte Reload
.LBB3_59:                               # %if.end.43.i
	movq	136(%rsp), %r13         # 8-byte Reload
	movq	184(%rsp), %rbp         # 8-byte Reload
.LBB3_60:                               # %if.end.43.i
	movl	%edx, %r12d
	movq	144(%rbp), %rdi
	movq	%rbp, %rsi
	callq	*128(%rdi)
	movl	$st_gs_show_enum, %ecx
	movss	148(%rbx), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	152(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%r15d, %xmm1
	mulsd	.LCPI3_1(%rip), %xmm1
	addsd	%xmm2, %xmm1
	cmpq	%rcx, %rax
	je	.LBB3_61
# BB#62:                                # %if.else.69.i
	movq	%rbp, %rbx
	movsd	.LCPI3_2(%rip), %xmm2   # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %r9d
	cvtss2sd	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%r14d, %xmm1
	mulsd	.LCPI3_1(%rip), %xmm1
	addsd	%xmm0, %xmm1
	jmp	.LBB3_63
.LBB3_61:                               # %if.then.50.i
	addsd	400(%rbp), %xmm1
	movsd	.LCPI3_2(%rip), %xmm2   # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %r9d
	cvtss2sd	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%r14d, %xmm1
	mulsd	.LCPI3_1(%rip), %xmm1
	addsd	%xmm0, %xmm1
	addsd	408(%rbp), %xmm1
	movq	%rbp, %rbx
.LBB3_63:                               # %if.end.89.i
	addsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %eax
	movq	208(%rsp), %rcx
	movq	%rcx, %rdx
	shrq	$32, %rdx
	movq	152(%rsp), %rsi         # 8-byte Reload
	movq	%rsi, 48(%rsp)
	movq	%r13, 24(%rsp)
	movl	%edx, 16(%rsp)
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$252, 40(%rsp)
	movl	$1, 32(%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	144(%rsp), %rdi         # 8-byte Reload
	movq	104(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rsi
	movl	%r12d, %ecx
	callq	gx_image_fill_masked
	movl	%eax, %r13d
	cmpq	%rbp, 200(%rsp)
	je	.LBB3_83
# BB#64:                                # %if.then.93.i
	movq	144(%rbx), %rdi
	movl	$.L.str.12, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	jmp	.LBB3_83
.Lfunc_end3:
	.size	gs_fapi_finish_render, .Lfunc_end3-gs_fapi_finish_render
	.cfi_endproc

	.align	16, 0x90
	.type	outline_char,@function
outline_char:                           # @outline_char
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp34:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 48
	subq	$80, %rsp
.Ltmp36:
	.cfi_def_cfa_offset 128
.Ltmp37:
	.cfi_offset %rbx, -48
.Ltmp38:
	.cfi_offset %r12, -40
.Ltmp39:
	.cfi_offset %r14, -32
.Ltmp40:
	.cfi_offset %r15, -24
.Ltmp41:
	.cfi_offset %rbp, -16
	movl	%r8d, %r15d
	movq	%rcx, %rbp
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movq	%rdi, %r14
	movups	path_interface_stub+32(%rip), %xmm0
	movaps	%xmm0, 64(%rsp)
	movups	path_interface_stub+16(%rip), %xmm0
	movaps	%xmm0, 48(%rsp)
	movups	path_interface_stub(%rip), %xmm0
	movaps	%xmm0, 32(%rsp)
	movq	144(%rbx), %rdi
	movq	%rbx, %rsi
	callq	*128(%rdi)
	movl	$st_gs_show_enum, %ecx
	cmpq	%rcx, %rax
	je	.LBB4_1
# BB#2:                                 # %if.else
	movq	104(%rbx), %rsi
	movq	144(%rbx), %rdi
	callq	*128(%rdi)
	movq	%rax, %rcx
	movl	$st_gs_state, %edx
	movl	$-21, %eax
	cmpq	%rdx, %rcx
	jne	.LBB4_15
# BB#3:                                 # %if.then.9
	addq	$104, %rbx
	jmp	.LBB4_4
.LBB4_1:                                # %if.then
	addq	$456, %rbx              # imm = 0x1C8
.LBB4_4:                                # %if.end.12
	movq	(%rbx), %rax
	movq	%rbp, 8(%rsp)
	movl	156(%rax), %ecx
	movl	%ecx, 16(%rsp)
	movl	160(%rax), %eax
	movl	%eax, 20(%rsp)
	movl	%r15d, 24(%rsp)
	movl	$0, 28(%rsp)
	leaq	8(%rsp), %rax
	movq	%rax, 32(%rsp)
	movl	$-24, 40(%rsp)
	leaq	32(%rsp), %rsi
	movq	%r12, %rdi
	callq	*544(%r12)
	movl	%eax, %ebx
	testl	%ebx, %ebx
	je	.LBB4_8
# BB#5:                                 # %if.end.i
	movl	$49, %edi
	callq	gs_debug_c
	testl	%eax, %eax
	je	.LBB4_7
# BB#6:                                 # %if.then.1.i
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	(%r12), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%ebx, %ecx
	callq	errprintf
.LBB4_7:                                # %if.end.5.i
	testl	%ebx, %ebx
	movl	$-10, %eax
	cmovsl	%ebx, %eax
	movl	44(%rsp), %ecx
	jmp	.LBB4_9
.LBB4_8:                                # %lor.lhs.false
	movl	44(%rsp), %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB4_10
.LBB4_9:                                # %if.then.21
	testl	%ecx, %ecx
	cmovnel	%ecx, %eax
.LBB4_15:                               # %cleanup
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_10:                               # %if.end.27
	cmpl	$0, 28(%rsp)
	je	.LBB4_14
# BB#11:                                # %if.end.27
	movl	24(%rsp), %eax
	testl	%eax, %eax
	je	.LBB4_14
# BB#12:                                # %if.then.31
	movq	32(%rsp), %rax
	cmpl	$1, 20(%rax)
	jne	.LBB4_14
# BB#13:                                # %add_closepath.exit
	movl	$0, 20(%rax)
	movq	(%rax), %rdi
	xorl	%esi, %esi
	callq	gx_path_close_subpath_notes
	movl	%eax, 44(%rsp)
	testl	%eax, %eax
	js	.LBB4_15
.LBB4_14:                               # %if.end.36
	xorl	%eax, %eax
	jmp	.LBB4_15
.Lfunc_end4:
	.size	outline_char, .Lfunc_end4-outline_char
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_0:
	.long	1116733440              # float 72
.LCPI5_4:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_1:
	.quad	4602678819172646912     # double 0.5
.LCPI5_3:
	.quad	4710765210229538816     # double 8388608
.LCPI5_5:
	.quad	4571153621781053440     # double 0.00390625
.LCPI5_6:
	.quad	0                       # double 0
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI5_2:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.globl	gs_fapi_do_char
	.align	16, 0x90
	.type	gs_fapi_do_char,@function
gs_fapi_do_char:                        # @gs_fapi_do_char
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp45:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp46:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 56
	subq	$536, %rsp              # imm = 0x218
.Ltmp48:
	.cfi_def_cfa_offset 592
.Ltmp49:
	.cfi_offset %rbx, -56
.Ltmp50:
	.cfi_offset %r12, -48
.Ltmp51:
	.cfi_offset %r13, -40
.Ltmp52:
	.cfi_offset %r14, -32
.Ltmp53:
	.cfi_offset %r15, -24
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%r9, 128(%rsp)          # 8-byte Spill
	movq	%rcx, 144(%rsp)         # 8-byte Spill
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	movq	%rsi, %r12
	movq	%r12, 136(%rsp)         # 8-byte Spill
	movq	%rdi, %rbx
	movq	1872(%r12), %rdi
	movq	%rdi, 160(%rsp)         # 8-byte Spill
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 512(%rsp)
	movapd	%xmm0, 496(%rsp)
	movapd	%xmm0, 480(%rsp)
	movapd	%xmm0, 464(%rsp)
	movapd	%xmm0, 448(%rsp)
	movq	$0, 528(%rsp)
	movq	424(%rbx), %r14
	movq	%r14, 208(%rsp)         # 8-byte Spill
	movl	128(%rbx), %ebp
	leal	-9(%rbp), %eax
	movl	%eax, 152(%rsp)         # 4-byte Spill
	cmpl	$3, %eax
	setb	176(%rsp)               # 1-byte Folded Spill
	testq	%r9, %r9
	setne	%r15b
	decl	%ebp
	cmpl	$9, %ebp
	sbbb	%al, %al
	movb	%al, 216(%rsp)          # 1-byte Spill
	movl	$259, %eax              # imm = 0x103
	movb	%bpl, %cl
	shrl	%cl, %eax
	movl	%eax, 184(%rsp)         # 4-byte Spill
	movq	$0, 392(%rsp)
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	callq	*1304(%rdi)
	movl	%eax, 192(%rsp)         # 4-byte Spill
	movq	%r12, %rdi
	callq	gs_rootfont
	movl	148(%rax), %eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	setne	120(%rsp)               # 1-byte Folded Spill
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 368(%rsp)
	movapd	%xmm0, 352(%rsp)
	movl	$0, 316(%rsp)
	movq	24(%rbx), %rdi
	movq	%rbx, %r12
	callq	gs_currentaligntopixels
	movl	%eax, 168(%rsp)         # 4-byte Spill
	cmpq	$2147483647, 608(%rsp)  # imm = 0x7FFFFFFF
	je	.LBB5_150
# BB#1:                                 # %if.end
	movq	16(%r12), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movl	$0, 404(%r14)
	movl	$-21, %r13d
	cmpq	$0, 104(%rsp)           # 8-byte Folded Reload
	je	.LBB5_150
# BB#2:                                 # %if.end.26
	orb	176(%rsp), %r15b        # 1-byte Folded Reload
	movb	%r15b, 96(%rsp)         # 1-byte Spill
	movl	184(%rsp), %r13d        # 4-byte Reload
	andl	$1, %r13d
	andb	%r13b, 216(%rsp)        # 1-byte Folded Spill
	movq	104(%rsp), %rdi         # 8-byte Reload
	movq	104(%rdi), %rbx
	movl	$0, 392(%rsp)
	movl	$0, 396(%rsp)
	leaq	392(%rsp), %rcx
	movq	%rdi, %r15
	movq	%r12, %rsi
	movl	192(%rsp), %edx         # 4-byte Reload
	callq	gx_compute_text_oversampling
	cmpl	$0, 1852(%rbx)
	jne	.LBB5_13
# BB#3:                                 # %lor.lhs.false.i
	cmpl	$0, 152(%r12)
	jne	.LBB5_13
# BB#4:                                 # %lor.lhs.false.1.i
	cmpl	$3, 1848(%rbx)
	jne	.LBB5_7
# BB#5:                                 # %produce_outline_char.exit.thread469
	movl	%r13d, 184(%rsp)        # 4-byte Spill
	movl	$0, 404(%r14)
	jmp	.LBB5_6
.LBB5_7:                                # %land.lhs.true.i
	movq	104(%r15), %rcx
	movq	1760(%rcx), %rdx
	movq	1872(%rcx), %rax
	movl	$gx_dc_type_data_pure, %esi
	cmpq	%rsi, (%rdx)
	jne	.LBB5_9
# BB#8:                                 # %land.lhs.true.i.i
	movl	$563, %edx              # imm = 0x233
	andl	212(%rcx), %edx
	cmpl	$48, %edx
	je	.LBB5_11
.LBB5_9:                                # %land.lhs.true.2.i.i
	cmpq	$0, 1496(%rax)
	je	.LBB5_11
# BB#10:                                # %land.rhs.i.i
	cmpq	$0, 1504(%rax)
	jne	.LBB5_13
.LBB5_11:                               # %land.lhs.true.8.i
	movq	392(%rsp), %rax
	testl	%eax, %eax
	jg	.LBB5_13
# BB#12:                                # %land.lhs.true.8.i
	shrq	$32, %rax
	testl	%eax, %eax
	jg	.LBB5_13
# BB#14:                                # %produce_outline_char.exit
	movl	%r13d, 184(%rsp)        # 4-byte Spill
	cmpl	$1, 192(%rsp)           # 4-byte Folded Reload
	setg	%al
	movzbl	%al, %eax
	movl	%eax, 404(%r14)
	jle	.LBB5_6
# BB#15:
	xorl	%ecx, %ecx
	movb	$1, %sil
	jmp	.LBB5_16
.LBB5_13:                               # %produce_outline_char.exit.thread
	movl	%r13d, 184(%rsp)        # 4-byte Spill
	movq	%r14, %rbx
	movl	$1, 404(%rbx)
	xorl	%ecx, %ecx
	movb	$1, %sil
	movq	%r15, %rdi
.LBB5_17:                               # %if.end.46
	movb	216(%rsp), %al          # 1-byte Reload
	movl	616(%rsp), %r15d
	movzbl	96(%rsp), %edx          # 1-byte Folded Reload
	movl	%edx, 100(%rsp)         # 4-byte Spill
	movzbl	%al, %r13d
	movl	%ecx, 400(%rbx)
	movq	24(%r12), %rcx
	movl	192(%rcx), %ecx
	movl	%ecx, 408(%rbx)
	testb	$2, 1(%rdi)
	jne	.LBB5_20
# BB#18:                                # %if.end.46
	testb	%sil, %sil
	jne	.LBB5_20
# BB#19:                                # %if.then.52
	xorl	%esi, %esi
	movq	%rdi, %r14
	movl	$1, %edx
	movq	136(%rsp), %rdi         # 8-byte Reload
	callq	gs_currentcharmatrix
	movq	%r14, %rdi
	movq	392(%rsp), %rax
	movq	%rax, 388(%rdi)
	jmp	.LBB5_21
.LBB5_20:                               # %if.else.54
	movq	$0, 392(%rsp)
.LBB5_21:                               # %if.end.55
	movq	%r12, %rax
	movq	%rax, %rcx
	movq	16(%rcx), %rax
	movq	%rax, 96(%rbx)
	movl	%r15d, 124(%rbx)
	movq	%rbx, %r15
	movq	144(%rsp), %rax         # 8-byte Reload
	movq	%rax, 104(%r15)
	movq	%rcx, 240(%r15)
	movq	%rcx, 248(%r15)
	movq	432(%rcx), %rax
	movq	%rax, 80(%r15)
	movl	%r13d, 128(%r15)
	movl	100(%rsp), %eax         # 4-byte Reload
	movl	%eax, 132(%r15)
	cmpl	$0, 152(%rcx)
	movq	%rcx, %r12
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 136(%r15)
	movq	%rdi, %rbx
	callq	gs_text_is_width_only
	xorl	%ecx, %ecx
	testl	%eax, %eax
	je	.LBB5_22
# BB#23:                                # %if.end.i
	movq	112(%rbx), %rax
	movl	128(%rax), %eax
	cmpq	$42, %rax
	movl	152(%rsp), %edi         # 4-byte Reload
	movb	120(%rsp), %bl          # 1-byte Reload
	ja	.LBB5_25
# BB#24:                                # %if.end.i
	movl	$1, %ecx
	movabsq	$4402341480966, %rdx    # imm = 0x40100000A06
	btq	%rax, %rdx
	jb	.LBB5_26
.LBB5_25:                               # %sw.default.i
	xorl	%ecx, %ecx
	jmp	.LBB5_26
.LBB5_22:
	movl	152(%rsp), %edi         # 4-byte Reload
	movb	120(%rsp), %bl          # 1-byte Reload
.LBB5_26:                               # %fapi_gs_char_show_width_only.exit
	movzbl	%bl, %esi
	movl	%ecx, 148(%r15)
	cmpl	$0, 140(%r15)
	jne	.LBB5_31
# BB#27:                                # %if.then.74
	movl	%esi, %ecx
	xorl	%eax, %eax
	cmpl	$0, 128(%r15)
	jne	.LBB5_30
# BB#28:                                # %land.lhs.true.i.315
	cmpl	$0, 132(%r15)
	je	.LBB5_30
# BB#29:                                # %if.then.i
	movq	240(%r15), %rax
	movl	712(%rax), %eax
.LBB5_30:                               # %gs_fapi_get_metrics_count.exit
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 140(%r15)
	movl	%ecx, %esi
.LBB5_31:                               # %if.end.81
	movl	%esi, 192(%rsp)         # 4-byte Spill
	movq	136(%rsp), %rax         # 8-byte Reload
	leaq	132(%rax), %rax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	leaq	80(%r15), %rax
	movq	%rax, 216(%rsp)         # 8-byte Spill
	movl	184(%rsp), %eax         # 4-byte Reload
	testw	%ax, %ax
	sete	%r8b
	cmpl	$8, %ebp
	seta	%dl
	cmpq	$0, 128(%rsp)           # 8-byte Folded Reload
	sete	%bl
	cmpl	$2, %edi
	seta	%al
	movl	%esi, 144(%r15)
	movq	8(%r15), %rcx
	movq	%rcx, 232(%r15)
	movl	16(%r15), %ecx
	movl	%ecx, 68(%rsp)          # 4-byte Spill
	movl	$1, %edi
	movl	$1, %esi
	shll	%cl, %esi
	leaq	32(%r15), %rcx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	cvtsi2sdl	%esi, %xmm0
	movsd	%xmm0, 184(%rsp)        # 8-byte Spill
	andb	%bl, %al
	orb	%r13b, %al
	movb	%al, 119(%rsp)          # 1-byte Spill
	orb	%r8b, %dl
	movb	96(%rsp), %cl           # 1-byte Reload
	andb	%dl, %cl
	cmpq	$0, 144(%rsp)           # 8-byte Folded Reload
	setne	%al
	andb	%cl, %al
	movb	%al, 75(%rsp)           # 1-byte Spill
	testl	%r13d, %r13d
	movl	$1000, %eax             # imm = 0x3E8
	cmovel	%edi, %eax
	movl	%eax, 92(%rsp)          # 4-byte Spill
	movl	$1, 96(%rsp)            # 4-byte Folded Spill
	leaq	352(%rsp), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	%r12, %rax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	jmp	.LBB5_32
	.align	16, 0x90
.LBB5_88:                               # %if.then.621
                                        #   in Loop: Header=BB5_32 Depth=1
	movl	%r14d, 192(%rsp)        # 4-byte Spill
	movabsq	$4294967296, %rax       # imm = 0x100000000
	movq	%rax, 400(%r15)
	movq	200(%rsp), %rax         # 8-byte Reload
.LBB5_32:                               # %retry_oversampling
                                        # =>This Inner Loop Header: Depth=1
	movq	56(%rax), %rax
	cmpq	%rax, 24(%r15)
	jne	.LBB5_42
# BB#33:                                # %lor.lhs.false.87
                                        #   in Loop: Header=BB5_32 Depth=1
	movss	32(%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	176(%rsp), %rcx         # 8-byte Reload
	ucomiss	(%rcx), %xmm0
	jne	.LBB5_42
	jp	.LBB5_42
# BB#34:                                # %land.lhs.true.93
                                        #   in Loop: Header=BB5_32 Depth=1
	movss	36(%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	136(%rsp), %rcx         # 8-byte Reload
	ucomiss	136(%rcx), %xmm0
	jne	.LBB5_42
	jp	.LBB5_42
# BB#35:                                # %land.lhs.true.99
                                        #   in Loop: Header=BB5_32 Depth=1
	movss	40(%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	136(%rsp), %rcx         # 8-byte Reload
	ucomiss	140(%rcx), %xmm0
	jne	.LBB5_42
	jp	.LBB5_42
# BB#36:                                # %land.lhs.true.105
                                        #   in Loop: Header=BB5_32 Depth=1
	movss	44(%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	136(%rsp), %rcx         # 8-byte Reload
	ucomiss	144(%rcx), %xmm0
	jne	.LBB5_42
	jp	.LBB5_42
# BB#37:                                # %lor.lhs.false.111
                                        #   in Loop: Header=BB5_32 Depth=1
	movq	392(%rsp), %rcx
	cmpl	%ecx, 56(%r15)
	jne	.LBB5_42
# BB#38:                                # %lor.lhs.false.118
                                        #   in Loop: Header=BB5_32 Depth=1
	shrq	$32, %rcx
	cmpl	%ecx, 60(%r15)
	jne	.LBB5_42
# BB#39:                                # %lor.lhs.false.125
                                        #   in Loop: Header=BB5_32 Depth=1
	movl	168(%rsp), %ecx         # 4-byte Reload
	cmpl	%ecx, 64(%r15)
	jne	.LBB5_42
# BB#40:                                # %lor.lhs.false.130
                                        #   in Loop: Header=BB5_32 Depth=1
	movss	68(%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	160(%rsp), %rcx         # 8-byte Reload
	ucomiss	884(%rcx), %xmm0
	jne	.LBB5_42
	jp	.LBB5_42
# BB#41:                                # %lor.lhs.false.136
                                        #   in Loop: Header=BB5_32 Depth=1
	movss	72(%r15), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	160(%rsp), %rcx         # 8-byte Reload
	ucomiss	888(%rcx), %xmm0
	jne	.LBB5_42
	jnp	.LBB5_57
	.align	16, 0x90
.LBB5_42:                               # %if.then.144
                                        #   in Loop: Header=BB5_32 Depth=1
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 288(%rsp)
	movapd	%xmm0, 272(%rsp)
	movl	$0, 304(%rsp)
	movl	$1, 272(%rsp)
	movl	$1, 284(%rsp)
	movq	%rax, 24(%r15)
	movq	176(%rsp), %rbx         # 8-byte Reload
	movq	16(%rbx), %rax
	movq	120(%rsp), %rcx         # 8-byte Reload
	movq	%rax, 16(%rcx)
	movups	(%rbx), %xmm0
	movups	%xmm0, (%rcx)
	movq	392(%rsp), %rax
	movq	%rax, 56(%r15)
	movl	168(%rsp), %edx         # 4-byte Reload
	movl	%edx, 64(%r15)
	movq	160(%rsp), %r12         # 8-byte Reload
	movl	884(%r12), %eax
	movl	%eax, 68(%r15)
	movl	888(%r12), %eax
	movl	%eax, 72(%r15)
	movq	392(%rsp), %rcx
	movl	$1, %eax
	shll	%cl, %eax
	movl	%eax, 304(%rsp)
	shrq	$32, %rcx
	movl	$1, %eax
	shll	%cl, %eax
	movl	%eax, 308(%rsp)
	movl	%edx, 312(%rsp)
	xorl	%esi, %esi
	movl	$24, %edx
	leaq	224(%rsp), %rbp
	movq	%rbp, %rdi
	callq	memset
	movss	884(%r12), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI5_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, 224(%rsp)
	movss	888(%r12), %xmm0        # xmm0 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, 236(%rsp)
	movq	%rbp, %rdi
	movq	%rbp, %rsi
	callq	gs_matrix_invert
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	leaq	248(%rsp), %rbx
	movq	%rbx, %rdx
	callq	gs_matrix_multiply
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	*504(%r15)
	movq	%rbp, %rdi
	movq	%rbp, %rsi
	callq	gs_matrix_invert
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	callq	gs_matrix_multiply
	movss	248(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	184(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movsd	.LCPI5_1(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 272(%rsp)
	movss	252(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	negl	%ecx
	movl	%ecx, 276(%rsp)
	movss	256(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, 280(%rsp)
	movss	260(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	negl	%edx
	movl	%edx, 284(%rsp)
	movss	264(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movl	%edx, 288(%rsp)
	movss	268(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movl	%edx, 292(%rsp)
	movss	884(%r12), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtsi2sdl	304(%rsp), %xmm1
	mulsd	%xmm0, %xmm1
	mulsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %edx
	movl	%edx, 296(%rsp)
	movss	888(%r12), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	308(%rsp), %xmm1
	mulsd	%xmm0, %xmm1
	mulsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %edx
	movl	%edx, 300(%rsp)
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 152(%rsp)        # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB5_44
# BB#43:                                # %call.sqrt
                                        #   in Loop: Header=BB5_32 Depth=1
	movsd	152(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB5_44:                               # %if.then.144.split
                                        #   in Loop: Header=BB5_32 Depth=1
	ucomisd	.LCPI5_6, %xmm0
	movq	216(%rsp), %rbx         # 8-byte Reload
	leaq	272(%rsp), %rbp
	jne	.LBB5_45
	jnp	.LBB5_48
.LBB5_45:                               # %lor.lhs.false.278
                                        #   in Loop: Header=BB5_32 Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2sdl	276(%rsp), %xmm1
	mulsd	%xmm1, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	284(%rsp), %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 152(%rsp)        # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB5_47
# BB#46:                                # %call.sqrt494
                                        #   in Loop: Header=BB5_32 Depth=1
	movsd	152(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB5_47:                               # %lor.lhs.false.278.split
                                        #   in Loop: Header=BB5_32 Depth=1
	ucomisd	.LCPI5_6, %xmm0
	jne	.LBB5_52
	jp	.LBB5_52
.LBB5_48:                               # %if.then.297
                                        #   in Loop: Header=BB5_32 Depth=1
	cmpl	$0, 272(%rsp)
	jne	.LBB5_50
# BB#49:                                # %if.then.301
                                        #   in Loop: Header=BB5_32 Depth=1
	movl	$1, 272(%rsp)
.LBB5_50:                               # %if.end.304
                                        #   in Loop: Header=BB5_32 Depth=1
	cmpl	$0, 284(%rsp)
	jne	.LBB5_52
# BB#51:                                # %if.then.308
                                        #   in Loop: Header=BB5_32 Depth=1
	movl	$1, 284(%rsp)
.LBB5_52:                               # %if.end.312
                                        #   in Loop: Header=BB5_32 Depth=1
	xorl	%r13d, %r13d
	xorl	%ecx, %ecx
	movl	$-2, %r8d
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	*448(%r15)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	je	.LBB5_56
# BB#53:                                # %if.end.i.320
                                        #   in Loop: Header=BB5_32 Depth=1
	movl	$49, %edi
	callq	gs_debug_c
	testl	%eax, %eax
	je	.LBB5_55
# BB#54:                                # %if.then.1.i
                                        #   in Loop: Header=BB5_32 Depth=1
	callq	gs_program_name
	movq	%rax, %r12
	callq	gs_revision_number
	movq	80(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	(%r15), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ebp, %ecx
	callq	errprintf
.LBB5_55:                               # %if.end.5.i
                                        #   in Loop: Header=BB5_32 Depth=1
	testl	%ebp, %ebp
	movl	$-10, %eax
	cmovnsl	%eax, %ebp
	movl	%ebp, %r13d
.LBB5_56:                               # %gs_fapi_renderer_retcode.exit
                                        #   in Loop: Header=BB5_32 Depth=1
	testl	%r13d, %r13d
	js	.LBB5_150
.LBB5_57:                               # %if.end.334
                                        #   in Loop: Header=BB5_32 Depth=1
	movl	$1, 488(%rsp)
	movq	608(%rsp), %rax
	movq	%rax, 456(%rsp)
	movq	600(%rsp), %rax
	movq	%rax, 448(%rsp)
	movl	$1, 492(%rsp)
	movq	$0, 400(%rsp)
	movl	$0, 408(%rsp)
	movq	376(%r15), %rax
	testq	%rax, %rax
	je	.LBB5_59
# BB#58:                                # %if.then.344
                                        #   in Loop: Header=BB5_32 Depth=1
	movl	100(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 8(%rsp)
	leaq	448(%rsp), %rcx
	movq	%rcx, (%rsp)
	movq	200(%rsp), %rdi         # 8-byte Reload
	movq	128(%rsp), %rsi         # 8-byte Reload
	movq	592(%rsp), %rdx
	movq	608(%rsp), %rcx
	leaq	400(%rsp), %r8
	movq	144(%rsp), %r9          # 8-byte Reload
	callq	*%rax
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB5_150
.LBB5_59:                               # %if.end.353
                                        #   in Loop: Header=BB5_32 Depth=1
	cmpb	$0, 119(%rsp)           # 1-byte Folded Reload
	movq	216(%rsp), %r15         # 8-byte Reload
	jne	.LBB5_68
# BB#60:                                # %if.then.357
                                        #   in Loop: Header=BB5_32 Depth=1
	movq	200(%rsp), %rax         # 8-byte Reload
	movl	712(%rax), %ebx
	testl	%ebx, %ebx
	jle	.LBB5_68
# BB#61:                                # %if.then.361
                                        #   in Loop: Header=BB5_32 Depth=1
	movl	456(%rsp), %esi
	movq	%r15, %rdi
	leaq	272(%rsp), %rdx
	movq	208(%rsp), %rax         # 8-byte Reload
	callq	*368(%rax)
	cmpl	$2, %ebx
	jne	.LBB5_65
# BB#62:                                # %if.then.361
                                        #   in Loop: Header=BB5_32 Depth=1
	cmpl	$4, %eax
	jl	.LBB5_65
# BB#63:                                # %if.then.373
                                        #   in Loop: Header=BB5_32 Depth=1
	cmpl	$0, 76(%rsp)            # 4-byte Folded Reload
	jne	.LBB5_68
# BB#64:                                # %if.then.375
                                        #   in Loop: Header=BB5_32 Depth=1
	movq	272(%rsp), %rax
	movzbl	2(%rax), %ecx
	shll	$8, %ecx
	movzbl	3(%rax), %edx
	orl	%ecx, %edx
	movswl	%dx, %edx
	movl	68(%rsp), %ecx          # 4-byte Reload
	shll	%cl, %edx
	movl	%edx, 512(%rsp)
	movzbl	(%rax), %edx
	shll	$8, %edx
	movzbl	1(%rax), %eax
	jmp	.LBB5_67
.LBB5_65:                               # %if.else.395
                                        #   in Loop: Header=BB5_32 Depth=1
	cmpl	$8, %eax
	jl	.LBB5_68
# BB#66:                                # %if.then.398
                                        #   in Loop: Header=BB5_32 Depth=1
	movq	272(%rsp), %rax
	movzbl	2(%rax), %ecx
	shll	$8, %ecx
	movzbl	3(%rax), %edx
	orl	%ecx, %edx
	movswl	%dx, %edx
	movl	68(%rsp), %ecx          # 4-byte Reload
	shll	%cl, %edx
	movl	%edx, 516(%rsp)
	movzbl	(%rax), %esi
	shll	$8, %esi
	movzbl	1(%rax), %edx
	orl	%esi, %edx
	shll	%cl, %edx
	movl	%edx, 524(%rsp)
	movzbl	6(%rax), %esi
	shll	$8, %esi
	movzbl	7(%rax), %edx
	orl	%esi, %edx
	movswl	%dx, %edx
	shll	%cl, %edx
	movl	%edx, 512(%rsp)
	movzbl	4(%rax), %edx
	shll	$8, %edx
	movzbl	5(%rax), %eax
.LBB5_67:                               # %if.end.443
                                        #   in Loop: Header=BB5_32 Depth=1
	orl	%edx, %eax
	shll	%cl, %eax
	movl	%eax, 520(%rsp)
	movl	$3, 508(%rsp)
	.align	16, 0x90
.LBB5_68:                               # %if.end.445
                                        #   in Loop: Header=BB5_32 Depth=1
	movl	508(%rsp), %eax
	movl	192(%rsp), %r14d        # 4-byte Reload
	testl	%r14d, %r14d
	je	.LBB5_69
# BB#70:                                # %if.end.445
                                        #   in Loop: Header=BB5_32 Depth=1
	cmpl	$3, %eax
	je	.LBB5_71
# BB#72:                                # %if.then.451
                                        #   in Loop: Header=BB5_32 Depth=1
	movq	%r15, %rdi
	leaq	400(%rsp), %rsi
	movq	608(%rsp), %rdx
	leaq	272(%rsp), %rcx
	movl	%r14d, %r8d
	movq	208(%rsp), %rax         # 8-byte Reload
	callq	*384(%rax)
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB5_150
# BB#73:                                # %if.end.459
                                        #   in Loop: Header=BB5_32 Depth=1
	je	.LBB5_74
# BB#76:                                # %if.else.506
                                        #   in Loop: Header=BB5_32 Depth=1
	movapd	288(%rsp), %xmm0
	movsd	184(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	%xmm2, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	.LCPI5_1(%rip), %xmm3   # xmm3 = mem[0],zero
	addsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 512(%rsp)
	movapd	%xmm0, 352(%rsp)
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	mulsd	%xmm2, %xmm0
	addsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 516(%rsp)
	movapd	272(%rsp), %xmm0
	movapd	%xmm2, %xmm1
	mulsd	%xmm0, %xmm1
	addsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 520(%rsp)
	movapd	%xmm0, 368(%rsp)
	shufpd	$1, %xmm0, %xmm0        # xmm0 = xmm0[1,0]
	mulsd	%xmm2, %xmm0
	addsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 524(%rsp)
	movl	92(%rsp), %eax          # 4-byte Reload
	movl	%eax, 528(%rsp)
	cmpl	$2, %r13d
	sete	%al
	movzbl	%al, %eax
	orl	$2, %eax
	movl	%eax, 508(%rsp)
	movl	$0, 96(%rsp)            # 4-byte Folded Spill
	leaq	416(%rsp), %rbp
	jmp	.LBB5_78
	.align	16, 0x90
.LBB5_69:                               #   in Loop: Header=BB5_32 Depth=1
	leaq	416(%rsp), %rbp
	jmp	.LBB5_78
	.align	16, 0x90
.LBB5_71:                               #   in Loop: Header=BB5_32 Depth=1
	leaq	416(%rsp), %rbp
	jmp	.LBB5_78
.LBB5_74:                               # %if.then.462
                                        #   in Loop: Header=BB5_32 Depth=1
	cmpb	$0, 75(%rsp)            # 1-byte Folded Reload
	leaq	416(%rsp), %rbp
	je	.LBB5_75
# BB#77:                                # %if.then.468
                                        #   in Loop: Header=BB5_32 Depth=1
	movsd	368(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI5_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm4
	mulsd	%xmm4, %xmm0
	movsd	184(%rsp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movapd	%xmm3, %xmm1
	mulsd	%xmm0, %xmm1
	addsd	%xmm4, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 512(%rsp)
	movq	200(%rsp), %rcx         # 8-byte Reload
	movsd	400(%rcx), %xmm1        # xmm1 = mem[0],zero
	movapd	%xmm3, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm4, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, 516(%rsp)
	movsd	392(%rcx), %xmm2        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm3
	subsd	%xmm3, %xmm4
	cvttsd2si	%xmm4, %eax
	movl	%eax, 524(%rsp)
	movl	92(%rsp), %eax          # 4-byte Reload
	movl	%eax, 528(%rsp)
	movl	$3, 508(%rsp)
	movsd	%xmm0, 352(%rsp)
	movsd	%xmm1, 360(%rsp)
	movq	$0, 368(%rsp)
	xorpd	.LCPI5_2(%rip), %xmm2
	movlpd	%xmm2, 376(%rsp)
	movl	$0, 96(%rsp)            # 4-byte Folded Spill
	movl	$3, %eax
	jmp	.LBB5_78
.LBB5_75:                               # %if.then.462.cleanup.543.thread_crit_edge
                                        #   in Loop: Header=BB5_32 Depth=1
	xorl	%r14d, %r14d
	movl	508(%rsp), %eax
	.align	16, 0x90
.LBB5_78:                               # %if.end.546
                                        #   in Loop: Header=BB5_32 Depth=1
	orl	%r14d, %eax
	jne	.LBB5_85
# BB#79:                                # %if.then.552
                                        #   in Loop: Header=BB5_32 Depth=1
	movq	%rbp, %r12
	movq	%r15, %rdi
	leaq	400(%rsp), %rsi
	movq	608(%rsp), %rdx
	leaq	352(%rsp), %rcx
	movl	%r14d, %r8d
	movq	208(%rsp), %rbp         # 8-byte Reload
	callq	*384(%rbp)
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB5_150
# BB#80:                                # %if.end.562
                                        #   in Loop: Header=BB5_32 Depth=1
	je	.LBB5_81
# BB#83:                                # %if.else.578
                                        #   in Loop: Header=BB5_32 Depth=1
	movsd	352(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	184(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI5_1(%rip), %xmm2   # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 512(%rsp)
	movsd	360(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 516(%rsp)
	movsd	368(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 520(%rsp)
	movsd	376(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 524(%rsp)
	movl	92(%rsp), %eax          # 4-byte Reload
	movl	%eax, 528(%rsp)
	cmpl	$2, %r13d
	sete	%al
	movzbl	%al, %eax
	orl	$2, %eax
	movl	%eax, 508(%rsp)
	movl	$0, 96(%rsp)            # 4-byte Folded Spill
	jmp	.LBB5_84
.LBB5_81:                               # %if.then.565
                                        #   in Loop: Header=BB5_32 Depth=1
	movl	$2, 96(%rsp)            # 4-byte Folded Spill
	movq	200(%rsp), %rax         # 8-byte Reload
	cmpl	$2, 128(%rax)
	jne	.LBB5_84
# BB#82:                                # %if.then.569
                                        #   in Loop: Header=BB5_32 Depth=1
	movl	536(%rax), %eax
	movl	16(%rbp), %edx
	movl	$8, %ecx
	subl	%edx, %ecx
	movl	%eax, %esi
	sarl	%cl, %esi
	negl	%ecx
	shll	%cl, %eax
	movl	$8, %ecx
	cmpl	%edx, %ecx
	cmovgl	%esi, %eax
	movl	%eax, 520(%rsp)
	movl	$1000, 528(%rsp)        # imm = 0x3E8
	movl	$1, 508(%rsp)
	.align	16, 0x90
.LBB5_84:                               # %if.end.607
                                        #   in Loop: Header=BB5_32 Depth=1
	movq	%r12, %rbp
.LBB5_85:                               # %if.end.607
                                        #   in Loop: Header=BB5_32 Depth=1
	xorl	%esi, %esi
	movl	$32, %edx
	movq	%rbp, %rdi
	callq	memset
	movq	208(%rsp), %rbx         # 8-byte Reload
	cmpl	$0, 148(%rbx)
	je	.LBB5_89
# BB#86:                                # %if.then.612
                                        #   in Loop: Header=BB5_32 Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r15, 216(%rsp)         # 8-byte Spill
	leaq	448(%rsp), %rdx
	movq	%rbp, %rcx
	callq	*536(%rbx)
	movl	%eax, %r12d
	cmpl	$-25, %r12d
	movq	%rbx, %r15
	jne	.LBB5_91
# BB#87:                                # %land.lhs.true.617
                                        #   in Loop: Header=BB5_32 Depth=1
	movl	$-25, %r12d
	cmpl	$0, 404(%r15)
	je	.LBB5_88
	jmp	.LBB5_93
	.align	16, 0x90
.LBB5_89:                               # %if.else.625
                                        #   in Loop: Header=BB5_32 Depth=1
	cmpl	$0, 404(%rbx)
	jne	.LBB5_90
# BB#95:                                # %if.else.632
                                        #   in Loop: Header=BB5_32 Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	leaq	448(%rsp), %rdx
	movq	%rbp, %rcx
	callq	*520(%rbx)
	movl	%eax, %r12d
	cmpl	$-13, %r12d
	jne	.LBB5_96
# BB#98:                                # %if.then.642
                                        #   in Loop: Header=BB5_32 Depth=1
	movq	392(%rsp), %rax
	testl	%eax, %eax
	jg	.LBB5_100
# BB#99:                                # %if.then.642
                                        #   in Loop: Header=BB5_32 Depth=1
	shrq	$32, %rax
	testl	%eax, %eax
	jle	.LBB5_101
.LBB5_100:                              # %if.then.650
                                        #   in Loop: Header=BB5_32 Depth=1
	movl	%r14d, 192(%rsp)        # 4-byte Spill
	movq	%r15, 216(%rsp)         # 8-byte Spill
	movl	$0, 396(%rsp)
	movq	104(%rsp), %rax         # 8-byte Reload
	movl	$0, 392(%rax)
	movl	$0, 392(%rsp)
	movl	$0, 388(%rax)
	movq	%rbx, %r15
	movq	%r15, %rdi
	callq	*552(%r15)
	movq	200(%rsp), %rax         # 8-byte Reload
	jmp	.LBB5_32
.LBB5_96:                               # %if.else.632
                                        #   in Loop: Header=BB5_32 Depth=1
	movq	%r15, 216(%rsp)         # 8-byte Spill
	cmpl	$-25, %r12d
	movq	%rbx, %r15
	jne	.LBB5_91
# BB#97:                                # %if.then.637
                                        #   in Loop: Header=BB5_32 Depth=1
	movl	%r14d, 192(%rsp)        # 4-byte Spill
	movl	$1, 404(%r15)
	movq	200(%rsp), %rax         # 8-byte Reload
	jmp	.LBB5_32
.LBB5_6:                                # %if.else
	movq	24(%r12), %rax
	movl	124(%rax), %eax
	movl	%eax, %edx
	shrl	%edx
	addl	%eax, %edx
	cmpl	$80000, %edx            # imm = 0x13880
	movl	$80000, %ecx            # imm = 0x13880
	cmovbl	%edx, %ecx
	xorl	%esi, %esi
.LBB5_16:                               # %if.end.46
	movq	%r15, %rdi
	movq	%r14, %rbx
	jmp	.LBB5_17
.LBB5_90:                               # %if.then.628
	leaq	448(%rsp), %rdx
	leaq	416(%rsp), %rcx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r15, 216(%rsp)         # 8-byte Spill
	callq	*536(%rbx)
	movl	%eax, %r12d
	movq	%rbx, %r15
.LBB5_91:                               # %if.end.669
	movl	$-28, %r13d
	testl	%r12d, %r12d
	jg	.LBB5_150
# BB#92:                                # %if.end.673
	je	.LBB5_107
.LBB5_93:                               # %if.end.i.377
	movl	$49, %edi
	callq	gs_debug_c
	testl	%eax, %eax
	je	.LBB5_94
# BB#106:                               # %if.then.1.i.383
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	80(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	(%r15), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%r12d, %ecx
	callq	errprintf
	movl	%r12d, %r13d
	jmp	.LBB5_150
.LBB5_94:
	movl	%r12d, %r13d
	jmp	.LBB5_150
.LBB5_101:                              # %if.end.658
	leaq	448(%rsp), %rdx
	leaq	416(%rsp), %rcx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r15, 216(%rsp)         # 8-byte Spill
	movq	%rdi, %r15
	callq	*536(%r15)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	je	.LBB5_107
# BB#102:                               # %if.end.i.362
	movq	%r15, %r14
	jmp	.LBB5_103
.LBB5_107:                              # %if.end.678
	movq	200(%rsp), %rax         # 8-byte Reload
	movq	424(%rax), %rdi
	leaq	272(%rsp), %rbp
	movq	%rbp, %rsi
	callq	*504(%rdi)
	movss	272(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorpd	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB5_112
	jp	.LBB5_112
# BB#108:                               # %land.lhs.true.i.391
	movss	276(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	jne	.LBB5_112
	jp	.LBB5_112
# BB#109:                               # %land.lhs.true.2.i
	movss	280(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	xorpd	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm2
	jne	.LBB5_112
	jp	.LBB5_112
# BB#110:                               # %land.lhs.true.4.i
	movss	284(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm2
	jne	.LBB5_112
	jp	.LBB5_112
# BB#111:                               # %if.then.i.392
	movq	200(%rsp), %rax         # 8-byte Reload
	movq	64(%rax), %rbp
	movss	80(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	addq	$80, %rbp
.LBB5_112:                              # %compute_em_scale.exit
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm2
	movss	4(%rbp), %xmm1          # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 192(%rsp)        # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	movq	216(%rsp), %rbx         # 8-byte Reload
	jnp	.LBB5_114
# BB#113:                               # %call.sqrt495
	movsd	192(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB5_114:                              # %compute_em_scale.exit.split
	xorps	%xmm1, %xmm1
	cvtsi2sdl	440(%rsp), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 192(%rsp)        # 8-byte Spill
	movss	8(%rbp), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	12(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm2
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 168(%rsp)        # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB5_116
# BB#115:                               # %call.sqrt496
	movsd	168(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB5_116:                              # %compute_em_scale.exit.split.split
	movl	444(%rsp), %eax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	.LCPI5_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm2
	movsd	192(%rsp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	divsd	%xmm3, %xmm2
	cvttsd2si	%xmm2, %eax
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	%xmm0, %xmm3
	movsd	.LCPI5_1(%rip), %xmm2   # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %eax
	cvtsi2sdl	%eax, %xmm5
	divsd	%xmm0, %xmm5
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	mulsd	%xmm0, %xmm1
	addsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %eax
	cvtsi2sdl	%eax, %xmm7
	divsd	%xmm0, %xmm7
	xorps	%xmm0, %xmm0
	cvtsi2sdl	416(%rsp), %xmm0
	divsd	%xmm5, %xmm0
	movsd	%xmm0, 320(%rsp)
	xorps	%xmm1, %xmm1
	cvtsi2sdl	420(%rsp), %xmm1
	divsd	%xmm7, %xmm1
	movsd	%xmm1, 328(%rsp)
	cvtsi2sdl	424(%rsp), %xmm2
	divsd	%xmm5, %xmm2
	movsd	%xmm2, 336(%rsp)
	cvtsi2sdl	428(%rsp), %xmm3
	divsd	%xmm7, %xmm3
	movsd	%xmm3, 344(%rsp)
	cmpl	$0, 100(%rsp)           # 4-byte Folded Reload
	jne	.LBB5_117
# BB#118:                               # %compute_em_scale.exit.split.split
	movq	%r15, %r14
	movq	200(%rsp), %r12         # 8-byte Reload
	cmpl	$51, 128(%r12)
	je	.LBB5_119
# BB#120:                               # %land.lhs.true.699
	movsd	376(%r12), %xmm6        # xmm6 = mem[0],zero
	movsd	392(%r12), %xmm4        # xmm4 = mem[0],zero
	ucomisd	%xmm6, %xmm4
	movq	104(%rsp), %r15         # 8-byte Reload
	movl	96(%rsp), %eax          # 4-byte Reload
	jbe	.LBB5_123
# BB#121:                               # %land.lhs.true.708
	movsd	384(%r12), %xmm9        # xmm9 = mem[0],zero
	movsd	400(%r12), %xmm8        # xmm8 = mem[0],zero
	ucomisd	%xmm9, %xmm8
	jbe	.LBB5_123
# BB#122:                               # %if.then.717
	minsd	%xmm6, %xmm0
	movsd	%xmm0, 320(%rsp)
	minsd	%xmm9, %xmm1
	movsd	%xmm1, 328(%rsp)
	maxsd	%xmm4, %xmm2
	movsd	%xmm2, 336(%rsp)
	maxsd	%xmm8, %xmm3
	movsd	%xmm3, 344(%rsp)
	jmp	.LBB5_123
.LBB5_117:
	movq	%r15, %r14
	movq	104(%rsp), %r15         # 8-byte Reload
	movq	200(%rsp), %r12         # 8-byte Reload
	movl	96(%rsp), %eax          # 4-byte Reload
	jmp	.LBB5_123
.LBB5_119:
	movq	104(%rsp), %r15         # 8-byte Reload
	movl	96(%rsp), %eax          # 4-byte Reload
.LBB5_123:                              # %if.end.790
	cmpl	$0, 152(%r12)
	je	.LBB5_125
# BB#124:                               # %if.then.794
	movss	156(%r12), %xmm4        # xmm4 = mem[0],zero,zero,zero
	mulss	.LCPI5_4(%rip), %xmm4
	cvtss2sd	%xmm4, %xmm4
	subsd	%xmm4, %xmm0
	movsd	%xmm0, 320(%rsp)
	subsd	%xmm4, %xmm1
	movsd	%xmm1, 328(%rsp)
	addsd	%xmm4, %xmm2
	movsd	%xmm2, 336(%rsp)
	addsd	%xmm4, %xmm3
	movsd	%xmm3, 344(%rsp)
.LBB5_125:                              # %if.end.812
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 400(%r15)
	cmpl	$1, %eax
	jne	.LBB5_126
# BB#132:                               # %if.then.852
	movq	512(%rsp), %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	184(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	divsd	%xmm5, %xmm0
	movsd	%xmm0, 352(%rsp)
	shrq	$32, %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	divsd	%xmm1, %xmm0
	divsd	%xmm7, %xmm0
	movsd	%xmm0, 360(%rsp)
	movq	520(%rsp), %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	divsd	%xmm1, %xmm0
	divsd	%xmm5, %xmm0
	movsd	%xmm0, 368(%rsp)
	shrq	$32, %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	divsd	%xmm1, %xmm0
	divsd	%xmm7, %xmm0
	movsd	%xmm0, 376(%rsp)
	jmp	.LBB5_133
.LBB5_126:                              # %if.end.812
	movsd	%xmm7, 184(%rsp)        # 8-byte Spill
	cmpl	$2, %eax
	jne	.LBB5_133
# BB#127:                               # %if.then.818
	movsd	%xmm5, 192(%rsp)        # 8-byte Spill
	leaq	448(%rsp), %rdx
	leaq	272(%rsp), %rcx
	movq	%r14, %rbp
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*488(%rbp)
	movq	%rbp, %r14
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB5_103
# BB#128:                               # %if.end.826
	movq	%rbx, %rcx
	cvtsi2sdl	432(%rsp), %xmm0
	movsd	192(%rsp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	divsd	%xmm5, %xmm0
	movsd	%xmm0, 368(%rsp)
	cvtsi2sdl	436(%rsp), %xmm1
	divsd	184(%rsp), %xmm1        # 8-byte Folded Reload
	movsd	%xmm1, 376(%rsp)
	cmpl	$2, 128(%r12)
	jne	.LBB5_131
# BB#129:                               # %if.end.826
	movl	272(%rsp), %eax
	testl	%eax, %eax
	jne	.LBB5_131
# BB#130:                               # %if.then.838
	xorps	%xmm1, %xmm1
	cvtsi2sdl	540(%r12), %xmm1
	mulsd	.LCPI5_5(%rip), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 368(%rsp)
.LBB5_131:                              # %cleanup.846.thread
	movq	%rcx, %rbx
.LBB5_133:                              # %if.end.878
	cmpl	$3, 508(%rsp)
	jne	.LBB5_137
# BB#134:                               # %if.then.882
	movsd	%xmm5, 192(%rsp)        # 8-byte Spill
	leaq	448(%rsp), %rdx
	leaq	272(%rsp), %rcx
	movq	%r14, %rbp
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*488(%rbp)
	movq	%rbp, %r14
	movl	%eax, %ebp
	testl	%ebp, %ebp
	je	.LBB5_135
.LBB5_103:                              # %if.end.i.362
	movl	$49, %edi
	callq	gs_debug_c
	testl	%eax, %eax
	je	.LBB5_105
# BB#104:                               # %if.then.1.i.368
	callq	gs_program_name
	movq	%rax, %r15
	callq	gs_revision_number
	movq	80(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	(%r14), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ebp, %ecx
	callq	errprintf
.LBB5_105:                              # %if.end.5.i.371
	testl	%ebp, %ebp
	movl	$-10, %r13d
	cmovsl	%ebp, %r13d
	jmp	.LBB5_150
.LBB5_135:                              # %if.end.891
	cmpl	$0, 272(%rsp)
	jne	.LBB5_137
# BB#136:                               # %if.then.893
	leaq	400(%r15), %rsi
	movsd	336(%rsp), %xmm0        # xmm0 = mem[0],zero
	subsd	320(%rsp), %xmm0
	movsd	%xmm0, 336(%rsp)
	movq	$0, 320(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	416(%rsp), %xmm0
	divsd	192(%rsp), %xmm0        # 8-byte Folded Reload
	subsd	352(%rsp), %xmm0
	xorpd	%xmm1, %xmm1
	movq	176(%rsp), %rdi         # 8-byte Reload
	callq	gs_distance_transform
	movq	392(%rsp), %rcx
	movl	$1, %eax
	movl	$1, %edx
	shll	%cl, %edx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%edx, %xmm0
	mulsd	400(%r15), %xmm0
	movsd	%xmm0, 400(%r15)
	shrq	$32, %rcx
	shll	%cl, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	mulsd	408(%r15), %xmm0
	movsd	%xmm0, 408(%r15)
.LBB5_137:                              # %if.end.924
	cmpl	$0, 148(%r14)
	je	.LBB5_139
# BB#138:                               # %if.end.929.thread
	movq	%r15, %rbx
	movq	136(%rsp), %rax         # 8-byte Reload
	movl	$1, 1848(%rax)
	movq	%r14, %rbp
	jmp	.LBB5_140
.LBB5_139:                              # %if.end.929
	movq	%r15, %rbx
	movq	136(%rsp), %rax         # 8-byte Reload
	cmpl	$3, 1848(%rax)
	movq	%r14, %rbp
	je	.LBB5_142
.LBB5_140:                              # %if.else.935
	xorl	%eax, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	cmpl	$0, 404(%rbp)
	je	.LBB5_142
# BB#141:                               # %if.then.938
	movq	136(%rsp), %rax         # 8-byte Reload
	movl	$1, 1848(%rax)
	xorl	%eax, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
.LBB5_142:                              # %if.end.941
	movq	392(%rbp), %rax
	cmpl	$0, 100(%rsp)           # 4-byte Folded Reload
	je	.LBB5_144
# BB#143:                               # %if.then.943
	leaq	316(%rsp), %rcx
	movq	%rcx, 8(%rsp)
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, (%rsp)
	leaq	400(%rsp), %rdx
	leaq	320(%rsp), %r9
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	608(%rsp), %rcx
	jmp	.LBB5_145
.LBB5_144:                              # %if.else.949
	leaq	316(%rsp), %rcx
	movq	%rcx, 8(%rsp)
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, (%rsp)
	leaq	400(%rsp), %rdx
	leaq	320(%rsp), %r9
	movl	$-1, %ecx
	movq	%rbx, %rdi
	movq	%r12, %rsi
.LBB5_145:                              # %if.end.955
	leaq	368(%rsp), %r8
	callq	*%rax
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB5_148
# BB#146:                               # %if.end.955
	cmpl	$1, 316(%rsp)
	jne	.LBB5_148
# BB#147:                               # %if.then.961
	movq	%r12, %rdi
	movq	136(%rsp), %rsi         # 8-byte Reload
	movq	%rbx, %rdx
	movq	%rbp, %rcx
	callq	gs_fapi_finish_render
	movl	%eax, %r13d
	movq	%rbp, %rdi
	callq	*552(%rbp)
.LBB5_148:                              # %if.end.965
	testl	%r13d, %r13d
	jns	.LBB5_150
# BB#149:                               # %if.then.971
	movq	%rbp, %rdi
	callq	*552(%rbp)
.LBB5_150:                              # %cleanup.977
	movl	%r13d, %eax
	addq	$536, %rsp              # imm = 0x218
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gs_fapi_do_char, .Lfunc_end5-gs_fapi_do_char
	.cfi_endproc

	.globl	gs_fapi_get_font_info
	.align	16, 0x90
	.type	gs_fapi_get_font_info,@function
gs_fapi_get_font_info:                  # @gs_fapi_get_font_info
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%r8, %r9
	movq	%rcx, %r8
	movl	%edx, %ecx
	movl	%esi, %edx
	movq	424(%rdi), %rdi
	movq	576(%rdi), %rax
	leaq	80(%rdi), %rsi
	jmpq	*%rax                   # TAILCALL
.Lfunc_end6:
	.size	gs_fapi_get_font_info, .Lfunc_end6-gs_fapi_get_font_info
	.cfi_endproc

	.globl	gs_fapi_passfont
	.align	16, 0x90
	.type	gs_fapi_passfont,@function
gs_fapi_passfont:                       # @gs_fapi_passfont
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp56:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp57:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp58:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp59:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp60:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp61:
	.cfi_def_cfa_offset 144
.Ltmp62:
	.cfi_offset %rbx, -56
.Ltmp63:
	.cfi_offset %r12, -48
.Ltmp64:
	.cfi_offset %r13, -40
.Ltmp65:
	.cfi_offset %r14, -32
.Ltmp66:
	.cfi_offset %r15, -24
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%r9, 40(%rsp)           # 8-byte Spill
	movq	%r8, %rbx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movl	%esi, 20(%rsp)          # 4-byte Spill
	movq	144(%rsp), %rcx
	movq	16(%rdi), %rax
	movq	%rdi, %r12
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	$0, 80(%rsp)
	movq	192(%rax), %rax
	movq	208(%rax), %r15
	movq	$0, (%rcx)
	testq	%rbx, %rbx
	je	.LBB7_1
# BB#2:                                 # %if.then
	movl	$49, %edi
	callq	gs_debug_c
	testl	%eax, %eax
	je	.LBB7_4
# BB#3:                                 # %if.then.3
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	movq	%rbx, %rsi
	callq	errprintf_nomem
.LBB7_4:                                # %while.cond.preheader
	movq	(%r15), %r14
	testq	%r14, %r14
	je	.LBB7_8
# BB#5:                                 # %land.rhs.lr.ph
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %rbp
	.align	16, 0x90
.LBB7_6:                                # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rax
	movq	8(%rax), %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB7_12
# BB#7:                                 # %while.body
                                        #   in Loop: Header=BB7_6 Depth=1
	movq	8(%r15), %r14
	addq	$8, %r15
	testq	%r14, %r14
	jne	.LBB7_6
.LBB7_8:                                # %if.then.9
	movl	$49, %edi
	callq	gs_debug_c
	testl	%eax, %eax
	movq	%r12, %rbx
	je	.LBB7_10
# BB#9:                                 # %if.then.12
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
.LBB7_10:                               # %if.end.14
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	192(%rax), %rax
	movq	208(%rax), %r15
	jmp	.LBB7_11
.LBB7_1:
	movq	%r12, %rbx
.LBB7_11:                               # %while.cond.23.preheader
	movq	(%r15), %r14
	xorl	%r13d, %r13d
	testq	%r14, %r14
	jne	.LBB7_15
	jmp	.LBB7_36
.LBB7_12:                               # %if.else
	movl	$49, %edi
	callq	gs_debug_c
	movl	$1, %r13d
	testl	%eax, %eax
	je	.LBB7_14
# BB#13:                                # %if.then.18
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
.LBB7_14:                               # %while.body.25.lr.ph
	movq	%r12, %rbx
.LBB7_15:                               # %while.body.25.lr.ph
	movl	%r13d, %r12d
	movl	$0, 52(%rsp)            # 4-byte Folded Spill
	.align	16, 0x90
.LBB7_16:                               # %while.body.25
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, 72(%rsp)
	movl	$0, 68(%rsp)
	movq	(%r14), %rax
	movq	8(%rax), %rsi
	movq	%r14, %rdi
	leaq	72(%rsp), %rdx
	leaq	68(%rsp), %rcx
	callq	*152(%rsp)
	movq	72(%rsp), %rsi
	movl	68(%rsp), %eax
	testq	%rsi, %rsi
	jne	.LBB7_17
# BB#18:                                # %while.body.25
                                        #   in Loop: Header=BB7_16 Depth=1
	testl	%eax, %eax
	jle	.LBB7_19
# BB#20:                                # %if.then.32
                                        #   in Loop: Header=BB7_16 Depth=1
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	200(%rcx), %rdi
	movl	$.L.str.4, %edx
	movl	%eax, %esi
	callq	*8(%rdi)
	movq	%rax, 72(%rsp)
	movl	$-25, %r13d
	testq	%rax, %rax
	je	.LBB7_36
# BB#21:                                # %if.end.37
                                        #   in Loop: Header=BB7_16 Depth=1
	movq	%rbx, %rbp
	movq	(%r14), %rax
	movq	8(%rax), %rsi
	movq	%r14, %rdi
	leaq	72(%rsp), %rdx
	leaq	68(%rsp), %rcx
	callq	*152(%rsp)
	movq	72(%rsp), %rsi
	movl	$1, 52(%rsp)            # 4-byte Folded Spill
	movl	68(%rsp), %eax
	jmp	.LBB7_22
	.align	16, 0x90
.LBB7_17:                               #   in Loop: Header=BB7_16 Depth=1
	movq	%rbx, %rbp
	jmp	.LBB7_22
	.align	16, 0x90
.LBB7_19:                               #   in Loop: Header=BB7_16 Depth=1
	movq	%rbx, %rbp
.LBB7_22:                               # %if.end.42
                                        #   in Loop: Header=BB7_16 Depth=1
	movq	%r14, %rdi
	movl	%eax, %edx
	callq	*440(%r14)
	movl	%eax, %ebx
	testl	%ebx, %ebx
	jne	.LBB7_23
# BB#26:                                # %if.end.47
                                        #   in Loop: Header=BB7_16 Depth=1
	cmpl	$0, 52(%rsp)            # 4-byte Folded Reload
	je	.LBB7_28
# BB#27:                                # %if.then.49
                                        #   in Loop: Header=BB7_16 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	200(%rax), %rdi
	movq	72(%rsp), %rsi
	movl	$.L.str.4, %edx
	callq	*24(%rdi)
.LBB7_28:                               # %if.end.53
                                        #   in Loop: Header=BB7_16 Depth=1
	movq	%rbp, %rbx
	movq	%r14, 424(%rbx)
	leaq	80(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	20(%rsp), %edx          # 4-byte Reload
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	32(%rsp), %r8           # 8-byte Reload
	movq	40(%rsp), %r9           # 8-byte Reload
	callq	gs_fapi_prepare_font
	movl	%eax, %r13d
	testl	%r13d, %r13d
	jns	.LBB7_29
# BB#30:                                # %if.end.60
                                        #   in Loop: Header=BB7_16 Depth=1
	movq	$0, 424(%rbx)
	cmpl	$1, %r12d
	jne	.LBB7_34
# BB#31:                                # %if.then.63
                                        #   in Loop: Header=BB7_16 Depth=1
	movl	$49, %edi
	callq	gs_debug_c
	testl	%eax, %eax
	je	.LBB7_33
# BB#32:                                # %if.then.66
                                        #   in Loop: Header=BB7_16 Depth=1
	movq	(%r14), %rax
	movq	8(%rax), %rsi
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	callq	errprintf_nomem
.LBB7_33:                               # %if.end.71
                                        #   in Loop: Header=BB7_16 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	192(%rax), %rax
	movq	208(%rax), %r15
	xorl	%r12d, %r12d
	jmp	.LBB7_35
	.align	16, 0x90
.LBB7_34:                               # %if.else.73
                                        #   in Loop: Header=BB7_16 Depth=1
	movq	(%r15), %r14
	addq	$8, %r15
.LBB7_35:                               # %cleanup
                                        #   in Loop: Header=BB7_16 Depth=1
	testq	%r14, %r14
	jne	.LBB7_16
	jmp	.LBB7_36
.LBB7_23:                               # %if.end.i
	movl	$49, %edi
	callq	gs_debug_c
	testl	%eax, %eax
	je	.LBB7_25
# BB#24:                                # %if.then.1.i
	callq	gs_program_name
	movq	%rax, %r15
	callq	gs_revision_number
	movq	56(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	(%r14), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%ebx, %ecx
	callq	errprintf
.LBB7_25:                               # %if.end.5.i
	testl	%ebx, %ebx
	movl	$-10, %r13d
	cmovsl	%ebx, %r13d
	jmp	.LBB7_36
.LBB7_29:                               # %if.then.56
	movq	(%r14), %rax
	movq	8(%rax), %rax
	movq	144(%rsp), %rcx
	movq	%rax, (%rcx)
	xorl	%r13d, %r13d
.LBB7_36:                               # %cleanup.78
	movl	%r13d, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gs_fapi_passfont, .Lfunc_end7-gs_fapi_passfont
	.cfi_endproc

	.globl	gs_fapi_get_server_list
	.align	16, 0x90
	.type	gs_fapi_get_server_list,@function
gs_fapi_get_server_list:                # @gs_fapi_get_server_list
	.cfi_startproc
# BB#0:                                 # %entry
	movq	192(%rdi), %rax
	movq	208(%rax), %rax
	retq
.Lfunc_end8:
	.size	gs_fapi_get_server_list, .Lfunc_end8-gs_fapi_get_server_list
	.cfi_endproc

	.globl	gs_fapi_available
	.align	16, 0x90
	.type	gs_fapi_available,@function
gs_fapi_available:                      # @gs_fapi_available
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp68:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp69:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp70:
	.cfi_def_cfa_offset 32
.Ltmp71:
	.cfi_offset %rbx, -24
.Ltmp72:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	testq	%r14, %r14
	movq	192(%rdi), %rax
	movq	208(%rax), %rbx
	je	.LBB9_8
# BB#1:                                 # %if.then
	testq	%rbx, %rbx
	je	.LBB9_7
# BB#2:                                 # %land.lhs.true.i.preheader
	movq	(%rbx), %rax
	jmp	.LBB9_3
	.align	16, 0x90
.LBB9_5:                                # %while.body.i
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	8(%rbx), %rax
	addq	$8, %rbx
.LBB9_3:                                # %land.lhs.true.i.preheader
                                        # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB9_7
# BB#4:                                 # %land.rhs.i
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	(%rax), %rax
	movq	8(%rax), %rdi
	movq	%r14, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB9_5
# BB#6:                                 # %land.lhs.true.5.i
	movl	$1, %eax
	cmpq	$0, (%rbx)
	jne	.LBB9_12
.LBB9_7:                                # %if.then.38.i
	xorl	%eax, %eax
	jmp	.LBB9_12
.LBB9_8:                                # %if.else
	testq	%rbx, %rbx
	je	.LBB9_9
# BB#10:                                # %land.rhs
	cmpq	$0, (%rbx)
	setne	%al
	jmp	.LBB9_11
.LBB9_9:
	xorl	%eax, %eax
.LBB9_11:                               # %land.end
	movzbl	%al, %eax
.LBB9_12:                               # %if.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end9:
	.size	gs_fapi_available, .Lfunc_end9-gs_fapi_available
	.cfi_endproc

	.globl	gs_fapi_find_server
	.align	16, 0x90
	.type	gs_fapi_find_server,@function
gs_fapi_find_server:                    # @gs_fapi_find_server
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp74:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp75:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp76:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp77:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp78:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp79:
	.cfi_def_cfa_offset 80
.Ltmp80:
	.cfi_offset %rbx, -56
.Ltmp81:
	.cfi_offset %r12, -48
.Ltmp82:
	.cfi_offset %r13, -40
.Ltmp83:
	.cfi_offset %r14, -32
.Ltmp84:
	.cfi_offset %r15, -24
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	192(%r15), %rax
	movq	208(%rax), %rbp
	movq	$0, 16(%rsp)
	movl	$0, 12(%rsp)
	movq	$0, (%r14)
	testq	%rbp, %rbp
	je	.LBB10_21
# BB#1:                                 # %land.lhs.true.preheader
	movq	(%rbp), %rax
	jmp	.LBB10_2
	.align	16, 0x90
.LBB10_4:                               # %while.body
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	8(%rbp), %rax
	addq	$8, %rbp
.LBB10_2:                               # %land.lhs.true.preheader
                                        # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB10_21
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	(%rax), %rax
	movq	8(%rax), %rdi
	movq	%rbx, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB10_4
# BB#5:                                 # %land.lhs.true.5
	movq	(%rbp), %rdi
	testq	%r12, %r12
	je	.LBB10_20
# BB#6:                                 # %land.lhs.true.5
	testq	%rdi, %rdi
	je	.LBB10_20
# BB#7:                                 # %if.then
	movq	(%rdi), %rax
	movq	8(%rax), %rsi
	leaq	16(%rsp), %rdx
	leaq	12(%rsp), %rcx
	callq	*%r12
	movq	16(%rsp), %rsi
	movl	12(%rsp), %eax
	testq	%rsi, %rsi
	jne	.LBB10_8
# BB#9:                                 # %if.then
	testl	%eax, %eax
	jle	.LBB10_10
# BB#11:                                # %if.then.15
	movq	200(%r15), %rdi
	movl	$.L.str.6, %edx
	movl	%eax, %esi
	callq	*8(%rdi)
	movq	%rax, %rcx
	movq	%rcx, 16(%rsp)
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB10_22
# BB#12:                                # %if.end
	movq	(%rbp), %rdi
	movq	(%rdi), %rax
	movq	8(%rax), %rsi
	leaq	16(%rsp), %rdx
	leaq	12(%rsp), %rcx
	callq	*%r12
	movq	16(%rsp), %rsi
	movb	$1, %al
	movl	%eax, 8(%rsp)           # 4-byte Spill
	movl	12(%rsp), %eax
	jmp	.LBB10_13
.LBB10_20:                              # %lor.lhs.false
	xorl	%eax, %eax
	testq	%rdi, %rdi
	jne	.LBB10_22
.LBB10_21:                              # %if.then.38
	movl	$-7, %eax
.LBB10_22:                              # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_8:
	movl	$0, 8(%rsp)             # 4-byte Folded Spill
	jmp	.LBB10_13
.LBB10_10:
	movl	$0, 8(%rsp)             # 4-byte Folded Spill
.LBB10_13:                              # %if.end.24
	movq	(%rbp), %r12
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	*440(%r12)
	movl	%eax, %r13d
	testl	%r13d, %r13d
	movl	$0, %ebx
	je	.LBB10_17
# BB#14:                                # %if.end.i
	movl	$49, %edi
	callq	gs_debug_c
	testl	%eax, %eax
	je	.LBB10_16
# BB#15:                                # %if.then.1.i
	callq	gs_program_name
	movq	%rax, %rbx
	callq	gs_revision_number
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	(%r12), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	movl	%r13d, %ecx
	callq	errprintf
.LBB10_16:                              # %if.end.5.i
	testl	%r13d, %r13d
	movl	$-10, %ebx
	cmovsl	%r13d, %ebx
.LBB10_17:                              # %gs_fapi_renderer_retcode.exit
	movl	8(%rsp), %eax           # 4-byte Reload
	testb	%al, %al
	je	.LBB10_19
# BB#18:                                # %if.then.31
	movq	200(%r15), %rdi
	movq	16(%rsp), %rsi
	movl	$.L.str.7, %edx
	callq	*24(%rdi)
.LBB10_19:                              # %if.end.35
	movq	(%rbp), %rax
	movq	%rax, (%r14)
	movl	%ebx, %eax
	jmp	.LBB10_22
.Lfunc_end10:
	.size	gs_fapi_find_server, .Lfunc_end10-gs_fapi_find_server
	.cfi_endproc

	.globl	gs_fapi_set_servers_client_data
	.align	16, 0x90
	.type	gs_fapi_set_servers_client_data,@function
gs_fapi_set_servers_client_data:        # @gs_fapi_set_servers_client_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp86:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp87:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp88:
	.cfi_def_cfa_offset 32
.Ltmp89:
	.cfi_offset %rbx, -32
.Ltmp90:
	.cfi_offset %r14, -24
.Ltmp91:
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	192(%rdi), %rax
	movq	208(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB11_6
# BB#1:                                 # %while.cond.preheader
	movq	(%rbx), %rax
	testq	%rax, %rax
	je	.LBB11_6
# BB#2:                                 # %while.body.lr.ph
	addq	$8, %rbx
	.align	16, 0x90
.LBB11_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	testq	%r15, %r15
	movq	%r14, 8(%rax)
	je	.LBB11_5
# BB#4:                                 # %if.then.3
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-8(%rbx), %rdi
	addq	$80, %rdi
	movl	$320, %edx              # imm = 0x140
	movq	%r15, %rsi
	callq	memcpy
.LBB11_5:                               # %if.end
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	(%rbx), %rax
	addq	$8, %rbx
	testq	%rax, %rax
	jne	.LBB11_3
.LBB11_6:                               # %if.end.4
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end11:
	.size	gs_fapi_set_servers_client_data, .Lfunc_end11-gs_fapi_set_servers_client_data
	.cfi_endproc

	.globl	gs_fapi_init
	.align	16, 0x90
	.type	gs_fapi_init,@function
gs_fapi_init:                           # @gs_fapi_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp93:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp94:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp95:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp96:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp97:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp98:
	.cfi_def_cfa_offset 80
.Ltmp99:
	.cfi_offset %rbx, -56
.Ltmp100:
	.cfi_offset %r12, -48
.Ltmp101:
	.cfi_offset %r13, -40
.Ltmp102:
	.cfi_offset %r14, -32
.Ltmp103:
	.cfi_offset %r15, -24
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movq	$-1, %rbx
	callq	gs_get_fapi_server_inits
	movq	%rax, %r12
	.align	16, 0x90
.LBB12_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, 8(%r12,%rbx,8)
	leaq	1(%rbx), %rbx
	jne	.LBB12_1
# BB#2:                                 # %while.end
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	200(%rax), %rdi
	leal	8(,%rbx,8), %esi
	movl	$.L.str.8, %edx
	callq	*8(%rdi)
	movq	%rax, %r15
	movl	$-25, %eax
	testq	%r15, %r15
	je	.LBB12_21
# BB#3:                                 # %for.cond.preheader
	leal	1(%rbx), %ecx
	xorl	%r13d, %r13d
	testl	%ebx, %ebx
	movl	$0, %eax
	jle	.LBB12_9
# BB#4:                                 # %for.body.lr.ph
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	movslq	%ebx, %rbp
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB12_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%r15,%r14), %rsi
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	*(%r12,%r13,8)
	testl	%eax, %eax
	jne	.LBB12_8
# BB#6:                                 # %if.end.14
                                        #   in Loop: Header=BB12_5 Depth=1
	movq	(%r15,%r13,8), %rax
	movq	$0, 8(%rax)
	incq	%r13
	addq	$8, %r14
	cmpq	%rbp, %r13
	jl	.LBB12_5
# BB#7:                                 # %for.cond.for.cond.18.preheader_crit_edge
	xorl	%eax, %eax
.LBB12_8:                               # %for.body.for.cond.18.preheader_crit_edge
	movl	12(%rsp), %ecx          # 4-byte Reload
.LBB12_9:                               # %for.cond.18.preheader
	cmpl	%ecx, %r13d
	jge	.LBB12_20
# BB#10:                                # %for.body.22.lr.ph
	movslq	%r13d, %rbp
	movl	%ebx, %ecx
	subl	%r13d, %ecx
	leaq	1(%rcx), %rdx
	movabsq	$8589934588, %r9        # imm = 0x1FFFFFFFC
	movq	%rdx, %rdi
	andq	%r9, %rdi
	andq	%r9, %rdx
	leaq	1(%rcx,%rbp), %r8
	je	.LBB12_17
# BB#11:                                # %vector.body.preheader
	movl	%ebx, %edx
	subl	%r13d, %edx
	incq	%rdx
	andq	%r9, %rdx
	addq	$-4, %rdx
	movl	%edx, %ecx
	shrl	$2, %ecx
	incl	%ecx
	testb	$3, %cl
	movq	%rbp, %rcx
	je	.LBB12_14
# BB#12:                                # %vector.body.prol.preheader
	movl	%ebx, %esi
	subl	%r13d, %esi
	incl	%esi
	andl	$12, %esi
	addl	$-4, %esi
	shrl	$2, %esi
	incl	%esi
	andl	$3, %esi
	negq	%rsi
	xorps	%xmm0, %xmm0
	movq	%rbp, %rcx
	.align	16, 0x90
.LBB12_13:                              # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%r15,%rcx,8)
	movups	%xmm0, 16(%r15,%rcx,8)
	addq	$4, %rcx
	incq	%rsi
	jne	.LBB12_13
.LBB12_14:                              # %vector.body.preheader.split
	addq	%rdi, %rbp
	cmpq	$12, %rdx
	jb	.LBB12_17
# BB#15:                                # %vector.body.preheader.split.split
	movl	%ebx, %esi
	subl	%r13d, %esi
	incq	%rsi
	andq	%r9, %rsi
	movslq	%r13d, %rdx
	addq	%rsi, %rdx
	subq	%rcx, %rdx
	leaq	112(%r15,%rcx,8), %rcx
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB12_16:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, -112(%rcx)
	movups	%xmm0, -96(%rcx)
	movups	%xmm0, -80(%rcx)
	movups	%xmm0, -64(%rcx)
	movups	%xmm0, -48(%rcx)
	movups	%xmm0, -32(%rcx)
	movups	%xmm0, -16(%rcx)
	movups	%xmm0, (%rcx)
	subq	$-128, %rcx
	addq	$-16, %rdx
	jne	.LBB12_16
.LBB12_17:                              # %middle.block
	cmpq	%rbp, %r8
	je	.LBB12_20
# BB#18:                                # %for.body.22.preheader
	leaq	(%r15,%rbp,8), %rcx
	incl	%ebx
	subl	%ebp, %ebx
	.align	16, 0x90
.LBB12_19:                              # %for.body.22
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, (%rcx)
	addq	$8, %rcx
	decl	%ebx
	jne	.LBB12_19
.LBB12_20:                              # %for.end.27
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	192(%rcx), %rcx
	movq	%r15, 208(%rcx)
.LBB12_21:                              # %cleanup.28
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gs_fapi_init, .Lfunc_end12-gs_fapi_init
	.cfi_endproc

	.globl	gs_fapi_finit
	.align	16, 0x90
	.type	gs_fapi_finit,@function
gs_fapi_finit:                          # @gs_fapi_finit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp105:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp106:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp107:
	.cfi_def_cfa_offset 32
.Ltmp108:
	.cfi_offset %rbx, -24
.Ltmp109:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	192(%r14), %rax
	movq	208(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB13_4
# BB#1:                                 # %land.rhs.preheader
	movq	(%rbx), %rax
	jmp	.LBB13_3
	.align	16, 0x90
.LBB13_2:                               # %while.body
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	(%rax), %rax
	movq	%rbx, %rdi
	callq	*16(%rax)
	movq	8(%rbx), %rax
	addq	$8, %rbx
.LBB13_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	jne	.LBB13_2
.LBB13_4:                               # %while.end
	movq	192(%r14), %rax
	movq	200(%r14), %rdi
	movq	208(%rax), %rsi
	movl	$.L.str.9, %edx
	callq	*24(%rdi)
	movq	192(%r14), %rax
	movq	$0, 208(%rax)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end13:
	.size	gs_fapi_finit, .Lfunc_end13-gs_fapi_finit
	.cfi_endproc

	.align	16, 0x90
	.type	add_closepath,@function
add_closepath:                          # @add_closepath
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp110:
	.cfi_def_cfa_offset 16
.Ltmp111:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rbx), %rax
	cmpl	$1, 20(%rax)
	jne	.LBB14_1
# BB#2:                                 # %if.then
	movl	$0, 20(%rax)
	movq	(%rax), %rdi
	xorl	%esi, %esi
	callq	gx_path_close_subpath_notes
	movl	%eax, 12(%rbx)
	popq	%rbx
	retq
.LBB14_1:                               # %entry.if.end_crit_edge
	movl	12(%rbx), %eax
	popq	%rbx
	retq
.Lfunc_end14:
	.size	add_closepath, .Lfunc_end14-add_closepath
	.cfi_endproc

	.align	16, 0x90
	.type	add_move,@function
add_move:                               # @add_move
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp112:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp113:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp114:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp115:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp116:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp117:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp118:
	.cfi_def_cfa_offset 64
.Ltmp119:
	.cfi_offset %rbx, -56
.Ltmp120:
	.cfi_offset %r12, -48
.Ltmp121:
	.cfi_offset %r13, -40
.Ltmp122:
	.cfi_offset %r14, -32
.Ltmp123:
	.cfi_offset %r15, -24
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	(%r14), %r12
	movl	8(%r14), %eax
	movq	%rsi, %rbp
	movb	%al, %cl
	shlq	%cl, %rbp
	movl	%eax, %edi
	negl	%edi
	movb	%dil, %cl
	sarq	%cl, %rsi
	movq	%rdx, %rbx
	movb	%al, %cl
	shlq	%cl, %rbx
	movb	%dil, %cl
	sarq	%cl, %rdx
	testl	%eax, %eax
	cmovgq	%rbp, %rsi
	movslq	8(%r12), %r13
	cmovgq	%rbx, %rdx
	addq	%rsi, %r13
	movslq	12(%r12), %rbp
	subq	%rdx, %rbp
	cmpq	$-2147483648, %r13      # imm = 0xFFFFFFFF80000000
	movq	$-2147483648, %rbx      # imm = 0xFFFFFFFF80000000
	movq	%r13, %r15
	cmovlq	%rbx, %r15
	cmpq	$-2147483648, %rbp      # imm = 0xFFFFFFFF80000000
	cmovgeq	%rbp, %rbx
	movl	20(%r12), %eax
	testl	%eax, %eax
	je	.LBB15_6
# BB#1:                                 # %land.lhs.true
	cmpl	$0, 16(%r12)
	je	.LBB15_6
# BB#2:                                 # %if.then.23
	cmpl	$1, %eax
	jne	.LBB15_3
# BB#4:                                 # %if.then.i
	movl	$0, 20(%r12)
	movq	(%r12), %rdi
	xorl	%esi, %esi
	callq	gx_path_close_subpath_notes
	leaq	12(%r14), %rcx
	movl	%eax, 12(%r14)
	jmp	.LBB15_5
.LBB15_3:                               # %entry.if.end_crit_edge.i
	leaq	12(%r14), %rcx
	movl	12(%r14), %eax
.LBB15_5:                               # %add_closepath.exit
	movl	%eax, (%rcx)
	testl	%eax, %eax
	js	.LBB15_7
.LBB15_6:                               # %if.end.30
	cmpq	$2147483647, %r13       # imm = 0x7FFFFFFF
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	cmovgl	%eax, %r15d
	cmpq	$2147483647, %rbp       # imm = 0x7FFFFFFF
	movl	$0, 20(%r12)
	movq	(%r12), %rdi
	cmovgl	%eax, %ebx
	movl	%r15d, %esi
	movl	%ebx, %edx
	callq	gx_path_add_point
	movl	%eax, 12(%r14)
.LBB15_7:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	add_move, .Lfunc_end15-add_move
	.cfi_endproc

	.align	16, 0x90
	.type	add_line,@function
add_line:                               # @add_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp125:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp126:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp127:
	.cfi_def_cfa_offset 32
.Ltmp128:
	.cfi_offset %rbx, -24
.Ltmp129:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	(%r14), %r8
	movl	8(%r14), %eax
	movq	%rsi, %r9
	movb	%al, %cl
	shlq	%cl, %r9
	movl	%eax, %edi
	negl	%edi
	movb	%dil, %cl
	sarq	%cl, %rsi
	movq	%rdx, %rbx
	movb	%al, %cl
	shlq	%cl, %rbx
	movb	%dil, %cl
	sarq	%cl, %rdx
	testl	%eax, %eax
	cmovgq	%r9, %rsi
	movslq	8(%r8), %rax
	cmovgq	%rbx, %rdx
	addq	%rsi, %rax
	movslq	12(%r8), %rcx
	subq	%rdx, %rcx
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movl	$-2147483648, %edx      # imm = 0xFFFFFFFF80000000
	movl	%eax, %esi
	cmovll	%edx, %esi
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	cmovgl	%eax, %esi
	cmpq	$-2147483648, %rcx      # imm = 0xFFFFFFFF80000000
	cmovgel	%ecx, %edx
	cmpq	$2147483647, %rcx       # imm = 0x7FFFFFFF
	movl	$1, 20(%r8)
	movq	(%r8), %rdi
	cmovgl	%eax, %edx
	xorl	%ecx, %ecx
	callq	gx_path_add_line_notes
	movl	%eax, 12(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end16:
	.size	add_line, .Lfunc_end16-add_line
	.cfi_endproc

	.align	16, 0x90
	.type	add_curve,@function
add_curve:                              # @add_curve
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp130:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp131:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp132:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp133:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp134:
	.cfi_def_cfa_offset 64
.Ltmp135:
	.cfi_offset %rbx, -40
.Ltmp136:
	.cfi_offset %r12, -32
.Ltmp137:
	.cfi_offset %r14, -24
.Ltmp138:
	.cfi_offset %r15, -16
	movq	%rcx, %r15
	movq	%rdi, %r14
	movq	64(%rsp), %r10
	movl	8(%r14), %edi
	movl	%edi, %ebx
	negl	%ebx
	movq	%r9, %r11
	movb	%dil, %cl
	shlq	%cl, %r11
	movq	%r10, %rax
	movb	%dil, %cl
	shlq	%cl, %rax
	movb	%bl, %cl
	sarq	%cl, %r10
	testl	%edi, %edi
	cmovgq	%rax, %r10
	movb	%bl, %cl
	sarq	%cl, %r9
	testl	%edi, %edi
	cmovgq	%r11, %r9
	movq	%r8, %rax
	movb	%dil, %cl
	shlq	%cl, %rax
	movb	%bl, %cl
	sarq	%cl, %r8
	testl	%edi, %edi
	cmovgq	%rax, %r8
	movq	%r15, %rax
	movb	%dil, %cl
	shlq	%cl, %rax
	movb	%bl, %cl
	sarq	%cl, %r15
	testl	%edi, %edi
	cmovgq	%rax, %r15
	movq	%rdx, %rax
	movb	%dil, %cl
	shlq	%cl, %rax
	movb	%bl, %cl
	sarq	%cl, %rdx
	testl	%edi, %edi
	cmovgq	%rax, %rdx
	movq	%rsi, %rax
	movb	%dil, %cl
	shlq	%cl, %rax
	movb	%bl, %cl
	sarq	%cl, %rsi
	testl	%edi, %edi
	movq	(%r14), %r11
	cmovgq	%rax, %rsi
	movslq	8(%r11), %rcx
	addq	%rcx, %rsi
	movslq	12(%r11), %r12
	movq	%r12, %rdi
	subq	%rdx, %rdi
	addq	%rcx, %r15
	movq	%r12, %rax
	subq	%r8, %rax
	addq	%rcx, %r9
	subq	%r10, %r12
	cmpq	$-2147483648, %rsi      # imm = 0xFFFFFFFF80000000
	movl	$-2147483648, %ebx      # imm = 0xFFFFFFFF80000000
	movl	%esi, %r10d
	cmovll	%ebx, %r10d
	cmpq	$2147483647, %rsi       # imm = 0x7FFFFFFF
	movl	$2147483647, %esi       # imm = 0x7FFFFFFF
	cmovgl	%esi, %r10d
	cmpq	$-2147483648, %rdi      # imm = 0xFFFFFFFF80000000
	movl	%edi, %edx
	cmovll	%ebx, %edx
	cmpq	$2147483647, %rdi       # imm = 0x7FFFFFFF
	cmovgl	%esi, %edx
	cmpq	$-2147483648, %r15      # imm = 0xFFFFFFFF80000000
	movl	%r15d, %ecx
	cmovll	%ebx, %ecx
	cmpq	$2147483647, %r15       # imm = 0x7FFFFFFF
	cmovgl	%esi, %ecx
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movl	%eax, %r8d
	cmovll	%ebx, %r8d
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	cmovgl	%esi, %r8d
	cmpq	$-2147483648, %r9       # imm = 0xFFFFFFFF80000000
	movl	%r9d, %eax
	cmovll	%ebx, %eax
	cmpq	$2147483647, %r9        # imm = 0x7FFFFFFF
	cmovgl	%esi, %eax
	cmpq	$-2147483648, %r12      # imm = 0xFFFFFFFF80000000
	cmovgel	%r12d, %ebx
	cmpq	$2147483647, %r12       # imm = 0x7FFFFFFF
	movl	$1, 20(%r11)
	movq	(%r11), %rdi
	cmovgl	%esi, %ebx
	movl	%ebx, (%rsp)
	movl	$0, 8(%rsp)
	movl	%r10d, %esi
	movl	%eax, %r9d
	callq	gx_path_add_curve_notes
	movl	%eax, 12(%r14)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end17:
	.size	add_curve, .Lfunc_end17-add_curve
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Ignoring gs_notify_register() failure for FAPI font....."
	.size	.L.str, 57

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Requested FAPI plugin: %s "
	.size	.L.str.1, 27

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"not found. Falling back to normal plugin search\n"
	.size	.L.str.2, 49

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"found.\n"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gs_fapi_passfont server params"
	.size	.L.str.4, 31

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Requested FAPI plugin %s failed, searching for alternative plugin\n"
	.size	.L.str.5, 67

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gs_fapi_find_server server params"
	.size	.L.str.6, 34

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gs_fapi_find_server: server_param"
	.size	.L.str.7, 34

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gs_fapi_init"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gs_fapi_finit: mem->gs_lib_ctx->fapi_servers"
	.size	.L.str.9, 45

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Error: Font Renderer Plugin ( %s ) return code = %d\n"
	.size	.L.str.10, 53

	.type	path_interface_stub,@object # @path_interface_stub
	.section	.rodata,"a",@progbits
	.align	8
path_interface_stub:
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	add_move
	.quad	add_line
	.quad	add_curve
	.quad	add_closepath
	.size	path_interface_stub, 48

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"fapi_copy_mono"
	.size	.L.str.11, 15

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"fapi_finish_render_aux"
	.size	.L.str.12, 23

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"image_char(image_enum)"
	.size	.L.str.13, 23

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"fapi_image_uncached_glyph(bold_line)"
	.size	.L.str.14, 37

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"fapi_image_uncached_glyph(bold_lines)"
	.size	.L.str.15, 38

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"fapi_image_uncached_glyph(line)"
	.size	.L.str.16, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
