	.text
	.file	"gxcmap.bc"
	.align	16, 0x90
	.type	device_color_enum_ptrs,@function
device_color_enum_ptrs:                 # @device_color_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rsi), %rax
	movq	(%rax), %r9
	movq	32(%r9), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end0:
	.size	device_color_enum_ptrs, .Lfunc_end0-device_color_enum_ptrs
	.cfi_endproc

	.align	16, 0x90
	.type	device_color_reloc_ptrs,@function
device_color_reloc_ptrs:                # @device_color_reloc_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	movq	(%rax), %rdx
	movq	40(%rdx), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end1:
	.size	device_color_reloc_ptrs, .Lfunc_end1-device_color_reloc_ptrs
	.cfi_endproc

	.globl	gx_default_encode_color
	.align	16, 0x90
	.type	gx_default_encode_color,@function
gx_default_encode_color:                # @gx_default_encode_color
	.cfi_startproc
# BB#0:                                 # %entry
	movl	100(%rdi), %r9d
	xorl	%eax, %eax
	testl	%r9d, %r9d
	jle	.LBB2_3
# BB#1:                                 # %for.body.preheader
	addq	$204, %rdi
	xorl	%eax, %eax
	.align	16, 0x90
.LBB2_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi), %r8d
	movl	$1, %r11d
	movb	%r8b, %cl
	shll	%cl, %r11d
	decl	%r11d
	movl	$16, %ecx
	subl	%r8d, %ecx
	shll	%cl, %r11d
	incl	%r11d
	movl	$32, %r10d
	subq	%r8, %r10
	leal	-1(%r10), %ecx
	movl	$1, %r8d
	shll	%cl, %r8d
	movzwl	(%rsi), %edx
	imull	%r11d, %edx
	addl	%r8d, %edx
	movb	%r10b, %cl
	shrl	%cl, %edx
	movb	-64(%rdi), %cl
	shlq	%cl, %rdx
	orq	%rdx, %rax
	addq	$2, %rsi
	incq	%rdi
	decl	%r9d
	jne	.LBB2_2
.LBB2_3:                                # %for.end
	retq
.Lfunc_end2:
	.size	gx_default_encode_color, .Lfunc_end2-gx_default_encode_color
	.cfi_endproc

	.globl	gx_default_decode_color
	.align	16, 0x90
	.type	gx_default_decode_color,@function
gx_default_decode_color:                # @gx_default_decode_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
.Ltmp2:
	.cfi_offset %rbx, -24
.Ltmp3:
	.cfi_offset %r14, -16
	movq	%rdx, %r8
	movl	100(%rdi), %r11d
	testl	%r11d, %r11d
	jle	.LBB3_3
# BB#1:                                 # %for.body.preheader
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB3_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	204(%rdi,%r14), %r9d
	movl	$1, %ebx
	movb	%r9b, %cl
	shll	%cl, %ebx
	decl	%ebx
	movl	$65535, %eax            # imm = 0xFFFF
	xorl	%edx, %edx
	idivl	%ebx
	movl	%eax, %r10d
	movq	272(%rdi,%r14,8), %rbx
	andq	%rsi, %rbx
	movb	140(%rdi,%r14), %cl
	shrq	%cl, %rbx
	imull	%ebx, %r10d
	movl	$16, %eax
	xorl	%edx, %edx
	divq	%r9
	subl	%edx, %r9d
	movb	%r9b, %cl
	shrl	%cl, %ebx
	addl	%r10d, %ebx
	movw	%bx, (%r8,%r14,2)
	incq	%r14
	cmpl	%r14d, %r11d
	jne	.LBB3_2
.LBB3_3:                                # %for.end
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	gx_default_decode_color, .Lfunc_end3-gx_default_decode_color
	.cfi_endproc

	.globl	gx_error_encode_color
	.align	16, 0x90
	.type	gx_error_encode_color,@function
gx_error_encode_color:                  # @gx_error_encode_color
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$-1, %rax
	retq
.Lfunc_end4:
	.size	gx_error_encode_color, .Lfunc_end4-gx_error_encode_color
	.cfi_endproc

	.globl	gx_error_decode_color
	.align	16, 0x90
	.type	gx_error_decode_color,@function
gx_error_decode_color:                  # @gx_error_decode_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbx, -16
	movslq	100(%rdi), %rax
	testq	%rax, %rax
	js	.LBB5_13
# BB#1:                                 # %for.body.lr.ph
	movq	%rax, %rcx
	sarq	$63, %rcx
	andq	%rax, %rcx
	notq	%rcx
	leaq	(%rax,%rcx), %r11
	cmpq	$-2, %r11
	je	.LBB5_11
# BB#2:                                 # %overflow.checked
	addq	$2, %r11
	movq	%r11, %r10
	andq	$-16, %r10
	xorl	%esi, %esi
	movq	%r11, %r9
	andq	$-16, %r9
	je	.LBB5_10
# BB#3:                                 # %vector.body.preheader
	leaq	-14(%rax,%rcx), %r8
	movl	%r8d, %ecx
	shrl	$4, %ecx
	incl	%ecx
	xorl	%esi, %esi
	testb	$3, %cl
	je	.LBB5_6
# BB#4:                                 # %vector.body.prol.preheader
	leaq	-14(%rdx,%rax,2), %rdi
	movq	%rax, %rcx
	xorq	$-1, %rcx
	movl	$-1, %esi
	cmovnsl	%ecx, %esi
	leal	-14(%rsi,%rax), %ecx
	shrl	$4, %ecx
	incl	%ecx
	andl	$3, %ecx
	negq	%rcx
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB5_5:                                # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rdi)
	movups	%xmm0, -16(%rdi)
	addq	$16, %rsi
	addq	$-32, %rdi
	incq	%rcx
	jne	.LBB5_5
.LBB5_6:                                # %vector.body.preheader.split
	movq	%rax, %rbx
	subq	%r10, %rbx
	cmpq	$48, %r8
	jb	.LBB5_9
# BB#7:                                 # %vector.body.preheader.split.split
	movq	%rax, %rcx
	notq	%rcx
	cmpq	$-2, %rcx
	movq	$-1, %rdi
	cmovgq	%rcx, %rdi
	leaq	2(%rdi,%rax), %rcx
	andq	$-16, %rcx
	subq	%rsi, %rcx
	addq	$-7, %rax
	subq	%rsi, %rax
	leaq	(%rdx,%rax,2), %rax
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB5_8:                                # %vector.body
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
	jne	.LBB5_8
.LBB5_9:
	movq	%rbx, %rax
	movq	%r9, %rsi
.LBB5_10:                               # %middle.block
	cmpq	%rsi, %r11
	je	.LBB5_13
.LBB5_11:                               # %for.body.preheader
	incq	%rax
	.align	16, 0x90
.LBB5_12:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, -2(%rdx,%rax,2)
	decq	%rax
	testq	%rax, %rax
	jg	.LBB5_12
.LBB5_13:                               # %for.end
	movl	$-15, %eax
	popq	%rbx
	retq
.Lfunc_end5:
	.size	gx_error_decode_color, .Lfunc_end5-gx_error_decode_color
	.cfi_endproc

	.globl	gx_default_gray_fast_encode
	.align	16, 0x90
	.type	gx_default_gray_fast_encode,@function
gx_default_gray_fast_encode:            # @gx_default_gray_fast_encode
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	108(%rdi), %eax
	movl	$1, %r8d
	movl	$1, %edi
	movb	%al, %cl
	shll	%cl, %edi
	decl	%edi
	movl	$16, %ecx
	subl	%eax, %ecx
	shll	%cl, %edi
	incl	%edi
	movl	$32, %edx
	subq	%rax, %rdx
	leal	-1(%rdx), %ecx
	shll	%cl, %r8d
	movzwl	(%rsi), %eax
	imull	%edi, %eax
	addl	%r8d, %eax
	movb	%dl, %cl
	shrl	%cl, %eax
	retq
.Lfunc_end6:
	.size	gx_default_gray_fast_encode, .Lfunc_end6-gx_default_gray_fast_encode
	.cfi_endproc

	.globl	gx_default_gray_encode
	.align	16, 0x90
	.type	gx_default_gray_encode,@function
gx_default_gray_encode:                 # @gx_default_gray_encode
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %ecx
	movl	112(%rdi), %eax
	incl	%eax
	imull	%ecx, %eax
	shrl	$16, %eax
	retq
.Lfunc_end7:
	.size	gx_default_gray_encode, .Lfunc_end7-gx_default_gray_encode
	.cfi_endproc

	.globl	gx_backwards_compatible_gray_encode
	.align	16, 0x90
	.type	gx_backwards_compatible_gray_encode,@function
gx_backwards_compatible_gray_encode:    # @gx_backwards_compatible_gray_encode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp6:
	.cfi_def_cfa_offset 16
	movw	(%rsi), %ax
	movw	%ax, 2(%rsp)
	movw	%ax, 4(%rsp)
	movw	%ax, 6(%rsp)
	leaq	2(%rsp), %rsi
	callq	*1184(%rdi)
	popq	%rdx
	retq
.Lfunc_end8:
	.size	gx_backwards_compatible_gray_encode, .Lfunc_end8-gx_backwards_compatible_gray_encode
	.cfi_endproc

	.globl	gray_cs_to_gray_cm
	.align	16, 0x90
	.type	gray_cs_to_gray_cm,@function
gray_cs_to_gray_cm:                     # @gray_cs_to_gray_cm
	.cfi_startproc
# BB#0:                                 # %entry
	movw	%si, (%rdx)
	retq
.Lfunc_end9:
	.size	gray_cs_to_gray_cm, .Lfunc_end9-gray_cs_to_gray_cm
	.cfi_endproc

	.globl	rgb_cs_to_rgb_cm
	.align	16, 0x90
	.type	rgb_cs_to_rgb_cm,@function
rgb_cs_to_rgb_cm:                       # @rgb_cs_to_rgb_cm
	.cfi_startproc
# BB#0:                                 # %entry
	movw	%dx, (%r9)
	movw	%cx, 2(%r9)
	movw	%r8w, 4(%r9)
	retq
.Lfunc_end10:
	.size	rgb_cs_to_rgb_cm, .Lfunc_end10-rgb_cs_to_rgb_cm
	.cfi_endproc

	.globl	cmyk_cs_to_cmyk_cm
	.align	16, 0x90
	.type	cmyk_cs_to_cmyk_cm,@function
cmyk_cs_to_cmyk_cm:                     # @cmyk_cs_to_cmyk_cm
	.cfi_startproc
# BB#0:                                 # %entry
	movw	%si, (%r9)
	movw	%dx, 2(%r9)
	movw	%cx, 4(%r9)
	movw	%r8w, 6(%r9)
	retq
.Lfunc_end11:
	.size	cmyk_cs_to_cmyk_cm, .Lfunc_end11-cmyk_cs_to_cmyk_cm
	.cfi_endproc

	.globl	gx_default_DevGray_get_color_mapping_procs
	.align	16, 0x90
	.type	gx_default_DevGray_get_color_mapping_procs,@function
gx_default_DevGray_get_color_mapping_procs: # @gx_default_DevGray_get_color_mapping_procs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$DeviceGray_procs, %eax
	retq
.Lfunc_end12:
	.size	gx_default_DevGray_get_color_mapping_procs, .Lfunc_end12-gx_default_DevGray_get_color_mapping_procs
	.cfi_endproc

	.globl	gx_default_DevRGB_get_color_mapping_procs
	.align	16, 0x90
	.type	gx_default_DevRGB_get_color_mapping_procs,@function
gx_default_DevRGB_get_color_mapping_procs: # @gx_default_DevRGB_get_color_mapping_procs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$DeviceRGB_procs, %eax
	retq
.Lfunc_end13:
	.size	gx_default_DevRGB_get_color_mapping_procs, .Lfunc_end13-gx_default_DevRGB_get_color_mapping_procs
	.cfi_endproc

	.globl	gx_default_DevCMYK_get_color_mapping_procs
	.align	16, 0x90
	.type	gx_default_DevCMYK_get_color_mapping_procs,@function
gx_default_DevCMYK_get_color_mapping_procs: # @gx_default_DevCMYK_get_color_mapping_procs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$DeviceCMYK_procs, %eax
	retq
.Lfunc_end14:
	.size	gx_default_DevCMYK_get_color_mapping_procs, .Lfunc_end14-gx_default_DevCMYK_get_color_mapping_procs
	.cfi_endproc

	.globl	gx_default_DevRGBK_get_color_mapping_procs
	.align	16, 0x90
	.type	gx_default_DevRGBK_get_color_mapping_procs,@function
gx_default_DevRGBK_get_color_mapping_procs: # @gx_default_DevRGBK_get_color_mapping_procs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$DeviceRGBK_procs, %eax
	retq
.Lfunc_end15:
	.size	gx_default_DevRGBK_get_color_mapping_procs, .Lfunc_end15-gx_default_DevRGBK_get_color_mapping_procs
	.cfi_endproc

	.globl	gx_error_get_color_mapping_procs
	.align	16, 0x90
	.type	gx_error_get_color_mapping_procs,@function
gx_error_get_color_mapping_procs:       # @gx_error_get_color_mapping_procs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp7:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp8:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 32
.Ltmp10:
	.cfi_offset %rbx, -32
.Ltmp11:
	.cfi_offset %r14, -24
.Ltmp12:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	24(%rbx), %r14
	callq	gs_program_name
	movq	%rax, %r15
	callq	gs_revision_number
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	emprintf_program_ident
	movq	16(%rbx), %rdx
	movq	24(%rbx), %rdi
	movl	$.L.str.1, %esi
	xorl	%eax, %eax
	callq	errprintf
	movl	100(%rbx), %eax
	cmpl	$3, %eax
	movl	$DeviceRGB_procs, %ecx
	movl	$DeviceCMYK_procs, %edx
	cmoveq	%rcx, %rdx
	cmpl	$1, %eax
	movl	$DeviceGray_procs, %eax
	cmovneq	%rdx, %rax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end16:
	.size	gx_error_get_color_mapping_procs, .Lfunc_end16-gx_error_get_color_mapping_procs
	.cfi_endproc

	.globl	gx_default_DevGray_get_color_comp_index
	.align	16, 0x90
	.type	gx_default_DevGray_get_color_comp_index,@function
gx_default_DevGray_get_color_comp_index: # @gx_default_DevGray_get_color_comp_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp15:
	.cfi_def_cfa_offset 32
.Ltmp16:
	.cfi_offset %rbx, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movl	$.L.str.2, %edi
	callq	strlen
	cmpl	%ebp, %eax
	jne	.LBB17_2
# BB#1:                                 # %land.lhs.true
	movslq	%ebp, %rdx
	movl	$.L.str.2, %esi
	movq	%rbx, %rdi
	callq	strncmp
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB17_5
.LBB17_2:                               # %lor.lhs.false
	movl	$.L.str.3, %edi
	callq	strlen
	cmpl	%ebp, %eax
	jne	.LBB17_4
# BB#3:                                 # %land.lhs.true.10
	movslq	%ebp, %rdx
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	strncmp
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB17_5
.LBB17_4:                               # %if.else
	movl	$-1, %eax
.LBB17_5:                               # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gx_default_DevGray_get_color_comp_index, .Lfunc_end17-gx_default_DevGray_get_color_comp_index
	.cfi_endproc

	.globl	gx_default_DevRGB_get_color_comp_index
	.align	16, 0x90
	.type	gx_default_DevRGB_get_color_comp_index,@function
gx_default_DevRGB_get_color_comp_index: # @gx_default_DevRGB_get_color_comp_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp20:
	.cfi_def_cfa_offset 32
.Ltmp21:
	.cfi_offset %rbx, -24
.Ltmp22:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movl	$.L.str.4, %edi
	callq	strlen
	cmpl	%ebp, %eax
	jne	.LBB18_2
# BB#1:                                 # %land.lhs.true
	movslq	%ebp, %rdx
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	callq	strncmp
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB18_7
.LBB18_2:                               # %if.end
	movl	$.L.str.5, %edi
	callq	strlen
	cmpl	%ebp, %eax
	jne	.LBB18_4
# BB#3:                                 # %land.lhs.true.10
	movslq	%ebp, %rdx
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	callq	strncmp
	movl	%eax, %ecx
	movl	$1, %eax
	testl	%ecx, %ecx
	je	.LBB18_7
.LBB18_4:                               # %if.end.16
	movl	$.L.str.6, %edi
	callq	strlen
	cmpl	%ebp, %eax
	jne	.LBB18_6
# BB#5:                                 # %land.lhs.true.21
	movslq	%ebp, %rdx
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	callq	strncmp
	movl	%eax, %ecx
	movl	$2, %eax
	testl	%ecx, %ecx
	je	.LBB18_7
.LBB18_6:                               # %if.else
	movl	$-1, %eax
.LBB18_7:                               # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gx_default_DevRGB_get_color_comp_index, .Lfunc_end18-gx_default_DevRGB_get_color_comp_index
	.cfi_endproc

	.globl	gx_default_DevCMYK_get_color_comp_index
	.align	16, 0x90
	.type	gx_default_DevCMYK_get_color_comp_index,@function
gx_default_DevCMYK_get_color_comp_index: # @gx_default_DevCMYK_get_color_comp_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp24:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp25:
	.cfi_def_cfa_offset 32
.Ltmp26:
	.cfi_offset %rbx, -24
.Ltmp27:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movl	$.L.str.7, %edi
	callq	strlen
	cmpl	%ebp, %eax
	jne	.LBB19_2
# BB#1:                                 # %land.lhs.true
	movslq	%ebp, %rdx
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	callq	strncmp
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB19_9
.LBB19_2:                               # %if.end
	movl	$.L.str.8, %edi
	callq	strlen
	cmpl	%ebp, %eax
	jne	.LBB19_4
# BB#3:                                 # %land.lhs.true.10
	movslq	%ebp, %rdx
	movl	$.L.str.8, %esi
	movq	%rbx, %rdi
	callq	strncmp
	movl	%eax, %ecx
	movl	$1, %eax
	testl	%ecx, %ecx
	je	.LBB19_9
.LBB19_4:                               # %if.end.16
	movl	$.L.str.9, %edi
	callq	strlen
	cmpl	%ebp, %eax
	jne	.LBB19_6
# BB#5:                                 # %land.lhs.true.21
	movslq	%ebp, %rdx
	movl	$.L.str.9, %esi
	movq	%rbx, %rdi
	callq	strncmp
	movl	%eax, %ecx
	movl	$2, %eax
	testl	%ecx, %ecx
	je	.LBB19_9
.LBB19_6:                               # %if.end.27
	movl	$.L.str.10, %edi
	callq	strlen
	cmpl	%ebp, %eax
	jne	.LBB19_8
# BB#7:                                 # %land.lhs.true.32
	movslq	%ebp, %rdx
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	callq	strncmp
	movl	%eax, %ecx
	movl	$3, %eax
	testl	%ecx, %ecx
	je	.LBB19_9
.LBB19_8:                               # %if.else
	movl	$-1, %eax
.LBB19_9:                               # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gx_default_DevCMYK_get_color_comp_index, .Lfunc_end19-gx_default_DevCMYK_get_color_comp_index
	.cfi_endproc

	.globl	gx_default_DevRGBK_get_color_comp_index
	.align	16, 0x90
	.type	gx_default_DevRGBK_get_color_comp_index,@function
gx_default_DevRGBK_get_color_comp_index: # @gx_default_DevRGBK_get_color_comp_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp29:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp30:
	.cfi_def_cfa_offset 32
.Ltmp31:
	.cfi_offset %rbx, -24
.Ltmp32:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movl	$.L.str.4, %edi
	callq	strlen
	cmpl	%ebp, %eax
	jne	.LBB20_2
# BB#1:                                 # %land.lhs.true
	movslq	%ebp, %rdx
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	callq	strncmp
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB20_9
.LBB20_2:                               # %if.end
	movl	$.L.str.5, %edi
	callq	strlen
	cmpl	%ebp, %eax
	jne	.LBB20_4
# BB#3:                                 # %land.lhs.true.10
	movslq	%ebp, %rdx
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	callq	strncmp
	movl	%eax, %ecx
	movl	$1, %eax
	testl	%ecx, %ecx
	je	.LBB20_9
.LBB20_4:                               # %if.end.16
	movl	$.L.str.6, %edi
	callq	strlen
	cmpl	%ebp, %eax
	jne	.LBB20_6
# BB#5:                                 # %land.lhs.true.21
	movslq	%ebp, %rdx
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	callq	strncmp
	movl	%eax, %ecx
	movl	$2, %eax
	testl	%ecx, %ecx
	je	.LBB20_9
.LBB20_6:                               # %if.end.27
	movl	$.L.str.10, %edi
	callq	strlen
	cmpl	%ebp, %eax
	jne	.LBB20_8
# BB#7:                                 # %land.lhs.true.32
	movslq	%ebp, %rdx
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	callq	strncmp
	movl	%eax, %ecx
	movl	$3, %eax
	testl	%ecx, %ecx
	je	.LBB20_9
.LBB20_8:                               # %if.else
	movl	$-1, %eax
.LBB20_9:                               # %return
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gx_default_DevRGBK_get_color_comp_index, .Lfunc_end20-gx_default_DevRGBK_get_color_comp_index
	.cfi_endproc

	.globl	gx_error_get_color_comp_index
	.align	16, 0x90
	.type	gx_error_get_color_comp_index,@function
gx_error_get_color_comp_index:          # @gx_error_get_color_comp_index
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-1, %eax
	retq
.Lfunc_end21:
	.size	gx_error_get_color_comp_index, .Lfunc_end21-gx_error_get_color_comp_index
	.cfi_endproc

	.globl	gx_get_cmap_procs
	.align	16, 0x90
	.type	gx_get_cmap_procs,@function
gx_get_cmap_procs:                      # @gx_get_cmap_procs
	.cfi_startproc
