	.text
	.file	"gxidata.bc"
	.globl	gx_image1_plane_data
	.align	16, 0x90
	.type	gx_image1_plane_data,@function
gx_image1_plane_data:                   # @gx_image1_plane_data
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
	subq	$872, %rsp              # imm = 0x368
.Ltmp6:
	.cfi_def_cfa_offset 928
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
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%rsi, 88(%rsp)          # 8-byte Spill
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	%r15, 152(%rsp)         # 8-byte Spill
	movl	1344(%r15), %eax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leal	(%rax,%rdx), %eax
	movl	1156(%r15), %r13d
	cmpl	%r13d, %eax
	cmovlel	%eax, %r13d
	movl	%r13d, 124(%rsp)        # 4-byte Spill
	movslq	44(%r15), %rbx
	movq	%rbx, 160(%rsp)         # 8-byte Spill
	movl	%ebx, %r12d
	xorl	%ecx, %ecx
	testl	%edx, %edx
	movl	$0, %eax
	je	.LBB0_124
# BB#1:                                 # %if.end
	movl	1308(%r15), %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	movzbl	579(%r15), %eax
	movl	%eax, 120(%rsp)         # 4-byte Spill
	movl	1152(%r15), %ecx
	imull	%eax, %ecx
	movl	%ecx, 108(%rsp)         # 4-byte Spill
	movq	16(%r15), %rsi
	movq	1320(%r15), %rbp
	testq	%rbp, %rbp
	je	.LBB0_3
# BB#2:                                 # %if.then.i
	movq	%rbp, %rdi
	callq	gx_device_set_target
	movq	%rbp, %rsi
.LBB0_3:                                # %if.end.i
	movq	1328(%r15), %rbp
	testq	%rbp, %rbp
	je	.LBB0_4
# BB#5:                                 # %if.then.4.i
	movq	%rbp, %rdi
	callq	gx_device_set_target
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	jmp	.LBB0_6
.LBB0_4:
	movq	%rsi, 96(%rsp)          # 8-byte Spill
.LBB0_6:                                # %setup_image_device.exit
	movl	1352(%r15), %eax
	testl	%eax, %eax
	je	.LBB0_15
# BB#7:                                 # %for.cond.preheader
	testl	%r12d, %r12d
	jle	.LBB0_14
# BB#8:                                 # %for.body.preheader
	leal	-1(%r12), %ecx
	xorl	%edx, %edx
	testb	$3, %r12b
	je	.LBB0_11
# BB#9:                                 # %for.body.prol.preheader
	leaq	12(%r14), %rsi
	movl	%r12d, %edi
	andl	$3, %edi
	xorl	%edx, %edx
	.align	16, 0x90
.LBB0_10:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rsi), %ebp
	imull	%eax, %ebp
	movq	%rbp, 208(%rsp,%rdx,8)
	incq	%rdx
	addq	$16, %rsi
	cmpl	%edx, %edi
	jne	.LBB0_10
.LBB0_11:                               # %for.body.preheader.split
	cmpl	$3, %ecx
	jb	.LBB0_14
# BB#12:                                # %for.body.preheader.split.split
	movl	%r12d, %ecx
	subl	%edx, %ecx
	leaq	232(%rsp,%rdx,8), %rsi
	addq	$3, %rdx
	shlq	$4, %rdx
	leaq	12(%r14,%rdx), %rdx
	.align	16, 0x90
.LBB0_13:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rdx), %edi
	imull	%eax, %edi
	movq	%rdi, -24(%rsi)
	movl	-32(%rdx), %edi
	imull	%eax, %edi
	movq	%rdi, -16(%rsi)
	movl	-16(%rdx), %edi
	imull	%eax, %edi
	movq	%rdi, -8(%rsi)
	movl	(%rdx), %edi
	imull	%eax, %edi
	movq	%rdi, (%rsi)
	addq	$32, %rsi
	addq	$64, %rdx
	addl	$-4, %ecx
	jne	.LBB0_13
.LBB0_14:                               # %for.end
	movl	$0, 1352(%r15)
	jmp	.LBB0_16
.LBB0_15:                               # %if.else
	leaq	(,%rbx,8), %rdx
	leaq	208(%rsp), %rdi
	xorl	%esi, %esi
	callq	memset
.LBB0_16:                               # %if.end.30
	movl	$1, 60(%rsp)            # 4-byte Folded Spill
	cmpl	$1, %r12d
	jne	.LBB0_17
# BB#18:                                # %land.lhs.true
	movq	%r12, 112(%rsp)         # 8-byte Spill
	movl	48(%r15), %eax
	movzbl	576(%r15), %ecx
	cmpl	%ecx, %eax
	movl	%r13d, %r12d
	je	.LBB0_20
# BB#19:                                # %if.then.37
	cltd
	idivl	%ecx
	movl	%eax, 60(%rsp)          # 4-byte Spill
	jmp	.LBB0_20
.LBB0_17:
	movq	%r12, 112(%rsp)         # 8-byte Spill
	movl	%r13d, %r12d
.LBB0_20:                               # %for.cond.43.preheader
	movl	1344(%r15), %ecx
	cmpl	%r12d, %ecx
	jge	.LBB0_121
# BB#21:                                # %for.body.47.lr.ph
	leaq	1528(%r15), %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	leaq	1412(%r15), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	leaq	1452(%r15), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movl	%ebx, %eax
	andl	$1, %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	leaq	1860(%r15), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	%r14, 88(%rsp)          # 8-byte Spill
	leaq	28(%r14), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leaq	8(%r14), %rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	leaq	204(%rsp), %r13
	.align	16, 0x90
