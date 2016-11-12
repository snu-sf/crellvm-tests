	.text
	.file	"gdevrinkj.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	rinkj_print_page,@function
rinkj_print_page:                       # @rinkj_print_page
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
	subq	$2872, %rsp             # imm = 0xB38
.Ltmp6:
	.cfi_def_cfa_offset 2928
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
	movq	%rdi, %rbx
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	movq	%rsi, %rdi
	callq	rinkj_byte_stream_file_new
	movq	%rax, %rdi
	callq	rinkj_epson870_new
	movq	%rax, %r15
	movq	%r15, %rdi
	callq	rinkj_screen_eb_new
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	832(%rbx), %eax
	movl	%eax, 120(%rsp)
	movl	836(%rbx), %eax
	movl	%eax, 124(%rsp)
	movl	$7, 128(%rsp)
	movq	$.L.str.23, 136(%rsp)
	movl	$7, 18480(%rbx)
	leaq	19816(%rbx), %rdi
	movl	$.L.str.24, %esi
	callq	gp_fopen
	movq	%rax, %r12
	movq	$.L.str.25, 144(%rsp)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 152(%rsp)
	movupd	%xmm0, 168(%rsp)
	movupd	%xmm0, 184(%rsp)
	movupd	%xmm0, 200(%rsp)
	movupd	%xmm0, 216(%rsp)
	movupd	%xmm0, 232(%rsp)
	movupd	%xmm0, 248(%rsp)
	movq	$0, 264(%rsp)
	leaq	528(%rsp), %rdi
	movl	$256, %esi              # imm = 0x100
	movq	%r12, %rdx
	callq	fgets
	testq	%rax, %rax
	je	.LBB0_47
# BB#1:                                 # %for.cond.4.preheader.lr.ph.i.i
	leaq	527(%rsp), %r14
	leaq	528(%rsp), %rbp
	leaq	816(%rsp), %r13
	xorl	%ebx, %ebx
	jmp	.LBB0_2
	.align	16, 0x90
.LBB0_4:                                # %for.inc.14.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	incq	%rbx
.LBB0_2:                                # %for.cond.4.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #     Child Loop BB0_16 Depth 2
                                        #     Child Loop BB0_22 Depth 2
                                        #     Child Loop BB0_25 Depth 2
	movb	528(%rsp,%rbx), %al
	testb	%al, %al
	je	.LBB0_46
# BB#3:                                 # %for.cond.4.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movzbl	%al, %eax
	cmpl	$58, %eax
	jne	.LBB0_4
# BB#5:                                 # %if.end.23.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	leaq	272(%rsp), %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, 272(%rsp,%rbx)
	incl	%ebx
	movslq	%ebx, %rax
	leaq	(%rax,%r14), %rbx
	.align	16, 0x90
.LBB0_6:                                # %for.cond.31.i.i
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	1(%rbx), %eax
	incq	%rbx
	cmpl	$32, %eax
	je	.LBB0_6
# BB#7:                                 # %for.end.40.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$.L.str.26, %edi
	callq	strlen
	cmpq	$3, %rax
	ja	.LBB0_13
# BB#8:                                 # %cond.true.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	272(%rsp), %edx
	movzbl	%dl, %ecx
	addl	$-65, %ecx
	testq	%rax, %rax
	je	.LBB0_14
# BB#9:                                 # %cond.true.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	testl	%ecx, %ecx
	jne	.LBB0_14
# BB#10:                                # %if.then.56.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movzbl	%dh, %ecx  # NOREX
	addl	$-100, %ecx
	cmpq	$2, %rax
	jb	.LBB0_14
# BB#11:                                # %if.then.56.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	testl	%ecx, %ecx
	jne	.LBB0_14
# BB#12:                                # %if.then.66.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	%edx, %ecx
	shrl	$16, %ecx
	shrl	$24, %edx
	movzbl	%cl, %ecx
	addl	$-100, %ecx
	addl	$-76, %edx
	testl	%ecx, %ecx
	cmovnel	%ecx, %edx
	cmpq	$2, %rax
	cmovbel	%ecx, %edx
	movl	%edx, %ecx
	jmp	.LBB0_14
.LBB0_13:                               # %cond.false.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$.L.str.26, %esi
	leaq	272(%rsp), %rdi
	callq	strcmp
	movl	%eax, %ecx
.LBB0_14:                               # %cond.end.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	testl	%ecx, %ecx
	je	.LBB0_15
# BB#28:                                # %land.lhs.true.96.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$.L.str.27, %edi
	callq	strlen
	cmpq	$3, %rax
	ja	.LBB0_34
# BB#29:                                # %cond.true.100.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	272(%rsp), %edx
	movzbl	%dl, %ecx
	addl	$-68, %ecx
	testq	%rax, %rax
	je	.LBB0_35
# BB#30:                                # %cond.true.100.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	testl	%ecx, %ecx
	jne	.LBB0_35
# BB#31:                                # %if.then.115.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movzbl	%dh, %ecx  # NOREX
	addl	$-105, %ecx
	cmpq	$2, %rax
	jb	.LBB0_35
# BB#32:                                # %if.then.115.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	testl	%ecx, %ecx
	jne	.LBB0_35
# BB#33:                                # %if.then.125.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	%edx, %ecx
	shrl	$16, %ecx
	shrl	$24, %edx
	movzbl	%cl, %ecx
	addl	$-116, %ecx
	addl	$-104, %edx
	testl	%ecx, %ecx
	cmovnel	%ecx, %edx
	cmpq	$2, %rax
	cmovbel	%ecx, %edx
	movl	%edx, %ecx
	jmp	.LBB0_35
.LBB0_15:                               # %do.end.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movb	(%rbx), %al
	movq	$-1, %rbx
	movq	144(%rsp), %rcx
	.align	16, 0x90
.LBB0_16:                               # %for.cond.i.i.i
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	1(%rcx,%rbx), %dl
	incq	%rbx
	testb	%dl, %dl
	je	.LBB0_18
# BB#17:                                # %for.cond.i.i.i
                                        #   in Loop: Header=BB0_16 Depth=2
	movzbl	%al, %esi
	movzbl	%dl, %edi
	cmpl	%esi, %edi
	jne	.LBB0_16
.LBB0_18:                               # %for.end.i.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movzbl	%al, %eax
	movzbl	%dl, %ecx
	cmpl	%eax, %ecx
	jne	.LBB0_46
# BB#19:                                # %if.end.14.i.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$256, %esi              # imm = 0x100
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	fgets
	testq	%rax, %rax
	je	.LBB0_46
# BB#20:                                # %if.end.20.i.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$.L.str.29, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	leaq	812(%rsp), %rdx
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	jne	.LBB0_46
# BB#21:                                # %if.end.26.i.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%r15, 112(%rsp)         # 8-byte Spill
	leaq	152(%rsp,%rbx,8), %r15
	movq	56(%rsp), %rbp          # 8-byte Reload
	movq	24(%rbp), %rdi
	movl	$32, %esi
	movl	$.L.str.30, %edx
	callq	*64(%rdi)
	movq	%rax, %r14
	movq	$0, (%r14)
	movl	812(%rsp), %eax
	movl	%eax, 8(%r14)
	movq	24(%rbp), %rdi
	movl	812(%rsp), %esi
	shll	$3, %esi
	movl	$.L.str.30, %edx
	callq	*64(%rdi)
	movq	%rax, 16(%r14)
	movq	24(%rbp), %rdi
	movl	812(%rsp), %esi
	shll	$3, %esi
	movl	$.L.str.30, %edx
	callq	*64(%rdi)
	movq	%rax, 24(%r14)
	cmpl	$0, 812(%rsp)
	movl	$0, %ebp
	jle	.LBB0_25
	.align	16, 0x90
.LBB0_22:                               # %for.body.48.i.i.i
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$256, %esi              # imm = 0x100
	movq	%r13, %rdi
	movq	%r12, %rdx
	callq	fgets
	testq	%rax, %rax
	je	.LBB0_27
# BB#23:                                # %if.end.54.i.i.i
                                        #   in Loop: Header=BB0_22 Depth=2
	movl	$.L.str.31, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	leaq	792(%rsp), %rdx
	leaq	800(%rsp), %rcx
	callq	__isoc99_sscanf
	cmpl	$2, %eax
	jne	.LBB0_27
# BB#24:                                # %if.end.60.i.i.i
                                        #   in Loop: Header=BB0_22 Depth=2
	movq	800(%rsp), %rax
	movq	16(%r14), %rcx
	movq	%rax, (%rcx,%rbp,8)
	movq	792(%rsp), %rax
	movq	24(%r14), %rcx
	movq	%rax, (%rcx,%rbp,8)
	incq	%rbp
	movslq	812(%rsp), %rax
	cmpq	%rax, %rbp
	jl	.LBB0_22
	.align	16, 0x90
.LBB0_25:                               # %while.cond.i.i.i
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %rax
	movq	(%rax), %r15
	testq	%r15, %r15
	jne	.LBB0_25
# BB#26:                                # %while.end.i.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%r14, (%rax)
.LBB0_27:                               # %rinkj_add_lut.exit.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	112(%rsp), %r15         # 8-byte Reload
	leaq	527(%rsp), %rbp
	movq	%rbp, %r14
	leaq	528(%rsp), %rbp
	jmp	.LBB0_46
.LBB0_34:                               # %cond.false.144.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$.L.str.27, %esi
	leaq	272(%rsp), %rdi
	callq	strcmp
	movl	%eax, %ecx
.LBB0_35:                               # %cond.end.147.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	testl	%ecx, %ecx
	je	.LBB0_44
# BB#36:                                # %land.lhs.true.155.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$.L.str.28, %edi
	callq	strlen
	cmpq	$3, %rax
	ja	.LBB0_42
# BB#37:                                # %cond.true.159.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	272(%rsp), %edx
	movzbl	%dl, %ecx
	addl	$-65, %ecx
	testq	%rax, %rax
	je	.LBB0_43
# BB#38:                                # %cond.true.159.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	testl	%ecx, %ecx
	jne	.LBB0_43
# BB#39:                                # %if.then.174.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movzbl	%dh, %ecx  # NOREX
	addl	$-115, %ecx
	cmpq	$2, %rax
	jb	.LBB0_43
# BB#40:                                # %if.then.174.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	testl	%ecx, %ecx
	jne	.LBB0_43
# BB#41:                                # %if.then.184.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	%edx, %ecx
	shrl	$16, %ecx
	shrl	$24, %edx
	movzbl	%cl, %ecx
	addl	$-112, %ecx
	addl	$-101, %edx
	testl	%ecx, %ecx
	cmovnel	%ecx, %edx
	cmpq	$2, %rax
	cmovbel	%ecx, %edx
	movl	%edx, %ecx
	jmp	.LBB0_43
.LBB0_42:                               # %cond.false.203.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$.L.str.28, %esi
	leaq	272(%rsp), %rdi
	callq	strcmp
	movl	%eax, %ecx
.LBB0_43:                               # %cond.end.206.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	testl	%ecx, %ecx
	je	.LBB0_44
# BB#98:                                # %if.else.212.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%r15, %rdi
	jmp	.LBB0_45
.LBB0_44:                               # %if.then.209.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	24(%rsp), %rdi          # 8-byte Reload
.LBB0_45:                               # %for.cond.1.backedge.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	leaq	272(%rsp), %rsi
	movq	%rbx, %rdx
	callq	rinkj_device_set_param_string
.LBB0_46:                               # %for.cond.1.backedge.i.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$256, %esi              # imm = 0x100
	movq	%rbp, %rdi
	movq	%r12, %rdx
	callq	fgets
	testq	%rax, %rax
	movl	$0, %ebx
	jne	.LBB0_2
.LBB0_47:                               # %for.end.217.i.i
	movq	%r12, %rdi
	callq	fclose
	xorl	%r14d, %r14d
	movsd	.LCPI0_0(%rip), %xmm4   # xmm4 = mem[0],zero
	leaq	816(%rsp), %r13
	movabsq	$4294967296, %r15       # imm = 0x100000000
	movq	24(%rsp), %r12          # 8-byte Reload
	.align	16, 0x90
.LBB0_48:                               # %for.cond.1.preheader.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_49 Depth 2
                                        #       Child Loop BB0_50 Depth 3
                                        #         Child Loop BB0_51 Depth 4
	movq	152(%rsp,%r14,8), %r8
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB0_49:                               # %for.body.3.i.i.i
                                        #   Parent Loop BB0_48 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_50 Depth 3
                                        #         Child Loop BB0_51 Depth 4
	testq	%r8, %r8
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	divsd	%xmm4, %xmm0
	movq	%r8, %rdx
	je	.LBB0_54
	.align	16, 0x90
