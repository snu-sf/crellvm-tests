	.text
	.file	"gxttfb.bc"
	.align	16, 0x90
	.type	gx_ttfReader_enum_ptrs,@function
gx_ttfReader_enum_ptrs:                 # @gx_ttfReader_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB0_2
# BB#1:                                 # %sw.bb
	movq	88(%rsi), %rax
	movq	%rax, (%r8)
	movl	$ptr_struct_procs, %eax
.LBB0_2:                                # %cleanup
	retq
.Lfunc_end0:
	.size	gx_ttfReader_enum_ptrs, .Lfunc_end0-gx_ttfReader_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	gx_ttfReader_reloc_ptrs,@function
gx_ttfReader_reloc_ptrs:                # @gx_ttfReader_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rcx), %rax
	movq	88(%rbx), %rdi
	movq	%rcx, %rsi
	callq	*(%rax)
	movq	%rax, 88(%rbx)
	popq	%rbx
	retq
.Lfunc_end1:
	.size	gx_ttfReader_reloc_ptrs, .Lfunc_end1-gx_ttfReader_reloc_ptrs
	.cfi_endproc

	.globl	gx_ttfReader__create
	.align	16, 0x90
	.type	gx_ttfReader__create,@function
gx_ttfReader__create:                   # @gx_ttfReader__create
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 32
.Ltmp5:
	.cfi_offset %rbx, -32
.Ltmp6:
	.cfi_offset %r14, -24
.Ltmp7:
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movl	$st_gx_ttfReader, %esi
	movl	$.L.str.1, %edx
	callq	*72(%r14)
	movq	%rax, %r15
	movq	%r15, %rbx
	testq	%r15, %r15
	je	.LBB2_4
# BB#1:                                 # %if.then
	movq	$gx_ttfReader__Eof, (%rbx)
	movq	$gx_ttfReader__Read, 8(%rbx)
	movq	$gx_ttfReader__Seek, 16(%rbx)
	movl	$gx_ttfReader__Error, %eax
	movd	%rax, %xmm0
	movl	$gx_ttfReader__Tell, %eax
	movd	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 24(%rbx)
	movq	$gx_ttfReader__LoadGlyph, 40(%rbx)
	movq	$gx_ttfReader__ReleaseGlyph, 48(%rbx)
	movq	$0, 64(%rbx)
	movl	$-1, 72(%rbx)
	addq	$96, %r15
	xorl	%esi, %esi
	movl	$48, %edx
	movq	%r15, %rdi
	callq	memset
	movq	$0, 80(%rbx)
	movq	%r14, 88(%rbx)
	cmpl	$-1, 72(%rbx)
	je	.LBB2_3
# BB#2:                                 # %if.then.i
	movl	$-1, 72(%rbx)
	movl	$.L.str.10, %esi
	movq	%r15, %rdi
	callq	gs_glyph_data_free
.LBB2_3:                                # %gx_ttfReader__Reset.exit
	movq	$0, 64(%rbx)
.LBB2_4:                                # %if.end
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end2:
	.size	gx_ttfReader__create, .Lfunc_end2-gx_ttfReader__create
	.cfi_endproc

	.align	16, 0x90
	.type	gx_ttfReader__Eof,@function
gx_ttfReader__Eof:                      # @gx_ttfReader__Eof
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	cmpl	$-1, 72(%rdi)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movl	64(%rdi), %eax
	cmpl	104(%rdi), %eax
	setae	%al
	movzbl	%al, %eax
.LBB3_2:                                # %cleanup
	retq
.Lfunc_end3:
	.size	gx_ttfReader__Eof, .Lfunc_end3-gx_ttfReader__Eof
	.cfi_endproc

	.align	16, 0x90
	.type	gx_ttfReader__Read,@function
gx_ttfReader__Read:                     # @gx_ttfReader__Read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp9:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp11:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp12:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp14:
	.cfi_def_cfa_offset 64
.Ltmp15:
	.cfi_offset %rbx, -56
.Ltmp16:
	.cfi_offset %r12, -48
.Ltmp17:
	.cfi_offset %r13, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
.Ltmp20:
	.cfi_offset %rbp, -16
	movl	%edx, %r12d
	movq	%rsi, %r14
	movq	%rdi, %r13
	cmpl	$0, 68(%r13)
	jne	.LBB4_12
# BB#1:                                 # %if.then
	cmpl	$-1, 72(%r13)
	je	.LBB4_2
# BB#7:                                 # %if.then.1
	movslq	64(%r13), %rax
	movq	%rax, %rsi
	addq	96(%r13), %rsi
	movq	%rsi, (%rsp)
	movl	104(%r13), %ecx
	subl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	%r12d, %ecx
	movl	$-10, %ecx
	cmovael	%eax, %ecx
	movl	%ecx, 68(%r13)
	jb	.LBB4_12
# BB#8:                                 # %if.then.9
	movslq	%r12d, %rdx
	movq	%r14, %rdi
	jmp	.LBB4_9
.LBB4_2:                                # %for.cond.preheader
	testl	%r12d, %r12d
	je	.LBB4_10
# BB#3:                                 # %for.body.lr.ph
	xorl	%eax, %eax
	leaq	(%rsp), %r15
	.align	16, 0x90
.LBB4_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	80(%r13), %rdi
	movslq	64(%r13), %rsi
	movl	%eax, %ebx
	addq	%rbx, %rsi
	movl	%r12d, %ebp
	subl	%eax, %ebp
	movl	%ebp, %edx
	movq	%r15, %rcx
	callq	*448(%rdi)
	movl	%eax, 68(%r13)
	testl	%eax, %eax
	js	.LBB4_12
# BB#5:                                 # %if.else.27
                                        #   in Loop: Header=BB4_4 Depth=1
	leaq	(%r14,%rbx), %rdi
	movq	(%rsp), %rsi
	testl	%eax, %eax
	je	.LBB4_6
# BB#15:                                # %if.else.37
                                        #   in Loop: Header=BB4_4 Depth=1
	movslq	%eax, %rdx
	callq	memcpy
	movl	68(%r13), %ecx
	leal	(%rbx,%rcx), %eax
	cmpl	%r12d, %eax
	jb	.LBB4_4
	jmp	.LBB4_11
.LBB4_6:                                # %if.then.31
	movl	%ebp, %edx
.LBB4_9:                                # %if.end.48thread-pre-splitthread-pre-split
	callq	memcpy
.LBB4_10:                               # %if.end.48thread-pre-splitthread-pre-split
	movl	68(%r13), %ecx
.LBB4_11:                               # %if.end.48thread-pre-split
	testl	%ecx, %ecx
	je	.LBB4_13
.LBB4_12:                               # %if.then.51
	movslq	%r12d, %rdx
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	memset
.LBB4_14:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_13:                               # %if.end.54
	addl	%r12d, 64(%r13)
	jmp	.LBB4_14
.Lfunc_end4:
	.size	gx_ttfReader__Read, .Lfunc_end4-gx_ttfReader__Read
	.cfi_endproc

	.align	16, 0x90
	.type	gx_ttfReader__Seek,@function
gx_ttfReader__Seek:                     # @gx_ttfReader__Seek
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, 64(%rdi)
	retq
.Lfunc_end5:
	.size	gx_ttfReader__Seek, .Lfunc_end5-gx_ttfReader__Seek
	.cfi_endproc

	.align	16, 0x90
	.type	gx_ttfReader__Tell,@function