.LBB0_22:                               # %for.body.47
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_63 Depth 2
                                        #     Child Loop BB0_33 Depth 2
                                        #       Child Loop BB0_39 Depth 3
                                        #       Child Loop BB0_47 Depth 3
                                        #         Child Loop BB0_50 Depth 4
                                        #         Child Loop BB0_55 Depth 4
                                        #     Child Loop BB0_31 Depth 2
                                        #     Child Loop BB0_96 Depth 2
                                        #     Child Loop BB0_106 Depth 2
	movl	1348(%r15), %ebp
	cmpl	120(%rsp), %ebx         # 4-byte Folded Reload
	jle	.LBB0_62
# BB#23:                                # %if.then.51
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	1232(%r15), %rax
	movl	$0, 200(%rsp)
	testl	%ebx, %ebx
	jle	.LBB0_24
# BB#32:                                # %for.body.56.lr.ph
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	%rbp, 128(%rsp)         # 8-byte Spill
	movb	576(%r15), %cl
	movq	%rcx, 192(%rsp)         # 8-byte Spill
	xorl	%edx, %edx
	movq	%rax, %r12
	movq	%rax, 136(%rsp)         # 8-byte Spill
	jmp	.LBB0_33
	.align	16, 0x90
.LBB0_61:                               # %repack_bit_planes.exit.for.body.56_crit_edge
                                        #   in Loop: Header=BB0_33 Depth=2
	movq	1232(%r15), %r12
.LBB0_33:                               # %for.body.56
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_39 Depth 3
                                        #       Child Loop BB0_47 Depth 3
                                        #         Child Loop BB0_50 Depth 4
                                        #         Child Loop BB0_55 Depth 4
	movslq	1152(%r15), %r14
	movslq	%edx, %rax
	imulq	$332, %rax, %rax        # imm = 0x14C
	movq	168(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax), %r13
	movzbl	1117(%r15), %r15d
	xorl	%r11d, %r11d
	cmpq	$1, %r15
	movl	$0, 188(%rsp)           # 4-byte Folded Spill
	jne	.LBB0_37
# BB#34:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB0_33 Depth=2
	cmpb	$0, (%r13)
	je	.LBB0_36
# BB#35:                                #   in Loop: Header=BB0_33 Depth=2
	movl	$0, 188(%rsp)           # 4-byte Folded Spill
	jmp	.LBB0_37
.LBB0_36:                               # %land.rhs.i
                                        #   in Loop: Header=BB0_33 Depth=2
	movq	168(%rsp), %rcx         # 8-byte Reload
	movzbl	255(%rcx,%rax), %eax
	cmpl	$255, %eax
	sete	%al
	movl	%eax, 188(%rsp)         # 4-byte Spill
	.align	16, 0x90
.LBB0_37:                               # %land.end.i
                                        #   in Loop: Header=BB0_33 Depth=2
	movq	%rdx, 176(%rsp)         # 8-byte Spill
	movq	192(%rsp), %rax         # 8-byte Reload
	testb	%al, %al
	je	.LBB0_45
# BB#38:                                # %for.body.lr.ph.i
                                        #   in Loop: Header=BB0_33 Depth=2
	leaq	(%r12,%r14), %rdx
	leal	7(%r14), %eax
	sarl	$3, %eax
	cltq
	movq	%rdx, %r8
	subq	%rax, %r8
	movq	192(%rsp), %rax         # 8-byte Reload
	movzbl	%al, %r9d
	xorl	%edi, %edi
	movq	144(%rsp), %rsi         # 8-byte Reload
	leaq	208(%rsp), %r10
	xorl	%r11d, %r11d
	leaq	736(%rsp), %rbx
	.align	16, 0x90
.LBB0_39:                               # %for.body.i
                                        #   Parent Loop BB0_22 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-8(%rsi), %rax
	testq	%rax, %rax
	je	.LBB0_40
# BB#41:                                # %if.else.i
                                        #   in Loop: Header=BB0_39 Depth=3
	movl	(%rsi), %ebp
	movl	%ebp, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	addq	(%r10), %rax
	andl	$7, %ebp
	orl	%ebp, %r11d
	jmp	.LBB0_42
	.align	16, 0x90
.LBB0_40:                               # %if.then.i.254
                                        #   in Loop: Header=BB0_39 Depth=3
	testq	%rdi, %rdi
	cmoveq	%r8, %rdi
	xorl	%ebp, %ebp
	movq	%rdi, %rax
.LBB0_42:                               # %for.inc.i
                                        #   in Loop: Header=BB0_39 Depth=3
	movq	%rax, (%rbx)
	movl	%ebp, 8(%rbx)
	addq	$8, %r10
	addq	$16, %rsi
	addq	$16, %rbx
	decl	%r9d
	jne	.LBB0_39
# BB#43:                                # %for.end.i
                                        #   in Loop: Header=BB0_33 Depth=2
	testq	%rdi, %rdi
	je	.LBB0_45
# BB#44:                                # %if.then.33.i
                                        #   in Loop: Header=BB0_33 Depth=2
	subq	%rdi, %rdx
	xorl	%esi, %esi
	movl	%r11d, %ebx
	callq	memset
	movl	%ebx, %r11d
.LBB0_45:                               # %for.cond.37.preheader.i
                                        #   in Loop: Header=BB0_33 Depth=2
	testl	%r14d, %r14d
	jle	.LBB0_60
# BB#46:                                # %for.body.40.lr.ph.i
                                        #   in Loop: Header=BB0_33 Depth=2
	movq	192(%rsp), %rax         # 8-byte Reload
	movzbl	%al, %eax
	movl	%eax, 184(%rsp)         # 4-byte Spill
	xorl	%r9d, %r9d
	.align	16, 0x90