.LBB0_50:                               # %for.body.6.i.i.i
                                        #   Parent Loop BB0_48 Depth=1
                                        #     Parent Loop BB0_49 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_51 Depth 4
	movq	16(%rdx), %rsi
	movq	24(%rdx), %rdi
	movslq	8(%rdx), %rax
	decq	%rax
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB0_51:                               # %for.cond.i.i.i.i
                                        #   Parent Loop BB0_48 Depth=1
                                        #     Parent Loop BB0_49 Depth=2
                                        #       Parent Loop BB0_50 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%rbx, %rbp
	cmpq	%rax, %rbp
	jge	.LBB0_53
# BB#52:                                # %for.body.i.i.i.i
                                        #   in Loop: Header=BB0_51 Depth=4
	leaq	1(%rbp), %rbx
	movsd	8(%rsi,%rbp,8), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_51
.LBB0_53:                               # %rinkj_graph_lookup.exit.i.i.i
                                        #   in Loop: Header=BB0_50 Depth=3
	shlq	$32, %rbp
	movq	%rbp, %rax
	sarq	$29, %rax
	movsd	(%rdi,%rax), %xmm1      # xmm1 = mem[0],zero
	movsd	(%rsi,%rax), %xmm2      # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm0
	addq	%r15, %rbp
	sarq	$29, %rbp
	movsd	(%rdi,%rbp), %xmm3      # xmm3 = mem[0],zero
	subsd	%xmm1, %xmm3
	mulsd	%xmm0, %xmm3
	movsd	(%rsi,%rbp), %xmm0      # xmm0 = mem[0],zero
	subsd	%xmm2, %xmm0
	divsd	%xmm0, %xmm3
	addsd	%xmm1, %xmm3
	movq	(%rdx), %rdx
	testq	%rdx, %rdx
	movapd	%xmm3, %xmm0
	jne	.LBB0_50
.LBB0_54:                               # %for.end.i.9.i.i
                                        #   in Loop: Header=BB0_49 Depth=2
	movsd	%xmm0, 816(%rsp,%rcx,8)
	incq	%rcx
	cmpq	$256, %rcx              # imm = 0x100
	jne	.LBB0_49
# BB#55:                                # %for.end.10.i.i.i
                                        #   in Loop: Header=BB0_48 Depth=1
	movq	%r12, %rdi
	movl	%r14d, %esi
	movq	%r13, %rdx
	callq	rinkj_screen_eb_set_lut
	movsd	.LCPI0_0(%rip), %xmm4   # xmm4 = mem[0],zero
	incq	%r14
	cmpq	$7, %r14
	jne	.LBB0_48
# BB#56:                                # %rinkj_init.exit
	leaq	120(%rsp), %rsi
	movq	%r12, %rdi
	callq	rinkj_device_init
	movl	$-12, %eax
	testq	%r12, %r12
	je	.LBB0_97
