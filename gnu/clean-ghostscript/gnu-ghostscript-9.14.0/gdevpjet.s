	.text
	.file	"gdevpjet.bc"
	.align	16, 0x90
	.type	lj250_print_page,@function
lj250_print_page:                       # @lj250_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$.L.str.4, %edi
	callq	fputs
	movl	$.L.str.5, %edi
	movq	%rbx, %rsi
	callq	fputs
	xorl	%edx, %edx
	movl	$.L.str.6, %ecx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	pj_common_print_page    # TAILCALL
.Lfunc_end0:
	.size	lj250_print_page, .Lfunc_end0-lj250_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	paintjet_print_page,@function
paintjet_print_page:                    # @paintjet_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp5:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp7:
	.cfi_def_cfa_offset 32
.Ltmp8:
	.cfi_offset %rbx, -24
.Ltmp9:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$.L.str.5, %edi
	callq	fputs
	xorl	%edx, %edx
	movl	$.L.str.18, %ecx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	pj_common_print_page    # TAILCALL
.Lfunc_end1:
	.size	paintjet_print_page, .Lfunc_end1-paintjet_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	pjetxl_print_page,@function
pjetxl_print_page:                      # @pjetxl_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp12:
	.cfi_def_cfa_offset 32
.Ltmp13:
	.cfi_offset %rbx, -24
.Ltmp14:
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$.L.str.19, %edi
	callq	fputs
	movl	$-360, %edx             # imm = 0xFFFFFFFFFFFFFE98
	movl	$.L.str.20, %ecx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	jmp	pj_common_print_page    # TAILCALL
.Lfunc_end2:
	.size	pjetxl_print_page, .Lfunc_end2-pjetxl_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	pj_common_print_page,@function
pj_common_print_page:                   # @pj_common_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp17:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp18:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp19:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 56
	subq	$456, %rsp              # imm = 0x1C8
.Ltmp21:
	.cfi_def_cfa_offset 512
.Ltmp22:
	.cfi_offset %rbx, -56
.Ltmp23:
	.cfi_offset %r12, -48
.Ltmp24:
	.cfi_offset %r13, -40
.Ltmp25:
	.cfi_offset %r14, -32
.Ltmp26:
	.cfi_offset %r15, -24
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movl	%edx, %r14d
	movq	%rsi, %r13
	movq	%rdi, %rbx
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$1536, %esi             # imm = 0x600
	movl	$1, %edx
	movl	$.L.str.7, %ecx
	callq	*88(%rdi)
	movq	%rax, %rbp
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$576, %esi              # imm = 0x240
	movl	$1, %edx
	movl	$.L.str.8, %ecx
	callq	*88(%rdi)
	movq	%rbp, %rcx
	movq	%rax, %rbp
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	testq	%rcx, %rcx
	je	.LBB3_2
# BB#1:                                 # %entry
	testq	%rbp, %rbp
	je	.LBB3_2
# BB#6:                                 # %if.end.26
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	movq	%r12, (%rsp)            # 8-byte Spill
	movl	$.L.str.9, %esi
	movl	$180, %edx
	xorl	%eax, %eax
	movq	%r13, %rbp
	movq	%rbp, 56(%rsp)          # 8-byte Spill
	movq	%rbp, %rdi
	movq	%rcx, %r12
	movq	%r12, 8(%rsp)           # 8-byte Spill
	callq	fprintf
	movl	$.L.str.10, %esi
	movl	$1536, %edx             # imm = 0x600
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	fprintf
	movl	$.L.str.11, %esi
	movl	$3, %edx
	xorl	%eax, %eax
	movq	%rbp, %rdi
	callq	fprintf
	movl	$.L.str.12, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%r14d, %edx
	callq	fprintf
	movl	$.L.str.13, %edi
	movq	%rbp, %rsi
	callq	fputs
	movl	$.L.str.14, %edi
	movq	%rbp, %rsi
	callq	fputs
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gx_device_raster
	movq	%r12, %rbp
	movl	%eax, 32(%rsp)          # 4-byte Spill
	cmpl	$0, 836(%rbx)
	jle	.LBB3_14