.LBB0_47:                               # %for.body.40.i
                                        #   Parent Loop BB0_22 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_50 Depth 4
                                        #         Child Loop BB0_55 Depth 4
	movl	%r11d, %r8d
	testl	%r11d, %r11d
	je	.LBB0_54
# BB#48:                                # %for.cond.44.preheader.i
                                        #   in Loop: Header=BB0_47 Depth=3
	xorl	%edx, %edx
	movq	192(%rsp), %rax         # 8-byte Reload
	testb	%al, %al
	movl	$0, %edi
	je	.LBB0_56
# BB#49:                                # %for.body.47.lr.ph.i
                                        #   in Loop: Header=BB0_47 Depth=3
	leal	8(%r9), %r10d
	xorl	%edi, %edi
	movl	184(%rsp), %esi         # 4-byte Reload
	xorl	%edx, %edx
	leaq	736(%rsp), %rbp
	.align	16, 0x90
.LBB0_50:                               # %for.body.47.i
                                        #   Parent Loop BB0_22 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        #       Parent Loop BB0_47 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	(%rbp), %rcx
	leaq	1(%rcx), %r11
	movq	%r11, (%rbp)
	movzbl	(%rcx), %ebx
	movl	8(%rbp), %ecx
	testl	%ecx, %ecx
	je	.LBB0_53
# BB#51:                                # %if.then.54.i
                                        #   in Loop: Header=BB0_50 Depth=4
	shll	%cl, %ebx
	movl	%r10d, %eax
	subl	%ecx, %eax
	cmpl	%r14d, %eax
	jge	.LBB0_53
# BB#52:                                # %if.then.58.i
                                        #   in Loop: Header=BB0_50 Depth=4
	movzbl	(%r11), %r11d
	movl	$8, %eax
	subl	%ecx, %eax
	movb	%al, %cl
	shrl	%cl, %r11d
	addl	%ebx, %r11d
	movl	%r11d, %ebx
.LBB0_53:                               # %if.end.65.i
                                        #   in Loop: Header=BB0_50 Depth=4
	addl	%edx, %edx
	movl	%ebx, %eax
	shrl	$4, %eax
	orl	repack_bit_planes.expand(,%rax,4), %edx
	addl	%edi, %edi
	andl	$15, %ebx
	orl	repack_bit_planes.expand(,%rbx,4), %edi
	addq	$16, %rbp
	decl	%esi
	jne	.LBB0_50
	jmp	.LBB0_56
	.align	16, 0x90
.LBB0_54:                               # %for.cond.82.preheader.i
                                        #   in Loop: Header=BB0_47 Depth=3
	xorl	%edi, %edi
	movq	192(%rsp), %rax         # 8-byte Reload
	testb	%al, %al
	movl	184(%rsp), %eax         # 4-byte Reload
	movl	$0, %edx
	leaq	736(%rsp), %rcx
	je	.LBB0_56
	.align	16, 0x90
.LBB0_55:                               # %for.body.85.i
                                        #   Parent Loop BB0_22 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        #       Parent Loop BB0_47 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	(%rcx), %rsi
	leaq	1(%rsi), %rbp
	movq	%rbp, (%rcx)
	movzbl	(%rsi), %ebp
	addl	%edx, %edx
	movq	%rbp, %rsi
	shrq	$4, %rsi
	orl	repack_bit_planes.expand(,%rsi,4), %edx
	addl	%edi, %edi
	andl	$15, %ebp
	orl	repack_bit_planes.expand(,%rbp,4), %edi
	addq	$16, %rcx
	decl	%eax
	jne	.LBB0_55
.LBB0_56:                               # %if.end.104.i
                                        #   in Loop: Header=BB0_47 Depth=3
	movl	188(%rsp), %eax         # 4-byte Reload
	testb	%al, %al
	je	.LBB0_58
# BB#57:                                # %if.then.106.i
                                        #   in Loop: Header=BB0_47 Depth=3
	movl	%edx, (%r12)
	movl	%edi, 4(%r12)
	addq	$8, %r12
	jmp	.LBB0_59
	.align	16, 0x90
.LBB0_58:                               # %if.else.110.i
                                        #   in Loop: Header=BB0_47 Depth=3
	movl	%edx, %eax
	shrl	$24, %eax
	movb	(%r13,%rax), %al
	movb	%al, (%r12)
	movl	%edx, %eax
	shrl	$16, %eax
	movzbl	%al, %eax
	movb	(%r13,%rax), %al
	movb	%al, 1(%r12,%r15)
	addq	%r15, %r12
	movl	%edx, %eax
	shrl	$8, %eax
	movzbl	%al, %eax
	movb	(%r13,%rax), %al
	movb	%al, 2(%r15,%r12)
	addq	%r15, %r12
	movzbl	%dl, %eax
	movb	(%r13,%rax), %al
	movb	%al, 3(%r15,%r12)
	addq	%r15, %r12
	movl	%edi, %eax
	shrl	$24, %eax
	movb	(%r13,%rax), %al
	movb	%al, 4(%r15,%r12)
	addq	%r15, %r12
	movl	%edi, %eax
	shrl	$16, %eax
	movzbl	%al, %eax
	movb	(%r13,%rax), %al
	movb	%al, 5(%r15,%r12)
	addq	%r15, %r12
	movl	%edi, %eax
	shrl	$8, %eax
	movzbl	%al, %eax
	movb	(%r13,%rax), %al
	movb	%al, 6(%r15,%r12)
	addq	%r15, %r12
	movzbl	%dil, %eax
	movb	(%r13,%rax), %al
	movb	%al, 7(%r15,%r12)
	addq	%r15, %r12
	addq	%r15, %r12