# BB#0:                                 # %entry
	movq	360(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end22:
	.size	gx_get_cmap_procs, .Lfunc_end22-gx_get_cmap_procs
	.cfi_endproc

	.globl	gx_default_get_cmap_procs
	.align	16, 0x90
	.type	gx_default_get_cmap_procs,@function
gx_default_get_cmap_procs:              # @gx_default_get_cmap_procs
	.cfi_startproc
# BB#0:                                 # %entry
	cmpl	$1, 100(%rsi)
	jg	.LBB23_2
# BB#1:                                 # %lor.lhs.false
	movzbl	110(%rsi), %eax
	cmpl	$255, %eax
	je	.LBB23_2
# BB#3:                                 # %cond.false
	addq	$112, %rsi
	jmp	.LBB23_4
.LBB23_2:                               # %cond.true
	addq	$116, %rsi
.LBB23_4:                               # %cond.end
	movl	$cmap_few, %eax
	cmpl	$31, (%rsi)
	jb	.LBB23_6
# BB#5:                                 # %select.mid
	movl	$cmap_many, %eax
.LBB23_6:                               # %select.end
	retq
.Lfunc_end23:
	.size	gx_default_get_cmap_procs, .Lfunc_end23-gx_default_get_cmap_procs
	.cfi_endproc

	.globl	gx_set_cmap_procs
	.align	16, 0x90
	.type	gx_set_cmap_procs,@function
gx_set_cmap_procs:                      # @gx_set_cmap_procs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	*360(%rbx)
	movq	%rax, 1016(%rbx)
	popq	%rbx
	retq
.Lfunc_end24:
	.size	gx_set_cmap_procs, .Lfunc_end24-gx_set_cmap_procs
	.cfi_endproc

	.globl	gx_remap_color
	.align	16, 0x90
	.type	gx_remap_color,@function
gx_remap_color:                         # @gx_remap_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	1744(%rbx), %rsi
	movq	1752(%rbx), %rdi
	movq	(%rsi), %rax
	movq	1760(%rbx), %rdx
	movq	1872(%rbx), %r8
	xorl	%r9d, %r9d
	movq	%rbx, %rcx
	callq	*72(%rax)
	testl	%eax, %eax
	js	.LBB25_2
# BB#1:                                 # %land.lhs.true
	cmpl	$1, 280(%rbx)
	jne	.LBB25_2
# BB#3:                                 # %if.then
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gs_do_set_overprint     # TAILCALL
.LBB25_2:                               # %if.end
	popq	%rbx
	retq
.Lfunc_end25:
	.size	gx_remap_color, .Lfunc_end25-gx_remap_color
	.cfi_endproc

	.globl	gx_no_concrete_space
	.align	16, 0x90
	.type	gx_no_concrete_space,@function
gx_no_concrete_space:                   # @gx_no_concrete_space
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end26:
	.size	gx_no_concrete_space, .Lfunc_end26-gx_no_concrete_space
	.cfi_endproc

	.globl	gx_same_concrete_space
	.align	16, 0x90
	.type	gx_same_concrete_space,@function
gx_same_concrete_space:                 # @gx_same_concrete_space
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	retq
.Lfunc_end27:
	.size	gx_same_concrete_space, .Lfunc_end27-gx_same_concrete_space
	.cfi_endproc

	.globl	gx_no_concretize_color
	.align	16, 0x90
	.type	gx_no_concretize_color,@function
gx_no_concretize_color:                 # @gx_no_concretize_color
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-15, %eax
	retq
.Lfunc_end28:
	.size	gx_no_concretize_color, .Lfunc_end28-gx_no_concretize_color
	.cfi_endproc

	.globl	gx_default_remap_color
	.align	16, 0x90
	.type	gx_default_remap_color,@function
gx_default_remap_color:                 # @gx_default_remap_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp38:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp39:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp40:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp41:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp43:
	.cfi_def_cfa_offset 208
.Ltmp44:
	.cfi_offset %rbx, -56
.Ltmp45:
	.cfi_offset %r12, -48
.Ltmp46:
	.cfi_offset %r13, -40
.Ltmp47:
	.cfi_offset %r14, -32
.Ltmp48:
	.cfi_offset %r15, -24
.Ltmp49:
	.cfi_offset %rbp, -16
	movl	%r9d, 12(%rsp)          # 4-byte Spill
	movq	%r8, %r12
	movq	%rcx, %rbp
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	(%r15), %rax
	movq	%r15, %rdi
	callq	*24(%rax)
	movl	%eax, %r13d
	movq	(%r15), %rax
	leaq	16(%rsp), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rcx
	movq	%r12, %r8
	callq	*56(%rax)
	testl	%eax, %eax
	js	.LBB29_5
# BB#1:                                 # %if.end
	movq	(%r15), %rax
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	*48(%rax)
	movq	(%rax), %r10
	leaq	16(%rsp), %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	movq	%rbp, %rcx
	movq	%r12, %r8
	movl	12(%rsp), %r9d          # 4-byte Reload
	callq	*64(%r10)
	movl	%r13d, %ecx
	negl	%ecx
	cmovll	%r13d, %ecx
	testl	%ecx, %ecx
	jle	.LBB29_4
# BB#2:                                 # %for.body.lr.ph
	movslq	%ecx, %rcx
	.align	16, 0x90
.LBB29_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	4(%rbx,%rcx,4), %edx
	movl	%edx, 372(%r14,%rcx,4)
	cmpq	$1, %rcx
	leaq	-1(%rcx), %rcx
	jg	.LBB29_3
.LBB29_4:                               # %for.end
	movl	$1, 360(%r14)
.LBB29_5:                               # %cleanup
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gx_default_remap_color, .Lfunc_end29-gx_default_remap_color
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI30_0:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI30_1:
	.quad	4535125924542218256     # double 1.5262515262515263E-5
.LCPI30_2:
	.quad	4674734214187319296     # double 32760
	.text
	.globl	gx_concretize_DeviceGray
	.align	16, 0x90
	.type	gx_concretize_DeviceGray,@function
gx_concretize_DeviceGray:               # @gx_concretize_DeviceGray
	.cfi_startproc
# BB#0:                                 # %entry
	movss	8(%rdi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB30_2
# BB#1:
	xorl	%eax, %eax
	jmp	.LBB30_4
.LBB30_2:                               # %if.else.i
	movw	$32760, %ax             # imm = 0x7FF8
	ucomiss	.LCPI30_0(%rip), %xmm0
	jae	.LBB30_4
# BB#3:                                 # %if.else.6.i
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI30_1(%rip), %xmm0
	mulsd	.LCPI30_2(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
.LBB30_4:                               # %gx_unit_frac.exit
	movw	%ax, (%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end30:
	.size	gx_concretize_DeviceGray, .Lfunc_end30-gx_concretize_DeviceGray
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI31_0:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI31_1:
	.quad	4535125924542218256     # double 1.5262515262515263E-5
.LCPI31_2:
	.quad	4674734214187319296     # double 32760
	.text
	.globl	gx_unit_frac
	.align	16, 0x90
	.type	gx_unit_frac,@function
gx_unit_frac:                           # @gx_unit_frac
	.cfi_startproc
# BB#0:                                 # %entry
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB31_2
# BB#1:
	xorl	%eax, %eax
	cwtl
	retq
.LBB31_2:                               # %if.else
	movw	$32760, %ax             # imm = 0x7FF8
	ucomiss	.LCPI31_0(%rip), %xmm0
	jae	.LBB31_4
# BB#3:                                 # %if.else.6
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI31_1(%rip), %xmm0
	mulsd	.LCPI31_2(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
.LBB31_4:                               # %if.end.9
	cwtl
	retq
.Lfunc_end31:
	.size	gx_unit_frac, .Lfunc_end31-gx_unit_frac
	.cfi_endproc

	.globl	gx_remap_concrete_DGray
	.align	16, 0x90
	.type	gx_remap_concrete_DGray,@function
gx_remap_concrete_DGray:                # @gx_remap_concrete_DGray
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp50:
	.cfi_def_cfa_offset 32
	movq	%rcx, %rax
	movq	%rdx, %r10
	movzwl	216(%rax), %ecx
	movq	1016(%rax), %r11
	cmpl	$65535, %ecx            # imm = 0xFFFF
	je	.LBB32_1
# BB#2:                                 # %if.else
	movl	%ecx, %edx
	andl	$65534, %edx            # imm = 0xFFFE
	shrl	%edx
	andl	$57344, %ecx            # imm = 0xE000
	shrl	$13, %ecx
	subl	%ecx, %edx
	movswl	(%rdi), %edi
	movl	%r9d, 8(%rsp)
	movq	%r8, (%rsp)
	movswl	%dx, %ecx
	movl	%edi, %esi
	movl	%edi, %edx
	movq	%r10, %r8
	movq	%rax, %r9
	callq	*24(%r11)
	jmp	.LBB32_3
.LBB32_1:                               # %if.then
	movswl	(%rdi), %edi
	movq	%r10, %rsi
	movq	%rax, %rdx
	movq	%r8, %rcx
	movl	%r9d, %r8d
	callq	*(%r11)
.LBB32_3:                               # %if.end
	xorl	%eax, %eax
	addq	$24, %rsp
	retq
.Lfunc_end32:
	.size	gx_remap_concrete_DGray, .Lfunc_end32-gx_remap_concrete_DGray
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI33_0:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI33_1:
	.quad	4535125924542218256     # double 1.5262515262515263E-5
.LCPI33_2:
	.quad	4674734214187319296     # double 32760
	.text
	.globl	gx_remap_DeviceGray
	.align	16, 0x90
	.type	gx_remap_DeviceGray,@function
gx_remap_DeviceGray:                    # @gx_remap_DeviceGray
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp51:
	.cfi_def_cfa_offset 32
	movq	%rcx, %rax
	movq	%rdx, %r10
	movss	8(%rdi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	xorpd	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB33_2
# BB#1:
	xorl	%edx, %edx
	jmp	.LBB33_4
.LBB33_2:                               # %if.else.i
	movw	$32760, %dx             # imm = 0x7FF8
	ucomiss	.LCPI33_0(%rip), %xmm0
	jae	.LBB33_4
# BB#3:                                 # %if.else.6.i
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	addsd	.LCPI33_1(%rip), %xmm1
	mulsd	.LCPI33_2(%rip), %xmm1
	cvttsd2si	%xmm1, %edx
.LBB33_4:                               # %gx_unit_frac.exit
	movq	336(%rax), %rcx
	movq	8(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB33_5
# BB#9:                                 # %do.end.13
	movq	%rcx, 64(%rsi)
	incq	288(%rcx)
	movq	$gs_color_space_type_ICC, (%rsi)
	movq	1752(%rax), %rdi
	movq	1760(%rax), %rdx
	movq	1872(%rax), %r8
	xorl	%r9d, %r9d
	movq	%rax, %rcx
	addq	$24, %rsp
	jmpq	*gs_color_space_type_ICC+72(%rip) # TAILCALL
.LBB33_5:                               # %if.end.19
	movss	%xmm0, 376(%r10)
	movl	$1, 360(%r10)
	movzwl	216(%rax), %ecx
	movq	1016(%rax), %r11
	cmpl	$65535, %ecx            # imm = 0xFFFF
	je	.LBB33_6
# BB#7:                                 # %if.else
	movl	%ecx, %esi
	andl	$65534, %esi            # imm = 0xFFFE
	shrl	%esi
	andl	$57344, %ecx            # imm = 0xE000
	shrl	$13, %ecx
	subl	%ecx, %esi
	movl	%r9d, 8(%rsp)
	movq	%r8, (%rsp)
	movswl	%si, %ecx
	movswl	%dx, %edi
	movl	%edi, %esi
	movl	%edi, %edx
	movq	%r10, %r8
	movq	%rax, %r9
	callq	*24(%r11)
	jmp	.LBB33_8
.LBB33_6:                               # %if.then.29
	movswl	%dx, %edi
	movq	%r10, %rsi
	movq	%rax, %rdx
	movq	%r8, %rcx
	movl	%r9d, %r8d
	callq	*(%r11)
.LBB33_8:                               # %cleanup
	xorl	%eax, %eax
	addq	$24, %rsp
	retq
.Lfunc_end33:
	.size	gx_remap_DeviceGray, .Lfunc_end33-gx_remap_DeviceGray
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI34_0:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI34_1:
	.quad	4535125924542218256     # double 1.5262515262515263E-5
.LCPI34_2:
	.quad	4674734214187319296     # double 32760
	.text
	.globl	gx_concretize_DeviceRGB
	.align	16, 0x90
	.type	gx_concretize_DeviceRGB,@function
gx_concretize_DeviceRGB:                # @gx_concretize_DeviceRGB
	.cfi_startproc
# BB#0:                                 # %entry
	movss	8(%rdi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	xorpd	%xmm0, %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.LBB34_2
# BB#1:
	xorl	%eax, %eax
	jmp	.LBB34_4
.LBB34_2:                               # %if.else.i
	movw	$32760, %ax             # imm = 0x7FF8
	ucomiss	.LCPI34_0(%rip), %xmm1
	jae	.LBB34_4
# BB#3:                                 # %if.else.6.i
	cvtss2sd	%xmm1, %xmm1
	addsd	.LCPI34_1(%rip), %xmm1
	mulsd	.LCPI34_2(%rip), %xmm1
	cvttsd2si	%xmm1, %eax
.LBB34_4:                               # %gx_unit_frac.exit
	movw	%ax, (%rdx)
	movss	12(%rdi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB34_6
# BB#5:
	xorl	%eax, %eax
	jmp	.LBB34_8
.LBB34_6:                               # %if.else.i.18
	movw	$32760, %ax             # imm = 0x7FF8
	ucomiss	.LCPI34_0(%rip), %xmm1
	jae	.LBB34_8
# BB#7:                                 # %if.else.6.i.22
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	addsd	.LCPI34_1(%rip), %xmm0
	mulsd	.LCPI34_2(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
.LBB34_8:                               # %gx_unit_frac.exit24
	movw	%ax, 2(%rdx)
	movss	16(%rdi), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB34_10
# BB#9:
	xorl	%eax, %eax
	jmp	.LBB34_12
.LBB34_10:                              # %if.else.i.8
	movw	$32760, %ax             # imm = 0x7FF8
	ucomiss	.LCPI34_0(%rip), %xmm0
	jae	.LBB34_12
# BB#11:                                # %if.else.6.i.12
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI34_1(%rip), %xmm0
	mulsd	.LCPI34_2(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
.LBB34_12:                              # %gx_unit_frac.exit14
	movw	%ax, 4(%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end34:
	.size	gx_concretize_DeviceRGB, .Lfunc_end34-gx_concretize_DeviceRGB
	.cfi_endproc

	.globl	gx_remap_concrete_DRGB
	.align	16, 0x90
	.type	gx_remap_concrete_DRGB,@function
gx_remap_concrete_DRGB:                 # @gx_remap_concrete_DRGB
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp52:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp53:
	.cfi_def_cfa_offset 32
.Ltmp54:
	.cfi_offset %rbx, -16
	movq	%r8, %r10
	movq	%rcx, %rax
	movq	%rdx, %r8
	movzwl	216(%rax), %ecx
	movq	1016(%rax), %r11
	cmpl	$65535, %ecx            # imm = 0xFFFF
	je	.LBB35_1
# BB#2:                                 # %if.else
	movl	%ecx, %ebx
	andl	$65534, %ebx            # imm = 0xFFFE
	shrl	%ebx
	andl	$57344, %ecx            # imm = 0xE000
	shrl	$13, %ecx
	subl	%ecx, %ebx
	movswl	4(%rdi), %edx
	movswl	2(%rdi), %esi
	movswl	(%rdi), %edi
	movl	%r9d, 8(%rsp)
	movq	%r10, (%rsp)
	movswl	%bx, %ecx
	movq	%rax, %r9
	callq	*24(%r11)
	jmp	.LBB35_3
.LBB35_1:                               # %if.then
	movswl	4(%rdi), %edx
	movswl	2(%rdi), %esi
	movswl	(%rdi), %edi
	movl	%r9d, (%rsp)
	movq	%r8, %rcx
	movq	%rax, %r8
	movq	%r10, %r9
	callq	*8(%r11)
.LBB35_3:                               # %if.end
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end35:
	.size	gx_remap_concrete_DRGB, .Lfunc_end35-gx_remap_concrete_DRGB
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI36_0:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI36_1:
	.quad	4535125924542218256     # double 1.5262515262515263E-5
.LCPI36_2:
	.quad	4674734214187319296     # double 32760
	.text
	.globl	gx_remap_DeviceRGB
	.align	16, 0x90
	.type	gx_remap_DeviceRGB,@function
gx_remap_DeviceRGB:                     # @gx_remap_DeviceRGB
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp56:
	.cfi_def_cfa_offset 32
.Ltmp57:
	.cfi_offset %rbx, -16
	movq	%r8, %r10
	movq	%rcx, %r11
	movq	%rdx, %rax
	movss	8(%rdi), %xmm0          # xmm0 = mem[0],zero,zero,zero
	xorpd	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB36_2
# BB#1:
	xorl	%r8d, %r8d
	jmp	.LBB36_4
.LBB36_2:                               # %if.else.i
	movw	$32760, %r8w            # imm = 0x7FF8
	ucomiss	.LCPI36_0(%rip), %xmm0
	jae	.LBB36_4
# BB#3:                                 # %if.else.6.i
	cvtss2sd	%xmm0, %xmm2
	addsd	.LCPI36_1(%rip), %xmm2
	mulsd	.LCPI36_2(%rip), %xmm2
	cvttsd2si	%xmm2, %r8d
.LBB36_4:                               # %gx_unit_frac.exit
	movss	12(%rdi), %xmm2         # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm1
	jbe	.LBB36_6
# BB#5:
	xorl	%esi, %esi
	jmp	.LBB36_8
.LBB36_6:                               # %if.else.i.29
	movw	$32760, %si             # imm = 0x7FF8
	ucomiss	.LCPI36_0(%rip), %xmm2
	jae	.LBB36_8
# BB#7:                                 # %if.else.6.i.33
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm2, %xmm1
	addsd	.LCPI36_1(%rip), %xmm1
	mulsd	.LCPI36_2(%rip), %xmm1
	cvttsd2si	%xmm1, %esi
.LBB36_8:                               # %gx_unit_frac.exit35
	movss	16(%rdi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	ucomiss	%xmm1, %xmm2
	jbe	.LBB36_10
# BB#9:
	xorl	%edx, %edx
	jmp	.LBB36_12
.LBB36_10:                              # %if.else.i.39
	movw	$32760, %dx             # imm = 0x7FF8
	ucomiss	.LCPI36_0(%rip), %xmm1
	jae	.LBB36_12
# BB#11:                                # %if.else.6.i.43
	cvtss2sd	%xmm1, %xmm1
	addsd	.LCPI36_1(%rip), %xmm1
	mulsd	.LCPI36_2(%rip), %xmm1
	cvttsd2si	%xmm1, %edx
.LBB36_12:                              # %gx_unit_frac.exit45
	movss	%xmm0, 376(%rax)
	movl	12(%rdi), %ecx
	movl	%ecx, 380(%rax)
	movl	16(%rdi), %ecx
	movl	%ecx, 384(%rax)
	movl	$1, 360(%rax)
	movzwl	216(%r11), %ecx
	movq	1016(%r11), %rbx
	cmpl	$65535, %ecx            # imm = 0xFFFF
	je	.LBB36_13
# BB#14:                                # %if.else
	movl	%ecx, %edi
	andl	$65534, %edi            # imm = 0xFFFE
	shrl	%edi
	andl	$57344, %ecx            # imm = 0xE000
	shrl	$13, %ecx
	subl	%ecx, %edi
	movl	%r9d, 8(%rsp)
	movq	%r10, (%rsp)
	movswl	%di, %ecx
	movswl	%r8w, %edi
	movswl	%si, %esi
	movswl	%dx, %edx
	movq	%rax, %r8
	movq	%r11, %r9
	callq	*24(%rbx)
	jmp	.LBB36_15
.LBB36_13:                              # %if.then
	movl	%r9d, (%rsp)
	movswl	%r8w, %edi
	movswl	%si, %esi
	movswl	%dx, %edx
	movq	%rax, %rcx
	movq	%r11, %r8
	movq	%r10, %r9
	callq	*8(%rbx)
.LBB36_15:                              # %if.end
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end36:
	.size	gx_remap_DeviceRGB, .Lfunc_end36-gx_remap_DeviceRGB
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI37_0:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI37_1:
	.quad	4535125924542218256     # double 1.5262515262515263E-5
.LCPI37_2:
	.quad	4674734214187319296     # double 32760
	.text
	.globl	gx_concretize_DeviceCMYK
	.align	16, 0x90
	.type	gx_concretize_DeviceCMYK,@function
gx_concretize_DeviceCMYK:               # @gx_concretize_DeviceCMYK
	.cfi_startproc
# BB#0:                                 # %entry
	movss	8(%rdi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	xorpd	%xmm0, %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.LBB37_2
# BB#1:
	xorl	%eax, %eax
	jmp	.LBB37_4
.LBB37_2:                               # %if.else.i
	movw	$32760, %ax             # imm = 0x7FF8
	ucomiss	.LCPI37_0(%rip), %xmm1
	jae	.LBB37_4
# BB#3:                                 # %if.else.6.i
	cvtss2sd	%xmm1, %xmm1
	addsd	.LCPI37_1(%rip), %xmm1
	mulsd	.LCPI37_2(%rip), %xmm1
	cvttsd2si	%xmm1, %eax
.LBB37_4:                               # %gx_unit_frac.exit
	movw	%ax, (%rdx)
	movss	12(%rdi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB37_6
# BB#5:
	xorl	%eax, %eax
	jmp	.LBB37_8
.LBB37_6:                               # %if.else.i.30
	movw	$32760, %ax             # imm = 0x7FF8
	ucomiss	.LCPI37_0(%rip), %xmm1
	jae	.LBB37_8
# BB#7:                                 # %if.else.6.i.34
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	addsd	.LCPI37_1(%rip), %xmm0
	mulsd	.LCPI37_2(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
.LBB37_8:                               # %gx_unit_frac.exit36
	movw	%ax, 2(%rdx)
	movss	16(%rdi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorpd	%xmm0, %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.LBB37_10
# BB#9:
	xorl	%eax, %eax
	jmp	.LBB37_12
.LBB37_10:                              # %if.else.i.20
	movw	$32760, %ax             # imm = 0x7FF8
	ucomiss	.LCPI37_0(%rip), %xmm1
	jae	.LBB37_12
# BB#11:                                # %if.else.6.i.24
	cvtss2sd	%xmm1, %xmm1
	addsd	.LCPI37_1(%rip), %xmm1
	mulsd	.LCPI37_2(%rip), %xmm1
	cvttsd2si	%xmm1, %eax
.LBB37_12:                              # %gx_unit_frac.exit26
	movw	%ax, 4(%rdx)
	movss	20(%rdi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB37_14
# BB#13:
	xorl	%eax, %eax
	jmp	.LBB37_16
.LBB37_14:                              # %if.else.i.10
	movw	$32760, %ax             # imm = 0x7FF8
	ucomiss	.LCPI37_0(%rip), %xmm1
	jae	.LBB37_16
# BB#15:                                # %if.else.6.i.14
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	addsd	.LCPI37_1(%rip), %xmm0
	mulsd	.LCPI37_2(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
.LBB37_16:                              # %gx_unit_frac.exit16
	movw	%ax, 6(%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end37:
	.size	gx_concretize_DeviceCMYK, .Lfunc_end37-gx_concretize_DeviceCMYK
	.cfi_endproc

	.globl	gx_remap_concrete_DCMYK
	.align	16, 0x90
	.type	gx_remap_concrete_DCMYK,@function
gx_remap_concrete_DCMYK:                # @gx_remap_concrete_DCMYK
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp58:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp59:
	.cfi_def_cfa_offset 48
.Ltmp60:
	.cfi_offset %rbx, -16
	movq	%rcx, %rax
	movq	%rdx, %r10
	movq	1016(%rax), %rbx
	movswl	6(%rdi), %ecx
	movswl	4(%rdi), %edx
	movswl	2(%rdi), %r11d
	movswl	(%rdi), %edi
	movq	%rsi, 16(%rsp)
	movl	%r9d, 8(%rsp)
	movq	%r8, (%rsp)
	movl	%r11d, %esi
	movq	%r10, %r8
	movq	%rax, %r9
	callq	*16(%rbx)
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end38:
	.size	gx_remap_concrete_DCMYK, .Lfunc_end38-gx_remap_concrete_DCMYK
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI39_0:
	.long	1065353216              # float 1
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI39_1:
	.quad	4535125924542218256     # double 1.5262515262515263E-5
.LCPI39_2:
	.quad	4674734214187319296     # double 32760
	.text
	.globl	gx_remap_DeviceCMYK
	.align	16, 0x90
	.type	gx_remap_DeviceCMYK,@function
gx_remap_DeviceCMYK:                    # @gx_remap_DeviceCMYK
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp63:
	.cfi_def_cfa_offset 48
.Ltmp64:
	.cfi_offset %rbx, -24
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rcx, %r10
	movq	%rdx, %rax
	movl	8(%rdi), %ecx
	movl	%ecx, 376(%rax)
	movl	12(%rdi), %ecx
	movl	%ecx, 380(%rax)
	movl	16(%rdi), %ecx
	movl	%ecx, 384(%rax)
	movl	20(%rdi), %ecx
	movl	%ecx, 388(%rax)
	movl	$1, 360(%rax)
	movq	1016(%r10), %rcx
	movq	16(%rcx), %r11
	movss	8(%rdi), %xmm1          # xmm1 = mem[0],zero,zero,zero
	xorpd	%xmm0, %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.LBB39_2
# BB#1:
	xorl	%ecx, %ecx
	jmp	.LBB39_4
.LBB39_2:                               # %if.else.i
	movw	$32760, %cx             # imm = 0x7FF8
	ucomiss	.LCPI39_0(%rip), %xmm1
	jae	.LBB39_4
# BB#3:                                 # %if.else.6.i
	cvtss2sd	%xmm1, %xmm1
	addsd	.LCPI39_1(%rip), %xmm1
	mulsd	.LCPI39_2(%rip), %xmm1
	cvttsd2si	%xmm1, %ecx
.LBB39_4:                               # %gx_unit_frac.exit
	movss	12(%rdi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB39_6
# BB#5:
	xorl	%edx, %edx
	jmp	.LBB39_8
.LBB39_6:                               # %if.else.i.17
	movw	$32760, %dx             # imm = 0x7FF8
	ucomiss	.LCPI39_0(%rip), %xmm1
	jae	.LBB39_8
# BB#7:                                 # %if.else.6.i.21
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	addsd	.LCPI39_1(%rip), %xmm0
	mulsd	.LCPI39_2(%rip), %xmm0
	cvttsd2si	%xmm0, %edx
.LBB39_8:                               # %gx_unit_frac.exit23
	movss	16(%rdi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorpd	%xmm0, %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.LBB39_10
# BB#9:
	xorl	%ebx, %ebx
	jmp	.LBB39_12
.LBB39_10:                              # %if.else.i.37
	movw	$32760, %bx             # imm = 0x7FF8
	ucomiss	.LCPI39_0(%rip), %xmm1
	jae	.LBB39_12
# BB#11:                                # %if.else.6.i.41
	cvtss2sd	%xmm1, %xmm1
	addsd	.LCPI39_1(%rip), %xmm1
	mulsd	.LCPI39_2(%rip), %xmm1
	cvttsd2si	%xmm1, %ebx
.LBB39_12:                              # %gx_unit_frac.exit43
	movss	20(%rdi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB39_14
# BB#13:
	xorl	%ebp, %ebp
	jmp	.LBB39_16
.LBB39_14:                              # %if.else.i.27
	movw	$32760, %bp             # imm = 0x7FF8
	ucomiss	.LCPI39_0(%rip), %xmm1
	jae	.LBB39_16
# BB#15:                                # %if.else.6.i.31
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	addsd	.LCPI39_1(%rip), %xmm0
	mulsd	.LCPI39_2(%rip), %xmm0
	cvttsd2si	%xmm0, %ebp
.LBB39_16:                              # %gx_unit_frac.exit33
	movq	%rsi, 16(%rsp)
	movl	%r9d, 8(%rsp)
	movq	%r8, (%rsp)
	movswl	%cx, %edi
	movswl	%dx, %esi
	movswl	%bx, %edx
	movswl	%bp, %ecx
	movq	%rax, %r8
	movq	%r10, %r9
	callq	*%r11
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gx_remap_DeviceCMYK, .Lfunc_end39-gx_remap_DeviceCMYK
	.cfi_endproc

	.globl	gs_identity_transfer
	.align	16, 0x90
	.type	gs_identity_transfer,@function
gs_identity_transfer:                   # @gs_identity_transfer
	.cfi_startproc
# BB#0:                                 # %entry
	cvtsd2ss	%xmm0, %xmm0
	retq
.Lfunc_end40:
	.size	gs_identity_transfer, .Lfunc_end40-gs_identity_transfer
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI41_0:
	.quad	4643211215818981376     # double 256
.LCPI41_1:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI41_2:
	.long	1191178240              # float 32760
	.text
	.globl	gs_mapped_transfer
	.align	16, 0x90
	.type	gs_mapped_transfer,@function
gs_mapped_transfer:                     # @gs_mapped_transfer
	.cfi_startproc
# BB#0:                                 # %entry
	mulsd	.LCPI41_0(%rip), %xmm0
	addsd	.LCPI41_1(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	cltq
	movswl	56(%rdi,%rax,2), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	divss	.LCPI41_2(%rip), %xmm0
	retq
.Lfunc_end41:
	.size	gs_mapped_transfer, .Lfunc_end41-gs_mapped_transfer
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI42_0:
	.quad	2                       # 0x2
	.quad	3                       # 0x3
.LCPI42_1:
	.quad	4294967295              # 0xffffffff
	.quad	4294967295              # 0xffffffff
	.text
	.globl	gx_set_identity_transfer
	.align	16, 0x90
	.type	gx_set_identity_transfer,@function
gx_set_identity_transfer:               # @gx_set_identity_transfer
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$gs_identity_transfer, 24(%rdi)
	xorl	%eax, %eax
	movl	$1, %ecx
	movd	%rcx, %xmm0
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqa	.LCPI42_0(%rip), %xmm8  # xmm8 = [2,3]
	movdqa	.LCPI42_1(%rip), %xmm2  # xmm2 = [4294967295,4294967295]
	.align	16, 0x90
.LBB42_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movd	%rax, %xmm3
	pshufd	$68, %xmm3, %xmm3       # xmm3 = xmm3[0,1,0,1]
	movdqa	%xmm3, %xmm4
	paddq	%xmm0, %xmm4
	paddq	%xmm8, %xmm3
	movdqa	%xmm4, %xmm5
	psllq	$7, %xmm5
	movdqa	%xmm3, %xmm6
	psllq	$7, %xmm6
	pand	%xmm2, %xmm4
	pand	%xmm2, %xmm3
	movdqa	%xmm4, %xmm7
	psrlq	$1, %xmm7
	movdqa	%xmm3, %xmm1
	psrlq	$1, %xmm1
	paddq	%xmm5, %xmm7
	paddq	%xmm6, %xmm1
	psrlq	$5, %xmm4
	psrlq	$5, %xmm3
	psubq	%xmm4, %xmm7
	psubq	%xmm3, %xmm1
	pshufd	$232, %xmm7, %xmm3      # xmm3 = xmm7[0,2,2,3]
	pshuflw	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3,4,5,6,7]
	movd	%xmm3, 56(%rdi,%rax,2)
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pshuflw	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3,4,5,6,7]
	movd	%xmm1, 60(%rdi,%rax,2)
	addq	$4, %rax
	cmpq	$256, %rax              # imm = 0x100
	jne	.LBB42_1
# BB#2:                                 # %for.end
	retq
.Lfunc_end42:
	.size	gx_set_identity_transfer, .Lfunc_end42-gx_set_identity_transfer
	.cfi_endproc

	.globl	gx_color_frac_map
	.align	16, 0x90
	.type	gx_color_frac_map,@function
gx_color_frac_map:                      # @gx_color_frac_map
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edi, %edx
	sarl	$12, %edx
	addl	%edi, %edx
	movl	%edx, %eax
	sarl	$8, %eax
	subl	%eax, %edx
	movl	%edx, %r8d
	sarl	$7, %r8d
	movslq	%r8d, %rax
	movw	(%rsi,%rax,2), %ax
	movl	%edx, %r9d
	andl	$65408, %r9d            # imm = 0xFF80
	movl	%edx, %ecx
	shrl	$8, %ecx
	shrl	$12, %edx
	subl	%edx, %ecx
	addl	%r9d, %ecx
	movswl	%cx, %ecx
	subl	%ecx, %edi
	je	.LBB43_2
# BB#1:                                 # %if.end
	movswl	%ax, %ecx
	incl	%r8d
	movslq	%r8d, %rax
	movswl	(%rsi,%rax,2), %eax
	subl	%ecx, %eax
	imull	%edi, %eax
	shrl	$7, %eax
	addl	%ecx, %eax
.LBB43_2:                               # %cleanup
	cwtl
	retq
.Lfunc_end43:
	.size	gx_color_frac_map, .Lfunc_end43-gx_color_frac_map
	.cfi_endproc

	.globl	gx_default_w_b_map_rgb_color
	.align	16, 0x90
	.type	gx_default_w_b_map_rgb_color,@function
gx_default_w_b_map_rgb_color:           # @gx_default_w_b_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	movl	100(%rdi), %eax
	testl	%eax, %eax
	jle	.LBB44_1
# BB#2:                                 # %for.body.preheader
	movabsq	$8589934584, %r8        # imm = 0x1FFFFFFF8
	leal	-1(%rax), %edx
	leaq	1(%rdx), %r9
	xorl	%ecx, %ecx
	movq	%r9, %r11
	andq	%r8, %r11
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	je	.LBB44_10
# BB#3:                                 # %vector.body.preheader
	leaq	1(%rdx), %rcx
	andq	%r8, %rcx
	addq	$-8, %rcx
	movq	%rcx, %rdi
	shrq	$3, %rdi
	xorl	%r10d, %r10d
	btq	$3, %rcx
	jb	.LBB44_4
# BB#5:                                 # %vector.body.prol
	movq	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	punpcklwd	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movl	$8, %r10d
	jmp	.LBB44_6
.LBB44_1:
	xorl	%eax, %eax
	movzbl	%al, %eax
	retq
.LBB44_4:
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
.LBB44_6:                               # %vector.body.preheader.split
	testq	%rdi, %rdi
	je	.LBB44_9
# BB#7:                                 # %vector.body.preheader.split.split
	incq	%rdx
	andq	%r8, %rdx
	subq	%r10, %rdx
	leaq	24(%rsi,%r10,2), %rcx
	pxor	%xmm2, %xmm2
	.align	16, 0x90
.LBB44_8:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rcx), %xmm3        # xmm3 = mem[0],zero
	movq	-16(%rcx), %xmm4        # xmm4 = mem[0],zero
	punpcklwd	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3]
	punpcklwd	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3]
	por	%xmm0, %xmm3
	por	%xmm1, %xmm4
	movq	-8(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	(%rcx), %xmm1           # xmm1 = mem[0],zero
	punpcklwd	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	por	%xmm3, %xmm0
	por	%xmm4, %xmm1
	addq	$32, %rcx
	addq	$-16, %rdx
	jne	.LBB44_8
.LBB44_9:
	movq	%r11, %rcx
.LBB44_10:                              # %middle.block
	por	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	por	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	por	%xmm1, %xmm0
	movd	%xmm0, %edx
	cmpq	%rcx, %r9
	je	.LBB44_13
# BB#11:                                # %for.body.preheader19
	leaq	(%rsi,%rcx,2), %rsi
	subl	%ecx, %eax
	.align	16, 0x90
.LBB44_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rsi), %ecx
	orl	%ecx, %edx
	addq	$2, %rsi
	decl	%eax
	jne	.LBB44_12
.LBB44_13:                              # %for.cond.for.end_crit_edge
	cmpl	$32767, %edx            # imm = 0x7FFF
	setg	%al
	movzbl	%al, %eax
	retq
.Lfunc_end44:
	.size	gx_default_w_b_map_rgb_color, .Lfunc_end44-gx_default_w_b_map_rgb_color
	.cfi_endproc

	.globl	gx_default_w_b_map_color_rgb
	.align	16, 0x90
	.type	gx_default_w_b_map_color_rgb,@function
gx_default_w_b_map_color_rgb:           # @gx_default_w_b_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	negl	%esi
	movw	%si, 4(%rdx)
	movw	%si, 2(%rdx)
	movw	%si, (%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end45:
	.size	gx_default_w_b_map_color_rgb, .Lfunc_end45-gx_default_w_b_map_color_rgb
	.cfi_endproc

	.globl	gx_default_b_w_map_rgb_color
	.align	16, 0x90
	.type	gx_default_b_w_map_rgb_color,@function
gx_default_b_w_map_rgb_color:           # @gx_default_b_w_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	movl	100(%rdi), %eax
	movb	$1, %cl
	testl	%eax, %eax
	jle	.LBB46_13
# BB#1:                                 # %for.body.preheader
	movabsq	$8589934584, %r8        # imm = 0x1FFFFFFF8
	leal	-1(%rax), %edx
	leaq	1(%rdx), %r9
	xorl	%ecx, %ecx
	movq	%r9, %r11
	andq	%r8, %r11
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	je	.LBB46_9
# BB#2:                                 # %vector.body.preheader
	leaq	1(%rdx), %rcx
	andq	%r8, %rcx
	addq	$-8, %rcx
	movq	%rcx, %rdi
	shrq	$3, %rdi
	xorl	%r10d, %r10d
	btq	$3, %rcx
	jb	.LBB46_3
# BB#4:                                 # %vector.body.prol
	movq	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	pxor	%xmm2, %xmm2
	punpcklwd	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	movl	$8, %r10d
	jmp	.LBB46_5
.LBB46_3:
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
.LBB46_5:                               # %vector.body.preheader.split
	testq	%rdi, %rdi
	je	.LBB46_8
# BB#6:                                 # %vector.body.preheader.split.split
	incq	%rdx
	andq	%r8, %rdx
	subq	%r10, %rdx
	leaq	24(%rsi,%r10,2), %rcx
	pxor	%xmm2, %xmm2
	.align	16, 0x90
.LBB46_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rcx), %xmm3        # xmm3 = mem[0],zero
	movq	-16(%rcx), %xmm4        # xmm4 = mem[0],zero
	punpcklwd	%xmm2, %xmm3    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3]
	punpcklwd	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3]
	por	%xmm0, %xmm3
	por	%xmm1, %xmm4
	movq	-8(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	(%rcx), %xmm1           # xmm1 = mem[0],zero
	punpcklwd	%xmm2, %xmm0    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	punpcklwd	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	por	%xmm3, %xmm0
	por	%xmm4, %xmm1
	addq	$32, %rcx
	addq	$-16, %rdx
	jne	.LBB46_7
.LBB46_8:
	movq	%r11, %rcx
.LBB46_9:                               # %middle.block
	por	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	por	%xmm0, %xmm1
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	por	%xmm1, %xmm0
	movd	%xmm0, %edx
	cmpq	%rcx, %r9
	je	.LBB46_12
# BB#10:                                # %for.body.preheader19
	leaq	(%rsi,%rcx,2), %rsi
	subl	%ecx, %eax
	.align	16, 0x90
.LBB46_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rsi), %ecx
	orl	%ecx, %edx
	addq	$2, %rsi
	decl	%eax
	jne	.LBB46_11
.LBB46_12:                              # %for.cond.for.end_crit_edge
	cmpl	$32768, %edx            # imm = 0x8000
	setl	%cl
.LBB46_13:                              # %for.end
	movzbl	%cl, %eax
	retq
.Lfunc_end46:
	.size	gx_default_b_w_map_rgb_color, .Lfunc_end46-gx_default_b_w_map_rgb_color
	.cfi_endproc

	.globl	gx_default_b_w_map_color_rgb
	.align	16, 0x90
	.type	gx_default_b_w_map_color_rgb,@function
gx_default_b_w_map_color_rgb:           # @gx_default_b_w_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	$-2, %esi
	incl	%esi
	movw	%si, 4(%rdx)
	movw	%si, 2(%rdx)
	movw	%si, (%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end47:
	.size	gx_default_b_w_map_color_rgb, .Lfunc_end47-gx_default_b_w_map_color_rgb
	.cfi_endproc

	.globl	gx_default_gray_map_rgb_color
	.align	16, 0x90
	.type	gx_default_gray_map_rgb_color,@function
gx_default_gray_map_rgb_color:          # @gx_default_gray_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %eax
	imulq	$30, %rax, %rax
	movzwl	2(%rsi), %ecx
	imulq	$59, %rcx, %rcx
	movzwl	4(%rsi), %edx
	imulq	$11, %rdx, %rdx
	addq	%rax, %rcx
	leaq	50(%rdx,%rcx), %rax
	shrq	$2, %rax
	movabsq	$2951479051793528259, %rcx # imm = 0x28F5C28F5C28F5C3
	mulq	%rcx
	shrq	$2, %rdx
	movl	112(%rdi), %eax
	imulq	%rdx, %rax
	addq	$32767, %rax            # imm = 0x7FFF
	movabsq	$-9223231297218904063, %rcx # imm = 0x8000800080008001
	mulq	%rcx
	shrq	$15, %rdx
	movzwl	%dx, %eax
	retq
.Lfunc_end48:
	.size	gx_default_gray_map_rgb_color, .Lfunc_end48-gx_default_gray_map_rgb_color
	.cfi_endproc

	.globl	gx_default_gray_map_color_rgb
	.align	16, 0x90
	.type	gx_default_gray_map_color_rgb,@function
gx_default_gray_map_color_rgb:          # @gx_default_gray_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rcx
	imulq	$65535, %rsi, %rax      # imm = 0xFFFF
	movl	112(%rdi), %esi
	xorl	%edx, %edx
	divq	%rsi
	movw	%ax, (%rcx)
	movw	%ax, 2(%rcx)
	movw	%ax, 4(%rcx)
	xorl	%eax, %eax
	retq
.Lfunc_end49:
	.size	gx_default_gray_map_color_rgb, .Lfunc_end49-gx_default_gray_map_color_rgb
	.cfi_endproc

	.globl	gx_default_8bit_map_gray_color
	.align	16, 0x90
	.type	gx_default_8bit_map_gray_color,@function
gx_default_8bit_map_gray_color:         # @gx_default_8bit_map_gray_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	retq
.Lfunc_end50:
	.size	gx_default_8bit_map_gray_color, .Lfunc_end50-gx_default_8bit_map_gray_color
	.cfi_endproc

	.globl	gx_default_8bit_map_color_gray
	.align	16, 0x90
	.type	gx_default_8bit_map_color_gray,@function
gx_default_8bit_map_color_gray:         # @gx_default_8bit_map_color_gray
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rcx
	imulq	$65535, %rsi, %rax      # imm = 0xFFFF
	movabsq	$-9187201950435737471, %rdx # imm = 0x8080808080808081
	mulq	%rdx
	shrq	$7, %rdx
	movw	%dx, (%rcx)
	xorl	%eax, %eax
	retq
.Lfunc_end51:
	.size	gx_default_8bit_map_color_gray, .Lfunc_end51-gx_default_8bit_map_color_gray
	.cfi_endproc

	.globl	gx_default_rgb_map_rgb_color
	.align	16, 0x90
	.type	gx_default_rgb_map_rgb_color,@function
gx_default_rgb_map_rgb_color:           # @gx_default_rgb_map_rgb_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	108(%rdi), %eax
	movzwl	4(%rsi), %r9d
	movzwl	2(%rsi), %edx
	cmpl	$24, %eax
	jne	.LBB52_2
# BB#1:                                 # %if.then
	imull	$65281, %r9d, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	imull	$65281, %edx, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$16, %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	orl	%eax, %ecx
	movzwl	(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$8, %eax
	andl	$16711680, %eax         # imm = 0xFF0000
	orq	%rcx, %rax
	retq
.LBB52_2:                               # %if.else
	movzwl	%ax, %eax
	imull	$43691, %eax, %r8d      # imm = 0xAAAB
	shrl	$17, %r8d
	movl	$1, %r10d
	movl	$1, %eax
	movb	%r8b, %cl
	shll	%cl, %eax
	decl	%eax
	movl	$16, %ecx
	subl	%r8d, %ecx
	shll	%cl, %eax
	incl	%eax
	movl	$32, %edi
	subq	%r8, %rdi
	leal	-1(%rdi), %ecx
	shll	%cl, %r10d
	movzwl	(%rsi), %esi
	imull	%eax, %esi
	addl	%r10d, %esi
	movb	%dil, %cl
	shrl	%cl, %esi
	movb	%r8b, %cl
	shlq	%cl, %rsi
	imull	%eax, %edx
	addl	%r10d, %edx
	movb	%dil, %cl
	shrl	%cl, %edx
	addq	%rsi, %rdx
	movb	%r8b, %cl
	shlq	%cl, %rdx
	imull	%r9d, %eax
	addl	%r10d, %eax
	movb	%dil, %cl
	shrl	%cl, %eax
	addq	%rdx, %rax
	retq
.Lfunc_end52:
	.size	gx_default_rgb_map_rgb_color, .Lfunc_end52-gx_default_rgb_map_rgb_color
	.cfi_endproc

	.globl	gx_default_rgb_map_color_rgb
	.align	16, 0x90
	.type	gx_default_rgb_map_color_rgb,@function
gx_default_rgb_map_color_rgb:           # @gx_default_rgb_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbx, -16
	movq	%rdx, %r8
	movq	%rsi, %rbx
	movzwl	108(%rdi), %eax
	cmpl	$24, %eax
	jne	.LBB53_2
# BB#1:                                 # %if.then
	movl	%ebx, %eax
	shrl	$16, %eax
	imull	$257, %eax, %eax        # imm = 0x101
	movw	%ax, (%r8)
	movzbl	%bh, %eax  # NOREX
	imulq	$257, %rax, %rcx        # imm = 0x101
	movzbl	%bl, %eax
	imulq	$257, %rax, %rax        # imm = 0x101
	jmp	.LBB53_3
.LBB53_2:                               # %if.else
	movzwl	%ax, %eax
	imull	$43691, %eax, %esi      # imm = 0xAAAB
	shrl	$17, %esi
	movl	$1, %edi
	movb	%sil, %cl
	shll	%cl, %edi
	decl	%edi
	movl	%esi, %ecx
	addl	%ecx, %ecx
	movq	%rbx, %rax
	shrq	%cl, %rax
	andq	%rdi, %rax
	imulq	$65535, %rax, %rax      # imm = 0xFFFF
	xorl	%edx, %edx
	divq	%rdi
	movw	%ax, (%r8)
	movq	%rbx, %rax
	movb	%sil, %cl
	shrq	%cl, %rax
	andq	%rdi, %rax
	imulq	$65535, %rax, %rax      # imm = 0xFFFF
	xorl	%edx, %edx
	divq	%rdi
	movq	%rax, %rcx
	andq	%rdi, %rbx
	imulq	$65535, %rbx, %rax      # imm = 0xFFFF
	xorl	%edx, %edx
	divq	%rdi
.LBB53_3:                               # %if.end
	movw	%cx, 2(%r8)
	movw	%ax, 4(%r8)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end53:
	.size	gx_default_rgb_map_color_rgb, .Lfunc_end53-gx_default_rgb_map_color_rgb
	.cfi_endproc

	.globl	gx_default_map_cmyk_color
	.align	16, 0x90
	.type	gx_default_map_cmyk_color,@function
gx_default_map_cmyk_color:              # @gx_default_map_cmyk_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp68:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp69:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp70:
	.cfi_def_cfa_offset 48
.Ltmp71:
	.cfi_offset %rbx, -24
.Ltmp72:
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movzwl	(%rsi), %eax
	movl	%eax, %edi
	shrl	%edi
	shrl	$13, %eax
	subl	%eax, %edi
	movzwl	2(%rsi), %eax
	movl	%eax, %edx
	shrl	%edx
	shrl	$13, %eax
	subl	%eax, %edx
	movzwl	4(%rsi), %eax
	movl	%eax, %ebx
	shrl	%ebx
	shrl	$13, %eax
	subl	%eax, %ebx
	movzwl	6(%rsi), %eax
	movl	%eax, %ecx
	shrl	%ecx
	shrl	$13, %eax
	subl	%eax, %ecx
	movq	24(%r14), %rax
	movq	%rax, (%rsp)
	movswl	%di, %edi
	movswl	%dx, %esi
	movswl	%bx, %edx
	movswl	%cx, %ecx
	leaq	18(%rsp), %r9
	xorl	%r8d, %r8d
	callq	color_cmyk_to_rgb
	movswl	18(%rsp), %eax
	movl	%eax, %ecx
	shrl	$11, %ecx
	leal	(%rcx,%rax,2), %eax
	movw	%ax, 12(%rsp)
	movswl	20(%rsp), %eax
	movl	%eax, %ecx
	shrl	$11, %ecx
	leal	(%rcx,%rax,2), %eax
	movw	%ax, 14(%rsp)
	movswl	22(%rsp), %eax
	movl	%eax, %ecx
	shrl	$11, %ecx
	leal	(%rcx,%rax,2), %eax
	movw	%ax, 16(%rsp)
	leaq	12(%rsp), %rsi
	movq	%r14, %rdi
	callq	*1184(%r14)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end54:
	.size	gx_default_map_cmyk_color, .Lfunc_end54-gx_default_map_cmyk_color
	.cfi_endproc

	.globl	cmyk_1bit_map_cmyk_color
	.align	16, 0x90
	.type	cmyk_1bit_map_cmyk_color,@function
cmyk_1bit_map_cmyk_color:               # @cmyk_1bit_map_cmyk_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	6(%rsi), %eax
	shrl	$15, %eax
	movzwl	4(%rsi), %ecx
	shrl	$14, %ecx
	andl	$2, %ecx
	orl	%eax, %ecx
	movzwl	2(%rsi), %edx
	shrl	$13, %edx
	andl	$4, %edx
	orl	%ecx, %edx
	movzwl	(%rsi), %eax
	shrl	$12, %eax
	andl	$8, %eax
	orl	%edx, %eax
	retq
.Lfunc_end55:
	.size	cmyk_1bit_map_cmyk_color, .Lfunc_end55-cmyk_1bit_map_cmyk_color
	.cfi_endproc

	.globl	cmyk_1bit_map_color_rgb
	.align	16, 0x90
	.type	cmyk_1bit_map_color_rgb,@function
cmyk_1bit_map_color_rgb:                # @cmyk_1bit_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	testb	$1, %sil
	jne	.LBB56_1
# BB#2:                                 # %if.else
	movl	%esi, %eax
	shrl	$3, %eax
	andl	$1, %eax
	addl	$65535, %eax            # imm = 0xFFFF
	movw	%ax, (%rdx)
	movl	%esi, %eax
	shrl	$2, %eax
	andl	$1, %eax
	addl	$65535, %eax            # imm = 0xFFFF
	shrl	%esi
	andl	$1, %esi
	addl	$65535, %esi            # imm = 0xFFFF
	jmp	.LBB56_3
.LBB56_1:                               # %if.then
	movw	$0, (%rdx)
	xorl	%eax, %eax
	xorl	%esi, %esi
.LBB56_3:                               # %if.end
	movw	%ax, 2(%rdx)
	movw	%si, 4(%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end56:
	.size	cmyk_1bit_map_color_rgb, .Lfunc_end56-cmyk_1bit_map_color_rgb
	.cfi_endproc

	.globl	cmyk_1bit_map_color_cmyk
	.align	16, 0x90
	.type	cmyk_1bit_map_color_cmyk,@function
cmyk_1bit_map_color_cmyk:               # @cmyk_1bit_map_color_cmyk
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %eax
	shrl	$3, %eax
	andl	$1, %eax
	addl	$65535, %eax            # imm = 0xFFFF
	movw	%ax, (%rdx)
	movl	%esi, %eax
	shrl	$2, %eax
	andl	$1, %eax
	addl	$65535, %eax            # imm = 0xFFFF
	movw	%ax, 2(%rdx)
	movl	%esi, %eax
	shrl	%eax
	andl	$1, %eax
	addl	$65535, %eax            # imm = 0xFFFF
	movw	%ax, 4(%rdx)
	andl	$1, %esi
	addl	$65535, %esi            # imm = 0xFFFF
	movw	%si, 6(%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end57:
	.size	cmyk_1bit_map_color_cmyk, .Lfunc_end57-cmyk_1bit_map_color_cmyk
	.cfi_endproc

	.globl	cmyk_8bit_map_cmyk_color
	.align	16, 0x90
	.type	cmyk_8bit_map_cmyk_color,@function
cmyk_8bit_map_cmyk_color:               # @cmyk_8bit_map_cmyk_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	6(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movzwl	4(%rsi), %ecx
	imull	$65281, %ecx, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$16, %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	orl	%eax, %ecx
	movzwl	2(%rsi), %eax
	imull	$65281, %eax, %edx      # imm = 0xFF01
	addl	$8388608, %edx          # imm = 0x800000
	shrl	$8, %edx
	andl	$16711680, %edx         # imm = 0xFF0000
	orl	%ecx, %edx
	movzwl	(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	andl	$-16777216, %eax        # imm = 0xFFFFFFFFFF000000
	orl	%edx, %eax
	retq
.Lfunc_end58:
	.size	cmyk_8bit_map_cmyk_color, .Lfunc_end58-cmyk_8bit_map_cmyk_color
	.cfi_endproc

	.globl	cmyk_16bit_map_cmyk_color
	.align	16, 0x90
	.type	cmyk_16bit_map_cmyk_color,@function
cmyk_16bit_map_cmyk_color:              # @cmyk_16bit_map_cmyk_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	6(%rsi), %eax
	movzwl	4(%rsi), %ecx
	shlq	$16, %rcx
	orq	%rax, %rcx
	movzwl	2(%rsi), %eax
	shlq	$32, %rax
	orq	%rcx, %rax
	movzwl	(%rsi), %ecx
	shlq	$48, %rcx
	orq	%rax, %rcx
	cmpq	$-1, %rcx
	sete	%al
	movzbl	%al, %eax
	xorq	%rcx, %rax
	retq
.Lfunc_end59:
	.size	cmyk_16bit_map_cmyk_color, .Lfunc_end59-cmyk_16bit_map_cmyk_color
	.cfi_endproc

	.globl	cmyk_8bit_map_color_rgb
	.align	16, 0x90
	.type	cmyk_8bit_map_color_rgb,@function
cmyk_8bit_map_color_rgb:                # @cmyk_8bit_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movl	%eax, %ecx
	notl	%ecx
	movzbl	%cl, %r9d
	movzbl	%ah, %esi  # NOREX
	movl	%r9d, %edi
	subl	%esi, %edi
	imull	$257, %edi, %edi        # imm = 0x101
	xorl	%r8d, %r8d
	cmpl	%esi, %r9d
	cmovsw	%r8w, %di
	movl	%eax, %esi
	shrl	$16, %esi
	movzbl	%sil, %esi
	movl	%r9d, %ecx
	subl	%esi, %ecx
	imull	$257, %ecx, %ecx        # imm = 0x101
	cmpl	%esi, %r9d
	cmovsw	%r8w, %cx
	shrq	$24, %rax
	movl	%r9d, %esi
	subl	%eax, %esi
	imull	$257, %esi, %esi        # imm = 0x101
	cmpl	%eax, %r9d
	cmovsw	%r8w, %si
	movw	%si, (%rdx)
	movw	%cx, 2(%rdx)
	movw	%di, 4(%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end60:
	.size	cmyk_8bit_map_color_rgb, .Lfunc_end60-cmyk_8bit_map_color_rgb
	.cfi_endproc

	.globl	cmyk_8bit_map_color_cmyk
	.align	16, 0x90
	.type	cmyk_8bit_map_color_cmyk,@function
cmyk_8bit_map_color_cmyk:               # @cmyk_8bit_map_color_cmyk
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movl	%eax, %ecx
	movzbl	%ah, %esi  # NOREX
	movzbl	%al, %edi
	shrl	$24, %eax
	imull	$257, %eax, %eax        # imm = 0x101
	movw	%ax, (%rdx)
	shrl	$16, %ecx
	movzbl	%cl, %eax
	imull	$257, %eax, %eax        # imm = 0x101
	movw	%ax, 2(%rdx)
	imull	$257, %esi, %eax        # imm = 0x101
	movw	%ax, 4(%rdx)
	imull	$257, %edi, %eax        # imm = 0x101
	movw	%ax, 6(%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end61:
	.size	cmyk_8bit_map_color_cmyk, .Lfunc_end61-cmyk_8bit_map_color_cmyk
	.cfi_endproc

	.globl	cmyk_16bit_map_color_cmyk
	.align	16, 0x90
	.type	cmyk_16bit_map_color_cmyk,@function
cmyk_16bit_map_color_cmyk:              # @cmyk_16bit_map_color_cmyk
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	shrq	$48, %rax
	movw	%ax, (%rdx)
	movq	%rsi, %rax
	shrq	$16, %rax
	movq	%rsi, %rcx
	shrq	$32, %rcx
	movw	%cx, 2(%rdx)
	movw	%ax, 4(%rdx)
	movw	%si, 6(%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end62:
	.size	cmyk_16bit_map_color_cmyk, .Lfunc_end62-cmyk_16bit_map_color_cmyk
	.cfi_endproc

	.globl	gx_default_map_rgb_alpha_color
	.align	16, 0x90
	.type	gx_default_map_rgb_alpha_color,@function
gx_default_map_rgb_alpha_color:         # @gx_default_map_rgb_alpha_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp73:
	.cfi_def_cfa_offset 16
	movw	%si, 2(%rsp)
	movw	%dx, 4(%rsp)
	movw	%cx, 6(%rsp)
	leaq	2(%rsp), %rsi
	callq	*1184(%rdi)
	popq	%rdx
	retq
.Lfunc_end63:
	.size	gx_default_map_rgb_alpha_color, .Lfunc_end63-gx_default_map_rgb_alpha_color
	.cfi_endproc

	.globl	gx_default_map_color_rgb_alpha
	.align	16, 0x90
	.type	gx_default_map_color_rgb_alpha,@function
gx_default_map_color_rgb_alpha:         # @gx_default_map_color_rgb_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	movw	$-1, 6(%rdx)
	movq	1192(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end64:
	.size	gx_default_map_color_rgb_alpha, .Lfunc_end64-gx_default_map_color_rgb_alpha
	.cfi_endproc

	.globl	cmap_transfer_halftone
	.align	16, 0x90
	.type	cmap_transfer_halftone,@function
cmap_transfer_halftone:                 # @cmap_transfer_halftone
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp75:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp76:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp77:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp78:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp79:
	.cfi_def_cfa_offset 56
	subq	$296, %rsp              # imm = 0x128
.Ltmp80:
	.cfi_def_cfa_offset 352
.Ltmp81:
	.cfi_offset %rbx, -56
.Ltmp82:
	.cfi_offset %r12, -48
.Ltmp83:
	.cfi_offset %r13, -40
.Ltmp84:
	.cfi_offset %r14, -32
.Ltmp85:
	.cfi_offset %r15, -24
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rcx, %r13
	movq	%rdx, %r15
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	%rdi, %r14
	movabsq	$8589934576, %rbx       # imm = 0x1FFFFFFF0
	movl	100(%r13), %r12d
	testl	%r8d, %r8d
	je	.LBB65_28
# BB#1:                                 # %if.then
	cmpl	$1, 104(%r13)
	jne	.LBB65_8
# BB#2:                                 # %for.cond.preheader
	movl	%r9d, 20(%rsp)          # 4-byte Spill
	testl	%r12d, %r12d
	jle	.LBB65_17
# BB#3:                                 # %for.body.preheader
	leaq	496(%r15), %rax
	leaq	160(%rsp), %rcx
	movl	$gs_identity_transfer, %r8d
	movl	%r12d, %r10d
	.align	16, 0x90
.LBB65_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%r14), %edx
	movl	%edx, %edi
	shrl	%edi
	shrl	$13, %edx
	subl	%edx, %edi
	movq	(%rax), %r9
	cmpq	%r8, 24(%r9)
	je	.LBB65_7
# BB#5:                                 # %cond.false
                                        #   in Loop: Header=BB65_4 Depth=1
	movswl	%di, %r11d
	movl	%r11d, %edx
	sarl	$12, %edx
	addl	%r11d, %edx
	movl	%edx, %edi
	sarl	$8, %edi
	subl	%edi, %edx
	movl	%edx, %ebp
	sarl	$7, %ebp
	movslq	%ebp, %rdi
	movw	56(%r9,%rdi,2), %di
	movl	%edx, %esi
	andl	$65408, %esi            # imm = 0xFF80
	movl	%edx, %ebx
	shrl	$8, %ebx
	shrl	$12, %edx
	subl	%edx, %ebx
	addl	%esi, %ebx
	movswl	%bx, %edx
	subl	%edx, %r11d
	je	.LBB65_7
# BB#6:                                 # %if.end.i
                                        #   in Loop: Header=BB65_4 Depth=1
	movswl	%di, %edx
	incl	%ebp
	movslq	%ebp, %rsi
	movswl	56(%r9,%rsi,2), %edi
	subl	%edx, %edi
	imull	%r11d, %edi
	shrl	$7, %edi
	addl	%edx, %edi
.LBB65_7:                               # %cond.end
                                        #   in Loop: Header=BB65_4 Depth=1
	movw	%di, (%rcx)
	addq	$2, %r14
	addq	$2, %rcx
	addq	$8, %rax
	decl	%r10d
	jne	.LBB65_4
	jmp	.LBB65_17
.LBB65_28:                              # %if.else.143
	testl	%r9d, %r9d
	je	.LBB65_40
# BB#29:                                # %for.cond.146.preheader
	testl	%r12d, %r12d
	jle	.LBB65_18
# BB#30:                                # %for.body.149.preheader
	movl	%r9d, 20(%rsp)          # 4-byte Spill
	leal	-1(%r12), %ecx
	leaq	1(%rcx), %rax
	xorl	%esi, %esi
	movq	%rax, %rdx
	andq	%rbx, %rdx
	je	.LBB65_37
# BB#31:                                # %vector.body.preheader
	leaq	1(%rcx), %rsi
	andq	%rbx, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rbp
	shrq	$4, %rbp
	xorl	%edi, %edi
	btq	$4, %rsi
	jb	.LBB65_33
# BB#32:                                # %vector.body.prol
	movdqu	(%r14), %xmm0
	movdqu	16(%r14), %xmm1
	movdqa	%xmm0, %xmm2
	psrlw	$1, %xmm2
	movdqa	%xmm1, %xmm3
	psrlw	$1, %xmm3
	psrlw	$13, %xmm0
	psrlw	$13, %xmm1
	psubw	%xmm0, %xmm2
	psubw	%xmm1, %xmm3
	movdqa	%xmm2, 160(%rsp)
	movdqa	%xmm3, 176(%rsp)
	movl	$16, %edi
.LBB65_33:                              # %vector.body.preheader.split
	testq	%rbp, %rbp
	je	.LBB65_36
# BB#34:                                # %vector.body.preheader.split.split
	incq	%rcx
	andq	%rbx, %rcx
	subq	%rdi, %rcx
	leaq	48(%r14,%rdi,2), %rsi
	leaq	208(%rsp,%rdi,2), %rdi
	.align	16, 0x90
.LBB65_35:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-48(%rsi), %xmm0
	movdqu	-32(%rsi), %xmm1
	movdqa	%xmm0, %xmm2
	psrlw	$1, %xmm2
	movdqa	%xmm1, %xmm3
	psrlw	$1, %xmm3
	psrlw	$13, %xmm0
	psrlw	$13, %xmm1
	psubw	%xmm0, %xmm2
	psubw	%xmm1, %xmm3
	movdqa	%xmm2, -48(%rdi)
	movdqa	%xmm3, -32(%rdi)
	movdqu	-16(%rsi), %xmm0
	movdqu	(%rsi), %xmm1
	movdqa	%xmm0, %xmm2
	psrlw	$1, %xmm2
	movdqa	%xmm1, %xmm3
	psrlw	$1, %xmm3
	psrlw	$13, %xmm0
	psrlw	$13, %xmm1
	psubw	%xmm0, %xmm2
	psubw	%xmm1, %xmm3
	movdqa	%xmm2, -16(%rdi)
	movdqa	%xmm3, (%rdi)
	addq	$64, %rsi
	addq	$64, %rdi
	addq	$-32, %rcx
	jne	.LBB65_35
.LBB65_36:
	movq	%rdx, %rsi
.LBB65_37:                              # %middle.block
	cmpq	%rsi, %rax
	je	.LBB65_17
# BB#38:                                # %for.body.149.preheader219
	leaq	(%r14,%rsi,2), %rax
	leaq	160(%rsp,%rsi,2), %rcx
	movl	%r12d, %edx
	subl	%esi, %edx
	.align	16, 0x90
.LBB65_39:                              # %for.body.149
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rax), %esi
	movl	%esi, %edi
	shrl	%edi
	shrl	$13, %esi
	subl	%esi, %edi
	movw	%di, (%rcx)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%edx
	jne	.LBB65_39
	jmp	.LBB65_17
.LBB65_8:                               # %if.else
	movl	%r9d, 20(%rsp)          # 4-byte Spill
	movl	792(%r13), %eax
	cmpl	$-1, %eax
	jne	.LBB65_10
# BB#9:                                 # %if.then.25
	movq	%r13, %rdi
	callq	check_cmyk_color_model_comps
	movl	792(%r13), %eax
.LBB65_10:                              # %if.end
	cmpl	$1, %eax
	jne	.LBB65_11
# BB#20:                                # %if.then.31
	testl	%r12d, %r12d
	jle	.LBB65_17
# BB#21:                                # %for.body.36.preheader
	movl	808(%r13), %eax
	leaq	496(%r15), %rcx
	leaq	160(%rsp), %rdx
	movl	%r12d, %edi
	.align	16, 0x90
.LBB65_22:                              # %for.body.36
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%r14), %esi
	movl	%esi, %ebp
	shrl	%ebp
	shrl	$13, %esi
	subl	%esi, %ebp
	testl	%eax, %eax
	jne	.LBB65_27
# BB#23:                                # %if.then.49
                                        #   in Loop: Header=BB65_22 Depth=1
	movq	(%rcx), %r9
	movl	$32760, %esi            # imm = 0x7FF8
	subl	%ebp, %esi
	movl	$gs_identity_transfer, %ebp
	cmpq	%rbp, 24(%r9)
	je	.LBB65_26
# BB#24:                                # %cond.false.61
                                        #   in Loop: Header=BB65_22 Depth=1
	movswl	%si, %r10d
	movl	%r10d, %ebx
	sarl	$12, %ebx
	addl	%r10d, %ebx
	movl	%ebx, %esi
	sarl	$8, %esi
	subl	%esi, %ebx
	movl	%ebx, %r11d
	sarl	$7, %r11d
	movslq	%r11d, %rsi
	movw	56(%r9,%rsi,2), %si
	movl	%ebx, %ebp
	andl	$65408, %ebp            # imm = 0xFF80
	movl	%ebx, %r8d
	shrl	$8, %r8d
	shrl	$12, %ebx
	subl	%ebx, %r8d
	addl	%ebp, %r8d
	movswl	%r8w, %ebp
	subl	%ebp, %r10d
	je	.LBB65_26
# BB#25:                                # %if.end.i.119
                                        #   in Loop: Header=BB65_22 Depth=1
	movswl	%si, %ebp
	incl	%r11d
	movslq	%r11d, %rsi
	movswl	56(%r9,%rsi,2), %esi
	subl	%ebp, %esi
	imull	%r10d, %esi
	shrl	$7, %esi
	addl	%ebp, %esi
.LBB65_26:                              # %cond.end.72
                                        #   in Loop: Header=BB65_22 Depth=1
	movl	$32760, %ebp            # imm = 0x7FF8
	subl	%esi, %ebp
.LBB65_27:                              # %if.else.78
                                        #   in Loop: Header=BB65_22 Depth=1
	movw	%bp, (%rdx)
	addq	$2, %r14
	addq	$2, %rdx
	addq	$8, %rcx
	decl	%eax
	decl	%edi
	jne	.LBB65_22
	jmp	.LBB65_17
.LBB65_11:                              # %for.cond.96.preheader
	testl	%r12d, %r12d
	jle	.LBB65_17
# BB#12:                                # %for.body.99.preheader
	leaq	496(%r15), %rax
	leaq	160(%rsp), %rcx
	movl	$gs_identity_transfer, %r8d
	movl	%r12d, %r10d
	.align	16, 0x90
.LBB65_13:                              # %for.body.99
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%r14), %edi
	movl	%edi, %ebp
	shrl	%ebp
	shrl	$13, %edi
	movq	(%rax), %r9
	subl	%ebp, %edi
	addl	$32760, %edi            # imm = 0x7FF8
	cmpq	%r8, 24(%r9)
	je	.LBB65_16
# BB#14:                                # %cond.false.121
                                        #   in Loop: Header=BB65_13 Depth=1
	movswl	%di, %r11d
	movl	%r11d, %ebx
	sarl	$12, %ebx
	addl	%r11d, %ebx
	movl	%ebx, %edi
	sarl	$8, %edi
	subl	%edi, %ebx
	movl	%ebx, %ebp
	sarl	$7, %ebp
	movslq	%ebp, %rdi
	movw	56(%r9,%rdi,2), %di
	movl	%ebx, %esi
	andl	$65408, %esi            # imm = 0xFF80
	movl	%ebx, %edx
	shrl	$8, %edx
	shrl	$12, %ebx
	subl	%ebx, %edx
	addl	%esi, %edx
	movswl	%dx, %edx
	subl	%edx, %r11d
	je	.LBB65_16
# BB#15:                                # %if.end.i.149
                                        #   in Loop: Header=BB65_13 Depth=1
	movswl	%di, %edx
	incl	%ebp
	movslq	%ebp, %rsi
	movswl	56(%r9,%rsi,2), %edi
	subl	%edx, %edi
	imull	%r11d, %edi
	shrl	$7, %edi
	addl	%edx, %edi
.LBB65_16:                              # %cond.end.132
                                        #   in Loop: Header=BB65_13 Depth=1
	movl	$32760, %edx            # imm = 0x7FF8
	subl	%edi, %edx
	movw	%dx, (%rcx)
	addq	$2, %r14
	addq	$2, %rcx
	addq	$8, %rax
	decl	%r10d
	jne	.LBB65_13
.LBB65_17:                              # %if.end.166
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	movabsq	$8589934576, %rbx       # imm = 0x1FFFFFFF0
	je	.LBB65_40
.LBB65_18:                              # %if.then.168
	movl	352(%rsp), %ebp
	movq	392(%r15), %rcx
	movslq	%ebp, %rax
	leaq	376(%r15,%rax,8), %r8
	leaq	160(%rsp), %rdi
	movq	24(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	gx_render_device_DeviceN
	cmpl	$1, %eax
	jne	.LBB65_50
# BB#19:                                # %if.then.175
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	movl	%ebp, %ecx
	callq	*32(%rax)
	jmp	.LBB65_50
.LBB65_40:                              # %for.cond.179.preheader
	testl	%r12d, %r12d
	jle	.LBB65_48
# BB#41:                                # %for.body.182.preheader
	leal	-1(%r12), %edi
	leaq	1(%rdi), %rax
	addq	$8, %rbx
	xorl	%edx, %edx
	andq	%rax, %rbx
	je	.LBB65_45
# BB#42:                                # %vector.body193.preheader
	leaq	168(%rsp), %rcx
	leaq	40(%rsp), %rdx
	incq	%rdi
	movabsq	$8589934584, %rsi       # imm = 0x1FFFFFFF8
	andq	%rdi, %rsi
	.align	16, 0x90
.LBB65_43:                              # %vector.body193
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rcx), %xmm0         # xmm0 = mem[0],zero
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	movq	(%rcx), %xmm1           # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	movdqa	%xmm0, %xmm2
	paddd	%xmm2, %xmm2
	movdqa	%xmm1, %xmm3
	paddd	%xmm3, %xmm3
	psrld	$11, %xmm0
	psrld	$11, %xmm1
	paddw	%xmm2, %xmm0
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, -8(%rdx)
	paddw	%xmm3, %xmm1
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rdx)
	addq	$16, %rcx
	addq	$16, %rdx
	addq	$-8, %rsi
	jne	.LBB65_43
# BB#44:
	movq	%rbx, %rdx
.LBB65_45:                              # %middle.block194
	cmpq	%rdx, %rax
	je	.LBB65_48
# BB#46:                                # %for.body.182.preheader218
	leaq	160(%rsp,%rdx,2), %rax
	leaq	32(%rsp,%rdx,2), %rcx
	subl	%edx, %r12d
	.align	16, 0x90
.LBB65_47:                              # %for.body.182
                                        # =>This Inner Loop Header: Depth=1
	movswl	(%rax), %edx
	movl	%edx, %esi
	shrl	$11, %esi
	leal	(%rsi,%rdx,2), %edx
	movw	%dx, (%rcx)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%r12d
	jne	.LBB65_47
.LBB65_48:                              # %for.end.195
	leaq	32(%rsp), %rsi
	movq	%r13, %rdi
	callq	*1552(%r13)
	cmpq	$-1, %rax
	movq	24(%rsp), %rcx          # 8-byte Reload
	je	.LBB65_50
# BB#49:                                # %if.then.201
	movq	%rax, 8(%rcx)
	movq	$gx_dc_type_data_pure, (%rcx)
.LBB65_50:                              # %if.end.204
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end65:
	.size	cmap_transfer_halftone, .Lfunc_end65-cmap_transfer_halftone
	.cfi_endproc

	.globl	cmap_transfer
	.align	16, 0x90
	.type	cmap_transfer,@function
cmap_transfer:                          # @cmap_transfer
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
	pushq	%rax
.Ltmp93:
	.cfi_def_cfa_offset 64
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
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %r13
	movl	100(%r15), %r12d
	cmpl	$1, 104(%r15)
	jne	.LBB66_7
# BB#1:                                 # %for.cond.preheader
	testl	%r12d, %r12d
	jle	.LBB66_24
# BB#2:                                 # %for.body.preheader
	addq	$496, %r14              # imm = 0x1F0
	movl	$gs_identity_transfer, %r8d
	.align	16, 0x90
.LBB66_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%r13), %edx
	movl	%edx, %ecx
	shrl	%ecx
	shrl	$13, %edx
	subl	%edx, %ecx
	movq	(%r14), %rdx
	cmpq	%r8, 24(%rdx)
	je	.LBB66_6
# BB#4:                                 # %cond.false
                                        #   in Loop: Header=BB66_3 Depth=1
	movswl	%cx, %eax
	movl	%eax, %esi
	sarl	$12, %esi
	addl	%eax, %esi
	movl	%esi, %ecx
	sarl	$8, %ecx
	subl	%ecx, %esi
	movl	%esi, %edi
	sarl	$7, %edi
	movslq	%edi, %rcx
	movw	56(%rdx,%rcx,2), %cx
	movl	%esi, %ebp
	andl	$65408, %ebp            # imm = 0xFF80
	movl	%esi, %ebx
	shrl	$8, %ebx
	shrl	$12, %esi
	subl	%esi, %ebx
	addl	%ebp, %ebx
	movswl	%bx, %esi
	subl	%esi, %eax
	je	.LBB66_6
# BB#5:                                 # %if.end.i
                                        #   in Loop: Header=BB66_3 Depth=1
	movswl	%cx, %esi
	incl	%edi
	movslq	%edi, %rcx
	movswl	56(%rdx,%rcx,2), %ecx
	subl	%esi, %ecx
	imull	%eax, %ecx
	shrl	$7, %ecx
	addl	%esi, %ecx
.LBB66_6:                               # %cond.end
                                        #   in Loop: Header=BB66_3 Depth=1
	movswl	%cx, %eax
	movl	%eax, %ecx
	shrl	$11, %ecx
	leal	(%rcx,%rax,2), %eax
	movw	%ax, (%r13)
	addq	$2, %r13
	addq	$8, %r14
	decl	%r12d
	jne	.LBB66_3
	jmp	.LBB66_24
.LBB66_7:                               # %if.else
	movl	792(%r15), %eax
	cmpl	$-1, %eax
	jne	.LBB66_9
# BB#8:                                 # %if.then.34
	movq	%r15, %rdi
	callq	check_cmyk_color_model_comps
	movl	792(%r15), %eax
.LBB66_9:                               # %if.end
	cmpl	$1, %eax
	jne	.LBB66_10
# BB#16:                                # %if.then.40
	testl	%r12d, %r12d
	jle	.LBB66_24
# BB#17:                                # %for.body.45.preheader
	movl	808(%r15), %eax
	addq	$496, %r14              # imm = 0x1F0
	movl	$gs_identity_transfer, %r8d
	.align	16, 0x90
.LBB66_18:                              # %for.body.45
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%r13), %edx
	movl	%edx, %ecx
	shrl	%ecx
	shrl	$13, %edx
	subl	%edx, %ecx
	testl	%eax, %eax
	jne	.LBB66_23
# BB#19:                                # %if.then.58
                                        #   in Loop: Header=BB66_18 Depth=1
	movq	(%r14), %r9
	movl	$32760, %edx            # imm = 0x7FF8
	subl	%ecx, %edx
	cmpq	%r8, 24(%r9)
	je	.LBB66_22
# BB#20:                                # %cond.false.70
                                        #   in Loop: Header=BB66_18 Depth=1
	movswl	%dx, %ebp
	movl	%ebp, %edi
	sarl	$12, %edi
	addl	%ebp, %edi
	movl	%edi, %ecx
	sarl	$8, %ecx
	subl	%ecx, %edi
	movl	%edi, %ecx
	sarl	$7, %ecx
	movslq	%ecx, %rdx
	movw	56(%r9,%rdx,2), %dx
	movl	%edi, %ebx
	andl	$65408, %ebx            # imm = 0xFF80
	movl	%edi, %esi
	shrl	$8, %esi
	shrl	$12, %edi
	subl	%edi, %esi
	addl	%ebx, %esi
	movswl	%si, %esi
	subl	%esi, %ebp
	je	.LBB66_22
# BB#21:                                # %if.end.i.132
                                        #   in Loop: Header=BB66_18 Depth=1
	movswl	%dx, %esi
	incl	%ecx
	movslq	%ecx, %rcx
	movswl	56(%r9,%rcx,2), %edx
	subl	%esi, %edx
	imull	%ebp, %edx
	shrl	$7, %edx
	addl	%esi, %edx
.LBB66_22:                              # %cond.end.81
                                        #   in Loop: Header=BB66_18 Depth=1
	movl	$32760, %ecx            # imm = 0x7FF8
	subl	%edx, %ecx
.LBB66_23:                              # %if.end.100
                                        #   in Loop: Header=BB66_18 Depth=1
	movswl	%cx, %ecx
	movl	%ecx, %edx
	shrl	$11, %edx
	leal	(%rdx,%rcx,2), %ecx
	movw	%cx, (%r13)
	addq	$2, %r13
	addq	$8, %r14
	decl	%eax
	decl	%r12d
	jne	.LBB66_18
	jmp	.LBB66_24
.LBB66_10:                              # %for.cond.117.preheader
	testl	%r12d, %r12d
	jle	.LBB66_24
# BB#11:                                # %for.body.120.preheader
	addq	$496, %r14              # imm = 0x1F0
	movl	$gs_identity_transfer, %r8d
	.align	16, 0x90
.LBB66_12:                              # %for.body.120
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%r13), %ecx
	movl	%ecx, %esi
	shrl	%esi
	shrl	$13, %ecx
	movq	(%r14), %rdx
	subl	%esi, %ecx
	addl	$32760, %ecx            # imm = 0x7FF8
	cmpq	%r8, 24(%rdx)
	je	.LBB66_15
# BB#13:                                # %cond.false.142
                                        #   in Loop: Header=BB66_12 Depth=1
	movswl	%cx, %ebp
	movl	%ebp, %esi
	sarl	$12, %esi
	addl	%ebp, %esi
	movl	%esi, %ecx
	sarl	$8, %ecx
	subl	%ecx, %esi
	movl	%esi, %edi
	sarl	$7, %edi
	movslq	%edi, %rcx
	movw	56(%rdx,%rcx,2), %cx
	movl	%esi, %ebx
	andl	$65408, %ebx            # imm = 0xFF80
	movl	%esi, %eax
	shrl	$8, %eax
	shrl	$12, %esi
	subl	%esi, %eax
	addl	%ebx, %eax
	cwtl
	subl	%eax, %ebp
	je	.LBB66_15
# BB#14:                                # %if.end.i.102
                                        #   in Loop: Header=BB66_12 Depth=1
	movswl	%cx, %eax
	incl	%edi
	movslq	%edi, %rcx
	movswl	56(%rdx,%rcx,2), %ecx
	subl	%eax, %ecx
	imull	%ebp, %ecx
	shrl	$7, %ecx
	addl	%eax, %ecx
.LBB66_15:                              # %cond.end.153
                                        #   in Loop: Header=BB66_12 Depth=1
	movl	$32760, %eax            # imm = 0x7FF8
	subl	%ecx, %eax
	cwtl
	movl	%eax, %ecx
	shrl	$11, %ecx
	leal	(%rcx,%rax,2), %eax
	movw	%ax, (%r13)
	addq	$2, %r13
	addq	$8, %r14
	decl	%r12d
	jne	.LBB66_12
.LBB66_24:                              # %if.end.175
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end66:
	.size	cmap_transfer, .Lfunc_end66-cmap_transfer
	.cfi_endproc

	.globl	cmap_transfer_plane
	.align	16, 0x90
	.type	cmap_transfer_plane,@function
cmap_transfer_plane:                    # @cmap_transfer_plane
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
	pushq	%rbx
.Ltmp103:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp104:
	.cfi_def_cfa_offset 48
.Ltmp105:
	.cfi_offset %rbx, -40
.Ltmp106:
	.cfi_offset %r14, -32
.Ltmp107:
	.cfi_offset %r15, -24
.Ltmp108:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	cmpl	$1, 104(%rbx)
	jne	.LBB67_5
# BB#1:                                 # %if.then
	movzwl	(%r14), %ecx
	movl	%ecx, %eax
	shrl	%eax
	shrl	$13, %ecx
	subl	%ecx, %eax
	movslq	%ebp, %rcx
	movq	496(%r15,%rcx,8), %rcx
	movl	$gs_identity_transfer, %edx
	cmpq	%rdx, 24(%rcx)
	je	.LBB67_4
# BB#2:                                 # %cond.false
	movswl	%ax, %edx
	movl	%edx, %edi
	sarl	$12, %edi
	addl	%edx, %edi
	movl	%edi, %eax
	sarl	$8, %eax
	subl	%eax, %edi
	movl	%edi, %esi
	sarl	$7, %esi
	movslq	%esi, %rax
	movw	56(%rcx,%rax,2), %ax
	movl	%edi, %ebp
	andl	$65408, %ebp            # imm = 0xFF80
	movl	%edi, %ebx
	shrl	$8, %ebx
	shrl	$12, %edi
	subl	%edi, %ebx
	addl	%ebp, %ebx
	movswl	%bx, %edi
	subl	%edi, %edx
	je	.LBB67_4
# BB#3:                                 # %if.end.i
	movswl	%ax, %edi
	incl	%esi
	movslq	%esi, %rax
	movswl	56(%rcx,%rax,2), %eax
	subl	%edi, %eax
	imull	%edx, %eax
	shrl	$7, %eax
	addl	%edi, %eax
	jmp	.LBB67_4
.LBB67_5:                               # %if.else
	movl	792(%rbx), %eax
	cmpl	$-1, %eax
	jne	.LBB67_7
# BB#6:                                 # %if.then.23
	movq	%rbx, %rdi
	callq	check_cmyk_color_model_comps
	movl	792(%rbx), %eax
.LBB67_7:                               # %if.end
	cmpl	$1, %eax
	jne	.LBB67_13
# BB#8:                                 # %if.then.29
	movzwl	(%r14), %ecx
	movl	%ecx, %eax
	shrl	%eax
	shrl	$13, %ecx
	subl	%ecx, %eax
	cmpl	%ebp, 808(%rbx)
	jne	.LBB67_4
# BB#9:                                 # %if.then.41
	movslq	%ebp, %rcx
	movq	496(%r15,%rcx,8), %r8
	movq	24(%r8), %rsi
	movl	$gs_identity_transfer, %edi
	movl	$32760, %edx            # imm = 0x7FF8
	subl	%eax, %edx
	movl	$32760, %eax            # imm = 0x7FF8
	cmpq	%rdi, %rsi
	je	.LBB67_12
# BB#10:                                # %cond.false.53
	movswl	%dx, %ebp
	movl	%ebp, %esi
	sarl	$12, %esi
	addl	%ebp, %esi
	movl	%esi, %edx
	sarl	$8, %edx
	subl	%edx, %esi
	movl	%esi, %edi
	sarl	$7, %edi
	movslq	%edi, %rdx
	movw	56(%r8,%rdx,2), %dx
	movl	%esi, %ebx
	andl	$65408, %ebx            # imm = 0xFF80
	movl	%esi, %ecx
	shrl	$8, %ecx
	shrl	$12, %esi
	subl	%esi, %ecx
	addl	%ebx, %ecx
	movswl	%cx, %ecx
	subl	%ecx, %ebp
	je	.LBB67_12
# BB#11:                                # %if.end.i.107
	movswl	%dx, %ecx
	incl	%edi
	movslq	%edi, %rdx
	movswl	56(%r8,%rdx,2), %edx
	subl	%ecx, %edx
	imull	%ebp, %edx
	shrl	$7, %edx
	addl	%ecx, %edx
.LBB67_12:                              # %cond.end.64
	subl	%edx, %eax
	cwtl
	jmp	.LBB67_17
.LBB67_4:                               # %cond.end
	cwtl
	jmp	.LBB67_17
.LBB67_13:                              # %if.else.85
	movzwl	(%r14), %eax
	movl	%eax, %edx
	shrl	%edx
	shrl	$13, %eax
	movslq	%ebp, %rcx
	movq	496(%r15,%rcx,8), %rcx
	movl	$gs_identity_transfer, %esi
	subl	%edx, %eax
	addl	$32760, %eax            # imm = 0x7FF8
	cmpq	%rsi, 24(%rcx)
	je	.LBB67_16
# BB#14:                                # %cond.false.105
	movswl	%ax, %edx
	movl	%edx, %edi
	sarl	$12, %edi
	addl	%edx, %edi
	movl	%edi, %eax
	sarl	$8, %eax
	subl	%eax, %edi
	movl	%edi, %esi
	sarl	$7, %esi
	movslq	%esi, %rax
	movw	56(%rcx,%rax,2), %ax
	movl	%edi, %ebp
	andl	$65408, %ebp            # imm = 0xFF80
	movl	%edi, %ebx
	shrl	$8, %ebx
	shrl	$12, %edi
	subl	%edi, %ebx
	addl	%ebp, %ebx
	movswl	%bx, %edi
	subl	%edi, %edx
	je	.LBB67_16
# BB#15:                                # %if.end.i.77
	movswl	%ax, %edi
	incl	%esi
	movslq	%esi, %rax
	movswl	56(%rcx,%rax,2), %eax
	subl	%edi, %eax
	imull	%edx, %eax
	shrl	$7, %eax
	addl	%edi, %eax
.LBB67_16:                              # %cond.end.116
	movl	$32760, %ecx            # imm = 0x7FF8
	subl	%eax, %ecx
	movswl	%cx, %eax
.LBB67_17:                              # %if.end.128
	movl	%eax, %ecx
	shrl	$11, %ecx
	leal	(%rcx,%rax,2), %eax
	movw	%ax, (%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end67:
	.size	cmap_transfer_plane, .Lfunc_end67-cmap_transfer_plane
	.cfi_endproc

	.globl	gx_device_uses_std_cmap_procs
	.align	16, 0x90
	.type	gx_device_uses_std_cmap_procs,@function
gx_device_uses_std_cmap_procs:          # @gx_device_uses_std_cmap_procs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp109:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp110:
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
.Ltmp111:
	.cfi_def_cfa_offset 64
.Ltmp112:
	.cfi_offset %rbx, -24
.Ltmp113:
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	$0, 8(%rsp)
	movq	$0, (%rsp)
	leaq	8(%rsp), %rsi
	callq	*1680(%rbx)
	movl	1112(%rbx), %edi
	movq	8(%rsp), %rsi
	leaq	(%rsp), %rdx
	leaq	16(%rsp), %rcx
	callq	gsicc_extract_profile
	cmpq	$0, (%rsp)
	je	.LBB68_10
# BB#1:                                 # %if.then
	movq	%rbx, %rdi
	callq	*1536(%rbx)
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	fwd_uses_fwd_cmap_procs
	testl	%eax, %eax
	je	.LBB68_3
# BB#2:                                 # %if.then.4
	movq	%rbx, %rdi
	callq	fwd_get_target_cmap_procs
	movq	%rax, %r14
.LBB68_3:                               # %if.end
	movq	(%rsp), %rax
	movzbl	(%rax), %eax
	cmpl	$4, %eax
	je	.LBB68_8
# BB#4:                                 # %if.end
	cmpl	$3, %eax
	jne	.LBB68_5
# BB#7:                                 # %sw.bb.10
	movl	$DeviceRGB_procs, %ecx
	jmp	.LBB68_9
.LBB68_8:                               # %sw.bb.15
	movl	$DeviceCMYK_procs, %ecx
	jmp	.LBB68_9
.LBB68_5:                               # %if.end
	cmpl	$1, %eax
	jne	.LBB68_10
# BB#6:                                 # %sw.bb
	movl	$DeviceGray_procs, %ecx
.LBB68_9:                               # %sw.bb.15
	movl	$1, %eax
	cmpq	%rcx, %r14
	je	.LBB68_11
.LBB68_10:                              # %if.end.20
	xorl	%eax, %eax
.LBB68_11:                              # %cleanup
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end68:
	.size	gx_device_uses_std_cmap_procs, .Lfunc_end68-gx_device_uses_std_cmap_procs
	.cfi_endproc

	.align	16, 0x90
	.type	rgb_cs_to_gray_cm,@function
rgb_cs_to_gray_cm:                      # @rgb_cs_to_gray_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbx, -16
	movq	%r9, %rbx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	%edx, %edi
	movl	%eax, %esi
	movl	%r8d, %edx
	callq	color_rgb_to_gray
	movw	%ax, (%rbx)
	popq	%rbx
	retq
.Lfunc_end69:
	.size	rgb_cs_to_gray_cm, .Lfunc_end69-rgb_cs_to_gray_cm
	.cfi_endproc

	.align	16, 0x90
	.type	cmyk_cs_to_gray_cm,@function
cmyk_cs_to_gray_cm:                     # @cmyk_cs_to_gray_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp116:
	.cfi_def_cfa_offset 16
.Ltmp117:
	.cfi_offset %rbx, -16
	movq	%r9, %rbx
	movl	%r8d, %eax
	xorl	%r8d, %r8d
	movl	%esi, %edi
	movl	%edx, %esi
	movl	%ecx, %edx
	movl	%eax, %ecx
	callq	color_cmyk_to_gray
	movw	%ax, (%rbx)
	popq	%rbx
	retq
.Lfunc_end70:
	.size	cmyk_cs_to_gray_cm, .Lfunc_end70-cmyk_cs_to_gray_cm
	.cfi_endproc

	.align	16, 0x90
	.type	gray_cs_to_rgb_cm,@function
gray_cs_to_rgb_cm:                      # @gray_cs_to_rgb_cm
	.cfi_startproc
# BB#0:                                 # %entry
	movw	%si, 4(%rdx)
	movw	%si, 2(%rdx)
	movw	%si, (%rdx)
	retq
.Lfunc_end71:
	.size	gray_cs_to_rgb_cm, .Lfunc_end71-gray_cs_to_rgb_cm
	.cfi_endproc

	.align	16, 0x90
	.type	cmyk_cs_to_rgb_cm,@function
cmyk_cs_to_rgb_cm:                      # @cmyk_cs_to_rgb_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp118:
	.cfi_def_cfa_offset 16
	movl	%r8d, %eax
	movq	24(%rdi), %rdi
	movq	%rdi, (%rsp)
	xorl	%r8d, %r8d
	movl	%esi, %edi
	movl	%edx, %esi
	movl	%ecx, %edx
	movl	%eax, %ecx
	callq	color_cmyk_to_rgb
	popq	%rax
	retq
.Lfunc_end72:
	.size	cmyk_cs_to_rgb_cm, .Lfunc_end72-cmyk_cs_to_rgb_cm
	.cfi_endproc

	.align	16, 0x90
	.type	gray_cs_to_cmyk_cm,@function
gray_cs_to_cmyk_cm:                     # @gray_cs_to_cmyk_cm
	.cfi_startproc
# BB#0:                                 # %entry
	movw	$0, 4(%rdx)
	movw	$0, 2(%rdx)
	movw	$0, (%rdx)
	movl	$32760, %eax            # imm = 0x7FF8
	subl	%esi, %eax
	movw	%ax, 6(%rdx)
	retq
.Lfunc_end73:
	.size	gray_cs_to_cmyk_cm, .Lfunc_end73-gray_cs_to_cmyk_cm
	.cfi_endproc

	.align	16, 0x90
	.type	rgb_cs_to_cmyk_cm,@function
rgb_cs_to_cmyk_cm:                      # @rgb_cs_to_cmyk_cm
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	testq	%rax, %rax
	je	.LBB74_1
# BB#2:                                 # %if.then
	movq	24(%rdi), %r10
	movswl	%dx, %edi
	movswl	%cx, %esi
	movswl	%r8w, %edx
	movq	%rax, %rcx
	movq	%r9, %r8
	movq	%r10, %r9
	jmp	color_rgb_to_cmyk       # TAILCALL
.LBB74_1:                               # %if.end
	movl	$32760, %eax            # imm = 0x7FF8
	movl	$32760, %esi            # imm = 0x7FF8
	subl	%edx, %esi
	movl	$32760, %edx            # imm = 0x7FF8
	subl	%ecx, %edx
	subl	%r8d, %eax
	movswl	%ax, %ecx
	movswl	%dx, %edi
	cmpl	%ecx, %edi
	cmovgw	%cx, %di
	movswl	%di, %ecx
	movswl	%si, %edi
	cmpl	%ecx, %edi
	cmovgw	%cx, %di
	subl	%edi, %esi
	movw	%si, (%r9)
	subl	%edi, %edx
	movw	%dx, 2(%r9)
	subl	%edi, %eax
	movw	%ax, 4(%r9)
	movw	%di, 6(%r9)
	retq
.Lfunc_end74:
	.size	rgb_cs_to_cmyk_cm, .Lfunc_end74-rgb_cs_to_cmyk_cm
	.cfi_endproc

	.align	16, 0x90
	.type	gray_cs_to_rgbk_cm,@function
gray_cs_to_rgbk_cm:                     # @gray_cs_to_rgbk_cm
	.cfi_startproc
# BB#0:                                 # %entry
	movw	$0, 4(%rdx)
	movw	$0, 2(%rdx)
	movw	$0, (%rdx)
	movw	%si, 6(%rdx)
	retq
.Lfunc_end75:
	.size	gray_cs_to_rgbk_cm, .Lfunc_end75-gray_cs_to_rgbk_cm
	.cfi_endproc

	.align	16, 0x90
	.type	rgb_cs_to_rgbk_cm,@function
rgb_cs_to_rgbk_cm:                      # @rgb_cs_to_rgbk_cm
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	%dx, %eax
	movzwl	%cx, %ecx
	cmpl	%ecx, %eax
	sete	%dil
	movzwl	%r8w, %esi
	cmpl	%esi, %ecx
	sete	%dl
	xorl	%r8d, %r8d
	andb	%dil, %dl
	movw	%ax, %di
	cmovnew	%r8w, %di
	cmovnew	%r8w, %cx
	cmovnew	%r8w, %si
	testb	%dl, %dl
	cmovew	%r8w, %ax
	movw	%di, (%r9)
	movw	%cx, 2(%r9)
	movw	%si, 4(%r9)
	movw	%ax, 6(%r9)
	retq
.Lfunc_end76:
	.size	rgb_cs_to_rgbk_cm, .Lfunc_end76-rgb_cs_to_rgbk_cm
	.cfi_endproc

	.align	16, 0x90
	.type	cmyk_cs_to_rgbk_cm,@function
cmyk_cs_to_rgbk_cm:                     # @cmyk_cs_to_rgbk_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp119:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp120:
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
.Ltmp121:
	.cfi_def_cfa_offset 48
.Ltmp122:
	.cfi_offset %rbx, -24
.Ltmp123:
	.cfi_offset %r14, -16
	movq	%r9, %r14
	movl	%edx, %eax
	orl	%esi, %eax
	orw	%cx, %ax
	je	.LBB77_1
# BB#2:                                 # %if.else
	movq	24(%rdi), %rax
	movq	%rax, (%rsp)
	movswl	%si, %edi
	movswl	%dx, %esi
	movswl	%cx, %edx
	movswl	%r8w, %ecx
	xorl	%ebx, %ebx
	leaq	18(%rsp), %r9
	xorl	%r8d, %r8d
	callq	color_cmyk_to_rgb
	movzwl	18(%rsp), %edi
	movzwl	20(%rsp), %eax
	movzwl	22(%rsp), %ecx
	cmpl	%eax, %edi
	sete	%sil
	cmpl	%ecx, %eax
	sete	%dl
	andb	%sil, %dl
	movw	%di, %si
	cmovnew	%bx, %si
	cmovnew	%bx, %ax
	cmovnew	%bx, %cx
	testb	%dl, %dl
	cmovnew	%di, %bx
	movw	%si, (%r14)
	jmp	.LBB77_3
.LBB77_1:                               # %if.then
	movw	$0, (%r14)
	movl	$32760, %ebx            # imm = 0x7FF8
	subl	%r8d, %ebx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB77_3:                               # %if.end
	movw	%ax, 2(%r14)
	movw	%cx, 4(%r14)
	movw	%bx, 6(%r14)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end77:
	.size	cmyk_cs_to_rgbk_cm, .Lfunc_end77-cmyk_cs_to_rgbk_cm
	.cfi_endproc

	.align	16, 0x90
	.type	cmap_gray_direct,@function
cmap_gray_direct:                       # @cmap_gray_direct
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp124:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp125:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp126:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp127:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp128:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp129:
	.cfi_def_cfa_offset 56
	subq	$296, %rsp              # imm = 0x128
.Ltmp130:
	.cfi_def_cfa_offset 352
.Ltmp131:
	.cfi_offset %rbx, -56
.Ltmp132:
	.cfi_offset %r12, -48
.Ltmp133:
	.cfi_offset %r13, -40
.Ltmp134:
	.cfi_offset %r14, -32
.Ltmp135:
	.cfi_offset %r15, -24
.Ltmp136:
	.cfi_offset %rbp, -16
	movl	%r8d, 12(%rsp)          # 4-byte Spill
	movq	%rcx, %r15
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movl	%edi, %ebp
	movl	100(%r15), %r14d
	testl	%r14d, %r14d
	jle	.LBB78_12
# BB#1:                                 # %for.body.preheader
	movabsq	$8589934576, %r8        # imm = 0x1FFFFFFF0
	leal	-1(%r14), %ecx
	leaq	1(%rcx), %rax
	xorl	%esi, %esi
	movq	%rax, %rdx
	andq	%r8, %rdx
	je	.LBB78_9
# BB#2:                                 # %vector.body.preheader
	leaq	1(%rcx), %rdi
	andq	%r8, %rdi
	addq	$-16, %rdi
	movl	%edi, %esi
	shrl	$4, %esi
	incl	%esi
	xorl	%ebx, %ebx
	testb	$3, %sil
	je	.LBB78_5
# BB#3:                                 # %vector.body.prol.preheader
	movl	%r14d, %esi
	andl	$48, %esi
	addl	$-16, %esi
	shrl	$4, %esi
	incl	%esi
	andl	$3, %esi
	negq	%rsi
	xorl	%ebx, %ebx
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB78_4:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movaps	%xmm0, 160(%rsp,%rbx,2)
	movaps	%xmm0, 176(%rsp,%rbx,2)
	addq	$16, %rbx
	incq	%rsi
	jne	.LBB78_4
.LBB78_5:                               # %vector.body.preheader.split
	cmpq	$48, %rdi
	jb	.LBB78_8
# BB#6:                                 # %vector.body.preheader.split.split
	incq	%rcx
	andq	%r8, %rcx
	subq	%rbx, %rcx
	leaq	272(%rsp,%rbx,2), %rsi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB78_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movaps	%xmm0, -112(%rsi)
	movaps	%xmm0, -96(%rsi)
	movaps	%xmm0, -80(%rsi)
	movaps	%xmm0, -64(%rsi)
	movaps	%xmm0, -48(%rsi)
	movaps	%xmm0, -32(%rsi)
	movaps	%xmm0, -16(%rsi)
	movaps	%xmm0, (%rsi)
	subq	$-128, %rsi
	addq	$-64, %rcx
	jne	.LBB78_7
.LBB78_8:
	movq	%rdx, %rsi
.LBB78_9:                               # %middle.block
	cmpq	%rsi, %rax
	je	.LBB78_12
# BB#10:                                # %for.body.preheader271
	leaq	160(%rsp,%rsi,2), %rax
	movl	%r14d, %ecx
	subl	%esi, %ecx
	.align	16, 0x90
.LBB78_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rax)
	addq	$2, %rax
	decl	%ecx
	jne	.LBB78_11
.LBB78_12:                              # %for.end
	movq	%r15, %rdi
	callq	*1536(%r15)
	movswl	%bp, %ebx
	leaq	160(%rsp), %r12
	movq	%r15, %rdi
	movl	%ebx, %esi
	movq	%r12, %rdx
	callq	*(%rax)
	cmpl	$1, 104(%r15)
	jne	.LBB78_21
# BB#13:                                # %for.cond.3.preheader
	movl	%ebx, 8(%rsp)           # 4-byte Spill
	testl	%r14d, %r14d
	jle	.LBB78_44
# BB#14:                                # %for.body.5.preheader
	movq	16(%rsp), %rax          # 8-byte Reload
	leaq	496(%rax), %r11
	leaq	160(%rsp), %r12
	leaq	32(%rsp), %rdx
	movl	$gs_identity_transfer, %r8d
	.align	16, 0x90
.LBB78_15:                              # %for.body.5
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r11), %r10
	cmpq	%r8, 24(%r10)
	movw	(%r12), %ax
	movswl	%ax, %edi
	je	.LBB78_48
# BB#16:                                # %cond.false
                                        #   in Loop: Header=BB78_15 Depth=1
	movl	%edi, %ebp
	sarl	$12, %ebp
	addl	%edi, %ebp
	movl	%ebp, %eax
	sarl	$8, %eax
	subl	%eax, %ebp
	movl	%ebp, %ebx
	sarl	$7, %ebx
	movslq	%ebx, %r9
	movw	56(%r10,%r9,2), %ax
	movl	%ebp, %ecx
	andl	$65408, %ecx            # imm = 0xFF80
	movl	%ebp, %esi
	shrl	$8, %esi
	shrl	$12, %ebp
	subl	%ebp, %esi
	addl	%ecx, %esi
	movswl	%si, %ecx
	movl	%edi, %ebp
	subl	%ecx, %ebp
	je	.LBB78_18
# BB#17:                                # %if.end.i
                                        #   in Loop: Header=BB78_15 Depth=1
	movswl	%ax, %ecx
	leal	1(%rbx), %eax
	cltq
	movswl	56(%r10,%rax,2), %eax
	subl	%ecx, %eax
	imull	%ebp, %eax
	shrl	$7, %eax
	addl	%ecx, %eax
.LBB78_18:                              # %cond.false.29
                                        #   in Loop: Header=BB78_15 Depth=1
	movswl	%ax, %ebp
	addl	%ebp, %ebp
	movw	56(%r10,%r9,2), %ax
	movswl	%si, %ecx
	subl	%ecx, %edi
	je	.LBB78_20
# BB#19:                                # %if.end.i.103
                                        #   in Loop: Header=BB78_15 Depth=1
	movswl	%ax, %ecx
	incl	%ebx
	movslq	%ebx, %rax
	movswl	56(%r10,%rax,2), %eax
	subl	%ecx, %eax
	imull	%edi, %eax
	shrl	$7, %eax
	addl	%ecx, %eax
	jmp	.LBB78_20
	.align	16, 0x90
.LBB78_48:                              # %cond.end
                                        #   in Loop: Header=BB78_15 Depth=1
	addl	%edi, %edi
	movl	%edi, %ebp
.LBB78_20:                              # %cond.end.39
                                        #   in Loop: Header=BB78_15 Depth=1
	cwtl
	shrl	$11, %eax
	addl	%ebp, %eax
	movw	%ax, (%rdx)
	addq	$2, %r12
	addq	$2, %rdx
	addq	$8, %r11
	decl	%r14d
	jne	.LBB78_15
	jmp	.LBB78_44
.LBB78_21:                              # %if.else
	movl	792(%r15), %eax
	cmpl	$-1, %eax
	jne	.LBB78_23
# BB#22:                                # %if.then.50
	movq	%r15, %rdi
	callq	check_cmyk_color_model_comps
	movl	792(%r15), %eax
.LBB78_23:                              # %if.end
	cmpl	$1, %eax
	jne	.LBB78_24
# BB#31:                                # %if.then.56
	movl	%ebx, 8(%rsp)           # 4-byte Spill
	testl	%r14d, %r14d
	jle	.LBB78_44
# BB#32:                                # %for.body.61.preheader
	movl	808(%r15), %eax
	movq	16(%rsp), %rcx          # 8-byte Reload
	leaq	496(%rcx), %rcx
	leaq	160(%rsp), %rdx
	leaq	32(%rsp), %rsi
	movl	$gs_identity_transfer, %r8d
	.align	16, 0x90
.LBB78_33:                              # %for.body.61
                                        # =>This Inner Loop Header: Depth=1
	testl	%eax, %eax
	je	.LBB78_34
# BB#40:                                # %if.else.128
                                        #   in Loop: Header=BB78_33 Depth=1
	movswl	(%rdx), %ebp
	movl	%ebp, %edi
	shrl	$11, %edi
	leal	(%rdi,%rbp,2), %edi
	movw	%di, (%rsi)
	jmp	.LBB78_41
	.align	16, 0x90
.LBB78_34:                              # %if.then.64
                                        #   in Loop: Header=BB78_33 Depth=1
	movq	(%rcx), %r9
	movw	$32760, %bp             # imm = 0x7FF8
	subw	(%rdx), %bp
	cmpq	%r8, 24(%r9)
	movswl	%bp, %r12d
	je	.LBB78_49
# BB#35:                                # %cond.false.77
                                        #   in Loop: Header=BB78_33 Depth=1
	movl	%r12d, %ebp
	sarl	$12, %ebp
	addl	%r12d, %ebp
	movl	%ebp, %edi
	sarl	$8, %edi
	subl	%edi, %ebp
	movl	%ebp, %r11d
	sarl	$7, %r11d
	movslq	%r11d, %r10
	movw	56(%r9,%r10,2), %di
	movl	%ebp, %r13d
	andl	$65408, %r13d           # imm = 0xFF80
	movl	%ebp, %ebx
	shrl	$8, %ebx
	shrl	$12, %ebp
	subl	%ebp, %ebx
	addl	%r13d, %ebx
	movswl	%bx, %r13d
	movl	%r12d, %ebp
	subl	%r13d, %ebp
	je	.LBB78_37
# BB#36:                                # %if.end.i.133
                                        #   in Loop: Header=BB78_33 Depth=1
	movswl	%di, %r13d
	leal	1(%r11), %edi
	movslq	%edi, %rdi
	movswl	56(%r9,%rdi,2), %edi
	subl	%r13d, %edi
	imull	%ebp, %edi
	shrl	$7, %edi
	addl	%r13d, %edi
.LBB78_37:                              # %cond.false.107
                                        #   in Loop: Header=BB78_33 Depth=1
	movswl	%di, %ebp
	movl	$32760, %edi            # imm = 0x7FF8
	subl	%ebp, %edi
	addl	%edi, %edi
	movw	56(%r9,%r10,2), %bp
	movswl	%bx, %ebx
	subl	%ebx, %r12d
	je	.LBB78_39
# BB#38:                                # %if.end.i.223
                                        #   in Loop: Header=BB78_33 Depth=1
	movswl	%bp, %ebx
	incl	%r11d
	movslq	%r11d, %rbp
	movswl	56(%r9,%rbp,2), %ebp
	subl	%ebx, %ebp
	imull	%r12d, %ebp
	shrl	$7, %ebp
	addl	%ebx, %ebp
	jmp	.LBB78_39
.LBB78_49:                              # %cond.end.90
                                        #   in Loop: Header=BB78_33 Depth=1
	movl	$32760, %edi            # imm = 0x7FF8
	subl	%r12d, %edi
	addl	%edi, %edi
.LBB78_39:                              # %cond.end.120
                                        #   in Loop: Header=BB78_33 Depth=1
	movswl	%bp, %ebp
	movl	$32760, %ebx            # imm = 0x7FF8
	subl	%ebp, %ebx
	shrl	$11, %ebx
	addl	%edi, %ebx
	movw	%bx, (%rsi)
.LBB78_41:                              # %for.inc.142
                                        #   in Loop: Header=BB78_33 Depth=1
	decl	%eax
	addq	$2, %rdx
	addq	$2, %rsi
	addq	$8, %rcx
	decl	%r14d
	jne	.LBB78_33
	jmp	.LBB78_44
.LBB78_24:                              # %for.cond.146.preheader
	movl	%ebx, 8(%rsp)           # 4-byte Spill
	testl	%r14d, %r14d
	jle	.LBB78_44
# BB#25:                                # %for.body.149.preheader
	movq	16(%rsp), %rax          # 8-byte Reload
	leaq	496(%rax), %r11
	leaq	32(%rsp), %rcx
	movl	$gs_identity_transfer, %r8d
	.align	16, 0x90
.LBB78_26:                              # %for.body.149
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r11), %r10
	movw	$32760, %di             # imm = 0x7FF8
	subw	(%r12), %di
	cmpq	%r8, 24(%r10)
	movswl	%di, %esi
	je	.LBB78_42
# BB#27:                                # %cond.false.163
                                        #   in Loop: Header=BB78_26 Depth=1
	movl	%esi, %edi
	sarl	$12, %edi
	addl	%esi, %edi
	movl	%edi, %edx
	sarl	$8, %edx
	subl	%edx, %edi
	movl	%edi, %ebx
	sarl	$7, %ebx
	movslq	%ebx, %r9
	movw	56(%r10,%r9,2), %dx
	movl	%edi, %eax
	andl	$65408, %eax            # imm = 0xFF80
	movl	%edi, %ebp
	shrl	$8, %ebp
	shrl	$12, %edi
	subl	%edi, %ebp
	addl	%eax, %ebp
	movswl	%bp, %eax
	movl	%esi, %edi
	subl	%eax, %edi
	je	.LBB78_29
# BB#28:                                # %if.end.i.193
                                        #   in Loop: Header=BB78_26 Depth=1
	movswl	%dx, %eax
	leal	1(%rbx), %edx
	movslq	%edx, %rdx
	movswl	56(%r10,%rdx,2), %edx
	subl	%eax, %edx
	imull	%edi, %edx
	shrl	$7, %edx
	addl	%eax, %edx
.LBB78_29:                              # %cond.false.193
                                        #   in Loop: Header=BB78_26 Depth=1
	movswl	%dx, %eax
	movl	$32760, %edx            # imm = 0x7FF8
	subl	%eax, %edx
	addl	%edx, %edx
	movw	56(%r10,%r9,2), %di
	movswl	%bp, %eax
	subl	%eax, %esi
	je	.LBB78_43
# BB#30:                                # %if.end.i.163
                                        #   in Loop: Header=BB78_26 Depth=1
	movswl	%di, %eax
	incl	%ebx
	movslq	%ebx, %rdi
	movswl	56(%r10,%rdi,2), %edi
	subl	%eax, %edi
	imull	%esi, %edi
	shrl	$7, %edi
	addl	%eax, %edi
	jmp	.LBB78_43
	.align	16, 0x90
.LBB78_42:                              # %cond.end.176
                                        #   in Loop: Header=BB78_26 Depth=1
	movl	$32760, %edx            # imm = 0x7FF8
	subl	%esi, %edx
	addl	%edx, %edx
.LBB78_43:                              # %cond.end.206
                                        #   in Loop: Header=BB78_26 Depth=1
	movswl	%di, %eax
	movl	$32760, %esi            # imm = 0x7FF8
	subl	%eax, %esi
	shrl	$11, %esi
	addl	%edx, %esi
	movw	%si, (%rcx)
	addq	$2, %r12
	addq	$2, %rcx
	addq	$8, %r11
	decl	%r14d
	jne	.LBB78_26
.LBB78_44:                              # %if.end.218
	leaq	32(%rsp), %rsi
	movq	%r15, %rdi
	callq	*1552(%r15)
	cmpq	$-1, %rax
	je	.LBB78_46
# BB#45:                                # %if.then.225
	movq	24(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 8(%rcx)
	movq	$gx_dc_type_data_pure, (%rcx)
	jmp	.LBB78_47
.LBB78_46:                              # %if.else.226
	movl	8(%rsp), %edi           # 4-byte Reload
	movq	24(%rsp), %rsi          # 8-byte Reload
	movq	16(%rsp), %rdx          # 8-byte Reload
	movq	%r15, %rcx
	movl	12(%rsp), %r8d          # 4-byte Reload
	callq	cmap_gray_halftoned
.LBB78_47:                              # %if.end.227
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end78:
	.size	cmap_gray_direct, .Lfunc_end78-cmap_gray_direct
	.cfi_endproc

	.align	16, 0x90
	.type	cmap_rgb_direct,@function
cmap_rgb_direct:                        # @cmap_rgb_direct
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp137:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp138:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp139:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp140:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp141:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp142:
	.cfi_def_cfa_offset 56
	subq	$296, %rsp              # imm = 0x128
.Ltmp143:
	.cfi_def_cfa_offset 352
.Ltmp144:
	.cfi_offset %rbx, -56
.Ltmp145:
	.cfi_offset %r12, -48
.Ltmp146:
	.cfi_offset %r13, -40
.Ltmp147:
	.cfi_offset %r14, -32
.Ltmp148:
	.cfi_offset %r15, -24
.Ltmp149:
	.cfi_offset %rbp, -16
	movq	%r9, %r13
	movq	%r8, 24(%rsp)           # 8-byte Spill
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movl	%edx, %r14d
	movl	%esi, %r12d
	movl	%edi, %ebp
	movl	100(%r13), %r15d
	testl	%r15d, %r15d
	jle	.LBB79_12
# BB#1:                                 # %for.body.preheader
	movabsq	$8589934576, %r8        # imm = 0x1FFFFFFF0
	leal	-1(%r15), %ecx
	leaq	1(%rcx), %rax
	xorl	%esi, %esi
	movq	%rax, %rdx
	andq	%r8, %rdx
	je	.LBB79_9
# BB#2:                                 # %vector.body.preheader
	leaq	1(%rcx), %rdi
	andq	%r8, %rdi
	addq	$-16, %rdi
	movl	%edi, %esi
	shrl	$4, %esi
	incl	%esi
	xorl	%ebx, %ebx
	testb	$3, %sil
	je	.LBB79_5
# BB#3:                                 # %vector.body.prol.preheader
	movl	%r15d, %esi
	andl	$48, %esi
	addl	$-16, %esi
	shrl	$4, %esi
	incl	%esi
	andl	$3, %esi
	negq	%rsi
	xorl	%ebx, %ebx
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB79_4:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movaps	%xmm0, 160(%rsp,%rbx,2)
	movaps	%xmm0, 176(%rsp,%rbx,2)
	addq	$16, %rbx
	incq	%rsi
	jne	.LBB79_4
.LBB79_5:                               # %vector.body.preheader.split
	cmpq	$48, %rdi
	jb	.LBB79_8
# BB#6:                                 # %vector.body.preheader.split.split
	incq	%rcx
	andq	%r8, %rcx
	subq	%rbx, %rcx
	leaq	272(%rsp,%rbx,2), %rsi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB79_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movaps	%xmm0, -112(%rsi)
	movaps	%xmm0, -96(%rsi)
	movaps	%xmm0, -80(%rsi)
	movaps	%xmm0, -64(%rsi)
	movaps	%xmm0, -48(%rsi)
	movaps	%xmm0, -32(%rsi)
	movaps	%xmm0, -16(%rsi)
	movaps	%xmm0, (%rsi)
	subq	$-128, %rsi
	addq	$-64, %rcx
	jne	.LBB79_7
.LBB79_8:
	movq	%rdx, %rsi
.LBB79_9:                               # %middle.block
	cmpq	%rsi, %rax
	je	.LBB79_12
# BB#10:                                # %for.body.preheader173
	leaq	160(%rsp,%rsi,2), %rax
	movl	%r15d, %ecx
	subl	%esi, %ecx
	.align	16, 0x90
.LBB79_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rax)
	addq	$2, %rax
	decl	%ecx
	jne	.LBB79_11
.LBB79_12:                              # %for.end
	movq	%r13, %rdi
	callq	*1536(%r13)
	movswl	%bp, %edx
	movl	%edx, 12(%rsp)          # 4-byte Spill
	movswl	%r12w, %r12d
	movswl	%r14w, %r8d
	movl	%r8d, 8(%rsp)           # 4-byte Spill
	leaq	160(%rsp), %r14
	movq	%r13, %rdi
	movq	24(%rsp), %rsi          # 8-byte Reload
	movl	%r12d, %ecx
	movq	%r14, %r9
	callq	*8(%rax)
	cmpl	$1, 104(%r13)
	jne	.LBB79_13
# BB#20:                                # %for.cond.3.preheader
	testl	%r15d, %r15d
	jle	.LBB79_30
# BB#21:                                # %for.body.5.preheader
	movq	24(%rsp), %rax          # 8-byte Reload
	leaq	496(%rax), %r11
	leaq	160(%rsp), %r14
	leaq	32(%rsp), %rdx
	movl	$gs_identity_transfer, %r8d
	.align	16, 0x90
.LBB79_22:                              # %for.body.5
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r11), %r10
	cmpq	%r8, 24(%r10)
	movw	(%r14), %ax
	movswl	%ax, %edi
	je	.LBB79_34
# BB#23:                                # %cond.false
                                        #   in Loop: Header=BB79_22 Depth=1
	movl	%edi, %ebp
	sarl	$12, %ebp
	addl	%edi, %ebp
	movl	%ebp, %eax
	sarl	$8, %eax
	subl	%eax, %ebp
	movl	%ebp, %ebx
	sarl	$7, %ebx
	movslq	%ebx, %r9
	movw	56(%r10,%r9,2), %ax
	movl	%ebp, %ecx
	andl	$65408, %ecx            # imm = 0xFF80
	movl	%ebp, %esi
	shrl	$8, %esi
	shrl	$12, %ebp
	subl	%ebp, %esi
	addl	%ecx, %esi
	movswl	%si, %ecx
	movl	%edi, %ebp
	subl	%ecx, %ebp
	je	.LBB79_25
# BB#24:                                # %if.end.i
                                        #   in Loop: Header=BB79_22 Depth=1
	movswl	%ax, %ecx
	leal	1(%rbx), %eax
	cltq
	movswl	56(%r10,%rax,2), %eax
	subl	%ecx, %eax
	imull	%ebp, %eax
	shrl	$7, %eax
	addl	%ecx, %eax
.LBB79_25:                              # %cond.false.29
                                        #   in Loop: Header=BB79_22 Depth=1
	movswl	%ax, %ebp
	addl	%ebp, %ebp
	movw	56(%r10,%r9,2), %ax
	movswl	%si, %ecx
	subl	%ecx, %edi
	je	.LBB79_27
# BB#26:                                # %if.end.i.80
                                        #   in Loop: Header=BB79_22 Depth=1
	movswl	%ax, %ecx
	incl	%ebx
	movslq	%ebx, %rax
	movswl	56(%r10,%rax,2), %eax
	subl	%ecx, %eax
	imull	%edi, %eax
	shrl	$7, %eax
	addl	%ecx, %eax
	jmp	.LBB79_27
	.align	16, 0x90
.LBB79_34:                              # %cond.end
                                        #   in Loop: Header=BB79_22 Depth=1
	addl	%edi, %edi
	movl	%edi, %ebp
.LBB79_27:                              # %cond.end.39
                                        #   in Loop: Header=BB79_22 Depth=1
	cwtl
	shrl	$11, %eax
	addl	%ebp, %eax
	movw	%ax, (%rdx)
	addq	$2, %r14
	addq	$2, %rdx
	addq	$8, %r11
	decl	%r15d
	jne	.LBB79_22
	jmp	.LBB79_30
.LBB79_13:                              # %for.cond.47.preheader
	testl	%r15d, %r15d
	jle	.LBB79_30
# BB#14:                                # %for.body.50.preheader
	movq	24(%rsp), %rax          # 8-byte Reload
	leaq	496(%rax), %r11
	leaq	32(%rsp), %rcx
	movl	$gs_identity_transfer, %r8d
	.align	16, 0x90
.LBB79_15:                              # %for.body.50
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r11), %r10
	movw	$32760, %di             # imm = 0x7FF8
	subw	(%r14), %di
	cmpq	%r8, 24(%r10)
	movswl	%di, %eax
	je	.LBB79_28
# BB#16:                                # %cond.false.63
                                        #   in Loop: Header=BB79_15 Depth=1
	movl	%eax, %esi
	sarl	$12, %esi
	addl	%eax, %esi
	movl	%esi, %edx
	sarl	$8, %edx
	subl	%edx, %esi
	movl	%esi, %ebp
	sarl	$7, %ebp
	movslq	%ebp, %r9
	movw	56(%r10,%r9,2), %di
	movl	%esi, %ebx
	andl	$65408, %ebx            # imm = 0xFF80
	movl	%esi, %edx
	shrl	$8, %edx
	shrl	$12, %esi
	subl	%esi, %edx
	addl	%ebx, %edx
	movswl	%dx, %ebx
	movl	%eax, %esi
	subl	%ebx, %esi
	je	.LBB79_18
# BB#17:                                # %if.end.i.110
                                        #   in Loop: Header=BB79_15 Depth=1
	movswl	%di, %ebx
	leal	1(%rbp), %edi
	movslq	%edi, %rdi
	movswl	56(%r10,%rdi,2), %edi
	subl	%ebx, %edi
	imull	%esi, %edi
	shrl	$7, %edi
	addl	%ebx, %edi
.LBB79_18:                              # %cond.false.93
                                        #   in Loop: Header=BB79_15 Depth=1
	movswl	%di, %esi
	movl	$32760, %ebx            # imm = 0x7FF8
	subl	%esi, %ebx
	addl	%ebx, %ebx
	movw	56(%r10,%r9,2), %di
	movswl	%dx, %edx
	subl	%edx, %eax
	je	.LBB79_29
# BB#19:                                # %if.end.i.140
                                        #   in Loop: Header=BB79_15 Depth=1
	movswl	%di, %edx
	incl	%ebp
	movslq	%ebp, %rsi
	movswl	56(%r10,%rsi,2), %edi
	subl	%edx, %edi
	imull	%eax, %edi
	shrl	$7, %edi
	addl	%edx, %edi
	jmp	.LBB79_29
	.align	16, 0x90
.LBB79_28:                              # %cond.end.76
                                        #   in Loop: Header=BB79_15 Depth=1
	movl	$32760, %ebx            # imm = 0x7FF8
	subl	%eax, %ebx
	addl	%ebx, %ebx
.LBB79_29:                              # %cond.end.106
                                        #   in Loop: Header=BB79_15 Depth=1
	movswl	%di, %eax
	movl	$32760, %edx            # imm = 0x7FF8
	subl	%eax, %edx
	shrl	$11, %edx
	addl	%ebx, %edx
	movw	%dx, (%rcx)
	addq	$2, %r14
	addq	$2, %rcx
	addq	$8, %r11
	decl	%r15d
	jne	.LBB79_15
.LBB79_30:                              # %if.end
	leaq	32(%rsp), %rsi
	movq	%r13, %rdi
	callq	*1552(%r13)
	cmpq	$-1, %rax
	je	.LBB79_32
# BB#31:                                # %if.then.123
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 8(%rcx)
	movq	$gx_dc_type_data_pure, (%rcx)
	jmp	.LBB79_33
.LBB79_32:                              # %if.else.124
	movl	352(%rsp), %eax
	movl	%eax, (%rsp)
	movl	12(%rsp), %edi          # 4-byte Reload
	movl	%r12d, %esi
	movl	8(%rsp), %edx           # 4-byte Reload
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	24(%rsp), %r8           # 8-byte Reload
	movq	%r13, %r9
	callq	cmap_rgb_halftoned
.LBB79_33:                              # %if.end.125
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end79:
	.size	cmap_rgb_direct, .Lfunc_end79-cmap_rgb_direct
	.cfi_endproc

	.align	16, 0x90
	.type	cmap_cmyk_direct,@function
cmap_cmyk_direct:                       # @cmap_cmyk_direct
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp150:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp151:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp152:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp153:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp154:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp155:
	.cfi_def_cfa_offset 56
	subq	$296, %rsp              # imm = 0x128
.Ltmp156:
	.cfi_def_cfa_offset 352
.Ltmp157:
	.cfi_offset %rbx, -56
.Ltmp158:
	.cfi_offset %r12, -48
.Ltmp159:
	.cfi_offset %r13, -40
.Ltmp160:
	.cfi_offset %r14, -32
.Ltmp161:
	.cfi_offset %r15, -24
.Ltmp162:
	.cfi_offset %rbp, -16
	movq	%r9, 16(%rsp)           # 8-byte Spill
	movq	%r8, 8(%rsp)            # 8-byte Spill
	movl	%ecx, %ebp
	movl	%edx, %r12d
	movl	%esi, %r13d
	movl	%edi, %r14d
	movq	352(%rsp), %r8
	movabsq	$8589934576, %r9        # imm = 0x1FFFFFFF0
	movl	100(%r8), %r15d
	testl	%r15d, %r15d
	jle	.LBB80_13
# BB#1:                                 # %for.body.preheader
	leal	-1(%r15), %ecx
	leaq	1(%rcx), %rax
	xorl	%esi, %esi
	movq	%rax, %rdx
	andq	%r9, %rdx
	je	.LBB80_10
# BB#2:                                 # %vector.body.preheader
	movl	%ebp, %r10d
	leaq	1(%rcx), %rbp
	andq	%r9, %rbp
	addq	$-16, %rbp
	movl	%ebp, %esi
	shrl	$4, %esi
	incl	%esi
	xorl	%edi, %edi
	testb	$3, %sil
	je	.LBB80_5
# BB#3:                                 # %vector.body.prol.preheader
	movl	%r15d, %ebx
	andl	$48, %ebx
	addl	$-16, %ebx
	shrl	$4, %ebx
	incl	%ebx
	andl	$3, %ebx
	negq	%rbx
	xorl	%edi, %edi
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB80_4:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqa	%xmm0, 160(%rsp,%rdi,2)
	movdqa	%xmm0, 176(%rsp,%rdi,2)
	addq	$16, %rdi
	incq	%rbx
	jne	.LBB80_4
.LBB80_5:                               # %vector.body.preheader.split
	cmpq	$48, %rbp
	jae	.LBB80_7
# BB#6:
	movq	%rdx, %rsi
	movl	%r10d, %ebp
	jmp	.LBB80_10
.LBB80_7:                               # %vector.body.preheader.split.split
	incq	%rcx
	andq	%r9, %rcx
	subq	%rdi, %rcx
	leaq	272(%rsp,%rdi,2), %rsi
	pxor	%xmm0, %xmm0
	movl	%r10d, %ebp
	.align	16, 0x90
.LBB80_8:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqa	%xmm0, -112(%rsi)
	movdqa	%xmm0, -96(%rsi)
	movdqa	%xmm0, -80(%rsi)
	movdqa	%xmm0, -64(%rsi)
	movdqa	%xmm0, -48(%rsi)
	movdqa	%xmm0, -32(%rsi)
	movdqa	%xmm0, -16(%rsi)
	movdqa	%xmm0, (%rsi)
	subq	$-128, %rsi
	addq	$-64, %rcx
	jne	.LBB80_8
# BB#9:
	movq	%rdx, %rsi
.LBB80_10:                              # %middle.block
	cmpq	%rsi, %rax
	je	.LBB80_13
# BB#11:                                # %for.body.preheader242
	leaq	160(%rsp,%rsi,2), %rax
	movl	%r15d, %ecx
	subl	%esi, %ecx
	.align	16, 0x90
.LBB80_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rax)
	addq	$2, %rax
	decl	%ecx
	jne	.LBB80_12
.LBB80_13:                              # %for.end
	movq	%r8, %rbx
	movq	%rbx, %rdi
	callq	*1536(%rbx)
	movswl	%r14w, %esi
	movswl	%r13w, %edx
	movswl	%r12w, %ecx
	movswl	%bp, %r8d
	leaq	160(%rsp), %r14
	movq	%rbx, %rdi
	movq	%r14, %r9
	callq	*16(%rax)
	cmpl	$1, 104(%rbx)
	jne	.LBB80_20
# BB#14:                                # %for.cond.3.preheader
	movq	%rbx, %r12
	testl	%r15d, %r15d
	movq	8(%rsp), %r13           # 8-byte Reload
	jle	.LBB80_36
# BB#15:                                # %for.body.5.preheader
	movq	16(%rsp), %rax          # 8-byte Reload
	leaq	496(%rax), %rax
	leaq	160(%rsp), %rcx
	movl	$gs_identity_transfer, %r8d
	movl	%r15d, %r11d
	.align	16, 0x90
.LBB80_16:                              # %for.body.5
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax), %r9
	cmpq	%r8, 24(%r9)
	movw	(%rcx), %di
	je	.LBB80_19
# BB#17:                                # %cond.false
                                        #   in Loop: Header=BB80_16 Depth=1
	movswl	%di, %r10d
	movl	%r10d, %ebx
	sarl	$12, %ebx
	addl	%r10d, %ebx
	movl	%ebx, %edx
	sarl	$8, %edx
	subl	%edx, %ebx
	movl	%ebx, %edx
	sarl	$7, %edx
	movslq	%edx, %rdi
	movw	56(%r9,%rdi,2), %di
	movl	%ebx, %ebp
	andl	$65408, %ebp            # imm = 0xFF80
	movl	%ebx, %esi
	shrl	$8, %esi
	shrl	$12, %ebx
	subl	%ebx, %esi
	addl	%ebp, %esi
	movswl	%si, %esi
	subl	%esi, %r10d
	je	.LBB80_19
# BB#18:                                # %if.end.i
                                        #   in Loop: Header=BB80_16 Depth=1
	movswl	%di, %esi
	incl	%edx
	movslq	%edx, %rdx
	movswl	56(%r9,%rdx,2), %edi
	subl	%esi, %edi
	imull	%r10d, %edi
	shrl	$7, %edi
	addl	%esi, %edi
.LBB80_19:                              # %cond.end
                                        #   in Loop: Header=BB80_16 Depth=1
	movw	%di, (%rcx)
	addq	$2, %rcx
	addq	$8, %rax
	decl	%r11d
	jne	.LBB80_16
	jmp	.LBB80_36
.LBB80_20:                              # %if.else
	movq	368(%rsp), %rbp
	leaq	24(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*1680(%rbx)
	movq	%rbx, %r12
	testq	%rbp, %rbp
	je	.LBB80_21
# BB#27:                                # %land.lhs.true
	movq	24(%rsp), %rax
	movl	152(%rax), %eax
	movq	64(%rbp), %rcx
	testq	%rcx, %rcx
	jne	.LBB80_30
# BB#28:                                # %land.lhs.true.36
	movq	48(%rbp), %rcx
	testq	%rcx, %rcx
	je	.LBB80_21
# BB#29:                                # %if.then.39
	movq	64(%rcx), %rcx
.LBB80_30:                              # %if.end.43
	testl	%eax, %eax
	je	.LBB80_21
# BB#31:                                # %if.end.43
	cmpl	$1, 16(%rcx)
	jne	.LBB80_21
# BB#32:                                # %if.then.47
	movq	1544(%r12), %rbx
	movl	$.L.str.10, %edi
	callq	strlen
	movl	$.L.str.10, %esi
	movl	$1, %ecx
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	*%rbx
	movslq	%eax, %r8
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	496(%rax,%r8,8), %rdx
	movl	$gs_identity_transfer, %esi
	movw	$32760, %cx             # imm = 0x7FF8
	subw	160(%rsp,%r8,2), %cx
	cmpq	%rsi, 24(%rdx)
	je	.LBB80_35
# BB#33:                                # %cond.false.64
	movswl	%cx, %ebp
	movl	%ebp, %esi
	sarl	$12, %esi
	addl	%ebp, %esi
	movl	%esi, %ecx
	sarl	$8, %ecx
	subl	%ecx, %esi
	movl	%esi, %edi
	sarl	$7, %edi
	movslq	%edi, %rcx
	movw	56(%rdx,%rcx,2), %cx
	movl	%esi, %ebx
	andl	$65408, %ebx            # imm = 0xFF80
	movl	%esi, %eax
	shrl	$8, %eax
	shrl	$12, %esi
	subl	%esi, %eax
	addl	%ebx, %eax
	cwtl
	subl	%eax, %ebp
	je	.LBB80_35
# BB#34:                                # %if.end.i.121
	movswl	%cx, %eax
	incl	%edi
	movslq	%edi, %rcx
	movswl	56(%rdx,%rcx,2), %ecx
	subl	%eax, %ecx
	imull	%ebp, %ecx
	shrl	$7, %ecx
	addl	%eax, %ecx
.LBB80_35:                              # %cond.end.77
	movq	8(%rsp), %r13           # 8-byte Reload
	movl	$32760, %eax            # imm = 0x7FF8
	subl	%ecx, %eax
	movw	%ax, 160(%rsp,%r8,2)
	jmp	.LBB80_36
.LBB80_21:                              # %for.cond.84.preheader
	testl	%r15d, %r15d
	movq	8(%rsp), %r13           # 8-byte Reload
	jle	.LBB80_36
# BB#22:                                # %for.body.87.preheader
	movq	16(%rsp), %rax          # 8-byte Reload
	leaq	496(%rax), %rax
	movl	$gs_identity_transfer, %r8d
	movl	%r15d, %edx
	.align	16, 0x90
.LBB80_23:                              # %for.body.87
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax), %r9
	movw	$32760, %si             # imm = 0x7FF8
	subw	(%r14), %si
	cmpq	%r8, 24(%r9)
	je	.LBB80_26
# BB#24:                                # %cond.false.101
                                        #   in Loop: Header=BB80_23 Depth=1
	movswl	%si, %r10d
	movl	%r10d, %ebp
	sarl	$12, %ebp
	addl	%r10d, %ebp
	movl	%ebp, %ecx
	sarl	$8, %ecx
	subl	%ecx, %ebp
	movl	%ebp, %ecx
	sarl	$7, %ecx
	movslq	%ecx, %rsi
	movw	56(%r9,%rsi,2), %si
	movl	%ebp, %ebx
	andl	$65408, %ebx            # imm = 0xFF80
	movl	%ebp, %edi
	shrl	$8, %edi
	shrl	$12, %ebp
	subl	%ebp, %edi
	addl	%ebx, %edi
	movswl	%di, %edi
	subl	%edi, %r10d
	je	.LBB80_26
# BB#25:                                # %if.end.i.151
                                        #   in Loop: Header=BB80_23 Depth=1
	movswl	%si, %edi
	incl	%ecx
	movslq	%ecx, %rcx
	movswl	56(%r9,%rcx,2), %esi
	subl	%edi, %esi
	imull	%r10d, %esi
	shrl	$7, %esi
	addl	%edi, %esi
.LBB80_26:                              # %cond.end.114
                                        #   in Loop: Header=BB80_23 Depth=1
	movl	$32760, %ecx            # imm = 0x7FF8
	subl	%esi, %ecx
	movw	%cx, (%r14)
	addq	$2, %r14
	addq	$8, %rax
	decl	%edx
	jne	.LBB80_23
.LBB80_36:                              # %if.end.124
	movq	%r12, %rbx
	cmpl	$1, 100(%rbx)
	jg	.LBB80_38
# BB#37:                                # %lor.lhs.false
	movzbl	110(%rbx), %eax
	cmpl	$255, %eax
	je	.LBB80_38
# BB#39:                                # %cond.false.135
	leaq	112(%rbx), %rax
	jmp	.LBB80_40
.LBB80_38:                              # %cond.true.133
	leaq	116(%rbx), %rax
.LBB80_40:                              # %cond.end.137
	movl	360(%rsp), %r12d
	cmpl	$30, (%rax)
	jbe	.LBB80_61
# BB#41:                                # %if.end.151
	movl	$11, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rbx, %rdi
	callq	*1664(%rbx)
	testl	%eax, %eax
	je	.LBB80_51
# BB#42:                                # %for.cond.156.preheader
	testl	%r15d, %r15d
	movabsq	$8589934576, %rbp       # imm = 0x1FFFFFFF0
	jle	.LBB80_50
# BB#43:                                # %for.body.159.lr.ph
	leal	-1(%r15), %edi
	leaq	1(%rdi), %rax
	addq	$8, %rbp
	xorl	%edx, %edx
	andq	%rax, %rbp
	je	.LBB80_47
# BB#44:                                # %vector.body190.preheader
	leaq	168(%rsp), %rcx
	leaq	16(%r13), %rdx
	incq	%rdi
	movabsq	$8589934584, %rsi       # imm = 0x1FFFFFFF8
	andq	%rdi, %rsi
	.align	16, 0x90
.LBB80_45:                              # %vector.body190
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rcx), %xmm0         # xmm0 = mem[0],zero
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	movq	(%rcx), %xmm1           # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	movdqa	%xmm0, %xmm2
	paddd	%xmm2, %xmm2
	movdqa	%xmm1, %xmm3
	paddd	%xmm3, %xmm3
	psrld	$11, %xmm0
	psrld	$11, %xmm1
	paddw	%xmm2, %xmm0
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, -8(%rdx)
	paddw	%xmm3, %xmm1
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rdx)
	addq	$16, %rcx
	addq	$16, %rdx
	addq	$-8, %rsi
	jne	.LBB80_45
# BB#46:
	movq	%rbp, %rdx
.LBB80_47:                              # %middle.block191
	cmpq	%rdx, %rax
	je	.LBB80_50
# BB#48:                                # %for.body.159.preheader
	leaq	160(%rsp,%rdx,2), %rax
	leaq	8(%r13,%rdx,2), %rcx
	subl	%edx, %r15d
	.align	16, 0x90
.LBB80_49:                              # %for.body.159
                                        # =>This Inner Loop Header: Depth=1
	movswl	(%rax), %edx
	movl	%edx, %esi
	shrl	$11, %esi
	leal	(%rsi,%rdx,2), %edx
	movw	%dx, (%rcx)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%r15d
	jne	.LBB80_49
.LBB80_50:                              # %for.end.172
	movq	$gx_dc_type_data_devn, (%r13)
	jmp	.LBB80_63
.LBB80_51:                              # %for.cond.175.preheader
	testl	%r15d, %r15d
	movabsq	$8589934576, %rax       # imm = 0x1FFFFFFF0
	jle	.LBB80_59
# BB#52:                                # %for.body.178.preheader
	leal	-1(%r15), %edi
	leaq	1(%rdi), %r8
	addq	$8, %rax
	xorl	%edx, %edx
	andq	%r8, %rax
	je	.LBB80_56
# BB#53:                                # %vector.body215.preheader
	leaq	168(%rsp), %rcx
	leaq	40(%rsp), %rdx
	incq	%rdi
	movabsq	$8589934584, %rsi       # imm = 0x1FFFFFFF8
	andq	%rdi, %rsi
	.align	16, 0x90
.LBB80_54:                              # %vector.body215
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rcx), %xmm0         # xmm0 = mem[0],zero
	punpcklwd	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	movq	(%rcx), %xmm1           # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm1    # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	movdqa	%xmm0, %xmm2
	paddd	%xmm2, %xmm2
	movdqa	%xmm1, %xmm3
	paddd	%xmm3, %xmm3
	psrld	$11, %xmm0
	psrld	$11, %xmm1
	paddw	%xmm2, %xmm0
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, -8(%rdx)
	paddw	%xmm3, %xmm1
	pshuflw	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, (%rdx)
	addq	$16, %rcx
	addq	$16, %rdx
	addq	$-8, %rsi
	jne	.LBB80_54
# BB#55:
	movq	%rax, %rdx
.LBB80_56:                              # %middle.block216
	cmpq	%rdx, %r8
	je	.LBB80_59
# BB#57:                                # %for.body.178.preheader240
	leaq	160(%rsp,%rdx,2), %rax
	leaq	32(%rsp,%rdx,2), %rcx
	subl	%edx, %r15d
	.align	16, 0x90
.LBB80_58:                              # %for.body.178
                                        # =>This Inner Loop Header: Depth=1
	movswl	(%rax), %edx
	movl	%edx, %esi
	shrl	$11, %esi
	leal	(%rsi,%rdx,2), %edx
	movw	%dx, (%rcx)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%r15d
	jne	.LBB80_58
.LBB80_59:                              # %for.end.193
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*1552(%rbx)
	cmpq	$-1, %rax
	je	.LBB80_61
# BB#60:                                # %if.then.200
	movq	%rax, 8(%r13)
	movq	$gx_dc_type_data_pure, (%r13)
	jmp	.LBB80_63
.LBB80_61:                              # %if.else.203
	movq	16(%rsp), %rbp          # 8-byte Reload
	movq	392(%rbp), %rcx
	movslq	%r12d, %rax
	leaq	376(%rbp,%rax,8), %r8
	leaq	160(%rsp), %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	gx_render_device_DeviceN
	cmpl	$1, %eax
	jne	.LBB80_63
# BB#62:                                # %if.then.212
	movq	(%r13), %rax
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	movl	%r12d, %ecx
	callq	*32(%rax)
.LBB80_63:                              # %cleanup
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end80:
	.size	cmap_cmyk_direct, .Lfunc_end80-cmap_cmyk_direct
	.cfi_endproc

	.align	16, 0x90
	.type	cmap_rgb_alpha_direct,@function
cmap_rgb_alpha_direct:                  # @cmap_rgb_alpha_direct
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp163:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp164:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp165:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp166:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp167:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp168:
	.cfi_def_cfa_offset 56
	subq	$312, %rsp              # imm = 0x138
.Ltmp169:
	.cfi_def_cfa_offset 368
.Ltmp170:
	.cfi_offset %rbx, -56
.Ltmp171:
	.cfi_offset %r12, -48
.Ltmp172:
	.cfi_offset %r13, -40
.Ltmp173:
	.cfi_offset %r14, -32
.Ltmp174:
	.cfi_offset %r15, -24
.Ltmp175:
	.cfi_offset %rbp, -16
	movq	%r9, 40(%rsp)           # 8-byte Spill
	movq	%r8, 32(%rsp)           # 8-byte Spill
	movl	%ecx, %r14d
	movl	%edx, 28(%rsp)          # 4-byte Spill
	movl	%esi, %r13d
	movl	%edi, %r15d
	movq	368(%rsp), %rbx
	movl	100(%rbx), %r12d
	testl	%r12d, %r12d
	jle	.LBB81_12
# BB#1:                                 # %for.body.preheader
	movabsq	$8589934576, %r8        # imm = 0x1FFFFFFF0
	leal	-1(%r12), %ecx
	leaq	1(%rcx), %rax
	xorl	%esi, %esi
	movq	%rax, %rdx
	andq	%r8, %rdx
	je	.LBB81_9
# BB#2:                                 # %vector.body.preheader
	leaq	1(%rcx), %rdi
	andq	%r8, %rdi
	addq	$-16, %rdi
	movl	%edi, %esi
	shrl	$4, %esi
	incl	%esi
	xorl	%ebp, %ebp
	testb	$3, %sil
	je	.LBB81_5
# BB#3:                                 # %vector.body.prol.preheader
	movl	%r12d, %esi
	andl	$48, %esi
	addl	$-16, %esi
	shrl	$4, %esi
	incl	%esi
	andl	$3, %esi
	negq	%rsi
	xorl	%ebp, %ebp
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB81_4:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movaps	%xmm0, 176(%rsp,%rbp,2)
	movaps	%xmm0, 192(%rsp,%rbp,2)
	addq	$16, %rbp
	incq	%rsi
	jne	.LBB81_4
.LBB81_5:                               # %vector.body.preheader.split
	cmpq	$48, %rdi
	jb	.LBB81_8
# BB#6:                                 # %vector.body.preheader.split.split
	incq	%rcx
	andq	%r8, %rcx
	subq	%rbp, %rcx
	leaq	288(%rsp,%rbp,2), %rsi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB81_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movaps	%xmm0, -112(%rsi)
	movaps	%xmm0, -96(%rsi)
	movaps	%xmm0, -80(%rsi)
	movaps	%xmm0, -64(%rsi)
	movaps	%xmm0, -48(%rsi)
	movaps	%xmm0, -32(%rsi)
	movaps	%xmm0, -16(%rsi)
	movaps	%xmm0, (%rsi)
	subq	$-128, %rsi
	addq	$-64, %rcx
	jne	.LBB81_7
.LBB81_8:
	movq	%rdx, %rsi
.LBB81_9:                               # %middle.block
	cmpq	%rsi, %rax
	je	.LBB81_12
# BB#10:                                # %for.body.preheader194
	leaq	176(%rsp,%rsi,2), %rax
	movl	%r12d, %ecx
	subl	%esi, %ecx
	.align	16, 0x90
.LBB81_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rax)
	addq	$2, %rax
	decl	%ecx
	jne	.LBB81_11
.LBB81_12:                              # %for.end
	movq	%rbx, %rbp
	movq	%rbp, %rdi
	callq	*1536(%rbp)
	movswl	%r15w, %edx
	movl	%edx, 24(%rsp)          # 4-byte Spill
	movq	%rbp, %rbx
	movswl	%r13w, %ecx
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movl	28(%rsp), %esi          # 4-byte Reload
	movswl	%si, %r8d
	movl	%r8d, 28(%rsp)          # 4-byte Spill
	leaq	176(%rsp), %r15
	movq	%rbx, %rdi
	movq	40(%rsp), %rsi          # 8-byte Reload
	movq	%r15, %r9
	callq	*8(%rax)
	movzwl	%r14w, %ecx
	testl	%r12d, %r12d
	setle	%al
	cmpl	$32760, %ecx            # imm = 0x7FF8
	je	.LBB81_19
# BB#13:                                # %for.end
	testb	%al, %al
	jne	.LBB81_19
# BB#14:                                # %for.body.6.preheader
	xorl	%ecx, %ecx
	testb	$1, %r12b
	je	.LBB81_16
# BB#15:                                # %for.body.6.prol
	movw	176(%rsp), %ax
	imulw	%r14w, %ax
	cwtl
	movswq	%ax, %rcx
	imulq	$-2146959231, %rcx, %rcx # imm = 0xFFFFFFFF80080081
	shrq	$32, %rcx
	addl	%eax, %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	shrl	$14, %ecx
	addl	%eax, %ecx
	movw	%cx, 176(%rsp)
	movl	$1, %ecx
.LBB81_16:                              # %for.body.6.preheader.split
	cmpl	$1, %r12d
	je	.LBB81_19
# BB#17:                                # %for.body.6.preheader.split.split
	movl	%r12d, %eax
	subl	%ecx, %eax
	leaq	2(%rcx,%rcx), %rcx
	leaq	(%rcx,%r15), %rcx
	.align	16, 0x90
.LBB81_18:                              # %for.body.6
                                        # =>This Inner Loop Header: Depth=1
	movw	-2(%rcx), %dx
	imulw	%r14w, %dx
	movswl	%dx, %edx
	movswq	%dx, %rsi
	imulq	$-2146959231, %rsi, %rsi # imm = 0xFFFFFFFF80080081
	shrq	$32, %rsi
	addl	%edx, %esi
	movl	%esi, %edx
	shrl	$31, %edx
	shrl	$14, %esi
	addl	%edx, %esi
	movw	%si, -2(%rcx)
	movw	(%rcx), %dx
	imulw	%r14w, %dx
	movswl	%dx, %edx
	movswq	%dx, %rsi
	imulq	$-2146959231, %rsi, %rsi # imm = 0xFFFFFFFF80080081
	shrq	$32, %rsi
	addl	%edx, %esi
	movl	%esi, %edx
	shrl	$31, %edx
	shrl	$14, %esi
	addl	%edx, %esi
	movw	%si, (%rcx)
	addq	$4, %rcx
	addl	$-2, %eax
	jne	.LBB81_18
.LBB81_19:                              # %if.end
	cmpl	$1, 104(%rbx)
	movq	%rbx, %r13
	jne	.LBB81_20
# BB#27:                                # %for.cond.24.preheader
	testl	%r12d, %r12d
	jle	.LBB81_37
# BB#28:                                # %for.body.27.preheader
	movq	40(%rsp), %rax          # 8-byte Reload
	leaq	496(%rax), %r11
	leaq	176(%rsp), %r15
	leaq	48(%rsp), %rdx
	movl	$gs_identity_transfer, %r8d
	.align	16, 0x90
.LBB81_29:                              # %for.body.27
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r11), %r10
	cmpq	%r8, 24(%r10)
	movw	(%r15), %ax
	movswl	%ax, %edi
	je	.LBB81_45
# BB#30:                                # %cond.false
                                        #   in Loop: Header=BB81_29 Depth=1
	movl	%edi, %ebx
	sarl	$12, %ebx
	addl	%edi, %ebx
	movl	%ebx, %eax
	sarl	$8, %eax
	subl	%eax, %ebx
	movl	%ebx, %ebp
	sarl	$7, %ebp
	movslq	%ebp, %r9
	movw	56(%r10,%r9,2), %ax
	movl	%ebx, %ecx
	andl	$65408, %ecx            # imm = 0xFF80
	movl	%ebx, %esi
	shrl	$8, %esi
	shrl	$12, %ebx
	subl	%ebx, %esi
	addl	%ecx, %esi
	movswl	%si, %ecx
	movl	%edi, %ebx
	subl	%ecx, %ebx
	je	.LBB81_32
# BB#31:                                # %if.end.i
                                        #   in Loop: Header=BB81_29 Depth=1
	movswl	%ax, %ecx
	leal	1(%rbp), %eax
	cltq
	movswl	56(%r10,%rax,2), %eax
	subl	%ecx, %eax
	imull	%ebx, %eax
	shrl	$7, %eax
	addl	%ecx, %eax
.LBB81_32:                              # %cond.false.53
                                        #   in Loop: Header=BB81_29 Depth=1
	movswl	%ax, %ebx
	addl	%ebx, %ebx
	movw	56(%r10,%r9,2), %ax
	movswl	%si, %ecx
	subl	%ecx, %edi
	je	.LBB81_34
# BB#33:                                # %if.end.i.95
                                        #   in Loop: Header=BB81_29 Depth=1
	movswl	%ax, %ecx
	incl	%ebp
	movslq	%ebp, %rax
	movswl	56(%r10,%rax,2), %eax
	subl	%ecx, %eax
	imull	%edi, %eax
	shrl	$7, %eax
	addl	%ecx, %eax
	jmp	.LBB81_34
	.align	16, 0x90
.LBB81_45:                              # %cond.end
                                        #   in Loop: Header=BB81_29 Depth=1
	addl	%edi, %edi
	movl	%edi, %ebx
.LBB81_34:                              # %cond.end.63
                                        #   in Loop: Header=BB81_29 Depth=1
	cwtl
	shrl	$11, %eax
	addl	%ebx, %eax
	movw	%ax, (%rdx)
	addq	$2, %r15
	addq	$2, %rdx
	addq	$8, %r11
	decl	%r12d
	jne	.LBB81_29
	jmp	.LBB81_37
.LBB81_20:                              # %for.cond.72.preheader
	testl	%r12d, %r12d
	jle	.LBB81_37
# BB#21:                                # %for.body.75.preheader
	movq	40(%rsp), %rax          # 8-byte Reload
	leaq	496(%rax), %r11
	leaq	48(%rsp), %rcx
	movl	$gs_identity_transfer, %r8d
	.align	16, 0x90
.LBB81_22:                              # %for.body.75
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r11), %r10
	movw	$32760, %di             # imm = 0x7FF8
	subw	(%r15), %di
	cmpq	%r8, 24(%r10)
	movswl	%di, %eax
	je	.LBB81_35
# BB#23:                                # %cond.false.88
                                        #   in Loop: Header=BB81_22 Depth=1
	movl	%eax, %esi
	sarl	$12, %esi
	addl	%eax, %esi
	movl	%esi, %edx
	sarl	$8, %edx
	subl	%edx, %esi
	movl	%esi, %ebx
	sarl	$7, %ebx
	movslq	%ebx, %r9
	movw	56(%r10,%r9,2), %di
	movl	%esi, %ebp
	andl	$65408, %ebp            # imm = 0xFF80
	movl	%esi, %edx
	shrl	$8, %edx
	shrl	$12, %esi
	subl	%esi, %edx
	addl	%ebp, %edx
	movswl	%dx, %ebp
	movl	%eax, %esi
	subl	%ebp, %esi
	je	.LBB81_25
# BB#24:                                # %if.end.i.125
                                        #   in Loop: Header=BB81_22 Depth=1
	movswl	%di, %ebp
	leal	1(%rbx), %edi
	movslq	%edi, %rdi
	movswl	56(%r10,%rdi,2), %edi
	subl	%ebp, %edi
	imull	%esi, %edi
	shrl	$7, %edi
	addl	%ebp, %edi
.LBB81_25:                              # %cond.false.118
                                        #   in Loop: Header=BB81_22 Depth=1
	movswl	%di, %esi
	movl	$32760, %ebp            # imm = 0x7FF8
	subl	%esi, %ebp
	addl	%ebp, %ebp
	movw	56(%r10,%r9,2), %di
	movswl	%dx, %edx
	subl	%edx, %eax
	je	.LBB81_36
# BB#26:                                # %if.end.i.155
                                        #   in Loop: Header=BB81_22 Depth=1
	movswl	%di, %edx
	incl	%ebx
	movslq	%ebx, %rsi
	movswl	56(%r10,%rsi,2), %edi
	subl	%edx, %edi
	imull	%eax, %edi
	shrl	$7, %edi
	addl	%edx, %edi
	jmp	.LBB81_36
	.align	16, 0x90
.LBB81_35:                              # %cond.end.101
                                        #   in Loop: Header=BB81_22 Depth=1
	movl	$32760, %ebp            # imm = 0x7FF8
	subl	%eax, %ebp
	addl	%ebp, %ebp
.LBB81_36:                              # %cond.end.131
                                        #   in Loop: Header=BB81_22 Depth=1
	movswl	%di, %eax
	movl	$32760, %edx            # imm = 0x7FF8
	subl	%eax, %edx
	shrl	$11, %edx
	addl	%ebp, %edx
	movw	%dx, (%rcx)
	addq	$2, %r15
	addq	$2, %rcx
	addq	$8, %r11
	decl	%r12d
	jne	.LBB81_22
.LBB81_37:                              # %if.end.142
	movswl	%r14w, %ebp
	movq	1288(%r13), %rax
	movl	$gx_default_map_rgb_alpha_color, %ecx
	cmpq	%rcx, %rax
	je	.LBB81_40
# BB#38:                                # %land.lhs.true
	movl	%ebp, %ecx
	shrl	$11, %ecx
	leal	(%rcx,%rbp,2), %ecx
	movzwl	%cx, %edx
	cmpl	$65535, %edx            # imm = 0xFFFF
	jne	.LBB81_39
.LBB81_40:                              # %if.else.162
	leaq	48(%rsp), %rsi
	movq	%r13, %rdi
	callq	*1552(%r13)
	jmp	.LBB81_41
.LBB81_39:                              # %if.then.155
	movq	48(%rsp), %rsi
	movl	%esi, %edx
	shrl	$16, %edx
	movq	%rsi, %rdi
	shrq	$32, %rdi
	movzwl	%cx, %r8d
	movzwl	%si, %esi
	movzwl	%di, %ecx
	movq	%r13, %rdi
	callq	*%rax
.LBB81_41:                              # %if.end.167
	cmpq	$-1, %rax
	je	.LBB81_43
# BB#42:                                # %if.then.170
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 8(%rcx)
	movq	$gx_dc_type_data_pure, (%rcx)
	jmp	.LBB81_44
.LBB81_43:                              # %if.else.171
	movl	376(%rsp), %eax
	movl	%eax, 8(%rsp)
	movq	%r13, (%rsp)
	movl	24(%rsp), %edi          # 4-byte Reload
	movl	20(%rsp), %esi          # 4-byte Reload
	movl	28(%rsp), %edx          # 4-byte Reload
	movl	%ebp, %ecx
	movq	32(%rsp), %r8           # 8-byte Reload
	movq	40(%rsp), %r9           # 8-byte Reload
	callq	cmap_rgb_alpha_halftoned
.LBB81_44:                              # %if.end.172
	addq	$312, %rsp              # imm = 0x138
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end81:
	.size	cmap_rgb_alpha_direct, .Lfunc_end81-cmap_rgb_alpha_direct
	.cfi_endproc

	.align	16, 0x90
	.type	cmap_separation_direct,@function
cmap_separation_direct:                 # @cmap_separation_direct
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp176:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp177:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp178:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp179:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp180:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp181:
	.cfi_def_cfa_offset 56
	subq	$648, %rsp              # imm = 0x288
.Ltmp182:
	.cfi_def_cfa_offset 704
.Ltmp183:
	.cfi_offset %rbx, -56
.Ltmp184:
	.cfi_offset %r12, -48
.Ltmp185:
	.cfi_offset %r13, -40
.Ltmp186:
	.cfi_offset %r14, -32
.Ltmp187:
	.cfi_offset %r15, -24
.Ltmp188:
	.cfi_offset %rbp, -16
	movl	%r8d, 28(%rsp)          # 4-byte Spill
	movq	%rcx, %rbx
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	movq	%rdx, %rbp
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movl	%edi, 44(%rsp)          # 4-byte Spill
	movabsq	$8589934576, %r12       # imm = 0x1FFFFFFF0
	movl	100(%rbx), %r14d
	movl	104(%rbx), %r15d
	movq	$0, 352(%rsp)
	movq	$0, 344(%rsp)
	leaq	352(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*1680(%rbx)
	movl	1112(%rbx), %edi
	movq	352(%rsp), %rsi
	leaq	344(%rsp), %rdx
	leaq	360(%rsp), %rcx
	callq	gsicc_extract_profile
	testl	%r14d, %r14d
	jle	.LBB82_12
# BB#1:                                 # %for.body.preheader
	leal	-1(%r14), %ecx
	leaq	1(%rcx), %rax
	xorl	%esi, %esi
	movq	%rax, %rdx
	andq	%r12, %rdx
	je	.LBB82_9
# BB#2:                                 # %vector.body.preheader
	movq	%rbp, %r8
	leaq	1(%rcx), %rbx
	andq	%r12, %rbx
	addq	$-16, %rbx
	movl	%ebx, %esi
	shrl	$4, %esi
	incl	%esi
	xorl	%edi, %edi
	testb	$3, %sil
	je	.LBB82_5
# BB#3:                                 # %vector.body.prol.preheader
	movl	%r14d, %ebp
	andl	$48, %ebp
	addl	$-16, %ebp
	shrl	$4, %ebp
	incl	%ebp
	andl	$3, %ebp
	negq	%rbp
	xorl	%edi, %edi
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB82_4:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqa	%xmm0, 512(%rsp,%rdi,2)
	movdqa	%xmm0, 528(%rsp,%rdi,2)
	addq	$16, %rdi
	incq	%rbp
	jne	.LBB82_4
.LBB82_5:                               # %vector.body.preheader.split
	cmpq	$48, %rbx
	jb	.LBB82_8
# BB#6:                                 # %vector.body.preheader.split.split
	incq	%rcx
	andq	%r12, %rcx
	subq	%rdi, %rcx
	leaq	624(%rsp,%rdi,2), %rsi
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB82_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqa	%xmm0, -112(%rsi)
	movdqa	%xmm0, -96(%rsi)
	movdqa	%xmm0, -80(%rsi)
	movdqa	%xmm0, -64(%rsi)
	movdqa	%xmm0, -48(%rsi)
	movdqa	%xmm0, -32(%rsi)
	movdqa	%xmm0, -16(%rsi)
	movdqa	%xmm0, (%rsi)
	subq	$-128, %rsi
	addq	$-64, %rcx
	jne	.LBB82_7
.LBB82_8:
	movq	%rdx, %rsi
	movq	%r8, %rbp
.LBB82_9:                               # %middle.block
	cmpq	%rsi, %rax
	je	.LBB82_12
# BB#10:                                # %for.body.preheader383
	leaq	512(%rsp,%rsi,2), %rax
	movl	%r14d, %ecx
	subl	%esi, %ecx
	.align	16, 0x90
.LBB82_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rax)
	addq	$2, %rax
	decl	%ecx
	jne	.LBB82_11
.LBB82_12:                              # %for.end
	cmpl	$1, 1028(%rbp)
	jne	.LBB82_36
# BB#13:                                # %if.then
	movl	$32760, %eax            # imm = 0x7FF8
	movl	44(%rsp), %ecx          # 4-byte Reload
	subl	%ecx, %eax
	cmpl	$1, %r15d
	cmovnew	%cx, %ax
	movl	1036(%rbp), %ebx
	movl	%ebx, %edi
	decl	%edi
	js	.LBB82_25
# BB#14:                                # %for.body.14.lr.ph
	movslq	%edi, %r11
	leaq	1(%rdi), %r10
	movq	%r10, %rcx
	andq	%r12, %rcx
	xorl	%edx, %edx
	movq	%r10, %r9
	andq	%r12, %r9
	je	.LBB82_22
# BB#15:                                # %vector.ph277
	movq	%rbp, %r13
	movd	%eax, %xmm0
	leal	-1(%rbx), %r8d
	leaq	1(%r8), %rbp
	andq	%r12, %rbp
	addq	$-16, %rbp
	movl	%ebp, %esi
	shrl	$4, %esi
	incl	%esi
	xorl	%edx, %edx
	testb	$3, %sil
	je	.LBB82_18
# BB#16:                                # %vector.body267.prol.preheader
	pshufd	$196, %xmm0, %xmm1      # xmm1 = xmm0[0,1,0,3]
	pshuflw	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0,4,5,6,7]
	pshufhw	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,1,2,3,4,4,4,4]
	movslq	%r8d, %rdx
	leaq	498(%rsp,%rdx,2), %rsi
	andl	$48, %ebx
	addl	$-16, %ebx
	shrl	$4, %ebx
	incl	%ebx
	andl	$3, %ebx
	negq	%rbx
	xorl	%edx, %edx
	.align	16, 0x90
.LBB82_17:                              # %vector.body267.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm1, (%rsi)
	movdqu	%xmm1, -16(%rsi)
	addq	$16, %rdx
	addq	$-32, %rsi
	incq	%rbx
	jne	.LBB82_17
.LBB82_18:                              # %vector.ph277.split
	movq	%r11, %rsi
	subq	%rcx, %rsi
	movl	%r11d, %edi
	subl	%ecx, %edi
	cmpq	$48, %rbp
	jb	.LBB82_21
# BB#19:                                # %vector.ph277.split.split
	pshufd	$196, %xmm0, %xmm0      # xmm0 = xmm0[0,1,0,3]
	pshuflw	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufhw	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,1,2,3,4,4,4,4]
	leaq	1(%r8), %rcx
	andq	%r12, %rcx
	subq	%rdx, %rcx
	movslq	%r8d, %rbp
	addq	$-7, %rbp
	subq	%rdx, %rbp
	leaq	512(%rsp,%rbp,2), %rdx
	.align	16, 0x90
.LBB82_20:                              # %vector.body267
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, (%rdx)
	movdqu	%xmm0, -16(%rdx)
	movdqu	%xmm0, -32(%rdx)
	movdqu	%xmm0, -48(%rdx)
	movdqu	%xmm0, -64(%rdx)
	movdqu	%xmm0, -80(%rdx)
	movdqu	%xmm0, -96(%rdx)
	movdqu	%xmm0, -112(%rdx)
	addq	$-128, %rdx
	addq	$-64, %rcx
	jne	.LBB82_20
.LBB82_21:
	movq	%rsi, %r11
	movq	%r9, %rdx
	movq	%r13, %rbp
.LBB82_22:                              # %middle.block268
	cmpq	%rdx, %r10
	je	.LBB82_25
# BB#23:                                # %for.body.14.preheader
	leaq	512(%rsp,%r11,2), %rcx
	.align	16, 0x90
.LBB82_24:                              # %for.body.14
                                        # =>This Inner Loop Header: Depth=1
	movw	%ax, (%rcx)
	addq	$-2, %rcx
	decl	%edi
	jns	.LBB82_24
.LBB82_25:                              # %for.end.18
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	movq	344(%rsp), %rax
	cmpl	$6, 16(%rax)
	je	.LBB82_27
# BB#26:                                # %lor.lhs.false
	xorl	%edi, %edi
	cmpl	$0, 4(%rax)
	je	.LBB82_28
.LBB82_27:                              # %if.then.22
	movl	$1, %edi
	jmp	.LBB82_28
.LBB82_36:                              # %if.else
	movl	1036(%rbp), %edi
	movl	%edi, %esi
	decl	%esi
	js	.LBB82_48
# BB#37:                                # %for.body.lr.ph.i
	movslq	%esi, %rdx
	leaq	1(%rsi), %r9
	movq	%r9, %rax
	andq	%r12, %rax
	xorl	%ecx, %ecx
	movq	%r9, %r10
	andq	%r12, %r10
	je	.LBB82_45
# BB#38:                                # %vector.body238.preheader
	movq	%rbp, %r11
	leal	-1(%rdi), %r8d
	leaq	1(%r8), %rbp
	andq	%r12, %rbp
	addq	$-16, %rbp
	movl	%ebp, %ecx
	shrl	$4, %ecx
	incl	%ecx
	xorl	%ebx, %ebx
	testb	$3, %cl
	je	.LBB82_41
# BB#39:                                # %vector.body238.prol.preheader
	movslq	%r8d, %rcx
	leaq	498(%rsp,%rcx,2), %rsi
	andl	$48, %edi
	addl	$-16, %edi
	shrl	$4, %edi
	incl	%edi
	andl	$3, %edi
	negq	%rdi
	xorl	%ebx, %ebx
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB82_40:                              # %vector.body238.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, (%rsi)
	movdqu	%xmm0, -16(%rsi)
	addq	$16, %rbx
	addq	$-32, %rsi
	incq	%rdi
	jne	.LBB82_40
.LBB82_41:                              # %vector.body238.preheader.split
	movq	%rdx, %rdi
	subq	%rax, %rdi
	movl	%edx, %esi
	subl	%eax, %esi
	cmpq	$48, %rbp
	jb	.LBB82_44
# BB#42:                                # %vector.body238.preheader.split.split
	leaq	1(%r8), %rax
	andq	%r12, %rax
	subq	%rbx, %rax
	movslq	%r8d, %rcx
	addq	$-7, %rcx
	subq	%rbx, %rcx
	leaq	512(%rsp,%rcx,2), %rdx
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB82_43:                              # %vector.body238
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, (%rdx)
	movdqu	%xmm0, -16(%rdx)
	movdqu	%xmm0, -32(%rdx)
	movdqu	%xmm0, -48(%rdx)
	movdqu	%xmm0, -64(%rdx)
	movdqu	%xmm0, -80(%rdx)
	movdqu	%xmm0, -96(%rdx)
	movdqu	%xmm0, -112(%rdx)
	addq	$-128, %rdx
	addq	$-64, %rax
	jne	.LBB82_43
.LBB82_44:
	movq	%rdi, %rdx
	movq	%r10, %rcx
	movq	%r11, %rbp
.LBB82_45:                              # %middle.block239
	cmpq	%rcx, %r9
	je	.LBB82_48
# BB#46:                                # %for.body.i.preheader
	leaq	512(%rsp,%rdx,2), %rax
	.align	16, 0x90
.LBB82_47:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rax)
	addq	$-2, %rax
	decl	%esi
	jns	.LBB82_47
.LBB82_48:                              # %for.end.i
	movl	1032(%rbp), %ecx
	xorl	%edi, %edi
	movl	%ecx, %eax
	decl	%eax
	js	.LBB82_49
# BB#50:                                # %for.body.4.lr.ph.i
	movslq	%eax, %rdx
	testb	$1, %cl
	jne	.LBB82_52
# BB#51:
	movl	44(%rsp), %esi          # 4-byte Reload
	jmp	.LBB82_55
.LBB82_49:
	movq	%rbp, 48(%rsp)          # 8-byte Spill
	jmp	.LBB82_28
.LBB82_52:                              # %for.body.4.i.prol
	movslq	1048(%rbp,%rdx,4), %rax
	testq	%rax, %rax
	movl	44(%rsp), %esi          # 4-byte Reload
	js	.LBB82_54
# BB#53:                                # %if.then.i.prol
	movw	%si, 512(%rsp,%rax,2)
.LBB82_54:                              # %for.cond.2.backedge.i.prol
	leal	-2(%rcx), %eax
	decq	%rdx
.LBB82_55:                              # %for.body.4.lr.ph.i.split
	cmpl	$1, %ecx
	je	.LBB82_56
# BB#57:                                # %for.body.4.lr.ph.i.split.split
	leaq	1048(%rbp,%rdx,4), %rcx
	.align	16, 0x90
.LBB82_58:                              # %for.body.4.i
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rcx), %rdx
	testq	%rdx, %rdx
	js	.LBB82_59
# BB#62:                                # %if.then.i
                                        #   in Loop: Header=BB82_58 Depth=1
	movw	%si, 512(%rsp,%rdx,2)
.LBB82_59:                              # %for.cond.2.backedge.i
                                        #   in Loop: Header=BB82_58 Depth=1
	movslq	-4(%rcx), %rdx
	testq	%rdx, %rdx
	js	.LBB82_61
# BB#60:                                # %if.then.i.1
                                        #   in Loop: Header=BB82_58 Depth=1
	movw	%si, 512(%rsp,%rdx,2)
.LBB82_61:                              # %for.cond.2.backedge.i.1
                                        #   in Loop: Header=BB82_58 Depth=1
	addq	$-8, %rcx
	addl	$-2, %eax
	jns	.LBB82_58
.LBB82_56:
	movl	%esi, 44(%rsp)          # 4-byte Spill
	movq	%rbp, 48(%rsp)          # 8-byte Spill
.LBB82_28:                              # %if.end.25
	cmpl	$1, %r15d
	jne	.LBB82_29
# BB#63:                                # %for.cond.28.preheader
	movl	%edi, 40(%rsp)          # 4-byte Spill
	testl	%r14d, %r14d
	jle	.LBB82_73
# BB#64:                                # %for.body.31.preheader
	movq	48(%rsp), %rax          # 8-byte Reload
	leaq	496(%rax), %r15
	leaq	512(%rsp), %r12
	leaq	384(%rsp), %rsi
	movl	$gs_identity_transfer, %r9d
	movl	%r14d, %r11d
	.align	16, 0x90
.LBB82_65:                              # %for.body.31
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %r8
	cmpq	%r9, 24(%r8)
	movw	(%r12), %cx
	movswl	%cx, %eax
	je	.LBB82_115
# BB#66:                                # %cond.false
                                        #   in Loop: Header=BB82_65 Depth=1
	movl	%eax, %ebp
	sarl	$12, %ebp
	addl	%eax, %ebp
	movl	%ebp, %ecx
	sarl	$8, %ecx
	subl	%ecx, %ebp
	movl	%ebp, %edi
	sarl	$7, %edi
	movslq	%edi, %r10
	movw	56(%r8,%r10,2), %cx
	movl	%ebp, %r13d
	andl	$65408, %r13d           # imm = 0xFF80
	movl	%ebp, %ebx
	shrl	$8, %ebx
	shrl	$12, %ebp
	subl	%ebp, %ebx
	addl	%r13d, %ebx
	movswl	%bx, %edx
	movl	%eax, %ebp
	subl	%edx, %ebp
	je	.LBB82_68
# BB#67:                                # %if.end.i
                                        #   in Loop: Header=BB82_65 Depth=1
	movswl	%cx, %edx
	leal	1(%rdi), %ecx
	movslq	%ecx, %rcx
	movswl	56(%r8,%rcx,2), %ecx
	subl	%edx, %ecx
	imull	%ebp, %ecx
	shrl	$7, %ecx
	addl	%edx, %ecx
.LBB82_68:                              # %cond.false.57
                                        #   in Loop: Header=BB82_65 Depth=1
	movswl	%cx, %ebp
	addl	%ebp, %ebp
	movw	56(%r8,%r10,2), %cx
	movswl	%bx, %edx
	subl	%edx, %eax
	je	.LBB82_70
# BB#69:                                # %if.end.i.121
                                        #   in Loop: Header=BB82_65 Depth=1
	movswl	%cx, %edx
	incl	%edi
	movslq	%edi, %rcx
	movswl	56(%r8,%rcx,2), %ecx
	subl	%edx, %ecx
	imull	%eax, %ecx
	shrl	$7, %ecx
	addl	%edx, %ecx
	jmp	.LBB82_70
	.align	16, 0x90
.LBB82_115:                             # %cond.end
                                        #   in Loop: Header=BB82_65 Depth=1
	addl	%eax, %eax
	movl	%eax, %ebp
.LBB82_70:                              # %cond.end.67
                                        #   in Loop: Header=BB82_65 Depth=1
	movswl	%cx, %eax
	shrl	$11, %eax
	addl	%ebp, %eax
	movw	%ax, (%rsi)
	addq	$2, %r12
	addq	$2, %rsi
	addq	$8, %r15
	decl	%r11d
	jne	.LBB82_65
	jmp	.LBB82_73
.LBB82_29:                              # %for.cond.76.preheader
	movl	%edi, 40(%rsp)          # 4-byte Spill
	testl	%r14d, %r14d
	jle	.LBB82_73
# BB#30:                                # %for.body.79.preheader
	movq	48(%rsp), %rax          # 8-byte Reload
	leaq	496(%rax), %r8
	leaq	512(%rsp), %r12
	leaq	384(%rsp), %rsi
	movl	$gs_identity_transfer, %r9d
	movl	%r14d, %r10d
	.align	16, 0x90
.LBB82_31:                              # %for.body.79
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r8), %r15
	movw	$32760, %cx             # imm = 0x7FF8
	subw	(%r12), %cx
	cmpq	%r9, 24(%r15)
	movswl	%cx, %eax
	je	.LBB82_71