# BB#57:                                # %if.end
	xorl	%esi, %esi
	movq	56(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	callq	gx_device_raster
	movl	%eax, %r15d
	movl	100(%rbp), %eax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movl	832(%rbp), %ebx
	movq	24(%rbp), %rdi
	movl	18504(%rbp), %r14d
	addl	%eax, %r14d
	movl	$.L.str.32, %edx
	movl	%ebx, %esi
	callq	*64(%rdi)
	movq	%rax, %r13
	movq	%r13, 816(%rsp)
	movq	24(%rbp), %rdi
	movl	$.L.str.32, %edx
	movl	%ebx, %esi
	callq	*64(%rdi)
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	%rax, 824(%rsp)
	movq	24(%rbp), %rdi
	movl	$.L.str.32, %edx
	movl	%ebx, %esi
	callq	*64(%rdi)
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movq	%rax, 832(%rsp)
	movq	24(%rbp), %rdi
	movl	$.L.str.32, %edx
	movl	%ebx, %esi
	callq	*64(%rdi)
	movq	%rax, 840(%rsp)
	movq	%rax, %rbx
	cmpq	$0, 19800(%rbp)
	movl	$0, %ecx
	je	.LBB0_61
# BB#58:                                # %if.then.i
	movq	24(%rbp), %rdi
	movl	$524288, %esi           # imm = 0x80000
	movl	$.L.str.32, %edx
	callq	*64(%rdi)
	movq	%rax, %rcx
	movl	$-25, %eax
	testq	%rcx, %rcx
	je	.LBB0_97
# BB#59:                                # %if.end.i
	movl	$1, (%rcx)
	xorl	%eax, %eax
	.align	16, 0x90
.LBB0_60:                               # %for.body.14.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, 8(%rcx,%rax,8)
	movl	$0, 16(%rcx,%rax,8)
	movl	$0, 24(%rcx,%rax,8)
	movl	$0, 32(%rcx,%rax,8)
	movl	$0, 40(%rcx,%rax,8)
	addq	$5, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	jne	.LBB0_60
.LBB0_61:                               # %if.end.21.i
	movl	%r14d, 12(%rsp)         # 4-byte Spill
	movl	%r15d, %esi
	movq	%rcx, %r15
	movq	%r13, 80(%rsp)          # 8-byte Spill
	movq	%r13, 528(%rsp)
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	%rax, 536(%rsp)
	movq	88(%rsp), %rcx          # 8-byte Reload
	movq	%rcx, 544(%rsp)
	movq	%rbx, 72(%rsp)          # 8-byte Spill
	movq	%rbx, 552(%rsp)
	movq	%r13, 560(%rsp)
	movq	%rax, 568(%rsp)
	movq	%rbx, 576(%rsp)
	movq	%rbp, %r14
	movq	24(%r14), %rdi
	movl	$.L.str.32, %edx
	callq	*64(%rdi)
	movq	%rax, 16(%rsp)          # 8-byte Spill
	cmpl	$0, 836(%r14)
	movl	$0, %r13d
	jle	.LBB0_94
# BB#62:                                # %for.body.43.lr.ph.i
	movslq	12(%rsp), %rax          # 4-byte Folded Reload
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	112(%rsp), %rax         # 8-byte Reload
	andl	$1, %eax
	movl	%eax, 68(%rsp)          # 4-byte Spill
	xorl	%eax, %eax
	movq	816(%rsp), %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	leaq	144(%rsp), %rbp
	.align	16, 0x90
.LBB0_63:                               # %for.body.43.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_76 Depth 2
                                        #     Child Loop BB0_84 Depth 2
                                        #     Child Loop BB0_79 Depth 2
                                        #     Child Loop BB0_65 Depth 2
                                        #       Child Loop BB0_69 Depth 3
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%r14, %rdi
	movq	%rax, %rsi
	movq	16(%rsp), %rdx          # 8-byte Reload
	leaq	272(%rsp), %rcx
	callq	gdev_prn_get_bits
	cmpq	$0, 19800(%r14)
	movq	%r15, %r12
	je	.LBB0_64
# BB#72:                                # %if.else.i
                                        #   in Loop: Header=BB0_63 Depth=1
	movl	12(%rsp), %eax          # 4-byte Reload
	cmpl	$3, %eax
	je	.LBB0_78
# BB#73:                                # %if.else.i
                                        #   in Loop: Header=BB0_63 Depth=1
	cmpl	$4, %eax
	jne	.LBB0_74
# BB#83:                                # %for.cond.123.preheader.i
                                        #   in Loop: Header=BB0_63 Depth=1
	cmpl	$0, 832(%r14)
	movl	$0, %ebx
	movq	%rbp, %r15
	jle	.LBB0_93
	.align	16, 0x90
.LBB0_84:                               # %for.body.126.i
                                        #   Parent Loop BB0_63 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	272(%rsp), %rax
	movl	(%rax,%rbx,4), %r13d
	movl	%r13d, %eax
	shrl	$10, %eax
	xorl	%r13d, %eax
	movl	%r13d, %ecx
	shrl	$20, %ecx
	movzwl	%ax, %ebp
	xorl	%ecx, %ebp
	cmpl	%r13d, (%r12,%rbp,8)
	jne	.LBB0_85
# BB#86:                                # %if.else.150.i
                                        #   in Loop: Header=BB0_84 Depth=2
	movl	4(%r12,%rbp,8), %eax
	movl	%eax, 144(%rsp)
	jmp	.LBB0_87
	.align	16, 0x90
.LBB0_85:                               # %if.then.137.i
                                        #   in Loop: Header=BB0_84 Depth=2
	movl	%r13d, 120(%rsp)
	movq	19800(%r14), %rsi
	movl	$1, %r8d
	movq	%r14, %rdi
	leaq	120(%rsp), %rdx
	movq	%r15, %rcx
	callq	gscms_transform_color
	movl	%r13d, (%r12,%rbp,8)
	movl	144(%rsp), %eax
	movl	%eax, 4(%r12,%rbp,8)
	movb	144(%rsp), %al
.LBB0_87:                               # %if.end.156.i
                                        #   in Loop: Header=BB0_84 Depth=2
	movq	80(%rsp), %rcx          # 8-byte Reload
	movb	%al, (%rcx,%rbx)
	movb	145(%rsp), %al
	movq	96(%rsp), %rcx          # 8-byte Reload
	movb	%al, (%rcx,%rbx)
	movb	146(%rsp), %al
	movq	88(%rsp), %rcx          # 8-byte Reload
	movb	%al, (%rcx,%rbx)
	movb	147(%rsp), %al
	movq	72(%rsp), %rcx          # 8-byte Reload
	movb	%al, (%rcx,%rbx)
	incq	%rbx
	movslq	832(%r14), %rax
	cmpq	%rax, %rbx
	jl	.LBB0_84
	jmp	.LBB0_93
	.align	16, 0x90
.LBB0_64:                               # %for.cond.48.preheader.i
                                        #   in Loop: Header=BB0_63 Depth=1
	movl	832(%r14), %edx
	testl	%edx, %edx
	movl	$0, %eax
	movl	$0, %ecx
	movq	%rbp, %r15
	jle	.LBB0_93
	.align	16, 0x90
.LBB0_65:                               # %for.cond.52.preheader.i
                                        #   Parent Loop BB0_63 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_69 Depth 3
	movq	112(%rsp), %rsi         # 8-byte Reload
	testl	%esi, %esi
	jle	.LBB0_71
# BB#66:                                # %for.body.54.i.preheader
                                        #   in Loop: Header=BB0_65 Depth=2
	cmpl	$0, 68(%rsp)            # 4-byte Folded Reload
	movl	$0, %edx
	je	.LBB0_68
# BB#67:                                # %for.body.54.i.prol
                                        #   in Loop: Header=BB0_65 Depth=2
	movq	272(%rsp), %rdx
	movb	(%rdx,%rax), %dl
	movq	40(%rsp), %rsi          # 8-byte Reload
	movb	%dl, (%rsi,%rcx)
	movl	$1, %edx
.LBB0_68:                               # %for.body.54.i.preheader.split
                                        #   in Loop: Header=BB0_65 Depth=2
	movq	112(%rsp), %rsi         # 8-byte Reload
	cmpl	$1, %esi
	je	.LBB0_70
	.align	16, 0x90
.LBB0_69:                               # %for.body.54.i
                                        #   Parent Loop BB0_63 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	272(%rsp), %rsi
	addq	%rax, %rsi
	movb	(%rdx,%rsi), %bl
	movq	816(%rsp,%rdx,8), %rsi
	movb	%bl, (%rsi,%rcx)
	movq	272(%rsp), %rsi
	addq	%rax, %rsi
	movb	1(%rdx,%rsi), %bl
	movq	824(%rsp,%rdx,8), %rsi
	movb	%bl, (%rsi,%rcx)
	addq	$2, %rdx
	movq	112(%rsp), %rsi         # 8-byte Reload
	cmpl	%edx, %esi
	jne	.LBB0_69
.LBB0_70:                               # %for.cond.52.for.end.64_crit_edge.i
                                        #   in Loop: Header=BB0_65 Depth=2
	movl	832(%r14), %edx
.LBB0_71:                               # %for.end.64.i
                                        #   in Loop: Header=BB0_65 Depth=2
	addq	104(%rsp), %rax         # 8-byte Folded Reload
	incq	%rcx
	movslq	%edx, %rsi
	cmpq	%rsi, %rcx
	jl	.LBB0_65
	jmp	.LBB0_93
	.align	16, 0x90
.LBB0_78:                               # %for.cond.72.preheader.i
                                        #   in Loop: Header=BB0_63 Depth=1
	cmpl	$0, 832(%r14)
	movl	$0, %r13d
	movl	$0, %ebx
	movq	%rbp, %r15
	jle	.LBB0_93
	.align	16, 0x90
.LBB0_79:                               # %for.body.75.i
                                        #   Parent Loop BB0_63 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$0, 144(%rsp)
	movq	272(%rsp), %rsi
	addq	%r13, %rsi
	movl	$3, %edx
	movq	%r15, %rdi
	movq	%r15, %r14
	callq	memcpy
	movl	144(%rsp), %ebp
	movl	%ebp, %eax
	shrl	$10, %eax
	xorl	%ebp, %eax
	movl	%ebp, %ecx
	shrl	$20, %ecx
	movzwl	%ax, %r15d
	xorl	%ecx, %r15d
	cmpl	%ebp, (%r12,%r15,8)
	jne	.LBB0_80
# BB#81:                                # %if.else.93.i
                                        #   in Loop: Header=BB0_79 Depth=2
	movl	4(%r12,%r15,8), %eax
	movl	%eax, 120(%rsp)
	movq	56(%rsp), %r14          # 8-byte Reload
	jmp	.LBB0_82
	.align	16, 0x90
.LBB0_80:                               # %if.then.84.i
                                        #   in Loop: Header=BB0_79 Depth=2
	movq	%r14, %rdx
	movq	56(%rsp), %r14          # 8-byte Reload
	movq	19800(%r14), %rsi
	movl	$1, %r8d
	movq	%r14, %rdi
	leaq	120(%rsp), %rcx
	callq	gscms_transform_color
	movl	%ebp, (%r12,%r15,8)
	movl	120(%rsp), %eax
	movl	%eax, 4(%r12,%r15,8)
	movb	120(%rsp), %al
.LBB0_82:                               # %if.end.99.i
                                        #   in Loop: Header=BB0_79 Depth=2
	movq	80(%rsp), %rcx          # 8-byte Reload
	movb	%al, (%rcx,%rbx)
	movb	121(%rsp), %al
	movq	96(%rsp), %rcx          # 8-byte Reload
	movb	%al, (%rcx,%rbx)
	movb	122(%rsp), %al
	movq	88(%rsp), %rcx          # 8-byte Reload
	movb	%al, (%rcx,%rbx)
	movb	123(%rsp), %al
	movq	72(%rsp), %rcx          # 8-byte Reload
	movb	%al, (%rcx,%rbx)
	addq	104(%rsp), %r13         # 8-byte Folded Reload
	incq	%rbx
	movslq	832(%r14), %rax
	cmpq	%rax, %rbx
	leaq	144(%rsp), %r15
	jl	.LBB0_79
	jmp	.LBB0_93
	.align	16, 0x90
.LBB0_74:                               # %if.else.i
                                        #   in Loop: Header=BB0_63 Depth=1
	cmpl	$5, %eax
	movq	%rbp, %r15
	jne	.LBB0_93
# BB#75:                                # %for.cond.180.preheader.i
                                        #   in Loop: Header=BB0_63 Depth=1
	cmpl	$0, 832(%r14)
	movl	$0, %edi
	movl	$0, %r13d
	jle	.LBB0_93
	.align	16, 0x90
.LBB0_76:                               # %for.body.183.i
                                        #   Parent Loop BB0_63 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movq	272(%rsp), %rsi
	addq	%r13, %rsi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	memcpy
	movl	144(%rsp), %ebx
	movl	%ebx, %eax
	shrl	$10, %eax
	xorl	%ebx, %eax
	movl	%ebx, %ecx
	shrl	$20, %ecx
	movzwl	%ax, %ebp
	xorl	%ecx, %ebp
	cmpl	%ebx, (%r12,%rbp,8)
	jne	.LBB0_77
# BB#88:                                # %if.else.209.i
                                        #   in Loop: Header=BB0_76 Depth=2
	movl	4(%r12,%rbp,8), %ecx
	movl	%ecx, 120(%rsp)
	jmp	.LBB0_89
	.align	16, 0x90
.LBB0_77:                               # %if.then.199.i
                                        #   in Loop: Header=BB0_76 Depth=2
	movq	19800(%r14), %rsi
	movl	$1, %r8d
	movq	%r14, %rdi
	movq	%r15, %rdx
	leaq	120(%rsp), %rcx
	callq	gscms_transform_color
	movl	%ebx, (%r12,%rbp,8)
	movl	120(%rsp), %eax
	movl	%eax, 4(%r12,%rbp,8)
	movb	120(%rsp), %cl
.LBB0_89:                               # %if.end.215.i
                                        #   in Loop: Header=BB0_76 Depth=2
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	272(%rsp), %rax
	movzbl	4(%rax,%r13), %eax
	testl	%eax, %eax
	je	.LBB0_91
# BB#90:                                # %for.cond.222.preheader.i
                                        #   in Loop: Header=BB0_76 Depth=2
	movzbl	%cl, %ecx
	imull	$255, %ecx, %edx
	xorl	$255, %ecx
	imull	%eax, %ecx
	shll	$3, %ecx
	shrl	$8, %ecx
	leal	(%rdx,%rcx), %esi
	leal	128(%rdx,%rcx), %ecx
	shrl	$8, %ecx
	leal	128(%rcx,%rsi), %ecx
	movq	80(%rsp), %rdx          # 8-byte Reload
	movb	%ch, (%rdx,%rdi)  # NOREX
	movzbl	121(%rsp), %ecx
	imull	$255, %ecx, %edx
	xorl	$255, %ecx
	imull	%eax, %ecx
	shll	$6, %ecx
	leal	(%rcx,%rcx,2), %ecx
	shrl	$8, %ecx
	leal	(%rdx,%rcx), %esi
	leal	128(%rdx,%rcx), %ecx
	shrl	$8, %ecx
	leal	128(%rcx,%rsi), %ecx
	movq	96(%rsp), %rdx          # 8-byte Reload
	movb	%ch, (%rdx,%rdi)  # NOREX
	movzbl	122(%rsp), %ecx
	imull	$255, %ecx, %edx
	xorl	$255, %ecx
	imull	%eax, %ecx
	shll	$7, %ecx
	shrl	$8, %ecx
	leal	(%rdx,%rcx), %eax
	leal	128(%rdx,%rcx), %ecx
	shrl	$8, %ecx
	leal	128(%rcx,%rax), %eax
	movq	88(%rsp), %rcx          # 8-byte Reload
	movb	%ah, (%rcx,%rdi)  # NOREX
	movzbl	123(%rsp), %eax
	imull	$255, %eax, %eax
	movl	%eax, %ecx
	subl	$-128, %ecx
	shrl	$8, %ecx
	leal	128(%rcx,%rax), %eax
	movq	72(%rsp), %rcx          # 8-byte Reload
	movb	%ah, (%rcx,%rdi)  # NOREX
	jmp	.LBB0_92
	.align	16, 0x90
.LBB0_91:                               # %if.else.247.i
                                        #   in Loop: Header=BB0_76 Depth=2
	movq	80(%rsp), %rax          # 8-byte Reload
	movb	%cl, (%rax,%rdi)
	movb	121(%rsp), %al
	movq	96(%rsp), %rcx          # 8-byte Reload
	movb	%al, (%rcx,%rdi)
	movb	122(%rsp), %al
	movq	88(%rsp), %rcx          # 8-byte Reload
	movb	%al, (%rcx,%rdi)
	movb	123(%rsp), %al
	movq	72(%rsp), %rcx          # 8-byte Reload
	movb	%al, (%rcx,%rdi)
.LBB0_92:                               # %if.end.264.i
                                        #   in Loop: Header=BB0_76 Depth=2
	addq	104(%rsp), %r13         # 8-byte Folded Reload
	incq	%rdi
	movslq	832(%r14), %rax
	cmpq	%rax, %rdi
	jl	.LBB0_76
	.align	16, 0x90
.LBB0_93:                               # %if.end.272.i
                                        #   in Loop: Header=BB0_63 Depth=1
	movq	%r15, %rbp
	movq	%r12, %r15
	movq	24(%rsp), %r12          # 8-byte Reload
	movq	%r12, %rdi
	leaq	528(%rsp), %rsi
	callq	rinkj_device_write
	movl	%eax, %r13d
	movq	32(%rsp), %rax          # 8-byte Reload
	incl	%eax
	cmpl	836(%r14), %eax
	jl	.LBB0_63
.LBB0_94:                               # %for.end.277.i
	xorl	%esi, %esi
	movq	%r12, %rdi
	callq	rinkj_device_write
	movq	24(%r14), %rdi
	movq	%r14, %rcx
	movq	24(%rdi), %rax
	movq	112(%rsp), %rdx         # 8-byte Reload
	testl	%edx, %edx
	leaq	816(%rsp), %rbx
	movq	%r15, %r14
	movq	%rcx, %rbp
	jle	.LBB0_96
	.align	16, 0x90
.LBB0_95:                               # %for.body.282.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rsi
	movl	$.L.str.32, %edx
	callq	*%rax
	movq	24(%rbp), %rdi
	movq	24(%rdi), %rax
	addq	$8, %rbx
	movq	112(%rsp), %rcx         # 8-byte Reload
	decl	%ecx
	movq	%rcx, 112(%rsp)         # 8-byte Spill
	jne	.LBB0_95
.LBB0_96:                               # %for.end.290.i
	movl	$.L.str.32, %edx
	movq	16(%rsp), %rsi          # 8-byte Reload
	callq	*%rax
	movq	24(%rbp), %rdi
	movl	$.L.str.32, %edx
	movq	%r14, %rsi
	callq	*24(%rdi)
	movl	%r13d, %eax
.LBB0_97:                               # %cleanup
	addq	$2872, %rsp             # imm = 0xB38
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	rinkj_print_page, .Lfunc_end0-rinkj_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	rinkj_close_device,@function
rinkj_close_device:                     # @rinkj_close_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	19800(%rbx), %rdi
	callq	gscms_release_link
	movq	19808(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB1_3
# BB#1:                                 # %do.end
	decq	288(%rsi)
	jne	.LBB1_3
# BB#2:                                 # %do.end.14
	movq	296(%rsi), %rdi
	movl	$.L.str.2, %edx
	callq	*304(%rsi)
	movq	$0, 19808(%rbx)
.LBB1_3:                                # %do.end.28
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_close          # TAILCALL
.Lfunc_end1:
	.size	rinkj_close_device, .Lfunc_end1-rinkj_close_device
	.cfi_endproc

	.align	16, 0x90
	.type	rinkj_map_color_rgb,@function
rinkj_map_color_rgb:                    # @rinkj_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$1, 18472(%rdi)
	jne	.LBB2_7
# BB#1:                                 # %if.then
	movl	18476(%rdi), %r8d
	movl	100(%rdi), %eax
	testl	%eax, %eax
	jle	.LBB2_8
# BB#2:                                 # %for.body.lr.ph.i
	movl	$1, %edi
	movb	%r8b, %cl
	shll	%cl, %edi
	decl	%edi
	movl	$16, %r10d
	subl	%r8d, %r10d
	movslq	%edi, %r9
	leal	-1(%rax), %r11d
	xorl	%ecx, %ecx
	testb	$1, %al
	je	.LBB2_4
# BB#3:                                 # %for.body.i.prol
	movq	%r9, %rax
	andq	%rsi, %rax
	movb	%r10b, %cl
	shlq	%cl, %rax
	movslq	%r11d, %rcx
	movw	%ax, (%rdx,%rcx,2)
	movb	%r8b, %cl
	shrq	%cl, %rsi
	movl	$1, %ecx
.LBB2_4:                                # %for.body.lr.ph.i.split
	testl	%r11d, %r11d
	je	.LBB2_8
# BB#5:                                 # %for.body.lr.ph.i.split.split
	movl	%r11d, %eax
	subl	%ecx, %eax
	incl	%ecx
	subl	%ecx, %r11d
	.align	16, 0x90
.LBB2_6:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rdi
	andq	%r9, %rdi
	movb	%r10b, %cl
	shlq	%cl, %rdi
	cltq
	movw	%di, (%rdx,%rax,2)
	movb	%r8b, %cl
	shrq	%cl, %rsi
	movq	%rsi, %rdi
	andq	%r9, %rdi
	movb	%r10b, %cl
	shlq	%cl, %rdi
	movslq	%r11d, %r11
	movw	%di, (%rdx,%r11,2)
	movb	%r8b, %cl
	shrq	%cl, %rsi
	addl	$-2, %eax
	addl	$-2, %r11d
	cmpl	$-1, %eax
	jne	.LBB2_6
	jmp	.LBB2_8
.LBB2_7:                                # %if.end
	movl	$0, (%rdx)
	movw	$0, 4(%rdx)
.LBB2_8:                                # %cleanup
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	rinkj_map_color_rgb, .Lfunc_end2-rinkj_map_color_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	rinkj_get_params,@function
rinkj_get_params:                       # @rinkj_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp16:
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
.Ltmp17:
	.cfi_def_cfa_offset 80
.Ltmp18:
	.cfi_offset %rbx, -24
.Ltmp19:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$0, 52(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rsp)
	callq	gdev_prn_get_params
	testl	%eax, %eax
	js	.LBB3_6
# BB#1:                                 # %lor.lhs.false
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	sample_device_crd_get_params
	testl	%eax, %eax
	js	.LBB3_6
# BB#2:                                 # %lor.lhs.false.3
	leaq	32(%rsp), %rdx
	movl	$.L.str.4, %esi
	movq	%r14, %rdi
	callq	param_write_name_array
	testl	%eax, %eax
	js	.LBB3_6
# BB#3:                                 # %lor.lhs.false.6
	leaq	52(%rsp), %rdx
	movl	$.L.str.5, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB3_6
# BB#4:                                 # %if.end
	leaq	19544(%rbx), %rdi
	movq	%rdi, 16(%rsp)
	callq	strlen
	movl	%eax, 24(%rsp)
	movl	$0, 28(%rsp)
	leaq	16(%rsp), %rdx
	movl	$.L.str.6, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	js	.LBB3_6
# BB#5:                                 # %if.end.19
	addq	$19816, %rbx            # imm = 0x4D68
	movq	%rbx, (%rsp)
	movq	%rbx, %rdi
	callq	strlen
	movl	%eax, 8(%rsp)
	movl	$0, 12(%rsp)
	leaq	(%rsp), %rdx
	movl	$.L.str.7, %esi
	movq	%r14, %rdi
	callq	param_write_string
.LBB3_6:                                # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	rinkj_get_params, .Lfunc_end3-rinkj_get_params
	.cfi_endproc

	.align	16, 0x90
	.type	rinkj_put_params,@function
rinkj_put_params:                       # @rinkj_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp22:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp23:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp24:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 56
	subq	$872, %rsp              # imm = 0x368
.Ltmp26:
	.cfi_def_cfa_offset 928
.Ltmp27:
	.cfi_offset %rbx, -56
.Ltmp28:
	.cfi_offset %r12, -48
.Ltmp29:
	.cfi_offset %r13, -40
.Ltmp30:
	.cfi_offset %r14, -32
.Ltmp31:
	.cfi_offset %r15, -24
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r12
	movl	18504(%r12), %ebp
	movl	18472(%r12), %r13d
	leaq	104(%rsp), %rdx
	movl	$.L.str.4, %esi
	movq	%r14, %rdi
	callq	param_read_name_array
	movl	%eax, %ebx
	testl	%ebx, %ebx
	je	.LBB4_3
# BB#1:                                 # %entry
	cmpl	$1, %ebx
	jne	.LBB4_6
# BB#2:                                 # %do.end.thread150
	movq	$0, 104(%rsp)
	jmp	.LBB4_3
.LBB4_6:                                # %do.end
	movq	(%r14), %rax
	movl	$.L.str.4, %esi
	movq	%r14, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movq	$0, 104(%rsp)
	testl	%ebx, %ebx
	js	.LBB4_7
.LBB4_3:                                # %if.then.7
	leaq	88(%rsp), %rdx
	movl	$.L.str.6, %esi
	movq	%r14, %rdi
	callq	param_read_string
	testl	%eax, %eax
	je	.LBB4_4
# BB#8:                                 # %if.end.9
	movq	$0, 88(%rsp)
	jns	.LBB4_9
	jmp	.LBB4_7
.LBB4_4:                                # %if.then.i
	cmpl	$256, 96(%rsp)          # imm = 0x100
	jb	.LBB4_9
# BB#5:                                 # %if.then.2.i
	movl	%ebp, 52(%rsp)          # 4-byte Spill
	movq	(%r14), %rax
	movl	$.L.str.6, %esi
	jmp	.LBB4_23
.LBB4_9:                                # %if.then.11
	leaq	72(%rsp), %rdx
	movl	$.L.str.7, %esi
	movq	%r14, %rdi
	callq	param_read_string
	testl	%eax, %eax
	je	.LBB4_10
# BB#12:                                # %if.end.13
	movq	$0, 72(%rsp)
	jns	.LBB4_13
.LBB4_7:
	movl	%ebp, 52(%rsp)          # 4-byte Spill
	jmp	.LBB4_24
.LBB4_10:                               # %if.then.i.82
	cmpl	$256, 80(%rsp)          # imm = 0x100
	jb	.LBB4_13
# BB#11:                                # %if.then.2.i.86
	movl	%ebp, 52(%rsp)          # 4-byte Spill
	movq	(%r14), %rax
	movl	$.L.str.7, %esi
	jmp	.LBB4_23
.LBB4_13:                               # %if.end.17
	movl	%ebp, 52(%rsp)          # 4-byte Spill
	leaq	56(%rsp), %rdx
	movl	$.L.str.8, %esi
	movq	%r14, %rdi
	callq	param_read_name
	testl	%eax, %eax
	jne	.LBB4_24
# BB#14:                                # %if.then.19
	movl	$.L.str.9, %edi
	callq	strlen
	movl	64(%rsp), %r15d
	cmpq	%r15, %rax
	jne	.LBB4_16
# BB#15:                                # %land.rhs.i
	movq	56(%rsp), %rsi
	movl	$.L.str.9, %edi
	movq	%rax, %rdx
	callq	strncmp
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB4_25
.LBB4_16:                               # %if.else.22
	movl	$.L.str.10, %edi
	callq	strlen
	cmpq	%r15, %rax
	jne	.LBB4_18
# BB#17:                                # %land.rhs.i.102
	movq	56(%rsp), %rsi
	movl	$.L.str.10, %edi
	movq	%r15, %rdx
	callq	strncmp
	movl	$1, %ebp
	testl	%eax, %eax
	je	.LBB4_25
.LBB4_18:                               # %if.else.26
	movl	$.L.str.11, %edi
	callq	strlen
	cmpq	%r15, %rax
	jne	.LBB4_20
# BB#19:                                # %land.rhs.i.112
	movq	56(%rsp), %rsi
	movl	$.L.str.11, %edi
	movq	%r15, %rdx
	callq	strncmp
	movl	$2, %ebp
	testl	%eax, %eax
	je	.LBB4_25
.LBB4_20:                               # %if.else.30
	movl	$.L.str.1, %edi
	callq	strlen
	cmpq	%r15, %rax
	jne	.LBB4_22
# BB#21:                                # %land.rhs.i.122
	movq	56(%rsp), %rsi
	movl	$.L.str.1, %edi
	movq	%r15, %rdx
	callq	strncmp
	movl	$3, %ebp
	testl	%eax, %eax
	je	.LBB4_25
.LBB4_22:                               # %if.else.34
	movq	(%r14), %rax
	movl	$.L.str.8, %esi
.LBB4_23:                               # %if.end.42
	movl	$-15, %edx
	movq	%r14, %rdi
	callq	*56(%rax)
.LBB4_24:                               # %if.end.42
	movl	%r13d, %ebp
.LBB4_25:                               # %if.end.42
	movl	104(%r12), %eax
	movl	%eax, 840(%rsp)
	movq	96(%r12), %rax
	movq	%rax, 832(%rsp)
	movw	108(%r12), %ax
	movw	%ax, 38(%rsp)           # 2-byte Spill
	leaq	110(%r12), %r15
	leaq	126(%rsp), %rdi
	movl	$706, %edx              # imm = 0x2C2
	movq	%r15, %rsi
	callq	memcpy
	movl	%ebp, 18472(%r12)
	movl	$-1, %ebx
	movl	%ebp, %eax
	cmpl	$3, %ebp
	ja	.LBB4_33
# BB#26:                                # %if.end.42
	jmpq	*.LJTI4_0(,%rax,8)
.LBB4_27:                               # %if.then.i.125
	movq	$DeviceGrayComponents, 18488(%r12)
	movl	$1, 18496(%r12)
	movq	$.L.str.9, 784(%r12)
	movl	$1, 104(%r12)
	movl	$1, %eax
	jmp	.LBB4_32
.LBB4_28:                               # %if.then.4.i
	movq	$DeviceRGBComponents, 18488(%r12)
	movl	$3, 18496(%r12)
	movq	$.L.str.10, 784(%r12)
	movl	$1, 104(%r12)
	movl	$3, %eax
	jmp	.LBB4_32
.LBB4_29:                               # %if.then.13.i
	movq	$DeviceCMYKComponents, 18488(%r12)
	movl	$4, 18496(%r12)
	movq	$.L.str.11, 784(%r12)
	jmp	.LBB4_31
.LBB4_30:                               # %if.then.22.i
	movq	$DeviceCMYKComponents, 18488(%r12)
	movl	$4, 18496(%r12)
	movq	$.L.str.1, 784(%r12)
.LBB4_31:                               # %if.end.50
	movl	$0, 104(%r12)
	movl	$4, %eax
.LBB4_32:                               # %if.end.50
	movl	%eax, 96(%r12)
	movl	%eax, 100(%r12)
	shll	$3, %eax
	movw	%ax, 108(%r12)
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	gdev_prn_put_params
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB4_33
# BB#34:                                # %if.end.54
	cmpl	$0, 104(%r12)
	je	.LBB4_36
# BB#35:
	movl	52(%rsp), %ebx          # 4-byte Reload
	jmp	.LBB4_49
.LBB4_33:                               # %if.then.52
	leaq	96(%r12), %rax
	movl	840(%rsp), %ecx
	movl	%ecx, 8(%rax)
	movq	832(%rsp), %rcx
	movq	%rcx, (%rax)
	movw	38(%rsp), %ax           # 2-byte Reload
	movw	%ax, 108(%r12)
	leaq	126(%rsp), %rsi
	movl	$706, %edx              # imm = 0x2C2
	movq	%r15, %rdi
	callq	memcpy
	jmp	.LBB4_66
.LBB4_36:                               # %if.then.57
	movq	104(%rsp), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	movl	52(%rsp), %ebx          # 4-byte Reload
	je	.LBB4_49
# BB#37:                                # %if.then.60
	movl	112(%rsp), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movl	$0, 52(%rsp)            # 4-byte Folded Spill
	testl	%eax, %eax
	jle	.LBB4_47
# BB#38:                                # %for.body.lr.ph
	movq	18488(%r12), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leaq	8(%rax), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	xorl	%r15d, %r15d
	movl	$0, 52(%rsp)            # 4-byte Folded Spill
	.align	16, 0x90
.LBB4_39:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_42 Depth 2
	cmpq	$0, 40(%rsp)            # 8-byte Folded Reload
	je	.LBB4_45
# BB#40:                                # %if.then.i.128
                                        #   in Loop: Header=BB4_39 Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB4_45
# BB#41:                                # %while.body.lr.ph.i
                                        #   in Loop: Header=BB4_39 Depth=1
	movq	%r15, %rax
	shlq	$4, %rax
	movq	24(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rax), %rbp
	movl	8(%rcx,%rax), %r14d
	movq	8(%rsp), %r13           # 8-byte Reload
	.align	16, 0x90
.LBB4_42:                               # %while.body.i
                                        #   Parent Loop BB4_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rdi
	callq	strlen
	cmpq	%r14, %rax
	jne	.LBB4_44
# BB#43:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB4_42 Depth=2
	movq	(%rbp), %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB4_46
.LBB4_44:                               # %if.end.i
                                        #   in Loop: Header=BB4_42 Depth=2
	movq	(%r13), %rbx
	addq	$8, %r13
	testq	%rbx, %rbx
	jne	.LBB4_42
.LBB4_45:                               # %if.then.67
                                        #   in Loop: Header=BB4_39 Depth=1
	movq	%r15, %rax
	shlq	$4, %rax
	movq	24(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movl	52(%rsp), %edx          # 4-byte Reload
	movslq	%edx, %rcx
	incl	%edx
	movl	%edx, 52(%rsp)          # 4-byte Spill
	movq	%rax, 18512(%r12,%rcx,8)
.LBB4_46:                               # %for.inc
                                        #   in Loop: Header=BB4_39 Depth=1
	incq	%r15
	cmpl	20(%rsp), %r15d         # 4-byte Folded Reload
	jne	.LBB4_39
.LBB4_47:                               # %for.end
	movl	52(%rsp), %ebx          # 4-byte Reload
	movl	%ebx, 18504(%r12)
	cmpl	$0, 84(%r12)
	je	.LBB4_49
# BB#48:                                # %if.then.79
	movq	%r12, %rdi
	callq	gs_closedevice
.LBB4_49:                               # %if.end.83
	addl	18496(%r12), %ebx
	movl	$1, %eax
	cmovnel	%ebx, %eax
	movl	%eax, 100(%r12)
	movslq	18476(%r12), %rcx
	cmpq	$8, %rcx
	jg	.LBB4_52
# BB#50:                                # %if.end.83
	cmpl	$4, %eax
	jg	.LBB4_52
# BB#51:                                # %if.then.i.135
	decl	%eax
	cltq
	movzbl	bpc_to_depth.depths-1(%rcx,%rax,8), %eax
	jmp	.LBB4_53
.LBB4_52:                               # %if.else.i.137
	imull	%ecx, %eax
	addl	$7, %eax
	andl	$-8, %eax
.LBB4_53:                               # %bpc_to_depth.exit
	movw	38(%rsp), %cx           # 2-byte Reload
	movw	%ax, 108(%r12)
	movzwl	%cx, %ecx
	movzwl	%ax, %eax
	cmpl	%eax, %ecx
	je	.LBB4_55
# BB#54:                                # %if.then.103
	movq	%r12, %rdi
	callq	gs_closedevice
.LBB4_55:                               # %if.end.105
	movq	88(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB4_57
# BB#56:                                # %if.then.109
	leaq	19544(%r12), %rdi
	movl	96(%rsp), %edx
	callq	memcpy
	movl	96(%rsp), %eax
	movb	$0, 19544(%r12,%rax)
.LBB4_57:                               # %if.end.118
	movq	72(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB4_59
# BB#58:                                # %if.then.122
	leaq	19816(%r12), %rdi
	movl	80(%rsp), %edx
	callq	memcpy
	movl	80(%rsp), %eax
	movb	$0, 19816(%r12,%rax)
.LBB4_59:                               # %if.end.132
	xorl	%ebx, %ebx
	cmpq	$0, 19808(%r12)
	jne	.LBB4_66
# BB#60:                                # %land.lhs.true.i.141
	cmpb	$0, 19544(%r12)
	je	.LBB4_66
# BB#61:                                # %if.then.i.144
	leaq	19544(%r12), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movq	24(%r12), %rdx
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	gsicc_get_profile_handle_file
	movq	%rax, 19808(%r12)
	testq	%rax, %rax
	je	.LBB4_62
# BB#63:                                # %if.end.i.145
	movl	$0, 860(%rsp)
	movabsq	$34359738368, %rcx      # imm = 0x800000000
	movq	%rcx, 848(%rsp)
	movq	24(%r12), %r8
	xorl	%ebx, %ebx
	leaq	848(%rsp), %rdx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	callq	gscms_get_link
	movq	%rax, 19800(%r12)
	testq	%rax, %rax
	jne	.LBB4_66
# BB#64:                                # %if.then.18.i
	movl	$.L__func__.rinkj_open_profile, %edi
	movl	$.L.str.16, %esi
	movl	$482, %edx              # imm = 0x1E2
	xorl	%ecx, %ecx
	movl	$-1, %r8d
	movl	$.L.str.18, %r9d
	jmp	.LBB4_65
.LBB4_62:                               # %if.then.10.i
	movl	$.L__func__.rinkj_open_profile, %edi
	movl	$.L.str.16, %esi
	movl	$469, %edx              # imm = 0x1D5
	xorl	%ecx, %ecx
	movl	$-1, %r8d
	movl	$.L.str.17, %r9d
.LBB4_65:                               # %rinkj_open_profile.exit
	xorl	%eax, %eax
	callq	gs_throw_imp
	movl	%eax, %ebx
.LBB4_66:                               # %cleanup
	movl	%ebx, %eax
	addq	$872, %rsp              # imm = 0x368
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	rinkj_put_params, .Lfunc_end4-rinkj_put_params
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_27
	.quad	.LBB4_28
	.quad	.LBB4_29
	.quad	.LBB4_30

	.text
	.align	16, 0x90
	.type	get_rinkj_color_mapping_procs,@function
get_rinkj_color_mapping_procs:          # @get_rinkj_color_mapping_procs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	18472(%rdi), %eax
	decl	%eax
	cmpl	$2, %eax
	ja	.LBB5_2
# BB#1:                                 # %switch.lookup
	cltq
	movq	.Lswitch.table(,%rax,8), %rax
	retq
.LBB5_2:                                # %cleanup
	xorl	%eax, %eax
	retq
.Lfunc_end5:
	.size	get_rinkj_color_mapping_procs, .Lfunc_end5-get_rinkj_color_mapping_procs
	.cfi_endproc

	.align	16, 0x90
	.type	rinkj_get_color_comp_index,@function
rinkj_get_color_comp_index:             # @rinkj_get_color_comp_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp34:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp36:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp37:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp38:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp39:
	.cfi_def_cfa_offset 64
.Ltmp40:
	.cfi_offset %rbx, -56
.Ltmp41:
	.cfi_offset %r12, -48
.Ltmp42:
	.cfi_offset %r13, -40
.Ltmp43:
	.cfi_offset %r14, -32
.Ltmp44:
	.cfi_offset %r15, -24
.Ltmp45:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rdi, %r12
	movq	18488(%r12), %r14
	xorl	%ebx, %ebx
	testq	%r14, %r14
	je	.LBB6_6
# BB#1:                                 # %while.cond.preheader
	movq	(%r14), %rbp
	testq	%rbp, %rbp
	je	.LBB6_6
# BB#2:                                 # %while.body.lr.ph
	movslq	%r15d, %r13
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB6_3:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	callq	strlen
	cmpq	%rax, %r13
	jne	.LBB6_5
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	(%rsp), %rdi            # 8-byte Reload
	movq	%rbp, %rsi
	movq	%r13, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB6_14
.LBB6_5:                                # %if.end
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	8(%r14,%rbx,8), %rbp
	incq	%rbx
	testq	%rbp, %rbp
	jne	.LBB6_3
.LBB6_6:                                # %if.end.8
	movslq	18504(%r12), %r13
	testq	%r13, %r13
	jle	.LBB6_7
# BB#8:                                 # %for.body.lr.ph
	movl	%r15d, %r14d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB6_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	18512(%r12,%rbp,8), %rax
	cmpl	%r15d, 8(%rax)
	jne	.LBB6_11
# BB#10:                                # %land.lhs.true.13
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	(%rax), %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	movq	%r14, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB6_13
.LBB6_11:                               # %if.end.26
                                        #   in Loop: Header=BB6_9 Depth=1
	incq	%rbp
	cmpq	%r13, %rbp
	jl	.LBB6_9
# BB#12:
	movl	$-1, %ebx
	jmp	.LBB6_14
.LBB6_7:
	movl	$-1, %ebx
	jmp	.LBB6_14
.LBB6_13:                               # %land.lhs.true.13.cleanup.loopexit_crit_edge
	addl	%ebp, %ebx
.LBB6_14:                               # %cleanup
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	rinkj_get_color_comp_index, .Lfunc_end6-rinkj_get_color_comp_index
	.cfi_endproc

	.align	16, 0x90
	.type	rinkj_encode_color,@function
rinkj_encode_color:                     # @rinkj_encode_color
	.cfi_startproc
# BB#0:                                 # %entry
	movl	18476(%rdi), %r9d
	movl	100(%rdi), %edi
	movl	$1, %r8d
	movl	$1, %r11d
	movb	%r9b, %cl
	shll	%cl, %r11d
	decl	%r11d
	movl	$16, %ecx
	subl	%r9d, %ecx
	shll	%cl, %r11d
	movl	$31, %ecx
	subl	%r9d, %ecx
	shll	%cl, %r8d
	xorl	%edx, %edx
	testl	%edi, %edi
	jle	.LBB7_6
# BB#1:                                 # %for.body.lr.ph
	incl	%r11d
	movl	$32, %r10d
	subl	%r9d, %r10d
	xorl	%ecx, %ecx
	testb	$1, %dil
	movl	$0, %edx
	je	.LBB7_3
# BB#2:                                 # %for.body.prol
	movzwl	(%rsi), %edx
	imull	%r11d, %edx
	addl	%r8d, %edx
	movb	%r10b, %cl
	shrl	%cl, %edx
	movl	$1, %ecx
.LBB7_3:                                # %for.body.lr.ph.split
	cmpl	$1, %edi
	je	.LBB7_6
# BB#4:                                 # %for.body.lr.ph.split.split
	subl	%ecx, %edi
	leaq	2(%rsi,%rcx,2), %rsi
	.align	16, 0x90
.LBB7_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	%r9b, %cl
	shlq	%cl, %rdx
	movzwl	-2(%rsi), %eax
	imull	%r11d, %eax
	addl	%r8d, %eax
	movb	%r10b, %cl
	shrl	%cl, %eax
	orq	%rdx, %rax
	movb	%r9b, %cl
	shlq	%cl, %rax
	movzwl	(%rsi), %edx
	imull	%r11d, %edx
	addl	%r8d, %edx
	movb	%r10b, %cl
	shrl	%cl, %edx
	orq	%rax, %rdx
	addq	$4, %rsi
	addl	$-2, %edi
	jne	.LBB7_5
.LBB7_6:                                # %for.end
	cmpq	$-1, %rdx
	sete	%al
	movzbl	%al, %eax
	xorq	%rdx, %rax
	retq
.Lfunc_end7:
	.size	rinkj_encode_color, .Lfunc_end7-rinkj_encode_color
	.cfi_endproc

	.align	16, 0x90
	.type	rinkj_decode_color,@function
rinkj_decode_color:                     # @rinkj_decode_color
	.cfi_startproc
# BB#0:                                 # %entry
	movl	18476(%rdi), %r8d
	movl	100(%rdi), %eax
	testl	%eax, %eax
	jle	.LBB8_6
# BB#1:                                 # %for.body.lr.ph
	movl	$1, %edi
	movb	%r8b, %cl
	shll	%cl, %edi
	decl	%edi
	movl	$16, %r10d
	subl	%r8d, %r10d
	movslq	%edi, %r9
	leal	-1(%rax), %r11d
	xorl	%ecx, %ecx
	testb	$1, %al
	je	.LBB8_3
# BB#2:                                 # %for.body.prol
	movq	%r9, %rax
	andq	%rsi, %rax
	movb	%r10b, %cl
	shlq	%cl, %rax
	movslq	%r11d, %rcx
	movw	%ax, (%rdx,%rcx,2)
	movb	%r8b, %cl
	shrq	%cl, %rsi
	movl	$1, %ecx
.LBB8_3:                                # %for.body.lr.ph.split
	testl	%r11d, %r11d
	je	.LBB8_6
# BB#4:                                 # %for.body.lr.ph.split.split
	movl	%r11d, %eax
	subl	%ecx, %eax
	incl	%ecx
	subl	%ecx, %r11d
	.align	16, 0x90
.LBB8_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rdi
	andq	%r9, %rdi
	movb	%r10b, %cl
	shlq	%cl, %rdi
	cltq
	movw	%di, (%rdx,%rax,2)
	movb	%r8b, %cl
	shrq	%cl, %rsi
	movq	%rsi, %rdi
	andq	%r9, %rdi
	movb	%r10b, %cl
	shlq	%cl, %rdi
	movslq	%r11d, %r11
	movw	%di, (%rdx,%r11,2)
	movb	%r8b, %cl
	shrq	%cl, %rsi
	addl	$-2, %eax
	addl	$-2, %r11d
	cmpl	$-1, %eax
	jne	.LBB8_5
.LBB8_6:                                # %for.end
	xorl	%eax, %eax
	retq
.Lfunc_end8:
	.size	rinkj_decode_color, .Lfunc_end8-rinkj_decode_color
	.cfi_endproc

	.align	16, 0x90
	.type	gray_cs_to_spotrgb_cm,@function
gray_cs_to_spotrgb_cm:                  # @gray_cs_to_spotrgb_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbx, -16
	movslq	18504(%rdi), %rax
	testq	%rax, %rax
	movw	%si, 4(%rdx)
	movw	%si, 2(%rdx)
	movw	%si, (%rdx)
	jle	.LBB9_13
# BB#1:                                 # %for.body.lr.ph
	cmpq	$2, %rax
	movl	$1, %ecx
	cmovlq	%rax, %rcx
	notq	%rcx
	leaq	(%rcx,%rax), %r11
	cmpq	$-2, %r11
	je	.LBB9_11
# BB#2:                                 # %overflow.checked
	addq	$2, %r11
	movq	%r11, %r10
	andq	$-16, %r10
	xorl	%ecx, %ecx
	movq	%r11, %r9
	andq	$-16, %r9
	je	.LBB9_10
# BB#3:                                 # %vector.body.preheader
	cmpq	$2, %rax
	movl	$1, %ecx
	cmovlq	%rax, %rcx
	notq	%rcx
	leaq	-14(%rax,%rcx), %r8
	movl	%r8d, %ecx
	shrl	$4, %ecx
	incl	%ecx
	xorl	%esi, %esi
	testb	$3, %cl
	je	.LBB9_6
# BB#4:                                 # %vector.body.prol.preheader
	leaq	-10(%rdx,%rax,2), %rdi
	movq	%rax, %rcx
	notq	%rcx
	cmpq	$-2, %rcx
	movl	$-2, %esi
	cmovgl	%ecx, %esi
	leal	-14(%rsi,%rax), %ecx
	shrl	$4, %ecx
	incl	%ecx
	andl	$3, %ecx
	negq	%rcx
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB9_5:                                # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rdi)
	movups	%xmm0, -16(%rdi)
	addq	$16, %rsi
	addq	$-32, %rdi
	incq	%rcx
	jne	.LBB9_5
.LBB9_6:                                # %vector.body.preheader.split
	movq	%rax, %rbx
	subq	%r10, %rbx
	cmpq	$48, %r8
	jb	.LBB9_9
# BB#7:                                 # %vector.body.preheader.split.split
	movq	%rax, %rcx
	notq	%rcx
	cmpq	$-3, %rcx
	movq	$-2, %rdi
	cmovgq	%rcx, %rdi
	leaq	2(%rdi,%rax), %rcx
	andq	$-16, %rcx
	subq	%rsi, %rcx
	addq	$-5, %rax
	subq	%rsi, %rax
	leaq	(%rdx,%rax,2), %rax
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB9_8:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rax)
	movups	%xmm0, -16(%rax)
	movups	%xmm0, -32(%rax)
	movups	%xmm0, -48(%rax)
	movups	%xmm0, -64(%rax)
	movups	%xmm0, -80(%rax)
	movups	%xmm0, -96(%rax)
	movups	%xmm0, -112(%rax)
	addq	$-128, %rax
	addq	$-64, %rcx
	jne	.LBB9_8
.LBB9_9:
	movq	%rbx, %rax
	movq	%r9, %rcx
.LBB9_10:                               # %middle.block
	cmpq	%rcx, %r11
	je	.LBB9_13
.LBB9_11:                               # %for.body.preheader
	incq	%rax
	.align	16, 0x90
.LBB9_12:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, 2(%rdx,%rax,2)
	decq	%rax
	cmpq	$1, %rax
	jg	.LBB9_12
.LBB9_13:                               # %for.end
	popq	%rbx
	retq
.Lfunc_end9:
	.size	gray_cs_to_spotrgb_cm, .Lfunc_end9-gray_cs_to_spotrgb_cm
	.cfi_endproc

	.align	16, 0x90
	.type	rgb_cs_to_spotrgb_cm,@function
rgb_cs_to_spotrgb_cm:                   # @rgb_cs_to_spotrgb_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbx, -16
	movslq	18504(%rdi), %rax
	testq	%rax, %rax
	movw	%dx, (%r9)
	movw	%cx, 2(%r9)
	movw	%r8w, 4(%r9)
	jle	.LBB10_13
# BB#1:                                 # %for.body.lr.ph
	cmpq	$2, %rax
	movl	$1, %ecx
	cmovlq	%rax, %rcx
	notq	%rcx
	leaq	(%rcx,%rax), %rcx
	cmpq	$-2, %rcx
	je	.LBB10_11
# BB#2:                                 # %overflow.checked
	addq	$2, %rcx
	movq	%rcx, %r11
	andq	$-16, %r11
	xorl	%edx, %edx
	movq	%rcx, %r10
	andq	$-16, %r10
	je	.LBB10_10
# BB#3:                                 # %vector.body.preheader
	cmpq	$2, %rax
	movl	$1, %edx
	cmovlq	%rax, %rdx
	notq	%rdx
	leaq	-14(%rax,%rdx), %r8
	movl	%r8d, %edx
	shrl	$4, %edx
	incl	%edx
	xorl	%edi, %edi
	testb	$3, %dl
	je	.LBB10_6
# BB#4:                                 # %vector.body.prol.preheader
	leaq	-10(%r9,%rax,2), %rdx
	movq	%rax, %rsi
	notq	%rsi
	cmpq	$-2, %rsi
	movl	$-2, %edi
	cmovgl	%esi, %edi
	leal	-14(%rdi,%rax), %esi
	shrl	$4, %esi
	incl	%esi
	andl	$3, %esi
	negq	%rsi
	xorl	%edi, %edi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB10_5:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rdx)
	movups	%xmm0, -16(%rdx)
	addq	$16, %rdi
	addq	$-32, %rdx
	incq	%rsi
	jne	.LBB10_5
.LBB10_6:                               # %vector.body.preheader.split
	movq	%rax, %rbx
	subq	%r11, %rbx
	cmpq	$48, %r8
	jb	.LBB10_9
# BB#7:                                 # %vector.body.preheader.split.split
	movq	%rax, %rsi
	notq	%rsi
	cmpq	$-3, %rsi
	movq	$-2, %rdx
	cmovgq	%rsi, %rdx
	leaq	2(%rdx,%rax), %rsi
	andq	$-16, %rsi
	subq	%rdi, %rsi
	addq	$-5, %rax
	subq	%rdi, %rax
	leaq	(%r9,%rax,2), %rax
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB10_8:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rax)
	movups	%xmm0, -16(%rax)
	movups	%xmm0, -32(%rax)
	movups	%xmm0, -48(%rax)
	movups	%xmm0, -64(%rax)
	movups	%xmm0, -80(%rax)
	movups	%xmm0, -96(%rax)
	movups	%xmm0, -112(%rax)
	addq	$-128, %rax
	addq	$-64, %rsi
	jne	.LBB10_8
.LBB10_9:
	movq	%rbx, %rax
	movq	%r10, %rdx
.LBB10_10:                              # %middle.block
	cmpq	%rdx, %rcx
	je	.LBB10_13
.LBB10_11:                              # %for.body.preheader
	incq	%rax
	.align	16, 0x90
.LBB10_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, 2(%r9,%rax,2)
	decq	%rax
	cmpq	$1, %rax
	jg	.LBB10_12
.LBB10_13:                              # %for.end
	popq	%rbx
	retq
.Lfunc_end10:
	.size	rgb_cs_to_spotrgb_cm, .Lfunc_end10-rgb_cs_to_spotrgb_cm
	.cfi_endproc

	.align	16, 0x90
	.type	cmyk_cs_to_spotrgb_cm,@function
cmyk_cs_to_spotrgb_cm:                  # @cmyk_cs_to_spotrgb_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp52:
	.cfi_def_cfa_offset 32
.Ltmp53:
	.cfi_offset %rbx, -24
.Ltmp54:
	.cfi_offset %r14, -16
	movq	%r9, %r14
	movl	%r8d, %eax
	movslq	18504(%rdi), %rbx
	movq	24(%rdi), %rdi
	movq	%rdi, (%rsp)
	xorl	%r8d, %r8d
	movl	%esi, %edi
	movl	%edx, %esi
	movl	%ecx, %edx
	movl	%eax, %ecx
	callq	color_cmyk_to_rgb
	testq	%rbx, %rbx
	jle	.LBB11_13
# BB#1:                                 # %for.body.lr.ph
	cmpq	$2, %rbx
	movl	$1, %eax
	cmovlq	%rbx, %rax
	notq	%rax
	leaq	(%rax,%rbx), %rax
	cmpq	$-2, %rax
	je	.LBB11_11
# BB#2:                                 # %overflow.checked
	addq	$2, %rax
	movq	%rax, %rdx
	andq	$-16, %rdx
	xorl	%ecx, %ecx
	movq	%rax, %r9
	andq	$-16, %r9
	je	.LBB11_10
# BB#3:                                 # %vector.body.preheader
	cmpq	$2, %rbx
	movl	$1, %ecx
	cmovlq	%rbx, %rcx
	notq	%rcx
	leaq	-14(%rbx,%rcx), %r8
	movl	%r8d, %ecx
	shrl	$4, %ecx
	incl	%ecx
	xorl	%edi, %edi
	testb	$3, %cl
	je	.LBB11_6
# BB#4:                                 # %vector.body.prol.preheader
	leaq	-10(%r14,%rbx,2), %rsi
	movq	%rbx, %rcx
	notq	%rcx
	cmpq	$-2, %rcx
	movl	$-2, %edi
	cmovgl	%ecx, %edi
	leal	-14(%rdi,%rbx), %ecx
	shrl	$4, %ecx
	incl	%ecx
	andl	$3, %ecx
	negq	%rcx
	xorl	%edi, %edi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB11_5:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rsi)
	movups	%xmm0, -16(%rsi)
	addq	$16, %rdi
	addq	$-32, %rsi
	incq	%rcx
	jne	.LBB11_5
.LBB11_6:                               # %vector.body.preheader.split
	movq	%rbx, %rsi
	subq	%rdx, %rsi
	cmpq	$48, %r8
	jb	.LBB11_9
# BB#7:                                 # %vector.body.preheader.split.split
	movq	%rbx, %rcx
	notq	%rcx
	cmpq	$-3, %rcx
	movq	$-2, %rdx
	cmovgq	%rcx, %rdx
	leaq	2(%rdx,%rbx), %rcx
	andq	$-16, %rcx
	subq	%rdi, %rcx
	addq	$-5, %rbx
	subq	%rdi, %rbx
	leaq	(%r14,%rbx,2), %rdx
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB11_8:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rdx)
	movups	%xmm0, -16(%rdx)
	movups	%xmm0, -32(%rdx)
	movups	%xmm0, -48(%rdx)
	movups	%xmm0, -64(%rdx)
	movups	%xmm0, -80(%rdx)
	movups	%xmm0, -96(%rdx)
	movups	%xmm0, -112(%rdx)
	addq	$-128, %rdx
	addq	$-64, %rcx
	jne	.LBB11_8
