	.text
	.file	"doprnt.bc"
	.globl	doprnt
	.align	16, 0x90
	.type	doprnt,@function
doprnt:                                 # @doprnt
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
	subq	$1232, %rsp             # imm = 0x4D0
	leaq	-464(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	$408, -472(%rbp)        # imm = 0x198
	movq	%rax, -480(%rbp)
	movq	$0, -488(%rbp)
	callq	text_quoting_style
	movl	%eax, -492(%rbp)
	movq	$-1, -504(%rbp)
	movq	$16384, -576(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -584(%rbp)
	movb	$0, -585(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-760(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -32(%rbp)
.LBB0_2:                                # %if.end
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	cmpq	$19, %rax
	jae	.LBB0_4
# BB#3:                                 # %cond.true
	leaq	-544(%rbp), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	jmp	.LBB0_8
.LBB0_4:                                # %cond.false
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	cmpq	-576(%rbp), %rax
	jg	.LBB0_6
# BB#5:                                 # %cond.true.9
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	incq	%rax
	movq	-576(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -576(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -776(%rbp)        # 8-byte Spill
	jmp	.LBB0_7
.LBB0_6:                                # %cond.false.18
	movb	$1, -585(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -776(%rbp)        # 8-byte Spill
.LBB0_7:                                # %cond.end
	movq	-776(%rbp), %rax        # 8-byte Reload
	movq	%rax, -768(%rbp)        # 8-byte Spill
.LBB0_8:                                # %cond.end.24
	movq	-768(%rbp), %rax        # 8-byte Reload
	movq	%rax, -552(%rbp)
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
.LBB0_9:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_18 Depth 3
                                        #     Child Loop BB0_36 Depth 2
                                        #     Child Loop BB0_121 Depth 2
                                        #     Child Loop BB0_128 Depth 2
                                        #     Child Loop BB0_146 Depth 2
                                        #     Child Loop BB0_185 Depth 2
                                        #     Child Loop BB0_194 Depth 2
                                        #     Child Loop BB0_198 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	cmpq	-32(%rbp), %rdx
	movb	%cl, -777(%rbp)         # 1-byte Spill
	jae	.LBB0_11
# BB#10:                                # %land.rhs
                                        #   in Loop: Header=BB0_9 Depth=1
	cmpq	$0, -16(%rbp)
	setg	%al
	movb	%al, -777(%rbp)         # 1-byte Spill
.LBB0_11:                               # %land.end
                                        #   in Loop: Header=BB0_9 Depth=1
	movb	-777(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_12
	jmp	.LBB0_202
.LBB0_12:                               # %while.body
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -600(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	(%rax), %dl
	movb	%dl, -601(%rbp)
	movsbl	-601(%rbp), %esi
	cmpl	$37, %esi
	jne	.LBB0_175
# BB#13:                                # %if.then.30
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	$0, -616(%rbp)
	movl	$0, -628(%rbp)
	movl	$1, -632(%rbp)
	movq	-552(%rbp), %rax
	movq	%rax, -512(%rbp)
	movq	-512(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -512(%rbp)
	movb	$37, (%rax)
.LBB0_14:                               # %while.cond.32
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_18 Depth 3
	movq	-48(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jae	.LBB0_35
# BB#15:                                # %while.body.35
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	$48, %eax
	movq	-48(%rbp), %rcx
	movb	(%rcx), %dl
	movq	-512(%rbp), %rcx
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rsi, -512(%rbp)
	movb	%dl, (%rcx)
	movq	-48(%rbp), %rcx
	movsbl	(%rcx), %edi
	cmpl	%edi, %eax
	jg	.LBB0_28
# BB#16:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_14 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$57, %ecx
	jg	.LBB0_28
# BB#17:                                # %if.then.43
                                        #   in Loop: Header=BB0_14 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	subl	$48, %ecx
	movslq	%ecx, %rax
	movq	%rax, -648(%rbp)
.LBB0_18:                               # %while.cond.47
                                        #   Parent Loop BB0_9 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	addq	$1, %rdx
	cmpq	-32(%rbp), %rdx
	movb	%cl, -778(%rbp)         # 1-byte Spill
	jae	.LBB0_21
# BB#19:                                # %land.lhs.true.51
                                        #   in Loop: Header=BB0_18 Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movl	$48, %eax
	movq	-48(%rbp), %rdx
	movsbl	1(%rdx), %esi
	cmpl	%esi, %eax
	movb	%cl, -778(%rbp)         # 1-byte Spill
	jg	.LBB0_21
# BB#20:                                # %land.rhs.55
                                        #   in Loop: Header=BB0_18 Depth=3
	movq	-48(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$57, %ecx
	setle	%dl
	movb	%dl, -778(%rbp)         # 1-byte Spill
.LBB0_21:                               # %land.end.60
                                        #   in Loop: Header=BB0_18 Depth=3
	movb	-778(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_22
	jmp	.LBB0_25
.LBB0_22:                               # %while.body.61
                                        #   in Loop: Header=BB0_18 Depth=3
	cmpq	$214748364, -648(%rbp)  # imm = 0xCCCCCCC
	jb	.LBB0_24
# BB#23:                                # %if.then.64
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB0_24:                               # %if.end.65
                                        #   in Loop: Header=BB0_18 Depth=3
	imulq	$10, -648(%rbp), %rax
	movq	-48(%rbp), %rcx
	movsbq	1(%rcx), %rcx
	addq	%rcx, %rax
	subq	$48, %rax
	movq	%rax, -648(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	1(%rax), %dl
	movq	-512(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -512(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB0_18
.LBB0_25:                               # %while.end
                                        #   in Loop: Header=BB0_14 Depth=2
	movq	-616(%rbp), %rax
	cmpq	-648(%rbp), %rax
	jge	.LBB0_27
# BB#26:                                # %if.then.74
                                        #   in Loop: Header=BB0_14 Depth=2
	movq	-648(%rbp), %rax
	movq	%rax, -616(%rbp)
.LBB0_27:                               # %if.end.75
                                        #   in Loop: Header=BB0_14 Depth=2
	jmp	.LBB0_34
.LBB0_28:                               # %if.else
                                        #   in Loop: Header=BB0_14 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	je	.LBB0_33
# BB#29:                                # %lor.lhs.false
                                        #   in Loop: Header=BB0_14 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	je	.LBB0_33
# BB#30:                                # %lor.lhs.false.82
                                        #   in Loop: Header=BB0_14 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$46, %ecx
	je	.LBB0_33
# BB#31:                                # %lor.lhs.false.86
                                        #   in Loop: Header=BB0_14 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$43, %ecx
	je	.LBB0_33
# BB#32:                                # %if.then.90
                                        #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_35
.LBB0_33:                               # %if.end.91
                                        #   in Loop: Header=BB0_14 Depth=2
	jmp	.LBB0_34
.LBB0_34:                               # %if.end.92
                                        #   in Loop: Header=BB0_14 Depth=2
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB0_14
.LBB0_35:                               # %while.end.94
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	$1, -636(%rbp)
.LBB0_36:                               # %for.cond
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-636(%rbp), %eax
	cmpl	-632(%rbp), %eax
	jg	.LBB0_53
# BB#37:                                # %for.body
                                        #   in Loop: Header=BB0_36 Depth=2
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	%rcx, %rax
	movslq	-636(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB0_39
# BB#38:                                # %if.then.103
                                        #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_53
.LBB0_39:                               # %if.end.104
                                        #   in Loop: Header=BB0_36 Depth=2
	cmpl	$1, -636(%rbp)
	jne	.LBB0_42
# BB#40:                                # %land.lhs.true.107
                                        #   in Loop: Header=BB0_36 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$108, %ecx
	jne	.LBB0_42
# BB#41:                                # %if.then.111
                                        #   in Loop: Header=BB0_36 Depth=2
	movl	$1, -628(%rbp)
.LBB0_42:                               # %if.end.112
                                        #   in Loop: Header=BB0_36 Depth=2
	cmpl	$1, -636(%rbp)
	jne	.LBB0_45
# BB#43:                                # %land.lhs.true.115
                                        #   in Loop: Header=BB0_36 Depth=2
	movq	-48(%rbp), %rdi
	movl	$.L.str.1, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB0_45
# BB#44:                                # %if.then.119
                                        #   in Loop: Header=BB0_36 Depth=2
	movl	$2, -628(%rbp)
.LBB0_45:                               # %if.end.120
                                        #   in Loop: Header=BB0_36 Depth=2
	cmpl	$1, -636(%rbp)
	jne	.LBB0_48
# BB#46:                                # %land.lhs.true.123
                                        #   in Loop: Header=BB0_36 Depth=2
	movq	-48(%rbp), %rdi
	movl	$.L.str.1, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB0_48
# BB#47:                                # %if.then.127
                                        #   in Loop: Header=BB0_36 Depth=2
	movl	$3, -628(%rbp)
.LBB0_48:                               # %if.end.128
                                        #   in Loop: Header=BB0_36 Depth=2
	cmpl	$1, -636(%rbp)
	jne	.LBB0_51
# BB#49:                                # %land.lhs.true.131
                                        #   in Loop: Header=BB0_36 Depth=2
	movq	-48(%rbp), %rdi
	movl	$.L.str.2, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB0_51
# BB#50:                                # %if.then.135
                                        #   in Loop: Header=BB0_36 Depth=2
	movl	$4, -628(%rbp)
.LBB0_51:                               # %if.end.136
                                        #   in Loop: Header=BB0_36 Depth=2
	jmp	.LBB0_52
.LBB0_52:                               # %for.inc
                                        #   in Loop: Header=BB0_36 Depth=2
	movl	-636(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -636(%rbp)
	jmp	.LBB0_36
.LBB0_53:                               # %for.end
                                        #   in Loop: Header=BB0_9 Depth=1
	movabsq	$9223372036854775449, %rax # imm = 0x7FFFFFFFFFFFFE99
	movl	-628(%rbp), %ecx
	movl	%ecx, %edx
	movsbl	doprnt.modifier_len(,%rdx), %ecx
	movl	%ecx, -636(%rbp)
	movq	-512(%rbp), %rdi
	movq	-48(%rbp), %rdx
	addq	$1, %rdx
	movslq	-636(%rbp), %rsi
	movq	%rsi, -792(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-792(%rbp), %rdx        # 8-byte Reload
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	memcpy
	movl	-636(%rbp), %ecx
	movq	-512(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -512(%rbp)
	movl	-636(%rbp), %ecx
	movq	-48(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-512(%rbp), %rax
	movb	$0, (%rax)
	movq	-800(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -616(%rbp)
	jbe	.LBB0_55
# BB#54:                                # %if.then.146
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB0_55:                               # %if.end.147
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-616(%rbp), %rax
	addq	$358, %rax              # imm = 0x166
	movq	%rax, -616(%rbp)
	movq	-616(%rbp), %rax
	cmpq	-472(%rbp), %rax
	jle	.LBB0_59
# BB#56:                                # %if.then.151
                                        #   in Loop: Header=BB0_9 Depth=1
	cmpq	$0, -488(%rbp)
	je	.LBB0_58
# BB#57:                                # %if.then.152
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-488(%rbp), %rdi
	callq	xfree
.LBB0_58:                               # %if.end.153
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-616(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movq	%rax, -480(%rbp)
	movq	-616(%rbp), %rax
	movq	%rax, -472(%rbp)
.LBB0_59:                               # %if.end.155
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	$0, -556(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, -48(%rbp)
	movsbl	(%rax), %edx
	movl	%edx, %esi
	subl	$37, %esi
	movl	%edx, -804(%rbp)        # 4-byte Spill
	movl	%esi, -808(%rbp)        # 4-byte Spill
	je	.LBB0_173
	jmp	.LBB0_207
.LBB0_207:                              # %if.end.155
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-804(%rbp), %eax        # 4-byte Reload
	subl	$83, %eax
	movl	%eax, -812(%rbp)        # 4-byte Spill
	je	.LBB0_107
	jmp	.LBB0_208
.LBB0_208:                              # %if.end.155
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-804(%rbp), %eax        # 4-byte Reload
	subl	$99, %eax
	movl	%eax, -816(%rbp)        # 4-byte Spill
	je	.LBB0_152
	jmp	.LBB0_209
.LBB0_209:                              # %if.end.155
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-804(%rbp), %eax        # 4-byte Reload
	subl	$100, %eax
	movl	%eax, -820(%rbp)        # 4-byte Spill
	je	.LBB0_61
	jmp	.LBB0_210
.LBB0_210:                              # %if.end.155
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-804(%rbp), %eax        # 4-byte Reload
	addl	$-101, %eax
	subl	$3, %eax
	movl	%eax, -824(%rbp)        # 4-byte Spill
	jb	.LBB0_103
	jmp	.LBB0_211
.LBB0_211:                              # %if.end.155
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-804(%rbp), %eax        # 4-byte Reload
	subl	$108, %eax
	movl	%eax, -828(%rbp)        # 4-byte Spill
	je	.LBB0_61
	jmp	.LBB0_212
.LBB0_212:                              # %if.end.155
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-804(%rbp), %eax        # 4-byte Reload
	subl	$111, %eax
	movl	%eax, -832(%rbp)        # 4-byte Spill
	je	.LBB0_84
	jmp	.LBB0_213
.LBB0_213:                              # %if.end.155
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-804(%rbp), %eax        # 4-byte Reload
	subl	$115, %eax
	movl	%eax, -836(%rbp)        # 4-byte Spill
	je	.LBB0_108
	jmp	.LBB0_214
.LBB0_214:                              # %if.end.155
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-804(%rbp), %eax        # 4-byte Reload
	subl	$120, %eax
	movl	%eax, -840(%rbp)        # 4-byte Spill
	je	.LBB0_84
	jmp	.LBB0_60
.LBB0_60:                               # %sw.default
	movabsq	$.L.str.3, %rdi
	movq	-552(%rbp), %rsi
	movb	$0, %al
	callq	error
.LBB0_61:                               # %sw.bb
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-628(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$4, %rdx
	movq	%rcx, -848(%rbp)        # 8-byte Spill
	movq	%rdx, -856(%rbp)        # 8-byte Spill
	ja	.LBB0_83
# BB#216:                               # %sw.bb
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-848(%rbp), %rax        # 8-byte Reload
	movq	.LJTI0_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_62:                               # %sw.bb.158
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -864(%rbp)        # 8-byte Spill
	movl	%ecx, -868(%rbp)        # 4-byte Spill
	ja	.LBB0_64
# BB#63:                                # %vaarg.in_reg
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-868(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-864(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -880(%rbp)        # 8-byte Spill
	jmp	.LBB0_65
.LBB0_64:                               # %vaarg.in_mem
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-864(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -880(%rbp)        # 8-byte Spill
.LBB0_65:                               # %vaarg.end
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-880(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, -652(%rbp)
	movq	-480(%rbp), %rdi
	movq	-552(%rbp), %rsi
	movl	-652(%rbp), %edx
	movb	$0, %al
	callq	sprintf
	movslq	%eax, %rsi
	movq	%rsi, -504(%rbp)
	jmp	.LBB0_83
.LBB0_66:                               # %sw.bb.161
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -888(%rbp)        # 8-byte Spill
	movl	%ecx, -892(%rbp)        # 4-byte Spill
	ja	.LBB0_68
# BB#67:                                # %vaarg.in_reg.166
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-892(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-888(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -904(%rbp)        # 8-byte Spill
	jmp	.LBB0_69
.LBB0_68:                               # %vaarg.in_mem.168
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-888(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -904(%rbp)        # 8-byte Spill
.LBB0_69:                               # %vaarg.end.172
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-904(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -664(%rbp)
	movq	-480(%rbp), %rdi
	movq	-552(%rbp), %rsi
	movq	-664(%rbp), %rdx
	movb	$0, %al
	callq	sprintf
	movslq	%eax, %rdx
	movq	%rdx, -504(%rbp)
	jmp	.LBB0_83
.LBB0_70:                               # %sw.bb.176
                                        #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_71
.LBB0_71:                               # %signed_pD_modifier
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -912(%rbp)        # 8-byte Spill
	movl	%ecx, -916(%rbp)        # 4-byte Spill
	ja	.LBB0_73
# BB#72:                                # %vaarg.in_reg.181
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-916(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-912(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -928(%rbp)        # 8-byte Spill
	jmp	.LBB0_74
.LBB0_73:                               # %vaarg.in_mem.183
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-912(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -928(%rbp)        # 8-byte Spill
.LBB0_74:                               # %vaarg.end.187
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-928(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -672(%rbp)
	movq	-480(%rbp), %rdi
	movq	-552(%rbp), %rsi
	movq	-672(%rbp), %rdx
	movb	$0, %al
	callq	sprintf
	movslq	%eax, %rdx
	movq	%rdx, -504(%rbp)
	jmp	.LBB0_83
.LBB0_75:                               # %sw.bb.191
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -936(%rbp)        # 8-byte Spill
	movl	%ecx, -940(%rbp)        # 4-byte Spill
	ja	.LBB0_77
# BB#76:                                # %vaarg.in_reg.196
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-940(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-936(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -952(%rbp)        # 8-byte Spill
	jmp	.LBB0_78
.LBB0_77:                               # %vaarg.in_mem.198
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-936(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -952(%rbp)        # 8-byte Spill
.LBB0_78:                               # %vaarg.end.202
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-952(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -680(%rbp)
	movq	-480(%rbp), %rdi
	movq	-552(%rbp), %rsi
	movq	-680(%rbp), %rdx
	movb	$0, %al
	callq	sprintf
	movslq	%eax, %rdx
	movq	%rdx, -504(%rbp)
	jmp	.LBB0_83
.LBB0_79:                               # %sw.bb.206
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -960(%rbp)        # 8-byte Spill
	movl	%ecx, -964(%rbp)        # 4-byte Spill
	ja	.LBB0_81
# BB#80:                                # %vaarg.in_reg.211
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-964(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-960(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -976(%rbp)        # 8-byte Spill
	jmp	.LBB0_82
.LBB0_81:                               # %vaarg.in_mem.213
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-960(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -976(%rbp)        # 8-byte Spill
.LBB0_82:                               # %vaarg.end.217
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-976(%rbp), %rax        # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -688(%rbp)
	movq	-480(%rbp), %rdi
	movq	-552(%rbp), %rsi
	movq	-688(%rbp), %rdx
	movb	$0, %al
	callq	sprintf
	movslq	%eax, %rdx
	movq	%rdx, -504(%rbp)
.LBB0_83:                               # %sw.epilog
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-480(%rbp), %rax
	movq	%rax, -512(%rbp)
	jmp	.LBB0_116
.LBB0_84:                               # %sw.bb.221
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-628(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$4, %rdx
	movq	%rcx, -984(%rbp)        # 8-byte Spill
	movq	%rdx, -992(%rbp)        # 8-byte Spill
	ja	.LBB0_102
# BB#215:                               # %sw.bb.221
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-984(%rbp), %rax        # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_85:                               # %sw.bb.222
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	movl	%ecx, -1004(%rbp)       # 4-byte Spill
	ja	.LBB0_87
# BB#86:                                # %vaarg.in_reg.227
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-1004(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1000(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1016(%rbp)       # 8-byte Spill
	jmp	.LBB0_88
.LBB0_87:                               # %vaarg.in_mem.229
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-1000(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1016(%rbp)       # 8-byte Spill
.LBB0_88:                               # %vaarg.end.233
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-1016(%rbp), %rax       # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, -692(%rbp)
	movq	-480(%rbp), %rdi
	movq	-552(%rbp), %rsi
	movl	-692(%rbp), %edx
	movb	$0, %al
	callq	sprintf
	movslq	%eax, %rsi
	movq	%rsi, -504(%rbp)
	jmp	.LBB0_102
.LBB0_89:                               # %sw.bb.237
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	movl	%ecx, -1028(%rbp)       # 4-byte Spill
	ja	.LBB0_91
# BB#90:                                # %vaarg.in_reg.242
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-1028(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1024(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1040(%rbp)       # 8-byte Spill
	jmp	.LBB0_92
.LBB0_91:                               # %vaarg.in_mem.244
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-1024(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1040(%rbp)       # 8-byte Spill
.LBB0_92:                               # %vaarg.end.248
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-1040(%rbp), %rax       # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -704(%rbp)
	movq	-480(%rbp), %rdi
	movq	-552(%rbp), %rsi
	movq	-704(%rbp), %rdx
	movb	$0, %al
	callq	sprintf
	movslq	%eax, %rdx
	movq	%rdx, -504(%rbp)
	jmp	.LBB0_102
.LBB0_93:                               # %sw.bb.252
                                        #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_71
.LBB0_94:                               # %sw.bb.253
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	movl	%ecx, -1052(%rbp)       # 4-byte Spill
	ja	.LBB0_96
# BB#95:                                # %vaarg.in_reg.258
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-1052(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1048(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1064(%rbp)       # 8-byte Spill
	jmp	.LBB0_97
.LBB0_96:                               # %vaarg.in_mem.260
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-1048(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1064(%rbp)       # 8-byte Spill
.LBB0_97:                               # %vaarg.end.264
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-1064(%rbp), %rax       # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -712(%rbp)
	movq	-480(%rbp), %rdi
	movq	-552(%rbp), %rsi
	movq	-712(%rbp), %rdx
	movb	$0, %al
	callq	sprintf
	movslq	%eax, %rdx
	movq	%rdx, -504(%rbp)
	jmp	.LBB0_102
.LBB0_98:                               # %sw.bb.268
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	movl	%ecx, -1076(%rbp)       # 4-byte Spill
	ja	.LBB0_100
# BB#99:                                # %vaarg.in_reg.273
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-1076(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1072(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1088(%rbp)       # 8-byte Spill
	jmp	.LBB0_101
.LBB0_100:                              # %vaarg.in_mem.275
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-1072(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1088(%rbp)       # 8-byte Spill
.LBB0_101:                              # %vaarg.end.279
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-1088(%rbp), %rax       # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -720(%rbp)
	movq	-480(%rbp), %rdi
	movq	-552(%rbp), %rsi
	movq	-720(%rbp), %rdx
	movb	$0, %al
	callq	sprintf
	movslq	%eax, %rdx
	movq	%rdx, -504(%rbp)
.LBB0_102:                              # %sw.epilog.283
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-480(%rbp), %rax
	movq	%rax, -512(%rbp)
	jmp	.LBB0_116
.LBB0_103:                              # %sw.bb.284
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movl	4(%rax), %edx
	cmpl	$160, %edx
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	movq	%rcx, -1104(%rbp)       # 8-byte Spill
	movl	%edx, -1108(%rbp)       # 4-byte Spill
	ja	.LBB0_105
# BB#104:                               # %vaarg.in_reg.285
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-1108(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1096(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$16, %eax
	movq	-1104(%rbp), %rsi       # 8-byte Reload
	movl	%eax, (%rsi)
	movq	%rcx, -1120(%rbp)       # 8-byte Spill
	jmp	.LBB0_106
.LBB0_105:                              # %vaarg.in_mem.287
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-1096(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1120(%rbp)       # 8-byte Spill
.LBB0_106:                              # %vaarg.end.291
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-1120(%rbp), %rax       # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -728(%rbp)
	movq	-480(%rbp), %rdi
	movq	-552(%rbp), %rsi
	movsd	-728(%rbp), %xmm0       # xmm0 = mem[0],zero
	movb	$1, %al
	callq	sprintf
	movslq	%eax, %rsi
	movq	%rsi, -504(%rbp)
	movq	-480(%rbp), %rsi
	movq	%rsi, -512(%rbp)
	jmp	.LBB0_116
.LBB0_107:                              # %sw.bb.295
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-512(%rbp), %rax
	movb	$115, -1(%rax)
.LBB0_108:                              # %sw.bb.297
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-552(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$115, %ecx
	je	.LBB0_110
# BB#109:                               # %if.then.302
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-552(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	atoi
	movl	%eax, -556(%rbp)
.LBB0_110:                              # %if.end.305
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	movl	%ecx, -1132(%rbp)       # 4-byte Spill
	ja	.LBB0_112
# BB#111:                               # %vaarg.in_reg.309
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-1132(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1128(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1144(%rbp)       # 8-byte Spill
	jmp	.LBB0_113
.LBB0_112:                              # %vaarg.in_mem.311
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-1128(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1144(%rbp)       # 8-byte Spill
.LBB0_113:                              # %vaarg.end.315
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-1144(%rbp), %rax       # 8-byte Reload
	movabsq	$2305843009213693951, %rcx # imm = 0x1FFFFFFFFFFFFFFF
	movq	(%rax), %rax
	movq	%rax, -512(%rbp)
	movq	-512(%rbp), %rdi
	movq	%rcx, -1152(%rbp)       # 8-byte Spill
	callq	strlen
	movq	%rax, -504(%rbp)
	movq	-1152(%rbp), %rax       # 8-byte Reload
	cmpq	-504(%rbp), %rax
	jge	.LBB0_115
# BB#114:                               # %if.then.320
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	error
.LBB0_115:                              # %if.end.321
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-512(%rbp), %rdi
	movq	-504(%rbp), %rsi
	callq	strwidth
	movq	%rax, -624(%rbp)
	jmp	.LBB0_119
.LBB0_116:                              # %doit
                                        #   in Loop: Header=BB0_9 Depth=1
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	-504(%rbp), %rax
	jge	.LBB0_118
# BB#117:                               # %if.then.325
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB0_118:                              # %if.end.326
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-504(%rbp), %rax
	movq	%rax, -624(%rbp)
.LBB0_119:                              # %doit1
                                        #   in Loop: Header=BB0_9 Depth=1
	cmpl	$0, -556(%rbp)
	jle	.LBB0_126
# BB#120:                               # %if.then.329
                                        #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_121
.LBB0_121:                              # %while.cond.330
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movslq	-556(%rbp), %rdx
	cmpq	-624(%rbp), %rdx
	movb	%cl, -1153(%rbp)        # 1-byte Spill
	jle	.LBB0_123
# BB#122:                               # %land.rhs.334
                                        #   in Loop: Header=BB0_121 Depth=2
	cmpq	$0, -16(%rbp)
	setg	%al
	movb	%al, -1153(%rbp)        # 1-byte Spill
.LBB0_123:                              # %land.end.337
                                        #   in Loop: Header=BB0_121 Depth=2
	movb	-1153(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_124
	jmp	.LBB0_125
.LBB0_124:                              # %while.body.338
                                        #   in Loop: Header=BB0_121 Depth=2
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$32, (%rax)
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	movl	-556(%rbp), %edx
	addl	$-1, %edx
	movl	%edx, -556(%rbp)
	jmp	.LBB0_121
.LBB0_125:                              # %while.end.342
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	$0, -556(%rbp)
.LBB0_126:                              # %if.end.343
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-504(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jle	.LBB0_144
# BB#127:                               # %if.then.346
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -504(%rbp)
.LBB0_128:                              # %do.body
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-504(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	movq	-512(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	andl	$192, %edx
	cmpl	$128, %edx
	je	.LBB0_141
# BB#129:                               # %if.then.352
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-504(%rbp), %rax
	movq	-512(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	andl	$128, %edx
	cmpl	$0, %edx
	jne	.LBB0_131
# BB#130:                               # %cond.true.357
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	$1, %eax
	movl	%eax, -1160(%rbp)       # 4-byte Spill
	jmp	.LBB0_138
.LBB0_131:                              # %cond.false.358
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-504(%rbp), %rax
	movq	-512(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	andl	$32, %edx
	cmpl	$0, %edx
	jne	.LBB0_133
# BB#132:                               # %cond.true.363
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	$2, %eax
	movl	%eax, -1164(%rbp)       # 4-byte Spill
	jmp	.LBB0_137
.LBB0_133:                              # %cond.false.364
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-504(%rbp), %rax
	movq	-512(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	andl	$16, %edx
	cmpl	$0, %edx
	jne	.LBB0_135
# BB#134:                               # %cond.true.369
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	$3, %eax
	movl	%eax, -1168(%rbp)       # 4-byte Spill
	jmp	.LBB0_136
.LBB0_135:                              # %cond.false.370
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	$5, %eax
	movl	$4, %ecx
	movq	-504(%rbp), %rdx
	movq	-512(%rbp), %rsi
	movsbl	(%rsi,%rdx), %edi
	andl	$8, %edi
	cmpl	$0, %edi
	setne	%r8b
	xorb	$-1, %r8b
	testb	$1, %r8b
	cmovnel	%ecx, %eax
	movl	%eax, -1168(%rbp)       # 4-byte Spill
.LBB0_136:                              # %cond.end.376
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-1168(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1164(%rbp)       # 4-byte Spill
.LBB0_137:                              # %cond.end.378
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-1164(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1160(%rbp)       # 4-byte Spill
.LBB0_138:                              # %cond.end.380
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-1160(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	subq	-504(%rbp), %rdx
	cmpq	%rdx, %rcx
	jg	.LBB0_140
# BB#139:                               # %if.then.386
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -504(%rbp)
.LBB0_140:                              # %if.end.387
                                        #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_143
.LBB0_141:                              # %if.end.388
                                        #   in Loop: Header=BB0_128 Depth=2
	jmp	.LBB0_142
.LBB0_142:                              # %do.cond
                                        #   in Loop: Header=BB0_128 Depth=2
	cmpq	$0, -504(%rbp)
	jne	.LBB0_128
.LBB0_143:                              # %do.end
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-56(%rbp), %rdi
	movq	-512(%rbp), %rsi
	movq	-504(%rbp), %rdx
	callq	memcpy
	movq	-504(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movb	$0, (%rsi,%rdx)
	movq	-16(%rbp), %rdx
	addq	-56(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movq	$0, -16(%rbp)
	jmp	.LBB0_9
.LBB0_144:                              # %if.end.393
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-56(%rbp), %rdi
	movq	-512(%rbp), %rsi
	movq	-504(%rbp), %rdx
	callq	memcpy
	movq	-504(%rbp), %rdx
	addq	-56(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movq	-504(%rbp), %rdx
	movq	-16(%rbp), %rsi
	subq	%rdx, %rsi
	movq	%rsi, -16(%rbp)
	cmpl	$0, -556(%rbp)
	jge	.LBB0_151
# BB#145:                               # %if.then.398
                                        #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_146
.LBB0_146:                              # %while.cond.399
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	xorl	%eax, %eax
	movl	%eax, %edx
	movslq	-556(%rbp), %rsi
	subq	-624(%rbp), %rdx
	cmpq	%rdx, %rsi
	movb	%cl, -1169(%rbp)        # 1-byte Spill
	jge	.LBB0_148
# BB#147:                               # %land.rhs.404
                                        #   in Loop: Header=BB0_146 Depth=2
	cmpq	$0, -16(%rbp)
	setg	%al
	movb	%al, -1169(%rbp)        # 1-byte Spill
.LBB0_148:                              # %land.end.407
                                        #   in Loop: Header=BB0_146 Depth=2
	movb	-1169(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_149
	jmp	.LBB0_150
.LBB0_149:                              # %while.body.408
                                        #   in Loop: Header=BB0_146 Depth=2
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$32, (%rax)
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	movl	-556(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -556(%rbp)
	jmp	.LBB0_146
.LBB0_150:                              # %while.end.412
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	$0, -556(%rbp)
.LBB0_151:                              # %if.end.413
                                        #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_9
.LBB0_152:                              # %sw.bb.414
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	movl	%ecx, -1188(%rbp)       # 4-byte Spill
	ja	.LBB0_154
# BB#153:                               # %vaarg.in_reg.418
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-1188(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1184(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1200(%rbp)       # 8-byte Spill
	jmp	.LBB0_155
.LBB0_154:                              # %vaarg.in_mem.420
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-1184(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1200(%rbp)       # 8-byte Spill
.LBB0_155:                              # %vaarg.end.424
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-1200(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movl	(%rax), %edx
	movl	%edx, -732(%rbp)
	testb	$1, %cl
	jne	.LBB0_156
	jmp	.LBB0_157
.LBB0_156:                              # %cond.true.426
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-732(%rbp), %eax
	addl	$0, %eax
	cmpl	$127, %eax
	jbe	.LBB0_158
	jmp	.LBB0_159
.LBB0_157:                              # %cond.false.430
                                        #   in Loop: Header=BB0_9 Depth=1
	movslq	-732(%rbp), %rax
	addq	$0, %rax
	cmpq	$127, %rax
	ja	.LBB0_159
.LBB0_158:                              # %cond.true.435
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	$1, %eax
	movl	-732(%rbp), %ecx
	movb	%cl, %dl
	movb	%dl, -562(%rbp)
	movl	%eax, -1204(%rbp)       # 4-byte Spill
	jmp	.LBB0_170
.LBB0_159:                              # %cond.false.439
                                        #   in Loop: Header=BB0_9 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB0_160
	jmp	.LBB0_161
.LBB0_160:                              # %cond.true.440
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-732(%rbp), %eax
	addl	$0, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jbe	.LBB0_162
	jmp	.LBB0_163
.LBB0_161:                              # %cond.false.444
                                        #   in Loop: Header=BB0_9 Depth=1
	movslq	-732(%rbp), %rax
	addq	$0, %rax
	cmpq	$2047, %rax             # imm = 0x7FF
	ja	.LBB0_163
.LBB0_162:                              # %cond.true.449
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	$2, %eax
	movl	-732(%rbp), %ecx
	sarl	$6, %ecx
	orl	$192, %ecx
	movb	%cl, %dl
	movb	%dl, -562(%rbp)
	movl	-732(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -561(%rbp)
	movl	%eax, -1208(%rbp)       # 4-byte Spill
	jmp	.LBB0_169
.LBB0_163:                              # %cond.false.458
                                        #   in Loop: Header=BB0_9 Depth=1
	movb	$1, %al
	testb	$1, %al
	jne	.LBB0_164
	jmp	.LBB0_165
.LBB0_164:                              # %cond.true.459
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-732(%rbp), %eax
	addl	$0, %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	jbe	.LBB0_166
	jmp	.LBB0_167
.LBB0_165:                              # %cond.false.463
                                        #   in Loop: Header=BB0_9 Depth=1
	movslq	-732(%rbp), %rax
	addq	$0, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	ja	.LBB0_167
.LBB0_166:                              # %cond.true.468
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	$3, %eax
	movl	-732(%rbp), %ecx
	sarl	$12, %ecx
	orl	$224, %ecx
	movb	%cl, %dl
	movb	%dl, -562(%rbp)
	movl	-732(%rbp), %ecx
	sarl	$6, %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -561(%rbp)
	movl	-732(%rbp), %ecx
	andl	$63, %ecx
	orl	$128, %ecx
	movb	%cl, %dl
	movb	%dl, -560(%rbp)
	movl	%eax, -1212(%rbp)       # 4-byte Spill
	jmp	.LBB0_168
.LBB0_167:                              # %cond.false.485
                                        #   in Loop: Header=BB0_9 Depth=1
	leaq	-562(%rbp), %rsi
	movl	-732(%rbp), %edi
	callq	char_string
	movl	%eax, -1212(%rbp)       # 4-byte Spill
.LBB0_168:                              # %cond.end.488
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-1212(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1208(%rbp)       # 4-byte Spill
.LBB0_169:                              # %cond.end.490
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-1208(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1204(%rbp)       # 4-byte Spill
.LBB0_170:                              # %cond.end.492
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-1204(%rbp), %eax       # 4-byte Reload
	leaq	-562(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, -504(%rbp)
	movq	%rcx, -512(%rbp)
	movq	-504(%rbp), %rcx
	movq	-512(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
	movq	-512(%rbp), %rdi
	movq	-504(%rbp), %rsi
	callq	strwidth
	movq	%rax, -624(%rbp)
	movq	-552(%rbp), %rax
	movsbl	1(%rax), %r8d
	cmpl	$99, %r8d
	je	.LBB0_172
# BB#171:                               # %if.then.502
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-552(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	atoi
	movl	%eax, -556(%rbp)
.LBB0_172:                              # %if.end.505
                                        #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_119
.LBB0_173:                              # %sw.bb.506
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
# BB#174:                               # %sw.epilog.508
                                        #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_175
.LBB0_175:                              # %if.end.509
                                        #   in Loop: Header=BB0_9 Depth=1
	cmpl	$0, -492(%rbp)
	jne	.LBB0_178
# BB#176:                               # %land.lhs.true.512
                                        #   in Loop: Header=BB0_9 Depth=1
	movsbl	-601(%rbp), %eax
	cmpl	$96, %eax
	jne	.LBB0_178
# BB#177:                               # %if.then.516
                                        #   in Loop: Header=BB0_9 Depth=1
	movabsq	$.L.str.5, %rax
	movq	%rax, -744(%rbp)
	movq	$3, -752(%rbp)
	jmp	.LBB0_192
.LBB0_178:                              # %if.else.517
                                        #   in Loop: Header=BB0_9 Depth=1
	cmpl	$0, -492(%rbp)
	jne	.LBB0_181
# BB#179:                               # %land.lhs.true.520
                                        #   in Loop: Header=BB0_9 Depth=1
	movsbl	-601(%rbp), %eax
	cmpl	$39, %eax
	jne	.LBB0_181
# BB#180:                               # %if.then.524
                                        #   in Loop: Header=BB0_9 Depth=1
	movabsq	$.L.str.6, %rax
	movq	%rax, -744(%rbp)
	movq	$3, -752(%rbp)
	jmp	.LBB0_191
.LBB0_181:                              # %if.else.525
                                        #   in Loop: Header=BB0_9 Depth=1
	cmpl	$2, -492(%rbp)
	jne	.LBB0_184
# BB#182:                               # %land.lhs.true.528
                                        #   in Loop: Header=BB0_9 Depth=1
	movsbl	-601(%rbp), %eax
	cmpl	$96, %eax
	jne	.LBB0_184
# BB#183:                               # %if.then.532
                                        #   in Loop: Header=BB0_9 Depth=1
	movabsq	$.L.str.7, %rax
	movq	%rax, -744(%rbp)
	movq	$1, -752(%rbp)
	jmp	.LBB0_190
.LBB0_184:                              # %if.else.533
                                        #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_185
.LBB0_185:                              # %while.cond.534
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	cmpq	-32(%rbp), %rdx
	movb	%cl, -1213(%rbp)        # 1-byte Spill
	jae	.LBB0_187
# BB#186:                               # %land.rhs.537
                                        #   in Loop: Header=BB0_185 Depth=2
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	andl	$192, %ecx
	cmpl	$128, %ecx
	setne	%dl
	xorb	$-1, %dl
	movb	%dl, -1213(%rbp)        # 1-byte Spill
.LBB0_187:                              # %land.end.543
                                        #   in Loop: Header=BB0_185 Depth=2
	movb	-1213(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_188
	jmp	.LBB0_189
.LBB0_188:                              # %while.body.544
                                        #   in Loop: Header=BB0_185 Depth=2
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB0_185
.LBB0_189:                              # %while.end.546
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-600(%rbp), %rax
	movq	%rax, -744(%rbp)
	movq	-48(%rbp), %rax
	movq	-600(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -752(%rbp)
.LBB0_190:                              # %if.end.550
                                        #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_191
.LBB0_191:                              # %if.end.551
                                        #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_192
.LBB0_192:                              # %if.end.552
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-16(%rbp), %rax
	cmpq	-752(%rbp), %rax
	jge	.LBB0_197
# BB#193:                               # %if.then.555
                                        #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_194
.LBB0_194:                              # %do.body.556
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	$0, (%rax)
# BB#195:                               # %do.cond.558
                                        #   in Loop: Header=BB0_194 Depth=2
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB0_194
# BB#196:                               # %do.end.562
                                        #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_201
.LBB0_197:                              # %if.else.563
                                        #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_198
.LBB0_198:                              # %do.body.564
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-744(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -744(%rbp)
	movb	(%rax), %dl
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	%dl, (%rax)
# BB#199:                               # %do.cond.567
                                        #   in Loop: Header=BB0_198 Depth=2
	movq	-752(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -752(%rbp)
	cmpq	$0, %rax
	jne	.LBB0_198
# BB#200:                               # %do.end.571
                                        #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_201
.LBB0_201:                              # %if.end.572
                                        #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_9
.LBB0_202:                              # %while.end.573
	movq	-488(%rbp), %rdi
	callq	xfree
	movq	-56(%rbp), %rdi
	movb	$0, (%rdi)
# BB#203:                               # %do.body.574
	testb	$1, -585(%rbp)
	je	.LBB0_205
# BB#204:                               # %if.then.576
	xorl	%edi, %edi
	movb	$0, -585(%rbp)
	movq	-584(%rbp), %rax
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1224(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -1232(%rbp)       # 8-byte Spill
.LBB0_205:                              # %if.end.579
	jmp	.LBB0_206
.LBB0_206:                              # %do.end.581
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	doprnt, .Lfunc_end0-doprnt
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_85
	.quad	.LBB0_89
	.quad	.LBB0_93
	.quad	.LBB0_94
	.quad	.LBB0_98
.LJTI0_1:
	.quad	.LBB0_62
	.quad	.LBB0_66
	.quad	.LBB0_70
	.quad	.LBB0_75
	.quad	.LBB0_79

	.text
	.globl	esprintf
	.align	16, 0x90
	.type	esprintf,@function
esprintf:                               # @esprintf
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
	je	.LBB1_2
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
.LBB1_2:                                # %entry
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, -184(%rbp)
	movq	-376(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -192(%rbp)
	movq	-384(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -200(%rbp)
	movq	-392(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -208(%rbp)
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	-360(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	movq	%rdi, -16(%rbp)
	leaq	-224(%rbp), %rdi
	movq	%rdi, -32(%rbp)
	leaq	16(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	movl	$48, -44(%rbp)
	movl	$16, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movabsq	$9223372036854775807, %rsi # imm = 0x7FFFFFFFFFFFFFFF
	leaq	-48(%rbp), %r8
	callq	doprnt
	movq	%rax, -24(%rbp)
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end1:
	.size	esprintf, .Lfunc_end1-esprintf
	.cfi_endproc

	.globl	evxprintf
	.align	16, 0x90
	.type	evxprintf,@function
evxprintf:                              # @evxprintf
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-80(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	%rdx, %rdi
	movq	16(%rsi), %r8
	movq	%r8, 16(%rdi)
	movups	(%rsi), %xmm0
	movups	%xmm0, (%rdi)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-40(%rbp), %r8
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%r8, %rdx
	movq	-88(%rbp), %r8          # 8-byte Reload
	callq	doprnt
	leaq	-80(%rbp), %rcx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	subq	$1, %rdx
	cmpq	%rdx, %rax
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jge	.LBB2_3
# BB#2:                                 # %if.then
	movq	-56(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.LBB2_3:                                # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB2_5
# BB#4:                                 # %if.then.5
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	xfree
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
.LBB2_5:                                # %if.end.6
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-104(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-112(%rbp), %r8         # 8-byte Reload
	callq	xpalloc
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB2_1
.Lfunc_end2:
	.size	evxprintf, .Lfunc_end2-evxprintf
	.cfi_endproc

	.type	doprnt.modifier_len,@object # @doprnt.modifier_len
	.section	.rodata,"a",@progbits
doprnt.modifier_len:
	.ascii	"\000\001\001\001\001"
	.size	doprnt.modifier_len, 5

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Format width or precision too large"
	.size	.L.str, 36

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"l"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"ld"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Invalid format operation %s"
	.size	.L.str.3, 28

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"String for %%s or %%S format is too long"
	.size	.L.str.4, 41

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"\342\200\230"
	.size	.L.str.5, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\342\200\231"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"'"
	.size	.L.str.7, 2


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
