	.text
	.file	"gxfcopy.bc"
	.globl	gs_copy_font
	.align	16, 0x90
	.type	gs_copy_font,@function
gs_copy_font:                           # @gs_copy_font
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
	subq	$248, %rsp
.Ltmp6:
	.cfi_def_cfa_offset 304
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
	movl	%r8d, %r13d
	movq	%rcx, %r15
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movq	%rsi, %rbp
	movq	%rdi, %r14
	movq	16(%r14), %rdi
	movq	%r14, %rsi
	callq	*128(%rdi)
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	gs_struct_type_size
	movl	128(%r14), %edx
	movl	$-15, %edi
	cmpl	$10, %edx
	jg	.LBB0_4
# BB#1:                                 # %entry
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	movl	%eax, 36(%rsp)          # 4-byte Spill
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	leal	-1(%rdx), %ecx
	cmpl	$2, %ecx
	jae	.LBB0_2
# BB#7:                                 # %sw.bb.4
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movl	$0, 84(%rsp)
	movl	$-1, %r15d
	leaq	84(%rsp), %rbp
	leaq	72(%rsp), %r12
	movq	64(%rsp), %rbx          # 8-byte Reload
	.align	16, 0x90
.LBB0_8:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%r12, %rcx
	callq	*216(%r14)
	incl	%r15d
	cmpl	$0, 84(%rsp)
	jne	.LBB0_8
# BB#9:                                 # %while.end
	cmpl	%r13d, %r15d
	movl	%r15d, %eax
	cmoval	%r13d, %eax
	cmpl	$-1, %r13d
	cmovel	%r15d, %eax
	cmpl	$257, %eax              # imm = 0x101
	movl	$257, %ecx              # imm = 0x101
	cmovael	%eax, %ecx
	leal	(%rcx,%rcx,2), %eax
	xorl	%ecx, %ecx
	cmpl	$516, %eax              # imm = 0x204
	movl	$-15, %edi
	jb	.LBB0_11
# BB#10:                                # %for.inc
	movl	$1, %ecx
	cmpl	$719, %eax              # imm = 0x2CF
	jbe	.LBB0_11
# BB#64:                                # %for.inc.1
	movl	$2, %ecx
	cmpl	$1044, %eax             # imm = 0x414
	jb	.LBB0_11
# BB#65:                                # %for.inc.2
	movl	$3, %ecx
	cmpl	$1540, %eax             # imm = 0x604
	jb	.LBB0_11
# BB#66:                                # %for.inc.3
	movl	$4, %ecx
	cmpl	$2064, %eax             # imm = 0x810
	jb	.LBB0_11
# BB#67:                                # %for.inc.4
	movl	$5, %ecx
	cmpl	$4108, %eax             # imm = 0x100C
	jb	.LBB0_11
# BB#68:                                # %for.inc.5
	movl	$6, %ecx
	cmpl	$6160, %eax             # imm = 0x1810
	jb	.LBB0_11
# BB#69:                                # %for.inc.6
	movl	$7, %ecx
	cmpl	$8200, %eax             # imm = 0x2008
	jb	.LBB0_11
# BB#70:                                # %for.inc.7
	movl	$8, %ecx
	cmpl	$10204, %eax            # imm = 0x27DC
	jb	.LBB0_11
# BB#71:                                # %for.inc.8
	movl	$9, %ecx
	cmpl	$12204, %eax            # imm = 0x2FAC
	jb	.LBB0_11
# BB#72:                                # %for.inc.9
	movl	$10, %ecx
	cmpl	$14220, %eax            # imm = 0x378C
	jb	.LBB0_11
# BB#73:                                # %for.inc.10
	movl	$11, %ecx
	cmpl	$16420, %eax            # imm = 0x4024
	jb	.LBB0_11
# BB#74:                                # %for.inc.11
	movl	$12, %ecx
	cmpl	$20016, %eax            # imm = 0x4E30
	jb	.LBB0_11
# BB#75:                                # %for.inc.12
	movl	$13, %ecx
	cmpl	$24016, %eax            # imm = 0x5DD0
	jb	.LBB0_11
# BB#76:                                # %for.inc.13
	movl	$14, %ecx
	cmpl	$28020, %eax            # imm = 0x6D74
	jb	.LBB0_11
# BB#77:                                # %for.inc.14
	movl	$15, %ecx
	cmpl	$32824, %eax            # imm = 0x8038
	jb	.LBB0_11
# BB#78:                                # %for.inc.15
	movl	$16, %ecx
	cmpl	$40216, %eax            # imm = 0x9D18
	jb	.LBB0_11
# BB#79:                                # %for.inc.16
	movl	$17, %ecx
	cmpl	$53004, %eax            # imm = 0xCF0C
	jb	.LBB0_11
# BB#80:                                # %for.inc.17
	movl	$18, %ecx
	cmpl	$65544, %eax            # imm = 0x10008
	jb	.LBB0_11
# BB#81:                                # %for.inc.18
	movl	$19, %ecx
	cmpl	$97716, %eax            # imm = 0x17DB4
	jb	.LBB0_11
# BB#82:                                # %for.inc.19
	movl	$20, %ecx
	cmpl	$131076, %eax           # imm = 0x20004
	jb	.LBB0_11
# BB#83:                                # %for.inc.20
	movl	$21, %ecx
	cmpl	$170460, %eax           # imm = 0x299DC
	jb	.LBB0_11
# BB#84:                                # %for.inc.21
	movl	$22, %ecx
	cmpl	$255675, %eax           # imm = 0x3E6BB
	ja	.LBB0_63
.LBB0_11:                               # %cleanup.thread
	movl	$copied_procs_type1, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	some_primes(,%rcx,4), %r15d
	movl	$1, %r12d
	jmp	.LBB0_13
.LBB0_4:                                # %entry
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movl	%eax, 36(%rsp)          # 4-byte Spill
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	cmpl	$11, %edx
	jne	.LBB0_5
# BB#12:                                # %sw.bb.23
	movl	$copied_procs_cid2, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	596(%r14), %r15d
	xorl	%r12d, %r12d
	movq	64(%rsp), %rbx          # 8-byte Reload
	jmp	.LBB0_13
.LBB0_2:                                # %entry
	movq	%r15, 16(%rsp)          # 8-byte Spill
	cmpl	$9, %edx
	movq	64(%rsp), %rbx          # 8-byte Reload
	jne	.LBB0_63
# BB#3:                                 # %sw.bb.22
	movl	492(%r14), %r15d
	movl	$copied_procs_cid0, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	incl	%r15d
	xorl	%r12d, %r12d
	jmp	.LBB0_13
.LBB0_5:                                # %entry
	cmpl	$42, %edx
	movq	64(%rsp), %rbx          # 8-byte Reload
	jne	.LBB0_63
# BB#6:                                 # %sw.bb
	movl	$copied_procs_type42, %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	596(%r14), %r15d
	movl	$1, %r12d
.LBB0_13:                               # %sw.epilog
	leaq	88(%rsp), %rbp
	xorl	%esi, %esi
	movl	$160, %edx
	movq	%rbp, %rdi
	callq	memset
	movl	$-1, 128(%rsp)
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	%r14, %rdi
	movq	%rbp, %rcx
	callq	*184(%r14)
	movl	%eax, %edi
	testl	%edi, %edi
	jns	.LBB0_15
# BB#14:                                # %land.lhs.true.30
	cmpl	$11, 128(%r14)
	jne	.LBB0_63
.LBB0_15:                               # %if.end.34
	movl	$st_gs_copied_glyph_element, %edx
	movl	$.L.str, %ecx
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	*104(%rbx)
	movq	%rax, %rbp
	xorl	%eax, %eax
	testl	%r12d, %r12d
	je	.LBB0_17
# BB#16:                                # %if.then.38
	movl	$st_gs_copied_glyph_name_element, %edx
	movl	$.L.str.1, %ecx
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	*104(%rbx)
.LBB0_17:                               # %if.end.42
	movq	%r15, 8(%rsp)           # 8-byte Spill
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movl	$.L.str.2, %edx
	movq	%rbx, %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	callq	*72(%rbx)
	movq	%rax, %r15
	movl	$st_gs_copied_font_data, %esi
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	callq	*72(%rbx)
	movq	%rax, %r13
	testq	%r13, %r13
	je	.LBB0_19
# BB#18:                                # %if.then.48
	xorl	%esi, %esi
	movl	$312, %edx              # imm = 0x138
	movq	%r13, %rdi
	callq	memset
.LBB0_19:                               # %if.end.50
	movl	$-25, %edi
	testq	%rbp, %rbp
	je	.LBB0_20
# BB#32:                                # %lor.lhs.false
	testl	%r12d, %r12d
	setne	%al
	cmpq	$0, 64(%rsp)            # 8-byte Folded Reload
	sete	%cl
	testb	%cl, %al
	jne	.LBB0_20
# BB#33:                                # %lor.lhs.false
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	testq	%r15, %r15
	je	.LBB0_21
# BB#34:                                # %lor.lhs.false
	testq	%r13, %r13
	je	.LBB0_21
# BB#35:                                # %if.end.60
	movq	%r15, 56(%rsp)          # 8-byte Spill
	leaq	88(%rsp), %rsi
	movl	$160, %edx
	movq	%r13, %rdi
	callq	memcpy
	movq	24(%r14), %rax
	movq	%rax, 296(%r13)
	movq	88(%r13), %rbp
	movl	96(%r13), %r15d
	testq	%rbp, %rbp
	movl	$0, %r12d
	je	.LBB0_38
# BB#36:                                # %if.end.i
	movl	$.L.str.4, %edx
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	*136(%rbx)
	movq	%rax, 88(%r13)
	movl	$-25, %r12d
	testq	%rax, %rax
	je	.LBB0_38
# BB#37:                                # %if.end.6.i
	movq	%rax, %rdi
	movq	%rbp, %rsi
	movq	%r15, %rdx
	callq	memcpy
	xorl	%r12d, %r12d
.LBB0_38:                               # %copy_string.exit
	movq	104(%r13), %rbp
	movl	112(%r13), %esi
	testq	%rbp, %rbp
	je	.LBB0_41
# BB#39:                                # %if.end.i.148
	movl	$.L.str.5, %edx
	movq	%rbx, %rdi
	movq	%rsi, (%rsp)            # 8-byte Spill
	callq	*136(%rbx)
	movq	%rax, 104(%r13)
	movl	$-25, %r15d
	testq	%rax, %rax
	je	.LBB0_42
# BB#40:                                # %if.end.6.i.151
	movq	%rax, %rdi
	movq	%rbp, %rsi
	movq	(%rsp), %rdx            # 8-byte Reload
	callq	memcpy
.LBB0_41:                               # %copy_string.exit153
	xorl	%r15d, %r15d
.LBB0_42:                               # %copy_string.exit153
	orl	%r12d, %r15d
	movq	120(%r13), %rbp
	movl	128(%r13), %r12d
	testq	%rbp, %rbp
	movl	$0, %ecx
	je	.LBB0_45
# BB#43:                                # %if.end.i.160
	movl	$.L.str.6, %edx
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	*136(%rbx)
	movq	%rax, 120(%r13)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB0_45
# BB#44:                                # %if.end.6.i.163
	movq	%rax, %rdi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	callq	memcpy
	xorl	%ecx, %ecx
.LBB0_45:                               # %copy_string.exit165
	orl	%ecx, %r15d
	movq	136(%r13), %rbp
	movl	144(%r13), %r12d
	testq	%rbp, %rbp
	je	.LBB0_48
# BB#46:                                # %if.end.i.172
	movl	$.L.str.7, %edx
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	*136(%rbx)
	movq	%rax, 136(%r13)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB0_49
# BB#47:                                # %if.end.6.i.175
	movq	%rax, %rdi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	callq	memcpy
.LBB0_48:                               # %copy_string.exit177
	xorl	%ecx, %ecx
.LBB0_49:                               # %copy_string.exit177
	movl	%r15d, %edi
	orl	%ecx, %edi
	movq	56(%rsp), %r15          # 8-byte Reload
	js	.LBB0_21
# BB#50:                                # %if.end.75
	movl	36(%rsp), %edx          # 4-byte Reload
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	memcpy
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%r15)
	movq	%rbx, 16(%r15)
	movl	$0, 32(%r15)
	leaq	40(%r15), %rdi
	movq	%rbx, %rsi
	callq	gs_notify_init
	movq	%r15, 64(%r15)
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	16(%rcx), %rax
	movq	%rax, 96(%r15)
	movups	(%rcx), %xmm0
	movups	%xmm0, 80(%r15)
	movq	%r13, 72(%r15)
	movq	copied_font_procs+96(%rip), %rax
	movq	%rax, 264(%r15)
	movups	copied_font_procs+80(%rip), %xmm0
	movups	%xmm0, 248(%r15)
	movups	copied_font_procs+64(%rip), %xmm0
	movups	%xmm0, 232(%r15)
	movups	copied_font_procs+48(%rip), %xmm0
	movups	%xmm0, 216(%r15)
	movups	copied_font_procs+32(%rip), %xmm0
	movups	%xmm0, 200(%r15)
	movups	copied_font_procs+16(%rip), %xmm0
	movups	%xmm0, 184(%r15)
	movups	copied_font_procs(%rip), %xmm0
	movups	%xmm0, 168(%r15)
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rax, %rcx
	movq	32(%rcx), %rax
	movq	%rax, 200(%r15)
	movups	40(%rcx), %xmm0
	movups	%xmm0, 224(%r15)
	movq	$0, 424(%r15)
	movq	$0, 432(%r15)
	movl	$-1, 440(%r15)
	movq	%r15, %rdi
	addq	$408, %rdi              # imm = 0x198
	movl	$.L.str.8, %edx
	movq	%rbx, %rsi
	callq	uid_copy
	movl	%eax, %edi
	testl	%edi, %edi
	js	.LBB0_21