# BB#32:                                # %cond.false.93
                                        #   in Loop: Header=BB82_31 Depth=1
	movl	%eax, %ebx
	sarl	$12, %ebx
	addl	%eax, %ebx
	movl	%ebx, %ecx
	sarl	$8, %ecx
	subl	%ecx, %ebx
	movl	%ebx, %edi
	sarl	$7, %edi
	movslq	%edi, %r11
	movw	56(%r15,%r11,2), %cx
	movl	%ebx, %edx
	andl	$65408, %edx            # imm = 0xFF80
	movl	%ebx, %ebp
	shrl	$8, %ebp
	shrl	$12, %ebx
	subl	%ebx, %ebp
	addl	%edx, %ebp
	movswl	%bp, %edx
	movl	%eax, %ebx
	subl	%edx, %ebx
	je	.LBB82_34
# BB#33:                                # %if.end.i.151
                                        #   in Loop: Header=BB82_31 Depth=1
	movswl	%cx, %edx
	leal	1(%rdi), %ecx
	movslq	%ecx, %rcx
	movswl	56(%r15,%rcx,2), %ecx
	subl	%edx, %ecx
	imull	%ebx, %ecx
	shrl	$7, %ecx
	addl	%edx, %ecx
.LBB82_34:                              # %cond.false.123
                                        #   in Loop: Header=BB82_31 Depth=1
	movswl	%cx, %ecx
	movl	$32760, %ebx            # imm = 0x7FF8
	subl	%ecx, %ebx
	addl	%ebx, %ebx
	movw	56(%r15,%r11,2), %cx
	movswl	%bp, %edx
	subl	%edx, %eax
	je	.LBB82_72
