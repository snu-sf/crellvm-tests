	.text
	.file	"seexec.bc"
	.align	16, 0x90
	.type	s_exE_process,@function
s_exE_process:                          # @s_exE_process
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
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	(%rbx), %rsi
	movq	8(%r14), %rax
	movl	8(%rbx), %ecx
	subl	%esi, %ecx
	movl	16(%r14), %ebp
	subl	%eax, %ebp
	cmpl	%ebp, %ecx
	seta	%dl
	cmovbel	%ecx, %ebp
	movzbl	%dl, %r15d
	incq	%rax
	incq	%rsi
	leaq	108(%rdi), %rcx
	movq	%rax, %rdi
	movl	%ebp, %edx
	callq	gs_type1_encrypt
	movl	%ebp, %eax
	addq	%rax, (%rbx)
	addq	%rax, 8(%r14)
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	s_exE_process, .Lfunc_end0-s_exE_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_exD_init,@function
s_exD_init:                             # @s_exD_init
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-1, 132(%rdi)
	movl	116(%rdi), %eax
	movl	%eax, 144(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	s_exD_init, .Lfunc_end1-s_exD_init
	.cfi_endproc

	.align	16, 0x90
	.type	s_exD_process,@function
s_exD_process:                          # @s_exD_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp10:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp11:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp12:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp13:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp15:
	.cfi_def_cfa_offset 112
.Ltmp16:
	.cfi_offset %rbx, -56
.Ltmp17:
	.cfi_offset %r12, -48
.Ltmp18:
	.cfi_offset %r13, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movq	%rdi, %r8
	movq	(%r12), %rsi
	movq	8(%rbx), %r9
	movslq	144(%r8), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	8(%r12), %edx
	subl	%esi, %edx
	movl	16(%rbx), %eax
	subl	%r9d, %eax
	cmpl	%edx, %eax
	setl	%r10b
	movl	%edx, %ebp
	cmovlel	%eax, %ebp
	movl	112(%r8), %edi
	testl	%edi, %edi
	js	.LBB2_1
# BB#19:                                # %if.end.79
	jne	.LBB2_20
	jmp	.LBB2_21
.LBB2_1:                                # %if.then
	cmpq	$0, 120(%r8)
	jne	.LBB2_11
# BB#2:                                 # %land.lhs.true
	cmpl	$0, 128(%r8)
	jne	.LBB2_11
# BB#3:                                 # %for.cond.preheader
	xorl	%edi, %edi
	testl	%edx, %edx
	je	.LBB2_10
# BB#4:
	movq	%r8, %r14
	movabsq	$4294977024, %r8        # imm = 0x100002600
.LBB2_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	1(%rsi), %ebp
	cmpq	$32, %rbp
	ja	.LBB2_6
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB2_5 Depth=1
	btq	%rbp, %r8
	jae	.LBB2_6
# BB#8:                                 # %for.inc.critedge
                                        #   in Loop: Header=BB2_5 Depth=1
	incq	%rsi
	decl	%edx
	jne	.LBB2_5
	jmp	.LBB2_9
.LBB2_6:
	movl	%edx, %edi
.LBB2_9:
	movq	%r14, %r8
.LBB2_10:                               # %for.end
	movq	%rsi, (%r12)
	cmpl	%edi, %eax
	cmovgl	%edi, %eax
	movl	%eax, %ebp
	movl	%edi, %edx
.LBB2_11:                               # %if.end.38
	testl	%ecx, %ecx
	jne	.LBB2_13
# BB#12:                                # %if.end.38
	xorl	%r15d, %r15d
	cmpl	$8, %edx
	jl	.LBB2_40
.LBB2_13:                               # %if.end.44
	movl	$0, 112(%r8)
	testl	%edx, %edx
	jle	.LBB2_21
# BB#14:                                # %for.body.55.lr.ph
	cmpl	$9, %edx
	movl	$8, %ecx
	cmovll	%edx, %ecx
	incl	%ecx
	movslq	%ecx, %rcx
	.align	16, 0x90
.LBB2_16:                               # %for.body.55
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rsi,%rcx), %edx
	movzbl	scan_char_array+4(%rdx), %edx
	cmpl	$16, %edx
	jb	.LBB2_15