.LBB0_59:                               # %if.end.173.i
                                        #   in Loop: Header=BB0_47 Depth=3
	movl	%r8d, %r11d
	addl	$8, %r9d
	cmpl	%r14d, %r9d
	jl	.LBB0_47
.LBB0_60:                               # %repack_bit_planes.exit
                                        #   in Loop: Header=BB0_33 Depth=2
	movq	152(%rsp), %r15         # 8-byte Reload
	movzbl	576(%r15), %eax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movq	176(%rsp), %rdx         # 8-byte Reload
	leal	(%rdx,%rax), %edx
	movq	160(%rsp), %rbx         # 8-byte Reload
	cmpl	%ebx, %edx
	jl	.LBB0_61
# BB#25:                                # %for.cond.71.preheader
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	112(%rsp), %rcx         # 8-byte Reload
	testl	%ecx, %ecx
	jle	.LBB0_26
# BB#27:                                # %for.body.74.preheader
                                        #   in Loop: Header=BB0_22 Depth=1
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	movl	$0, %edx
	je	.LBB0_29
# BB#28:                                # %for.body.74.prol
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	88(%rsp), %rax          # 8-byte Reload
	movl	12(%rax), %eax
	addq	%rax, 208(%rsp)
	movl	$1, %edx
.LBB0_29:                               # %for.body.74.preheader.split
                                        #   in Loop: Header=BB0_22 Depth=1
	cmpl	$1, %ecx
	movl	124(%rsp), %r12d        # 4-byte Reload
	leaq	204(%rsp), %r13
	movq	128(%rsp), %rbp         # 8-byte Reload
	je	.LBB0_65
# BB#30:                                # %for.body.74.preheader.split.split
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	%ebx, %eax
	subl	%edx, %eax
	leaq	216(%rsp), %rcx
	leaq	(%rcx,%rdx,8), %rcx
	shlq	$4, %rdx
	movq	64(%rsp), %rsi          # 8-byte Reload
	leaq	(%rdx,%rsi), %rdx
	.align	16, 0x90
.LBB0_31:                               # %for.body.74
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-16(%rdx), %esi
	addq	%rsi, -8(%rcx)
	movl	(%rdx), %esi
	addq	%rsi, (%rcx)
	addq	$16, %rcx
	addq	$32, %rdx
	addl	$-2, %eax
	jne	.LBB0_31
	jmp	.LBB0_65
	.align	16, 0x90
.LBB0_62:                               # %if.else.85
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	%r12d, 124(%rsp)        # 4-byte Spill
	movq	%rbp, 128(%rsp)         # 8-byte Spill
	movq	88(%rsp), %rbx          # 8-byte Reload
	movl	8(%rbx), %ecx
	movl	%ecx, 200(%rsp)
	movq	1232(%r15), %rdi
	movq	(%rbx), %rbp
	addq	208(%rsp), %rbp
	movl	1152(%r15), %eax
	addl	%ecx, %eax
	movzbl	579(%r15), %edx
	imull	%eax, %edx
	movzbl	576(%r15), %eax
	imull	%edx, %eax
	cltd
	movq	112(%rsp), %r14         # 8-byte Reload
	idivl	%r14d
	leal	7(%rax), %r8d
	sarl	$3, %r8d
	movzbl	1117(%r15), %eax
	movl	60(%rsp), %edx          # 4-byte Reload
	movl	%edx, 8(%rsp)
	movl	%eax, (%rsp)
	leaq	200(%rsp), %rsi
	movq	%rbp, %rdx
	movq	168(%rsp), %r9          # 8-byte Reload
	callq	*1200(%r15)
	movq	%rax, 136(%rsp)         # 8-byte Spill
	movl	12(%rbx), %eax
	addq	%rax, 208(%rsp)
	cmpl	$2, %r14d
	movq	64(%rsp), %rbx          # 8-byte Reload
	movq	48(%rsp), %r12          # 8-byte Reload
	movl	$1, %ebp
	jl	.LBB0_64
	.align	16, 0x90
.LBB0_63:                               # %for.body.118
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	578(%r15), %cl
	movl	%ebp, %eax
	shll	%cl, %eax
	movslq	%eax, %rdi
	addq	1232(%r15), %rdi
	movq	-12(%rbx), %r9
	addq	208(%rsp,%rbp,8), %r9
	movl	-4(%rbx), %ecx
	movl	1152(%r15), %eax
	addl	%ecx, %eax
	movzbl	579(%r15), %edx
	imull	%eax, %edx
	movzbl	576(%r15), %eax
	imull	%edx, %eax
	cltd
	idivl	%r14d
	leal	7(%rax), %r8d
	sarl	$3, %r8d
	movzbl	1117(%r15), %eax
	movl	%eax, (%rsp)
	movl	$1, 8(%rsp)
	movq	%r13, %rsi
	movq	%r9, %rdx
	movq	%r12, %r9
	callq	*1200(%r15)
	movl	(%rbx), %eax
	addq	%rax, 208(%rsp,%rbp,8)
	incq	%rbp
	addq	$332, %r12              # imm = 0x14C
	addq	$16, %rbx
	cmpl	%ebp, %r14d
	jne	.LBB0_63
.LBB0_64:                               #   in Loop: Header=BB0_22 Depth=1
	movq	160(%rsp), %rbx         # 8-byte Reload
	movq	128(%rsp), %rbp         # 8-byte Reload
	movl	124(%rsp), %r12d        # 4-byte Reload
	jmp	.LBB0_65