.LBB11_9:
	movq	%rsi, %rbx
	movq	%r9, %rcx
.LBB11_10:                              # %middle.block
	cmpq	%rcx, %rax
	je	.LBB11_13
.LBB11_11:                              # %for.body.preheader
	incq	%rbx
	.align	16, 0x90
.LBB11_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, 2(%r14,%rbx,2)
	decq	%rbx
	cmpq	$1, %rbx
	jg	.LBB11_12
.LBB11_13:                              # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end11:
	.size	cmyk_cs_to_spotrgb_cm, .Lfunc_end11-cmyk_cs_to_spotrgb_cm
	.cfi_endproc

	.align	16, 0x90
	.type	gray_cs_to_spotcmyk_cm,@function
gray_cs_to_spotcmyk_cm:                 # @gray_cs_to_spotcmyk_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbx, -16
	movslq	18504(%rdi), %rax
	movl	$32760, %ecx            # imm = 0x7FF8
	subl	%esi, %ecx
	testq	%rax, %rax
	movw	$0, 4(%rdx)
	movw	$0, 2(%rdx)
	movw	$0, (%rdx)
	movw	%cx, 6(%rdx)
	jle	.LBB12_13
# BB#1:                                 # %for.body.lr.ph
	cmpq	$2, %rax
	movl	$1, %ecx
	cmovlq	%rax, %rcx
	notq	%rcx
	leaq	(%rcx,%rax), %r11
	cmpq	$-2, %r11
	je	.LBB12_11
