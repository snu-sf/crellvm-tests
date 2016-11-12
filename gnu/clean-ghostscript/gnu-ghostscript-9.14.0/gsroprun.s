	.text
	.file	"gsroprun.bc"
	.globl	rop_get_run_op
	.align	16, 0x90
	.type	rop_get_run_op,@function
rop_get_run_op:                         # @rop_get_run_op
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
	pushq	%r12
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -48
.Ltmp6:
	.cfi_offset %r12, -40
.Ltmp7:
	.cfi_offset %r14, -32
.Ltmp8:
	.cfi_offset %r15, -24
.Ltmp9:
	.cfi_offset %rbp, -16
	movl	%esi, %eax
	movq	%rdi, %r14
	leal	(,%rax,4), %esi
	xorl	%eax, %esi
	testb	$-52, %sil
	jne	.LBB0_2
# BB#1:                                 # %if.then
	andl	$-6, %ecx
	orl	$1, %ecx
	andl	$-257, %eax             # imm = 0xFFFFFFFFFFFFFEFF
.LBB0_2:                                # %if.end
	movl	%eax, %esi
	shll	$4, %esi
	xorl	%eax, %esi
	testb	$-16, %sil
	jne	.LBB0_4
# BB#3:                                 # %if.then.7
	andl	$-11, %ecx
	orl	$2, %ecx
	andl	$-513, %eax             # imm = 0xFFFFFFFFFFFFFDFF
.LBB0_4:                                # %if.end.11
	movl	%ecx, %esi
	andl	$3, %esi
	cmpl	$2, %esi
	sete	%bl
	movzbl	%bl, %r9d
	movl	%edx, %r10d
	addl	%r10d, %r10d
	andl	$-16, %r10d
	xorl	%r12d, %r12d
	movabsq	$281474976776193, %r8   # imm = 0x1000000010001
	jmp	.LBB0_5
.LBB0_24:                               #   in Loop: Header=BB0_5 Depth=1
	movb	$1, %r12b
	xorl	%r9d, %r9d
	.align	16, 0x90
.LBB0_5:                                # %if.end.15
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
	testb	$1, %r12b
	je	.LBB0_7
# BB#6:                                 # %if.then.16
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	%ecx, %ebp
	shrl	%ebp
	movl	%ebp, %ebx
	andl	$1, %ebx
	addl	%ecx, %ecx
	movl	%ecx, %edi
	andl	$2, %edi
	orl	%ebx, %edi
	andl	$4, %ebp
	orl	%edi, %ebp
	andl	$8, %ecx
	orl	%ebp, %ecx
	leal	(,%rax,4), %edi
	andl	$48, %edi
	movl	%eax, %ebp
	shrl	$2, %ebp
	andl	$12, %ebp
	movl	%eax, %ebx
	andl	$-829, %ebx             # imm = 0xFFFFFFFFFFFFFCC3
	leal	(%rax,%rax), %esi
	andl	$512, %esi              # imm = 0x200
	shrl	%eax
	andl	$256, %eax              # imm = 0x100
	orl	%ebp, %ebx
	orl	%edi, %ebx
	orl	%esi, %ebx
	orl	%eax, %ebx
	movl	%ebx, %eax
.LBB0_7:                                # %if.end.48
                                        #   in Loop: Header=BB0_5 Depth=1
	movl	%eax, %esi
	shll	$7, %esi
	leal	(%rcx,%r10), %edi
	leal	64(%rsi,%rdi), %ebx
	jmp	.LBB0_8
	.align	16, 0x90
.LBB0_28:                               # %if.then.192
                                        #   in Loop: Header=BB0_8 Depth=2
	andl	$63, %ebx
.LBB0_8:                                # %retry
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$10946, %ebx            # imm = 0x2AC2
	jg	.LBB0_13
# BB#9:                                 # %retry
                                        #   in Loop: Header=BB0_8 Depth=2
	movl	%ebx, %ebp
	cmpl	$63, %ebx
	jbe	.LBB0_12
# BB#10:                                # %retry
                                        #   in Loop: Header=BB0_8 Depth=2
	cmpl	$1985, %ebx             # imm = 0x7C1
	jne	.LBB0_26
	jmp	.LBB0_11
	.align	16, 0x90
.LBB0_13:                               # %retry
                                        #   in Loop: Header=BB0_8 Depth=2
	cmpl	$21826, %ebx            # imm = 0x5542
	jg	.LBB0_32
# BB#14:                                # %retry
                                        #   in Loop: Header=BB0_8 Depth=2
	cmpl	$11602, %ebx            # imm = 0x2D52
	jg	.LBB0_22
# BB#15:                                # %retry
                                        #   in Loop: Header=BB0_8 Depth=2
	cmpl	$10994, %ebx            # imm = 0x2AF2
	jg	.LBB0_19
# BB#16:                                # %retry
                                        #   in Loop: Header=BB0_8 Depth=2
	cmpl	$10947, %ebx            # imm = 0x2AC3
	je	.LBB0_43
# BB#17:                                # %retry
                                        #   in Loop: Header=BB0_8 Depth=2
	cmpl	$10963, %ebx            # imm = 0x2AD3
	jne	.LBB0_26
	jmp	.LBB0_18
	.align	16, 0x90
.LBB0_12:                               # %retry
                                        #   in Loop: Header=BB0_8 Depth=2
	jmpq	*.LJTI0_0(,%rbp,8)
.LBB0_32:                               # %retry
                                        #   in Loop: Header=BB0_8 Depth=2
	cmpl	$30529, %ebx            # imm = 0x7741
	jg	.LBB0_36
# BB#33:                                # %retry
                                        #   in Loop: Header=BB0_8 Depth=2
	leal	-21827(%rbx), %ebp
	cmpl	$48, %ebp
	ja	.LBB0_34
# BB#47:                                # %retry
                                        #   in Loop: Header=BB0_8 Depth=2
	btq	%rbp, %r8
	jb	.LBB0_48
.LBB0_34:                               # %retry
                                        #   in Loop: Header=BB0_8 Depth=2
	cmpl	$26178, %ebx            # imm = 0x6642
	jne	.LBB0_26
	jmp	.LBB0_35
.LBB0_22:                               # %retry
                                        #   in Loop: Header=BB0_8 Depth=2
	cmpl	$13138, %ebx            # imm = 0x3352
	jg	.LBB0_29
# BB#23:                                # %retry
                                        #   in Loop: Header=BB0_8 Depth=2
	cmpl	$11603, %ebx            # imm = 0x2D53
	je	.LBB0_24
# BB#25:                                # %retry
                                        #   in Loop: Header=BB0_8 Depth=2
	cmpl	$11635, %ebx            # imm = 0x2D73
	jne	.LBB0_26
	jmp	.LBB0_24
.LBB0_36:                               # %retry
                                        #   in Loop: Header=BB0_8 Depth=2
	cmpl	$32064, %ebx            # imm = 0x7D40
	jg	.LBB0_40
# BB#37:                                # %retry
                                        #   in Loop: Header=BB0_8 Depth=2
	cmpl	$30530, %ebx            # imm = 0x7742
	je	.LBB0_49
# BB#38:                                # %retry
                                        #   in Loop: Header=BB0_8 Depth=2
	cmpl	$30785, %ebx            # imm = 0x7841
	jne	.LBB0_26
	jmp	.LBB0_39
.LBB0_19:                               # %retry
                                        #   in Loop: Header=BB0_8 Depth=2
	cmpl	$10995, %ebx            # imm = 0x2AF3
	je	.LBB0_45
# BB#20:                                # %retry
                                        #   in Loop: Header=BB0_8 Depth=2
	cmpl	$11585, %ebx            # imm = 0x2D41
	jne	.LBB0_26
	jmp	.LBB0_21
.LBB0_29:                               # %retry
                                        #   in Loop: Header=BB0_8 Depth=2
	cmpl	$13139, %ebx            # imm = 0x3353
	je	.LBB0_46
# BB#30:                                # %retry
                                        #   in Loop: Header=BB0_8 Depth=2
	cmpl	$13171, %ebx            # imm = 0x3373
	jne	.LBB0_26
	jmp	.LBB0_31
.LBB0_40:                               # %retry
                                        #   in Loop: Header=BB0_8 Depth=2
	cmpl	$32065, %ebx            # imm = 0x7D41
	je	.LBB0_50
# BB#41:                                # %retry
                                        #   in Loop: Header=BB0_8 Depth=2
	cmpl	$32371, %ebx            # imm = 0x7E73
	je	.LBB0_42
	.align	16, 0x90
.LBB0_26:                               # %sw.default
                                        #   in Loop: Header=BB0_8 Depth=2
	testl	%r9d, %r9d
	jne	.LBB0_24
# BB#27:                                # %if.end.189
                                        #   in Loop: Header=BB0_8 Depth=2
	testb	$64, %bl
	jne	.LBB0_28
# BB#82:                                # %if.end.194
	andb	$15, %cl
	andl	$1023, %eax             # imm = 0x3FF
	movb	%cl, 53(%r14)
	movb	%dl, 52(%r14)
	movl	%eax, 48(%r14)
	movq	$0, 72(%r14)
	callq	gs_program_name
	movq	%rax, %r15
	callq	gs_revision_number
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str, %edi
	xorl	%eax, %eax
	movl	%ebx, %esi
	callq	errprintf_nomem
	jmp	.LBB0_83
.LBB0_43:                               # %sw.bb.61
	andb	$15, %cl
	andl	$1023, %eax             # imm = 0x3FF
	movb	%cl, 53(%r14)
	movb	%dl, 52(%r14)
	movl	%eax, 48(%r14)
	movq	$0, 72(%r14)
	movq	$invert_rop_run1, (%r14)
.LBB0_44:                               # %sw.epilog
	movl	$0, 24(%r14)
	movl	$0, 40(%r14)
	movb	$0, 54(%r14)
	jmp	.LBB0_83
.LBB0_49:                               # %sw.bb.83
	andb	$15, %cl
	andl	$1023, %eax             # imm = 0x3FF
	movb	%cl, 53(%r14)
	movb	%dl, 52(%r14)
	movl	%eax, 48(%r14)
	movq	$0, 72(%r14)
	movq	$dors_rop_run1_const_t, (%r14)
	jmp	.LBB0_83
.LBB0_45:                               # %sw.bb.67
	andb	$15, %cl
	andl	$1023, %eax             # imm = 0x3FF
	movb	%cl, 53(%r14)
	movb	%dl, 52(%r14)
	movl	%eax, 48(%r14)
	movq	$0, 72(%r14)
	movq	$invert_rop_run24, (%r14)
	jmp	.LBB0_83
.LBB0_46:                               # %sw.bb.72
	andb	$15, %cl
	andl	$1023, %eax             # imm = 0x3FF
	movb	%cl, 53(%r14)
	movb	%dl, 52(%r14)
	movl	%eax, 48(%r14)
	movq	$0, 72(%r14)
	movq	$xor_rop_run8_const_st, (%r14)
	jmp	.LBB0_83
.LBB0_50:                               # %sw.bb.87
	andb	$15, %cl
	andl	$1023, %eax             # imm = 0x3FF
	movb	%cl, 53(%r14)
	movb	%dl, 52(%r14)
	movl	%eax, 48(%r14)
	movq	$0, 72(%r14)
	movq	$dort_rop_run1_const_s, (%r14)
	jmp	.LBB0_83
.LBB0_35:                               # %sw.bb.81
	andb	$15, %cl
	andl	$1023, %eax             # imm = 0x3FF
	movb	%cl, 53(%r14)
	movb	%dl, 52(%r14)
	movl	%eax, 48(%r14)
	movq	$0, 72(%r14)
	movq	$sets_rop_run1_const_t, (%r14)
	jmp	.LBB0_83
.LBB0_11:                               # %sw.bb
	andb	$15, %cl
	andl	$1023, %eax             # imm = 0x3FF
	movb	%cl, 53(%r14)
	movb	%dl, 52(%r14)
	movl	%eax, 48(%r14)
	movq	$0, 72(%r14)
	movq	$notT_rop_run1_const_s, (%r14)
	jmp	.LBB0_83
.LBB0_48:                               # %sw.bb.79
	andb	$15, %cl
	andl	$1023, %eax             # imm = 0x3FF
	movb	%cl, 53(%r14)
	movb	%dl, 52(%r14)
	movl	%eax, 48(%r14)
	movq	$0, 72(%r14)
	movq	$nop_rop_const_st, (%r14)
	jmp	.LBB0_83
.LBB0_59:                               # %sw.bb.117
	andb	$15, %cl
	andl	$1023, %eax             # imm = 0x3FF
	movb	%cl, 53(%r14)
	movb	%dl, 52(%r14)
	movl	%eax, 48(%r14)
	movq	$0, 72(%r14)
	movq	$generic_rop_run8_1bit, (%r14)
	jmp	.LBB0_83
.LBB0_68:                               # %sw.bb.146
	andb	$15, %cl
	andl	$1023, %eax             # imm = 0x3FF
	movb	%cl, 53(%r14)
	movb	%dl, 52(%r14)
	movl	%eax, 48(%r14)
	movq	$0, 72(%r14)
	movq	$generic_rop_run8_const_s_1bit, (%r14)
	jmp	.LBB0_83
.LBB0_77:                               # %sw.bb.175
	andb	$15, %cl
	andl	$1023, %eax             # imm = 0x3FF
	movb	%cl, 53(%r14)
	movb	%dl, 52(%r14)
	movl	%eax, 48(%r14)
	movq	$0, 72(%r14)
	movq	$generic_rop_run8_const_st, (%r14)
	jmp	.LBB0_83
.LBB0_63:                               # %sw.bb.127
	andb	$15, %cl
	andl	$1023, %eax             # imm = 0x3FF
	movb	%cl, 53(%r14)
	movb	%dl, 52(%r14)
	movl	%eax, 48(%r14)
	movq	$0, 72(%r14)
	movq	$generic_rop_run24_1bit, (%r14)
	jmp	.LBB0_83
.LBB0_72:                               # %sw.bb.156
	andb	$15, %cl
	andl	$1023, %eax             # imm = 0x3FF
	movb	%cl, 53(%r14)
	movb	%dl, 52(%r14)
	movl	%eax, 48(%r14)
	movq	$0, 72(%r14)
	movq	$generic_rop_run24_const_s_1bit, (%r14)
	jmp	.LBB0_83
.LBB0_81:                               # %sw.bb.185
	andb	$15, %cl
	andl	$1023, %eax             # imm = 0x3FF
	movb	%cl, 53(%r14)
	movb	%dl, 52(%r14)
	movl	%eax, 48(%r14)
	movq	$0, 72(%r14)
	movq	$generic_rop_run24_const_st, (%r14)
	jmp	.LBB0_83
.LBB0_51:                               # %sw.bb.89
	andb	$15, %cl
	andl	$1023, %eax             # imm = 0x3FF
	movb	%cl, 53(%r14)
	movb	%dl, 52(%r14)
	movl	%eax, 48(%r14)
	movq	$0, 72(%r14)
	movq	$generic_rop_run1, (%r14)
	jmp	.LBB0_44
.LBB0_64:                               # %sw.bb.129
	andb	$15, %cl
	andl	$1023, %eax             # imm = 0x3FF
	movb	%cl, 53(%r14)
	movb	%dl, 52(%r14)
	movl	%eax, 48(%r14)
	movq	$0, 72(%r14)
	movq	$generic_rop_run1_const_s, (%r14)
	jmp	.LBB0_44
.LBB0_73:                               # %sw.bb.158
	andb	$15, %cl
	andl	$1023, %eax             # imm = 0x3FF
	movb	%cl, 53(%r14)
	movb	%dl, 52(%r14)
	movl	%eax, 48(%r14)
	movq	$0, 72(%r14)
	movq	$generic_rop_run1_const_st, (%r14)
	jmp	.LBB0_44
.LBB0_52:                               # %sw.bb.98
	andb	$15, %cl
	movl	%eax, %esi
	andl	$1023, %esi             # imm = 0x3FF
	movb	%cl, 53(%r14)
	movb	%dl, 52(%r14)
	movl	%esi, 48(%r14)
	movq	$0, 72(%r14)
	movb	%ah, %cl  # NOREX
	andl	$512, %eax              # imm = 0x200
	testb	$1, %cl
	jne	.LBB0_53
# BB#56:                                # %if.else.108
	testl	%eax, %eax
	je	.LBB0_58
# BB#57:                                # %if.then.111
	movq	$generic_rop_run8_trans_T, (%r14)
	jmp	.LBB0_83
.LBB0_65:                               # %sw.bb.138
	andb	$15, %cl
	movl	%eax, %esi
	andl	$1023, %esi             # imm = 0x3FF
	movb	%cl, 53(%r14)
	movb	%dl, 52(%r14)
	movl	%esi, 48(%r14)
	movq	$0, 72(%r14)
	testb	$3, %ah
	je	.LBB0_67
# BB#66:                                # %if.then.141
	movq	$generic_rop_run8_const_s_trans, (%r14)
	jmp	.LBB0_83
.LBB0_74:                               # %sw.bb.167
	andb	$15, %cl
	movl	%eax, %esi
	andl	$1023, %esi             # imm = 0x3FF
	movb	%cl, 53(%r14)
	movb	%dl, 52(%r14)
	movl	%esi, 48(%r14)
	movq	$0, 72(%r14)
	testb	$3, %ah
	je	.LBB0_76
# BB#75:                                # %if.then.170
	movq	$generic_rop_run8_const_st_trans, (%r14)
	jmp	.LBB0_83
.LBB0_60:                               # %sw.bb.119
	andb	$15, %cl
	movl	%eax, %esi
	andl	$1023, %esi             # imm = 0x3FF
	movb	%cl, 53(%r14)
	movb	%dl, 52(%r14)
	movl	%esi, 48(%r14)
	movq	$0, 72(%r14)
	testb	$3, %ah
	je	.LBB0_62
# BB#61:                                # %if.then.122
	movq	$generic_rop_run24_trans, (%r14)
	jmp	.LBB0_83
.LBB0_69:                               # %sw.bb.148
	andb	$15, %cl
	movl	%eax, %esi
	andl	$1023, %esi             # imm = 0x3FF
	movb	%cl, 53(%r14)
	movb	%dl, 52(%r14)
	movl	%esi, 48(%r14)
	movq	$0, 72(%r14)
	testb	$3, %ah
	je	.LBB0_71
# BB#70:                                # %if.then.151
	movq	$generic_rop_run24_const_s_trans, (%r14)
	jmp	.LBB0_83
.LBB0_78:                               # %sw.bb.177
	andb	$15, %cl
	movl	%eax, %esi
	andl	$1023, %esi             # imm = 0x3FF
	movb	%cl, 53(%r14)
	movb	%dl, 52(%r14)
	movl	%esi, 48(%r14)
	movq	$0, 72(%r14)
	testb	$3, %ah
	je	.LBB0_80
# BB#79:                                # %if.then.180
	movq	$generic_rop_run24_const_st_trans, (%r14)
	jmp	.LBB0_83
.LBB0_53:                               # %if.then.101
	testl	%eax, %eax
	je	.LBB0_55
# BB#54:                                # %if.then.104
	movq	$generic_rop_run8_trans_ST, (%r14)
	jmp	.LBB0_83
.LBB0_67:                               # %if.else.143
	movq	$generic_rop_run8_const_s, (%r14)
	jmp	.LBB0_83
.LBB0_76:                               # %if.else.172
	movq	$generic_rop_run8_const_st, (%r14)
	jmp	.LBB0_83
.LBB0_62:                               # %if.else.124
	movq	$generic_rop_run24, (%r14)
	jmp	.LBB0_83
.LBB0_71:                               # %if.else.153
	movq	$generic_rop_run24_const_s, (%r14)
	jmp	.LBB0_83
.LBB0_80:                               # %if.else.182
	movq	$generic_rop_run24_const_st, (%r14)
	jmp	.LBB0_83
.LBB0_58:                               # %if.else.113
	movq	$generic_rop_run8, (%r14)
	jmp	.LBB0_83
.LBB0_55:                               # %if.else
	movq	$generic_rop_run8_trans_S, (%r14)
	jmp	.LBB0_83
.LBB0_18:                               # %sw.bb.65
	andb	$15, %cl
	andl	$1023, %eax             # imm = 0x3FF
	movb	%cl, 53(%r14)
	movb	%dl, 52(%r14)
	movl	%eax, 48(%r14)
	movq	$0, 72(%r14)
	movq	$invert_rop_run8, (%r14)
	jmp	.LBB0_83
.LBB0_39:                               # %sw.bb.85
	andb	$15, %cl
	andl	$1023, %eax             # imm = 0x3FF
	movb	%cl, 53(%r14)
	movb	%dl, 52(%r14)
	movl	%eax, 48(%r14)
	movq	$0, 72(%r14)
	movq	$sett_rop_run1_const_s, (%r14)
	jmp	.LBB0_83
.LBB0_21:                               # %sw.bb.69
	andb	$15, %cl
	andl	$1023, %eax             # imm = 0x3FF
	movb	%cl, 53(%r14)
	movb	%dl, 52(%r14)
	movl	%eax, 48(%r14)
	movq	$0, 72(%r14)
	movq	$xor_rop_run1_const_s, (%r14)
	jmp	.LBB0_83
.LBB0_31:                               # %sw.bb.75
	andb	$15, %cl
	andl	$1023, %eax             # imm = 0x3FF
	movb	%cl, 53(%r14)
	movb	%dl, 52(%r14)
	movl	%eax, 48(%r14)
	movq	$0, 72(%r14)
	movq	$xor_rop_run24_const_st, (%r14)
	jmp	.LBB0_83
.LBB0_42:                               # %sw.bb.77
	andb	$15, %cl
	andl	$1023, %eax             # imm = 0x3FF
	movb	%cl, 53(%r14)
	movb	%dl, 52(%r14)
	movl	%eax, 48(%r14)
	movq	$0, 72(%r14)
	movq	$sort_rop_run24_const_st, (%r14)
.LBB0_83:                               # %sw.epilog
	testb	$1, %r12b
	je	.LBB0_85
# BB#84:                                # %if.then.198
	movq	(%r14), %rax
	movq	%rax, 8(%r14)
	movq	$rop_run_swapped, (%r14)
.LBB0_85:                               # %if.end.201
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	rop_get_run_op, .Lfunc_end0-rop_get_run_op
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_51
	.quad	.LBB0_64
	.quad	.LBB0_26
	.quad	.LBB0_73
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_52
	.quad	.LBB0_65
	.quad	.LBB0_26
	.quad	.LBB0_74
	.quad	.LBB0_59
	.quad	.LBB0_68
	.quad	.LBB0_26
	.quad	.LBB0_77
	.quad	.LBB0_59
	.quad	.LBB0_68
	.quad	.LBB0_26
	.quad	.LBB0_77
	.quad	.LBB0_59
	.quad	.LBB0_68
	.quad	.LBB0_26
	.quad	.LBB0_77
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_26
	.quad	.LBB0_60
	.quad	.LBB0_69
	.quad	.LBB0_26
	.quad	.LBB0_78
	.quad	.LBB0_63
	.quad	.LBB0_72
	.quad	.LBB0_26
	.quad	.LBB0_81
	.quad	.LBB0_63
	.quad	.LBB0_72
	.quad	.LBB0_26
	.quad	.LBB0_81
	.quad	.LBB0_63
	.quad	.LBB0_72
	.quad	.LBB0_26
	.quad	.LBB0_81

	.text
	.align	16, 0x90
	.type	notT_rop_run1_const_s,@function
notT_rop_run1_const_s:                  # @notT_rop_run1_const_s
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp11:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp12:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp13:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp14:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 56
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
	movzbl	54(%rdi), %eax
	movl	%esi, %r14d
	andl	$3, %r14d
	leal	(%rax,%r14,8), %eax
	movzbl	52(%rdi), %r15d
	imull	%edx, %r15d
	addl	%eax, %r15d
	movl	%r15d, %ecx
	andl	$31, %ecx
	movl	$-1, %r11d
	movl	$-1, %r8d
	shrl	%cl, %r8d
	xorl	%ecx, %ecx
	movl	%r15d, %edx
	andl	$31, %edx
	movq	32(%rdi), %rbp
	bswapl	%r8d
	cmovel	%ecx, %r8d
	movl	%ebp, %ebx
	andl	$3, %ebx
	subq	%rbx, %rbp
	shll	$3, %ebx
	subl	%eax, %ebx
	movl	%eax, %ecx
	andl	$31, %ecx
	shrl	%cl, %r11d
	movl	40(%rdi), %eax
	leal	(%rbx,%rax), %edi
	leaq	-4(%rbp), %r10
	movl	%edi, %edx
	shrl	$30, %edx
	andl	$2, %edx
	testl	%edi, %edi
	leal	32(%rbx,%rax), %r12d
	cmovnsl	%edi, %r12d
	cmovnsq	%rbp, %r10
	testl	%r12d, %r12d
	je	.LBB1_2
# BB#1:                                 # %lor.lhs.false
	leal	63(%r15), %eax
	andl	$-32, %eax
	leal	31(%r15,%r12), %edi
	andl	$-32, %edi
	cmpl	%eax, %edi
	movl	%edx, %r9d
	jge	.LBB1_3
.LBB1_2:                                # %if.then.40
	movl	%edx, %r9d
	orl	$8, %r9d
.LBB1_3:                                # %if.end.42
	subq	%r14, %rsi
	movl	%r15d, %edi
	addl	$-32, %edi
	jle	.LBB1_4