# BB#35:                                # %if.end.i.181
                                        #   in Loop: Header=BB82_31 Depth=1
	movswl	%cx, %edx
	incl	%edi
	movslq	%edi, %rcx
	movswl	56(%r15,%rcx,2), %ecx
	subl	%edx, %ecx
	imull	%eax, %ecx
	shrl	$7, %ecx
	addl	%edx, %ecx
	jmp	.LBB82_72
	.align	16, 0x90
.LBB82_71:                              # %cond.end.106
                                        #   in Loop: Header=BB82_31 Depth=1
	movl	$32760, %ebx            # imm = 0x7FF8
	subl	%eax, %ebx
	addl	%ebx, %ebx
.LBB82_72:                              # %cond.end.136
                                        #   in Loop: Header=BB82_31 Depth=1
	movswl	%cx, %eax
	movl	$32760, %ecx            # imm = 0x7FF8
	subl	%eax, %ecx
	shrl	$11, %ecx
	addl	%ebx, %ecx
	movw	%cx, (%rsi)
	addq	$2, %r12
	addq	$2, %rsi
	addq	$8, %r8
	decl	%r10d
	jne	.LBB82_31
.LBB82_73:                              # %if.end.147
	cmpl	$0, 40(%rsp)            # 4-byte Folded Reload
	movabsq	$8589934576, %r12       # imm = 0x1FFFFFFF0
	movq	48(%rsp), %rbp          # 8-byte Reload
	je	.LBB82_98