gx_ttfReader__Tell:                     # @gx_ttfReader__Tell
	.cfi_startproc
# BB#0:                                 # %entry
	movl	64(%rdi), %eax
	retq
.Lfunc_end6:
	.size	gx_ttfReader__Tell, .Lfunc_end6-gx_ttfReader__Tell
	.cfi_endproc

	.align	16, 0x90
	.type	gx_ttfReader__Error,@function
gx_ttfReader__Error:                    # @gx_ttfReader__Error
	.cfi_startproc
# BB#0:                                 # %entry
	movl	68(%rdi), %eax
	retq
.Lfunc_end7:
	.size	gx_ttfReader__Error, .Lfunc_end7-gx_ttfReader__Error
	.cfi_endproc

	.align	16, 0x90
	.type	gx_ttfReader__LoadGlyph,@function
gx_ttfReader__LoadGlyph:                # @gx_ttfReader__LoadGlyph
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp22:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp23:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp24:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 48
.Ltmp26:
	.cfi_offset %rbx, -48
.Ltmp27:
	.cfi_offset %r12, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, %r15
	movl	%esi, %ebp
	movq	%rdi, %rbx
	xorl	%eax, %eax
	cmpl	$-1, 72(%rbx)
	jne	.LBB8_7
# BB#1:                                 # %if.end
	movq	80(%rbx), %rdi
	movq	16(%rdi), %rax
	leaq	96(%rbx), %r12
	movq	%rax, 136(%rbx)
	movl	%ebp, %esi
	movq	%r12, %rdx
	callq	*472(%rdi)
	movl	%ebp, 72(%rbx)
	movl	$0, 64(%rbx)
	testl	%eax, %eax
	js	.LBB8_2
# BB#3:                                 # %if.else
	jle	.LBB8_5
# BB#4:                                 # %if.then.8
	movl	$-28, 68(%rbx)
	jmp	.LBB8_6
.LBB8_2:                                # %if.then.6
	movl	%eax, 68(%rbx)
	jmp	.LBB8_6
.LBB8_5:                                # %if.else.10
	movq	(%r12), %rax
	movq	%rax, (%r15)
	movl	8(%r12), %eax
	movl	%eax, (%r14)
.LBB8_6:                                # %cleanup
	movl	$2, %eax
.LBB8_7:                                # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gx_ttfReader__LoadGlyph, .Lfunc_end8-gx_ttfReader__LoadGlyph
	.cfi_endproc

	.align	16, 0x90
	.type	gx_ttfReader__ReleaseGlyph,@function
gx_ttfReader__ReleaseGlyph:             # @gx_ttfReader__ReleaseGlyph
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	%esi, 72(%rdi)
	jne	.LBB9_1
# BB#2:                                 # %if.end
	movl	$-1, 72(%rdi)
	addq	$96, %rdi
	movl	$.L.str.9, %esi
	jmp	gs_glyph_data_free      # TAILCALL
.LBB9_1:                                # %cleanup
	retq
.Lfunc_end9:
	.size	gx_ttfReader__ReleaseGlyph, .Lfunc_end9-gx_ttfReader__ReleaseGlyph
	.cfi_endproc

	.globl	gx_ttfReader__destroy
	.align	16, 0x90
	.type	gx_ttfReader__destroy,@function
gx_ttfReader__destroy:                  # @gx_ttfReader__destroy
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	movq	88(%rax), %rdi
	movq	24(%rdi), %rcx
	movl	$.L.str.2, %edx
	movq	%rax, %rsi
	jmpq	*%rcx                   # TAILCALL
.Lfunc_end10:
	.size	gx_ttfReader__destroy, .Lfunc_end10-gx_ttfReader__destroy
	.cfi_endproc

	.globl	gx_ttfReader__set_font
	.align	16, 0x90
	.type	gx_ttfReader__set_font,@function
gx_ttfReader__set_font:                 # @gx_ttfReader__set_font
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, 80(%rdi)
	movq	$gx_ttfReader__default_get_metrics, 56(%rdi)
	retq
.Lfunc_end11:
	.size	gx_ttfReader__set_font, .Lfunc_end11-gx_ttfReader__set_font
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gx_ttfReader__default_get_metrics,@function
gx_ttfReader__default_get_metrics:      # @gx_ttfReader__default_get_metrics
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp33:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
.Ltmp35:
	.cfi_def_cfa_offset 80
.Ltmp36:
	.cfi_offset %rbx, -40
.Ltmp37:
	.cfi_offset %r14, -32
.Ltmp38:
	.cfi_offset %r15, -24
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movq	%rcx, %r15
	movl	%edx, %ebp
	movq	80(%rdi), %rdi
	movl	512(%rdi), %ebx
	leaq	16(%rsp), %rcx
	callq	*480(%rdi)
	testl	%eax, %eax
	js	.LBB12_2