# BB#9:                                 # %if.end.72
	orl	%edx, %ecx
	je	.LBB1_16
# BB#10:                                # %do.body.79
	xorl	%eax, %eax
	testl	%edx, %edx
	movl	$0, %edx
	jne	.LBB1_12
# BB#11:                                # %cond.false.83
	movl	(%r10), %edx
	bswapl	%edx
	movb	%r12b, %cl
	shll	%cl, %edx
.LBB1_12:                               # %cond.end.86
	addq	$4, %r10
	testl	%r12d, %r12d
	je	.LBB1_14
# BB#13:                                # %cond.false.91
	movl	(%r10), %eax
	bswapl	%eax
	movl	$32, %ecx
	subl	%r12d, %ecx
	shrl	%cl, %eax
.LBB1_14:                               # %if.end.111
	orl	%edx, %eax
	notl	%eax
	movl	%r11d, %ecx
	notl	%ecx
	bswapl	%ecx
	andl	(%rsi), %ecx
	andl	%r11d, %eax
	bswapl	%eax
	orl	%ecx, %eax
	movl	%eax, (%rsi)
	addq	$4, %rsi
	cmpl	$65, %r15d
	jl	.LBB1_41
# BB#15:
	addl	$-64, %r15d
	movl	%r15d, %edi
.LBB1_16:                               # %if.then.114
	testl	%r12d, %r12d
	je	.LBB1_24
# BB#17:                                # %do.body.131.preheader
	movl	$32, %eax
	movl	$32, %r15d
	subl	%r12d, %r15d
	cmpl	$33, %edi
	cmovll	%edi, %eax
	notl	%eax
	leal	32(%rdi,%rax), %eax
	movl	%eax, %r11d
	shrl	$5, %r11d
	btl	$5, %eax
	jb	.LBB1_18
# BB#19:                                # %do.body.131.prol
	movl	(%r10), %eax
	movl	4(%r10), %ebp
	bswapl	%eax
	movb	%r12b, %cl
	shll	%cl, %eax
	leaq	4(%r10), %rbx
	bswapl	%ebp
	movb	%r15b, %cl
	shrl	%cl, %ebp
	orl	%eax, %ebp
	notl	%ebp
	bswapl	%ebp
	movl	%ebp, (%rsi)
	leaq	4(%rsi), %rax
	addl	$-32, %edi
	jmp	.LBB1_20
.LBB1_4:                                # %if.then.46
	movl	%r11d, %eax
	bswapl	%eax
	movl	%r8d, %ebx
	notl	%ebx
	xorl	%edi, %edi
	testl	%edx, %edx
	movl	$0, %edx
	jne	.LBB1_6
# BB#5:                                 # %cond.false
	movl	(%r10), %edx
	bswapl	%edx
	movb	%r12b, %cl
	shll	%cl, %edx
.LBB1_6:                                # %cond.end
	andl	%ebx, %eax
	testb	$8, %r9b
	jne	.LBB1_8
# BB#7:                                 # %cond.false.54
	movl	4(%r10), %edi
	bswapl	%edi
	movl	$32, %ecx
	subl	%r12d, %ecx
	shrl	%cl, %edi
.LBB1_8:                                # %cond.end.58
	orl	%edx, %edi
	notl	%edi
	bswapl	%edi
	notl	%r11d
	bswapl	%r11d
	orl	%r8d, %r11d
	andl	(%rsi), %r11d
	andl	%edi, %eax
	orl	%r11d, %eax
	movl	%eax, (%rsi)
	jmp	.LBB1_44
.LBB1_24:                               # %do.body.119.preheader
	cmpl	$33, %edi
	movl	$32, %eax
	movl	$32, %ecx
	cmovll	%edi, %ecx
	notl	%ecx
	leal	32(%rdi,%rcx), %r14d
	shrl	$5, %r14d
	leaq	1(%r14), %r11
	movq	%r11, %r15
	andq	$268435448, %r15        # imm = 0xFFFFFF8
	je	.LBB1_25
# BB#26:                                # %vector.memcheck
	cmpl	$33, %edi
	cmovll	%edi, %eax
	notl	%eax
	leal	32(%rdi,%rax), %eax
	shrl	$5, %eax
	leaq	(%r10,%rax,4), %rcx
	cmpq	%rcx, %rsi
	ja	.LBB1_28
# BB#27:                                # %vector.memcheck
	leaq	(%rsi,%rax,4), %rax
	cmpq	%rax, %r10
	ja	.LBB1_28
.LBB1_25:
	movq	%rsi, %rdx
	movq	%r10, %rbx
	movl	%edi, %ecx
	xorl	%r15d, %r15d
	jmp	.LBB1_33
.LBB1_18:
	movq	%rsi, %rax
	movq	%r10, %rbx
.LBB1_20:                               # %do.body.131.preheader.split
	leaq	1(%r11), %r14
	testl	%r11d, %r11d
	je	.LBB1_23
# BB#21:                                # %do.body.131.preheader.split.split
	addl	$32, %edi
	.align	16, 0x90
.LBB1_22:                               # %do.body.131
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %ebp
	movl	4(%rbx), %edx
	bswapl	%ebp
	movb	%r12b, %cl
	shll	%cl, %ebp
	bswapl	%edx
	movb	%r15b, %cl
	shrl	%cl, %edx
	orl	%ebp, %edx
	notl	%edx
	bswapl	%edx
	movl	%edx, (%rax)
	movl	4(%rbx), %edx
	movl	8(%rbx), %ebp
	bswapl	%edx
	movb	%r12b, %cl
	shll	%cl, %edx
	addq	$8, %rbx
	bswapl	%ebp
	movb	%r15b, %cl
	shrl	%cl, %ebp
	orl	%edx, %ebp
	notl	%ebp
	bswapl	%ebp
	movl	%ebp, 4(%rax)
	addl	$-64, %edi
	addq	$8, %rax
	cmpl	$32, %edi
	jg	.LBB1_22
.LBB1_23:                               # %do.body.153.loopexit101
	leaq	4(%rsi,%r11,4), %rsi
	leaq	(%r10,%r14,4), %r10
	jmp	.LBB1_41
.LBB1_28:                               # %vector.body.preheader
	movl	%r15d, %eax
	shll	$5, %eax
	cmpl	$33, %edi
	movl	$32, %ecx
	cmovll	%edi, %ecx
	notl	%ecx
	leal	32(%rdi,%rcx), %ecx
	shrl	$5, %ecx
	incl	%ecx
	andl	$268435448, %ecx        # imm = 0xFFFFFF8
	addq	$-8, %rcx
	movq	%rcx, %rbp
	shrq	$3, %rbp
	xorl	%r13d, %r13d
	btq	$3, %rcx
	jb	.LBB1_30
# BB#29:                                # %vector.body.prol
	movdqu	(%r10), %xmm0
	movdqu	16(%r10), %xmm1
	pcmpeqd	%xmm2, %xmm2
	pxor	%xmm2, %xmm0
	pxor	%xmm2, %xmm1
	movdqu	%xmm0, (%rsi)
	movdqu	%xmm1, 16(%rsi)
	movl	$8, %r13d
.LBB1_30:                               # %vector.body.preheader.split
	leaq	(%rsi,%r15,4), %rdx
	leaq	(%r10,%r15,4), %rbx
	movl	%edi, %ecx
	subl	%eax, %ecx
	testq	%rbp, %rbp
	je	.LBB1_33
# BB#31:                                # %vector.body.preheader.split.split
	movl	%edi, %eax
	notl	%eax
	cmpl	$-34, %eax
	movl	$-33, %ebp
	cmovgl	%eax, %ebp
	leal	32(%rdi,%rbp), %ebp
	shrl	$5, %ebp
	incl	%ebp
	andl	$268435448, %ebp        # imm = 0xFFFFFF8
	subq	%r13, %rbp
	leaq	48(%r10,%r13,4), %rdi
	leaq	48(%rsi,%r13,4), %rax
	pcmpeqd	%xmm0, %xmm0
	.align	16, 0x90
.LBB1_32:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-48(%rdi), %xmm1
	movdqu	-32(%rdi), %xmm2
	pxor	%xmm0, %xmm1
	pxor	%xmm0, %xmm2
	movdqu	%xmm1, -48(%rax)
	movdqu	%xmm2, -32(%rax)
	movdqu	-16(%rdi), %xmm1
	movdqu	(%rdi), %xmm2
	pxor	%xmm0, %xmm1
	pxor	%xmm0, %xmm2
	movdqu	%xmm1, -16(%rax)
	movdqu	%xmm2, (%rax)
	addq	$64, %rdi
	addq	$64, %rax
	addq	$-16, %rbp
	jne	.LBB1_32
.LBB1_33:                               # %middle.block
	cmpq	%r15, %r11
	je	.LBB1_40
# BB#34:                                # %do.body.119.preheader153
	cmpl	$33, %ecx
	movl	$32, %eax
	cmovll	%ecx, %eax
	notl	%eax
	leal	32(%rcx,%rax), %eax
	movl	%eax, %edi
	shrl	$5, %edi
	incl	%edi
	testb	$3, %dil
	je	.LBB1_37
# BB#35:                                # %do.body.119.prol.preheader
	movl	%ecx, %edi
	notl	%edi
	cmpl	$-34, %edi
	movl	$-33, %ebp
	cmovgl	%edi, %ebp
	leal	32(%rcx,%rbp), %edi
	shrl	$5, %edi
	incl	%edi
	andl	$3, %edi
	negl	%edi
	.align	16, 0x90
.LBB1_36:                               # %do.body.119.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %ebp
	addq	$4, %rbx
	notl	%ebp
	movl	%ebp, (%rdx)
	addq	$4, %rdx
	addl	$-32, %ecx
	incl	%edi
	jne	.LBB1_36
.LBB1_37:                               # %do.body.119.preheader153.split
	cmpl	$96, %eax
	jb	.LBB1_40
# BB#38:                                # %do.body.119.preheader153.split.split
	addl	$32, %ecx
	.align	16, 0x90
.LBB1_39:                               # %do.body.119
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %eax
	notl	%eax
	movl	%eax, (%rdx)
	movl	4(%rbx), %eax
	notl	%eax
	movl	%eax, 4(%rdx)
	movl	8(%rbx), %eax
	notl	%eax
	movl	%eax, 8(%rdx)
	movl	12(%rbx), %eax
	notl	%eax
	movl	%eax, 12(%rdx)
	addl	$-128, %ecx
	addq	$16, %rbx
	addq	$16, %rdx
	cmpl	$32, %ecx
	jg	.LBB1_39
.LBB1_40:                               # %do.body.153.loopexit
	leaq	4(%rsi,%r14,4), %rsi
	leaq	(%r10,%r11,4), %r10
.LBB1_41:                               # %do.body.153
	movl	(%r10), %edx
	bswapl	%edx
	movb	%r12b, %cl
	shll	%cl, %edx
	xorl	%eax, %eax
	testb	$8, %r9b
	jne	.LBB1_43
# BB#42:                                # %cond.false.159
	movl	4(%r10), %eax
	bswapl	%eax
	movl	$32, %ecx
	subl	%r12d, %ecx
	shrl	%cl, %eax
.LBB1_43:                               # %cond.end.163
	orl	%edx, %eax
	notl	%eax
	bswapl	%eax
	movl	(%rsi), %ecx
	andl	%r8d, %ecx
	notl	%r8d
	andl	%eax, %r8d
	orl	%ecx, %r8d
	movl	%r8d, (%rsi)
.LBB1_44:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	notT_rop_run1_const_s, .Lfunc_end1-notT_rop_run1_const_s
	.cfi_endproc

	.align	16, 0x90
	.type	invert_rop_run1,@function
invert_rop_run1:                        # @invert_rop_run1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbx, -16
	movzbl	54(%rdi), %ecx
	movl	%esi, %r9d
	andl	$3, %r9d
	leal	(%rcx,%r9,8), %r8d
	movzbl	52(%rdi), %eax
	imull	%edx, %eax
	addl	%r8d, %eax
	movl	%eax, %ecx
	andl	$31, %ecx
	movl	$-1, %edx
	movl	$-1, %r10d
	shrl	%cl, %r10d
	xorl	%ecx, %ecx
	movl	%eax, %edi
	andl	$31, %edi
	bswapl	%r10d
	cmovel	%ecx, %r10d
	subq	%r9, %rsi
	andl	$31, %r8d
	movb	%r8b, %cl
	shrl	%cl, %edx
	movl	%edx, %ecx
	bswapl	%ecx
	movl	%eax, %r11d
	addl	$-32, %r11d
	jle	.LBB2_1
# BB#2:                                 # %if.end.20
	testl	%r8d, %r8d
	je	.LBB2_5
# BB#3:                                 # %if.end.33
	movl	(%rsi), %edi
	notl	%edx
	bswapl	%edx
	andl	%edi, %edx
	notl	%edi
	andl	%edi, %ecx
	orl	%edx, %ecx
	movl	%ecx, (%rsi)
	addq	$4, %rsi
	cmpl	$65, %eax
	jl	.LBB2_16
# BB#4:
	addl	$-64, %eax
	movl	%eax, %r11d
.LBB2_5:                                # %do.body.38.preheader
	cmpl	$33, %r11d
	movl	$32, %ecx
	movl	$32, %eax
	cmovll	%r11d, %eax
	notl	%eax
	leal	32(%r11,%rax), %r9d
	shrl	$5, %r9d
	incq	%r9
	movq	%r9, %rax
	andq	$268435448, %rax        # imm = 0xFFFFFF8
	movq	%r9, %r8
	andq	$268435448, %r8         # imm = 0xFFFFFF8
	je	.LBB2_6
# BB#7:                                 # %vector.body.preheader
	shll	$5, %eax
	cmpl	$33, %r11d
	cmovll	%r11d, %ecx
	notl	%ecx
	leal	32(%r11,%rcx), %ecx
	shrl	$5, %ecx
	incl	%ecx
	andl	$268435448, %ecx        # imm = 0xFFFFFF8
	addq	$-8, %rcx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	xorl	%edi, %edi
	btq	$3, %rcx
	jb	.LBB2_9
# BB#8:                                 # %vector.body.prol
	movdqu	(%rsi), %xmm0
	movdqu	16(%rsi), %xmm1
	pcmpeqd	%xmm2, %xmm2
	pxor	%xmm2, %xmm0
	pxor	%xmm2, %xmm1
	movdqu	%xmm0, (%rsi)
	movdqu	%xmm1, 16(%rsi)
	movl	$8, %edi
.LBB2_9:                                # %vector.body.preheader.split
	movl	%r11d, %ecx
	subl	%eax, %ecx
	leaq	(%rsi,%r8,4), %rax
	testq	%rdx, %rdx
	je	.LBB2_12
# BB#10:                                # %vector.body.preheader.split.split
	movl	%r11d, %edx
	notl	%edx
	cmpl	$-34, %edx
	movl	$-33, %ebx
	cmovgl	%edx, %ebx
	leal	32(%r11,%rbx), %edx
	shrl	$5, %edx
	incl	%edx
	andl	$268435448, %edx        # imm = 0xFFFFFF8
	subq	%rdi, %rdx
	leaq	48(%rsi,%rdi,4), %rdi
	pcmpeqd	%xmm0, %xmm0
	.align	16, 0x90
.LBB2_11:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-48(%rdi), %xmm1
	movdqu	-32(%rdi), %xmm2
	pxor	%xmm0, %xmm1
	pxor	%xmm0, %xmm2
	movdqu	%xmm1, -48(%rdi)
	movdqu	%xmm2, -32(%rdi)
	movdqu	-16(%rdi), %xmm1
	movdqu	(%rdi), %xmm2
	pxor	%xmm0, %xmm1
	pxor	%xmm0, %xmm2
	movdqu	%xmm1, -16(%rdi)
	movdqu	%xmm2, (%rdi)
	addq	$64, %rdi
	addq	$-16, %rdx
	jne	.LBB2_11
	jmp	.LBB2_12
.LBB2_1:                                # %if.then.11
	movl	%r10d, %eax
	notl	%eax
	andl	%eax, %ecx
	movl	(%rsi), %eax
	notl	%edx
	bswapl	%edx
	orl	%r10d, %edx
	andl	%eax, %edx
	notl	%eax
	andl	%ecx, %eax
	orl	%edx, %eax
	jmp	.LBB2_17
.LBB2_6:
	movq	%rsi, %rax
	movl	%r11d, %ecx
	xorl	%r8d, %r8d
.LBB2_12:                               # %middle.block
	cmpq	%r8, %r9
	je	.LBB2_15
# BB#13:                                # %do.body.38.preheader63
	addl	$32, %ecx
	.align	16, 0x90
.LBB2_14:                               # %do.body.38
                                        # =>This Inner Loop Header: Depth=1
	notl	(%rax)
	addq	$4, %rax
	addl	$-32, %ecx
	cmpl	$32, %ecx
	jg	.LBB2_14
.LBB2_15:                               # %do.body.49.loopexit
	leaq	(%rsi,%r9,4), %rsi
.LBB2_16:                               # %do.body.49
	movl	(%rsi), %eax
	movl	%eax, %ecx
	andl	%r10d, %ecx
	orl	%r10d, %eax
	notl	%eax
	orl	%ecx, %eax
.LBB2_17:                               # %cleanup
	movl	%eax, (%rsi)
	popq	%rbx
	retq
.Lfunc_end2:
	.size	invert_rop_run1, .Lfunc_end2-invert_rop_run1
	.cfi_endproc

	.align	16, 0x90
	.type	invert_rop_run8,@function
invert_rop_run8:                        # @invert_rop_run8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 24
.Ltmp26:
	.cfi_offset %rbx, -24
.Ltmp27:
	.cfi_offset %r14, -16
	leal	-1(%rdx), %ecx
	leaq	1(%rcx), %r10
	movabsq	$8589934560, %r8        # imm = 0x1FFFFFFE0
	movq	%r10, %rax
	andq	%r8, %rax
	xorl	%edi, %edi
	movq	%r10, %r11
	andq	%r8, %r11
	je	.LBB3_7
# BB#1:                                 # %vector.body.preheader
	leaq	1(%rcx), %rdi
	andq	%r8, %rdi
	addq	$-32, %rdi
	movq	%rdi, %rbx
	shrq	$5, %rbx
	xorl	%r14d, %r14d
	btq	$5, %rdi
	jb	.LBB3_3
# BB#2:                                 # %vector.body.prol
	movdqu	(%rsi), %xmm0
	movdqu	16(%rsi), %xmm1
	pcmpeqd	%xmm2, %xmm2
	pxor	%xmm2, %xmm0
	pxor	%xmm2, %xmm1
	movdqu	%xmm0, (%rsi)
	movdqu	%xmm1, 16(%rsi)
	movl	$32, %r14d
.LBB3_3:                                # %vector.body.preheader.split
	leaq	(%rax,%rsi), %r9
	subl	%eax, %edx
	testq	%rbx, %rbx
	je	.LBB3_6
# BB#4:                                 # %vector.body.preheader.split.split
	incq	%rcx
	andq	%r8, %rcx
	subq	%r14, %rcx
	leaq	48(%r14,%rsi), %rax
	pcmpeqd	%xmm0, %xmm0
	.align	16, 0x90
.LBB3_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-48(%rax), %xmm1
	movdqu	-32(%rax), %xmm2
	pxor	%xmm0, %xmm1
	pxor	%xmm0, %xmm2
	movdqu	%xmm1, -48(%rax)
	movdqu	%xmm2, -32(%rax)
	movdqu	-16(%rax), %xmm1
	movdqu	(%rax), %xmm2
	pxor	%xmm0, %xmm1
	pxor	%xmm0, %xmm2
	movdqu	%xmm1, -16(%rax)
	movdqu	%xmm2, (%rax)
	addq	$64, %rax
	addq	$-64, %rcx
	jne	.LBB3_5
.LBB3_6:
	movq	%r9, %rsi
	movq	%r11, %rdi
.LBB3_7:                                # %middle.block
	cmpq	%rdi, %r10
	je	.LBB3_9
	.align	16, 0x90
.LBB3_8:                                # %do.body.1
                                        # =>This Inner Loop Header: Depth=1
	notb	(%rsi)
	incq	%rsi
	decl	%edx
	jne	.LBB3_8
.LBB3_9:                                # %do.end.3
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	invert_rop_run8, .Lfunc_end3-invert_rop_run8
	.cfi_endproc

	.align	16, 0x90
	.type	invert_rop_run24,@function
invert_rop_run24:                       # @invert_rop_run24
	.cfi_startproc
# BB#0:                                 # %entry
	.align	16, 0x90
.LBB4_1:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi), %eax
	shlq	$16, %rax
	movzbl	1(%rsi), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	2(%rsi), %eax
	orq	%rcx, %rax
	notq	%rax
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, (%rsi)
	movb	%ah, 1(%rsi)  # NOREX
	movb	%al, 2(%rsi)
	addq	$3, %rsi
	decl	%edx
	jne	.LBB4_1
# BB#2:                                 # %do.end.17
	retq
.Lfunc_end4:
	.size	invert_rop_run24, .Lfunc_end4-invert_rop_run24
	.cfi_endproc

	.align	16, 0x90
	.type	xor_rop_run1_const_s,@function
xor_rop_run1_const_s:                   # @xor_rop_run1_const_s
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp30:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp31:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp32:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 56
.Ltmp34:
	.cfi_offset %rbx, -56
.Ltmp35:
	.cfi_offset %r12, -48
.Ltmp36:
	.cfi_offset %r13, -40
.Ltmp37:
	.cfi_offset %r14, -32
.Ltmp38:
	.cfi_offset %r15, -24
.Ltmp39:
	.cfi_offset %rbp, -16
	movzbl	54(%rdi), %eax
	movl	%esi, %r14d
	andl	$3, %r14d
	leal	(%rax,%r14,8), %ebp
	movzbl	52(%rdi), %r15d
	imull	%edx, %r15d
	addl	%ebp, %r15d
	movl	%r15d, %ecx
	andl	$31, %ecx
	movl	$-1, %r11d
	movl	$-1, %r8d
	shrl	%cl, %r8d
	xorl	%ecx, %ecx
	movl	%r15d, %eax
	andl	$31, %eax
	movq	32(%rdi), %rbx
	bswapl	%r8d
	cmovel	%ecx, %r8d
	movl	%ebx, %eax
	andl	$3, %eax
	subq	%rax, %rbx
	shll	$3, %eax
	subl	%ebp, %eax
	movl	%ebp, %ecx
	andl	$31, %ecx
	shrl	%cl, %r11d
	movl	40(%rdi), %edi
	leal	(%rax,%rdi), %edx
	leaq	-4(%rbx), %r10
	movl	%edx, %ebp
	shrl	$30, %ebp
	andl	$2, %ebp
	testl	%edx, %edx
	leal	32(%rax,%rdi), %r12d
	cmovnsl	%edx, %r12d
	cmovnsq	%rbx, %r10
	testl	%r12d, %r12d
	je	.LBB5_2
# BB#1:                                 # %lor.lhs.false
	leal	63(%r15), %eax
	andl	$-32, %eax
	leal	31(%r15,%r12), %edx
	andl	$-32, %edx
	cmpl	%eax, %edx
	movl	%ebp, %r9d
	jge	.LBB5_3
.LBB5_2:                                # %if.then.40
	movl	%ebp, %r9d
	orl	$8, %r9d
.LBB5_3:                                # %if.end.42
	subq	%r14, %rsi
	movl	%r11d, %eax
	bswapl	%eax
	movl	%r15d, %edi
	addl	$-32, %edi
	jle	.LBB5_4
# BB#9:                                 # %if.end.71
	orl	%ebp, %ecx
	je	.LBB5_16
# BB#10:                                # %do.body.78
	xorl	%edi, %edi
	testl	%ebp, %ebp
	movl	$0, %edx
	jne	.LBB5_12
# BB#11:                                # %cond.false.82
	movl	(%r10), %edx
	bswapl	%edx
	movb	%r12b, %cl
	shll	%cl, %edx
.LBB5_12:                               # %cond.end.85
	addq	$4, %r10
	testl	%r12d, %r12d
	je	.LBB5_14
# BB#13:                                # %cond.false.90
	movl	(%r10), %edi
	bswapl	%edi
	movl	$32, %ecx
	subl	%r12d, %ecx
	shrl	%cl, %edi
.LBB5_14:                               # %if.end.110
	orl	%edx, %edi
	bswapl	%edi
	movl	(%rsi), %ecx
	xorl	%ecx, %edi
	notl	%r11d
	bswapl	%r11d
	andl	%ecx, %r11d
	andl	%eax, %edi
	orl	%r11d, %edi
	movl	%edi, (%rsi)
	addq	$4, %rsi
	cmpl	$65, %r15d
	jl	.LBB5_41
# BB#15:
	addl	$-64, %r15d
	movl	%r15d, %edi
.LBB5_16:                               # %if.then.113
	testl	%r12d, %r12d
	je	.LBB5_24
# BB#17:                                # %do.body.130.preheader
	movl	$32, %eax
	movl	$32, %r15d
	subl	%r12d, %r15d
	cmpl	$33, %edi
	cmovll	%edi, %eax
	notl	%eax
	leal	32(%rdi,%rax), %eax
	movl	%eax, %r11d
	shrl	$5, %r11d
	btl	$5, %eax
	jb	.LBB5_18