# BB#17:                                # %for.body.55
                                        #   in Loop: Header=BB2_16 Depth=1
	movzbl	%dl, %edx
	cmpl	$102, %edx
	jne	.LBB2_18
.LBB2_15:                               # %for.cond.52
                                        #   in Loop: Header=BB2_16 Depth=1
	decq	%rcx
	cmpq	$2, %rcx
	jge	.LBB2_16
.LBB2_21:                               # %if.else
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	leaq	132(%r8), %r13
	movq	136(%r8), %rcx
	.align	16, 0x90
.LBB2_22:                               # %hp
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%r12), %rax
	movq	%rax, 48(%rsp)
	movups	(%r12), %xmm0
	movaps	%xmm0, 32(%rsp)
	movq	32(%rsp), %rbp
	movq	40(%rsp), %rax
	subq	%rbp, %rax
	cmpq	%rcx, %rax
	jle	.LBB2_24
# BB#23:                                # %if.then.92
                                        #   in Loop: Header=BB2_22 Depth=1
	leaq	(%rcx,%rbp), %rax
	movq	%rax, 40(%rsp)
.LBB2_24:                               # %if.end.97
                                        #   in Loop: Header=BB2_22 Depth=1
	movq	%r9, %r15
	movl	$2, %ecx
	cmpl	$0, 148(%r8)
	movq	%r8, %r14
	jne	.LBB2_26
# BB#25:                                # %select.mid
                                        #   in Loop: Header=BB2_22 Depth=1
	movl	$3, %ecx