.LBB0_24:                               #   in Loop: Header=BB0_22 Depth=1
	movq	%rax, 136(%rsp)         # 8-byte Spill
	jmp	.LBB0_65
.LBB0_26:                               #   in Loop: Header=BB0_22 Depth=1
	movl	124(%rsp), %r12d        # 4-byte Reload
	leaq	204(%rsp), %r13
	movq	128(%rsp), %rbp         # 8-byte Reload
	.align	16, 0x90
.LBB0_65:                               # %if.end.163
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	1372(%r15), %eax
	movl	%eax, 1356(%r15)
	movl	1376(%r15), %ecx
	subl	1384(%r15), %ecx
	movl	%ecx, 1376(%r15)
	movl	%eax, %edx
	jns	.LBB0_67
# BB#66:                                # %if.then.180
                                        #   in Loop: Header=BB0_22 Depth=1
	leal	1(%rax), %edx
	movl	%edx, 1372(%r15)
	addl	1388(%r15), %ecx
	movl	%ecx, 1376(%r15)
.LBB0_67:                               # %if.end.197
                                        #   in Loop: Header=BB0_22 Depth=1
	addl	1380(%r15), %edx
	movl	%edx, 1372(%r15)
	movl	1392(%r15), %ecx
	movl	%ecx, 1360(%r15)
	movl	1396(%r15), %edi
	subl	1404(%r15), %edi
	movl	%edi, 1396(%r15)
	movl	%ecx, %esi
	jns	.LBB0_69
# BB#68:                                # %if.then.234
                                        #   in Loop: Header=BB0_22 Depth=1
	leal	1(%rcx), %esi
	movl	%esi, 1392(%r15)
	addl	1408(%r15), %edi
	movl	%edi, 1396(%r15)
.LBB0_69:                               # %if.end.252
                                        #   in Loop: Header=BB0_22 Depth=1
	addl	1400(%r15), %esi
	movl	%esi, 1392(%r15)
	cmpb	$0, 1119(%r15)
	jne	.LBB0_90
# BB#70:                                # %if.then.267
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	1264(%r15), %edi
	cmpl	$1, %edi
	jne	.LBB0_71
# BB#81:                                # %sw.bb.336
                                        #   in Loop: Header=BB0_22 Depth=1
	cmpl	%eax, %edx
	movl	%eax, %esi
	cmovlel	%edx, %esi
	subl	44(%rsp), %esi          # 4-byte Folded Reload
	cmpl	1280(%r15), %esi
	jge	.LBB0_120
# BB#82:                                # %if.end.356
                                        #   in Loop: Header=BB0_22 Depth=1
	cmpl	%eax, %edx
	cmovll	%eax, %edx
	addl	44(%rsp), %edx          # 4-byte Folded Reload
	cmpl	1272(%r15), %edx
	jle	.LBB0_120
# BB#83:                                # %if.end.364
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	%esi, %edi
	andl	$-2147483393, %edi      # imm = 0xFFFFFFFF800000FF
	cmpl	$-2147483520, %edi      # imm = 0xFFFFFFFF80000080
	jne	.LBB0_85
# BB#84:                                # %cond.true.372
                                        #   in Loop: Header=BB0_22 Depth=1
	sarl	$8, %esi
	incl	%esi
	jmp	.LBB0_86
.LBB0_71:                               # %if.then.267
                                        #   in Loop: Header=BB0_22 Depth=1
	testl	%edi, %edi
	jne	.LBB0_90
# BB#72:                                # %sw.bb
                                        #   in Loop: Header=BB0_22 Depth=1
	cmpl	%ecx, %esi
	movl	%ecx, %edx
	cmovlel	%esi, %edx
	subl	44(%rsp), %edx          # 4-byte Folded Reload
	cmpl	1284(%r15), %edx
	jge	.LBB0_120
# BB#73:                                # %if.end.284
                                        #   in Loop: Header=BB0_22 Depth=1
	cmpl	%ecx, %esi
	cmovll	%ecx, %esi
	addl	44(%rsp), %esi          # 4-byte Folded Reload
	cmpl	1276(%r15), %esi
	jle	.LBB0_120
# BB#74:                                # %if.end.291
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	%edx, %edi
	andl	$-2147483393, %edi      # imm = 0xFFFFFFFF800000FF
	cmpl	$-2147483520, %edi      # imm = 0xFFFFFFFF80000080
	jne	.LBB0_76
# BB#75:                                # %cond.true.298
                                        #   in Loop: Header=BB0_22 Depth=1
	sarl	$8, %edx
	incl	%edx
	jmp	.LBB0_77
.LBB0_85:                               # %cond.false.375
                                        #   in Loop: Header=BB0_22 Depth=1
	movslq	%esi, %rsi
	addq	$127, %rsi
	shrq	$8, %rsi
.LBB0_86:                               # %cond.end.380
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	%esi, 1520(%r15)
	movl	%edx, %edi
	andl	$-2147483393, %edi      # imm = 0xFFFFFFFF800000FF
	cmpl	$-2147483520, %edi      # imm = 0xFFFFFFFF80000080
	jne	.LBB0_88
# BB#87:                                # %cond.true.389
                                        #   in Loop: Header=BB0_22 Depth=1
	sarl	$8, %edx
	incl	%edx
	jmp	.LBB0_89
.LBB0_88:                               # %cond.false.392
                                        #   in Loop: Header=BB0_22 Depth=1
	movslq	%edx, %rdx
	addq	$127, %rdx
	shrq	$8, %rdx