# BB#19:                                # %do.body.130.prol
	movl	(%r10), %eax
	movl	4(%r10), %ebp
	bswapl	%eax
	movb	%r12b, %cl
	shll	%cl, %eax
	leaq	4(%r10), %rbx
	bswapl	%ebp
	movb	%r15b, %cl
	shrl	%cl, %ebp
	orl	%eax, %ebp
	bswapl	%ebp
	xorl	%ebp, (%rsi)
	leaq	4(%rsi), %rax
	addl	$-32, %edi
	jmp	.LBB5_20
.LBB5_4:                                # %if.then.46
	movl	%r8d, %ebx
	notl	%ebx
	xorl	%edi, %edi
	testl	%ebp, %ebp
	movl	$0, %edx
	jne	.LBB5_6
# BB#5:                                 # %cond.false
	movl	(%r10), %edx
	bswapl	%edx
	movb	%r12b, %cl
	shll	%cl, %edx
.LBB5_6:                                # %cond.end
	andl	%ebx, %eax
	testb	$8, %r9b
	jne	.LBB5_8
# BB#7:                                 # %cond.false.54
	movl	4(%r10), %edi
	bswapl	%edi
	movl	$32, %ecx
	subl	%r12d, %ecx
	shrl	%cl, %edi
.LBB5_8:                                # %cond.end.58
	orl	%edx, %edi
	bswapl	%edi
	movl	(%rsi), %ecx
	xorl	%ecx, %edi
	notl	%r11d
	bswapl	%r11d
	orl	%r8d, %r11d
	andl	%ecx, %r11d
	andl	%edi, %eax
	orl	%r11d, %eax
	movl	%eax, (%rsi)
	jmp	.LBB5_44
.LBB5_24:                               # %do.body.118.preheader
	cmpl	$33, %edi
	movl	$32, %eax
	movl	$32, %ecx
	cmovll	%edi, %ecx
	notl	%ecx
	leal	32(%rdi,%rcx), %r14d
	shrl	$5, %r14d
	leaq	1(%r14), %r11
	movq	%r11, %r15
	andq	$268435448, %r15        # imm = 0xFFFFFF8
	je	.LBB5_25
# BB#26:                                # %vector.memcheck
	cmpl	$33, %edi
	cmovll	%edi, %eax
	notl	%eax
	leal	32(%rdi,%rax), %eax
	shrl	$5, %eax
	leaq	(%r10,%rax,4), %rcx
	cmpq	%rcx, %rsi
	ja	.LBB5_28
# BB#27:                                # %vector.memcheck
	leaq	(%rsi,%rax,4), %rax
	cmpq	%rax, %r10
	ja	.LBB5_28
.LBB5_25:
	movq	%rsi, %rdx
	movq	%r10, %rbx
	movl	%edi, %ecx
	xorl	%r15d, %r15d
	jmp	.LBB5_33
.LBB5_18:
	movq	%rsi, %rax
	movq	%r10, %rbx
.LBB5_20:                               # %do.body.130.preheader.split
	leaq	1(%r11), %r14
	testl	%r11d, %r11d
	je	.LBB5_23
# BB#21:                                # %do.body.130.preheader.split.split
	addl	$32, %edi
	.align	16, 0x90
.LBB5_22:                               # %do.body.130
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %ebp
	movl	4(%rbx), %edx
	bswapl	%ebp
	movb	%r12b, %cl
	shll	%cl, %ebp
	bswapl	%edx
	movb	%r15b, %cl
	shrl	%cl, %edx
	orl	%ebp, %edx
	bswapl	%edx
	xorl	%edx, (%rax)
	movl	4(%rbx), %edx
	movl	8(%rbx), %ebp
	bswapl	%edx
	movb	%r12b, %cl
	shll	%cl, %edx
	bswapl	%ebp
	movb	%r15b, %cl
	shrl	%cl, %ebp
	orl	%edx, %ebp
	bswapl	%ebp
	xorl	%ebp, 4(%rax)
	addq	$8, %rbx
	addl	$-64, %edi
	addq	$8, %rax
	cmpl	$32, %edi
	jg	.LBB5_22
.LBB5_23:                               # %do.body.152.loopexit106
	leaq	4(%rsi,%r11,4), %rsi
	leaq	(%r10,%r14,4), %r10
	jmp	.LBB5_41
.LBB5_28:                               # %vector.body.preheader
	movl	%r15d, %eax
	shll	$5, %eax
	cmpl	$33, %edi
	movl	$32, %ecx
	cmovll	%edi, %ecx
	notl	%ecx
	leal	32(%rdi,%rcx), %ecx
	shrl	$5, %ecx
	incl	%ecx
	andl	$268435448, %ecx        # imm = 0xFFFFFF8
	addq	$-8, %rcx
	movq	%rcx, %rbp
	shrq	$3, %rbp
	xorl	%r13d, %r13d
	btq	$3, %rcx
	jb	.LBB5_30
# BB#29:                                # %vector.body.prol
	movups	(%rsi), %xmm0
	movups	16(%rsi), %xmm1
	movups	(%r10), %xmm2
	movups	16(%r10), %xmm3
	xorps	%xmm0, %xmm2
	xorps	%xmm1, %xmm3
	movups	%xmm2, (%rsi)
	movups	%xmm3, 16(%rsi)
	movl	$8, %r13d
.LBB5_30:                               # %vector.body.preheader.split
	leaq	(%rsi,%r15,4), %rdx
	leaq	(%r10,%r15,4), %rbx
	movl	%edi, %ecx
	subl	%eax, %ecx
	testq	%rbp, %rbp
	je	.LBB5_33
# BB#31:                                # %vector.body.preheader.split.split
	movl	%edi, %eax
	notl	%eax
	cmpl	$-34, %eax
	movl	$-33, %ebp
	cmovgl	%eax, %ebp
	leal	32(%rdi,%rbp), %ebp
	shrl	$5, %ebp
	incl	%ebp
	andl	$268435448, %ebp        # imm = 0xFFFFFF8
	subq	%r13, %rbp
	leaq	48(%r10,%r13,4), %rdi
	leaq	48(%rsi,%r13,4), %rax
	.align	16, 0x90
.LBB5_32:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	-48(%rax), %xmm0
	movups	-32(%rax), %xmm1
	movups	-48(%rdi), %xmm2
	movups	-32(%rdi), %xmm3
	xorps	%xmm0, %xmm2
	xorps	%xmm1, %xmm3
	movups	%xmm2, -48(%rax)
	movups	%xmm3, -32(%rax)
	movups	-16(%rax), %xmm0
	movups	(%rax), %xmm1
	movups	-16(%rdi), %xmm2
	movups	(%rdi), %xmm3
	xorps	%xmm0, %xmm2
	xorps	%xmm1, %xmm3
	movups	%xmm2, -16(%rax)
	movups	%xmm3, (%rax)
	addq	$64, %rdi
	addq	$64, %rax
	addq	$-16, %rbp
	jne	.LBB5_32
.LBB5_33:                               # %middle.block
	cmpq	%r15, %r11
	je	.LBB5_40
# BB#34:                                # %do.body.118.preheader160
	cmpl	$33, %ecx
	movl	$32, %eax
	cmovll	%ecx, %eax
	notl	%eax
	leal	32(%rcx,%rax), %eax
	movl	%eax, %edi
	shrl	$5, %edi
	incl	%edi
	testb	$3, %dil
	je	.LBB5_37
# BB#35:                                # %do.body.118.prol.preheader
	movl	%ecx, %edi
	notl	%edi
	cmpl	$-34, %edi
	movl	$-33, %ebp
	cmovgl	%edi, %ebp
	leal	32(%rcx,%rbp), %edi
	shrl	$5, %edi
	incl	%edi
	andl	$3, %edi
	negl	%edi
	.align	16, 0x90
.LBB5_36:                               # %do.body.118.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %ebp
	xorl	%ebp, (%rdx)
	addq	$4, %rbx
	addq	$4, %rdx
	addl	$-32, %ecx
	incl	%edi
	jne	.LBB5_36
.LBB5_37:                               # %do.body.118.preheader160.split
	cmpl	$96, %eax
	jb	.LBB5_40
# BB#38:                                # %do.body.118.preheader160.split.split
	addl	$32, %ecx
	.align	16, 0x90
.LBB5_39:                               # %do.body.118
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %eax
	xorl	%eax, (%rdx)
	movl	4(%rbx), %eax
	xorl	%eax, 4(%rdx)
	movl	8(%rbx), %eax
	xorl	%eax, 8(%rdx)
	movl	12(%rbx), %eax
	xorl	%eax, 12(%rdx)
	addl	$-128, %ecx
	addq	$16, %rdx
	addq	$16, %rbx
	cmpl	$32, %ecx
	jg	.LBB5_39
.LBB5_40:                               # %do.body.152.loopexit
	leaq	4(%rsi,%r14,4), %rsi
	leaq	(%r10,%r11,4), %r10
.LBB5_41:                               # %do.body.152
	movl	(%r10), %edx
	bswapl	%edx
	movb	%r12b, %cl
	shll	%cl, %edx
	xorl	%eax, %eax
	testb	$8, %r9b
	jne	.LBB5_43
# BB#42:                                # %cond.false.158
	movl	4(%r10), %eax
	bswapl	%eax
	movl	$32, %ecx
	subl	%r12d, %ecx
	shrl	%cl, %eax
.LBB5_43:                               # %cond.end.162
	orl	%edx, %eax
	bswapl	%eax
	movl	(%rsi), %ecx
	xorl	%ecx, %eax
	andl	%r8d, %ecx
	notl	%r8d
	andl	%eax, %r8d
	orl	%ecx, %r8d
	movl	%r8d, (%rsi)
.LBB5_44:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	xor_rop_run1_const_s, .Lfunc_end5-xor_rop_run1_const_s
	.cfi_endproc

	.align	16, 0x90
	.type	xor_rop_run8_const_st,@function
xor_rop_run8_const_st:                  # @xor_rop_run8_const_st
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 24
.Ltmp42:
	.cfi_offset %rbx, -24
.Ltmp43:
	.cfi_offset %r14, -16
	leal	-1(%rdx), %ecx
	leaq	1(%rcx), %r8
	movabsq	$8589934560, %r10       # imm = 0x1FFFFFFE0
	movq	%r8, %r11
	andq	%r10, %r11
	xorl	%ebx, %ebx
	movq	%r8, %r9
	andq	%r10, %r9
	movb	16(%rdi), %al
	je	.LBB6_7
# BB#1:                                 # %vector.ph
	movzbl	%al, %edi
	movd	%edi, %xmm0
	punpcklbw	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshufd	$196, %xmm0, %xmm0      # xmm0 = xmm0[0,1,0,3]
	pshuflw	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufhw	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,1,2,3,4,4,4,4]
	leaq	1(%rcx), %rbx
	andq	%r10, %rbx
	addq	$-32, %rbx
	movq	%rbx, %rdi
	shrq	$5, %rdi
	xorl	%r14d, %r14d
	btq	$5, %rbx
	jb	.LBB6_3
# BB#2:                                 # %vector.body.prol
	movdqu	(%rsi), %xmm1
	movdqu	16(%rsi), %xmm2
	pxor	%xmm0, %xmm1
	pxor	%xmm0, %xmm2
	movdqu	%xmm1, (%rsi)
	movdqu	%xmm2, 16(%rsi)
	movl	$32, %r14d
.LBB6_3:                                # %vector.ph.split
	subl	%r11d, %edx
	leaq	(%r11,%rsi), %r11
	testq	%rdi, %rdi
	je	.LBB6_6
# BB#4:                                 # %vector.ph.split.split
	incq	%rcx
	andq	%r10, %rcx
	subq	%r14, %rcx
	leaq	48(%r14,%rsi), %rsi
	.align	16, 0x90
.LBB6_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-48(%rsi), %xmm1
	movdqu	-32(%rsi), %xmm2
	pxor	%xmm0, %xmm1
	pxor	%xmm0, %xmm2
	movdqu	%xmm1, -48(%rsi)
	movdqu	%xmm2, -32(%rsi)
	movdqu	-16(%rsi), %xmm1
	movdqu	(%rsi), %xmm2
	pxor	%xmm0, %xmm1
	pxor	%xmm0, %xmm2
	movdqu	%xmm1, -16(%rsi)
	movdqu	%xmm2, (%rsi)
	addq	$64, %rsi
	addq	$-64, %rcx
	jne	.LBB6_5
.LBB6_6:
	movq	%r11, %rsi
	movq	%r9, %rbx
.LBB6_7:                                # %middle.block
	cmpq	%rbx, %r8
	je	.LBB6_9
	.align	16, 0x90
.LBB6_8:                                # %do.body.1
                                        # =>This Inner Loop Header: Depth=1
	xorb	%al, (%rsi)
	incq	%rsi
	decl	%edx
	jne	.LBB6_8
.LBB6_9:                                # %do.end.6
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end6:
	.size	xor_rop_run8_const_st, .Lfunc_end6-xor_rop_run8_const_st
	.cfi_endproc

	.align	16, 0x90
	.type	xor_rop_run24_const_st,@function
xor_rop_run24_const_st:                 # @xor_rop_run24_const_st
	.cfi_startproc
# BB#0:                                 # %entry
	movq	16(%rdi), %rax
	.align	16, 0x90
.LBB7_1:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi), %ecx
	shlq	$16, %rcx
	movzbl	1(%rsi), %edi
	shlq	$8, %rdi
	orq	%rcx, %rdi
	movzbl	2(%rsi), %ecx
	orq	%rdi, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %rdi
	shrq	$16, %rdi
	movb	%dil, (%rsi)
	movb	%ch, 1(%rsi)  # NOREX
	movb	%cl, 2(%rsi)
	addq	$3, %rsi
	decl	%edx
	jne	.LBB7_1
# BB#2:                                 # %do.end.17
	retq
.Lfunc_end7:
	.size	xor_rop_run24_const_st, .Lfunc_end7-xor_rop_run24_const_st
	.cfi_endproc

	.align	16, 0x90
	.type	sort_rop_run24_const_st,@function
sort_rop_run24_const_st:                # @sort_rop_run24_const_st
	.cfi_startproc
# BB#0:                                 # %entry
	movq	16(%rdi), %r9
	movq	%r9, %rcx
	shrq	$16, %rcx
	movl	%r9d, %edi
	shrl	$8, %edi
	leal	-1(%rdx), %r8d
	testb	$3, %dl
	je	.LBB8_3
# BB#1:                                 # %do.body.prol.preheader
	movl	%edx, %eax
	andl	$3, %eax
	negl	%eax
	.align	16, 0x90
.LBB8_2:                                # %do.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movb	%cl, (%rsi)
	movb	%dil, 1(%rsi)
	movb	%r9b, 2(%rsi)
	addq	$3, %rsi
	decl	%edx
	incl	%eax
	jne	.LBB8_2
.LBB8_3:                                # %entry.split
	cmpl	$3, %r8d
	jb	.LBB8_5
	.align	16, 0x90
.LBB8_4:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movb	%cl, (%rsi)
	movb	%dil, 1(%rsi)
	movb	%r9b, 2(%rsi)
	movb	%cl, 3(%rsi)
	movb	%dil, 4(%rsi)
	movb	%r9b, 5(%rsi)
	movb	%cl, 6(%rsi)
	movb	%dil, 7(%rsi)
	movb	%r9b, 8(%rsi)
	movb	%cl, 9(%rsi)
	movb	%dil, 10(%rsi)
	movb	%r9b, 11(%rsi)
	addq	$12, %rsi
	addl	$-4, %edx
	jne	.LBB8_4
.LBB8_5:                                # %do.end.9
	retq
.Lfunc_end8:
	.size	sort_rop_run24_const_st, .Lfunc_end8-sort_rop_run24_const_st
	.cfi_endproc

	.align	16, 0x90
	.type	nop_rop_const_st,@function
nop_rop_const_st:                       # @nop_rop_const_st
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end9:
	.size	nop_rop_const_st, .Lfunc_end9-nop_rop_const_st
	.cfi_endproc

	.align	16, 0x90
	.type	sets_rop_run1_const_t,@function
sets_rop_run1_const_t:                  # @sets_rop_run1_const_t
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp45:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp46:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp47:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp48:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp49:
	.cfi_def_cfa_offset 56
.Ltmp50:
	.cfi_offset %rbx, -56
.Ltmp51:
	.cfi_offset %r12, -48
.Ltmp52:
	.cfi_offset %r13, -40
.Ltmp53:
	.cfi_offset %r14, -32
.Ltmp54:
	.cfi_offset %r15, -24
.Ltmp55:
	.cfi_offset %rbp, -16
	movzbl	54(%rdi), %eax
	movl	%esi, %r14d
	andl	$3, %r14d
	leal	(%rax,%r14,8), %eax
	movzbl	52(%rdi), %r15d
	imull	%edx, %r15d
	addl	%eax, %r15d
	movl	%r15d, %ecx
	andl	$31, %ecx
	movl	$-1, %r11d
	movl	$-1, %r8d
	shrl	%cl, %r8d
	xorl	%ecx, %ecx
	movl	%r15d, %edx
	andl	$31, %edx
	movq	16(%rdi), %rbp
	bswapl	%r8d
	cmovel	%ecx, %r8d
	movl	%ebp, %ebx
	andl	$3, %ebx
	subq	%rbx, %rbp
	shll	$3, %ebx
	subl	%eax, %ebx
	movl	%eax, %ecx
	andl	$31, %ecx
	shrl	%cl, %r11d
	movl	24(%rdi), %eax
	leal	(%rbx,%rax), %edi
	leaq	-4(%rbp), %r10
	movl	%edi, %edx
	shrl	$31, %edx
	testl	%edi, %edi
	leal	32(%rbx,%rax), %r12d
	cmovnsl	%edi, %r12d
	cmovnsq	%rbp, %r10
	testl	%r12d, %r12d
	je	.LBB10_2
# BB#1:                                 # %lor.lhs.false
	leal	63(%r15), %eax
	andl	$-32, %eax
	leal	31(%r15,%r12), %edi
	andl	$-32, %edi
	cmpl	%eax, %edi
	movl	%edx, %r9d
	jge	.LBB10_3
.LBB10_2:                               # %if.then.40
	leal	4(%rdx), %r9d
.LBB10_3:                               # %if.end.42
	subq	%r14, %rsi
	movl	%r15d, %edi
	addl	$-32, %edi
	jle	.LBB10_4
# BB#9:                                 # %if.end.71
	orl	%edx, %ecx
	je	.LBB10_16
# BB#10:                                # %do.body.78
	xorl	%eax, %eax
	testl	%edx, %edx
	movl	$0, %edx
	jne	.LBB10_12
# BB#11:                                # %cond.false.82
	movl	(%r10), %edx
	bswapl	%edx
	movb	%r12b, %cl
	shll	%cl, %edx
.LBB10_12:                              # %cond.end.85
	addq	$4, %r10
	testl	%r12d, %r12d
	je	.LBB10_14
# BB#13:                                # %cond.false.90
	movl	(%r10), %eax
	bswapl	%eax
	movl	$32, %ecx
	subl	%r12d, %ecx
	shrl	%cl, %eax
.LBB10_14:                              # %if.end.109
	orl	%edx, %eax
	andl	%r11d, %eax
	notl	%r11d
	bswapl	%r11d
	andl	(%rsi), %r11d
	bswapl	%eax
	orl	%r11d, %eax
	movl	%eax, (%rsi)
	addq	$4, %rsi
	cmpl	$65, %r15d
	jl	.LBB10_41
# BB#15:
	addl	$-64, %r15d
	movl	%r15d, %edi
.LBB10_16:                              # %if.then.112
	testl	%r12d, %r12d
	je	.LBB10_24
# BB#17:                                # %do.body.128.preheader
	movl	$32, %eax
	movl	$32, %r15d
	subl	%r12d, %r15d
	cmpl	$33, %edi
	cmovll	%edi, %eax
	notl	%eax
	leal	32(%rdi,%rax), %eax
	movl	%eax, %r11d
	shrl	$5, %r11d
	btl	$5, %eax
	jb	.LBB10_18
# BB#19:                                # %do.body.128.prol
	movl	(%r10), %eax
	movl	4(%r10), %ebp
	bswapl	%eax
	movb	%r12b, %cl
	shll	%cl, %eax
	leaq	4(%r10), %rbx
	bswapl	%ebp
	movb	%r15b, %cl
	shrl	%cl, %ebp
	orl	%eax, %ebp
	bswapl	%ebp
	movl	%ebp, (%rsi)
	leaq	4(%rsi), %rax
	addl	$-32, %edi
	jmp	.LBB10_20
.LBB10_4:                               # %if.then.46
	movl	%r11d, %eax
	bswapl	%eax
	movl	%r8d, %ebx
	notl	%ebx
	xorl	%edi, %edi
	testl	%edx, %edx
	movl	$0, %edx
	jne	.LBB10_6
# BB#5:                                 # %cond.false
	movl	(%r10), %edx
	bswapl	%edx
	movb	%r12b, %cl
	shll	%cl, %edx
.LBB10_6:                               # %cond.end
	andl	%ebx, %eax
	testb	$4, %r9b
	jne	.LBB10_8
# BB#7:                                 # %cond.false.54
	movl	4(%r10), %edi
	bswapl	%edi
	movl	$32, %ecx
	subl	%r12d, %ecx
	shrl	%cl, %edi
.LBB10_8:                               # %cond.end.58
	orl	%edx, %edi
	bswapl	%edi
	notl	%r11d
	bswapl	%r11d
	orl	%r8d, %r11d
	andl	(%rsi), %r11d
	andl	%edi, %eax
	orl	%r11d, %eax
	movl	%eax, (%rsi)
	jmp	.LBB10_44
.LBB10_24:                              # %do.body.117.preheader
	cmpl	$33, %edi
	movl	$32, %eax
	movl	$32, %ecx
	cmovll	%edi, %ecx
	notl	%ecx
	leal	32(%rdi,%rcx), %r14d
	shrl	$5, %r14d
	leaq	1(%r14), %r11
	movq	%r11, %r15
	andq	$268435448, %r15        # imm = 0xFFFFFF8
	je	.LBB10_25
# BB#26:                                # %vector.memcheck
	cmpl	$33, %edi
	cmovll	%edi, %eax
	notl	%eax
	leal	32(%rdi,%rax), %eax
	shrl	$5, %eax
	leaq	(%r10,%rax,4), %rcx
	cmpq	%rcx, %rsi
	ja	.LBB10_28
# BB#27:                                # %vector.memcheck
	leaq	(%rsi,%rax,4), %rax
	cmpq	%rax, %r10
	ja	.LBB10_28
.LBB10_25:
	movq	%rsi, %rdx
	movq	%r10, %rbx
	movl	%edi, %ebp
	xorl	%r15d, %r15d
	jmp	.LBB10_33
.LBB10_18:
	movq	%rsi, %rax
	movq	%r10, %rbx
.LBB10_20:                              # %do.body.128.preheader.split
	leaq	1(%r11), %r14
	testl	%r11d, %r11d
	je	.LBB10_23
# BB#21:                                # %do.body.128.preheader.split.split
	addl	$32, %edi
	.align	16, 0x90
.LBB10_22:                              # %do.body.128
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %ebp
	movl	4(%rbx), %edx
	bswapl	%ebp
	movb	%r12b, %cl
	shll	%cl, %ebp
	bswapl	%edx
	movb	%r15b, %cl
	shrl	%cl, %edx
	orl	%ebp, %edx
	bswapl	%edx
	movl	%edx, (%rax)
	movl	4(%rbx), %edx
	movl	8(%rbx), %ebp
	bswapl	%edx
	movb	%r12b, %cl
	shll	%cl, %edx
	addq	$8, %rbx
	bswapl	%ebp
	movb	%r15b, %cl
	shrl	%cl, %ebp
	orl	%edx, %ebp
	bswapl	%ebp
	movl	%ebp, 4(%rax)
	addl	$-64, %edi
	addq	$8, %rax
	cmpl	$32, %edi
	jg	.LBB10_22
.LBB10_23:                              # %do.body.149.loopexit101
	leaq	4(%rsi,%r11,4), %rsi
	leaq	(%r10,%r14,4), %r10
	jmp	.LBB10_41
.LBB10_28:                              # %vector.body.preheader
	movl	%r15d, %eax
	shll	$5, %eax
	cmpl	$33, %edi
	movl	$32, %ecx
	cmovll	%edi, %ecx
	notl	%ecx
	leal	32(%rdi,%rcx), %edx
	shrl	$5, %edx
	incl	%edx
	andl	$268435448, %edx        # imm = 0xFFFFFF8
	addq	$-8, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	xorl	%r13d, %r13d
	btq	$3, %rdx
	jb	.LBB10_30
# BB#29:                                # %vector.body.prol
	movups	(%r10), %xmm0
	movups	16(%r10), %xmm1
	movups	%xmm0, (%rsi)
	movups	%xmm1, 16(%rsi)
	movl	$8, %r13d
.LBB10_30:                              # %vector.body.preheader.split
	leaq	(%rsi,%r15,4), %rdx
	leaq	(%r10,%r15,4), %rbx
	movl	%edi, %ebp
	subl	%eax, %ebp
	testq	%rcx, %rcx
	je	.LBB10_33
# BB#31:                                # %vector.body.preheader.split.split
	movl	%edi, %eax
	notl	%eax
	cmpl	$-34, %eax
	movl	$-33, %ecx
	cmovgl	%eax, %ecx
	leal	32(%rdi,%rcx), %eax
	shrl	$5, %eax
	incl	%eax
	andl	$268435448, %eax        # imm = 0xFFFFFF8
	subq	%r13, %rax
	leaq	48(%r10,%r13,4), %rdi
	leaq	48(%rsi,%r13,4), %rcx
	.align	16, 0x90