# BB#2:                                 # %overflow.checked
	addq	$2, %r11
	movq	%r11, %r10
	andq	$-16, %r10
	xorl	%ecx, %ecx
	movq	%r11, %r9
	andq	$-16, %r9
	je	.LBB12_10
# BB#3:                                 # %vector.body.preheader
	cmpq	$2, %rax
	movl	$1, %ecx
	cmovlq	%rax, %rcx
	notq	%rcx
	leaq	-14(%rax,%rcx), %r8
	movl	%r8d, %ecx
	shrl	$4, %ecx
	incl	%ecx
	xorl	%esi, %esi
	testb	$3, %cl
	je	.LBB12_6
# BB#4:                                 # %vector.body.prol.preheader
	leaq	-8(%rdx,%rax,2), %rdi
	movq	%rax, %rcx
	notq	%rcx
	cmpq	$-2, %rcx
	movl	$-2, %esi
	cmovgl	%ecx, %esi
	leal	-14(%rsi,%rax), %ecx
	shrl	$4, %ecx
	incl	%ecx
	andl	$3, %ecx
	negq	%rcx
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB12_5:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rdi)
	movups	%xmm0, -16(%rdi)
	addq	$16, %rsi
	addq	$-32, %rdi
	incq	%rcx
	jne	.LBB12_5