.LBB0_89:                               # %cleanup.409
                                        #   in Loop: Header=BB0_22 Depth=1
	subl	%esi, %edx
	movl	%edx, 1524(%r15)
	je	.LBB0_120
	jmp	.LBB0_90
.LBB0_76:                               # %cond.false.301
                                        #   in Loop: Header=BB0_22 Depth=1
	movslq	%edx, %rdx
	addq	$127, %rdx
	shrq	$8, %rdx
.LBB0_77:                               # %cond.end.306
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	%edx, 1512(%r15)
	movl	%esi, %edi
	andl	$-2147483393, %edi      # imm = 0xFFFFFFFF800000FF
	cmpl	$-2147483520, %edi      # imm = 0xFFFFFFFF80000080
	jne	.LBB0_79
# BB#78:                                # %cond.true.315
                                        #   in Loop: Header=BB0_22 Depth=1
	sarl	$8, %esi
	incl	%esi
	jmp	.LBB0_80
.LBB0_79:                               # %cond.false.318
                                        #   in Loop: Header=BB0_22 Depth=1
	movslq	%esi, %rsi
	addq	$127, %rsi
	shrq	$8, %rsi
.LBB0_80:                               # %cleanup
                                        #   in Loop: Header=BB0_22 Depth=1
	subl	%edx, %esi
	movl	%esi, 1516(%r15)
	je	.LBB0_120
	.align	16, 0x90
.LBB0_90:                               # %if.end.414
                                        #   in Loop: Header=BB0_22 Depth=1
	subl	1364(%r15), %eax
	addl	%eax, 1412(%r15)
	subl	1368(%r15), %ecx
	addl	%ecx, 1432(%r15)
	movq	80(%rsp), %rcx          # 8-byte Reload
	movq	32(%rcx), %rax
	movq	72(%rsp), %rdx          # 8-byte Reload
	movq	%rax, 32(%rdx)
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	%xmm1, 16(%rdx)
	movups	%xmm0, (%rdx)
	testl	%ebp, %ebp
	je	.LBB0_112
# BB#91:                                # %while.body.lr.ph
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	1460(%r15), %eax
	imull	%ebp, %eax
	addl	1452(%r15), %eax
	movl	%eax, 1452(%r15)
	movl	1456(%r15), %ecx
	movl	1464(%r15), %edx
	testb	$1, %bpl
	jne	.LBB0_93
# BB#92:                                #   in Loop: Header=BB0_22 Depth=1
	movl	%ebp, %esi
	jmp	.LBB0_95
	.align	16, 0x90
.LBB0_93:                               # %while.body.prol
                                        #   in Loop: Header=BB0_22 Depth=1
	leal	-1(%rbp), %esi
	subl	%edx, %ecx
	jns	.LBB0_95
# BB#94:                                # %if.then.448.prol
                                        #   in Loop: Header=BB0_22 Depth=1
	incl	%eax
	movl	%eax, 1452(%r15)
	addl	1468(%r15), %ecx
	.align	16, 0x90
.LBB0_95:                               # %while.body.lr.ph.split
                                        #   in Loop: Header=BB0_22 Depth=1
	cmpl	$1, %ebp
	je	.LBB0_101
	.align	16, 0x90
.LBB0_96:                               # %while.body
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	subl	%edx, %ecx
	jns	.LBB0_98
# BB#97:                                # %if.then.448
                                        #   in Loop: Header=BB0_96 Depth=2
	incl	%eax
	movl	%eax, 1452(%r15)
	addl	1468(%r15), %ecx
.LBB0_98:                               # %while.cond.backedge
                                        #   in Loop: Header=BB0_96 Depth=2
	addl	$-2, %esi
	subl	%edx, %ecx
	jns	.LBB0_100
# BB#99:                                # %if.then.448.1
                                        #   in Loop: Header=BB0_96 Depth=2
	incl	%eax
	movl	%eax, 1452(%r15)
	addl	1468(%r15), %ecx
.LBB0_100:                              # %while.cond.backedge.1
                                        #   in Loop: Header=BB0_96 Depth=2
	testl	%esi, %esi
	jne	.LBB0_96
.LBB0_101:                              # %while.body.486.lr.ph
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	%ecx, 1456(%r15)
	movl	1480(%r15), %eax
	imull	%ebp, %eax
	addl	1472(%r15), %eax
	movl	%eax, 1472(%r15)
	movl	1476(%r15), %ecx
	movl	1484(%r15), %edx
	testb	$1, %bpl
	jne	.LBB0_103
# BB#102:                               #   in Loop: Header=BB0_22 Depth=1
	movl	%ebp, %esi
	jmp	.LBB0_105
	.align	16, 0x90
.LBB0_103:                              # %while.body.486.prol
                                        #   in Loop: Header=BB0_22 Depth=1
	leal	-1(%rbp), %esi
	subl	%edx, %ecx
	jns	.LBB0_105
# BB#104:                               # %if.then.505.prol
                                        #   in Loop: Header=BB0_22 Depth=1
	incl	%eax
	movl	%eax, 1472(%r15)
	addl	1488(%r15), %ecx
	.align	16, 0x90
.LBB0_105:                              # %while.body.486.lr.ph.split
                                        #   in Loop: Header=BB0_22 Depth=1
	cmpl	$1, %ebp
	je	.LBB0_111
	.align	16, 0x90
.LBB0_106:                              # %while.body.486
                                        #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	subl	%edx, %ecx
	jns	.LBB0_108
# BB#107:                               # %if.then.505
                                        #   in Loop: Header=BB0_106 Depth=2
	incl	%eax
	movl	%eax, 1472(%r15)
	addl	1488(%r15), %ecx