# BB#7:                                 # %for.body.lr.ph
	movslq	32(%rsp), %rax          # 4-byte Folded Reload
	leaq	(%rax,%rbp), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	40(%rsp), %r12          # 8-byte Reload
	leaq	384(%r12), %r14
	leaq	576(%r12), %r13
	addq	$192, %r12
	leaq	64(%rsp), %r15
	xorl	%esi, %esi
	movl	$0, 36(%rsp)            # 4-byte Folded Spill
	.align	16, 0x90
.LBB3_8:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_9 Depth 2
                                        #     Child Loop BB3_17 Depth 2
                                        #     Child Loop BB3_21 Depth 2
                                        #       Child Loop BB3_22 Depth 3
                                        #       Child Loop BB3_25 Depth 3
                                        #     Child Loop BB3_28 Depth 2
                                        #       Child Loop BB3_29 Depth 3
                                        #       Child Loop BB3_33 Depth 3
                                        #     Child Loop BB3_36 Depth 2
                                        #       Child Loop BB3_37 Depth 3
                                        #       Child Loop BB3_41 Depth 3
	movl	%esi, 52(%rsp)          # 4-byte Spill
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	movl	32(%rsp), %ecx          # 4-byte Reload
	callq	gdev_prn_copy_scan_lines
	movq	24(%rsp), %rax          # 8-byte Reload
	.align	16, 0x90
.LBB3_9:                                # %while.cond
                                        #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %rdi
	cmpq	%rbp, %rdi
	jbe	.LBB3_11
# BB#10:                                # %land.rhs
                                        #   in Loop: Header=BB3_9 Depth=2
	leaq	-1(%rdi), %rax
	cmpb	$0, -1(%rdi)
	je	.LBB3_9
.LBB3_11:                               # %while.end
                                        #   in Loop: Header=BB3_8 Depth=1
	cmpq	%rbp, %rdi
	je	.LBB3_12
# BB#16:                                # %if.else
                                        #   in Loop: Header=BB3_8 Depth=1
	xorl	%esi, %esi
	movl	$7, %edx
	callq	memset
	movq	%rbp, %r11
	xorl	%eax, %eax
	movq	40(%rsp), %rcx          # 8-byte Reload
	.align	16, 0x90
.LBB3_17:                               # %for.body.46
                                        #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r11,%rax), %r8d
	movzbl	1(%r11,%rax), %r9d
	movzbl	2(%r11,%rax), %edi
	movq	pj_common_print_page.spr40(,%rdi,8), %rdi
	shrq	%rdi
	movzbl	3(%r11,%rax), %ebp
	movq	pj_common_print_page.spr8(,%rbp,8), %rbp
	movzbl	4(%r11,%rax), %r10d
	movzbl	5(%r11,%rax), %edx
	movq	pj_common_print_page.spr8(,%rdx,8), %rdx
	shrq	%rdx
	movzbl	6(%r11,%rax), %esi
	movzbl	7(%r11,%rax), %ebx
	movq	pj_common_print_page.spr2(,%rbx,8), %rbx
	shrq	%rbx
	addq	pj_common_print_page.spr40(,%r8,8), %rbp
	addq	pj_common_print_page.spr40(,%r9,8), %rdi
	addq	pj_common_print_page.spr8(,%r10,8), %rdi
	addq	%rdx, %rdi
	addq	pj_common_print_page.spr2(,%rsi,8), %rdi
	addq	%rbx, %rdi
	leaq	(%rdi,%rbp,2), %rdx
	movq	%rdx, %rsi
	shrq	$16, %rsi
	movb	%sil, (%rcx)
	movb	%dh, 192(%rcx)  # NOREX
	movb	%dl, 384(%rcx)
	addq	$8, %rax
	incq	%rcx
	cmpq	$1536, %rax             # imm = 0x600
	jl	.LBB3_17
# BB#18:                                # %for.end
                                        #   in Loop: Header=BB3_8 Depth=1
	movl	36(%rsp), %edx          # 4-byte Reload
	testl	%edx, %edx
	jle	.LBB3_20