# BB#74:                                # %land.lhs.true
	movq	336(%rbp), %rax
	movq	16(%rax), %rdx
	testq	%rdx, %rdx
	je	.LBB82_98
# BB#75:                                # %if.then.151
	movl	328(%rbp), %eax
	movl	%eax, 324(%rsp)
	movq	%rbp, %rdi
	movq	56(%rsp), %rbp          # 8-byte Reload
	movl	1112(%rbp), %eax
	movl	%eax, 332(%rsp)
	movl	$0, 340(%rsp)
	movl	$8, 328(%rsp)
	movl	324(%rdi), %eax
	movl	%eax, 320(%rsp)
	movl	$0, 336(%rsp)
	movq	344(%rsp), %rcx
	movq	8(%rdi), %r9
	movq	352(%rsp), %rax
	movl	152(%rax), %eax
	movl	%eax, (%rsp)
	leaq	320(%rsp), %r8
	movq	%rdi, %r13
	movq	%rbp, %rsi
	callq	gsicc_get_link_profile
	movq	%rax, %rbx
	testl	%r14d, %r14d
	jle	.LBB82_97
# BB#76:                                # %for.body.160.preheader
	leal	-1(%r14), %r15d
	leaq	1(%r15), %rax
	xorl	%esi, %esi
	movq	%rax, %rcx
	andq	%r12, %rcx
	je	.LBB82_83