.LBB12_6:                               # %vector.body.preheader.split
	movq	%rax, %rbx
	subq	%r10, %rbx
	cmpq	$48, %r8
	jb	.LBB12_9
# BB#7:                                 # %vector.body.preheader.split.split
	movq	%rax, %rcx
	notq	%rcx
	cmpq	$-3, %rcx
	movq	$-2, %rdi
	cmovgq	%rcx, %rdi
	leaq	2(%rdi,%rax), %rcx
	andq	$-16, %rcx
	subq	%rsi, %rcx
	addq	$-4, %rax
	subq	%rsi, %rax
	leaq	(%rdx,%rax,2), %rax
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB12_8:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rax)
	movups	%xmm0, -16(%rax)
	movups	%xmm0, -32(%rax)
	movups	%xmm0, -48(%rax)
	movups	%xmm0, -64(%rax)
	movups	%xmm0, -80(%rax)
	movups	%xmm0, -96(%rax)
	movups	%xmm0, -112(%rax)
	addq	$-128, %rax
	addq	$-64, %rcx
	jne	.LBB12_8
.LBB12_9:
	movq	%rbx, %rax
	movq	%r9, %rcx
.LBB12_10:                              # %middle.block
	cmpq	%rcx, %r11
	je	.LBB12_13
.LBB12_11:                              # %for.body.preheader
	incq	%rax
	.align	16, 0x90