# BB#19:                                # %if.then.93
                                        #   in Loop: Header=BB3_8 Depth=1
	shll	$2, %edx
	movl	$.L.str.15, %esi
	xorl	%eax, %eax
	movq	56(%rsp), %rdi          # 8-byte Reload
	callq	fprintf
	movl	$0, 36(%rsp)            # 4-byte Folded Spill
.LBB3_20:                               # %if.end.95
                                        #   in Loop: Header=BB3_8 Depth=1
	movq	%r14, %rcx
	movq	%r15, %rbp
	.align	16, 0x90
.LBB3_21:                               # %while.body.i
                                        #   Parent Loop BB3_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_22 Depth 3
                                        #       Child Loop BB3_25 Depth 3
	leaq	1(%rcx), %rsi
	movb	(%rcx), %dl
	cmpq	%r13, %rsi
	movq	%rsi, %rax
	jae	.LBB3_23
	.align	16, 0x90
.LBB3_22:                               # %land.rhs.i
                                        #   Parent Loop BB3_8 Depth=1
                                        #     Parent Loop BB3_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	%dl, %edi
	movzbl	(%rax), %ebx
	cmpl	%edi, %ebx
	jne	.LBB3_23
# BB#44:                                # %while.body.6.i
                                        #   in Loop: Header=BB3_22 Depth=3
	incq	%rax
	cmpq	%r13, %rax
	jb	.LBB3_22
.LBB3_23:                               # %while.cond.8.preheader.i
                                        #   in Loop: Header=BB3_21 Depth=2
	movq	%rax, %rdi
	subq	%rsi, %rdi
	notb	%dl
	cmpq	$256, %rdi              # imm = 0x100
	jl	.LBB3_26
# BB#24:                                # %while.body.11.i.preheader
                                        #   in Loop: Header=BB3_21 Depth=2
	addq	$257, %rcx              # imm = 0x101
	.align	16, 0x90
.LBB3_25:                               # %while.body.11.i
                                        #   Parent Loop BB3_8 Depth=1
                                        #     Parent Loop BB3_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	$-1, (%rbp)
	movb	%dl, 1(%rbp)
	addq	$2, %rbp
	movq	%rax, %rdi
	subq	%rcx, %rdi
	addq	$256, %rcx              # imm = 0x100
	cmpq	$255, %rdi
	jg	.LBB3_25
.LBB3_26:                               # %while.end.16.i
                                        #   in Loop: Header=BB3_21 Depth=2
	movb	%dil, (%rbp)
	movb	%dl, 1(%rbp)
	addq	$2, %rbp
	cmpq	%r13, %rax
	movq	%rax, %rcx
	jb	.LBB3_21