.LBB10_32:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	-48(%rdi), %xmm0
	movups	-32(%rdi), %xmm1
	movups	%xmm0, -48(%rcx)
	movups	%xmm1, -32(%rcx)
	movups	-16(%rdi), %xmm0
	movups	(%rdi), %xmm1
	movups	%xmm0, -16(%rcx)
	movups	%xmm1, (%rcx)
	addq	$64, %rdi
	addq	$64, %rcx
	addq	$-16, %rax
	jne	.LBB10_32
.LBB10_33:                              # %middle.block
	cmpq	%r15, %r11
	je	.LBB10_40
# BB#34:                                # %do.body.117.preheader153
	cmpl	$33, %ebp
	movl	$32, %eax
	cmovll	%ebp, %eax
	notl	%eax
	leal	32(%rbp,%rax), %eax
	movl	%eax, %ecx
	shrl	$5, %ecx
	incl	%ecx
	testb	$7, %cl
	je	.LBB10_37
# BB#35:                                # %do.body.117.prol.preheader
	movl	%ebp, %ecx
	notl	%ecx
	cmpl	$-34, %ecx
	movl	$-33, %edi
	cmovgl	%ecx, %edi
	leal	32(%rbp,%rdi), %edi
	shrl	$5, %edi
	incl	%edi
	andl	$7, %edi
	negl	%edi
	.align	16, 0x90
.LBB10_36:                              # %do.body.117.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %ecx
	addq	$4, %rbx
	movl	%ecx, (%rdx)
	addq	$4, %rdx
	addl	$-32, %ebp
	incl	%edi
	jne	.LBB10_36
.LBB10_37:                              # %do.body.117.preheader153.split
	cmpl	$224, %eax
	jb	.LBB10_40
# BB#38:                                # %do.body.117.preheader153.split.split
	addl	$32, %ebp
	.align	16, 0x90
.LBB10_39:                              # %do.body.117
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %eax
	movl	%eax, (%rdx)
	movl	4(%rbx), %eax
	movl	%eax, 4(%rdx)
	movl	8(%rbx), %eax
	movl	%eax, 8(%rdx)
	movl	12(%rbx), %eax
	movl	%eax, 12(%rdx)
	movl	16(%rbx), %eax
	movl	%eax, 16(%rdx)
	movl	20(%rbx), %eax
	movl	%eax, 20(%rdx)
	movl	24(%rbx), %eax
	movl	%eax, 24(%rdx)
	movl	28(%rbx), %eax
	movl	%eax, 28(%rdx)
	addl	$-256, %ebp
	addq	$32, %rbx
	addq	$32, %rdx
	cmpl	$32, %ebp
	jg	.LBB10_39
.LBB10_40:                              # %do.body.149.loopexit
	leaq	4(%rsi,%r14,4), %rsi
	leaq	(%r10,%r11,4), %r10
.LBB10_41:                              # %do.body.149
	movl	(%r10), %edx
	bswapl	%edx
	movb	%r12b, %cl
	shll	%cl, %edx
	xorl	%eax, %eax
	testb	$4, %r9b
	jne	.LBB10_43
# BB#42:                                # %cond.false.155
	movl	4(%r10), %eax
	bswapl	%eax
	movl	$32, %ecx
	subl	%r12d, %ecx
	shrl	%cl, %eax
.LBB10_43:                              # %cond.end.159
	orl	%edx, %eax
	bswapl	%eax
	movl	(%rsi), %ecx
	andl	%r8d, %ecx
	notl	%r8d
	andl	%eax, %r8d
	orl	%ecx, %r8d
	movl	%r8d, (%rsi)
.LBB10_44:                              # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	sets_rop_run1_const_t, .Lfunc_end10-sets_rop_run1_const_t
	.cfi_endproc

	.align	16, 0x90
	.type	dors_rop_run1_const_t,@function
dors_rop_run1_const_t:                  # @dors_rop_run1_const_t
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp57:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp58:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp59:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp60:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp61:
	.cfi_def_cfa_offset 56
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
	movzbl	54(%rdi), %eax
	movl	%esi, %r14d
	andl	$3, %r14d
	leal	(%rax,%r14,8), %ebp
	movzbl	52(%rdi), %r15d
	imull	%edx, %r15d
	addl	%ebp, %r15d
	movl	%r15d, %ecx
	andl	$31, %ecx
	movl	$-1, %r11d
	movl	$-1, %r8d
	shrl	%cl, %r8d
	xorl	%ecx, %ecx
	movl	%r15d, %eax
	andl	$31, %eax
	movq	16(%rdi), %rbx
	bswapl	%r8d
	cmovel	%ecx, %r8d
	movl	%ebx, %eax
	andl	$3, %eax
	subq	%rax, %rbx
	shll	$3, %eax
	subl	%ebp, %eax
	movl	%ebp, %ecx
	andl	$31, %ecx
	shrl	%cl, %r11d
	movl	24(%rdi), %edi
	leal	(%rax,%rdi), %ebp
	leaq	-4(%rbx), %r10
	movl	%ebp, %edx
	shrl	$31, %edx
	testl	%ebp, %ebp
	leal	32(%rax,%rdi), %r12d
	cmovnsl	%ebp, %r12d
	cmovnsq	%rbx, %r10
	testl	%r12d, %r12d
	je	.LBB11_2
# BB#1:                                 # %lor.lhs.false
	leal	63(%r15), %eax
	andl	$-32, %eax
	leal	31(%r15,%r12), %edi
	andl	$-32, %edi
	cmpl	%eax, %edi
	movl	%edx, %r9d
	jge	.LBB11_3
.LBB11_2:                               # %if.then.40
	leal	4(%rdx), %r9d
.LBB11_3:                               # %if.end.42
	subq	%r14, %rsi
	movl	%r11d, %eax
	bswapl	%eax
	movl	%r15d, %edi
	addl	$-32, %edi
	jle	.LBB11_4
# BB#9:                                 # %if.end.72
	orl	%edx, %ecx
	je	.LBB11_16
# BB#10:                                # %do.body.79
	xorl	%edi, %edi
	testl	%edx, %edx
	movl	$0, %edx
	jne	.LBB11_12
# BB#11:                                # %cond.false.83
	movl	(%r10), %edx
	bswapl	%edx
	movb	%r12b, %cl
	shll	%cl, %edx
.LBB11_12:                              # %cond.end.86
	addq	$4, %r10
	testl	%r12d, %r12d
	je	.LBB11_14
# BB#13:                                # %cond.false.91
	movl	(%r10), %edi
	bswapl	%edi
	movl	$32, %ecx
	subl	%r12d, %ecx
	shrl	%cl, %edi
.LBB11_14:                              # %if.end.111
	orl	%edx, %edi
	bswapl	%edi
	movl	(%rsi), %ecx
	orl	%ecx, %edi
	notl	%r11d
	bswapl	%r11d
	andl	%ecx, %r11d
	andl	%eax, %edi
	orl	%r11d, %edi
	movl	%edi, (%rsi)
	addq	$4, %rsi
	cmpl	$65, %r15d
	jl	.LBB11_41
# BB#15:
	addl	$-64, %r15d
	movl	%r15d, %edi
.LBB11_16:                              # %if.then.114
	testl	%r12d, %r12d
	je	.LBB11_24
# BB#17:                                # %do.body.131.preheader
	movl	$32, %eax
	movl	$32, %r15d
	subl	%r12d, %r15d
	cmpl	$33, %edi
	cmovll	%edi, %eax
	notl	%eax
	leal	32(%rdi,%rax), %eax
	movl	%eax, %r11d
	shrl	$5, %r11d
	btl	$5, %eax
	jb	.LBB11_18
# BB#19:                                # %do.body.131.prol
	movl	(%r10), %eax
	movl	4(%r10), %ebp
	bswapl	%eax
	movb	%r12b, %cl
	shll	%cl, %eax
	leaq	4(%r10), %rbx
	bswapl	%ebp
	movb	%r15b, %cl
	shrl	%cl, %ebp
	orl	%eax, %ebp
	bswapl	%ebp
	orl	%ebp, (%rsi)
	leaq	4(%rsi), %rax
	addl	$-32, %edi
	jmp	.LBB11_20
.LBB11_4:                               # %if.then.46
	movl	%r8d, %ebx
	notl	%ebx
	xorl	%edi, %edi
	testl	%edx, %edx
	movl	$0, %edx
	jne	.LBB11_6
# BB#5:                                 # %cond.false
	movl	(%r10), %edx
	bswapl	%edx
	movb	%r12b, %cl
	shll	%cl, %edx
.LBB11_6:                               # %cond.end
	andl	%ebx, %eax
	testb	$4, %r9b
	jne	.LBB11_8
# BB#7:                                 # %cond.false.54
	movl	4(%r10), %edi
	bswapl	%edi
	movl	$32, %ecx
	subl	%r12d, %ecx
	shrl	%cl, %edi
.LBB11_8:                               # %cond.end.58
	orl	%edx, %edi
	bswapl	%edi
	movl	(%rsi), %ecx
	orl	%ecx, %edi
	notl	%r11d
	bswapl	%r11d
	orl	%r8d, %r11d
	andl	%ecx, %r11d
	andl	%edi, %eax
	orl	%r11d, %eax
	movl	%eax, (%rsi)
	jmp	.LBB11_44
.LBB11_24:                              # %do.body.119.preheader
	cmpl	$33, %edi
	movl	$32, %eax
	movl	$32, %ecx
	cmovll	%edi, %ecx
	notl	%ecx
	leal	32(%rdi,%rcx), %r14d
	shrl	$5, %r14d
	leaq	1(%r14), %r11
	movq	%r11, %r15
	andq	$268435448, %r15        # imm = 0xFFFFFF8
	je	.LBB11_25
# BB#26:                                # %vector.memcheck
	cmpl	$33, %edi
	cmovll	%edi, %eax
	notl	%eax
	leal	32(%rdi,%rax), %eax
	shrl	$5, %eax
	leaq	(%r10,%rax,4), %rcx
	cmpq	%rcx, %rsi
	ja	.LBB11_28
# BB#27:                                # %vector.memcheck
	leaq	(%rsi,%rax,4), %rax
	cmpq	%rax, %r10
	ja	.LBB11_28
.LBB11_25:
	movq	%rsi, %rdx
	movq	%r10, %rbx
	movl	%edi, %ecx
	xorl	%r15d, %r15d
	jmp	.LBB11_33
.LBB11_18:
	movq	%rsi, %rax
	movq	%r10, %rbx
.LBB11_20:                              # %do.body.131.preheader.split
	leaq	1(%r11), %r14
	testl	%r11d, %r11d
	je	.LBB11_23
# BB#21:                                # %do.body.131.preheader.split.split
	addl	$32, %edi
	.align	16, 0x90
.LBB11_22:                              # %do.body.131
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %ebp
	movl	4(%rbx), %edx
	bswapl	%ebp
	movb	%r12b, %cl
	shll	%cl, %ebp
	bswapl	%edx
	movb	%r15b, %cl
	shrl	%cl, %edx
	orl	%ebp, %edx
	bswapl	%edx
	orl	%edx, (%rax)
	movl	4(%rbx), %edx
	movl	8(%rbx), %ebp
	bswapl	%edx
	movb	%r12b, %cl
	shll	%cl, %edx
	bswapl	%ebp
	movb	%r15b, %cl
	shrl	%cl, %ebp
	orl	%edx, %ebp
	bswapl	%ebp
	orl	%ebp, 4(%rax)
	addq	$8, %rbx
	addl	$-64, %edi
	addq	$8, %rax
	cmpl	$32, %edi
	jg	.LBB11_22
.LBB11_23:                              # %do.body.153.loopexit106
	leaq	4(%rsi,%r11,4), %rsi
	leaq	(%r10,%r14,4), %r10
	jmp	.LBB11_41
.LBB11_28:                              # %vector.body.preheader
	movl	%r15d, %eax
	shll	$5, %eax
	cmpl	$33, %edi
	movl	$32, %ecx
	cmovll	%edi, %ecx
	notl	%ecx
	leal	32(%rdi,%rcx), %ecx
	shrl	$5, %ecx
	incl	%ecx
	andl	$268435448, %ecx        # imm = 0xFFFFFF8
	addq	$-8, %rcx
	movq	%rcx, %rbp
	shrq	$3, %rbp
	xorl	%r13d, %r13d
	btq	$3, %rcx
	jb	.LBB11_30
# BB#29:                                # %vector.body.prol
	movups	(%rsi), %xmm0
	movups	16(%rsi), %xmm1
	movups	(%r10), %xmm2
	movups	16(%r10), %xmm3
	orps	%xmm0, %xmm2
	orps	%xmm1, %xmm3
	movups	%xmm2, (%rsi)
	movups	%xmm3, 16(%rsi)
	movl	$8, %r13d
.LBB11_30:                              # %vector.body.preheader.split
	leaq	(%rsi,%r15,4), %rdx
	leaq	(%r10,%r15,4), %rbx
	movl	%edi, %ecx
	subl	%eax, %ecx
	testq	%rbp, %rbp
	je	.LBB11_33
# BB#31:                                # %vector.body.preheader.split.split
	movl	%edi, %eax
	notl	%eax
	cmpl	$-34, %eax
	movl	$-33, %ebp
	cmovgl	%eax, %ebp
	leal	32(%rdi,%rbp), %ebp
	shrl	$5, %ebp
	incl	%ebp
	andl	$268435448, %ebp        # imm = 0xFFFFFF8
	subq	%r13, %rbp
	leaq	48(%r10,%r13,4), %rdi
	leaq	48(%rsi,%r13,4), %rax
	.align	16, 0x90
.LBB11_32:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	-48(%rax), %xmm0
	movups	-32(%rax), %xmm1
	movups	-48(%rdi), %xmm2
	movups	-32(%rdi), %xmm3
	orps	%xmm0, %xmm2
	orps	%xmm1, %xmm3
	movups	%xmm2, -48(%rax)
	movups	%xmm3, -32(%rax)
	movups	-16(%rax), %xmm0
	movups	(%rax), %xmm1
	movups	-16(%rdi), %xmm2
	movups	(%rdi), %xmm3
	orps	%xmm0, %xmm2
	orps	%xmm1, %xmm3
	movups	%xmm2, -16(%rax)
	movups	%xmm3, (%rax)
	addq	$64, %rdi
	addq	$64, %rax
	addq	$-16, %rbp
	jne	.LBB11_32
.LBB11_33:                              # %middle.block
	cmpq	%r15, %r11
	je	.LBB11_40
# BB#34:                                # %do.body.119.preheader160
	cmpl	$33, %ecx
	movl	$32, %eax
	cmovll	%ecx, %eax
	notl	%eax
	leal	32(%rcx,%rax), %eax
	movl	%eax, %edi
	shrl	$5, %edi
	incl	%edi
	testb	$3, %dil
	je	.LBB11_37
# BB#35:                                # %do.body.119.prol.preheader
	movl	%ecx, %edi
	notl	%edi
	cmpl	$-34, %edi
	movl	$-33, %ebp
	cmovgl	%edi, %ebp
	leal	32(%rcx,%rbp), %edi
	shrl	$5, %edi
	incl	%edi
	andl	$3, %edi
	negl	%edi
	.align	16, 0x90
.LBB11_36:                              # %do.body.119.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %ebp
	orl	%ebp, (%rdx)
	addq	$4, %rbx
	addq	$4, %rdx
	addl	$-32, %ecx
	incl	%edi
	jne	.LBB11_36
.LBB11_37:                              # %do.body.119.preheader160.split
	cmpl	$96, %eax
	jb	.LBB11_40
# BB#38:                                # %do.body.119.preheader160.split.split
	addl	$32, %ecx
	.align	16, 0x90
.LBB11_39:                              # %do.body.119
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %eax
	orl	%eax, (%rdx)
	movl	4(%rbx), %eax
	orl	%eax, 4(%rdx)
	movl	8(%rbx), %eax
	orl	%eax, 8(%rdx)
	movl	12(%rbx), %eax
	orl	%eax, 12(%rdx)
	addl	$-128, %ecx
	addq	$16, %rdx
	addq	$16, %rbx
	cmpl	$32, %ecx
	jg	.LBB11_39
.LBB11_40:                              # %do.body.153.loopexit
	leaq	4(%rsi,%r14,4), %rsi
	leaq	(%r10,%r11,4), %r10
.LBB11_41:                              # %do.body.153
	movl	(%r10), %edx
	bswapl	%edx
	movb	%r12b, %cl
	shll	%cl, %edx
	xorl	%eax, %eax
	testb	$4, %r9b
	jne	.LBB11_43
# BB#42:                                # %cond.false.159
	movl	4(%r10), %eax
	bswapl	%eax
	movl	$32, %ecx
	subl	%r12d, %ecx
	shrl	%cl, %eax
.LBB11_43:                              # %cond.end.163
	orl	%edx, %eax
	bswapl	%eax
	movl	(%rsi), %ecx
	orl	%ecx, %eax
	andl	%r8d, %ecx
	notl	%r8d
	andl	%eax, %r8d
	orl	%ecx, %r8d
	movl	%r8d, (%rsi)
.LBB11_44:                              # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	dors_rop_run1_const_t, .Lfunc_end11-dors_rop_run1_const_t
	.cfi_endproc

	.align	16, 0x90
	.type	sett_rop_run1_const_s,@function
sett_rop_run1_const_s:                  # @sett_rop_run1_const_s
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp69:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp70:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp71:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp72:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp73:
	.cfi_def_cfa_offset 56
.Ltmp74:
	.cfi_offset %rbx, -56
.Ltmp75:
	.cfi_offset %r12, -48
.Ltmp76:
	.cfi_offset %r13, -40
.Ltmp77:
	.cfi_offset %r14, -32
.Ltmp78:
	.cfi_offset %r15, -24
.Ltmp79:
	.cfi_offset %rbp, -16
	movzbl	54(%rdi), %eax
	movl	%esi, %r14d
	andl	$3, %r14d
	leal	(%rax,%r14,8), %eax
	movzbl	52(%rdi), %r15d
	imull	%edx, %r15d
	addl	%eax, %r15d
	movl	%r15d, %ecx
	andl	$31, %ecx
	movl	$-1, %r11d
	movl	$-1, %r8d
	shrl	%cl, %r8d
	xorl	%ecx, %ecx
	movl	%r15d, %edx
	andl	$31, %edx
	movq	32(%rdi), %rbp
	bswapl	%r8d
	cmovel	%ecx, %r8d
	movl	%ebp, %ebx
	andl	$3, %ebx
	subq	%rbx, %rbp
	shll	$3, %ebx
	subl	%eax, %ebx
	movl	%eax, %ecx
	andl	$31, %ecx
	shrl	%cl, %r11d
	movl	40(%rdi), %eax
	leal	(%rbx,%rax), %edi
	leaq	-4(%rbp), %r10
	movl	%edi, %edx
	shrl	$30, %edx
	andl	$2, %edx
	testl	%edi, %edi
	leal	32(%rbx,%rax), %r12d
	cmovnsl	%edi, %r12d
	cmovnsq	%rbp, %r10
	testl	%r12d, %r12d
	je	.LBB12_2
# BB#1:                                 # %lor.lhs.false
	leal	63(%r15), %eax
	andl	$-32, %eax
	leal	31(%r15,%r12), %edi
	andl	$-32, %edi
	cmpl	%eax, %edi
	movl	%edx, %r9d
	jge	.LBB12_3
.LBB12_2:                               # %if.then.40
	movl	%edx, %r9d
	orl	$8, %r9d
.LBB12_3:                               # %if.end.42
	subq	%r14, %rsi
	movl	%r15d, %edi
	addl	$-32, %edi
	jle	.LBB12_4
# BB#9:                                 # %if.end.71
	orl	%edx, %ecx
	je	.LBB12_16
# BB#10:                                # %do.body.78
	xorl	%eax, %eax
	testl	%edx, %edx
	movl	$0, %edx
	jne	.LBB12_12
# BB#11:                                # %cond.false.82
	movl	(%r10), %edx
	bswapl	%edx
	movb	%r12b, %cl
	shll	%cl, %edx
.LBB12_12:                              # %cond.end.85
	addq	$4, %r10
	testl	%r12d, %r12d
	je	.LBB12_14
# BB#13:                                # %cond.false.90
	movl	(%r10), %eax
	bswapl	%eax
	movl	$32, %ecx
	subl	%r12d, %ecx
	shrl	%cl, %eax
.LBB12_14:                              # %if.end.109
	orl	%edx, %eax
	andl	%r11d, %eax
	notl	%r11d
	bswapl	%r11d
	andl	(%rsi), %r11d
	bswapl	%eax
	orl	%r11d, %eax
	movl	%eax, (%rsi)
	addq	$4, %rsi
	cmpl	$65, %r15d
	jl	.LBB12_41
# BB#15:
	addl	$-64, %r15d
	movl	%r15d, %edi
.LBB12_16:                              # %if.then.112
	testl	%r12d, %r12d
	je	.LBB12_24
# BB#17:                                # %do.body.128.preheader
	movl	$32, %eax
	movl	$32, %r15d
	subl	%r12d, %r15d
	cmpl	$33, %edi
	cmovll	%edi, %eax
	notl	%eax
	leal	32(%rdi,%rax), %eax
	movl	%eax, %r11d
	shrl	$5, %r11d
	btl	$5, %eax
	jb	.LBB12_18
# BB#19:                                # %do.body.128.prol
	movl	(%r10), %eax
	movl	4(%r10), %ebp
	bswapl	%eax
	movb	%r12b, %cl
	shll	%cl, %eax
	leaq	4(%r10), %rbx
	bswapl	%ebp
	movb	%r15b, %cl
	shrl	%cl, %ebp
	orl	%eax, %ebp
	bswapl	%ebp
	movl	%ebp, (%rsi)
	leaq	4(%rsi), %rax
	addl	$-32, %edi
	jmp	.LBB12_20
.LBB12_4:                               # %if.then.46
	movl	%r11d, %eax
	bswapl	%eax
	movl	%r8d, %ebx
	notl	%ebx
	xorl	%edi, %edi
	testl	%edx, %edx
	movl	$0, %edx
	jne	.LBB12_6
# BB#5:                                 # %cond.false
	movl	(%r10), %edx
	bswapl	%edx
	movb	%r12b, %cl
	shll	%cl, %edx
.LBB12_6:                               # %cond.end
	andl	%ebx, %eax
	testb	$8, %r9b
	jne	.LBB12_8
# BB#7:                                 # %cond.false.54
	movl	4(%r10), %edi
	bswapl	%edi
	movl	$32, %ecx
	subl	%r12d, %ecx
	shrl	%cl, %edi
.LBB12_8:                               # %cond.end.58
	orl	%edx, %edi
	bswapl	%edi
	notl	%r11d
	bswapl	%r11d
	orl	%r8d, %r11d
	andl	(%rsi), %r11d
	andl	%edi, %eax
	orl	%r11d, %eax
	movl	%eax, (%rsi)
	jmp	.LBB12_44
.LBB12_24:                              # %do.body.117.preheader
	cmpl	$33, %edi
	movl	$32, %eax
	movl	$32, %ecx
	cmovll	%edi, %ecx
	notl	%ecx
	leal	32(%rdi,%rcx), %r14d
	shrl	$5, %r14d
	leaq	1(%r14), %r11
	movq	%r11, %r15
	andq	$268435448, %r15        # imm = 0xFFFFFF8
	je	.LBB12_25
# BB#26:                                # %vector.memcheck
	cmpl	$33, %edi
	cmovll	%edi, %eax
	notl	%eax
	leal	32(%rdi,%rax), %eax
	shrl	$5, %eax
	leaq	(%r10,%rax,4), %rcx
	cmpq	%rcx, %rsi
	ja	.LBB12_28
# BB#27:                                # %vector.memcheck
	leaq	(%rsi,%rax,4), %rax
	cmpq	%rax, %r10
	ja	.LBB12_28
.LBB12_25:
	movq	%rsi, %rdx
	movq	%r10, %rbx
	movl	%edi, %ebp
	xorl	%r15d, %r15d
	jmp	.LBB12_33
.LBB12_18:
	movq	%rsi, %rax
	movq	%r10, %rbx
.LBB12_20:                              # %do.body.128.preheader.split
	leaq	1(%r11), %r14
	testl	%r11d, %r11d
	je	.LBB12_23
# BB#21:                                # %do.body.128.preheader.split.split
	addl	$32, %edi
	.align	16, 0x90
.LBB12_22:                              # %do.body.128
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %ebp
	movl	4(%rbx), %edx
	bswapl	%ebp
	movb	%r12b, %cl
	shll	%cl, %ebp
	bswapl	%edx
	movb	%r15b, %cl
	shrl	%cl, %edx
	orl	%ebp, %edx
	bswapl	%edx
	movl	%edx, (%rax)
	movl	4(%rbx), %edx
	movl	8(%rbx), %ebp
	bswapl	%edx
	movb	%r12b, %cl
	shll	%cl, %edx
	addq	$8, %rbx
	bswapl	%ebp
	movb	%r15b, %cl
	shrl	%cl, %ebp
	orl	%edx, %ebp
	bswapl	%ebp
	movl	%ebp, 4(%rax)
	addl	$-64, %edi
	addq	$8, %rax
	cmpl	$32, %edi
	jg	.LBB12_22
.LBB12_23:                              # %do.body.149.loopexit101
	leaq	4(%rsi,%r11,4), %rsi
	leaq	(%r10,%r14,4), %r10
	jmp	.LBB12_41