# BB#77:                                # %vector.body304.preheader
	leaq	1(%r15), %rsi
	andq	%r12, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rdx
	shrq	$4, %rdx
	xorl	%edi, %edi
	btq	$4, %rsi
	jb	.LBB82_79
# BB#78:                                # %vector.body304.prol
	movdqa	384(%rsp), %xmm0
	movdqa	400(%rsp), %xmm1
	movdqa	%xmm0, 192(%rsp)
	movdqa	%xmm1, 208(%rsp)
	movl	$16, %edi
.LBB82_79:                              # %vector.body304.preheader.split
	testq	%rdx, %rdx
	je	.LBB82_82
# BB#80:                                # %vector.body304.preheader.split.split
	leaq	1(%r15), %rdx
	andq	%r12, %rdx
	subq	%rdi, %rdx
	leaq	432(%rsp,%rdi,2), %rsi
	leaq	240(%rsp,%rdi,2), %rdi
	.align	16, 0x90
.LBB82_81:                              # %vector.body304
                                        # =>This Inner Loop Header: Depth=1
	movaps	-48(%rsi), %xmm0
	movaps	-32(%rsi), %xmm1
	movaps	%xmm0, -48(%rdi)
	movaps	%xmm1, -32(%rdi)
	movdqa	-16(%rsi), %xmm0
	movdqa	(%rsi), %xmm1
	movdqa	%xmm0, -16(%rdi)
	movdqa	%xmm1, (%rdi)
	addq	$64, %rsi
	addq	$64, %rdi
	addq	$-32, %rdx
	jne	.LBB82_81
.LBB82_82:
	movq	%rcx, %rsi
.LBB82_83:                              # %middle.block305
	cmpq	%rsi, %rax
	movq	%r13, %rbp
	je	.LBB82_86
# BB#84:                                # %for.body.160.preheader381
	leaq	384(%rsp,%rsi,2), %rax
	leaq	192(%rsp,%rsi,2), %rcx
	movl	%r14d, %edx
	subl	%esi, %edx
	.align	16, 0x90
.LBB82_85:                              # %for.body.160
                                        # =>This Inner Loop Header: Depth=1
	movw	(%rax), %si
	movw	%si, (%rcx)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%edx
	jne	.LBB82_85
.LBB82_86:                              # %for.end.167
	leaq	192(%rsp), %rdx
	leaq	64(%rsp), %rcx
	movl	$2, %r8d
	movq	56(%rsp), %rdi          # 8-byte Reload
	movq	%rbx, %rsi
	callq	*16(%rbx)
	movq	%rbx, %rdi
	callq	gsicc_release_link
	testl	%r14d, %r14d
	jle	.LBB82_98
# BB#87:                                # %for.body.174.preheader
	leaq	1(%r15), %rax
	xorl	%esi, %esi
	movq	%rax, %rcx
	andq	%r12, %rcx
	je	.LBB82_94
# BB#88:                                # %vector.body329.preheader
	leaq	1(%r15), %rdi
	andq	%r12, %rdi
	addq	$-16, %rdi
	movq	%rdi, %rdx
	shrq	$4, %rdx
	xorl	%esi, %esi
	btq	$4, %rdi
	jb	.LBB82_90
# BB#89:                                # %vector.body329.prol
	movdqa	64(%rsp), %xmm0
	movdqa	80(%rsp), %xmm1
	movdqa	%xmm0, 384(%rsp)
	movdqa	%xmm1, 400(%rsp)
	movl	$16, %esi
.LBB82_90:                              # %vector.body329.preheader.split
	testq	%rdx, %rdx
	je	.LBB82_93
# BB#91:                                # %vector.body329.preheader.split.split
	incq	%r15
	andq	%r12, %r15
	subq	%rsi, %r15
	leaq	112(%rsp,%rsi,2), %rdx
	leaq	432(%rsp,%rsi,2), %rsi
	.align	16, 0x90
.LBB82_92:                              # %vector.body329
                                        # =>This Inner Loop Header: Depth=1
	movaps	-48(%rdx), %xmm0
	movaps	-32(%rdx), %xmm1
	movaps	%xmm0, -48(%rsi)
	movaps	%xmm1, -32(%rsi)
	movdqa	-16(%rdx), %xmm0
	movdqa	(%rdx), %xmm1
	movdqa	%xmm0, -16(%rsi)
	movdqa	%xmm1, (%rsi)
	addq	$64, %rdx
	addq	$64, %rsi
	addq	$-32, %r15
	jne	.LBB82_92
.LBB82_93:
	movq	%rcx, %rsi
.LBB82_94:                              # %middle.block330
	cmpq	%rsi, %rax
	je	.LBB82_98
# BB#95:                                # %for.body.174.preheader380
	leaq	64(%rsp,%rsi,2), %rax
	leaq	384(%rsp,%rsi,2), %rcx
	movl	%r14d, %edx
	subl	%esi, %edx
	.align	16, 0x90
.LBB82_96:                              # %for.body.174
                                        # =>This Inner Loop Header: Depth=1
	movw	(%rax), %si
	movw	%si, (%rcx)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%edx
	jne	.LBB82_96
	jmp	.LBB82_98
.LBB82_97:                              # %for.end.181.critedge
	leaq	192(%rsp), %rdx
	leaq	64(%rsp), %rcx
	movl	$2, %r8d
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	*16(%rbx)
	movq	%rbx, %rdi
	callq	gsicc_release_link
	movq	%r13, %rbp
.LBB82_98:                              # %if.end.182
	movl	$11, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	56(%rsp), %rbx          # 8-byte Reload
	movq	%rbx, %rdi
	callq	*1664(%rbx)
	testl	%eax, %eax
	je	.LBB82_111
# BB#99:                                # %for.cond.187.preheader
	testl	%r14d, %r14d
	movq	32(%rsp), %rbx          # 8-byte Reload
	jle	.LBB82_110
# BB#100:                               # %for.body.190.lr.ph
	leal	-1(%r14), %ecx
	leaq	1(%rcx), %rax
	xorl	%esi, %esi
	movq	%rax, %rdx
	andq	%r12, %rdx
	je	.LBB82_107
# BB#101:                               # %vector.body355.preheader
	leaq	1(%rcx), %rsi
	andq	%r12, %rsi
	addq	$-16, %rsi
	movq	%rsi, %rbp
	shrq	$4, %rbp
	xorl	%edi, %edi
	btq	$4, %rsi
	jb	.LBB82_103
# BB#102:                               # %vector.body355.prol
	movdqa	384(%rsp), %xmm0
	movdqa	400(%rsp), %xmm1
	movdqu	%xmm0, 8(%rbx)
	movdqu	%xmm1, 24(%rbx)
	movl	$16, %edi
.LBB82_103:                             # %vector.body355.preheader.split
	testq	%rbp, %rbp
	je	.LBB82_106
# BB#104:                               # %vector.body355.preheader.split.split
	incq	%rcx
	andq	%r12, %rcx
	subq	%rdi, %rcx
	leaq	432(%rsp,%rdi,2), %rsi
	leaq	56(%rbx,%rdi,2), %rdi
	.align	16, 0x90
.LBB82_105:                             # %vector.body355
                                        # =>This Inner Loop Header: Depth=1
	movaps	-48(%rsi), %xmm0
	movaps	-32(%rsi), %xmm1
	movups	%xmm0, -48(%rdi)
	movups	%xmm1, -32(%rdi)
	movdqa	-16(%rsi), %xmm0
	movdqa	(%rsi), %xmm1
	movdqu	%xmm0, -16(%rdi)
	movdqu	%xmm1, (%rdi)
	addq	$64, %rsi
	addq	$64, %rdi
	addq	$-32, %rcx
	jne	.LBB82_105
.LBB82_106:
	movq	%rdx, %rsi
.LBB82_107:                             # %middle.block356
	cmpq	%rsi, %rax
	je	.LBB82_110
# BB#108:                               # %for.body.190.preheader
	leaq	384(%rsp,%rsi,2), %rax
	leaq	8(%rbx,%rsi,2), %rcx
	subl	%esi, %r14d
	.align	16, 0x90
.LBB82_109:                             # %for.body.190
                                        # =>This Inner Loop Header: Depth=1
	movw	(%rax), %dx
	movw	%dx, (%rcx)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%r14d
	jne	.LBB82_109
.LBB82_110:                             # %for.end.198
	movq	$gx_dc_type_data_devn, (%rbx)
	jmp	.LBB82_114
.LBB82_111:                             # %if.else.199
	leaq	384(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*1552(%rbx)
	cmpq	$-1, %rax
	je	.LBB82_113
# BB#112:                               # %if.then.206
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 8(%rcx)
	movq	$gx_dc_type_data_pure, (%rcx)
	jmp	.LBB82_114
.LBB82_113:                             # %if.else.209
	movl	44(%rsp), %eax          # 4-byte Reload
	movswl	%ax, %edi
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	%rbp, %rdx
	movq	%rbx, %rcx
	movl	28(%rsp), %r8d          # 4-byte Reload
	callq	cmap_separation_halftoned
.LBB82_114:                             # %if.end.211
	addq	$648, %rsp              # imm = 0x288
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end82:
	.size	cmap_separation_direct, .Lfunc_end82-cmap_separation_direct
	.cfi_endproc

	.align	16, 0x90
	.type	cmap_devicen_direct,@function
cmap_devicen_direct:                    # @cmap_devicen_direct
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp189:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp190:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp191:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp192:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp193:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp194:
	.cfi_def_cfa_offset 56
	subq	$328, %rsp              # imm = 0x148
.Ltmp195:
	.cfi_def_cfa_offset 384
.Ltmp196:
	.cfi_offset %rbx, -56
.Ltmp197:
	.cfi_offset %r12, -48
.Ltmp198:
	.cfi_offset %r13, -40
.Ltmp199:
	.cfi_offset %r14, -32
.Ltmp200:
	.cfi_offset %r15, -24
.Ltmp201:
	.cfi_offset %rbp, -16
	movl	%r8d, 12(%rsp)          # 4-byte Spill
	movq	%rcx, %r13
	movq	%rdx, %r12
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rdi, %rbp
	movabsq	$8589934576, %r15       # imm = 0x1FFFFFFF0
	movl	100(%r13), %r14d
	movq	$0, 32(%rsp)
	movq	$0, 24(%rsp)
	leaq	32(%rsp), %rsi
	movq	%r13, %rdi
	callq	*1680(%r13)
	movl	1112(%r13), %edi
	movq	32(%rsp), %rsi
	leaq	24(%rsp), %rdx
	leaq	40(%rsp), %rcx
	callq	gsicc_extract_profile
	testl	%r14d, %r14d
	jle	.LBB83_13
# BB#1:                                 # %for.body.preheader
	leal	-1(%r14), %ecx
	leaq	1(%rcx), %rax
	xorl	%esi, %esi
	movq	%rax, %rdx
	andq	%r15, %rdx
	je	.LBB83_10
# BB#2:                                 # %vector.body.preheader
	movq	%rbp, %r8
	leaq	1(%rcx), %rbx
	andq	%r15, %rbx
	addq	$-16, %rbx
	movl	%ebx, %esi
	shrl	$4, %esi
	incl	%esi
	xorl	%edi, %edi
	testb	$3, %sil
	je	.LBB83_5
# BB#3:                                 # %vector.body.prol.preheader
	movl	%r14d, %ebp
	andl	$48, %ebp
	addl	$-16, %ebp
	shrl	$4, %ebp
	incl	%ebp
	andl	$3, %ebp
	negq	%rbp
	xorl	%edi, %edi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB83_4:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movaps	%xmm0, 192(%rsp,%rdi,2)
	movaps	%xmm0, 208(%rsp,%rdi,2)
	addq	$16, %rdi
	incq	%rbp
	jne	.LBB83_4
.LBB83_5:                               # %vector.body.preheader.split
	cmpq	$48, %rbx
	jae	.LBB83_7
# BB#6:
	movq	%rdx, %rsi
	movq	%r8, %rbp
	jmp	.LBB83_10
.LBB83_7:                               # %vector.body.preheader.split.split
	incq	%rcx
	andq	%r15, %rcx
	subq	%rdi, %rcx
	leaq	304(%rsp,%rdi,2), %rsi
	xorps	%xmm0, %xmm0
	movq	%r8, %rbp
	.align	16, 0x90
.LBB83_8:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movaps	%xmm0, -112(%rsi)
	movaps	%xmm0, -96(%rsi)
	movaps	%xmm0, -80(%rsi)
	movaps	%xmm0, -64(%rsi)
	movaps	%xmm0, -48(%rsi)
	movaps	%xmm0, -32(%rsi)
	movaps	%xmm0, -16(%rsi)
	movaps	%xmm0, (%rsi)
	subq	$-128, %rsi
	addq	$-64, %rcx
	jne	.LBB83_8
# BB#9:
	movq	%rdx, %rsi
.LBB83_10:                              # %middle.block
	cmpq	%rsi, %rax
	je	.LBB83_13
# BB#11:                                # %for.body.preheader465
	leaq	192(%rsp,%rsi,2), %rax
	movl	%r14d, %ecx
	subl	%esi, %ecx
	.align	16, 0x90
.LBB83_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rax)
	addq	$2, %rax
	decl	%ecx
	jne	.LBB83_12
.LBB83_13:                              # %for.end
	movq	32(%rsp), %rax
	movq	176(%rax), %rax
	testq	%rax, %rax
	je	.LBB83_39
# BB#14:                                # %land.lhs.true
	cmpl	$0, 32(%rax)
	je	.LBB83_39
# BB#15:                                # %if.then
	movq	24(%rax), %r9
	movl	12(%r9), %ecx
	movl	%ecx, %edi
	decl	%edi
	js	.LBB83_27
# BB#16:                                # %for.body.lr.ph.i
	movslq	%edi, %rsi
	leaq	1(%rdi), %r8
	movq	%r8, %rax
	andq	%r15, %rax
	xorl	%edx, %edx
	movq	%r8, %r11
	andq	%r15, %r11
	je	.LBB83_24
# BB#17:                                # %vector.body400.preheader
	leal	-1(%rcx), %r10d
	leaq	1(%r10), %rdx
	andq	%r15, %rdx
	addq	$-16, %rdx
	movl	%edx, %edi
	shrl	$4, %edi
	incl	%edi
	xorl	%ebx, %ebx
	testb	$3, %dil
	je	.LBB83_20
# BB#18:                                # %vector.body400.prol.preheader
	movslq	%r10d, %rdi
	leaq	178(%rsp,%rdi,2), %rdi
	andl	$48, %ecx
	addl	$-16, %ecx
	shrl	$4, %ecx
	incl	%ecx
	andl	$3, %ecx
	negq	%rcx
	xorl	%ebx, %ebx
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB83_19:                              # %vector.body400.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rdi)
	movups	%xmm0, -16(%rdi)
	addq	$16, %rbx
	addq	$-32, %rdi
	incq	%rcx
	jne	.LBB83_19
.LBB83_20:                              # %vector.body400.preheader.split
	movq	%rsi, %rcx
	subq	%rax, %rcx
	movl	%esi, %edi
	subl	%eax, %edi
	cmpq	$48, %rdx
	jb	.LBB83_23
# BB#21:                                # %vector.body400.preheader.split.split
	leaq	1(%r10), %rax
	andq	%r15, %rax
	subq	%rbx, %rax
	movslq	%r10d, %rdx
	addq	$-7, %rdx
	subq	%rbx, %rdx
	leaq	192(%rsp,%rdx,2), %rdx
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB83_22:                              # %vector.body400
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
	addq	$-64, %rax
	jne	.LBB83_22
.LBB83_23:
	movq	%rcx, %rsi
	movq	%r11, %rdx
.LBB83_24:                              # %middle.block401
	cmpq	%rdx, %r8
	je	.LBB83_27
# BB#25:                                # %for.body.i.preheader
	leaq	192(%rsp,%rsi,2), %rax
	.align	16, 0x90
.LBB83_26:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rax)
	addq	$-2, %rax
	decl	%edi
	jns	.LBB83_26
.LBB83_27:                              # %for.end.i
	movl	8(%r9), %ecx
	movl	%ecx, %eax
	decl	%eax
	js	.LBB83_62
# BB#28:                                # %for.body.4.lr.ph.i
	movslq	%eax, %rdx
	testb	$1, %cl
	je	.LBB83_32
# BB#29:                                # %for.body.4.i.prol
	movslq	24(%r9,%rdx,4), %rax
	testq	%rax, %rax
	js	.LBB83_31
# BB#30:                                # %if.then.i.prol
	movw	(%rbp,%rdx,2), %si
	movw	%si, 192(%rsp,%rax,2)
.LBB83_31:                              # %for.cond.2.backedge.i.prol
	leal	-2(%rcx), %eax
	decq	%rdx
.LBB83_32:                              # %for.body.4.lr.ph.i.split
	cmpl	$1, %ecx
	je	.LBB83_62
# BB#33:                                # %for.body.4.lr.ph.i.split.split
	leaq	(%rbp,%rdx,2), %rcx
	leaq	24(%r9,%rdx,4), %rdx
	.align	16, 0x90
.LBB83_34:                              # %for.body.4.i
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rdx), %rsi
	testq	%rsi, %rsi
	js	.LBB83_35
# BB#38:                                # %if.then.i
                                        #   in Loop: Header=BB83_34 Depth=1
	movw	(%rcx), %di
	movw	%di, 192(%rsp,%rsi,2)
.LBB83_35:                              # %for.cond.2.backedge.i
                                        #   in Loop: Header=BB83_34 Depth=1
	movslq	-4(%rdx), %rsi
	testq	%rsi, %rsi
	js	.LBB83_37
# BB#36:                                # %if.then.i.1
                                        #   in Loop: Header=BB83_34 Depth=1
	movw	-2(%rcx), %di
	movw	%di, 192(%rsp,%rsi,2)
.LBB83_37:                              # %for.cond.2.backedge.i.1
                                        #   in Loop: Header=BB83_34 Depth=1
	addq	$-4, %rcx
	addq	$-8, %rdx
	addl	$-2, %eax
	jns	.LBB83_34
	jmp	.LBB83_62
.LBB83_39:                              # %if.else
	movl	1036(%r12), %edi
	movl	%edi, %esi
	decl	%esi
	js	.LBB83_51
# BB#40:                                # %for.body.lr.ph.i.98
	movslq	%esi, %rdx
	leaq	1(%rsi), %r8
	movq	%r8, %rax
	andq	%r15, %rax
	xorl	%ecx, %ecx
	movq	%r8, %r10
	andq	%r15, %r10
	je	.LBB83_48
# BB#41:                                # %vector.body429.preheader
	leal	-1(%rdi), %r9d
	leaq	1(%r9), %rcx
	andq	%r15, %rcx
	addq	$-16, %rcx
	movl	%ecx, %esi
	shrl	$4, %esi
	incl	%esi
	xorl	%ebx, %ebx
	testb	$3, %sil
	je	.LBB83_44
# BB#42:                                # %vector.body429.prol.preheader
	movslq	%r9d, %rsi
	leaq	178(%rsp,%rsi,2), %rsi
	andl	$48, %edi
	addl	$-16, %edi
	shrl	$4, %edi
	incl	%edi
	andl	$3, %edi
	negq	%rdi
	xorl	%ebx, %ebx
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB83_43:                              # %vector.body429.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rsi)
	movups	%xmm0, -16(%rsi)
	addq	$16, %rbx
	addq	$-32, %rsi
	incq	%rdi
	jne	.LBB83_43
.LBB83_44:                              # %vector.body429.preheader.split
	movq	%rdx, %rdi
	subq	%rax, %rdi
	movl	%edx, %esi
	subl	%eax, %esi
	cmpq	$48, %rcx
	jb	.LBB83_47
# BB#45:                                # %vector.body429.preheader.split.split
	leaq	1(%r9), %rax
	andq	%r15, %rax
	subq	%rbx, %rax
	movslq	%r9d, %rcx
	addq	$-7, %rcx
	subq	%rbx, %rcx
	leaq	192(%rsp,%rcx,2), %rcx
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB83_46:                              # %vector.body429
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rcx)
	movups	%xmm0, -16(%rcx)
	movups	%xmm0, -32(%rcx)
	movups	%xmm0, -48(%rcx)
	movups	%xmm0, -64(%rcx)
	movups	%xmm0, -80(%rcx)
	movups	%xmm0, -96(%rcx)
	movups	%xmm0, -112(%rcx)
	addq	$-128, %rcx
	addq	$-64, %rax
	jne	.LBB83_46
.LBB83_47:
	movq	%rdi, %rdx
	movq	%r10, %rcx
.LBB83_48:                              # %middle.block430
	cmpq	%rcx, %r8
	je	.LBB83_51
# BB#49:                                # %for.body.i.105.preheader
	leaq	192(%rsp,%rdx,2), %rax
	.align	16, 0x90
.LBB83_50:                              # %for.body.i.105
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rax)
	addq	$-2, %rax
	decl	%esi
	jns	.LBB83_50
.LBB83_51:                              # %for.end.i.109
	movl	1032(%r12), %ecx
	movl	%ecx, %eax
	decl	%eax
	js	.LBB83_62
# BB#52:                                # %for.body.4.lr.ph.i.110
	movslq	%eax, %rdx
	testb	$1, %cl
	je	.LBB83_56
# BB#53:                                # %for.body.4.i.115.prol
	movslq	1048(%r12,%rdx,4), %rax
	testq	%rax, %rax
	js	.LBB83_55
# BB#54:                                # %if.then.i.123.prol
	movw	(%rbp,%rdx,2), %si
	movw	%si, 192(%rsp,%rax,2)
.LBB83_55:                              # %for.cond.2.backedge.i.119.prol
	leal	-2(%rcx), %eax
	decq	%rdx
.LBB83_56:                              # %for.body.4.lr.ph.i.110.split
	cmpl	$1, %ecx
	je	.LBB83_62
# BB#57:                                # %for.body.4.lr.ph.i.110.split.split
	leaq	1048(%r12,%rdx,4), %rcx
	leaq	(%rbp,%rdx,2), %rdx
	.align	16, 0x90
.LBB83_58:                              # %for.body.4.i.115
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rcx), %rsi
	testq	%rsi, %rsi
	js	.LBB83_59
# BB#111:                               # %if.then.i.123
                                        #   in Loop: Header=BB83_58 Depth=1
	movw	(%rdx), %di
	movw	%di, 192(%rsp,%rsi,2)
.LBB83_59:                              # %for.cond.2.backedge.i.119
                                        #   in Loop: Header=BB83_58 Depth=1
	movslq	-4(%rcx), %rsi
	testq	%rsi, %rsi
	js	.LBB83_61
# BB#60:                                # %if.then.i.123.1
                                        #   in Loop: Header=BB83_58 Depth=1
	movw	-2(%rdx), %di
	movw	%di, 192(%rsp,%rsi,2)
.LBB83_61:                              # %for.cond.2.backedge.i.119.1
                                        #   in Loop: Header=BB83_58 Depth=1
	addq	$-8, %rcx
	addq	$-4, %rdx
	addl	$-2, %eax
	jns	.LBB83_58
.LBB83_62:                              # %if.end
	movq	1624(%r13), %rax
	testq	%rax, %rax
	je	.LBB83_67
# BB#63:                                # %if.then.i.127
	movq	%r13, %rdi
	callq	*%rax
	testq	%rax, %rax
	je	.LBB83_67
# BB#64:                                # %devicen_has_cmyk.exit
	cmpl	$4, 16(%rax)
	jne	.LBB83_67
# BB#65:                                # %land.lhs.true.7
	movq	24(%rsp), %rax
	cmpl	$3, 16(%rax)
	jne	.LBB83_67
# BB#66:                                # %if.then.9
	leaq	192(%rsp), %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	devicen_icc_cmyk
.LBB83_67:                              # %if.end.12
	movl	$11, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%r13, %rdi
	callq	*1664(%r13)
	testl	%eax, %eax
	movl	104(%r13), %eax
	je	.LBB83_87
# BB#68:                                # %if.then.16
	cmpl	$1, %eax
	jne	.LBB83_69
# BB#76:                                # %for.cond.20.preheader
	testl	%r14d, %r14d
	movq	16(%rsp), %r15          # 8-byte Reload
	jle	.LBB83_86
# BB#77:                                # %for.body.22.lr.ph
	leaq	8(%r15), %r11
	addq	$496, %r12              # imm = 0x1F0
	leaq	192(%rsp), %rcx
	movl	$gs_identity_transfer, %r8d
	.align	16, 0x90
.LBB83_78:                              # %for.body.22
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r12), %r10
	cmpq	%r8, 24(%r10)
	movw	(%rcx), %di
	movswl	%di, %eax
	je	.LBB83_109
# BB#79:                                # %cond.false
                                        #   in Loop: Header=BB83_78 Depth=1
	movl	%eax, %esi
	sarl	$12, %esi
	addl	%eax, %esi
	movl	%esi, %edx
	sarl	$8, %edx
	subl	%edx, %esi
	movl	%esi, %ebx
	sarl	$7, %ebx
	movslq	%ebx, %r9
	movw	56(%r10,%r9,2), %di
	movl	%esi, %ebp
	andl	$65408, %ebp            # imm = 0xFF80
	movl	%esi, %edx
	shrl	$8, %edx
	shrl	$12, %esi
	subl	%esi, %edx
	addl	%ebp, %edx
	movswl	%dx, %ebp
	movl	%eax, %esi
	subl	%ebp, %esi
	je	.LBB83_81
# BB#80:                                # %if.end.i
                                        #   in Loop: Header=BB83_78 Depth=1
	movswl	%di, %ebp
	leal	1(%rbx), %edi
	movslq	%edi, %rdi
	movswl	56(%r10,%rdi,2), %edi
	subl	%ebp, %edi
	imull	%esi, %edi
	shrl	$7, %edi
	addl	%ebp, %edi
.LBB83_81:                              # %cond.false.46
                                        #   in Loop: Header=BB83_78 Depth=1
	movswl	%di, %ebp
	addl	%ebp, %ebp
	movw	56(%r10,%r9,2), %di
	movswl	%dx, %edx
	subl	%edx, %eax
	je	.LBB83_83
# BB#82:                                # %if.end.i.339
                                        #   in Loop: Header=BB83_78 Depth=1
	movswl	%di, %edx
	incl	%ebx
	movslq	%ebx, %rsi
	movswl	56(%r10,%rsi,2), %edi
	subl	%edx, %edi
	imull	%eax, %edi
	shrl	$7, %edi
	addl	%edx, %edi
	jmp	.LBB83_83
	.align	16, 0x90
.LBB83_109:                             # %cond.end
                                        #   in Loop: Header=BB83_78 Depth=1
	addl	%eax, %eax
	movl	%eax, %ebp
.LBB83_83:                              # %cond.end.56
                                        #   in Loop: Header=BB83_78 Depth=1
	movswl	%di, %eax
	shrl	$11, %eax
	addl	%ebp, %eax
	movw	%ax, (%r11)
	addq	$2, %rcx
	addq	$2, %r11
	addq	$8, %r12
	decl	%r14d
	jne	.LBB83_78
	jmp	.LBB83_86
.LBB83_87:                              # %if.else.140
	cmpl	$1, %eax
	jne	.LBB83_88
# BB#95:                                # %for.cond.146.preheader
	movq	%rbp, (%rsp)            # 8-byte Spill
	testl	%r14d, %r14d
	jle	.LBB83_105
# BB#96:                                # %for.body.149.preheader
	leaq	496(%r12), %r11
	leaq	192(%rsp), %r15
	leaq	64(%rsp), %rdx
	movl	$gs_identity_transfer, %r8d
	.align	16, 0x90
.LBB83_97:                              # %for.body.149
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r11), %r10
	cmpq	%r8, 24(%r10)
	movw	(%r15), %ax
	movswl	%ax, %edi
	je	.LBB83_110
# BB#98:                                # %cond.false.160
                                        #   in Loop: Header=BB83_97 Depth=1
	movl	%edi, %esi
	sarl	$12, %esi
	addl	%edi, %esi
	movl	%esi, %eax
	sarl	$8, %eax
	subl	%eax, %esi
	movl	%esi, %ebx
	sarl	$7, %ebx
	movslq	%ebx, %r9
	movw	56(%r10,%r9,2), %ax
	movl	%esi, %ecx
	andl	$65408, %ecx            # imm = 0xFF80
	movl	%esi, %ebp
	shrl	$8, %ebp
	shrl	$12, %esi
	subl	%esi, %ebp
	addl	%ecx, %ebp
	movswl	%bp, %ecx
	movl	%edi, %esi
	subl	%ecx, %esi
	je	.LBB83_100
# BB#99:                                # %if.end.i.249
                                        #   in Loop: Header=BB83_97 Depth=1
	movswl	%ax, %ecx
	leal	1(%rbx), %eax
	cltq
	movswl	56(%r10,%rax,2), %eax
	subl	%ecx, %eax
	imull	%esi, %eax
	shrl	$7, %eax
	addl	%ecx, %eax
.LBB83_100:                             # %cond.false.183
                                        #   in Loop: Header=BB83_97 Depth=1
	movswl	%ax, %esi
	addl	%esi, %esi
	movw	56(%r10,%r9,2), %ax
	movswl	%bp, %ecx
	subl	%ecx, %edi
	je	.LBB83_102
# BB#101:                               # %if.end.i.219
                                        #   in Loop: Header=BB83_97 Depth=1
	movswl	%ax, %ecx
	incl	%ebx
	movslq	%ebx, %rax
	movswl	56(%r10,%rax,2), %eax
	subl	%ecx, %eax
	imull	%edi, %eax
	shrl	$7, %eax
	addl	%ecx, %eax
	jmp	.LBB83_102
	.align	16, 0x90
.LBB83_110:                             # %cond.end.170
                                        #   in Loop: Header=BB83_97 Depth=1
	addl	%edi, %edi
	movl	%edi, %esi
.LBB83_102:                             # %cond.end.193
                                        #   in Loop: Header=BB83_97 Depth=1
	cwtl
	shrl	$11, %eax
	addl	%esi, %eax
	movw	%ax, (%rdx)
	addq	$2, %r15
	addq	$2, %rdx
	addq	$8, %r11
	decl	%r14d
	jne	.LBB83_97
	jmp	.LBB83_105
.LBB83_69:                              # %for.cond.66.preheader
	testl	%r14d, %r14d
	movq	16(%rsp), %r15          # 8-byte Reload
	jle	.LBB83_86
# BB#70:                                # %for.body.69.lr.ph
	leaq	8(%r15), %r11
	addq	$496, %r12              # imm = 0x1F0
	leaq	192(%rsp), %rcx
	movl	$gs_identity_transfer, %r8d
	.align	16, 0x90
.LBB83_71:                              # %for.body.69
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r12), %r10
	movw	$32760, %di             # imm = 0x7FF8
	subw	(%rcx), %di
	cmpq	%r8, 24(%r10)
	movswl	%di, %eax
	je	.LBB83_84
# BB#72:                                # %cond.false.82
                                        #   in Loop: Header=BB83_71 Depth=1
	movl	%eax, %esi
	sarl	$12, %esi
	addl	%eax, %esi
	movl	%esi, %edx
	sarl	$8, %edx
	subl	%edx, %esi
	movl	%esi, %edx
	sarl	$7, %edx
	movslq	%edx, %r9
	movw	56(%r10,%r9,2), %di
	movl	%esi, %ebx
	andl	$65408, %ebx            # imm = 0xFF80
	movl	%esi, %ebp
	shrl	$8, %ebp
	shrl	$12, %esi
	subl	%esi, %ebp
	addl	%ebx, %ebp
	movswl	%bp, %ebx
	movl	%eax, %esi
	subl	%ebx, %esi
	je	.LBB83_74