.LBB0_108:                              # %while.cond.483.backedge
                                        #   in Loop: Header=BB0_106 Depth=2
	addl	$-2, %esi
	subl	%edx, %ecx
	jns	.LBB0_110
# BB#109:                               # %if.then.505.1
                                        #   in Loop: Header=BB0_106 Depth=2
	incl	%eax
	movl	%eax, 1472(%r15)
	addl	1488(%r15), %ecx
.LBB0_110:                              # %while.cond.483.backedge.1
                                        #   in Loop: Header=BB0_106 Depth=2
	testl	%esi, %esi
	jne	.LBB0_106
.LBB0_111:                              # %while.end.524
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	%ecx, 1476(%r15)
	movl	$0, 1348(%r15)
.LBB0_112:                              # %do.end.532
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	200(%rsp), %edx
	addl	%ebp, %edx
	movzbl	579(%r15), %eax
	imull	%ebp, %eax
	movl	108(%rsp), %ecx         # 4-byte Reload
	subl	%eax, %ecx
	movl	$1, %r8d
	movq	%r15, %rdi
	movq	136(%rsp), %rsi         # 8-byte Reload
	movq	96(%rsp), %r9           # 8-byte Reload
	callq	*1208(%r15)
	testl	%eax, %eax
	js	.LBB0_113
# BB#119:                               # %if.end.682
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	1356(%r15), %rax
	movq	%rax, 1364(%r15)
.LBB0_120:                              # %cleanup.685.thread257
                                        #   in Loop: Header=BB0_22 Depth=1
	movl	1344(%r15), %ecx
	incl	%ecx
	movl	%ecx, 1344(%r15)
	cmpl	%r12d, %ecx
	jl	.LBB0_22
.LBB0_121:                              # %for.end.694
	xorl	%eax, %eax
	cmpl	1156(%r15), %ecx
	jl	.LBB0_123
# BB#122:                               # %if.else.701
	movq	%r15, %rdi
	callq	gx_image1_flush
	movl	%eax, %ecx
	testl	%ecx, %ecx
	movl	$1, %eax
	cmovsl	%ecx, %eax
	jmp	.LBB0_123
.LBB0_113:                              # %if.then.541
	addl	%ebp, 1348(%r15)
	cmpl	$0, 1352(%r15)
	jne	.LBB0_123
# BB#114:                               # %do.body.549
	movl	1376(%r15), %edx
	addl	1384(%r15), %edx
	movl	%edx, 1376(%r15)
	movl	1372(%r15), %ecx
	subl	1388(%r15), %edx
	jb	.LBB0_116
# BB#115:                               # %if.then.573
	decl	%ecx
	movl	%ecx, 1372(%r15)
	movl	%edx, 1376(%r15)
.LBB0_116:                              # %if.end.591
	subl	1380(%r15), %ecx
	movl	%ecx, 1372(%r15)
	movl	1396(%r15), %edx
	addl	1404(%r15), %edx
	movl	%edx, 1396(%r15)
	movl	1392(%r15), %ecx
	subl	1408(%r15), %edx
	jb	.LBB0_118
# BB#117:                               # %if.then.629
	decl	%ecx
	movl	%ecx, 1392(%r15)
	movl	%edx, 1396(%r15)
.LBB0_118:                              # %if.end.647
	subl	1400(%r15), %ecx
	movl	%ecx, 1392(%r15)
	movl	1364(%r15), %ecx
	subl	1356(%r15), %ecx
	addl	%ecx, 1412(%r15)
	movl	1368(%r15), %ecx
	subl	1360(%r15), %ecx
	addl	%ecx, 1432(%r15)
.LBB0_123:                              # %out
	movl	1344(%r15), %ecx
	movq	24(%rsp), %rdx          # 8-byte Reload
	subl	%edx, %ecx
.LBB0_124:                              # %cleanup.710
	movq	32(%rsp), %rdx          # 8-byte Reload
	movl	%ecx, (%rdx)
	addq	$872, %rsp              # imm = 0x368
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gx_image1_plane_data, .Lfunc_end0-gx_image1_plane_data
	.cfi_endproc

	.globl	gx_image1_flush
	.align	16, 0x90
	.type	gx_image1_flush,@function
gx_image1_flush:                        # @gx_image1_flush
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
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp17:
	.cfi_def_cfa_offset 48
.Ltmp18:
	.cfi_offset %rbx, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movzbl	579(%rbx), %r14d
	imull	1152(%rbx), %r14d
	movl	1308(%rbx), %edx
	movl	1372(%rbx), %ecx
	movl	%ecx, 1356(%rbx)
	movl	1392(%rbx), %eax
	movl	%eax, 1360(%rbx)
	movl	1264(%rbx), %esi
	cmpl	$1, %esi
	jne	.LBB1_1
# BB#3:                                 # %sw.bb.16
	movl	$128, %esi
	subl	%edx, %esi
	addl	%ecx, %esi
	sarl	$8, %esi
	movl	%esi, 1520(%rbx)
	leal	128(%rdx,%rcx), %edx
	sarl	$8, %edx
	subl	%esi, %edx
	movl	%edx, 1524(%rbx)
	jmp	.LBB1_4
.LBB1_1:                                # %entry
	testl	%esi, %esi
	jne	.LBB1_4
# BB#2:                                 # %sw.bb
	movl	$128, %esi
	subl	%edx, %esi
	addl	%eax, %esi
	sarl	$8, %esi
	movl	%esi, 1512(%rbx)
	leal	128(%rdx,%rax), %edx
	sarl	$8, %edx
	subl	%esi, %edx
	movl	%edx, 1516(%rbx)