.LBB12_28:                              # %vector.body.preheader
	movl	%r15d, %eax
	shll	$5, %eax
	cmpl	$33, %edi
	movl	$32, %ecx
	cmovll	%edi, %ecx
	notl	%ecx
	leal	32(%rdi,%rcx), %edx
	shrl	$5, %edx
	incl	%edx
	andl	$268435448, %edx        # imm = 0xFFFFFF8
	addq	$-8, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	xorl	%r13d, %r13d
	btq	$3, %rdx
	jb	.LBB12_30
# BB#29:                                # %vector.body.prol
	movups	(%r10), %xmm0
	movups	16(%r10), %xmm1
	movups	%xmm0, (%rsi)
	movups	%xmm1, 16(%rsi)
	movl	$8, %r13d
.LBB12_30:                              # %vector.body.preheader.split
	leaq	(%rsi,%r15,4), %rdx
	leaq	(%r10,%r15,4), %rbx
	movl	%edi, %ebp
	subl	%eax, %ebp
	testq	%rcx, %rcx
	je	.LBB12_33
# BB#31:                                # %vector.body.preheader.split.split
	movl	%edi, %eax
	notl	%eax
	cmpl	$-34, %eax
	movl	$-33, %ecx
	cmovgl	%eax, %ecx
	leal	32(%rdi,%rcx), %eax
	shrl	$5, %eax
	incl	%eax
	andl	$268435448, %eax        # imm = 0xFFFFFF8
	subq	%r13, %rax
	leaq	48(%r10,%r13,4), %rdi
	leaq	48(%rsi,%r13,4), %rcx
	.align	16, 0x90
.LBB12_32:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	-48(%rdi), %xmm0
	movups	-32(%rdi), %xmm1
	movups	%xmm0, -48(%rcx)
	movups	%xmm1, -32(%rcx)
	movups	-16(%rdi), %xmm0
	movups	(%rdi), %xmm1
	movups	%xmm0, -16(%rcx)
	movups	%xmm1, (%rcx)
	addq	$64, %rdi
	addq	$64, %rcx
	addq	$-16, %rax
	jne	.LBB12_32
.LBB12_33:                              # %middle.block
	cmpq	%r15, %r11
	je	.LBB12_40
# BB#34:                                # %do.body.117.preheader153
	cmpl	$33, %ebp
	movl	$32, %eax
	cmovll	%ebp, %eax
	notl	%eax
	leal	32(%rbp,%rax), %eax
	movl	%eax, %ecx
	shrl	$5, %ecx
	incl	%ecx
	testb	$7, %cl
	je	.LBB12_37
# BB#35:                                # %do.body.117.prol.preheader
	movl	%ebp, %ecx
	notl	%ecx
	cmpl	$-34, %ecx
	movl	$-33, %edi
	cmovgl	%ecx, %edi
	leal	32(%rbp,%rdi), %edi
	shrl	$5, %edi
	incl	%edi
	andl	$7, %edi
	negl	%edi
	.align	16, 0x90
.LBB12_36:                              # %do.body.117.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %ecx
	addq	$4, %rbx
	movl	%ecx, (%rdx)
	addq	$4, %rdx
	addl	$-32, %ebp
	incl	%edi
	jne	.LBB12_36
.LBB12_37:                              # %do.body.117.preheader153.split
	cmpl	$224, %eax
	jb	.LBB12_40
# BB#38:                                # %do.body.117.preheader153.split.split
	addl	$32, %ebp
	.align	16, 0x90
.LBB12_39:                              # %do.body.117
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %eax
	movl	%eax, (%rdx)
	movl	4(%rbx), %eax
	movl	%eax, 4(%rdx)
	movl	8(%rbx), %eax
	movl	%eax, 8(%rdx)
	movl	12(%rbx), %eax
	movl	%eax, 12(%rdx)
	movl	16(%rbx), %eax
	movl	%eax, 16(%rdx)
	movl	20(%rbx), %eax
	movl	%eax, 20(%rdx)
	movl	24(%rbx), %eax
	movl	%eax, 24(%rdx)
	movl	28(%rbx), %eax
	movl	%eax, 28(%rdx)
	addl	$-256, %ebp
	addq	$32, %rbx
	addq	$32, %rdx
	cmpl	$32, %ebp
	jg	.LBB12_39
.LBB12_40:                              # %do.body.149.loopexit
	leaq	4(%rsi,%r14,4), %rsi
	leaq	(%r10,%r11,4), %r10
.LBB12_41:                              # %do.body.149
	movl	(%r10), %edx
	bswapl	%edx
	movb	%r12b, %cl
	shll	%cl, %edx
	xorl	%eax, %eax
	testb	$8, %r9b
	jne	.LBB12_43
# BB#42:                                # %cond.false.155
	movl	4(%r10), %eax
	bswapl	%eax
	movl	$32, %ecx
	subl	%r12d, %ecx
	shrl	%cl, %eax
.LBB12_43:                              # %cond.end.159
	orl	%edx, %eax
	bswapl	%eax
	movl	(%rsi), %ecx
	andl	%r8d, %ecx
	notl	%r8d
	andl	%eax, %r8d
	orl	%ecx, %r8d
	movl	%r8d, (%rsi)
.LBB12_44:                              # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	sett_rop_run1_const_s, .Lfunc_end12-sett_rop_run1_const_s
	.cfi_endproc

	.align	16, 0x90
	.type	dort_rop_run1_const_s,@function
dort_rop_run1_const_s:                  # @dort_rop_run1_const_s
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp81:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp82:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp83:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp84:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp85:
	.cfi_def_cfa_offset 56
.Ltmp86:
	.cfi_offset %rbx, -56
.Ltmp87:
	.cfi_offset %r12, -48
.Ltmp88:
	.cfi_offset %r13, -40
.Ltmp89:
	.cfi_offset %r14, -32
.Ltmp90:
	.cfi_offset %r15, -24
.Ltmp91:
	.cfi_offset %rbp, -16
	movzbl	54(%rdi), %eax
	movl	%esi, %r14d
	andl	$3, %r14d
	leal	(%rax,%r14,8), %ebp
	movzbl	52(%rdi), %r15d
	imull	%edx, %r15d
	addl	%ebp, %r15d
	movl	%r15d, %ecx
	andl	$31, %ecx
	movl	$-1, %r11d
	movl	$-1, %r8d
	shrl	%cl, %r8d
	xorl	%ecx, %ecx
	movl	%r15d, %eax
	andl	$31, %eax
	movq	32(%rdi), %rbx
	bswapl	%r8d
	cmovel	%ecx, %r8d
	movl	%ebx, %eax
	andl	$3, %eax
	subq	%rax, %rbx
	shll	$3, %eax
	subl	%ebp, %eax
	movl	%ebp, %ecx
	andl	$31, %ecx
	shrl	%cl, %r11d
	movl	40(%rdi), %edi
	leal	(%rax,%rdi), %edx
	leaq	-4(%rbx), %r10
	movl	%edx, %ebp
	shrl	$30, %ebp
	andl	$2, %ebp
	testl	%edx, %edx
	leal	32(%rax,%rdi), %r12d
	cmovnsl	%edx, %r12d
	cmovnsq	%rbx, %r10
	testl	%r12d, %r12d
	je	.LBB13_2
# BB#1:                                 # %lor.lhs.false
	leal	63(%r15), %eax
	andl	$-32, %eax
	leal	31(%r15,%r12), %edx
	andl	$-32, %edx
	cmpl	%eax, %edx
	movl	%ebp, %r9d
	jge	.LBB13_3
.LBB13_2:                               # %if.then.40
	movl	%ebp, %r9d
	orl	$8, %r9d
.LBB13_3:                               # %if.end.42
	subq	%r14, %rsi
	movl	%r11d, %eax
	bswapl	%eax
	movl	%r15d, %edi
	addl	$-32, %edi
	jle	.LBB13_4
# BB#9:                                 # %if.end.72
	orl	%ebp, %ecx
	je	.LBB13_16
# BB#10:                                # %do.body.79
	xorl	%edi, %edi
	testl	%ebp, %ebp
	movl	$0, %edx
	jne	.LBB13_12
# BB#11:                                # %cond.false.83
	movl	(%r10), %edx
	bswapl	%edx
	movb	%r12b, %cl
	shll	%cl, %edx
.LBB13_12:                              # %cond.end.86
	addq	$4, %r10
	testl	%r12d, %r12d
	je	.LBB13_14
# BB#13:                                # %cond.false.91
	movl	(%r10), %edi
	bswapl	%edi
	movl	$32, %ecx
	subl	%r12d, %ecx
	shrl	%cl, %edi
.LBB13_14:                              # %if.end.111
	orl	%edx, %edi
	bswapl	%edi
	movl	(%rsi), %ecx
	orl	%ecx, %edi
	notl	%r11d
	bswapl	%r11d
	andl	%ecx, %r11d
	andl	%eax, %edi
	orl	%r11d, %edi
	movl	%edi, (%rsi)
	addq	$4, %rsi
	cmpl	$65, %r15d
	jl	.LBB13_41
# BB#15:
	addl	$-64, %r15d
	movl	%r15d, %edi
.LBB13_16:                              # %if.then.114
	testl	%r12d, %r12d
	je	.LBB13_24
# BB#17:                                # %do.body.131.preheader
	movl	$32, %eax
	movl	$32, %r15d
	subl	%r12d, %r15d
	cmpl	$33, %edi
	cmovll	%edi, %eax
	notl	%eax
	leal	32(%rdi,%rax), %eax
	movl	%eax, %r11d
	shrl	$5, %r11d
	btl	$5, %eax
	jb	.LBB13_18
# BB#19:                                # %do.body.131.prol
	movl	(%r10), %eax
	movl	4(%r10), %ebp
	bswapl	%eax
	movb	%r12b, %cl
	shll	%cl, %eax
	leaq	4(%r10), %rbx
	bswapl	%ebp
	movb	%r15b, %cl
	shrl	%cl, %ebp
	orl	%eax, %ebp
	bswapl	%ebp
	orl	%ebp, (%rsi)
	leaq	4(%rsi), %rax
	addl	$-32, %edi
	jmp	.LBB13_20
.LBB13_4:                               # %if.then.46
	movl	%r8d, %ebx
	notl	%ebx
	xorl	%edi, %edi
	testl	%ebp, %ebp
	movl	$0, %edx
	jne	.LBB13_6
# BB#5:                                 # %cond.false
	movl	(%r10), %edx
	bswapl	%edx
	movb	%r12b, %cl
	shll	%cl, %edx
.LBB13_6:                               # %cond.end
	andl	%ebx, %eax
	testb	$8, %r9b
	jne	.LBB13_8
# BB#7:                                 # %cond.false.54
	movl	4(%r10), %edi
	bswapl	%edi
	movl	$32, %ecx
	subl	%r12d, %ecx
	shrl	%cl, %edi
.LBB13_8:                               # %cond.end.58
	orl	%edx, %edi
	bswapl	%edi
	movl	(%rsi), %ecx
	orl	%ecx, %edi
	notl	%r11d
	bswapl	%r11d
	orl	%r8d, %r11d
	andl	%ecx, %r11d
	andl	%edi, %eax
	orl	%r11d, %eax
	movl	%eax, (%rsi)
	jmp	.LBB13_44
.LBB13_24:                              # %do.body.119.preheader
	cmpl	$33, %edi
	movl	$32, %eax
	movl	$32, %ecx
	cmovll	%edi, %ecx
	notl	%ecx
	leal	32(%rdi,%rcx), %r14d
	shrl	$5, %r14d
	leaq	1(%r14), %r11
	movq	%r11, %r15
	andq	$268435448, %r15        # imm = 0xFFFFFF8
	je	.LBB13_25
# BB#26:                                # %vector.memcheck
	cmpl	$33, %edi
	cmovll	%edi, %eax
	notl	%eax
	leal	32(%rdi,%rax), %eax
	shrl	$5, %eax
	leaq	(%r10,%rax,4), %rcx
	cmpq	%rcx, %rsi
	ja	.LBB13_28
# BB#27:                                # %vector.memcheck
	leaq	(%rsi,%rax,4), %rax
	cmpq	%rax, %r10
	ja	.LBB13_28
.LBB13_25:
	movq	%rsi, %rdx
	movq	%r10, %rbx
	movl	%edi, %ecx
	xorl	%r15d, %r15d
	jmp	.LBB13_33
.LBB13_18:
	movq	%rsi, %rax
	movq	%r10, %rbx
.LBB13_20:                              # %do.body.131.preheader.split
	leaq	1(%r11), %r14
	testl	%r11d, %r11d
	je	.LBB13_23
# BB#21:                                # %do.body.131.preheader.split.split
	addl	$32, %edi
	.align	16, 0x90
.LBB13_22:                              # %do.body.131
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %ebp
	movl	4(%rbx), %edx
	bswapl	%ebp
	movb	%r12b, %cl
	shll	%cl, %ebp
	bswapl	%edx
	movb	%r15b, %cl
	shrl	%cl, %edx
	orl	%ebp, %edx
	bswapl	%edx
	orl	%edx, (%rax)
	movl	4(%rbx), %edx
	movl	8(%rbx), %ebp
	bswapl	%edx
	movb	%r12b, %cl
	shll	%cl, %edx
	bswapl	%ebp
	movb	%r15b, %cl
	shrl	%cl, %ebp
	orl	%edx, %ebp
	bswapl	%ebp
	orl	%ebp, 4(%rax)
	addq	$8, %rbx
	addl	$-64, %edi
	addq	$8, %rax
	cmpl	$32, %edi
	jg	.LBB13_22
.LBB13_23:                              # %do.body.153.loopexit106
	leaq	4(%rsi,%r11,4), %rsi
	leaq	(%r10,%r14,4), %r10
	jmp	.LBB13_41
.LBB13_28:                              # %vector.body.preheader
	movl	%r15d, %eax
	shll	$5, %eax
	cmpl	$33, %edi
	movl	$32, %ecx
	cmovll	%edi, %ecx
	notl	%ecx
	leal	32(%rdi,%rcx), %ecx
	shrl	$5, %ecx
	incl	%ecx
	andl	$268435448, %ecx        # imm = 0xFFFFFF8
	addq	$-8, %rcx
	movq	%rcx, %rbp
	shrq	$3, %rbp
	xorl	%r13d, %r13d
	btq	$3, %rcx
	jb	.LBB13_30
# BB#29:                                # %vector.body.prol
	movups	(%rsi), %xmm0
	movups	16(%rsi), %xmm1
	movups	(%r10), %xmm2
	movups	16(%r10), %xmm3
	orps	%xmm0, %xmm2
	orps	%xmm1, %xmm3
	movups	%xmm2, (%rsi)
	movups	%xmm3, 16(%rsi)
	movl	$8, %r13d
.LBB13_30:                              # %vector.body.preheader.split
	leaq	(%rsi,%r15,4), %rdx
	leaq	(%r10,%r15,4), %rbx
	movl	%edi, %ecx
	subl	%eax, %ecx
	testq	%rbp, %rbp
	je	.LBB13_33
# BB#31:                                # %vector.body.preheader.split.split
	movl	%edi, %eax
	notl	%eax
	cmpl	$-34, %eax
	movl	$-33, %ebp
	cmovgl	%eax, %ebp
	leal	32(%rdi,%rbp), %ebp
	shrl	$5, %ebp
	incl	%ebp
	andl	$268435448, %ebp        # imm = 0xFFFFFF8
	subq	%r13, %rbp
	leaq	48(%r10,%r13,4), %rdi
	leaq	48(%rsi,%r13,4), %rax
	.align	16, 0x90
.LBB13_32:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	-48(%rax), %xmm0
	movups	-32(%rax), %xmm1
	movups	-48(%rdi), %xmm2
	movups	-32(%rdi), %xmm3
	orps	%xmm0, %xmm2
	orps	%xmm1, %xmm3
	movups	%xmm2, -48(%rax)
	movups	%xmm3, -32(%rax)
	movups	-16(%rax), %xmm0
	movups	(%rax), %xmm1
	movups	-16(%rdi), %xmm2
	movups	(%rdi), %xmm3
	orps	%xmm0, %xmm2
	orps	%xmm1, %xmm3
	movups	%xmm2, -16(%rax)
	movups	%xmm3, (%rax)
	addq	$64, %rdi
	addq	$64, %rax
	addq	$-16, %rbp
	jne	.LBB13_32
.LBB13_33:                              # %middle.block
	cmpq	%r15, %r11
	je	.LBB13_40
# BB#34:                                # %do.body.119.preheader160
	cmpl	$33, %ecx
	movl	$32, %eax
	cmovll	%ecx, %eax
	notl	%eax
	leal	32(%rcx,%rax), %eax
	movl	%eax, %edi
	shrl	$5, %edi
	incl	%edi
	testb	$3, %dil
	je	.LBB13_37
# BB#35:                                # %do.body.119.prol.preheader
	movl	%ecx, %edi
	notl	%edi
	cmpl	$-34, %edi
	movl	$-33, %ebp
	cmovgl	%edi, %ebp
	leal	32(%rcx,%rbp), %edi
	shrl	$5, %edi
	incl	%edi
	andl	$3, %edi
	negl	%edi
	.align	16, 0x90
.LBB13_36:                              # %do.body.119.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %ebp
	orl	%ebp, (%rdx)
	addq	$4, %rbx
	addq	$4, %rdx
	addl	$-32, %ecx
	incl	%edi
	jne	.LBB13_36
.LBB13_37:                              # %do.body.119.preheader160.split
	cmpl	$96, %eax
	jb	.LBB13_40
# BB#38:                                # %do.body.119.preheader160.split.split
	addl	$32, %ecx
	.align	16, 0x90
.LBB13_39:                              # %do.body.119
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %eax
	orl	%eax, (%rdx)
	movl	4(%rbx), %eax
	orl	%eax, 4(%rdx)
	movl	8(%rbx), %eax
	orl	%eax, 8(%rdx)
	movl	12(%rbx), %eax
	orl	%eax, 12(%rdx)
	addl	$-128, %ecx
	addq	$16, %rdx
	addq	$16, %rbx
	cmpl	$32, %ecx
	jg	.LBB13_39
.LBB13_40:                              # %do.body.153.loopexit
	leaq	4(%rsi,%r14,4), %rsi
	leaq	(%r10,%r11,4), %r10
.LBB13_41:                              # %do.body.153
	movl	(%r10), %edx
	bswapl	%edx
	movb	%r12b, %cl
	shll	%cl, %edx
	xorl	%eax, %eax
	testb	$8, %r9b
	jne	.LBB13_43
# BB#42:                                # %cond.false.159
	movl	4(%r10), %eax
	bswapl	%eax
	movl	$32, %ecx
	subl	%r12d, %ecx
	shrl	%cl, %eax
.LBB13_43:                              # %cond.end.163
	orl	%edx, %eax
	bswapl	%eax
	movl	(%rsi), %ecx
	orl	%ecx, %eax
	andl	%r8d, %ecx
	notl	%r8d
	andl	%eax, %r8d
	orl	%ecx, %r8d
	movl	%r8d, (%rsi)
.LBB13_44:                              # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	dort_rop_run1_const_s, .Lfunc_end13-dort_rop_run1_const_s
	.cfi_endproc

	.align	16, 0x90
	.type	generic_rop_run1,@function
generic_rop_run1:                       # @generic_rop_run1
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
	subq	$72, %rsp
.Ltmp98:
	.cfi_def_cfa_offset 128
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
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movzbl	54(%rdi), %ecx
	movl	%esi, %r9d
	andl	$3, %r9d
	leal	(%rcx,%r9,8), %r10d
	movzbl	52(%rdi), %ebp
	imull	%edx, %ebp
	leal	(%rbp,%r10), %r13d
	movl	%r13d, %ecx
	andl	$31, %ecx
	movl	$-1, %r12d
	movl	$-1, %r11d
	shrl	%cl, %r11d
	xorl	%ecx, %ecx
	movl	%r13d, %edx
	andl	$31, %edx
	movslq	48(%rdi), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	16(%rdi), %rax
	bswapl	%r11d
	cmovel	%ecx, %r11d
	movl	%r10d, %ecx
	andl	$31, %ecx
	shrl	%cl, %r12d
	movl	24(%rdi), %esi
	movl	%eax, %edx
	andl	$3, %edx
	subq	%rdx, %rax
	shll	$3, %edx
	subl	%r10d, %edx
	leal	(%rdx,%rsi), %ebx
	leal	32(%rdx,%rsi), %r8d
	movl	%ebx, %esi
	shrl	$31, %esi
	testl	%ebx, %ebx
	cmovnsl	%ebx, %r8d
	leaq	-4(%rax), %rdx
	cmovnsq	%rax, %rdx
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	32(%rdi), %rdx
	leal	63(%rbp,%r10), %r15d
	andl	$-32, %r15d
	testl	%r8d, %r8d
	je	.LBB14_2
# BB#1:                                 # %lor.lhs.false
	leal	31(%r13,%r8), %eax
	andl	$-32, %eax
	cmpl	%r15d, %eax
	jge	.LBB14_3
.LBB14_2:                               # %if.then.43
	orl	$4, %esi
.LBB14_3:                               # %if.end.45
	movl	40(%rdi), %eax
	movl	%edx, %edi
	andl	$3, %edi
	subq	%rdi, %rdx
	shll	$3, %edi
	subl	%r10d, %edi
	leal	(%rdi,%rax), %ebp
	leaq	-4(%rdx), %r14
	movl	%esi, %r10d
	orl	$2, %r10d
	testl	%ebp, %ebp
	leal	32(%rdi,%rax), %ebx
	cmovnsl	%esi, %r10d
	cmovnsl	%ebp, %ebx
	cmovnsq	%rdx, %r14
	testl	%ebx, %ebx
	je	.LBB14_6
# BB#4:                                 # %lor.lhs.false.78
	leal	31(%r13,%rbx), %eax
	andl	$-32, %eax
	cmpl	%r15d, %eax
	jge	.LBB14_5
.LBB14_6:                               # %if.then.81
	movq	%r13, 64(%rsp)          # 8-byte Spill
	movl	%r11d, 20(%rsp)         # 4-byte Spill
	orl	$8, %r10d
	jmp	.LBB14_7
.LBB14_5:
	movq	%r13, 64(%rsp)          # 8-byte Spill
	movl	%r11d, 20(%rsp)         # 4-byte Spill
.LBB14_7:                               # %if.end.83
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	rop_proc_table(,%rax,8), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	32(%rsp), %rax          # 8-byte Reload
	subq	%r9, %rax
	movq	%rax, %r9
	movl	%r12d, %r13d
	bswapl	%r13d
	movq	64(%rsp), %r15          # 8-byte Reload
	addl	$-32, %r15d
	jle	.LBB14_8
# BB#17:                                # %if.end.136
	movl	%r10d, %eax
	andl	$3, %eax
	orl	%ecx, %eax
	je	.LBB14_29
# BB#18:                                # %do.body.143
	xorl	%eax, %eax
	testb	$1, %r10b
	movl	$0, %edx
	movq	24(%rsp), %r15          # 8-byte Reload
	jne	.LBB14_20
# BB#19:                                # %cond.false.147
	movl	(%r15), %edx
	bswapl	%edx
	movb	%r8b, %cl
	shll	%cl, %edx
.LBB14_20:                              # %cond.end.150
	addq	$4, %r15
	testl	%r8d, %r8d
	je	.LBB14_22
# BB#21:                                # %cond.false.155
	movl	(%r15), %eax
	bswapl	%eax
	movl	$32, %ecx
	subl	%r8d, %ecx
	shrl	%cl, %eax
.LBB14_22:                              # %cond.end.159
	orl	%edx, %eax
	xorl	%edx, %edx
	testb	$2, %r10b
	movl	$0, %esi
	jne	.LBB14_24
# BB#23:                                # %cond.false.169
	movl	(%r14), %esi
	bswapl	%esi
	movb	%bl, %cl
	shll	%cl, %esi
.LBB14_24:                              # %cond.end.172
	movq	%r8, 48(%rsp)           # 8-byte Spill
	movl	%r10d, 16(%rsp)         # 4-byte Spill
	bswapl	%eax
	addq	$4, %r14
	testl	%ebx, %ebx
	je	.LBB14_26
# BB#25:                                # %cond.false.177
	movl	(%r14), %edx
	bswapl	%edx
	movl	$32, %ecx
	subl	%ebx, %ecx
	shrl	%cl, %edx
.LBB14_26:                              # %if.end.198
	orl	%esi, %edx
	bswapl	%edx
	movl	(%r9), %edi
	movl	%eax, %esi
	movq	%r9, %rbp
	callq	*56(%rsp)               # 8-byte Folded Reload
	movq	%rbp, %r9
	notl	%r12d
	bswapl	%r12d
	andl	(%r9), %r12d
	andl	%r13d, %eax
	orl	%r12d, %eax
	movl	%eax, (%r9)
	addq	$4, %r9
	movq	64(%rsp), %rax          # 8-byte Reload
	cmpl	$65, %eax
	jl	.LBB14_27
# BB#28:
	movq	%r15, 24(%rsp)          # 8-byte Spill
	addl	$-64, %eax
	movl	%eax, %r15d
	movl	16(%rsp), %r10d         # 4-byte Reload
	movq	48(%rsp), %r8           # 8-byte Reload
.LBB14_29:                              # %if.then.201
	movl	%r10d, 16(%rsp)         # 4-byte Spill
	testl	%r8d, %r8d
	movq	56(%rsp), %r10          # 8-byte Reload
	je	.LBB14_30