# BB#73:                                # %if.end.i.309
                                        #   in Loop: Header=BB83_71 Depth=1
	movswl	%di, %ebx
	leal	1(%rdx), %edi
	movslq	%edi, %rdi
	movswl	56(%r10,%rdi,2), %edi
	subl	%ebx, %edi
	imull	%esi, %edi
	shrl	$7, %edi
	addl	%ebx, %edi
.LBB83_74:                              # %cond.false.112
                                        #   in Loop: Header=BB83_71 Depth=1
	movswl	%di, %esi
	movl	$32760, %ebx            # imm = 0x7FF8
	subl	%esi, %ebx
	addl	%ebx, %ebx
	movw	56(%r10,%r9,2), %di
	movswl	%bp, %esi
	subl	%esi, %eax
	je	.LBB83_85
# BB#75:                                # %if.end.i.279
                                        #   in Loop: Header=BB83_71 Depth=1
	movswl	%di, %esi
	incl	%edx
	movslq	%edx, %rdx
	movswl	56(%r10,%rdx,2), %edi
	subl	%esi, %edi
	imull	%eax, %edi
	shrl	$7, %edi
	addl	%esi, %edi
	jmp	.LBB83_85
	.align	16, 0x90
.LBB83_84:                              # %cond.end.95
                                        #   in Loop: Header=BB83_71 Depth=1
	movl	$32760, %ebx            # imm = 0x7FF8
	subl	%eax, %ebx
	addl	%ebx, %ebx
.LBB83_85:                              # %cond.end.125
                                        #   in Loop: Header=BB83_71 Depth=1
	movswl	%di, %eax
	movl	$32760, %edx            # imm = 0x7FF8
	subl	%eax, %edx
	shrl	$11, %edx
	addl	%ebx, %edx
	movw	%dx, (%r11)
	addq	$2, %rcx
	addq	$2, %r11
	addq	$8, %r12
	decl	%r14d
	jne	.LBB83_71
.LBB83_86:                              # %if.end.139
	movq	$gx_dc_type_data_devn, (%r15)
	jmp	.LBB83_108
.LBB83_88:                              # %for.cond.204.preheader
	movq	%rbp, (%rsp)            # 8-byte Spill
	testl	%r14d, %r14d
	jle	.LBB83_105
# BB#89:                                # %for.body.207.preheader
	leaq	496(%r12), %r11
	leaq	192(%rsp), %r15
	leaq	64(%rsp), %rdx
	movl	$gs_identity_transfer, %r8d
	.align	16, 0x90
.LBB83_90:                              # %for.body.207
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r11), %r10
	movw	$32760, %ax             # imm = 0x7FF8
	subw	(%r15), %ax
	cmpq	%r8, 24(%r10)
	movswl	%ax, %edi
	je	.LBB83_103
# BB#91:                                # %cond.false.221
                                        #   in Loop: Header=BB83_90 Depth=1
	movl	%edi, %ebp
	sarl	$12, %ebp
	addl	%edi, %ebp
	movl	%ebp, %eax
	sarl	$8, %eax
	subl	%eax, %ebp
	movl	%ebp, %ebx
	sarl	$7, %ebx
	movslq	%ebx, %r9
	movw	56(%r10,%r9,2), %ax
	movl	%ebp, %ecx
	andl	$65408, %ecx            # imm = 0xFF80
	movl	%ebp, %esi
	shrl	$8, %esi
	shrl	$12, %ebp
	subl	%ebp, %esi
	addl	%ecx, %esi
	movswl	%si, %ecx
	movl	%edi, %ebp
	subl	%ecx, %ebp
	je	.LBB83_93
# BB#92:                                # %if.end.i.189
                                        #   in Loop: Header=BB83_90 Depth=1
	movswl	%ax, %ecx
	leal	1(%rbx), %eax
	cltq
	movswl	56(%r10,%rax,2), %eax
	subl	%ecx, %eax
	imull	%ebp, %eax
	shrl	$7, %eax
	addl	%ecx, %eax
.LBB83_93:                              # %cond.false.251
                                        #   in Loop: Header=BB83_90 Depth=1
	cwtl
	movl	$32760, %ebp            # imm = 0x7FF8
	subl	%eax, %ebp
	addl	%ebp, %ebp
	movw	56(%r10,%r9,2), %ax
	movswl	%si, %ecx
	subl	%ecx, %edi
	je	.LBB83_104
# BB#94:                                # %if.end.i.159
                                        #   in Loop: Header=BB83_90 Depth=1
	movswl	%ax, %ecx
	incl	%ebx
	movslq	%ebx, %rax
	movswl	56(%r10,%rax,2), %eax
	subl	%ecx, %eax
	imull	%edi, %eax
	shrl	$7, %eax
	addl	%ecx, %eax
	jmp	.LBB83_104
	.align	16, 0x90
.LBB83_103:                             # %cond.end.234
                                        #   in Loop: Header=BB83_90 Depth=1
	movl	$32760, %ebp            # imm = 0x7FF8
	subl	%edi, %ebp
	addl	%ebp, %ebp
.LBB83_104:                             # %cond.end.264
                                        #   in Loop: Header=BB83_90 Depth=1
	cwtl
	movl	$32760, %ecx            # imm = 0x7FF8
	subl	%eax, %ecx
	shrl	$11, %ecx
	addl	%ebp, %ecx
	movw	%cx, (%rdx)
	addq	$2, %r15
	addq	$2, %rdx
	addq	$8, %r11
	decl	%r14d
	jne	.LBB83_90
.LBB83_105:                             # %if.end.275
	leaq	64(%rsp), %rsi
	movq	%r13, %rdi
	callq	*1552(%r13)
	cmpq	$-1, %rax
	je	.LBB83_107
# BB#106:                               # %if.then.282
	movq	16(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 8(%rcx)
	movq	$gx_dc_type_data_pure, (%rcx)
	jmp	.LBB83_108
.LBB83_107:                             # %if.else.285
	movq	(%rsp), %rdi            # 8-byte Reload
	movq	16(%rsp), %rsi          # 8-byte Reload
	movq	%r12, %rdx
	movq	%r13, %rcx
	movl	12(%rsp), %r8d          # 4-byte Reload
	callq	cmap_devicen_halftoned
.LBB83_108:                             # %if.end.287
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end83:
	.size	cmap_devicen_direct, .Lfunc_end83-cmap_devicen_direct
	.cfi_endproc

	.align	16, 0x90
	.type	cmap_direct_is_halftoned,@function
cmap_direct_is_halftoned:               # @cmap_direct_is_halftoned
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end84:
	.size	cmap_direct_is_halftoned, .Lfunc_end84-cmap_direct_is_halftoned
	.cfi_endproc

	.align	16, 0x90
	.type	cmap_gray_halftoned,@function
cmap_gray_halftoned:                    # @cmap_gray_halftoned
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp202:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp203:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp204:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp205:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp206:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp207:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp208:
	.cfi_def_cfa_offset 208
.Ltmp209:
	.cfi_offset %rbx, -56
.Ltmp210:
	.cfi_offset %r12, -48
.Ltmp211:
	.cfi_offset %r13, -40
.Ltmp212:
	.cfi_offset %r14, -32
.Ltmp213:
	.cfi_offset %r15, -24
.Ltmp214:
	.cfi_offset %rbp, -16
	movl	%r8d, %r12d
	movq	%rcx, %r13
	movq	%rdx, (%rsp)            # 8-byte Spill
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movl	%edi, %r15d
	movl	100(%r13), %r14d
	testl	%r14d, %r14d
	jle	.LBB85_12
# BB#1:                                 # %for.body.preheader
	movabsq	$8589934576, %r8        # imm = 0x1FFFFFFF0
	leal	-1(%r14), %ecx
	leaq	1(%rcx), %rax
	xorl	%esi, %esi
	movq	%rax, %rdx
	andq	%r8, %rdx
	je	.LBB85_9
# BB#2:                                 # %vector.body.preheader
	leaq	1(%rcx), %rbp
	andq	%r8, %rbp
	addq	$-16, %rbp
	movl	%ebp, %edi
	shrl	$4, %edi
	incl	%edi
	xorl	%esi, %esi
	testb	$3, %dil
	je	.LBB85_5
# BB#3:                                 # %vector.body.prol.preheader
	movl	%r14d, %ebx
	andl	$48, %ebx
	addl	$-16, %ebx
	shrl	$4, %ebx
	incl	%ebx
	andl	$3, %ebx
	negq	%rbx
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB85_4:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movaps	%xmm0, 16(%rsp,%rsi,2)
	movaps	%xmm0, 32(%rsp,%rsi,2)
	addq	$16, %rsi
	incq	%rbx
	jne	.LBB85_4
.LBB85_5:                               # %vector.body.preheader.split
	cmpq	$48, %rbp
	jb	.LBB85_8
# BB#6:                                 # %vector.body.preheader.split.split
	incq	%rcx
	andq	%r8, %rcx
	subq	%rsi, %rcx
	leaq	128(%rsp,%rsi,2), %rsi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB85_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movaps	%xmm0, -112(%rsi)
	movaps	%xmm0, -96(%rsi)
	movaps	%xmm0, -80(%rsi)
	movaps	%xmm0, -64(%rsi)
	movaps	%xmm0, -48(%rsi)
	movaps	%xmm0, -32(%rsi)
	movaps	%xmm0, -16(%rsi)
	movaps	%xmm0, (%rsi)
	subq	$-128, %rsi
	addq	$-64, %rcx
	jne	.LBB85_7
.LBB85_8:
	movq	%rdx, %rsi
.LBB85_9:                               # %middle.block
	cmpq	%rsi, %rax
	je	.LBB85_12
# BB#10:                                # %for.body.preheader145
	leaq	16(%rsp,%rsi,2), %rax
	movl	%r14d, %ecx
	subl	%esi, %ecx
	.align	16, 0x90
.LBB85_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rax)
	addq	$2, %rax
	decl	%ecx
	jne	.LBB85_11
.LBB85_12:                              # %for.end
	movq	%r13, %rdi
	callq	*1536(%r13)
	movswl	%r15w, %esi
	leaq	16(%rsp), %rbp
	movq	%r13, %rdi
	movq	%rbp, %rdx
	callq	*(%rax)
	cmpl	$1, 104(%r13)
	jne	.LBB85_19
# BB#13:                                # %for.cond.3.preheader
	testl	%r14d, %r14d
	movl	%r12d, %r15d
	movq	(%rsp), %r12            # 8-byte Reload
	jle	.LBB85_36
# BB#14:                                # %for.body.5.preheader
	leaq	496(%r12), %rax
	leaq	16(%rsp), %rcx
	movl	$gs_identity_transfer, %r8d
	.align	16, 0x90
.LBB85_15:                              # %for.body.5
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax), %r9
	cmpq	%r8, 24(%r9)
	movw	(%rcx), %si
	je	.LBB85_18
# BB#16:                                # %cond.false
                                        #   in Loop: Header=BB85_15 Depth=1
	movswl	%si, %r10d
	movl	%r10d, %ebp
	sarl	$12, %ebp
	addl	%r10d, %ebp
	movl	%ebp, %esi
	sarl	$8, %esi
	subl	%esi, %ebp
	movl	%ebp, %ebx
	sarl	$7, %ebx
	movslq	%ebx, %rsi
	movw	56(%r9,%rsi,2), %si
	movl	%ebp, %edi
	andl	$65408, %edi            # imm = 0xFF80
	movl	%ebp, %edx
	shrl	$8, %edx
	shrl	$12, %ebp
	subl	%ebp, %edx
	addl	%edi, %edx
	movswl	%dx, %edx
	subl	%edx, %r10d
	je	.LBB85_18
# BB#17:                                # %if.end.i
                                        #   in Loop: Header=BB85_15 Depth=1
	movswl	%si, %edx
	incl	%ebx
	movslq	%ebx, %rsi
	movswl	56(%r9,%rsi,2), %esi
	subl	%edx, %esi
	imull	%r10d, %esi
	shrl	$7, %esi
	addl	%edx, %esi
.LBB85_18:                              # %cond.end
                                        #   in Loop: Header=BB85_15 Depth=1
	movw	%si, (%rcx)
	addq	$2, %rcx
	addq	$8, %rax
	decl	%r14d
	jne	.LBB85_15
	jmp	.LBB85_36
.LBB85_19:                              # %if.else
	movl	792(%r13), %eax
	cmpl	$-1, %eax
	jne	.LBB85_21
# BB#20:                                # %if.then.28
	movq	%r13, %rdi
	callq	check_cmyk_color_model_comps
	movl	792(%r13), %eax
.LBB85_21:                              # %if.end
	cmpl	$1, %eax
	movl	%r12d, %r15d
	jne	.LBB85_22
# BB#28:                                # %if.then.34
	testl	%r14d, %r14d
	movq	(%rsp), %r12            # 8-byte Reload
	jle	.LBB85_36
# BB#29:                                # %for.body.39.preheader
	movl	808(%r13), %eax
	leaq	496(%r12), %rcx
	leaq	16(%rsp), %rdx
	movl	$gs_identity_transfer, %r8d
	.align	16, 0x90
.LBB85_30:                              # %for.body.39
                                        # =>This Inner Loop Header: Depth=1
	testl	%eax, %eax
	jne	.LBB85_35
# BB#31:                                # %if.then.42
                                        #   in Loop: Header=BB85_30 Depth=1
	movq	(%rcx), %r9
	movw	$32760, %di             # imm = 0x7FF8
	subw	(%rdx), %di
	cmpq	%r8, 24(%r9)
	je	.LBB85_34
# BB#32:                                # %cond.false.55
                                        #   in Loop: Header=BB85_30 Depth=1
	movswl	%di, %r10d
	movl	%r10d, %esi
	sarl	$12, %esi
	addl	%r10d, %esi
	movl	%esi, %edi
	sarl	$8, %edi
	subl	%edi, %esi
	movl	%esi, %r11d
	sarl	$7, %r11d
	movslq	%r11d, %rdi
	movw	56(%r9,%rdi,2), %di
	movl	%esi, %ebp
	andl	$65408, %ebp            # imm = 0xFF80
	movl	%esi, %ebx
	shrl	$8, %ebx
	shrl	$12, %esi
	subl	%esi, %ebx
	addl	%ebp, %ebx
	movswl	%bx, %esi
	subl	%esi, %r10d
	je	.LBB85_34
# BB#33:                                # %if.end.i.81
                                        #   in Loop: Header=BB85_30 Depth=1
	movswl	%di, %esi
	incl	%r11d
	movslq	%r11d, %rdi
	movswl	56(%r9,%rdi,2), %edi
	subl	%esi, %edi
	imull	%r10d, %edi
	shrl	$7, %edi
	addl	%esi, %edi
.LBB85_34:                              # %cond.end.68
                                        #   in Loop: Header=BB85_30 Depth=1
	movl	$32760, %esi            # imm = 0x7FF8
	subl	%edi, %esi
	movw	%si, (%rdx)
.LBB85_35:                              # %for.inc.80
                                        #   in Loop: Header=BB85_30 Depth=1
	decl	%eax
	addq	$2, %rdx
	addq	$8, %rcx
	decl	%r14d
	jne	.LBB85_30
	jmp	.LBB85_36
.LBB85_22:                              # %for.cond.84.preheader
	testl	%r14d, %r14d
	movq	(%rsp), %r12            # 8-byte Reload
	jle	.LBB85_36
# BB#23:                                # %for.body.87.preheader
	leaq	496(%r12), %rax
	movl	$gs_identity_transfer, %r8d
	.align	16, 0x90
.LBB85_24:                              # %for.body.87
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax), %r9
	movw	$32760, %dx             # imm = 0x7FF8
	subw	(%rbp), %dx
	cmpq	%r8, 24(%r9)
	je	.LBB85_27
# BB#25:                                # %cond.false.101
                                        #   in Loop: Header=BB85_24 Depth=1
	movswl	%dx, %r10d
	movl	%r10d, %edi
	sarl	$12, %edi
	addl	%r10d, %edi
	movl	%edi, %edx
	sarl	$8, %edx
	subl	%edx, %edi
	movl	%edi, %ebx
	sarl	$7, %ebx
	movslq	%ebx, %rdx
	movw	56(%r9,%rdx,2), %dx
	movl	%edi, %esi
	andl	$65408, %esi            # imm = 0xFF80
	movl	%edi, %ecx
	shrl	$8, %ecx
	shrl	$12, %edi
	subl	%edi, %ecx
	addl	%esi, %ecx
	movswl	%cx, %ecx
	subl	%ecx, %r10d
	je	.LBB85_27
# BB#26:                                # %if.end.i.111
                                        #   in Loop: Header=BB85_24 Depth=1
	movswl	%dx, %ecx
	incl	%ebx
	movslq	%ebx, %rdx
	movswl	56(%r9,%rdx,2), %edx
	subl	%ecx, %edx
	imull	%r10d, %edx
	shrl	$7, %edx
	addl	%ecx, %edx
.LBB85_27:                              # %cond.end.114
                                        #   in Loop: Header=BB85_24 Depth=1
	movl	$32760, %ecx            # imm = 0x7FF8
	subl	%edx, %ecx
	movw	%cx, (%rbp)
	addq	$2, %rbp
	addq	$8, %rax
	decl	%r14d
	jne	.LBB85_24
.LBB85_36:                              # %if.end.124
	movq	392(%r12), %rcx
	movslq	%r15d, %rax
	leaq	376(%r12,%rax,8), %r8
	leaq	16(%rsp), %rdi
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	gx_render_device_DeviceN
	cmpl	$1, %eax
	jne	.LBB85_38
# BB#37:                                # %if.then.131
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	movl	%r15d, %ecx
	callq	*32(%rax)
.LBB85_38:                              # %if.end.133
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end85:
	.size	cmap_gray_halftoned, .Lfunc_end85-cmap_gray_halftoned
	.cfi_endproc

	.align	16, 0x90
	.type	cmap_rgb_halftoned,@function
cmap_rgb_halftoned:                     # @cmap_rgb_halftoned
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp215:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp216:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp217:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp218:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp219:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp220:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp221:
	.cfi_def_cfa_offset 208
.Ltmp222:
	.cfi_offset %rbx, -56
.Ltmp223:
	.cfi_offset %r12, -48
.Ltmp224:
	.cfi_offset %r13, -40
.Ltmp225:
	.cfi_offset %r14, -32
.Ltmp226:
	.cfi_offset %r15, -24
.Ltmp227:
	.cfi_offset %rbp, -16
	movq	%r9, %r13
	movq	%r8, %r14
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movl	%edx, %ebx
	movl	%esi, %ebp
	movl	%edi, %r12d
	movl	100(%r13), %r15d
	testl	%r15d, %r15d
	jle	.LBB86_13
# BB#1:                                 # %for.body.preheader
	movabsq	$8589934576, %r8        # imm = 0x1FFFFFFF0
	leal	-1(%r15), %ecx
	leaq	1(%rcx), %rax
	xorl	%esi, %esi
	movq	%rax, %rdx
	andq	%r8, %rdx
	je	.LBB86_10
# BB#2:                                 # %vector.body.preheader
	movl	%ebp, %r10d
	movl	%ebx, %r9d
	leaq	1(%rcx), %rbx
	andq	%r8, %rbx
	addq	$-16, %rbx
	movl	%ebx, %edi
	shrl	$4, %edi
	incl	%edi
	xorl	%esi, %esi
	testb	$3, %dil
	je	.LBB86_5
# BB#3:                                 # %vector.body.prol.preheader
	movl	%r15d, %ebp
	andl	$48, %ebp
	addl	$-16, %ebp
	shrl	$4, %ebp
	incl	%ebp
	andl	$3, %ebp
	negq	%rbp
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB86_4:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movaps	%xmm0, 16(%rsp,%rsi,2)
	movaps	%xmm0, 32(%rsp,%rsi,2)
	addq	$16, %rsi
	incq	%rbp
	jne	.LBB86_4
.LBB86_5:                               # %vector.body.preheader.split
	cmpq	$48, %rbx
	jae	.LBB86_7
# BB#6:
	movq	%rdx, %rsi
	movl	%r9d, %ebx
	movl	%r10d, %ebp
	jmp	.LBB86_10
.LBB86_7:                               # %vector.body.preheader.split.split
	incq	%rcx
	andq	%r8, %rcx
	subq	%rsi, %rcx
	leaq	128(%rsp,%rsi,2), %rsi
	xorps	%xmm0, %xmm0
	movl	%r9d, %ebx
	movl	%r10d, %ebp
	.align	16, 0x90
.LBB86_8:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movaps	%xmm0, -112(%rsi)
	movaps	%xmm0, -96(%rsi)
	movaps	%xmm0, -80(%rsi)
	movaps	%xmm0, -64(%rsi)
	movaps	%xmm0, -48(%rsi)
	movaps	%xmm0, -32(%rsi)
	movaps	%xmm0, -16(%rsi)
	movaps	%xmm0, (%rsi)
	subq	$-128, %rsi
	addq	$-64, %rcx
	jne	.LBB86_8
# BB#9:
	movq	%rdx, %rsi
.LBB86_10:                              # %middle.block
	cmpq	%rsi, %rax
	je	.LBB86_13
# BB#11:                                # %for.body.preheader88
	leaq	16(%rsp,%rsi,2), %rax
	movl	%r15d, %ecx
	subl	%esi, %ecx
	.align	16, 0x90
.LBB86_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rax)
	addq	$2, %rax
	decl	%ecx
	jne	.LBB86_12
.LBB86_13:                              # %for.end
	movq	%r13, %rdi
	callq	*1536(%r13)
	movswl	%r12w, %edx
	movswl	%bp, %ecx
	movswl	%bx, %r8d
	leaq	16(%rsp), %rbp
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbp, %r9
	callq	*8(%rax)
	cmpl	$1, 104(%r13)
	jne	.LBB86_14
# BB#20:                                # %for.cond.3.preheader
	testl	%r15d, %r15d
	jle	.LBB86_26
# BB#21:                                # %for.body.5.preheader
	leaq	496(%r14), %rax
	leaq	16(%rsp), %rcx
	movl	$gs_identity_transfer, %r8d
	.align	16, 0x90
.LBB86_22:                              # %for.body.5
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax), %r9
	cmpq	%r8, 24(%r9)
	movw	(%rcx), %si
	je	.LBB86_25
# BB#23:                                # %cond.false
                                        #   in Loop: Header=BB86_22 Depth=1
	movswl	%si, %r10d
	movl	%r10d, %ebp
	sarl	$12, %ebp
	addl	%r10d, %ebp
	movl	%ebp, %esi
	sarl	$8, %esi
	subl	%esi, %ebp
	movl	%ebp, %ebx
	sarl	$7, %ebx
	movslq	%ebx, %rsi
	movw	56(%r9,%rsi,2), %si
	movl	%ebp, %edi
	andl	$65408, %edi            # imm = 0xFF80
	movl	%ebp, %edx
	shrl	$8, %edx
	shrl	$12, %ebp
	subl	%ebp, %edx
	addl	%edi, %edx
	movswl	%dx, %edx
	subl	%edx, %r10d
	je	.LBB86_25
# BB#24:                                # %if.end.i
                                        #   in Loop: Header=BB86_22 Depth=1
	movswl	%si, %edx
	incl	%ebx
	movslq	%ebx, %rsi
	movswl	56(%r9,%rsi,2), %esi
	subl	%edx, %esi
	imull	%r10d, %esi
	shrl	$7, %esi
	addl	%edx, %esi
.LBB86_25:                              # %cond.end
                                        #   in Loop: Header=BB86_22 Depth=1
	movw	%si, (%rcx)
	addq	$2, %rcx
	addq	$8, %rax
	decl	%r15d
	jne	.LBB86_22
	jmp	.LBB86_26
.LBB86_14:                              # %for.cond.25.preheader
	testl	%r15d, %r15d
	jle	.LBB86_26
# BB#15:                                # %for.body.28.preheader
	leaq	496(%r14), %rax
	movl	$gs_identity_transfer, %r8d
	.align	16, 0x90
.LBB86_16:                              # %for.body.28
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax), %r9
	movw	$32760, %dx             # imm = 0x7FF8
	subw	(%rbp), %dx
	cmpq	%r8, 24(%r9)
	je	.LBB86_19
# BB#17:                                # %cond.false.41
                                        #   in Loop: Header=BB86_16 Depth=1
	movswl	%dx, %r10d
	movl	%r10d, %edi
	sarl	$12, %edi
	addl	%r10d, %edi
	movl	%edi, %edx
	sarl	$8, %edx
	subl	%edx, %edi
	movl	%edi, %ebx
	sarl	$7, %ebx
	movslq	%ebx, %rdx
	movw	56(%r9,%rdx,2), %dx
	movl	%edi, %esi
	andl	$65408, %esi            # imm = 0xFF80
	movl	%edi, %ecx
	shrl	$8, %ecx
	shrl	$12, %edi
	subl	%edi, %ecx
	addl	%esi, %ecx
	movswl	%cx, %ecx
	subl	%ecx, %r10d
	je	.LBB86_19
# BB#18:                                # %if.end.i.64
                                        #   in Loop: Header=BB86_16 Depth=1
	movswl	%dx, %ecx
	incl	%ebx
	movslq	%ebx, %rdx
	movswl	56(%r9,%rdx,2), %edx
	subl	%ecx, %edx
	imull	%r10d, %edx
	shrl	$7, %edx
	addl	%ecx, %edx
.LBB86_19:                              # %cond.end.54
                                        #   in Loop: Header=BB86_16 Depth=1
	movl	$32760, %ecx            # imm = 0x7FF8
	subl	%edx, %ecx
	movw	%cx, (%rbp)
	addq	$2, %rbp
	addq	$8, %rax
	decl	%r15d
	jne	.LBB86_16
.LBB86_26:                              # %if.end
	movq	392(%r14), %rcx
	movl	208(%rsp), %ebp
	movslq	%ebp, %rax
	leaq	376(%r14,%rax,8), %r8
	leaq	16(%rsp), %rdi
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	gx_render_device_DeviceN
	cmpl	$1, %eax
	jne	.LBB86_28
# BB#27:                                # %if.then.69
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	movl	%ebp, %ecx
	callq	*32(%rax)
.LBB86_28:                              # %if.end.71
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end86:
	.size	cmap_rgb_halftoned, .Lfunc_end86-cmap_rgb_halftoned
	.cfi_endproc

	.align	16, 0x90
	.type	cmap_rgb_alpha_halftoned,@function
cmap_rgb_alpha_halftoned:               # @cmap_rgb_alpha_halftoned
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp228:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp229:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp230:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp231:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp232:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp233:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp234:
	.cfi_def_cfa_offset 208
.Ltmp235:
	.cfi_offset %rbx, -56
.Ltmp236:
	.cfi_offset %r12, -48
.Ltmp237:
	.cfi_offset %r13, -40
.Ltmp238:
	.cfi_offset %r14, -32
.Ltmp239:
	.cfi_offset %r15, -24
.Ltmp240:
	.cfi_offset %rbp, -16
	movq	%r9, 8(%rsp)            # 8-byte Spill
	movq	%r8, (%rsp)             # 8-byte Spill
	movl	%ecx, %ebp
	movl	%edx, %r13d
	movl	%esi, %r12d
	movl	%edi, %r14d
	movq	208(%rsp), %rbx
	movl	100(%rbx), %r15d
	testl	%r15d, %r15d
	jle	.LBB87_13
# BB#1:                                 # %for.body.preheader
	movabsq	$8589934576, %r8        # imm = 0x1FFFFFFF0
	leal	-1(%r15), %ecx
	leaq	1(%rcx), %r9
	xorl	%esi, %esi
	movq	%r9, %rdx
	andq	%r8, %rdx
	je	.LBB87_10
# BB#2:                                 # %vector.body.preheader
	movq	%rbx, %r10
	leaq	1(%rcx), %rax
	andq	%r8, %rax
	addq	$-16, %rax
	movl	%eax, %edi
	shrl	$4, %edi
	incl	%edi
	xorl	%esi, %esi
	testb	$3, %dil
	je	.LBB87_5
# BB#3:                                 # %vector.body.prol.preheader
	movl	%r15d, %ebx
	andl	$48, %ebx
	addl	$-16, %ebx
	shrl	$4, %ebx
	incl	%ebx
	andl	$3, %ebx
	negq	%rbx
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB87_4:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movaps	%xmm0, 16(%rsp,%rsi,2)
	movaps	%xmm0, 32(%rsp,%rsi,2)
	addq	$16, %rsi
	incq	%rbx
	jne	.LBB87_4
.LBB87_5:                               # %vector.body.preheader.split
	cmpq	$48, %rax
	jae	.LBB87_7
# BB#6:
	movq	%rdx, %rsi
	movq	%r10, %rbx
	jmp	.LBB87_10
.LBB87_7:                               # %vector.body.preheader.split.split
	incq	%rcx
	andq	%r8, %rcx
	subq	%rsi, %rcx
	leaq	128(%rsp,%rsi,2), %rsi
	xorps	%xmm0, %xmm0
	movq	%r10, %rbx
	.align	16, 0x90
.LBB87_8:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movaps	%xmm0, -112(%rsi)
	movaps	%xmm0, -96(%rsi)
	movaps	%xmm0, -80(%rsi)
	movaps	%xmm0, -64(%rsi)
	movaps	%xmm0, -48(%rsi)
	movaps	%xmm0, -32(%rsi)
	movaps	%xmm0, -16(%rsi)
	movaps	%xmm0, (%rsi)
	subq	$-128, %rsi
	addq	$-64, %rcx
	jne	.LBB87_8
# BB#9:
	movq	%rdx, %rsi
.LBB87_10:                              # %middle.block
	cmpq	%rsi, %r9
	je	.LBB87_13
# BB#11:                                # %for.body.preheader101
	leaq	16(%rsp,%rsi,2), %rax
	movl	%r15d, %ecx
	subl	%esi, %ecx
	.align	16, 0x90
.LBB87_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rax)
	addq	$2, %rax
	decl	%ecx
	jne	.LBB87_12
.LBB87_13:                              # %for.end
	movq	%rbx, %rdi
	callq	*1536(%rbx)
	movswl	%r14w, %edx
	movswl	%r12w, %ecx
	movswl	%r13w, %r8d
	leaq	16(%rsp), %r12
	movq	%rbx, %rdi
	movq	8(%rsp), %r13           # 8-byte Reload
	movq	%r13, %rsi
	movq	%r12, %r9
	callq	*8(%rax)
	movzwl	%bp, %ecx
	testl	%r15d, %r15d
	setle	%al
	cmpl	$32760, %ecx            # imm = 0x7FF8
	je	.LBB87_20
# BB#14:                                # %for.end
	testb	%al, %al
	jne	.LBB87_20
# BB#15:                                # %for.body.6.preheader
	xorl	%ecx, %ecx
	testb	$1, %r15b
	je	.LBB87_17
# BB#16:                                # %for.body.6.prol
	movw	16(%rsp), %ax
	imulw	%bp, %ax
	cwtl
	movswq	%ax, %rcx
	imulq	$-2146959231, %rcx, %rcx # imm = 0xFFFFFFFF80080081
	shrq	$32, %rcx
	addl	%eax, %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	shrl	$14, %ecx
	addl	%eax, %ecx
	movw	%cx, 16(%rsp)
	movl	$1, %ecx
.LBB87_17:                              # %for.body.6.preheader.split
	cmpl	$1, %r15d
	je	.LBB87_20
# BB#18:                                # %for.body.6.preheader.split.split
	movl	%r15d, %eax
	subl	%ecx, %eax
	leaq	2(%rcx,%rcx), %rcx
	leaq	(%rcx,%r12), %rcx
	.align	16, 0x90
.LBB87_19:                              # %for.body.6
                                        # =>This Inner Loop Header: Depth=1
	movw	-2(%rcx), %dx
	imulw	%bp, %dx
	movswl	%dx, %edx
	movswq	%dx, %rsi
	imulq	$-2146959231, %rsi, %rsi # imm = 0xFFFFFFFF80080081
	shrq	$32, %rsi
	addl	%edx, %esi
	movl	%esi, %edx
	shrl	$31, %edx
	shrl	$14, %esi
	addl	%edx, %esi
	movw	%si, -2(%rcx)
	movw	(%rcx), %dx
	imulw	%bp, %dx
	movswl	%dx, %edx
	movswq	%dx, %rsi
	imulq	$-2146959231, %rsi, %rsi # imm = 0xFFFFFFFF80080081
	shrq	$32, %rsi
	addl	%edx, %esi
	movl	%esi, %edx
	shrl	$31, %edx
	shrl	$14, %esi
	addl	%edx, %esi
	movw	%si, (%rcx)
	addq	$4, %rcx
	addl	$-2, %eax
	jne	.LBB87_19
.LBB87_20:                              # %if.end
	movl	216(%rsp), %r14d
	cmpl	$1, 104(%rbx)
	movq	%rbx, %r11
	jne	.LBB87_21
# BB#27:                                # %for.cond.24.preheader
	testl	%r15d, %r15d
	jle	.LBB87_33
# BB#28:                                # %for.body.27.preheader
	leaq	496(%r13), %rax
	leaq	16(%rsp), %rcx
	movl	$gs_identity_transfer, %r8d
	.align	16, 0x90
.LBB87_29:                              # %for.body.27
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax), %r9
	cmpq	%r8, 24(%r9)
	movw	(%rcx), %si
	je	.LBB87_32
# BB#30:                                # %cond.false
                                        #   in Loop: Header=BB87_29 Depth=1
	movswl	%si, %r10d
	movl	%r10d, %ebx
	sarl	$12, %ebx
	addl	%r10d, %ebx
	movl	%ebx, %esi
	sarl	$8, %esi
	subl	%esi, %ebx
	movl	%ebx, %ebp
	sarl	$7, %ebp
	movslq	%ebp, %rsi
	movw	56(%r9,%rsi,2), %si
	movl	%ebx, %edi
	andl	$65408, %edi            # imm = 0xFF80
	movl	%ebx, %edx
	shrl	$8, %edx
	shrl	$12, %ebx
	subl	%ebx, %edx
	addl	%edi, %edx
	movswl	%dx, %edx
	subl	%edx, %r10d
	je	.LBB87_32
# BB#31:                                # %if.end.i
                                        #   in Loop: Header=BB87_29 Depth=1
	movswl	%si, %edx
	incl	%ebp
	movslq	%ebp, %rsi
	movswl	56(%r9,%rsi,2), %esi
	subl	%edx, %esi
	imull	%r10d, %esi
	shrl	$7, %esi
	addl	%edx, %esi
.LBB87_32:                              # %cond.end
                                        #   in Loop: Header=BB87_29 Depth=1
	movw	%si, (%rcx)
	addq	$2, %rcx
	addq	$8, %rax
	decl	%r15d
	jne	.LBB87_29
	jmp	.LBB87_33
.LBB87_21:                              # %for.cond.49.preheader
	testl	%r15d, %r15d
	jle	.LBB87_33
# BB#22:                                # %for.body.52.preheader
	leaq	496(%r13), %rax
	movl	$gs_identity_transfer, %r8d
	.align	16, 0x90
.LBB87_23:                              # %for.body.52
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax), %r9
	movw	$32760, %dx             # imm = 0x7FF8
	subw	(%r12), %dx
	cmpq	%r8, 24(%r9)
	je	.LBB87_26
# BB#24:                                # %cond.false.65
                                        #   in Loop: Header=BB87_23 Depth=1
	movswl	%dx, %ecx
	movl	%ecx, %edi
	sarl	$12, %edi
	addl	%ecx, %edi
	movl	%edi, %edx
	sarl	$8, %edx
	subl	%edx, %edi
	movl	%edi, %ebp
	sarl	$7, %ebp
	movslq	%ebp, %rdx
	movw	56(%r9,%rdx,2), %dx
	movl	%edi, %ebx
	andl	$65408, %ebx            # imm = 0xFF80
	movl	%edi, %esi
	shrl	$8, %esi
	shrl	$12, %edi
	subl	%edi, %esi
	addl	%ebx, %esi
	movswl	%si, %esi
	subl	%esi, %ecx
	je	.LBB87_26
# BB#25:                                # %if.end.i.71
                                        #   in Loop: Header=BB87_23 Depth=1
	movswl	%dx, %esi
	incl	%ebp
	movslq	%ebp, %rdx
	movswl	56(%r9,%rdx,2), %edx
	subl	%esi, %edx
	imull	%ecx, %edx
	shrl	$7, %edx
	addl	%esi, %edx
.LBB87_26:                              # %cond.end.78
                                        #   in Loop: Header=BB87_23 Depth=1
	movl	$32760, %ecx            # imm = 0x7FF8
	subl	%edx, %ecx
	movw	%cx, (%r12)
	addq	$2, %r12
	addq	$8, %rax
	decl	%r15d
	jne	.LBB87_23
.LBB87_33:                              # %if.end.87
	movq	392(%r13), %rcx
	movslq	%r14d, %rax
	leaq	376(%r13,%rax,8), %r8
	leaq	16(%rsp), %rdi
	movq	(%rsp), %rbx            # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r11, %rbp
	movq	%rbp, %rdx
	callq	gx_render_device_DeviceN
	cmpl	$1, %eax
	jne	.LBB87_35
# BB#34:                                # %if.then.94
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	movl	%r14d, %ecx
	callq	*32(%rax)
.LBB87_35:                              # %if.end.96
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end87:
	.size	cmap_rgb_alpha_halftoned, .Lfunc_end87-cmap_rgb_alpha_halftoned
	.cfi_endproc

	.align	16, 0x90
	.type	cmap_separation_halftoned,@function
cmap_separation_halftoned:              # @cmap_separation_halftoned
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp241:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp242:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp243:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp244:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp245:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp246:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp247:
	.cfi_def_cfa_offset 208
.Ltmp248:
	.cfi_offset %rbx, -56
.Ltmp249:
	.cfi_offset %r12, -48
.Ltmp250:
	.cfi_offset %r13, -40
.Ltmp251:
	.cfi_offset %r14, -32
.Ltmp252:
	.cfi_offset %r15, -24
.Ltmp253:
	.cfi_offset %rbp, -16
	movl	%r8d, %r15d
	movq	%rcx, %r13
	movq	%rdx, %r12
	movq	%rsi, %r14
	movabsq	$8589934576, %r9        # imm = 0x1FFFFFFF0
	movl	100(%r13), %r8d
	movl	104(%r13), %r10d
	testl	%r8d, %r8d
	jle	.LBB88_12
