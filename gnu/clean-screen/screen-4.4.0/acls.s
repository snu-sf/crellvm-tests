	.text
	.file	"acls.bc"
	.globl	FindUserPtr
	.align	16, 0x90
	.type	FindUserPtr,@function
FindUserPtr:                            # @FindUserPtr
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
	subq	$16, %rsp
	movabsq	$users, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, -16(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_4
# BB#3:                                 # %if.then
	jmp	.LBB0_6
.LBB0_4:                                # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_1
.LBB0_6:                                # %for.end
	jmp	.LBB0_7
.LBB0_7:                                # %do.body
	jmp	.LBB0_8
.LBB0_8:                                # %do.end
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	FindUserPtr, .Lfunc_end0-FindUserPtr
	.cfi_endproc

	.globl	UserAdd
	.align	16, 0x90
	.type	UserAdd,@function
UserAdd:                                # @UserAdd
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	FindUserPtr
	movq	%rax, -32(%rbp)
.LBB1_2:                                # %if.end
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#3:                                 # %if.then.2
	cmpq	$0, -24(%rbp)
	je	.LBB1_5
# BB#4:                                 # %if.then.4
	movq	-24(%rbp), %rdi
	callq	SaveStr
	movq	-32(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rax, 272(%rdi)
.LBB1_5:                                # %if.end.6
	movl	$1, -4(%rbp)
	jmp	.LBB1_72
.LBB1_6:                                # %if.end.7
	movq	-16(%rbp), %rsi
	movl	$.L.str, %eax
	movl	%eax, %edi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB1_8
# BB#7:                                 # %if.then.10
	movl	$1, %eax
	movl	%eax, %edi
	movl	$360, %eax              # imm = 0x168
	movl	%eax, %esi
	callq	calloc
	movq	-32(%rbp), %rsi
	movq	%rax, (%rsi)
.LBB1_8:                                # %if.end.12
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB1_10
# BB#9:                                 # %if.then.14
	movl	$-1, -4(%rbp)
	jmp	.LBB1_72
.LBB1_10:                               # %if.end.15
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	$0, 304(%rcx)
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	$0, 312(%rcx)
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	$0, 316(%rcx)
	movl	DefaultEsc, %eax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	%eax, 292(%rcx)
	movl	DefaultMetaEsc, %eax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	%eax, 296(%rcx)
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	addq	$8, %rcx
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	callq	strncpy
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	$0, 272(%rcx)
	cmpq	$0, -24(%rbp)
	movq	%rax, -72(%rbp)         # 8-byte Spill
	je	.LBB1_12
# BB#11:                                # %if.then.21
	movq	-24(%rbp), %rdi
	callq	SaveStr
	movq	-32(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rax, 272(%rdi)
.LBB1_12:                               # %if.end.24
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 272(%rax)
	jne	.LBB1_14
# BB#13:                                # %if.then.27
	movabsq	$NullStr, %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, 272(%rcx)
.LBB1_14:                               # %if.end.29
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	$-1, 284(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	$-1, 288(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 352(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, 320(%rax)
.LBB1_15:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	320(%rax), %ecx
	cmpl	maxusercount, %ecx
	jge	.LBB1_20
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB1_15 Depth=1
	movl	$128, %eax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	320(%rcx), %edx
	andl	$7, %edx
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movl	320(%rsi), %edx
	sarl	$3, %edx
	movslq	%edx, %rsi
	movq	userbits, %rdi
	movzbl	(%rdi,%rsi), %edx
	andl	%edx, %eax
	cmpl	$0, %eax
	jne	.LBB1_18
# BB#17:                                # %if.then.36
	jmp	.LBB1_20
.LBB1_18:                               # %if.end.37
                                        #   in Loop: Header=BB1_15 Depth=1
	jmp	.LBB1_19
.LBB1_19:                               # %for.inc
                                        #   in Loop: Header=BB1_15 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	320(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 320(%rax)
	jmp	.LBB1_15
.LBB1_20:                               # %for.end
	jmp	.LBB1_21
.LBB1_21:                               # %do.body
	jmp	.LBB1_22
.LBB1_22:                               # %do.end
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	320(%rax), %ecx
	cmpl	maxusercount, %ecx
	jne	.LBB1_61
# BB#23:                                # %if.then.42
	jmp	.LBB1_24
.LBB1_24:                               # %do.body.44
	jmp	.LBB1_25
.LBB1_25:                               # %do.end.45
	movabsq	$userbits, %rdi
	movl	$8, %edx
	xorl	%ecx, %ecx
	movl	maxusercount, %esi
	callq	GrowBitfield
	cmpl	$0, %eax
	je	.LBB1_27
# BB#26:                                # %if.then.48
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movl	$-1, -4(%rbp)
	jmp	.LBB1_72
.LBB1_27:                               # %if.end.49
	movl	$0, -40(%rbp)
.LBB1_28:                               # %for.cond.50
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_30 Depth 2
	cmpl	$187, -40(%rbp)
	jg	.LBB1_37
# BB#29:                                # %for.body.53
                                        #   in Loop: Header=BB1_28 Depth=1
	movl	$0, -60(%rbp)
.LBB1_30:                               # %for.cond.54
                                        #   Parent Loop BB1_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$1, -60(%rbp)
	jge	.LBB1_35
# BB#31:                                # %for.body.57
                                        #   in Loop: Header=BB1_30 Depth=2
	movl	$8, %edx
	movabsq	$comms, %rax
	movslq	-60(%rbp), %rcx
	movslq	-40(%rbp), %rsi
	imulq	$24, %rsi, %rsi
	addq	%rsi, %rax
	addq	$16, %rax
	shlq	$3, %rcx
	addq	%rcx, %rax
	movl	maxusercount, %esi
	movslq	-60(%rbp), %rcx
	movsbl	default_c_bit(,%rcx), %ecx
	movq	%rax, %rdi
	callq	GrowBitfield
	cmpl	$0, %eax
	je	.LBB1_33
# BB#32:                                # %if.then.67
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movl	$-1, -4(%rbp)
	jmp	.LBB1_72
.LBB1_33:                               # %if.end.68
                                        #   in Loop: Header=BB1_30 Depth=2
	jmp	.LBB1_34
.LBB1_34:                               # %for.inc.69
                                        #   in Loop: Header=BB1_30 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB1_30
.LBB1_35:                               # %for.end.71
                                        #   in Loop: Header=BB1_28 Depth=1
	jmp	.LBB1_36
.LBB1_36:                               # %for.inc.72
                                        #   in Loop: Header=BB1_28 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB1_28
.LBB1_37:                               # %for.end.74
	movq	users, %rax
	movq	%rax, -56(%rbp)
.LBB1_38:                               # %for.cond.75
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_40 Depth 2
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB1_47
# BB#39:                                # %for.body.78
                                        #   in Loop: Header=BB1_38 Depth=1
	movl	$0, -40(%rbp)
.LBB1_40:                               # %for.cond.79
                                        #   Parent Loop BB1_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -40(%rbp)
	jge	.LBB1_45
# BB#41:                                # %for.body.82
                                        #   in Loop: Header=BB1_40 Depth=2
	movl	$8, %edx
	movslq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	addq	$328, %rcx              # imm = 0x148
	shlq	$3, %rax
	addq	%rax, %rcx
	movl	maxusercount, %esi
	movslq	-40(%rbp), %rax
	movsbl	default_w_bit(,%rax), %edi
	movl	%edi, -76(%rbp)         # 4-byte Spill
	movq	%rcx, %rdi
	movl	-76(%rbp), %ecx         # 4-byte Reload
	callq	GrowBitfield
	cmpl	$0, %eax
	je	.LBB1_43
# BB#42:                                # %if.then.90
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movl	$-1, -4(%rbp)
	jmp	.LBB1_72
.LBB1_43:                               # %if.end.91
                                        #   in Loop: Header=BB1_40 Depth=2
	jmp	.LBB1_44
.LBB1_44:                               # %for.inc.92
                                        #   in Loop: Header=BB1_40 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB1_40
.LBB1_45:                               # %for.end.94
                                        #   in Loop: Header=BB1_38 Depth=1
	jmp	.LBB1_46
.LBB1_46:                               # %for.inc.95
                                        #   in Loop: Header=BB1_38 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB1_38
.LBB1_47:                               # %for.end.96
	movq	windows, %rax
	movq	%rax, -48(%rbp)
.LBB1_48:                               # %for.cond.97
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_50 Depth 2
	cmpq	$0, -48(%rbp)
	je	.LBB1_60
# BB#49:                                # %for.body.99
                                        #   in Loop: Header=BB1_48 Depth=1
	movl	$0, -40(%rbp)
.LBB1_50:                               # %for.cond.100
                                        #   Parent Loop BB1_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -40(%rbp)
	jge	.LBB1_55
# BB#51:                                # %for.body.103
                                        #   in Loop: Header=BB1_50 Depth=2
	movl	$8, %edx
	movslq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	addq	$9816, %rcx             # imm = 0x2658
	shlq	$3, %rax
	addq	%rax, %rcx
	movl	maxusercount, %esi
	movslq	-40(%rbp), %rax
	movsbl	default_w_bit(,%rax), %edi
	movl	%edi, -80(%rbp)         # 4-byte Spill
	movq	%rcx, %rdi
	movl	-80(%rbp), %ecx         # 4-byte Reload
	callq	GrowBitfield
	cmpl	$0, %eax
	je	.LBB1_53
# BB#52:                                # %if.then.111
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movl	$-1, -4(%rbp)
	jmp	.LBB1_72
.LBB1_53:                               # %if.end.112
                                        #   in Loop: Header=BB1_50 Depth=2
	jmp	.LBB1_54
.LBB1_54:                               # %for.inc.113
                                        #   in Loop: Header=BB1_50 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB1_50
.LBB1_55:                               # %for.end.115
                                        #   in Loop: Header=BB1_48 Depth=1
	movl	$8, %edx
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rax
	addq	$9848, %rax             # imm = 0x2678
	movl	maxusercount, %esi
	movq	%rax, %rdi
	callq	GrowBitfield
	cmpl	$0, %eax
	jne	.LBB1_57
# BB#56:                                # %lor.lhs.false
                                        #   in Loop: Header=BB1_48 Depth=1
	movl	$8, %edx
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rax
	addq	$9840, %rax             # imm = 0x2670
	movl	maxusercount, %esi
	movq	%rax, %rdi
	callq	GrowBitfield
	cmpl	$0, %eax
	je	.LBB1_58
.LBB1_57:                               # %if.then.120
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movl	$-1, -4(%rbp)
	jmp	.LBB1_72
.LBB1_58:                               # %if.end.121
                                        #   in Loop: Header=BB1_48 Depth=1
	jmp	.LBB1_59
.LBB1_59:                               # %for.inc.122
                                        #   in Loop: Header=BB1_48 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB1_48
.LBB1_60:                               # %for.end.123
	movl	maxusercount, %eax
	addl	$8, %eax
	movl	%eax, maxusercount
.LBB1_61:                               # %if.end.124
	movl	$128, %eax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	320(%rcx), %edx
	andl	$7, %edx
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movl	320(%rsi), %edx
	sarl	$3, %edx
	movslq	%edx, %rsi
	movq	userbits, %rdi
	movzbl	(%rdi,%rsi), %edx
	orl	%eax, %edx
	movb	%dl, %cl
	movb	%cl, (%rdi,%rsi)
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	cmpl	$0, 320(%rsi)
	jne	.LBB1_63
# BB#62:                                # %if.then.137
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.1, %rdx
	movabsq	$.L.str.2, %rcx
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	callq	AclSetPerm
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB1_63:                               # %if.end.139
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	$.L.str.3, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_65
# BB#64:                                # %if.then.144
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.4, %rdx
	movabsq	$.L.str.2, %rcx
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	callq	AclSetPerm
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.5, %rdx
	movabsq	$.L.str.6, %rcx
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	AclSetPerm
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.5, %rdx
	movabsq	$.L.str.7, %rcx
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	AclSetPerm
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.5, %rdx
	movabsq	$.L.str.8, %rcx
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	AclSetPerm
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.5, %rdx
	movabsq	$.L.str.9, %rcx
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	AclSetPerm
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB1_65:                               # %if.end.150
	movl	$0, -36(%rbp)
.LBB1_66:                               # %for.cond.151
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -36(%rbp)
	jge	.LBB1_71
# BB#67:                                # %for.body.154
                                        #   in Loop: Header=BB1_66 Depth=1
	xorl	%esi, %esi
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	addq	$328, %rcx              # imm = 0x148
	shlq	$3, %rax
	addq	%rax, %rcx
	movl	maxusercount, %edx
	movslq	-36(%rbp), %rax
	movsbl	default_w_bit(,%rax), %edi
	movl	%edi, -108(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	movl	-108(%rbp), %ecx        # 4-byte Reload
	callq	GrowBitfield
	cmpl	$0, %eax
	je	.LBB1_69
# BB#68:                                # %if.then.163
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movl	$-1, -4(%rbp)
	jmp	.LBB1_72
.LBB1_69:                               # %if.end.164
                                        #   in Loop: Header=BB1_66 Depth=1
	movl	$128, %eax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	320(%rcx), %edx
	andl	$7, %edx
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movl	320(%rsi), %edx
	sarl	$3, %edx
	movslq	%edx, %rsi
	movslq	-36(%rbp), %rdi
	movq	-32(%rbp), %r8
	movq	(%r8), %r8
	movq	328(%r8,%rdi,8), %rdi
	movzbl	(%rdi,%rsi), %edx
	orl	%eax, %edx
	movb	%dl, %cl
	movb	%cl, (%rdi,%rsi)
# BB#70:                                # %for.inc.178
                                        #   in Loop: Header=BB1_66 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB1_66
.LBB1_71:                               # %for.end.180
	movl	$0, -4(%rbp)
.LBB1_72:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	UserAdd, .Lfunc_end1-UserAdd
	.cfi_endproc

	.align	16, 0x90
	.type	GrowBitfield,@function
GrowBitfield:                           # @GrowBitfield
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
	subq	$64, %rsp
	movl	$1, %eax
	movl	%eax, %r8d
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -48(%rbp)
	movl	-20(%rbp), %eax
	addl	-24(%rbp), %eax
	addl	$1, %eax
	sarl	$3, %eax
	movslq	%eax, %rdi
	addq	%rdi, %r9
	movq	%r8, %rdi
	movq	%r9, %rsi
	callq	calloc
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB2_14
.LBB2_2:                                # %if.end
	movl	$0, -52(%rbp)
.LBB2_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	-24(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB2_11
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	-52(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB2_6
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	$128, %eax
	movl	-52(%rbp), %ecx
	andl	$7, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	movl	-52(%rbp), %edx
	sarl	$3, %edx
	movslq	%edx, %rsi
	movq	-48(%rbp), %rdi
	movzbl	(%rdi,%rsi), %edx
	andl	%edx, %eax
	cmpl	$0, %eax
	jne	.LBB2_8
.LBB2_6:                                # %lor.lhs.false
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	-52(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.LBB2_9
# BB#7:                                 # %land.lhs.true.12
                                        #   in Loop: Header=BB2_3 Depth=1
	cmpl	$0, -28(%rbp)
	je	.LBB2_9
.LBB2_8:                                # %if.then.14
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	$128, %eax
	movl	-52(%rbp), %ecx
	andl	$7, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	movl	-52(%rbp), %edx
	sarl	$3, %edx
	movslq	%edx, %rsi
	movq	-40(%rbp), %rdi
	movzbl	(%rdi,%rsi), %edx
	orl	%eax, %edx
	movb	%dl, %cl
	movb	%cl, (%rdi,%rsi)
.LBB2_9:                                # %if.end.22
                                        #   in Loop: Header=BB2_3 Depth=1
	jmp	.LBB2_10
.LBB2_10:                               # %for.inc
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB2_3
.LBB2_11:                               # %for.end
	cmpl	$0, -20(%rbp)
	je	.LBB2_13
# BB#12:                                # %if.then.24
	movq	-48(%rbp), %rdi
	callq	free
.LBB2_13:                               # %if.end.25
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$0, -4(%rbp)
.LBB2_14:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	GrowBitfield, .Lfunc_end2-GrowBitfield
	.cfi_endproc

	.globl	AclSetPerm
	.align	16, 0x90
	.type	AclSetPerm,@function
AclSetPerm:                             # @AclSetPerm
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB3_2
.LBB3_2:                                # %do.end
	jmp	.LBB3_3
.LBB3_3:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_23 Depth 2
                                        #     Child Loop BB3_17 Depth 2
                                        #     Child Loop BB3_9 Depth 2
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB3_43
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$35, %edx
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	movl	%edx, -76(%rbp)         # 4-byte Spill
	je	.LBB3_6
	jmp	.LBB3_45
.LBB3_45:                               # %while.body
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	-72(%rbp), %eax         # 4-byte Reload
	subl	$42, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB3_5
	jmp	.LBB3_46
.LBB3_46:                               # %while.body
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	-72(%rbp), %eax         # 4-byte Reload
	subl	$63, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB3_14
	jmp	.LBB3_22
.LBB3_5:                                # %sw.bb
	movabsq	$.L.str.2, %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	AclSetPerm
	movl	%eax, -4(%rbp)
	jmp	.LBB3_44
.LBB3_6:                                # %sw.bb.1
                                        #   in Loop: Header=BB3_3 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB3_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	AclSetPermWin
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB3_13
.LBB3_8:                                # %if.else
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	windows, %rax
	movq	%rax, -48(%rbp)
.LBB3_9:                                # %for.cond
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -48(%rbp)
	je	.LBB3_12
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB3_9 Depth=2
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rcx
	callq	AclSetPermWin
	movl	%eax, -92(%rbp)         # 4-byte Spill
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB3_9 Depth=2
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB3_9
.LBB3_12:                               # %for.end
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_13
.LBB3_13:                               # %if.end
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB3_42
.LBB3_14:                               # %sw.bb.6
                                        #   in Loop: Header=BB3_3 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB3_16
# BB#15:                                # %if.then.8
                                        #   in Loop: Header=BB3_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	AclSetPermWin
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB3_21
.LBB3_16:                               # %if.else.10
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	$0, -52(%rbp)
.LBB3_17:                               # %for.cond.11
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$187, -52(%rbp)
	jg	.LBB3_20
# BB#18:                                # %for.body.13
                                        #   in Loop: Header=BB3_17 Depth=2
	movabsq	$comms, %rax
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movslq	-52(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdx
	callq	AclSetPermCmd
	movl	%eax, -100(%rbp)        # 4-byte Spill
# BB#19:                                # %for.inc.15
                                        #   in Loop: Header=BB3_17 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB3_17
.LBB3_20:                               # %for.end.16
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_21
.LBB3_21:                               # %if.end.17
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB3_42
.LBB3_22:                               # %sw.default
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB3_23:                               # %for.cond.19
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -101(%rbp)         # 1-byte Spill
	je	.LBB3_27
# BB#24:                                # %land.lhs.true
                                        #   in Loop: Header=BB3_23 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$32, %eax
	movb	%cl, -101(%rbp)         # 1-byte Spill
	je	.LBB3_27
# BB#25:                                # %land.lhs.true.25
                                        #   in Loop: Header=BB3_23 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$9, %eax
	movb	%cl, -101(%rbp)         # 1-byte Spill
	je	.LBB3_27
# BB#26:                                # %land.rhs
                                        #   in Loop: Header=BB3_23 Depth=2
	movq	-64(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$44, %ecx
	setne	%dl
	movb	%dl, -101(%rbp)         # 1-byte Spill
.LBB3_27:                               # %land.end
                                        #   in Loop: Header=BB3_23 Depth=2
	movb	-101(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_28
	jmp	.LBB3_30
.LBB3_28:                               # %for.body.32
                                        #   in Loop: Header=BB3_23 Depth=2
	jmp	.LBB3_29
.LBB3_29:                               # %for.inc.33
                                        #   in Loop: Header=BB3_23 Depth=2
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB3_23
.LBB3_30:                               # %for.end.35
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-64(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -65(%rbp)
	cmpb	$0, %cl
	je	.LBB3_32
# BB#31:                                # %if.then.37
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	$0, (%rax)
.LBB3_32:                               # %if.end.39
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-40(%rbp), %rdi
	callq	FindCommnr
	movl	%eax, -52(%rbp)
	cmpl	$-1, %eax
	je	.LBB3_34
# BB#33:                                # %if.then.43
                                        #   in Loop: Header=BB3_3 Depth=1
	movabsq	$comms, %rax
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movslq	-52(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdx
	callq	AclSetPermCmd
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB3_39
.LBB3_34:                               # %if.else.47
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-40(%rbp), %rdi
	callq	WindowByNoN
	movl	%eax, -52(%rbp)
	cmpl	$0, %eax
	jl	.LBB3_37
# BB#35:                                # %land.lhs.true.51
                                        #   in Loop: Header=BB3_3 Depth=1
	movslq	-52(%rbp), %rax
	movq	wtab, %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB3_37
# BB#36:                                # %if.then.55
                                        #   in Loop: Header=BB3_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movslq	-52(%rbp), %rcx
	movq	wtab, %r8
	movq	(%r8,%rcx,8), %rcx
	callq	AclSetPermWin
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB3_38
.LBB3_37:                               # %if.else.59
	movl	$-1, -4(%rbp)
	jmp	.LBB3_44
.LBB3_38:                               # %if.end.60
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_39
.LBB3_39:                               # %if.end.61
                                        #   in Loop: Header=BB3_3 Depth=1
	cmpb	$0, -65(%rbp)
	je	.LBB3_41
# BB#40:                                # %if.then.63
                                        #   in Loop: Header=BB3_3 Depth=1
	movb	-65(%rbp), %al
	movq	-64(%rbp), %rcx
	movb	%al, -1(%rcx)
.LBB3_41:                               # %if.end.65
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB3_42:                               # %sw.epilog
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_3
.LBB3_43:                               # %while.end
	movl	$0, -4(%rbp)
.LBB3_44:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	AclSetPerm, .Lfunc_end3-AclSetPerm
	.cfi_endproc

	.globl	UserDel
	.align	16, 0x90
	.type	UserDel,@function
UserDel:                                # @UserDel
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	FindUserPtr
	movq	%rax, -24(%rbp)
.LBB4_2:                                # %if.end
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	jne	.LBB4_4
# BB#3:                                 # %if.then.2
	movl	$-1, -4(%rbp)
	jmp	.LBB4_33
.LBB4_4:                                # %if.end.3
	movq	display, %rax
	movq	%rax, -48(%rbp)
	movq	displays, %rax
	movq	%rax, display
.LBB4_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, display
	je	.LBB4_12
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	display, %rax
	movq	8(%rax), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB4_8
# BB#7:                                 # %if.then.5
                                        #   in Loop: Header=BB4_5 Depth=1
	jmp	.LBB4_11
.LBB4_8:                                # %if.end.6
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	display, %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB4_10
# BB#9:                                 # %if.then.8
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	$0, -48(%rbp)
.LBB4_10:                               # %if.end.9
                                        #   in Loop: Header=BB4_5 Depth=1
	movl	$2, %edi
	callq	Detach
.LBB4_11:                               # %for.inc
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, display
	jmp	.LBB4_5
.LBB4_12:                               # %for.end
	movabsq	$users, %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, display
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	%rax, -24(%rbp)
.LBB4_13:                               # %for.cond.10
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_15 Depth 2
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_22
# BB#14:                                # %for.body.12
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$352, %rax              # imm = 0x160
	movq	%rax, -64(%rbp)
.LBB4_15:                               # %while.cond
                                        #   Parent Loop BB4_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_20
# BB#16:                                # %while.body
                                        #   in Loop: Header=BB4_15 Depth=2
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB4_18
# BB#17:                                # %if.then.16
                                        #   in Loop: Header=BB4_15 Depth=2
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB4_19
.LBB4_18:                               # %if.else
                                        #   in Loop: Header=BB4_15 Depth=2
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movq	%rax, -64(%rbp)
.LBB4_19:                               # %if.end.20
                                        #   in Loop: Header=BB4_15 Depth=2
	jmp	.LBB4_15
.LBB4_20:                               # %while.end
                                        #   in Loop: Header=BB4_13 Depth=1
	jmp	.LBB4_21
.LBB4_21:                               # %for.inc.21
                                        #   in Loop: Header=BB4_13 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB4_13
.LBB4_22:                               # %for.end.23
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.12, %rcx
	movabsq	$.L.str.11, %rdx
	movabsq	$.L.str.10, %rsi
	movl	$128, %eax
	movq	-32(%rbp), %r8
	movl	320(%r8), %r9d
	andl	$7, %r9d
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movl	%r9d, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	xorl	$-1, %eax
	movq	-32(%rbp), %r8
	movl	320(%r8), %r9d
	sarl	$3, %r9d
	movslq	%r9d, %r8
	movq	userbits, %r10
	movzbl	(%r10,%r8), %r9d
	andl	%eax, %r9d
	movb	%r9b, %cl
	movb	%cl, (%r10,%r8)
	movq	-32(%rbp), %r8
	movsbl	default_w_bit+2, %eax
	cmpl	$0, %eax
	cmovneq	%rsi, %rdx
	movq	%r8, %rsi
	movq	-80(%rbp), %rcx         # 8-byte Reload
	callq	AclSetPerm
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movabsq	$.L.str.12, %rcx
	movabsq	$.L.str.14, %rdx
	movabsq	$.L.str.13, %rsi
	movq	-32(%rbp), %r8
	movsbl	default_w_bit+1, %r9d
	cmpl	$0, %r9d
	cmovneq	%rsi, %rdx
	movq	%r8, %rsi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	AclSetPerm
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movabsq	$.L.str.12, %rcx
	movabsq	$.L.str.15, %rdx
	movabsq	$.L.str.5, %rsi
	movq	-32(%rbp), %r8
	movsbl	default_w_bit, %r9d
	cmpl	$0, %r9d
	cmovneq	%rsi, %rdx
	movq	%r8, %rsi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	AclSetPerm
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movabsq	$.L.str.16, %rcx
	movabsq	$.L.str.15, %rdx
	movabsq	$.L.str.5, %rsi
	movq	-32(%rbp), %r8
	movsbl	default_c_bit, %r9d
	cmpl	$0, %r9d
	cmovneq	%rsi, %rdx
	movq	%r8, %rsi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	AclSetPerm
	movl	$0, -36(%rbp)
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB4_23:                               # %for.cond.43
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -36(%rbp)
	jge	.LBB4_26
# BB#24:                                # %for.body.46
                                        #   in Loop: Header=BB4_23 Depth=1
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	328(%rcx,%rax,8), %rdi
	callq	free
# BB#25:                                # %for.inc.49
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB4_23
.LBB4_26:                               # %for.end.50
	jmp	.LBB4_27
.LBB4_27:                               # %do.body
	jmp	.LBB4_28
.LBB4_28:                               # %do.end
	movq	-32(%rbp), %rdi
	callq	UserFreeCopyBuffer
	movq	-32(%rbp), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	free
	cmpq	$0, users
	jne	.LBB4_32
# BB#29:                                # %if.then.53
	jmp	.LBB4_30
.LBB4_30:                               # %do.body.54
	jmp	.LBB4_31
.LBB4_31:                               # %do.end.55
	xorl	%edi, %edi
	callq	Finit
.LBB4_32:                               # %if.end.56
	movl	$0, -4(%rbp)
.LBB4_33:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	UserDel, .Lfunc_end4-UserDel
	.cfi_endproc

	.globl	UserFreeCopyBuffer
	.align	16, 0x90
	.type	UserFreeCopyBuffer,@function
UserFreeCopyBuffer:                     # @UserFreeCopyBuffer
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	$0, 304(%rdi)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB5_10
.LBB5_2:                                # %if.end
	movq	windows, %rax
	movq	%rax, -24(%rbp)
.LBB5_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB5_9
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-24(%rbp), %rax
	addq	$10880, %rax            # imm = 0x2A80
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	304(%rcx), %rax
	jb	.LBB5_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	304(%rcx), %rcx
	subq	%rcx, %rax
	movq	-16(%rbp), %rcx
	movslq	312(%rcx), %rcx
	cmpq	%rcx, %rax
	jge	.LBB5_7
# BB#6:                                 # %if.then.10
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-32(%rbp), %rdi
	callq	FreePaster
.LBB5_7:                                # %if.end.11
                                        #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_8
.LBB5_8:                                # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB5_3
.LBB5_9:                                # %for.end
	movq	-16(%rbp), %rax
	movq	304(%rax), %rdi
	callq	free
	movq	-16(%rbp), %rax
	movl	$0, 312(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 304(%rax)
	movl	$0, -4(%rbp)
.LBB5_10:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	UserFreeCopyBuffer, .Lfunc_end5-UserFreeCopyBuffer
	.cfi_endproc

	.globl	AclLinkUser
	.align	16, 0x90
	.type	AclLinkUser,@function
AclLinkUser:                            # @AclLinkUser
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	FindUserPtr
	movq	%rax, -32(%rbp)
	cmpq	$0, (%rax)
	jne	.LBB6_3
# BB#1:                                 # %land.lhs.true
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	UserAdd
	cmpl	$0, %eax
	je	.LBB6_3
# BB#2:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB6_13
.LBB6_3:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	FindUserPtr
	movq	%rax, -40(%rbp)
	cmpq	$0, (%rax)
	jne	.LBB6_6
# BB#4:                                 # %land.lhs.true.5
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	UserAdd
	cmpl	$0, %eax
	je	.LBB6_6
# BB#5:                                 # %if.then.8
	movl	$-1, -4(%rbp)
	jmp	.LBB6_13
.LBB6_6:                                # %if.end.9
	movl	$1, %edx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	$352, %rax              # imm = 0x160
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	FindGroupPtr
	cmpq	$0, (%rax)
	je	.LBB6_8
# BB#7:                                 # %if.then.12
	movl	$1, -4(%rbp)
	jmp	.LBB6_13
.LBB6_8:                                # %if.end.13
	xorl	%edx, %edx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	addq	$352, %rax              # imm = 0x160
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	FindGroupPtr
	movq	%rax, -48(%rbp)
	cmpq	$0, (%rax)
	je	.LBB6_10
# BB#9:                                 # %if.then.17
	movl	$2, -4(%rbp)
	jmp	.LBB6_13
.LBB6_10:                               # %if.end.18
	movl	$16, %eax
	movl	%eax, %edi
	callq	malloc
	movq	-48(%rbp), %rdi
	movq	%rax, (%rdi)
	cmpq	$0, %rax
	jne	.LBB6_12
# BB#11:                                # %if.then.21
	movl	$-1, -4(%rbp)
	jmp	.LBB6_13
.LBB6_12:                               # %if.end.22
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	$0, 8(%rax)
	movl	$0, -4(%rbp)
.LBB6_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	AclLinkUser, .Lfunc_end6-AclLinkUser
	.cfi_endproc

	.align	16, 0x90
	.type	FindGroupPtr,@function
FindGroupPtr:                           # @FindGroupPtr
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB7_2
.LBB7_2:                                # %do.end
	jmp	.LBB7_3
.LBB7_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_10
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_11
.LBB7_6:                                # %if.end
                                        #   in Loop: Header=BB7_3 Depth=1
	cmpl	$0, -28(%rbp)
	je	.LBB7_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	addq	$352, %rax              # imm = 0x160
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	FindGroupPtr
	movq	%rax, -40(%rbp)
	cmpq	$0, (%rax)
	je	.LBB7_9
# BB#8:                                 # %if.then.5
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_11
.LBB7_9:                                # %if.end.6
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB7_3
.LBB7_10:                               # %while.end
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB7_11:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	FindGroupPtr, .Lfunc_end7-FindGroupPtr
	.cfi_endproc

	.globl	DoSu
	.align	16, 0x90
	.type	DoSu,@function
DoSu:                                   # @DoSu
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	$0, -52(%rbp)
	movq	-24(%rbp), %rdi
	callq	FindUserPtr
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, %rax
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB8_56
.LBB8_2:                                # %if.else
	movabsq	$.L.str.17, %rax
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rdi
	callq	getpwnam
	movq	%rax, -64(%rbp)
	cmpq	$0, %rax
	jne	.LBB8_12
# BB#3:                                 # %if.then.3
	jmp	.LBB8_4
.LBB8_4:                                # %do.body
	jmp	.LBB8_5
.LBB8_5:                                # %do.end
	cmpq	$0, -32(%rbp)
	je	.LBB8_8
# BB#6:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB8_8
# BB#7:                                 # %land.lhs.true.6
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$-1, %ecx
	jne	.LBB8_11
.LBB8_8:                                # %if.then.9
	jmp	.LBB8_9
.LBB8_9:                                # %do.body.10
	jmp	.LBB8_10
.LBB8_10:                               # %do.end.11
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
.LBB8_11:                               # %if.end
	jmp	.LBB8_13
.LBB8_12:                               # %if.else.13
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
.LBB8_13:                               # %if.end.14
	movl	$0, -76(%rbp)
.LBB8_14:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$13, -76(%rbp)
	jge	.LBB8_26
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB8_14 Depth=1
	movslq	-76(%rbp), %rax
	movq	-88(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	movl	%edx, -80(%rbp)
	cmpl	$46, -80(%rbp)
	je	.LBB8_24
# BB#16:                                # %lor.lhs.false
                                        #   in Loop: Header=BB8_14 Depth=1
	cmpl	$47, -80(%rbp)
	je	.LBB8_24
# BB#17:                                # %lor.lhs.false.22
                                        #   in Loop: Header=BB8_14 Depth=1
	cmpl	$48, -80(%rbp)
	jl	.LBB8_19
# BB#18:                                # %land.lhs.true.25
                                        #   in Loop: Header=BB8_14 Depth=1
	cmpl	$57, -80(%rbp)
	jle	.LBB8_24
.LBB8_19:                               # %lor.lhs.false.28
                                        #   in Loop: Header=BB8_14 Depth=1
	cmpl	$97, -80(%rbp)
	jl	.LBB8_21
# BB#20:                                # %land.lhs.true.31
                                        #   in Loop: Header=BB8_14 Depth=1
	cmpl	$122, -80(%rbp)
	jle	.LBB8_24
.LBB8_21:                               # %lor.lhs.false.34
                                        #   in Loop: Header=BB8_14 Depth=1
	cmpl	$65, -80(%rbp)
	jl	.LBB8_23
# BB#22:                                # %land.lhs.true.37
                                        #   in Loop: Header=BB8_14 Depth=1
	cmpl	$90, -80(%rbp)
	jle	.LBB8_24
.LBB8_23:                               # %if.then.40
	jmp	.LBB8_26
.LBB8_24:                               # %if.end.41
                                        #   in Loop: Header=BB8_14 Depth=1
	jmp	.LBB8_25
.LBB8_25:                               # %for.inc
                                        #   in Loop: Header=BB8_14 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB8_14
.LBB8_26:                               # %for.end
	cmpl	$13, -76(%rbp)
	jge	.LBB8_33
# BB#27:                                # %if.then.45
	movq	-24(%rbp), %rdi
	callq	getspnam
	movq	%rax, -72(%rbp)
	cmpq	$0, %rax
	jne	.LBB8_31
# BB#28:                                # %if.then.48
	jmp	.LBB8_29
.LBB8_29:                               # %do.body.49
	jmp	.LBB8_30
.LBB8_30:                               # %do.end.50
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB8_32
.LBB8_31:                               # %if.else.52
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
.LBB8_32:                               # %if.end.53
	jmp	.LBB8_33
.LBB8_33:                               # %if.end.54
	cmpq	$0, -40(%rbp)
	je	.LBB8_41
# BB#34:                                # %land.lhs.true.56
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB8_41
# BB#35:                                # %land.lhs.true.59
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$-1, %ecx
	je	.LBB8_41
# BB#36:                                # %if.then.63
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	PasswordMatches
	cmpl	$0, %eax
	jne	.LBB8_40
# BB#37:                                # %if.then.66
	jmp	.LBB8_38
.LBB8_38:                               # %do.body.67
	jmp	.LBB8_39
.LBB8_39:                               # %do.end.68
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
.LBB8_40:                               # %if.end.70
	jmp	.LBB8_44
.LBB8_41:                               # %if.else.71
	movq	-88(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB8_43
# BB#42:                                # %if.then.73
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
.LBB8_43:                               # %if.end.75
	jmp	.LBB8_44
.LBB8_44:                               # %if.end.76
	cmpq	$0, -32(%rbp)
	je	.LBB8_52
# BB#45:                                # %land.lhs.true.78
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB8_52
# BB#46:                                # %land.lhs.true.81
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$-1, %ecx
	je	.LBB8_52
# BB#47:                                # %if.then.85
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	272(%rax), %rsi
	callq	PasswordMatches
	cmpl	$0, %eax
	jne	.LBB8_51
# BB#48:                                # %if.then.88
	jmp	.LBB8_49
.LBB8_49:                               # %do.body.89
	jmp	.LBB8_50
.LBB8_50:                               # %do.end.90
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
.LBB8_51:                               # %if.end.92
	jmp	.LBB8_55
.LBB8_52:                               # %if.else.93
	movq	-48(%rbp), %rax
	movq	272(%rax), %rax
	cmpb	$0, (%rax)
	je	.LBB8_54
# BB#53:                                # %if.then.96
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
.LBB8_54:                               # %if.end.98
	jmp	.LBB8_55
.LBB8_55:                               # %if.end.99
	jmp	.LBB8_56
.LBB8_56:                               # %if.end.100
	jmp	.LBB8_57
.LBB8_57:                               # %do.body.101
	jmp	.LBB8_58
.LBB8_58:                               # %do.end.102
	jmp	.LBB8_59
.LBB8_59:                               # %do.body.103
	jmp	.LBB8_60
.LBB8_60:                               # %do.end.104
	movabsq	$.L.str.18, %rdi
	movl	$1, %esi
	movl	$32, %edx
	callq	openlog
	movl	$5, %edi
	movabsq	$.L.str.19, %rsi
	movabsq	$SockPath, %rdx
	movabsq	$.L.str.21, %rax
	movabsq	$.L.str.20, %rcx
	movq	-24(%rbp), %r8
	cmpl	$0, -52(%rbp)
	cmovneq	%rcx, %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	addq	$8, %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%r8, %rcx
	movq	%rax, %r8
	movq	-96(%rbp), %r9          # 8-byte Reload
	movb	$0, %al
	callq	syslog
	callq	closelog
	cmpl	$0, -52(%rbp)
	je	.LBB8_62
# BB#61:                                # %if.then.107
	movabsq	$.L.str.22, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_64
.LBB8_62:                               # %if.else.108
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
# BB#63:                                # %if.end.109
	movq	$0, -8(%rbp)
.LBB8_64:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	DoSu, .Lfunc_end8-DoSu
	.cfi_endproc

	.align	16, 0x90
	.type	PasswordMatches,@function
PasswordMatches:                        # @PasswordMatches
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	cmpb	$0, (%rsi)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB9_5
.LBB9_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	crypt
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	movb	%dl, -33(%rbp)          # 1-byte Spill
	je	.LBB9_4
# BB#3:                                 # %land.rhs
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -33(%rbp)          # 1-byte Spill
.LBB9_4:                                # %land.end
	movb	-33(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
.LBB9_5:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	PasswordMatches, .Lfunc_end9-PasswordMatches
	.cfi_endproc

	.globl	NewWindowAcl
	.align	16, 0x90
	.type	NewWindowAcl,@function
NewWindowAcl:                           # @NewWindowAcl
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB10_2
.LBB10_2:                               # %do.end
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	addq	$9848, %rcx             # imm = 0x2678
	movl	maxusercount, %edx
	movq	%rcx, %rdi
	movl	%eax, %esi
	movl	%eax, %ecx
	callq	GrowBitfield
	cmpl	$0, %eax
	jne	.LBB10_4
# BB#3:                                 # %lor.lhs.false
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	addq	$9840, %rcx             # imm = 0x2670
	movl	maxusercount, %edx
	movq	%rcx, %rdi
	movl	%eax, %esi
	movl	%eax, %ecx
	callq	GrowBitfield
	cmpl	$0, %eax
	je	.LBB10_5
.LBB10_4:                               # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB10_23
.LBB10_5:                               # %if.end
	movl	$0, -32(%rbp)
.LBB10_6:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_13 Depth 2
	cmpl	$3, -32(%rbp)
	jge	.LBB10_22
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB10_6 Depth=1
	xorl	%eax, %eax
	movslq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	addq	$9816, %rdx             # imm = 0x2658
	shlq	$3, %rcx
	addq	%rcx, %rdx
	movl	maxusercount, %esi
	movq	%rdx, %rdi
	movl	%esi, -36(%rbp)         # 4-byte Spill
	movl	%eax, %esi
	movl	-36(%rbp), %edx         # 4-byte Reload
	movl	%eax, %ecx
	callq	GrowBitfield
	cmpl	$0, %eax
	je	.LBB10_12
# BB#8:                                 # %if.then.5
	jmp	.LBB10_9
.LBB10_9:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, %eax
	jl	.LBB10_11
# BB#10:                                # %while.body
                                        #   in Loop: Header=BB10_9 Depth=1
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	9816(%rcx,%rax,8), %rdi
	callq	free
	jmp	.LBB10_9
.LBB10_11:                              # %while.end
	movq	-16(%rbp), %rax
	movq	9848(%rax), %rdi
	callq	free
	movq	-16(%rbp), %rax
	movq	9840(%rax), %rdi
	callq	free
	movl	$-1, -4(%rbp)
	jmp	.LBB10_23
.LBB10_12:                              # %if.end.12
                                        #   in Loop: Header=BB10_6 Depth=1
	movl	$0, -28(%rbp)
.LBB10_13:                              # %for.cond.13
                                        #   Parent Loop BB10_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	cmpl	maxusercount, %eax
	jge	.LBB10_20
# BB#14:                                # %for.body.15
                                        #   in Loop: Header=BB10_13 Depth=2
	cmpq	$0, -24(%rbp)
	je	.LBB10_16
# BB#15:                                # %cond.true
                                        #   in Loop: Header=BB10_13 Depth=2
	movl	$128, %eax
	movl	-28(%rbp), %ecx
	andl	$7, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	movl	-28(%rbp), %edx
	sarl	$3, %edx
	movslq	%edx, %rsi
	movslq	-32(%rbp), %rdi
	movq	-24(%rbp), %r8
	movq	328(%r8,%rdi,8), %rdi
	movzbl	(%rdi,%rsi), %edx
	andl	%edx, %eax
	cmpl	$0, %eax
	jne	.LBB10_17
	jmp	.LBB10_18
.LBB10_16:                              # %cond.false
                                        #   in Loop: Header=BB10_13 Depth=2
	movslq	-32(%rbp), %rax
	movsbl	default_w_bit(,%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB10_18
.LBB10_17:                              # %if.then.28
                                        #   in Loop: Header=BB10_13 Depth=2
	movl	$128, %eax
	movl	-28(%rbp), %ecx
	andl	$7, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	movl	-28(%rbp), %edx
	sarl	$3, %edx
	movslq	%edx, %rsi
	movslq	-32(%rbp), %rdi
	movq	-16(%rbp), %r8
	movq	9816(%r8,%rdi,8), %rdi
	movzbl	(%rdi,%rsi), %edx
	orl	%eax, %edx
	movb	%dl, %cl
	movb	%cl, (%rdi,%rsi)
.LBB10_18:                              # %if.end.39
                                        #   in Loop: Header=BB10_13 Depth=2
	jmp	.LBB10_19
.LBB10_19:                              # %for.inc
                                        #   in Loop: Header=BB10_13 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB10_13
.LBB10_20:                              # %for.end
                                        #   in Loop: Header=BB10_6 Depth=1
	jmp	.LBB10_21
.LBB10_21:                              # %for.inc.40
                                        #   in Loop: Header=BB10_6 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB10_6
.LBB10_22:                              # %for.end.42
	movl	$0, -4(%rbp)
.LBB10_23:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	NewWindowAcl, .Lfunc_end10-NewWindowAcl
	.cfi_endproc

	.globl	FreeWindowAcl
	.align	16, 0x90
	.type	FreeWindowAcl,@function
FreeWindowAcl:                          # @FreeWindowAcl
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -12(%rbp)
	jge	.LBB11_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	9816(%rcx,%rax,8), %rdi
	callq	free
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB11_1
.LBB11_4:                               # %for.end
	movq	-8(%rbp), %rax
	movq	9848(%rax), %rdi
	callq	free
	movq	-8(%rbp), %rax
	movq	9840(%rax), %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	FreeWindowAcl, .Lfunc_end11-FreeWindowAcl
	.cfi_endproc

	.align	16, 0x90
	.type	AclSetPermWin,@function
AclSetPermWin:                          # @AclSetPermWin
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	$0, -44(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB12_4
# BB#1:                                 # %if.then
	jmp	.LBB12_2
.LBB12_2:                               # %do.body
	jmp	.LBB12_3
.LBB12_3:                               # %do.end
	movq	-16(%rbp), %rax
	addq	$328, %rax              # imm = 0x148
	movq	%rax, -64(%rbp)
	jmp	.LBB12_9
.LBB12_4:                               # %if.else
	jmp	.LBB12_5
.LBB12_5:                               # %do.body.1
	jmp	.LBB12_6
.LBB12_6:                               # %do.end.2
	movq	-40(%rbp), %rax
	addq	$9816, %rax             # imm = 0x2658
	movq	%rax, -64(%rbp)
# BB#7:                                 # %do.body.4
	jmp	.LBB12_8
.LBB12_8:                               # %do.end.5
	jmp	.LBB12_9
.LBB12_9:                               # %if.end
	jmp	.LBB12_10
.LBB12_10:                              # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_20 Depth 2
	movq	-72(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB12_38
# BB#11:                                # %while.body
                                        #   in Loop: Header=BB12_10 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, -72(%rbp)
	movsbl	(%rax), %edx
	movl	%edx, %esi
	subl	$43, %esi
	movl	%edx, -76(%rbp)         # 4-byte Spill
	movl	%esi, -80(%rbp)         # 4-byte Spill
	je	.LBB12_13
	jmp	.LBB12_59
.LBB12_59:                              # %while.body
                                        #   in Loop: Header=BB12_10 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$45, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB12_12
	jmp	.LBB12_60
.LBB12_60:                              # %while.body
                                        #   in Loop: Header=BB12_10 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$97, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB12_17
	jmp	.LBB12_61
.LBB12_61:                              # %while.body
                                        #   in Loop: Header=BB12_10 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$114, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB12_14
	jmp	.LBB12_62
.LBB12_62:                              # %while.body
                                        #   in Loop: Header=BB12_10 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$119, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB12_15
	jmp	.LBB12_63
.LBB12_63:                              # %while.body
                                        #   in Loop: Header=BB12_10 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$120, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB12_16
	jmp	.LBB12_18
.LBB12_12:                              # %sw.bb
                                        #   in Loop: Header=BB12_10 Depth=1
	movl	$1, -44(%rbp)
	jmp	.LBB12_10
.LBB12_13:                              # %sw.bb.7
                                        #   in Loop: Header=BB12_10 Depth=1
	movl	$0, -44(%rbp)
	jmp	.LBB12_10
.LBB12_14:                              # %sw.bb.8
                                        #   in Loop: Header=BB12_10 Depth=1
	movl	$4, -52(%rbp)
	jmp	.LBB12_19
.LBB12_15:                              # %sw.bb.9
                                        #   in Loop: Header=BB12_10 Depth=1
	movl	$2, -52(%rbp)
	jmp	.LBB12_19
.LBB12_16:                              # %sw.bb.10
                                        #   in Loop: Header=BB12_10 Depth=1
	movl	$1, -52(%rbp)
	jmp	.LBB12_19
.LBB12_17:                              # %sw.bb.11
                                        #   in Loop: Header=BB12_10 Depth=1
	movl	$7, -52(%rbp)
	jmp	.LBB12_19
.LBB12_18:                              # %sw.default
	movl	$-1, -4(%rbp)
	jmp	.LBB12_58
.LBB12_19:                              # %sw.epilog
                                        #   in Loop: Header=BB12_10 Depth=1
	movl	$0, -48(%rbp)
.LBB12_20:                              # %for.cond
                                        #   Parent Loop BB12_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -48(%rbp)
	jge	.LBB12_37
# BB#21:                                # %for.body
                                        #   in Loop: Header=BB12_20 Depth=2
	movl	$1, %eax
	movl	-52(%rbp), %ecx
	movl	-48(%rbp), %edx
	movl	%ecx, -104(%rbp)        # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	-104(%rbp), %edx        # 4-byte Reload
	andl	%eax, %edx
	cmpl	$0, %edx
	jne	.LBB12_23
# BB#22:                                # %if.then.14
                                        #   in Loop: Header=BB12_20 Depth=2
	jmp	.LBB12_36
.LBB12_23:                              # %if.end.15
                                        #   in Loop: Header=BB12_20 Depth=2
	cmpl	$0, -44(%rbp)
	je	.LBB12_25
# BB#24:                                # %if.then.17
                                        #   in Loop: Header=BB12_20 Depth=2
	movl	$128, %eax
	movq	-24(%rbp), %rcx
	movl	320(%rcx), %edx
	andl	$7, %edx
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	xorl	$-1, %eax
	movq	-24(%rbp), %rsi
	movl	320(%rsi), %edx
	sarl	$3, %edx
	movslq	%edx, %rsi
	movslq	-48(%rbp), %rdi
	movq	-64(%rbp), %r8
	movq	(%r8,%rdi,8), %rdi
	movzbl	(%rdi,%rsi), %edx
	andl	%eax, %edx
	movb	%dl, %cl
	movb	%cl, (%rdi,%rsi)
	jmp	.LBB12_26
.LBB12_25:                              # %if.else.27
                                        #   in Loop: Header=BB12_20 Depth=2
	movl	$128, %eax
	movq	-24(%rbp), %rcx
	movl	320(%rcx), %edx
	andl	$7, %edx
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	movq	-24(%rbp), %rsi
	movl	320(%rsi), %edx
	sarl	$3, %edx
	movslq	%edx, %rsi
	movslq	-48(%rbp), %rdi
	movq	-64(%rbp), %r8
	movq	(%r8,%rdi,8), %rdi
	movzbl	(%rdi,%rsi), %edx
	orl	%eax, %edx
	movb	%dl, %cl
	movb	%cl, (%rdi,%rsi)
.LBB12_26:                              # %if.end.39
                                        #   in Loop: Header=BB12_20 Depth=2
	cmpq	$0, -16(%rbp)
	jne	.LBB12_35
# BB#27:                                # %land.lhs.true
                                        #   in Loop: Header=BB12_20 Depth=2
	movq	-40(%rbp), %rax
	movq	9808(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB12_35
# BB#28:                                # %land.lhs.true.43
                                        #   in Loop: Header=BB12_20 Depth=2
	cmpl	$0, -44(%rbp)
	je	.LBB12_35
# BB#29:                                # %land.lhs.true.45
                                        #   in Loop: Header=BB12_20 Depth=2
	cmpl	$1, -48(%rbp)
	jne	.LBB12_35
# BB#30:                                # %if.then.48
                                        #   in Loop: Header=BB12_20 Depth=2
	jmp	.LBB12_31
.LBB12_31:                              # %do.body.49
                                        #   in Loop: Header=BB12_20 Depth=2
	jmp	.LBB12_32
.LBB12_32:                              # %do.end.50
                                        #   in Loop: Header=BB12_20 Depth=2
	movq	-40(%rbp), %rax
	movq	$0, 9808(%rax)
	movq	-40(%rbp), %rax
	cmpl	$2, 9800(%rax)
	jne	.LBB12_34
# BB#33:                                # %if.then.54
                                        #   in Loop: Header=BB12_20 Depth=2
	movq	-40(%rbp), %rax
	movl	$1, 9800(%rax)
.LBB12_34:                              # %if.end.56
                                        #   in Loop: Header=BB12_20 Depth=2
	jmp	.LBB12_35
.LBB12_35:                              # %if.end.57
                                        #   in Loop: Header=BB12_20 Depth=2
	jmp	.LBB12_36
.LBB12_36:                              # %for.inc
                                        #   in Loop: Header=BB12_20 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB12_20
.LBB12_37:                              # %for.end
                                        #   in Loop: Header=BB12_10 Depth=1
	jmp	.LBB12_10
.LBB12_38:                              # %while.end
	cmpq	$0, -16(%rbp)
	je	.LBB12_57
# BB#39:                                # %land.lhs.true.59
	movq	-24(%rbp), %rax
	movsbl	8(%rax), %ecx
	cmpl	$63, %ecx
	jne	.LBB12_57
# BB#40:                                # %land.lhs.true.64
	movq	-24(%rbp), %rax
	movsbl	9(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB12_57
# BB#41:                                # %if.then.70
	cmpq	$0, -40(%rbp)
	je	.LBB12_49
# BB#42:                                # %if.then.72
	jmp	.LBB12_43
.LBB12_43:                              # %do.body.73
	jmp	.LBB12_44
.LBB12_44:                              # %do.end.74
	movl	$0, -48(%rbp)
.LBB12_45:                              # %for.cond.75
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -48(%rbp)
	jge	.LBB12_48
# BB#46:                                # %for.body.78
                                        #   in Loop: Header=BB12_45 Depth=1
	xorl	%eax, %eax
	movl	$1, %ecx
	movl	$128, %edx
	movq	-24(%rbp), %rsi
	movl	320(%rsi), %edi
	sarl	$3, %edi
	movslq	%edi, %rsi
	movslq	-48(%rbp), %r8
	movq	-64(%rbp), %r9
	movq	(%r9,%r8,8), %r8
	movzbl	(%r8,%rsi), %edi
	movq	-24(%rbp), %rsi
	movl	320(%rsi), %r10d
	andl	$7, %r10d
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edx
	andl	%edx, %edi
	cmpl	$0, %edi
	movl	-108(%rbp), %edx        # 4-byte Reload
	cmovnel	%edx, %eax
	movb	%al, %cl
	movslq	-48(%rbp), %rsi
	movb	%cl, default_w_bit(,%rsi)
# BB#47:                                # %for.inc.94
                                        #   in Loop: Header=BB12_45 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB12_45
.LBB12_48:                              # %for.end.96
	jmp	.LBB12_56
.LBB12_49:                              # %if.else.97
	jmp	.LBB12_50
.LBB12_50:                              # %do.body.98
	jmp	.LBB12_51
.LBB12_51:                              # %do.end.99
	movl	$0, -48(%rbp)
.LBB12_52:                              # %for.cond.100
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$1, -48(%rbp)
	jge	.LBB12_55
# BB#53:                                # %for.body.103
                                        #   in Loop: Header=BB12_52 Depth=1
	xorl	%eax, %eax
	movl	$1, %ecx
	movl	$128, %edx
	movq	-24(%rbp), %rsi
	movl	320(%rsi), %edi
	sarl	$3, %edi
	movslq	%edi, %rsi
	movslq	-48(%rbp), %r8
	movq	-64(%rbp), %r9
	movq	(%r9,%r8,8), %r8
	movzbl	(%r8,%rsi), %edi
	movq	-24(%rbp), %rsi
	movl	320(%rsi), %r10d
	andl	$7, %r10d
	movl	%ecx, -112(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edx
	andl	%edx, %edi
	cmpl	$0, %edi
	movl	-112(%rbp), %edx        # 4-byte Reload
	cmovnel	%edx, %eax
	movb	%al, %cl
	movslq	-48(%rbp), %rsi
	movb	%cl, default_c_bit(,%rsi)
# BB#54:                                # %for.inc.120
                                        #   in Loop: Header=BB12_52 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB12_52
.LBB12_55:                              # %for.end.122
	jmp	.LBB12_56
.LBB12_56:                              # %if.end.123
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, %rdi
	callq	UserDel
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB12_57:                              # %if.end.126
	movl	$0, -4(%rbp)
.LBB12_58:                              # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	AclSetPermWin, .Lfunc_end12-AclSetPermWin
	.cfi_endproc

	.align	16, 0x90
	.type	AclSetPermCmd,@function
AclSetPermCmd:                          # @AclSetPermCmd
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -48(%rbp)
.LBB13_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB13_12
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, -48(%rbp)
	movsbl	(%rax), %edx
	movl	%edx, %esi
	subl	$43, %esi
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movl	%esi, -56(%rbp)         # 4-byte Spill
	je	.LBB13_4
	jmp	.LBB13_14
.LBB13_14:                              # %while.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$45, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB13_3
	jmp	.LBB13_15
.LBB13_15:                              # %while.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$97, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB13_5
	jmp	.LBB13_16
.LBB13_16:                              # %while.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$101, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB13_5
	jmp	.LBB13_17
.LBB13_17:                              # %while.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$114, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB13_9
	jmp	.LBB13_18
.LBB13_18:                              # %while.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$119, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB13_9
	jmp	.LBB13_19
.LBB13_19:                              # %while.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$120, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB13_5
	jmp	.LBB13_10
.LBB13_3:                               # %sw.bb
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	$1, -36(%rbp)
	jmp	.LBB13_1
.LBB13_4:                               # %sw.bb.1
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	$0, -36(%rbp)
	jmp	.LBB13_1
.LBB13_5:                               # %sw.bb.2
                                        #   in Loop: Header=BB13_1 Depth=1
	cmpl	$0, -36(%rbp)
	je	.LBB13_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	$128, %eax
	movq	-16(%rbp), %rcx
	movl	320(%rcx), %edx
	andl	$7, %edx
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	xorl	$-1, %eax
	movq	-16(%rbp), %rsi
	movl	320(%rsi), %edx
	sarl	$3, %edx
	movslq	%edx, %rsi
	movq	-32(%rbp), %rdi
	movq	16(%rdi), %rdi
	movzbl	(%rdi,%rsi), %edx
	andl	%eax, %edx
	movb	%dl, %cl
	movb	%cl, (%rdi,%rsi)
	jmp	.LBB13_8
.LBB13_7:                               # %if.else
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	$128, %eax
	movq	-16(%rbp), %rcx
	movl	320(%rcx), %edx
	andl	$7, %edx
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	movq	-16(%rbp), %rsi
	movl	320(%rsi), %edx
	sarl	$3, %edx
	movslq	%edx, %rsi
	movq	-32(%rbp), %rdi
	movq	16(%rdi), %rdi
	movzbl	(%rdi,%rsi), %edx
	orl	%eax, %edx
	movb	%dl, %cl
	movb	%cl, (%rdi,%rsi)
.LBB13_8:                               # %if.end
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_11
.LBB13_9:                               # %sw.bb.22
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_11
.LBB13_10:                              # %sw.default
	movl	$-1, -4(%rbp)
	jmp	.LBB13_13
.LBB13_11:                              # %sw.epilog
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_1
.LBB13_12:                              # %while.end
	movl	$0, -4(%rbp)
.LBB13_13:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end13:
	.size	AclSetPermCmd, .Lfunc_end13-AclSetPermCmd
	.cfi_endproc

	.globl	UsersAcl
	.align	16, 0x90
	.type	UsersAcl,@function
UsersAcl:                               # @UsersAcl
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -56(%rbp)
	cmpl	$1, -20(%rbp)
	jne	.LBB14_9
# BB#1:                                 # %if.then
	movq	$0, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB14_2:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB14_6
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB14_2 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movsbl	(%rax), %edx
	cmpl	$61, %edx
	jne	.LBB14_5
# BB#4:                                 # %if.then.3
                                        #   in Loop: Header=BB14_2 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB14_5:                               # %if.end
                                        #   in Loop: Header=BB14_2 Depth=1
	jmp	.LBB14_2
.LBB14_6:                               # %while.end
	cmpq	$0, -64(%rbp)
	je	.LBB14_8
# BB#7:                                 # %if.then.5
	movq	-64(%rbp), %rax
	movb	$0, -1(%rax)
	movq	-64(%rbp), %rdi
	callq	FindUserPtr
	movq	%rax, -56(%rbp)
.LBB14_8:                               # %if.end.7
	jmp	.LBB14_9
.LBB14_9:                               # %if.end.8
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movsbl	(%rax), %ecx
	cmpl	$42, %ecx
	jne	.LBB14_23
# BB#10:                                # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movsbl	1(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB14_23
# BB#11:                                # %if.then.19
	jmp	.LBB14_12
.LBB14_12:                              # %do.body
	jmp	.LBB14_13
.LBB14_13:                              # %do.end
	movabsq	$users, %rax
	movq	%rax, -72(%rbp)
.LBB14_14:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_22
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB14_14 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	$.L.str.3, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB14_20
# BB#16:                                # %land.lhs.true.23
                                        #   in Loop: Header=BB14_14 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB14_18
# BB#17:                                # %cond.true
                                        #   in Loop: Header=BB14_14 Depth=1
	movq	-72(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	UserAclCopy
	movl	%eax, -44(%rbp)
	cmpl	$0, %eax
	jl	.LBB14_19
	jmp	.LBB14_20
.LBB14_18:                              # %cond.false
                                        #   in Loop: Header=BB14_14 Depth=1
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	UserAcl
	movl	%eax, -44(%rbp)
	cmpl	$0, %eax
	jge	.LBB14_20
.LBB14_19:                              # %if.then.31
	movl	$-1, -4(%rbp)
	jmp	.LBB14_45
.LBB14_20:                              # %if.end.32
                                        #   in Loop: Header=BB14_14 Depth=1
	jmp	.LBB14_21
.LBB14_21:                              # %for.inc
                                        #   in Loop: Header=BB14_14 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB14_14
.LBB14_22:                              # %for.end
	movl	$0, -4(%rbp)
	jmp	.LBB14_45
.LBB14_23:                              # %if.end.33
	jmp	.LBB14_24
.LBB14_24:                              # %do.body.34
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_25 Depth 2
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB14_25:                              # %for.cond.36
                                        #   Parent Loop BB14_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -73(%rbp)          # 1-byte Spill
	je	.LBB14_30
# BB#26:                                # %land.lhs.true.39
                                        #   in Loop: Header=BB14_25 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$32, %eax
	movb	%cl, -73(%rbp)          # 1-byte Spill
	je	.LBB14_30
# BB#27:                                # %land.lhs.true.43
                                        #   in Loop: Header=BB14_25 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$9, %eax
	movb	%cl, -73(%rbp)          # 1-byte Spill
	je	.LBB14_30
# BB#28:                                # %land.lhs.true.47
                                        #   in Loop: Header=BB14_25 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$44, %eax
	movb	%cl, -73(%rbp)          # 1-byte Spill
	je	.LBB14_30
# BB#29:                                # %land.rhs
                                        #   in Loop: Header=BB14_25 Depth=2
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$61, %ecx
	setne	%dl
	movb	%dl, -73(%rbp)          # 1-byte Spill
.LBB14_30:                              # %land.end
                                        #   in Loop: Header=BB14_25 Depth=2
	movb	-73(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB14_31
	jmp	.LBB14_33
.LBB14_31:                              # %for.body.54
                                        #   in Loop: Header=BB14_25 Depth=2
	jmp	.LBB14_32
.LBB14_32:                              # %for.inc.55
                                        #   in Loop: Header=BB14_25 Depth=2
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB14_25
.LBB14_33:                              # %for.end.57
                                        #   in Loop: Header=BB14_24 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB14_35
# BB#34:                                # %cond.true.60
                                        #   in Loop: Header=BB14_24 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	$0, (%rax)
	jmp	.LBB14_36
.LBB14_35:                              # %cond.false.62
                                        #   in Loop: Header=BB14_24 Depth=1
	movq	-40(%rbp), %rax
	movb	$0, (%rax)
.LBB14_36:                              # %cond.end
                                        #   in Loop: Header=BB14_24 Depth=1
# BB#37:                                # %do.body.63
                                        #   in Loop: Header=BB14_24 Depth=1
	jmp	.LBB14_38
.LBB14_38:                              # %do.end.64
                                        #   in Loop: Header=BB14_24 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB14_40
# BB#39:                                # %cond.true.66
                                        #   in Loop: Header=BB14_24 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	FindUserPtr
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	UserAclCopy
	movl	%eax, -44(%rbp)
	cmpl	$0, %eax
	jl	.LBB14_41
	jmp	.LBB14_42
.LBB14_40:                              # %cond.false.72
                                        #   in Loop: Header=BB14_24 Depth=1
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	FindUserPtr
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	UserAcl
	movl	%eax, -44(%rbp)
	cmpl	$0, %eax
	jge	.LBB14_42
.LBB14_41:                              # %if.then.78
	movl	$-1, -4(%rbp)
	jmp	.LBB14_45
.LBB14_42:                              # %if.end.79
                                        #   in Loop: Header=BB14_24 Depth=1
	jmp	.LBB14_43
.LBB14_43:                              # %do.cond
                                        #   in Loop: Header=BB14_24 Depth=1
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	cmpb	$0, (%rax)
	jne	.LBB14_24
# BB#44:                                # %do.end.82
	movl	$0, -4(%rbp)
.LBB14_45:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	UsersAcl, .Lfunc_end14-UsersAcl
	.cfi_endproc

	.align	16, 0x90
	.type	UserAclCopy,@function
UserAclCopy:                            # @UserAclCopy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, (%rsi)
	je	.LBB15_2
# BB#1:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB15_3
.LBB15_2:                               # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB15_37
.LBB15_3:                               # %if.end
	jmp	.LBB15_4
.LBB15_4:                               # %do.body
	jmp	.LBB15_5
.LBB15_5:                               # %do.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	320(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	320(%rax), %edx
	movl	%edx, -48(%rbp)
	cmpl	%edx, %ecx
	jne	.LBB15_7
# BB#6:                                 # %if.then.3
	movl	$-1, -4(%rbp)
	jmp	.LBB15_37
.LBB15_7:                               # %if.end.4
	movq	windows, %rax
	movq	%rax, -32(%rbp)
.LBB15_8:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_10 Depth 2
	cmpq	$0, -32(%rbp)
	je	.LBB15_25
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB15_8 Depth=1
	movl	$0, -36(%rbp)
.LBB15_10:                              # %for.cond.6
                                        #   Parent Loop BB15_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -36(%rbp)
	jge	.LBB15_23
# BB#11:                                # %for.body.8
                                        #   in Loop: Header=BB15_10 Depth=2
	movl	$128, %eax
	movl	-48(%rbp), %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rdx
	movslq	-36(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	9816(%rdi,%rsi,8), %rsi
	movzbl	(%rsi,%rdx), %ecx
	movl	-48(%rbp), %r8d
	andl	$7, %r8d
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	%r8d, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	movl	-52(%rbp), %r8d         # 4-byte Reload
	andl	%eax, %r8d
	cmpl	$0, %r8d
	je	.LBB15_13
# BB#12:                                # %if.then.14
                                        #   in Loop: Header=BB15_10 Depth=2
	movl	$128, %eax
	movl	-44(%rbp), %ecx
	andl	$7, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	movl	-44(%rbp), %edx
	sarl	$3, %edx
	movslq	%edx, %rsi
	movslq	-36(%rbp), %rdi
	movq	-32(%rbp), %r8
	movq	9816(%r8,%rdi,8), %rdi
	movzbl	(%rdi,%rsi), %edx
	orl	%eax, %edx
	movb	%dl, %cl
	movb	%cl, (%rdi,%rsi)
	jmp	.LBB15_21
.LBB15_13:                              # %if.else
                                        #   in Loop: Header=BB15_10 Depth=2
	movl	$128, %eax
	movl	-44(%rbp), %ecx
	andl	$7, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	xorl	$-1, %eax
	movl	-44(%rbp), %edx
	sarl	$3, %edx
	movslq	%edx, %rsi
	movslq	-36(%rbp), %rdi
	movq	-32(%rbp), %r8
	movq	9816(%r8,%rdi,8), %rdi
	movzbl	(%rdi,%rsi), %edx
	andl	%eax, %edx
	movb	%dl, %cl
	movb	%cl, (%rdi,%rsi)
	movq	-32(%rbp), %rsi
	movq	9808(%rsi), %rsi
	movq	-16(%rbp), %rdi
	cmpq	(%rdi), %rsi
	jne	.LBB15_20
# BB#14:                                # %land.lhs.true
                                        #   in Loop: Header=BB15_10 Depth=2
	cmpl	$1, -36(%rbp)
	jne	.LBB15_20
# BB#15:                                # %if.then.40
                                        #   in Loop: Header=BB15_10 Depth=2
	jmp	.LBB15_16
.LBB15_16:                              # %do.body.41
                                        #   in Loop: Header=BB15_10 Depth=2
	jmp	.LBB15_17
.LBB15_17:                              # %do.end.42
                                        #   in Loop: Header=BB15_10 Depth=2
	movq	-32(%rbp), %rax
	movq	$0, 9808(%rax)
	movq	-32(%rbp), %rax
	cmpl	$2, 9800(%rax)
	jne	.LBB15_19
# BB#18:                                # %if.then.46
                                        #   in Loop: Header=BB15_10 Depth=2
	movq	-32(%rbp), %rax
	movl	$1, 9800(%rax)
.LBB15_19:                              # %if.end.48
                                        #   in Loop: Header=BB15_10 Depth=2
	jmp	.LBB15_20
.LBB15_20:                              # %if.end.49
                                        #   in Loop: Header=BB15_10 Depth=2
	jmp	.LBB15_21
.LBB15_21:                              # %if.end.50
                                        #   in Loop: Header=BB15_10 Depth=2
	jmp	.LBB15_22
.LBB15_22:                              # %for.inc
                                        #   in Loop: Header=BB15_10 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB15_10
.LBB15_23:                              # %for.end
                                        #   in Loop: Header=BB15_8 Depth=1
	jmp	.LBB15_24
.LBB15_24:                              # %for.inc.51
                                        #   in Loop: Header=BB15_8 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB15_8
.LBB15_25:                              # %for.end.52
	movl	$0, -40(%rbp)
.LBB15_26:                              # %for.cond.53
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_28 Depth 2
	cmpl	$187, -40(%rbp)
	jg	.LBB15_36
# BB#27:                                # %for.body.56
                                        #   in Loop: Header=BB15_26 Depth=1
	movl	$0, -36(%rbp)
.LBB15_28:                              # %for.cond.57
                                        #   Parent Loop BB15_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$1, -36(%rbp)
	jge	.LBB15_34
# BB#29:                                # %for.body.60
                                        #   in Loop: Header=BB15_28 Depth=2
	movl	$128, %eax
	movabsq	$comms, %rcx
	movl	-48(%rbp), %edx
	sarl	$3, %edx
	movslq	%edx, %rsi
	movslq	-36(%rbp), %rdi
	movslq	-40(%rbp), %r8
	imulq	$24, %r8, %r8
	addq	%r8, %rcx
	movq	16(%rcx,%rdi,8), %rcx
	movzbl	(%rcx,%rsi), %edx
	movl	-48(%rbp), %r9d
	andl	$7, %r9d
	movl	%r9d, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	andl	%eax, %edx
	cmpl	$0, %edx
	je	.LBB15_31
# BB#30:                                # %if.then.73
                                        #   in Loop: Header=BB15_28 Depth=2
	movabsq	$comms, %rax
	movl	$128, %ecx
	movl	-44(%rbp), %edx
	andl	$7, %edx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-56(%rbp), %edx         # 4-byte Reload
	sarl	%cl, %edx
	movl	-44(%rbp), %esi
	sarl	$3, %esi
	movslq	%esi, %rdi
	movslq	-36(%rbp), %r8
	movslq	-40(%rbp), %r9
	imulq	$24, %r9, %r9
	addq	%r9, %rax
	movq	16(%rax,%r8,8), %rax
	movzbl	(%rax,%rdi), %esi
	orl	%edx, %esi
	movb	%sil, %cl
	movb	%cl, (%rax,%rdi)
	jmp	.LBB15_32
.LBB15_31:                              # %if.else.87
                                        #   in Loop: Header=BB15_28 Depth=2
	movabsq	$comms, %rax
	movl	$128, %ecx
	movl	-44(%rbp), %edx
	andl	$7, %edx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-60(%rbp), %edx         # 4-byte Reload
	sarl	%cl, %edx
	xorl	$-1, %edx
	movl	-44(%rbp), %esi
	sarl	$3, %esi
	movslq	%esi, %rdi
	movslq	-36(%rbp), %r8
	movslq	-40(%rbp), %r9
	imulq	$24, %r9, %r9
	addq	%r9, %rax
	movq	16(%rax,%r8,8), %rax
	movzbl	(%rax,%rdi), %esi
	andl	%edx, %esi
	movb	%sil, %cl
	movb	%cl, (%rax,%rdi)
.LBB15_32:                              # %if.end.102
                                        #   in Loop: Header=BB15_28 Depth=2
	jmp	.LBB15_33
.LBB15_33:                              # %for.inc.103
                                        #   in Loop: Header=BB15_28 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB15_28
.LBB15_34:                              # %for.end.105
                                        #   in Loop: Header=BB15_26 Depth=1
	jmp	.LBB15_35
.LBB15_35:                              # %for.inc.106
                                        #   in Loop: Header=BB15_26 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB15_26
.LBB15_36:                              # %for.end.108
	movl	$0, -4(%rbp)
.LBB15_37:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end15:
	.size	UserAclCopy, .Lfunc_end15-UserAclCopy
	.cfi_endproc

	.align	16, 0x90
	.type	UserAcl,@function
UserAcl:                                # @UserAcl
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rcx
	cmpq	$0, (%rcx)
	je	.LBB16_2
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movl	$.L.str.3, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB16_4
.LBB16_2:                               # %lor.lhs.false
	cmpl	$1, -28(%rbp)
	jle	.LBB16_5
# BB#3:                                 # %land.lhs.true.2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.3, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB16_5
.LBB16_4:                               # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB16_25
.LBB16_5:                               # %if.end
	movl	-28(%rbp), %eax
	decl	%eax
	movl	%eax, %ecx
	subl	$3, %eax
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movl	%eax, -52(%rbp)         # 4-byte Spill
	ja	.LBB16_24
# BB#26:                                # %if.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	.LJTI16_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB16_6:                               # %sw.bb
	jmp	.LBB16_7
.LBB16_7:                               # %do.body
	jmp	.LBB16_8
.LBB16_8:                               # %do.end
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-24(%rbp), %rdx
	callq	UserAdd
	movb	$1, %cl
	cmpl	$0, %eax
	movb	%cl, -53(%rbp)          # 1-byte Spill
	jl	.LBB16_10
# BB#9:                                 # %lor.rhs
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	24(%rax), %rcx
	callq	AclSetPerm
	cmpl	$0, %eax
	setne	%r8b
	movb	%r8b, -53(%rbp)         # 1-byte Spill
.LBB16_10:                              # %lor.end
	movb	-53(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB16_25
.LBB16_11:                              # %sw.bb.13
	jmp	.LBB16_12
.LBB16_12:                              # %do.body.14
	jmp	.LBB16_13
.LBB16_13:                              # %do.end.15
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-24(%rbp), %rdx
	callq	UserAdd
	movb	$1, %r8b
	cmpl	$0, %eax
	movb	%r8b, -54(%rbp)         # 1-byte Spill
	jl	.LBB16_15
# BB#14:                                # %lor.rhs.19
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	16(%rax), %rcx
	callq	AclSetPerm
	cmpl	$0, %eax
	setne	%r8b
	movb	%r8b, -54(%rbp)         # 1-byte Spill
.LBB16_15:                              # %lor.end.24
	movb	-54(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB16_25
.LBB16_16:                              # %sw.bb.26
	jmp	.LBB16_17
.LBB16_17:                              # %do.body.27
	jmp	.LBB16_18
.LBB16_18:                              # %do.end.28
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-24(%rbp), %rdx
	callq	UserAdd
	cmpl	$0, %eax
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB16_25
.LBB16_19:                              # %sw.bb.33
	jmp	.LBB16_20
.LBB16_20:                              # %do.body.34
	jmp	.LBB16_21
.LBB16_21:                              # %do.end.35
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-24(%rbp), %rdx
	callq	UserAdd
	movb	$1, %r8b
	cmpl	$0, %eax
	movb	%r8b, -55(%rbp)         # 1-byte Spill
	jl	.LBB16_23
# BB#22:                                # %lor.rhs.40
	movabsq	$.L.str.1, %rdx
	movabsq	$.L.str.2, %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	callq	AclSetPerm
	cmpl	$0, %eax
	setne	%r8b
	movb	%r8b, -55(%rbp)         # 1-byte Spill
.LBB16_23:                              # %lor.end.43
	movb	-55(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB16_25
.LBB16_24:                              # %sw.default
	movl	$-1, -4(%rbp)
.LBB16_25:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	UserAcl, .Lfunc_end16-UserAcl
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI16_0:
	.quad	.LBB16_19
	.quad	.LBB16_16
	.quad	.LBB16_11
	.quad	.LBB16_6

	.text
	.globl	AclUmask
	.align	16, 0x90
	.type	AclUmask,@function
AclUmask:                               # @AclUmask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movb	$0, -89(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -88(%rbp)
.LBB17_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB17_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-88(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -89(%rbp)
	movsbl	%cl, %edx
	cmpl	$43, %edx
	je	.LBB17_4
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB17_1 Depth=1
	movsbl	-89(%rbp), %eax
	cmpl	$45, %eax
	jne	.LBB17_5
.LBB17_4:                               # %if.then
	jmp	.LBB17_7
.LBB17_5:                               # %if.end
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_6
.LBB17_6:                               # %for.inc
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB17_1
.LBB17_7:                               # %for.end
	movq	-88(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB17_9
# BB#8:                                 # %if.then.6
	movabsq	$.L.str.23, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$-1, -4(%rbp)
	jmp	.LBB17_18
.LBB17_9:                               # %if.end.7
	movl	$15, %eax
	movl	%eax, %edx
	leaq	-48(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	strncpy
	movb	$0, -33(%rbp)
	movq	-88(%rbp), %rdx
	movb	$0, (%rdx)
	movq	-24(%rbp), %rsi
	movl	$.L.str.24, %ecx
	movl	%ecx, %edi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB17_11
# BB#10:                                # %if.then.10
	movabsq	$.L.str.16, %rax
	movq	-24(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movq	%rax, -64(%rbp)
	jmp	.LBB17_12
.LBB17_11:                              # %if.else
	movabsq	$.L.str.12, %rax
	movq	%rax, -64(%rbp)
.LBB17_12:                              # %if.end.14
	leaq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB17_14
# BB#13:                                # %cond.true
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB17_15
.LBB17_14:                              # %cond.false
	movabsq	$.L.str.25, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB17_15
.LBB17_15:                              # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	$3, %esi
	leaq	-80(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rdi
	callq	UsersAcl
	cmpl	$0, %eax
	je	.LBB17_17
# BB#16:                                # %if.then.23
	movabsq	$.L.str.26, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movb	-89(%rbp), %dl
	movq	-88(%rbp), %rax
	movb	%dl, (%rax)
	movl	$-1, -4(%rbp)
	jmp	.LBB17_18
.LBB17_17:                              # %if.end.24
	movb	-89(%rbp), %al
	movq	-88(%rbp), %rcx
	movb	%al, (%rcx)
	movl	$0, -4(%rbp)
.LBB17_18:                              # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	AclUmask, .Lfunc_end17-AclUmask
	.cfi_endproc

	.globl	AclWinSwap
	.align	16, 0x90
	.type	AclWinSwap,@function
AclWinSwap:                             # @AclWinSwap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB18_2
.LBB18_2:                               # %do.end
	popq	%rbp
	retq
.Lfunc_end18:
	.size	AclWinSwap, .Lfunc_end18-AclWinSwap
	.cfi_endproc

	.globl	AclCheckPermWin
	.align	16, 0x90
	.type	AclCheckPermWin,@function
AclCheckPermWin:                        # @AclCheckPermWin
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	cmpl	$0, -20(%rbp)
	jl	.LBB19_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$3, -20(%rbp)
	jl	.LBB19_3
.LBB19_2:                               # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB19_21
.LBB19_3:                               # %if.end
	cmpq	$0, EffectiveAclUser
	je	.LBB19_7
# BB#4:                                 # %if.then.2
	jmp	.LBB19_5
.LBB19_5:                               # %do.body
	jmp	.LBB19_6
.LBB19_6:                               # %do.end
	movq	EffectiveAclUser, %rax
	movq	%rax, -16(%rbp)
.LBB19_7:                               # %if.end.3
	movl	$128, %eax
	movq	-16(%rbp), %rcx
	movl	320(%rcx), %edx
	sarl	$3, %edx
	movslq	%edx, %rcx
	movslq	-20(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	9816(%rdi,%rsi,8), %rsi
	movzbl	(%rsi,%rcx), %edx
	movq	-16(%rbp), %rcx
	movl	320(%rcx), %r8d
	andl	$7, %r8d
	movl	%r8d, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	andl	%eax, %edx
	movl	%edx, -36(%rbp)
# BB#8:                                 # %do.body.9
	jmp	.LBB19_9
.LBB19_9:                               # %do.end.10
	cmpl	$0, -36(%rbp)
	jne	.LBB19_18
# BB#10:                                # %if.then.12
	movq	-16(%rbp), %rax
	addq	$352, %rax              # imm = 0x160
	movq	%rax, -48(%rbp)
	movq	EffectiveAclUser, %rax
	movq	%rax, -56(%rbp)
	movq	$0, EffectiveAclUser
.LBB19_11:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_15
# BB#12:                                # %while.body
                                        #   in Loop: Header=BB19_11 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	AclCheckPermWin
	cmpl	$0, %eax
	jne	.LBB19_14
# BB#13:                                # %if.then.16
	jmp	.LBB19_15
.LBB19_14:                              # %if.end.17
                                        #   in Loop: Header=BB19_11 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB19_11
.LBB19_15:                              # %while.end
	movq	-56(%rbp), %rax
	movq	%rax, EffectiveAclUser
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_17
# BB#16:                                # %if.then.19
	movl	$1, -36(%rbp)
.LBB19_17:                              # %if.end.20
	jmp	.LBB19_18
.LBB19_18:                              # %if.end.21
	jmp	.LBB19_19
.LBB19_19:                              # %do.body.22
	jmp	.LBB19_20
.LBB19_20:                              # %do.end.23
	cmpl	$0, -36(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
.LBB19_21:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	AclCheckPermWin, .Lfunc_end19-AclCheckPermWin
	.cfi_endproc

	.globl	AclCheckPermCmd
	.align	16, 0x90
	.type	AclCheckPermCmd,@function
AclCheckPermCmd:                        # @AclCheckPermCmd
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	cmpl	$0, -20(%rbp)
	jl	.LBB20_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$1, -20(%rbp)
	jl	.LBB20_3
.LBB20_2:                               # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB20_21
.LBB20_3:                               # %if.end
	cmpq	$0, EffectiveAclUser
	je	.LBB20_7
# BB#4:                                 # %if.then.2
	jmp	.LBB20_5
.LBB20_5:                               # %do.body
	jmp	.LBB20_6
.LBB20_6:                               # %do.end
	movq	EffectiveAclUser, %rax
	movq	%rax, -16(%rbp)
.LBB20_7:                               # %if.end.3
	movl	$128, %eax
	movq	-16(%rbp), %rcx
	movl	320(%rcx), %edx
	sarl	$3, %edx
	movslq	%edx, %rcx
	movslq	-20(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	16(%rdi,%rsi,8), %rsi
	movzbl	(%rsi,%rcx), %edx
	movq	-16(%rbp), %rcx
	movl	320(%rcx), %r8d
	andl	$7, %r8d
	movl	%r8d, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %eax
	andl	%eax, %edx
	movl	%edx, -36(%rbp)
# BB#8:                                 # %do.body.9
	jmp	.LBB20_9
.LBB20_9:                               # %do.end.10
	cmpl	$0, -36(%rbp)
	jne	.LBB20_18
# BB#10:                                # %if.then.12
	movq	-16(%rbp), %rax
	addq	$352, %rax              # imm = 0x160
	movq	%rax, -48(%rbp)
	movq	EffectiveAclUser, %rax
	movq	%rax, -56(%rbp)
	movq	$0, EffectiveAclUser
.LBB20_11:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_15
# BB#12:                                # %while.body
                                        #   in Loop: Header=BB20_11 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	AclCheckPermCmd
	cmpl	$0, %eax
	jne	.LBB20_14
# BB#13:                                # %if.then.16
	jmp	.LBB20_15
.LBB20_14:                              # %if.end.17
                                        #   in Loop: Header=BB20_11 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB20_11
.LBB20_15:                              # %while.end
	movq	-56(%rbp), %rax
	movq	%rax, EffectiveAclUser
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_17
# BB#16:                                # %if.then.19
	movl	$1, -36(%rbp)
.LBB20_17:                              # %if.end.20
	jmp	.LBB20_18
.LBB20_18:                              # %if.end.21
	jmp	.LBB20_19
.LBB20_19:                              # %do.body.22
	jmp	.LBB20_20
.LBB20_20:                              # %do.end.23
	cmpl	$0, -36(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
.LBB20_21:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	AclCheckPermCmd, .Lfunc_end20-AclCheckPermCmd
	.cfi_endproc

	.type	maxusercount,@object    # @maxusercount
	.bss
	.globl	maxusercount
	.align	4
maxusercount:
	.long	0                       # 0x0
	.size	maxusercount, 4

	.type	users,@object           # @users
	.comm	users,8,8
	.type	DefaultEsc,@object      # @DefaultEsc
	.data
	.globl	DefaultEsc
	.align	4
DefaultEsc:
	.long	4294967295              # 0xffffffff
	.size	DefaultEsc, 4

	.type	DefaultMetaEsc,@object  # @DefaultMetaEsc
	.globl	DefaultMetaEsc
	.align	4
DefaultMetaEsc:
	.long	4294967295              # 0xffffffff
	.size	DefaultMetaEsc, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"none"
	.size	.L.str, 5

	.type	userbits,@object        # @userbits
	.local	userbits
	.comm	userbits,8,8
	.type	default_c_bit,@object   # @default_c_bit
	.local	default_c_bit
	.comm	default_c_bit,1,1
	.type	default_w_bit,@object   # @default_w_bit
	.data
default_w_bit:
	.zero	3,1
	.size	default_w_bit, 3

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"+a"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"#?"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"nobody"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"-rwx"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"+x"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"su"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"detach"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"displays"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"version"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"+r"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"-r"
	.size	.L.str.11, 3

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"#"
	.size	.L.str.12, 2

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"+w"
	.size	.L.str.13, 3

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"-w"
	.size	.L.str.14, 3

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"-x"
	.size	.L.str.15, 3

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"?"
	.size	.L.str.16, 2

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.zero	1
	.size	.L.str.17, 1

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"screen"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%s: \"su %s\" %s for \"%s\""
	.size	.L.str.19, 24

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"failed"
	.size	.L.str.20, 7

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"succeded"
	.size	.L.str.21, 9

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Sorry."
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Bad argument. Should be ``[user[,user...]{+|-}rwxn''."
	.size	.L.str.23, 54

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"??"
	.size	.L.str.24, 3

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"*"
	.size	.L.str.25, 2

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"UsersAcl failed. Hmmm."
	.size	.L.str.26, 23

	.type	EffectiveAclUser,@object # @EffectiveAclUser
	.bss
	.globl	EffectiveAclUser
	.align	8
EffectiveAclUser:
	.quad	0
	.size	EffectiveAclUser, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
