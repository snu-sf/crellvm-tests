	.text
	.file	"gdevpdtd.bc"
	.globl	pdf_font_descriptor_alloc
	.align	16, 0x90
	.type	pdf_font_descriptor_alloc,@function
pdf_font_descriptor_alloc:              # @pdf_font_descriptor_alloc
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
	subq	$16, %rsp
.Ltmp5:
	.cfi_def_cfa_offset 64
.Ltmp6:
	.cfi_offset %rbx, -48
.Ltmp7:
	.cfi_offset %r12, -40
.Ltmp8:
	.cfi_offset %r14, -32
.Ltmp9:
	.cfi_offset %r15, -24
.Ltmp10:
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movq	%rdx, %rbp
	movq	%rsi, %r15
	movq	%rdi, %r12
	leaq	104(%rbp), %rcx
	movss	104(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm1
	jne	.LBB0_3
	jp	.LBB0_3
# BB#1:                                 # %land.lhs.true
	movss	108(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB0_3
	jp	.LBB0_3
# BB#2:                                 # %cond.true
	leaq	80(%rbp), %rcx
.LBB0_3:                                # %cond.end
	leaq	(%rsp), %rsi
	xorl	%r8d, %r8d
	movq	%r12, %rdi
	movq	%rbp, %rdx
	callq	pdf_base_font_alloc
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB0_7
# BB#4:                                 # %if.end
	movq	56(%rbp), %rdx
	leaq	8(%rsp), %rcx
	movl	$10, %esi
	movq	$-1, %r8
	movq	%r12, %rdi
	callq	pdf_alloc_resource
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB0_5
# BB#6:                                 # %if.end.9
	movq	8(%rsp), %rdi
	addq	$72, %rdi
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$128, %edx
	callq	memset
	movq	(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rax, 160(%rcx)
	movl	128(%rbp), %eax
	movq	8(%rsp), %rcx
	movl	%eax, 168(%rcx)
	movl	%r14d, 172(%rcx)
	movq	%rcx, (%r15)
	jmp	.LBB0_7
.LBB0_5:                                # %if.then.7
	movq	1728(%r12), %rdi
	movq	(%rsp), %rsi
	movl	$.L.str.2, %edx
	callq	*24(%rdi)
.LBB0_7:                                # %cleanup
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pdf_font_descriptor_alloc, .Lfunc_end0-pdf_font_descriptor_alloc
	.cfi_endproc

	.globl	pdf_font_descriptor_free
	.align	16, 0x90
	.type	pdf_font_descriptor_free,@function
pdf_font_descriptor_free:               # @pdf_font_descriptor_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp12:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 32
.Ltmp14:
	.cfi_offset %rbx, -32
.Ltmp15:
	.cfi_offset %r14, -24
.Ltmp16:
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	160(%r14), %rbx
	movq	(%rbx), %rdi
	callq	gs_free_copied_font
	testq	%rbx, %rbx
	je	.LBB1_1
# BB#2:                                 # %land.lhs.true
	movl	56(%rbx), %edx
	testl	%edx, %edx
	je	.LBB1_4
# BB#3:                                 # %if.then
	movq	1728(%r15), %rdi
	movq	48(%rbx), %rsi
	movl	$.L.str.3, %ecx
	callq	*160(%rdi)
	movq	$0, 48(%rbx)
	movl	$0, 56(%rbx)
.LBB1_4:                                # %if.then.12
	movq	64(%r14), %rdi
	callq	cos_object_memory
	movq	24(%rax), %r15
	movq	64(%r14), %rdi
	leaq	64(%r14), %r14
	callq	cos_object_memory
	movl	$.L.str.4, %edx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	*%r15
	jmp	.LBB1_5
.LBB1_1:                                # %entry.if.end.17_crit_edge
	addq	$64, %r14
.LBB1_5:                                # %if.end.17
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB1_7
# BB#6:                                 # %if.then.20
	callq	cos_object_memory
	movq	24(%rax), %rbx
	movq	(%r14), %rdi
	callq	cos_object_memory
	movq	(%r14), %rsi
	movl	$.L.str.5, %edx
	movq	%rax, %rdi
	callq	*%rbx
	movq	$0, (%r14)
.LBB1_7:                                # %if.end.29
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end1:
	.size	pdf_font_descriptor_free, .Lfunc_end1-pdf_font_descriptor_free
	.cfi_endproc

	.globl	pdf_font_descriptor_id
	.align	16, 0x90
	.type	pdf_font_descriptor_id,@function
pdf_font_descriptor_id:                 # @pdf_font_descriptor_id
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	pdf_resource_id         # TAILCALL
.Lfunc_end2:
	.size	pdf_font_descriptor_id, .Lfunc_end2-pdf_font_descriptor_id
	.cfi_endproc

	.globl	pdf_set_font_descriptor_usage
	.align	16, 0x90
	.type	pdf_set_font_descriptor_usage,@function
pdf_set_font_descriptor_usage:          # @pdf_set_font_descriptor_usage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp18:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp20:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp21:
	.cfi_def_cfa_offset 48
.Ltmp22:
	.cfi_offset %rbx, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movl	%esi, %ebp
	movq	%rdi, %r14
	movq	%rbx, %rdi
	callq	pdf_resource_id
	movslq	%eax, %rsi
	movslq	%ebp, %r15
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	pdf_record_usage_by_parent
	movq	160(%rbx), %rax
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.LBB3_2
# BB#1:                                 # %if.then
	movslq	8(%rax), %rsi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	pdf_record_usage_by_parent
.LBB3_2:                                # %if.end
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	pdf_set_font_descriptor_usage, .Lfunc_end3-pdf_set_font_descriptor_usage
	.cfi_endproc

	.globl	pdf_font_descriptor_FontType
	.align	16, 0x90
	.type	pdf_font_descriptor_FontType,@function
pdf_font_descriptor_FontType:           # @pdf_font_descriptor_FontType
	.cfi_startproc
# BB#0:                                 # %entry
	movl	168(%rdi), %eax
	retq
.Lfunc_end4:
	.size	pdf_font_descriptor_FontType, .Lfunc_end4-pdf_font_descriptor_FontType
	.cfi_endproc

	.globl	pdf_font_descriptor_embedding
	.align	16, 0x90
	.type	pdf_font_descriptor_embedding,@function
pdf_font_descriptor_embedding:          # @pdf_font_descriptor_embedding
	.cfi_startproc
# BB#0:                                 # %entry
	movl	172(%rdi), %eax
	retq
.Lfunc_end5:
	.size	pdf_font_descriptor_embedding, .Lfunc_end5-pdf_font_descriptor_embedding
	.cfi_endproc

	.globl	pdf_font_descriptor_is_subset
	.align	16, 0x90
	.type	pdf_font_descriptor_is_subset,@function
pdf_font_descriptor_is_subset:          # @pdf_font_descriptor_is_subset
	.cfi_startproc
# BB#0:                                 # %entry
	movq	160(%rdi), %rdi
	jmp	pdf_base_font_is_subset # TAILCALL
.Lfunc_end6:
	.size	pdf_font_descriptor_is_subset, .Lfunc_end6-pdf_font_descriptor_is_subset
	.cfi_endproc

	.globl	pdf_font_descriptor_name
	.align	16, 0x90
	.type	pdf_font_descriptor_name,@function
pdf_font_descriptor_name:               # @pdf_font_descriptor_name
	.cfi_startproc
# BB#0:                                 # %entry
	leaq	112(%rdi), %rax
	retq
.Lfunc_end7:
	.size	pdf_font_descriptor_name, .Lfunc_end7-pdf_font_descriptor_name
	.cfi_endproc

	.globl	pdf_fontfile_hash
	.align	16, 0x90
	.type	pdf_fontfile_hash,@function
pdf_fontfile_hash:                      # @pdf_fontfile_hash
	.cfi_startproc
# BB#0:                                 # %entry
	movq	160(%rdi), %rax
	testq	%rax, %rax
	je	.LBB8_5
# BB#1:                                 # %land.lhs.true
	movq	72(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB8_5
# BB#2:                                 # %if.then
	xorl	%eax, %eax
	cmpl	$0, 180(%rcx)
	je	.LBB8_4
# BB#3:                                 # %select.mid
	addq	$184, %rcx
	movq	%rcx, %rax
.LBB8_4:                                # %select.end
	retq
.LBB8_5:                                # %cleanup
	xorl	%eax, %eax
	retq
.Lfunc_end8:
	.size	pdf_fontfile_hash, .Lfunc_end8-pdf_fontfile_hash
	.cfi_endproc

	.globl	pdf_font_descriptor_font
	.align	16, 0x90
	.type	pdf_font_descriptor_font,@function
pdf_font_descriptor_font:               # @pdf_font_descriptor_font
	.cfi_startproc
# BB#0:                                 # %entry
	movq	160(%rdi), %rdi
	jmp	pdf_base_font_font      # TAILCALL
.Lfunc_end9:
	.size	pdf_font_descriptor_font, .Lfunc_end9-pdf_font_descriptor_font
	.cfi_endproc

	.globl	pdf_font_descriptor_drop_complete_font
	.align	16, 0x90
	.type	pdf_font_descriptor_drop_complete_font,@function
pdf_font_descriptor_drop_complete_font: # @pdf_font_descriptor_drop_complete_font
	.cfi_startproc
# BB#0:                                 # %entry
	movq	160(%rdi), %rdi
	jmp	pdf_base_font_drop_complete # TAILCALL
.Lfunc_end10:
	.size	pdf_font_descriptor_drop_complete_font, .Lfunc_end10-pdf_font_descriptor_drop_complete_font
	.cfi_endproc

	.globl	pdf_font_descriptor_base_name
	.align	16, 0x90
	.type	pdf_font_descriptor_base_name,@function
pdf_font_descriptor_base_name:          # @pdf_font_descriptor_base_name
	.cfi_startproc
# BB#0:                                 # %entry
	movq	160(%rdi), %rdi
	jmp	pdf_base_font_name      # TAILCALL
.Lfunc_end11:
	.size	pdf_font_descriptor_base_name, .Lfunc_end11-pdf_font_descriptor_base_name
	.cfi_endproc

	.globl	pdf_font_used_glyph
	.align	16, 0x90
	.type	pdf_font_used_glyph,@function
pdf_font_used_glyph:                    # @pdf_font_used_glyph
	.cfi_startproc
# BB#0:                                 # %entry
	movq	160(%rdi), %rdi
	jmp	pdf_base_font_copy_glyph # TAILCALL
.Lfunc_end12:
	.size	pdf_font_used_glyph, .Lfunc_end12-pdf_font_used_glyph
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI13_0:
	.long	2147483647              # 0x7fffffff
	.long	2147483647              # 0x7fffffff
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
.LCPI13_1:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	4652007308841189376     # double 1.000000e+03
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_2:
	.quad	4652007308841189376     # double 1000
.LCPI13_3:
	.quad	4633260481411531256     # double 57.295779513082323
.LCPI13_4:
	.quad	4612811918334230528     # double 2.5
.LCPI13_5:
	.quad	4598175219545276416     # double 0.25
.LCPI13_6:
	.quad	4606281698874543309     # double 0.90000000000000002
.LCPI13_7:
	.quad	4594572339843380019     # double 0.14999999999999999
.LCPI13_8:
	.quad	0                       # double 0
	.text
	.globl	pdf_compute_font_descriptor
	.align	16, 0x90
	.type	pdf_compute_font_descriptor,@function
pdf_compute_font_descriptor:            # @pdf_compute_font_descriptor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp27:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp28:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp29:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp30:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp31:
	.cfi_def_cfa_offset 56
	subq	$456, %rsp              # imm = 0x1C8
.Ltmp32:
	.cfi_def_cfa_offset 512
.Ltmp33:
	.cfi_offset %rbx, -56
.Ltmp34:
	.cfi_offset %r12, -48
.Ltmp35:
	.cfi_offset %r13, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, 56(%rsp)          # 8-byte Spill
	movq	160(%r14), %rdi
	xorl	%esi, %esi
	callq	pdf_base_font_font
	movq	%rax, %rbx
	movslq	148(%rbx), %r12
	movl	$1, %r15d
	movb	%r12b, %cl
	shll	%cl, %r15d
	orl	$12, %r15d
	movl	128(%rbx), %ebp
	andl	$-3, %ebp
	movl	%ebp, 76(%rsp)          # 4-byte Spill
	leaq	288(%rsp), %rdi
	xorl	%esi, %esi
	movl	$32, %edx
	callq	memset
	leaq	256(%rsp), %rdi
	xorl	%esi, %esi
	movl	$32, %edx
	callq	memset
	leaq	224(%rsp), %rdi
	xorl	%esi, %esi
	movl	$32, %edx
	callq	memset
	leaq	352(%rsp), %rdi
	xorl	%esi, %esi
	movl	$88, %edx
	callq	memset
	cmpl	$9, %ebp
	jne	.LBB13_7
# BB#1:                                 # %land.lhs.true
	movsd	376(%rbx), %xmm2        # xmm2 = mem[0],zero
	movsd	392(%rbx), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm2
	jne	.LBB13_2
	jnp	.LBB13_7
.LBB13_2:                               # %land.lhs.true.11
	movsd	384(%rbx), %xmm3        # xmm3 = mem[0],zero
	movsd	400(%rbx), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm3
	jne	.LBB13_3
	jnp	.LBB13_7
.LBB13_3:                               # %if.then
	movl	128(%rbx), %eax
	cmpl	$11, %eax
	sete	%cl
	cmpl	$42, %eax
	movzbl	%cl, %ecx
	je	.LBB13_4
# BB#5:                                 # %if.then
	movsd	.LCPI13_1(,%rcx,8), %xmm4 # xmm4 = mem[0],zero
	jmp	.LBB13_6
.LBB13_7:                               # %if.else
	movapd	.LCPI13_0(%rip), %xmm0  # xmm0 = [2147483647,2147483647,2147483648,2147483648]
	movupd	%xmm0, 372(%rsp)
	movl	128(%rbx), %eax
	jmp	.LBB13_8
.LBB13_4:
	movsd	.LCPI13_2(%rip), %xmm4  # xmm4 = mem[0],zero
.LBB13_6:                               # %if.then
	mulsd	%xmm4, %xmm2
	cvttsd2si	%xmm2, %ecx
	movl	%ecx, 372(%rsp)
	mulsd	%xmm4, %xmm3
	cvttsd2si	%xmm3, %ecx
	movl	%ecx, 376(%rsp)
	mulsd	%xmm4, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, 380(%rsp)
	mulsd	%xmm4, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, 384(%rsp)
	movl	%ecx, 352(%rsp)
	andl	$-5, %r15d
.LBB13_8:                               # %if.end
	xorl	%ecx, %ecx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movl	%eax, %ecx
	cmpl	$54, %eax
	ja	.LBB13_12
# BB#9:                                 # %if.end
	movabsq	$33776997205278728, %rax # imm = 0x78000000000008
	btq	%rcx, %rax
	jb	.LBB13_13
# BB#10:                                # %if.end
	movabsq	$4398046513152, %rax    # imm = 0x40000000800
	btq	%rcx, %rax
	jae	.LBB13_12
# BB#11:                                # %sw.bb
	movsd	.LCPI13_2(%rip), %xmm0  # xmm0 = mem[0],zero
	leaq	328(%rsp), %rdi
	movq	%rdi, 96(%rsp)          # 8-byte Spill
	movapd	%xmm0, %xmm1
	callq	gs_make_scaling
	jmp	.LBB13_13
.LBB13_12:                              # %sw.default
	movq	%rbx, %rdi
	addq	$80, %rdi
	movsd	.LCPI13_2(%rip), %xmm0  # xmm0 = mem[0],zero
	leaq	328(%rsp), %rsi
	movq	%rsi, 96(%rsp)          # 8-byte Spill
	movapd	%xmm0, %xmm1
	callq	gs_matrix_scale
.LBB13_13:                              # %sw.epilog
	cmpl	$9, 76(%rsp)            # 4-byte Folded Reload
	sete	%al
	movl	$0, 444(%rsp)
	movzbl	%al, %edx
	movl	%edx, 92(%rsp)          # 4-byte Spill
	leaq	444(%rsp), %rsi
	leaq	448(%rsp), %rcx
	movq	%rbx, %rdi
	callq	*216(%rbx)
	testl	%eax, %eax
	js	.LBB13_15
# BB#14:                                # %sw.epilog
	movl	444(%rsp), %eax
	testl	%eax, %eax
	je	.LBB13_15
# BB#16:                                # %for.body.lr.ph
	movl	%r15d, %eax
	andl	$4, %eax
	movl	%eax, 88(%rsp)          # 4-byte Spill
	shlq	$4, %r12
	leaq	128(%rsp,%r12), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leaq	136(%rsp,%r12), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	movl	$2147483647, %r12d      # imm = 0x7FFFFFFF
	movl	$0, 20(%rsp)            # 4-byte Folded Spill
	movl	$0, 16(%rsp)            # 4-byte Folded Spill
	movl	$0, 36(%rsp)            # 4-byte Folded Spill
	movl	$0, 24(%rsp)            # 4-byte Folded Spill
	movl	$0, 28(%rsp)            # 4-byte Folded Spill
	movl	$0, 32(%rsp)            # 4-byte Folded Spill
	movl	$0, 44(%rsp)            # 4-byte Folded Spill
	movl	$0, 40(%rsp)            # 4-byte Folded Spill
	jmp	.LBB13_17
	.align	16, 0x90
.LBB13_18:                              # %if.end.90
                                        #   in Loop: Header=BB13_17 Depth=1
	testl	%eax, %eax
	js	.LBB13_19
# BB#20:                                # %if.end.94
                                        #   in Loop: Header=BB13_17 Depth=1
	cmpl	$0, 88(%rsp)            # 4-byte Folded Reload
	je	.LBB13_31
# BB#21:                                # %if.then.97
                                        #   in Loop: Header=BB13_17 Depth=1
	movsd	176(%rsp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	372(%rsp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB13_23
# BB#22:                                # %if.then.106
                                        #   in Loop: Header=BB13_17 Depth=1
	cvttsd2si	%xmm0, %eax
	movl	%eax, 372(%rsp)
.LBB13_23:                              # %if.end.114
                                        #   in Loop: Header=BB13_17 Depth=1
	movsd	192(%rsp), %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	cvtsi2sdl	380(%rsp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB13_25
# BB#24:                                # %if.then.124
                                        #   in Loop: Header=BB13_17 Depth=1
	cvttsd2si	%xmm0, %eax
	movl	%eax, 380(%rsp)
.LBB13_25:                              # %if.end.132
                                        #   in Loop: Header=BB13_17 Depth=1
	movsd	184(%rsp), %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	cvtsi2sdl	376(%rsp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB13_27
# BB#26:                                # %if.then.142
                                        #   in Loop: Header=BB13_17 Depth=1
	cvttsd2si	%xmm0, %eax
	movl	%eax, 376(%rsp)
.LBB13_27:                              # %if.end.150
                                        #   in Loop: Header=BB13_17 Depth=1
	movsd	200(%rsp), %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	cvtsi2sdl	384(%rsp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB13_29
# BB#28:                                # %if.then.160
                                        #   in Loop: Header=BB13_17 Depth=1
	cvttsd2si	%xmm0, %eax
	movl	%eax, 384(%rsp)
.LBB13_29:                              # %if.end.168
                                        #   in Loop: Header=BB13_17 Depth=1
	cmpl	$0, 208(%rsp)
	jne	.LBB13_31
# BB#30:                                # %if.then.170
                                        #   in Loop: Header=BB13_17 Depth=1
	movl	352(%rsp), %eax
	cvttsd2si	%xmm0, %ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	movl	%ecx, 352(%rsp)
	.align	16, 0x90
.LBB13_31:                              # %if.end.186
                                        #   in Loop: Header=BB13_17 Depth=1
	cmpq	$2147483647, %r12       # imm = 0x7FFFFFFF
	jne	.LBB13_34
# BB#32:                                # %land.lhs.true.189
                                        #   in Loop: Header=BB13_17 Depth=1
	movq	448(%rsp), %rsi
	movq	%rbx, %rdi
	callq	gs_font_glyph_is_notdef
	testl	%eax, %eax
	movl	$2147483647, %r12d      # imm = 0x7FFFFFFF
	je	.LBB13_34
# BB#33:                                # %if.then.192
                                        #   in Loop: Header=BB13_17 Depth=1
	movq	448(%rsp), %r12
	movq	64(%rsp), %rax          # 8-byte Reload
	cvttsd2si	(%rax), %eax
	movl	%eax, 424(%rsp)
.LBB13_34:                              # %if.end.195
                                        #   in Loop: Header=BB13_17 Depth=1
	movq	80(%rsp), %rax          # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	ucomisd	.LCPI13_8, %xmm0
	movl	$-2147483648, %r13d     # imm = 0xFFFFFFFF80000000
	jne	.LBB13_39
	jp	.LBB13_39
# BB#35:                                # %if.else.203
                                        #   in Loop: Header=BB13_17 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	testl	%ebp, %ebp
	je	.LBB13_36
# BB#37:                                # %if.else.212
                                        #   in Loop: Header=BB13_17 Depth=1
	cvtsi2sdl	%ebp, %xmm1
	ucomisd	%xmm1, %xmm0
	movl	%ebp, %r13d
	jne	.LBB13_38
	jnp	.LBB13_39
.LBB13_38:                              # %if.then.220
                                        #   in Loop: Header=BB13_17 Depth=1
	movl	$-2147483648, %r13d     # imm = 0xFFFFFFFF80000000
	jmp	.LBB13_39
	.align	16, 0x90
.LBB13_19:                              #   in Loop: Header=BB13_17 Depth=1
	movl	%ebp, %r13d
	jmp	.LBB13_71
.LBB13_36:                              # %if.then.206
                                        #   in Loop: Header=BB13_17 Depth=1
	cvttsd2si	%xmm0, %r13d
	.align	16, 0x90
.LBB13_39:                              # %if.end.223
                                        #   in Loop: Header=BB13_17 Depth=1
	testb	$4, 408(%rsp)
	jne	.LBB13_71
# BB#40:                                # %if.end.227
                                        #   in Loop: Header=BB13_17 Depth=1
	cmpl	$9, 76(%rsp)            # 4-byte Folded Reload
	je	.LBB13_71
# BB#41:                                # %if.end.230
                                        #   in Loop: Header=BB13_17 Depth=1
	movq	448(%rsp), %rsi
	movq	%rbx, %rdi
	leaq	104(%rsp), %rdx
	callq	*240(%rbx)
	testl	%eax, %eax
	js	.LBB13_42
# BB#43:                                # %if.end.238
                                        #   in Loop: Header=BB13_17 Depth=1
	movq	%r14, 48(%rsp)          # 8-byte Spill
	movq	104(%rsp), %rdi
	movl	112(%rsp), %esi
	callq	gs_c_name_glyph
	movq	%rax, %r14
	cmpq	$2147483647, %r14       # imm = 0x7FFFFFFF
	je	.LBB13_44
# BB#45:                                # %cond.false.304
                                        #   in Loop: Header=BB13_17 Depth=1
	movq	104(%rsp), %rsi
	movl	112(%rsp), %ebp
	movl	$.L.str.6, %edi
	movq	%rbp, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB13_48
# BB#46:                                # %if.then.310
                                        #   in Loop: Header=BB13_17 Depth=1
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	gs_c_decode
	cmpq	$-1, %rax
	je	.LBB13_44
# BB#47:                                # %if.end.318thread-pre-split
                                        #   in Loop: Header=BB13_17 Depth=1
	movl	112(%rsp), %ebp
.LBB13_48:                              # %if.end.318
                                        #   in Loop: Header=BB13_17 Depth=1
	cmpl	$1, %ebp
	je	.LBB13_58
# BB#49:                                # %if.end.318
                                        #   in Loop: Header=BB13_17 Depth=1
	cmpl	$6, %ebp
	jne	.LBB13_50
# BB#55:                                # %sw.bb.327
                                        #   in Loop: Header=BB13_17 Depth=1
	movq	104(%rsp), %rdi
	movl	$.L.str.8, %esi
	movl	$6, %edx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB13_57
# BB#56:                                #   in Loop: Header=BB13_17 Depth=1
	movq	48(%rsp), %r14          # 8-byte Reload
	jmp	.LBB13_71
.LBB13_44:                              # %if.then.242
                                        #   in Loop: Header=BB13_17 Depth=1
	orb	$4, 408(%rsp)
	movq	48(%rsp), %r14          # 8-byte Reload
	jmp	.LBB13_71
.LBB13_42:                              # %if.then.235
                                        #   in Loop: Header=BB13_17 Depth=1
	orb	$4, 408(%rsp)
	.align	16, 0x90
.LBB13_71:                              # %cleanup.thread
                                        #   in Loop: Header=BB13_17 Depth=1
	movq	%rbx, %rdi
	leaq	444(%rsp), %rsi
	movl	92(%rsp), %edx          # 4-byte Reload
	leaq	448(%rsp), %rcx
	callq	*216(%rbx)
	testl	%eax, %eax
	js	.LBB13_73
# BB#72:                                # %cleanup.thread
                                        #   in Loop: Header=BB13_17 Depth=1
	movl	444(%rsp), %eax
	testl	%eax, %eax
	movl	%r13d, %ebp
	jne	.LBB13_17
	jmp	.LBB13_73
.LBB13_58:                              # %sw.epilog.335
                                        #   in Loop: Header=BB13_17 Depth=1
	movq	104(%rsp), %rax
	movzbl	(%rax), %eax
	movb	%al, %cl
	addb	$-65, %cl
	movzbl	%cl, %ecx
	cmpl	$25, %ecx
	ja	.LBB13_62
# BB#59:                                # %if.then.347
                                        #   in Loop: Header=BB13_17 Depth=1
	cvttsd2si	200(%rsp), %ecx
	movl	44(%rsp), %edx          # 4-byte Reload
	cmpl	%ecx, %edx
	cmovll	%ecx, %edx
	cmpl	$73, %eax
	jne	.LBB13_60
# BB#61:                                # %if.then.367
                                        #   in Loop: Header=BB13_17 Depth=1
	movl	%edx, 44(%rsp)          # 4-byte Spill
	leaq	176(%rsp), %rax
	movupd	(%rax), %xmm0
	movupd	16(%rax), %xmm1
	movapd	%xmm1, 240(%rsp)
	movapd	%xmm0, 224(%rsp)
	movl	$1, 36(%rsp)            # 4-byte Folded Spill
	movq	48(%rsp), %r14          # 8-byte Reload
	jmp	.LBB13_71
.LBB13_50:                              # %if.end.318
                                        #   in Loop: Header=BB13_17 Depth=1
	cmpl	$5, %ebp
	jne	.LBB13_51
# BB#52:                                # %sw.bb.320
                                        #   in Loop: Header=BB13_17 Depth=1
	movq	104(%rsp), %rdi
	movl	$.L.str.7, %esi
	movl	$5, %edx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB13_54
# BB#53:                                #   in Loop: Header=BB13_17 Depth=1
	movq	48(%rsp), %r14          # 8-byte Reload
	jmp	.LBB13_71
.LBB13_62:                              # %if.else.370
                                        #   in Loop: Header=BB13_17 Depth=1
	movb	%al, %cl
	addb	$-97, %cl
	movzbl	%cl, %ecx
	cmpl	$25, %ecx
	ja	.LBB13_63
# BB#64:                                # %if.then.382
                                        #   in Loop: Header=BB13_17 Depth=1
	cvttsd2si	200(%rsp), %ecx
	addl	$-98, %eax
	cmpl	$23, %eax
	jbe	.LBB13_66
# BB#65:                                #   in Loop: Header=BB13_17 Depth=1
	movl	$1, 32(%rsp)            # 4-byte Folded Spill
	movq	48(%rsp), %r14          # 8-byte Reload
	jmp	.LBB13_70
.LBB13_51:                              #   in Loop: Header=BB13_17 Depth=1
	movq	48(%rsp), %r14          # 8-byte Reload
	jmp	.LBB13_71
.LBB13_57:                              # %if.then.331
                                        #   in Loop: Header=BB13_17 Depth=1
	leaq	176(%rsp), %rax
	movupd	(%rax), %xmm0
	movupd	16(%rax), %xmm1
	movapd	%xmm1, 272(%rsp)
	movapd	%xmm0, 256(%rsp)
	movl	$1, 24(%rsp)            # 4-byte Folded Spill
	movq	48(%rsp), %r14          # 8-byte Reload
	jmp	.LBB13_71
.LBB13_60:                              #   in Loop: Header=BB13_17 Depth=1
	movl	%edx, 44(%rsp)          # 4-byte Spill
	movq	48(%rsp), %r14          # 8-byte Reload
	jmp	.LBB13_71
.LBB13_63:                              #   in Loop: Header=BB13_17 Depth=1
	movq	48(%rsp), %r14          # 8-byte Reload
	jmp	.LBB13_71
.LBB13_54:                              # %if.then.324
                                        #   in Loop: Header=BB13_17 Depth=1
	leaq	176(%rsp), %rax
	movupd	(%rax), %xmm0
	movupd	16(%rax), %xmm1
	movapd	%xmm1, 304(%rsp)
	movapd	%xmm0, 288(%rsp)
	movl	$1, 28(%rsp)            # 4-byte Folded Spill
	movq	48(%rsp), %r14          # 8-byte Reload
	jmp	.LBB13_71
.LBB13_66:                              # %if.then.382
                                        #   in Loop: Header=BB13_17 Depth=1
	movl	$1, 32(%rsp)            # 4-byte Folded Spill
	cvttsd2si	184(%rsp), %edx
	movq	48(%rsp), %r14          # 8-byte Reload
	jmpq	*.LJTI13_0(,%rax,8)
.LBB13_67:                              # %sw.bb.396
                                        #   in Loop: Header=BB13_17 Depth=1
	movl	16(%rsp), %eax          # 4-byte Reload
	cmpl	%ecx, %eax
	cmovll	%ecx, %eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	jmp	.LBB13_71
.LBB13_69:                              # %sw.bb.410
                                        #   in Loop: Header=BB13_17 Depth=1
	movl	20(%rsp), %eax          # 4-byte Reload
	cmpl	%edx, %eax
	cmovgl	%edx, %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
.LBB13_70:                              # %sw.default.417
                                        #   in Loop: Header=BB13_17 Depth=1
	movl	40(%rsp), %eax          # 4-byte Reload
	cmpl	%ecx, %eax
	cmovll	%ecx, %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	jmp	.LBB13_71
.LBB13_68:                              # %sw.bb.403
                                        #   in Loop: Header=BB13_17 Depth=1
	movl	20(%rsp), %eax          # 4-byte Reload
	cmpl	%edx, %eax
	cmovgl	%edx, %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	jmp	.LBB13_71
	.align	16, 0x90
.LBB13_17:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	448(%rsp), %rsi
	movq	%rbx, %rdi
	movq	96(%rsp), %rdx          # 8-byte Reload
	movl	%r15d, %ecx
	leaq	120(%rsp), %r8
	callq	*224(%rbx)
	cmpl	$-25, %eax
	jne	.LBB13_18
# BB#106:                               # %cleanup
	movl	$-25, %eax
	jmp	.LBB13_105
.LBB13_15:                              # %sw.epilog.for.end_crit_edge
	xorl	%r13d, %r13d
	movl	$0, 20(%rsp)            # 4-byte Folded Spill
	movl	$0, 16(%rsp)            # 4-byte Folded Spill
	movl	$0, 36(%rsp)            # 4-byte Folded Spill
	movl	$0, 24(%rsp)            # 4-byte Folded Spill
	movl	$0, 28(%rsp)            # 4-byte Folded Spill
	movl	$0, 32(%rsp)            # 4-byte Folded Spill
	movl	$0, 44(%rsp)            # 4-byte Folded Spill
	movl	$0, 40(%rsp)            # 4-byte Folded Spill
.LBB13_73:                              # %for.end
	movl	408(%rsp), %eax
	testb	$4, %al
	movq	56(%rsp), %rbp          # 8-byte Reload
	jne	.LBB13_88
# BB#74:                                # %if.then.433
	movl	%eax, %ecx
	orl	$32, %ecx
	movl	%ecx, 408(%rsp)
	movl	40(%rsp), %ecx          # 4-byte Reload
	movl	%ecx, 432(%rsp)
	cmpl	$0, 32(%rsp)            # 4-byte Folded Reload
	jne	.LBB13_78
# BB#75:                                # %land.lhs.true.437
	cmpl	$0, 9564(%rbp)
	je	.LBB13_77
# BB#76:                                # %lor.lhs.false
	cmpl	$42, 128(%rbx)
	je	.LBB13_78
.LBB13_77:                              # %if.then.444
	orl	$65568, %eax            # imm = 0x10020
	movl	%eax, 408(%rsp)
.LBB13_78:                              # %if.end.447
	movl	44(%rsp), %eax          # 4-byte Reload
	movl	%eax, 356(%rsp)
	cmpl	$0, 28(%rsp)            # 4-byte Folded Reload
	je	.LBB13_80
# BB#79:                                # %if.end.447
	cmpl	$0, 24(%rsp)            # 4-byte Folded Reload
	je	.LBB13_80
# BB#81:                                # %if.then.451
	movsd	304(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	312(%rsp), %xmm0        # xmm0 = mem[0],zero
	subsd	296(%rsp), %xmm0
	movsd	272(%rsp), %xmm2        # xmm2 = mem[0],zero
	movsd	280(%rsp), %xmm3        # xmm3 = mem[0],zero
	subsd	264(%rsp), %xmm3
	subsd	%xmm3, %xmm0
	subsd	288(%rsp), %xmm1
	subsd	256(%rsp), %xmm2
	subsd	%xmm2, %xmm1
	callq	atan2
	mulsd	.LCPI13_3(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	$89, %ecx
	subl	%eax, %ecx
	cmpl	$-92, %ecx
	movl	$-91, %edx
	cmovgl	%ecx, %edx
	leal	90(%rax,%rdx), %ecx
	movl	%ecx, %edx
	shrl	$2, %edx
	imulq	$381774871, %rdx, %rdx  # imm = 0x16C16C17
	shrq	$34, %rdx
	imull	$180, %edx, %edx
	movl	%ecx, %esi
	subl	%edx, %esi
	subl	%ecx, %esi
	leal	-90(%rax,%rsi), %eax
	cmpl	$-91, %eax
	movl	$-90, %ecx
	cmovgl	%eax, %ecx
	addl	$179, %ecx
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	shrl	$2, %eax
	imulq	$381774871, %rax, %rax  # imm = 0x16C16C17
	shrq	$34, %rax
	imull	$180, %eax, %eax
	subl	%eax, %edx
	subl	%edx, %ecx
	cmpl	$30, %ecx
	movl	$30, %eax
	cmovlel	%ecx, %eax
	cmpl	$-30, %ecx
	movl	$-30, %ecx
	cmovgel	%eax, %ecx
	leal	2(%rcx), %edx
	xorl	%eax, %eax
	cmpl	$5, %edx
	cmovael	%ecx, %eax
	movl	%eax, 364(%rsp)
	jmp	.LBB13_82
.LBB13_80:                              # %if.end.447.if.end.503_crit_edge
	movl	364(%rsp), %eax
.LBB13_82:                              # %if.end.503
	testl	%eax, %eax
	je	.LBB13_84
# BB#83:                                # %if.then.506
	orb	$64, 408(%rsp)
.LBB13_84:                              # %if.end.509
	cmpl	$0, 36(%rsp)            # 4-byte Folded Reload
	je	.LBB13_88
# BB#85:                                # %if.then.511
	movsd	272(%rsp), %xmm0        # xmm0 = mem[0],zero
	subsd	256(%rsp), %xmm0
	movsd	240(%rsp), %xmm1        # xmm1 = mem[0],zero
	subsd	224(%rsp), %xmm1
	cvttsd2si	%xmm0, %eax
	movl	%eax, 368(%rsp)
	mulsd	.LCPI13_4(%rip), %xmm1
	ucomisd	%xmm1, %xmm0
	ja	.LBB13_87
# BB#86:                                # %lor.lhs.false.534
	movsd	280(%rsp), %xmm1        # xmm1 = mem[0],zero
	subsd	264(%rsp), %xmm1
	mulsd	.LCPI13_5(%rip), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB13_88
.LBB13_87:                              # %if.then.543
	orb	$2, 408(%rsp)
.LBB13_88:                              # %if.end.548
	movq	352(%rsp), %rax
	testl	%eax, %eax
	movl	%eax, %ecx
	jne	.LBB13_90
# BB#89:                                # %if.then.552
	movl	384(%rsp), %ecx
	movl	%ecx, 352(%rsp)
.LBB13_90:                              # %if.end.557
	movl	376(%rsp), %esi
	movl	%esi, 360(%rsp)
	movl	408(%rsp), %edx
	testl	$65540, %edx            # imm = 0x10004
	jne	.LBB13_96
# BB#91:                                # %land.lhs.true.564
	movslq	%esi, %rsi
	imulq	$1431655766, %rsi, %rsi # imm = 0x55555556
	movq	%rsi, %rdi
	shrq	$63, %rdi
	shrq	$32, %rsi
	addl	%edi, %esi
	cmpl	%esi, 20(%rsp)          # 4-byte Folded Reload
	jg	.LBB13_93
# BB#92:                                # %lor.lhs.false.568
	cvtsi2sdl	432(%rsp), %xmm0
	movl	16(%rsp), %esi          # 4-byte Reload
	cvtsi2sdl	%esi, %xmm1
	mulsd	.LCPI13_6(%rip), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB13_96
.LBB13_93:                              # %land.lhs.true.575
	cmpl	$0, 9564(%rbp)
	je	.LBB13_95
# BB#94:                                # %lor.lhs.false.582
	cmpl	$42, 128(%rbx)
	je	.LBB13_96
.LBB13_95:                              # %if.then.586
	orl	$131072, %edx           # imm = 0x20000
	movl	%edx, 408(%rsp)
.LBB13_96:                              # %if.end.589
	testl	%r13d, %r13d
	jle	.LBB13_100
# BB#97:                                # %land.lhs.true.592
	cmpl	$0, 9564(%rbp)
	je	.LBB13_99
# BB#98:                                # %lor.lhs.false.599
	cmpl	$42, 128(%rbx)
	je	.LBB13_100
.LBB13_99:                              # %if.then.603
	orl	$1, %edx
	movl	%edx, 408(%rsp)
	movl	%r13d, 424(%rsp)
	movl	%r13d, 420(%rsp)
	movl	%r13d, 412(%rsp)
.LBB13_100:                             # %if.end.607
	shrq	$32, %rax
	jne	.LBB13_102
# BB#101:                               # %if.then.611
	movl	%ecx, 356(%rsp)
.LBB13_102:                             # %if.end.614
	cmpl	$0, 368(%rsp)
	jne	.LBB13_104
# BB#103:                               # %if.then.618
	xorps	%xmm0, %xmm0
	cvtsi2sdl	380(%rsp), %xmm0
	mulsd	.LCPI13_7(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 368(%rsp)
.LBB13_104:                             # %if.end.626
	movq	432(%rsp), %rax
	movq	%rax, 152(%r14)
	movups	416(%rsp), %xmm0
	movups	%xmm0, 136(%r14)
	movupd	352(%rsp), %xmm0
	movupd	368(%rsp), %xmm1
	movupd	384(%rsp), %xmm2
	movupd	400(%rsp), %xmm3
	movupd	%xmm3, 120(%r14)
	movupd	%xmm2, 104(%r14)
	movupd	%xmm1, 88(%r14)
	movupd	%xmm0, 72(%r14)
	xorl	%eax, %eax
.LBB13_105:                             # %cleanup.627
	addq	$456, %rsp              # imm = 0x1C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	pdf_compute_font_descriptor, .Lfunc_end13-pdf_compute_font_descriptor
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI13_0:
	.quad	.LBB13_67
	.quad	.LBB13_70
	.quad	.LBB13_67
	.quad	.LBB13_70
	.quad	.LBB13_67
	.quad	.LBB13_69
	.quad	.LBB13_67
	.quad	.LBB13_71
	.quad	.LBB13_68
	.quad	.LBB13_67
	.quad	.LBB13_67
	.quad	.LBB13_70
	.quad	.LBB13_70
	.quad	.LBB13_70
	.quad	.LBB13_69
	.quad	.LBB13_69
	.quad	.LBB13_70
	.quad	.LBB13_70
	.quad	.LBB13_67
	.quad	.LBB13_70
	.quad	.LBB13_70
	.quad	.LBB13_70
	.quad	.LBB13_70
	.quad	.LBB13_69

	.text
	.globl	pdf_finish_FontDescriptor
	.align	16, 0x90
	.type	pdf_finish_FontDescriptor,@function
pdf_finish_FontDescriptor:              # @pdf_finish_FontDescriptor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp40:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp42:
	.cfi_def_cfa_offset 48
.Ltmp43:
	.cfi_offset %rbx, -32
.Ltmp44:
	.cfi_offset %r14, -24
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	$0, 8(%rsp)
	movq	64(%rbx), %rax
	xorl	%ebp, %ebp
	cmpq	$-1, 8(%rax)
	je	.LBB14_7
# BB#1:                                 # %if.end
	cmpb	$0, 50(%rax)
	jne	.LBB14_7
# BB#2:                                 # %land.lhs.true
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	pdf_compute_font_descriptor
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB14_7
# BB#3:                                 # %land.lhs.true.4
	xorl	%esi, %esi
	cmpl	$0, 172(%rbx)
	je	.LBB14_6
# BB#4:                                 # %lor.lhs.false
	movq	16(%rbx), %r8
	movq	160(%rbx), %rsi
	movl	168(%rbx), %edx
	leaq	92(%rbx), %rcx
	leaq	8(%rsp), %r9
	movq	%r14, %rdi
	callq	pdf_write_embedded_font
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB14_7
# BB#5:                                 # %lor.lhs.false.if.then.10_crit_edge
	movq	8(%rsp), %rsi
.LBB14_6:                               # %if.then.10
	movq	160(%rbx), %rdi
	callq	pdf_set_FontFile_object
.LBB14_7:                               # %cleanup
	movl	%ebp, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end14:
	.size	pdf_finish_FontDescriptor, .Lfunc_end14-pdf_finish_FontDescriptor
	.cfi_endproc

	.globl	pdf_write_FontDescriptor
	.align	16, 0x90
	.type	pdf_write_FontDescriptor,@function
pdf_write_FontDescriptor:               # @pdf_write_FontDescriptor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp47:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp48:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp49:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp50:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp51:
	.cfi_def_cfa_offset 56
	subq	$504, %rsp              # imm = 0x1F8
.Ltmp52:
	.cfi_def_cfa_offset 560
.Ltmp53:
	.cfi_offset %rbx, -56
.Ltmp54:
	.cfi_offset %r12, -48
.Ltmp55:
	.cfi_offset %r13, -40
.Ltmp56:
	.cfi_offset %r14, -32
.Ltmp57:
	.cfi_offset %r15, -24
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	168(%rbx), %r13d
	movq	$0, 168(%rsp)
	movq	64(%rbx), %rax
	xorl	%ebp, %ebp
	cmpb	$0, 50(%rax)
	jne	.LBB15_41
# BB#1:                                 # %if.end
	cmpq	$-1, 8(%rax)
	je	.LBB15_41
# BB#2:                                 # %if.end.4
	movl	%r13d, %eax
	orl	$2, %eax
	cmpl	$11, %eax
	jne	.LBB15_6
# BB#3:                                 # %sw.bb
	movq	16(%rbx), %rdx
	movq	160(%rbx), %rsi
	movq	%r14, %rdi
	callq	pdf_do_subset_font
	testl	%eax, %eax
	je	.LBB15_6
# BB#4:                                 # %if.then.7
	cmpl	$1, 9564(%r14)
	jg	.LBB15_6
# BB#5:                                 # %if.then.9
	movq	160(%rbx), %rsi
	leaq	168(%rsp), %rdx
	movq	%r14, %rdi
	callq	pdf_write_CIDSet
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB15_41
.LBB15_6:                               # %sw.epilog
	leaq	8(%rsp), %rdi
	movl	$160, %edx
	movq	%rbx, %rsi
	callq	memcpy
	movb	$1, %bpl
	cmpl	$0, 172(%rbx)
	je	.LBB15_10
# BB#7:                                 # %land.lhs.true
	cmpl	$42, 168(%rbx)
	jne	.LBB15_9
# BB#8:                                 # %if.then.21
	movl	136(%rsp), %eax
	andl	$-37, %eax
	orl	$4, %eax
	movl	%eax, 136(%rsp)
.LBB15_9:                               # %if.end.24
	xorl	%ebp, %ebp
.LBB15_10:                              # %if.end.24
	leaq	8(%rsp), %rdi
	callq	pdf_resource_id
	movl	$10, %edx
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	pdf_open_separate
	movq	5848(%r14), %r15
	movl	$.L.str.17, %esi
	movq	%r15, %rdi
	callq	stream_puts
	movq	120(%rsp), %rsi
	movl	128(%rsp), %edx
	testb	%bpl, %bpl
	je	.LBB15_14
# BB#11:                                # %if.then.i
	movq	%rsi, %rdi
	movl	%edx, %esi
	callq	pdf_find_base14_name
	movq	%rax, %r12
	testq	%r12, %r12
	je	.LBB15_13
# BB#12:                                # %if.then.7.i
	movq	%r12, %rdi
	callq	strlen
	movq	%r14, %rdi
	movq	%r12, %rsi
	movl	%eax, %edx
	callq	pdf_put_name
	jmp	.LBB15_15
.LBB15_13:                              # %if.else.i
	movq	120(%rsp), %rsi
	movl	128(%rsp), %edx
.LBB15_14:                              # %if.else.17.i
	movq	%r14, %rdi
	callq	pdf_put_name
	xorl	%r12d, %r12d
.LBB15_15:                              # %if.end.25.i
	leaq	100(%rsp), %rsi
	movq	%r14, %rdi
	callq	pdf_write_font_bbox
	movq	param_printer_params_default+32(%rip), %rax
	movq	%rax, 496(%rsp)
	movups	param_printer_params_default+16(%rip), %xmm0
	movaps	%xmm0, 480(%rsp)
	movups	param_printer_params_default(%rip), %xmm0
	movaps	%xmm0, 464(%rsp)
	leaq	384(%rsp), %rdi
	leaq	464(%rsp), %rsi
	movq	%r15, %rdx
	callq	s_init_param_printer
	xorl	%ebp, %ebp
	testl	%eax, %eax
	js	.LBB15_23
# BB#16:                                # %if.then.30.i
	movl	136(%rsp), %eax
	movl	%eax, 380(%rsp)
	testq	%r12, %r12
	je	.LBB15_18
# BB#17:                                # %if.then.34.i
	orl	$32, %eax
	movl	%eax, 380(%rsp)
.LBB15_18:                              # %if.end.35.i
	leaq	384(%rsp), %rdi
	leaq	380(%rsp), %rdx
	movl	$.L.str.29, %esi
	callq	param_write_int
	testl	%eax, %eax
	js	.LBB15_21
# BB#19:                                # %if.end.40.i
	leaq	384(%rsp), %rdi
	leaq	8(%rsp), %rsi
	xorl	%edx, %edx
	movl	$write_FontDescriptor_common.required_items, %ecx
	callq	gs_param_write_items
	testl	%eax, %eax
	js	.LBB15_21
# BB#20:                                # %if.end.45.i
	leaq	176(%rsp), %r15
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	$200, %edx
	movq	%r15, %rdi
	callq	memset
	leaq	384(%rsp), %rdi
	leaq	8(%rsp), %rsi
	movl	$write_FontDescriptor_common.optional_items, %ecx
	movq	%r15, %rdx
	callq	gs_param_write_items
	testl	%eax, %eax
	js	.LBB15_21
# BB#22:                                # %cleanup.i
	leaq	384(%rsp), %rdi
	callq	s_release_param_printer
	jmp	.LBB15_23
.LBB15_21:                              # %cleanup.thread.i
	movl	%eax, %ebp
.LBB15_23:                              # %write_FontDescriptor_common.exit
	testl	%ebp, %ebp
	js	.LBB15_41
# BB#24:                                # %if.end.29
	movq	5848(%r14), %r15
	movq	168(%rsp), %rdx
	testq	%rdx, %rdx
	je	.LBB15_26
# BB#25:                                # %if.then.31
	movl	$.L.str.9, %esi
	movq	%r15, %rdi
	callq	pprintld1
.LBB15_29:                              # %if.end.49
	cmpl	$0, 172(%rbx)
	je	.LBB15_32
# BB#30:                                # %land.lhs.true.52
	movq	160(%rbx), %rsi
	cmpq	$0, 72(%rsi)
	je	.LBB15_32
# BB#31:                                # %if.then.55
	movq	%r14, %rdi
	callq	pdf_write_FontFile_entry
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB15_41
.LBB15_32:                              # %if.end.61
	cmpq	$0, 176(%rbx)
	je	.LBB15_34
# BB#33:                                # %if.then.63
	movl	$.L.str.11, %esi
	movq	%r15, %rdi
	callq	stream_puts
	movq	176(%rbx), %rdi
	movq	8(%rdi), %rdx
	movq	%r14, %rsi
	callq	cos_write
.LBB15_34:                              # %if.end.71
	cmpb	$0, 184(%rbx)
	je	.LBB15_36
# BB#35:                                # %if.then.74
	leaq	184(%rbx), %rdx
	movl	$.L.str.12, %esi
	movq	%r15, %rdi
	callq	pprints1
.LBB15_36:                              # %if.end.78
	cmpq	$0, 192(%rbx)
	je	.LBB15_38
# BB#37:                                # %if.then.81
	movl	$.L.str.13, %esi
	movq	%r15, %rdi
	callq	stream_puts
	movq	192(%rbx), %rdi
	movq	8(%rdi), %rdx
	movq	%r14, %rsi
	callq	cos_write
.LBB15_38:                              # %if.end.90
	movl	$.L.str.14, %esi
	movq	%r15, %rdi
	callq	stream_puts
	movl	$10, %esi
	movq	%r14, %rdi
	callq	pdf_end_separate
	movq	64(%rbx), %rax
	movb	$1, 50(%rax)
	movq	160(%rbx), %rdi
	callq	pdf_get_FontFile_object
	testq	%rax, %rax
	je	.LBB15_40
# BB#39:                                # %if.then.99
	movl	$33, %edx
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	cos_write_object
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB15_41
.LBB15_40:                              # %if.end.105
	xorl	%ebp, %ebp
.LBB15_41:                              # %cleanup.106
	movl	%ebp, %eax
	addq	$504, %rsp              # imm = 0x1F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB15_26:                              # %if.else
	movq	16(%rbx), %rdx
	movq	160(%rbx), %rsi
	movq	%r14, %rdi
	callq	pdf_do_subset_font
	decl	%r13d
	cmpl	$1, %r13d
	ja	.LBB15_29
# BB#27:                                # %if.else
	testl	%eax, %eax
	je	.LBB15_29
# BB#28:                                # %if.then.41
	movl	$.L.str.10, %esi
	movq	%r15, %rdi
	callq	stream_puts
	movq	160(%rbx), %rsi
	movq	%r14, %rdi
	callq	pdf_write_CharSet
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB15_41
	jmp	.LBB15_29
.Lfunc_end15:
	.size	pdf_write_FontDescriptor, .Lfunc_end15-pdf_write_FontDescriptor
	.cfi_endproc

	.globl	pdf_release_FontDescriptor_components
	.align	16, 0x90
	.type	pdf_release_FontDescriptor_components,@function
pdf_release_FontDescriptor_components:  # @pdf_release_FontDescriptor_components
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movq	1728(%rdi), %rdi
	movq	160(%rbx), %rsi
	movl	$.L.str.15, %edx
	callq	*24(%rdi)
	movq	$0, 160(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end16:
	.size	pdf_release_FontDescriptor_components, .Lfunc_end16-pdf_release_FontDescriptor_components
	.cfi_endproc

	.globl	pdf_mark_font_descriptor_used
	.align	16, 0x90
	.type	pdf_mark_font_descriptor_used,@function
pdf_mark_font_descriptor_used:          # @pdf_mark_font_descriptor_used
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp61:
	.cfi_def_cfa_offset 16
	testq	%rsi, %rsi
	je	.LBB17_3
# BB#1:                                 # %land.lhs.true
	movq	64(%rsi), %rax
	cmpq	$-1, 8(%rax)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	xorl	%edx, %edx
	callq	pdf_reserve_object_id
.LBB17_3:                               # %if.end
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end17:
	.size	pdf_mark_font_descriptor_used, .Lfunc_end17-pdf_mark_font_descriptor_used
	.cfi_endproc

	.globl	pdf_convert_truetype_font_descriptor
	.align	16, 0x90
	.type	pdf_convert_truetype_font_descriptor,@function
pdf_convert_truetype_font_descriptor:   # @pdf_convert_truetype_font_descriptor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp63:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp64:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp65:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp66:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp67:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp68:
	.cfi_def_cfa_offset 96
.Ltmp69:
	.cfi_offset %rbx, -56
.Ltmp70:
	.cfi_offset %r12, -48
.Ltmp71:
	.cfi_offset %r13, -40
.Ltmp72:
	.cfi_offset %r14, -32
.Ltmp73:
	.cfi_offset %r15, -24
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movq	104(%rbx), %rax
	movq	192(%rbx), %r15
	movq	160(%rax), %r13
	movq	(%r13), %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movslq	176(%rbx), %rbp
	movslq	180(%rbx), %rdx
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movl	24(%r13), %r12d
	leal	7(%r12), %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	leal	7(%r12,%rcx), %ecx
	sarl	$3, %ecx
	leal	1(%rdx), %r14d
	cmpl	%edx, %r12d
	cmovgl	%ecx, %r14d
	cmovll	%edx, %r12d
	movl	$11, 168(%rax)
	movq	$0, 192(%rbx)
	movq	1728(%rdi), %rdi
	movl	$.L.str.16, %edx
	movl	%r14d, %esi
	callq	*64(%rdi)
	movq	%rax, 32(%r13)
	movl	$-25, %ecx
	testq	%rax, %rax
	je	.LBB18_12
# BB#1:                                 # %if.end
	leal	2(%r12,%r12), %r12d
	movslq	%r14d, %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	1728(%rax), %rdi
	movl	$.L.str.16, %edx
	movl	%r12d, %esi
	callq	*64(%rdi)
	movl	$-25, %ecx
	movq	%rax, 184(%rbx)
	testq	%rax, %rax
	je	.LBB18_12
# BB#2:                                 # %if.end.45
	movslq	%r12d, %rdx
	movq	%rdx, 8(%rsp)           # 8-byte Spill
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memset
	movq	32(%rsp), %rax          # 8-byte Reload
	cmpl	$0, 9564(%rax)
	je	.LBB18_3
# BB#5:                                 # %if.then.51
	movl	%r14d, 32(%rsp)         # 4-byte Spill
	movq	16(%rsp), %r12          # 8-byte Reload
	cmpl	%r12d, %ebp
	movq	24(%rsp), %r14          # 8-byte Reload
	ja	.LBB18_10
# BB#6:                                 # %for.body.lr.ph
	movq	%rbp, %rax
	shlq	$5, %rax
	addq	%rax, %r15
	.align	16, 0x90
.LBB18_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$2147483647, (%r15)     # imm = 0x7FFFFFFF
	je	.LBB18_9
# BB#8:                                 # %if.then.58
                                        #   in Loop: Header=BB18_7 Depth=1
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	*200(%r14)
	movb	%bpl, %cl
	andb	$7, %cl
	movl	$128, %edx
	shrl	%cl, %edx
	movq	%rbp, %rcx
	shrq	$3, %rcx
	movq	32(%r13), %rsi
	movzbl	(%rsi,%rcx), %edi
	orl	%edx, %edi
	movb	%dil, (%rsi,%rcx)
	movq	184(%rbx), %rcx
	movw	%ax, (%rcx,%rbp,2)
.LBB18_9:                               # %for.inc
                                        #   in Loop: Header=BB18_7 Depth=1
	incq	%rbp
	addq	$32, %r15
	cmpq	%r12, %rbp
	jbe	.LBB18_7
.LBB18_10:                              # %for.end
	movq	32(%r13), %rax
	orb	$-128, (%rax)
	movl	32(%rsp), %r14d         # 4-byte Reload
	jmp	.LBB18_11
.LBB18_3:                               # %for.cond.78.preheader
	xorl	%ebp, %ebp
	movq	24(%rsp), %r15          # 8-byte Reload
	.align	16, 0x90
.LBB18_4:                               # %for.body.83
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	*200(%r15)
	movb	%bpl, %cl
	andb	$7, %cl
	movl	$128, %edx
	shrl	%cl, %edx
	movq	%rbp, %rcx
	shrq	$3, %rcx
	movq	32(%r13), %rsi
	movzbl	(%rsi,%rcx), %edi
	orl	%edx, %edi
	movb	%dil, (%rsi,%rcx)
	movq	184(%rbx), %rcx
	movw	%ax, (%rcx,%rbp,2)
	incq	%rbp
	movslq	24(%r13), %rax
	cmpq	%rax, %rbp
	jbe	.LBB18_4
.LBB18_11:                              # %if.end.106
	movl	%r14d, 40(%r13)
	movq	8(%rsp), %rax           # 8-byte Reload
	shrq	%rax
	movl	%eax, 192(%rbx)
	movq	$0, 224(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 208(%rbx)
	xorl	%ecx, %ecx
.LBB18_12:                              # %cleanup
	movl	%ecx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	pdf_convert_truetype_font_descriptor, .Lfunc_end18-pdf_convert_truetype_font_descriptor
	.cfi_endproc

	.globl	mark_font_descriptor_symbolic
	.align	16, 0x90
	.type	mark_font_descriptor_symbolic,@function
mark_font_descriptor_symbolic:          # @mark_font_descriptor_symbolic
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB19_4
# BB#1:                                 # %lor.lhs.false
	movq	104(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB19_4
# BB#2:                                 # %if.end
	movl	128(%rcx), %edx
	movl	$1, %eax
	testb	$4, %dl
	jne	.LBB19_4
# BB#3:                                 # %if.then.4
	andl	$-37, %edx
	orl	$4, %edx
	movl	%edx, 128(%rcx)
.LBB19_4:                               # %cleanup
	retq
.Lfunc_end19:
	.size	mark_font_descriptor_symbolic, .Lfunc_end19-mark_font_descriptor_symbolic
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pdf_font_descriptor_t"
	.size	.L.str, 22

	.type	pdf_font_descriptor_data,@object # @pdf_font_descriptor_data
	.section	.rodata,"a",@progbits
	.align	8
pdf_font_descriptor_data:
	.short	4                       # 0x4
	.short	0                       # 0x0
	.zero	4
	.quad	st_pdf_resource
	.quad	pdf_font_descriptor_ptrs
	.size	pdf_font_descriptor_data, 24

	.type	st_pdf_font_descriptor,@object # @st_pdf_font_descriptor
	.globl	st_pdf_font_descriptor
	.align	8
st_pdf_font_descriptor:
	.long	200                     # 0xc8
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pdf_font_descriptor_data
	.size	st_pdf_font_descriptor, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"pdf_sub_font_descriptor_t"
	.size	.L.str.1, 26

	.type	pdf_sub_font_descriptor_data,@object # @pdf_sub_font_descriptor_data
	.section	.rodata,"a",@progbits
	.align	8
pdf_sub_font_descriptor_data:
	.short	1                       # 0x1
	.short	0                       # 0x0
	.zero	4
	.quad	st_pdf_resource
	.quad	pdf_sub_font_descriptor_ptrs
	.size	pdf_sub_font_descriptor_data, 24

	.type	st_pdf_sub_font_descriptor,@object # @st_pdf_sub_font_descriptor
	.globl	st_pdf_sub_font_descriptor
	.align	8
st_pdf_sub_font_descriptor:
	.long	160                     # 0xa0
	.zero	4
	.quad	.L.str.1
	.quad	0
	.quad	0
	.quad	basic_enum_ptrs
	.quad	basic_reloc_ptrs
	.quad	0
	.quad	pdf_sub_font_descriptor_data
	.size	st_pdf_sub_font_descriptor, 64

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"pdf_font_descriptor_alloc(base_font)"
	.size	.L.str.2, 37

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Free BaseFont FontName string"
	.size	.L.str.3, 30

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Free base font from FontDescriptor)"
	.size	.L.str.4, 36

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"free FontDescriptor object"
	.size	.L.str.5, 27

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	".notdef"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"colon"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"period"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"/CIDSet %ld 0 R\n"
	.size	.L.str.9, 17

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"/CharSet"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"/Style"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"/Lang(%s)"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"/FD"
	.size	.L.str.13, 4

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	">>\n"
	.size	.L.str.14, 4

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"pdf_release_FontDescriptor_components"
	.size	.L.str.15, 38

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"pdf_convert_truetype_font_descriptor"
	.size	.L.str.16, 37

	.type	pdf_font_descriptor_ptrs,@object # @pdf_font_descriptor_ptrs
	.section	.rodata,"a",@progbits
	.align	16
pdf_font_descriptor_ptrs:
	.short	1                       # 0x1
	.short	112                     # 0x70
	.short	0                       # 0x0
	.short	160                     # 0xa0
	.short	0                       # 0x0
	.short	176                     # 0xb0
	.short	0                       # 0x0
	.short	192                     # 0xc0
	.size	pdf_font_descriptor_ptrs, 16

	.type	pdf_sub_font_descriptor_ptrs,@object # @pdf_sub_font_descriptor_ptrs
	.align	2
pdf_sub_font_descriptor_ptrs:
	.short	1                       # 0x1
	.short	112                     # 0x70
	.size	pdf_sub_font_descriptor_ptrs, 4

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"<</Type/FontDescriptor/FontName"
	.size	.L.str.17, 32

	.type	write_FontDescriptor_common.required_items,@object # @write_FontDescriptor_common.required_items
	.section	.rodata,"a",@progbits
	.align	16
write_FontDescriptor_common.required_items:
	.quad	.L.str.18
	.byte	2                       # 0x2
	.zero	1
	.short	72                      # 0x48
	.zero	4
	.quad	.L.str.19
	.byte	2                       # 0x2
	.zero	1
	.short	76                      # 0x4c
	.zero	4
	.quad	.L.str.20
	.byte	2                       # 0x2
	.zero	1
	.short	80                      # 0x50
	.zero	4
	.quad	.L.str.21
	.byte	2                       # 0x2
	.zero	1
	.short	84                      # 0x54
	.zero	4
	.quad	.L.str.22
	.byte	2                       # 0x2
	.zero	1
	.short	88                      # 0x58
	.zero	4
	.zero	16
	.size	write_FontDescriptor_common.required_items, 96

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"Ascent"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"CapHeight"
	.size	.L.str.19, 10

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Descent"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"ItalicAngle"
	.size	.L.str.21, 12

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"StemV"
	.size	.L.str.22, 6

	.type	write_FontDescriptor_common.optional_items,@object # @write_FontDescriptor_common.optional_items
	.section	.rodata,"a",@progbits
	.align	16
write_FontDescriptor_common.optional_items:
	.quad	.L.str.23
	.byte	2                       # 0x2
	.zero	1
	.short	132                     # 0x84
	.zero	4
	.quad	.L.str.24
	.byte	2                       # 0x2
	.zero	1
	.short	136                     # 0x88
	.zero	4
	.quad	.L.str.25
	.byte	2                       # 0x2
	.zero	1
	.short	140                     # 0x8c
	.zero	4
	.quad	.L.str.26
	.byte	2                       # 0x2
	.zero	1
	.short	144                     # 0x90
	.zero	4
	.quad	.L.str.27
	.byte	2                       # 0x2
	.zero	1
	.short	148                     # 0x94
	.zero	4
	.quad	.L.str.28
	.byte	2                       # 0x2
	.zero	1
	.short	152                     # 0x98
	.zero	4
	.zero	16
	.size	write_FontDescriptor_common.optional_items, 112

	.type	.L.str.23,@object       # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"AvgWidth"
	.size	.L.str.23, 9

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Leading"
	.size	.L.str.24, 8

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"MaxWidth"
	.size	.L.str.25, 9

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"MissingWidth"
	.size	.L.str.26, 13

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"StemH"
	.size	.L.str.27, 6

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"XHeight"
	.size	.L.str.28, 8

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Flags"
	.size	.L.str.29, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
