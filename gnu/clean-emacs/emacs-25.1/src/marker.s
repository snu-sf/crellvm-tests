	.text
	.file	"marker.bc"
	.globl	clear_charpos_cache
	.align	16, 0x90
	.type	clear_charpos_cache,@function
clear_charpos_cache:                    # @clear_charpos_cache
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
	movq	%rdi, -8(%rbp)
	movq	cached_buffer, %rdi
	cmpq	-8(%rbp), %rdi
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	$0, cached_buffer
.LBB0_2:                                # %if.end
	popq	%rbp
	retq
.Lfunc_end0:
	.size	clear_charpos_cache, .Lfunc_end0-clear_charpos_cache
	.cfi_endproc

	.globl	buf_charpos_to_bytepos
	.align	16, 0x90
	.type	buf_charpos_to_bytepos,@function
buf_charpos_to_bytepos:                 # @buf_charpos_to_bytepos
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
	subq	$624, %rsp              # imm = 0x270
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	720(%rsi), %rsi
	movq	16(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	movq	-16(%rbp), %rsi
	movq	720(%rsi), %rsi
	movq	32(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rsi
	cmpq	-48(%rbp), %rsi
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_230
.LBB1_2:                                # %if.end
	movq	$1, -56(%rbp)
	movq	$1, -64(%rbp)
	movq	-16(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB1_4
# BB#3:                                 # %cond.true
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB1_8
.LBB1_4:                                # %cond.false
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_6
# BB#5:                                 # %cond.true.4
	movq	-16(%rbp), %rax
	movq	736(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB1_7
.LBB1_6:                                # %cond.false.6
	movq	-16(%rbp), %rax
	movq	360(%rax), %rdi
	callq	marker_position
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB1_7:                                # %cond.end
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB1_8:                                # %cond.end.9
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	movb	$0, -73(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB1_18
# BB#9:                                 # %if.then.12
	movq	-16(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB1_11
# BB#10:                                # %cond.true.14
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB1_15
.LBB1_11:                               # %cond.false.16
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_13
# BB#12:                                # %cond.true.20
	movq	-16(%rbp), %rax
	movq	744(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jmp	.LBB1_14
.LBB1_13:                               # %cond.false.22
	movq	-16(%rbp), %rax
	movq	360(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -336(%rbp)        # 8-byte Spill
.LBB1_14:                               # %cond.end.25
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB1_15:                               # %cond.end.27
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
# BB#16:                                # %do.body
	jmp	.LBB1_17
.LBB1_17:                               # %do.end
	movq	-88(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_230
.LBB1_18:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jle	.LBB1_28
# BB#19:                                # %if.then.30
	movq	-72(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jge	.LBB1_27
# BB#20:                                # %if.then.32
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB1_22
# BB#21:                                # %cond.true.34
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB1_26
.LBB1_22:                               # %cond.false.37
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_24
# BB#23:                                # %cond.true.41
	movq	-16(%rbp), %rax
	movq	744(%rax), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jmp	.LBB1_25
.LBB1_24:                               # %cond.false.43
	movq	-16(%rbp), %rax
	movq	360(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -360(%rbp)        # 8-byte Spill
.LBB1_25:                               # %cond.end.46
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB1_26:                               # %cond.end.48
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	movb	$1, -73(%rbp)
.LBB1_27:                               # %if.end.50
	jmp	.LBB1_37
.LBB1_28:                               # %if.else.51
	movq	-72(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jle	.LBB1_36
# BB#29:                                # %if.then.53
	movq	-72(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB1_31
# BB#30:                                # %cond.true.55
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB1_35
.LBB1_31:                               # %cond.false.58
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_33
# BB#32:                                # %cond.true.62
	movq	-16(%rbp), %rax
	movq	744(%rax), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jmp	.LBB1_34
.LBB1_33:                               # %cond.false.64
	movq	-16(%rbp), %rax
	movq	360(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -384(%rbp)        # 8-byte Spill
.LBB1_34:                               # %cond.end.67
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB1_35:                               # %cond.end.69
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	movb	$1, -73(%rbp)
.LBB1_36:                               # %if.end.71
	jmp	.LBB1_37
.LBB1_37:                               # %if.end.72
	jmp	.LBB1_38
.LBB1_38:                               # %if.end.73
	testb	$1, -73(%rbp)
	je	.LBB1_44
# BB#39:                                # %if.then.74
	movq	-40(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	-64(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB1_43
# BB#40:                                # %if.then.77
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	-56(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -96(%rbp)
# BB#41:                                # %do.body.81
	jmp	.LBB1_42
.LBB1_42:                               # %do.end.82
	movq	-96(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_230
.LBB1_43:                               # %if.end.83
	jmp	.LBB1_44
.LBB1_44:                               # %if.end.84
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	movb	$0, -105(%rbp)
	movq	-104(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB1_48
# BB#45:                                # %if.then.89
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -120(%rbp)
# BB#46:                                # %do.body.92
	jmp	.LBB1_47
.LBB1_47:                               # %do.end.93
	movq	-120(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_230
.LBB1_48:                               # %if.else.94
	movq	-104(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jle	.LBB1_52
# BB#49:                                # %if.then.96
	movq	-104(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jge	.LBB1_51
# BB#50:                                # %if.then.98
	movq	-104(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	movb	$1, -105(%rbp)
.LBB1_51:                               # %if.end.101
	jmp	.LBB1_55
.LBB1_52:                               # %if.else.102
	movq	-104(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jle	.LBB1_54
# BB#53:                                # %if.then.104
	movq	-104(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)
	movb	$1, -105(%rbp)
.LBB1_54:                               # %if.end.107
	jmp	.LBB1_55
.LBB1_55:                               # %if.end.108
	jmp	.LBB1_56
.LBB1_56:                               # %if.end.109
	testb	$1, -105(%rbp)
	je	.LBB1_62
# BB#57:                                # %if.then.111
	movq	-40(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	-64(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB1_61
# BB#58:                                # %if.then.115
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	-56(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
# BB#59:                                # %do.body.119
	jmp	.LBB1_60
.LBB1_60:                               # %do.end.120
	movq	-128(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_230
.LBB1_61:                               # %if.end.121
	jmp	.LBB1_62
.LBB1_62:                               # %if.end.122
	movq	-16(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB1_64
# BB#63:                                # %cond.true.125
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	jmp	.LBB1_68
.LBB1_64:                               # %cond.false.126
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_66
# BB#65:                                # %cond.true.129
	movq	-16(%rbp), %rax
	movq	752(%rax), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jmp	.LBB1_67
.LBB1_66:                               # %cond.false.131
	movq	-16(%rbp), %rax
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -408(%rbp)        # 8-byte Spill
.LBB1_67:                               # %cond.end.134
	movq	-408(%rbp), %rax        # 8-byte Reload
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB1_68:                               # %cond.end.136
	movq	-392(%rbp), %rax        # 8-byte Reload
	movq	%rax, -136(%rbp)
	movb	$0, -137(%rbp)
	movq	-136(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB1_78
# BB#69:                                # %if.then.140
	movq	-16(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB1_71
# BB#70:                                # %cond.true.143
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	jmp	.LBB1_75
.LBB1_71:                               # %cond.false.144
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_73
# BB#72:                                # %cond.true.148
	movq	-16(%rbp), %rax
	movq	760(%rax), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jmp	.LBB1_74
.LBB1_73:                               # %cond.false.150
	movq	-16(%rbp), %rax
	movq	368(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -432(%rbp)        # 8-byte Spill
.LBB1_74:                               # %cond.end.153
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	%rax, -416(%rbp)        # 8-byte Spill
.LBB1_75:                               # %cond.end.155
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	%rax, -152(%rbp)
# BB#76:                                # %do.body.157
	jmp	.LBB1_77
.LBB1_77:                               # %do.end.158
	movq	-152(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_230
.LBB1_78:                               # %if.else.159
	movq	-136(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jle	.LBB1_88
# BB#79:                                # %if.then.161
	movq	-136(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jge	.LBB1_87
# BB#80:                                # %if.then.163
	movq	-136(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB1_82
# BB#81:                                # %cond.true.165
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jmp	.LBB1_86
.LBB1_82:                               # %cond.false.167
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_84
# BB#83:                                # %cond.true.171
	movq	-16(%rbp), %rax
	movq	760(%rax), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	jmp	.LBB1_85
.LBB1_84:                               # %cond.false.173
	movq	-16(%rbp), %rax
	movq	368(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -456(%rbp)        # 8-byte Spill
.LBB1_85:                               # %cond.end.176
	movq	-456(%rbp), %rax        # 8-byte Reload
	movq	%rax, -440(%rbp)        # 8-byte Spill
.LBB1_86:                               # %cond.end.178
	movq	-440(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	movb	$1, -137(%rbp)
.LBB1_87:                               # %if.end.180
	jmp	.LBB1_97
.LBB1_88:                               # %if.else.181
	movq	-136(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jle	.LBB1_96
# BB#89:                                # %if.then.183
	movq	-136(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB1_91
# BB#90:                                # %cond.true.185
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	jmp	.LBB1_95
.LBB1_91:                               # %cond.false.187
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-472(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_93
# BB#92:                                # %cond.true.191
	movq	-16(%rbp), %rax
	movq	760(%rax), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jmp	.LBB1_94
.LBB1_93:                               # %cond.false.193
	movq	-16(%rbp), %rax
	movq	368(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -480(%rbp)        # 8-byte Spill
.LBB1_94:                               # %cond.end.196
	movq	-480(%rbp), %rax        # 8-byte Reload
	movq	%rax, -464(%rbp)        # 8-byte Spill
.LBB1_95:                               # %cond.end.198
	movq	-464(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	movb	$1, -137(%rbp)
.LBB1_96:                               # %if.end.200
	jmp	.LBB1_97
.LBB1_97:                               # %if.end.201
	jmp	.LBB1_98
.LBB1_98:                               # %if.end.202
	testb	$1, -137(%rbp)
	je	.LBB1_104
# BB#99:                                # %if.then.204
	movq	-40(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	-64(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB1_103
# BB#100:                               # %if.then.208
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	-56(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -160(%rbp)
# BB#101:                               # %do.body.212
	jmp	.LBB1_102
.LBB1_102:                              # %do.end.213
	movq	-160(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_230
.LBB1_103:                              # %if.end.214
	jmp	.LBB1_104
.LBB1_104:                              # %if.end.215
	movq	-16(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB1_106
# BB#105:                               # %cond.true.218
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	jmp	.LBB1_110
.LBB1_106:                              # %cond.false.219
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-496(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_108
# BB#107:                               # %cond.true.222
	movq	-16(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	jmp	.LBB1_109
.LBB1_108:                              # %cond.false.224
	movq	-16(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -504(%rbp)        # 8-byte Spill
.LBB1_109:                              # %cond.end.227
	movq	-504(%rbp), %rax        # 8-byte Reload
	movq	%rax, -488(%rbp)        # 8-byte Spill
.LBB1_110:                              # %cond.end.229
	movq	-488(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movb	$0, -169(%rbp)
	movq	-168(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB1_120
# BB#111:                               # %if.then.233
	movq	-16(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB1_113
# BB#112:                               # %cond.true.236
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	jmp	.LBB1_117
.LBB1_113:                              # %cond.false.237
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-520(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_115
# BB#114:                               # %cond.true.241
	movq	-16(%rbp), %rax
	movq	776(%rax), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	jmp	.LBB1_116
.LBB1_115:                              # %cond.false.243
	movq	-16(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -528(%rbp)        # 8-byte Spill
.LBB1_116:                              # %cond.end.246
	movq	-528(%rbp), %rax        # 8-byte Reload
	movq	%rax, -512(%rbp)        # 8-byte Spill
.LBB1_117:                              # %cond.end.248
	movq	-512(%rbp), %rax        # 8-byte Reload
	movq	%rax, -184(%rbp)
# BB#118:                               # %do.body.250
	jmp	.LBB1_119
.LBB1_119:                              # %do.end.251
	movq	-184(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_230
.LBB1_120:                              # %if.else.252
	movq	-168(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jle	.LBB1_130
# BB#121:                               # %if.then.254
	movq	-168(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jge	.LBB1_129
# BB#122:                               # %if.then.256
	movq	-168(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB1_124
# BB#123:                               # %cond.true.258
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	jmp	.LBB1_128
.LBB1_124:                              # %cond.false.260
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-544(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_126
# BB#125:                               # %cond.true.264
	movq	-16(%rbp), %rax
	movq	776(%rax), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	jmp	.LBB1_127
.LBB1_126:                              # %cond.false.266
	movq	-16(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -552(%rbp)        # 8-byte Spill
.LBB1_127:                              # %cond.end.269
	movq	-552(%rbp), %rax        # 8-byte Reload
	movq	%rax, -536(%rbp)        # 8-byte Spill
.LBB1_128:                              # %cond.end.271
	movq	-536(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	movb	$1, -169(%rbp)
.LBB1_129:                              # %if.end.273
	jmp	.LBB1_139
.LBB1_130:                              # %if.else.274
	movq	-168(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jle	.LBB1_138
# BB#131:                               # %if.then.276
	movq	-168(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB1_133
# BB#132:                               # %cond.true.278
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	jmp	.LBB1_137
.LBB1_133:                              # %cond.false.280
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-568(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB1_135
# BB#134:                               # %cond.true.284
	movq	-16(%rbp), %rax
	movq	776(%rax), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	jmp	.LBB1_136
.LBB1_135:                              # %cond.false.286
	movq	-16(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -576(%rbp)        # 8-byte Spill
.LBB1_136:                              # %cond.end.289
	movq	-576(%rbp), %rax        # 8-byte Reload
	movq	%rax, -560(%rbp)        # 8-byte Spill
.LBB1_137:                              # %cond.end.291
	movq	-560(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	movb	$1, -169(%rbp)
.LBB1_138:                              # %if.end.293
	jmp	.LBB1_139
.LBB1_139:                              # %if.end.294
	jmp	.LBB1_140
.LBB1_140:                              # %if.end.295
	testb	$1, -169(%rbp)
	je	.LBB1_146
# BB#141:                               # %if.then.297
	movq	-40(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	-64(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB1_145
# BB#142:                               # %if.then.301
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	-56(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -192(%rbp)
# BB#143:                               # %do.body.305
	jmp	.LBB1_144
.LBB1_144:                              # %do.end.306
	movq	-192(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_230
.LBB1_145:                              # %if.end.307
	jmp	.LBB1_146
.LBB1_146:                              # %if.end.308
	movq	-16(%rbp), %rax
	cmpq	cached_buffer, %rax
	jne	.LBB1_167
# BB#147:                               # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	cmpq	cached_modiff, %rax
	jne	.LBB1_167
# BB#148:                               # %if.then.312
	movq	cached_charpos, %rax
	movq	%rax, -200(%rbp)
	movb	$0, -201(%rbp)
	movq	-200(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB1_152
# BB#149:                               # %if.then.316
	movq	cached_bytepos, %rax
	movq	%rax, -216(%rbp)
# BB#150:                               # %do.body.318
	jmp	.LBB1_151
.LBB1_151:                              # %do.end.319
	movq	-216(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_230
.LBB1_152:                              # %if.else.320
	movq	-200(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jle	.LBB1_156
# BB#153:                               # %if.then.322
	movq	-200(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jge	.LBB1_155
# BB#154:                               # %if.then.324
	movq	-200(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	cached_bytepos, %rax
	movq	%rax, -48(%rbp)
	movb	$1, -201(%rbp)
.LBB1_155:                              # %if.end.325
	jmp	.LBB1_159
.LBB1_156:                              # %if.else.326
	movq	-200(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jle	.LBB1_158
# BB#157:                               # %if.then.328
	movq	-200(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	cached_bytepos, %rax
	movq	%rax, -64(%rbp)
	movb	$1, -201(%rbp)
.LBB1_158:                              # %if.end.329
	jmp	.LBB1_159
.LBB1_159:                              # %if.end.330
	jmp	.LBB1_160
.LBB1_160:                              # %if.end.331
	testb	$1, -201(%rbp)
	je	.LBB1_166
# BB#161:                               # %if.then.333
	movq	-40(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	-64(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB1_165
# BB#162:                               # %if.then.337
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	-56(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -224(%rbp)
# BB#163:                               # %do.body.341
	jmp	.LBB1_164
.LBB1_164:                              # %do.end.342
	movq	-224(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_230
.LBB1_165:                              # %if.end.343
	jmp	.LBB1_166
.LBB1_166:                              # %if.end.344
	jmp	.LBB1_167
.LBB1_167:                              # %if.end.345
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	movq	128(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB1_168:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB1_191
# BB#169:                               # %for.body
                                        #   in Loop: Header=BB1_168 Depth=1
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -232(%rbp)
	movb	$0, -233(%rbp)
	movq	-232(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB1_173
# BB#170:                               # %if.then.352
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -248(%rbp)
# BB#171:                               # %do.body.354
	jmp	.LBB1_172
.LBB1_172:                              # %do.end.355
	movq	-248(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_230
.LBB1_173:                              # %if.else.356
                                        #   in Loop: Header=BB1_168 Depth=1
	movq	-232(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jle	.LBB1_177
# BB#174:                               # %if.then.358
                                        #   in Loop: Header=BB1_168 Depth=1
	movq	-232(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jge	.LBB1_176
# BB#175:                               # %if.then.360
                                        #   in Loop: Header=BB1_168 Depth=1
	movq	-232(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
	movb	$1, -233(%rbp)
.LBB1_176:                              # %if.end.362
                                        #   in Loop: Header=BB1_168 Depth=1
	jmp	.LBB1_180
.LBB1_177:                              # %if.else.363
                                        #   in Loop: Header=BB1_168 Depth=1
	movq	-232(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jle	.LBB1_179
# BB#178:                               # %if.then.365
                                        #   in Loop: Header=BB1_168 Depth=1
	movq	-232(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp)
	movb	$1, -233(%rbp)
.LBB1_179:                              # %if.end.367
                                        #   in Loop: Header=BB1_168 Depth=1
	jmp	.LBB1_180
.LBB1_180:                              # %if.end.368
                                        #   in Loop: Header=BB1_168 Depth=1
	jmp	.LBB1_181
.LBB1_181:                              # %if.end.369
                                        #   in Loop: Header=BB1_168 Depth=1
	testb	$1, -233(%rbp)
	je	.LBB1_187
# BB#182:                               # %if.then.371
                                        #   in Loop: Header=BB1_168 Depth=1
	movq	-40(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	-64(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB1_186
# BB#183:                               # %if.then.375
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	-56(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -256(%rbp)
# BB#184:                               # %do.body.379
	jmp	.LBB1_185
.LBB1_185:                              # %do.end.380
	movq	-256(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_230
.LBB1_186:                              # %if.end.381
                                        #   in Loop: Header=BB1_168 Depth=1
	jmp	.LBB1_187
.LBB1_187:                              # %if.end.382
                                        #   in Loop: Header=BB1_168 Depth=1
	movq	-40(%rbp), %rax
	subq	-56(%rbp), %rax
	cmpq	$50, %rax
	jge	.LBB1_189
# BB#188:                               # %if.then.385
	jmp	.LBB1_191
.LBB1_189:                              # %if.end.386
                                        #   in Loop: Header=BB1_168 Depth=1
	jmp	.LBB1_190
.LBB1_190:                              # %for.inc
                                        #   in Loop: Header=BB1_168 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB1_168
.LBB1_191:                              # %for.end
	movq	-24(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	-24(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB1_214
# BB#192:                               # %if.then.390
	movq	-24(%rbp), %rax
	subq	-56(%rbp), %rax
	cmpq	$5000, %rax             # imm = 0x1388
	setg	%cl
	andb	$1, %cl
	movb	%cl, -257(%rbp)
.LBB1_193:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB1_209
# BB#194:                               # %while.body
                                        #   in Loop: Header=BB1_193 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
# BB#195:                               # %do.body.394
                                        #   in Loop: Header=BB1_193 Depth=1
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-64(%rbp), %rax
	addq	$-1, %rax
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	720(%rdx), %rdx
	cmpq	24(%rdx), %rcx
	movq	%rax, -584(%rbp)        # 8-byte Spill
	jl	.LBB1_197
# BB#196:                               # %cond.true.400
                                        #   in Loop: Header=BB1_193 Depth=1
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	jmp	.LBB1_198
.LBB1_197:                              # %cond.false.402
                                        #   in Loop: Header=BB1_193 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -592(%rbp)        # 8-byte Spill
	jmp	.LBB1_198
.LBB1_198:                              # %cond.end.403
                                        #   in Loop: Header=BB1_193 Depth=1
	movq	-592(%rbp), %rax        # 8-byte Reload
	movq	-584(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, -272(%rbp)
	movq	-272(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB1_200
# BB#199:                               # %cond.true.407
                                        #   in Loop: Header=BB1_193 Depth=1
	movl	$1, %eax
	movl	%eax, -596(%rbp)        # 4-byte Spill
	jmp	.LBB1_207
.LBB1_200:                              # %cond.false.408
                                        #   in Loop: Header=BB1_193 Depth=1
	movq	-272(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB1_202
# BB#201:                               # %cond.true.412
                                        #   in Loop: Header=BB1_193 Depth=1
	movl	$2, %eax
	movl	%eax, -600(%rbp)        # 4-byte Spill
	jmp	.LBB1_206
.LBB1_202:                              # %cond.false.413
                                        #   in Loop: Header=BB1_193 Depth=1
	movq	-272(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB1_204
# BB#203:                               # %cond.true.417
                                        #   in Loop: Header=BB1_193 Depth=1
	movl	$3, %eax
	movl	%eax, -604(%rbp)        # 4-byte Spill
	jmp	.LBB1_205
.LBB1_204:                              # %cond.false.418
                                        #   in Loop: Header=BB1_193 Depth=1
	movl	$5, %eax
	movl	$4, %ecx
	movq	-272(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -604(%rbp)        # 4-byte Spill
.LBB1_205:                              # %cond.end.423
                                        #   in Loop: Header=BB1_193 Depth=1
	movl	-604(%rbp), %eax        # 4-byte Reload
	movl	%eax, -600(%rbp)        # 4-byte Spill
.LBB1_206:                              # %cond.end.425
                                        #   in Loop: Header=BB1_193 Depth=1
	movl	-600(%rbp), %eax        # 4-byte Reload
	movl	%eax, -596(%rbp)        # 4-byte Spill
.LBB1_207:                              # %cond.end.427
                                        #   in Loop: Header=BB1_193 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	-64(%rbp), %rcx
	movq	%rcx, -64(%rbp)
# BB#208:                               # %do.end.431
                                        #   in Loop: Header=BB1_193 Depth=1
	jmp	.LBB1_193
.LBB1_209:                              # %while.end
	testb	$1, -257(%rbp)
	je	.LBB1_211
# BB#210:                               # %if.then.433
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	build_marker
	movq	%rax, -616(%rbp)        # 8-byte Spill
.LBB1_211:                              # %if.end.435
	jmp	.LBB1_212
.LBB1_212:                              # %do.body.436
	jmp	.LBB1_213
.LBB1_213:                              # %do.end.437
	movq	-16(%rbp), %rax
	movq	%rax, cached_buffer
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, cached_modiff
	movq	-56(%rbp), %rax
	movq	%rax, cached_charpos
	movq	-64(%rbp), %rax
	movq	%rax, cached_bytepos
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_230
.LBB1_214:                              # %if.else.440
	movq	-40(%rbp), %rax
	subq	-24(%rbp), %rax
	cmpq	$5000, %rax             # imm = 0x1388
	setg	%cl
	andb	$1, %cl
	movb	%cl, -273(%rbp)
.LBB1_215:                              # %while.cond.446
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_221 Depth 2
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB1_225
# BB#216:                               # %while.body.449
                                        #   in Loop: Header=BB1_215 Depth=1
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
# BB#217:                               # %do.body.450
                                        #   in Loop: Header=BB1_215 Depth=1
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB1_219
# BB#218:                               # %if.then.457
                                        #   in Loop: Header=BB1_215 Depth=1
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -288(%rbp)
	jmp	.LBB1_220
.LBB1_219:                              # %if.else.462
                                        #   in Loop: Header=BB1_215 Depth=1
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -288(%rbp)
.LBB1_220:                              # %if.end.470
                                        #   in Loop: Header=BB1_215 Depth=1
	jmp	.LBB1_221
.LBB1_221:                              # %while.cond.471
                                        #   Parent Loop BB1_215 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-288(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB1_222
	jmp	.LBB1_223
.LBB1_222:                              # %while.body.477
                                        #   in Loop: Header=BB1_221 Depth=2
	movq	-288(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -288(%rbp)
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB1_221
.LBB1_223:                              # %while.end.479
                                        #   in Loop: Header=BB1_215 Depth=1
	jmp	.LBB1_224
.LBB1_224:                              # %do.end.480
                                        #   in Loop: Header=BB1_215 Depth=1
	jmp	.LBB1_215
.LBB1_225:                              # %while.end.481
	testb	$1, -273(%rbp)
	je	.LBB1_227
# BB#226:                               # %if.then.483
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	build_marker
	movq	%rax, -624(%rbp)        # 8-byte Spill
.LBB1_227:                              # %if.end.485
	jmp	.LBB1_228
.LBB1_228:                              # %do.body.486
	jmp	.LBB1_229
.LBB1_229:                              # %do.end.487
	movq	-16(%rbp), %rax
	movq	%rax, cached_buffer
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, cached_modiff
	movq	-40(%rbp), %rax
	movq	%rax, cached_charpos
	movq	-48(%rbp), %rax
	movq	%rax, cached_bytepos
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB1_230:                              # %return
	movq	-8(%rbp), %rax
	addq	$624, %rsp              # imm = 0x270
	popq	%rbp
	retq
.Lfunc_end1:
	.size	buf_charpos_to_bytepos, .Lfunc_end1-buf_charpos_to_bytepos
	.cfi_endproc

	.globl	marker_position
	.align	16, 0x90
	.type	marker_position,@function
marker_position:                        # @marker_position
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XMARKER
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB2_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	marker_position, .Lfunc_end2-marker_position
	.cfi_endproc

	.globl	marker_byte_position
	.align	16, 0x90
	.type	marker_byte_position,@function
marker_byte_position:                   # @marker_byte_position
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XMARKER
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB3_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	marker_byte_position, .Lfunc_end3-marker_byte_position
	.cfi_endproc

	.globl	buf_bytepos_to_charpos
	.align	16, 0x90
	.type	buf_bytepos_to_charpos,@function
buf_bytepos_to_charpos:                 # @buf_bytepos_to_charpos
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
	subq	$624, %rsp              # imm = 0x270
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	720(%rsi), %rsi
	movq	16(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	movq	-16(%rbp), %rsi
	movq	720(%rsi), %rsi
	movq	32(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rsi
	cmpq	-48(%rbp), %rsi
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_232
.LBB4_2:                                # %if.end
	movq	$1, -56(%rbp)
	movq	$1, -64(%rbp)
	movq	-16(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB4_4
# BB#3:                                 # %cond.true
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB4_8
.LBB4_4:                                # %cond.false
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_6
# BB#5:                                 # %cond.true.4
	movq	-16(%rbp), %rax
	movq	744(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB4_7
.LBB4_6:                                # %cond.false.6
	movq	-16(%rbp), %rax
	movq	360(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB4_7:                                # %cond.end
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB4_8:                                # %cond.end.9
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	movl	$0, -76(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB4_18
# BB#9:                                 # %if.then.12
	movq	-16(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB4_11
# BB#10:                                # %cond.true.14
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB4_15
.LBB4_11:                               # %cond.false.16
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_13
# BB#12:                                # %cond.true.20
	movq	-16(%rbp), %rax
	movq	736(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jmp	.LBB4_14
.LBB4_13:                               # %cond.false.22
	movq	-16(%rbp), %rax
	movq	360(%rax), %rdi
	callq	marker_position
	movq	%rax, -336(%rbp)        # 8-byte Spill
.LBB4_14:                               # %cond.end.25
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB4_15:                               # %cond.end.27
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
# BB#16:                                # %do.body
	jmp	.LBB4_17
.LBB4_17:                               # %do.end
	movq	-88(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_232
.LBB4_18:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jle	.LBB4_28
# BB#19:                                # %if.then.30
	movq	-72(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB4_27
# BB#20:                                # %if.then.32
	movq	-16(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB4_22
# BB#21:                                # %cond.true.34
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB4_26
.LBB4_22:                               # %cond.false.37
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_24
# BB#23:                                # %cond.true.41
	movq	-16(%rbp), %rax
	movq	736(%rax), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jmp	.LBB4_25
.LBB4_24:                               # %cond.false.43
	movq	-16(%rbp), %rax
	movq	360(%rax), %rdi
	callq	marker_position
	movq	%rax, -360(%rbp)        # 8-byte Spill
.LBB4_25:                               # %cond.end.46
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB4_26:                               # %cond.end.48
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$1, -76(%rbp)
.LBB4_27:                               # %if.end.50
	jmp	.LBB4_37
.LBB4_28:                               # %if.else.51
	movq	-72(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jle	.LBB4_36
# BB#29:                                # %if.then.53
	movq	-16(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB4_31
# BB#30:                                # %cond.true.55
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB4_35
.LBB4_31:                               # %cond.false.58
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_33
# BB#32:                                # %cond.true.62
	movq	-16(%rbp), %rax
	movq	736(%rax), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jmp	.LBB4_34
.LBB4_33:                               # %cond.false.64
	movq	-16(%rbp), %rax
	movq	360(%rax), %rdi
	callq	marker_position
	movq	%rax, -384(%rbp)        # 8-byte Spill
.LBB4_34:                               # %cond.end.67
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB4_35:                               # %cond.end.69
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	$1, -76(%rbp)
.LBB4_36:                               # %if.end.71
	jmp	.LBB4_37
.LBB4_37:                               # %if.end.72
	jmp	.LBB4_38
.LBB4_38:                               # %if.end.73
	cmpl	$0, -76(%rbp)
	je	.LBB4_44
# BB#39:                                # %if.then.74
	movq	-40(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	-64(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB4_43
# BB#40:                                # %if.then.77
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	-64(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -96(%rbp)
# BB#41:                                # %do.body.81
	jmp	.LBB4_42
.LBB4_42:                               # %do.end.82
	movq	-96(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_232
.LBB4_43:                               # %if.end.83
	jmp	.LBB4_44
.LBB4_44:                               # %if.end.84
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -104(%rbp)
	movl	$0, -108(%rbp)
	movq	-104(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB4_48
# BB#45:                                # %if.then.89
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
# BB#46:                                # %do.body.92
	jmp	.LBB4_47
.LBB4_47:                               # %do.end.93
	movq	-120(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_232
.LBB4_48:                               # %if.else.94
	movq	-104(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jle	.LBB4_52
# BB#49:                                # %if.then.96
	movq	-104(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB4_51
# BB#50:                                # %if.then.98
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$1, -108(%rbp)
.LBB4_51:                               # %if.end.101
	jmp	.LBB4_55
.LBB4_52:                               # %if.else.102
	movq	-104(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jle	.LBB4_54
# BB#53:                                # %if.then.104
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	$1, -108(%rbp)
.LBB4_54:                               # %if.end.107
	jmp	.LBB4_55
.LBB4_55:                               # %if.end.108
	jmp	.LBB4_56
.LBB4_56:                               # %if.end.109
	cmpl	$0, -108(%rbp)
	je	.LBB4_62
# BB#57:                                # %if.then.111
	movq	-40(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	-64(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB4_61
# BB#58:                                # %if.then.115
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	-64(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
# BB#59:                                # %do.body.119
	jmp	.LBB4_60
.LBB4_60:                               # %do.end.120
	movq	-128(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_232
.LBB4_61:                               # %if.end.121
	jmp	.LBB4_62
.LBB4_62:                               # %if.end.122
	movq	-16(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB4_64
# BB#63:                                # %cond.true.125
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	jmp	.LBB4_68
.LBB4_64:                               # %cond.false.126
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_66
# BB#65:                                # %cond.true.129
	movq	-16(%rbp), %rax
	movq	760(%rax), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jmp	.LBB4_67
.LBB4_66:                               # %cond.false.131
	movq	-16(%rbp), %rax
	movq	368(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -408(%rbp)        # 8-byte Spill
.LBB4_67:                               # %cond.end.134
	movq	-408(%rbp), %rax        # 8-byte Reload
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB4_68:                               # %cond.end.136
	movq	-392(%rbp), %rax        # 8-byte Reload
	movq	%rax, -136(%rbp)
	movl	$0, -140(%rbp)
	movq	-136(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB4_78
# BB#69:                                # %if.then.140
	movq	-16(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB4_71
# BB#70:                                # %cond.true.143
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	jmp	.LBB4_75
.LBB4_71:                               # %cond.false.144
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_73
# BB#72:                                # %cond.true.148
	movq	-16(%rbp), %rax
	movq	752(%rax), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jmp	.LBB4_74
.LBB4_73:                               # %cond.false.150
	movq	-16(%rbp), %rax
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -432(%rbp)        # 8-byte Spill
.LBB4_74:                               # %cond.end.153
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	%rax, -416(%rbp)        # 8-byte Spill
.LBB4_75:                               # %cond.end.155
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	%rax, -152(%rbp)
# BB#76:                                # %do.body.157
	jmp	.LBB4_77
.LBB4_77:                               # %do.end.158
	movq	-152(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_232
.LBB4_78:                               # %if.else.159
	movq	-136(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jle	.LBB4_88
# BB#79:                                # %if.then.161
	movq	-136(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB4_87
# BB#80:                                # %if.then.163
	movq	-16(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB4_82
# BB#81:                                # %cond.true.165
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jmp	.LBB4_86
.LBB4_82:                               # %cond.false.167
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_84
# BB#83:                                # %cond.true.171
	movq	-16(%rbp), %rax
	movq	752(%rax), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	jmp	.LBB4_85
.LBB4_84:                               # %cond.false.173
	movq	-16(%rbp), %rax
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -456(%rbp)        # 8-byte Spill
.LBB4_85:                               # %cond.end.176
	movq	-456(%rbp), %rax        # 8-byte Reload
	movq	%rax, -440(%rbp)        # 8-byte Spill
.LBB4_86:                               # %cond.end.178
	movq	-440(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$1, -140(%rbp)
.LBB4_87:                               # %if.end.180
	jmp	.LBB4_97
.LBB4_88:                               # %if.else.181
	movq	-136(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jle	.LBB4_96
# BB#89:                                # %if.then.183
	movq	-16(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB4_91
# BB#90:                                # %cond.true.185
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	jmp	.LBB4_95
.LBB4_91:                               # %cond.false.187
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-472(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_93
# BB#92:                                # %cond.true.191
	movq	-16(%rbp), %rax
	movq	752(%rax), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	jmp	.LBB4_94
.LBB4_93:                               # %cond.false.193
	movq	-16(%rbp), %rax
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -480(%rbp)        # 8-byte Spill
.LBB4_94:                               # %cond.end.196
	movq	-480(%rbp), %rax        # 8-byte Reload
	movq	%rax, -464(%rbp)        # 8-byte Spill
.LBB4_95:                               # %cond.end.198
	movq	-464(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	$1, -140(%rbp)
.LBB4_96:                               # %if.end.200
	jmp	.LBB4_97
.LBB4_97:                               # %if.end.201
	jmp	.LBB4_98
.LBB4_98:                               # %if.end.202
	cmpl	$0, -140(%rbp)
	je	.LBB4_104
# BB#99:                                # %if.then.204
	movq	-40(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	-64(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB4_103
# BB#100:                               # %if.then.208
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	-64(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -160(%rbp)
# BB#101:                               # %do.body.212
	jmp	.LBB4_102
.LBB4_102:                              # %do.end.213
	movq	-160(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_232
.LBB4_103:                              # %if.end.214
	jmp	.LBB4_104
.LBB4_104:                              # %if.end.215
	movq	-16(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB4_106
# BB#105:                               # %cond.true.218
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	jmp	.LBB4_110
.LBB4_106:                              # %cond.false.219
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-496(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_108
# BB#107:                               # %cond.true.222
	movq	-16(%rbp), %rax
	movq	776(%rax), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	jmp	.LBB4_109
.LBB4_108:                              # %cond.false.224
	movq	-16(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -504(%rbp)        # 8-byte Spill
.LBB4_109:                              # %cond.end.227
	movq	-504(%rbp), %rax        # 8-byte Reload
	movq	%rax, -488(%rbp)        # 8-byte Spill
.LBB4_110:                              # %cond.end.229
	movq	-488(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movl	$0, -172(%rbp)
	movq	-168(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB4_120
# BB#111:                               # %if.then.233
	movq	-16(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB4_113
# BB#112:                               # %cond.true.236
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	jmp	.LBB4_117
.LBB4_113:                              # %cond.false.237
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-520(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_115
# BB#114:                               # %cond.true.241
	movq	-16(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	jmp	.LBB4_116
.LBB4_115:                              # %cond.false.243
	movq	-16(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -528(%rbp)        # 8-byte Spill
.LBB4_116:                              # %cond.end.246
	movq	-528(%rbp), %rax        # 8-byte Reload
	movq	%rax, -512(%rbp)        # 8-byte Spill
.LBB4_117:                              # %cond.end.248
	movq	-512(%rbp), %rax        # 8-byte Reload
	movq	%rax, -184(%rbp)
# BB#118:                               # %do.body.250
	jmp	.LBB4_119
.LBB4_119:                              # %do.end.251
	movq	-184(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_232
.LBB4_120:                              # %if.else.252
	movq	-168(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jle	.LBB4_130
# BB#121:                               # %if.then.254
	movq	-168(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB4_129
# BB#122:                               # %if.then.256
	movq	-16(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB4_124
# BB#123:                               # %cond.true.258
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	jmp	.LBB4_128
.LBB4_124:                              # %cond.false.260
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-544(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_126
# BB#125:                               # %cond.true.264
	movq	-16(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	jmp	.LBB4_127
.LBB4_126:                              # %cond.false.266
	movq	-16(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -552(%rbp)        # 8-byte Spill
.LBB4_127:                              # %cond.end.269
	movq	-552(%rbp), %rax        # 8-byte Reload
	movq	%rax, -536(%rbp)        # 8-byte Spill
.LBB4_128:                              # %cond.end.271
	movq	-536(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$1, -172(%rbp)
.LBB4_129:                              # %if.end.273
	jmp	.LBB4_139
.LBB4_130:                              # %if.else.274
	movq	-168(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jle	.LBB4_138
# BB#131:                               # %if.then.276
	movq	-16(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB4_133
# BB#132:                               # %cond.true.278
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	jmp	.LBB4_137
.LBB4_133:                              # %cond.false.280
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-568(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_135
# BB#134:                               # %cond.true.284
	movq	-16(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	jmp	.LBB4_136
.LBB4_135:                              # %cond.false.286
	movq	-16(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -576(%rbp)        # 8-byte Spill
.LBB4_136:                              # %cond.end.289
	movq	-576(%rbp), %rax        # 8-byte Reload
	movq	%rax, -560(%rbp)        # 8-byte Spill
.LBB4_137:                              # %cond.end.291
	movq	-560(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	$1, -172(%rbp)
.LBB4_138:                              # %if.end.293
	jmp	.LBB4_139
.LBB4_139:                              # %if.end.294
	jmp	.LBB4_140
.LBB4_140:                              # %if.end.295
	cmpl	$0, -172(%rbp)
	je	.LBB4_146
# BB#141:                               # %if.then.297
	movq	-40(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	-64(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB4_145
# BB#142:                               # %if.then.301
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	-64(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -192(%rbp)
# BB#143:                               # %do.body.305
	jmp	.LBB4_144
.LBB4_144:                              # %do.end.306
	movq	-192(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_232
.LBB4_145:                              # %if.end.307
	jmp	.LBB4_146
.LBB4_146:                              # %if.end.308
	movq	-16(%rbp), %rax
	cmpq	cached_buffer, %rax
	jne	.LBB4_167
# BB#147:                               # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	cmpq	cached_modiff, %rax
	jne	.LBB4_167
# BB#148:                               # %if.then.312
	movq	cached_bytepos, %rax
	movq	%rax, -200(%rbp)
	movl	$0, -204(%rbp)
	movq	-200(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB4_152
# BB#149:                               # %if.then.316
	movq	cached_charpos, %rax
	movq	%rax, -216(%rbp)
# BB#150:                               # %do.body.318
	jmp	.LBB4_151
.LBB4_151:                              # %do.end.319
	movq	-216(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_232
.LBB4_152:                              # %if.else.320
	movq	-200(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jle	.LBB4_156
# BB#153:                               # %if.then.322
	movq	-200(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB4_155
# BB#154:                               # %if.then.324
	movq	cached_charpos, %rax
	movq	%rax, -40(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$1, -204(%rbp)
.LBB4_155:                              # %if.end.325
	jmp	.LBB4_159
.LBB4_156:                              # %if.else.326
	movq	-200(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jle	.LBB4_158
# BB#157:                               # %if.then.328
	movq	cached_charpos, %rax
	movq	%rax, -56(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	$1, -204(%rbp)
.LBB4_158:                              # %if.end.329
	jmp	.LBB4_159
.LBB4_159:                              # %if.end.330
	jmp	.LBB4_160
.LBB4_160:                              # %if.end.331
	cmpl	$0, -204(%rbp)
	je	.LBB4_166
# BB#161:                               # %if.then.333
	movq	-40(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	-64(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB4_165
# BB#162:                               # %if.then.337
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	-64(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -224(%rbp)
# BB#163:                               # %do.body.341
	jmp	.LBB4_164
.LBB4_164:                              # %do.end.342
	movq	-224(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_232
.LBB4_165:                              # %if.end.343
	jmp	.LBB4_166
.LBB4_166:                              # %if.end.344
	jmp	.LBB4_167
.LBB4_167:                              # %if.end.345
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	movq	128(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB4_168:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB4_191
# BB#169:                               # %for.body
                                        #   in Loop: Header=BB4_168 Depth=1
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -232(%rbp)
	movl	$0, -236(%rbp)
	movq	-232(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB4_173
# BB#170:                               # %if.then.352
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -248(%rbp)
# BB#171:                               # %do.body.354
	jmp	.LBB4_172
.LBB4_172:                              # %do.end.355
	movq	-248(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_232
.LBB4_173:                              # %if.else.356
                                        #   in Loop: Header=BB4_168 Depth=1
	movq	-232(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jle	.LBB4_177
# BB#174:                               # %if.then.358
                                        #   in Loop: Header=BB4_168 Depth=1
	movq	-232(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB4_176
# BB#175:                               # %if.then.360
                                        #   in Loop: Header=BB4_168 Depth=1
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$1, -236(%rbp)
.LBB4_176:                              # %if.end.362
                                        #   in Loop: Header=BB4_168 Depth=1
	jmp	.LBB4_180
.LBB4_177:                              # %if.else.363
                                        #   in Loop: Header=BB4_168 Depth=1
	movq	-232(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jle	.LBB4_179
# BB#178:                               # %if.then.365
                                        #   in Loop: Header=BB4_168 Depth=1
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	$1, -236(%rbp)
.LBB4_179:                              # %if.end.367
                                        #   in Loop: Header=BB4_168 Depth=1
	jmp	.LBB4_180
.LBB4_180:                              # %if.end.368
                                        #   in Loop: Header=BB4_168 Depth=1
	jmp	.LBB4_181
.LBB4_181:                              # %if.end.369
                                        #   in Loop: Header=BB4_168 Depth=1
	cmpl	$0, -236(%rbp)
	je	.LBB4_187
# BB#182:                               # %if.then.371
                                        #   in Loop: Header=BB4_168 Depth=1
	movq	-40(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	-64(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB4_186
# BB#183:                               # %if.then.375
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	-64(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -256(%rbp)
# BB#184:                               # %do.body.379
	jmp	.LBB4_185
.LBB4_185:                              # %do.end.380
	movq	-256(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_232
.LBB4_186:                              # %if.end.381
                                        #   in Loop: Header=BB4_168 Depth=1
	jmp	.LBB4_187
.LBB4_187:                              # %if.end.382
                                        #   in Loop: Header=BB4_168 Depth=1
	movq	-40(%rbp), %rax
	subq	-56(%rbp), %rax
	cmpq	$50, %rax
	jge	.LBB4_189
# BB#188:                               # %if.then.385
	jmp	.LBB4_191
.LBB4_189:                              # %if.end.386
                                        #   in Loop: Header=BB4_168 Depth=1
	jmp	.LBB4_190
.LBB4_190:                              # %for.inc
                                        #   in Loop: Header=BB4_168 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB4_168
.LBB4_191:                              # %for.end
	movq	-24(%rbp), %rax
	subq	-64(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	-24(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB4_215
# BB#192:                               # %if.then.390
	movq	-24(%rbp), %rax
	subq	-64(%rbp), %rax
	cmpq	$5000, %rax             # imm = 0x1388
	setg	%cl
	andb	$1, %cl
	movb	%cl, -257(%rbp)
.LBB4_193:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB4_209
# BB#194:                               # %while.body
                                        #   in Loop: Header=BB4_193 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
# BB#195:                               # %do.body.394
                                        #   in Loop: Header=BB4_193 Depth=1
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-64(%rbp), %rax
	addq	$-1, %rax
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	720(%rdx), %rdx
	cmpq	24(%rdx), %rcx
	movq	%rax, -584(%rbp)        # 8-byte Spill
	jl	.LBB4_197
# BB#196:                               # %cond.true.400
                                        #   in Loop: Header=BB4_193 Depth=1
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	jmp	.LBB4_198
.LBB4_197:                              # %cond.false.402
                                        #   in Loop: Header=BB4_193 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -592(%rbp)        # 8-byte Spill
	jmp	.LBB4_198
.LBB4_198:                              # %cond.end.403
                                        #   in Loop: Header=BB4_193 Depth=1
	movq	-592(%rbp), %rax        # 8-byte Reload
	movq	-584(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, -272(%rbp)
	movq	-272(%rbp), %rax
	movzbl	(%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB4_200
# BB#199:                               # %cond.true.407
                                        #   in Loop: Header=BB4_193 Depth=1
	movl	$1, %eax
	movl	%eax, -596(%rbp)        # 4-byte Spill
	jmp	.LBB4_207
.LBB4_200:                              # %cond.false.408
                                        #   in Loop: Header=BB4_193 Depth=1
	movq	-272(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB4_202
# BB#201:                               # %cond.true.412
                                        #   in Loop: Header=BB4_193 Depth=1
	movl	$2, %eax
	movl	%eax, -600(%rbp)        # 4-byte Spill
	jmp	.LBB4_206
.LBB4_202:                              # %cond.false.413
                                        #   in Loop: Header=BB4_193 Depth=1
	movq	-272(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB4_204
# BB#203:                               # %cond.true.417
                                        #   in Loop: Header=BB4_193 Depth=1
	movl	$3, %eax
	movl	%eax, -604(%rbp)        # 4-byte Spill
	jmp	.LBB4_205
.LBB4_204:                              # %cond.false.418
                                        #   in Loop: Header=BB4_193 Depth=1
	movl	$5, %eax
	movl	$4, %ecx
	movq	-272(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$8, %esi
	cmpl	$0, %esi
	setne	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -604(%rbp)        # 4-byte Spill
.LBB4_205:                              # %cond.end.423
                                        #   in Loop: Header=BB4_193 Depth=1
	movl	-604(%rbp), %eax        # 4-byte Reload
	movl	%eax, -600(%rbp)        # 4-byte Spill
.LBB4_206:                              # %cond.end.425
                                        #   in Loop: Header=BB4_193 Depth=1
	movl	-600(%rbp), %eax        # 4-byte Reload
	movl	%eax, -596(%rbp)        # 4-byte Spill
.LBB4_207:                              # %cond.end.427
                                        #   in Loop: Header=BB4_193 Depth=1
	movl	-596(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	addq	-64(%rbp), %rcx
	movq	%rcx, -64(%rbp)
# BB#208:                               # %do.end.431
                                        #   in Loop: Header=BB4_193 Depth=1
	jmp	.LBB4_193
.LBB4_209:                              # %while.end
	testb	$1, -257(%rbp)
	je	.LBB4_212
# BB#210:                               # %land.lhs.true.434
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	cmpq	$0, 128(%rax)
	je	.LBB4_212
# BB#211:                               # %if.then.438
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	build_marker
	movq	%rax, -616(%rbp)        # 8-byte Spill
.LBB4_212:                              # %if.end.440
	jmp	.LBB4_213
.LBB4_213:                              # %do.body.441
	jmp	.LBB4_214
.LBB4_214:                              # %do.end.442
	movq	-16(%rbp), %rax
	movq	%rax, cached_buffer
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, cached_modiff
	movq	-56(%rbp), %rax
	movq	%rax, cached_charpos
	movq	-64(%rbp), %rax
	movq	%rax, cached_bytepos
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_232
.LBB4_215:                              # %if.else.445
	movq	-48(%rbp), %rax
	subq	-24(%rbp), %rax
	cmpq	$5000, %rax             # imm = 0x1388
	setg	%cl
	andb	$1, %cl
	movb	%cl, -273(%rbp)
.LBB4_216:                              # %while.cond.451
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_222 Depth 2
	movq	-48(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jle	.LBB4_226
# BB#217:                               # %while.body.454
                                        #   in Loop: Header=BB4_216 Depth=1
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
# BB#218:                               # %do.body.455
                                        #   in Loop: Header=BB4_216 Depth=1
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jge	.LBB4_220
# BB#219:                               # %if.then.462
                                        #   in Loop: Header=BB4_216 Depth=1
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	addq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -288(%rbp)
	jmp	.LBB4_221
.LBB4_220:                              # %if.else.467
                                        #   in Loop: Header=BB4_216 Depth=1
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	addq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -288(%rbp)
.LBB4_221:                              # %if.end.475
                                        #   in Loop: Header=BB4_216 Depth=1
	jmp	.LBB4_222
.LBB4_222:                              # %while.cond.476
                                        #   Parent Loop BB4_216 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-288(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB4_223
	jmp	.LBB4_224
.LBB4_223:                              # %while.body.482
                                        #   in Loop: Header=BB4_222 Depth=2
	movq	-288(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -288(%rbp)
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB4_222
.LBB4_224:                              # %while.end.484
                                        #   in Loop: Header=BB4_216 Depth=1
	jmp	.LBB4_225
.LBB4_225:                              # %do.end.485
                                        #   in Loop: Header=BB4_216 Depth=1
	jmp	.LBB4_216
.LBB4_226:                              # %while.end.486
	testb	$1, -273(%rbp)
	je	.LBB4_229
# BB#227:                               # %land.lhs.true.489
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	cmpq	$0, 128(%rax)
	je	.LBB4_229
# BB#228:                               # %if.then.493
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	build_marker
	movq	%rax, -624(%rbp)        # 8-byte Spill
.LBB4_229:                              # %if.end.495
	jmp	.LBB4_230
.LBB4_230:                              # %do.body.496
	jmp	.LBB4_231
.LBB4_231:                              # %do.end.497
	movq	-16(%rbp), %rax
	movq	%rax, cached_buffer
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, cached_modiff
	movq	-40(%rbp), %rax
	movq	%rax, cached_charpos
	movq	-48(%rbp), %rax
	movq	%rax, cached_bytepos
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_232:                              # %return
	movq	-8(%rbp), %rax
	addq	$624, %rsp              # imm = 0x270
	popq	%rbp
	retq
.Lfunc_end4:
	.size	buf_bytepos_to_charpos, .Lfunc_end4-buf_bytepos_to_charpos
	.cfi_endproc

	.globl	Fmarker_buffer
	.align	16, 0x90
	.type	Fmarker_buffer,@function
Fmarker_buffer:                         # @Fmarker_buffer
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
	callq	CHECK_MARKER
	movq	-16(%rbp), %rdi
	callq	XMARKER
	cmpq	$0, 8(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	XMARKER
	movl	$5, %esi
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_3
.LBB5_2:                                # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB5_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	Fmarker_buffer, .Lfunc_end5-Fmarker_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	CHECK_MARKER,@function
CHECK_MARKER:                           # @CHECK_MARKER
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$1, %eax
	jne	.LBB6_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB6_3
# BB#2:                                 # %cond.true
	jmp	.LBB6_4
.LBB6_3:                                # %cond.false
	movl	$646, %edi              # imm = 0x286
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB6_4:                                # %cond.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	CHECK_MARKER, .Lfunc_end6-CHECK_MARKER
	.cfi_endproc

	.globl	Fmarker_position
	.align	16, 0x90
	.type	Fmarker_position,@function
Fmarker_position:                       # @Fmarker_position
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
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_MARKER
	movq	-16(%rbp), %rdi
	callq	XMARKER
	cmpq	$0, 8(%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	XMARKER
	movq	24(%rax), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_3
.LBB7_2:                                # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB7_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Fmarker_position, .Lfunc_end7-Fmarker_position
	.cfi_endproc

	.globl	Fset_marker
	.align	16, 0x90
	.type	Fset_marker,@function
Fset_marker:                            # @Fset_marker
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
	subq	$32, %rsp
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	set_marker_internal
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	Fset_marker, .Lfunc_end8-Fset_marker
	.cfi_endproc

	.align	16, 0x90
	.type	set_marker_internal,@function
set_marker_internal:                    # @set_marker_internal
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
	subq	$256, %rsp              # imm = 0x100
	movb	%cl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	movq	-24(%rbp), %rdi
	callq	live_buffer
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_MARKER
	movq	-8(%rbp), %rdi
	callq	XMARKER
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB9_5
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB9_4
# BB#2:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB9_4
# BB#3:                                 # %land.lhs.true.8
	movq	-16(%rbp), %rdi
	callq	XMARKER
	cmpq	$0, 8(%rax)
	je	.LBB9_5
.LBB9_4:                                # %lor.lhs.false.11
	cmpq	$0, -48(%rbp)
	jne	.LBB9_6
.LBB9_5:                                # %if.then
	movq	-40(%rbp), %rdi
	callq	unchain_marker
	jmp	.LBB9_59
.LBB9_6:                                # %if.else
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB9_11
# BB#7:                                 # %land.lhs.true.17
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB9_11
# BB#8:                                 # %land.lhs.true.21
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	XMARKER
	movq	-80(%rbp), %rdi         # 8-byte Reload
	cmpq	8(%rax), %rdi
	jne	.LBB9_11
# BB#9:                                 # %land.lhs.true.26
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB9_11
# BB#10:                                # %if.then.30
	movq	-16(%rbp), %rdi
	callq	XMARKER
	movq	32(%rax), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-16(%rbp), %rdi
	callq	XMARKER
	movq	24(%rax), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, 24(%rdi)
	jmp	.LBB9_58
.LBB9_11:                               # %if.else.35
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB9_13
# BB#12:                                # %if.then.43
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -56(%rbp)
	movq	$-1, -64(%rbp)
	jmp	.LBB9_18
.LBB9_13:                               # %if.else.44
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB9_16
# BB#14:                                # %land.lhs.true.49
	movq	-16(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB9_16
# BB#15:                                # %if.then.53
	movq	-16(%rbp), %rdi
	callq	XMARKER
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	XMARKER
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB9_17
.LBB9_16:                               # %if.else.58
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB9_17:                               # %if.end
	jmp	.LBB9_18
.LBB9_18:                               # %if.end.60
	testb	$1, -25(%rbp)
	je	.LBB9_26
# BB#19:                                # %cond.true
	movq	-48(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB9_21
# BB#20:                                # %cond.true.65
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB9_25
.LBB9_21:                               # %cond.false
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_23
# BB#22:                                # %cond.true.69
	movq	-48(%rbp), %rax
	movq	752(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB9_24
.LBB9_23:                               # %cond.false.71
	movq	-48(%rbp), %rax
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB9_24:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB9_25:                               # %cond.end.74
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB9_27
.LBB9_26:                               # %cond.false.76
	movl	$1, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB9_27
.LBB9_27:                               # %cond.end.77
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-56(%rbp), %rsi
	testb	$1, -25(%rbp)
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	je	.LBB9_35
# BB#28:                                # %cond.true.81
	movq	-48(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB9_30
# BB#29:                                # %cond.true.84
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB9_34
.LBB9_30:                               # %cond.false.85
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_32
# BB#31:                                # %cond.true.89
	movq	-48(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB9_33
.LBB9_32:                               # %cond.false.91
	movq	-48(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB9_33:                               # %cond.end.94
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB9_34:                               # %cond.end.96
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB9_36
.LBB9_35:                               # %cond.false.98
	movq	-48(%rbp), %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB9_36:                               # %cond.end.99
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	clip_to_bounds
	movq	%rax, -56(%rbp)
	cmpq	$-1, -64(%rbp)
	jne	.LBB9_38
# BB#37:                                # %if.then.104
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -64(%rbp)
	jmp	.LBB9_57
.LBB9_38:                               # %if.else.106
	testb	$1, -25(%rbp)
	je	.LBB9_46
# BB#39:                                # %cond.true.109
	movq	-48(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB9_41
# BB#40:                                # %cond.true.112
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB9_45
.LBB9_41:                               # %cond.false.113
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_43
# BB#42:                                # %cond.true.118
	movq	-48(%rbp), %rax
	movq	760(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB9_44
.LBB9_43:                               # %cond.false.120
	movq	-48(%rbp), %rax
	movq	368(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB9_44:                               # %cond.end.123
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB9_45:                               # %cond.end.125
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB9_47
.LBB9_46:                               # %cond.false.127
	movl	$1, %eax
	movl	%eax, %ecx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jmp	.LBB9_47
.LBB9_47:                               # %cond.end.128
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	-64(%rbp), %rsi
	testb	$1, -25(%rbp)
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	je	.LBB9_55
# BB#48:                                # %cond.true.132
	movq	-48(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB9_50
# BB#49:                                # %cond.true.135
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB9_54
.LBB9_50:                               # %cond.false.136
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_52
# BB#51:                                # %cond.true.141
	movq	-48(%rbp), %rax
	movq	776(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB9_53
.LBB9_52:                               # %cond.false.143
	movq	-48(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB9_53:                               # %cond.end.146
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB9_54:                               # %cond.end.148
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB9_56
.LBB9_55:                               # %cond.false.150
	movq	-48(%rbp), %rax
	movq	720(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB9_56:                               # %cond.end.152
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	clip_to_bounds
	movq	%rax, -64(%rbp)
.LBB9_57:                               # %if.end.155
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rcx
	callq	attach_marker
.LBB9_58:                               # %if.end.156
	jmp	.LBB9_59
.LBB9_59:                               # %if.end.157
	movq	-8(%rbp), %rax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end9:
	.size	set_marker_internal, .Lfunc_end9-set_marker_internal
	.cfi_endproc

	.globl	set_marker_restricted
	.align	16, 0x90
	.type	set_marker_restricted,@function
set_marker_restricted:                  # @set_marker_restricted
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
	subq	$32, %rsp
	movl	$1, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	set_marker_internal
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	set_marker_restricted, .Lfunc_end10-set_marker_restricted
	.cfi_endproc

	.globl	set_marker_both
	.align	16, 0x90
	.type	set_marker_both,@function
set_marker_both:                        # @set_marker_both
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	live_buffer
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_MARKER
	movq	-8(%rbp), %rdi
	callq	XMARKER
	movq	%rax, -40(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	attach_marker
	jmp	.LBB11_3
.LBB11_2:                               # %if.else
	movq	-40(%rbp), %rdi
	callq	unchain_marker
.LBB11_3:                               # %if.end
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	set_marker_both, .Lfunc_end11-set_marker_both
	.cfi_endproc

	.align	16, 0x90
	.type	live_buffer,@function
live_buffer:                            # @live_buffer
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_buffer
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB12_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB12_3
.LBB12_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB12_3
.LBB12_3:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	live_buffer, .Lfunc_end12-live_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	attach_marker,@function
attach_marker:                          # @attach_marker
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rcx
	movq	720(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	720(%rdx), %rdx
	cmpq	32(%rdx), %rcx
	jne	.LBB13_2
# BB#1:                                 # %if.then
	jmp	.LBB13_3
.LBB13_2:                               # %if.else
	jmp	.LBB13_3
.LBB13_3:                               # %if.end
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB13_5
# BB#4:                                 # %if.then.5
	movq	-8(%rbp), %rdi
	callq	unchain_marker
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, 8(%rax)
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	movq	128(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	720(%rdi), %rdi
	movq	%rax, 128(%rdi)
.LBB13_5:                               # %if.end.10
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	attach_marker, .Lfunc_end13-attach_marker
	.cfi_endproc

	.globl	unchain_marker
	.align	16, 0x90
	.type	unchain_marker,@function
unchain_marker:                         # @unchain_marker
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB14_13
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	addq	$128, %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	movq	128(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB14_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB14_12
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB14_2 Depth=1
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB14_10
# BB#4:                                 # %if.then.5
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	720(%rcx), %rcx
	cmpq	128(%rcx), %rax
	jne	.LBB14_9
# BB#5:                                 # %if.then.9
	movq	-24(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB14_8
# BB#6:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	720(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	8(%rcx), %rcx
	cmpq	720(%rcx), %rax
	je	.LBB14_8
# BB#7:                                 # %if.then.16
	callq	emacs_abort
.LBB14_8:                               # %if.end
	jmp	.LBB14_9
.LBB14_9:                               # %if.end.17
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB14_12
.LBB14_10:                              # %if.end.19
                                        #   in Loop: Header=BB14_2 Depth=1
	jmp	.LBB14_11
.LBB14_11:                              # %for.inc
                                        #   in Loop: Header=BB14_2 Depth=1
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB14_2
.LBB14_12:                              # %for.end
	jmp	.LBB14_13
.LBB14_13:                              # %if.end.21
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	unchain_marker, .Lfunc_end14-unchain_marker
	.cfi_endproc

	.globl	set_marker_restricted_both
	.align	16, 0x90
	.type	set_marker_restricted_both,@function
set_marker_restricted_both:             # @set_marker_restricted_both
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	live_buffer
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_MARKER
	movq	-8(%rbp), %rdi
	callq	XMARKER
	movq	%rax, -40(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB15_26
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rax
	cmpq	current_buffer, %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	jne	.LBB15_3
# BB#2:                                 # %cond.true
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB15_7
.LBB15_3:                               # %cond.false
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_5
# BB#4:                                 # %cond.true.4
	movq	-48(%rbp), %rax
	movq	752(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB15_6
.LBB15_5:                               # %cond.false.6
	movq	-48(%rbp), %rax
	movq	368(%rax), %rdi
	callq	marker_position
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB15_6:                               # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB15_7:                               # %cond.end.9
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rcx
	cmpq	current_buffer, %rcx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	jne	.LBB15_9
# BB#8:                                 # %cond.true.12
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB15_13
.LBB15_9:                               # %cond.false.13
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_11
# BB#10:                                # %cond.true.16
	movq	-48(%rbp), %rax
	movq	768(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB15_12
.LBB15_11:                              # %cond.false.18
	movq	-48(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB15_12:                              # %cond.end.21
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB15_13:                              # %cond.end.23
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	clip_to_bounds
	movq	-48(%rbp), %rdx
	cmpq	current_buffer, %rdx
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jne	.LBB15_15
# BB#14:                                # %cond.true.27
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB15_19
.LBB15_15:                              # %cond.false.28
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	368(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_17
# BB#16:                                # %cond.true.32
	movq	-48(%rbp), %rax
	movq	760(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB15_18
.LBB15_17:                              # %cond.false.34
	movq	-48(%rbp), %rax
	movq	368(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB15_18:                              # %cond.end.37
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB15_19:                              # %cond.end.39
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rcx
	cmpq	current_buffer, %rcx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	jne	.LBB15_21
# BB#20:                                # %cond.true.42
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB15_25
.LBB15_21:                              # %cond.false.43
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	376(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_23
# BB#22:                                # %cond.true.47
	movq	-48(%rbp), %rax
	movq	776(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB15_24
.LBB15_23:                              # %cond.false.49
	movq	-48(%rbp), %rax
	movq	376(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB15_24:                              # %cond.end.52
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB15_25:                              # %cond.end.54
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	clip_to_bounds
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	attach_marker
	jmp	.LBB15_27
.LBB15_26:                              # %if.else
	movq	-40(%rbp), %rdi
	callq	unchain_marker
.LBB15_27:                              # %if.end
	movq	-8(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	set_marker_restricted_both, .Lfunc_end15-set_marker_restricted_both
	.cfi_endproc

	.globl	Fcopy_marker
	.align	16, 0x90
	.type	Fcopy_marker,@function
Fcopy_marker:                           # @Fcopy_marker
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
	subq	$96, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB16_7
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB16_4
# BB#2:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB16_5
# BB#3:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB16_5
.LBB16_4:                               # %cond.true
	jmp	.LBB16_6
.LBB16_5:                               # %cond.false
	movl	$558, %edi              # imm = 0x22E
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB16_6:                               # %cond.end
	jmp	.LBB16_7
.LBB16_7:                               # %if.end
	callq	Fmake_marker
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	jne	.LBB16_10
# BB#8:                                 # %land.lhs.true.17
	movq	-8(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB16_10
# BB#9:                                 # %cond.true.21
	movq	-8(%rbp), %rdi
	callq	Fmarker_buffer
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB16_11
.LBB16_10:                              # %cond.false.23
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB16_11:                              # %cond.end.25
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fset_marker
	xorl	%edi, %edi
	movq	-16(%rbp), %rdx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	sete	%cl
	xorb	$-1, %cl
	movq	-24(%rbp), %rdi
	movb	%cl, -81(%rbp)          # 1-byte Spill
	callq	XMARKER
	movb	-81(%rbp), %cl          # 1-byte Reload
	andb	$1, %cl
	movzbl	%cl, %r8d
	movl	(%rax), %r9d
	shll	$31, %r8d
	andl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	orl	%r8d, %r9d
	movl	%r9d, (%rax)
	movq	-24(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	Fcopy_marker, .Lfunc_end16-Fcopy_marker
	.cfi_endproc

	.globl	Fmarker_insertion_type
	.align	16, 0x90
	.type	Fmarker_insertion_type,@function
Fmarker_insertion_type:                 # @Fmarker_insertion_type
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_MARKER
	movq	-8(%rbp), %rdi
	callq	XMARKER
	movl	(%rax), %ecx
	shrl	$31, %ecx
	testl	$1, %ecx
	je	.LBB17_2
# BB#1:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB17_3
.LBB17_2:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB17_3:                               # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	Fmarker_insertion_type, .Lfunc_end17-Fmarker_insertion_type
	.cfi_endproc

	.globl	Fset_marker_insertion_type
	.align	16, 0x90
	.type	Fset_marker_insertion_type,@function
Fset_marker_insertion_type:             # @Fset_marker_insertion_type
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_MARKER
	xorl	%edi, %edi
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	movq	-8(%rbp), %rdi
	movb	%cl, -25(%rbp)          # 1-byte Spill
	callq	XMARKER
	movb	-25(%rbp), %cl          # 1-byte Reload
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	(%rax), %r8d
	shll	$31, %edx
	andl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	orl	%edx, %r8d
	movl	%r8d, (%rax)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	Fset_marker_insertion_type, .Lfunc_end18-Fset_marker_insertion_type
	.cfi_endproc

	.globl	Fbuffer_has_markers_at
	.align	16, 0x90
	.type	Fbuffer_has_markers_at,@function
Fbuffer_has_markers_at:                 # @Fbuffer_has_markers_at
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
	subq	$48, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	sarq	$2, %rdi
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-40(%rbp), %rsi         # 8-byte Reload
	callq	clip_to_bounds
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	128(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB19_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB19_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB19_4
# BB#3:                                 # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB19_7
.LBB19_4:                               # %if.end
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_5
.LBB19_5:                               # %for.inc
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB19_1
.LBB19_6:                               # %for.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB19_7:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	Fbuffer_has_markers_at, .Lfunc_end19-Fbuffer_has_markers_at
	.cfi_endproc

	.globl	syms_of_marker
	.align	16, 0x90
	.type	syms_of_marker,@function
syms_of_marker:                         # @syms_of_marker
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
	movabsq	$Smarker_position, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smarker_buffer, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_marker, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scopy_marker, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smarker_insertion_type, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_marker_insertion_type, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sbuffer_has_markers_at, %rax
	movq	%rax, %rdi
	callq	defsubr
	popq	%rbp
	retq
.Lfunc_end20:
	.size	syms_of_marker, .Lfunc_end20-syms_of_marker
	.cfi_endproc

	.type	cached_buffer,@object   # @cached_buffer
	.local	cached_buffer
	.comm	cached_buffer,8,8
	.type	cached_modiff,@object   # @cached_modiff
	.local	cached_modiff
	.comm	cached_modiff,8,8
	.type	cached_charpos,@object  # @cached_charpos
	.local	cached_charpos
	.comm	cached_charpos,8,8
	.type	cached_bytepos,@object  # @cached_bytepos
	.local	cached_bytepos
	.comm	cached_bytepos,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Marker does not point anywhere"
	.size	.L.str, 31

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"marker-position"
	.size	.L.str.1, 16

	.type	Smarker_position,@object # @Smarker_position
	.data
	.align	8
Smarker_position:
	.quad	167772160               # 0xa000000
	.quad	Fmarker_position
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.size	Smarker_position, 48

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"marker-buffer"
	.size	.L.str.2, 14

	.type	Smarker_buffer,@object  # @Smarker_buffer
	.data
	.align	8
Smarker_buffer:
	.quad	167772160               # 0xa000000
	.quad	Fmarker_buffer
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.2
	.quad	0
	.quad	0
	.size	Smarker_buffer, 48

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"set-marker"
	.size	.L.str.3, 11

	.type	Sset_marker,@object     # @Sset_marker
	.data
	.align	8
Sset_marker:
	.quad	167772160               # 0xa000000
	.quad	Fset_marker
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.3
	.quad	0
	.quad	0
	.size	Sset_marker, 48

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"copy-marker"
	.size	.L.str.4, 12

	.type	Scopy_marker,@object    # @Scopy_marker
	.data
	.align	8
Scopy_marker:
	.quad	167772160               # 0xa000000
	.quad	Fcopy_marker
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.4
	.quad	0
	.quad	0
	.size	Scopy_marker, 48

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"marker-insertion-type"
	.size	.L.str.5, 22

	.type	Smarker_insertion_type,@object # @Smarker_insertion_type
	.data
	.align	8
Smarker_insertion_type:
	.quad	167772160               # 0xa000000
	.quad	Fmarker_insertion_type
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.5
	.quad	0
	.quad	0
	.size	Smarker_insertion_type, 48

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"set-marker-insertion-type"
	.size	.L.str.6, 26

	.type	Sset_marker_insertion_type,@object # @Sset_marker_insertion_type
	.data
	.align	8
Sset_marker_insertion_type:
	.quad	167772160               # 0xa000000
	.quad	Fset_marker_insertion_type
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.6
	.quad	0
	.quad	0
	.size	Sset_marker_insertion_type, 48

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"buffer-has-markers-at"
	.size	.L.str.7, 22

	.type	Sbuffer_has_markers_at,@object # @Sbuffer_has_markers_at
	.data
	.align	8
Sbuffer_has_markers_at:
	.quad	167772160               # 0xa000000
	.quad	Fbuffer_has_markers_at
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.7
	.quad	0
	.quad	0
	.size	Sbuffer_has_markers_at, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