# BB#37:                                # %if.else.246
	movl	$32, %eax
	movl	$32, %edx
	subl	%r8d, %edx
	movl	%edx, 48(%rsp)          # 4-byte Spill
	testl	%ebx, %ebx
	je	.LBB14_41
# BB#38:                                # %do.body.275.preheader
	movl	$32, %ecx
	subl	%ebx, %ecx
	movl	%ecx, 40(%rsp)          # 4-byte Spill
	cmpl	$33, %r15d
	cmovll	%r15d, %eax
	notl	%eax
	leal	32(%r15,%rax), %ecx
	shrl	$5, %ecx
	leaq	4(%r14,%rcx,4), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	incq	%rcx
	movq	%rcx, (%rsp)            # 8-byte Spill
	addq	$4, %r14
	movq	24(%rsp), %rax          # 8-byte Reload
	leaq	4(%rax), %r12
	addl	$32, %r15d
	movq	%r9, %r13
	movq	%r13, 32(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB14_39:                              # %do.body.275
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, 64(%rsp)          # 8-byte Spill
	movl	-4(%r12), %eax
	movl	(%r12), %esi
	bswapl	%eax
	movb	%r8b, %cl
	shll	%cl, %eax
	bswapl	%esi
	movb	%dl, %cl
	shrl	%cl, %esi
	orl	%eax, %esi
	bswapl	%esi
	movl	-4(%r14), %eax
	movq	64(%rsp), %rcx          # 8-byte Reload
	movl	(%rcx), %edx
	bswapl	%eax
	movb	%bl, %cl
	shll	%cl, %eax
	bswapl	%edx
	movl	40(%rsp), %ecx          # 4-byte Reload
	shrl	%cl, %edx
	orl	%eax, %edx
	bswapl	%edx
	movl	(%r13), %edi
	movq	%r8, %rbp
	movq	%r15, %r14
	movq	%r10, %r15
	callq	*%r15
	movq	%r15, %r10
	movq	%r14, %r15
	movl	48(%rsp), %edx          # 4-byte Reload
	movq	64(%rsp), %r14          # 8-byte Reload
	movq	%rbp, %r8
	movl	%eax, (%r13)
	addq	$4, %r13
	addq	$4, %r14
	addq	$4, %r12
	addl	$-32, %r15d
	cmpl	$32, %r15d
	jg	.LBB14_39
# BB#40:                                # %do.body.309.loopexit194
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	(%rsp), %rcx            # 8-byte Reload
	leaq	(%rax,%rcx,4), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	24(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rcx,4), %r15
	movl	20(%rsp), %ebp          # 4-byte Reload
	jmp	.LBB14_44
.LBB14_8:                               # %if.then.87
	xorl	%eax, %eax
	testb	$1, %r10b
	movl	$0, %edx
	jne	.LBB14_10
# BB#9:                                 # %cond.false
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	(%rcx), %edx
	bswapl	%edx
	movb	%r8b, %cl
	shll	%cl, %edx
.LBB14_10:                              # %cond.end
	testb	$4, %r10b
	movl	20(%rsp), %r15d         # 4-byte Reload
	jne	.LBB14_12
# BB#11:                                # %cond.false.96
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	4(%rax), %eax
	bswapl	%eax
	movl	$32, %ecx
	subl	%r8d, %ecx
	shrl	%cl, %eax
.LBB14_12:                              # %cond.end.100
	movl	%r15d, %edi
	notl	%edi
	orl	%edx, %eax
	xorl	%edx, %edx
	testb	$2, %r10b
	movl	$0, %esi
	jne	.LBB14_14
# BB#13:                                # %cond.false.110
	movl	(%r14), %esi
	bswapl	%esi
	movb	%bl, %cl
	shll	%cl, %esi
.LBB14_14:                              # %cond.end.113
	andl	%edi, %r13d
	bswapl	%eax
	testb	$8, %r10b
	jne	.LBB14_16
# BB#15:                                # %cond.false.118
	movl	4(%r14), %edx
	bswapl	%edx
	movl	$32, %ecx
	subl	%ebx, %ecx
	shrl	%cl, %edx
.LBB14_16:                              # %cond.end.122
	orl	%esi, %edx
	bswapl	%edx
	movl	(%r9), %edi
	movl	%eax, %esi
	movq	%r9, %rbx
	callq	*56(%rsp)               # 8-byte Folded Reload
	notl	%r12d
	bswapl	%r12d
	orl	%r15d, %r12d
	andl	(%rbx), %r12d
	andl	%eax, %r13d
	orl	%r12d, %r13d
	movl	%r13d, (%rbx)
	jmp	.LBB14_51
.LBB14_27:
	movq	%r9, 32(%rsp)           # 8-byte Spill
	movl	20(%rsp), %ebp          # 4-byte Reload
	movl	16(%rsp), %edi          # 4-byte Reload
	movq	48(%rsp), %r8           # 8-byte Reload
	jmp	.LBB14_46
.LBB14_30:                              # %if.then.204
	movq	%r8, 48(%rsp)           # 8-byte Spill
	movq	%r10, %r13
	movq	%r9, 32(%rsp)           # 8-byte Spill
	testl	%ebx, %ebx
	je	.LBB14_34
# BB#31:                                # %do.body.223.preheader
	movl	$32, %eax
	movl	$32, %edx
	subl	%ebx, %edx
	movl	%edx, 64(%rsp)          # 4-byte Spill
	cmpl	$33, %r15d
	cmovll	%r15d, %eax
	notl	%eax
	leal	32(%r15,%rax), %esi
	shrl	$5, %esi
	movq	24(%rsp), %r13          # 8-byte Reload
	leaq	4(%r13,%rsi,4), %rdx
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	incq	%rsi
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	leaq	4(%r14), %rbp
	addl	$32, %r15d
	movq	32(%rsp), %r12          # 8-byte Reload
	.align	16, 0x90
.LBB14_32:                              # %do.body.223
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	movl	(%rbp), %edx
	bswapl	%eax
	movb	%bl, %cl
	shll	%cl, %eax
	bswapl	%edx
	movl	64(%rsp), %ecx          # 4-byte Reload
	shrl	%cl, %edx
	orl	%eax, %edx
	bswapl	%edx
	movl	(%r12), %edi
	movl	(%r13), %esi
	addq	$4, %r13
	callq	*56(%rsp)               # 8-byte Folded Reload
	movl	%eax, (%r12)
	addq	$4, %r12
	addq	$4, %rbp
	addl	$-32, %r15d
	cmpl	$32, %r15d
	jg	.LBB14_32
# BB#33:                                # %do.body.309.loopexit192
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	8(%rsp), %rcx           # 8-byte Reload
	leaq	(%rax,%rcx,4), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	(%r14,%rcx,4), %r14
	movl	20(%rsp), %ebp          # 4-byte Reload
	movl	16(%rsp), %edi          # 4-byte Reload
	movq	48(%rsp), %r8           # 8-byte Reload
	movq	40(%rsp), %r15          # 8-byte Reload
	jmp	.LBB14_46
.LBB14_41:                              # %do.body.251.preheader
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	cmpl	$33, %r15d
	cmovll	%r15d, %eax
	notl	%eax
	leal	32(%r15,%rax), %ecx
	shrl	$5, %ecx
	leaq	4(%r14,%rcx,4), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	incq	%rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	24(%rsp), %rax          # 8-byte Reload
	leaq	4(%rax), %rbx
	addl	$32, %r15d
	movq	%r9, %rbp
	movq	%r9, 32(%rsp)           # 8-byte Spill
	.align	16, 0x90
.LBB14_42:                              # %do.body.251
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbx), %eax
	movl	(%rbx), %esi
	bswapl	%eax
	movb	%r8b, %cl
	shll	%cl, %eax
	bswapl	%esi
	movb	%dl, %cl
	shrl	%cl, %esi
	orl	%eax, %esi
	bswapl	%esi
	movl	(%rbp), %edi
	movl	%edx, %r12d
	movl	(%r14), %edx
	addq	$4, %r14
	movq	%r8, %r13
	callq	*56(%rsp)               # 8-byte Folded Reload
	movl	%r12d, %edx
	movq	%r13, %r8
	movl	%eax, (%rbp)
	addq	$4, %rbp
	addq	$4, %rbx
	addl	$-32, %r15d
	cmpl	$32, %r15d
	jg	.LBB14_42
# BB#43:                                # %do.body.309.loopexit193
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	40(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx,4), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	24(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rcx,4), %r15
	movl	20(%rsp), %ebp          # 4-byte Reload
	movq	64(%rsp), %rbx          # 8-byte Reload
.LBB14_44:                              # %do.body.309
	movl	16(%rsp), %edi          # 4-byte Reload
	jmp	.LBB14_45
.LBB14_34:                              # %do.body.208.preheader
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	cmpl	$33, %r15d
	movl	$32, %eax
	cmovll	%r15d, %eax
	notl	%eax
	leal	32(%r15,%rax), %r12d
	shrl	$5, %r12d
	leaq	4(%r14,%r12,4), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	incq	%r12
	addl	$32, %r15d
	movq	32(%rsp), %rbp          # 8-byte Reload
	movq	24(%rsp), %rbx          # 8-byte Reload
	.align	16, 0x90
.LBB14_35:                              # %do.body.208
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbp), %edi
	movl	(%rbx), %esi
	addq	$4, %rbx
	movl	(%r14), %edx
	addq	$4, %r14
	callq	*%r13
	movl	%eax, (%rbp)
	addq	$4, %rbp
	addl	$-32, %r15d
	cmpl	$32, %r15d
	jg	.LBB14_35
# BB#36:                                # %do.body.309.loopexit
	movq	32(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%r12,4), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	24(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%r12,4), %r15
	movl	20(%rsp), %ebp          # 4-byte Reload
	movq	64(%rsp), %rbx          # 8-byte Reload
	movl	16(%rsp), %edi          # 4-byte Reload
	movq	48(%rsp), %r8           # 8-byte Reload
.LBB14_45:                              # %do.body.309
	movq	8(%rsp), %r14           # 8-byte Reload
.LBB14_46:                              # %do.body.309
	movl	(%r15), %esi
	bswapl	%esi
	movb	%r8b, %cl
	shll	%cl, %esi
	xorl	%edx, %edx
	testb	$4, %dil
	movl	$0, %eax
	jne	.LBB14_48
# BB#47:                                # %cond.false.315
	movl	4(%r15), %eax
	bswapl	%eax
	movl	$32, %ecx
	subl	%r8d, %ecx
	shrl	%cl, %eax
.LBB14_48:                              # %cond.end.319
	orl	%esi, %eax
	bswapl	%eax
	movl	(%r14), %esi
	bswapl	%esi
	movb	%bl, %cl
	shll	%cl, %esi
	testb	$8, %dil
	jne	.LBB14_50
# BB#49:                                # %cond.false.331
	movl	4(%r14), %edx
	bswapl	%edx
	movl	$32, %ecx
	subl	%ebx, %ecx
	shrl	%cl, %edx
.LBB14_50:                              # %cond.end.335
	orl	%esi, %edx
	bswapl	%edx
	movq	32(%rsp), %rbx          # 8-byte Reload
	movl	(%rbx), %edi
	movl	%eax, %esi
	callq	*56(%rsp)               # 8-byte Folded Reload
	movl	(%rbx), %ecx
	andl	%ebp, %ecx
	notl	%ebp
	andl	%eax, %ebp
	orl	%ecx, %ebp
	movl	%ebp, (%rbx)
.LBB14_51:                              # %cleanup
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	generic_rop_run1, .Lfunc_end14-generic_rop_run1
	.cfi_endproc

	.align	16, 0x90
	.type	generic_rop_run8_trans_ST,@function
generic_rop_run8_trans_ST:              # @generic_rop_run8_trans_ST
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp106:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp107:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp108:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp109:
	.cfi_def_cfa_offset 48
.Ltmp110:
	.cfi_offset %rbx, -48
.Ltmp111:
	.cfi_offset %r12, -40
.Ltmp112:
	.cfi_offset %r14, -32
.Ltmp113:
	.cfi_offset %r15, -24
.Ltmp114:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %r12
	movzbl	48(%rdi), %eax
	movq	rop_proc_table(,%rax,8), %r14
	movq	16(%rdi), %rbp
	movq	32(%rdi), %rbx
	.align	16, 0x90
.LBB15_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbp), %esi
	cmpq	$255, %rsi
	movzbl	(%rbx), %edx
	je	.LBB15_4
# BB#2:                                 # %do.body
                                        #   in Loop: Header=BB15_1 Depth=1
	cmpl	$255, %edx
	je	.LBB15_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB15_1 Depth=1
	movzbl	(%r12), %edi
	callq	*%r14
	movb	%al, (%r12)
.LBB15_4:                               # %if.end
                                        #   in Loop: Header=BB15_1 Depth=1
	incq	%rbp
	incq	%rbx
	incq	%r12
	decl	%r15d
	jne	.LBB15_1
# BB#5:                                 # %do.end.18
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	generic_rop_run8_trans_ST, .Lfunc_end15-generic_rop_run8_trans_ST
	.cfi_endproc

	.align	16, 0x90
	.type	generic_rop_run8_trans_S,@function
generic_rop_run8_trans_S:               # @generic_rop_run8_trans_S
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp116:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp117:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp118:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp119:
	.cfi_def_cfa_offset 48
.Ltmp120:
	.cfi_offset %rbx, -48
.Ltmp121:
	.cfi_offset %r12, -40
.Ltmp122:
	.cfi_offset %r14, -32
.Ltmp123:
	.cfi_offset %r15, -24
.Ltmp124:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %rbx
	movzbl	48(%rdi), %eax
	movq	rop_proc_table(,%rax,8), %r14
	movq	16(%rdi), %rbp
	movq	32(%rdi), %r12
	.align	16, 0x90
.LBB16_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbp), %esi
	cmpq	$255, %rsi
	je	.LBB16_3
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB16_1 Depth=1
	movzbl	(%r12), %edx
	movzbl	(%rbx), %edi
	callq	*%r14
	movb	%al, (%rbx)
.LBB16_3:                               # %if.end
                                        #   in Loop: Header=BB16_1 Depth=1
	incq	%rbp
	incq	%r12
	incq	%rbx
	decl	%r15d
	jne	.LBB16_1
# BB#4:                                 # %do.end.16
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	generic_rop_run8_trans_S, .Lfunc_end16-generic_rop_run8_trans_S
	.cfi_endproc

	.align	16, 0x90
	.type	generic_rop_run8_trans_T,@function
generic_rop_run8_trans_T:               # @generic_rop_run8_trans_T
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp125:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp126:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp127:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp128:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp129:
	.cfi_def_cfa_offset 48
.Ltmp130:
	.cfi_offset %rbx, -48
.Ltmp131:
	.cfi_offset %r12, -40
.Ltmp132:
	.cfi_offset %r14, -32
.Ltmp133:
	.cfi_offset %r15, -24
.Ltmp134:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %rbx
	movzbl	48(%rdi), %eax
	movq	rop_proc_table(,%rax,8), %r14
	movq	16(%rdi), %r12
	movq	32(%rdi), %rbp
	.align	16, 0x90
.LBB17_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbp), %edx
	cmpq	$255, %rdx
	je	.LBB17_3
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB17_1 Depth=1
	movzbl	(%r12), %esi
	movzbl	(%rbx), %edi
	callq	*%r14
	movb	%al, (%rbx)
.LBB17_3:                               # %if.end
                                        #   in Loop: Header=BB17_1 Depth=1
	incq	%r12
	incq	%rbp
	incq	%rbx
	decl	%r15d
	jne	.LBB17_1
# BB#4:                                 # %do.end.16
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	generic_rop_run8_trans_T, .Lfunc_end17-generic_rop_run8_trans_T
	.cfi_endproc

	.align	16, 0x90
	.type	generic_rop_run8,@function
generic_rop_run8:                       # @generic_rop_run8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp136:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp137:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp138:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp139:
	.cfi_def_cfa_offset 48
.Ltmp140:
	.cfi_offset %rbx, -48
.Ltmp141:
	.cfi_offset %r12, -40
.Ltmp142:
	.cfi_offset %r14, -32
.Ltmp143:
	.cfi_offset %r15, -24
.Ltmp144:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %rbx
	movzbl	48(%rdi), %eax
	movq	rop_proc_table(,%rax,8), %r14
	movq	16(%rdi), %r12
	movq	32(%rdi), %rbp
	.align	16, 0x90
.LBB18_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r12), %esi
	incq	%r12
	movzbl	(%rbp), %edx
	incq	%rbp
	movzbl	(%rbx), %edi
	callq	*%r14
	movb	%al, (%rbx)
	incq	%rbx
	decl	%r15d
	jne	.LBB18_1
# BB#2:                                 # %do.end.15
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	generic_rop_run8, .Lfunc_end18-generic_rop_run8
	.cfi_endproc

	.align	16, 0x90
	.type	generic_rop_run8_1bit,@function
generic_rop_run8_1bit:                  # @generic_rop_run8_1bit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp145:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp146:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp147:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp148:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp149:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp150:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp151:
	.cfi_def_cfa_offset 96
.Ltmp152:
	.cfi_offset %rbx, -56
.Ltmp153:
	.cfi_offset %r12, -48
.Ltmp154:
	.cfi_offset %r13, -40
.Ltmp155:
	.cfi_offset %r14, -32
.Ltmp156:
	.cfi_offset %r15, -24
.Ltmp157:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %r15
	movl	48(%rdi), %eax
	movzbl	%al, %ecx
	movq	rop_proc_table(,%rcx,8), %rcx
	movq	%rcx, (%rsp)            # 8-byte Spill
	movl	%eax, %ecx
	andl	$256, %ecx              # imm = 0x100
	decl	%ecx
	movslq	%ecx, %r14
	movq	56(%rdi), %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	shrl	%eax
	andl	$256, %eax              # imm = 0x100
	decl	%eax
	cltq
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	64(%rdi), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	24(%rdi), %eax
	movl	40(%rdi), %ecx
	movl	%eax, %edx
	sarl	$3, %edx
	movslq	%edx, %r12
	addq	16(%rdi), %r12
	andl	$7, %eax
	movl	$8, %r9d
	movl	$8, %ebx
	subl	%eax, %ebx
	movl	%ecx, %eax
	sarl	$3, %eax
	movslq	%eax, %r13
	addq	32(%rdi), %r13
	andl	$7, %ecx
	movl	$8, %edi
	subl	%ecx, %edi
	.align	16, 0x90
.LBB19_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	testl	%ebx, %ebx
	je	.LBB19_2
# BB#3:                                 # %if.else
                                        #   in Loop: Header=BB19_1 Depth=1
	decl	%ebx
	movzbl	(%r12), %edx
	movb	%bl, %cl
	shrl	%cl, %edx
	andl	$1, %edx
	leaq	1(%r12), %rax
	testl	%ebx, %ebx
	cmovneq	%r12, %rax
	movq	16(%rsp), %rcx          # 8-byte Reload
	leaq	(%rdx,%rcx), %r12
	cmovel	%r9d, %ebx
	jmp	.LBB19_4
	.align	16, 0x90
.LBB19_2:                               # %do.body.38
                                        #   in Loop: Header=BB19_1 Depth=1
	leaq	1(%r12), %rax
	xorl	%ebx, %ebx
.LBB19_4:                               # %if.end.50
                                        #   in Loop: Header=BB19_1 Depth=1
	movzbl	(%r12), %esi
	movq	%rax, %r12
	testl	%edi, %edi
	je	.LBB19_5
# BB#6:                                 # %if.else.59
                                        #   in Loop: Header=BB19_1 Depth=1
	decl	%edi
	movzbl	(%r13), %edx
	movb	%dil, %cl
	shrl	%cl, %edx
	andl	$1, %edx
	leaq	1(%r13), %rax
	testl	%edi, %edi
	cmovneq	%r13, %rax
	movq	8(%rsp), %rcx           # 8-byte Reload
	leaq	(%rdx,%rcx), %r13
	cmovel	%r9d, %edi
	jmp	.LBB19_7
	.align	16, 0x90
.LBB19_5:                               # %do.body.54
                                        #   in Loop: Header=BB19_1 Depth=1
	leaq	1(%r13), %rax
	xorl	%edi, %edi
.LBB19_7:                               # %if.end.72
                                        #   in Loop: Header=BB19_1 Depth=1
	movzbl	(%r13), %edx
	movq	%rax, %r13
	cmpq	%r14, %rsi
	je	.LBB19_10
# BB#8:                                 # %if.end.72
                                        #   in Loop: Header=BB19_1 Depth=1
	cmpq	24(%rsp), %rdx          # 8-byte Folded Reload
	je	.LBB19_10
# BB#9:                                 # %if.then.77
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	%edi, 36(%rsp)          # 4-byte Spill
	movzbl	(%r15), %edi
	callq	*(%rsp)                 # 8-byte Folded Reload
	movl	36(%rsp), %edi          # 4-byte Reload
	movl	$8, %r9d
	movb	%al, (%r15)
.LBB19_10:                              # %if.end.80
                                        #   in Loop: Header=BB19_1 Depth=1
	incq	%r15
	decl	%ebp
	jne	.LBB19_1
# BB#11:                                # %do.end.85
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	generic_rop_run8_1bit, .Lfunc_end19-generic_rop_run8_1bit
	.cfi_endproc

	.align	16, 0x90
	.type	generic_rop_run24_trans,@function
generic_rop_run24_trans:                # @generic_rop_run24_trans
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp158:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp159:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp160:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp161:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp162:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp163:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp164:
	.cfi_def_cfa_offset 64
.Ltmp165:
	.cfi_offset %rbx, -56
.Ltmp166:
	.cfi_offset %r12, -48
.Ltmp167:
	.cfi_offset %r13, -40
.Ltmp168:
	.cfi_offset %r14, -32
.Ltmp169:
	.cfi_offset %r15, -24
.Ltmp170:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movl	48(%rdi), %eax
	movzbl	%al, %ecx
	movq	rop_proc_table(,%rcx,8), %rcx
	movq	%rcx, (%rsp)            # 8-byte Spill
	movq	16(%rdi), %rbx
	movq	32(%rdi), %rbp
	movq	%rsi, %rdi
	movl	%eax, %ecx
	shll	$16, %ecx
	andl	$16777216, %ecx         # imm = 0x1000000
	decl	%ecx
	movslq	%ecx, %r12
	shll	$15, %eax
	andl	$16777216, %eax         # imm = 0x1000000
	decl	%eax
	movslq	%eax, %r13
	addq	$2, %rdi
	.align	16, 0x90
.LBB20_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %eax
	shlq	$16, %rax
	movzbl	1(%rbx), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	2(%rbx), %esi
	orq	%rcx, %rsi
	movzbl	(%rbp), %eax
	movzbl	1(%rbp), %edx
	movzbl	2(%rbp), %ecx
	cmpq	%r12, %rsi
	je	.LBB20_4
# BB#2:                                 # %do.body
                                        #   in Loop: Header=BB20_1 Depth=1
	shlq	$16, %rax
	shlq	$8, %rdx
	orq	%rax, %rdx
	orq	%rcx, %rdx
	cmpq	%r13, %rdx
	je	.LBB20_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB20_1 Depth=1
	movzbl	-2(%rdi), %eax
	shlq	$16, %rax
	movzbl	-1(%rdi), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movq	%rdi, %r14
	movzbl	(%r14), %edi
	orq	%rcx, %rdi
	callq	*(%rsp)                 # 8-byte Folded Reload
	movq	%r14, %rdi
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, -2(%rdi)
	movb	%ah, -1(%rdi)  # NOREX
	movb	%al, (%rdi)
.LBB20_4:                               # %if.end
                                        #   in Loop: Header=BB20_1 Depth=1
	addq	$3, %rdi
	addq	$3, %rbx
	addq	$3, %rbp
	decl	%r15d
	jne	.LBB20_1
# BB#5:                                 # %do.end.59
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	generic_rop_run24_trans, .Lfunc_end20-generic_rop_run24_trans
	.cfi_endproc

	.align	16, 0x90
	.type	generic_rop_run24,@function
generic_rop_run24:                      # @generic_rop_run24
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp171:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp172:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp173:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp174:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp175:
	.cfi_def_cfa_offset 48
.Ltmp176:
	.cfi_offset %rbx, -48
.Ltmp177:
	.cfi_offset %r12, -40
.Ltmp178:
	.cfi_offset %r14, -32
.Ltmp179:
	.cfi_offset %r15, -24
.Ltmp180:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %rbp
	movzbl	48(%rdi), %eax
	movq	rop_proc_table(,%rax,8), %r14
	movq	16(%rdi), %r12
	movq	32(%rdi), %rbx
	.align	16, 0x90
.LBB21_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r12), %eax
	shlq	$16, %rax
	movzbl	1(%r12), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	2(%r12), %esi
	orq	%rcx, %rsi
	movzbl	(%rbx), %eax
	shlq	$16, %rax
	movzbl	1(%rbx), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	2(%rbx), %edx
	orq	%rcx, %rdx
	movzbl	(%rbp), %eax
	shlq	$16, %rax
	movzbl	1(%rbp), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	2(%rbp), %edi
	orq	%rcx, %rdi
	callq	*%r14
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, (%rbp)
	movb	%ah, 1(%rbp)  # NOREX
	movb	%al, 2(%rbp)
	addq	$3, %r12
	addq	$3, %rbx
	addq	$3, %rbp
	decl	%r15d
	jne	.LBB21_1