.LBB1_4:                                # %sw.epilog
	subl	1364(%rbx), %ecx
	addl	%ecx, 1412(%rbx)
	subl	1368(%rbx), %eax
	addl	%eax, 1432(%rbx)
	movq	1444(%rbx), %rax
	movq	%rax, 1484(%rbx)
	movups	1412(%rbx), %xmm0
	movups	1428(%rbx), %xmm1
	movups	%xmm1, 1468(%rbx)
	movups	%xmm0, 1452(%rbx)
	movq	1356(%rbx), %rax
	movq	%rax, 1364(%rbx)
	movq	1208(%rbx), %r15
	movq	16(%rbx), %rax
	movq	1320(%rbx), %rbp
	testq	%rbp, %rbp
	je	.LBB1_6
# BB#5:                                 # %if.then.i
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	gx_device_set_target
	movq	%rbp, %rax
.LBB1_6:                                # %if.end.i
	movq	1328(%rbx), %rbp
	testq	%rbp, %rbp
	je	.LBB1_8
# BB#7:                                 # %if.then.4.i
	movq	%rbp, %rdi
	movq	%rax, %rsi
	callq	gx_device_set_target
	movq	%rbp, %rax
.LBB1_8:                                # %setup_image_device.exit
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movl	%r14d, %ecx
	movq	%rax, %r9
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.Lfunc_end1:
	.size	gx_image1_flush, .Lfunc_end1-gx_image1_flush
	.cfi_endproc

	.globl	gx_image1_end_image
	.align	16, 0x90
	.type	gx_image1_end_image,@function
gx_image1_end_image:                    # @gx_image1_end_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp22:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp23:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp25:
	.cfi_def_cfa_offset 48
.Ltmp26:
	.cfi_offset %rbx, -32
.Ltmp27:
	.cfi_offset %r14, -24
.Ltmp28:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	%rbx, 8(%rsp)
	movq	24(%rbx), %r14
	movq	1336(%rbx), %r15
	testl	%esi, %esi
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	gx_image_flush
	testl	%eax, %eax
	js	.LBB2_19
.LBB2_2:                                # %if.end.3
	movq	1328(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB2_4
# BB#3:                                 # %if.then.5
	xorl	%esi, %esi
	callq	gx_device_set_target
.LBB2_4:                                # %if.end.7
	movq	1320(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB2_6
# BB#5:                                 # %if.then.9
	xorl	%esi, %esi
	callq	gx_device_set_target
.LBB2_6:                                # %if.end.11
	movq	1328(%rbx), %rsi
	movl	$.L.str, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	movq	1320(%rbx), %rsi
	movl	$.L.str.1, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	testq	%r15, %r15
	je	.LBB2_8
# BB#7:                                 # %if.then.17
	movq	(%r15), %rax
	movq	%r15, %rdi
	callq	*32(%rax)
	movl	$.L.str.2, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*24(%r14)
.LBB2_8:                                # %if.end.20
	movq	24448(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB2_10
# BB#9:                                 # %if.then.22
	callq	gsicc_release_link
.LBB2_10:                               # %if.end.24
	movq	24456(%rbx), %rax
	testq	%rax, %rax
	je	.LBB2_12
# BB#11:                                # %if.then.26
	movq	8(%rax), %rsi
	movl	$.L.str.3, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	movq	24456(%rbx), %rax
	movq	(%rax), %rsi
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	movq	24456(%rbx), %rsi
	movl	$.L.str.5, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
.LBB2_12:                               # %if.end.36
	movq	24488(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_14
# BB#13:                                # %if.then.38
	movl	$.L.str.6, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
.LBB2_14:                               # %if.end.42
	movq	24464(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_16
# BB#15:                                # %if.then.44
	movl	$.L.str.7, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
.LBB2_16:                               # %if.end.48
	movq	23112(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB2_18
# BB#17:                                # %if.then.50
	movl	$.L.str.8, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
.LBB2_18:                               # %if.end.54
	movq	1248(%rbx), %rsi
	movl	$.L.str.9, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	movq	1232(%rbx), %rsi
	movl	$.L.str.10, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	leaq	8(%rsp), %rdi
	callq	gx_image_free_enum
	xorl	%eax, %eax
.LBB2_19:                               # %cleanup.59
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	gx_image1_end_image, .Lfunc_end2-gx_image1_end_image
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"image RasterOp"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"image clipper"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"image scaler state"
	.size	.L.str.2, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"device_contone"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"image is_transparent"
	.size	.L.str.4, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"image color cache"
	.size	.L.str.5, 18

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"image thresh_buffer"
	.size	.L.str.6, 20

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"image ht_buffer"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"image clues"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"image line"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"image buffer"
	.size	.L.str.10, 13

	.type	repack_bit_planes.expand,@object # @repack_bit_planes.expand
	.section	.rodata,"a",@progbits
	.align	16
repack_bit_planes.expand:
	.long	0                       # 0x0
	.long	16777216                # 0x1000000
	.long	65536                   # 0x10000
	.long	16842752                # 0x1010000
	.long	256                     # 0x100
	.long	16777472                # 0x1000100
	.long	65792                   # 0x10100
	.long	16843008                # 0x1010100
	.long	1                       # 0x1
	.long	16777217                # 0x1000001
	.long	65537                   # 0x10001
	.long	16842753                # 0x1010001
	.long	257                     # 0x101
	.long	16777473                # 0x1000101
	.long	65793                   # 0x10101
	.long	16843009                # 0x1010101
	.size	repack_bit_planes.expand, 64


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