# BB#51:                                # %cleanup.cont.92
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rax, 160(%r13)
	movq	8(%rsp), %r15           # 8-byte Reload
	movl	%r15d, %eax
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %r12
	xorl	%esi, %esi
	movq	48(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movq	%r12, %rdx
	callq	memset
	movq	64(%rsp), %rdi          # 8-byte Reload
	testq	%rdi, %rdi
	movq	%rbp, 168(%r13)
	movl	%r15d, 176(%r13)
	movl	$0, 180(%r13)
	movl	$0, 304(%r13)
	je	.LBB0_59
# BB#52:                                # %if.then.100
	xorl	%esi, %esi
	movq	%rdi, %rbp
	movq	%r12, %rdx
	callq	memset
	movq	%rbp, %rdi
	movq	%rdi, 192(%r13)
	testl	%r15d, %r15d
	movq	16(%rsp), %r12          # 8-byte Reload
	je	.LBB0_60
# BB#53:                                # %for.body.113.preheader
	leal	-1(%r15), %eax
	xorl	%ecx, %ecx
	testb	$7, %r15b
	je	.LBB0_56
# BB#54:                                # %for.body.113.prol.preheader
	movl	%r15d, %edx
	andl	$7, %edx
	xorl	%ecx, %ecx
	movq	%rdi, %rsi
	.align	16, 0x90
.LBB0_55:                               # %for.body.113.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	$2147483647, (%rsi)     # imm = 0x7FFFFFFF
	incq	%rcx
	addq	$24, %rsi
	cmpl	%ecx, %edx
	jne	.LBB0_55
.LBB0_56:                               # %for.body.113.preheader.split
	cmpl	$7, %eax
	jb	.LBB0_60
# BB#57:                                # %for.body.113.preheader.split.split
	subl	%ecx, %r15d
	leaq	(%rcx,%rcx,2), %rax
	leaq	(%rdi,%rax,8), %rax
	.align	16, 0x90
.LBB0_58:                               # %for.body.113
                                        # =>This Inner Loop Header: Depth=1
	movq	$2147483647, (%rax)     # imm = 0x7FFFFFFF
	movq	$2147483647, 24(%rax)   # imm = 0x7FFFFFFF
	movq	$2147483647, 48(%rax)   # imm = 0x7FFFFFFF
	movq	$2147483647, 72(%rax)   # imm = 0x7FFFFFFF
	movq	$2147483647, 96(%rax)   # imm = 0x7FFFFFFF
	movq	$2147483647, 120(%rax)  # imm = 0x7FFFFFFF
	movq	$2147483647, 144(%rax)  # imm = 0x7FFFFFFF
	movq	$2147483647, 168(%rax)  # imm = 0x7FFFFFFF
	addq	$192, %rax
	addl	$-8, %r15d
	jne	.LBB0_58
	jmp	.LBB0_60
.LBB0_20:
	movq	%rbp, 48(%rsp)          # 8-byte Spill
.LBB0_21:                               # %fail
	movl	%edi, %r14d
	testq	%r13, %r13
	je	.LBB0_31
# BB#22:                                # %if.then.133
	movq	136(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB0_24
# BB#23:                                # %if.then.i
	movl	144(%r13), %edx
	movl	$.L.str.7, %ecx
	movq	%rbx, %rdi
	callq	gs_free_const_string
.LBB0_24:                               # %uncopy_string.exit
	movq	120(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB0_26
# BB#25:                                # %if.then.i.183
	movl	128(%r13), %edx
	movl	$.L.str.6, %ecx
	movq	%rbx, %rdi
	callq	gs_free_const_string
.LBB0_26:                               # %uncopy_string.exit185
	movq	104(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB0_28
# BB#27:                                # %if.then.i.189
	movl	112(%r13), %edx
	movl	$.L.str.5, %ecx
	movq	%rbx, %rdi
	callq	gs_free_const_string
.LBB0_28:                               # %uncopy_string.exit191
	movq	88(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB0_30
# BB#29:                                # %if.then.i.195
	movl	96(%r13), %edx
	movl	$.L.str.4, %ecx
	movq	%rbx, %rdi
	callq	gs_free_const_string
.LBB0_30:                               # %uncopy_string.exit197
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	*24(%rbx)
.LBB0_31:                               # %if.end.143
	movl	$.L.str.2, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	*24(%rbx)
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	movq	64(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rbx)
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	movq	48(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rbx)
	movl	%r14d, %edi
.LBB0_63:                               # %cleanup.150
	movl	%edi, %eax
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_59:                               # %if.end.120.critedge
	movq	$0, 192(%r13)
	movq	16(%rsp), %r12          # 8-byte Reload
.LBB0_60:                               # %if.end.120
	movq	%rdi, 64(%rsp)          # 8-byte Spill
	movq	%r14, %rdi
	movq	56(%rsp), %r15          # 8-byte Reload
	movq	%r15, %rsi
	movq	24(%rsp), %rax          # 8-byte Reload
	callq	*(%rax)
	movl	%eax, %edi
	testl	%edi, %edi
	js	.LBB0_21
# BB#61:                                # %if.end.125
	movq	%r15, (%r12)
	movq	184(%r13), %rsi
	cmpq	$2147483647, %rsi       # imm = 0x7FFFFFFF
	je	.LBB0_63
# BB#62:                                # %if.then.128
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	gs_copy_glyph_options
	movl	%eax, %edi
	jmp	.LBB0_63
.Lfunc_end0:
	.size	gs_copy_font, .Lfunc_end0-gs_copy_font
	.cfi_endproc

	.globl	gs_copy_glyph
	.align	16, 0x90
	.type	gs_copy_glyph,@function
gs_copy_glyph:                          # @gs_copy_glyph
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%ecx, %ecx
	jmp	gs_copy_glyph_options   # TAILCALL
.Lfunc_end1:
	.size	gs_copy_glyph, .Lfunc_end1-gs_copy_glyph
	.cfi_endproc

	.globl	gs_free_copied_font
	.align	16, 0x90
	.type	gs_free_copied_font,@function
gs_free_copied_font:                    # @gs_free_copied_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp17:
	.cfi_def_cfa_offset 48
.Ltmp18:
	.cfi_offset %rbx, -48
.Ltmp19:
	.cfi_offset %r12, -40
.Ltmp20:
	.cfi_offset %r14, -32
.Ltmp21:
	.cfi_offset %r15, -24
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movq	16(%r15), %r14
	movq	72(%r15), %r12
	movl	176(%r12), %eax
	testl	%eax, %eax
	je	.LBB2_5
# BB#1:                                 # %for.body.lr.ph
	xorl	%ebp, %ebp
	movl	$8, %ebx
	.align	16, 0x90
.LBB2_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	168(%r12), %rcx
	movl	(%rcx,%rbx), %edx
	testl	%edx, %edx
	je	.LBB2_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	16(%r15), %rdi
	movq	-8(%rcx,%rbx), %rsi
	movl	$.L.str.9, %ecx
	callq	*160(%rdi)
	movl	176(%r12), %eax
.LBB2_4:                                # %for.inc
                                        #   in Loop: Header=BB2_2 Depth=1
	addq	$24, %rbx
	incl	%ebp
	cmpl	%eax, %ebp
	jb	.LBB2_2
.LBB2_5:                                # %if.then.7
	movq	136(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB2_7
# BB#6:                                 # %if.then.i
	movl	144(%r12), %edx
	movl	$.L.str.10, %ecx
	movq	%r14, %rdi
	callq	gs_free_const_string
.LBB2_7:                                # %uncopy_string.exit
	movq	120(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB2_9
# BB#8:                                 # %if.then.i.43
	movl	128(%r12), %edx
	movl	$.L.str.11, %ecx
	movq	%r14, %rdi
	callq	gs_free_const_string
.LBB2_9:                                # %uncopy_string.exit44
	movq	104(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB2_11
# BB#10:                                # %if.then.i.48
	movl	112(%r12), %edx
	movl	$.L.str.12, %ecx
	movq	%r14, %rdi
	callq	gs_free_const_string
.LBB2_11:                               # %uncopy_string.exit49
	movq	88(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB2_13
# BB#12:                                # %if.then.i.53
	movl	96(%r12), %edx
	movl	$.L.str.13, %ecx
	movq	%r14, %rdi
	callq	gs_free_const_string
.LBB2_13:                               # %uncopy_string.exit54
	movq	224(%r12), %rsi
	testq	%rsi, %rsi
	je	.LBB2_15
# BB#14:                                # %if.then.12
	movl	$.L.str.14, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
.LBB2_15:                               # %if.end.26
	movq	168(%r12), %rsi
	movl	$.L.str.15, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	movq	192(%r12), %rsi
	movl	$.L.str.16, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	movq	208(%r12), %rsi
	movl	$.L.str.17, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	movl	$.L.str.18, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	*24(%r14)
	movl	$.L.str.19, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*24(%r14)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gs_free_copied_font, .Lfunc_end2-gs_free_copied_font
	.cfi_endproc

	.globl	gs_copy_glyph_options
	.align	16, 0x90
	.type	gs_copy_glyph_options,@function
gs_copy_glyph_options:                  # @gs_copy_glyph_options
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp24:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp25:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp26:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp27:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 56
	subq	$536, %rsp              # imm = 0x218
.Ltmp29:
	.cfi_def_cfa_offset 592
.Ltmp30:
	.cfi_offset %rbx, -56
.Ltmp31:
	.cfi_offset %r12, -48
.Ltmp32:
	.cfi_offset %r13, -40
.Ltmp33:
	.cfi_offset %r14, -32
.Ltmp34:
	.cfi_offset %r15, -24
.Ltmp35:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r13
	movl	$1, 12(%rsp)
	movl	$copied_font_info, %ecx
	movl	$-15, %eax
	cmpq	%rcx, 184(%rbx)
	jne	.LBB3_13
# BB#1:                                 # %if.end
	movq	72(%rbx), %rax
	movq	160(%rax), %rax
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	movl	%r14d, %ecx
	callq	*8(%rax)
	testl	%eax, %eax
	jne	.LBB3_13
# BB#2:                                 # %if.end.5
	movq	%r15, 16(%rsp)
	leaq	16(%rsp), %rdi
	leaq	12(%rsp), %rsi
	movl	$64, %edx
	movl	$64, %ecx
	movq	%r13, %r8
	callq	psf_add_subset_pieces
	testl	%eax, %eax
	js	.LBB3_13
# BB#3:                                 # %if.end.9
	movl	12(%rsp), %ecx
	movl	$-13, %eax
	cmpl	$64, %ecx
	ja	.LBB3_13
# BB#4:                                 # %for.cond.preheader
	cmpl	$2, %ecx
	jb	.LBB3_12
# BB#5:                                 # %for.body.lr.ph
	movl	$2147483648, %eax       # imm = 0x80000000
	andl	$-6, %r14d
	orl	$4, %r14d
	movl	$1, %ebp
	leaq	1073741824(%rax), %r12
	.align	16, 0x90
.LBB3_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %ebp
	movq	16(%rsp,%rbp,8), %rsi
	movq	%r13, %rdi
	movq	%rbx, %rdx
	movl	%r14d, %ecx
	callq	gs_copy_glyph_options
	testl	%eax, %eax
	js	.LBB3_13
# BB#7:                                 # %if.end.18
                                        #   in Loop: Header=BB3_6 Depth=1
	movl	$2147483648, %ecx       # imm = 0x80000000
	cmpq	%rcx, %r15
	jae	.LBB3_11
# BB#8:                                 # %if.end.18
                                        #   in Loop: Header=BB3_6 Depth=1
	testl	%eax, %eax
	jne	.LBB3_11
# BB#9:                                 # %land.lhs.true.21
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	16(%rsp,%rbp,8), %rsi
	cmpq	%r12, %rsi
	jbe	.LBB3_11
# BB#10:                                # %if.then.25
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	%r13, %rdi
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	callq	copy_glyph_name
	testl	%eax, %eax
	js	.LBB3_13
.LBB3_11:                               # %for.inc
                                        #   in Loop: Header=BB3_6 Depth=1
	incl	%ebp
	cmpl	12(%rsp), %ebp
	jb	.LBB3_6
.LBB3_12:
	xorl	%eax, %eax
.LBB3_13:                               # %cleanup
	addq	$536, %rsp              # imm = 0x218
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gs_copy_glyph_options, .Lfunc_end3-gs_copy_glyph_options
	.cfi_endproc

	.align	16, 0x90
	.type	copied_font_info,@function
copied_font_info:                       # @copied_font_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp36:
	.cfi_def_cfa_offset 16
	movl	$-15, %eax
	testq	%rsi, %rsi
	jne	.LBB4_2
# BB#1:                                 # %if.end
	movq	72(%rdi), %rsi
	movl	$160, %edx
	movq	%rcx, %rdi
	callq	memcpy
	xorl	%eax, %eax
.LBB4_2:                                # %return
	popq	%rdx
	retq
.Lfunc_end4:
	.size	copied_font_info, .Lfunc_end4-copied_font_info
	.cfi_endproc

	.align	16, 0x90
	.type	copy_glyph_name,@function
copy_glyph_name:                        # @copy_glyph_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp39:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp40:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
.Ltmp42:
	.cfi_def_cfa_offset 80
.Ltmp43:
	.cfi_offset %rbx, -48
.Ltmp44:
	.cfi_offset %r12, -40
.Ltmp45:
	.cfi_offset %r13, -32
.Ltmp46:
	.cfi_offset %r14, -24
.Ltmp47:
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %r12
	movq	72(%r15), %rbx
	movl	176(%rbx), %edx
	movq	$0, 24(%rsp)
	movq	%rcx, %rax
	shrq	$30, %rax
	cmpq	$3, %rax
	jb	.LBB5_4
# BB#1:                                 # %if.then.i
	movabsq	$-3221225472, %rax      # imm = 0xFFFFFFFF40000000
	addq	%rax, %rcx
	jmp	.LBB5_2
.LBB5_4:                                # %if.else.i
	testq	$-2147483648, %rcx      # imm = 0xFFFFFFFF80000000
	je	.LBB5_6
# BB#5:                                 # %if.then.7.i
	addq	$-2147483648, %rcx      # imm = 0xFFFFFFFF80000000
.LBB5_2:                                # %if.then.i
	movl	$-15, %eax
	cmpq	%rdx, %rcx
	jae	.LBB5_11
# BB#3:                                 # %if.end.i
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$3, %rcx
	addq	168(%rbx), %rcx
	movq	%rcx, 24(%rsp)
	jmp	.LBB5_9
.LBB5_6:                                # %if.else.17.i
	movl	$-15, %eax
	cmpq	$0, 192(%rbx)
	je	.LBB5_11
# BB#7:                                 # %if.else.21.i
	movq	160(%rbx), %rax
	leaq	24(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%rcx, %rsi
	callq	*24(%rax)
	testl	%eax, %eax
	js	.LBB5_11
# BB#8:                                 # %if.else.21.if.end.28_crit_edge.i
	movq	24(%rsp), %rcx
.LBB5_9:                                # %if.end.28.i
	movl	$-21, %eax
	cmpb	$0, 16(%rcx)
	je	.LBB5_11
# BB#10:                                # %select.mid
	xorl	%eax, %eax
.LBB5_11:                               # %copied_glyph_slot.exit
	movl	$-28, %ecx
	cmpl	$0, 304(%rbx)
	jne	.LBB5_25
# BB#12:                                # %if.end
	testl	%eax, %eax
	movl	%eax, %ecx
	js	.LBB5_25
# BB#13:                                # %lor.lhs.false
	leaq	8(%rsp), %rdx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	*240(%r12)
	movl	%eax, %ecx
	testl	%ecx, %ecx
	js	.LBB5_25
# BB#14:                                # %if.end.5
	movq	8(%rsp), %rdi
	movl	16(%rsp), %esi
	callq	gs_c_name_glyph
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jne	.LBB5_15
# BB#16:                                # %if.else
	movq	8(%rsp), %r12
	movl	16(%rsp), %r13d
	testq	%r12, %r12
	je	.LBB5_19
# BB#17:                                # %if.end.i.29
	movq	16(%r15), %rdi
	movl	$.L.str.42, %edx
	movl	%r13d, %esi
	callq	*136(%rdi)
	movq	%rax, 8(%rsp)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB5_25
# BB#18:                                # %if.end.6.i
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	memcpy
	jmp	.LBB5_19
.LBB5_15:                               # %if.then.8
	leaq	8(%rsp), %rsi
	movq	%rax, %rdi
	callq	gs_c_glyph_name
.LBB5_19:                               # %if.end.14
	movq	192(%rbx), %rax
	movq	24(%rsp), %rcx
	subq	168(%rbx), %rcx
	leaq	(%rax,%rcx), %r12
	cmpq	$2147483647, (%rax,%rcx) # imm = 0x7FFFFFFF
	je	.LBB5_24
# BB#20:                                # %land.lhs.true
	sarq	$3, %rcx
	movabsq	$-6148914691236517205, %rdx # imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rcx, %rdx
	leaq	(%rdx,%rdx,2), %rcx
	movl	16(%rax,%rcx,8), %edx
	cmpl	16(%rsp), %edx
	jne	.LBB5_22
# BB#21:                                # %lor.lhs.false.21
	movq	8(%rax,%rcx,8), %rdi
	movq	8(%rsp), %rsi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB5_24
.LBB5_22:                               # %if.then.28
	movq	16(%r15), %rdi
	movl	$st_gs_copied_glyph_extra_name, %esi
	movl	$.L.str.43, %edx
	callq	*72(%rdi)
	movq	%rax, %r12
	movl	$-25, %ecx
	testq	%r12, %r12
	je	.LBB5_25
# BB#23:                                # %cleanup.thread
	movq	200(%rbx), %rax
	movq	%rax, 32(%r12)
	movq	24(%rsp), %rax
	subq	168(%rbx), %rax
	shrq	$3, %rax
	imull	$-1431655765, %eax, %eax # imm = 0xFFFFFFFFAAAAAAAB
	movl	%eax, 24(%r12)
	movq	%r12, 200(%rbx)
.LBB5_24:                               # %if.end.44
	movq	%r14, (%r12)
	movups	8(%rsp), %xmm0
	movups	%xmm0, 8(%r12)
	xorl	%ecx, %ecx
.LBB5_25:                               # %cleanup.47
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end5:
	.size	copy_glyph_name, .Lfunc_end5-copy_glyph_name
	.cfi_endproc

	.globl	gs_copied_font_add_encoding
	.align	16, 0x90
	.type	gs_copied_font_add_encoding,@function
gs_copied_font_add_encoding:            # @gs_copied_font_add_encoding
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$copied_font_info, %eax
	cmpq	%rax, 184(%rdi)
	je	.LBB6_2
# BB#1:                                 # %cleanup
	movl	$-15, %eax
	retq
.LBB6_2:                                # %if.end
	movq	72(%rdi), %rax
	movq	160(%rax), %rax
	movq	16(%rax), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end6:
	.size	gs_copied_font_add_encoding, .Lfunc_end6-gs_copied_font_add_encoding
	.cfi_endproc

	.globl	gs_copy_font_complete
	.align	16, 0x90
	.type	gs_copy_font_complete,@function
gs_copy_font_complete:                  # @gs_copy_font_complete
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp49:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp50:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp51:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp52:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp53:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp54:
	.cfi_def_cfa_offset 80
.Ltmp55:
	.cfi_offset %rbx, -56
.Ltmp56:
	.cfi_offset %r12, -48
.Ltmp57:
	.cfi_offset %r13, -40
.Ltmp58:
	.cfi_offset %r14, -32
.Ltmp59:
	.cfi_offset %r15, -24
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	xorl	%r13d, %r13d
	leaq	8(%rsp), %r12
	movl	$2147483648, %eax       # imm = 0x80000000
	leaq	1073741824(%rax), %r15
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB7_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_2 Depth 2
	movl	$0, 20(%rsp)
	jmp	.LBB7_2
	.align	16, 0x90
.LBB7_8:                                # %if.end
                                        #   in Loop: Header=BB7_2 Depth=2
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	gs_copy_glyph_options
	movl	%eax, %ebp
.LBB7_2:                                # %for.cond
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%ebp, %ebp
	js	.LBB7_9
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB7_2 Depth=2
	movq	%rbx, %rdi
	leaq	20(%rsp), %rsi
	movl	%r13d, %edx
	movq	%r12, %rcx
	callq	*216(%rbx)
	cmpl	$0, 20(%rsp)
	je	.LBB7_9
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB7_2 Depth=2
	movq	8(%rsp), %rsi
	cmpl	$42, 128(%rbx)
	jne	.LBB7_8
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB7_2 Depth=2
	cmpl	$1, %r13d
	sete	%al
	cmpq	%r15, %rsi
	sbbb	%cl, %cl
	cmpq	$2147483647, %rsi       # imm = 0x7FFFFFFF
	movl	$-10, %ebp
	je	.LBB7_22
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB7_2 Depth=2
	movq	%rsi, %rdx
	andq	$-1073741824, %rdx      # imm = 0xFFFFFFFFC0000000
	movl	$2147483648, %edi       # imm = 0x80000000
	cmpq	%rdi, %rdx
	je	.LBB7_22
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB7_2 Depth=2
	andb	%al, %cl
	je	.LBB7_8
	jmp	.LBB7_22
	.align	16, 0x90
.LBB7_9:                                # %for.end
                                        #   in Loop: Header=BB7_1 Depth=1
	testl	%r13d, %r13d
	jne	.LBB7_11
# BB#10:                                # %land.lhs.true.14
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$1, %r13d
	cmpl	$42, 128(%rbx)
	je	.LBB7_1
.LBB7_11:                               # %for.end.19
	movq	72(%r14), %rax
	cmpq	$0, 224(%rax)
	je	.LBB7_20
# BB#12:                                # %for.cond.23.preheader
	movl	$0, 20(%rsp)
	testl	%ebp, %ebp
	js	.LBB7_20
# BB#13:                                # %for.body.28.lr.ph
	xorl	%r15d, %r15d
	movl	$copied_font_info, %r12d
	xorl	%eax, %eax
	.align	16, 0x90
.LBB7_14:                               # %for.body.28
                                        # =>This Inner Loop Header: Depth=1
	movslq	%eax, %rsi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	*200(%rbx)
	movq	%rax, 8(%rsp)
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	je	.LBB7_18
# BB#15:                                # %if.then.33
                                        #   in Loop: Header=BB7_14 Depth=1
	movl	$-15, %ebp
	cmpq	%r12, 184(%r14)
	jne	.LBB7_17
# BB#16:                                # %if.end.i
                                        #   in Loop: Header=BB7_14 Depth=1
	movslq	20(%rsp), %rsi
	movq	72(%r14), %rcx
	movq	160(%rcx), %rcx
	movq	%r14, %rdi
	movq	%rax, %rdx
	callq	*16(%rcx)
	movl	%eax, %ebp
.LBB7_17:                               # %gs_copied_font_add_encoding.exit
                                        #   in Loop: Header=BB7_14 Depth=1
	cmpl	$-21, %ebp
	cmovel	%r15d, %ebp
	cmpl	$-15, %ebp
	cmovel	%r15d, %ebp
.LBB7_18:                               # %for.inc
                                        #   in Loop: Header=BB7_14 Depth=1
	movl	20(%rsp), %eax
	incl	%eax
	movl	%eax, 20(%rsp)
	cmpl	$255, %eax
	jg	.LBB7_20
# BB#19:                                # %for.inc
                                        #   in Loop: Header=BB7_14 Depth=1
	testl	%ebp, %ebp
	jns	.LBB7_14
.LBB7_20:                               # %if.end.46
	cmpl	$0, 128(%r14)
	je	.LBB7_22
# BB#21:                                # %if.then.50
	movl	440(%rbx), %eax
	movl	%eax, 440(%r14)
	movl	444(%rbx), %eax
	movl	%eax, 444(%r14)
.LBB7_22:                               # %cleanup
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gs_copy_font_complete, .Lfunc_end7-gs_copy_font_complete
	.cfi_endproc

	.globl	gs_copied_can_copy_glyphs
	.align	16, 0x90
	.type	gs_copied_can_copy_glyphs,@function
gs_copied_can_copy_glyphs:              # @gs_copied_can_copy_glyphs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp62:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp63:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp64:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp65:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp66:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp67:
	.cfi_def_cfa_offset 64
.Ltmp68:
	.cfi_offset %rbx, -56
.Ltmp69:
	.cfi_offset %r12, -48
.Ltmp70:
	.cfi_offset %r13, -40
.Ltmp71:
	.cfi_offset %r14, -32
.Ltmp72:
	.cfi_offset %r15, -24
.Ltmp73:
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, %rbx
	movl	$1, %ebp
	cmpq	%r13, %rbx
	je	.LBB8_48
# BB#1:                                 # %if.end
	movl	128(%rbx), %r15d
	cmpl	128(%r13), %r15d
	jne	.LBB8_2
# BB#3:                                 # %if.end.4
	movl	148(%rbx), %eax
	cmpl	148(%r13), %eax
	jne	.LBB8_4
# BB#5:                                 # %if.end.8
	movl	372(%rbx), %edx
	testq	%rdx, %rdx
	je	.LBB8_7
# BB#6:                                 # %lor.lhs.false
	movl	372(%r13), %eax
	testl	%eax, %eax
	je	.LBB8_7
# BB#11:                                # %if.else
	movl	%ecx, 4(%rsp)           # 4-byte Spill
	movl	%r8d, %ebp
	cmpl	%eax, %edx
	jne	.LBB8_12
# BB#13:                                # %lor.lhs.false.33
	leaq	324(%rbx), %rdi
	leaq	324(%r13), %rsi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB8_15
# BB#14:
	xorl	%ebp, %ebp
	jmp	.LBB8_48
.LBB8_2:
	xorl	%ebp, %ebp
	jmp	.LBB8_48
.LBB8_4:
	xorl	%ebp, %ebp
	jmp	.LBB8_48
.LBB8_7:                                # %if.then.13
	movl	%ecx, 4(%rsp)           # 4-byte Spill
	movl	%r8d, %ebp
	movl	320(%rbx), %eax
	cmpl	320(%r13), %eax
	jne	.LBB8_8
# BB#9:                                 # %lor.lhs.false.18
	leaq	272(%rbx), %rdi
	leaq	272(%r13), %rsi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB8_15
# BB#10:
	xorl	%ebp, %ebp
	jmp	.LBB8_48
.LBB8_8:
	xorl	%ebp, %ebp
	jmp	.LBB8_48
.LBB8_12:
	xorl	%ebp, %ebp
.LBB8_48:                               # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_15:                               # %if.end.47
	testl	%r14d, %r14d
	movl	%ebp, %r8d
	movl	4(%rsp), %ecx           # 4-byte Reload
	je	.LBB8_46
# BB#16:                                # %if.then.49
	movl	$-28, %ebp
	cmpl	$10, %r15d
	jg	.LBB8_21
# BB#17:                                # %if.then.49
	leal	-1(%r15), %eax
	cmpl	$2, %eax
	jae	.LBB8_18
# BB#47:                                # %sw.bb
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movl	%r8d, %r14d
	movl	%ecx, %ebp
	callq	same_type1_hinting
	movl	%ebp, %ecx
	movl	%r14d, %r8d
	testl	%eax, %eax
	movl	$0, %ebp
	jne	.LBB8_46
	jmp	.LBB8_48
.LBB8_21:                               # %if.then.49
	cmpl	$11, %r15d
	jne	.LBB8_22
# BB#36:                                # %sw.bb.70
	movl	%ecx, %r15d
	movl	%r8d, %r14d
	movq	%rbx, %rdi
	callq	gs_font_cid_system_info
	movq	%rax, %rbp
	movq	%r13, %rdi
	callq	gs_font_cid_system_info
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	gs_is_CIDSystemInfo_compatible
	testl	%eax, %eax
	je	.LBB8_37
# BB#38:                                # %if.end.76
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	same_type42_hinting
	movl	%eax, %ebp
	testl	%ebp, %ebp
	movl	%r14d, %r8d
	movl	%r15d, %ecx
	jle	.LBB8_48
# BB#39:                                # %if.then.80
	movl	600(%rbx), %eax
	cmpl	600(%r13), %eax
	jae	.LBB8_41
# BB#40:
	xorl	%ebp, %ebp
	jmp	.LBB8_48
.LBB8_18:                               # %if.then.49
	cmpl	$9, %r15d
	jne	.LBB8_48
# BB#19:                                # %sw.bb.62
	movl	%ecx, %r15d
	movl	%r8d, %r14d
	movq	%rbx, %rdi
	callq	gs_font_cid_system_info
	movq	%rax, %rbp
	movq	%r13, %rdi
	callq	gs_font_cid_system_info
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	gs_is_CIDSystemInfo_compatible
	testl	%eax, %eax
	je	.LBB8_20
# BB#31:                                # %if.end.68
	movl	520(%rbx), %eax
	cmpl	520(%r13), %eax
	movl	$0, %ebp
	movl	%r14d, %r8d
	movl	%r15d, %ecx
	jne	.LBB8_48
# BB#32:                                # %for.cond.preheader.i
	testl	%eax, %eax
	je	.LBB8_46
# BB#33:                                # %for.body.lr.ph.i
	xorl	%ebp, %ebp
	xorl	%r14d, %r14d
.LBB8_35:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%r8d, %r15d
	movq	512(%rbx), %rax
	movq	(%rax,%r14,8), %rdi
	movq	512(%r13), %rax
	movq	(%rax,%r14,8), %rsi
	callq	same_type1_hinting
	testl	%eax, %eax
	je	.LBB8_48
# BB#34:                                # %for.cond.i
                                        #   in Loop: Header=BB8_35 Depth=1
	incq	%r14
	cmpl	520(%rbx), %r14d
	movl	%r15d, %r8d
	movl	4(%rsp), %ecx           # 4-byte Reload
	jb	.LBB8_35
	jmp	.LBB8_46
.LBB8_22:                               # %if.then.49
	cmpl	$42, %r15d
	jne	.LBB8_48
# BB#23:                                # %sw.bb.55
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movl	%r8d, %r14d
	movl	%ecx, %ebp
	callq	same_type42_hinting
	movl	%ebp, %ecx
	movl	%r14d, %r8d
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jle	.LBB8_48
# BB#24:                                # %if.then.59
	movl	600(%rbx), %eax
	cmpl	600(%r13), %eax
	jae	.LBB8_26
# BB#25:
	xorl	%ebp, %ebp
	jmp	.LBB8_48
.LBB8_37:
	xorl	%ebp, %ebp
	jmp	.LBB8_48
.LBB8_41:                               # %if.end.i.48
	movl	604(%rbx), %eax
	cmpl	604(%r13), %eax
	jae	.LBB8_43
# BB#42:
	xorl	%ebp, %ebp
	jmp	.LBB8_48
.LBB8_20:
	xorl	%ebp, %ebp
	jmp	.LBB8_48
.LBB8_26:                               # %if.end.i
	movl	604(%rbx), %eax
	cmpl	604(%r13), %eax
	jae	.LBB8_28
# BB#27:
	xorl	%ebp, %ebp
	jmp	.LBB8_48
.LBB8_43:                               # %if.end.6.i.52
	movl	608(%rbx), %eax
	cmpl	608(%r13), %eax
	movl	$0, %ebp
	jb	.LBB8_48
# BB#44:                                # %sw.epilog
	movl	612(%rbx), %eax
	cmpl	612(%r13), %eax
	setae	%al
	jae	.LBB8_46
# BB#45:
	movzbl	%al, %ebp
	jmp	.LBB8_48
.LBB8_28:                               # %if.end.6.i
	movl	608(%rbx), %eax
	cmpl	608(%r13), %eax
	movl	$0, %ebp
	jb	.LBB8_48
# BB#29:                                # %if.end.10.i
	movl	612(%rbx), %eax
	cmpl	612(%r13), %eax
	setae	%al
	jb	.LBB8_30
.LBB8_46:                               # %if.end.87
	xorl	%r9d, %r9d
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	compare_glyphs          # TAILCALL
.LBB8_30:
	movzbl	%al, %ebp
	jmp	.LBB8_48
.Lfunc_end8:
	.size	gs_copied_can_copy_glyphs, .Lfunc_end8-gs_copied_can_copy_glyphs
	.cfi_endproc

	.align	16, 0x90
	.type	same_type1_hinting,@function
same_type1_hinting:                     # @same_type1_hinting
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp74:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp75:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp76:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp77:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp78:
	.cfi_def_cfa_offset 48
.Ltmp79:
	.cfi_offset %rbx, -40
.Ltmp80:
	.cfi_offset %r12, -32
.Ltmp81:
	.cfi_offset %r14, -24
.Ltmp82:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	512(%rbx), %eax
	cmpl	512(%r14), %eax
	jne	.LBB9_34
# BB#1:                                 # %if.end
	movl	544(%rbx), %eax
	cmpl	544(%r14), %eax
	jne	.LBB9_34
# BB#2:                                 # %if.end.7
	movss	548(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	548(%r14), %xmm0
	jne	.LBB9_34
	jp	.LBB9_34
# BB#3:                                 # %if.end.11
	movss	552(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	552(%r14), %xmm0
	jne	.LBB9_34
	jp	.LBB9_34
# BB#4:                                 # %if.end.15
	movss	616(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	616(%r14), %xmm0
	jne	.LBB9_34
	jp	.LBB9_34
# BB#5:                                 # %if.end.19
	movl	620(%rbx), %eax
	cmpl	620(%r14), %eax
	jne	.LBB9_34
# BB#6:                                 # %if.end.23
	movslq	624(%rbx), %rdx
	cmpl	624(%r14), %edx
	jne	.LBB9_34
# BB#7:                                 # %compare_arrays.exit
	leaq	628(%r14), %rsi
	leaq	628(%rbx), %rdi
	shlq	$2, %rdx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB9_34
# BB#8:                                 # %if.end.31
	movslq	684(%rbx), %rdx
	cmpl	684(%r14), %edx
	jne	.LBB9_34
# BB#9:                                 # %compare_arrays.exit69
	leaq	688(%r14), %rsi
	leaq	688(%rbx), %rdi
	shlq	$2, %rdx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB9_34
# BB#10:                                # %if.end.44
	movl	728(%rbx), %eax
	cmpl	728(%r14), %eax
	jne	.LBB9_34
# BB#11:                                # %if.end.48
	movslq	732(%rbx), %rdx
	cmpl	732(%r14), %edx
	jne	.LBB9_34
# BB#12:                                # %compare_arrays.exit78
	leaq	736(%r14), %rsi
	leaq	736(%rbx), %rdi
	shlq	$2, %rdx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB9_34
# BB#13:                                # %if.end.61
	movl	776(%rbx), %eax
	cmpl	776(%r14), %eax
	jne	.LBB9_34
# BB#14:                                # %if.end.65
	movslq	780(%rbx), %rdx
	cmpl	780(%r14), %edx
	jne	.LBB9_34
# BB#15:                                # %compare_arrays.exit87
	leaq	784(%r14), %rsi
	leaq	784(%rbx), %rdi
	shlq	$2, %rdx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB9_34
# BB#16:                                # %if.end.78
	movslq	796(%rbx), %rdx
	cmpl	796(%r14), %edx
	jne	.LBB9_34
# BB#17:                                # %compare_arrays.exit96
	leaq	800(%r14), %rsi
	leaq	800(%rbx), %rdi
	shlq	$2, %rdx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB9_34
# BB#18:                                # %if.end.91
	movslq	848(%rbx), %rdx
	cmpl	848(%r14), %edx
	jne	.LBB9_34
# BB#19:                                # %compare_arrays.exit105
	leaq	852(%r14), %rsi
	leaq	852(%rbx), %rdi
	shlq	$2, %rdx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB9_34
# BB#20:                                # %if.end.104
	movslq	900(%rbx), %rdx
	cmpl	900(%r14), %edx
	jne	.LBB9_34
# BB#21:                                # %compare_arrays.exit114
	leaq	904(%r14), %rsi
	leaq	904(%rbx), %rdi
	shlq	$2, %rdx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB9_34
# BB#22:                                # %if.end.117
	leaq	968(%rbx), %r15
	leaq	968(%r14), %r12
	cmpl	$0, (%r15)
	jne	.LBB9_27
# BB#23:                                # %land.lhs.true
	cmpl	$0, 972(%rbx)
	jne	.LBB9_27
# BB#24:                                # %land.lhs.true.121
	cmpl	$0, 976(%rbx)
	jne	.LBB9_27
# BB#25:                                # %land.lhs.true.124
	cmpl	$0, 980(%rbx)
	jne	.LBB9_27
# BB#26:                                # %if.then.127
	movq	%rbx, %rdi
	callq	hash_subrs
.LBB9_27:                               # %if.end.128
	cmpl	$0, (%r12)
	jne	.LBB9_32
# BB#28:                                # %land.lhs.true.131
	cmpl	$0, 972(%r14)
	jne	.LBB9_32
# BB#29:                                # %land.lhs.true.134
	cmpl	$0, 976(%r14)
	jne	.LBB9_32
# BB#30:                                # %land.lhs.true.137
	cmpl	$0, 980(%r14)
	jne	.LBB9_32
# BB#31:                                # %if.then.140
	movq	%r14, %rdi
	callq	hash_subrs
.LBB9_32:                               # %if.end.141
	movl	$16, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB9_33
.LBB9_34:                               # %cleanup
	xorl	%eax, %eax
.LBB9_35:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB9_33:                               # %lor.lhs.false
	movl	984(%rbx), %eax
	cmpl	984(%r14), %eax
	sete	%al
	movzbl	%al, %eax
	jmp	.LBB9_35
.Lfunc_end9:
	.size	same_type1_hinting, .Lfunc_end9-same_type1_hinting
	.cfi_endproc

	.align	16, 0x90
	.type	same_type42_hinting,@function
same_type42_hinting:                    # @same_type42_hinting
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp84:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp85:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp86:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp87:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp88:
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
.Ltmp89:
	.cfi_def_cfa_offset 256
.Ltmp90:
	.cfi_offset %rbx, -56
.Ltmp91:
	.cfi_offset %r12, -48
.Ltmp92:
	.cfi_offset %r13, -40
.Ltmp93:
	.cfi_offset %r14, -32
.Ltmp94:
	.cfi_offset %r15, -24
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 112(%rsp)
	movq	$0, 128(%rsp)
	movl	512(%rbx), %ecx
	xorl	%eax, %eax
	cmpl	512(%rsi), %ecx
	jne	.LBB10_29
# BB#1:                                 # %if.end
	movq	%rbx, 176(%rsp)
	movq	%rsi, 184(%rsp)
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	leaq	144(%rsp), %rdi
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$24, %edx
	callq	memset
	leaq	104(%rsp), %rcx
	xorl	%esi, %esi
	movl	$12, %edx
	movq	%rbx, %rdi
	callq	*448(%rbx)
	testl	%eax, %eax
	js	.LBB10_29
# BB#2:
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	leaq	448(%rbx), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	%rbx, 80(%rsp)          # 8-byte Spill
.LBB10_3:                               # %if.end.9
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_5 Depth 2
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	movq	104(%rsp), %rax
	movzbl	4(%rax), %ecx
	shll	$8, %ecx
	movzbl	5(%rax), %r13d
	orl	%ecx, %r13d
	je	.LBB10_27
# BB#4:                                 # %for.body.13.lr.ph
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	leaq	(,%rax,4), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	144(%rsp,%rax), %rcx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	leaq	112(%rsp,%rax), %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	leaq	148(%rsp,%rax), %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	leaq	116(%rsp,%rax), %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	leaq	152(%rsp,%rax), %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	leaq	120(%rsp,%rax), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	xorl	%ebx, %ebx
	movl	$12, %ebp
	.align	16, 0x90
.LBB10_5:                               # %for.body.13
                                        #   Parent Loop BB10_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$16, %edx
	movq	80(%rsp), %rdi          # 8-byte Reload
	movq	%rbp, %rsi
	leaq	96(%rsp), %rcx
	movq	88(%rsp), %rax          # 8-byte Reload
	callq	*(%rax)
	testl	%eax, %eax
	js	.LBB10_29
# BB#6:                                 # %if.end.20
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	96(%rsp), %rdi
	addq	$8, %rdi
	callq	get_u32_msb
	movq	%rax, %r15
	movq	96(%rsp), %rdi
	addq	$12, %rdi
	callq	get_u32_msb
	movq	%rax, %r14
	movq	96(%rsp), %r12
	movl	$.L.str.46, %edi
	movl	$4, %edx
	movq	%r12, %rsi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB10_7
# BB#21:                                # %if.else
                                        #   in Loop: Header=BB10_5 Depth=2
	movl	$.L.str.47, %edi
	movl	$4, %edx
	movq	%r12, %rsi
	callq	memcmp
	testl	%eax, %eax
	je	.LBB10_22
# BB#23:                                # %if.else.45
                                        #   in Loop: Header=BB10_5 Depth=2
	movl	$.L.str.48, %edi
	movl	$4, %edx
	movq	%r12, %rsi
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB10_26
# BB#24:                                # %if.then.48
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	32(%rsp), %rax          # 8-byte Reload
	movl	%r15d, (%rax)
	movq	24(%rsp), %rax          # 8-byte Reload
	jmp	.LBB10_25
	.align	16, 0x90
.LBB10_7:                               # %if.then.27
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	%r15d, (%rax)
	movq	64(%rsp), %rax          # 8-byte Reload
	jmp	.LBB10_25
	.align	16, 0x90
.LBB10_22:                              # %if.then.37
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	56(%rsp), %rax          # 8-byte Reload
	movl	%r15d, (%rax)
	movq	48(%rsp), %rax          # 8-byte Reload
.LBB10_25:                              # %for.inc
                                        #   in Loop: Header=BB10_5 Depth=2
	movl	%r14d, (%rax)
.LBB10_26:                              # %for.inc
                                        #   in Loop: Header=BB10_5 Depth=2
	addq	$16, %rbp
	incl	%ebx
	cmpl	%r13d, %ebx
	jb	.LBB10_5
.LBB10_27:                              # %for.inc.65
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	leaq	1(%rax), %rbx
	cmpq	$1, %rbx
	jg	.LBB10_8
# BB#28:                                # %for.inc.65.for.body_crit_edge
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	184(%rsp,%rax,8), %rdi
	movq	%rdi, 80(%rsp)          # 8-byte Spill
	leaq	448(%rdi), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	movl	$12, %edx
	leaq	104(%rsp), %rcx
	callq	*448(%rdi)
	testl	%eax, %eax
	movq	%rbx, %rbp
	jns	.LBB10_3
	jmp	.LBB10_29
.LBB10_8:                               # %for.cond.68.preheader
	movl	112(%rsp), %ecx
	xorl	%eax, %eax
	cmpl	124(%rsp), %ecx
	jne	.LBB10_29
# BB#9:                                 # %for.cond.68
	movl	116(%rsp), %edx
	cmpl	128(%rsp), %edx
	jne	.LBB10_29
# BB#10:                                # %for.cond.68.1
	movl	120(%rsp), %edx
	cmpl	132(%rsp), %edx
	movq	8(%rsp), %r12           # 8-byte Reload
	jne	.LBB10_29
# BB#11:                                # %for.cond.68.2
	xorl	%edi, %edi
	jmp	.LBB10_12
.LBB10_20:                              # %for.inc.154.for.body.88_crit_edge
                                        #   in Loop: Header=BB10_12 Depth=1
	movl	116(%rsp,%rdi,4), %ecx
	movq	%rdx, %rdi
.LBB10_12:                              # %for.body.88
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_14 Depth 2
	testl	%ecx, %ecx
	je	.LBB10_19
# BB#13:                                # %while.body.lr.ph
                                        #   in Loop: Header=BB10_12 Depth=1
	movl	%ecx, %ebp
	movl	156(%rsp,%rdi,4), %r14d
	movl	144(%rsp,%rdi,4), %r15d
	movq	%rdi, 88(%rsp)          # 8-byte Spill
.LBB10_14:                              # %while.body
                                        #   Parent Loop BB10_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	%ebp, %edx
	leaq	104(%rsp), %rcx
	callq	*448(%r12)
	testl	%eax, %eax
	js	.LBB10_29
# BB#15:                                # %if.end.115
                                        #   in Loop: Header=BB10_14 Depth=2
	movslq	%eax, %r13
	cmoveq	%rbp, %r13
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	%r14, %rsi
	movl	%ebp, %edx
	leaq	96(%rsp), %rcx
	callq	*448(%rdi)
	testl	%eax, %eax
	js	.LBB10_29
# BB#16:                                # %if.end.123
                                        #   in Loop: Header=BB10_14 Depth=2
	movslq	%eax, %rbx
	cmoveq	%rbp, %rbx
	cmpq	%rbx, %r13
	cmovbq	%r13, %rbx
	movq	104(%rsp), %rdi
	movq	96(%rsp), %rsi
	movq	%rbx, %rdx
	callq	memcmp
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB10_29
# BB#17:                                # %if.end.140
                                        #   in Loop: Header=BB10_14 Depth=2
	subq	%rbx, %rbp
	leaq	(%r15,%rbx), %r15
	leaq	(%r14,%rbx), %r14
	jne	.LBB10_14
# BB#18:                                # %cleanup.143
                                        #   in Loop: Header=BB10_12 Depth=1
	movq	88(%rsp), %rdi          # 8-byte Reload
.LBB10_19:                              # %for.inc.154
                                        #   in Loop: Header=BB10_12 Depth=1
	leaq	1(%rdi), %rdx
	movl	$1, %eax
	cmpq	$2, %rdx
	jle	.LBB10_20
.LBB10_29:                              # %cleanup.157
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	same_type42_hinting, .Lfunc_end10-same_type42_hinting
	.cfi_endproc

	.align	16, 0x90
	.type	compare_glyphs,@function
compare_glyphs:                         # @compare_glyphs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp97:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp98:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp99:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp100:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp101:
	.cfi_def_cfa_offset 56
	subq	$776, %rsp              # imm = 0x308
.Ltmp102:
	.cfi_def_cfa_offset 832
.Ltmp103:
	.cfi_offset %rbx, -56
.Ltmp104:
	.cfi_offset %r12, -48
.Ltmp105:
	.cfi_offset %r13, -40
.Ltmp106:
	.cfi_offset %r14, -32
.Ltmp107:
	.cfi_offset %r15, -24
.Ltmp108:
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movl	%r8d, %r15d
	movl	%ecx, %r13d
	movq	%rdx, %r12
	movq	%rsi, 104(%rsp)         # 8-byte Spill
	movq	%rdi, 112(%rsp)         # 8-byte Spill
	movslq	148(%rsi), %rbx
	movl	$1, %ebp
	movb	%bl, %cl
	shll	%cl, %ebp
	movq	72(%rdi), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leaq	752(%rsp), %rdi
	callq	gs_make_identity
	testl	%r13d, %r13d
	jle	.LBB11_48
# BB#1:                                 # %for.body.lr.ph
	orl	$40, %ebp
	movl	%ebp, 84(%rsp)          # 4-byte Spill
	movq	%rbx, %rax
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	shlq	$4, %rax
	leaq	336(%rsp,%rax), %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	leaq	232(%rsp,%rax), %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	leaq	344(%rsp,%rax), %rcx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	leaq	240(%rsp,%rax), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leal	1(%r14), %eax
	movl	%eax, 8(%rsp)           # 4-byte Spill
	movq	%r14, 24(%rsp)          # 8-byte Spill
	movslq	%r13d, %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movslq	%r15d, %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	%r15d, 12(%rsp)         # 4-byte Spill
	xorl	%r14d, %r14d
	leaq	752(%rsp), %rbx
	movl	$0, 80(%rsp)            # 4-byte Folded Spill
	.align	16, 0x90
.LBB11_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r12), %r15
	movq	104(%rsp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	movq	%rbx, %rdx
	movl	%ebp, %ecx
	leaq	328(%rsp), %r8
	callq	*224(%rdi)
	movl	%eax, %r13d
	movq	112(%rsp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	movq	%rbx, %rdx
	movl	%ebp, %ecx
	leaq	224(%rsp), %r8
	callq	*224(%rdi)
	cmpl	$-21, %r13d
	je	.LBB11_47
# BB#3:                                 # %if.end
                                        #   in Loop: Header=BB11_2 Depth=1
	cmpl	$-21, %eax
	je	.LBB11_46
# BB#4:                                 # %if.end.14
                                        #   in Loop: Header=BB11_2 Depth=1
	testl	%r13d, %r13d
	js	.LBB11_49
# BB#5:                                 # %if.end.17
                                        #   in Loop: Header=BB11_2 Depth=1
	testl	%eax, %eax
	movl	%eax, %r13d
	js	.LBB11_49
# BB#6:                                 # %if.end.20
                                        #   in Loop: Header=BB11_2 Depth=1
	movl	416(%rsp), %esi
	xorl	%r13d, %r13d
	cmpl	312(%rsp), %esi
	jne	.LBB11_49
# BB#7:                                 # %if.end.24
                                        #   in Loop: Header=BB11_2 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	56(%rsp), %rax          # 8-byte Reload
	ucomisd	(%rax), %xmm0
	jne	.LBB11_49
	jp	.LBB11_49
# BB#8:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB11_2 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	40(%rsp), %rax          # 8-byte Reload
	ucomisd	(%rax), %xmm0
	jne	.LBB11_49
	jp	.LBB11_49
# BB#9:                                 # %if.end.39
                                        #   in Loop: Header=BB11_2 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	je	.LBB11_12
# BB#10:                                # %land.lhs.true
                                        #   in Loop: Header=BB11_2 Depth=1
	movsd	368(%rsp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	264(%rsp), %xmm0
	jne	.LBB11_49
	jp	.LBB11_49
# BB#11:                                # %lor.lhs.false.44
                                        #   in Loop: Header=BB11_2 Depth=1
	movsd	376(%rsp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	272(%rsp), %xmm0
	jne	.LBB11_49
	jp	.LBB11_49
.LBB11_12:                              # %if.end.51
                                        #   in Loop: Header=BB11_2 Depth=1
	testl	%esi, %esi
	jle	.LBB11_31
# BB#13:                                # %if.then.54
                                        #   in Loop: Header=BB11_2 Depth=1
	movl	$-15, %r13d
	movq	24(%rsp), %rax          # 8-byte Reload
	cmpl	$5, %eax
	jg	.LBB11_49
# BB#14:                                # %if.end.57
                                        #   in Loop: Header=BB11_2 Depth=1
	cmpl	$21, %esi
	jb	.LBB11_15
# BB#16:                                # %if.then.61
                                        #   in Loop: Header=BB11_2 Depth=1
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	16(%rax), %rdi
	shll	$4, %esi
	movl	$.L.str.49, %edx
	callq	*64(%rdi)
	movq	%rax, %rbp
	movl	$-25, %r13d
	testq	%rbp, %rbp
	je	.LBB11_49
# BB#17:                                # %if.then.61.if.end.74_crit_edge
                                        #   in Loop: Header=BB11_2 Depth=1
	movl	416(%rsp), %esi
	jmp	.LBB11_18
.LBB11_31:                              # %if.else.143
                                        #   in Loop: Header=BB11_2 Depth=1
	movq	112(%rsp), %rax         # 8-byte Reload
	movl	128(%rax), %eax
	movl	$-28, %r13d
	cmpl	$10, %eax
	jg	.LBB11_35
# BB#32:                                # %if.else.143
                                        #   in Loop: Header=BB11_2 Depth=1
	leal	-1(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB11_33
# BB#50:                                # %sw.bb
                                        #   in Loop: Header=BB11_2 Depth=1
	movq	112(%rsp), %rdi         # 8-byte Reload
	movq	16(%rdi), %rax
	movq	%rax, 216(%rsp)
	movq	104(%rsp), %rbp         # 8-byte Reload
	movq	16(%rbp), %rax
	movq	%rax, 168(%rsp)
	movq	%r15, %rsi
	leaq	176(%rsp), %rdx
	callq	*448(%rdi)
	movl	%eax, %r13d
	movq	%rbp, %rdi
	movq	%r15, %rsi
	leaq	128(%rsp), %rdx
	callq	*448(%rbp)
	jmp	.LBB11_38
.LBB11_15:                              #   in Loop: Header=BB11_2 Depth=1
	leaq	432(%rsp), %rbp
.LBB11_18:                              # %if.end.74
                                        #   in Loop: Header=BB11_2 Depth=1
	movq	%rbp, 424(%rsp)
	movslq	%esi, %rax
	leaq	(%rbp,%rax,8), %rax
	movq	%rax, 320(%rsp)
	movl	$16, %ecx
	movq	104(%rsp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	movq	%rbx, %rdx
	leaq	328(%rsp), %r8
	callq	*224(%rdi)
	movl	%eax, %r13d
	movl	$16, %ecx
	movq	112(%rsp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	movq	%rbx, %rdx
	leaq	224(%rsp), %r8
	callq	*224(%rdi)
	movl	%eax, 20(%rsp)          # 4-byte Spill
	xorl	%r15d, %r15d
	orl	%r13d, %eax
	js	.LBB11_19
# BB#20:                                # %if.then.91
                                        #   in Loop: Header=BB11_2 Depth=1
	movq	424(%rsp), %rdi
	movq	320(%rsp), %rsi
	movslq	416(%rsp), %r15
	leaq	(,%r15,8), %rdx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB11_22
# BB#21:                                #   in Loop: Header=BB11_2 Depth=1
	movl	$0, 16(%rsp)            # 4-byte Folded Spill
	movl	%eax, %r15d
	jmp	.LBB11_23
.LBB11_19:                              #   in Loop: Header=BB11_2 Depth=1
	movl	$0, 16(%rsp)            # 4-byte Folded Spill
	jmp	.LBB11_23
.LBB11_35:                              # %if.else.143
                                        #   in Loop: Header=BB11_2 Depth=1
	cmpl	$11, %eax
	je	.LBB11_37
# BB#36:                                # %if.else.143
                                        #   in Loop: Header=BB11_2 Depth=1
	cmpl	$42, %eax
	jne	.LBB11_49
.LBB11_37:                              # %sw.bb.154
                                        #   in Loop: Header=BB11_2 Depth=1
	movq	112(%rsp), %r13         # 8-byte Reload
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	*464(%r13)
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movq	104(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	*464(%rbp)
	movl	%eax, %r15d
	movq	16(%r13), %rax
	movq	%rax, 216(%rsp)
	movq	16(%rbp), %rax
	movq	%rax, 168(%rsp)
	movq	%r13, %rdi
	movl	20(%rsp), %esi          # 4-byte Reload
	leaq	176(%rsp), %rdx
	callq	*472(%r13)
	movl	%eax, %r13d
	movq	%rbp, %rdi
	movl	%r15d, %esi
	leaq	128(%rsp), %rdx
	callq	*472(%rbp)
	jmp	.LBB11_38
.LBB11_22:                              # %if.then.99
                                        #   in Loop: Header=BB11_2 Depth=1
	movq	112(%rsp), %rdi         # 8-byte Reload
	movq	104(%rsp), %rsi         # 8-byte Reload
	movq	%rbp, %rdx
	movl	%r15d, %ecx
	movl	12(%rsp), %r8d          # 4-byte Reload
	movl	8(%rsp), %r9d           # 4-byte Reload
	callq	compare_glyphs
	movl	%eax, 16(%rsp)          # 4-byte Spill
	xorl	%r15d, %r15d
.LBB11_23:                              # %if.end.104
                                        #   in Loop: Header=BB11_2 Depth=1
	leaq	432(%rsp), %rax
	cmpq	%rax, %rbp
	je	.LBB11_25
# BB#24:                                # %if.then.108
                                        #   in Loop: Header=BB11_2 Depth=1
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	16(%rax), %rdi
	movl	$.L.str.49, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
.LBB11_25:                              # %if.end.112
                                        #   in Loop: Header=BB11_2 Depth=1
	cmpl	$-21, %r13d
	je	.LBB11_47
# BB#26:                                # %if.end.116
                                        #   in Loop: Header=BB11_2 Depth=1
	movl	20(%rsp), %eax          # 4-byte Reload
	cmpl	$-21, %eax
	jne	.LBB11_27
	.align	16, 0x90
.LBB11_46:                              # %cleanup.218
                                        #   in Loop: Header=BB11_2 Depth=1
	movl	80(%rsp), %edx          # 4-byte Reload
	incl	%edx
	movl	%edx, 80(%rsp)          # 4-byte Spill
	movq	72(%rsp), %rcx          # 8-byte Reload
	movl	176(%rcx), %eax
	subl	180(%rcx), %eax
	xorl	%r13d, %r13d
	cmpl	%eax, %edx
	jbe	.LBB11_47
	jmp	.LBB11_49
.LBB11_27:                              # %if.end.128
                                        #   in Loop: Header=BB11_2 Depth=1
	testl	%r13d, %r13d
	js	.LBB11_49
# BB#28:                                # %if.end.132
                                        #   in Loop: Header=BB11_2 Depth=1
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB11_49
# BB#29:                                # %if.end.136
                                        #   in Loop: Header=BB11_2 Depth=1
	xorl	%r13d, %r13d
	cmpl	$0, 16(%rsp)            # 4-byte Folded Reload
	je	.LBB11_49
# BB#30:                                # %if.end.136
                                        #   in Loop: Header=BB11_2 Depth=1
	testl	%r15d, %r15d
	je	.LBB11_47
	jmp	.LBB11_49
.LBB11_33:                              # %if.else.143
                                        #   in Loop: Header=BB11_2 Depth=1
	cmpl	$9, %eax
	jne	.LBB11_49
# BB#34:                                # %sw.bb.171
                                        #   in Loop: Header=BB11_2 Depth=1
	movq	112(%rsp), %rdi         # 8-byte Reload
	movq	16(%rdi), %rax
	movq	%rax, 216(%rsp)
	movq	104(%rsp), %rbp         # 8-byte Reload
	movq	16(%rbp), %rax
	movq	%rax, 168(%rsp)
	movq	%r15, %rsi
	leaq	176(%rsp), %rdx
	leaq	124(%rsp), %rcx
	callq	*528(%rdi)
	movl	%eax, %r13d
	movq	%rbp, %rdi
	movq	%r15, %rsi
	leaq	128(%rsp), %rdx
	leaq	120(%rsp), %rcx
	callq	*528(%rbp)
.LBB11_38:                              # %sw.epilog
                                        #   in Loop: Header=BB11_2 Depth=1
	movl	%eax, %ebp
	testl	%r13d, %r13d
	js	.LBB11_39
# BB#41:                                # %if.end.190
                                        #   in Loop: Header=BB11_2 Depth=1
	testl	%ebp, %ebp
	js	.LBB11_42
# BB#43:                                # %if.end.198
                                        #   in Loop: Header=BB11_2 Depth=1
	movl	184(%rsp), %edx
	xorl	%r13d, %r13d
	cmpl	136(%rsp), %edx
	jne	.LBB11_49
# BB#44:                                # %if.end.204
                                        #   in Loop: Header=BB11_2 Depth=1
	movq	176(%rsp), %rdi
	movq	%rdi, %rsi
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB11_49
# BB#45:                                # %cleanup
                                        #   in Loop: Header=BB11_2 Depth=1
	movl	$.L.str.49, %esi
	leaq	176(%rsp), %rdi
	callq	gs_glyph_data_free
	movl	$.L.str.49, %esi
	leaq	128(%rsp), %rdi
	callq	gs_glyph_data_free
	.align	16, 0x90
.LBB11_47:                              # %for.inc
                                        #   in Loop: Header=BB11_2 Depth=1
	incq	%r14
	addq	88(%rsp), %r12          # 8-byte Folded Reload
	cmpq	96(%rsp), %r14          # 8-byte Folded Reload
	movl	84(%rsp), %ebp          # 4-byte Reload
	jl	.LBB11_2
.LBB11_48:
	movl	$1, %r13d
.LBB11_49:                              # %cleanup.230
	movl	%r13d, %eax
	addq	$776, %rsp              # imm = 0x308
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_39:                              # %if.then.185
	testl	%ebp, %ebp
	js	.LBB11_49
# BB#40:                                # %if.then.188
	leaq	128(%rsp), %rdi
	movl	$.L.str.49, %esi
	callq	gs_glyph_data_free
	jmp	.LBB11_49
.LBB11_42:                              # %if.then.196
	leaq	176(%rsp), %rdi
	movl	$.L.str.49, %esi
	callq	gs_glyph_data_free
	movl	%ebp, %r13d
	jmp	.LBB11_49
.Lfunc_end11:
	.size	compare_glyphs, .Lfunc_end11-compare_glyphs
	.cfi_endproc

	.globl	copied_drop_extension_glyphs
	.align	16, 0x90
	.type	copied_drop_extension_glyphs,@function
copied_drop_extension_glyphs:           # @copied_drop_extension_glyphs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp110:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp111:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp112:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp113:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp114:
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
.Ltmp115:
	.cfi_def_cfa_offset 144
.Ltmp116:
	.cfi_offset %rbx, -56
.Ltmp117:
	.cfi_offset %r12, -48
.Ltmp118:
	.cfi_offset %r13, -40
.Ltmp119:
	.cfi_offset %r14, -32
.Ltmp120:
	.cfi_offset %r15, -24
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	72(%rdi), %rbx
	movq	%rbx, 80(%rsp)          # 8-byte Spill
	movl	176(%rbx), %ebp
	movl	%ebp, 44(%rsp)          # 4-byte Spill
	movl	$gx_extendeg_glyph_name_separator, %edi
	callq	strlen
	movq	%rax, 16(%rsp)          # 8-byte Spill
	testl	%ebp, %ebp
	je	.LBB12_23
# BB#1:                                 # %for.body.lr.ph
	movq	16(%rsp), %rax          # 8-byte Reload
	cltq
	movq	%rax, 72(%rsp)          # 8-byte Spill
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB12_2:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_5 Depth 2
                                        #     Child Loop BB12_7 Depth 2
                                        #     Child Loop BB12_14 Depth 2
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movq	168(%rbx), %r12
	leaq	(%rcx,%rcx,2), %r14
	cmpb	$0, 16(%r12,%r14,8)
	je	.LBB12_22
# BB#3:                                 # %if.end
                                        #   in Loop: Header=BB12_2 Depth=1
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	192(%rax), %rax
	movl	16(%rax,%r14,8), %ecx
	movq	16(%rsp), %rdx          # 8-byte Reload
	subl	%edx, %ecx
	testl	%ecx, %ecx
	jle	.LBB12_22
# BB#4:                                 # %for.body.8.lr.ph
                                        #   in Loop: Header=BB12_2 Depth=1
	leaq	(%rax,%r14,8), %rdx
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	leaq	8(%rax,%r14,8), %rdx
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movq	8(%rax,%r14,8), %rbx
	movslq	%ecx, %rbp
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB12_5:                               # %for.body.8
                                        #   Parent Loop BB12_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%rbx,%r15), %rsi
	movl	$gx_extendeg_glyph_name_separator, %edi
	movq	72(%rsp), %rdx          # 8-byte Reload
	callq	memcmp
	testl	%eax, %eax
	je	.LBB12_6
# BB#24:                                # %for.inc
                                        #   in Loop: Header=BB12_5 Depth=2
	incq	%r15
	cmpq	%rbp, %r15
	jl	.LBB12_5
	jmp	.LBB12_22
.LBB12_6:                               # %for.body.22.lr.ph
                                        #   in Loop: Header=BB12_2 Depth=1
	leaq	(%r12,%r14,8), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movslq	%r15d, %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	leaq	8(%r12,%r14,8), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	$16, %r13d
	xorl	%r14d, %r14d
	movq	80(%rsp), %rbx          # 8-byte Reload
	movl	44(%rsp), %ebp          # 4-byte Reload
	jmp	.LBB12_7
	.align	16, 0x90
.LBB12_25:                              # %for.inc.65.for.body.22_crit_edge
                                        #   in Loop: Header=BB12_7 Depth=2
	movq	168(%rbx), %r12
	addq	$24, %r13
.LBB12_7:                               # %for.body.22
                                        #   Parent Loop BB12_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	$0, (%r12,%r13)
	je	.LBB12_11
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB12_7 Depth=2
	movq	192(%rbx), %rax
	cmpl	%r15d, (%rax,%r13)
	jne	.LBB12_11
# BB#9:                                 # %land.lhs.true.36
                                        #   in Loop: Header=BB12_7 Depth=2
	movq	-8(%rax,%r13), %rdi
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rsi
	movq	48(%rsp), %rdx          # 8-byte Reload
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB12_11
# BB#10:                                # %land.lhs.true.47
                                        #   in Loop: Header=BB12_7 Depth=2
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rdi
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %esi
	movq	-16(%r12,%r13), %rdx
	movl	-8(%r12,%r13), %ecx
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB12_13
	.align	16, 0x90
.LBB12_11:                              # %for.inc.65
                                        #   in Loop: Header=BB12_7 Depth=2
	incq	%r14
	cmpl	%ebp, %r14d
	jb	.LBB12_25
# BB#12:                                #   in Loop: Header=BB12_2 Depth=1
	movq	56(%rsp), %r14          # 8-byte Reload
.LBB12_13:                              # %for.body.76.lr.ph
                                        #   in Loop: Header=BB12_2 Depth=1
	movslq	%r14d, %rax
	movq	192(%rbx), %rcx
	leaq	(%rax,%rax,2), %rax
	movl	%r15d, 16(%rcx,%rax,8)
	movq	16(%rsp), %rax          # 8-byte Reload
	leal	(%r15,%rax), %r12d
	movslq	%r15d, %r13
	leaq	(%r13,%r13,2), %rax
	movq	8(%rsp), %rcx           # 8-byte Reload
	leaq	(%rcx,%rax,8), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	%ebp, %r15d
	movl	$16, %ebp
	.align	16, 0x90
.LBB12_14:                              # %for.body.76
                                        #   Parent Loop BB12_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%r14d, %r14d
	je	.LBB12_21
# BB#15:                                # %land.lhs.true.79
                                        #   in Loop: Header=BB12_14 Depth=2
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	168(%rax), %rbx
	cmpb	$0, (%rbx,%rbp)
	je	.LBB12_21
# BB#16:                                # %land.lhs.true.86
                                        #   in Loop: Header=BB12_14 Depth=2
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	192(%rax), %rax
	cmpl	%r12d, (%rax,%rbp)
	jb	.LBB12_21
# BB#17:                                # %land.lhs.true.94
                                        #   in Loop: Header=BB12_14 Depth=2
	movq	-8(%rax,%rbp), %rdi
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rsi
	movq	%r13, %rdx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB12_21
# BB#18:                                # %land.lhs.true.105
                                        #   in Loop: Header=BB12_14 Depth=2
	movl	$gx_extendeg_glyph_name_separator, %edi
	movq	48(%rsp), %rsi          # 8-byte Reload
	movq	72(%rsp), %rdx          # 8-byte Reload
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB12_21
# BB#19:                                # %land.lhs.true.111
                                        #   in Loop: Header=BB12_14 Depth=2
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rdi
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	(%rax), %esi
	movq	-16(%rbx,%rbp), %rdx
	movl	-8(%rbx,%rbp), %ecx
	callq	bytes_compare
	testl	%eax, %eax
	jne	.LBB12_21
# BB#20:                                # %if.then.128
                                        #   in Loop: Header=BB12_14 Depth=2
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	168(%rax), %rax
	movb	$0, (%rax,%rbp)
	.align	16, 0x90
.LBB12_21:                              # %for.inc.134
                                        #   in Loop: Header=BB12_14 Depth=2
	decl	%r14d
	addq	$24, %rbp
	decl	%r15d
	jne	.LBB12_14
	.align	16, 0x90
.LBB12_22:                              # %cleanup
                                        #   in Loop: Header=BB12_2 Depth=1
	movq	56(%rsp), %rcx          # 8-byte Reload
	incq	%rcx
	movl	44(%rsp), %eax          # 4-byte Reload
	cmpl	%eax, %ecx
	movq	80(%rsp), %rbx          # 8-byte Reload
	jne	.LBB12_2
.LBB12_23:                              # %for.end.144
	xorl	%eax, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	copied_drop_extension_glyphs, .Lfunc_end12-copied_drop_extension_glyphs
	.cfi_endproc

	.globl	copied_order_font
	.align	16, 0x90
	.type	copied_order_font,@function
copied_order_font:                      # @copied_order_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp123:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp124:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp125:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp126:
	.cfi_def_cfa_offset 48
.Ltmp127:
	.cfi_offset %rbx, -40
.Ltmp128:
	.cfi_offset %r14, -32
.Ltmp129:
	.cfi_offset %r15, -24
.Ltmp130:
	.cfi_offset %rbp, -16
	movl	$copied_enumerate_glyph, %eax
	cmpq	%rax, 216(%rdi)
	je	.LBB13_2
# BB#1:
	movl	$-28, %eax
	jmp	.LBB13_15
.LBB13_2:                               # %if.end
	movl	128(%rdi), %ecx
	decl	%ecx
	xorl	%eax, %eax
	cmpl	$1, %ecx
	ja	.LBB13_15
# BB#3:                                 # %if.end.5
	movq	72(%rdi), %rbx
	movl	$1, 304(%rbx)
	movq	16(%rdi), %r14
	movl	180(%rbx), %esi
	movl	$8, %edx
	movl	$.L.str.50, %ecx
	movq	%r14, %rdi
	callq	*88(%r14)
	movq	%rax, %r15
	movl	$-25, %eax
	testq	%r15, %r15
	je	.LBB13_15
# BB#4:                                 # %for.cond.preheader.i
	movl	176(%rbx), %eax
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB13_11
# BB#5:                                 # %for.body.lr.ph.i
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB13_6:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	168(%rbx), %rsi
	cmpb	$0, 16(%rsi,%rcx)
	je	.LBB13_10
# BB#7:                                 # %if.then.2.i
                                        #   in Loop: Header=BB13_6 Depth=1
	cmpl	180(%rbx), %ebp
	jae	.LBB13_8
# BB#9:                                 # %if.end.6.i
                                        #   in Loop: Header=BB13_6 Depth=1
	movslq	%ebp, %rsi
	incl	%ebp
	movq	192(%rbx), %rdi
	addq	%rcx, %rdi
	movq	%rdi, (%r15,%rsi,8)
.LBB13_10:                              # %for.inc.i
                                        #   in Loop: Header=BB13_6 Depth=1
	incl	%edx
	addq	$24, %rcx
	cmpl	%eax, %edx
	jb	.LBB13_6
.LBB13_11:                              # %for.end.i
	movl	180(%rbx), %esi
	movl	$8, %edx
	movl	$compare_glyph_names, %ecx
	movq	%r15, %rdi
	callq	qsort
	testl	%ebp, %ebp
	jle	.LBB13_14
# BB#12:                                # %for.body.17.lr.ph.i
	movq	168(%rbx), %rdx
	movq	192(%rbx), %rax
	movslq	%ebp, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	leaq	1(%rcx), %rcx
	leaq	-4(%rdx,%rsi,8), %rdx
	.align	16, 0x90
.LBB13_13:                              # %for.body.17.i
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%r15,%rcx,8), %rsi
	subq	%rax, %rsi
	shrq	$3, %rsi
	imull	$-1431655765, %esi, %esi # imm = 0xFFFFFFFFAAAAAAAB
	movl	%esi, (%rdx)
	decq	%rcx
	addq	$-24, %rdx
	cmpq	$1, %rcx
	jg	.LBB13_13
.LBB13_14:                              # %for.end.27.i
	movl	$.L.str.50, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*24(%r14)
	xorl	%eax, %eax
	jmp	.LBB13_15
.LBB13_8:
	movl	$-28, %eax
.LBB13_15:                              # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	copied_order_font, .Lfunc_end13-copied_order_font
	.cfi_endproc

	.align	16, 0x90
	.type	copied_enumerate_glyph,@function
copied_enumerate_glyph:                 # @copied_enumerate_glyph
	.cfi_startproc
# BB#0:                                 # %entry
	movq	72(%rdi), %r8
	movslq	(%rsi), %rax
	cmpl	$0, 304(%r8)
	je	.LBB14_1
# BB#7:                                 # %if.then
	xorl	%edx, %edx
	cmpl	180(%r8), %eax
	jae	.LBB14_9
# BB#8:                                 # %if.else
	leaq	(%rax,%rax,2), %rdx
	movq	168(%r8), %rdi
	movq	192(%r8), %r8
	movslq	20(%rdi,%rdx,8), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	movq	(%r8,%rdx,8), %rdx
	movq	%rdx, (%rcx)
	leal	1(%rax), %edx
.LBB14_9:                               # %if.end
	movl	%edx, (%rsi)
	xorl	%eax, %eax
	retq
.LBB14_1:                               # %for.cond.preheader
	cmpl	176(%r8), %eax
	jae	.LBB14_13
# BB#2:                                 # %for.body.lr.ph
	movq	168(%r8), %r9
	leaq	(%rax,%rax,2), %rdi
	leaq	16(%r9,%rdi,8), %rdi
	.align	16, 0x90
.LBB14_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%rdi)
	jne	.LBB14_4
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB14_3 Depth=1
	incq	%rax
	movl	%eax, (%rsi)
	addq	$24, %rdi
	cmpl	176(%r8), %eax
	jb	.LBB14_3
.LBB14_13:                              # %for.end
	movl	$0, (%rsi)
	xorl	%eax, %eax
	retq
.LBB14_4:                               # %if.then.10
	testl	%edx, %edx
	jne	.LBB14_10
# BB#5:                                 # %land.lhs.true
	movq	192(%r8), %rdi
	testq	%rdi, %rdi
	je	.LBB14_10
# BB#6:                                 # %cond.true
	leaq	(%rax,%rax,2), %rdx
	movq	(%rdi,%rdx,8), %rdi
	jmp	.LBB14_11
.LBB14_10:                              # %cond.false
	movl	$2147483648, %r8d       # imm = 0x80000000
	leaq	1073741824(%r8), %rdi
	testl	%edx, %edx
	movslq	%eax, %rdx
	cmoveq	%r8, %rdi
	addq	%rdx, %rdi
.LBB14_11:                              # %cond.end
	movq	%rdi, (%rcx)
	leal	1(%rax), %eax
	movl	%eax, (%rsi)
	xorl	%eax, %eax
	retq
.Lfunc_end14:
	.size	copied_enumerate_glyph, .Lfunc_end14-copied_enumerate_glyph
	.cfi_endproc

	.globl	copied_get_notdef
	.align	16, 0x90
	.type	copied_get_notdef,@function
copied_get_notdef:                      # @copied_get_notdef
	.cfi_startproc
# BB#0:                                 # %entry
	movq	72(%rdi), %rax
	movq	184(%rax), %rax
	retq
.Lfunc_end15:
	.size	copied_get_notdef, .Lfunc_end15-copied_get_notdef
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI16_0:
	.quad	2147483647              # 0x7fffffff
	.quad	2147483647              # 0x7fffffff
	.text
	.align	16, 0x90
	.type	copy_font_type42,@function
copy_font_type42:                       # @copy_font_type42
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp131:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp132:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp133:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp134:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp135:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp136:
	.cfi_def_cfa_offset 56
	subq	$408, %rsp              # imm = 0x198
.Ltmp137:
	.cfi_def_cfa_offset 464
.Ltmp138:
	.cfi_offset %rbx, -56
.Ltmp139:
	.cfi_offset %r12, -48
.Ltmp140:
	.cfi_offset %r13, -40
.Ltmp141:
	.cfi_offset %r14, -32
.Ltmp142:
	.cfi_offset %r15, -24
.Ltmp143:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	72(%r14), %r13
	movl	596(%rbx), %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leal	(,%rax,8), %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	$0, 404(%rsp)
	leaq	404(%rsp), %r15
	leaq	392(%rsp), %rbp
	movl	$2147483647, %r12d      # imm = 0x7FFFFFFF
	.align	16, 0x90
.LBB16_1:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rcx
	callq	*216(%rbx)
	cmpl	$0, 404(%rsp)
	je	.LBB16_4
# BB#2:                                 # %while.body.i
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	392(%rsp), %rsi
	movq	%rbx, %rdi
	callq	gs_font_glyph_is_notdef
	testl	%eax, %eax
	je	.LBB16_1
# BB#3:                                 # %if.then.i
	movq	392(%rsp), %r12
.LBB16_4:                               # %find_notdef.exit
	movq	%r12, 184(%r13)
	movq	16(%r14), %rdi
	movq	72(%r14), %r15
	movl	$256, %esi              # imm = 0x100
	movl	$8, %edx
	movl	$.L.str.22, %ecx
	callq	*88(%rdi)
	movl	$-25, %ebp
	movl	$14, %ecx
	testq	%rax, %rax
	je	.LBB16_19
# BB#5:
	movaps	.LCPI16_0(%rip), %xmm0  # xmm0 = [2147483647,2147483647]
	.align	16, 0x90
.LBB16_6:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, -112(%rax,%rcx,8)
	movups	%xmm0, -96(%rax,%rcx,8)
	movups	%xmm0, -80(%rax,%rcx,8)
	movups	%xmm0, -64(%rax,%rcx,8)
	movups	%xmm0, -48(%rax,%rcx,8)
	movups	%xmm0, -32(%rax,%rcx,8)
	movups	%xmm0, -16(%rax,%rcx,8)
	movups	%xmm0, (%rax,%rcx,8)
	addq	$16, %rcx
	cmpq	$270, %rcx              # imm = 0x10E
	jne	.LBB16_6
# BB#7:                                 # %if.end
	movq	%r13, 24(%rsp)          # 8-byte Spill
	movq	%rax, 224(%r15)
	movq	16(%rbx), %rsi
	leaq	40(%rsp), %rbp
	movq	%rbp, %rdi
	callq	s_init
	movq	%rbp, %rdi
	callq	swrite_position_only
	cmpl	$42, 128(%rbx)
	jne	.LBB16_9
# BB#8:                                 # %cond.true
	leaq	40(%rsp), %rdi
	movq	%rbx, %rsi
	callq	psf_write_truetype_stripped
	jmp	.LBB16_10
.LBB16_9:                               # %cond.false
	leaq	40(%rsp), %rdi
	movq	%rbx, %rsi
	callq	psf_write_cid2_stripped
.LBB16_10:                              # %cond.end
	movl	%eax, %ebp
	movq	72(%r14), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	leaq	40(%rsp), %rdi
	callq	stell
	movq	%rax, %r15
	testl	%ebp, %ebp
	js	.LBB16_18
# BB#11:                                # %if.end.i
	movq	16(%r14), %rdi
	movq	32(%rsp), %rax          # 8-byte Reload
	leal	(%r15,%rax), %r12d
	movl	$.L.str.23, %edx
	movl	%r12d, %esi
	callq	*64(%rdi)
	movq	%rax, %r13
	movl	$-25, %ebp
	testq	%r13, %r13
	je	.LBB16_18
# BB#12:                                # %if.end.9
	movq	16(%r14), %rsi
	leaq	40(%rsp), %rbp
	movq	%rbp, %rdi
	callq	s_init
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movl	%r15d, %edx
	callq	swrite_string
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%r13, 208(%rax)
	movl	%r12d, 216(%rax)
	cmpl	$42, 128(%rbx)
	jne	.LBB16_14
# BB#13:                                # %if.then.12
	leaq	40(%rsp), %rdi
	movq	%rbx, %rsi
	callq	psf_write_truetype_stripped
	jmp	.LBB16_15
.LBB16_14:                              # %if.else
	leaq	40(%rsp), %rdi
	movq	%rbx, %rsi
	callq	psf_write_cid2_stripped
.LBB16_15:                              # %if.end.15
	movq	24(%rsp), %r12          # 8-byte Reload
	movq	$copied_type42_string_proc, 448(%r14)
	movq	%r12, 456(%r14)
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	gs_type42_font_init
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB16_17
# BB#16:                                # %if.end.21
	movq	$copied_font_info, 184(%r14)
	movq	$copied_enumerate_glyph, 216(%r14)
	movq	$copied_type42_get_glyph_index, 464(%r14)
	movq	$copied_type42_get_outline, 472(%r14)
	movq	$copied_type42_get_metrics, 480(%r14)
	movq	16(%rsp), %rdx          # 8-byte Reload
	movl	%edx, %eax
	andl	$536870911, %eax        # imm = 0x1FFFFFFF
	movl	%eax, 544(%r14)
	movl	%eax, 520(%r14)
	movl	216(%r12), %edi
	movl	%edi, %eax
	movq	32(%rsp), %rcx          # 8-byte Reload
	subl	%ecx, %eax
	movq	%rax, 528(%r14)
	shll	$2, %edx
	andl	$2147483644, %edx       # imm = 0x7FFFFFFC
	movl	%edi, %eax
	subl	%edx, %eax
	movq	%rax, 552(%r14)
	movl	%edx, 560(%r14)
	movl	%edx, 536(%r14)
	addq	208(%r12), %rdi
	movl	%ecx, %edx
	subq	%rdx, %rdi
	xorl	%esi, %esi
	callq	memset
	movl	592(%rbx), %eax
	movl	%eax, 592(%r14)
	movl	596(%rbx), %eax
	movl	%eax, 596(%r14)
	jmp	.LBB16_19
.LBB16_17:                              # %fail2
	movq	16(%r14), %rdi
	movq	208(%r12), %rsi
	movq	%r12, 24(%rsp)          # 8-byte Spill
	movl	$.L.str.20, %edx
	callq	*24(%rdi)
	movl	%r15d, %ebp
.LBB16_18:                              # %fail
	movq	16(%r14), %rdi
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	224(%rax), %rsi
	movl	$.L.str.21, %edx
	callq	*24(%rdi)
.LBB16_19:                              # %cleanup
	movl	%ebp, %eax
	addq	$408, %rsp              # imm = 0x198
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	copy_font_type42, .Lfunc_end16-copy_font_type42
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI17_1:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.align	16, 0x90
	.type	copy_glyph_type42,@function
copy_glyph_type42:                      # @copy_glyph_type42
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp144:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp145:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp146:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp147:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp148:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp149:
	.cfi_def_cfa_offset 56
	subq	$136, %rsp
.Ltmp150:
	.cfi_def_cfa_offset 192
.Ltmp151:
	.cfi_offset %rbx, -56
.Ltmp152:
	.cfi_offset %r12, -48
.Ltmp153:
	.cfi_offset %r13, -40
.Ltmp154:
	.cfi_offset %r14, -32
.Ltmp155:
	.cfi_offset %r15, -24
.Ltmp156:
	.cfi_offset %rbp, -16
	movl	%ecx, %r13d
	movq	%rdx, %rbp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	testb	$4, %r13b
	jne	.LBB17_1
# BB#2:                                 # %cond.false
	cmpl	$11, 128(%rbx)
	jne	.LBB17_4
# BB#3:                                 # %cond.true.1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*720(%rbx)
	jmp	.LBB17_5
.LBB17_1:                               # %cond.true
	movabsq	$-3221225472, %rax      # imm = 0xFFFFFFFF40000000
	leaq	(%rax,%r14), %r15
	jmp	.LBB17_6
.LBB17_4:                               # %cond.false.2
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*464(%rbx)
.LBB17_5:                               # %cond.end
	movl	%eax, %r15d
.LBB17_6:                               # %cond.end.4
	movq	72(%rbp), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	512(%rbx), %eax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	16(%rbx), %rax
	movq	%rax, 128(%rsp)
	leaq	88(%rsp), %rdx
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	*472(%rbx)
	movl	%eax, %r12d
	testl	%r15d, %r15d
	je	.LBB17_7
# BB#8:                                 # %cond.end.4
	testl	%r12d, %r12d
	jns	.LBB17_7
# BB#9:                                 # %if.then
	leaq	48(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*240(%rbx)
	testl	%eax, %eax
	js	.LBB17_7
# BB#10:                                # %land.lhs.true.20
	movl	%r13d, 16(%rsp)         # 4-byte Spill
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	cmpl	$7, 56(%rsp)
	jne	.LBB17_13
# BB#11:                                # %land.lhs.true.23
	movq	48(%rsp), %rdi
	movl	$.L.str.24, %esi
	movl	$7, %edx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB17_13
# BB#12:                                # %if.then.27
	xorl	%r15d, %r15d
	leaq	88(%rsp), %rdx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	*472(%rbx)
	movl	%eax, %r12d
	jmp	.LBB17_13
.LBB17_7:
	movl	%r13d, 16(%rsp)         # 4-byte Spill
	movq	%rbp, 40(%rsp)          # 8-byte Spill
.LBB17_13:                              # %if.end.31
	testl	%r12d, %r12d
	js	.LBB17_24
# BB#14:                                # %if.end.35
	movq	%r14, %rbp
	movl	$2147483648, %eax       # imm = 0x80000000
	movl	%r15d, %r13d
	leaq	1073741824(%r13,%rax), %r14
	leaq	88(%rsp), %rcx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	movq	40(%rsp), %rsi          # 8-byte Reload
	movl	16(%rsp), %edx          # 4-byte Reload
	callq	copy_glyph_data
	movl	%eax, %r12d
	testl	%r12d, %r12d
	js	.LBB17_24
# BB#15:                                # %if.end.41
	movl	$2147483648, %eax       # imm = 0x80000000
	cmpq	%rax, %rbp
	movl	%r12d, %eax
	jae	.LBB17_17
# BB#16:                                # %if.then.44
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	40(%rsp), %rdx          # 8-byte Reload
	movq	%r14, %rcx
	callq	copy_glyph_name
.LBB17_17:                              # %if.end.48
	movl	%eax, 4(%rsp)           # 4-byte Spill
	xorl	%r14d, %r14d
	movq	32(%rsp), %rax          # 8-byte Reload
	cmpl	176(%rax), %r15d
	jae	.LBB17_19
# BB#18:                                # %if.end.i
	leaq	(%r13,%r13,2), %r14
	shlq	$3, %r14
	movq	32(%rsp), %rax          # 8-byte Reload
	addq	168(%rax), %r14
.LBB17_19:                              # %for.cond.preheader
	movq	8(%rsp), %rax           # 8-byte Reload
	cvtsi2sdq	%rax, %xmm0
	movapd	%xmm0, 16(%rsp)         # 16-byte Spill
	leal	(,%r15,4), %ebp
	leaq	64(%rsp), %rcx
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	*480(%rbx)
	movapd	16(%rsp), %xmm3         # 16-byte Reload
	testl	%eax, %eax
	movq	40(%rsp), %r13          # 8-byte Reload
	js	.LBB17_21
# BB#20:                                # %if.then.58
	movss	64(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	72(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm3, %xmm0
	movsd	.LCPI17_0(%rip), %xmm2  # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	mulsd	%xmm3, %xmm0
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %rcx
	movq	32(%rsp), %rdx          # 8-byte Reload
	movq	208(%rdx), %rdx
	addq	528(%r13), %rdx
	movb	%ch, (%rbp,%rdx)  # NOREX
	movb	%cl, 1(%rbp,%rdx)
	movb	%ah, 2(%rbp,%rdx)  # NOREX
	movb	%al, 3(%rbp,%rdx)
	orb	$2, 16(%r14)
.LBB17_21:                              # %if.end.86
	leaq	64(%rsp), %rcx
	movl	$1, %edx
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	*480(%rbx)
	testl	%eax, %eax
	js	.LBB17_23
# BB#22:                                # %if.then.58.1
	movapd	16(%rsp), %xmm3         # 16-byte Reload
	xorpd	.LCPI17_1(%rip), %xmm3
	movss	68(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	76(%rsp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm3, %xmm0
	movsd	.LCPI17_0(%rip), %xmm2  # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	mulsd	%xmm3, %xmm0
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %rcx
	movq	32(%rsp), %rdx          # 8-byte Reload
	movq	208(%rdx), %rdx
	addq	552(%r13), %rdx
	movb	%ch, (%rbp,%rdx)  # NOREX
	movb	%cl, 1(%rbp,%rdx)
	movb	%ah, 2(%rbp,%rdx)  # NOREX
	movb	%al, 3(%rbp,%rdx)
	orb	$4, 16(%r14)
.LBB17_23:                              # %if.end.86.1
	movl	4(%rsp), %eax           # 4-byte Reload
	testl	%eax, %eax
	cmovsl	%eax, %r12d
.LBB17_24:                              # %cleanup
	movl	%r12d, %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	copy_glyph_type42, .Lfunc_end17-copy_glyph_type42
	.cfi_endproc

	.align	16, 0x90
	.type	copied_char_add_encoding,@function
copied_char_add_encoding:               # @copied_char_add_encoding
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp157:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp158:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp159:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp160:
	.cfi_def_cfa_offset 48
.Ltmp161:
	.cfi_offset %rbx, -32
.Ltmp162:
	.cfi_offset %r14, -24
.Ltmp163:
	.cfi_offset %r15, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	72(%rdi), %rdi
	movl	$-28, %eax
	cmpl	$0, 304(%rdi)
	jne	.LBB18_14
# BB#1:                                 # %if.end
	movq	224(%rdi), %r15
	movl	$-7, %eax
	testq	%r15, %r15
	je	.LBB18_14
# BB#2:                                 # %if.end.3
	cmpq	$255, %r14
	movl	$-15, %eax
	ja	.LBB18_14
# BB#3:                                 # %if.end.3
	cmpq	$2147483647, %rbx       # imm = 0x7FFFFFFF
	ja	.LBB18_14
# BB#4:                                 # %if.end.7
	movl	176(%rdi), %ecx
	movq	$0, 8(%rsp)
	movq	%rbx, %rdx
	shrq	$30, %rdx
	cmpq	$3, %rdx
	jb	.LBB18_7
# BB#5:                                 # %if.then.i
	movabsq	$-3221225472, %rdx      # imm = 0xFFFFFFFF40000000
	leaq	(%rdx,%rbx), %rdx
	cmpq	%rcx, %rdx
	jae	.LBB18_14
# BB#6:                                 # %if.end.i
	leaq	(%rdx,%rdx,2), %rcx
	shlq	$3, %rcx
	addq	168(%rdi), %rcx
	movq	%rcx, 8(%rsp)
	jmp	.LBB18_10
.LBB18_7:                               # %if.else.17.i
	cmpq	$0, 192(%rdi)
	je	.LBB18_14
# BB#8:                                 # %if.else.21.i
	movq	160(%rdi), %rax
	leaq	8(%rsp), %rdx
	movq	%rbx, %rsi
	callq	*24(%rax)
	testl	%eax, %eax
	js	.LBB18_14
# BB#9:                                 # %if.else.21.if.end.28_crit_edge.i
	movq	8(%rsp), %rcx
.LBB18_10:                              # %if.end.28.i
	movl	$-21, %eax
	cmpb	$0, 16(%rcx)
	je	.LBB18_14
# BB#11:                                # %if.end.11
	movq	(%r15,%r14,8), %rax
	cmpq	%rbx, %rax
	je	.LBB18_13
# BB#12:                                # %if.end.11
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	movl	$-7, %eax
	jne	.LBB18_14
.LBB18_13:                              # %if.end.16
	movq	%rbx, (%r15,%r14,8)
	xorl	%eax, %eax
.LBB18_14:                              # %cleanup
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end18:
	.size	copied_char_add_encoding, .Lfunc_end18-copied_char_add_encoding
	.cfi_endproc

	.align	16, 0x90
	.type	named_glyph_slot_linear,@function
named_glyph_slot_linear:                # @named_glyph_slot_linear
	.cfi_startproc
# BB#0:                                 # %entry
	movl	176(%rdi), %r8d
	xorl	%eax, %eax
	testl	%r8d, %r8d
	je	.LBB19_5
# BB#1:
	movq	192(%rdi), %rcx
	.align	16, 0x90
.LBB19_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, (%rcx)
	je	.LBB19_4
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB19_3 Depth=1
	incq	%rax
	addq	$24, %rcx
	cmpl	%r8d, %eax
	jb	.LBB19_3
.LBB19_5:                               # %cleanup.cont
	movq	200(%rdi), %rcx
	movl	$-15, %eax
	jmp	.LBB19_6
	.align	16, 0x90
.LBB19_10:                              # %for.inc.17
                                        #   in Loop: Header=BB19_6 Depth=1
	movq	32(%rcx), %rcx
.LBB19_6:                               # %cleanup.cont
                                        # =>This Inner Loop Header: Depth=1
	testq	%rcx, %rcx
	je	.LBB19_9
# BB#7:                                 # %for.body.9
                                        #   in Loop: Header=BB19_6 Depth=1
	cmpq	%rsi, (%rcx)
	jne	.LBB19_10
# BB#8:                                 # %if.then.12
	movl	24(%rcx), %eax
	leaq	(%rax,%rax,2), %rax
	shlq	$3, %rax
	addq	168(%rdi), %rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
.LBB19_9:                               # %cleanup.19
	retq
.LBB19_4:                               # %if.then
	leaq	(%rax,%rax,2), %rax
	shlq	$3, %rax
	addq	168(%rdi), %rax
	movq	%rax, (%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end19:
	.size	named_glyph_slot_linear, .Lfunc_end19-named_glyph_slot_linear
	.cfi_endproc

	.align	16, 0x90
	.type	copied_type42_encode_char,@function
copied_type42_encode_char:              # @copied_type42_encode_char
	.cfi_startproc
# BB#0:                                 # %entry
	cmpq	$255, %rsi
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ja	.LBB20_15
# BB#1:                                 # %entry
	movq	72(%rdi), %rcx
	movq	224(%rcx), %rdi
	testq	%rdi, %rdi
	je	.LBB20_15
# BB#2:                                 # %if.end
	movq	(%rdi,%rsi,8), %rsi
	cmpl	$1, %edx
	jne	.LBB20_3
# BB#4:                                 # %if.then.4
	movl	176(%rcx), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.LBB20_10
# BB#5:
	movq	192(%rcx), %rdi
	.align	16, 0x90
.LBB20_7:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, (%rdi)
	je	.LBB20_8
# BB#6:                                 # %for.cond.i
                                        #   in Loop: Header=BB20_7 Depth=1
	incq	%rax
	addq	$24, %rdi
	cmpl	%edx, %eax
	jb	.LBB20_7
.LBB20_10:                              # %cleanup.cont.i
	movq	200(%rcx), %rdx
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	testq	%rdx, %rdx
	je	.LBB20_15
# BB#11:
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	.align	16, 0x90
.LBB20_12:                              # %for.body.9.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, (%rdx)
	je	.LBB20_13
# BB#14:                                # %for.inc.17.i
                                        #   in Loop: Header=BB20_12 Depth=1
	movq	32(%rdx), %rdx
	testq	%rdx, %rdx
	jne	.LBB20_12
	jmp	.LBB20_15
.LBB20_3:
	movq	%rsi, %rax
	retq
.LBB20_13:                              # %if.then.12.i
	movl	24(%rdx), %eax
.LBB20_8:                               # %if.then.i
	movq	168(%rcx), %rdx
	leaq	(%rax,%rax,2), %rax
	leaq	(%rdx,%rax,8), %rcx
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	cmpb	$0, 16(%rcx)
	je	.LBB20_15
# BB#9:                                 # %if.end.9
	subq	%rdx, %rcx
	sarq	$3, %rcx
	movabsq	$-6148914691236517205, %rdx # imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rcx, %rdx
	movl	$3221225472, %eax       # imm = 0xC0000000
	addq	%rdx, %rax
	retq
.LBB20_15:                              # %cleanup.12
	retq
.Lfunc_end20:
	.size	copied_type42_encode_char, .Lfunc_end20-copied_type42_encode_char
	.cfi_endproc

	.align	16, 0x90
	.type	copied_type42_string_proc,@function
copied_type42_string_proc:              # @copied_type42_string_proc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	456(%rdi), %r8
	movl	%edx, %edx
	addq	%rsi, %rdx
	movl	216(%r8), %edi
	movl	$-15, %eax
	cmpq	%rdi, %rdx
	ja	.LBB21_2
# BB#1:                                 # %if.end
	addq	208(%r8), %rsi
	movq	%rsi, (%rcx)
	xorl	%eax, %eax
.LBB21_2:                               # %cleanup
	retq
.Lfunc_end21:
	.size	copied_type42_string_proc, .Lfunc_end21-copied_type42_string_proc
	.cfi_endproc

	.align	16, 0x90
	.type	copied_type42_get_glyph_index,@function
copied_type42_get_glyph_index:          # @copied_type42_get_glyph_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp164:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp165:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp166:
	.cfi_def_cfa_offset 32
.Ltmp167:
	.cfi_offset %rbx, -24
.Ltmp168:
	.cfi_offset %rbp, -16
	movq	72(%rdi), %rbx
	movl	176(%rbx), %eax
	movq	$0, (%rsp)
	movq	%rsi, %rcx
	shrq	$30, %rcx
	cmpq	$3, %rcx
	jb	.LBB22_4
# BB#1:                                 # %if.then.i
	movabsq	$-3221225472, %rcx      # imm = 0xFFFFFFFF40000000
	addq	%rcx, %rsi
	jmp	.LBB22_2
.LBB22_4:                               # %if.else.i
	testq	$-2147483648, %rsi      # imm = 0xFFFFFFFF80000000
	je	.LBB22_6
# BB#5:                                 # %if.then.7.i
	addq	$-2147483648, %rsi      # imm = 0xFFFFFFFF80000000
.LBB22_2:                               # %if.then.i
	movl	$2147483647, %ebp       # imm = 0x7FFFFFFF
	cmpq	%rax, %rsi
	jae	.LBB22_11
# BB#3:                                 # %if.end.i
	leaq	(%rsi,%rsi,2), %rax
	shlq	$3, %rax
	addq	168(%rbx), %rax
	movq	%rax, (%rsp)
	jmp	.LBB22_9
.LBB22_6:                               # %if.else.17.i
	movl	$2147483647, %ebp       # imm = 0x7FFFFFFF
	cmpq	$0, 192(%rbx)
	je	.LBB22_11
# BB#7:                                 # %if.else.21.i
	movq	160(%rbx), %rax
	leaq	(%rsp), %rdx
	movq	%rbx, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	js	.LBB22_11
# BB#8:                                 # %if.else.21.if.end.28_crit_edge.i
	movq	(%rsp), %rax
.LBB22_9:                               # %if.end.28.i
	movl	$2147483647, %ebp       # imm = 0x7FFFFFFF
	cmpb	$0, 16(%rax)
	je	.LBB22_11
# BB#10:                                # %if.end
	subq	168(%rbx), %rax
	shrq	$3, %rax
	imull	$-1431655765, %eax, %ebp # imm = 0xFFFFFFFFAAAAAAAB
.LBB22_11:                              # %cleanup
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end22:
	.size	copied_type42_get_glyph_index, .Lfunc_end22-copied_type42_get_glyph_index
	.cfi_endproc

	.align	16, 0x90
	.type	copied_type42_get_outline,@function
copied_type42_get_outline:              # @copied_type42_get_outline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp169:
	.cfi_def_cfa_offset 16
.Ltmp170:
	.cfi_offset %rbx, -16
	movq	456(%rdi), %rax
	movl	$-15, %ebx
	cmpl	%esi, 176(%rax)
	jbe	.LBB23_4
# BB#1:                                 # %if.end
	movl	%esi, %ecx
	movq	168(%rax), %rax
	leaq	(%rcx,%rcx,2), %rcx
	cmpb	$0, 16(%rax,%rcx,8)
	je	.LBB23_2
# BB#3:                                 # %if.else
	movq	(%rax,%rcx,8), %rsi
	movl	8(%rax,%rcx,8), %eax
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	movq	%rdx, %rdi
	movl	%eax, %edx
	callq	gs_glyph_data_from_string
	jmp	.LBB23_4
.LBB23_2:                               # %if.then.1
	movq	%rdx, %rdi
	callq	gs_glyph_data_from_null
	xorl	%ebx, %ebx
.LBB23_4:                               # %cleanup
	movl	%ebx, %eax
	popq	%rbx
	retq
.Lfunc_end23:
	.size	copied_type42_get_outline, .Lfunc_end23-copied_type42_get_outline
	.cfi_endproc

	.align	16, 0x90
	.type	copied_type42_get_metrics,@function
copied_type42_get_metrics:              # @copied_type42_get_metrics
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rcx, %r8
	movq	456(%rdi), %rcx
	movl	$-15, %eax
	cmpl	%esi, 176(%rcx)
	jbe	.LBB24_2
# BB#1:                                 # %if.end
	movl	%esi, %eax
	movq	168(%rcx), %rcx
	leaq	(%rax,%rax,2), %rax
	movzbl	16(%rcx,%rax,8), %r9d
	movb	%dl, %cl
	andb	$1, %cl
	movl	$2, %r10d
	shll	%cl, %r10d
	movl	$-21, %eax
	testl	%r10d, %r9d
	je	.LBB24_2
# BB#3:                                 # %if.end.3
	movq	%r8, %rcx
	jmp	gs_type42_default_get_metrics # TAILCALL
.LBB24_2:                               # %cleanup
	retq
.Lfunc_end24:
	.size	copied_type42_get_metrics, .Lfunc_end24-copied_type42_get_metrics
	.cfi_endproc

	.align	16, 0x90
	.type	copied_glyph_slot,@function
copied_glyph_slot:                      # @copied_glyph_slot
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp171:
	.cfi_def_cfa_offset 16
.Ltmp172:
	.cfi_offset %rbx, -16
	movq	%rdx, %rbx
	movl	176(%rdi), %ecx
	movq	$0, (%rbx)
	movq	%rsi, %rax
	shrq	$30, %rax
	cmpq	$3, %rax
	jb	.LBB25_4
# BB#1:                                 # %if.then
	movabsq	$-3221225472, %rax      # imm = 0xFFFFFFFF40000000
	addq	%rax, %rsi
	jmp	.LBB25_2
.LBB25_4:                               # %if.else
	testq	$-2147483648, %rsi      # imm = 0xFFFFFFFF80000000
	je	.LBB25_6
# BB#5:                                 # %if.then.7
	addq	$-2147483648, %rsi      # imm = 0xFFFFFFFF80000000
.LBB25_2:                               # %if.then
	movl	$-15, %eax
	cmpq	%rcx, %rsi
	jae	.LBB25_11
# BB#3:                                 # %if.end
	leaq	(%rsi,%rsi,2), %rcx
	shlq	$3, %rcx
	addq	168(%rdi), %rcx
	movq	%rcx, (%rbx)
	jmp	.LBB25_9
.LBB25_6:                               # %if.else.17
	movl	$-15, %eax
	cmpq	$0, 192(%rdi)
	je	.LBB25_11
# BB#7:                                 # %if.else.21
	movq	160(%rdi), %rax
	movq	%rbx, %rdx
	callq	*24(%rax)
	testl	%eax, %eax
	js	.LBB25_11
# BB#8:                                 # %if.else.21.if.end.28_crit_edge
	movq	(%rbx), %rcx
.LBB25_9:                               # %if.end.28
	movl	$-21, %eax
	cmpb	$0, 16(%rcx)
	je	.LBB25_11
# BB#10:                                # %select.mid
	xorl	%eax, %eax
.LBB25_11:                              # %cleanup.31
	popq	%rbx
	retq
.Lfunc_end25:
	.size	copied_glyph_slot, .Lfunc_end25-copied_glyph_slot
	.cfi_endproc

	.align	16, 0x90
	.type	copy_glyph_data,@function
copy_glyph_data:                        # @copy_glyph_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp173:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp174:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp175:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp176:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp177:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp178:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp179:
	.cfi_def_cfa_offset 80
.Ltmp180:
	.cfi_offset %rbx, -56
.Ltmp181:
	.cfi_offset %r12, -48
.Ltmp182:
	.cfi_offset %r13, -40
.Ltmp183:
	.cfi_offset %r14, -32
.Ltmp184:
	.cfi_offset %r15, -24
.Ltmp185:
	.cfi_offset %rbp, -16
	movl	%r9d, %r12d
	movq	%rcx, %r13
	movl	%edx, %r10d
	movq	%rsi, %r15
	movq	%rdi, %rax
	movq	72(%r15), %rbx
	movl	8(%r13), %r9d
	movl	176(%rbx), %ecx
	movq	$0, 16(%rsp)
	movq	%rax, %rdx
	shrq	$30, %rdx
	cmpq	$3, %rdx
	jb	.LBB26_4
# BB#1:                                 # %if.then.i
	movabsq	$-3221225472, %rdx      # imm = 0xFFFFFFFF40000000
	addq	%rdx, %rax
	jmp	.LBB26_2
.LBB26_4:                               # %if.else.i
	testq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	je	.LBB26_6
# BB#5:                                 # %if.then.7.i
	addq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
.LBB26_2:                               # %if.then.i
	movl	$-15, %ebp
	cmpq	%rcx, %rax
	jae	.LBB26_11
# BB#3:                                 # %if.end.i
	leaq	(%rax,%rax,2), %rax
	shlq	$3, %rax
	addq	168(%rbx), %rax
	movq	%rax, 16(%rsp)
	jmp	.LBB26_9
.LBB26_6:                               # %if.else.17.i
	movl	$-15, %ebp
	cmpq	$0, 192(%rbx)
	je	.LBB26_11
# BB#7:                                 # %if.else.21.i
	movq	160(%rbx), %rcx
	leaq	16(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%r9, %rbp
	movq	%r12, %r14
	movq	%r8, %r12
	movq	%r13, 8(%rsp)           # 8-byte Spill
	movl	%r10d, %r13d
	callq	*24(%rcx)
	movl	%r13d, %r10d
	movq	8(%rsp), %r13           # 8-byte Reload
	movq	%r12, %r8
	movq	%r14, %r12
	movq	%rbp, %r9
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB26_11
# BB#8:                                 # %if.else.21.if.end.28_crit_edge.i
	movq	16(%rsp), %rax
.LBB26_9:                               # %if.end.28.i
	movl	$-21, %ebp
	cmpb	$0, 16(%rax)
	je	.LBB26_11
# BB#10:                                # %select.mid
	xorl	%ebp, %ebp
.LBB26_11:                              # %copied_glyph_slot.exit
	movl	$-28, %eax
	cmpl	$0, 304(%rbx)
	jne	.LBB26_25
# BB#12:                                # %if.end
	cmpl	$-21, %ebp
	jne	.LBB26_13
# BB#18:                                # %sw.bb.19
	movl	$-21, %ebp
	testb	$2, %r10b
	jne	.LBB26_24
# BB#19:                                # %sw.bb.19
	movq	%r8, 8(%rsp)            # 8-byte Spill
	movq	16(%rsp), %rax
	testq	%rax, %rax
	je	.LBB26_24
# BB#20:                                # %if.else.27
	leal	(%r9,%r12), %r14d
	movq	16(%r15), %rdi
	movl	$.L.str.25, %edx
	movl	%r14d, %esi
	movq	%r9, %rbp
	callq	*136(%rdi)
	movq	%rbp, %rcx
	movq	%rax, %r15
	movl	$-25, %ebp
	testq	%r15, %r15
	je	.LBB26_24
# BB#21:                                # %if.else.34
	movl	%r14d, 4(%rsp)          # 4-byte Spill
	xorl	%ebp, %ebp
	testl	%r12d, %r12d
	movl	$0, %r14d
	je	.LBB26_23
# BB#22:                                # %if.then.36
	movslq	%r12d, %r14
	movq	%r15, %rdi
	movq	8(%rsp), %rsi           # 8-byte Reload
	movq	%r14, %rdx
	movq	%rcx, %r12
	callq	memcpy
	movq	%r12, %rcx
.LBB26_23:                              # %if.end.39
	movq	%r15, %rdi
	addq	%r14, %rdi
	movq	(%r13), %rsi
	movq	%rcx, %rdx
	callq	memcpy
	movq	16(%rsp), %rax
	movq	%r15, (%rax)
	movq	16(%rsp), %rax
	movl	4(%rsp), %ecx           # 4-byte Reload
	movl	%ecx, 8(%rax)
	movb	$1, 16(%rax)
	movl	$-1, 20(%rax)
	incl	180(%rbx)
	jmp	.LBB26_24
.LBB26_13:                              # %if.end
	movq	%r8, %rsi
	testl	%ebp, %ebp
	jne	.LBB26_24
# BB#14:                                # %sw.bb
	movl	$-7, %ebp
	testb	$1, %r10b
	jne	.LBB26_24
# BB#15:                                # %lor.lhs.false
	movq	16(%rsp), %rax
	movl	%r9d, %ecx
	addl	%r12d, %ecx
	cmpl	%ecx, 8(%rax)
	jne	.LBB26_24
# BB#16:                                # %lor.lhs.false.5
	movq	(%rax), %r15
	movslq	%r12d, %r14
	movq	%r15, %rdi
	movq	%r14, %rdx
	movq	%r9, %rbx
	callq	memcmp
	movq	%rbx, %rdx
	testl	%eax, %eax
	jne	.LBB26_24
# BB#17:                                # %lor.lhs.false.9
	addq	%r14, %r15
	movq	(%r13), %rsi
	movq	%r15, %rdi
	callq	memcmp
	testl	%eax, %eax
	movl	$1, %eax
	movl	$-7, %ebp
	cmovel	%eax, %ebp
.LBB26_24:                              # %sw.epilog
	movl	$.L.str.26, %esi
	movq	%r13, %rdi
	callq	gs_glyph_data_free
	movl	%ebp, %eax
.LBB26_25:                              # %cleanup
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end26:
	.size	copy_glyph_data, .Lfunc_end26-copy_glyph_data
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI27_0:
	.quad	2147483647              # 0x7fffffff
	.quad	2147483647              # 0x7fffffff
	.text
	.align	16, 0x90
	.type	copy_font_type1,@function
copy_font_type1:                        # @copy_font_type1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp186:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp187:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp188:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp189:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp190:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp191:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp192:
	.cfi_def_cfa_offset 80
.Ltmp193:
	.cfi_offset %rbx, -56
.Ltmp194:
	.cfi_offset %r12, -48
.Ltmp195:
	.cfi_offset %r13, -40
.Ltmp196:
	.cfi_offset %r14, -32
.Ltmp197:
	.cfi_offset %r15, -24
.Ltmp198:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	72(%r14), %r12
	movl	$0, 20(%rsp)
	leaq	20(%rsp), %r15
	leaq	8(%rsp), %rbp
	movl	$2147483647, %r13d      # imm = 0x7FFFFFFF
	.align	16, 0x90
.LBB27_1:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rcx
	callq	*216(%rbx)
	cmpl	$0, 20(%rsp)
	je	.LBB27_4
# BB#2:                                 # %while.body.i
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	gs_font_glyph_is_notdef
	testl	%eax, %eax
	je	.LBB27_1
# BB#3:                                 # %if.then.i
	movq	8(%rsp), %r13
.LBB27_4:                               # %find_notdef.exit
	movq	%r13, 184(%r12)
	movq	16(%r14), %rdi
	movq	72(%r14), %r15
	movl	$256, %esi              # imm = 0x100
	movl	$8, %edx
	movl	$.L.str.22, %ecx
	callq	*88(%rdi)
	movl	$-25, %ebp
	movl	$14, %ecx
	testq	%rax, %rax
	je	.LBB27_11
# BB#5:
	movaps	.LCPI27_0(%rip), %xmm0  # xmm0 = [2147483647,2147483647]
	.align	16, 0x90
.LBB27_6:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, -112(%rax,%rcx,8)
	movups	%xmm0, -96(%rax,%rcx,8)
	movups	%xmm0, -80(%rax,%rcx,8)
	movups	%xmm0, -64(%rax,%rcx,8)
	movups	%xmm0, -48(%rax,%rcx,8)
	movups	%xmm0, -32(%rax,%rcx,8)
	movups	%xmm0, -16(%rax,%rcx,8)
	movups	%xmm0, (%rax,%rcx,8)
	addq	$16, %rcx
	cmpq	$270, %rcx              # imm = 0x10E
	jne	.LBB27_6
# BB#7:                                 # %if.end
	movq	%rax, 224(%r15)
	leaq	240(%r12), %rdx
	movq	16(%r14), %rcx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	copy_subrs
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB27_9
# BB#8:                                 # %lor.lhs.false
	leaq	264(%r12), %rdx
	movq	16(%r14), %rcx
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	copy_subrs
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB27_9
# BB#10:                                # %if.end.11
	movq	$copied_type1_glyph_data, 448(%r14)
	movq	$copied_type1_subr_data, 456(%r14)
	movq	$copied_type1_seac_data, 464(%r14)
	movq	$copied_type1_push_values, 472(%r14)
	movq	$copied_type1_pop_value, 480(%r14)
	movq	$0, 496(%r14)
	xorl	%ebp, %ebp
	jmp	.LBB27_11
.LBB27_9:                               # %if.then.8
	movq	16(%r14), %rdi
	movq	224(%r12), %rsi
	movl	$.L.str.22, %edx
	callq	*24(%rdi)
.LBB27_11:                              # %cleanup
	movl	%ebp, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	copy_font_type1, .Lfunc_end27-copy_font_type1
	.cfi_endproc

	.align	16, 0x90
	.type	copy_glyph_type1,@function
copy_glyph_type1:                       # @copy_glyph_type1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp199:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp200:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp201:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp202:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp203:
	.cfi_def_cfa_offset 48
	subq	$48, %rsp
.Ltmp204:
	.cfi_def_cfa_offset 96
.Ltmp205:
	.cfi_offset %rbx, -48
.Ltmp206:
	.cfi_offset %r12, -40
.Ltmp207:
	.cfi_offset %r14, -32
.Ltmp208:
	.cfi_offset %r15, -24
.Ltmp209:
	.cfi_offset %rbp, -16
	movl	%ecx, %r12d
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	16(%rbx), %rax
	movq	%rax, 40(%rsp)
	leaq	(%rsp), %rdx
	callq	*448(%rbx)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB28_5
# BB#1:                                 # %if.end
	leaq	(%rsp), %rcx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	%r12d, %edx
	callq	copy_glyph_data
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB28_5
# BB#2:                                 # %if.end.5
	movl	%ebp, %eax
	jne	.LBB28_4
# BB#3:                                 # %if.then.7
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	movq	%r15, %rcx
	callq	copy_glyph_name
.LBB28_4:                               # %if.end.9
	testl	%eax, %eax
	cmovsl	%eax, %ebp
.LBB28_5:                               # %cleanup
	movl	%ebp, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	copy_glyph_type1, .Lfunc_end28-copy_glyph_type1
	.cfi_endproc

	.align	16, 0x90
	.type	named_glyph_slot_hashed,@function
named_glyph_slot_hashed:                # @named_glyph_slot_hashed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp210:
	.cfi_def_cfa_offset 16
.Ltmp211:
	.cfi_offset %rbx, -16
	movq	%rdx, %r8
	movl	176(%rdi), %r10d
	movq	192(%rdi), %r11
	xorl	%edx, %edx
	movl	%esi, %eax
	divl	%r10d
	movl	%edx, %ecx
	leal	1(%rax,%rax), %eax
	xorl	%edx, %edx
	divl	%r10d
	movl	%edx, %r9d
	leaq	(%rcx,%rcx,2), %rax
	cmpq	$0, 8(%r11,%rax,8)
	je	.LBB29_5
# BB#1:
	movl	$-1, %ebx
	.align	16, 0x90
.LBB29_2:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%rcx,%rcx,2), %rax
	cmpq	%rsi, (%r11,%rax,8)
	je	.LBB29_5
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB29_2 Depth=1
	incl	%ebx
	movl	$-21, %eax
	cmpl	%ebx, %r10d
	je	.LBB29_6
# BB#4:                                 # %if.end
                                        #   in Loop: Header=BB29_2 Depth=1
	addl	%r9d, %ecx
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%r10d
	movl	%edx, %ecx
	leaq	(%rcx,%rcx,2), %rax
	cmpq	$0, 8(%r11,%rax,8)
	jne	.LBB29_2
.LBB29_5:                               # %while.end
	leaq	(%rcx,%rcx,2), %rax
	shlq	$3, %rax
	addq	168(%rdi), %rax
	movq	%rax, (%r8)
	xorl	%eax, %eax
.LBB29_6:                               # %cleanup
	popq	%rbx
	retq
.Lfunc_end29:
	.size	named_glyph_slot_hashed, .Lfunc_end29-named_glyph_slot_hashed
	.cfi_endproc

	.align	16, 0x90
	.type	copied_encode_char,@function
copied_encode_char:                     # @copied_encode_char
	.cfi_startproc
# BB#0:                                 # %entry
	cmpq	$255, %rsi
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	ja	.LBB30_3
# BB#1:                                 # %entry
	movq	72(%rdi), %rcx
	movq	224(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB30_3
# BB#2:                                 # %if.end
	movq	(%rcx,%rsi,8), %rax
.LBB30_3:                               # %cleanup
	retq
.Lfunc_end30:
	.size	copied_encode_char, .Lfunc_end30-copied_encode_char
	.cfi_endproc

	.align	16, 0x90
	.type	copied_type1_glyph_outline,@function
copied_type1_glyph_outline:             # @copied_type1_glyph_outline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp212:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp213:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp214:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp215:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp216:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp217:
	.cfi_def_cfa_offset 56
	subq	$12936, %rsp            # imm = 0x3288
.Ltmp218:
	.cfi_def_cfa_offset 12992
.Ltmp219:
	.cfi_offset %rbx, -56
.Ltmp220:
	.cfi_offset %r12, -48
.Ltmp221:
	.cfi_offset %r13, -40
.Ltmp222:
	.cfi_offset %r14, -32
.Ltmp223:
	.cfi_offset %r15, -24
.Ltmp224:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, 24(%rsp)           # 8-byte Spill
	movq	%rcx, %r13
	movq	%rdx, %rbx
	movq	%rdi, %r15
	leaq	1672(%rsp), %rdi
	xorl	%r12d, %r12d
	xorl	%esi, %esi
	movl	$11216, %edx            # imm = 0x2BD0
	callq	memset
	movq	16(%r15), %rax
	movq	%rax, 12928(%rsp)
	leaq	12888(%rsp), %rbp
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	*448(%r15)
	testl	%eax, %eax
	js	.LBB31_10
# BB#1:                                 # %if.end
	movl	512(%r15), %eax
	testl	%eax, %eax
	cmovnsl	%eax, %r12d
	movl	$-10, %eax
	cmpl	%r12d, 12896(%rsp)
	jbe	.LBB31_10
# BB#2:                                 # %if.end.9
	testq	%r13, %r13
	je	.LBB31_4
# BB#3:                                 # %if.then.10
	leaq	188(%rsp), %rdi
	movq	%r13, %rsi
	jmp	.LBB31_5
.LBB31_4:                               # %if.else
	leaq	32(%rsp), %rbx
	movq	%rbx, %rdi
	callq	gs_make_identity
	leaq	188(%rsp), %rdi
	movq	%rbx, %rsi
.LBB31_5:                               # %if.end.14
	callq	gs_matrix_fixed_from_matrix
	movl	$0, 352(%rsp)
	movq	%r15, 8(%rsp)
	movl	$0, (%rsp)
	leaq	1672(%rsp), %rdi
	leaq	56(%rsp), %rsi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	24(%rsp), %rdx          # 8-byte Reload
	callq	gs_type1_interp_init
	testl	%eax, %eax
	js	.LBB31_10
# BB#6:                                 # %if.end.18
	movl	$1, 11552(%rsp)
	leaq	1672(%rsp), %rbx
	leaq	32(%rsp), %r12
	jmp	.LBB31_7
	.align	16, 0x90
.LBB31_11:                              # %cleanup
                                        #   in Loop: Header=BB31_7 Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	type1_cis_get_metrics
	xorl	%ebp, %ebp
.LBB31_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	callq	*488(%r15)
	cmpl	$1, %eax
	je	.LBB31_11
# BB#8:                                 # %for.cond
	cmpl	$2, %eax
	jne	.LBB31_10
# BB#9:                                 # %cleanup.thread.loopexit24
	movl	$-15, %eax
.LBB31_10:                              # %cleanup.23
	addq	$12936, %rsp            # imm = 0x3288
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end31:
	.size	copied_type1_glyph_outline, .Lfunc_end31-copied_type1_glyph_outline
	.cfi_endproc

	.align	16, 0x90
	.type	copy_subrs,@function
copy_subrs:                             # @copy_subrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp225:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp226:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp227:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp228:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp229:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp230:
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
.Ltmp231:
	.cfi_def_cfa_offset 128
.Ltmp232:
	.cfi_offset %rbx, -56
.Ltmp233:
	.cfi_offset %r12, -48
.Ltmp234:
	.cfi_offset %r13, -40
.Ltmp235:
	.cfi_offset %r14, -32
.Ltmp236:
	.cfi_offset %r15, -24
.Ltmp237:
	.cfi_offset %rbp, -16
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	%rdx, (%rsp)            # 8-byte Spill
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	16(%rbx), %rax
	movq	%rax, 64(%rsp)
	xorl	%ebp, %ebp
	leaq	24(%rsp), %rcx
	xorl	%esi, %esi
	movl	%r14d, %edx
	callq	*456(%rbx)
	cmpl	$-15, %eax
	movl	$0, %r12d
	movl	$0, %ecx
	movl	$0, %edx
	je	.LBB32_15
# BB#1:                                 # %for.body.lr.ph
	xorl	%r13d, %r13d
	movl	$-1, %r15d
	leaq	24(%rsp), %rbp
	.align	16, 0x90
.LBB32_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testl	%eax, %eax
	js	.LBB32_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB32_2 Depth=1
	addl	32(%rsp), %r13d
	movl	$.L.str.27, %esi
	movq	%rbp, %rdi
	callq	gs_glyph_data_free
.LBB32_4:                               # %for.inc
                                        #   in Loop: Header=BB32_2 Depth=1
	leal	2(%r15), %esi
	movq	%rbx, %rdi
	movl	%r14d, %edx
	movq	%rbp, %rcx
	callq	*456(%rbx)
	incl	%r15d
	cmpl	$-15, %eax
	jne	.LBB32_2
# BB#5:                                 # %for.end
	xorl	%r12d, %r12d
	testl	%r13d, %r13d
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %ebp
	je	.LBB32_15
# BB#6:                                 # %if.else
	addl	$2, %r15d
	movl	$.L.str.28, %edx
	movq	8(%rsp), %r12           # 8-byte Reload
	movq	%r12, %rdi
	movl	%r13d, %esi
	callq	*64(%r12)
	movq	%rax, %r13
	movl	$4, %edx
	movl	$.L.str.29, %ecx
	movq	%r12, %rdi
	movl	%r15d, %esi
	callq	*88(%r12)
	testq	%r13, %r13
	je	.LBB32_17
# BB#7:                                 # %if.else
	testq	%rax, %rax
	je	.LBB32_17
# BB#8:                                 # %for.cond.19.preheader
	movq	%r13, %r12
	movq	%r12, 8(%rsp)           # 8-byte Spill
	xorl	%r12d, %r12d
	leaq	24(%rsp), %rcx
	movq	%rax, %r15
	movq	%r15, 16(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	movq	%rbx, %rdi
	movl	%r14d, %edx
	callq	*456(%rbx)
	movq	%r15, %rdx
	cmpl	$-15, %eax
	movl	$0, (%rdx)
	je	.LBB32_14
# BB#9:                                 # %for.body.25.lr.ph
	xorl	%r15d, %r15d
	leaq	24(%rsp), %rbp
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB32_10:                              # %for.body.25
                                        # =>This Inner Loop Header: Depth=1
	testl	%eax, %eax
	js	.LBB32_12
# BB#11:                                # %if.then.27
                                        #   in Loop: Header=BB32_10 Depth=1
	movl	%r13d, %eax
	movq	8(%rsp), %rcx           # 8-byte Reload
	leaq	(%rax,%rcx), %rdi
	movq	24(%rsp), %rsi
	movl	32(%rsp), %edx
	callq	memcpy
	addl	32(%rsp), %r13d
	movl	$.L.str.27, %esi
	movq	%rbp, %rdi
	callq	gs_glyph_data_free
.LBB32_12:                              # %for.inc.37
                                        #   in Loop: Header=BB32_10 Depth=1
	movq	%rbp, %rcx
	leaq	1(%r15), %r12
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movl	%r14d, %edx
	callq	*456(%rbx)
	movq	16(%rsp), %rdx          # 8-byte Reload
	movl	%r13d, 4(%rdx,%r15,4)
	cmpl	$-15, %eax
	movq	%r12, %r15
	jne	.LBB32_10
# BB#13:
	xorl	%ebp, %ebp
.LBB32_14:                              # %if.end.42
	movq	8(%rsp), %rcx           # 8-byte Reload
.LBB32_15:                              # %if.end.42
	movq	(%rsp), %rax            # 8-byte Reload
	movq	%rcx, (%rax)
	movq	%rdx, 16(%rax)
	movl	%r12d, 8(%rax)
.LBB32_16:                              # %cleanup
	movl	%ebp, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB32_17:                              # %if.then.14
	movl	$.L.str.29, %edx
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	*24(%r12)
	movl	$.L.str.28, %edx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	*24(%r12)
	movl	$-25, %ebp
	jmp	.LBB32_16
.Lfunc_end32:
	.size	copy_subrs, .Lfunc_end32-copy_subrs
	.cfi_endproc

	.align	16, 0x90
	.type	copied_type1_glyph_data,@function
copied_type1_glyph_data:                # @copied_type1_glyph_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp238:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp239:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp240:
	.cfi_def_cfa_offset 32
.Ltmp241:
	.cfi_offset %rbx, -24
.Ltmp242:
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	72(%rdi), %rdi
	leaq	(%rsp), %rdx
	callq	copied_glyph_slot
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB33_2
# BB#1:                                 # %if.end
	movq	(%rsp), %rax
	movq	(%rax), %rsi
	movl	8(%rax), %edx
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	gs_glyph_data_from_string
.LBB33_2:                               # %cleanup
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end33:
	.size	copied_type1_glyph_data, .Lfunc_end33-copied_type1_glyph_data
	.cfi_endproc

	.align	16, 0x90
	.type	copied_type1_subr_data,@function
copied_type1_subr_data:                 # @copied_type1_subr_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp243:
	.cfi_def_cfa_offset 16
.Ltmp244:
	.cfi_offset %rbx, -16
	movq	%rcx, %rax
	movq	72(%rdi), %rcx
	leaq	264(%rcx), %rdi
	addq	$240, %rcx
	testl	%edx, %edx
	cmovneq	%rdi, %rcx
	movl	$-15, %ebx
	testl	%esi, %esi
	js	.LBB34_3
# BB#1:                                 # %lor.lhs.false
	cmpl	%esi, 8(%rcx)
	jle	.LBB34_3
# BB#2:                                 # %if.end
	movslq	%esi, %rdx
	movq	16(%rcx), %rdi
	movl	(%rdi,%rdx,4), %ebx
	incl	%esi
	movslq	%esi, %rdx
	movl	(%rdi,%rdx,4), %edx
	subl	%ebx, %edx
	movq	%rbx, %rsi
	addq	(%rcx), %rsi
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	callq	gs_glyph_data_from_string
.LBB34_3:                               # %cleanup
	movl	%ebx, %eax
	popq	%rbx
	retq
.Lfunc_end34:
	.size	copied_type1_subr_data, .Lfunc_end34-copied_type1_subr_data
	.cfi_endproc

	.align	16, 0x90
	.type	copied_type1_seac_data,@function
copied_type1_seac_data:                 # @copied_type1_seac_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp245:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp246:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp247:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp248:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp249:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp250:
	.cfi_def_cfa_offset 64
.Ltmp251:
	.cfi_offset %rbx, -48
.Ltmp252:
	.cfi_offset %r12, -40
.Ltmp253:
	.cfi_offset %r13, -32
.Ltmp254:
	.cfi_offset %r14, -24
.Ltmp255:
	.cfi_offset %r15, -16
	movq	%r8, %r14
	movq	%rcx, %r13
	movq	%rdx, %r12
	movq	%rdi, %r15
	movslq	%esi, %rdi
	xorl	%esi, %esi
	callq	gs_c_known_encode
	movl	$-15, %ebx
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	je	.LBB35_17
# BB#1:                                 # %if.end
	movq	%rax, %rdi
	movq	%r13, %rsi
	callq	gs_c_glyph_name
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB35_17
# BB#2:                                 # %if.end.6
	movq	16(%r15), %rdi
	movq	24(%r15), %rax
	leaq	(%rsp), %rdx
	movq	%r13, %rsi
	callq	*208(%rax)
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB35_17
# BB#3:                                 # %if.end.11
	testq	%r12, %r12
	je	.LBB35_5
# BB#4:                                 # %if.then.12
	movq	(%rsp), %rax
	movq	%rax, (%r12)
.LBB35_5:                               # %if.end.13
	xorl	%ebx, %ebx
	testq	%r14, %r14
	je	.LBB35_17
# BB#6:                                 # %if.then.15
	movq	(%rsp), %rsi
	movq	72(%r15), %rdi
	movl	176(%rdi), %eax
	movq	$0, 8(%rsp)
	movq	%rsi, %rcx
	shrq	$30, %rcx
	cmpq	$3, %rcx
	jb	.LBB35_10
# BB#7:                                 # %if.then.i
	movabsq	$-3221225472, %rcx      # imm = 0xFFFFFFFF40000000
	addq	%rcx, %rsi
	jmp	.LBB35_8
.LBB35_10:                              # %if.else.i
	testq	$-2147483648, %rsi      # imm = 0xFFFFFFFF80000000
	je	.LBB35_12
# BB#11:                                # %if.then.7.i
	addq	$-2147483648, %rsi      # imm = 0xFFFFFFFF80000000
.LBB35_8:                               # %if.then.i
	movl	$-15, %ebx
	cmpq	%rax, %rsi
	jae	.LBB35_17
# BB#9:                                 # %if.end.i.13
	leaq	(%rsi,%rsi,2), %rax
	shlq	$3, %rax
	addq	168(%rdi), %rax
	movq	%rax, 8(%rsp)
	jmp	.LBB35_15
.LBB35_12:                              # %if.else.17.i
	movl	$-15, %ebx
	cmpq	$0, 192(%rdi)
	je	.LBB35_17
# BB#13:                                # %if.else.21.i
	movq	160(%rdi), %rax
	leaq	8(%rsp), %rdx
	callq	*24(%rax)
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB35_17
# BB#14:                                # %if.else.21.if.end.28_crit_edge.i
	movq	8(%rsp), %rax
.LBB35_15:                              # %if.end.28.i
	movl	$-21, %ebx
	cmpb	$0, 16(%rax)
	je	.LBB35_17
# BB#16:                                # %if.end.i
	movq	(%rax), %rsi
	movl	8(%rax), %edx
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	gs_glyph_data_from_string
.LBB35_17:                              # %cleanup
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end35:
	.size	copied_type1_seac_data, .Lfunc_end35-copied_type1_seac_data
	.cfi_endproc

	.align	16, 0x90
	.type	copied_type1_push_values,@function
copied_type1_push_values:               # @copied_type1_push_values
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-28, %eax
	retq
.Lfunc_end36:
	.size	copied_type1_push_values, .Lfunc_end36-copied_type1_push_values
	.cfi_endproc

	.align	16, 0x90
	.type	copied_type1_pop_value,@function
copied_type1_pop_value:                 # @copied_type1_pop_value
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-28, %eax
	retq
.Lfunc_end37:
	.size	copied_type1_pop_value, .Lfunc_end37-copied_type1_pop_value
	.cfi_endproc

	.align	16, 0x90
	.type	copy_font_cid0,@function
copy_font_cid0:                         # @copy_font_cid0
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
	pushq	%r13
.Ltmp259:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp260:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp261:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp262:
	.cfi_def_cfa_offset 80
.Ltmp263:
	.cfi_offset %rbx, -56
.Ltmp264:
	.cfi_offset %r12, -48
.Ltmp265:
	.cfi_offset %r13, -40
.Ltmp266:
	.cfi_offset %r14, -32
.Ltmp267:
	.cfi_offset %r15, -24
.Ltmp268:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	16(%r14), %rdi
	movq	72(%r14), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	520(%r14), %esi
	movl	$st_gs_font_type1_ptr_element, %edx
	movl	$.L.str.30, %ecx
	callq	*104(%rdi)
	movl	$-25, %edx
	testq	%rax, %rax
	je	.LBB38_21
# BB#1:                                 # %if.end
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	448(%r14), %r15
	movl	456(%r14), %r12d
	xorl	%ebp, %ebp
	testq	%r15, %r15
	movl	$0, %r13d
	je	.LBB38_4
# BB#2:                                 # %if.end.i.i
	movq	16(%r14), %rdi
	movl	$.L.str.35, %edx
	movl	%r12d, %esi
	callq	*136(%rdi)
	movq	%rax, 448(%r14)
	movl	$-25, %r13d
	testq	%rax, %rax
	je	.LBB38_4
# BB#3:                                 # %if.end.6.i.i
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	memcpy
	xorl	%r13d, %r13d
.LBB38_4:                               # %copy_string.exit.i
	movq	464(%r14), %r15
	movl	472(%r14), %r12d
	testq	%r15, %r15
	je	.LBB38_7
# BB#5:                                 # %if.end.i.7.i
	movq	16(%r14), %rdi
	movl	$.L.str.36, %edx
	movl	%r12d, %esi
	callq	*136(%rdi)
	movq	%rax, 464(%r14)
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB38_7
# BB#6:                                 # %if.end.6.i.10.i
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	memcpy
	xorl	%ebp, %ebp
.LBB38_7:                               # %copy_font_cid_common.exit
	orl	%r13d, %ebp
	js	.LBB38_8
# BB#9:                                 # %for.cond.preheader
	cmpl	$0, 520(%r14)
	movl	$0, %eax
	je	.LBB38_17
# BB#10:                                # %for.body.lr.ph
	movq	8(%rsp), %rax           # 8-byte Reload
	leaq	264(%rax), %r12
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB38_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	512(%r14), %rax
	movq	(%rax,%r15,8), %r13
	testl	%r15d, %r15d
	jne	.LBB38_13
# BB#12:                                # %if.then.14
                                        #   in Loop: Header=BB38_11 Depth=1
	movq	16(%r14), %rcx
	movl	$1, %esi
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	copy_subrs
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB38_8
.LBB38_13:                              # %if.end.20
                                        #   in Loop: Header=BB38_11 Depth=1
	movq	16(%r14), %rdx
	leaq	80(%r13), %rsi
	movl	$-1, %r8d
	movq	%r13, %rdi
	leaq	16(%rsp), %rcx
	callq	gs_copy_font
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB38_14
# BB#16:                                # %for.inc
                                        #   in Loop: Header=BB38_11 Depth=1
	movq	16(%rsp), %rbp
	movq	$0, 504(%rbp)
	movq	72(%rbp), %rbx
	movq	%r14, 288(%rbx)
	movq	16(%r14), %rdi
	movq	224(%rbx), %rsi
	movl	$.L.str.31, %edx
	callq	*24(%rdi)
	movq	$0, 224(%rbx)
	movq	16(%r14), %rdi
	movq	192(%rbx), %rsi
	movl	$.L.str.32, %edx
	callq	*24(%rdi)
	movq	16(%r14), %rdi
	movq	168(%rbx), %rsi
	movl	$.L.str.33, %edx
	callq	*24(%rdi)
	movq	$copied_sub_type1_glyph_data, 448(%rbp)
	movq	8(%rsp), %rcx           # 8-byte Reload
	movq	168(%rcx), %rax
	movq	%rax, 168(%rbx)
	movl	176(%rcx), %eax
	movl	%eax, 176(%rbx)
	movq	$0, 192(%rbx)
	movq	16(%r12), %rax
	movq	%rax, 280(%rbx)
	movups	(%r12), %xmm0
	movups	%xmm0, 264(%rbx)
	movq	(%rsp), %rax            # 8-byte Reload
	movq	%rbp, (%rax,%r15,8)
	incq	%r15
	movl	520(%r14), %eax
	cmpl	%eax, %r15d
	jb	.LBB38_11
.LBB38_17:                              # %for.end
	movl	$2147483648, %ecx       # imm = 0x80000000
	movq	8(%rsp), %rdx           # 8-byte Reload
	movq	%rcx, 184(%rdx)
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	%rcx, 512(%r14)
	cmpl	$256, %eax              # imm = 0x100
	seta	%cl
	movzbl	%cl, %ecx
	incl	%ecx
	cmpl	$2, %eax
	movl	$0, %edx
	cmovbl	%edx, %ecx
	movl	%ecx, 524(%r14)
	movq	$copied_cid0_glyph_data, 528(%r14)
	jmp	.LBB38_21
.LBB38_8:                               # %while.cond.preheader.thread
	movq	16(%r14), %rdi
	movq	24(%rdi), %rax
	movq	(%rsp), %r15            # 8-byte Reload
	jmp	.LBB38_20
.LBB38_14:                              # %while.cond.preheader
	movq	16(%r14), %rdi
	movq	24(%rdi), %rax
	testl	%r15d, %r15d
	jle	.LBB38_15
# BB#18:                                # %while.body.lr.ph
	movslq	%r15d, %rbx
	incq	%rbx
	movq	(%rsp), %r15            # 8-byte Reload
	.align	16, 0x90
.LBB38_19:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%r15,%rbx,8), %rsi
	movl	$.L.str.34, %edx
	callq	*%rax
	movq	16(%r14), %rdi
	movq	24(%rdi), %rax
	decq	%rbx
	cmpq	$1, %rbx
	jg	.LBB38_19
	jmp	.LBB38_20
.LBB38_15:
	movq	(%rsp), %r15            # 8-byte Reload
.LBB38_20:                              # %while.end
	movl	$.L.str.30, %edx
	movq	%r15, %rsi
	callq	*%rax
	movl	%ebp, %edx
.LBB38_21:                              # %cleanup.77
	movl	%edx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end38:
	.size	copy_font_cid0, .Lfunc_end38-copy_font_cid0
	.cfi_endproc

	.align	16, 0x90
	.type	copy_glyph_cid0,@function
copy_glyph_cid0:                        # @copy_glyph_cid0
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp269:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp270:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp271:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp272:
	.cfi_def_cfa_offset 40
	subq	$56, %rsp
.Ltmp273:
	.cfi_def_cfa_offset 96
.Ltmp274:
	.cfi_offset %rbx, -40
.Ltmp275:
	.cfi_offset %r14, -32
.Ltmp276:
	.cfi_offset %r15, -24
.Ltmp277:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rdx, %rbp
	movq	%rsi, %rbx
	movslq	524(%rbp), %r15
	movq	16(%rdi), %rax
	movq	%rax, 48(%rsp)
	leaq	8(%rsp), %rdx
	leaq	4(%rsp), %rcx
	callq	*528(%rdi)
	testl	%eax, %eax
	js	.LBB39_7
# BB#1:                                 # %for.condthread-pre-split
	movl	4(%rsp), %ecx
	testl	%r15d, %r15d
	jle	.LBB39_5
# BB#2:                                 # %for.body.lr.ph
	leaq	1(%r15), %rax
	.align	16, 0x90
.LBB39_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	%cl, -2(%rsp,%rax)
	sarl	$8, %ecx
	decq	%rax
	cmpq	$1, %rax
	jg	.LBB39_3
# BB#4:                                 # %for.cond.for.end_crit_edge
	movl	%ecx, 4(%rsp)
.LBB39_5:                               # %for.end
	movl	$-15, %eax
	testl	%ecx, %ecx
	jne	.LBB39_7
# BB#6:                                 # %if.end.7
	leaq	8(%rsp), %rcx
	leaq	(%rsp), %r8
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	%r14d, %edx
	movl	%r15d, %r9d
	callq	copy_glyph_data
.LBB39_7:                               # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end39:
	.size	copy_glyph_cid0, .Lfunc_end39-copy_glyph_cid0
	.cfi_endproc

	.align	16, 0x90
	.type	copied_no_add_encoding,@function
copied_no_add_encoding:                 # @copied_no_add_encoding
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-7, %eax
	retq
.Lfunc_end40:
	.size	copied_no_add_encoding, .Lfunc_end40-copied_no_add_encoding
	.cfi_endproc

	.align	16, 0x90
	.type	named_glyph_slot_none,@function
named_glyph_slot_none:                  # @named_glyph_slot_none
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-15, %eax
	retq
.Lfunc_end41:
	.size	named_glyph_slot_none, .Lfunc_end41-named_glyph_slot_none
	.cfi_endproc

	.align	16, 0x90
	.type	copied_cid0_glyph_info,@function
copied_cid0_glyph_info:                 # @copied_cid0_glyph_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp278:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp279:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp280:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp281:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp282:
	.cfi_def_cfa_offset 48
	subq	$160, %rsp
.Ltmp283:
	.cfi_def_cfa_offset 208
.Ltmp284:
	.cfi_offset %rbx, -48
.Ltmp285:
	.cfi_offset %r12, -40
.Ltmp286:
	.cfi_offset %r14, -32
.Ltmp287:
	.cfi_offset %r15, -24
.Ltmp288:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movl	%ecx, %r12d
	movq	%rdx, %r15
	movq	%rsi, %rbp
	movq	%rdi, %rbx
	leaq	(%rsp), %rcx
	xorl	%edx, %edx
	callq	copied_cid0_glyph_data
	testl	%eax, %eax
	js	.LBB42_6
# BB#1:                                 # %if.then.i
	movslq	(%rsp), %rcx
	movl	$-28, %eax
	cmpl	520(%rbx), %ecx
	jae	.LBB42_6
# BB#2:                                 # %if.end
	movq	512(%rbx), %rax
	movq	(%rax,%rcx,8), %rax
	testb	$2, %r12b
	jne	.LBB42_3
# BB#5:                                 # %if.end.29
	movq	%rax, %rdi
	movq	%rbp, %rsi
	movq	%r15, %rdx
	movl	%r12d, %ecx
	movq	%r14, %r8
	callq	*224(%rax)
	jmp	.LBB42_6
.LBB42_3:                               # %if.then.1
	leaq	(%rsp), %rcx
	xorl	%esi, %esi
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	*184(%rax)
	testl	%eax, %eax
	js	.LBB42_6
# BB#4:                                 # %if.end.6
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%r14)
	movq	$0, 24(%r14)
	movl	20(%rsp), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	negl	%eax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, 32(%r14)
	sarl	%ecx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, 40(%r14)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	24(%rsp), %xmm0
	movsd	%xmm0, 48(%r14)
	movl	$2, (%r14)
	xorl	%eax, %eax
.LBB42_6:                               # %cleanup.32
	addq	$160, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end42:
	.size	copied_cid0_glyph_info, .Lfunc_end42-copied_cid0_glyph_info
	.cfi_endproc

	.align	16, 0x90
	.type	copied_cid0_glyph_outline,@function
copied_cid0_glyph_outline:              # @copied_cid0_glyph_outline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp289:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp290:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp291:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp292:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp293:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp294:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp295:
	.cfi_def_cfa_offset 64
.Ltmp296:
	.cfi_offset %rbx, -56
.Ltmp297:
	.cfi_offset %r12, -48
.Ltmp298:
	.cfi_offset %r13, -40
.Ltmp299:
	.cfi_offset %r14, -32
.Ltmp300:
	.cfi_offset %r15, -24
.Ltmp301:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, %r15
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movl	%esi, %r13d
	movq	%rdi, %rbp
	leaq	4(%rsp), %rcx
	xorl	%edx, %edx
	movq	%rbx, %rsi
	callq	copied_cid0_glyph_data
	testl	%eax, %eax
	js	.LBB43_3
# BB#1:                                 # %if.then.i
	movslq	4(%rsp), %rcx
	movl	$-28, %eax
	cmpl	520(%rbp), %ecx
	jae	.LBB43_3
# BB#2:                                 # %if.end
	movq	512(%rbp), %rax
	movq	(%rax,%rcx,8), %rdi
	movl	%r13d, %esi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	movq	%r15, %r8
	movq	%r14, %r9
	callq	*232(%rdi)
.LBB43_3:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end43:
	.size	copied_cid0_glyph_outline, .Lfunc_end43-copied_cid0_glyph_outline
	.cfi_endproc

	.align	16, 0x90
	.type	copied_sub_type1_glyph_data,@function
copied_sub_type1_glyph_data:            # @copied_sub_type1_glyph_data
	.cfi_startproc
# BB#0:                                 # %entry
	movq	72(%rdi), %rax
	movq	288(%rax), %rdi
	xorl	%ecx, %ecx
	jmp	copied_cid0_glyph_data  # TAILCALL
.Lfunc_end44:
	.size	copied_sub_type1_glyph_data, .Lfunc_end44-copied_sub_type1_glyph_data
	.cfi_endproc

	.align	16, 0x90
	.type	copied_cid0_glyph_data,@function
copied_cid0_glyph_data:                 # @copied_cid0_glyph_data
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp302:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp303:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp304:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp305:
	.cfi_def_cfa_offset 48
.Ltmp306:
	.cfi_offset %rbx, -32
.Ltmp307:
	.cfi_offset %r14, -24
.Ltmp308:
	.cfi_offset %r15, -16
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movq	%rdi, %r15
	movq	72(%r15), %rdi
	movl	176(%rdi), %ecx
	movq	$0, 8(%rsp)
	movq	%rsi, %rax
	shrq	$30, %rax
	cmpq	$3, %rax
	jb	.LBB45_4
# BB#1:                                 # %if.then.i
	movabsq	$-3221225472, %rax      # imm = 0xFFFFFFFF40000000
	addq	%rax, %rsi
	jmp	.LBB45_2
.LBB45_4:                               # %if.else.i
	testq	$-2147483648, %rsi      # imm = 0xFFFFFFFF80000000
	je	.LBB45_6
# BB#5:                                 # %if.then.7.i
	addq	$-2147483648, %rsi      # imm = 0xFFFFFFFF80000000
.LBB45_2:                               # %if.then.i
	movl	$-15, %eax
	cmpq	%rcx, %rsi
	jae	.LBB45_11
# BB#3:                                 # %if.end.i
	leaq	(%rsi,%rsi,2), %rcx
	shlq	$3, %rcx
	addq	168(%rdi), %rcx
	movq	%rcx, 8(%rsp)
	jmp	.LBB45_9
.LBB45_6:                               # %if.else.17.i
	movl	$-15, %eax
	cmpq	$0, 192(%rdi)
	je	.LBB45_11
# BB#7:                                 # %if.else.21.i
	movq	160(%rdi), %rax
	leaq	8(%rsp), %rdx
	callq	*24(%rax)
	testl	%eax, %eax
	js	.LBB45_11
# BB#8:                                 # %if.else.21.if.end.28_crit_edge.i
	movq	8(%rsp), %rcx
.LBB45_9:                               # %if.end.28.i
	movl	$-21, %eax
	cmpb	$0, 16(%rcx)
	je	.LBB45_11
# BB#10:                                # %select.mid
	xorl	%eax, %eax
.LBB45_11:                              # %copied_glyph_slot.exit
	movslq	524(%r15), %rcx
	testq	%rbx, %rbx
	je	.LBB45_13
# BB#12:                                # %if.then
	movl	$0, (%rbx)
.LBB45_13:                              # %if.end
	testl	%eax, %eax
	js	.LBB45_14
# BB#16:                                # %if.end.6
	testq	%rbx, %rbx
	je	.LBB45_23
# BB#17:                                # %if.end.6
	testl	%ecx, %ecx
	jle	.LBB45_23
# BB#18:                                # %for.body.lr.ph
	movl	(%rbx), %eax
	movq	8(%rsp), %rdx
	movq	(%rdx), %rdx
	xorl	%edi, %edi
	testb	$1, %cl
	je	.LBB45_20
# BB#19:                                # %for.body.prol
	shll	$8, %eax
	movzbl	(%rdx), %esi
	orl	%esi, %eax
	movl	%eax, (%rbx)
	movl	$1, %edi
.LBB45_20:                              # %for.body.lr.ph.split
	cmpl	$1, %ecx
	je	.LBB45_23
# BB#21:                                # %for.body.lr.ph.split.split
	movl	%ecx, %esi
	subl	%edi, %esi
	leaq	1(%rdi,%rdx), %rdx
	.align	16, 0x90
.LBB45_22:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	shll	$8, %eax
	movzbl	-1(%rdx), %edi
	orl	%eax, %edi
	movl	%edi, (%rbx)
	shll	$8, %edi
	movzbl	(%rdx), %eax
	orl	%edi, %eax
	movl	%eax, (%rbx)
	addq	$2, %rdx
	addl	$-2, %esi
	jne	.LBB45_22
.LBB45_23:                              # %if.end.10
	xorl	%ebx, %ebx
	testq	%r14, %r14
	je	.LBB45_25
# BB#24:                                # %if.then.12
	movq	8(%rsp), %rax
	movq	%rcx, %rsi
	addq	(%rax), %rsi
	movl	8(%rax), %edx
	subl	%ecx, %edx
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	movq	%r14, %rdi
	callq	gs_glyph_data_from_string
	jmp	.LBB45_25
.LBB45_14:                              # %if.then.2
	movl	$-21, %ebx
	testq	%r14, %r14
	je	.LBB45_25
# BB#15:                                # %if.then.4
	movq	%r14, %rdi
	callq	gs_glyph_data_from_null
.LBB45_25:                              # %cleanup
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end45:
	.size	copied_cid0_glyph_data, .Lfunc_end45-copied_cid0_glyph_data
	.cfi_endproc

	.align	16, 0x90
	.type	copy_font_cid2,@function
copy_font_cid2:                         # @copy_font_cid2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp309:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp310:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp311:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp312:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp313:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp314:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp315:
	.cfi_def_cfa_offset 80
.Ltmp316:
	.cfi_offset %rbx, -56
.Ltmp317:
	.cfi_offset %r12, -48
.Ltmp318:
	.cfi_offset %r13, -40
.Ltmp319:
	.cfi_offset %r14, -32
.Ltmp320:
	.cfi_offset %r15, -24
.Ltmp321:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	16(%rbx), %rdi
	movq	72(%rbx), %r14
	movl	696(%rbx), %ebp
	movl	$2, %edx
	movl	$.L.str.37, %ecx
	movl	%ebp, %esi
	callq	*88(%rdi)
	movq	%rax, %r13
	movl	$-25, %ecx
	testq	%r13, %r13
	je	.LBB46_14
# BB#1:                                 # %if.end
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movl	%ebp, 4(%rsp)           # 4-byte Spill
	movq	%r14, 8(%rsp)           # 8-byte Spill
	movq	656(%rbx), %r12
	movl	664(%rbx), %r14d
	xorl	%ebp, %ebp
	testq	%r12, %r12
	movl	$0, %r15d
	je	.LBB46_4
# BB#2:                                 # %if.end.i.i
	movq	16(%rbx), %rdi
	movl	$.L.str.35, %edx
	movl	%r14d, %esi
	callq	*136(%rdi)
	movq	%rax, 656(%rbx)
	movl	$-25, %r15d
	testq	%rax, %rax
	je	.LBB46_4
# BB#3:                                 # %if.end.6.i.i
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	memcpy
	xorl	%r15d, %r15d
.LBB46_4:                               # %copy_string.exit.i
	movq	672(%rbx), %r14
	movl	680(%rbx), %r12d
	testq	%r14, %r14
	je	.LBB46_7
# BB#5:                                 # %if.end.i.7.i
	movq	16(%rbx), %rdi
	movl	$.L.str.36, %edx
	movl	%r12d, %esi
	callq	*136(%rdi)
	movq	%rax, 672(%rbx)
	movl	$-25, %ebp
	testq	%rax, %rax
	je	.LBB46_7
# BB#6:                                 # %if.end.6.i.10.i
	movq	%rax, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	memcpy
	xorl	%ebp, %ebp
.LBB46_7:                               # %copy_font_cid_common.exit
	orl	%r15d, %ebp
	js	.LBB46_9
# BB#8:                                 # %lor.lhs.false
	movq	16(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
	callq	copy_font_type42
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB46_9
# BB#10:                                # %if.end.14
	movslq	4(%rsp), %rdx           # 4-byte Folded Reload
	movl	$2147483648, %eax       # imm = 0x80000000
	movq	8(%rsp), %rbp           # 8-byte Reload
	movq	%rax, 184(%rbp)
	addq	%rdx, %rdx
	movl	$255, %esi
	movq	%r13, %rdi
	callq	memset
	movq	%r13, 232(%rbp)
	movl	$0, 712(%rbx)
	movq	$copied_cid2_CIDMap_proc, 720(%rbx)
	movq	$copied_cid2_get_glyph_index, 464(%rbx)
	cmpq	$0, 744(%rbx)
	je	.LBB46_13
# BB#11:                                # %if.then.19
	movq	16(%rbx), %rdi
	movl	$st_subst_CID_on_WMode, %esi
	movl	$.L.str.38, %edx
	callq	*72(%rdi)
	testq	%rax, %rax
	movl	$-25, %ecx
	je	.LBB46_14
# BB#12:                                # %do.body.27
	movq	16(%rbx), %rcx
	movq	%rcx, 8(%rax)
	movq	$rc_free_struct_only, 16(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rax)
	movq	%rax, 744(%rbx)
	movq	$2, (%rax)
.LBB46_13:                              # %cleanup.57
	xorl	%ecx, %ecx
	jmp	.LBB46_14
.LBB46_9:                               # %if.then.10
	movq	16(%rbx), %rdi
	movl	$.L.str.37, %edx
	movq	%r13, %rsi
	callq	*24(%rdi)
	movl	%ebp, %ecx
.LBB46_14:                              # %cleanup.57
	movl	%ecx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end46:
	.size	copy_font_cid2, .Lfunc_end46-copy_font_cid2
	.cfi_endproc

	.align	16, 0x90
	.type	copy_glyph_cid2,@function
copy_glyph_cid2:                        # @copy_glyph_cid2
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
	pushq	%r13
.Ltmp325:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp326:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp327:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp328:
	.cfi_def_cfa_offset 80
.Ltmp329:
	.cfi_offset %rbx, -56
.Ltmp330:
	.cfi_offset %r12, -48
.Ltmp331:
	.cfi_offset %r13, -40
.Ltmp332:
	.cfi_offset %r14, -32
.Ltmp333:
	.cfi_offset %r15, -24
.Ltmp334:
	.cfi_offset %rbp, -16
	movq	%rdx, %r13
	movq	%rsi, %r12
	movq	72(%r13), %rbx
	testb	$4, %cl
	jne	.LBB47_11
# BB#1:                                 # %if.then
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	movq	%r12, %rax
	subq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leal	1(%rax), %r15d
	movl	696(%r13), %r14d
	cmpl	%r15d, %r14d
	jae	.LBB47_4
# BB#2:                                 # %if.end.i
	movq	%rdi, (%rsp)            # 8-byte Spill
	movq	%rbx, %rbp
	movq	16(%r13), %rdi
	movl	$2, %edx
	movl	$.L.str.37, %ecx
	movl	%r15d, %esi
	callq	*88(%rdi)
	movq	%rax, %rbx
	movl	$-25, %eax
	testq	%rbx, %rbx
	je	.LBB47_13
# BB#3:                                 # %if.end.6.i
	movq	232(%rbp), %rsi
	movslq	696(%r13), %rdx
	addq	%rdx, %rdx
	movq	%rbx, %rdi
	callq	memcpy
	movslq	696(%r13), %rax
	leaq	(%rbx,%rax,2), %rdi
	movl	%r15d, %edx
	subl	%eax, %edx
	addq	%rdx, %rdx
	movl	$255, %esi
	callq	memset
	movq	%rbx, 232(%rbp)
	movq	%rbp, %rbx
	movl	%r15d, 696(%r13)
	movl	%r15d, %r14d
	movq	(%rsp), %rdi            # 8-byte Reload
.LBB47_4:                               # %if.end
	movq	%r12, %rsi
	movq	%rdi, %rbp
	callq	*720(%rbp)
	movq	%rbp, %rdi
	movl	%eax, %ebp
	movl	$-15, %eax
	testl	%ebp, %ebp
	js	.LBB47_13
# BB#5:                                 # %lor.lhs.false
	cmpl	176(%rbx), %ebp
	jae	.LBB47_13
# BB#6:                                 # %if.end.12
	movl	$-7, %eax
	movq	16(%rsp), %rdx          # 8-byte Reload
	cmpl	%r14d, %edx
	ja	.LBB47_13
# BB#7:                                 # %if.end.16
	movl	$2147483648, %ecx       # imm = 0x80000000
	addq	$2147483647, %rcx       # imm = 0x7FFFFFFF
	andq	%rcx, %rdx
	movq	232(%rbx), %rcx
	movzwl	(%rcx,%rdx,2), %ecx
	movq	%rdx, %r14
	cmpl	$65535, %ecx            # imm = 0xFFFF
	je	.LBB47_9
# BB#8:                                 # %if.end.16
	cmpl	%ebp, %ecx
	jne	.LBB47_13
.LBB47_9:                               # %if.end.27
	movq	%r12, %rsi
	movq	%r13, %rdx
	movl	12(%rsp), %ecx          # 4-byte Reload
	callq	copy_glyph_type42
	testl	%eax, %eax
	js	.LBB47_13
# BB#10:                                # %cleanup
	movq	232(%rbx), %rcx
	movw	%bp, (%rcx,%r14,2)
	jmp	.LBB47_13
.LBB47_11:                              # %if.else
	movl	%r12d, %edx
	addl	$1073741824, %edx       # imm = 0x40000000
	movl	$-15, %eax
	js	.LBB47_13
# BB#12:                                # %lor.lhs.false.42
	cmpl	176(%rbx), %edx
	jae	.LBB47_13
# BB#14:                                # %if.end.47
	movq	%r12, %rsi
	movq	%r13, %rdx
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	copy_glyph_type42       # TAILCALL
.LBB47_13:                              # %cleanup.54
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end47:
	.size	copy_glyph_cid2, .Lfunc_end47-copy_glyph_cid2
	.cfi_endproc

	.align	16, 0x90
	.type	copied_cid2_CIDMap_proc,@function
copied_cid2_CIDMap_proc:                # @copied_cid2_CIDMap_proc
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$2147483648, %eax       # imm = 0x80000000
	testq	$-2147483648, %rsi      # imm = 0xFFFFFFFF80000000
	je	.LBB48_3
# BB#1:                                 # %lor.lhs.false
	subq	$-2147483648, %rsi      # imm = 0xFFFFFFFF80000000
	cmpl	696(%rdi), %esi
	jae	.LBB48_3
# BB#2:                                 # %if.end
	movq	72(%rdi), %rcx
	movq	232(%rcx), %rcx
	addq	$2147483647, %rax       # imm = 0x7FFFFFFF
	andq	%rax, %rsi
	movzwl	(%rcx,%rsi,2), %ecx
	cmpl	$65535, %ecx            # imm = 0xFFFF
	movl	$-1, %eax
	cmovnel	%ecx, %eax
	retq
.LBB48_3:                               # %cleanup
	movl	$-15, %eax
	retq
.Lfunc_end48:
	.size	copied_cid2_CIDMap_proc, .Lfunc_end48-copied_cid2_CIDMap_proc
	.cfi_endproc

	.align	16, 0x90
	.type	copied_cid2_get_glyph_index,@function
copied_cid2_get_glyph_index:            # @copied_cid2_get_glyph_index
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$2147483648, %eax       # imm = 0x80000000
	movl	$-15, %ecx
	testq	$-2147483648, %rsi      # imm = 0xFFFFFFFF80000000
	je	.LBB49_3
# BB#1:                                 # %lor.lhs.false.i
	subq	$-2147483648, %rsi      # imm = 0xFFFFFFFF80000000
	cmpl	696(%rdi), %esi
	jae	.LBB49_3
# BB#2:                                 # %if.end.i
	movq	72(%rdi), %rcx
	movq	232(%rcx), %rcx
	addq	$2147483647, %rax       # imm = 0x7FFFFFFF
	andq	%rax, %rsi
	movzwl	(%rcx,%rsi,2), %eax
	cmpl	$65535, %eax            # imm = 0xFFFF
	movl	$-1, %ecx
	cmovnel	%eax, %ecx
.LBB49_3:                               # %copied_cid2_CIDMap_proc.exit
	testl	%ecx, %ecx
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	cmovnsl	%ecx, %eax
	retq
.Lfunc_end49:
	.size	copied_cid2_get_glyph_index, .Lfunc_end49-copied_cid2_get_glyph_index
	.cfi_endproc

	.align	16, 0x90
	.type	copied_glyph_element_enum_ptrs,@function
copied_glyph_element_enum_ptrs:         # @copied_glyph_element_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %eax
	movl	$2863311531, %edx       # imm = 0xAAAAAAAB
	imulq	%rax, %rdx
	shrq	$36, %rdx
	xorl	%eax, %eax
	cmpl	%ecx, %edx
	jbe	.LBB50_2
# BB#1:                                 # %if.then
	movslq	%ecx, %rax
	leaq	(%rax,%rax,2), %rax
	movq	(%rsi,%rax,8), %rcx
	movq	%rcx, (%r8)
	movl	8(%rsi,%rax,8), %eax
	movl	%eax, 8(%r8)
	movl	$ptr_const_string_procs, %eax
.LBB50_2:                               # %cleanup
	retq
.Lfunc_end50:
	.size	copied_glyph_element_enum_ptrs, .Lfunc_end50-copied_glyph_element_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	copied_glyph_element_reloc_ptrs,@function
copied_glyph_element_reloc_ptrs:        # @copied_glyph_element_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp335:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp336:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp337:
	.cfi_def_cfa_offset 32
.Ltmp338:
	.cfi_offset %rbx, -32
.Ltmp339:
	.cfi_offset %r14, -24
.Ltmp340:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	cmpl	$24, %esi
	jb	.LBB51_5
# BB#1:                                 # %for.body.lr.ph
	movl	%esi, %eax
	movl	$2863311531, %r15d      # imm = 0xAAAAAAAB
	imulq	%rax, %r15
	shrq	$36, %r15
	negl	%r15d
	.align	16, 0x90
.LBB51_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 8(%rbx)
	je	.LBB51_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB51_2 Depth=1
	movq	(%r14), %rax
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*16(%rax)
.LBB51_4:                               # %for.inc
                                        #   in Loop: Header=BB51_2 Depth=1
	addq	$24, %rbx
	incl	%r15d
	jne	.LBB51_2
.LBB51_5:                               # %for.end
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end51:
	.size	copied_glyph_element_reloc_ptrs, .Lfunc_end51-copied_glyph_element_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	copied_glyph_name_enum_ptrs,@function
copied_glyph_name_enum_ptrs:            # @copied_glyph_name_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp341:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp342:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp343:
	.cfi_def_cfa_offset 32
.Ltmp344:
	.cfi_offset %rbx, -32
.Ltmp345:
	.cfi_offset %r14, -24
.Ltmp346:
	.cfi_offset %r15, -16
	movq	%r8, %r14
	movq	%rsi, %r15
	movl	%edx, %eax
	movl	$2863311531, %edx       # imm = 0xAAAAAAAB
	imulq	%rax, %rdx
	shrq	$36, %rdx
	xorl	%eax, %eax
	cmpl	%ecx, %edx
	jbe	.LBB52_6
# BB#1:                                 # %if.then
	movslq	%ecx, %rax
	leaq	(%rax,%rax,2), %rbx
	movl	16(%r15,%rbx,8), %esi
	testl	%esi, %esi
	je	.LBB52_3
# BB#2:                                 # %lor.lhs.false
	movq	8(%r15,%rbx,8), %rdi
	callq	gs_is_c_glyph_name
	testl	%eax, %eax
	je	.LBB52_4
.LBB52_3:                               # %cond.true
	movq	$0, (%r14)
	movl	$0, 8(%r14)
	jmp	.LBB52_5
.LBB52_4:                               # %cond.false
	leaq	16(%r15,%rbx,8), %rax
	leaq	8(%r15,%rbx,8), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%r14)
	movl	(%rax), %eax
	movl	%eax, 8(%r14)
.LBB52_5:                               # %cleanup
	movl	$ptr_const_string_procs, %eax
.LBB52_6:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end52:
	.size	copied_glyph_name_enum_ptrs, .Lfunc_end52-copied_glyph_name_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	copied_glyph_name_reloc_ptrs,@function
copied_glyph_name_reloc_ptrs:           # @copied_glyph_name_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp347:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp348:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp349:
	.cfi_def_cfa_offset 32
.Ltmp350:
	.cfi_offset %rbx, -32
.Ltmp351:
	.cfi_offset %r14, -24
.Ltmp352:
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	cmpl	$24, %esi
	jb	.LBB53_6
# BB#1:                                 # %for.body.lr.ph
	movl	%esi, %eax
	movl	$2863311531, %r15d      # imm = 0xAAAAAAAB
	imulq	%rax, %r15
	shrq	$36, %r15
	addq	$8, %rbx
	negl	%r15d
	.align	16, 0x90
.LBB53_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	8(%rbx), %esi
	testl	%esi, %esi
	je	.LBB53_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB53_2 Depth=1
	movq	(%rbx), %rdi
	callq	gs_is_c_glyph_name
	testl	%eax, %eax
	jne	.LBB53_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB53_2 Depth=1
	movq	(%r14), %rax
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*16(%rax)
.LBB53_5:                               # %for.inc
                                        #   in Loop: Header=BB53_2 Depth=1
	addq	$24, %rbx
	incl	%r15d
	jne	.LBB53_2
.LBB53_6:                               # %for.end
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end53:
	.size	copied_glyph_name_reloc_ptrs, .Lfunc_end53-copied_glyph_name_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	gs_copied_font_data_enum_ptrs,@function
gs_copied_font_data_enum_ptrs:          # @gs_copied_font_data_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp353:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp354:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp355:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp356:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp357:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp358:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp359:
	.cfi_def_cfa_offset 80
.Ltmp360:
	.cfi_offset %rbx, -56
.Ltmp361:
	.cfi_offset %r12, -48
.Ltmp362:
	.cfi_offset %r13, -40
.Ltmp363:
	.cfi_offset %r14, -32
.Ltmp364:
	.cfi_offset %r15, -24
.Ltmp365:
	.cfi_offset %rbp, -16
	movq	%r8, %rbp
	movl	%ecx, %r13d
	movq	%rsi, %r12
	movq	%rdi, %r15
	movl	%r13d, %eax
	cmpl	$12, %r13d
	ja	.LBB54_13
# BB#1:                                 # %entry
	jmpq	*.LJTI54_0(,%rax,8)
.LBB54_14:                              # %sw.bb
	movq	168(%r12), %rax
	jmp	.LBB54_26
.LBB54_15:                              # %sw.bb.28
	movq	192(%r12), %rax
	jmp	.LBB54_26
.LBB54_16:                              # %sw.bb.31
	movq	200(%r12), %rax
	jmp	.LBB54_26
.LBB54_17:                              # %sw.bb.34
	movq	208(%r12), %rax
	jmp	.LBB54_26
.LBB54_18:                              # %sw.bb.36
	movq	224(%r12), %rax
	jmp	.LBB54_26
.LBB54_19:                              # %sw.bb.38
	movq	232(%r12), %rax
	jmp	.LBB54_26
.LBB54_20:                              # %sw.bb.40
	movq	240(%r12), %rax
	jmp	.LBB54_26
.LBB54_21:                              # %sw.bb.43
	movq	256(%r12), %rax
	jmp	.LBB54_26
.LBB54_22:                              # %sw.bb.46
	movq	264(%r12), %rax
	jmp	.LBB54_26
.LBB54_23:                              # %sw.bb.49
	movq	280(%r12), %rax
	jmp	.LBB54_26
.LBB54_24:                              # %sw.bb.53
	movq	288(%r12), %rax
	jmp	.LBB54_26
.LBB54_25:                              # %sw.bb.55
	movq	296(%r12), %rax
.LBB54_26:                              # %cleanup
	movq	%rax, (%rbp)
	movl	$ptr_struct_procs, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB54_2:                               # %if.then
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	movq	192(%r12), %rbp
	movq	200(%r12), %rbx
	testq	%rbp, %rbp
	je	.LBB54_8
# BB#3:                                 # %for.cond.preheader
	movl	176(%r12), %eax
	testl	%eax, %eax
	je	.LBB54_8
# BB#4:                                 # %for.body.lr.ph
	xorl	%r14d, %r14d
	movq	gs_c_min_std_encoding_glyph(%rip), %rcx
	.align	16, 0x90
.LBB54_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbp), %rsi
	cmpq	%rcx, %rsi
	jae	.LBB54_7
# BB#6:                                 # %if.then.6
                                        #   in Loop: Header=BB54_5 Depth=1
	movq	296(%r12), %rax
	xorl	%edx, %edx
	movq	%r15, %rdi
	movq	%r15, 16(%rsp)          # 8-byte Spill
	movq	%rcx, %r15
	callq	*128(%rax)
	movq	%r15, %rcx
	movq	16(%rsp), %r15          # 8-byte Reload
	movl	176(%r12), %eax
.LBB54_7:                               # %for.inc
                                        #   in Loop: Header=BB54_5 Depth=1
	addq	$24, %rbp
	incl	%r14d
	cmpl	%eax, %r14d
	jb	.LBB54_5
.LBB54_8:                               # %for.cond.11.preheader
	testq	%rbx, %rbx
	movq	8(%rsp), %rbp           # 8-byte Reload
	je	.LBB54_13
# BB#9:                                 # %for.body.13.lr.ph
	movq	gs_c_min_std_encoding_glyph(%rip), %r14
	.align	16, 0x90
.LBB54_10:                              # %for.body.13
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rsi
	cmpq	%r14, %rsi
	jae	.LBB54_12
# BB#11:                                # %if.then.16
                                        #   in Loop: Header=BB54_10 Depth=1
	movq	296(%r12), %rax
	xorl	%edx, %edx
	movq	%r15, %rdi
	callq	*128(%rax)
.LBB54_12:                              # %for.inc.24
                                        #   in Loop: Header=BB54_10 Depth=1
	movq	32(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB54_10
.LBB54_13:                              # %if.end.26
	addl	$-12, %r13d
	movl	$160, %edx
	movl	$st_gs_font_info, %r9d
	movq	%r15, %rdi
	movq	%r12, %rsi
	movl	%r13d, %ecx
	movq	%rbp, %r8
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*st_gs_font_info+32(%rip) # TAILCALL
.Lfunc_end54:
	.size	gs_copied_font_data_enum_ptrs, .Lfunc_end54-gs_copied_font_data_enum_ptrs
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI54_0:
	.quad	.LBB54_14
	.quad	.LBB54_15
	.quad	.LBB54_16
	.quad	.LBB54_17
	.quad	.LBB54_18
	.quad	.LBB54_19
	.quad	.LBB54_20
	.quad	.LBB54_21
	.quad	.LBB54_22
	.quad	.LBB54_23
	.quad	.LBB54_24
	.quad	.LBB54_25
	.quad	.LBB54_2

	.text
	.align	16, 0x90
	.type	gs_copied_font_data_reloc_ptrs,@function
gs_copied_font_data_reloc_ptrs:         # @gs_copied_font_data_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp366:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp367:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp368:
	.cfi_def_cfa_offset 32
.Ltmp369:
	.cfi_offset %rbx, -24
.Ltmp370:
	.cfi_offset %r14, -16
	movq	%rcx, %r14
	movq	%rdi, %rbx
	movq	(%r14), %rax
	movq	168(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 168(%rbx)
	movq	(%r14), %rax
	movq	192(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 192(%rbx)
	movq	(%r14), %rax
	movq	200(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 200(%rbx)
	movq	(%r14), %rax
	movq	208(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 208(%rbx)
	movq	(%r14), %rax
	movq	224(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 224(%rbx)
	movq	(%r14), %rax
	movq	232(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 232(%rbx)
	movq	(%r14), %rax
	movq	240(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 240(%rbx)
	movq	(%r14), %rax
	movq	256(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 256(%rbx)
	movq	(%r14), %rax
	movq	264(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 264(%rbx)
	movq	(%r14), %rax
	movq	280(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 280(%rbx)
	movq	(%r14), %rax
	movq	288(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 288(%rbx)
	movq	(%r14), %rax
	movq	296(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	movq	%rax, 296(%rbx)
	movl	$160, %esi
	movl	$st_gs_font_info, %edx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmpq	*st_gs_font_info+40(%rip) # TAILCALL
.Lfunc_end55:
	.size	gs_copied_font_data_reloc_ptrs, .Lfunc_end55-gs_copied_font_data_reloc_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	copied_glyph_name,@function
copied_glyph_name:                      # @copied_glyph_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp371:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp372:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp373:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp374:
	.cfi_def_cfa_offset 48
.Ltmp375:
	.cfi_offset %rbx, -32
.Ltmp376:
	.cfi_offset %r14, -24
.Ltmp377:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	$-15, %ebp
	cmpq	$2147483647, %rsi       # imm = 0x7FFFFFFF
	ja	.LBB56_5
# BB#1:                                 # %if.else.17.i
	movq	72(%rdi), %rbx
	movq	$0, 8(%rsp)
	movl	$-21, %ebp
	cmpq	$0, 192(%rbx)
	je	.LBB56_5
# BB#2:                                 # %if.else.21.i
	movq	160(%rbx), %rax
	leaq	8(%rsp), %rdx
	movq	%rbx, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	js	.LBB56_5
# BB#3:                                 # %if.end.28.i
	movq	8(%rsp), %rax
	cmpb	$0, 16(%rax)
	je	.LBB56_5
# BB#4:                                 # %if.end.4
	subq	168(%rbx), %rax
	movq	192(%rbx), %rcx
	movups	8(%rcx,%rax), %xmm0
	movups	%xmm0, (%r14)
	xorl	%ebp, %ebp
.LBB56_5:                               # %cleanup
	movl	%ebp, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end56:
	.size	copied_glyph_name, .Lfunc_end56-copied_glyph_name
	.cfi_endproc

	.align	16, 0x90
	.type	copied_build_char,@function
copied_build_char:                      # @copied_build_char
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp378:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp379:
	.cfi_def_cfa_offset 24
	pushq	%r13
.Ltmp380:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp381:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp382:
	.cfi_def_cfa_offset 48
	subq	$192, %rsp
.Ltmp383:
	.cfi_def_cfa_offset 240
.Ltmp384:
	.cfi_offset %rbx, -48
.Ltmp385:
	.cfi_offset %r12, -40
.Ltmp386:
	.cfi_offset %r13, -32
.Ltmp387:
	.cfi_offset %r14, -24
.Ltmp388:
	.cfi_offset %r15, -16
	movq	%r8, %r12
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r13
	movslq	148(%rbx), %r15
	cmpq	$2147483647, %r12       # imm = 0x7FFFFFFF
	jne	.LBB57_3
# BB#1:                                 # %if.then
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%rcx, %rsi
	callq	*200(%rbx)
	movq	%rax, %r12
	cmpq	$2147483647, %r12       # imm = 0x7FFFFFFF
	jne	.LBB57_3
# BB#2:                                 # %if.then.2
	movq	72(%rbx), %rax
	movq	184(%rax), %r12
.LBB57_3:                               # %if.end.4
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	movq	%r14, %rdi
	callq	gs_moveto
	testl	%eax, %eax
	js	.LBB57_10
# BB#4:                                 # %lor.lhs.false
	movl	$1, %eax
	movb	%r15b, %cl
	shll	%cl, %eax
	orl	$36, %eax
	leaq	88(%rsp), %r8
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	%eax, %ecx
	callq	*224(%rbx)
	testl	%eax, %eax
	js	.LBB57_10
# BB#5:                                 # %if.end.12
	movq	%r15, %rax
	shlq	$4, %rax
	movups	96(%rsp,%rax), %xmm0
	movaps	%xmm0, 32(%rsp)
	movups	144(%rsp), %xmm0
	movaps	%xmm0, 48(%rsp)
	movups	160(%rsp), %xmm0
	movaps	%xmm0, 64(%rsp)
	movq	456(%r13), %rsi
	leaq	32(%rsp), %rdx
	movq	%r13, %rdi
	callq	gs_setcachedevice_double
	testl	%eax, %eax
	js	.LBB57_10
# BB#6:                                 # %lor.lhs.false.34
	leaq	132(%r14), %rcx
	movq	1680(%r14), %r8
	leaq	(%rsp), %r9
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movq	%r12, %rdx
	callq	*232(%rbx)
	testl	%eax, %eax
	js	.LBB57_10
# BB#7:                                 # %if.end.40
	cmpl	$0, 152(%rbx)
	je	.LBB57_9
# BB#8:                                 # %if.then.42
	movss	156(%rbx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%r14, %rdi
	callq	gs_setlinewidth
	movq	%r14, %rdi
	callq	gs_stroke
	jmp	.LBB57_10
.LBB57_9:                               # %if.else
	movq	%r14, %rdi
	callq	gs_fill
.LBB57_10:                              # %cleanup
	addq	$192, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end57:
	.size	copied_build_char, .Lfunc_end57-copied_build_char
	.cfi_endproc

	.align	16, 0x90
	.type	hash_subrs,@function
hash_subrs:                             # @hash_subrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp389:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp390:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp391:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp392:
	.cfi_def_cfa_offset 40
	subq	$136, %rsp
.Ltmp393:
	.cfi_def_cfa_offset 176
.Ltmp394:
	.cfi_offset %rbx, -40
.Ltmp395:
	.cfi_offset %r14, -32
.Ltmp396:
	.cfi_offset %r15, -24
.Ltmp397:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	(%rsp), %r14
	movq	%r14, %rdi
	callq	gs_md5_init
	movq	16(%rbx), %rax
	movq	%rax, 128(%rsp)
	xorl	%ebp, %ebp
	leaq	88(%rsp), %r15
	jmp	.LBB58_1
	.align	16, 0x90
.LBB58_4:                               # %for.inc
                                        #   in Loop: Header=BB58_1 Depth=1
	incl	%ebp
.LBB58_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %edx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	*456(%rbx)
	cmpl	$-20, %eax
	je	.LBB58_4
# BB#2:                                 # %if.end.5
                                        #   in Loop: Header=BB58_1 Depth=1
	testl	%eax, %eax
	js	.LBB58_5
# BB#3:                                 # %if.else
                                        #   in Loop: Header=BB58_1 Depth=1
	movq	88(%rsp), %rsi
	movl	96(%rsp), %edx
	movq	%r14, %rdi
	callq	gs_md5_append
	movl	$.L.str.45, %esi
	movq	%r15, %rdi
	callq	gs_glyph_data_free
	jmp	.LBB58_4
.LBB58_5:                               # %for.end
	shll	$16, %ebp
	movl	%ebp, 984(%rbx)
	xorl	%ebp, %ebp
	leaq	88(%rsp), %r14
	leaq	(%rsp), %r15
	jmp	.LBB58_6
	.align	16, 0x90
.LBB58_9:                               # %for.inc.37
                                        #   in Loop: Header=BB58_6 Depth=1
	incl	%ebp
.LBB58_6:                               # %for.body.14
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movq	%r14, %rcx
	callq	*456(%rbx)
	cmpl	$-20, %eax
	je	.LBB58_9
# BB#7:                                 # %if.end.25
                                        #   in Loop: Header=BB58_6 Depth=1
	testl	%eax, %eax
	js	.LBB58_10
# BB#8:                                 # %if.else.28
                                        #   in Loop: Header=BB58_6 Depth=1
	movq	88(%rsp), %rsi
	movl	96(%rsp), %edx
	movq	%r15, %rdi
	callq	gs_md5_append
	movl	$.L.str.45, %esi
	movq	%r14, %rdi
	callq	gs_glyph_data_free
	jmp	.LBB58_9
.LBB58_10:                              # %for.end.39
	leaq	968(%rbx), %rsi
	leaq	(%rsp), %rdi
	callq	gs_md5_finish
	addl	%ebp, 984(%rbx)
	addq	$136, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end58:
	.size	hash_subrs, .Lfunc_end58-hash_subrs
	.cfi_endproc

	.align	16, 0x90
	.type	compare_glyph_names,@function
compare_glyph_names:                    # @compare_glyph_names
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	movq	(%rsi), %rcx
	movq	8(%rax), %rdi
	movl	16(%rax), %esi
	movq	8(%rcx), %rdx
	movl	16(%rcx), %ecx
	jmp	bytes_compare           # TAILCALL
.Lfunc_end59:
	.size	compare_glyph_names, .Lfunc_end59-compare_glyph_names
	.cfi_endproc

	.type	copied_procs_type42,@object # @copied_procs_type42
	.section	.rodata,"a",@progbits
	.align	8
copied_procs_type42:
	.quad	copy_font_type42
	.quad	copy_glyph_type42
	.quad	copied_char_add_encoding
	.quad	named_glyph_slot_linear
	.quad	copied_type42_encode_char
	.quad	gs_type42_glyph_info
	.quad	gs_type42_glyph_outline
	.size	copied_procs_type42, 56

	.type	copied_procs_type1,@object # @copied_procs_type1
	.align	8
copied_procs_type1:
	.quad	copy_font_type1
	.quad	copy_glyph_type1
	.quad	copied_char_add_encoding
	.quad	named_glyph_slot_hashed
	.quad	copied_encode_char
	.quad	gs_type1_glyph_info
	.quad	copied_type1_glyph_outline
	.size	copied_procs_type1, 56

	.type	some_primes,@object     # @some_primes
	.align	16
some_primes:
	.long	257                     # 0x101
	.long	359                     # 0x167
	.long	521                     # 0x209
	.long	769                     # 0x301
	.long	1031                    # 0x407
	.long	2053                    # 0x805
	.long	3079                    # 0xc07
	.long	4099                    # 0x1003
	.long	5101                    # 0x13ed
	.long	6101                    # 0x17d5
	.long	7109                    # 0x1bc5
	.long	8209                    # 0x2011
	.long	10007                   # 0x2717
	.long	12007                   # 0x2ee7
	.long	14009                   # 0x36b9
	.long	16411                   # 0x401b
	.long	20107                   # 0x4e8b
	.long	26501                   # 0x6785
	.long	32771                   # 0x8003
	.long	48857                   # 0xbed9
	.long	65537                   # 0x10001
	.long	85229                   # 0x14ced
	.long	127837                  # 0x1f35d
	.size	some_primes, 92

	.type	copied_procs_cid0,@object # @copied_procs_cid0
	.align	8
copied_procs_cid0:
	.quad	copy_font_cid0
	.quad	copy_glyph_cid0
	.quad	copied_no_add_encoding
	.quad	named_glyph_slot_none
	.quad	gs_no_encode_char
	.quad	copied_cid0_glyph_info
	.quad	copied_cid0_glyph_outline
	.size	copied_procs_cid0, 56

	.type	copied_procs_cid2,@object # @copied_procs_cid2
	.align	8
copied_procs_cid2:
	.quad	copy_font_cid2
	.quad	copy_glyph_cid2
	.quad	copied_no_add_encoding
	.quad	named_glyph_slot_none
	.quad	gs_no_encode_char
	.quad	gs_type42_glyph_info
	.quad	gs_type42_glyph_outline
	.size	copied_procs_cid2, 56

	.type	st_gs_copied_glyph_element,@object # @st_gs_copied_glyph_element
	.align	8
st_gs_copied_glyph_element:
	.long	24                      # 0x18
	.zero	4
	.quad	.L.str.39
	.quad	0
	.quad	0
	.quad	copied_glyph_element_enum_ptrs
	.quad	copied_glyph_element_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_gs_copied_glyph_element, 64

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gs_copy_font(glyphs)"
	.size	.L.str, 21

	.type	st_gs_copied_glyph_name_element,@object # @st_gs_copied_glyph_name_element
	.section	.rodata,"a",@progbits
	.align	8
st_gs_copied_glyph_name_element:
	.long	24                      # 0x18
	.zero	4
	.quad	.L.str.40
	.quad	0
	.quad	0
	.quad	copied_glyph_name_enum_ptrs
	.quad	copied_glyph_name_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_gs_copied_glyph_name_element, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gs_copy_font(names)"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gs_copy_font(copied font)"
	.size	.L.str.2, 26

	.type	st_gs_copied_font_data,@object # @st_gs_copied_font_data
	.section	.rodata,"a",@progbits
	.align	8
st_gs_copied_font_data:
	.long	312                     # 0x138
	.zero	4
	.quad	.L.str.41
	.quad	0
	.quad	0
	.quad	gs_copied_font_data_enum_ptrs
	.quad	gs_copied_font_data_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_gs_copied_font_data, 64

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"gs_copy_font(wrapper data)"
	.size	.L.str.3, 27

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gs_copy_font(Copyright)"
	.size	.L.str.4, 24

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gs_copy_font(Notice)"
	.size	.L.str.5, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gs_copy_font(FamilyName)"
	.size	.L.str.6, 25

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gs_copy_font(FullName)"
	.size	.L.str.7, 23

	.type	copied_font_procs,@object # @copied_font_procs
	.section	.rodata,"a",@progbits
	.align	8
copied_font_procs:
	.quad	0
	.quad	0
	.quad	copied_font_info
	.quad	gs_default_same_font
	.quad	0
	.quad	0
	.quad	copied_enumerate_glyph
	.quad	0
	.quad	0
	.quad	copied_glyph_name
	.quad	gs_default_init_fstack
	.quad	gs_default_next_char_glyph
	.quad	copied_build_char
	.size	copied_font_procs, 104

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"gs_copy_font(UID)"
	.size	.L.str.8, 18

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Free copied glyph"
	.size	.L.str.9, 18

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gs_free_copied_font(FullName)"
	.size	.L.str.10, 30

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gs_free_copied_font(FamilyName)"
	.size	.L.str.11, 32

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gs_free_copied_font(Notice)"
	.size	.L.str.12, 28

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gs_free_copied_font(Copyright)"
	.size	.L.str.13, 31

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gs_free_copied_font(Encoding)"
	.size	.L.str.14, 30

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gs_free_copied_font(glyphs)"
	.size	.L.str.15, 28

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gs_free_copied_font(names)"
	.size	.L.str.16, 27

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gs_free_copied_font(data)"
	.size	.L.str.17, 26

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gs_free_copied_font(wrapper data)"
	.size	.L.str.18, 34

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gs_free_copied_font(copied font)"
	.size	.L.str.19, 33

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"copy_font_type42(data)"
	.size	.L.str.20, 23

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"copy_font_type42(Encoding)"
	.size	.L.str.21, 27

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"copy_font_type1(Encoding)"
	.size	.L.str.22, 26

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"copied_data_alloc"
	.size	.L.str.23, 18

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	".notdef"
	.size	.L.str.24, 8

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"copy_glyph_data(data)"
	.size	.L.str.25, 22

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"copy_glyph_data"
	.size	.L.str.26, 16

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"copy_subrs"
	.size	.L.str.27, 11

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"copy_subrs(data)"
	.size	.L.str.28, 17

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"copy_subrs(starts)"
	.size	.L.str.29, 19

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"FDArray"
	.size	.L.str.30, 8

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"copy_font_cid0(Encoding)"
	.size	.L.str.31, 25

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"copy_font_cid0(subfont names)"
	.size	.L.str.32, 30

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"copy_font_cid0(subfont glyphs)"
	.size	.L.str.33, 31

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"copy_font_cid0(subfont)"
	.size	.L.str.34, 24

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Registry"
	.size	.L.str.35, 9

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Ordering"
	.size	.L.str.36, 9

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"copy_font_cid2(CIDMap"
	.size	.L.str.37, 22

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"copy_font_cid2"
	.size	.L.str.38, 15

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gs_copied_glyph_t[]"
	.size	.L.str.39, 20

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gs_copied_glyph_name_t[]"
	.size	.L.str.40, 25

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gs_copied_font_data_t"
	.size	.L.str.41, 22

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"copy_glyph_name"
	.size	.L.str.42, 16

	.type	st_gs_copied_glyph_extra_name,@object # @st_gs_copied_glyph_extra_name
	.section	.rodata,"a",@progbits
	.align	8
st_gs_copied_glyph_extra_name:
	.long	40                      # 0x28
	.zero	4
	.quad	.L.str.44
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	gs_copied_glyph_extra_name_data
	.size	st_gs_copied_glyph_extra_name, 64

	.type	.L.str.43,@object       # @.str.43
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.43:
	.asciz	"copy_glyph_name(extra_name)"
	.size	.L.str.43, 28

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"gs_copied_glyph_extra_name_t"
	.size	.L.str.44, 29

	.type	gs_copied_glyph_extra_name_data,@object # @gs_copied_glyph_extra_name_data
	.section	.rodata,"a",@progbits
	.align	8
gs_copied_glyph_extra_name_data:
	.short	2                       # 0x2
	.short	0                       # 0x0
	.zero	4
	.quad	0
	.quad	gs_copied_glyph_extra_name_ptrs
	.size	gs_copied_glyph_extra_name_data, 24

	.type	gs_copied_glyph_extra_name_ptrs,@object # @gs_copied_glyph_extra_name_ptrs
	.align	2
gs_copied_glyph_extra_name_ptrs:
	.short	1                       # 0x1
	.short	8                       # 0x8
	.short	0                       # 0x0
	.short	32                      # 0x20
	.size	gs_copied_glyph_extra_name_ptrs, 8

	.type	.L.str.45,@object       # @.str.45
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.45:
	.asciz	"hash_type1_subrs"
	.size	.L.str.45, 17

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"prep"
	.size	.L.str.46, 5

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"cvt "
	.size	.L.str.47, 5

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"fpgm"
	.size	.L.str.48, 5

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"compare_glyphs"
	.size	.L.str.49, 15

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"order_font_data"
	.size	.L.str.50, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