# BB#27:                                # %compress1_row.exit
                                        #   in Loop: Header=BB3_8 Depth=1
	subq	%r15, %rbp
	movl	$.L.str.16, %esi
	movl	$86, %ecx
	xorl	%eax, %eax
	movq	56(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	fprintf
	movslq	%ebp, %rdx
	movl	$1, %esi
	movq	%r15, %rbp
	movq	%rbp, %rdi
	movq	%rbx, %rcx
	callq	fwrite
	movq	%r12, %rcx
	movq	%rbp, %r15
	movq	%rbp, %rbx
	.align	16, 0x90
.LBB3_28:                               # %while.body.i.1
                                        #   Parent Loop BB3_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_29 Depth 3
                                        #       Child Loop BB3_33 Depth 3
	leaq	1(%rcx), %rsi
	movb	(%rcx), %dl
	cmpq	%r14, %rsi
	movq	%rsi, %rax
	jae	.LBB3_31
	.align	16, 0x90
.LBB3_29:                               # %land.rhs.i.1
                                        #   Parent Loop BB3_8 Depth=1
                                        #     Parent Loop BB3_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	%dl, %edi
	movzbl	(%rax), %ebp
	cmpl	%edi, %ebp
	jne	.LBB3_31
# BB#30:                                # %while.body.6.i.1
                                        #   in Loop: Header=BB3_29 Depth=3
	incq	%rax
	cmpq	%r14, %rax
	jb	.LBB3_29
.LBB3_31:                               # %while.cond.8.preheader.i.1
                                        #   in Loop: Header=BB3_28 Depth=2
	movq	%rax, %rdi
	subq	%rsi, %rdi
	notb	%dl
	cmpq	$256, %rdi              # imm = 0x100
	jl	.LBB3_34
# BB#32:                                # %while.body.11.i.1.preheader
                                        #   in Loop: Header=BB3_28 Depth=2
	addq	$257, %rcx              # imm = 0x101
	.align	16, 0x90
.LBB3_33:                               # %while.body.11.i.1
                                        #   Parent Loop BB3_8 Depth=1
                                        #     Parent Loop BB3_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	$-1, (%r15)
	movb	%dl, 1(%r15)
	addq	$2, %r15
	movq	%rax, %rdi
	subq	%rcx, %rdi
	addq	$256, %rcx              # imm = 0x100
	cmpq	$255, %rdi
	jg	.LBB3_33
.LBB3_34:                               # %while.end.16.i.1
                                        #   in Loop: Header=BB3_28 Depth=2
	movb	%dil, (%r15)
	movb	%dl, 1(%r15)
	addq	$2, %r15
	cmpq	%r14, %rax
	movq	%rax, %rcx
	jb	.LBB3_28
# BB#35:                                # %compress1_row.exit.1
                                        #   in Loop: Header=BB3_8 Depth=1
	subq	%rbx, %r15
	movl	$.L.str.16, %esi
	movl	$86, %ecx
	xorl	%eax, %eax
	movq	56(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	movl	%r15d, %edx
	callq	fprintf
	movslq	%r15d, %rdx
	movl	$1, %esi
	movq	%rbx, %rdi
	movq	%rbp, %rcx
	callq	fwrite
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	%rbx, %rbp
	movq	%rbx, %r15
	.align	16, 0x90
.LBB3_36:                               # %while.body.i.2
                                        #   Parent Loop BB3_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_37 Depth 3
                                        #       Child Loop BB3_41 Depth 3
	leaq	1(%rcx), %rsi
	movb	(%rcx), %dl
	cmpq	%r12, %rsi
	movq	%rsi, %rax
	jae	.LBB3_39
	.align	16, 0x90
.LBB3_37:                               # %land.rhs.i.2
                                        #   Parent Loop BB3_8 Depth=1
                                        #     Parent Loop BB3_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	%dl, %edi
	movzbl	(%rax), %ebx
	cmpl	%edi, %ebx
	jne	.LBB3_39
# BB#38:                                # %while.body.6.i.2
                                        #   in Loop: Header=BB3_37 Depth=3
	incq	%rax
	cmpq	%r12, %rax
	jb	.LBB3_37
.LBB3_39:                               # %while.cond.8.preheader.i.2
                                        #   in Loop: Header=BB3_36 Depth=2
	movq	%rax, %rdi
	subq	%rsi, %rdi
	notb	%dl
	cmpq	$256, %rdi              # imm = 0x100
	jl	.LBB3_42
# BB#40:                                # %while.body.11.i.2.preheader
                                        #   in Loop: Header=BB3_36 Depth=2
	addq	$257, %rcx              # imm = 0x101
	.align	16, 0x90
.LBB3_41:                               # %while.body.11.i.2
                                        #   Parent Loop BB3_8 Depth=1
                                        #     Parent Loop BB3_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movb	$-1, (%rbp)
	movb	%dl, 1(%rbp)
	addq	$2, %rbp
	movq	%rax, %rdi
	subq	%rcx, %rdi
	addq	$256, %rcx              # imm = 0x100
	cmpq	$255, %rdi
	jg	.LBB3_41
.LBB3_42:                               # %while.end.16.i.2
                                        #   in Loop: Header=BB3_36 Depth=2
	movb	%dil, (%rbp)
	movb	%dl, 1(%rbp)
	addq	$2, %rbp
	cmpq	%r12, %rax
	movq	%rax, %rcx
	jb	.LBB3_36
# BB#43:                                # %compress1_row.exit.2
                                        #   in Loop: Header=BB3_8 Depth=1
	subq	%r15, %rbp
	movl	$.L.str.16, %esi
	movl	$87, %ecx
	xorl	%eax, %eax
	movq	56(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	fprintf
	movslq	%ebp, %rdx
	movl	$1, %esi
	movq	%r15, %rdi
	movq	%rbx, %rcx
	callq	fwrite
	movq	16(%rsp), %rbx          # 8-byte Reload
	movq	8(%rsp), %rbp           # 8-byte Reload
	jmp	.LBB3_13
	.align	16, 0x90
.LBB3_12:                               # %if.then.41
                                        #   in Loop: Header=BB3_8 Depth=1
	incl	36(%rsp)                # 4-byte Folded Spill
.LBB3_13:                               # %if.end.114
                                        #   in Loop: Header=BB3_8 Depth=1
	movl	52(%rsp), %esi          # 4-byte Reload
	incl	%esi
	cmpl	836(%rbx), %esi
	jl	.LBB3_8
.LBB3_14:                               # %for.end.117
	movq	(%rsp), %rdi            # 8-byte Reload
	movq	56(%rsp), %rsi          # 8-byte Reload
	callq	fputs
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.7, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.8, %edx
	movq	40(%rsp), %rsi          # 8-byte Reload
	callq	*24(%rdi)
	xorl	%r14d, %r14d
	jmp	.LBB3_15
.LBB3_2:                                # %if.then
	testq	%rcx, %rcx
	je	.LBB3_4
# BB#3:                                 # %if.then.11
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.7, %edx
	movq	%rcx, %rsi
	callq	*24(%rdi)
.LBB3_4:                                # %if.end
	movl	$-25, %r14d
	testq	%rbp, %rbp
	je	.LBB3_15
# BB#5:                                 # %if.then.18
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	movl	$.L.str.8, %edx
	movq	%rbp, %rsi
	callq	*24(%rdi)
.LBB3_15:                               # %cleanup
	movl	%r14d, %eax
	addq	$456, %rsp              # imm = 0x1C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	pj_common_print_page, .Lfunc_end3-pj_common_print_page
	.cfi_endproc

	.type	paintjet_procs,@object  # @paintjet_procs
	.data
	.align	8
paintjet_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	gdev_pcl_3bit_map_rgb_color
	.quad	gdev_pcl_3bit_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_get_params
	.quad	gdev_prn_put_params
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
	.quad	gdev_prn_dev_spec_op
	.quad	0
	.quad	gx_default_get_profile
	.quad	gx_default_set_graphics_type_tag
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	paintjet_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"lj250"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceRGB"
	.size	.L.str.1, 10

	.type	gs_lj250_device,@object # @gs_lj250_device
	.section	.rodata,"a",@progbits
	.globl	gs_lj250_device
	.align	8
gs_lj250_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	paintjet_procs
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
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	255                     # 0xff
	.zero	1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
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
	.long	1530                    # 0x5fa
	.long	1980                    # 0x7bc
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1127481344              # float 1.800000e+02
	.long	1127481344              # float 1.800000e+02
	.long	1127481344              # float 1.800000e+02
	.long	1127481344              # float 1.800000e+02
	.long	3258187776              # float -4.500000e+01
	.long	0                       # float 0.000000e+00
	.long	1099956224              # float 1.800000e+01
	.long	0                       # float 0.000000e+00
	.long	1099956224              # float 1.800000e+01
	.long	0                       # float 0.000000e+00
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
	.quad	lj250_print_page
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
	.size	gs_lj250_device, 18472

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"paintjet"
	.size	.L.str.2, 9

	.type	gs_paintjet_device,@object # @gs_paintjet_device
	.section	.rodata,"a",@progbits
	.globl	gs_paintjet_device
	.align	8
gs_paintjet_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	paintjet_procs
	.quad	.L.str.2
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
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	255                     # 0xff
	.zero	1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
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
	.long	1530                    # 0x5fa
	.long	1980                    # 0x7bc
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1127481344              # float 1.800000e+02
	.long	1127481344              # float 1.800000e+02
	.long	1127481344              # float 1.800000e+02
	.long	1127481344              # float 1.800000e+02
	.long	3258187776              # float -4.500000e+01
	.long	0                       # float 0.000000e+00
	.long	1099956224              # float 1.800000e+01
	.long	0                       # float 0.000000e+00
	.long	1099956224              # float 1.800000e+01
	.long	0                       # float 0.000000e+00
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
	.quad	paintjet_print_page
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
	.size	gs_paintjet_device, 18472

	.type	pjetxl_procs,@object    # @pjetxl_procs
	.data
	.align	8
pjetxl_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	gdev_pcl_3bit_map_rgb_color
	.quad	gdev_pcl_3bit_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_get_params
	.quad	gdev_prn_put_params
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
	.quad	gdev_prn_dev_spec_op
	.quad	0
	.quad	gx_default_get_profile
	.quad	gx_default_set_graphics_type_tag
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	pjetxl_procs, 584

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"pjetxl"
	.size	.L.str.3, 7

	.type	gs_pjetxl_device,@object # @gs_pjetxl_device
	.section	.rodata,"a",@progbits
	.globl	gs_pjetxl_device
	.align	8
gs_pjetxl_device:
	.long	18472                   # 0x4828
	.zero	4
	.quad	pjetxl_procs
	.quad	.L.str.3
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
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	255                     # 0xff
	.zero	1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
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
	.long	1530                    # 0x5fa
	.long	1980                    # 0x7bc
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1127481344              # float 1.800000e+02
	.long	1127481344              # float 1.800000e+02
	.long	1127481344              # float 1.800000e+02
	.long	1127481344              # float 1.800000e+02
	.long	3258187776              # float -4.500000e+01
	.long	0                       # float 0.000000e+00
	.long	1099956224              # float 1.800000e+01
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
	.long	0                       # float 0.000000e+00
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
	.quad	pjetxl_print_page
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
	.size	gs_pjetxl_device, 18472

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"\033%8"
	.size	.L.str.4, 4

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"\033*rB"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\033*r0B\f\033%@"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"paintjet_print_page(data)"
	.size	.L.str.7, 26

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"paintjet_print_page(plane_data)"
	.size	.L.str.8, 32

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\033*t%dR"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\033*r%dS"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\033*r%dU"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"\033&a0H\033&a%dV"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"\033*b1M"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"\033*r1A"
	.size	.L.str.14, 6

	.type	pj_common_print_page.spr40,@object # @pj_common_print_page.spr40
	.section	.rodata,"a",@progbits
	.align	16
pj_common_print_page.spr40:
	.quad	0                       # 0x0
	.quad	64                      # 0x40
	.quad	16384                   # 0x4000
	.quad	16448                   # 0x4040
	.quad	4194304                 # 0x400000
	.quad	4194368                 # 0x400040
	.quad	4210688                 # 0x404000
	.quad	4210752                 # 0x404040
	.size	pj_common_print_page.spr40, 64

	.type	pj_common_print_page.spr8,@object # @pj_common_print_page.spr8
	.align	16
pj_common_print_page.spr8:
	.quad	0                       # 0x0
	.quad	8                       # 0x8
	.quad	2048                    # 0x800
	.quad	2056                    # 0x808
	.quad	524288                  # 0x80000
	.quad	524296                  # 0x80008
	.quad	526336                  # 0x80800
	.quad	526344                  # 0x80808
	.size	pj_common_print_page.spr8, 64

	.type	pj_common_print_page.spr2,@object # @pj_common_print_page.spr2
	.align	16
pj_common_print_page.spr2:
	.quad	0                       # 0x0
	.quad	2                       # 0x2
	.quad	512                     # 0x200
	.quad	514                     # 0x202
	.quad	131072                  # 0x20000
	.quad	131074                  # 0x20002
	.quad	131584                  # 0x20200
	.quad	131586                  # 0x20202
	.size	pj_common_print_page.spr2, 64

	.type	.L.str.15,@object       # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"\033&a+%dV"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"\033*b%d%c"
	.size	.L.str.16, 8

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"\033*r0B\f"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"\033E"
	.size	.L.str.19, 3

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"\033*rC"
	.size	.L.str.20, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