.LBB12_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, 4(%rdx,%rax,2)
	decq	%rax
	cmpq	$1, %rax
	jg	.LBB12_12
.LBB12_13:                              # %for.end
	popq	%rbx
	retq
.Lfunc_end12:
	.size	gray_cs_to_spotcmyk_cm, .Lfunc_end12-gray_cs_to_spotcmyk_cm
	.cfi_endproc

	.align	16, 0x90
	.type	rgb_cs_to_spotcmyk_cm,@function
rgb_cs_to_spotcmyk_cm:                  # @rgb_cs_to_spotcmyk_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp57:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp59:
	.cfi_def_cfa_offset 32
.Ltmp60:
	.cfi_offset %rbx, -24
.Ltmp61:
	.cfi_offset %r14, -16
	movq	%r9, %rbx
	movq	%rsi, %rax
	movl	18504(%rdi), %r14d
	movq	24(%rdi), %r9
	movl	%edx, %edi
	movl	%ecx, %esi
	movl	%r8d, %edx
	movq	%rax, %rcx
	movq	%rbx, %r8
	callq	color_rgb_to_cmyk
	testl	%r14d, %r14d
	jle	.LBB13_12
# BB#1:                                 # %for.body.preheader
	movabsq	$8589934576, %rdi       # imm = 0x1FFFFFFF0
	leal	-1(%r14), %edx
	leaq	1(%rdx), %rax
	xorl	%esi, %esi
	movq	%rax, %rcx
	andq	%rdi, %rcx
	je	.LBB13_9
# BB#2:                                 # %vector.body.preheader
	incq	%rdx
	andq	%rdi, %rdx
	addq	$-16, %rdx
	movl	%edx, %edi
	shrl	$4, %edi
	incl	%edi
	xorl	%esi, %esi
	testb	$3, %dil
	je	.LBB13_5
# BB#3:                                 # %vector.body.prol.preheader
	movl	%r14d, %edi
	andl	$48, %edi
	addl	$-16, %edi
	shrl	$4, %edi
	incl	%edi
	andl	$3, %edi
	negq	%rdi
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB13_4:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 8(%rbx,%rsi,2)
	movups	%xmm0, 24(%rbx,%rsi,2)
	addq	$16, %rsi
	incq	%rdi
	jne	.LBB13_4
.LBB13_5:                               # %vector.body.preheader.split
	cmpq	$48, %rdx
	jb	.LBB13_8
# BB#6:
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB13_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rdx
	orq	$4, %rdx
	movups	%xmm0, (%rbx,%rdx,2)
	movups	%xmm0, 16(%rbx,%rdx,2)
	leaq	16(%rsi), %rdx
	orq	$4, %rdx
	movups	%xmm0, (%rbx,%rdx,2)
	movups	%xmm0, 16(%rbx,%rdx,2)
	leaq	32(%rsi), %rdx
	orq	$4, %rdx
	movups	%xmm0, (%rbx,%rdx,2)
	movups	%xmm0, 16(%rbx,%rdx,2)
	leaq	48(%rsi), %rdx
	orq	$4, %rdx
	movups	%xmm0, (%rbx,%rdx,2)
	movups	%xmm0, 16(%rbx,%rdx,2)
	addq	$64, %rsi
	cmpq	%rcx, %rsi
	jne	.LBB13_7
.LBB13_8:
	movq	%rcx, %rsi
.LBB13_9:                               # %middle.block
	cmpq	%rsi, %rax
	je	.LBB13_12
# BB#10:                                # %for.body.preheader14
	leaq	8(%rbx,%rsi,2), %rax
	subl	%esi, %r14d
	.align	16, 0x90
.LBB13_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rax)
	addq	$2, %rax
	decl	%r14d
	jne	.LBB13_11
.LBB13_12:                              # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end13:
	.size	rgb_cs_to_spotcmyk_cm, .Lfunc_end13-rgb_cs_to_spotcmyk_cm
	.cfi_endproc

	.align	16, 0x90
	.type	cmyk_cs_to_spotcmyk_cm,@function
cmyk_cs_to_spotcmyk_cm:                 # @cmyk_cs_to_spotcmyk_cm
	.cfi_startproc
# BB#0:                                 # %entry
	movl	18504(%rdi), %r10d
	movw	%si, (%r9)
	movw	%dx, 2(%r9)
	movw	%cx, 4(%r9)
	movw	%r8w, 6(%r9)
	testl	%r10d, %r10d
	jle	.LBB14_12
# BB#1:                                 # %for.body.preheader
	movabsq	$8589934576, %rdi       # imm = 0x1FFFFFFF0
	leal	-1(%r10), %esi
	leaq	1(%rsi), %rcx
	xorl	%eax, %eax
	movq	%rcx, %rdx
	andq	%rdi, %rdx
	je	.LBB14_9
# BB#2:                                 # %vector.body.preheader
	incq	%rsi
	andq	%rdi, %rsi
	addq	$-16, %rsi
	movl	%esi, %eax
	shrl	$4, %eax
	incl	%eax
	xorl	%edi, %edi
	testb	$3, %al
	je	.LBB14_5
# BB#3:                                 # %vector.body.prol.preheader
	movl	%r10d, %eax
	andl	$48, %eax
	addl	$-16, %eax
	shrl	$4, %eax
	incl	%eax
	andl	$3, %eax
	negq	%rax
	xorl	%edi, %edi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB14_4:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 8(%r9,%rdi,2)
	movups	%xmm0, 24(%r9,%rdi,2)
	addq	$16, %rdi
	incq	%rax
	jne	.LBB14_4
.LBB14_5:                               # %vector.body.preheader.split
	cmpq	$48, %rsi
	jb	.LBB14_8
# BB#6:
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB14_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, %rax
	orq	$4, %rax
	movups	%xmm0, (%r9,%rax,2)
	movups	%xmm0, 16(%r9,%rax,2)
	leaq	16(%rdi), %rax
	orq	$4, %rax
	movups	%xmm0, (%r9,%rax,2)
	movups	%xmm0, 16(%r9,%rax,2)
	leaq	32(%rdi), %rax
	orq	$4, %rax
	movups	%xmm0, (%r9,%rax,2)
	movups	%xmm0, 16(%r9,%rax,2)
	leaq	48(%rdi), %rax
	orq	$4, %rax
	movups	%xmm0, (%r9,%rax,2)
	movups	%xmm0, 16(%r9,%rax,2)
	addq	$64, %rdi
	cmpq	%rdx, %rdi
	jne	.LBB14_7
.LBB14_8:
	movq	%rdx, %rax
.LBB14_9:                               # %middle.block
	cmpq	%rax, %rcx
	je	.LBB14_12
# BB#10:                                # %for.body.preheader16
	leaq	8(%r9,%rax,2), %rcx
	subl	%eax, %r10d
	.align	16, 0x90
.LBB14_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rcx)
	addq	$2, %rcx
	decl	%r10d
	jne	.LBB14_11
.LBB14_12:                              # %for.end
	retq
.Lfunc_end14:
	.size	cmyk_cs_to_spotcmyk_cm, .Lfunc_end14-cmyk_cs_to_spotcmyk_cm
	.cfi_endproc

	.align	16, 0x90
	.type	gray_cs_to_spotn_cm,@function
gray_cs_to_spotn_cm:                    # @gray_cs_to_spotn_cm
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$32760, %eax            # imm = 0x7FF8
	subl	%esi, %eax
	movl	18504(%rdi), %edi
	movw	$0, (%rdx)
	movw	$0, 2(%rdx)
	movw	$0, 4(%rdx)
	movw	%ax, 6(%rdx)
	testl	%edi, %edi
	jle	.LBB15_12
# BB#1:                                 # %for.body.i.preheader
	movabsq	$8589934576, %rcx       # imm = 0x1FFFFFFF0
	leal	-1(%rdi), %r9d
	leaq	1(%r9), %r8
	xorl	%eax, %eax
	movq	%r8, %rsi
	andq	%rcx, %rsi
	je	.LBB15_9
# BB#2:                                 # %vector.body.preheader
	incq	%r9
	andq	%rcx, %r9
	addq	$-16, %r9
	movl	%r9d, %eax
	shrl	$4, %eax
	incl	%eax
	xorl	%ecx, %ecx
	testb	$3, %al
	je	.LBB15_5
# BB#3:                                 # %vector.body.prol.preheader
	movl	%edi, %eax
	andl	$48, %eax
	addl	$-16, %eax
	shrl	$4, %eax
	incl	%eax
	andl	$3, %eax
	negq	%rax
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB15_4:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 8(%rdx,%rcx,2)
	movups	%xmm0, 24(%rdx,%rcx,2)
	addq	$16, %rcx
	incq	%rax
	jne	.LBB15_4
.LBB15_5:                               # %vector.body.preheader.split
	cmpq	$48, %r9
	jb	.LBB15_8
# BB#6:
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB15_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	orq	$4, %rax
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm0, 16(%rdx,%rax,2)
	leaq	16(%rcx), %rax
	orq	$4, %rax
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm0, 16(%rdx,%rax,2)
	leaq	32(%rcx), %rax
	orq	$4, %rax
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm0, 16(%rdx,%rax,2)
	leaq	48(%rcx), %rax
	orq	$4, %rax
	movups	%xmm0, (%rdx,%rax,2)
	movups	%xmm0, 16(%rdx,%rax,2)
	addq	$64, %rcx
	cmpq	%rsi, %rcx
	jne	.LBB15_7
.LBB15_8:
	movq	%rsi, %rax
.LBB15_9:                               # %middle.block
	cmpq	%rax, %r8
	je	.LBB15_12
# BB#10:                                # %for.body.i.preheader5
	subl	%eax, %edi
	leaq	8(%rdx,%rax,2), %rax
	.align	16, 0x90
.LBB15_11:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rax)
	addq	$2, %rax
	decl	%edi
	jne	.LBB15_11
.LBB15_12:                              # %cmyk_cs_to_spotn_cm.exit
	retq