# BB#2:                                 # %do.end.47
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	generic_rop_run24, .Lfunc_end21-generic_rop_run24
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI22_0:
	.quad	255                     # 0xff
	.quad	255                     # 0xff
	.text
	.align	16, 0x90
	.type	generic_rop_run24_1bit,@function
generic_rop_run24_1bit:                 # @generic_rop_run24_1bit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp181:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp182:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp183:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp184:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp185:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp186:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp187:
	.cfi_def_cfa_offset 128
.Ltmp188:
	.cfi_offset %rbx, -56
.Ltmp189:
	.cfi_offset %r12, -48
.Ltmp190:
	.cfi_offset %r13, -40
.Ltmp191:
	.cfi_offset %r14, -32
.Ltmp192:
	.cfi_offset %r15, -24
.Ltmp193:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %rbp
	movl	48(%rdi), %eax
	movzbl	%al, %ecx
	movq	rop_proc_table(,%rcx,8), %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movl	%eax, %ecx
	shll	$16, %ecx
	andl	$16777216, %ecx         # imm = 0x1000000
	decl	%ecx
	movslq	%ecx, %r12
	shll	$15, %eax
	andl	$16777216, %eax         # imm = 0x1000000
	decl	%eax
	cltq
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	24(%rdi), %eax
	movl	%eax, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %r13
	addq	16(%rdi), %r13
	andl	$7, %eax
	movl	$8, %r10d
	movl	$8, %ebx
	subl	%eax, %ebx
	movq	56(%rdi), %rax
	movzbl	(%rax), %ecx
	pinsrw	$0, %ecx, %xmm1
	movzbl	3(%rax), %ecx
	pinsrw	$4, %ecx, %xmm1
	movdqa	.LCPI22_0(%rip), %xmm0  # xmm0 = [255,255]
	pand	%xmm0, %xmm1
	psllq	$16, %xmm1
	movzbl	1(%rax), %ecx
	pinsrw	$0, %ecx, %xmm2
	movzbl	4(%rax), %ecx
	pinsrw	$4, %ecx, %xmm2
	pand	%xmm0, %xmm2
	psllq	$8, %xmm2
	por	%xmm1, %xmm2
	movzbl	2(%rax), %ecx
	pinsrw	$0, %ecx, %xmm1
	movzbl	5(%rax), %eax
	pinsrw	$4, %eax, %xmm1
	pand	%xmm0, %xmm1
	por	%xmm2, %xmm1
	movdqa	%xmm1, 48(%rsp)
	movl	40(%rdi), %eax
	movl	%eax, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %r11
	addq	32(%rdi), %r11
	andl	$7, %eax
	movl	$8, %r15d
	subl	%eax, %r15d
	movq	64(%rdi), %rax
	movzbl	(%rax), %ecx
	pinsrw	$0, %ecx, %xmm1
	movzbl	3(%rax), %ecx
	pinsrw	$4, %ecx, %xmm1
	pand	%xmm0, %xmm1
	psllq	$16, %xmm1
	movzbl	1(%rax), %ecx
	pinsrw	$0, %ecx, %xmm2
	movzbl	4(%rax), %ecx
	pinsrw	$4, %ecx, %xmm2
	pand	%xmm0, %xmm2
	psllq	$8, %xmm2
	por	%xmm1, %xmm2
	movzbl	2(%rax), %ecx
	pinsrw	$0, %ecx, %xmm1
	movzbl	5(%rax), %eax
	pinsrw	$4, %eax, %xmm1
	pand	%xmm0, %xmm1
	por	%xmm2, %xmm1
	movdqa	%xmm1, 32(%rsp)
	addq	$2, %rbp
	.align	16, 0x90
.LBB22_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	testl	%ebx, %ebx
	je	.LBB22_2
# BB#3:                                 # %if.else
                                        #   in Loop: Header=BB22_1 Depth=1
	decl	%ebx
	movzbl	(%r13), %eax
	movb	%bl, %cl
	shrl	%cl, %eax
	andl	$1, %eax
	shlq	$3, %rax
	leaq	48(%rsp), %rcx
	leaq	(%rax,%rcx), %rax
	movq	(%rax), %rsi
	leaq	1(%r13), %rax
	testl	%ebx, %ebx
	cmoveq	%rax, %r13
	cmovel	%r10d, %ebx
	jmp	.LBB22_4
	.align	16, 0x90
.LBB22_2:                               # %do.body.100
                                        #   in Loop: Header=BB22_1 Depth=1
	movzbl	(%r13), %eax
	shlq	$16, %rax
	movzbl	1(%r13), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	2(%r13), %esi
	orq	%rcx, %rsi
	addq	$3, %r13
	xorl	%ebx, %ebx
.LBB22_4:                               # %if.end.120
                                        #   in Loop: Header=BB22_1 Depth=1
	testl	%r15d, %r15d
	je	.LBB22_5
# BB#6:                                 # %if.else.138
                                        #   in Loop: Header=BB22_1 Depth=1
	decl	%r15d
	movzbl	(%r11), %eax
	movb	%r15b, %cl
	shrl	%cl, %eax
	andl	$1, %eax
	shlq	$3, %rax
	leaq	32(%rsp), %rcx
	leaq	(%rax,%rcx), %rax
	movq	(%rax), %rdx
	leaq	1(%r11), %rax
	testl	%r15d, %r15d
	cmoveq	%rax, %r11
	cmovel	%r10d, %r15d
	jmp	.LBB22_7
	.align	16, 0x90
.LBB22_5:                               # %do.body.124
                                        #   in Loop: Header=BB22_1 Depth=1
	movzbl	(%r11), %eax
	shlq	$16, %rax
	movzbl	1(%r11), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	2(%r11), %edx
	orq	%rcx, %rdx
	addq	$3, %r11
	xorl	%r15d, %r15d
.LBB22_7:                               # %if.end.150
                                        #   in Loop: Header=BB22_1 Depth=1
	cmpq	%r12, %rsi
	je	.LBB22_10
# BB#8:                                 # %if.end.150
                                        #   in Loop: Header=BB22_1 Depth=1
	cmpq	16(%rsp), %rdx          # 8-byte Folded Reload
	je	.LBB22_10
# BB#9:                                 # %if.then.155
                                        #   in Loop: Header=BB22_1 Depth=1
	movzbl	-2(%rbp), %eax
	shlq	$16, %rax
	movzbl	-1(%rbp), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	(%rbp), %edi
	orq	%rcx, %rdi
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	movl	%r15d, %ebp
	movl	%r14d, %r15d
	movq	%r11, %r14
	callq	*8(%rsp)                # 8-byte Folded Reload
	movq	%r14, %r11
	movl	%r15d, %r14d
	movl	%ebp, %r15d
	movq	24(%rsp), %rbp          # 8-byte Reload
	movl	$8, %r10d
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, -2(%rbp)
	movb	%ah, -1(%rbp)  # NOREX
	movb	%al, (%rbp)
.LBB22_10:                              # %if.end.175
                                        #   in Loop: Header=BB22_1 Depth=1
	addq	$3, %rbp
	decl	%r14d
	jne	.LBB22_1
# BB#11:                                # %do.end.180
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	generic_rop_run24_1bit, .Lfunc_end22-generic_rop_run24_1bit
	.cfi_endproc

	.align	16, 0x90
	.type	generic_rop_run1_const_s,@function
generic_rop_run1_const_s:               # @generic_rop_run1_const_s
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp194:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp195:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp196:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp197:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp198:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp199:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp200:
	.cfi_def_cfa_offset 112
.Ltmp201:
	.cfi_offset %rbx, -56
.Ltmp202:
	.cfi_offset %r12, -48
.Ltmp203:
	.cfi_offset %r13, -40
.Ltmp204:
	.cfi_offset %r14, -32
.Ltmp205:
	.cfi_offset %r15, -24
.Ltmp206:
	.cfi_offset %rbp, -16
	movl	%edx, %r12d
	movq	%rsi, %rbx
	movzbl	54(%rdi), %eax
	movl	%ebx, %r9d
	andl	$3, %r9d
	leal	(%rax,%r9,8), %r11d
	movzbl	52(%rdi), %esi
	imull	%esi, %r12d
	addl	%r11d, %r12d
	movl	%r12d, %ecx
	andl	$31, %ecx
	movl	$-1, %edx
	movl	$-1, %r13d
	shrl	%cl, %r13d
	xorl	%r10d, %r10d
	movl	%r12d, %eax
	andl	$31, %eax
	movslq	48(%rdi), %r8
	movl	16(%rdi), %eax
	movq	32(%rdi), %r15
	bswapl	%r13d
	cmovel	%r10d, %r13d
	movl	%r11d, %ecx
	andl	$31, %ecx
	shrl	%cl, %edx
	movl	%edx, 48(%rsp)          # 4-byte Spill
	movl	%esi, %ebp
	shll	$31, %ebp
	sarl	$31, %ebp
	leal	(%rax,%rax), %edx
	andl	%ebp, %edx
	orl	%eax, %edx
	leal	(,%rdx,4), %eax
	testb	$3, %sil
	cmovel	%r10d, %eax
	orl	%edx, %eax
	movl	%eax, %edx
	shll	$4, %edx
	testb	$7, %sil
	cmovel	%r10d, %edx
	orl	%eax, %edx
	movl	%edx, %eax
	shll	$8, %eax
	testb	$15, %sil
	cmovel	%r10d, %eax
	orl	%edx, %eax
	movl	%eax, %edx
	shll	$16, %edx
	testb	$31, %sil
	cmovel	%r10d, %edx
	movl	%edx, %r10d
	movl	40(%rdi), %edx
	movl	%r15d, %edi
	andl	$3, %edi
	subq	%rdi, %r15
	shll	$3, %edi
	subl	%r11d, %edi
	leal	(%rdi,%rdx), %esi
	leaq	-4(%r15), %r11
	movl	%esi, %ebp
	shrl	$30, %ebp
	andl	$2, %ebp
	testl	%esi, %esi
	leal	32(%rdi,%rdx), %r14d
	cmovnsl	%esi, %r14d
	cmovnsq	%r15, %r11
	testl	%r14d, %r14d
	je	.LBB23_2
# BB#1:                                 # %lor.lhs.false
	leal	63(%r12), %edx
	andl	$-32, %edx
	leal	31(%r12,%r14), %esi
	andl	$-32, %esi
	cmpl	%edx, %esi
	movl	%ebp, %esi
	jge	.LBB23_3
.LBB23_2:                               # %if.then.80
	movl	%ebp, %esi
	orl	$8, %esi
.LBB23_3:                               # %if.end.82
	movq	rop_proc_table(,%r8,8), %r8
	subq	%r9, %rbx
	movl	48(%rsp), %edi          # 4-byte Reload
	bswapl	%edi
	orl	%eax, %r10d
	movl	%r12d, %r15d
	addl	$-32, %r15d
	jle	.LBB23_4
# BB#9:                                 # %if.end.114
	orl	%ebp, %ecx
	je	.LBB23_17
# BB#10:                                # %do.body.121
	movl	%edi, %r15d
	xorl	%edx, %edx
	testl	%ebp, %ebp
	movl	$0, %eax
	jne	.LBB23_12
# BB#11:                                # %cond.false.125
	movl	(%r11), %eax
	bswapl	%eax
	movb	%r14b, %cl
	shll	%cl, %eax
.LBB23_12:                              # %cond.end.128
	movl	%esi, 44(%rsp)          # 4-byte Spill
	addq	$4, %r11
	testl	%r14d, %r14d
	je	.LBB23_14
# BB#13:                                # %cond.false.133
	movl	(%r11), %edx
	bswapl	%edx
	movl	$32, %ecx
	subl	%r14d, %ecx
	shrl	%cl, %edx
.LBB23_14:                              # %if.end.154
	movq	%r11, 32(%rsp)          # 8-byte Spill
	movq	%r14, 24(%rsp)          # 8-byte Spill
	orl	%eax, %edx
	bswapl	%edx
	movl	(%rbx), %edi
	movl	%r10d, %esi
	movl	%r10d, %r14d
	movq	%r8, %rbp
	callq	*%rbp
	movq	%rbp, %rcx
	movl	48(%rsp), %edx          # 4-byte Reload
	notl	%edx
	bswapl	%edx
	andl	(%rbx), %edx
	andl	%r15d, %eax
	orl	%edx, %eax
	movl	%eax, (%rbx)
	addq	$4, %rbx
	cmpl	$65, %r12d
	jl	.LBB23_15
# BB#16:
	addl	$-64, %r12d
	movl	%r12d, %r15d
	movl	%r14d, %r10d
	movq	%rcx, %r8
	movq	24(%rsp), %r14          # 8-byte Reload
	movq	32(%rsp), %r11          # 8-byte Reload
	movl	44(%rsp), %esi          # 4-byte Reload
.LBB23_17:                              # %if.then.157
	movl	%esi, 44(%rsp)          # 4-byte Spill
	movl	%r13d, 24(%rsp)         # 4-byte Spill
	testl	%r14d, %r14d
	je	.LBB23_21
# BB#18:                                # %do.body.175.preheader
	movl	$32, %eax
	movl	$32, %ebp
	subl	%r14d, %ebp
	movl	%r10d, %ecx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	movl	%r10d, 20(%rsp)         # 4-byte Spill
	cmpl	$33, %r15d
	cmovll	%r15d, %eax
	notl	%eax
	leal	32(%r15,%rax), %ecx
	shrl	$5, %ecx
	leaq	4(%rbx,%rcx,4), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	incq	%rcx
	movq	%rcx, (%rsp)            # 8-byte Spill
	leaq	4(%r11), %r13
	movq	%r11, 32(%rsp)          # 8-byte Spill
	addl	$32, %r15d
	.align	16, 0x90
.LBB23_19:                              # %do.body.175
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%r13), %eax
	movl	(%r13), %edx
	bswapl	%eax
	movb	%r14b, %cl
	shll	%cl, %eax
	bswapl	%edx
	movb	%bpl, %cl
	shrl	%cl, %edx
	orl	%eax, %edx
	bswapl	%edx
	movl	(%rbx), %edi
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	%r14, %r12
	movq	%r8, %r14
	callq	*%r14
	movq	%r14, %r8
	movq	%r12, %r14
	movl	%eax, (%rbx)
	addq	$4, %rbx
	addq	$4, %r13
	addl	$-32, %r15d
	cmpl	$32, %r15d
	jg	.LBB23_19
# BB#20:                                # %do.body.198.loopexit133
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	(%rsp), %rax            # 8-byte Reload
	jmp	.LBB23_24
.LBB23_4:                               # %if.then.86
	movl	%r13d, %eax
	notl	%eax
	xorl	%edx, %edx
	testl	%ebp, %ebp
	movl	$0, %ebp
	jne	.LBB23_6
# BB#5:                                 # %cond.false
	movl	(%r11), %ebp
	bswapl	%ebp
	movb	%r14b, %cl
	shll	%cl, %ebp
.LBB23_6:                               # %cond.end
	andl	%eax, %edi
	movl	%edi, %r15d
	testb	$8, %sil
	jne	.LBB23_8
# BB#7:                                 # %cond.false.96
	movl	4(%r11), %edx
	bswapl	%edx
	movl	$32, %ecx
	subl	%r14d, %ecx
	shrl	%cl, %edx
.LBB23_8:                               # %cond.end.100
	orl	%ebp, %edx
	bswapl	%edx
	movl	(%rbx), %edi
	movl	%r10d, %esi
	callq	*%r8
	movl	48(%rsp), %ecx          # 4-byte Reload
	notl	%ecx
	bswapl	%ecx
	orl	%r13d, %ecx
	andl	(%rbx), %ecx
	andl	%eax, %r15d
	orl	%ecx, %r15d
	movl	%r15d, (%rbx)
	jmp	.LBB23_28
.LBB23_15:
	movl	%r14d, %esi
	movq	%rcx, %r8
	movq	24(%rsp), %r14          # 8-byte Reload
	movq	32(%rsp), %rdi          # 8-byte Reload
	jmp	.LBB23_25
.LBB23_21:                              # %do.body.161.preheader
	movl	%r10d, %r13d
	movl	%r10d, 20(%rsp)         # 4-byte Spill
	cmpl	$33, %r15d
	movl	$32, %eax
	cmovll	%r15d, %eax
	notl	%eax
	leal	32(%r15,%rax), %ecx
	shrl	$5, %ecx
	leaq	4(%rbx,%rcx,4), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	incq	%rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	addl	$32, %r15d
	movq	%r11, %rbp
	movq	%r11, 32(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB23_22:                              # %do.body.161
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %edi
	movl	(%rbp), %edx
	addq	$4, %rbp
	movq	%r13, %rsi
	movq	%r8, %r12
	callq	*%r12
	movq	%r12, %r8
	movl	%eax, (%rbx)
	addq	$4, %rbx
	addl	$-32, %r15d
	cmpl	$32, %r15d
	jg	.LBB23_22
# BB#23:                                # %do.body.198.loopexit
	movq	32(%rsp), %rdi          # 8-byte Reload
	movq	48(%rsp), %rax          # 8-byte Reload
.LBB23_24:                              # %do.body.198
	leaq	(%rdi,%rax,4), %rdi
	movl	24(%rsp), %r13d         # 4-byte Reload
	movl	20(%rsp), %esi          # 4-byte Reload
	movq	8(%rsp), %rbx           # 8-byte Reload
.LBB23_25:                              # %do.body.198
	movl	(%rdi), %eax
	bswapl	%eax
	movb	%r14b, %cl
	shll	%cl, %eax
	xorl	%edx, %edx
	movl	44(%rsp), %ecx          # 4-byte Reload
	testb	$8, %cl
	jne	.LBB23_27
# BB#26:                                # %cond.false.204
	movl	4(%rdi), %edx
	bswapl	%edx
	movl	$32, %ecx
	subl	%r14d, %ecx
	shrl	%cl, %edx
.LBB23_27:                              # %cond.end.208
	orl	%eax, %edx
	bswapl	%edx
	movl	(%rbx), %edi
	movl	%esi, %esi
	callq	*%r8
	movl	(%rbx), %ecx
	andl	%r13d, %ecx
	notl	%r13d
	andl	%eax, %r13d
	orl	%ecx, %r13d
	movl	%r13d, (%rbx)
.LBB23_28:                              # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	generic_rop_run1_const_s, .Lfunc_end23-generic_rop_run1_const_s
	.cfi_endproc

	.align	16, 0x90
	.type	generic_rop_run8_const_s_trans,@function
generic_rop_run8_const_s_trans:         # @generic_rop_run8_const_s_trans
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp207:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp208:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp209:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp210:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp211:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp212:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp213:
	.cfi_def_cfa_offset 64
.Ltmp214:
	.cfi_offset %rbx, -56
.Ltmp215:
	.cfi_offset %r12, -48
.Ltmp216:
	.cfi_offset %r13, -40
.Ltmp217:
	.cfi_offset %r14, -32
.Ltmp218:
	.cfi_offset %r15, -24
.Ltmp219:
	.cfi_offset %rbp, -16
	movl	%edx, %r13d
	movq	%rsi, %rbx
	movl	48(%rdi), %eax
	movzbl	%al, %ecx
	movzbl	16(%rdi), %r14d
	movl	%eax, %edx
	andl	$256, %edx              # imm = 0x100
	decl	%edx
	movslq	%edx, %rdx
	cmpq	%rdx, %r14
	je	.LBB24_5
# BB#1:                                 # %do.body.preheader
	movq	rop_proc_table(,%rcx,8), %r15
	shrl	%eax
	andl	$256, %eax              # imm = 0x100
	decl	%eax
	movslq	%eax, %r12
	movq	32(%rdi), %rbp
	.align	16, 0x90
.LBB24_2:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbp), %edx
	cmpq	%r12, %rdx
	je	.LBB24_4
# BB#3:                                 # %if.then.16
                                        #   in Loop: Header=BB24_2 Depth=1
	movzbl	(%rbx), %edi
	movq	%r14, %rsi
	callq	*%r15
	movb	%al, (%rbx)
.LBB24_4:                               # %if.end.20
                                        #   in Loop: Header=BB24_2 Depth=1
	incq	%rbp
	incq	%rbx
	decl	%r13d
	jne	.LBB24_2
.LBB24_5:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	generic_rop_run8_const_s_trans, .Lfunc_end24-generic_rop_run8_const_s_trans
	.cfi_endproc

	.align	16, 0x90
	.type	generic_rop_run8_const_s,@function
generic_rop_run8_const_s:               # @generic_rop_run8_const_s
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp220:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp221:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp222:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp223:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp224:
	.cfi_def_cfa_offset 48
.Ltmp225:
	.cfi_offset %rbx, -48
.Ltmp226:
	.cfi_offset %r12, -40
.Ltmp227:
	.cfi_offset %r14, -32
.Ltmp228:
	.cfi_offset %r15, -24
.Ltmp229:
	.cfi_offset %rbp, -16
	movl	%edx, %r12d
	movq	%rsi, %rbx
	movzbl	48(%rdi), %eax
	movq	rop_proc_table(,%rax,8), %r15
	movzbl	16(%rdi), %r14d
	movq	32(%rdi), %rbp
	.align	16, 0x90
.LBB25_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbp), %edx
	incq	%rbp
	movzbl	(%rbx), %edi
	movq	%r14, %rsi
	callq	*%r15
	movb	%al, (%rbx)
	incq	%rbx
	decl	%r12d
	jne	.LBB25_1
# BB#2:                                 # %do.end.9
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	generic_rop_run8_const_s, .Lfunc_end25-generic_rop_run8_const_s
	.cfi_endproc

	.align	16, 0x90
	.type	generic_rop_run8_const_s_1bit,@function
generic_rop_run8_const_s_1bit:          # @generic_rop_run8_const_s_1bit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp230:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp231:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp232:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp233:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp234:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp235:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp236:
	.cfi_def_cfa_offset 80
.Ltmp237:
	.cfi_offset %rbx, -56
.Ltmp238:
	.cfi_offset %r12, -48
.Ltmp239:
	.cfi_offset %r13, -40
.Ltmp240:
	.cfi_offset %r14, -32
.Ltmp241:
	.cfi_offset %r15, -24
.Ltmp242:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %rbx
	movl	48(%rdi), %eax
	movzbl	%al, %ecx
	movzbl	16(%rdi), %esi
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movl	%eax, %edx
	andl	$256, %edx              # imm = 0x100
	decl	%edx
	movslq	%edx, %rdx
	cmpq	%rdx, %rsi
	je	.LBB26_8
# BB#1:                                 # %if.end
	movq	rop_proc_table(,%rcx,8), %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	shrl	%eax
	andl	$256, %eax              # imm = 0x100
	decl	%eax
	movslq	%eax, %r13
	movq	64(%rdi), %r12
	movl	40(%rdi), %ecx
	movl	%ecx, %eax
	sarl	$3, %eax
	cltq
	addq	32(%rdi), %rax
	andl	$7, %ecx
	movl	$8, %ebp
	subl	%ecx, %ebp
	.align	16, 0x90
.LBB26_2:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	testl	%ebp, %ebp
	je	.LBB26_3
# BB#4:                                 # %if.else
                                        #   in Loop: Header=BB26_2 Depth=1
	decl	%ebp
	movzbl	(%rax), %edx
	movb	%bpl, %cl
	shrl	%cl, %edx
	andl	$1, %edx
	leaq	1(%rax), %r14
	testl	%ebp, %ebp
	cmovneq	%rax, %r14
	leaq	(%rdx,%r12), %rax
	movl	$8, %ecx
	cmovel	%ecx, %ebp
	jmp	.LBB26_5
	.align	16, 0x90
.LBB26_3:                               # %do.body.25
                                        #   in Loop: Header=BB26_2 Depth=1
	leaq	1(%rax), %r14
	xorl	%ebp, %ebp
.LBB26_5:                               # %if.end.38
                                        #   in Loop: Header=BB26_2 Depth=1
	movzbl	(%rax), %edx
	cmpq	%r13, %rdx
	je	.LBB26_7
# BB#6:                                 # %if.then.41
                                        #   in Loop: Header=BB26_2 Depth=1
	movzbl	(%rbx), %edi
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	*8(%rsp)                # 8-byte Folded Reload
	movb	%al, (%rbx)
.LBB26_7:                               # %if.end.45
                                        #   in Loop: Header=BB26_2 Depth=1
	incq	%rbx
	decl	%r15d
	movq	%r14, %rax
	jne	.LBB26_2
.LBB26_8:                               # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end26:
	.size	generic_rop_run8_const_s_1bit, .Lfunc_end26-generic_rop_run8_const_s_1bit
	.cfi_endproc

	.align	16, 0x90
	.type	generic_rop_run24_const_s_trans,@function
generic_rop_run24_const_s_trans:        # @generic_rop_run24_const_s_trans
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp243:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp244:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp245:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp246:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp247:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp248:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp249:
	.cfi_def_cfa_offset 64
.Ltmp250:
	.cfi_offset %rbx, -56
.Ltmp251:
	.cfi_offset %r12, -48
.Ltmp252:
	.cfi_offset %r13, -40
.Ltmp253:
	.cfi_offset %r14, -32
.Ltmp254:
	.cfi_offset %r15, -24
.Ltmp255:
	.cfi_offset %rbp, -16
	movl	%edx, %r13d
	movq	%rsi, %rbp
	movl	48(%rdi), %eax
	movzbl	%al, %ecx
	movq	16(%rdi), %r14
	movl	%eax, %edx
	shll	$16, %edx
	andl	$16777216, %edx         # imm = 0x1000000
	decl	%edx
	movslq	%edx, %rdx
	cmpq	%rdx, %r14
	je	.LBB27_5