# BB#1:                                 # %if.end.5
	movslq	%ebp, %rax
	cvtsi2ssl	%ebx, %xmm1
	movss	%xmm1, 12(%rsp)         # 4-byte Spill
	movss	16(%rsp,%rax,4), %xmm0  # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI12_0(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movw	%ax, (%r15)
	addl	$2, %ebp
	movslq	%ebp, %rax
	movss	12(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	mulss	16(%rsp,%rax,4), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI12_0(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movw	%ax, (%r14)
	xorl	%eax, %eax
.LBB12_2:                               # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gx_ttfReader__default_get_metrics, .Lfunc_end12-gx_ttfReader__default_get_metrics
	.cfi_endproc

	.globl	ttfFont__create
	.align	16, 0x90
	.type	ttfFont__create,@function
ttfFont__create:                        # @ttfFont__create
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp40:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp41:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 32
.Ltmp43:
	.cfi_offset %rbx, -32
.Ltmp44:
	.cfi_offset %r14, -24
.Ltmp45:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	168(%rbx), %rax
	movq	184(%rbx), %rdi
	movq	(%rax), %r14
	testq	%rdi, %rdi
	jne	.LBB13_3
# BB#1:                                 # %if.then
	movl	$st_gx_ttfMemory, %esi
	movl	$.L.str.3, %edx
	movq	%r14, %rdi
	callq	*72(%r14)
	movq	%rax, %rdi
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB13_7
# BB#2:                                 # %if.end
	movq	$gx_ttfMemory__alloc_struct, 8(%rdi)
	movq	$gx_ttfMemory__alloc_bytes, (%rdi)
	movq	$gx_ttfMemory__free, 16(%rdi)
	movq	%r14, 24(%rdi)
	movq	%rdi, 184(%rbx)
.LBB13_3:                               # %if.end.7
	leaq	176(%rbx), %rsi
	callq	ttfInterpreter__obtain
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB13_7
# BB#4:                                 # %if.end.13
	leaq	200(%rbx), %rsi
	movq	%r14, %rdi
	callq	gx_san__obtain
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB13_7
# BB#5:                                 # %if.end.17
	movl	$st_ttfFont, %esi
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	callq	*72(%r14)
	movq	%rax, %r15
	xorl	%eax, %eax
	testq	%r15, %r15
	je	.LBB13_7
# BB#6:                                 # %if.end.23
	movq	184(%rbx), %rsi
	movl	$DebugRepaint, %edx
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	movq	%r14, %r8
	callq	ttfFont__init
	movq	%r15, %rax
.LBB13_7:                               # %cleanup.26
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end13:
	.size	ttfFont__create, .Lfunc_end13-ttfFont__create
	.cfi_endproc

	.align	16, 0x90
	.type	gx_ttfMemory__alloc_struct,@function
gx_ttfMemory__alloc_struct:             # @gx_ttfMemory__alloc_struct
	.cfi_startproc
# BB#0:                                 # %entry
	movq	24(%rdi), %rdi
	movq	72(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end14:
	.size	gx_ttfMemory__alloc_struct, .Lfunc_end14-gx_ttfMemory__alloc_struct
	.cfi_endproc

	.align	16, 0x90
	.type	gx_ttfMemory__alloc_bytes,@function
gx_ttfMemory__alloc_bytes:              # @gx_ttfMemory__alloc_bytes
	.cfi_startproc
# BB#0:                                 # %entry
	movq	24(%rdi), %rdi
	movq	64(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end15:
	.size	gx_ttfMemory__alloc_bytes, .Lfunc_end15-gx_ttfMemory__alloc_bytes
	.cfi_endproc

	.align	16, 0x90
	.type	gx_ttfMemory__free,@function
gx_ttfMemory__free:                     # @gx_ttfMemory__free
	.cfi_startproc
# BB#0:                                 # %entry
	movq	24(%rdi), %rdi
	movq	24(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end16:
	.size	gx_ttfMemory__free, .Lfunc_end16-gx_ttfMemory__free
	.cfi_endproc

	.align	16, 0x90
	.type	DebugRepaint,@function
DebugRepaint:                           # @DebugRepaint
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end17:
	.size	DebugRepaint, .Lfunc_end17-DebugRepaint
	.cfi_endproc

	.globl	ttfFont__destroy
	.align	16, 0x90
	.type	ttfFont__destroy,@function
ttfFont__destroy:                       # @ttfFont__destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp46:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp47:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp48:
	.cfi_def_cfa_offset 32
.Ltmp49:
	.cfi_offset %rbx, -32
.Ltmp50:
	.cfi_offset %r14, -24
.Ltmp51:
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	168(%rbx), %rax
	movq	(%rax), %r14
	callq	ttfFont__finit
	movl	$.L.str.5, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	*24(%r14)
	leaq	176(%rbx), %rdi
	callq	ttfInterpreter__release
	leaq	200(%rbx), %rdi
	callq	gx_san__release
	cmpq	$0, 176(%rbx)
	jne	.LBB18_3
# BB#1:                                 # %land.lhs.true
	movq	184(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB18_3
# BB#2:                                 # %if.then
	movl	$.L.str.6, %edx
	movq	%r14, %rdi
	callq	*24(%r14)
	movq	$0, 184(%rbx)
.LBB18_3:                               # %if.end
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end18:
	.size	ttfFont__destroy, .Lfunc_end18-ttfFont__destroy
	.cfi_endproc

	.globl	ttfFont__Open_aux
	.align	16, 0x90
	.type	ttfFont__Open_aux,@function
ttfFont__Open_aux:                      # @ttfFont__Open_aux
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp53:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp54:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp55:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp56:
	.cfi_def_cfa_offset 48
	subq	$80, %rsp
.Ltmp57:
	.cfi_def_cfa_offset 128
.Ltmp58:
	.cfi_offset %rbx, -48
.Ltmp59:
	.cfi_offset %r12, -40
.Ltmp60:
	.cfi_offset %r14, -32
.Ltmp61:
	.cfi_offset %r15, -24
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rcx, %r15
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movq	%rdi, %r14
	movl	128(%rsp), %ecx
	leaq	20(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	24(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	64(%rsp), %rax
	leaq	48(%rsp), %rbp
	movq	%r15, %rdi
	movq	%r8, %rsi
	movq	%r9, %rdx
	movq	%rax, %r8
	movq	%rbp, %r9
	callq	decompose_matrix
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	72(%rsp), %xmm1         # xmm1 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm1
	movl	20(%rsp), %r8d
	xorl	%ebp, %ebp
	xorl	%ecx, %ecx
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	ttfFont__Open
	movl	%eax, %ecx
	cmpl	$9, %eax
	ja	.LBB19_7
# BB#1:                                 # %entry
	jmpq	*.LJTI19_0(,%rcx,8)
.LBB19_7:                               # %sw.default
	movq	%rbx, %rdi
	callq	*32(%rbx)
	testl	%eax, %eax
	movl	$-10, %ebp
	cmovsl	%eax, %ebp
.LBB19_8:                               # %cleanup.10
	movl	%ebp, %eax
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB19_2:                               # %sw.bb.2
	movl	$-25, %ebp
	jmp	.LBB19_8
.LBB19_3:                               # %sw.bb.3
	movl	$-28, %ebp
	jmp	.LBB19_8
.LBB19_5:                               # %sw.bb.5
	movl	$.L.str.7, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	WarnPatented
	movl	$1, 124(%r14)
	jmp	.LBB19_8
.LBB19_4:                               # %sw.bb.4
	movl	$-1, %esi
	movq	%r15, %rdi
	callq	WarnBadInstruction
	movl	$1, 124(%r14)
	jmp	.LBB19_8
.Lfunc_end19:
	.size	ttfFont__Open_aux, .Lfunc_end19-ttfFont__Open_aux
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI19_0:
	.quad	.LBB19_8
	.quad	.LBB19_7
	.quad	.LBB19_7
	.quad	.LBB19_2
	.quad	.LBB19_3
	.quad	.LBB19_7
	.quad	.LBB19_7
	.quad	.LBB19_7
	.quad	.LBB19_5
	.quad	.LBB19_4

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4611686018427387904     # double 2
.LCPI20_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	decompose_matrix,@function
decompose_matrix:                       # @decompose_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp64:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp65:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp66:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp67:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp68:
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
.Ltmp69:
	.cfi_def_cfa_offset 96
.Ltmp70:
	.cfi_offset %rbx, -56
.Ltmp71:
	.cfi_offset %r12, -48
.Ltmp72:
	.cfi_offset %r13, -40
.Ltmp73:
	.cfi_offset %r14, -32
.Ltmp74:
	.cfi_offset %r15, -24
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, %r15
	movl	%ecx, 24(%rsp)          # 4-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, 8(%rsp)           # 8-byte Spill
	movb	(%rdx), %cl
	movb	4(%rdx), %al
	movl	$1, %r13d
	movl	$1, %r12d
	shll	%cl, %r12d
	movb	%al, %cl
	shll	%cl, %r13d
	movq	24(%rdi), %rdi
	callq	gs_currentaligntopixels
	movl	%eax, 36(%rsp)          # 4-byte Spill
	movss	(%rbx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	4(%rbx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm2
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB20_2
# BB#1:                                 # %call.sqrt
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB20_2:                               # %entry.split
	movsd	%xmm0, (%r15)
	movss	8(%rbx), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	12(%rbx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm2
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	callq	sqrt
	ucomisd	%xmm0, %xmm0
	jnp	.LBB20_4
# BB#3:                                 # %call.sqrt70
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB20_4:                               # %entry.split.split
	movq	104(%rsp), %rcx
	movsd	%xmm0, 8(%r15)
	movsd	.LCPI20_0(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB20_6
# BB#5:                                 # %entry.split.split
	movl	$1, %ebp
	ucomisd	(%r15), %xmm1
	jae	.LBB20_9
.LBB20_6:                               # %if.else
	movb	$1, %al
	cmpl	$0, 24(%rsp)            # 4-byte Folded Reload
	jne	.LBB20_8
# BB#7:                                 # %lor.rhs
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	24(%rax), %rdi
	movq	%rcx, %rbp
	callq	gs_currentgridfittt
	movq	%rbp, %rcx
	testb	$1, %al
	sete	%al
.LBB20_8:                               # %lor.end
	movzbl	%al, %ebp
.LBB20_9:                               # %if.end
	movl	%ebp, (%rcx)
	cmpl	$0, 36(%rsp)            # 4-byte Folded Reload
	je	.LBB20_11
# BB#10:                                # %cond.end.thread
	movq	$0, (%r14)
	xorpd	%xmm0, %xmm0
	jmp	.LBB20_12
.LBB20_11:                              # %cond.false.36
	movss	16(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%r12d, %xmm1
	movss	%xmm1, 36(%rsp)         # 4-byte Spill
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	callq	floor
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%r12d, %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	divss	36(%rsp), %xmm0         # 4-byte Folded Reload
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, (%r14)
	movss	20(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	cvtsi2ssl	%r13d, %xmm1
	movss	%xmm1, 36(%rsp)         # 4-byte Spill
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	callq	floor
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%r13d, %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	divss	36(%rsp), %xmm0         # 4-byte Folded Reload
	cvtss2sd	%xmm0, %xmm0
.LBB20_12:                              # %cond.end.40
	movq	96(%rsp), %rax
	movsd	%xmm0, 8(%r14)
	movss	(%rbx), %xmm0           # xmm0 = mem[0],zero,zero,zero
	testl	%ebp, %ebp
	je	.LBB20_14
# BB#13:                                # %cond.end.72.thread
	movl	4(%rbx), %ecx
	movl	%ecx, 4(%rax)
	movl	8(%rbx), %ecx
	movl	%ecx, 8(%rax)
	movsd	.LCPI20_1(%rip), %xmm1  # xmm1 = mem[0],zero
	jmp	.LBB20_15
.LBB20_14:                              # %cond.false.81
	cvtss2sd	%xmm0, %xmm0
	movsd	(%r15), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	4(%rbx), %xmm2          # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	divsd	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, 4(%rax)
	movss	8(%rbx), %xmm1          # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm1, %xmm2
	movsd	8(%r15), %xmm1          # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm2
	cvtsd2ss	%xmm2, %xmm2
	movss	%xmm2, 8(%rax)
.LBB20_15:                              # %cond.end.83
	movss	%xmm0, (%rax)
	movss	12(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 12(%rax)
	movss	16(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	subsd	(%r14), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 16(%rax)
	movss	20(%rbx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	subsd	8(%r14), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 20(%rax)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	decompose_matrix, .Lfunc_end20-decompose_matrix
	.cfi_endproc

	.align	16, 0x90
	.type	WarnBadInstruction,@function
WarnBadInstruction:                     # @WarnBadInstruction
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp77:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp78:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp79:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp80:
	.cfi_def_cfa_offset 48
	subq	$48, %rsp
.Ltmp81:
	.cfi_def_cfa_offset 96
.Ltmp82:
	.cfi_offset %rbx, -48
.Ltmp83:
	.cfi_offset %r12, -40
.Ltmp84:
	.cfi_offset %r14, -32
.Ltmp85:
	.cfi_offset %r15, -24
.Ltmp86:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %r12
	movq	%r12, %rax
	.align	16, 0x90
.LBB21_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	movq	64(%rbx), %rax
	cmpq	%rbx, %rax
	jne	.LBB21_1
# BB#2:                                 # %while.end
	cmpl	$0, 636(%rbx)
	jne	.LBB21_7
# BB#3:                                 # %if.then
	leaq	324(%rbx), %rsi
	movslq	372(%rbx), %rax
	cmpq	$47, %rax
	movl	$47, %ebp
	cmovbeq	%rax, %rbp
	leaq	(%rsp), %rdi
	movq	%rbp, %rdx
	callq	memcpy
	movb	$0, (%rsp,%rbp)
	movq	16(%r12), %r15
	callq	gs_program_name
	movq	%rax, %rbp
	callq	gs_revision_number
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	16(%r12), %rdi
	testl	%r14d, %r14d
	js	.LBB21_5
# BB#4:                                 # %if.then.13
	leaq	(%rsp), %rcx
	movl	$.L.str.12, %esi
	xorl	%eax, %eax
	movl	%r14d, %edx
	callq	errprintf
	jmp	.LBB21_6
.LBB21_5:                               # %if.else
	leaq	(%rsp), %rdx
	movl	$.L.str.13, %esi
	xorl	%eax, %eax
	callq	errprintf
.LBB21_6:                               # %if.end
	movl	$1, 636(%rbx)
.LBB21_7:                               # %if.end.27
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	WarnBadInstruction, .Lfunc_end21-WarnBadInstruction
	.cfi_endproc

	.align	16, 0x90
	.type	WarnPatented,@function
WarnPatented:                           # @WarnPatented
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp88:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp89:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp90:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp91:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp92:
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
.Ltmp93:
	.cfi_def_cfa_offset 112
.Ltmp94:
	.cfi_offset %rbx, -56
.Ltmp95:
	.cfi_offset %r12, -48
.Ltmp96:
	.cfi_offset %r13, -40
.Ltmp97:
	.cfi_offset %r14, -32
.Ltmp98:
	.cfi_offset %r15, -24
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	cmpl	$0, 128(%rsi)
	jne	.LBB22_5
# BB#1:                                 # %if.then
	movq	%rbx, %rax
	.align	16, 0x90
.LBB22_2:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbp
	movq	64(%rbp), %rax
	cmpq	%rbp, %rax
	jne	.LBB22_2
# BB#3:                                 # %while.end
	cmpl	$0, 632(%rbp)
	jne	.LBB22_5
# BB#4:                                 # %if.then.3
	leaq	324(%rbp), %rsi
	movslq	372(%rbp), %rax
	cmpq	$47, %rax
	movl	$47, %r15d
	cmovbeq	%rax, %r15
	leaq	(%rsp), %r12
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	memcpy
	movb	$0, (%rsp,%r15)
	movq	16(%rbx), %r15
	callq	gs_program_name
	movq	%rax, %r13
	callq	gs_revision_number
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	16(%rbx), %rdi
	movl	$.L.str.14, %esi
	xorl	%eax, %eax
	movq	%r14, %rdx
	movq	%r12, %rcx
	callq	errprintf
	movl	$1, 632(%rbp)
.LBB22_5:                               # %if.end.20
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	WarnPatented, .Lfunc_end22-WarnPatented
	.cfi_endproc

	.globl	gx_ttf_outline
	.align	16, 0x90
	.type	gx_ttf_outline,@function
gx_ttf_outline:                         # @gx_ttf_outline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp101:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp102:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp103:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp104:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp105:
	.cfi_def_cfa_offset 56
	subq	$392, %rsp              # imm = 0x188
.Ltmp106:
	.cfi_def_cfa_offset 448
.Ltmp107:
	.cfi_offset %rbx, -56
.Ltmp108:
	.cfi_offset %r12, -48
.Ltmp109:
	.cfi_offset %r13, -40
.Ltmp110:
	.cfi_offset %r14, -32
.Ltmp111:
	.cfi_offset %r15, -24
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%r9, %rbp
	movq	%r8, %r14
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movl	456(%rsp), %r15d
	movq	24(%rbx), %rdi
	callq	gs_currentgridfittt
	movl	%eax, %r13d
	movl	%r13d, 24(%rsp)         # 4-byte Spill
	andl	$2, %r13d
	leaq	44(%rsp), %rax
	movq	%rax, 8(%rsp)
	leaq	104(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	144(%rsp), %r8
	leaq	128(%rsp), %r9
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rbp, %r14
	movq	%r14, %rdx
	movl	%r15d, %ecx
	callq	decompose_matrix
	cvtps2pd	104(%rsp), %xmm0
	movaps	%xmm0, 48(%rsp)
	cvtps2pd	112(%rsp), %xmm0
	movaps	%xmm0, 64(%rsp)
	cvtps2pd	120(%rsp), %xmm0
	movaps	%xmm0, 80(%rsp)
	movl	$0, 304(%rsp)
	movl	$1, 308(%rsp)
	movl	$gx_ttfExport__LineTo, %eax
	movd	%rax, %xmm0
	movl	$gx_ttfExport__MoveTo, %eax
	movd	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 312(%rsp)
	movq	$gx_ttfExport__CurveTo, 328(%rsp)
	movq	$gx_ttfExport__Close, 336(%rsp)
	movq	$gx_ttfExport__Point, 344(%rsp)
	movq	$gx_ttfExport__SetWidth, 352(%rsp)
	movq	$gx_ttfExport__DebugPaint, 360(%rsp)
	movl	$0, 384(%rsp)
	movq	448(%rsp), %rax
	movq	%rax, 368(%rsp)
	movl	$0, 376(%rsp)
	movl	$0, 380(%rsp)
	movl	%r13d, 388(%rsp)
	cmpl	$-1, 72(%r12)
	je	.LBB23_2
# BB#1:                                 # %if.then.i
	movl	$-1, 72(%r12)
	leaq	96(%r12), %rdi
	movl	$.L.str.10, %esi
	callq	gs_glyph_data_free
.LBB23_2:                               # %gx_ttfReader__Reset.exit
	movq	$0, 64(%r12)
	cmpl	$0, 148(%rbx)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, (%rsp)
	leaq	160(%rsp), %rbp
	leaq	304(%rsp), %rcx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movq	%rbp, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	%r12, %rdx
	callq	ttfOutliner__init
	movsd	128(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	136(%rsp), %xmm1        # xmm1 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm1
	leaq	48(%rsp), %rdx
	movq	%rbp, %rdi
	movl	28(%rsp), %ebp          # 4-byte Reload
	movl	%ebp, %esi
	callq	ttfOutliner__Outline
	movl	%eax, %ecx
	cmpl	$9, %eax
	ja	.LBB23_14
# BB#3:                                 # %gx_ttfReader__Reset.exit
	movl	$-25, %eax
	jmpq	*.LJTI23_0(,%rcx,8)
.LBB23_14:                              # %sw.default
	movq	%r12, %rdi
	callq	*32(%r12)
	movl	%eax, %ecx
	testl	%ecx, %ecx
	movl	$-10, %eax
	cmovsl	%ecx, %eax
	jmp	.LBB23_15
.LBB23_13:                              # %sw.bb.51
	movl	$-28, %eax
	jmp	.LBB23_15
.LBB23_4:                               # %sw.bb.27
	testl	%r13d, %r13d
	jne	.LBB23_7
# BB#5:                                 # %sw.bb.34.thread
	movl	$.L.str.8, %edx
	movq	%rbx, %rdi
	movq	32(%rsp), %rsi          # 8-byte Reload
	callq	WarnPatented
	jmp	.LBB23_12
.LBB23_6:                               # %sw.bb
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	WarnBadInstruction
.LBB23_7:                               # %recover
	testl	%r15d, %r15d
	jne	.LBB23_10
# BB#8:                                 # %recover
	testl	%r13d, %r13d
	jne	.LBB23_9
.LBB23_10:                              # %sw.bb.34
	testl	%r13d, %r13d
	je	.LBB23_12
# BB#11:                                # %sw.bb.34
	movl	24(%rsp), %eax          # 4-byte Reload
	andl	$1, %eax
	orl	%r15d, %eax
	jne	.LBB23_12
.LBB23_9:                               # %if.then.30
	movq	24(%rbx), %rax
	movq	200(%rax), %rdi
	leaq	304(%rsp), %r8
	leaq	160(%rsp), %r9
	movq	448(%rsp), %rsi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	callq	grid_fit
	jmp	.LBB23_15
.LBB23_12:                              # %if.end.44
	leaq	160(%rsp), %rdi
	callq	ttfOutliner__DrawGlyphOutline
	movl	384(%rsp), %eax
.LBB23_15:                              # %cleanup.59
	addq	$392, %rsp              # imm = 0x188
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gx_ttf_outline, .Lfunc_end23-gx_ttf_outline
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI23_0:
	.quad	.LBB23_10
	.quad	.LBB23_14
	.quad	.LBB23_14
	.quad	.LBB23_15
	.quad	.LBB23_13
	.quad	.LBB23_14
	.quad	.LBB23_14
	.quad	.LBB23_14
	.quad	.LBB23_4
	.quad	.LBB23_6

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI24_0:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	gx_ttfExport__MoveTo,@function
gx_ttfExport__MoveTo:                   # @gx_ttfExport__MoveTo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp113:
	.cfi_def_cfa_offset 16
.Ltmp114:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpl	$0, 80(%rbx)
	jne	.LBB24_2
# BB#1:                                 # %if.then
	movq	64(%rbx), %rdi
	movsd	.LCPI24_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	(%rsi), %xmm1           # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	mulsd	8(%rsi), %xmm0
	cvttsd2si	%xmm0, %edx
	movl	%eax, %esi
	callq	gx_path_add_point
	movl	%eax, 80(%rbx)
.LBB24_2:                               # %if.end
	popq	%rbx
	retq
.Lfunc_end24:
	.size	gx_ttfExport__MoveTo, .Lfunc_end24-gx_ttfExport__MoveTo
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI25_0:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	gx_ttfExport__LineTo,@function
gx_ttfExport__LineTo:                   # @gx_ttfExport__LineTo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp115:
	.cfi_def_cfa_offset 16
.Ltmp116:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpl	$0, 80(%rbx)
	jne	.LBB25_2
# BB#1:                                 # %if.then
	movq	64(%rbx), %rdi
	movsd	.LCPI25_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	(%rsi), %xmm1           # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	mulsd	8(%rsi), %xmm0
	cvttsd2si	%xmm0, %edx
	xorl	%ecx, %ecx
	movl	%eax, %esi
	callq	gx_path_add_line_notes
	movl	%eax, 80(%rbx)
.LBB25_2:                               # %if.end
	popq	%rbx
	retq
.Lfunc_end25:
	.size	gx_ttfExport__LineTo, .Lfunc_end25-gx_ttfExport__LineTo
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI26_0:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	gx_ttfExport__CurveTo,@function
gx_ttfExport__CurveTo:                  # @gx_ttfExport__CurveTo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp117:
	.cfi_def_cfa_offset 16
	subq	$64, %rsp
.Ltmp118:
	.cfi_def_cfa_offset 80
.Ltmp119:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpl	$0, 80(%rbx)
	jne	.LBB26_5
# BB#1:                                 # %if.then
	cmpl	$0, 84(%rbx)
	je	.LBB26_3
# BB#2:                                 # %if.then.2
	movw	$0, 34(%rsp)
	movsd	.LCPI26_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	(%rsi), %xmm1           # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 44(%rsp)
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 48(%rsp)
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 52(%rsp)
	movsd	8(%rdx), %xmm1          # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 56(%rsp)
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 36(%rsp)
	mulsd	8(%rcx), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 40(%rsp)
	movq	64(%rbx), %rdi
	leaq	16(%rsp), %rsi
	callq	gx_curve_monotonize
	jmp	.LBB26_4
.LBB26_3:                               # %if.else
	movq	64(%rbx), %rdi
	movsd	.LCPI26_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	(%rsi), %xmm1           # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r10d
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r11d
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movsd	8(%rdx), %xmm1          # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r8d
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r9d
	mulsd	8(%rcx), %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, (%rsp)
	movl	$0, 8(%rsp)
	movl	%r10d, %esi
	movl	%r11d, %edx
	movl	%eax, %ecx
	callq	gx_path_add_curve_notes
.LBB26_4:                               # %if.end.50
	movl	%eax, 80(%rbx)
.LBB26_5:                               # %if.end.50
	addq	$64, %rsp
	popq	%rbx
	retq
.Lfunc_end26:
	.size	gx_ttfExport__CurveTo, .Lfunc_end26-gx_ttfExport__CurveTo
	.cfi_endproc

	.align	16, 0x90
	.type	gx_ttfExport__Close,@function
gx_ttfExport__Close:                    # @gx_ttfExport__Close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp120:
	.cfi_def_cfa_offset 16
.Ltmp121:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpl	$0, 80(%rbx)
	jne	.LBB27_2
# BB#1:                                 # %if.then
	movq	64(%rbx), %rdi
	xorl	%esi, %esi
	callq	gx_path_close_subpath_notes
	movl	%eax, 80(%rbx)
.LBB27_2:                               # %if.end
	popq	%rbx
	retq
.Lfunc_end27:
	.size	gx_ttfExport__Close, .Lfunc_end27-gx_ttfExport__Close
	.cfi_endproc

	.align	16, 0x90
	.type	gx_ttfExport__Point,@function
gx_ttfExport__Point:                    # @gx_ttfExport__Point
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end28:
	.size	gx_ttfExport__Point, .Lfunc_end28-gx_ttfExport__Point
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI29_0:
	.quad	4643211215818981376     # double 256
	.text
	.align	16, 0x90
	.type	gx_ttfExport__SetWidth,@function
gx_ttfExport__SetWidth:                 # @gx_ttfExport__SetWidth
	.cfi_startproc
# BB#0:                                 # %entry
	movsd	.LCPI29_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	(%rsi), %xmm1           # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 72(%rdi)
	mulsd	8(%rsi), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 76(%rdi)
	retq
.Lfunc_end29:
	.size	gx_ttfExport__SetWidth, .Lfunc_end29-gx_ttfExport__SetWidth
	.cfi_endproc

	.align	16, 0x90
	.type	gx_ttfExport__DebugPaint,@function
gx_ttfExport__DebugPaint:               # @gx_ttfExport__DebugPaint
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end30:
	.size	gx_ttfExport__DebugPaint, .Lfunc_end30-gx_ttfExport__DebugPaint
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI31_0:
	.quad	4607182418800017408     # double 1
.LCPI31_1:
	.quad	4571153621781053440     # double 0.00390625
.LCPI31_2:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	grid_fit,@function
grid_fit:                               # @grid_fit
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
	pushq	%r13
.Ltmp125:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp126:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp127:
	.cfi_def_cfa_offset 56
	subq	$12440, %rsp            # imm = 0x3098
.Ltmp128:
	.cfi_def_cfa_offset 12496
.Ltmp129:
	.cfi_offset %rbx, -56
.Ltmp130:
	.cfi_offset %r12, -48
.Ltmp131:
	.cfi_offset %r13, -40
.Ltmp132:
	.cfi_offset %r14, -32
.Ltmp133:
	.cfi_offset %r15, -24
.Ltmp134:
	.cfi_offset %rbp, -16
	movq	%r9, %rbx
	movq	%r8, 56(%rsp)           # 8-byte Spill
	movq	%rcx, %r14
	movq	%rdx, %r13
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movq	24(%r13), %rdi
	callq	gs_currentaligntopixels
	movl	%eax, %r12d
	movq	48(%rbx), %rax
	movzwl	96(%rax), %r15d
	movsd	96(%rbx), %xmm0         # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 176(%rsp)
	movsd	104(%rbx), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 180(%rsp)
	movsd	112(%rbx), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 184(%rsp)
	movsd	120(%rbx), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 188(%rsp)
	movsd	128(%rbx), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 192(%rsp)
	movsd	136(%rbx), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 196(%rsp)
	leaq	88(%rsp), %rdi
	leaq	176(%rsp), %rsi
	callq	gs_matrix_fixed_from_matrix
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB31_43
# BB#1:                                 # %if.end
	cvtsi2sdl	%r15d, %xmm1
	movsd	.LCPI31_0(%rip), %xmm0  # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	leaq	80(%r13), %rdi
	leaq	152(%rsp), %rsi
	movapd	%xmm0, %xmm1
	callq	gs_matrix_scale
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB31_43
# BB#2:                                 # %if.end.21
	movq	64(%r13), %rdi
	addq	$80, %rdi
	leaq	128(%rsp), %rsi
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm1
	callq	gs_matrix_scale
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB31_43
# BB#3:                                 # %if.end.27
	leaq	200(%rsp), %rbp
	movq	%rbp, %rdi
	movq	64(%rsp), %rsi          # 8-byte Reload
	callq	t1_hinter__init
	movl	(%r14), %r8d
	movl	112(%rsp), %eax
	movl	116(%rsp), %ecx
	movl	%r12d, 32(%rsp)
	movl	%ecx, 24(%rsp)
	movl	%eax, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$0, (%rsp)
	leaq	88(%rsp), %rsi
	leaq	152(%rsp), %rdx
	leaq	128(%rsp), %rcx
	movq	%rbp, %rdi
	movl	%r8d, %r9d
	callq	t1_hinter__set_mapping
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB31_42
# BB#4:                                 # %if.end.34
	cmpl	$0, 348(%rsp)
	je	.LBB31_5
# BB#41:                                # %if.else
	movq	%rbx, %rdi
	callq	ttfOutliner__DrawGlyphOutline
	movq	56(%rsp), %rax          # 8-byte Reload
	movl	80(%rax), %ebp
	testl	%ebp, %ebp
	jne	.LBB31_43
	jmp	.LBB31_42
.LBB31_5:                               # %if.then.36
	movsd	.LCPI31_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%xmm0, %xmm1            # xmm1 = xmm0[0],zero
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqu	%xmm0, 112(%rbx)
	pxor	%xmm0, %xmm0
	movdqu	%xmm1, 96(%rbx)
	movdqu	%xmm0, 128(%rbx)
	movq	%rbx, %rdi
	callq	ttfOutliner__DrawGlyphOutline
	movq	56(%rsp), %rax          # 8-byte Reload
	movl	80(%rax), %ebp
	testl	%ebp, %ebp
	jne	.LBB31_43
# BB#6:                                 # %if.end.52
	addq	$448, %r13              # imm = 0x1C0
	leaq	200(%rsp), %rdi
	movl	$1, %esi
	xorl	%ecx, %ecx
	movq	%r13, %rdx
	callq	t1_hinter__set_font42_data
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB31_43
# BB#7:                                 # %if.end.58
	movq	56(%rsp), %rax          # 8-byte Reload
	movl	72(%rax), %ecx
	movl	76(%rax), %r8d
	leaq	200(%rsp), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	t1_hinter__sbw
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB31_43
# BB#8:                                 # %if.end.66
	leaq	72(%rsp), %rsi
	movq	64(%rsp), %rdi          # 8-byte Reload
	callq	gx_path_bbox
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB31_43
# BB#9:                                 # %if.end.71
	leaq	10736(%rsp), %r15
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	movl	$1616, %edx             # imm = 0x650
	movq	%r15, %rdi
	callq	memset
	movq	40(%rsp), %r12          # 8-byte Reload
	movq	24(%r12), %rax
	movq	%rax, 10744(%rsp)
	movq	$1, 10072(%rsp)
	movq	gx_dc_type_pure(%rip), %rax
	movq	%rax, 10064(%rsp)
	movl	$0, 10424(%rsp)
	movl	$-1, 10720(%rsp)
	movl	$0, 10728(%rsp)
	movl	$0, 10724(%rsp)
	movq	80(%rsp), %xmm0         # xmm0 = mem[0],zero
	pshufd	$212, %xmm0, %xmm0      # xmm0 = xmm0[0,1,1,3]
	movq	72(%rsp), %xmm1         # xmm1 = mem[0],zero
	pshufd	$212, %xmm1, %xmm1      # xmm1 = xmm1[0,1,1,3]
	psubq	%xmm1, %xmm0
	movd	%xmm0, %eax
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %ecx
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%ecx, %xmm0
	mulsd	.LCPI31_1(%rip), %xmm0
	divsd	.LCPI31_2(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 10732(%rsp)
	movl	$0, 10056(%rsp)
	leaq	10720(%rsp), %r13
	leaq	10064(%rsp), %r14
.LBB31_10:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_12 Depth 2
                                        #     Child Loop BB31_20 Depth 2
	movl	1820(%r12), %eax
	addl	1816(%r12), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	movl	%ecx, 10060(%rsp)
	testl	%ebx, %ebx
	je	.LBB31_16
# BB#11:                                # %if.then.105
                                        #   in Loop: Header=BB31_10 Depth=1
	movq	64(%rsp), %rsi          # 8-byte Reload
	movq	56(%rsi), %rax
	movq	24(%rax), %rax
	movl	76(%rsi), %ecx
	movl	72(%rsi), %edx
	movl	%edx, 76(%rsi)
	movl	%ecx, 72(%rsi)
	movl	80(%rsi), %ecx
	movl	84(%rsi), %edx
	movl	%ecx, 84(%rsi)
	movl	%edx, 80(%rsi)
	jmp	.LBB31_12
	.align	16, 0x90
.LBB31_15:                              # %if.end.i
                                        #   in Loop: Header=BB31_12 Depth=2
	movl	20(%rax), %ecx
	movl	24(%rax), %edx
	movl	%ecx, 24(%rax)
	movl	%edx, 20(%rax)
	movq	8(%rax), %rax
.LBB31_12:                              # %if.then.105
                                        #   Parent Loop BB31_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rax, %rax
	je	.LBB31_16
# BB#13:                                # %for.body.i
                                        #   in Loop: Header=BB31_12 Depth=2
	movzwl	16(%rax), %ecx
	cmpl	$3, %ecx
	jne	.LBB31_15
# BB#14:                                # %if.then.i
                                        #   in Loop: Header=BB31_12 Depth=2
	movl	28(%rax), %ecx
	movl	32(%rax), %edx
	movl	%ecx, 32(%rax)
	movl	%edx, 28(%rax)
	movl	36(%rax), %ecx
	movl	40(%rax), %edx
	movl	%ecx, 40(%rax)
	movl	%edx, 36(%rax)
	jmp	.LBB31_15
.LBB31_16:                              # %if.end.106
                                        #   in Loop: Header=BB31_10 Depth=1
	movq	%r12, %rdi
	callq	gx_san_begin
	xorl	%r9d, %r9d
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	64(%rsp), %rdx          # 8-byte Reload
	movq	%r13, %rcx
	movq	%r14, %r8
	callq	*1336(%r12)
	movl	%eax, %ebp
	movq	%r12, %rdi
	callq	gx_san_end
	testl	%ebp, %ebp
	js	.LBB31_18
# BB#17:                                # %if.then.110
                                        #   in Loop: Header=BB31_10 Depth=1
	xorl	%esi, %esi
	movl	$stem_hint_handler, %ecx
	movq	%r12, %rdi
	leaq	200(%rsp), %rdx
	callq	gx_san_generate_stems
	movl	%eax, %ebp
.LBB31_18:                              # %if.end.112
                                        #   in Loop: Header=BB31_10 Depth=1
	movl	10056(%rsp), %ebx
	testl	%ebx, %ebx
	je	.LBB31_24
# BB#19:                                # %if.then.115
                                        #   in Loop: Header=BB31_10 Depth=1
	movq	64(%rsp), %rsi          # 8-byte Reload
	movq	56(%rsi), %rax
	movq	24(%rax), %rax
	movl	76(%rsi), %ecx
	movl	72(%rsi), %edx
	movl	%edx, 76(%rsi)
	movl	%ecx, 72(%rsi)
	movl	80(%rsi), %ecx
	movl	84(%rsi), %edx
	movl	%ecx, 84(%rsi)
	movl	%edx, 80(%rsi)
	jmp	.LBB31_20
	.align	16, 0x90
.LBB31_23:                              # %if.end.i.88
                                        #   in Loop: Header=BB31_20 Depth=2
	movl	20(%rax), %ecx
	movl	24(%rax), %edx
	movl	%ecx, 24(%rax)
	movl	%edx, 20(%rax)
	movq	8(%rax), %rax
.LBB31_20:                              # %if.then.115
                                        #   Parent Loop BB31_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rax, %rax
	je	.LBB31_24
# BB#21:                                # %for.body.i.78
                                        #   in Loop: Header=BB31_20 Depth=2
	movzwl	16(%rax), %ecx
	cmpl	$3, %ecx
	jne	.LBB31_23
# BB#22:                                # %if.then.i.83
                                        #   in Loop: Header=BB31_20 Depth=2
	movl	28(%rax), %ecx
	movl	32(%rax), %edx
	movl	%ecx, 32(%rax)
	movl	%edx, 28(%rax)
	movl	36(%rax), %ecx
	movl	40(%rax), %edx
	movl	%ecx, 40(%rax)
	movl	%edx, 36(%rax)
	jmp	.LBB31_23
.LBB31_24:                              # %if.end.116
                                        #   in Loop: Header=BB31_10 Depth=1
	testl	%ebp, %ebp
	js	.LBB31_43
# BB#25:                                # %for.inc
                                        #   in Loop: Header=BB31_10 Depth=1
	incl	%ebx
	movl	%ebx, 10056(%rsp)
	cmpl	$2, %ebx
	jl	.LBB31_10
# BB#26:                                # %for.end
	leaq	12376(%rsp), %rdi
	movq	64(%rsp), %rsi          # 8-byte Reload
	callq	gx_path_enum_init
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB31_43
# BB#27:                                # %while.cond.preheader.i
	movl	$1, %r12d
	xorl	%ebx, %ebx
	leaq	12376(%rsp), %r14
	leaq	12352(%rsp), %r13
	xorl	%r15d, %r15d
	jmp	.LBB31_28
.LBB31_38:                              # %if.end.60.i
                                        #   in Loop: Header=BB31_28 Depth=1
	movq	12352(%rsp), %r15
	movq	%r15, %rbx
	shrq	$32, %rbx
.LBB31_28:                              # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	gx_path_enum_next
	movl	$-28, %ebp
	movl	%eax, %ecx
	cmpl	$5, %eax
	ja	.LBB31_43
# BB#29:                                # %while.cond.i
                                        #   in Loop: Header=BB31_28 Depth=1
	jmpq	*.LJTI31_0(,%rcx,8)
.LBB31_33:                              # %sw.bb.14.i
                                        #   in Loop: Header=BB31_28 Depth=1
	movq	12352(%rsp), %rdx
	movl	%edx, %esi
	subl	%r15d, %esi
	shrq	$32, %rdx
	subl	%ebx, %edx
	leaq	200(%rsp), %rdi
	callq	t1_hinter__rlineto
	jmp	.LBB31_36
.LBB31_30:                              # %sw.bb.i
                                        #   in Loop: Header=BB31_28 Depth=1
	movq	12352(%rsp), %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
	testl	%r12d, %r12d
	jne	.LBB31_31
# BB#32:                                # %if.else.i
                                        #   in Loop: Header=BB31_28 Depth=1
	subl	%r15d, %esi
	subl	%ebx, %edx
.LBB31_31:                              # %if.then.3.i
                                        #   in Loop: Header=BB31_28 Depth=1
	leaq	200(%rsp), %rdi
	callq	t1_hinter__rmoveto
	movl	%eax, %ebp
	xorl	%r12d, %r12d
	jmp	.LBB31_37
.LBB31_34:                              # %sw.bb.24.i
                                        #   in Loop: Header=BB31_28 Depth=1
	movq	12352(%rsp), %rsi
	movq	12360(%rsp), %rax
	movq	%rsi, %rdx
	shrq	$32, %rdx
	movq	%rax, %rdi
	movq	12368(%rsp), %rbp
	movl	%ebp, %r9d
	subl	%eax, %r9d
	movl	%eax, %ecx
	subl	%esi, %ecx
	subl	%r15d, %esi
	shrq	$32, %rdi
	shrq	$32, %rbp
	subl	%edi, %ebp
	movl	%edi, %r8d
	subl	%edx, %r8d
	subl	%ebx, %edx
	movl	%ebp, (%rsp)
	leaq	200(%rsp), %rdi
	callq	t1_hinter__rcurveto
	movl	%eax, %ebp
	movq	12368(%rsp), %rax
	movq	%rax, 12352(%rsp)
	jmp	.LBB31_37
.LBB31_35:                              # %sw.bb.56.i
                                        #   in Loop: Header=BB31_28 Depth=1
	leaq	200(%rsp), %rdi
	callq	t1_hinter__closepath
.LBB31_36:                              # %sw.epilog.i
                                        #   in Loop: Header=BB31_28 Depth=1
	movl	%eax, %ebp
.LBB31_37:                              # %sw.epilog.i
                                        #   in Loop: Header=BB31_28 Depth=1
	testl	%ebp, %ebp
	jns	.LBB31_38
	jmp	.LBB31_43
.LBB31_39:                              # %if.end.127
	movq	64(%rsp), %rdi          # 8-byte Reload
	callq	gx_path_new
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB31_43
# BB#40:                                # %if.end.132
	leaq	200(%rsp), %rdi
	callq	t1_hinter__endglyph
	movl	%eax, %r14d
.LBB31_42:                              # %if.end.140
	movl	%r14d, %ebp
.LBB31_43:                              # %cleanup
	movl	%ebp, %eax
	addq	$12440, %rsp            # imm = 0x3098
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end31:
	.size	grid_fit, .Lfunc_end31-grid_fit
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI31_0:
	.quad	.LBB31_39
	.quad	.LBB31_30
	.quad	.LBB31_33
	.quad	.LBB31_34
	.quad	.LBB31_35
	.quad	.LBB31_33

	.text
	.align	16, 0x90
	.type	stem_hint_handler,@function
stem_hint_handler:                      # @stem_hint_handler
	.cfi_startproc
# BB#0:                                 # %entry
	movl	32(%rsi), %ecx
	cmpl	$3, %ecx
	jne	.LBB32_5
# BB#1:                                 # %if.then
	movl	(%rsi), %eax
	cmpl	9860(%rdi), %eax
	movl	9856(%rdi), %edx
	jle	.LBB32_2
# BB#3:                                 # %land.lhs.true
	movl	$t1_hinter__vstem, %ecx
	testl	%edx, %edx
	je	.LBB32_4
# BB#6:                                 # %if.then.2
	movl	8(%rsi), %esi
	subl	%esi, %eax
	movl	%eax, %edx
	jmp	t1_hinter__hstem        # TAILCALL
.LBB32_5:                               # %if.else.16
	movl	(%rsi), %eax
	movl	8(%rsi), %edx
	subl	%eax, %edx
	movl	%eax, %esi
	jmp	t1_hinter__overall_hstem # TAILCALL
.LBB32_2:                               # %if.then.if.else_crit_edge
	testl	%edx, %edx
	movl	$t1_hinter__hstem, %edx
	movl	$t1_hinter__vstem, %ecx
	cmovneq	%rdx, %rcx
.LBB32_4:                               # %if.else
	movl	8(%rsi), %edx
	subl	%eax, %edx
	movl	%eax, %esi
	jmpq	*%rcx                   # TAILCALL
.Lfunc_end32:
	.size	stem_hint_handler, .Lfunc_end32-stem_hint_handler
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gx_ttfReader"
	.size	.L.str, 13

	.type	st_gx_ttfReader,@object # @st_gx_ttfReader
	.section	.rodata,"a",@progbits
	.globl	st_gx_ttfReader
	.align	8
st_gx_ttfReader:
	.long	144                     # 0x90
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	gx_ttfReader_enum_ptrs
	.quad	gx_ttfReader_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_gx_ttfReader, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gx_ttfReader__create"
	.size	.L.str.1, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gx_ttfReader__destroy"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"ttfFont__create(gx_ttfMemory)"
	.size	.L.str.3, 30

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"ttfFont__create"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"ttfFont__destroy"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"ttfFont__destroy(gx_ttfMemory)"
	.size	.L.str.6, 31

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The font"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Some glyphs of the font"
	.size	.L.str.8, 24

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gx_ttfReader__ReleaseExtraGlyph"
	.size	.L.str.9, 32

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gx_ttfReader__Reset"
	.size	.L.str.10, 20

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gx_ttfMemory"
	.size	.L.str.11, 13

	.type	st_gx_ttfMemory,@object # @st_gx_ttfMemory
	.section	.rodata,"a",@progbits
	.align	8
st_gx_ttfMemory:
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str.11
	.quad	0
	.quad	0
	.quad	gs_no_struct_enum_ptrs
	.quad	gs_no_struct_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_gx_ttfMemory, 64

	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"Failed to interpret TT instructions for glyph index %d of font %s. Continue ignoring instructions of the font.\n"
	.size	.L.str.12, 112

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Failed to interpret TT instructions in font %s. Continue ignoring instructions of the font.\n"
	.size	.L.str.13, 93

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%s %s requires a patented True Type interpreter.\n"
	.size	.L.str.14, 50


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