.Lfunc_end15:
	.size	gray_cs_to_spotn_cm, .Lfunc_end15-gray_cs_to_spotn_cm
	.cfi_endproc

	.align	16, 0x90
	.type	rgb_cs_to_spotn_cm,@function
rgb_cs_to_spotn_cm:                     # @rgb_cs_to_spotn_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp62:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp63:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp64:
	.cfi_def_cfa_offset 32
.Ltmp65:
	.cfi_offset %rbx, -24
.Ltmp66:
	.cfi_offset %r14, -16
	movq	%r9, %rbx
	movq	%rsi, %rax
	movq	%rdi, %r14
	movq	24(%r14), %r9
	leaq	(%rsp), %r10
	movl	%edx, %edi
	movl	%ecx, %esi
	movl	%r8d, %edx
	movq	%rax, %rcx
	movq	%r10, %r8
	callq	color_rgb_to_cmyk
	movq	(%rsp), %rax
	movl	18504(%r14), %ecx
	movq	%rax, (%rbx)
	testl	%ecx, %ecx
	jle	.LBB16_12
# BB#1:                                 # %for.body.i.preheader
	movabsq	$8589934576, %rdi       # imm = 0x1FFFFFFF0
	leal	-1(%rcx), %esi
	leaq	1(%rsi), %r8
	xorl	%eax, %eax
	movq	%r8, %rdx
	andq	%rdi, %rdx
	je	.LBB16_9
# BB#2:                                 # %vector.body.preheader
	incq	%rsi
	andq	%rdi, %rsi
	addq	$-16, %rsi
	movl	%esi, %eax
	shrl	$4, %eax
	incl	%eax
	xorl	%edi, %edi
	testb	$3, %al
	je	.LBB16_5
# BB#3:                                 # %vector.body.prol.preheader
	movl	%ecx, %eax
	andl	$48, %eax
	addl	$-16, %eax
	shrl	$4, %eax
	incl	%eax
	andl	$3, %eax
	negq	%rax
	xorl	%edi, %edi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB16_4:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 8(%rbx,%rdi,2)
	movups	%xmm0, 24(%rbx,%rdi,2)
	addq	$16, %rdi
	incq	%rax
	jne	.LBB16_4
.LBB16_5:                               # %vector.body.preheader.split
	cmpq	$48, %rsi
	jb	.LBB16_8
# BB#6:
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB16_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, %rax
	orq	$4, %rax
	movups	%xmm0, (%rbx,%rax,2)
	movups	%xmm0, 16(%rbx,%rax,2)
	leaq	16(%rdi), %rax
	orq	$4, %rax
	movups	%xmm0, (%rbx,%rax,2)
	movups	%xmm0, 16(%rbx,%rax,2)
	leaq	32(%rdi), %rax
	orq	$4, %rax
	movups	%xmm0, (%rbx,%rax,2)
	movups	%xmm0, 16(%rbx,%rax,2)
	leaq	48(%rdi), %rax
	orq	$4, %rax
	movups	%xmm0, (%rbx,%rax,2)
	movups	%xmm0, 16(%rbx,%rax,2)
	addq	$64, %rdi
	cmpq	%rdx, %rdi
	jne	.LBB16_7
.LBB16_8:
	movq	%rdx, %rax
.LBB16_9:                               # %middle.block
	cmpq	%rax, %r8
	je	.LBB16_12
# BB#10:                                # %for.body.i.preheader5
	subl	%eax, %ecx
	leaq	8(%rbx,%rax,2), %rax
	.align	16, 0x90
.LBB16_11:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rax)
	addq	$2, %rax
	decl	%ecx
	jne	.LBB16_11
.LBB16_12:                              # %cmyk_cs_to_spotn_cm.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end16:
	.size	rgb_cs_to_spotn_cm, .Lfunc_end16-rgb_cs_to_spotn_cm
	.cfi_endproc

	.align	16, 0x90
	.type	cmyk_cs_to_spotn_cm,@function
cmyk_cs_to_spotn_cm:                    # @cmyk_cs_to_spotn_cm
	.cfi_startproc
# BB#0:                                 # %entry
	movl	18504(%rdi), %r10d
	movw	%si, (%r9)
	movw	%dx, 2(%r9)
	movw	%cx, 4(%r9)
	movw	%r8w, 6(%r9)
	testl	%r10d, %r10d
	jle	.LBB17_12
# BB#1:                                 # %for.body.preheader
	movabsq	$8589934576, %rdi       # imm = 0x1FFFFFFF0
	leal	-1(%r10), %esi
	leaq	1(%rsi), %rcx
	xorl	%eax, %eax
	movq	%rcx, %rdx
	andq	%rdi, %rdx
	je	.LBB17_9
# BB#2:                                 # %vector.body.preheader
	incq	%rsi
	andq	%rdi, %rsi
	addq	$-16, %rsi
	movl	%esi, %eax
	shrl	$4, %eax
	incl	%eax
	xorl	%edi, %edi
	testb	$3, %al
	je	.LBB17_5
# BB#3:                                 # %vector.body.prol.preheader
	movl	%r10d, %eax
	andl	$48, %eax
	addl	$-16, %eax
	shrl	$4, %eax
	incl	%eax
	andl	$3, %eax
	negq	%rax
	xorl	%edi, %edi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB17_4:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 8(%r9,%rdi,2)
	movups	%xmm0, 24(%r9,%rdi,2)
	addq	$16, %rdi
	incq	%rax
	jne	.LBB17_4
.LBB17_5:                               # %vector.body.preheader.split
	cmpq	$48, %rsi
	jb	.LBB17_8
# BB#6:
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB17_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, %rax
	orq	$4, %rax
	movups	%xmm0, (%r9,%rax,2)
	movups	%xmm0, 16(%r9,%rax,2)
	leaq	16(%rdi), %rax
	orq	$4, %rax
	movups	%xmm0, (%r9,%rax,2)
	movups	%xmm0, 16(%r9,%rax,2)
	leaq	32(%rdi), %rax
	orq	$4, %rax
	movups	%xmm0, (%r9,%rax,2)
	movups	%xmm0, 16(%r9,%rax,2)
	leaq	48(%rdi), %rax
	orq	$4, %rax
	movups	%xmm0, (%r9,%rax,2)
	movups	%xmm0, 16(%r9,%rax,2)
	addq	$64, %rdi
	cmpq	%rdx, %rdi
	jne	.LBB17_7
.LBB17_8:
	movq	%rdx, %rax
.LBB17_9:                               # %middle.block
	cmpq	%rax, %rcx
	je	.LBB17_12
# BB#10:                                # %for.body.preheader16
	leaq	8(%r9,%rax,2), %rcx
	subl	%eax, %r10d
	.align	16, 0x90
.LBB17_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rcx)
	addq	$2, %rcx
	decl	%r10d
	jne	.LBB17_11
.LBB17_12:                              # %for.end
	retq
.Lfunc_end17:
	.size	cmyk_cs_to_spotn_cm, .Lfunc_end17-cmyk_cs_to_spotn_cm
	.cfi_endproc

	.type	spot_cmyk_procs,@object # @spot_cmyk_procs
	.section	.rodata,"a",@progbits
	.align	8
spot_cmyk_procs:
	.quad	gdev_prn_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	rinkj_close_device
	.quad	0
	.quad	rinkj_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	rinkj_get_params
	.quad	rinkj_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	get_rinkj_color_mapping_procs
	.quad	rinkj_get_color_comp_index
	.quad	rinkj_encode_color
	.quad	rinkj_decode_color
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	spot_cmyk_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rinkj"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceN"
	.size	.L.str.1, 8

	.type	DeviceCMYKComponents,@object # @DeviceCMYKComponents
	.section	.rodata,"a",@progbits
	.align	16
DeviceCMYKComponents:
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	0
	.size	DeviceCMYKComponents, 40

	.type	gs_rinkj_device,@object # @gs_rinkj_device
	.globl	gs_rinkj_device
	.align	8
gs_rinkj_device:
	.long	20072                   # 0x4e68
	.zero	4
	.quad	spot_cmyk_procs
	.quad	.L.str
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	64                      # 0x40
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	32                      # 0x20
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	6120                    # 0x17e8
	.long	7920                    # 0x1ef0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1144258560              # float 7.200000e+02
	.long	1144258560              # float 7.200000e+02
	.long	1144258560              # float 7.200000e+02
	.long	1144258560              # float 7.200000e+02
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	rinkj_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	2                       # 0x2
	.long	8                       # 0x8
	.long	4                       # 0x4
	.zero	4
	.quad	DeviceCMYKComponents
	.long	4                       # 0x4
	.zero	4
	.zero	520
	.zero	520
	.zero	256
	.quad	0
	.quad	0
	.zero	256
	.size	gs_rinkj_device, 20072

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"rinkj_close_device"
	.size	.L.str.2, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"CRDDefault"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"SeparationColorNames"
	.size	.L.str.4, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Separations"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"ProfileOut"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"SetupFile"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"ProcessColorModel"
	.size	.L.str.8, 18

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"DeviceGray"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"DeviceRGB"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"DeviceCMYK"
	.size	.L.str.11, 11

	.type	DeviceGrayComponents,@object # @DeviceGrayComponents
	.section	.rodata,"a",@progbits
	.align	16
DeviceGrayComponents:
	.quad	.L.str.12
	.quad	0
	.size	DeviceGrayComponents, 16

	.type	DeviceRGBComponents,@object # @DeviceRGBComponents
	.align	16
DeviceRGBComponents:
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	0
	.size	DeviceRGBComponents, 32

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"Gray"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Red"
	.size	.L.str.13, 4

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Green"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Blue"
	.size	.L.str.15, 5

	.type	bpc_to_depth.depths,@object # @bpc_to_depth.depths
	.section	.rodata,"a",@progbits
	.align	16
bpc_to_depth.depths:
	.ascii	"\001\002\000\004\b\000\000\b"
	.ascii	"\002\004\000\b\020\000\000\020"
	.ascii	"\004\b\000\020\020\000\000\030"
	.ascii	"\004\b\000\020 \000\000 "
	.size	bpc_to_depth.depths, 32

	.type	.L__func__.rinkj_open_profile,@object # @__func__.rinkj_open_profile
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.rinkj_open_profile:
	.asciz	"rinkj_open_profile"
	.size	.L__func__.rinkj_open_profile, 19

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"./devices/gdevrinkj.c"
	.size	.L.str.16, 22

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Could not create output profile for rinkj device"
	.size	.L.str.17, 49

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Could not create link handle for rinkj device"
	.size	.L.str.18, 46

	.type	spotRGB_procs,@object   # @spotRGB_procs
	.section	.rodata,"a",@progbits
	.align	8
spotRGB_procs:
	.quad	gray_cs_to_spotrgb_cm
	.quad	rgb_cs_to_spotrgb_cm
	.quad	cmyk_cs_to_spotrgb_cm
	.size	spotRGB_procs, 24

	.type	spotCMYK_procs,@object  # @spotCMYK_procs
	.align	8
spotCMYK_procs:
	.quad	gray_cs_to_spotcmyk_cm
	.quad	rgb_cs_to_spotcmyk_cm
	.quad	cmyk_cs_to_spotcmyk_cm
	.size	spotCMYK_procs, 24

	.type	spotN_procs,@object     # @spotN_procs
	.align	8
spotN_procs:
	.quad	gray_cs_to_spotn_cm
	.quad	rgb_cs_to_spotn_cm
	.quad	cmyk_cs_to_spotn_cm
	.size	spotN_procs, 24

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"Cyan"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Magenta"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Yellow"
	.size	.L.str.21, 7

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Black"
	.size	.L.str.22, 6

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"CMYKcmk"
	.size	.L.str.23, 8

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"r"
	.size	.L.str.24, 2

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"KkCMcmY"
	.size	.L.str.25, 8

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"AddLut"
	.size	.L.str.26, 7

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Dither"
	.size	.L.str.27, 7

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Aspect"
	.size	.L.str.28, 7

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"%d"
	.size	.L.str.29, 3

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"rinkj_add_lut"
	.size	.L.str.30, 14

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"%lf %lf"
	.size	.L.str.31, 8

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"rinkj_write_image_data"
	.size	.L.str.32, 23

	.type	.Lswitch.table,@object  # @switch.table
	.section	.rodata,"a",@progbits
	.align	16
.Lswitch.table:
	.quad	spotRGB_procs
	.quad	spotCMYK_procs
	.quad	spotN_procs
	.size	.Lswitch.table, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