# BB#1:                                 # %do.body.preheader
	movq	rop_proc_table(,%rcx,8), %r15
	shll	$15, %eax
	andl	$16777216, %eax         # imm = 0x1000000
	decl	%eax
	movslq	%eax, %r12
	movq	32(%rdi), %rbx
	addq	$2, %rbp
	.align	16, 0x90
.LBB27_2:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %eax
	shlq	$16, %rax
	movzbl	1(%rbx), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	2(%rbx), %edx
	orq	%rcx, %rdx
	cmpq	%r12, %rdx
	je	.LBB27_4
# BB#3:                                 # %if.then.21
                                        #   in Loop: Header=BB27_2 Depth=1
	movzbl	-2(%rbp), %eax
	shlq	$16, %rax
	movzbl	-1(%rbp), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	(%rbp), %edi
	orq	%rcx, %rdi
	movq	%r14, %rsi
	callq	*%r15
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, -2(%rbp)
	movb	%ah, -1(%rbp)  # NOREX
	movb	%al, (%rbp)
.LBB27_4:                               # %if.end.40
                                        #   in Loop: Header=BB27_2 Depth=1
	addq	$3, %rbp
	addq	$3, %rbx
	decl	%r13d
	jne	.LBB27_2
.LBB27_5:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	generic_rop_run24_const_s_trans, .Lfunc_end27-generic_rop_run24_const_s_trans
	.cfi_endproc

	.align	16, 0x90
	.type	generic_rop_run24_const_s,@function
generic_rop_run24_const_s:              # @generic_rop_run24_const_s
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp256:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp257:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp258:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp259:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp260:
	.cfi_def_cfa_offset 48
.Ltmp261:
	.cfi_offset %rbx, -48
.Ltmp262:
	.cfi_offset %r12, -40
.Ltmp263:
	.cfi_offset %r14, -32
.Ltmp264:
	.cfi_offset %r15, -24
.Ltmp265:
	.cfi_offset %rbp, -16
	movl	%edx, %r12d
	movq	%rsi, %rbp
	movzbl	48(%rdi), %eax
	movq	rop_proc_table(,%rax,8), %r15
	movq	16(%rdi), %r14
	movq	32(%rdi), %rbx
	.align	16, 0x90
.LBB28_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %eax
	shlq	$16, %rax
	movzbl	1(%rbx), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	2(%rbx), %edx
	orq	%rcx, %rdx
	movzbl	(%rbp), %eax
	shlq	$16, %rax
	movzbl	1(%rbp), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	2(%rbp), %edi
	orq	%rcx, %rdi
	movq	%r14, %rsi
	callq	*%r15
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, (%rbp)
	movb	%ah, 1(%rbp)  # NOREX
	movb	%al, 2(%rbp)
	addq	$3, %rbx
	addq	$3, %rbp
	decl	%r12d
	jne	.LBB28_1
# BB#2:                                 # %do.end.30
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	generic_rop_run24_const_s, .Lfunc_end28-generic_rop_run24_const_s
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI29_0:
	.quad	255                     # 0xff
	.quad	255                     # 0xff
	.text
	.align	16, 0x90
	.type	generic_rop_run24_const_s_1bit,@function
generic_rop_run24_const_s_1bit:         # @generic_rop_run24_const_s_1bit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp266:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp267:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp268:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp269:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp270:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp271:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp272:
	.cfi_def_cfa_offset 96
.Ltmp273:
	.cfi_offset %rbx, -56
.Ltmp274:
	.cfi_offset %r12, -48
.Ltmp275:
	.cfi_offset %r13, -40
.Ltmp276:
	.cfi_offset %r14, -32
.Ltmp277:
	.cfi_offset %r15, -24
.Ltmp278:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, %rbp
	movl	48(%rdi), %eax
	movzbl	%al, %ecx
	movq	16(%rdi), %r14
	movl	%eax, %edx
	shll	$16, %edx
	andl	$16777216, %edx         # imm = 0x1000000
	decl	%edx
	movslq	%edx, %rdx
	cmpq	%rdx, %r14
	je	.LBB29_8
# BB#1:                                 # %if.end
	movq	rop_proc_table(,%rcx,8), %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	shll	$15, %eax
	andl	$16777216, %eax         # imm = 0x1000000
	decl	%eax
	movslq	%eax, %r13
	movl	40(%rdi), %eax
	movl	%eax, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %r12
	addq	32(%rdi), %r12
	andl	$7, %eax
	movl	$8, %ebx
	subl	%eax, %ebx
	movq	64(%rdi), %rax
	movzbl	(%rax), %ecx
	pinsrw	$0, %ecx, %xmm0
	movzbl	3(%rax), %ecx
	pinsrw	$4, %ecx, %xmm0
	movdqa	.LCPI29_0(%rip), %xmm1  # xmm1 = [255,255]
	pand	%xmm1, %xmm0
	psllq	$16, %xmm0
	movzbl	1(%rax), %ecx
	pinsrw	$0, %ecx, %xmm2
	movzbl	4(%rax), %ecx
	pinsrw	$4, %ecx, %xmm2
	pand	%xmm1, %xmm2
	psllq	$8, %xmm2
	por	%xmm0, %xmm2
	movzbl	2(%rax), %ecx
	pinsrw	$0, %ecx, %xmm0
	movzbl	5(%rax), %eax
	pinsrw	$4, %eax, %xmm0
	pand	%xmm1, %xmm0
	por	%xmm2, %xmm0
	movdqa	%xmm0, 16(%rsp)
	addq	$2, %rbp
	.align	16, 0x90
.LBB29_2:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	testl	%ebx, %ebx
	je	.LBB29_3
# BB#4:                                 # %if.else
                                        #   in Loop: Header=BB29_2 Depth=1
	decl	%ebx
	movzbl	(%r12), %eax
	movb	%bl, %cl
	shrl	%cl, %eax
	andl	$1, %eax
	shlq	$3, %rax
	leaq	16(%rsp), %rcx
	leaq	(%rax,%rcx), %rax
	movq	(%rax), %rdx
	leaq	1(%r12), %rax
	testl	%ebx, %ebx
	cmoveq	%rax, %r12
	movl	$8, %eax
	cmovel	%eax, %ebx
	jmp	.LBB29_5
	.align	16, 0x90
.LBB29_3:                               # %do.body.53
                                        #   in Loop: Header=BB29_2 Depth=1
	movzbl	(%r12), %eax
	shlq	$16, %rax
	movzbl	1(%r12), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	2(%r12), %edx
	orq	%rcx, %rdx
	addq	$3, %r12
	xorl	%ebx, %ebx
.LBB29_5:                               # %if.end.74
                                        #   in Loop: Header=BB29_2 Depth=1
	cmpq	%r13, %rdx
	je	.LBB29_7
# BB#6:                                 # %if.then.77
                                        #   in Loop: Header=BB29_2 Depth=1
	movzbl	-2(%rbp), %eax
	shlq	$16, %rax
	movzbl	-1(%rbp), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	(%rbp), %edi
	orq	%rcx, %rdi
	movq	%r14, %rsi
	callq	*8(%rsp)                # 8-byte Folded Reload
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, -2(%rbp)
	movb	%ah, -1(%rbp)  # NOREX
	movb	%al, (%rbp)
.LBB29_7:                               # %if.end.97
                                        #   in Loop: Header=BB29_2 Depth=1
	addq	$3, %rbp
	decl	%r15d
	jne	.LBB29_2
.LBB29_8:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	generic_rop_run24_const_s_1bit, .Lfunc_end29-generic_rop_run24_const_s_1bit
	.cfi_endproc

	.align	16, 0x90
	.type	generic_rop_run1_const_st,@function
generic_rop_run1_const_st:              # @generic_rop_run1_const_st
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp279:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp280:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp281:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp282:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp283:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp284:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp285:
	.cfi_def_cfa_offset 80
.Ltmp286:
	.cfi_offset %rbx, -56
.Ltmp287:
	.cfi_offset %r12, -48
.Ltmp288:
	.cfi_offset %r13, -40
.Ltmp289:
	.cfi_offset %r14, -32
.Ltmp290:
	.cfi_offset %r15, -24
.Ltmp291:
	.cfi_offset %rbp, -16
	movq	%rsi, %r8
	movzbl	54(%rdi), %eax
	movl	%r8d, %r10d
	andl	$3, %r10d
	leal	(%rax,%r10,8), %eax
	movzbl	52(%rdi), %ebp
	imull	%ebp, %edx
	addl	%eax, %edx
	movl	%edx, %ecx
	andl	$31, %ecx
	movl	$-1, %r9d
	movl	$-1, %r15d
	shrl	%cl, %r15d
	xorl	%ecx, %ecx
	movl	%edx, %esi
	andl	$31, %esi
	movslq	48(%rdi), %rsi
	movq	32(%rdi), %xmm1         # xmm1 = mem[0],zero
	movq	16(%rdi), %xmm0         # xmm0 = mem[0],zero
	punpcklqdq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0]
	bswapl	%r15d
	cmovel	%ecx, %r15d
	andl	$31, %eax
	movb	%al, %cl
	shrl	%cl, %r9d
	testb	$1, %bpl
	pxor	%xmm1, %xmm1
	pxor	%xmm2, %xmm2
	je	.LBB30_2
# BB#1:                                 # %entry
	movdqa	%xmm0, %xmm2
	paddq	%xmm2, %xmm2
.LBB30_2:                               # %entry
	por	%xmm2, %xmm0
	testb	$3, %bpl
	pxor	%xmm2, %xmm2
	je	.LBB30_4
# BB#3:                                 # %entry
	movdqa	%xmm0, %xmm2
	psllq	$2, %xmm2
.LBB30_4:                               # %entry
	por	%xmm2, %xmm0
	testb	$7, %bpl
	je	.LBB30_6
# BB#5:                                 # %entry
	movdqa	%xmm0, %xmm1
	psllq	$4, %xmm1
.LBB30_6:                               # %entry
	por	%xmm1, %xmm0
	testb	$15, %bpl
	movd	%xmm0, %ebx
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %ecx
	je	.LBB30_8
# BB#7:                                 # %if.then.44
	movl	%ebx, %edi
	shll	$8, %edi
	orl	%edi, %ebx
	movl	%ecx, %edi
	shll	$8, %edi
	orl	%edi, %ecx
.LBB30_8:                               # %if.end.49
	testb	$31, %bpl
	je	.LBB30_10
# BB#9:                                 # %if.then.54
	movl	%ebx, %edi
	shll	$16, %edi
	orl	%edi, %ebx
	movl	%ecx, %edi
	shll	$16, %edi
	orl	%edi, %ecx
.LBB30_10:                              # %if.end.59
	movq	rop_proc_table(,%rsi,8), %r14
	subq	%r10, %r8
	movl	%r9d, %ebp
	movl	%ebp, %r13d
	bswapl	%r13d
	movl	%edx, %r12d
	addl	$-32, %r12d
	jle	.LBB30_11
# BB#12:                                # %if.end.72
	movl	%edx, 4(%rsp)           # 4-byte Spill
	movl	%ebp, 8(%rsp)           # 4-byte Spill
	movl	%r15d, 20(%rsp)         # 4-byte Spill
	testl	%eax, %eax
	je	.LBB30_13
# BB#14:                                # %if.end.86
	movl	(%r8), %edi
	movl	%ebx, %r15d
	movl	%ecx, %ebp
	movq	%r15, %rsi
	movq	%rbp, %rdx
	movq	%r8, %rbx
	callq	*%r14
	movq	%rbx, %r8
	movl	8(%rsp), %ecx           # 4-byte Reload
	notl	%ecx
	bswapl	%ecx
	andl	(%r8), %ecx
	andl	%r13d, %eax
	orl	%ecx, %eax
	movl	%eax, (%r8)
	addq	$4, %r8
	movl	4(%rsp), %eax           # 4-byte Reload
	cmpl	$65, %eax
	jl	.LBB30_19
# BB#15:
	addl	$-64, %eax
	movl	%eax, %r12d
	jmp	.LBB30_16
.LBB30_11:                              # %if.then.62
	movl	%r15d, %eax
	notl	%eax
	andl	%eax, %r13d
	movl	(%r8), %edi
	movl	%ebx, %esi
	movl	%ecx, %edx
	movq	%r8, %rbx
	callq	*%r14
	notl	%ebp
	bswapl	%ebp
	orl	%r15d, %ebp
	andl	(%rbx), %ebp
	andl	%r13d, %eax
	orl	%ebp, %eax
	movl	%eax, (%rbx)
	jmp	.LBB30_20
.LBB30_13:                              # %if.end.72.do.body.90.preheader_crit_edge
	movl	%ebx, %r15d
	movl	%ecx, %ebp
.LBB30_16:                              # %do.body.90.preheader
	movq	%r8, 8(%rsp)            # 8-byte Spill
	cmpl	$33, %r12d
	movl	$32, %eax
	cmovll	%r12d, %eax
	notl	%eax
	leal	32(%r12,%rax), %r13d
	shrl	$5, %r13d
	incq	%r13
	addl	$32, %r12d
	movq	%r8, %rbx
	.align	16, 0x90
.LBB30_17:                              # %do.body.90
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %edi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	*%r14
	movl	%eax, (%rbx)
	addq	$4, %rbx
	addl	$-32, %r12d
	cmpl	$32, %r12d
	jg	.LBB30_17
# BB#18:                                # %if.end.102.loopexit
	movq	8(%rsp), %r8            # 8-byte Reload
	leaq	(%r8,%r13,4), %r8
.LBB30_19:                              # %if.end.102
	movl	(%r8), %edi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	movq	%r8, %rbx
	callq	*%r14
	movl	(%rbx), %ecx
	movl	20(%rsp), %edx          # 4-byte Reload
	andl	%edx, %ecx
	notl	%edx
	andl	%eax, %edx
	orl	%ecx, %edx
	movl	%edx, (%rbx)
.LBB30_20:                              # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end30:
	.size	generic_rop_run1_const_st, .Lfunc_end30-generic_rop_run1_const_st
	.cfi_endproc

	.align	16, 0x90
	.type	generic_rop_run8_const_st_trans,@function
generic_rop_run8_const_st_trans:        # @generic_rop_run8_const_st_trans
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp292:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp293:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp294:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp295:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp296:
	.cfi_def_cfa_offset 48
.Ltmp297:
	.cfi_offset %rbx, -48
.Ltmp298:
	.cfi_offset %r12, -40
.Ltmp299:
	.cfi_offset %r14, -32
.Ltmp300:
	.cfi_offset %r15, -24
.Ltmp301:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movl	48(%rdi), %ecx
	movzbl	%cl, %eax
	movzbl	16(%rdi), %r14d
	movl	%ecx, %edx
	andl	$256, %edx              # imm = 0x100
	decl	%edx
	movslq	%edx, %rdx
	cmpq	%rdx, %r14
	je	.LBB31_4
# BB#1:                                 # %if.end
	shrl	%ecx
	andl	$256, %ecx              # imm = 0x100
	decl	%ecx
	movslq	%ecx, %rcx
	movzbl	32(%rdi), %r15d
	cmpq	%rcx, %r15
	je	.LBB31_4
# BB#2:
	movq	rop_proc_table(,%rax,8), %r12
	.align	16, 0x90
.LBB31_3:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %edi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	*%r12
	movb	%al, (%rbx)
	incq	%rbx
	decl	%ebp
	jne	.LBB31_3
.LBB31_4:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end31:
	.size	generic_rop_run8_const_st_trans, .Lfunc_end31-generic_rop_run8_const_st_trans
	.cfi_endproc

	.align	16, 0x90
	.type	generic_rop_run8_const_st,@function
generic_rop_run8_const_st:              # @generic_rop_run8_const_st
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp302:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp303:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp304:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp305:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp306:
	.cfi_def_cfa_offset 48
.Ltmp307:
	.cfi_offset %rbx, -48
.Ltmp308:
	.cfi_offset %r12, -40
.Ltmp309:
	.cfi_offset %r14, -32
.Ltmp310:
	.cfi_offset %r15, -24
.Ltmp311:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movzbl	48(%rdi), %eax
	movq	rop_proc_table(,%rax,8), %r12
	movzbl	16(%rdi), %r14d
	movzbl	32(%rdi), %r15d
	.align	16, 0x90
.LBB32_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx), %edi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	*%r12
	movb	%al, (%rbx)
	incq	%rbx
	decl	%ebp
	jne	.LBB32_1
# BB#2:                                 # %do.end
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end32:
	.size	generic_rop_run8_const_st, .Lfunc_end32-generic_rop_run8_const_st
	.cfi_endproc

	.align	16, 0x90
	.type	generic_rop_run24_const_st_trans,@function
generic_rop_run24_const_st_trans:       # @generic_rop_run24_const_st_trans
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp312:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp313:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp314:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp315:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp316:
	.cfi_def_cfa_offset 48
.Ltmp317:
	.cfi_offset %rbx, -48
.Ltmp318:
	.cfi_offset %r12, -40
.Ltmp319:
	.cfi_offset %r14, -32
.Ltmp320:
	.cfi_offset %r15, -24
.Ltmp321:
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movq	%rsi, %rbp
	movl	48(%rdi), %eax
	movzbl	%al, %ecx
	movq	16(%rdi), %r14
	movl	%eax, %edx
	shll	$16, %edx
	andl	$16777216, %edx         # imm = 0x1000000
	decl	%edx
	movslq	%edx, %rdx
	cmpq	%rdx, %r14
	je	.LBB33_4
# BB#1:                                 # %if.end
	movq	32(%rdi), %r15
	shll	$15, %eax
	andl	$16777216, %eax         # imm = 0x1000000
	decl	%eax
	cltq
	cmpq	%rax, %r15
	je	.LBB33_4
# BB#2:
	movq	rop_proc_table(,%rcx,8), %r12
	.align	16, 0x90
.LBB33_3:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbp), %eax
	shlq	$16, %rax
	movzbl	1(%rbp), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	2(%rbp), %edi
	orq	%rcx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	*%r12
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, (%rbp)
	movb	%ah, 1(%rbp)  # NOREX
	movb	%al, 2(%rbp)
	addq	$3, %rbp
	decl	%ebx
	jne	.LBB33_3
.LBB33_4:                               # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end33:
	.size	generic_rop_run24_const_st_trans, .Lfunc_end33-generic_rop_run24_const_st_trans
	.cfi_endproc

	.align	16, 0x90
	.type	generic_rop_run24_const_st,@function
generic_rop_run24_const_st:             # @generic_rop_run24_const_st
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp322:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp323:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp324:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp325:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp326:
	.cfi_def_cfa_offset 48
.Ltmp327:
	.cfi_offset %rbx, -48
.Ltmp328:
	.cfi_offset %r12, -40
.Ltmp329:
	.cfi_offset %r14, -32
.Ltmp330:
	.cfi_offset %r15, -24
.Ltmp331:
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movq	%rsi, %rbp
	movzbl	48(%rdi), %eax
	movq	rop_proc_table(,%rax,8), %r12
	movq	16(%rdi), %r14
	movq	32(%rdi), %r15
	.align	16, 0x90
.LBB34_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rbp), %eax
	shlq	$16, %rax
	movzbl	1(%rbp), %ecx
	shlq	$8, %rcx
	orq	%rax, %rcx
	movzbl	2(%rbp), %edi
	orq	%rcx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	*%r12
	movq	%rax, %rcx
	shrq	$16, %rcx
	movb	%cl, (%rbp)
	movb	%ah, 1(%rbp)  # NOREX
	movb	%al, 2(%rbp)
	addq	$3, %rbp
	decl	%ebx
	jne	.LBB34_1
# BB#2:                                 # %do.end
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end34:
	.size	generic_rop_run24_const_st, .Lfunc_end34-generic_rop_run24_const_st
	.cfi_endproc

	.align	16, 0x90
	.type	rop_run_swapped,@function
rop_run_swapped:                        # @rop_run_swapped
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$88, %rsp
.Ltmp332:
	.cfi_def_cfa_offset 96
	movq	8(%rdi), %rax
	movq	%rax, (%rsp)
	movups	32(%rdi), %xmm0
	movups	%xmm0, 16(%rsp)
	movups	16(%rdi), %xmm0
	movups	%xmm0, 32(%rsp)
	movq	64(%rdi), %rcx
	movq	%rcx, 56(%rsp)
	movq	56(%rdi), %rcx
	movq	%rcx, 64(%rsp)
	movl	48(%rdi), %ecx
	movl	%ecx, 48(%rsp)
	movb	52(%rdi), %cl
	movb	%cl, 52(%rsp)
	movb	53(%rdi), %cl
	movb	%cl, 53(%rsp)
	movb	54(%rdi), %cl
	movb	%cl, 54(%rsp)
	movups	72(%rdi), %xmm0
	movups	%xmm0, 72(%rsp)
	leaq	(%rsp), %rdi
	callq	*%rax
	addq	$88, %rsp
	retq
.Lfunc_end35:
	.size	rop_run_swapped, .Lfunc_end35-rop_run_swapped
	.cfi_endproc

	.globl	rop_set_s_constant
	.align	16, 0x90
	.type	rop_set_s_constant,@function
rop_set_s_constant:                     # @rop_set_s_constant
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	%esi, %rax
	movq	%rax, 16(%rdi)
	retq
.Lfunc_end36:
	.size	rop_set_s_constant, .Lfunc_end36-rop_set_s_constant
	.cfi_endproc

	.globl	rop_set_s_bitmap
	.align	16, 0x90
	.type	rop_set_s_bitmap,@function
rop_set_s_bitmap:                       # @rop_set_s_bitmap
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 16(%rdi)
	retq
.Lfunc_end37:
	.size	rop_set_s_bitmap, .Lfunc_end37-rop_set_s_bitmap
	.cfi_endproc

	.globl	rop_set_s_bitmap_subbyte
	.align	16, 0x90
	.type	rop_set_s_bitmap_subbyte,@function
rop_set_s_bitmap_subbyte:               # @rop_set_s_bitmap_subbyte
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 16(%rdi)
	movl	%edx, 24(%rdi)
	retq
.Lfunc_end38:
	.size	rop_set_s_bitmap_subbyte, .Lfunc_end38-rop_set_s_bitmap_subbyte
	.cfi_endproc

	.globl	rop_set_s_colors
	.align	16, 0x90
	.type	rop_set_s_colors,@function
rop_set_s_colors:                       # @rop_set_s_colors
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 56(%rdi)
	retq
.Lfunc_end39:
	.size	rop_set_s_colors, .Lfunc_end39-rop_set_s_colors
	.cfi_endproc

	.globl	rop_set_t_constant
	.align	16, 0x90
	.type	rop_set_t_constant,@function
rop_set_t_constant:                     # @rop_set_t_constant
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	%esi, %rax
	movq	%rax, 32(%rdi)
	retq
.Lfunc_end40:
	.size	rop_set_t_constant, .Lfunc_end40-rop_set_t_constant
	.cfi_endproc

	.globl	rop_set_t_bitmap
	.align	16, 0x90
	.type	rop_set_t_bitmap,@function
rop_set_t_bitmap:                       # @rop_set_t_bitmap
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 32(%rdi)
	retq
.Lfunc_end41:
	.size	rop_set_t_bitmap, .Lfunc_end41-rop_set_t_bitmap
	.cfi_endproc

	.globl	rop_set_t_bitmap_subbyte
	.align	16, 0x90
	.type	rop_set_t_bitmap_subbyte,@function
rop_set_t_bitmap_subbyte:               # @rop_set_t_bitmap_subbyte
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 32(%rdi)
	movl	%edx, 40(%rdi)
	retq
.Lfunc_end42:
	.size	rop_set_t_bitmap_subbyte, .Lfunc_end42-rop_set_t_bitmap_subbyte
	.cfi_endproc

	.globl	rop_set_t_colors
	.align	16, 0x90
	.type	rop_set_t_colors,@function
rop_set_t_colors:                       # @rop_set_t_colors
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 64(%rdi)
	retq
.Lfunc_end43:
	.size	rop_set_t_colors, .Lfunc_end43-rop_set_t_colors
	.cfi_endproc

	.globl	rop_run
	.align	16, 0x90
	.type	rop_run,@function
rop_run:                                # @rop_run
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end44:
	.size	rop_run, .Lfunc_end44-rop_run
	.cfi_endproc

	.globl	rop_run_subbyte
	.align	16, 0x90
	.type	rop_run_subbyte,@function
rop_run_subbyte:                        # @rop_run_subbyte
	.cfi_startproc
# BB#0:                                 # %entry
	movb	%dl, 54(%rdi)
	movq	(%rdi), %rax
	movl	%ecx, %edx
	jmpq	*%rax                   # TAILCALL
.Lfunc_end45:
	.size	rop_run_subbyte, .Lfunc_end45-rop_run_subbyte
	.cfi_endproc

	.globl	rop_release_run_op
	.align	16, 0x90
	.type	rop_release_run_op,@function
rop_release_run_op:                     # @rop_release_run_op
	.cfi_startproc
# BB#0:                                 # %entry
	movq	72(%rdi), %rax
	testq	%rax, %rax
	je	.LBB46_1
# BB#2:                                 # %if.then
	jmpq	*%rax                   # TAILCALL
.LBB46_1:                               # %if.end
	retq
.Lfunc_end46:
	.size	rop_release_run_op, .Lfunc_end46-rop_release_run_op
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"This should never happen! key=%x\n"
	.size	.L.str, 34


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