# BB#1:                                 # %for.body.preheader
	leal	-1(%r8), %edx
	leaq	1(%rdx), %rcx
	xorl	%eax, %eax
	movq	%rcx, %rsi
	andq	%r9, %rsi
	je	.LBB88_9
# BB#2:                                 # %vector.body.preheader
	leaq	1(%rdx), %rbx
	andq	%r9, %rbx
	addq	$-16, %rbx
	movl	%ebx, %eax
	shrl	$4, %eax
	incl	%eax
	xorl	%ebp, %ebp
	testb	$3, %al
	je	.LBB88_5
# BB#3:                                 # %vector.body.prol.preheader
	movl	%r8d, %eax
	andl	$48, %eax
	addl	$-16, %eax
	shrl	$4, %eax
	incl	%eax
	andl	$3, %eax
	negq	%rax
	xorl	%ebp, %ebp
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB88_4:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqa	%xmm0, 16(%rsp,%rbp,2)
	movdqa	%xmm0, 32(%rsp,%rbp,2)
	addq	$16, %rbp
	incq	%rax
	jne	.LBB88_4
.LBB88_5:                               # %vector.body.preheader.split
	cmpq	$48, %rbx
	jb	.LBB88_8
# BB#6:                                 # %vector.body.preheader.split.split
	incq	%rdx
	andq	%r9, %rdx
	subq	%rbp, %rdx
	leaq	128(%rsp,%rbp,2), %rax
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB88_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqa	%xmm0, -112(%rax)
	movdqa	%xmm0, -96(%rax)
	movdqa	%xmm0, -80(%rax)
	movdqa	%xmm0, -64(%rax)
	movdqa	%xmm0, -48(%rax)
	movdqa	%xmm0, -32(%rax)
	movdqa	%xmm0, -16(%rax)
	movdqa	%xmm0, (%rax)
	subq	$-128, %rax
	addq	$-64, %rdx
	jne	.LBB88_7
.LBB88_8:
	movq	%rsi, %rax
.LBB88_9:                               # %middle.block
	cmpq	%rax, %rcx
	je	.LBB88_12
# BB#10:                                # %for.body.preheader173
	leaq	16(%rsp,%rax,2), %rcx
	movl	%r8d, %edx
	subl	%eax, %edx
	.align	16, 0x90
.LBB88_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rcx)
	addq	$2, %rcx
	decl	%edx
	jne	.LBB88_11
.LBB88_12:                              # %for.end
	cmpl	$1, 1028(%r12)
	jne	.LBB88_35
# BB#13:                                # %if.then
	movl	$32760, %esi            # imm = 0x7FF8
	subl	%edi, %esi
	cmpl	$1, %r10d
	cmovnew	%di, %si
	movl	1036(%r12), %ecx
	movl	%ecx, %ebx
	decl	%ebx
	js	.LBB88_28
# BB#14:                                # %for.body.14.lr.ph
	movq	%r13, %rbp
	movslq	%ebx, %rdx
	leaq	1(%rbx), %r11
	movq	%r11, %rdi
	andq	%r9, %rdi
	xorl	%eax, %eax
	movq	%r11, %r13
	andq	%r9, %r13
	je	.LBB88_15
# BB#16:                                # %vector.ph145
	movl	%r10d, 8(%rsp)          # 4-byte Spill
	movq	%r14, (%rsp)            # 8-byte Spill
	movl	%r15d, 12(%rsp)         # 4-byte Spill
	movd	%esi, %xmm0
	leal	-1(%rcx), %r10d
	leaq	1(%r10), %r14
	andq	%r9, %r14
	addq	$-16, %r14
	movl	%r14d, %eax
	shrl	$4, %eax
	incl	%eax
	xorl	%r15d, %r15d
	testb	$3, %al
	je	.LBB88_19
# BB#17:                                # %vector.body135.prol.preheader
	pshufd	$196, %xmm0, %xmm1      # xmm1 = xmm0[0,1,0,3]
	pshuflw	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0,4,5,6,7]
	pshufhw	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,1,2,3,4,4,4,4]
	movslq	%r10d, %rax
	leaq	2(%rsp,%rax,2), %rbx
	andl	$48, %ecx
	addl	$-16, %ecx
	shrl	$4, %ecx
	incl	%ecx
	andl	$3, %ecx
	negq	%rcx
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB88_18:                              # %vector.body135.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm1, (%rbx)
	movdqu	%xmm1, -16(%rbx)
	addq	$16, %r15
	addq	$-32, %rbx
	incq	%rcx
	jne	.LBB88_18
.LBB88_19:                              # %vector.ph145.split
	movq	%rdx, %rcx
	subq	%rdi, %rcx
	movl	%edx, %ebx
	subl	%edi, %ebx
	cmpq	$48, %r14
	jae	.LBB88_21
# BB#20:
	movq	%rcx, %rdx
	movq	%r13, %rax
	movl	12(%rsp), %r15d         # 4-byte Reload
	movq	%rbp, %r13
	movq	(%rsp), %r14            # 8-byte Reload
	jmp	.LBB88_24
.LBB88_35:                              # %if.else
	movl	%r15d, 12(%rsp)         # 4-byte Spill
	movq	%r14, %r15
	movl	1036(%r12), %esi
	movl	%esi, %ebx
	decl	%ebx
	js	.LBB88_47
# BB#36:                                # %for.body.lr.ph.i
	movl	%r10d, 8(%rsp)          # 4-byte Spill
	movslq	%ebx, %r14
	leaq	1(%rbx), %r10
	movq	%r10, %rcx
	andq	%r9, %rcx
	xorl	%eax, %eax
	movq	%r10, %r11
	andq	%r9, %r11
	je	.LBB88_44
# BB#37:                                # %vector.body106.preheader
	movq	%r13, (%rsp)            # 8-byte Spill
	leal	-1(%rsi), %r13d
	leaq	1(%r13), %rdx
	andq	%r9, %rdx
	addq	$-16, %rdx
	movl	%edx, %eax
	shrl	$4, %eax
	incl	%eax
	xorl	%ebp, %ebp
	testb	$3, %al
	je	.LBB88_40
# BB#38:                                # %vector.body106.prol.preheader
	movslq	%r13d, %rax
	leaq	2(%rsp,%rax,2), %rbx
	andl	$48, %esi
	addl	$-16, %esi
	shrl	$4, %esi
	incl	%esi
	andl	$3, %esi
	negq	%rsi
	xorl	%ebp, %ebp
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB88_39:                              # %vector.body106.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, (%rbx)
	movdqu	%xmm0, -16(%rbx)
	addq	$16, %rbp
	addq	$-32, %rbx
	incq	%rsi
	jne	.LBB88_39
.LBB88_40:                              # %vector.body106.preheader.split
	movq	%r14, %rsi
	subq	%rcx, %rsi
	movl	%r14d, %ebx
	subl	%ecx, %ebx
	cmpq	$48, %rdx
	jb	.LBB88_43
# BB#41:                                # %vector.body106.preheader.split.split
	leaq	1(%r13), %rax
	andq	%r9, %rax
	subq	%rbp, %rax
	movslq	%r13d, %rcx
	addq	$-7, %rcx
	subq	%rbp, %rcx
	leaq	16(%rsp,%rcx,2), %rcx
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB88_42:                              # %vector.body106
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, (%rcx)
	movdqu	%xmm0, -16(%rcx)
	movdqu	%xmm0, -32(%rcx)
	movdqu	%xmm0, -48(%rcx)
	movdqu	%xmm0, -64(%rcx)
	movdqu	%xmm0, -80(%rcx)
	movdqu	%xmm0, -96(%rcx)
	movdqu	%xmm0, -112(%rcx)
	addq	$-128, %rcx
	addq	$-64, %rax
	jne	.LBB88_42
.LBB88_43:
	movq	%rsi, %r14
	movq	%r11, %rax
	movq	(%rsp), %r13            # 8-byte Reload
.LBB88_44:                              # %middle.block107
	cmpq	%rax, %r10
	movl	8(%rsp), %r10d          # 4-byte Reload
	je	.LBB88_47
# BB#45:                                # %for.body.i.preheader
	leaq	16(%rsp,%r14,2), %rax
	.align	16, 0x90
.LBB88_46:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rax)
	addq	$-2, %rax
	decl	%ebx
	jns	.LBB88_46
.LBB88_47:                              # %for.end.i
	movl	1032(%r12), %eax
	movl	%eax, %ecx
	decl	%ecx
	movq	%r15, %r14
	movl	12(%rsp), %r15d         # 4-byte Reload
	js	.LBB88_28
# BB#48:                                # %for.body.4.lr.ph.i
	movslq	%ecx, %rdx
	testb	$1, %al
	je	.LBB88_52
# BB#49:                                # %for.body.4.i.prol
	movslq	1048(%r12,%rdx,4), %rcx
	testq	%rcx, %rcx
	js	.LBB88_51
# BB#50:                                # %if.then.i.prol
	movw	%di, 16(%rsp,%rcx,2)
.LBB88_51:                              # %for.cond.2.backedge.i.prol
	leal	-2(%rax), %ecx
	decq	%rdx
.LBB88_52:                              # %for.body.4.lr.ph.i.split
	cmpl	$1, %eax
	je	.LBB88_28
# BB#53:                                # %for.body.4.lr.ph.i.split.split
	leaq	1048(%r12,%rdx,4), %rax
	.align	16, 0x90
.LBB88_54:                              # %for.body.4.i
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rax), %rdx
	testq	%rdx, %rdx
	js	.LBB88_55
# BB#58:                                # %if.then.i
                                        #   in Loop: Header=BB88_54 Depth=1
	movw	%di, 16(%rsp,%rdx,2)
.LBB88_55:                              # %for.cond.2.backedge.i
                                        #   in Loop: Header=BB88_54 Depth=1
	movslq	-4(%rax), %rdx
	testq	%rdx, %rdx
	js	.LBB88_57
# BB#56:                                # %if.then.i.1
                                        #   in Loop: Header=BB88_54 Depth=1
	movw	%di, 16(%rsp,%rdx,2)
.LBB88_57:                              # %for.cond.2.backedge.i.1
                                        #   in Loop: Header=BB88_54 Depth=1
	addq	$-8, %rax
	addl	$-2, %ecx
	jns	.LBB88_54
	jmp	.LBB88_28
.LBB88_15:
	movq	%rbp, %r13
	jmp	.LBB88_25
.LBB88_21:                              # %vector.ph145.split.split
	pshufd	$196, %xmm0, %xmm0      # xmm0 = xmm0[0,1,0,3]
	pshuflw	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufhw	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,1,2,3,4,4,4,4]
	leaq	1(%r10), %rax
	andq	%r9, %rax
	subq	%r15, %rax
	movslq	%r10d, %rdx
	addq	$-7, %rdx
	subq	%r15, %rdx
	leaq	16(%rsp,%rdx,2), %rdx
	movq	(%rsp), %r14            # 8-byte Reload
	.align	16, 0x90
.LBB88_22:                              # %vector.body135
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, (%rdx)
	movdqu	%xmm0, -16(%rdx)
	movdqu	%xmm0, -32(%rdx)
	movdqu	%xmm0, -48(%rdx)
	movdqu	%xmm0, -64(%rdx)
	movdqu	%xmm0, -80(%rdx)
	movdqu	%xmm0, -96(%rdx)
	movdqu	%xmm0, -112(%rdx)
	addq	$-128, %rdx
	addq	$-64, %rax
	jne	.LBB88_22
# BB#23:
	movq	%rcx, %rdx
	movq	%r13, %rax
	movl	12(%rsp), %r15d         # 4-byte Reload
	movq	%rbp, %r13
.LBB88_24:                              # %middle.block136
	movl	8(%rsp), %r10d          # 4-byte Reload
.LBB88_25:                              # %middle.block136
	cmpq	%rax, %r11
	je	.LBB88_28
# BB#26:                                # %for.body.14.preheader
	leaq	16(%rsp,%rdx,2), %rax
	.align	16, 0x90
.LBB88_27:                              # %for.body.14
                                        # =>This Inner Loop Header: Depth=1
	movw	%si, (%rax)
	addq	$-2, %rax
	decl	%ebx
	jns	.LBB88_27
.LBB88_28:                              # %if.end.20
	cmpl	$1, %r10d
	jne	.LBB88_29
# BB#59:                                # %for.cond.23.preheader
	testl	%r8d, %r8d
	jle	.LBB88_65
# BB#60:                                # %for.body.26.preheader
	leaq	496(%r12), %rcx
	leaq	16(%rsp), %rdx
	movl	$gs_identity_transfer, %r9d
	.align	16, 0x90
.LBB88_61:                              # %for.body.26
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx), %r10
	cmpq	%r9, 24(%r10)
	movw	(%rdx), %di
	je	.LBB88_64
# BB#62:                                # %cond.false
                                        #   in Loop: Header=BB88_61 Depth=1
	movswl	%di, %r11d
	movl	%r11d, %ebx
	sarl	$12, %ebx
	addl	%r11d, %ebx
	movl	%ebx, %eax
	sarl	$8, %eax
	subl	%eax, %ebx
	movl	%ebx, %eax
	sarl	$7, %eax
	movslq	%eax, %rdi
	movw	56(%r10,%rdi,2), %di
	movl	%ebx, %ebp
	andl	$65408, %ebp            # imm = 0xFF80
	movl	%ebx, %esi
	shrl	$8, %esi
	shrl	$12, %ebx
	subl	%ebx, %esi
	addl	%ebp, %esi
	movswl	%si, %esi
	subl	%esi, %r11d
	je	.LBB88_64
# BB#63:                                # %if.end.i
                                        #   in Loop: Header=BB88_61 Depth=1
	movswl	%di, %esi
	incl	%eax
	cltq
	movswl	56(%r10,%rax,2), %edi
	subl	%esi, %edi
	imull	%r11d, %edi
	shrl	$7, %edi
	addl	%esi, %edi
.LBB88_64:                              # %cond.end
                                        #   in Loop: Header=BB88_61 Depth=1
	movw	%di, (%rdx)
	addq	$2, %rdx
	addq	$8, %rcx
	decl	%r8d
	jne	.LBB88_61
	jmp	.LBB88_65
.LBB88_29:                              # %for.cond.48.preheader
	testl	%r8d, %r8d
	jle	.LBB88_65
# BB#30:                                # %for.body.51.preheader
	leaq	496(%r12), %rcx
	leaq	16(%rsp), %rdx
	movl	$gs_identity_transfer, %r9d
	.align	16, 0x90
.LBB88_31:                              # %for.body.51
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx), %r10
	movw	$32760, %di             # imm = 0x7FF8
	subw	(%rdx), %di
	cmpq	%r9, 24(%r10)
	je	.LBB88_34
# BB#32:                                # %cond.false.65
                                        #   in Loop: Header=BB88_31 Depth=1
	movswl	%di, %r11d
	movl	%r11d, %ebx
	sarl	$12, %ebx
	addl	%r11d, %ebx
	movl	%ebx, %eax
	sarl	$8, %eax
	subl	%eax, %ebx
	movl	%ebx, %eax
	sarl	$7, %eax
	movslq	%eax, %rdi
	movw	56(%r10,%rdi,2), %di
	movl	%ebx, %ebp
	andl	$65408, %ebp            # imm = 0xFF80
	movl	%ebx, %esi
	shrl	$8, %esi
	shrl	$12, %ebx
	subl	%ebx, %esi
	addl	%ebp, %esi
	movswl	%si, %esi
	subl	%esi, %r11d
	je	.LBB88_34
# BB#33:                                # %if.end.i.73
                                        #   in Loop: Header=BB88_31 Depth=1
	movswl	%di, %esi
	incl	%eax
	cltq
	movswl	56(%r10,%rax,2), %edi
	subl	%esi, %edi
	imull	%r11d, %edi
	shrl	$7, %edi
	addl	%esi, %edi
.LBB88_34:                              # %cond.end.78
                                        #   in Loop: Header=BB88_31 Depth=1
	movl	$32760, %eax            # imm = 0x7FF8
	subl	%edi, %eax
	movw	%ax, (%rdx)
	addq	$2, %rdx
	addq	$8, %rcx
	decl	%r8d
	jne	.LBB88_31
.LBB88_65:                              # %if.end.87
	movq	392(%r12), %rcx
	movslq	%r15d, %rax
	leaq	376(%r12,%rax,8), %r8
	leaq	16(%rsp), %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	gx_render_device_DeviceN
	cmpl	$1, %eax
	jne	.LBB88_67
# BB#66:                                # %if.then.94
	movq	(%r14), %rax
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	movl	%r15d, %ecx
	callq	*32(%rax)
.LBB88_67:                              # %if.end.96
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end88:
	.size	cmap_separation_halftoned, .Lfunc_end88-cmap_separation_halftoned
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI89_0:
	.quad	4679239875398991872     # double 65535
.LCPI89_1:
	.quad	4535125924542218256     # double 1.5262515262515263E-5
.LCPI89_2:
	.quad	4674734214187319296     # double 32760
	.text
	.align	16, 0x90
	.type	devicen_icc_cmyk,@function
devicen_icc_cmyk:                       # @devicen_icc_cmyk
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp254:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp255:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp256:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp257:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp258:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp259:
	.cfi_def_cfa_offset 56
	subq	$344, %rsp              # imm = 0x158
.Ltmp260:
	.cfi_def_cfa_offset 400
.Ltmp261:
	.cfi_offset %rbx, -56
.Ltmp262:
	.cfi_offset %r12, -48
.Ltmp263:
	.cfi_offset %r13, -40
.Ltmp264:
	.cfi_offset %r14, -32
.Ltmp265:
	.cfi_offset %r15, -24
.Ltmp266:
	.cfi_offset %rbp, -16
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	$0, 32(%rsp)
	movq	$0, 24(%rsp)
	leaq	32(%rsp), %rsi
	movq	%r12, %rdi
	callq	*1680(%r12)
	movl	1112(%r12), %edi
	movq	32(%rsp), %rsi
	leaq	24(%rsp), %rdx
	leaq	40(%rsp), %rcx
	callq	gsicc_extract_profile
	movl	328(%rbx), %eax
	movl	%eax, 324(%rsp)
	movl	1112(%r12), %eax
	movl	%eax, 332(%rsp)
	movl	$0, 340(%rsp)
	movl	$8, 328(%rsp)
	movl	324(%rbx), %eax
	movl	%eax, 320(%rsp)
	movl	$0, 336(%rsp)
	movswl	(%r14), %eax
	movl	%eax, %ecx
	shrl	$11, %ecx
	leal	(%rcx,%rax,2), %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movw	%ax, 192(%rsp)
	movswl	2(%r14), %eax
	movl	%eax, %ecx
	shrl	$11, %ecx
	leal	(%rcx,%rax,2), %r15d
	movw	%r15w, 194(%rsp)
	movswl	4(%r14), %eax
	movl	%eax, %ecx
	shrl	$11, %ecx
	leal	(%rcx,%rax,2), %r13d
	movw	%r13w, 196(%rsp)
	movswl	6(%r14), %eax
	movl	%eax, %ecx
	shrl	$11, %ecx
	leal	(%rcx,%rax,2), %ebp
	movw	%bp, 198(%rsp)
	movq	8(%rbx), %r9
	movq	336(%rbx), %rax
	movq	24(%rax), %rdx
	movq	24(%rsp), %rcx
	movq	32(%rsp), %rax
	movl	152(%rax), %eax
	movl	%eax, (%rsp)
	leaq	320(%rsp), %r8
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	gsicc_get_link_profile
	movl	%ebp, %ecx
	movq	%rax, %rbx
	movl	20(%rsp), %eax          # 4-byte Reload
	cmpl	$0, 116(%rbx)
	jne	.LBB89_2
# BB#1:                                 # %if.else
	leaq	192(%rsp), %rdx
	leaq	64(%rsp), %rcx
	movl	$2, %r8d
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	*16(%rbx)
	movzwl	64(%rsp), %eax
	movzwl	66(%rsp), %r15d
	movzwl	68(%rsp), %r13d
	movzwl	70(%rsp), %ecx
.LBB89_2:                               # %if.end
	movzwl	%ax, %eax
	cvtsi2ssl	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm3
	movsd	.LCPI89_0(%rip), %xmm0  # xmm0 = mem[0],zero
	divsd	%xmm0, %xmm3
	movsd	.LCPI89_1(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm3
	movsd	.LCPI89_2(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %eax
	movw	%ax, (%r14)
	movzwl	%r15w, %eax
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%eax, %xmm3
	cvtss2sd	%xmm3, %xmm3
	divsd	%xmm0, %xmm3
	addsd	%xmm1, %xmm3
	mulsd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %eax
	movw	%ax, 2(%r14)
	movzwl	%r13w, %eax
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%eax, %xmm3
	cvtss2sd	%xmm3, %xmm3
	divsd	%xmm0, %xmm3
	addsd	%xmm1, %xmm3
	mulsd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %eax
	movw	%ax, 4(%r14)
	movzwl	%cx, %eax
	xorps	%xmm3, %xmm3
	cvtsi2ssl	%eax, %xmm3
	cvtss2sd	%xmm3, %xmm3
	divsd	%xmm0, %xmm3
	addsd	%xmm1, %xmm3
	mulsd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %eax
	movw	%ax, 6(%r14)
	movq	%rbx, %rdi
	callq	gsicc_release_link
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end89:
	.size	devicen_icc_cmyk, .Lfunc_end89-devicen_icc_cmyk
	.cfi_endproc

	.align	16, 0x90
	.type	cmap_devicen_halftoned,@function
cmap_devicen_halftoned:                 # @cmap_devicen_halftoned
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp267:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp268:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp269:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp270:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp271:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp272:
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
.Ltmp273:
	.cfi_def_cfa_offset 256
.Ltmp274:
	.cfi_offset %rbx, -56
.Ltmp275:
	.cfi_offset %r12, -48
.Ltmp276:
	.cfi_offset %r13, -40
.Ltmp277:
	.cfi_offset %r14, -32
.Ltmp278:
	.cfi_offset %r15, -24
.Ltmp279:
	.cfi_offset %rbp, -16
	movl	%r8d, 20(%rsp)          # 4-byte Spill
	movq	%rcx, %r12
	movq	%rdx, %r13
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %rbp
	movabsq	$8589934576, %r14       # imm = 0x1FFFFFFF0
	movl	100(%r12), %r15d
	movq	$0, 32(%rsp)
	movq	$0, 24(%rsp)
	leaq	32(%rsp), %rsi
	movq	%r12, %rdi
	callq	*1680(%r12)
	movl	1112(%r12), %edi
	movq	32(%rsp), %rsi
	leaq	24(%rsp), %rdx
	leaq	40(%rsp), %rcx
	callq	gsicc_extract_profile
	testl	%r15d, %r15d
	jle	.LBB90_13
# BB#1:                                 # %for.body.preheader
	leal	-1(%r15), %ecx
	leaq	1(%rcx), %rax
	xorl	%esi, %esi
	movq	%rax, %rdx
	andq	%r14, %rdx
	je	.LBB90_10
# BB#2:                                 # %vector.body.preheader
	movq	%rbp, %r8
	leaq	1(%rcx), %rbx
	andq	%r14, %rbx
	addq	$-16, %rbx
	movl	%ebx, %esi
	shrl	$4, %esi
	incl	%esi
	xorl	%edi, %edi
	testb	$3, %sil
	je	.LBB90_5
# BB#3:                                 # %vector.body.prol.preheader
	movl	%r15d, %ebp
	andl	$48, %ebp
	addl	$-16, %ebp
	shrl	$4, %ebp
	incl	%ebp
	andl	$3, %ebp
	negq	%rbp
	xorl	%edi, %edi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB90_4:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movaps	%xmm0, 64(%rsp,%rdi,2)
	movaps	%xmm0, 80(%rsp,%rdi,2)
	addq	$16, %rdi
	incq	%rbp
	jne	.LBB90_4
.LBB90_5:                               # %vector.body.preheader.split
	cmpq	$48, %rbx
	jae	.LBB90_7
# BB#6:
	movq	%rdx, %rsi
	movq	%r8, %rbp
	jmp	.LBB90_10
.LBB90_7:                               # %vector.body.preheader.split.split
	incq	%rcx
	andq	%r14, %rcx
	subq	%rdi, %rcx
	leaq	176(%rsp,%rdi,2), %rsi
	xorps	%xmm0, %xmm0
	movq	%r8, %rbp
	.align	16, 0x90
.LBB90_8:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movaps	%xmm0, -112(%rsi)
	movaps	%xmm0, -96(%rsi)
	movaps	%xmm0, -80(%rsi)
	movaps	%xmm0, -64(%rsi)
	movaps	%xmm0, -48(%rsi)
	movaps	%xmm0, -32(%rsi)
	movaps	%xmm0, -16(%rsi)
	movaps	%xmm0, (%rsi)
	subq	$-128, %rsi
	addq	$-64, %rcx
	jne	.LBB90_8
# BB#9:
	movq	%rdx, %rsi
.LBB90_10:                              # %middle.block
	cmpq	%rsi, %rax
	je	.LBB90_13
# BB#11:                                # %for.body.preheader129
	leaq	64(%rsp,%rsi,2), %rax
	movl	%r15d, %ecx
	subl	%esi, %ecx
	.align	16, 0x90
.LBB90_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rax)
	addq	$2, %rax
	decl	%ecx
	jne	.LBB90_12
.LBB90_13:                              # %for.end
	movl	1036(%r13), %edi
	movl	%edi, %esi
	decl	%esi
	js	.LBB90_25
# BB#14:                                # %for.body.lr.ph.i
	movslq	%esi, %rdx
	leaq	1(%rsi), %r9
	movq	%r9, %rax
	andq	%r14, %rax
	xorl	%ecx, %ecx
	movq	%r9, %r10
	andq	%r14, %r10
	je	.LBB90_22
# BB#15:                                # %vector.body100.preheader
	leal	-1(%rdi), %r8d
	leaq	1(%r8), %rbx
	andq	%r14, %rbx
	addq	$-16, %rbx
	movl	%ebx, %esi
	shrl	$4, %esi
	incl	%esi
	xorl	%ecx, %ecx
	testb	$3, %sil
	je	.LBB90_18
# BB#16:                                # %vector.body100.prol.preheader
	movslq	%r8d, %rcx
	leaq	50(%rsp,%rcx,2), %rsi
	andl	$48, %edi
	addl	$-16, %edi
	shrl	$4, %edi
	incl	%edi
	andl	$3, %edi
	negq	%rdi
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB90_17:                              # %vector.body100.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rsi)
	movups	%xmm0, -16(%rsi)
	addq	$16, %rcx
	addq	$-32, %rsi
	incq	%rdi
	jne	.LBB90_17
.LBB90_18:                              # %vector.body100.preheader.split
	movq	%rdx, %rdi
	subq	%rax, %rdi
	movl	%edx, %esi
	subl	%eax, %esi
	cmpq	$48, %rbx
	jb	.LBB90_21
# BB#19:                                # %vector.body100.preheader.split.split
	leaq	1(%r8), %rax
	andq	%r14, %rax
	subq	%rcx, %rax
	movslq	%r8d, %rdx
	addq	$-7, %rdx
	subq	%rcx, %rdx
	leaq	64(%rsp,%rdx,2), %rcx
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB90_20:                              # %vector.body100
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rcx)
	movups	%xmm0, -16(%rcx)
	movups	%xmm0, -32(%rcx)
	movups	%xmm0, -48(%rcx)
	movups	%xmm0, -64(%rcx)
	movups	%xmm0, -80(%rcx)
	movups	%xmm0, -96(%rcx)
	movups	%xmm0, -112(%rcx)
	addq	$-128, %rcx
	addq	$-64, %rax
	jne	.LBB90_20
.LBB90_21:
	movq	%rdi, %rdx
	movq	%r10, %rcx
.LBB90_22:                              # %middle.block101
	cmpq	%rcx, %r9
	je	.LBB90_25
# BB#23:                                # %for.body.i.preheader
	leaq	64(%rsp,%rdx,2), %rax
	.align	16, 0x90
.LBB90_24:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rax)
	addq	$-2, %rax
	decl	%esi
	jns	.LBB90_24
.LBB90_25:                              # %for.end.i
	movl	1032(%r13), %ecx
	movl	%ecx, %eax
	decl	%eax
	movl	20(%rsp), %r14d         # 4-byte Reload
	js	.LBB90_36
# BB#26:                                # %for.body.4.lr.ph.i
	movslq	%eax, %rdx
	testb	$1, %cl
	je	.LBB90_30
# BB#27:                                # %for.body.4.i.prol
	movslq	1048(%r13,%rdx,4), %rax
	testq	%rax, %rax
	js	.LBB90_29
# BB#28:                                # %if.then.i.prol
	movw	(%rbp,%rdx,2), %si
	movw	%si, 64(%rsp,%rax,2)
.LBB90_29:                              # %for.cond.2.backedge.i.prol
	leal	-2(%rcx), %eax
	decq	%rdx
.LBB90_30:                              # %for.body.4.lr.ph.i.split
	cmpl	$1, %ecx
	je	.LBB90_36
# BB#31:                                # %for.body.4.lr.ph.i.split.split
	leaq	1048(%r13,%rdx,4), %rcx
	leaq	(%rbp,%rdx,2), %rdx
	.align	16, 0x90
.LBB90_32:                              # %for.body.4.i
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rcx), %rsi
	testq	%rsi, %rsi
	js	.LBB90_33
# BB#57:                                # %if.then.i
                                        #   in Loop: Header=BB90_32 Depth=1
	movw	(%rdx), %di
	movw	%di, 64(%rsp,%rsi,2)
.LBB90_33:                              # %for.cond.2.backedge.i
                                        #   in Loop: Header=BB90_32 Depth=1
	movslq	-4(%rcx), %rsi
	testq	%rsi, %rsi
	js	.LBB90_35
# BB#34:                                # %if.then.i.1
                                        #   in Loop: Header=BB90_32 Depth=1
	movw	-2(%rdx), %di
	movw	%di, 64(%rsp,%rsi,2)
.LBB90_35:                              # %for.cond.2.backedge.i.1
                                        #   in Loop: Header=BB90_32 Depth=1
	addq	$-8, %rcx
	addq	$-4, %rdx
	addl	$-2, %eax
	jns	.LBB90_32
.LBB90_36:                              # %map_components_to_colorants.exit
	movq	1624(%r12), %rax
	testq	%rax, %rax
	je	.LBB90_41
# BB#37:                                # %if.then.i.43
	movq	%r12, %rdi
	callq	*%rax
	testq	%rax, %rax
	je	.LBB90_41
# BB#38:                                # %devicen_has_cmyk.exit
	cmpl	$4, 16(%rax)
	jne	.LBB90_41
# BB#39:                                # %land.lhs.true
	movq	24(%rsp), %rax
	cmpl	$3, 16(%rax)
	jne	.LBB90_41
# BB#40:                                # %if.then
	leaq	64(%rsp), %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	devicen_icc_cmyk
.LBB90_41:                              # %if.end
	cmpl	$1, 104(%r12)
	jne	.LBB90_42
# BB#48:                                # %for.cond.8.preheader
	testl	%r15d, %r15d
	jle	.LBB90_54
# BB#49:                                # %for.body.10.preheader
	leaq	496(%r13), %rax
	leaq	64(%rsp), %rcx
	movl	$gs_identity_transfer, %r8d
	.align	16, 0x90
.LBB90_50:                              # %for.body.10
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax), %r9
	cmpq	%r8, 24(%r9)
	movw	(%rcx), %si
	je	.LBB90_53
# BB#51:                                # %cond.false
                                        #   in Loop: Header=BB90_50 Depth=1
	movswl	%si, %r10d
	movl	%r10d, %ebx
	sarl	$12, %ebx
	addl	%r10d, %ebx
	movl	%ebx, %esi
	sarl	$8, %esi
	subl	%esi, %ebx
	movl	%ebx, %ebp
	sarl	$7, %ebp
	movslq	%ebp, %rsi
	movw	56(%r9,%rsi,2), %si
	movl	%ebx, %edi
	andl	$65408, %edi            # imm = 0xFF80
	movl	%ebx, %edx
	shrl	$8, %edx
	shrl	$12, %ebx
	subl	%ebx, %edx
	addl	%edi, %edx
	movswl	%dx, %edx
	subl	%edx, %r10d
	je	.LBB90_53
# BB#52:                                # %if.end.i
                                        #   in Loop: Header=BB90_50 Depth=1
	movswl	%si, %edx
	incl	%ebp
	movslq	%ebp, %rsi
	movswl	56(%r9,%rsi,2), %esi
	subl	%edx, %esi
	imull	%r10d, %esi
	shrl	$7, %esi
	addl	%edx, %esi
.LBB90_53:                              # %cond.end
                                        #   in Loop: Header=BB90_50 Depth=1
	movw	%si, (%rcx)
	addq	$2, %rcx
	addq	$8, %rax
	decl	%r15d
	jne	.LBB90_50
	jmp	.LBB90_54
.LBB90_42:                              # %for.cond.30.preheader
	testl	%r15d, %r15d
	jle	.LBB90_54
# BB#43:                                # %for.body.33.preheader
	leaq	496(%r13), %rax
	leaq	64(%rsp), %rcx
	movl	$gs_identity_transfer, %r8d
	.align	16, 0x90
.LBB90_44:                              # %for.body.33
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax), %r9
	movw	$32760, %si             # imm = 0x7FF8
	subw	(%rcx), %si
	cmpq	%r8, 24(%r9)
	je	.LBB90_47
# BB#45:                                # %cond.false.46
                                        #   in Loop: Header=BB90_44 Depth=1
	movswl	%si, %r10d
	movl	%r10d, %ebx
	sarl	$12, %ebx
	addl	%r10d, %ebx
	movl	%ebx, %esi
	sarl	$8, %esi
	subl	%esi, %ebx
	movl	%ebx, %ebp
	sarl	$7, %ebp
	movslq	%ebp, %rsi
	movw	56(%r9,%rsi,2), %si
	movl	%ebx, %edi
	andl	$65408, %edi            # imm = 0xFF80
	movl	%ebx, %edx
	shrl	$8, %edx
	shrl	$12, %ebx
	subl	%ebx, %edx
	addl	%edi, %edx
	movswl	%dx, %edx
	subl	%edx, %r10d
	je	.LBB90_47
# BB#46:                                # %if.end.i.75
                                        #   in Loop: Header=BB90_44 Depth=1
	movswl	%si, %edx
	incl	%ebp
	movslq	%ebp, %rsi
	movswl	56(%r9,%rsi,2), %esi
	subl	%edx, %esi
	imull	%r10d, %esi
	shrl	$7, %esi
	addl	%edx, %esi
.LBB90_47:                              # %cond.end.59
                                        #   in Loop: Header=BB90_44 Depth=1
	movl	$32760, %edx            # imm = 0x7FF8
	subl	%esi, %edx
	movw	%dx, (%rcx)
	addq	$2, %rcx
	addq	$8, %rax
	decl	%r15d
	jne	.LBB90_44
.LBB90_54:                              # %if.end.68
	movq	392(%r13), %rcx
	movslq	%r14d, %rax
	leaq	376(%r13,%rax,8), %r8
	leaq	64(%rsp), %rdi
	movq	8(%rsp), %rbx           # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	gx_render_device_DeviceN
	cmpl	$1, %eax
	jne	.LBB90_56
# BB#55:                                # %if.then.75
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	movl	%r14d, %ecx
	callq	*32(%rax)
.LBB90_56:                              # %if.end.77
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end90:
	.size	cmap_devicen_halftoned, .Lfunc_end90-cmap_devicen_halftoned
	.cfi_endproc

	.align	16, 0x90
	.type	cmap_halftoned_is_halftoned,@function
cmap_halftoned_is_halftoned:            # @cmap_halftoned_is_halftoned
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %eax
	retq
.Lfunc_end91:
	.size	cmap_halftoned_is_halftoned, .Lfunc_end91-cmap_halftoned_is_halftoned
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gx_device_color"
	.size	.L.str, 16

	.type	st_device_color,@object # @st_device_color
	.section	.rodata,"a",@progbits
	.globl	st_device_color
	.align	8
st_device_color:
	.long	656                     # 0x290
	.zero	4
	.quad	.L.str
	.quad	0
	.quad	0
	.quad	device_color_enum_ptrs
	.quad	device_color_reloc_ptrs
	.quad	0
	.quad	0
	.size	st_device_color, 64

	.type	DeviceGray_procs,@object # @DeviceGray_procs
	.align	8
DeviceGray_procs:
	.quad	gray_cs_to_gray_cm
	.quad	rgb_cs_to_gray_cm
	.quad	cmyk_cs_to_gray_cm
	.size	DeviceGray_procs, 24

	.type	DeviceRGB_procs,@object # @DeviceRGB_procs
	.align	8
DeviceRGB_procs:
	.quad	gray_cs_to_rgb_cm
	.quad	rgb_cs_to_rgb_cm
	.quad	cmyk_cs_to_rgb_cm
	.size	DeviceRGB_procs, 24

	.type	DeviceCMYK_procs,@object # @DeviceCMYK_procs
	.align	8
DeviceCMYK_procs:
	.quad	gray_cs_to_cmyk_cm
	.quad	rgb_cs_to_cmyk_cm
	.quad	cmyk_cs_to_cmyk_cm
	.size	DeviceCMYK_procs, 24

	.type	DeviceRGBK_procs,@object # @DeviceRGBK_procs
	.align	8
DeviceRGBK_procs:
	.quad	gray_cs_to_rgbk_cm
	.quad	rgb_cs_to_rgbk_cm
	.quad	cmyk_cs_to_rgbk_cm
	.size	DeviceRGBK_procs, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"No get_color_mapping_procs proc defined for device '%s'\n"
	.size	.L.str.1, 57

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Gray"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Grey"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Red"
	.size	.L.str.4, 4

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Green"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Blue"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Cyan"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Magenta"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Yellow"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Black"
	.size	.L.str.10, 6

	.type	cmap_many,@object       # @cmap_many
	.section	.rodata,"a",@progbits
	.align	8
cmap_many:
	.quad	cmap_gray_direct
	.quad	cmap_rgb_direct
	.quad	cmap_cmyk_direct
	.quad	cmap_rgb_alpha_direct
	.quad	cmap_separation_direct
	.quad	cmap_devicen_direct
	.quad	cmap_direct_is_halftoned
	.size	cmap_many, 56

	.type	cmap_procs_default,@object # @cmap_procs_default
	.globl	cmap_procs_default
	.align	8
cmap_procs_default:
	.quad	cmap_many
	.size	cmap_procs_default, 8

	.type	cmap_few,@object        # @cmap_few
	.align	8
cmap_few:
	.quad	cmap_gray_halftoned
	.quad	cmap_rgb_halftoned
	.quad	cmap_cmyk_direct
	.quad	cmap_rgb_alpha_halftoned
	.quad	cmap_separation_halftoned
	.quad	cmap_devicen_halftoned
	.quad	cmap_halftoned_is_halftoned
	.size	cmap_few, 56


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