.LBB2_26:                               # %select.end
                                        #   in Loop: Header=BB2_22 Depth=1
	leaq	32(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	s_hex_process
	cmpl	$2, %eax
	sete	%cl
	movzbl	%cl, %ecx
	movl	$1, %edx
	cmovel	%edx, %eax
	movl	%ecx, 148(%r14)
	movq	32(%rsp), %rcx
	movq	%rcx, (%r12)
	subq	%rcx, %rbp
	movq	%rbp, %rcx
	addq	136(%r14), %rcx
	movq	%rcx, 136(%r14)
	movq	%r14, %r8
	jne	.LBB2_28
# BB#27:                                # %if.then.117
                                        #   in Loop: Header=BB2_22 Depth=1
	movl	$1, 112(%r8)
.LBB2_28:                               # %if.end.119
                                        #   in Loop: Header=BB2_22 Depth=1
	movl	8(%rbx), %ebp
	movq	%r15, %r9
	subl	%r9d, %ebp
	testl	%eax, %eax
	movq	24(%rsp), %rsi          # 8-byte Reload
	jns	.LBB2_29
# BB#30:                                # %land.lhs.true.127
                                        #   in Loop: Header=BB2_22 Depth=1
	cmpl	$0, (%r13)
	jns	.LBB2_31
# BB#32:                                # %if.then.131
                                        #   in Loop: Header=BB2_22 Depth=1
	xorl	%r15d, %r15d
	testl	%ebp, %ebp
	jne	.LBB2_34
# BB#33:                                # %if.else.135
                                        #   in Loop: Header=BB2_22 Depth=1
	movzbl	(%rsi), %esi
	xorl	%ebp, %ebp
	cmpl	$37, %esi
	movl	%eax, %r15d
	je	.LBB2_22
	jmp	.LBB2_34
.LBB2_29:
	movl	%eax, %r15d
	jmp	.LBB2_34
.LBB2_31:
	movl	%eax, %r15d
.LBB2_34:                               # %if.end.142
	movq	%r9, %rsi
	jmp	.LBB2_35
.LBB2_18:                               # %if.end.79.thread
	movl	$1, 112(%r8)
.LBB2_20:                               # %if.then.82
	movzbl	%r10b, %r15d
	movslq	%ebp, %rax
	leaq	(%rax,%rsi), %rax
	movq	%rax, (%r12)
.LBB2_35:                               # %if.end.143
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	leaq	1(%r9), %r13
	incq	%rsi
	leaq	108(%r8), %r12
	movq	16(%rsp), %rbx          # 8-byte Reload
	testl	%ebx, %ebx
	je	.LBB2_38
# BB#36:                                # %if.end.143
	cmpl	%ebx, %ebp
	jg	.LBB2_38
# BB#37:                                # %if.then.149
	movq	%r13, %rdi
	movl	%ebp, %edx
	movq	%r12, %rcx
	movq	%r9, %r14
	movq	%r8, %rbx
	callq	gs_type1_decrypt
	movq	%rbx, %rsi
	movq	%r14, %rdx
	movl	144(%rsi), %eax
	subl	%ebp, %eax
	xorl	%r15d, %r15d
	xorl	%ecx, %ecx
	jmp	.LBB2_39
.LBB2_38:                               # %if.else.155
	movq	%r13, %rdi
	movl	%ebx, %edx
	movq	%r12, %rcx
	movq	%r9, 24(%rsp)           # 8-byte Spill
	movq	%rsi, %r14
	movq	%r8, (%rsp)             # 8-byte Spill
	callq	gs_type1_decrypt
	subl	%ebx, %ebp
	addq	%rbx, %r14
	movq	%r13, %rdi
	movq	%r14, %rsi
	movl	%ebp, %edx
	movq	%r12, %rcx
	callq	gs_type1_decrypt
	movq	(%rsp), %rsi            # 8-byte Reload
	movq	24(%rsp), %rdx          # 8-byte Reload
	movslq	%ebp, %rcx
	xorl	%eax, %eax
.LBB2_39:                               # %if.end.168
	movq	8(%rsp), %rbx           # 8-byte Reload
	movl	%eax, 144(%rsi)
	addq	%rcx, %rdx
	movq	%rdx, 8(%rbx)
.LBB2_40:                               # %cleanup.172
	movl	%r15d, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	s_exD_process, .Lfunc_end2-s_exD_process
	.cfi_endproc

	.align	16, 0x90
	.type	s_exD_set_defaults,@function
s_exD_set_defaults:                     # @s_exD_set_defaults
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-1, 112(%rdi)
	movl	$4, 116(%rdi)
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, 136(%rdi)
	movq	$0, 120(%rdi)
	movl	$0, 128(%rdi)
	movl	$1, 148(%rdi)
	retq
.Lfunc_end3:
	.size	s_exD_set_defaults, .Lfunc_end3-s_exD_set_defaults
	.cfi_endproc

	.type	st_exE_state,@object    # @st_exE_state
	.section	.rodata,"a",@progbits
	.align	8
st_exE_state:
	.long	112                     # 0x70
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_exE_state, 64

	.type	s_exE_template,@object  # @s_exE_template
	.globl	s_exE_template
	.align	8
s_exE_template:
	.quad	st_exE_state
	.quad	0
	.quad	s_exE_process
	.long	1                       # 0x1
	.long	2                       # 0x2
	.quad	0
	.quad	0
	.quad	0
	.size	s_exE_template, 56

	.type	st_exD_state,@object    # @st_exD_state
	.align	8
st_exD_state:
	.long	152                     # 0x98
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	exd_reloc_ptrs
	.size	st_exD_state, 64

	.type	s_exD_template,@object  # @s_exD_template
	.globl	s_exD_template
	.align	8
s_exD_template:
	.quad	st_exD_state
	.quad	s_exD_init
	.quad	s_exD_process
	.long	8                       # 0x8
	.long	132                     # 0x84
	.quad	0
	.quad	s_exD_set_defaults
	.quad	0
	.size	s_exD_template, 56

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"eexecEncode state"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"eexecDecode state"
	.size	.L.str.1, 18

	.type	exd_reloc_ptrs,@object  # @exd_reloc_ptrs
	.section	.rodata,"a",@progbits
	.align	8
exd_reloc_ptrs:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	exd_enum_ptrs
	.size	exd_reloc_ptrs, 24

	.type	exd_enum_ptrs,@object   # @exd_enum_ptrs
	.align	2
exd_enum_ptrs:
	.short	0                       # 0x0
	.short	120                     # 0x78
	.size	exd_enum_ptrs, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
