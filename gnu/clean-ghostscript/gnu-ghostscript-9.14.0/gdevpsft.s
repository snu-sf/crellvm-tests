	.text
	.file	"gdevpsft.bc"
	.globl	psf_write_truetype_font
	.align	16, 0x90
	.type	psf_write_truetype_font,@function
psf_write_truetype_font:                # @psf_write_truetype_font
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
	subq	$6216, %rsp             # imm = 0x1848
.Ltmp6:
	.cfi_def_cfa_offset 6272
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
	movq	%r9, %r14
	movl	%edx, %r13d
	movq	%rsi, %r12
	movq	%rdi, %r15
	movl	%r8d, 12(%rsp)
	xorl	%ebx, %ebx
	testq	%rcx, %rcx
	je	.LBB0_1
# BB#2:                                 # %if.then
	movl	%r8d, %edx
	shlq	$3, %rdx
	leaq	16(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	leaq	12(%rsp), %rsi
	movl	$768, %edx              # imm = 0x300
	movl	$768, %ecx              # imm = 0x300
	movq	%rbp, %rdi
	movq	%r12, %r8
	callq	psf_add_subset_pieces
	testl	%eax, %eax
	js	.LBB0_5
# BB#3:                                 # %if.end
	movq	%r14, (%rsp)            # 8-byte Spill
	movl	12(%rsp), %esi
	movq	%rbp, %rdi
	callq	psf_sort_glyphs
	movl	%eax, %r8d
	movl	%r8d, 12(%rsp)
	jmp	.LBB0_4
.LBB0_1:
	movq	%r14, (%rsp)            # 8-byte Spill
	xorl	%ebp, %ebp
.LBB0_4:                                # %if.end.6
	testq	%rbp, %rbp
	cmovnel	%r8d, %ebx
	leaq	6168(%rsp), %r14
	movl	$1, %r8d
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	movl	%ebx, %ecx
	callq	psf_enumerate_list_begin
	andl	$-8193, %r13d           # imm = 0xFFFFFFFFFFFFDFFF
	movq	%r15, %rdi
	movq	%r12, %rsi
	movl	%r13d, %edx
	movq	%r14, %rcx
	movq	(%rsp), %r8             # 8-byte Reload
	callq	psf_write_truetype_data
.LBB0_5:                                # %cleanup.11
	addq	$6216, %rsp             # imm = 0x1848
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	psf_write_truetype_font, .Lfunc_end0-psf_write_truetype_font
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI1_1:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	-4616189618054758400    # double -1.000000e+00
.LCPI1_2:
	.zero	16
	.text
	.align	16, 0x90
	.type	psf_write_truetype_data,@function
psf_write_truetype_data:                # @psf_write_truetype_data
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
	pushq	%r13
.Ltmp16:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp17:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 56
	subq	$2680, %rsp             # imm = 0xA78
.Ltmp19:
	.cfi_def_cfa_offset 2736
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%r8, %rbx
	movq	%rcx, 288(%rsp)         # 8-byte Spill
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	%rdi, %rbp
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 1536(%rsp)
	callq	stell
	movq	%rax, 256(%rsp)         # 8-byte Spill
	leaq	336(%rsp), %rdi
	xorl	%esi, %esi
	movl	$36, %edx
	callq	memset
	movq	$0, 376(%rsp)
	testq	%rbx, %rbx
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	%rbp, 304(%rsp)         # 8-byte Spill
	movq	(%rbx), %rax
	movq	%rax, 240(%rsp)         # 8-byte Spill
	addq	$8, %rbx
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	movq	%rbp, 304(%rsp)         # 8-byte Spill
	leaq	324(%r14), %rax
	movq	%rax, 240(%rsp)         # 8-byte Spill
	leaq	372(%r14), %rbx
.LBB1_3:                                # %do.body
	movl	(%rbx), %eax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	leaq	2212(%rsp), %rcx
	xorl	%esi, %esi
	movl	$12, %edx
	movq	%r14, %rdi
	movq	%r14, 328(%rsp)         # 8-byte Spill
	callq	gs_type42_read_data
	testl	%eax, %eax
	js	.LBB1_272
# BB#4:                                 # %do.end
	leaq	2212(%rsp), %rdi
	callq	get_u32_msb
	xorl	%ecx, %ecx
	movq	%rcx, 272(%rsp)         # 8-byte Spill
	cmpq	$1953784678, %rax       # imm = 0x74746366
	movl	$0, %ebp
	jne	.LBB1_7
# BB#5:                                 # %do.body.25
	leaq	2212(%rsp), %rcx
	movl	$12, %esi
	movl	$4, %edx
	movq	328(%rsp), %rdi         # 8-byte Reload
	callq	gs_type42_read_data
	testl	%eax, %eax
	js	.LBB1_272
# BB#6:                                 # %do.end.33
	leaq	2212(%rsp), %rbx
	movq	%rbx, %rdi
	callq	get_u32_msb
	movq	%rax, %rbp
	movslq	%ebp, %rsi
	movl	$12, %edx
	movq	328(%rsp), %rdi         # 8-byte Reload
	movq	%rbx, %rcx
	callq	gs_type42_read_data
	testl	%eax, %eax
	js	.LBB1_272
.LBB1_7:                                # %if.end.47
	movl	%r15d, %eax
	andl	$8192, %eax             # imm = 0x2000
	movl	%eax, 280(%rsp)         # 4-byte Spill
	movl	%r15d, %ecx
	andl	$4096, %ecx             # imm = 0x1000
	movl	%ecx, 216(%rsp)         # 4-byte Spill
	movl	%r15d, %edx
	shrl	%edx
	shrl	$13, %eax
	movl	%ecx, %esi
	shrl	$12, %esi
	movl	%r15d, %ecx
	andl	$16, %ecx
	movl	%ecx, 212(%rsp)         # 4-byte Spill
	notl	%edx
	orl	%eax, %esi
	andl	$1, %edx
	movl	%edx, 296(%rsp)         # 4-byte Spill
	movzbl	2216(%rsp), %ecx
	shll	$8, %ecx
	movzbl	2217(%rsp), %eax
	orl	%ecx, %eax
	je	.LBB1_8
# BB#17:                                # %for.body.lr.ph
	movl	%r15d, %ecx
	movl	%r15d, 156(%rsp)        # 4-byte Spill
	andl	$8193, %ecx             # imm = 0x2001
	movl	%ecx, 176(%rsp)         # 4-byte Spill
	movl	%eax, %eax
	movq	%rax, 320(%rsp)         # 8-byte Spill
	addq	$12, %rbp
	movl	$86, %eax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 272(%rsp)         # 8-byte Spill
	leaq	2576(%rsp), %r13
	movl	$0, 264(%rsp)           # 4-byte Folded Spill
	movl	$0, %r12d
	movl	$0, 224(%rsp)           # 4-byte Folded Spill
	movl	%esi, 312(%rsp)         # 4-byte Spill
	movl	$0, %eax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	movl	%esi, 236(%rsp)         # 4-byte Spill
	movl	%esi, 188(%rsp)         # 4-byte Spill
	movl	%esi, 200(%rsp)         # 4-byte Spill
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB1_18:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$-13, %eax
	cmpl	$40, %r15d
	je	.LBB1_272
# BB#19:                                # %do.body.62
                                        #   in Loop: Header=BB1_18 Depth=1
	movq	%rbp, %rsi
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %rsi
	movl	$16, %edx
	movq	328(%rsp), %rdi         # 8-byte Reload
	movq	%r13, %rcx
	callq	gs_type42_read_data
	testl	%eax, %eax
	js	.LBB1_272
# BB#20:                                # %do.end.73
                                        #   in Loop: Header=BB1_18 Depth=1
	leaq	2584(%rsp), %rdi
	callq	get_u32_msb
	movq	%rax, %r14
	leaq	2588(%rsp), %rdi
	callq	get_u32_msb
	movq	%rax, %rbx
	movl	%r15d, %eax
	shll	$4, %eax
	leaq	1568(%rsp,%rax), %rdi
	movl	$16, %edx
	movq	%r13, %rsi
	callq	memcpy
	movq	%r13, %rdi
	callq	get_u32_msb
	cmpq	$1751474531, %rax       # imm = 0x68656163
	jle	.LBB1_21
# BB#36:                                # %do.end.73
                                        #   in Loop: Header=BB1_18 Depth=1
	cmpq	$1835104367, %rax       # imm = 0x6D61786F
	jg	.LBB1_45
# BB#37:                                # %do.end.73
                                        #   in Loop: Header=BB1_18 Depth=1
	cmpq	$1801810541, %rax       # imm = 0x6B65726D
	jg	.LBB1_41
# BB#38:                                # %do.end.73
                                        #   in Loop: Header=BB1_18 Depth=1
	cmpq	$1751474532, %rax       # imm = 0x68656164
	je	.LBB1_58
# BB#39:                                # %do.end.73
                                        #   in Loop: Header=BB1_18 Depth=1
	cmpq	$1751672161, %rax       # imm = 0x68686561
	jne	.LBB1_40
# BB#68:                                # %sw.bb.154
                                        #   in Loop: Header=BB1_18 Depth=1
	movl	$1, 376(%rsp)
	movl	$1, 264(%rsp)           # 4-byte Folded Spill
	jmp	.LBB1_51
	.align	16, 0x90
.LBB1_21:                               # %do.end.73
                                        #   in Loop: Header=BB1_18 Depth=1
	cmpq	$1668707359, %rax       # imm = 0x6376741F
	jle	.LBB1_22
# BB#29:                                # %do.end.73
                                        #   in Loop: Header=BB1_18 Depth=1
	cmpq	$1734633841, %rax       # imm = 0x67646971
	jg	.LBB1_33
# BB#30:                                # %do.end.73
                                        #   in Loop: Header=BB1_18 Depth=1
	cmpq	$1668707360, %rax       # imm = 0x63767420
	je	.LBB1_51
# BB#31:                                # %do.end.73
                                        #   in Loop: Header=BB1_18 Depth=1
	cmpq	$1718642541, %rax       # imm = 0x6670676D
	je	.LBB1_51
# BB#32:                                # %do.end.73
                                        #   in Loop: Header=BB1_18 Depth=1
	cmpq	$1734439792, %rax       # imm = 0x67617370
	jne	.LBB1_44
	jmp	.LBB1_51
	.align	16, 0x90
.LBB1_45:                               # %do.end.73
                                        #   in Loop: Header=BB1_18 Depth=1
	cmpq	$1886545263, %rax       # imm = 0x7072656F
	jg	.LBB1_50
# BB#46:                                # %do.end.73
                                        #   in Loop: Header=BB1_18 Depth=1
	cmpq	$1835104368, %rax       # imm = 0x6D617870
	je	.LBB1_61
# BB#47:                                # %do.end.73
                                        #   in Loop: Header=BB1_18 Depth=1
	cmpq	$1851878757, %rax       # imm = 0x6E616D65
	jne	.LBB1_48
# BB#64:                                # %sw.bb.140
                                        #   in Loop: Header=BB1_18 Depth=1
	movl	$1, %eax
	cmpl	$0, 280(%rsp)           # 4-byte Folded Reload
	jmp	.LBB1_56
	.align	16, 0x90
.LBB1_22:                               # %do.end.73
                                        #   in Loop: Header=BB1_18 Depth=1
	cmpq	$1161974594, %rax       # imm = 0x45425342
	jle	.LBB1_23
# BB#25:                                # %do.end.73
                                        #   in Loop: Header=BB1_18 Depth=1
	cmpq	$1161974595, %rax       # imm = 0x45425343
	je	.LBB1_67
# BB#26:                                # %do.end.73
                                        #   in Loop: Header=BB1_18 Depth=1
	cmpq	$1330851634, %rax       # imm = 0x4F532F32
	jne	.LBB1_27
# BB#65:                                # %sw.bb.144
                                        #   in Loop: Header=BB1_18 Depth=1
	cmpl	$0, 280(%rsp)           # 4-byte Folded Reload
	jne	.LBB1_67
# BB#66:                                # %cleanup
                                        #   in Loop: Header=BB1_18 Depth=1
	movq	%rbx, %rax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	andq	%rcx, %rax
	cmpq	$96, %rax
	movl	$1, 188(%rsp)           # 4-byte Folded Spill
	movl	$-10, %eax
	movq	%rbx, 192(%rsp)         # 8-byte Spill
	movq	%r14, 160(%rsp)         # 8-byte Spill
	jbe	.LBB1_67
	jmp	.LBB1_272
.LBB1_41:                               # %do.end.73
                                        #   in Loop: Header=BB1_18 Depth=1
	cmpq	$1801810542, %rax       # imm = 0x6B65726E
	je	.LBB1_51
# BB#42:                                # %do.end.73
                                        #   in Loop: Header=BB1_18 Depth=1
	cmpq	$1819239265, %rax       # imm = 0x6C6F6361
	je	.LBB1_67
# BB#43:                                # %do.end.73
                                        #   in Loop: Header=BB1_18 Depth=1
	cmpq	$1819239288, %rax       # imm = 0x6C6F6378
	je	.LBB1_67
	jmp	.LBB1_44
.LBB1_33:                               # %do.end.73
                                        #   in Loop: Header=BB1_18 Depth=1
	cmpq	$1734633842, %rax       # imm = 0x67646972
	je	.LBB1_67
# BB#34:                                # %do.end.73
                                        #   in Loop: Header=BB1_18 Depth=1
	cmpq	$1735162214, %rax       # imm = 0x676C7966
	je	.LBB1_67
# BB#35:                                # %do.end.73
                                        #   in Loop: Header=BB1_18 Depth=1
	cmpq	$1735162232, %rax       # imm = 0x676C7978
	jne	.LBB1_44
	jmp	.LBB1_67
.LBB1_50:                               # %do.end.73
                                        #   in Loop: Header=BB1_18 Depth=1
	cmpq	$1886545264, %rax       # imm = 0x70726570
	je	.LBB1_51
# BB#52:                                # %do.end.73
                                        #   in Loop: Header=BB1_18 Depth=1
	cmpq	$1986553185, %rax       # imm = 0x76686561
	jne	.LBB1_53
# BB#69:                                # %sw.bb.156
                                        #   in Loop: Header=BB1_18 Depth=1
	movl	$1, 380(%rsp)
	movl	$1, %eax
	movq	%rax, 272(%rsp)         # 8-byte Spill
	jmp	.LBB1_51
.LBB1_23:                               # %do.end.73
                                        #   in Loop: Header=BB1_18 Depth=1
	cmpq	$1161970772, %rax       # imm = 0x45424454
	je	.LBB1_67
# BB#24:                                # %do.end.73
                                        #   in Loop: Header=BB1_18 Depth=1
	cmpq	$1161972803, %rax       # imm = 0x45424C43
	jne	.LBB1_44
	jmp	.LBB1_67
.LBB1_58:                               # %sw.bb
                                        #   in Loop: Header=BB1_18 Depth=1
	movl	$-10, %eax
	cmpl	$54, %ebx
	jb	.LBB1_272
# BB#59:                                # %if.end.96
                                        #   in Loop: Header=BB1_18 Depth=1
	movl	$54, %edx
	movq	328(%rsp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	leaq	2224(%rsp), %rcx
	callq	gs_type42_read_data
	testl	%eax, %eax
	js	.LBB1_272
# BB#60:                                # %do.end.104
                                        #   in Loop: Header=BB1_18 Depth=1
	movl	$54, %edx
	leaq	1472(%rsp), %rdi
	leaq	2224(%rsp), %rsi
	callq	memcpy
	jmp	.LBB1_67
.LBB1_40:                               # %do.end.73
                                        #   in Loop: Header=BB1_18 Depth=1
	cmpq	$1752003704, %rax       # imm = 0x686D7478
	jne	.LBB1_44
	jmp	.LBB1_54
.LBB1_61:                               # %do.body.116
                                        #   in Loop: Header=BB1_18 Depth=1
	movq	%rbx, %rcx
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %rcx
	movl	$-28, %eax
	cmpq	$54, %rcx
	ja	.LBB1_272
# BB#62:                                # %if.end.121
                                        #   in Loop: Header=BB1_18 Depth=1
	movq	328(%rsp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	movl	%ebx, %edx
	leaq	2224(%rsp), %rcx
	callq	gs_type42_read_data
	testl	%eax, %eax
	js	.LBB1_272
# BB#63:                                # %do.end.129
                                        #   in Loop: Header=BB1_18 Depth=1
	movzwl	2228(%rsp), %eax
	bswapl	%eax
	shrl	$16, %eax
	movl	%eax, 224(%rsp)         # 4-byte Spill
	movq	%r14, 168(%rsp)         # 8-byte Spill
	jmp	.LBB1_51
.LBB1_48:                               # %do.end.73
                                        #   in Loop: Header=BB1_18 Depth=1
	cmpq	$1886352244, %rax       # imm = 0x706F7374
	jne	.LBB1_44
# BB#49:                                # %sw.bb.153
                                        #   in Loop: Header=BB1_18 Depth=1
	movl	$1, 236(%rsp)           # 4-byte Folded Spill
	.align	16, 0x90
.LBB1_51:                               #   in Loop: Header=BB1_18 Depth=1
	movl	296(%rsp), %eax         # 4-byte Reload
	movl	312(%rsp), %ecx         # 4-byte Reload
	jmp	.LBB1_57
.LBB1_27:                               # %do.end.73
                                        #   in Loop: Header=BB1_18 Depth=1
	cmpq	$1668112752, %rax       # imm = 0x636D6170
	jne	.LBB1_44
# BB#28:                                # %sw.bb.110
                                        #   in Loop: Header=BB1_18 Depth=1
	movl	$1, %ecx
	cmpl	$0, 176(%rsp)           # 4-byte Folded Reload
	movl	296(%rsp), %eax         # 4-byte Reload
	jne	.LBB1_67
	jmp	.LBB1_57
.LBB1_53:                               # %do.end.73
                                        #   in Loop: Header=BB1_18 Depth=1
	cmpq	$1986884728, %rax       # imm = 0x766D7478
	jne	.LBB1_44
.LBB1_54:                               # %sw.bb.158
                                        #   in Loop: Header=BB1_18 Depth=1
	cmpl	$0, 212(%rsp)           # 4-byte Folded Reload
	jmp	.LBB1_55
.LBB1_44:                               # %sw.default
                                        #   in Loop: Header=BB1_18 Depth=1
	cmpl	$0, 280(%rsp)           # 4-byte Folded Reload
.LBB1_55:                               # %sw.bb.158
                                        #   in Loop: Header=BB1_18 Depth=1
	movl	296(%rsp), %eax         # 4-byte Reload
.LBB1_56:                               # %sw.bb.158
                                        #   in Loop: Header=BB1_18 Depth=1
	movl	312(%rsp), %ecx         # 4-byte Reload
	jne	.LBB1_67
.LBB1_57:                               # %sw.epilog
                                        #   in Loop: Header=BB1_18 Depth=1
	incl	%r15d
	movl	%eax, 296(%rsp)         # 4-byte Spill
	movl	%ecx, 312(%rsp)         # 4-byte Spill
.LBB1_67:                               # %for.inc
                                        #   in Loop: Header=BB1_18 Depth=1
	incq	%r12
	addq	$16, %rbp
	cmpq	320(%rsp), %r12         # 8-byte Folded Reload
	jb	.LBB1_18
	jmp	.LBB1_9
.LBB1_8:
	movl	$86, %eax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movl	%r15d, 156(%rsp)        # 4-byte Spill
	movl	$0, 264(%rsp)           # 4-byte Folded Spill
	movl	$0, 224(%rsp)           # 4-byte Folded Spill
	movl	%esi, 312(%rsp)         # 4-byte Spill
	xorl	%eax, %eax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	movl	%esi, 236(%rsp)         # 4-byte Spill
	movl	%esi, 188(%rsp)         # 4-byte Spill
	movl	%esi, 200(%rsp)         # 4-byte Spill
	xorl	%r15d, %r15d
.LBB1_9:                                # %for.cond.171.preheader
	leaq	1560(%rsp), %rsi
	movq	288(%rsp), %rdi         # 8-byte Reload
	callq	psf_enumerate_glyphs_next
	xorl	%ecx, %ecx
	movq	%rcx, 176(%rsp)         # 8-byte Spill
	cmpl	$1, %eax
	movl	$0, %eax
	movq	%rax, 320(%rsp)         # 8-byte Spill
	movl	$0, %r13d
	movl	$0, %eax
	movq	%rax, 280(%rsp)         # 8-byte Spill
	je	.LBB1_15
# BB#10:                                # %for.body.175.lr.ph
	xorl	%eax, %eax
	movq	%rax, 320(%rsp)         # 8-byte Spill
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	leaq	-2147483647(%rax), %r12
	leaq	2224(%rsp), %rbx
	leaq	1560(%rsp), %r14
	xorl	%r13d, %r13d
	xorl	%eax, %eax
	movq	%rax, 280(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB1_11:                               # %for.body.175
                                        # =>This Inner Loop Header: Depth=1
	movq	1560(%rsp), %rbp
	cmpq	%r12, %rbp
	jb	.LBB1_70
# BB#12:                                # %if.end.179
                                        #   in Loop: Header=BB1_11 Depth=1
	andl	$1073741823, %ebp       # imm = 0x3FFFFFFF
	movq	328(%rsp), %rdi         # 8-byte Reload
	movq	16(%rdi), %rax
	movq	%rax, 2264(%rsp)
	movl	%ebp, %esi
	movq	%rbx, %rdx
	callq	*472(%rdi)
	testl	%eax, %eax
	js	.LBB1_14
# BB#13:                                # %if.then.190
                                        #   in Loop: Header=BB1_11 Depth=1
	movl	2232(%rsp), %eax
	leal	1(%rax), %ecx
	andl	$-2, %ecx
	movl	%ebp, %edx
	movq	320(%rsp), %rsi         # 8-byte Reload
	cmpq	%rdx, %rsi
	cmovbeq	%rdx, %rsi
	movq	%rsi, 320(%rsp)         # 8-byte Spill
	leal	(%r13,%rcx), %r13d
	cmpl	%eax, %ecx
	setne	%al
	movzbl	%al, %eax
	addq	%rax, 280(%rsp)         # 8-byte Folded Spill
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	callq	gs_glyph_data_free
.LBB1_14:                               # %cleanup.210.thread
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	288(%rsp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	psf_enumerate_glyphs_next
	cmpl	$1, %eax
	jne	.LBB1_11
.LBB1_15:                               # %for.end.214
	cmpl	$0, 216(%rsp)           # 4-byte Folded Reload
	je	.LBB1_71
# BB#16:
	xorl	%eax, %eax
	movq	%rax, 280(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	224(%rsp), %ebx         # 4-byte Reload
	jmp	.LBB1_91
.LBB1_71:                               # %if.else.217
	movq	320(%rsp), %rax         # 8-byte Reload
	leaq	1(%rax), %rbp
	movl	224(%rsp), %ebx         # 4-byte Reload
	movl	%ebx, %eax
	xorl	%ecx, %ecx
	movq	%rcx, 176(%rsp)         # 8-byte Spill
	cmpq	%rax, %rbp
	jbe	.LBB1_72
# BB#73:                                # %if.then.222
	cmpl	$65536, %ebp            # imm = 0x10000
	jl	.LBB1_75
# BB#74:                                # %if.then.227
	movq	328(%rsp), %rbx         # 8-byte Reload
	movq	16(%rbx), %r14
	callq	gs_program_name
	movq	%rax, %r15
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	16(%rbx), %rdi
	movl	$.L.str.1, %esi
	xorl	%eax, %eax
	movl	%ebp, %edx
	callq	errprintf
	movl	$-28, %eax
	jmp	.LBB1_272
.LBB1_70:                               # %cleanup.210
	movl	$-10, %eax
	jmp	.LBB1_272
.LBB1_72:
	movl	%ebx, %ecx
	jmp	.LBB1_90
.LBB1_75:                               # %if.end.233
	movq	%rbp, 144(%rsp)         # 8-byte Spill
	xorl	%r12d, %r12d
	testl	%r15d, %r15d
	je	.LBB1_76
# BB#77:
	movl	%r15d, %ebx
.LBB1_78:                               # %for.body.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_79 Depth 2
	movl	%r12d, %eax
	shll	$4, %eax
	cltq
	leaq	1568(%rsp,%rax), %rbp
	leaq	1584(%rsp,%rax), %r14
	.align	16, 0x90
.LBB1_79:                               # %for.body.i
                                        #   Parent Loop BB1_78 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.2, %esi
	movl	$4, %edx
	movq	%rbp, %rdi
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB1_81
# BB#80:                                # %if.then.i
                                        #   in Loop: Header=BB1_79 Depth=2
	subl	%r12d, %ebx
	shll	$4, %ebx
	addl	$-16, %ebx
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memmove
	decl	%r15d
	cmpl	%r12d, %r15d
	movl	%r15d, %ebx
	ja	.LBB1_79
	jmp	.LBB1_82
.LBB1_81:                               # %if.else.i
                                        #   in Loop: Header=BB1_78 Depth=1
	incq	%r12
	cmpl	%r12d, %ebx
	ja	.LBB1_78
.LBB1_82:                               # %remove_table.exit
	xorl	%r12d, %r12d
	testl	%r15d, %r15d
	je	.LBB1_83
# BB#84:
	movl	%r15d, %ebx
.LBB1_85:                               # %for.body.lr.ph.i.11
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_86 Depth 2
	movl	%r12d, %eax
	shll	$4, %eax
	cltq
	leaq	1568(%rsp,%rax), %rbp
	leaq	1584(%rsp,%rax), %r14
	.align	16, 0x90
.LBB1_86:                               # %for.body.i.14
                                        #   Parent Loop BB1_85 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.3, %esi
	movl	$4, %edx
	movq	%rbp, %rdi
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB1_88
# BB#87:                                # %if.then.i.22
                                        #   in Loop: Header=BB1_86 Depth=2
	subl	%r12d, %ebx
	shll	$4, %ebx
	addl	$-16, %ebx
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memmove
	decl	%r15d
	cmpl	%r12d, %r15d
	movl	%r15d, %ebx
	ja	.LBB1_86
	jmp	.LBB1_89
.LBB1_88:                               # %if.else.i.25
                                        #   in Loop: Header=BB1_85 Depth=1
	incq	%r12
	cmpl	%r12d, %ebx
	ja	.LBB1_85
	jmp	.LBB1_89
.LBB1_76:
	xorl	%r15d, %r15d
	movq	144(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %eax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	jmp	.LBB1_90
.LBB1_83:
	xorl	%r15d, %r15d
.LBB1_89:
	movq	144(%rsp), %rcx         # 8-byte Reload
	movl	%ecx, %eax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	movl	224(%rsp), %ebx         # 4-byte Reload
.LBB1_90:                               # %if.end.241
	leal	4(,%rcx,4), %edx
	movl	%r13d, %eax
	movq	280(%rsp), %rcx         # 8-byte Reload
	subl	%ecx, %eax
	cmpl	$131068, %r13d          # imm = 0x1FFFC
	seta	%cl
	movzbl	%cl, %ecx
	movq	%rcx, 280(%rsp)         # 8-byte Spill
	cmovbel	%r13d, %eax
	xorl	$1, %ecx
	shrl	%cl, %edx
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	testl	%eax, %eax
	movl	$1, %ecx
	cmovnel	%eax, %ecx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
.LBB1_91:                               # %do.end.257
	movl	236(%rsp), %eax         # 4-byte Reload
	testl	%eax, %eax
	jne	.LBB1_109
# BB#92:                                # %if.then.259
	leaq	384(%rsp), %rdi
	xorl	%esi, %esi
	movl	$1040, %edx             # imm = 0x410
	callq	memset
	movl	156(%rsp), %eax         # 4-byte Reload
	testb	$4, %al
	jne	.LBB1_93
# BB#108:                               # %if.else.269
	movl	$32, 1420(%rsp)
	jmp	.LBB1_109
.LBB1_93:                               # %if.then.263
	movl	$34, 1420(%rsp)
	xorl	%ebx, %ebx
	leaq	2224(%rsp), %r14
	leaq	2576(%rsp), %r12
	movq	328(%rsp), %rbp         # 8-byte Reload
	.align	16, 0x90
.LBB1_94:                               # %for.body.i.28
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %edx
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*200(%rbp)
	movq	%rax, %r13
	movq	%rbp, %rdi
	movl	%ebx, %esi
	movq	%r14, %rdx
	movq	%r12, %rcx
	callq	mac_glyph_index
	testl	%eax, %eax
	js	.LBB1_272
# BB#95:                                # %if.end.i
                                        #   in Loop: Header=BB1_94 Depth=1
	movl	2576(%rsp), %eax
	testl	%eax, %eax
	je	.LBB1_97
# BB#96:                                # %if.then.6.i
                                        #   in Loop: Header=BB1_94 Depth=1
	movslq	1412(%rsp), %rcx
	movb	%bl, 384(%rsp,%rcx,4)
	sarl	$31, %eax
	movl	2232(%rsp), %ecx
	incl	%ecx
	andl	%eax, %ecx
	movslq	1412(%rsp), %rax
	movb	%cl, 385(%rsp,%rax,4)
	movslq	1412(%rsp), %rax
	movw	%r13w, 386(%rsp,%rax,4)
	incl	1412(%rsp)
.LBB1_97:                               # %for.inc.i
                                        #   in Loop: Header=BB1_94 Depth=1
	incq	%rbx
	cmpq	$256, %rbx              # imm = 0x100
	jl	.LBB1_94
# BB#98:                                # %for.end.i
	movslq	1412(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB1_99
# BB#100:                               # %if.then.28.i
	leaq	384(%rsp), %rdi
	movl	$4, %edx
	movl	$compare_post_glyphs, %ecx
	callq	qsort
	movl	1412(%rsp), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	movl	224(%rsp), %ebx         # 4-byte Reload
	jle	.LBB1_106
# BB#101:                               # %for.body.36.i.preheader
	xorl	%ecx, %ecx
	xorl	%eax, %eax
.LBB1_102:                              # %for.body.36.i
                                        # =>This Inner Loop Header: Depth=1
	testl	%ecx, %ecx
	je	.LBB1_104
# BB#103:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB1_102 Depth=1
	movzwl	382(%rsp,%rcx,4), %esi
	movzwl	386(%rsp,%rcx,4), %edi
	cmpl	%esi, %edi
	je	.LBB1_105
.LBB1_104:                              # %if.then.52.i
                                        #   in Loop: Header=BB1_102 Depth=1
	movzbl	385(%rsp,%rcx,4), %edx
	addl	%edx, 1420(%rsp)
	movslq	%eax, %rdx
	incl	%eax
	movl	384(%rsp,%rcx,4), %esi
	movl	%esi, 384(%rsp,%rdx,4)
	movl	1412(%rsp), %edx
.LBB1_105:                              # %for.inc.68.i
                                        #   in Loop: Header=BB1_102 Depth=1
	incq	%rcx
	movslq	%edx, %rsi
	cmpq	%rsi, %rcx
	jl	.LBB1_102
.LBB1_106:                              # %for.end.70.i
	movl	%eax, 1412(%rsp)
	decl	%eax
	cltq
	movzwl	386(%rsp,%rax,4), %eax
	incl	%eax
	movl	%eax, 1416(%rsp)
	jmp	.LBB1_107
.LBB1_99:                               # %for.end.if.end.80_crit_edge.i
	movl	1416(%rsp), %eax
	movl	224(%rsp), %ebx         # 4-byte Reload
.LBB1_107:                              # %compute_post.exit
	addl	%eax, %eax
	addl	%eax, 1420(%rsp)
.LBB1_109:                              # %if.end.272
	movl	%ebx, 224(%rsp)         # 4-byte Spill
	movl	212(%rsp), %ebp         # 4-byte Reload
	shrl	$4, %ebp
	leaq	1480(%rsp), %rbx
	xorl	%esi, %esi
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	memset
	movb	$0, 1522(%rsp)
	movq	280(%rsp), %rax         # 8-byte Reload
	movb	%al, 1523(%rsp)
	leaq	1526(%rsp), %rdi
	xorl	%esi, %esi
	movl	$2, %edx
	callq	memset
	leaq	1472(%rsp), %rdi
	callq	get_u32_msb
	movq	%rax, 112(%rsp)         # 8-byte Spill
	leaq	1476(%rsp), %rdi
	callq	get_u32_msb
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	%rbx, %rdi
	callq	get_u32_msb
	movq	%rax, 96(%rsp)          # 8-byte Spill
	leaq	1484(%rsp), %rdi
	callq	get_u32_msb
	movq	%rax, 88(%rsp)          # 8-byte Spill
	leaq	1488(%rsp), %rdi
	callq	get_u32_msb
	movq	%rax, 80(%rsp)          # 8-byte Spill
	leaq	1492(%rsp), %rdi
	callq	get_u32_msb
	movq	%rax, %r14
	leaq	1496(%rsp), %rdi
	callq	get_u32_msb
	movq	%rax, %r12
	leaq	1500(%rsp), %rdi
	callq	get_u32_msb
	movq	%rax, %r13
	leaq	1504(%rsp), %rdi
	callq	get_u32_msb
	movq	%rax, 144(%rsp)         # 8-byte Spill
	leaq	1508(%rsp), %rdi
	callq	get_u32_msb
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leaq	1512(%rsp), %rdi
	callq	get_u32_msb
	movq	%rax, 128(%rsp)         # 8-byte Spill
	leaq	1516(%rsp), %rdi
	callq	get_u32_msb
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leaq	1520(%rsp), %rdi
	callq	get_u32_msb
	movq	%rax, 136(%rsp)         # 8-byte Spill
	leaq	1524(%rsp), %rdi
	callq	get_u32_msb
	movq	%rax, 120(%rsp)         # 8-byte Spill
	movl	216(%rsp), %eax         # 4-byte Reload
	movl	%eax, %edx
	shrl	$11, %edx
	movq	272(%rsp), %rax         # 8-byte Reload
	addl	264(%rsp), %eax         # 4-byte Folded Reload
	negl	%ebp
	andl	%eax, %ebp
	movl	%ebp, 44(%rsp)          # 4-byte Spill
	cmpl	$0, 188(%rsp)           # 4-byte Folded Reload
	sete	%al
	movzbl	%al, %r8d
	cmpl	$0, 312(%rsp)           # 4-byte Folded Reload
	sete	%al
	movzbl	%al, %esi
	cmpl	$0, 296(%rsp)           # 4-byte Folded Reload
	sete	%al
	movzbl	%al, %ebx
	cmpl	$0, 236(%rsp)           # 4-byte Folded Reload
	sete	%al
	movzbl	%al, %edi
	xorl	$3, %edx
	leal	(%rdx,%r8), %ecx
	addl	%edi, %ecx
	addl	%ebx, %ecx
	addl	%esi, %ecx
	addl	%r15d, %ecx
	addl	%ebp, %ecx
	movl	$-13, %eax
	cmpl	$39, %ecx
	ja	.LBB1_272
# BB#110:                               # %if.end.323
	movl	%edi, 8(%rsp)           # 4-byte Spill
	movl	%ebx, 12(%rsp)          # 4-byte Spill
	movq	%r8, 16(%rsp)           # 8-byte Spill
	movl	%esi, 28(%rsp)          # 4-byte Spill
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	104(%rsp), %rax         # 8-byte Reload
	addq	112(%rsp), %rax         # 8-byte Folded Reload
	movq	96(%rsp), %rdx          # 8-byte Reload
	addq	%rax, %rdx
	movq	88(%rsp), %rax          # 8-byte Reload
	addq	%rdx, %rax
	movq	80(%rsp), %rdx          # 8-byte Reload
	addq	%rax, %rdx
	addq	%rdx, %r14
	addq	%r14, %r12
	addq	%r12, %r13
	movl	%ecx, %eax
	movl	%ecx, 40(%rsp)          # 4-byte Spill
	shll	$4, %eax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	leal	12(%rax), %eax
	movq	%rax, 264(%rsp)         # 8-byte Spill
	xorl	%ebx, %ebx
	testl	%r15d, %r15d
	movq	%rax, %rcx
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	je	.LBB1_113
# BB#111:
	leaq	-15(%rax), %r14
	movl	%r15d, %ebp
	movq	264(%rsp), %rcx         # 8-byte Reload
	.align	16, 0x90
.LBB1_112:                              # %for.body.330
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rax
	andq	%r14, %rax
	leaq	1580(%rsp,%rax), %rdi
	movq	%rcx, %r12
	callq	get_u32_msb
	movq	%r12, %rcx
	addq	$3, %rax
	andq	$-4, %rax
	addq	%rax, %rcx
	addq	$16, %rbx
	decl	%ebp
	jne	.LBB1_112
.LBB1_113:                              # %for.end.343
	movq	144(%rsp), %rdx         # 8-byte Reload
	addq	%r13, %rdx
	movl	%r15d, %eax
	shll	$4, %eax
	cmpl	$0, 216(%rsp)           # 4-byte Folded Reload
	leaq	1568(%rsp,%rax), %rbx
	je	.LBB1_115
# BB#114:
	movq	%rbx, %r12
	movq	%rcx, %rbp
	jmp	.LBB1_116
.LBB1_115:                              # %if.then.349
	movl	%ecx, 336(%rsp)
	movl	$.L.str.4, %esi
	movq	%rdx, 144(%rsp)         # 8-byte Spill
	movl	$4, %edx
	movq	%rbx, %rdi
	movq	%rcx, %r13
	callq	memcpy
	movb	$0, 4(%rbx)
	movb	$0, 5(%rbx)
	movb	$0, 6(%rbx)
	movb	$0, 7(%rbx)
	leaq	1073741824(%r13), %rax
	movq	%rax, %rcx
	shrq	$16, %rcx
	movq	%rax, %rdx
	shrq	$24, %rdx
	movb	%dl, 8(%rbx)
	movb	%cl, 9(%rbx)
	movb	%ah, 10(%rbx)  # NOREX
	movb	%al, 11(%rbx)
	movq	56(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, %eax
	shrl	$24, %eax
	movb	%al, 12(%rbx)
	movl	%ecx, %eax
	shrl	$16, %eax
	movb	%al, 13(%rbx)
	movb	%ch, 14(%rbx)  # NOREX
	movb	%cl, 15(%rbx)
	leal	3(%rcx), %ebp
	andl	$-4, %ebp
	leaq	(%r13,%rbp), %r14
	leaq	16(%rbx), %rdi
	movl	%r14d, 340(%rsp)
	movq	280(%rsp), %rax         # 8-byte Reload
	leaq	(,%rax,8), %rax
	leaq	1536(%rsp), %rcx
	orq	%rax, %rcx
	movq	(%rcx), %r12
	movl	$.L.str.5, %esi
	movl	$4, %edx
	callq	memcpy
	movq	%r12, %rax
	shrq	$16, %rax
	movq	%r12, %rcx
	movq	%r12, %rdx
	shrq	$24, %rcx
	movb	%cl, 20(%rbx)
	movb	%al, 21(%rbx)
	movb	%dh, 22(%rbx)  # NOREX
	movb	%dl, 23(%rbx)
	leaq	1073741824(%r13,%rbp), %rax
	movq	%rax, %rcx
	shrq	$16, %rcx
	movq	%rax, %rdx
	shrq	$24, %rdx
	movb	%dl, 24(%rbx)
	movq	144(%rsp), %rdx         # 8-byte Reload
	movb	%cl, 25(%rbx)
	movb	%ah, 26(%rbx)  # NOREX
	movb	%al, 27(%rbx)
	movq	48(%rsp), %rcx          # 8-byte Reload
	movl	%ecx, %eax
	shrl	$24, %eax
	movb	%al, 28(%rbx)
	movl	%ecx, %eax
	shrl	$16, %eax
	movb	%al, 29(%rbx)
	movb	%ch, 30(%rbx)  # NOREX
	movb	%cl, 31(%rbx)
	leal	3(%rcx), %ebp
	andl	$-4, %ebp
	addq	%r14, %rbp
	addq	$32, %rbx
	movq	%rbx, %r12
.LBB1_116:                              # %if.end.358
	movq	64(%rsp), %r13          # 8-byte Reload
	addq	%rdx, %r13
	cmpl	$0, 312(%rsp)           # 4-byte Folded Reload
	je	.LBB1_118
# BB#117:
	xorl	%eax, %eax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movl	236(%rsp), %r14d        # 4-byte Reload
	movq	%rbp, %rcx
	jmp	.LBB1_119
.LBB1_118:                              # %if.then.360
	movq	320(%rsp), %rax         # 8-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	leaq	-1073741823(%rcx,%rax), %r14
	leaq	2224(%rsp), %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	s_init
	movq	%rbx, %rdi
	callq	swrite_position_only
	xorl	%r8d, %r8d
	movq	%rbx, %rdi
	movq	328(%rsp), %rsi         # 8-byte Reload
	movq	%r14, %rdx
	movl	156(%rsp), %ecx         # 4-byte Reload
	callq	write_cmap
	movq	%rbx, %rdi
	callq	stell
	movq	%rax, %r14
	movq	%r14, 104(%rsp)         # 8-byte Spill
	movl	%ebp, 344(%rsp)
	movl	$.L.str.6, %esi
	movl	$4, %edx
	movq	%r12, %rbx
	movq	%rbx, %rdi
	callq	memcpy
	movb	$0, 4(%rbx)
	movb	$0, 5(%rbx)
	movb	$0, 6(%rbx)
	movb	$0, 7(%rbx)
	leaq	1073741824(%rbp), %rax
	movq	%rax, %rcx
	shrq	$16, %rcx
	movq	%rax, %rdx
	shrq	$24, %rdx
	movb	%dl, 8(%rbx)
	movb	%cl, 9(%rbx)
	movb	%ah, 10(%rbx)  # NOREX
	movb	%al, 11(%rbx)
	movq	%r14, %rcx
	movl	%ecx, %eax
	shrl	$24, %eax
	movb	%al, 12(%rbx)
	movl	%ecx, %eax
	shrl	$16, %eax
	movb	%al, 13(%rbx)
	movb	%ch, 14(%rbx)  # NOREX
	movb	%cl, 15(%rbx)
	movq	%rcx, %rax
	addq	$3, %rax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	leaq	-3(%rcx), %rcx
	andq	%rax, %rcx
	addq	%rcx, %rbp
	movq	%rbp, %rcx
	addq	$16, %rbx
	movq	%rbx, %r12
	movl	236(%rsp), %r14d        # 4-byte Reload
.LBB1_119:                              # %if.end.366
	movq	128(%rsp), %rdx         # 8-byte Reload
	addq	%r13, %rdx
	cmpl	$0, 296(%rsp)           # 4-byte Folded Reload
	je	.LBB1_121
# BB#120:
	movq	%r12, %rbp
	jmp	.LBB1_122
.LBB1_121:                              # %if.then.368
	movl	%ecx, 348(%rsp)
	movq	248(%rsp), %r13         # 8-byte Reload
	leal	18(%r13), %ebx
	movl	$.L.str.7, %esi
	movq	%rdx, 128(%rsp)         # 8-byte Spill
	movl	$4, %edx
	movq	%r12, %rbp
	movq	%rbp, %rdi
	movq	%rcx, %r12
	callq	memcpy
	movb	$0, 4(%rbp)
	movb	$0, 5(%rbp)
	movb	$0, 6(%rbp)
	movb	$0, 7(%rbp)
	leaq	1073741824(%r12), %rax
	movq	%rax, %rcx
	shrq	$16, %rcx
	movq	%rax, %rdx
	shrq	$24, %rdx
	movb	%dl, 8(%rbp)
	movq	128(%rsp), %rdx         # 8-byte Reload
	movb	%cl, 9(%rbp)
	movq	%r12, %rcx
	movb	%ah, 10(%rbp)  # NOREX
	movb	%al, 11(%rbp)
	movl	%ebx, %eax
	shrl	$24, %eax
	movb	%al, 12(%rbp)
	movl	%ebx, %eax
	shrl	$16, %eax
	movb	%al, 13(%rbp)
	movb	%bh, 14(%rbp)  # NOREX
	movb	%bl, 15(%rbp)
	leal	21(%r13), %eax
	andl	$-4, %eax
	addq	%rax, %rcx
	addq	$16, %rbp
.LBB1_122:                              # %if.end.373
	movq	72(%rsp), %rbx          # 8-byte Reload
	addq	%rdx, %rbx
	cmpl	$0, 200(%rsp)           # 4-byte Folded Reload
	jne	.LBB1_124
# BB#123:                               # %if.then.375
	movl	%ecx, 352(%rsp)
	movl	$.L.str.8, %esi
	movl	$4, %edx
	movq	%rbp, %rdi
	movq	%rcx, %r12
	callq	memcpy
	movb	$0, 4(%rbp)
	movb	$0, 5(%rbp)
	movb	$0, 6(%rbp)
	movb	$0, 7(%rbp)
	leaq	1073741824(%r12), %rax
	movq	%rax, %rcx
	shrq	$16, %rcx
	movq	%rax, %rdx
	shrq	$24, %rdx
	movb	%dl, 8(%rbp)
	movb	%cl, 9(%rbp)
	movq	%r12, %rcx
	movb	%ah, 10(%rbp)  # NOREX
	movb	%al, 11(%rbp)
	movq	192(%rsp), %rdx         # 8-byte Reload
	movl	%edx, %eax
	shrl	$24, %eax
	movb	%al, 12(%rbp)
	movl	%edx, %eax
	shrl	$16, %eax
	movb	%al, 13(%rbp)
	movb	%dh, 14(%rbp)  # NOREX
	movb	%dl, 15(%rbp)
	leal	3(%rdx), %eax
	andl	$-4, %eax
	addq	%rax, %rcx
	addq	$16, %rbp
.LBB1_124:                              # %if.end.379
	movq	120(%rsp), %rdx         # 8-byte Reload
	movq	136(%rsp), %rax         # 8-byte Reload
	addq	%rbx, %rax
	cmpl	$0, 212(%rsp)           # 4-byte Folded Reload
	je	.LBB1_133
# BB#125:                               # %for.cond.382.preheader
	movq	%rax, 136(%rsp)         # 8-byte Spill
	cmpl	$0, 376(%rsp)
	je	.LBB1_131
# BB#126:                               # %if.then.389
	movl	%ecx, 356(%rsp)
	movq	%rcx, 200(%rsp)         # 8-byte Spill
	movq	328(%rsp), %rax         # 8-byte Reload
	movl	512(%rax), %eax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, 272(%rsp)        # 8-byte Spill
	xorl	%r12d, %r12d
	movl	$-2147483648, %r13d     # imm = 0xFFFFFFFF80000000
	leaq	2224(%rsp), %r14
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB1_127:                              # %for.body.i.180
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	movq	328(%rsp), %rdi         # 8-byte Reload
	movl	%ebx, %esi
	movq	%r14, %rcx
	callq	*480(%rdi)
	testl	%eax, %eax
	js	.LBB1_129
# BB#128:                               # %if.end.i.181
                                        #   in Loop: Header=BB1_127 Depth=1
	movss	2232(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	272(%rsp), %xmm0        # 8-byte Folded Reload
	addsd	.LCPI1_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	cmpl	%r13d, %eax
	cmovnel	%ebx, %r12d
	movl	%eax, %r13d
.LBB1_129:                              # %cleanup.i.184
                                        #   in Loop: Header=BB1_127 Depth=1
	incl	%ebx
	movq	320(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %ebx
	jbe	.LBB1_127
# BB#130:                               # %size_mtx.exit
	leal	1(%r12), %eax
	movl	%eax, 1424(%rsp)
	movq	320(%rsp), %rbx         # 8-byte Reload
	movl	%ebx, %r14d
	subl	%r12d, %r14d
	addl	%r14d, %r14d
	leal	4(%r14,%r12,4), %r13d
	movl	%r13d, 1440(%rsp)
	movl	$.L.str.10, %esi
	movl	$4, %edx
	movq	%rbp, %rbx
	movq	%rbx, %rdi
	callq	memcpy
	movb	$0, 4(%rbx)
	movb	$0, 5(%rbx)
	movb	$0, 6(%rbx)
	movb	$0, 7(%rbx)
	movq	200(%rsp), %rbp         # 8-byte Reload
	leaq	1073741824(%rbp), %rax
	movq	%rax, %rcx
	shrq	$16, %rcx
	movq	%rax, %rdx
	shrq	$24, %rdx
	movb	%dl, 8(%rbx)
	movb	%cl, 9(%rbx)
	movq	%rbp, %rcx
	movq	%rbx, %rbp
	movb	%ah, 10(%rbp)  # NOREX
	movb	%al, 11(%rbp)
	movl	%r13d, %edx
	movl	%edx, %eax
	shrl	$24, %eax
	movb	%al, 12(%rbp)
	movl	%edx, %eax
	shrl	$16, %eax
	movb	%al, 13(%rbp)
	movb	%dh, 14(%rbp)  # NOREX
	movb	%dl, 15(%rbp)
	leal	7(%r14,%r12,4), %eax
	andl	$-4, %eax
	addq	%rax, %rcx
	addq	$16, %rbp
.LBB1_131:                              # %for.inc.403
	cmpl	$0, 380(%rsp)
	je	.LBB1_132
# BB#273:                               # %if.then.389.1
	movl	%ecx, 360(%rsp)
	movq	%rcx, 200(%rsp)         # 8-byte Spill
	xorl	%r12d, %r12d
	xorl	%eax, %eax
	movq	328(%rsp), %rcx         # 8-byte Reload
	subl	512(%rcx), %eax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, 272(%rsp)        # 8-byte Spill
	movl	$-2147483648, %r13d     # imm = 0xFFFFFFFF80000000
	leaq	2224(%rsp), %r14
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB1_274:                              # %for.body.i.180.1
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %edx
	movq	328(%rsp), %rdi         # 8-byte Reload
	movl	%ebx, %esi
	movq	%r14, %rcx
	callq	*480(%rdi)
	testl	%eax, %eax
	js	.LBB1_276
# BB#275:                               # %if.end.i.181.1
                                        #   in Loop: Header=BB1_274 Depth=1
	movss	2236(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	272(%rsp), %xmm0        # 8-byte Folded Reload
	addsd	.LCPI1_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	cmpl	%r13d, %eax
	cmovnel	%ebx, %r12d
	movl	%eax, %r13d
.LBB1_276:                              # %cleanup.i.184.1
                                        #   in Loop: Header=BB1_274 Depth=1
	incl	%ebx
	movq	320(%rsp), %rax         # 8-byte Reload
	cmpl	%eax, %ebx
	jbe	.LBB1_274
# BB#277:                               # %size_mtx.exit.1
	leal	1(%r12), %eax
	movl	%eax, 1448(%rsp)
	movq	320(%rsp), %rbx         # 8-byte Reload
	movl	%ebx, %r14d
	subl	%r12d, %r14d
	addl	%r14d, %r14d
	leal	4(%r14,%r12,4), %r13d
	movl	%r13d, 1464(%rsp)
	movl	$.L.str.9, %esi
	movl	$4, %edx
	movq	%rbp, %rbx
	movq	%rbx, %rdi
	callq	memcpy
	movb	$0, 4(%rbx)
	movb	$0, 5(%rbx)
	movb	$0, 6(%rbx)
	movb	$0, 7(%rbx)
	movq	200(%rsp), %rbp         # 8-byte Reload
	leaq	1073741824(%rbp), %rax
	movq	%rax, %rcx
	shrq	$16, %rcx
	movq	%rax, %rdx
	shrq	$24, %rdx
	movb	%dl, 8(%rbx)
	movb	%cl, 9(%rbx)
	movq	%rbp, %rcx
	movq	%rbx, %rbp
	movb	%ah, 10(%rbp)  # NOREX
	movb	%al, 11(%rbp)
	movl	%r13d, %edx
	movl	%edx, %eax
	shrl	$24, %eax
	movb	%al, 12(%rbp)
	movl	%edx, %eax
	shrl	$16, %eax
	movb	%al, 13(%rbp)
	movb	%dh, 14(%rbp)  # NOREX
	movb	%dl, 15(%rbp)
	leal	7(%r14,%r12,4), %eax
	andl	$-4, %eax
	addq	%rax, %rcx
	addq	$16, %rbp
.LBB1_132:
	movl	236(%rsp), %r14d        # 4-byte Reload
	movq	120(%rsp), %rdx         # 8-byte Reload
	movq	136(%rsp), %rax         # 8-byte Reload
.LBB1_133:                              # %if.end.406
	addq	%rax, %rdx
	testl	%r14d, %r14d
	je	.LBB1_135
# BB#134:
	movq	%rdx, %r12
	jmp	.LBB1_136
.LBB1_135:                              # %if.then.408
	movl	%ecx, 364(%rsp)
	movq	%rdx, %r12
	movl	1420(%rsp), %ebx
	movl	$.L.str.11, %esi
	movl	$4, %edx
	movq	%rbp, %rdi
	movq	%rcx, %r13
	callq	memcpy
	movb	$0, 4(%rbp)
	movb	$0, 5(%rbp)
	movb	$0, 6(%rbp)
	movb	$0, 7(%rbp)
	leaq	1073741824(%r13), %rax
	movq	%rax, %rcx
	shrq	$16, %rcx
	movq	%rax, %rdx
	shrq	$24, %rdx
	movb	%dl, 8(%rbp)
	movb	%cl, 9(%rbp)
	movq	%r13, %rcx
	movb	%ah, 10(%rbp)  # NOREX
	movb	%al, 11(%rbp)
	movl	%ebx, %eax
	shrl	$24, %eax
	movb	%al, 12(%rbp)
	movl	%ebx, %eax
	shrl	$16, %eax
	movb	%al, 13(%rbp)
	movb	%bh, 14(%rbp)  # NOREX
	movb	%bl, 15(%rbp)
	addl	$3, %ebx
	andl	$-4, %ebx
	addq	%rbx, %rcx
	addq	$16, %rbp
.LBB1_136:                              # %if.end.414
	movl	%r14d, 236(%rsp)        # 4-byte Spill
	movl	%ecx, 368(%rsp)
	movl	$.L.str.12, %esi
	movl	$4, %edx
	movq	%rbp, %rdi
	movq	%rcx, %rbx
	callq	memcpy
	movq	%r12, %rdx
	movq	%rdx, %rax
	shrq	$16, %rax
	movq	%rdx, %rcx
	shrq	$24, %rcx
	movb	%cl, 4(%rbp)
	movb	%al, 5(%rbp)
	movb	%dh, 6(%rbp)  # NOREX
	movb	%dl, 7(%rbp)
	addq	$1073741824, %rbx       # imm = 0x40000000
	movq	%rbx, %rax
	shrq	$16, %rax
	movq	%rbx, %rcx
	shrq	$24, %rcx
	movb	%cl, 8(%rbp)
	movb	%al, 9(%rbp)
	movb	%bh, 10(%rbp)  # NOREX
	movb	%bl, 11(%rbp)
	movb	$0, 12(%rbp)
	movb	$0, 13(%rbp)
	movb	$0, 14(%rbp)
	movb	$54, 15(%rbp)
	movl	$psf_write_truetype_data.version, %esi
	movl	$4, %edx
	movq	304(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	callq	stream_write
	movl	40(%rsp), %eax          # 4-byte Reload
	movzbl	%ah, %esi  # NOREX
	movl	%eax, %ebp
	movq	%rbx, %rdi
	callq	spputc
	movzbl	%bpl, %esi
	movq	%rbx, %rdi
	movq	%rbx, %r14
	callq	spputc
	movl	%ebp, %edx
	movl	$-1, %ebx
	.align	16, 0x90
.LBB1_137:                              # %for.cond.420
                                        # =>This Inner Loop Header: Depth=1
	incl	%ebx
	movl	$1, %eax
	movb	%bl, %cl
	shll	%cl, %eax
	cmpl	%edx, %eax
	jbe	.LBB1_137
# BB#138:                               # %for.end.430
	decl	%ebx
	movl	$16, %eax
	movb	%bl, %cl
	shll	%cl, %eax
	movzbl	%ah, %esi  # NOREX
	movl	%eax, %r12d
	movq	%r14, %rbp
	movq	%rbp, %rdi
	movl	%edx, %r14d
	callq	spputc
	movzbl	%r12b, %esi
	movq	%rbp, %rdi
	callq	spputc
	movzbl	%bh, %esi  # NOREX
	movq	%rbp, %rdi
	callq	spputc
	movzbl	%bl, %esi
	movq	%rbp, %rdi
	callq	spputc
	movq	112(%rsp), %rbx         # 8-byte Reload
	subl	%r12d, %ebx
	movzbl	%bh, %esi  # NOREX
	movq	%rbp, %rdi
	callq	spputc
	movzbl	%bl, %esi
	movq	%rbp, %rdi
	callq	spputc
	movl	%r14d, %esi
	movq	%rsi, 200(%rsp)         # 8-byte Spill
	leaq	1568(%rsp), %rdi
	movl	$16, %edx
	movl	$compare_table_tags, %ecx
	callq	qsort
	testl	%r14d, %r14d
	je	.LBB1_184
# BB#139:                               # %for.body.443.lr.ph
	movq	32(%rsp), %rax          # 8-byte Reload
	addl	%eax, %r15d
	movq	16(%rsp), %rax          # 8-byte Reload
	addl	%eax, %r15d
	addl	8(%rsp), %r15d          # 4-byte Folded Reload
	addl	12(%rsp), %r15d         # 4-byte Folded Reload
	addl	28(%rsp), %r15d         # 4-byte Folded Reload
	addl	44(%rsp), %r15d         # 4-byte Folded Reload
	xorl	%r13d, %r13d
	leaq	2224(%rsp), %r14
	movl	$4294967295, %r12d      # imm = 0xFFFFFFFF
	.align	16, 0x90
.LBB1_140:                              # %for.body.443
                                        # =>This Inner Loop Header: Depth=1
	leaq	-15(%r12), %rcx
	movq	%rcx, 272(%rsp)         # 8-byte Spill
	movq	%r13, %rax
	andq	%rcx, %rax
	leaq	1568(%rsp,%rax), %rbp
	movl	$16, %edx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	memcpy
	movzbl	2232(%rsp), %eax
	cmpl	$63, %eax
	ja	.LBB1_155
# BB#141:                               # %if.then.455
                                        #   in Loop: Header=BB1_140 Depth=1
	addq	$12, %rbp
	movq	%rbp, %rdi
	callq	get_u32_msb
	movq	264(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rcx
	shrq	$16, %rcx
	movq	%rbx, %rdx
	shrq	$24, %rdx
	movb	%dl, 2232(%rsp)
	movb	%cl, 2233(%rsp)
	movb	%bh, 2234(%rsp)  # NOREX
	movb	%bl, 2235(%rsp)
	addq	$3, %rax
	leaq	-3(%r12), %rcx
	andq	%rax, %rcx
	addq	%rcx, %rbx
	movq	%rbx, 264(%rsp)         # 8-byte Spill
	jmp	.LBB1_156
	.align	16, 0x90
.LBB1_155:                              # %if.else.466
                                        #   in Loop: Header=BB1_140 Depth=1
	addb	$-64, %al
	movb	%al, 2232(%rsp)
.LBB1_156:                              # %if.end.471
                                        #   in Loop: Header=BB1_140 Depth=1
	movl	$16, %edx
	movq	304(%rsp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	stream_write
	addq	$16, %r13
	decl	%r15d
	jne	.LBB1_140
# BB#142:                               # %for.cond.477.preheader
	cmpl	$0, 40(%rsp)            # 4-byte Folded Reload
	je	.LBB1_184
# BB#143:                               # %for.body.480.lr.ph
	movq	192(%rsp), %r13         # 8-byte Reload
	movl	%r13d, %eax
	negl	%eax
	andl	$3, %eax
	movl	%eax, 144(%rsp)         # 4-byte Spill
	movl	%r13d, %eax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	cmpl	$96, %r13d
	movl	$96, %ecx
	cmovbq	%rax, %rcx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	movq	176(%rsp), %rax         # 8-byte Reload
	shrl	$8, %eax
	movl	%eax, 128(%rsp)         # 4-byte Spill
	xorl	%r13d, %r13d
	leaq	2576(%rsp), %rbp
	jmp	.LBB1_144
.LBB1_174:                              # %if.else.571
                                        #   in Loop: Header=BB1_144 Depth=1
	testl	%ebx, %ebx
	movq	%rbx, 264(%rsp)         # 8-byte Spill
	movq	328(%rsp), %r12         # 8-byte Reload
	je	.LBB1_182
# BB#175:                               # %while.body.lr.ph.i.351
                                        #   in Loop: Header=BB1_144 Depth=1
	movq	264(%rsp), %rbp         # 8-byte Reload
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %rbp
	.align	16, 0x90
.LBB1_176:                              # %while.body.i.357
                                        #   Parent Loop BB1_144 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, %rdi
	movq	%r14, %rsi
	movl	%ebp, %edx
	leaq	2224(%rsp), %rcx
	callq	*448(%r12)
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB1_182
# BB#177:                               # %cleanup.thread.i.365
                                        #   in Loop: Header=BB1_176 Depth=2
	cmovel	%ebp, %ebx
	movq	2224(%rsp), %rsi
	movq	%r15, %rdi
	movl	%ebx, %edx
	callq	stream_write
	movslq	%ebx, %rax
	subq	%rax, %rbp
	leaq	(%r14,%rax), %r14
	jne	.LBB1_176
	jmp	.LBB1_182
	.align	16, 0x90
.LBB1_144:                              # %for.body.480
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_172 Depth 2
                                        #     Child Loop BB1_176 Depth 2
                                        #     Child Loop BB1_180 Depth 2
                                        #     Child Loop BB1_152 Depth 2
                                        #     Child Loop BB1_164 Depth 2
	movq	%r13, %rax
	shlq	$4, %rax
	andq	272(%rsp), %rax         # 8-byte Folded Reload
	movzbl	1576(%rsp,%rax), %ecx
	cmpl	$63, %ecx
	ja	.LBB1_183
# BB#145:                               # %if.then.489
                                        #   in Loop: Header=BB1_144 Depth=1
	leaq	1568(%rsp,%rax), %r12
	leaq	1576(%rsp,%rax), %rdi
	callq	get_u32_msb
	movq	%rax, %r14
	leaq	12(%r12), %rdi
	callq	get_u32_msb
	movq	%rax, %rbx
	movq	%r12, %rdi
	callq	get_u32_msb
	cmpq	$1835104367, %rax       # imm = 0x6D61786F
	jg	.LBB1_157
# BB#146:                               # %if.then.489
                                        #   in Loop: Header=BB1_144 Depth=1
	cmpq	$1330851634, %rax       # imm = 0x4F532F32
	jne	.LBB1_147
# BB#159:                               # %sw.bb.498
                                        #   in Loop: Header=BB1_144 Depth=1
	movq	%rbx, 264(%rsp)         # 8-byte Spill
	cmpl	$0, 312(%rsp)           # 4-byte Folded Reload
	movq	304(%rsp), %r15         # 8-byte Reload
	movq	192(%rsp), %rbx         # 8-byte Reload
	je	.LBB1_160
# BB#163:                               # %if.else.530
                                        #   in Loop: Header=BB1_144 Depth=1
	testl	%ebx, %ebx
	movq	136(%rsp), %rbp         # 8-byte Reload
	movq	160(%rsp), %r14         # 8-byte Reload
	movq	328(%rsp), %r12         # 8-byte Reload
	je	.LBB1_166
	.align	16, 0x90
.LBB1_164:                              # %while.body.i
                                        #   Parent Loop BB1_144 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, %rdi
	movq	%r14, %rsi
	movl	%ebp, %edx
	leaq	2224(%rsp), %rcx
	callq	*448(%r12)
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB1_166
# BB#165:                               # %cleanup.thread.i
                                        #   in Loop: Header=BB1_164 Depth=2
	cmovel	%ebp, %ebx
	movq	2224(%rsp), %rsi
	movq	%r15, %rdi
	movl	%ebx, %edx
	callq	stream_write
	movslq	%ebx, %rax
	subq	%rax, %rbp
	leaq	(%r14,%rax), %r14
	jne	.LBB1_164
	jmp	.LBB1_166
.LBB1_157:                              # %if.then.489
                                        #   in Loop: Header=BB1_144 Depth=1
	cmpq	$1835104368, %rax       # imm = 0x6D617870
	jne	.LBB1_158
# BB#167:                               # %sw.bb.533
                                        #   in Loop: Header=BB1_144 Depth=1
	movq	176(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movq	304(%rsp), %r15         # 8-byte Reload
	je	.LBB1_174
# BB#168:                               # %if.then.535
                                        #   in Loop: Header=BB1_144 Depth=1
	movl	$6, %edx
	movq	328(%rsp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movq	168(%rsp), %rsi         # 8-byte Reload
	movq	%rbp, %rcx
	callq	gs_type42_read_data
	testl	%eax, %eax
	js	.LBB1_272
# BB#169:                               # %do.end.544
                                        #   in Loop: Header=BB1_144 Depth=1
	movl	128(%rsp), %eax         # 4-byte Reload
	movb	%al, 2580(%rsp)
	movq	176(%rsp), %rax         # 8-byte Reload
	movb	%al, 2581(%rsp)
	movq	%rbx, 264(%rsp)         # 8-byte Spill
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %rbx
	cmpq	$6, %rbx
	movl	$6, %edx
	cmovbl	%ebx, %edx
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	stream_write
	cmpq	$7, %rbx
	jb	.LBB1_182
# BB#170:                               # %if.then.561
                                        #   in Loop: Header=BB1_144 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	264(%rsp), %rcx         # 8-byte Reload
	leaq	-5(%rax,%rcx), %rbp
	testl	%ebp, %ebp
	je	.LBB1_182
# BB#171:                               # %while.body.lr.ph.i.330
                                        #   in Loop: Header=BB1_144 Depth=1
	addq	$6, %r14
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %rbp
	.align	16, 0x90
.LBB1_172:                              # %while.body.i.336
                                        #   Parent Loop BB1_144 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, %rdi
	movq	%r14, %rsi
	movl	%ebp, %edx
	leaq	2224(%rsp), %rcx
	callq	*448(%r12)
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB1_182
# BB#173:                               # %cleanup.thread.i.344
                                        #   in Loop: Header=BB1_172 Depth=2
	cmovel	%ebp, %ebx
	movq	2224(%rsp), %rsi
	movq	%r15, %rdi
	movl	%ebx, %edx
	callq	stream_write
	movslq	%ebx, %rax
	subq	%rax, %rbp
	leaq	(%r14,%rax), %r14
	jne	.LBB1_172
	jmp	.LBB1_182
.LBB1_147:                              # %if.then.489
                                        #   in Loop: Header=BB1_144 Depth=1
	cmpq	$1751672161, %rax       # imm = 0x68686561
	jmp	.LBB1_148
.LBB1_158:                              # %if.then.489
                                        #   in Loop: Header=BB1_144 Depth=1
	cmpq	$1986553185, %rax       # imm = 0x76686561
.LBB1_148:                              # %if.then.489
                                        #   in Loop: Header=BB1_144 Depth=1
	movq	304(%rsp), %r15         # 8-byte Reload
	jne	.LBB1_178
# BB#149:                               # %sw.bb.574
                                        #   in Loop: Header=BB1_144 Depth=1
	cmpl	$0, 212(%rsp)           # 4-byte Folded Reload
	je	.LBB1_178
# BB#150:                               # %if.then.576
                                        #   in Loop: Header=BB1_144 Depth=1
	movl	%ebx, %eax
	movq	%rbx, 264(%rsp)         # 8-byte Spill
	addl	$-2, %eax
	leaq	2224(%rsp), %rbp
	je	.LBB1_154
# BB#151:                               # %while.body.lr.ph.i.372
                                        #   in Loop: Header=BB1_144 Depth=1
	movl	%eax, %ebx
	.align	16, 0x90
.LBB1_152:                              # %while.body.i.378
                                        #   Parent Loop BB1_144 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	328(%rsp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	movl	%ebx, %edx
	movq	%rbp, %rcx
	callq	*448(%rdi)
	movl	%eax, %r15d
	testl	%r15d, %r15d
	js	.LBB1_154
# BB#153:                               # %cleanup.thread.i.386
                                        #   in Loop: Header=BB1_152 Depth=2
	cmovel	%ebx, %r15d
	movq	2224(%rsp), %rsi
	movq	304(%rsp), %rdi         # 8-byte Reload
	movl	%r15d, %edx
	callq	stream_write
	movslq	%r15d, %rax
	subq	%rax, %rbx
	leaq	(%r14,%rax), %r14
	jne	.LBB1_152
.LBB1_154:                              # %write_range.exit388
                                        #   in Loop: Header=BB1_144 Depth=1
	movzbl	(%r12), %eax
	cmpl	$118, %eax
	sete	%al
	movzbl	%al, %eax
	leaq	(%rax,%rax,2), %rax
	movl	1424(%rsp,%rax,8), %ebx
	movzbl	%bh, %esi  # NOREX
	movq	304(%rsp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	callq	spputc
	movzbl	%bl, %esi
	movq	%r15, %rdi
	callq	spputc
	jmp	.LBB1_182
.LBB1_178:                              # %sw.default.586
                                        #   in Loop: Header=BB1_144 Depth=1
	testl	%ebx, %ebx
	movq	%rbx, 264(%rsp)         # 8-byte Spill
	movq	328(%rsp), %r12         # 8-byte Reload
	je	.LBB1_182
# BB#179:                               # %while.body.lr.ph.i.398
                                        #   in Loop: Header=BB1_144 Depth=1
	movq	264(%rsp), %rbx         # 8-byte Reload
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %rbx
	.align	16, 0x90
.LBB1_180:                              # %while.body.i.404
                                        #   Parent Loop BB1_144 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, %rdi
	movq	%r14, %rsi
	movl	%ebx, %edx
	leaq	2224(%rsp), %rcx
	callq	*448(%r12)
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB1_182
# BB#181:                               # %cleanup.thread.i.412
                                        #   in Loop: Header=BB1_180 Depth=2
	cmovel	%ebx, %ebp
	movq	2224(%rsp), %rsi
	movq	%r15, %rdi
	movl	%ebp, %edx
	callq	stream_write
	movslq	%ebp, %rax
	subq	%rax, %rbx
	leaq	(%r14,%rax), %r14
	jne	.LBB1_180
	jmp	.LBB1_182
.LBB1_160:                              # %if.then.500
                                        #   in Loop: Header=BB1_144 Depth=1
	cmpl	$96, %ebx
	movl	$-28, %eax
	movq	328(%rsp), %rdi         # 8-byte Reload
	leaq	2224(%rsp), %rbp
	ja	.LBB1_272
# BB#161:                               # %if.end.506
                                        #   in Loop: Header=BB1_144 Depth=1
	movq	160(%rsp), %rsi         # 8-byte Reload
	movl	%ebx, %edx
	movq	%rbp, %rcx
	callq	gs_type42_read_data
	testl	%eax, %eax
	js	.LBB1_272
# BB#162:                               # %cleanup.526
                                        #   in Loop: Header=BB1_144 Depth=1
	leaq	2576(%rsp), %r14
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	120(%rsp), %rdx         # 8-byte Reload
	callq	memcpy
	movl	$-1048336, 2640(%rsp)   # imm = 0xFFFFFFFFFFF000F0
	xorl	%esi, %esi
	movl	$16, %edx
	leaq	2618(%rsp), %rdi
	callq	memset
	movb	$8, 2625(%rsp)
	xorl	%esi, %esi
	movl	$8, %edx
	leaq	2654(%rsp), %rdi
	callq	memset
	movb	$1, 2657(%rsp)
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	%ebx, %edx
	callq	stream_write
.LBB1_166:                              # %write_range.exit
                                        #   in Loop: Header=BB1_144 Depth=1
	movl	$put_pad.pad_to_4, %esi
	movq	%r15, %rdi
	movl	144(%rsp), %edx         # 4-byte Reload
	callq	stream_write
.LBB1_182:                              # %cleanup.589
                                        #   in Loop: Header=BB1_144 Depth=1
	movq	264(%rsp), %rdx         # 8-byte Reload
	negl	%edx
	andl	$3, %edx
	movl	$put_pad.pad_to_4, %esi
	movq	%r15, %rdi
	callq	stream_write
	leaq	2576(%rsp), %rbp
.LBB1_183:                              # %for.inc.597
                                        #   in Loop: Header=BB1_144 Depth=1
	incq	%r13
	cmpq	200(%rsp), %r13         # 8-byte Folded Reload
	jb	.LBB1_144
.LBB1_184:                              # %for.end.599
	cmpl	$0, 216(%rsp)           # 4-byte Folded Reload
	je	.LBB1_186
# BB#185:                               # %for.end.599.if.end.822_crit_edge
	movq	328(%rsp), %rax         # 8-byte Reload
	addq	$16, %rax
	movq	304(%rsp), %r15         # 8-byte Reload
	movq	256(%rsp), %r13         # 8-byte Reload
.LBB1_270:                              # %if.end.822
	movl	$-1162891087, 1480(%rsp) # imm = 0xFFFFFFFFBAAFB0B1
	movq	(%rax), %r14
	movslq	368(%rsp), %rbp
	addq	%r13, %rbp
	movq	%r15, %rdi
	callq	stell
	movq	%rax, %rbx
	cmpq	%rbx, %rbp
	jne	.LBB1_224
# BB#271:                               # %if.end.834
	leaq	1472(%rsp), %rsi
	movl	$56, %edx
	movq	%r15, %rdi
	callq	stream_write
	xorl	%eax, %eax
	jmp	.LBB1_272
.LBB1_186:                              # %if.then.601
	movl	224(%rsp), %eax         # 4-byte Reload
	movq	176(%rsp), %rcx         # 8-byte Reload
	cmpl	%ecx, %eax
	cmoval	%eax, %ecx
	movq	%rcx, 176(%rsp)         # 8-byte Spill
	movq	328(%rsp), %rax         # 8-byte Reload
	movq	16(%rax), %r14
	movslq	336(%rsp), %rbp
	movq	256(%rsp), %rax         # 8-byte Reload
	addq	%rax, %rbp
	movq	304(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	callq	stell
	movq	%rax, %r12
	cmpq	%r12, %rbp
	jne	.LBB1_187
# BB#190:                               # %if.end.617
	movq	%rbx, %r14
	movq	288(%rsp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	callq	psf_enumerate_glyphs_reset
	leaq	1560(%rsp), %rsi
	movq	%r12, %rdi
	callq	psf_enumerate_glyphs_next
	xorl	%ebx, %ebx
	cmpl	$1, %eax
	je	.LBB1_197
# BB#191:                               # %for.body.622.lr.ph
	xorl	%ebx, %ebx
	leaq	2224(%rsp), %r13
	leaq	1560(%rsp), %r15
	.align	16, 0x90
.LBB1_192:                              # %for.body.622
                                        # =>This Inner Loop Header: Depth=1
	movq	328(%rsp), %rdi         # 8-byte Reload
	movq	16(%rdi), %rax
	movq	%rax, 2264(%rsp)
	movl	1560(%rsp), %esi
	movl	$1073741823, %eax       # imm = 0x3FFFFFFF
	andl	%eax, %esi
	movq	%r13, %rdx
	callq	*472(%rdi)
	testl	%eax, %eax
	js	.LBB1_196
# BB#193:                               # %if.then.633
                                        #   in Loop: Header=BB1_192 Depth=1
	movl	2232(%rsp), %edx
	leal	1(%rdx), %ebp
	andl	$-2, %ebp
	movq	280(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	movl	$0, 2576(%rsp)
	cmovnel	%edx, %ebp
	movq	2224(%rsp), %rsi
	movq	%r14, %rdi
	callq	stream_write
	cmpl	%ebp, 2232(%rsp)
	jae	.LBB1_195
# BB#194:                               # %if.then.651
                                        #   in Loop: Header=BB1_192 Depth=1
	movl	$1, %edx
	movq	%r14, %rdi
	leaq	2576(%rsp), %rsi
	callq	stream_write
.LBB1_195:                              # %if.end.653
                                        #   in Loop: Header=BB1_192 Depth=1
	movl	%ebp, %eax
	addq	%rax, %rbx
	movl	$.L.str, %esi
	movq	%r13, %rdi
	callq	gs_glyph_data_free
.LBB1_196:                              # %if.end.659
                                        #   in Loop: Header=BB1_192 Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	psf_enumerate_glyphs_next
	cmpl	$1, %eax
	jne	.LBB1_192
.LBB1_197:                              # %while.cond.preheader
	movq	328(%rsp), %rax         # 8-byte Reload
	leaq	16(%rax), %rbp
	movq	56(%rsp), %rax          # 8-byte Reload
	movl	%eax, %r13d
	cmpq	%r13, %rbx
	jae	.LBB1_198
# BB#199:                               # %while.body.preheader
	movq	%rbp, 200(%rsp)         # 8-byte Spill
	movq	%r13, %rbp
	subq	%rbx, %rbp
	movq	%r14, %r15
	movq	256(%rsp), %r14         # 8-byte Reload
	.align	16, 0x90
.LBB1_200:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	spputc
	decq	%rbp
	jne	.LBB1_200
# BB#201:
	movq	%r13, %rbx
	movq	200(%rsp), %rbp         # 8-byte Reload
	jmp	.LBB1_202
.LBB1_187:                              # %check_position.exit
	callq	gs_program_name
	movq	%rax, %r15
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movl	$.L.str.13, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbp, %rdx
.LBB1_188:                              # %cleanup.837
	movq	%r12, %rcx
	jmp	.LBB1_189
.LBB1_198:
	movq	%r14, %r15
	movq	256(%rsp), %r14         # 8-byte Reload
.LBB1_202:                              # %while.end
	movq	%rbp, 200(%rsp)         # 8-byte Spill
	negl	%ebx
	andl	$3, %ebx
	movl	$put_pad.pad_to_4, %esi
	movq	%r15, %rdi
	movl	%ebx, %edx
	callq	stream_write
	movq	(%rbp), %r13
	movslq	340(%rsp), %rbp
	addq	%r14, %rbp
	movq	%r15, %rdi
	callq	stell
	movq	%rax, %r14
	cmpq	%r14, %rbp
	movq	328(%rsp), %rbx         # 8-byte Reload
	jne	.LBB1_203
# BB#204:                               # %if.end.678
	movq	176(%rsp), %rax         # 8-byte Reload
	incl	%eax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	movq	%r12, %rdi
	callq	psf_enumerate_glyphs_reset
	leaq	1560(%rsp), %rsi
	movq	%r12, %rdi
	callq	psf_enumerate_glyphs_next
	xorl	%ecx, %ecx
	movq	%rcx, 272(%rsp)         # 8-byte Spill
	cmpl	$1, %eax
	movl	$0, %r14d
	je	.LBB1_210
# BB#205:                               # %for.body.683.lr.ph
	xorl	%eax, %eax
	movq	%rax, 272(%rsp)         # 8-byte Spill
	leaq	2224(%rsp), %rbp
	leaq	1560(%rsp), %r12
	xorl	%r14d, %r14d
.LBB1_206:                              # %for.body.683
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_208 Depth 2
	movq	1560(%rsp), %rax
	movl	%eax, %esi
	andl	$1073741823, %esi       # imm = 0x3FFFFFFF
	cmpq	%rsi, %r14
	ja	.LBB1_217
# BB#207:                               # %for.body.692.lr.ph
                                        #   in Loop: Header=BB1_206 Depth=1
	movq	%rsi, 224(%rsp)         # 8-byte Spill
	movq	%r15, %rbp
	movq	%rax, %rbx
	movq	272(%rsp), %rax         # 8-byte Reload
	movq	%rax, %rcx
	shrq	%rcx
	movq	%rcx, 264(%rsp)         # 8-byte Spill
	movq	%rax, %r12
	shrq	$9, %r12
	movq	%r14, %rcx
	movq	%rax, %r14
	shrq	$16, %r14
	movq	%rax, %r13
	shrq	$24, %r13
	movl	%eax, %r15d
	shrl	$8, %r15d
	andl	$1073741823, %ebx       # imm = 0x3FFFFFFF
	incq	%rbx
	movq	%rbx, 216(%rsp)         # 8-byte Spill
	subq	%rcx, %rbx
	.align	16, 0x90
.LBB1_208:                              # %for.body.692
                                        #   Parent Loop BB1_206 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	280(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB1_214
# BB#209:                               # %if.then.i.440
                                        #   in Loop: Header=BB1_208 Depth=2
	movzbl	%r13b, %esi
	movq	%rbp, %rdi
	callq	spputc
	movzbl	%r14b, %esi
	movq	%rbp, %rdi
	callq	spputc
	movzbl	%r15b, %esi
	movq	%rbp, %rdi
	callq	spputc
	movq	272(%rsp), %rax         # 8-byte Reload
	jmp	.LBB1_215
	.align	16, 0x90
.LBB1_214:                              # %if.else.i.443
                                        #   in Loop: Header=BB1_208 Depth=2
	movzbl	%r12b, %esi
	movq	%rbp, %rdi
	callq	spputc
	movq	264(%rsp), %rax         # 8-byte Reload
.LBB1_215:                              # %put_loca.exit
                                        #   in Loop: Header=BB1_208 Depth=2
	movzbl	%al, %esi
	movq	%rbp, %rdi
	callq	spputc
	decq	%rbx
	jne	.LBB1_208
# BB#216:                               #   in Loop: Header=BB1_206 Depth=1
	movq	216(%rsp), %r14         # 8-byte Reload
	movq	%rbp, %r15
	movq	328(%rsp), %rbx         # 8-byte Reload
	leaq	2224(%rsp), %rbp
	leaq	1560(%rsp), %r12
	movq	224(%rsp), %rsi         # 8-byte Reload
.LBB1_217:                              # %for.end.695
                                        #   in Loop: Header=BB1_206 Depth=1
	movq	16(%rbx), %rax
	movq	%rax, 2264(%rsp)
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	callq	*472(%rbx)
	testl	%eax, %eax
	js	.LBB1_219
# BB#218:                               # %if.then.703
                                        #   in Loop: Header=BB1_206 Depth=1
	movl	2232(%rsp), %eax
	leal	1(%rax), %ecx
	andl	$-2, %ecx
	movq	280(%rsp), %rdx         # 8-byte Reload
	testl	%edx, %edx
	cmovnel	%eax, %ecx
	movl	%ecx, %eax
	addq	%rax, 272(%rsp)         # 8-byte Folded Spill
	movl	$.L.str, %esi
	movq	%rbp, %rdi
	callq	gs_glyph_data_free
.LBB1_219:                              # %if.end.714
                                        #   in Loop: Header=BB1_206 Depth=1
	movq	288(%rsp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	psf_enumerate_glyphs_next
	cmpl	$1, %eax
	jne	.LBB1_206
.LBB1_210:                              # %for.cond.716.preheader
	movq	176(%rsp), %rax         # 8-byte Reload
	movslq	%eax, %rbp
	cmpq	%rbp, %r14
	movq	%r14, %rbx
	jae	.LBB1_222
# BB#211:                               # %for.body.720.lr.ph
	movq	272(%rsp), %rax         # 8-byte Reload
	movq	%rax, %r8
	shrq	%r8
	movq	%rax, %rcx
	shrq	$9, %rcx
	movq	%rax, %rdx
	shrq	$16, %rdx
	movq	%rax, %rsi
	shrq	$24, %rsi
	movl	%eax, %edi
	shrl	$8, %edi
	movzbl	%cl, %ecx
	movl	%ecx, 264(%rsp)         # 4-byte Spill
	movzbl	%r8b, %ecx
	movl	%ecx, 224(%rsp)         # 4-byte Spill
	movzbl	%sil, %ecx
	movl	%ecx, 288(%rsp)         # 4-byte Spill
	movzbl	%dl, %r14d
	movzbl	%dil, %r13d
	movzbl	%al, %r12d
.LBB1_212:                              # %for.body.720
                                        # =>This Inner Loop Header: Depth=1
	movq	280(%rsp), %rax         # 8-byte Reload
	movq	%r15, %rdi
	testl	%eax, %eax
	je	.LBB1_220
# BB#213:                               # %if.then.i.458
                                        #   in Loop: Header=BB1_212 Depth=1
	movl	288(%rsp), %esi         # 4-byte Reload
	callq	spputc
	movq	%r15, %rdi
	movl	%r14d, %esi
	callq	spputc
	movq	%r15, %rdi
	movl	%r13d, %esi
	callq	spputc
	movq	%r15, %rdi
	movl	%r12d, %esi
	jmp	.LBB1_221
.LBB1_220:                              # %if.else.i.461
                                        #   in Loop: Header=BB1_212 Depth=1
	movl	264(%rsp), %esi         # 4-byte Reload
	callq	spputc
	movq	%r15, %rdi
	movl	224(%rsp), %esi         # 4-byte Reload
.LBB1_221:                              # %put_loca.exit463
                                        #   in Loop: Header=BB1_212 Depth=1
	callq	spputc
	incq	%rbx
	cmpq	%rbp, %rbx
	jb	.LBB1_212
.LBB1_222:                              # %for.end.723
	movq	48(%rsp), %rdx          # 8-byte Reload
	negl	%edx
	andl	$3, %edx
	movl	$put_pad.pad_to_4, %esi
	movq	%r15, %rdi
	callq	stream_write
	cmpl	$0, 312(%rsp)           # 4-byte Folded Reload
	movq	256(%rsp), %r12         # 8-byte Reload
	movl	$4294967295, %r13d      # imm = 0xFFFFFFFF
	jne	.LBB1_226
# BB#223:                               # %if.then.725
	movq	200(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %r14
	movslq	344(%rsp), %rbp
	addq	%r12, %rbp
	movq	%r15, %rdi
	callq	stell
	movq	%rax, %rbx
	cmpq	%rbx, %rbp
	jne	.LBB1_224
# BB#225:                               # %if.end.734
	movq	320(%rsp), %rax         # 8-byte Reload
	leaq	-1073741823(%r13,%rax), %rdx
	movq	%r15, %rdi
	movq	328(%rsp), %rsi         # 8-byte Reload
	movl	156(%rsp), %ecx         # 4-byte Reload
	movq	104(%rsp), %r8          # 8-byte Reload
	callq	write_cmap
.LBB1_226:                              # %if.end.736
	cmpl	$0, 296(%rsp)           # 4-byte Folded Reload
	movq	200(%rsp), %rax         # 8-byte Reload
	jne	.LBB1_229
# BB#227:                               # %if.then.738
	movq	(%rax), %r14
	movq	%rax, %r13
	movslq	348(%rsp), %rbp
	addq	%r12, %rbp
	movq	%r15, %rdi
	callq	stell
	movq	%rax, %rbx
	cmpq	%rbx, %rbp
	jne	.LBB1_224
# BB#228:                               # %if.end.747
	leaq	2224(%rsp), %rbp
	movl	$name_initial, %esi
	movl	$18, %edx
	movq	%rbp, %rdi
	callq	memcpy
	movq	248(%rsp), %rbx         # 8-byte Reload
	movb	%bh, 2238(%rsp)  # NOREX
	movb	%bl, 2239(%rsp)
	movl	$18, %edx
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	stream_write
	movq	%r15, %rdi
	movq	240(%rsp), %rsi         # 8-byte Reload
	movl	%ebx, %edx
	callq	stream_write
	movl	$-18, %edx
	subl	%ebx, %edx
	andl	$3, %edx
	movl	$put_pad.pad_to_4, %esi
	movq	%r15, %rdi
	callq	stream_write
	movq	%r13, %rax
.LBB1_229:                              # %if.end.748
	cmpl	$0, 188(%rsp)           # 4-byte Folded Reload
	jne	.LBB1_235
# BB#230:                               # %if.then.750
	movq	(%rax), %r14
	movq	%rax, %r13
	movslq	352(%rsp), %rbp
	addq	%r12, %rbp
	movq	%r15, %rdi
	callq	stell
	movq	%rax, %rbx
	cmpq	%rbx, %rbp
	jne	.LBB1_224
# BB#231:                               # %if.end.759
	leaq	2576(%rsp), %rdi
	xorl	%esi, %esi
	movl	$96, %edx
	callq	memset
	movb	$0, 2576(%rsp)
	movb	$1, 2577(%rsp)
	movb	$1, 2580(%rsp)
	movb	$-112, 2581(%rsp)
	movb	$0, 2582(%rsp)
	movb	$5, 2583(%rsp)
	movb	$-16, 2640(%rsp)
	movb	$0, 2641(%rsp)
	movw	$-16, 2642(%rsp)
	leaq	2618(%rsp), %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	memset
	movb	$8, 2625(%rsp)
	leaq	2654(%rsp), %rdi
	xorl	%esi, %esi
	movl	$8, %edx
	callq	memset
	movb	$1, 2657(%rsp)
	leaq	2224(%rsp), %rbx
	xorl	%esi, %esi
	movl	$160, %edx
	movq	%rbx, %rdi
	callq	memset
	xorl	%esi, %esi
	movl	$16384, %edx            # imm = 0x4000
	movq	328(%rsp), %rdi         # 8-byte Reload
	movq	%rbx, %rcx
	callq	*184(%rdi)
	testl	%eax, %eax
	jne	.LBB1_234
# BB#232:                               # %land.lhs.true.i
	testb	$64, 2225(%rsp)
	je	.LBB1_234
# BB#233:                               # %if.then.i.510
	movl	2376(%rsp), %eax
	movb	%ah, 2584(%rsp)  # NOREX
	movb	%al, 2585(%rsp)
.LBB1_234:                              # %write_OS_2.exit
	leaq	2576(%rsp), %rsi
	movl	$86, %edx
	movq	%r15, %rdi
	callq	stream_write
	movl	$put_pad.pad_to_4, %esi
	movl	$2, %edx
	movq	%r15, %rdi
	callq	stream_write
	movq	%r13, %rax
.LBB1_235:                              # %if.end.760
	movq	%rax, 200(%rsp)         # 8-byte Spill
	cmpl	$0, 212(%rsp)           # 4-byte Folded Reload
	je	.LBB1_247
# BB#236:                               # %for.cond.763.preheader
	xorl	%r14d, %r14d
	leaq	2224(%rsp), %r13
.LBB1_237:                              # %for.body.766
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_242 Depth 2
                                        #     Child Loop BB1_244 Depth 2
	movq	%r14, %rbp
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	andq	%rax, %rbp
	cmpl	$0, 376(%rsp,%rbp,4)
	je	.LBB1_246
# BB#238:                               # %if.then.770
                                        #   in Loop: Header=BB1_237 Depth=1
	movq	200(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %r15
	movslq	356(%rsp,%rbp,4), %rbx
	addq	256(%rsp), %rbx         # 8-byte Folded Reload
	movq	304(%rsp), %rdi         # 8-byte Reload
	callq	stell
	movq	%rax, %r12
	cmpq	%r12, %rbx
	jne	.LBB1_239
# BB#240:                               # %if.end.781
                                        #   in Loop: Header=BB1_237 Depth=1
	leaq	(%rbp,%rbp,2), %rax
	movq	%rax, 296(%rsp)         # 8-byte Spill
	movl	1424(%rsp,%rax,8), %ecx
	movq	%rcx, 312(%rsp)         # 8-byte Spill
	leal	(,%rcx,4), %r15d
	movq	328(%rsp), %rdi         # 8-byte Reload
	movl	512(%rdi), %eax
	cvtsi2sdq	%rax, %xmm0
	movq	%r14, %r12
	testl	%r12d, %r12d
	setne	%al
	movzbl	%al, %eax
	mulsd	.LCPI1_1(,%rax,8), %xmm0
	movsd	%xmm0, 320(%rsp)        # 8-byte Spill
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, 2224(%rsp)
	movq	%r13, %rbx
	xorl	%r14d, %r14d
	testl	%ecx, %ecx
	movq	304(%rsp), %r13         # 8-byte Reload
	je	.LBB1_243
# BB#241:                               # %for.body.lr.ph.i.531
                                        #   in Loop: Header=BB1_237 Depth=1
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB1_242:                              # %for.body.i.541
                                        #   Parent Loop BB1_237 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r14d, %esi
	movl	%r12d, %edx
	movq	%rbx, %rcx
	movq	%rdi, %rbp
	callq	*480(%rbp)
	movss	2232(%rsp,%r12,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	320(%rsp), %xmm0        # 8-byte Folded Reload
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %ebx
	movzbl	%bh, %esi  # NOREX
	movq	%r13, %rdi
	callq	spputc
	movzbl	%bl, %esi
	movq	%r13, %rdi
	callq	spputc
	movss	2224(%rsp,%r12,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	320(%rsp), %xmm0        # 8-byte Folded Reload
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI1_0(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %ebx
	movzbl	%bh, %esi  # NOREX
	movq	%r13, %rdi
	callq	spputc
	movzbl	%bl, %esi
	leaq	2224(%rsp), %rbx
	movq	%r13, %rdi
	callq	spputc
	movq	312(%rsp), %rax         # 8-byte Reload
	movq	%rbp, %rdi
	incl	%r14d
	cmpl	%eax, %r14d
	jb	.LBB1_242
.LBB1_243:                              # %for.cond.26.preheader.i
                                        #   in Loop: Header=BB1_237 Depth=1
	movq	296(%rsp), %rax         # 8-byte Reload
	movl	1440(%rsp,%rax,8), %eax
	movl	%eax, 312(%rsp)         # 4-byte Spill
	cmpl	%eax, %r15d
	movq	%r12, %rbp
	jae	.LBB1_245
	.align	16, 0x90
.LBB1_244:                              # %for.body.29.i
                                        #   Parent Loop BB1_237 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r14d, %esi
	movl	%ebp, %edx
	movq	%rbx, %rcx
	movq	328(%rsp), %rax         # 8-byte Reload
	callq	*480(%rax)
	movss	2224(%rsp,%rbp,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	320(%rsp), %xmm0        # 8-byte Folded Reload
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI1_0(%rip), %xmm0
	callq	floor
	movq	%r13, %r12
	movl	%r15d, %r13d
	movq	%rbx, %r15
	cvttsd2si	%xmm0, %ebx
	movzbl	%bh, %esi  # NOREX
	movq	%r12, %rdi
	callq	spputc
	movzbl	%bl, %esi
	movq	%r15, %rbx
	movl	%r13d, %r15d
	movq	%r12, %r13
	movq	%r13, %rdi
	callq	spputc
	movq	328(%rsp), %rdi         # 8-byte Reload
	incl	%r14d
	addl	$2, %r15d
	cmpl	312(%rsp), %r15d        # 4-byte Folded Reload
	jb	.LBB1_244
.LBB1_245:                              # %write_mtx.exit
                                        #   in Loop: Header=BB1_237 Depth=1
	movq	%rbp, %r14
	movl	312(%rsp), %edx         # 4-byte Reload
	negl	%edx
	andl	$3, %edx
	movl	$put_pad.pad_to_4, %esi
	movq	%r13, %rdi
	callq	stream_write
	movq	%rbx, %r13
.LBB1_246:                              # %for.inc.788
                                        #   in Loop: Header=BB1_237 Depth=1
	incq	%r14
	cmpl	$2, %r14d
	jb	.LBB1_237
.LBB1_247:                              # %if.end.791
	cmpl	$0, 236(%rsp)           # 4-byte Folded Reload
	je	.LBB1_249
# BB#248:
	movq	304(%rsp), %r15         # 8-byte Reload
.LBB1_268:                              # %if.end.822
	movq	256(%rsp), %r13         # 8-byte Reload
.LBB1_269:                              # %if.end.822
	movq	200(%rsp), %rax         # 8-byte Reload
	jmp	.LBB1_270
.LBB1_203:                              # %check_position.exit432
	callq	gs_program_name
	movq	%rax, %r15
	callq	gs_revision_number
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movl	$.L.str.13, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	movq	%rbp, %rdx
	movq	%r14, %rcx
	jmp	.LBB1_189
.LBB1_249:                              # %if.then.793
	movq	200(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %r14
	movslq	364(%rsp), %rbp
	addq	256(%rsp), %rbp         # 8-byte Folded Reload
	movq	304(%rsp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	callq	stell
	movq	%rax, %rbx
	cmpq	%rbx, %rbp
	jne	.LBB1_224
# BB#250:                               # %if.end.802
	movl	156(%rsp), %eax         # 4-byte Reload
	testb	$4, %al
	jne	.LBB1_251
# BB#267:                               # %if.else.811
	leaq	2224(%rsp), %rbx
	xorl	%esi, %esi
	movl	$32, %edx
	movq	%rbx, %rdi
	callq	memset
	movl	$768, 2224(%rsp)        # imm = 0x300
	movl	$32, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	stream_write
	jmp	.LBB1_268
.LBB1_224:                              # %check_position.exit473
	callq	gs_program_name
	movq	%rax, %r15
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movl	$.L.str.13, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%rbp, %rdx
	movq	%rbx, %rcx
.LBB1_189:                              # %cleanup.837
	callq	errprintf
	movl	$-28, %eax
.LBB1_272:                              # %cleanup.837
	addq	$2680, %rsp             # imm = 0xA78
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_239:                              # %check_position.exit519
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movl	$.L.str.13, %esi
	xorl	%eax, %eax
	movq	%r15, %rdi
	movq	%rbx, %rdx
	jmp	.LBB1_188
.LBB1_251:                              # %if.then.805
	leaq	2224(%rsp), %rbp
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$32, %edx
	movq	%rbp, %rdi
	callq	memset
	movl	$512, 2224(%rsp)        # imm = 0x200
	movl	1416(%rsp), %eax
	movb	%ah, 2256(%rsp)  # NOREX
	movb	%al, 2257(%rsp)
	movl	$34, %edx
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	stream_write
	cmpl	$0, 1412(%rsp)
	movq	256(%rsp), %r13         # 8-byte Reload
	movq	328(%rsp), %r14         # 8-byte Reload
	jle	.LBB1_260
# BB#252:                               # %for.body.lr.ph.i.566
	movq	%r15, %rbp
	movl	$258, 320(%rsp)         # 4-byte Folded Spill
                                        # imm = 0x102
	xorl	%r12d, %r12d
.LBB1_253:                              # %for.body.i.572
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_262 Depth 2
	movzbl	384(%rsp,%r12,4), %esi
	movq	%r14, %rdi
	leaq	2576(%rsp), %rdx
	leaq	2676(%rsp), %rcx
	callq	mac_glyph_index
	testl	%eax, %eax
	jns	.LBB1_262
	jmp	.LBB1_272
.LBB1_261:                              # %for.body.16.i
                                        #   in Loop: Header=BB1_262 Depth=2
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	spputc
	xorl	%esi, %esi
	movq	%rbp, %rdi
	callq	spputc
	incl	%ebx
.LBB1_262:                              # %for.body.16.i
                                        #   Parent Loop BB1_253 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	386(%rsp,%r12,4), %eax
	cmpl	%eax, %ebx
	jb	.LBB1_261
# BB#263:                               # %for.end.i.575
                                        #   in Loop: Header=BB1_253 Depth=1
	movl	2676(%rsp), %eax
	testl	%eax, %eax
	js	.LBB1_265
# BB#264:                               # %if.then.20.i
                                        #   in Loop: Header=BB1_253 Depth=1
	movzbl	%ah, %esi  # NOREX
	movq	%rbp, %rdi
	movl	%eax, %r15d
	callq	spputc
	movzbl	%r15b, %esi
	movq	%rbp, %rdi
	callq	spputc
	jmp	.LBB1_266
.LBB1_265:                              # %if.else.i.576
                                        #   in Loop: Header=BB1_253 Depth=1
	movl	320(%rsp), %eax         # 4-byte Reload
	movzbl	%ah, %esi  # NOREX
	movl	%eax, %r15d
	movq	%rbp, %rdi
	callq	spputc
	movzbl	%r15b, %esi
	movq	%rbp, %rdi
	callq	spputc
	movl	%r15d, %eax
	incl	%eax
	movl	%eax, 320(%rsp)         # 4-byte Spill
.LBB1_266:                              # %for.inc.26.i
                                        #   in Loop: Header=BB1_253 Depth=1
	incl	%ebx
	incq	%r12
	movslq	1412(%rsp), %rax
	cmpq	%rax, %r12
	jl	.LBB1_253
# BB#254:                               # %for.cond.29.preheader.i
	testl	%eax, %eax
	movq	%rbp, %r15
	movq	%r14, %rbp
	jle	.LBB1_260
# BB#255:                               # %for.body.33.lr.ph.i
	xorl	%ebx, %ebx
	leaq	2576(%rsp), %r14
	leaq	2676(%rsp), %r12
.LBB1_256:                              # %for.body.33.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	384(%rsp,%rbx,4), %esi
	movq	%rbp, %rdi
	movq	%r14, %rdx
	movq	%r12, %rcx
	callq	mac_glyph_index
	testl	%eax, %eax
	js	.LBB1_272
# BB#257:                               # %if.end.47.i
                                        #   in Loop: Header=BB1_256 Depth=1
	cmpl	$0, 2676(%rsp)
	jns	.LBB1_259
# BB#258:                               # %if.then.50.i
                                        #   in Loop: Header=BB1_256 Depth=1
	movzbl	2584(%rsp), %esi
	movq	%r15, %rdi
	callq	spputc
	movq	2576(%rsp), %rsi
	movl	2584(%rsp), %edx
	movq	%r15, %rdi
	callq	stream_write
.LBB1_259:                              # %for.inc.62.i
                                        #   in Loop: Header=BB1_256 Depth=1
	incq	%rbx
	movslq	1412(%rsp), %rax
	cmpq	%rax, %rbx
	jl	.LBB1_256
.LBB1_260:                              # %write_post.exit
	movl	1420(%rsp), %edx
	negl	%edx
	andl	$3, %edx
	movl	$put_pad.pad_to_4, %esi
	movq	%r15, %rdi
	callq	stream_write
	jmp	.LBB1_269
.Lfunc_end1:
	.size	psf_write_truetype_data, .Lfunc_end1-psf_write_truetype_data
	.cfi_endproc

	.globl	psf_write_truetype_stripped
	.align	16, 0x90
	.type	psf_write_truetype_stripped,@function
psf_write_truetype_stripped:            # @psf_write_truetype_stripped
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 32
	subq	$64, %rsp
.Ltmp29:
	.cfi_def_cfa_offset 96
.Ltmp30:
	.cfi_offset %rbx, -32
.Ltmp31:
	.cfi_offset %r14, -24
.Ltmp32:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movb	$0, 15(%rsp)
	leaq	16(%rsp), %r15
	leaq	15(%rsp), %rdx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	%r15, %rdi
	callq	psf_enumerate_bits_begin
	movl	$4096, %edx             # imm = 0x1000
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rcx
	callq	psf_write_truetype_data
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	psf_write_truetype_stripped, .Lfunc_end2-psf_write_truetype_stripped
	.cfi_endproc

	.globl	psf_write_cid2_font
	.align	16, 0x90
	.type	psf_write_cid2_font,@function
psf_write_cid2_font:                    # @psf_write_cid2_font
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
	pushq	%r12
.Ltmp36:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp37:
	.cfi_def_cfa_offset 48
	subq	$48, %rsp
.Ltmp38:
	.cfi_def_cfa_offset 96
.Ltmp39:
	.cfi_offset %rbx, -48
.Ltmp40:
	.cfi_offset %r12, -40
.Ltmp41:
	.cfi_offset %r14, -32
.Ltmp42:
	.cfi_offset %r15, -24
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movq	%rdi, %r15
	xorl	%eax, %eax
	testq	%rcx, %rcx
	cmovnel	%r8d, %eax
	leaq	(%rsp), %r12
	movl	$1, %r8d
	movq	%r12, %rdi
	movq	%rcx, %rdx
	movl	%eax, %ecx
	callq	psf_enumerate_bits_begin
	orl	$8192, %ebp             # imm = 0x2000
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	%ebp, %edx
	movq	%r12, %rcx
	movq	%r14, %r8
	callq	psf_write_truetype_data
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	psf_write_cid2_font, .Lfunc_end3-psf_write_cid2_font
	.cfi_endproc

	.globl	psf_write_cid2_stripped
	.align	16, 0x90
	.type	psf_write_cid2_stripped,@function
psf_write_cid2_stripped:                # @psf_write_cid2_stripped
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp44:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp45:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 32
	subq	$64, %rsp
.Ltmp47:
	.cfi_def_cfa_offset 96
.Ltmp48:
	.cfi_offset %rbx, -32
.Ltmp49:
	.cfi_offset %r14, -24
.Ltmp50:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movb	$0, 15(%rsp)
	leaq	16(%rsp), %r15
	leaq	15(%rsp), %rdx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	%r15, %rdi
	callq	psf_enumerate_bits_begin
	movl	$12288, %edx            # imm = 0x3000
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rcx
	callq	psf_write_truetype_data
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end4:
	.size	psf_write_cid2_stripped, .Lfunc_end4-psf_write_cid2_stripped
	.cfi_endproc

	.align	16, 0x90
	.type	compare_table_tags,@function
compare_table_tags:                     # @compare_table_tags
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp52:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp53:
	.cfi_def_cfa_offset 32
.Ltmp54:
	.cfi_offset %rbx, -24
.Ltmp55:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	callq	get_u32_msb
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	get_u32_msb
	cmpq	%rax, %rbx
	seta	%al
	movzbl	%al, %ecx
	movl	$-1, %eax
	cmovael	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end5:
	.size	compare_table_tags, .Lfunc_end5-compare_table_tags
	.cfi_endproc

	.align	16, 0x90
	.type	write_cmap,@function
write_cmap:                             # @write_cmap
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
	subq	$616, %rsp              # imm = 0x268
.Ltmp62:
	.cfi_def_cfa_offset 672
.Ltmp63:
	.cfi_offset %rbx, -56
.Ltmp64:
	.cfi_offset %r12, -48
.Ltmp65:
	.cfi_offset %r13, -40
.Ltmp66:
	.cfi_offset %r14, -32
.Ltmp67:
	.cfi_offset %r15, -24
.Ltmp68:
	.cfi_offset %rbp, -16
	movl	%r8d, 24(%rsp)          # 4-byte Spill
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movl	%ecx, %eax
	andl	$8, %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	xorl	%r15d, %r15d
	xorl	%ebp, %ebp
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB6_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %edx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*200(%rbx)
	movq	%rax, %rcx
	shrq	$30, %rcx
	cmpq	$3, %rcx
	setb	%cl
	cmpq	%rax, %r13
	setb	%dl
	addq	$1073741824, %rax       # imm = 0x40000000
	orb	%cl, %dl
	movl	%eax, %ecx
	cmovnel	%r15d, %ecx
	movl	$0, %edx
	jne	.LBB6_3
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	%al, %dl
.LBB6_3:                                # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	orl	%ecx, %r14d
	movb	%ch, 32(%rsp,%rbp,2)  # NOREX
	movb	%dl, 33(%rsp,%rbp,2)
	incq	%rbp
	cmpq	$256, %rbp              # imm = 0x100
	jne	.LBB6_1
# BB#4:                                 # %while.cond.preheader
	movl	$257, %ebx              # imm = 0x101
	.align	16, 0x90
.LBB6_5:                                # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	movzwl	28(%rsp,%rbx,2), %eax
	movl	%eax, %ecx
	shll	$8, %ecx
	movzwl	%cx, %ecx
	shrl	$8, %eax
	orl	%ecx, %eax
	jne	.LBB6_6
# BB#25:                                # %while.body
                                        #   in Loop: Header=BB6_5 Depth=1
	decq	%rbx
	cmpq	$1, %rbx
	jg	.LBB6_5
.LBB6_6:                                # %land.rhs.while.cond.27.preheader_crit_edge
	decl	%ebx
	xorl	%r15d, %r15d
	testl	%ebx, %ebx
	jle	.LBB6_10
# BB#7:                                 # %land.rhs.30.lr.ph
	movslq	%ebx, %rax
	xorl	%ecx, %ecx
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB6_8:                                # %land.rhs.30
                                        # =>This Inner Loop Header: Depth=1
	movslq	%ecx, %rdx
	movzwl	32(%rsp,%rdx), %edx
	movl	%edx, %esi
	shll	$8, %esi
	movzwl	%si, %esi
	shrl	$8, %edx
	orl	%esi, %edx
	jne	.LBB6_10
# BB#9:                                 # %while.body.49
                                        #   in Loop: Header=BB6_8 Depth=1
	incq	%r15
	addl	$2, %ecx
	cmpq	%r15, %rax
	jg	.LBB6_8
.LBB6_10:                               # %while.end.51
	movl	%ebx, %r13d
	subl	%r15d, %r13d
	movl	28(%rsp), %eax          # 4-byte Reload
	testb	$32, %al
	jne	.LBB6_11
# BB#12:                                # %if.end.86
	movq	%r15, 8(%rsp)           # 8-byte Spill
	movl	20(%rsp), %esi          # 4-byte Reload
	testl	%esi, %esi
	sete	%al
	movzbl	%r14b, %edx
	cmpl	$127, %r13d
	seta	%cl
	cmpl	%edx, %r14d
	jne	.LBB6_19
# BB#13:                                # %if.end.86
	andb	%cl, %al
	jne	.LBB6_19
# BB#14:                                # %if.then.95
	movl	$cmap_initial_0, %esi
	movl	$26, %edx
	movq	%r12, %rdi
	callq	stream_write
	xorl	%ebp, %ebp
	movl	24(%rsp), %r14d         # 4-byte Reload
	.align	16, 0x90
.LBB6_15:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	120(%r12), %rax
	cmpq	128(%r12), %rax
	jae	.LBB6_17
# BB#16:                                # %cond.true.i
                                        #   in Loop: Header=BB6_15 Depth=1
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%r12)
	movb	33(%rsp,%rbp,2), %cl
	movb	%cl, 1(%rax)
	jmp	.LBB6_18
	.align	16, 0x90
.LBB6_17:                               # %cond.false.i
                                        #   in Loop: Header=BB6_15 Depth=1
	movzbl	33(%rsp,%rbp,2), %esi
	movq	%r12, %rdi
	callq	spputc
.LBB6_18:                               # %for.inc.i
                                        #   in Loop: Header=BB6_15 Depth=1
	incq	%rbp
	cmpq	$256, %rbp              # imm = 0x100
	jne	.LBB6_15
	jmp	.LBB6_23
.LBB6_11:                               # %if.then.55
	leaq	576(%rsp), %rdi
	movl	$cmap_unicode_initial_6, %esi
	movl	$30, %edx
	movq	%r13, (%rsp)            # 8-byte Spill
	callq	memcpy
	movzwl	594(%rsp), %eax
	bswapl	%eax
	shrl	$16, %eax
	leal	(%rax,%r13,2), %eax
	movb	%ah, 594(%rsp)  # NOREX
	movb	%al, 595(%rsp)
	movzwl	598(%rsp), %eax
	bswapl	%eax
	shrl	$16, %eax
	leal	(%rax,%r13,2), %eax
	movb	%ah, 598(%rsp)  # NOREX
	movb	%al, 599(%rsp)
	movq	%r13, %rax
	leal	(%rax,%rax), %r14d
	movl	%r14d, 28(%rsp)         # 4-byte Spill
	movl	%r15d, %r13d
	shrl	$8, %r13d
	movb	%r13b, 602(%rsp)
	movb	%r15b, 603(%rsp)
	movb	%ah, 604(%rsp)  # NOREX
	movb	%al, 605(%rsp)
	movl	$30, %edx
	movq	%r12, %rdi
	leaq	576(%rsp), %rsi
	callq	stream_write
	movl	%r15d, %ebp
	addl	%ebp, %ebp
	leaq	32(%rsp,%rbp), %rsi
	movq	%r12, %rdi
	movl	%r14d, %edx
	callq	stream_write
	leaq	544(%rsp), %r14
	movl	$cmap_sub_initial, %esi
	movl	$32, %edx
	movq	%r14, %rdi
	callq	memcpy
	movzwl	546(%rsp), %eax
	bswapl	%eax
	shrl	$16, %eax
	movq	(%rsp), %rcx            # 8-byte Reload
	leal	(%rax,%rcx,2), %eax
	movb	%ah, 546(%rsp)  # NOREX
	movb	%al, 547(%rsp)
	decl	%ebx
	movb	%bh, 558(%rsp)  # NOREX
	movb	%bl, 559(%rsp)
	movb	%r13b, 564(%rsp)
	movb	%r15b, 565(%rsp)
	movl	$32, %edx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	stream_write
	movslq	%ebp, %rax
	leaq	32(%rsp,%rax), %rsi
	movq	%r12, %rdi
	movl	28(%rsp), %edx          # 4-byte Reload
	callq	stream_write
	movl	24(%rsp), %edx          # 4-byte Reload
	negl	%edx
	andl	$3, %edx
	movl	$put_pad.pad_to_4, %esi
	movq	%r12, %rdi
	jmp	.LBB6_24
.LBB6_19:                               # %if.else
	testl	%esi, %esi
	movl	24(%rsp), %r14d         # 4-byte Reload
	jne	.LBB6_21
# BB#20:                                # %if.then.98
	leaq	576(%rsp), %rdi
	movl	$cmap_initial_6, %esi
	movl	$30, %edx
	callq	memcpy
	movzwl	594(%rsp), %eax
	bswapl	%eax
	shrl	$16, %eax
	movq	%r13, %rcx
	leal	(%rax,%rcx,2), %eax
	movb	%ah, 594(%rsp)  # NOREX
	movb	%al, 595(%rsp)
	movzwl	598(%rsp), %eax
	bswapl	%eax
	shrl	$16, %eax
	leal	(%rax,%rcx,2), %eax
	movb	%ah, 598(%rsp)  # NOREX
	movb	%al, 599(%rsp)
	leal	(%rcx,%rcx), %ebp
	movq	8(%rsp), %rax           # 8-byte Reload
	movb	%ah, 602(%rsp)  # NOREX
	movb	%al, 603(%rsp)
	movq	%rax, %r15
	movb	%ch, 604(%rsp)  # NOREX
	movb	%cl, 605(%rsp)
	movl	$30, %edx
	movq	%r12, %rdi
	leaq	576(%rsp), %rsi
	callq	stream_write
	leal	(%r15,%r15), %eax
	leaq	32(%rsp,%rax), %rsi
	movq	%r12, %rdi
	movl	%ebp, %edx
	jmp	.LBB6_22
.LBB6_21:                               # %if.else.100
	movl	$cmap_initial_4, %esi
	movl	$12, %edx
	movq	%r12, %rdi
.LBB6_22:                               # %if.end.103
	callq	stream_write
.LBB6_23:                               # %if.end.103
	leaq	544(%rsp), %r15
	movl	$cmap_sub_initial, %esi
	movl	$32, %edx
	movq	%r15, %rdi
	callq	memcpy
	movzwl	546(%rsp), %eax
	bswapl	%eax
	shrl	$16, %eax
	leal	(%r13,%r13), %ebp
	leal	(%rax,%r13,2), %eax
	movb	%ah, 546(%rsp)  # NOREX
	movb	%al, 547(%rsp)
	addl	$61439, %ebx            # imm = 0xEFFF
	movb	%bh, 558(%rsp)  # NOREX
	movb	%bl, 559(%rsp)
	movq	8(%rsp), %r13           # 8-byte Reload
	leal	61440(%r13), %eax
	movb	%ah, 564(%rsp)  # NOREX
	movb	%al, 565(%rsp)
	movl	$32, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	stream_write
	addl	%r13d, %r13d
	movslq	%r13d, %rax
	leaq	32(%rsp,%rax), %rsi
	movq	%r12, %rdi
	movl	%ebp, %edx
	callq	stream_write
	negl	%r14d
	andl	$3, %r14d
	movl	$put_pad.pad_to_4, %esi
	movq	%r12, %rdi
	movl	%r14d, %edx
.LBB6_24:                               # %cleanup
	callq	stream_write
	addq	$616, %rsp              # imm = 0x268
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	write_cmap, .Lfunc_end6-write_cmap
	.cfi_endproc

	.align	16, 0x90
	.type	mac_glyph_index,@function
mac_glyph_index:                        # @mac_glyph_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp70:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp71:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp72:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp73:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp74:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp75:
	.cfi_def_cfa_offset 80
.Ltmp76:
	.cfi_offset %rbx, -56
.Ltmp77:
	.cfi_offset %r12, -48
.Ltmp78:
	.cfi_offset %r13, -40
.Ltmp79:
	.cfi_offset %r14, -32
.Ltmp80:
	.cfi_offset %r15, -24
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movl	%esi, %r12d
	movq	%rdi, %rbx
	movslq	%r12d, %rsi
	xorl	%r13d, %r13d
	xorl	%edx, %edx
	callq	*200(%rbx)
	movq	%rax, %rbp
	cmpq	$2147483647, %rbp       # imm = 0x7FFFFFFF
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movl	$0, (%r14)
	jmp	.LBB7_14
.LBB7_2:                                # %if.end
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movq	%r15, %rdx
	callq	*240(%rbx)
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB7_14
# BB#3:                                 # %if.end.7
	cmpq	$2147483647, %rbp       # imm = 0x7FFFFFFF
	ja	.LBB7_12
# BB#4:                                 # %if.then.10
	leal	-32(%r12), %eax
	cmpl	$94, %eax
	ja	.LBB7_6
# BB#5:                                 # %if.then.15
	addl	$-29, %r12d
	jmp	.LBB7_8
.LBB7_6:                                # %if.else
	movl	%r12d, %eax
	andl	$-128, %eax
	cmpl	$128, %eax
	jne	.LBB7_12
# BB#7:                                 # %if.then.22
	addl	$-30, %r12d
.LBB7_8:                                # %if.end.27
	movslq	%r12d, %rdi
	movl	$7, %esi
	callq	gs_c_known_encode
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	je	.LBB7_12
# BB#9:                                 # %if.end.32
	leaq	8(%rsp), %rsi
	movq	%rax, %rdi
	callq	gs_c_glyph_name
	movl	%eax, %r13d
	testl	%r13d, %r13d
	js	.LBB7_14
# BB#10:                                # %if.end.37
	movq	(%r15), %rdi
	movl	8(%r15), %esi
	movq	8(%rsp), %rdx
	movl	16(%rsp), %ecx
	callq	bytes_compare
	testl	%eax, %eax
	je	.LBB7_11
.LBB7_12:                               # %if.end.46
	movl	$-1, (%r14)
.LBB7_13:                               # %cleanup.47
	xorl	%r13d, %r13d
.LBB7_14:                               # %cleanup.47
	movl	%r13d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_11:                               # %if.then.41
	movl	%r12d, (%r14)
	jmp	.LBB7_13
.Lfunc_end7:
	.size	mac_glyph_index, .Lfunc_end7-mac_glyph_index
	.cfi_endproc

	.align	16, 0x90
	.type	compare_post_glyphs,@function
compare_post_glyphs:                    # @compare_post_glyphs
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	2(%rsi), %eax
	movzwl	2(%rdi), %ecx
	cmpl	%eax, %ecx
	seta	%al
	movzbl	%al, %ecx
	movl	$-1, %eax
	cmovael	%ecx, %eax
	retq
.Lfunc_end8:
	.size	compare_post_glyphs, .Lfunc_end8-compare_post_glyphs
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"psf_write_truetype_data"
	.size	.L.str, 24

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"The number of glyphs %d exceeds capability of True Type format.\n"
	.size	.L.str.1, 65

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"hdmx"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"vdmx"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"glyf"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"loca"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"cmap"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"name"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"OS/2"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"vmtx"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"hmtx"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"post"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"head"
	.size	.L.str.12, 5

	.type	psf_write_truetype_data.version,@object # @psf_write_truetype_data.version
	.section	.rodata,"a",@progbits
psf_write_truetype_data.version:
	.asciz	"\000\001\000"
	.size	psf_write_truetype_data.version, 4

	.type	put_pad.pad_to_4,@object # @put_pad.pad_to_4
put_pad.pad_to_4:
	.zero	3
	.size	put_pad.pad_to_4, 3

	.type	.L.str.13,@object       # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"Actual TT subtable offset %ld differs from one in the TT header %ld.\n"
	.size	.L.str.13, 70

	.type	cmap_sub_initial,@object # @cmap_sub_initial
	.section	.rodata,"a",@progbits
	.align	16
cmap_sub_initial:
	.asciz	"\000\004\000 \000\000\000\004\000\004\000\001\000\000\000\000\377\377\000\000\000\000\377\377\000\000\000\001\000\004\000"
	.size	cmap_sub_initial, 32

	.type	cmap_initial_4,@object  # @cmap_initial_4
cmap_initial_4:
	.ascii	"\000\000\000\001\000\003\000\000\000\000\000\f"
	.size	cmap_initial_4, 12

	.type	cmap_unicode_initial_6,@object # @cmap_unicode_initial_6
	.align	16
cmap_unicode_initial_6:
	.asciz	"\000\000\000\002\000\001\000\000\000\000\000\024\000\003\000\001\000\000\000\036\000\006\000\n\000\000\000\000\000"
	.size	cmap_unicode_initial_6, 30

	.type	cmap_initial_0,@object  # @cmap_initial_0
	.align	16
cmap_initial_0:
	.asciz	"\000\000\000\002\000\001\000\000\000\000\000\024\000\003\000\000\000\000\001\032\000\000\001\006\000"
	.size	cmap_initial_0, 26

	.type	cmap_initial_6,@object  # @cmap_initial_6
	.align	16
cmap_initial_6:
	.asciz	"\000\000\000\002\000\001\000\000\000\000\000\024\000\003\000\000\000\000\000\036\000\006\000\n\000\000\000\000\000"
	.size	cmap_initial_6, 30

	.type	name_initial,@object    # @name_initial
	.align	16
name_initial:
	.asciz	"\000\000\000\001\000\022\000\002\000\002\000\000\000\006\000\000\000"
	.size	name_initial, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
