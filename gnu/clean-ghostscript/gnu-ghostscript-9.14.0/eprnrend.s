	.text
	.file	"eprnrend.bc"
	.globl	eprn_number_of_bitplanes
	.align	16, 0x90
	.type	eprn_number_of_bitplanes,@function
eprn_number_of_bitplanes:               # @eprn_number_of_bitplanes
	.cfi_startproc
# BB#0:                                 # %entry
	movl	18644(%rdi), %eax
	retq
.Lfunc_end0:
	.size	eprn_number_of_bitplanes, .Lfunc_end0-eprn_number_of_bitplanes
	.cfi_endproc

	.globl	eprn_number_of_octets
	.align	16, 0x90
	.type	eprn_number_of_octets,@function
eprn_number_of_octets:                  # @eprn_number_of_octets
	.cfi_startproc
# BB#0:                                 # %entry
	movl	18640(%rdi), %eax
	movzwl	108(%rdi), %r8d
	leal	-1(%rax,%r8), %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	divl	%r8d
	cmpl	$0, 18644(%rdi)
	je	.LBB1_2
	.align	16, 0x90
.LBB1_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %edx
	movl	%eax, (%rsi,%rdx,4)
	incl	%ecx
	cmpl	18644(%rdi), %ecx
	jb	.LBB1_1
.LBB1_2:                                # %for.end
	retq
.Lfunc_end1:
	.size	eprn_number_of_octets, .Lfunc_end1-eprn_number_of_octets
	.cfi_endproc

	.globl	eprn_map_rgb_color_for_RGB
	.align	16, 0x90
	.type	eprn_map_rgb_color_for_RGB,@function
eprn_map_rgb_color_for_RGB:             # @eprn_map_rgb_color_for_RGB
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	2(%rsi), %edx
	movzwl	4(%rsi), %ecx
	movl	$2, %eax
	cmpw	$0, (%rsi)
	js	.LBB2_2
# BB#1:                                 # %select.mid
	xorl	%eax, %eax
.LBB2_2:                                # %select.end
	testw	%dx, %dx
	jns	.LBB2_4
# BB#3:
	orq	$4, %rax
.LBB2_4:                                # %select.end11
	testw	%cx, %cx
	jns	.LBB2_6
# BB#5:
	orq	$8, %rax
.LBB2_6:                                # %select.end13
	retq
.Lfunc_end2:
	.size	eprn_map_rgb_color_for_RGB, .Lfunc_end2-eprn_map_rgb_color_for_RGB
	.cfi_endproc

	.globl	eprn_map_rgb_color_for_CMY_or_K
	.align	16, 0x90
	.type	eprn_map_rgb_color_for_CMY_or_K,@function
eprn_map_rgb_color_for_CMY_or_K:        # @eprn_map_rgb_color_for_CMY_or_K
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	2(%rsi), %edx
	movzwl	4(%rsi), %eax
	movl	$12, %ecx
	cmpw	$0, (%rsi)
	js	.LBB3_2
# BB#1:                                 # %select.mid
	movl	$14, %ecx
.LBB3_2:                                # %select.end
	movl	%ecx, %esi
	andl	$10, %esi
	testw	%dx, %dx
	js	.LBB3_4
# BB#3:                                 # %select.mid13
	movq	%rcx, %rsi
.LBB3_4:                                # %select.end12
	movl	%esi, %ecx
	andl	$6, %ecx
	testw	%ax, %ax
	js	.LBB3_6
# BB#5:                                 # %select.mid15
	movq	%rsi, %rcx
.LBB3_6:                                # %select.end14
	cmpq	$14, %rcx
	movl	$1, %eax
	cmovneq	%rcx, %rax
	cmpl	$2, 18556(%rdi)
	cmoveq	%rcx, %rax
	retq
.Lfunc_end3:
	.size	eprn_map_rgb_color_for_CMY_or_K, .Lfunc_end3-eprn_map_rgb_color_for_CMY_or_K
	.cfi_endproc

	.globl	eprn_map_rgb_color_for_RGB_flex
	.align	16, 0x90
	.type	eprn_map_rgb_color_for_RGB_flex,@function
eprn_map_rgb_color_for_RGB_flex:        # @eprn_map_rgb_color_for_RGB_flex
	.cfi_startproc
# BB#0:                                 # %entry
	movl	18564(%rdi), %r10d
	movl	$65535, %eax            # imm = 0xFFFF
	xorl	%edx, %edx
	divl	%r10d
	movl	%eax, %r8d
	movzwl	4(%rsi), %eax
	xorl	%edx, %edx
	divl	%r8d
	movl	%eax, %r9d
	leal	-1(%r10), %r11d
	cmpl	%r10d, %r9d
	cmovael	%r11d, %r9d
	movb	18600(%rdi), %cl
	shll	%cl, %r9d
	movzwl	2(%rsi), %eax
	xorl	%edx, %edx
	divl	%r8d
	movl	%eax, %edi
	cmpl	%r10d, %edi
	cmovael	%r11d, %edi
	orl	%r9d, %edi
	shlq	%cl, %rdi
	movzwl	(%rsi), %eax
	xorl	%edx, %edx
	divl	%r8d
	cmpl	%r10d, %eax
	cmovbl	%eax, %r11d
	movl	%r11d, %eax
	orq	%rax, %rdi
	shlq	%cl, %rdi
	movq	%rdi, %rax
	retq
.Lfunc_end4:
	.size	eprn_map_rgb_color_for_RGB_flex, .Lfunc_end4-eprn_map_rgb_color_for_RGB_flex
	.cfi_endproc

	.globl	eprn_map_rgb_color_for_CMY_or_K_flex
	.align	16, 0x90
	.type	eprn_map_rgb_color_for_CMY_or_K_flex,@function
eprn_map_rgb_color_for_CMY_or_K_flex:   # @eprn_map_rgb_color_for_CMY_or_K_flex
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %rbp, -16
	movzwl	(%rsi), %eax
	movzwl	2(%rsi), %ebx
	movzwl	4(%rsi), %ecx
	movl	18556(%rdi), %r11d
	movl	%eax, %r10d
	notl	%r10d
	cmpl	%ecx, %ebx
	jne	.LBB5_6
# BB#1:                                 # %entry
	movzwl	%bx, %edx
	movzwl	%ax, %eax
	cmpl	%edx, %eax
	jne	.LBB5_6
# BB#2:                                 # %entry
	cmpl	$2, %r11d
	je	.LBB5_6
# BB#3:                                 # %if.then
	xorl	%esi, %esi
	testl	%r11d, %r11d
	je	.LBB5_5
# BB#4:                                 # %if.end.42.i
	movl	18564(%rdi), %eax
	leal	-1(%rax), %edx
	testl	%eax, %eax
	cmovnel	%esi, %edx
	movb	18600(%rdi), %cl
	movl	%edx, %eax
	shll	%cl, %eax
	orl	%edx, %eax
	shlq	%cl, %rax
	movl	%edx, %esi
	orq	%rax, %rsi
	shlq	%cl, %rsi
.LBB5_5:                                # %if.then.46.i
	movl	18560(%rdi), %edi
	movl	$65535, %eax            # imm = 0xFFFF
	xorl	%edx, %edx
	divl	%edi
	movl	%eax, %ecx
	movzwl	%r10w, %eax
	xorl	%edx, %edx
	divl	%ecx
	leal	-1(%rdi), %ecx
	cmpl	%edi, %eax
	cmovbl	%eax, %ecx
	movl	%ecx, %eax
	jmp	.LBB5_9
.LBB5_6:                                # %if.end
	xorl	%eax, %eax
	testl	%r11d, %r11d
	je	.LBB5_8
# BB#7:                                 # %if.end.42.i.46
	notl	%ecx
	notl	%ebx
	movl	18564(%rdi), %r14d
	movl	$65535, %eax            # imm = 0xFFFF
	xorl	%edx, %edx
	divl	%r14d
	movl	%eax, %r8d
	movzwl	%cx, %eax
	xorl	%edx, %edx
	divl	%r8d
	movl	%eax, %r9d
	leal	-1(%r14), %ebp
	cmpl	%r14d, %r9d
	cmovael	%ebp, %r9d
	movb	18600(%rdi), %cl
	shll	%cl, %r9d
	movzwl	%bx, %eax
	xorl	%edx, %edx
	divl	%r8d
	movl	%eax, %esi
	cmpl	%r14d, %esi
	cmovael	%ebp, %esi
	orl	%r9d, %esi
	shlq	%cl, %rsi
	movzwl	%r10w, %eax
	xorl	%edx, %edx
	divl	%r8d
	cmpl	%r14d, %eax
	cmovbl	%eax, %ebp
	movl	%ebp, %eax
	orq	%rsi, %rax
	shlq	%cl, %rax
	cmpl	$2, %r11d
	je	.LBB5_10
.LBB5_8:                                # %if.then.46.i.57
	movl	18560(%rdi), %ecx
	leal	-1(%rcx), %edx
	xorl	%esi, %esi
	testl	%ecx, %ecx
	cmoveq	%rdx, %rsi
.LBB5_9:                                # %cleanup
	orq	%rsi, %rax
.LBB5_10:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	eprn_map_rgb_color_for_CMY_or_K_flex, .Lfunc_end5-eprn_map_rgb_color_for_CMY_or_K_flex
	.cfi_endproc

	.globl	eprn_map_cmyk_color_flex
	.align	16, 0x90
	.type	eprn_map_cmyk_color_flex,@function
eprn_map_cmyk_color_flex:               # @eprn_map_cmyk_color_flex
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp8:
	.cfi_def_cfa_offset 32
.Ltmp9:
	.cfi_offset %rbx, -32
.Ltmp10:
	.cfi_offset %r14, -24
.Ltmp11:
	.cfi_offset %rbp, -16
	movzwl	6(%rsi), %r8d
	movl	18556(%rdi), %r14d
	xorl	%r9d, %r9d
	testl	%r14d, %r14d
	je	.LBB6_2
# BB#1:                                 # %if.end.42
	movl	18564(%rdi), %ebx
	movl	$65535, %eax            # imm = 0xFFFF
	xorl	%edx, %edx
	divl	%ebx
	movl	%eax, %r9d
	movzwl	4(%rsi), %eax
	xorl	%edx, %edx
	divl	%r9d
	movl	%eax, %r10d
	leal	-1(%rbx), %ebp
	cmpl	%ebx, %r10d
	cmovael	%ebp, %r10d
	movb	18600(%rdi), %cl
	shll	%cl, %r10d
	movzwl	2(%rsi), %eax
	xorl	%edx, %edx
	divl	%r9d
	movl	%eax, %r11d
	cmpl	%ebx, %r11d
	cmovael	%ebp, %r11d
	orl	%r10d, %r11d
	shlq	%cl, %r11
	movzwl	(%rsi), %eax
	xorl	%edx, %edx
	divl	%r9d
	cmpl	%ebx, %eax
	cmovbl	%eax, %ebp
	movl	%ebp, %r9d
	orq	%r11, %r9
	shlq	%cl, %r9
	cmpl	$2, %r14d
	je	.LBB6_3
.LBB6_2:                                # %if.then.46
	movl	18560(%rdi), %esi
	movl	$65535, %eax            # imm = 0xFFFF
	xorl	%edx, %edx
	divl	%esi
	movl	%eax, %ecx
	xorl	%edx, %edx
	movl	%r8d, %eax
	divl	%ecx
	leal	-1(%rsi), %ecx
	cmpl	%esi, %eax
	cmovbl	%eax, %ecx
	movl	%ecx, %eax
	orq	%rax, %r9
.LBB6_3:                                # %if.end.61
	movq	%r9, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	eprn_map_cmyk_color_flex, .Lfunc_end6-eprn_map_cmyk_color_flex
	.cfi_endproc

	.globl	eprn_map_rgb_color_for_RGB_max
	.align	16, 0x90
	.type	eprn_map_rgb_color_for_RGB_max,@function
eprn_map_rgb_color_for_RGB_max:         # @eprn_map_rgb_color_for_RGB_max
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %eax
	andl	$65280, %eax            # imm = 0xFF00
	movzwl	2(%rsi), %ecx
	shlq	$8, %rcx
	andl	$16711680, %ecx         # imm = 0xFF0000
	orq	%rax, %rcx
	movzwl	4(%rsi), %eax
	andq	$65280, %rax            # imm = 0xFF00
	shlq	$16, %rax
	orq	%rcx, %rax
	retq
.Lfunc_end7:
	.size	eprn_map_rgb_color_for_RGB_max, .Lfunc_end7-eprn_map_rgb_color_for_RGB_max
	.cfi_endproc

	.globl	eprn_map_rgb_color_for_CMY_or_K_max
	.align	16, 0x90
	.type	eprn_map_rgb_color_for_CMY_or_K_max,@function
eprn_map_rgb_color_for_CMY_or_K_max:    # @eprn_map_rgb_color_for_CMY_or_K_max
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rsi), %ecx
	notl	%ecx
	cmpl	$0, 18556(%rdi)
	je	.LBB8_1
# BB#2:                                 # %if.end
	movzwl	4(%rsi), %eax
	movzwl	2(%rsi), %edx
	notl	%edx
	notl	%eax
	movzwl	%cx, %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shlq	$8, %rdx
	andl	$16711680, %edx         # imm = 0xFF0000
	andq	$65280, %rax            # imm = 0xFF00
	shlq	$16, %rax
	orq	%rcx, %rax
	orq	%rdx, %rax
	retq
.LBB8_1:                                # %if.then
	movzwl	%cx, %eax
	shrq	$8, %rax
	retq
.Lfunc_end8:
	.size	eprn_map_rgb_color_for_CMY_or_K_max, .Lfunc_end8-eprn_map_rgb_color_for_CMY_or_K_max
	.cfi_endproc

	.globl	eprn_map_cmyk_color_max
	.align	16, 0x90
	.type	eprn_map_cmyk_color_max,@function
eprn_map_cmyk_color_max:                # @eprn_map_cmyk_color_max
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	6(%rsi), %ecx
	shrq	$8, %rcx
	movzwl	(%rsi), %edx
	andl	$65280, %edx            # imm = 0xFF00
	movzwl	2(%rsi), %eax
	shlq	$8, %rax
	andl	$16711680, %eax         # imm = 0xFF0000
	movzwl	4(%rsi), %esi
	andq	$65280, %rsi            # imm = 0xFF00
	shlq	$16, %rsi
	orq	%rdx, %rax
	orq	%rcx, %rax
	orq	%rsi, %rax
	retq
.Lfunc_end9:
	.size	eprn_map_cmyk_color_max, .Lfunc_end9-eprn_map_cmyk_color_max
	.cfi_endproc

	.globl	eprn_map_color_rgb
	.align	16, 0x90
	.type	eprn_map_color_rgb,@function
eprn_map_color_rgb:                     # @eprn_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	cmpl	$1, 18556(%rdi)
	movw	$-1, %cx
	cmovnew	%ax, %cx
	movw	%cx, 4(%rdx)
	movw	%cx, 2(%rdx)
	movw	%cx, (%rdx)
	movl	$-1, %eax
	retq
.Lfunc_end10:
	.size	eprn_map_color_rgb, .Lfunc_end10-eprn_map_color_rgb
	.cfi_endproc

	.globl	eprn_map_cmyk_color
	.align	16, 0x90
	.type	eprn_map_cmyk_color,@function
eprn_map_cmyk_color:                    # @eprn_map_cmyk_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	2(%rsi), %edi
	movzwl	4(%rsi), %edx
	movzwl	6(%rsi), %eax
	movl	$2, %ecx
	cmpw	$0, (%rsi)
	js	.LBB11_2
# BB#1:                                 # %select.mid
	xorl	%ecx, %ecx
.LBB11_2:                               # %select.end
	testw	%di, %di
	jns	.LBB11_4
# BB#3:
	orq	$4, %rcx
.LBB11_4:                               # %select.end13
	testw	%dx, %dx
	jns	.LBB11_6
# BB#5:
	orq	$8, %rcx
.LBB11_6:                               # %select.end15
	andl	$32768, %eax            # imm = 0x8000
	shrl	$15, %eax
	orq	%rcx, %rax
	retq
.Lfunc_end11:
	.size	eprn_map_cmyk_color, .Lfunc_end11-eprn_map_cmyk_color
	.cfi_endproc

	.globl	eprn_map_cmyk_color_glob
	.align	16, 0x90
	.type	eprn_map_cmyk_color_glob,@function
eprn_map_cmyk_color_glob:               # @eprn_map_cmyk_color_glob
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp13:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp14:
	.cfi_def_cfa_offset 32
.Ltmp15:
	.cfi_offset %rbx, -32
.Ltmp16:
	.cfi_offset %r14, -24
.Ltmp17:
	.cfi_offset %rbp, -16
	cmpl	$2, 18568(%rdi)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movzwl	6(%rsi), %eax
	shrq	$8, %rax
	movzwl	(%rsi), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	movzwl	2(%rsi), %r8d
	shlq	$8, %r8
	andl	$16711680, %r8d         # imm = 0xFF0000
	movzwl	4(%rsi), %edx
	andq	$65280, %rdx            # imm = 0xFF00
	shlq	$16, %rdx
	orq	%rcx, %r8
	orq	%rax, %r8
	orq	%rdx, %r8
	jmp	.LBB12_15
.LBB12_2:                               # %if.else
	cmpl	$1, 112(%rdi)
	ja	.LBB12_4
# BB#3:                                 # %lor.lhs.false
	cmpl	$2, 116(%rdi)
	jb	.LBB12_7
.LBB12_4:                               # %if.then.5
	movzwl	6(%rsi), %r9d
	movl	18556(%rdi), %r14d
	xorl	%r8d, %r8d
	testl	%r14d, %r14d
	je	.LBB12_6
# BB#5:                                 # %if.end.42.i
	movl	18564(%rdi), %ebx
	movl	$65535, %eax            # imm = 0xFFFF
	xorl	%edx, %edx
	divl	%ebx
	movl	%eax, %r8d
	movzwl	4(%rsi), %eax
	xorl	%edx, %edx
	divl	%r8d
	movl	%eax, %r10d
	leal	-1(%rbx), %ebp
	cmpl	%ebx, %r10d
	cmovael	%ebp, %r10d
	movb	18600(%rdi), %cl
	shll	%cl, %r10d
	movzwl	2(%rsi), %eax
	xorl	%edx, %edx
	divl	%r8d
	movl	%eax, %r11d
	cmpl	%ebx, %r11d
	cmovael	%ebp, %r11d
	orl	%r10d, %r11d
	shlq	%cl, %r11
	movzwl	(%rsi), %eax
	xorl	%edx, %edx
	divl	%r8d
	cmpl	%ebx, %eax
	cmovbl	%eax, %ebp
	movl	%ebp, %r8d
	orq	%r11, %r8
	shlq	%cl, %r8
	cmpl	$2, %r14d
	je	.LBB12_15
.LBB12_6:                               # %if.then.46.i
	movl	18560(%rdi), %esi
	movl	$65535, %eax            # imm = 0xFFFF
	xorl	%edx, %edx
	divl	%esi
	movl	%eax, %ecx
	xorl	%edx, %edx
	movl	%r9d, %eax
	divl	%ecx
	leal	-1(%rsi), %ecx
	cmpl	%esi, %eax
	cmovbl	%eax, %ecx
	movl	%ecx, %eax
	jmp	.LBB12_14
.LBB12_7:                               # %if.else.7
	movzwl	2(%rsi), %edx
	movzwl	4(%rsi), %ecx
	movzwl	6(%rsi), %r8d
	movl	$2, %eax
	cmpw	$0, (%rsi)
	js	.LBB12_9
# BB#8:                                 # %select.mid
	xorl	%eax, %eax
.LBB12_9:                               # %select.end
	testw	%dx, %dx
	jns	.LBB12_11
# BB#10:
	orq	$4, %rax
.LBB12_11:                              # %select.end29
	testw	%cx, %cx
	jns	.LBB12_13
# BB#12:
	orq	$8, %rax
.LBB12_13:                              # %select.end31
	andl	$32768, %r8d            # imm = 0x8000
	shrl	$15, %r8d
.LBB12_14:                              # %cleanup
	orq	%rax, %r8
.LBB12_15:                              # %cleanup
	movq	%r8, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end12:
	.size	eprn_map_cmyk_color_glob, .Lfunc_end12-eprn_map_cmyk_color_glob
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI13_0:
	.quad	1                       # 0x1
	.quad	1                       # 0x1
	.text
	.globl	eprn_finalize
	.align	16, 0x90
	.type	eprn_finalize,@function
eprn_finalize:                          # @eprn_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp19:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp20:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp21:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp22:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp23:
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
.Ltmp24:
	.cfi_def_cfa_offset 80
.Ltmp25:
	.cfi_offset %rbx, -56
.Ltmp26:
	.cfi_offset %r12, -48
.Ltmp27:
	.cfi_offset %r13, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%r8, %rbx
	movl	%edx, %r15d
	movl	%esi, %r14d
	movl	%r9d, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%r9), %eax
	andl	$-8, %eax
	movl	%r9d, %r12d
	subl	%eax, %r12d
	je	.LBB13_1
# BB#14:                                # %if.then
	movl	$8, %r13d
	subl	%r12d, %r13d
	testl	%edi, %edi
	je	.LBB13_15
# BB#21:                                # %if.then.2
	movq	%rcx, (%rsp)            # 8-byte Spill
	movq	%r9, 8(%rsp)            # 8-byte Spill
	movl	%r14d, %edi
	callq	eprn_bits_for_levels
	testl	%eax, %eax
	jle	.LBB13_31
# BB#22:                                # %for.body.9.preheader
	addl	$255, %r14d
	movl	%r12d, %r9d
	negl	%r9d
	andl	$1, %r9d
	movl	$8, %r8d
	subl	%r12d, %r8d
	xorl	%esi, %esi
	movl	%r14d, %ecx
	.align	16, 0x90
.LBB13_23:                              # %for.body.9
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_28 Depth 2
	movl	%ecx, %r10d
	shrl	%r10d
	testl	%r13d, %r13d
	jle	.LBB13_29
# BB#24:                                # %for.body.17.lr.ph
                                        #   in Loop: Header=BB13_23 Depth=1
	andl	$1, %ecx
	xorl	%ebp, %ebp
	testl	%r9d, %r9d
	je	.LBB13_26
# BB#25:                                # %for.body.17.prol
                                        #   in Loop: Header=BB13_23 Depth=1
	movq	(%rbx,%rsi,8), %rdx
	movzbl	(%rdx), %ebp
	addl	%ebp, %ebp
	orl	%ecx, %ebp
	movb	%bpl, (%rdx)
	movl	$1, %ebp
.LBB13_26:                              # %for.body.17.lr.ph.split
                                        #   in Loop: Header=BB13_23 Depth=1
	cmpl	$7, %r12d
	je	.LBB13_29
# BB#27:                                # %for.body.17.lr.ph.split.split
                                        #   in Loop: Header=BB13_23 Depth=1
	movl	%r8d, %edx
	subl	%ebp, %edx
	.align	16, 0x90
.LBB13_28:                              # %for.body.17
                                        #   Parent Loop BB13_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx,%rsi,8), %rbp
	movzbl	(%rbp), %edi
	addl	%edi, %edi
	orl	%ecx, %edi
	movb	%dil, (%rbp)
	movq	(%rbx,%rsi,8), %rdi
	movzbl	(%rdi), %ebp
	addl	%ebp, %ebp
	orl	%ecx, %ebp
	movb	%bpl, (%rdi)
	addl	$-2, %edx
	jne	.LBB13_28
.LBB13_29:                              # %for.end
                                        #   in Loop: Header=BB13_23 Depth=1
	andl	$127, %r10d
	incq	%rsi
	cmpl	%eax, %esi
	movl	%r10d, %ecx
	jne	.LBB13_23
# BB#30:                                # %for.end.26
	testl	%eax, %eax
	jle	.LBB13_31
# BB#43:                                # %for.body.9.lr.ph.1
	movslq	%eax, %rdx
	movl	$8, %ecx
	subl	%r12d, %ecx
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	xorl	%r8d, %r8d
	movl	%r14d, %esi
	.align	16, 0x90
.LBB13_44:                              # %for.body.9.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_49 Depth 2
	movl	%esi, %r11d
	shrl	%r11d
	testl	%r13d, %r13d
	jle	.LBB13_50
# BB#45:                                # %for.body.17.lr.ph.1
                                        #   in Loop: Header=BB13_44 Depth=1
	andl	$1, %esi
	xorl	%r10d, %r10d
	testl	%r9d, %r9d
	je	.LBB13_47
# BB#46:                                # %for.body.17.1.prol
                                        #   in Loop: Header=BB13_44 Depth=1
	movq	(%rbx,%rdx,8), %r10
	movzbl	(%r10), %ebp
	addl	%ebp, %ebp
	orl	%esi, %ebp
	movb	%bpl, (%r10)
	movl	$1, %r10d
.LBB13_47:                              # %for.body.17.lr.ph.1.split
                                        #   in Loop: Header=BB13_44 Depth=1
	cmpl	$7, %r12d
	je	.LBB13_50
# BB#48:                                # %for.body.17.lr.ph.1.split.split
                                        #   in Loop: Header=BB13_44 Depth=1
	movl	20(%rsp), %ebp          # 4-byte Reload
	subl	%r10d, %ebp
	.align	16, 0x90
.LBB13_49:                              # %for.body.17.1
                                        #   Parent Loop BB13_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx,%rdx,8), %rcx
	movzbl	(%rcx), %edi
	addl	%edi, %edi
	orl	%esi, %edi
	movb	%dil, (%rcx)
	movq	(%rbx,%rdx,8), %rcx
	movzbl	(%rcx), %edi
	addl	%edi, %edi
	orl	%esi, %edi
	movb	%dil, (%rcx)
	addl	$-2, %ebp
	jne	.LBB13_49
.LBB13_50:                              # %for.end.1
                                        #   in Loop: Header=BB13_44 Depth=1
	andl	$127, %r11d
	incl	%r8d
	incq	%rdx
	cmpl	%eax, %r8d
	movl	%r11d, %esi
	jne	.LBB13_44
# BB#51:                                # %for.end.26.1
	testl	%eax, %eax
	jle	.LBB13_31
# BB#52:                                # %for.body.9.lr.ph.2
	leal	(%rax,%rax), %ecx
	movslq	%ecx, %rdx
	movl	$8, %r8d
	subl	%r12d, %r8d
	xorl	%edi, %edi
	.align	16, 0x90
.LBB13_53:                              # %for.body.9.2
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_58 Depth 2
	movl	%r14d, %r10d
	shrl	%r10d
	testl	%r13d, %r13d
	jle	.LBB13_59
# BB#54:                                # %for.body.17.lr.ph.2
                                        #   in Loop: Header=BB13_53 Depth=1
	andl	$1, %r14d
	xorl	%ebp, %ebp
	testl	%r9d, %r9d
	je	.LBB13_56
# BB#55:                                # %for.body.17.2.prol
                                        #   in Loop: Header=BB13_53 Depth=1
	movq	(%rbx,%rdx,8), %rcx
	movzbl	(%rcx), %ebp
	addl	%ebp, %ebp
	orl	%r14d, %ebp
	movb	%bpl, (%rcx)
	movl	$1, %ebp
.LBB13_56:                              # %for.body.17.lr.ph.2.split
                                        #   in Loop: Header=BB13_53 Depth=1
	cmpl	$7, %r12d
	je	.LBB13_59
# BB#57:                                # %for.body.17.lr.ph.2.split.split
                                        #   in Loop: Header=BB13_53 Depth=1
	movl	%r8d, %ecx
	subl	%ebp, %ecx
	.align	16, 0x90
.LBB13_58:                              # %for.body.17.2
                                        #   Parent Loop BB13_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx,%rdx,8), %rbp
	movzbl	(%rbp), %esi
	addl	%esi, %esi
	orl	%r14d, %esi
	movb	%sil, (%rbp)
	movq	(%rbx,%rdx,8), %rsi
	movzbl	(%rsi), %ebp
	addl	%ebp, %ebp
	orl	%r14d, %ebp
	movb	%bpl, (%rsi)
	addl	$-2, %ecx
	jne	.LBB13_58
.LBB13_59:                              # %for.end.2
                                        #   in Loop: Header=BB13_53 Depth=1
	andl	$127, %r10d
	incl	%edi
	incq	%rdx
	cmpl	%eax, %edi
	movl	%r10d, %r14d
	jne	.LBB13_53
	jmp	.LBB13_31
.LBB13_15:                              # %for.cond.30.preheader
	testl	%r15d, %r15d
	jle	.LBB13_13
# BB#16:                                # %for.body.33.preheader
	movq	%rcx, (%rsp)            # 8-byte Spill
	movq	%r9, 8(%rsp)            # 8-byte Spill
	xorl	%ecx, %ecx
	testb	$1, %r15b
	je	.LBB13_18
# BB#17:                                # %for.body.33.prol
	movq	(%rbx), %rax
	movzbl	(%rax), %edx
	movb	%r13b, %cl
	shll	%cl, %edx
	movb	%dl, (%rax)
	movl	$1, %ecx
.LBB13_18:                              # %for.body.33.preheader.split
	cmpl	$1, %r15d
	je	.LBB13_31
# BB#19:                                # %for.body.33.preheader.split.split
	movl	%r15d, %eax
	subl	%ecx, %eax
	leaq	8(%rbx,%rcx,8), %rdx
	.align	16, 0x90
.LBB13_20:                              # %for.body.33
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rdx), %rsi
	movzbl	(%rsi), %edi
	movb	%r13b, %cl
	shll	%cl, %edi
	movb	%dil, (%rsi)
	movq	(%rdx), %rsi
	movzbl	(%rsi), %edi
	movb	%r13b, %cl
	shll	%cl, %edi
	movb	%dil, (%rsi)
	addq	$16, %rdx
	addl	$-2, %eax
	jne	.LBB13_20
.LBB13_31:                              # %for.cond.44.preheader
	testl	%r15d, %r15d
	movq	8(%rsp), %r9            # 8-byte Reload
	movq	(%rsp), %rcx            # 8-byte Reload
	jle	.LBB13_13
# BB#32:                                # %for.body.47.preheader
	movabsq	$8589934588, %r8        # imm = 0x1FFFFFFFC
	leal	-1(%r15), %eax
	leaq	1(%rax), %r10
	xorl	%esi, %esi
	movq	%r10, %rdx
	andq	%r8, %rdx
	je	.LBB13_40
# BB#33:                                # %vector.body.preheader
	leaq	1(%rax), %rdi
	andq	%r8, %rdi
	addq	$-4, %rdi
	movl	%edi, %esi
	shrl	$2, %esi
	incl	%esi
	xorl	%ebp, %ebp
	testb	$3, %sil
	je	.LBB13_36
# BB#34:                                # %vector.body.prol.preheader
	movl	%r15d, %esi
	andl	$12, %esi
	addl	$-4, %esi
	shrl	$2, %esi
	incl	%esi
	andl	$3, %esi
	negq	%rsi
	xorl	%ebp, %ebp
	movdqa	.LCPI13_0(%rip), %xmm0  # xmm0 = [1,1]
	.align	16, 0x90
.LBB13_35:                              # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%rbx,%rbp,8), %xmm1
	movdqu	16(%rbx,%rbp,8), %xmm2
	paddq	%xmm0, %xmm1
	paddq	%xmm0, %xmm2
	movdqu	%xmm1, (%rbx,%rbp,8)
	movdqu	%xmm2, 16(%rbx,%rbp,8)
	addq	$4, %rbp
	incq	%rsi
	jne	.LBB13_35
.LBB13_36:                              # %vector.body.preheader.split
	cmpq	$12, %rdi
	jb	.LBB13_39
# BB#37:                                # %vector.body.preheader.split.split
	incq	%rax
	andq	%r8, %rax
	subq	%rbp, %rax
	leaq	112(%rbx,%rbp,8), %rsi
	movdqa	.LCPI13_0(%rip), %xmm0  # xmm0 = [1,1]
	.align	16, 0x90
.LBB13_38:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-112(%rsi), %xmm1
	movdqu	-96(%rsi), %xmm2
	paddq	%xmm0, %xmm1
	paddq	%xmm0, %xmm2
	movdqu	%xmm1, -112(%rsi)
	movdqu	%xmm2, -96(%rsi)
	movdqu	-80(%rsi), %xmm1
	movdqu	-64(%rsi), %xmm2
	paddq	%xmm0, %xmm1
	paddq	%xmm0, %xmm2
	movdqu	%xmm1, -80(%rsi)
	movdqu	%xmm2, -64(%rsi)
	movdqu	-48(%rsi), %xmm1
	movdqu	-32(%rsi), %xmm2
	paddq	%xmm0, %xmm1
	paddq	%xmm0, %xmm2
	movdqu	%xmm1, -48(%rsi)
	movdqu	%xmm2, -32(%rsi)
	movdqu	-16(%rsi), %xmm1
	movdqu	(%rsi), %xmm2
	paddq	%xmm0, %xmm1
	paddq	%xmm0, %xmm2
	movdqu	%xmm1, -16(%rsi)
	movdqu	%xmm2, (%rsi)
	subq	$-128, %rsi
	addq	$-16, %rax
	jne	.LBB13_38
.LBB13_39:
	movq	%rdx, %rsi
.LBB13_40:                              # %middle.block
	cmpq	%rsi, %r10
	je	.LBB13_1
# BB#41:                                # %for.body.47.preheader76
	leaq	(%rbx,%rsi,8), %rax
	movl	%r15d, %edx
	subl	%esi, %edx
	.align	16, 0x90
.LBB13_42:                              # %for.body.47
                                        # =>This Inner Loop Header: Depth=1
	incq	(%rax)
	addq	$8, %rax
	decl	%edx
	jne	.LBB13_42
.LBB13_1:                               # %for.cond.54.preheader
	testl	%r15d, %r15d
	jle	.LBB13_13
# BB#2:                                 # %for.body.57.lr.ph
	xorl	%edx, %edx
	testb	$1, %r15b
	je	.LBB13_6
# BB#3:                                 # %for.body.57.prol
	testl	%r9d, %r9d
	je	.LBB13_5
# BB#4:                                 # %if.else.63.prol
	movl	(%rbx), %edx
	subl	(%rcx), %edx
.LBB13_5:                               # %for.inc.73.prol
	movl	%edx, 8(%rcx)
	movl	$1, %edx
.LBB13_6:                               # %for.body.57.lr.ph.split
	cmpl	$1, %r15d
	je	.LBB13_13
# BB#7:                                 # %for.body.57.lr.ph.split.split
	subl	%edx, %r15d
	leaq	1(%rdx), %rax
	shlq	$4, %rax
	leaq	8(%rcx,%rax), %rax
	leaq	8(%rbx,%rdx,8), %rcx
	.align	16, 0x90
.LBB13_8:                               # %for.body.57
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	testl	%r9d, %r9d
	movl	$0, %esi
	je	.LBB13_10
# BB#9:                                 # %if.else.63
                                        #   in Loop: Header=BB13_8 Depth=1
	movl	-8(%rcx), %esi
	subl	-24(%rax), %esi
.LBB13_10:                              # %for.inc.73
                                        #   in Loop: Header=BB13_8 Depth=1
	testl	%r9d, %r9d
	movl	%esi, -16(%rax)
	je	.LBB13_12
# BB#11:                                # %if.else.63.1
                                        #   in Loop: Header=BB13_8 Depth=1
	movl	(%rcx), %edx
	subl	-8(%rax), %edx
.LBB13_12:                              # %for.inc.73.1
                                        #   in Loop: Header=BB13_8 Depth=1
	movl	%edx, (%rax)
	addq	$32, %rax
	addq	$16, %rcx
	addl	$-2, %r15d
	jne	.LBB13_8
.LBB13_13:                              # %for.end.75
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	eprn_finalize, .Lfunc_end13-eprn_finalize
	.cfi_endproc

	.globl	eprn_fetch_scan_line
	.align	16, 0x90
	.type	eprn_fetch_scan_line,@function
eprn_fetch_scan_line:                   # @eprn_fetch_scan_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp33:
	.cfi_def_cfa_offset 32
.Ltmp34:
	.cfi_offset %rbx, -24
.Ltmp35:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	18640(%rbx), %ecx
	movl	18648(%rbx), %esi
	movq	(%r14), %rdx
	callq	gdev_prn_copy_scan_lines
	movl	$1, %esi
	cmpl	$1, %eax
	jne	.LBB14_10
# BB#1:                                 # %if.end
	movq	(%r14), %rax
	movl	18640(%rbx), %esi
	decl	%esi
	leaq	(%rax,%rsi), %rcx
	cmpb	$0, (%rax,%rsi)
	sete	%dl
	testl	%esi, %esi
	je	.LBB14_4
	.align	16, 0x90
.LBB14_2:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	testb	$1, %dl
	je	.LBB14_6
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB14_2 Depth=1
	cmpb	$0, -1(%rcx)
	leaq	-1(%rcx), %rcx
	sete	%dl
	cmpq	%rax, %rcx
	ja	.LBB14_2
.LBB14_4:                               # %while.end
	testb	%dl, %dl
	je	.LBB14_6
# BB#5:                                 # %if.then.13
	movl	$0, 8(%r14)
	xorl	%ecx, %ecx
	jmp	.LBB14_7
.LBB14_6:                               # %if.else
	incl	%ecx
	subl	%eax, %ecx
	movl	%ecx, 8(%r14)
.LBB14_7:                               # %if.end.17
	movzwl	108(%rbx), %edi
	xorl	%esi, %esi
	cmpl	$9, %edi
	jb	.LBB14_10
# BB#8:                                 # %if.then.21
	andl	$65528, %edi            # imm = 0xFFF8
	shrl	$3, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%edi
	testl	%edx, %edx
	je	.LBB14_10
# BB#9:                                 # %if.then.29
	addl	%edi, %ecx
	subl	%edx, %ecx
	movl	%ecx, 8(%r14)
.LBB14_10:                              # %cleanup
	movl	%esi, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end14:
	.size	eprn_fetch_scan_line, .Lfunc_end14-eprn_fetch_scan_line
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI15_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
.LCPI15_1:
	.quad	1                       # 0x1
	.quad	1                       # 0x1
	.text
	.globl	eprn_get_planes
	.align	16, 0x90
	.type	eprn_get_planes,@function
eprn_get_planes:                        # @eprn_get_planes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp37:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp38:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp39:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp40:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp41:
	.cfi_def_cfa_offset 56
	subq	$440, %rsp              # imm = 0x1B8
.Ltmp42:
	.cfi_def_cfa_offset 496
.Ltmp43:
	.cfi_offset %rbx, -56
.Ltmp44:
	.cfi_offset %r12, -48
.Ltmp45:
	.cfi_offset %r13, -40
.Ltmp46:
	.cfi_offset %r14, -32
.Ltmp47:
	.cfi_offset %r15, -24
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	%rbx, 136(%rsp)         # 8-byte Spill
	movzwl	108(%rbx), %eax
	leaq	18608(%rbx), %rbp
	cmpl	$1, %eax
	movq	%r15, %r13
	je	.LBB15_2
# BB#1:                                 # %select.mid
	movq	%rbp, %r13
.LBB15_2:                               # %select.end
	movl	18648(%rbx), %esi
	movl	$1, %r14d
	cmpl	$2, 18568(%rbx)
	jne	.LBB15_4
# BB#3:                                 # %select.end
	testl	%esi, %esi
	je	.LBB15_157
.LBB15_4:                               # %if.end.9
	movq	(%r13), %rdx
	movl	18640(%rbx), %ecx
	movq	%rbx, %rdi
	callq	gdev_prn_copy_scan_lines
	cmpl	$1, %eax
	jne	.LBB15_15
# BB#5:                                 # %if.end.i
	movq	(%r13), %rax
	movl	18640(%rbx), %esi
	decl	%esi
	leaq	(%rax,%rsi), %rcx
	cmpb	$0, (%rax,%rsi)
	sete	%dl
	testl	%esi, %esi
	je	.LBB15_8
	.align	16, 0x90
.LBB15_6:                               # %land.rhs.i
                                        # =>This Inner Loop Header: Depth=1
	testb	$1, %dl
	je	.LBB15_10
# BB#7:                                 # %while.body.i
                                        #   in Loop: Header=BB15_6 Depth=1
	cmpb	$0, -1(%rcx)
	leaq	-1(%rcx), %rcx
	sete	%dl
	cmpq	%rax, %rcx
	ja	.LBB15_6
.LBB15_8:                               # %while.end.i
	testb	%dl, %dl
	je	.LBB15_10
# BB#9:                                 # %if.then.13.i
	movl	$0, 8(%r13)
	xorl	%ecx, %ecx
	jmp	.LBB15_11
.LBB15_15:                              # %if.else.15
	cmpl	$2, 18568(%rbx)
	jne	.LBB15_157
# BB#16:                                # %if.else.15.if.end.24_crit_edge
	movzwl	108(%rbx), %r12d
	xorl	%eax, %eax
	jmp	.LBB15_17
.LBB15_10:                              # %if.else.i
	movl	$1, %edx
	subl	%eax, %edx
	addl	%edx, %ecx
	movl	%ecx, 8(%r13)
.LBB15_11:                              # %if.end.17.i
	movzwl	108(%rbx), %r12d
	cmpl	$9, %r12d
	jb	.LBB15_14
# BB#12:                                # %if.then.21.i
	movl	%r12d, %esi
	andl	$65528, %esi            # imm = 0xFFF8
	shrl	$3, %esi
	xorl	%edx, %edx
	movl	%ecx, %eax
	divl	%esi
	testl	%edx, %edx
	je	.LBB15_14
# BB#13:                                # %if.then.29.i
	addl	%ecx, %esi
	subl	%edx, %esi
	movl	%esi, 8(%r13)
.LBB15_14:                              # %if.then.12
	movl	18648(%rbx), %eax
	incl	%eax
.LBB15_17:                              # %if.end.24
	movl	%eax, 18648(%rbx)
	movzwl	%r12w, %ecx
	xorl	%r14d, %r14d
	cmpl	$1, %ecx
	je	.LBB15_157
# BB#18:                                # %if.end.31
	cmpl	$2, 18568(%rbx)
	jne	.LBB15_20
# BB#19:                                # %if.then.36
	leaq	18624(%rbx), %rdi
	movl	18640(%rbx), %edx
	movl	18556(%rbx), %ecx
	movl	18560(%rbx), %r8d
	movl	18564(%rbx), %r9d
	movq	%r15, (%rsp)
	movq	%rbp, %rsi
	callq	eprn_split_FS
	movups	18624(%rbx), %xmm0
	movaps	%xmm0, 176(%rsp)
	movups	(%rbp), %xmm0
	movups	%xmm0, 18624(%rbx)
	movdqa	176(%rsp), %xmm0
	movdqu	%xmm0, (%rbp)
	jmp	.LBB15_147
.LBB15_20:                              # %if.else.52
	movl	18556(%rbx), %r8d
	testl	%r8d, %r8d
	je	.LBB15_21
# BB#22:                                # %if.else.58
	movl	18600(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB15_23
# BB#68:                                # %land.lhs.true.86
	cmpl	$3, 18560(%rbx)
	jb	.LBB15_81
# BB#69:                                # %land.lhs.true.91
	cmpl	$3, 18564(%rbx)
	jb	.LBB15_81
# BB#70:                                # %if.then.96
	movl	8(%r13), %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movq	(%r15), %r8
	movq	16(%r15), %rbp
	movq	32(%r15), %r14
	movq	48(%r15), %r12
	movq	64(%r15), %r9
	movq	80(%r15), %rdi
	movq	96(%r15), %r10
	movq	112(%r15), %r11
	testl	%eax, %eax
	jle	.LBB15_77
# BB#71:                                # %for.body.5.i.preheader
	movq	(%r13), %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
.LBB15_72:                              # %for.body.5.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%rcx), %eax
	andl	$-8, %eax
	movl	%ecx, %esi
	movq	%rbx, %r13
	subl	%eax, %esi
	jne	.LBB15_74
# BB#73:                                # %for.cond.7.preheader.i
                                        #   in Loop: Header=BB15_72 Depth=1
	movb	$0, (%r8)
	movb	$0, (%rbp)
	movb	$0, (%r14)
	movb	$0, (%r12)
	movb	$0, (%r9)
	movb	$0, (%rdi)
	movb	$0, (%r10)
	movb	$0, (%r11)
.LBB15_74:                              # %if.end.i.105
                                        #   in Loop: Header=BB15_72 Depth=1
	movq	120(%rsp), %rax         # 8-byte Reload
	movb	(%rax,%rcx), %bl
	movb	(%r8), %dl
	addb	%dl, %dl
	movb	%bl, %al
	andb	$1, %al
	orb	%dl, %al
	movb	%al, (%r8)
	movb	(%rbp), %al
	addb	%al, %al
	movb	%bl, %dl
	shrb	%dl
	andb	$1, %dl
	orb	%al, %dl
	movb	%dl, (%rbp)
	movb	(%r14), %al
	addb	%al, %al
	movb	%bl, %dl
	shrb	$2, %dl
	andb	$1, %dl
	orb	%al, %dl
	movb	%dl, (%r14)
	movb	(%r12), %al
	addb	%al, %al
	movb	%bl, %dl
	shrb	$3, %dl
	andb	$1, %dl
	orb	%al, %dl
	movb	%dl, (%r12)
	movb	(%r9), %al
	addb	%al, %al
	movb	%bl, %dl
	shrb	$4, %dl
	andb	$1, %dl
	orb	%al, %dl
	movb	%dl, (%r9)
	movb	(%rdi), %al
	addb	%al, %al
	movb	%bl, %dl
	shrb	$5, %dl
	andb	$1, %dl
	orb	%al, %dl
	movb	%dl, (%rdi)
	movb	(%r10), %al
	addb	%al, %al
	movb	%bl, %dl
	shrb	$6, %dl
	andb	$1, %dl
	orb	%al, %dl
	movb	%dl, (%r10)
	movb	(%r11), %al
	addb	%al, %al
	shrb	$7, %bl
	orb	%al, %bl
	movb	%bl, (%r11)
	cmpl	$7, %esi
	jne	.LBB15_76
# BB#75:                                # %for.cond.88.preheader.i
                                        #   in Loop: Header=BB15_72 Depth=1
	incq	%r8
	incq	%rbp
	incq	%r14
	incq	%r12
	incq	%r9
	incq	%rdi
	incq	%r10
	incq	%r11
.LBB15_76:                              # %for.inc.98.i
                                        #   in Loop: Header=BB15_72 Depth=1
	movq	%r13, %rbx
	incq	%rcx
	movq	128(%rsp), %rax         # 8-byte Reload
	cmpl	%ecx, %eax
	jne	.LBB15_72
.LBB15_77:                              # %for.end.100.i
	movq	128(%rsp), %rdx         # 8-byte Reload
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	leal	(%rax,%rdx), %ecx
	andl	$-8, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	je	.LBB15_78
# BB#158:                               # %if.then.104.i
	movl	$8, %ecx
	subl	%eax, %ecx
	movzbl	(%r8), %eax
	shll	%cl, %eax
	movb	%al, (%r8)
	leaq	1(%r8), %r8
	movzbl	(%rbp), %eax
	shll	%cl, %eax
	movb	%al, (%rbp)
	leaq	1(%rbp), %rbp
	movzbl	(%r14), %eax
	shll	%cl, %eax
	movb	%al, (%r14)
	leaq	1(%r14), %r14
	movzbl	(%r12), %eax
	shll	%cl, %eax
	movb	%al, (%r12)
	leaq	1(%r12), %r12
	movzbl	(%r9), %eax
	shll	%cl, %eax
	movb	%al, (%r9)
	leaq	1(%r9), %r9
	movzbl	(%rdi), %eax
	shll	%cl, %eax
	movb	%al, (%rdi)
	leaq	1(%rdi), %rdi
	movzbl	(%r10), %eax
	shll	%cl, %eax
	movb	%al, (%r10)
	leaq	1(%r10), %r10
	movzbl	(%r11), %eax
	shll	%cl, %eax
	movb	%al, (%r11)
	leaq	1(%r11), %r11
.LBB15_78:                              # %for.cond.119.preheader.i
	movl	$0, 120(%rsp)           # 4-byte Folded Spill
	testl	%edx, %edx
	movl	$0, 128(%rsp)           # 4-byte Folded Spill
	movl	$0, 112(%rsp)           # 4-byte Folded Spill
	movl	$0, %eax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %r13d
	movl	$0, %esi
	je	.LBB15_80
# BB#79:                                # %if.else.7.i
	subl	(%r15), %r8d
	subl	16(%r15), %ebp
	subl	32(%r15), %r14d
	subl	48(%r15), %r12d
	subl	64(%r15), %r9d
	subl	80(%r15), %edi
	subl	96(%r15), %r10d
	subl	112(%r15), %r11d
	movl	%r8d, %eax
	movl	%eax, 120(%rsp)         # 4-byte Spill
	movl	%ebp, %eax
	movl	%eax, 128(%rsp)         # 4-byte Spill
	movl	%r14d, %eax
	movl	%eax, 112(%rsp)         # 4-byte Spill
	movl	%r12d, %eax
	movl	%r9d, %ecx
	movl	%edi, %edx
	movl	%r10d, %r13d
	movl	%r11d, %esi
.LBB15_80:                              # %split_line_4x2.exit
	movl	120(%rsp), %edi         # 4-byte Reload
	movl	%edi, 8(%r15)
	movl	128(%rsp), %edi         # 4-byte Reload
	movl	%edi, 24(%r15)
	movl	112(%rsp), %edi         # 4-byte Reload
	movl	%edi, 40(%r15)
	movl	%eax, 56(%r15)
	movl	%ecx, 72(%r15)
	movl	%edx, 88(%r15)
	movl	%r13d, 104(%r15)
	movl	%esi, 120(%r15)
	jmp	.LBB15_147
.LBB15_21:                              # %if.then.57
	movq	(%r13), %rsi
	movl	8(%r13), %edx
	jmp	.LBB15_82
.LBB15_23:                              # %if.else.58
	cmpl	$1, %eax
	jne	.LBB15_81
# BB#24:                                # %if.then.62
	cmpl	$1, %r8d
	jne	.LBB15_27
# BB#25:                                # %land.lhs.true.67
	movslq	8(%r13), %rax
	movl	$1, %r8d
	cmpl	18640(%rbx), %eax
	jne	.LBB15_27
# BB#26:                                # %if.then.73
	movq	(%r13), %rcx
	orb	$14, -1(%rax,%rcx)
	movl	18556(%rbx), %r8d
.LBB15_27:                              # %if.end.78
	movq	(%r13), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movslq	8(%r13), %r14
	decl	%r8d
	cmpl	$2, %r8d
	setb	%cl
	movq	$0, 176(%rsp)
	movzbl	%cl, %r10d
	cmpl	$1, %r8d
	movq	%r10, %rcx
	ja	.LBB15_30
# BB#28:
	leal	(%r10,%r10,2), %edx
	movq	%r15, %rdi
	movq	%r10, %rcx
	.align	16, 0x90
.LBB15_29:                              # %for.body.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %rbp
	movq	%rbp, 176(%rsp,%rcx,8)
	incq	%rcx
	addq	$16, %rdi
	decl	%edx
	jne	.LBB15_29
.LBB15_30:                              # %if.end.78.split
	cmpl	$2, %r8d
	jb	.LBB15_33
# BB#31:                                # %if.end.78.split.split
	leaq	3(%rcx), %rdx
	cmpl	$2, %r8d
	sbbq	$0, %rdx
	shlq	$4, %rdx
	leaq	(%rdx,%r15), %rdx
	.align	16, 0x90
.LBB15_32:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rdx), %rdi
	movq	%rdi, 176(%rsp,%rcx,8)
	movq	-32(%rdx), %rdi
	movq	%rdi, 184(%rsp,%rcx,8)
	movq	-16(%rdx), %rdi
	movq	%rdi, 192(%rsp,%rcx,8)
	movq	(%rdx), %rdi
	movq	%rdi, 200(%rsp,%rcx,8)
	addq	$4, %rcx
	addq	$64, %rdx
	cmpl	$4, %ecx
	jne	.LBB15_32
.LBB15_33:                              # %while.cond.preheader.i
	testl	%r14d, %r14d
	jle	.LBB15_37
# BB#34:                                # %while.body.lr.ph.i
	cmpl	$2, %r8d
	movl	$1, %eax
	adcq	$0, %rax
	movq	%rax, 120(%rsp)         # 8-byte Spill
	xorl	%edi, %edi
	movdqa	.LCPI15_0(%rip), %xmm0  # xmm0 = [1,1,1,1]
	leaq	172(%rsp), %rax
	orq	%r10, %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB15_35:                              # %while.body.i.69
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_50 Depth 2
                                        #     Child Loop BB15_54 Depth 2
                                        #     Child Loop BB15_62 Depth 2
                                        #     Child Loop BB15_64 Depth 2
                                        #     Child Loop BB15_66 Depth 2
                                        #     Child Loop BB15_58 Depth 2
	movl	$0, 172(%rsp)
	cmpl	%r14d, %edi
	jge	.LBB15_36
# BB#49:                                # %for.body.12.lr.ph.i
                                        #   in Loop: Header=BB15_35 Depth=1
	movq	%rbx, %r12
	movslq	%edi, %rcx
	movq	128(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rcx), %r11
	pxor	%xmm1, %xmm1
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB15_50:                              # %for.body.12.i
                                        #   Parent Loop BB15_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r11,%rbp), %edi
	movb	%dil, %dl
	shrb	$4, %dl
	andb	$1, %dl
	movb	%dil, %al
	shrb	$5, %al
	andb	$1, %al
	movb	%dil, %r13b
	shrb	$6, %r13b
	andb	$1, %r13b
	paddd	%xmm1, %xmm1
	movb	%dil, %r9b
	shrb	$7, %r9b
	movzbl	%r9b, %esi
	pinsrw	$0, %esi, %xmm2
	movzbl	%r13b, %esi
	pinsrw	$2, %esi, %xmm2
	movzbl	%al, %eax
	pinsrw	$4, %eax, %xmm2
	movzbl	%dl, %eax
	pinsrw	$6, %eax, %xmm2
	por	%xmm1, %xmm2
	movb	%dil, %al
	shrb	%al
	movb	%dil, %dl
	shrb	$2, %dl
	paddd	%xmm2, %xmm2
	movb	%dil, %bl
	shrb	$3, %bl
	movzbl	%bl, %esi
	pinsrw	$0, %esi, %xmm1
	movzbl	%dl, %edx
	pinsrw	$2, %edx, %xmm1
	movzbl	%al, %eax
	pinsrw	$4, %eax, %xmm1
	pinsrw	$6, %edi, %xmm1
	pand	%xmm0, %xmm1
	por	%xmm2, %xmm1
	leal	1(%rbp), %edx
	leaq	1(%rcx,%rbp), %rdi
	incq	%rbp
	cmpq	%r14, %rdi
	jge	.LBB15_52
# BB#51:                                # %for.body.12.i
                                        #   in Loop: Header=BB15_50 Depth=2
	cmpl	$4, %edx
	jl	.LBB15_50
.LBB15_52:                              # %for.end.123.i
                                        #   in Loop: Header=BB15_35 Depth=1
	movdqa	%xmm1, 144(%rsp)
	movb	156(%rsp), %al
	movb	%al, 172(%rsp)
	movb	152(%rsp), %al
	movb	%al, 173(%rsp)
	movb	148(%rsp), %al
	movb	%al, 174(%rsp)
	movb	144(%rsp), %al
	movb	%al, 175(%rsp)
	cmpl	$3, %edx
	movq	%r12, %rbx
	jg	.LBB15_56
	jmp	.LBB15_53
.LBB15_36:                              #   in Loop: Header=BB15_35 Depth=1
	xorl	%ebp, %ebp
.LBB15_53:                              # %for.cond.127.preheader.i
                                        #   in Loop: Header=BB15_35 Depth=1
	leal	(%rbp,%rbp), %eax
	movl	$8, %ecx
	subl	%eax, %ecx
	movq	%r10, %rdx
	.align	16, 0x90
.LBB15_54:                              # %for.body.130.i
                                        #   Parent Loop BB15_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	172(%rsp,%rdx), %eax
	shll	%cl, %eax
	movb	%al, 172(%rsp,%rdx)
	incq	%rdx
	cmpl	$4, %edx
	jne	.LBB15_54
# BB#55:                                # %for.end.139.i
                                        #   in Loop: Header=BB15_35 Depth=1
	cmpl	$1, 18556(%rbx)
	jne	.LBB15_56
# BB#60:                                # %for.cond.145.preheader.i
                                        #   in Loop: Header=BB15_35 Depth=1
	movl	$3, %eax
	cmpl	%ebp, %eax
	js	.LBB15_56
# BB#61:                                # %for.body.154.lr.ph.i
                                        #   in Loop: Header=BB15_35 Depth=1
	movq	%rbx, %rsi
	movb	173(%rsp), %dl
	movl	$4, %ecx
	subl	%ebp, %ecx
	.align	16, 0x90
.LBB15_62:                              # %for.body.154.i
                                        #   Parent Loop BB15_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decl	%ecx
	movl	$3, %eax
	shll	%cl, %eax
	movzbl	%dl, %edx
	orl	%eax, %edx
	testl	%ecx, %ecx
	jg	.LBB15_62
# BB#63:                                # %for.body.154.lr.ph.1.i
                                        #   in Loop: Header=BB15_35 Depth=1
	movb	%dl, 173(%rsp)
	movzwl	174(%rsp), %ebx
	movl	%ebx, %edx
	shrl	$8, %edx
	movl	$4, %ecx
	subl	%ebp, %ecx
	.align	16, 0x90
.LBB15_64:                              # %for.body.154.1.i
                                        #   Parent Loop BB15_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decl	%ecx
	movl	$3, %eax
	shll	%cl, %eax
	movzbl	%bl, %ebx
	orl	%eax, %ebx
	testl	%ecx, %ecx
	jg	.LBB15_64
# BB#65:                                # %for.body.154.lr.ph.2.i
                                        #   in Loop: Header=BB15_35 Depth=1
	movb	%bl, 174(%rsp)
	movl	$4, %ecx
	subl	%ebp, %ecx
	.align	16, 0x90
.LBB15_66:                              # %for.body.154.2.i
                                        #   Parent Loop BB15_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decl	%ecx
	movl	$3, %eax
	shll	%cl, %eax
	movzbl	%dl, %edx
	orl	%eax, %edx
	testl	%ecx, %ecx
	jg	.LBB15_66
# BB#67:                                # %for.cond.151.for.end.162_crit_edge.2.i
                                        #   in Loop: Header=BB15_35 Depth=1
	movb	%dl, 175(%rsp)
	movq	%rsi, %rbx
.LBB15_56:                              # %for.cond.168.preheader.i
                                        #   in Loop: Header=BB15_35 Depth=1
	cmpl	$1, %r8d
	movq	%r10, %rcx
	ja	.LBB15_58
# BB#57:                                # %for.body.171.i.prol
                                        #   in Loop: Header=BB15_35 Depth=1
	movq	112(%rsp), %rax         # 8-byte Reload
	movb	(%rax), %al
	leaq	(,%r10,8), %rcx
	leaq	176(%rsp), %rdx
	leaq	(%rcx,%rdx), %rcx
	movq	(%rcx), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rcx)
	movb	%al, (%rdx)
	movq	120(%rsp), %rcx         # 8-byte Reload
	.align	16, 0x90
.LBB15_58:                              # %for.body.171.i
                                        #   Parent Loop BB15_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	172(%rsp,%rcx), %al
	movq	176(%rsp,%rcx,8), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, 176(%rsp,%rcx,8)
	movb	%al, (%rdx)
	movb	173(%rsp,%rcx), %al
	movq	184(%rsp,%rcx,8), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, 184(%rsp,%rcx,8)
	movb	%al, (%rdx)
	addq	$2, %rcx
	cmpl	$4, %ecx
	jne	.LBB15_58
# BB#59:                                # %for.end.178.i
                                        #   in Loop: Header=BB15_35 Depth=1
	cmpl	%r14d, %edi
	jl	.LBB15_35
.LBB15_37:                              # %for.cond.179.preheader.i
	movl	18644(%rbx), %ecx
	testl	%ecx, %ecx
	je	.LBB15_147
# BB#38:                                # %for.body.183.lr.ph.i
	xorl	%edi, %edi
	testb	$1, %cl
	je	.LBB15_42
# BB#39:                                # %for.body.183.i.prol
	testl	%r14d, %r14d
	je	.LBB15_41
# BB#40:                                # %if.else.i.73.prol
	shlq	$3, %r10
	leaq	176(%rsp), %rdx
	orq	%r10, %rdx
	movl	(%rdx), %edi
	subl	(%r15), %edi
.LBB15_41:                              # %for.inc.200.i.prol
	movl	%edi, 8(%r15)
	movl	$1, %edi
.LBB15_42:                              # %for.body.183.lr.ph.i.split
	cmpl	$1, %ecx
	je	.LBB15_147
# BB#43:                                # %for.body.183.lr.ph.i.split.split
	subl	%edi, %ecx
	cmpl	$2, %r8d
	movq	%rdi, %rdx
	adcq	$0, %rdx
	leaq	184(%rsp,%rdx,8), %rdx
	shlq	$4, %rdi
	leaq	24(%rdi,%r15), %rsi
.LBB15_44:                              # %for.body.183.i
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	testl	%r14d, %r14d
	movl	$0, %ebp
	je	.LBB15_46
# BB#45:                                # %if.else.i.73
                                        #   in Loop: Header=BB15_44 Depth=1
	movl	-8(%rdx), %ebp
	subl	-24(%rsi), %ebp
.LBB15_46:                              # %for.inc.200.i
                                        #   in Loop: Header=BB15_44 Depth=1
	testl	%r14d, %r14d
	movl	%ebp, -16(%rsi)
	je	.LBB15_48
# BB#47:                                # %if.else.i.73.1
                                        #   in Loop: Header=BB15_44 Depth=1
	movl	(%rdx), %edi
	subl	-8(%rsi), %edi
.LBB15_48:                              # %for.inc.200.i.1
                                        #   in Loop: Header=BB15_44 Depth=1
	movl	%edi, (%rsi)
	addq	$16, %rdx
	addq	$32, %rsi
	addl	$-2, %ecx
	jne	.LBB15_44
	jmp	.LBB15_147
.LBB15_81:                              # %if.else.99
	movq	(%r13), %rsi
	movl	8(%r13), %edx
	cmpl	$7, %ecx
	ja	.LBB15_83
.LBB15_82:                              # %if.then.105
	movq	%rbx, %rdi
	movq	%r15, %rcx
	callq	split_line_le8
	jmp	.LBB15_147
.LBB15_83:                              # %if.else.108
	movl	%edx, 100(%rsp)         # 4-byte Spill
	movq	%rsi, %r13
	movl	%ecx, 96(%rsp)          # 4-byte Spill
	movl	18560(%rbx), %edi
	callq	eprn_bits_for_levels
	movl	%eax, %ebp
	movl	18564(%rbx), %edi
	callq	eprn_bits_for_levels
	leal	(%rax,%rax,2), %ecx
	addl	%ebp, %ecx
	movq	%rbp, %r8
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	testl	%ecx, %ecx
	jle	.LBB15_90
# BB#84:                                # %for.body.i.81.preheader
	leal	(%rax,%rax,2), %ecx
	leal	(%r8,%rcx), %esi
	leal	-1(%r8,%rcx), %edx
	xorl	%ecx, %ecx
	testb	$3, %sil
	je	.LBB15_87
# BB#85:                                # %for.body.i.81.prol.preheader
	leal	(%rax,%rax,2), %ecx
	leal	(%rcx,%r8), %esi
	andl	$3, %esi
	xorl	%ecx, %ecx
	movq	%r15, %rdi
	.align	16, 0x90
.LBB15_86:                              # %for.body.i.81.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %rbp
	movq	%rbp, 176(%rsp,%rcx,8)
	incq	%rcx
	addq	$16, %rdi
	cmpl	%ecx, %esi
	jne	.LBB15_86
.LBB15_87:                              # %for.body.i.81.preheader.split
	cmpl	$3, %edx
	jb	.LBB15_90
# BB#88:                                # %for.body.i.81.preheader.split.split
	leal	(%rax,%rax,2), %edx
	leal	(%rdx,%r8), %edx
	subl	%ecx, %edx
	leaq	200(%rsp,%rcx,8), %rsi
	addq	$3, %rcx
	shlq	$4, %rcx
	leaq	(%rcx,%r15), %rcx
.LBB15_89:                              # %for.body.i.81
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rcx), %rdi
	movq	%rdi, -24(%rsi)
	movq	-32(%rcx), %rdi
	movq	%rdi, -16(%rsi)
	movq	-16(%rcx), %rdi
	movq	%rdi, -8(%rsi)
	movq	(%rcx), %rdi
	movq	%rdi, (%rsi)
	addq	$32, %rsi
	addq	$64, %rcx
	addl	$-4, %edx
	jne	.LBB15_89
.LBB15_90:                              # %for.cond.6.preheader.i
	movl	18600(%rbx), %ecx
	xorl	%r14d, %r14d
	testl	%ecx, %ecx
	je	.LBB15_98
# BB#91:                                # %for.body.10.i.preheader
	leal	-1(%rcx), %edi
	testb	$7, %cl
                                        # implicit-def: DL
	je	.LBB15_94
# BB#92:                                # %for.body.10.i.prol.preheader
	movl	%ecx, %ebp
	andl	$7, %ebp
	xorl	%edx, %edx
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB15_93:                              # %for.body.10.i.prol
                                        # =>This Inner Loop Header: Depth=1
	addb	%dl, %dl
	orb	$1, %dl
	incl	%r14d
	cmpl	%r14d, %ebp
	jne	.LBB15_93
.LBB15_94:                              # %for.body.10.i.preheader.split
	cmpl	$7, %edi
	jb	.LBB15_97
# BB#95:                                # %for.body.10.i.preheader.split.split
	subl	%r14d, %ecx
.LBB15_96:                              # %for.body.10.i
                                        # =>This Inner Loop Header: Depth=1
	addl	$-8, %ecx
	movb	$-1, %dl
	jne	.LBB15_96
.LBB15_97:                              # %for.cond.6.while.cond.preheader_crit_edge.i
	movzbl	%dl, %r14d
.LBB15_98:                              # %while.cond.preheader.i.82
	xorl	%r9d, %r9d
	cmpl	$0, 100(%rsp)           # 4-byte Folded Reload
	jle	.LBB15_146
# BB#99:                                # %while.body.lr.ph.i.83
	andl	$65528, %r12d           # imm = 0xFFF8
	shrl	$3, %r12d
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	setle	%sil
	movb	%sil, 95(%rsp)          # 1-byte Spill
	movq	%rax, 128(%rsp)         # 8-byte Spill
	leal	(%rax,%rax,2), %ecx
	movq	%r8, 120(%rsp)          # 8-byte Spill
	leal	(%r8,%rcx), %r11d
	movq	%r11, 48(%rsp)          # 8-byte Spill
	leal	-1(%r8,%rcx), %ecx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	leaq	1(%rcx), %rcx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	leal	-1(%rax), %edx
	movl	%edx, 108(%rsp)         # 4-byte Spill
	movabsq	$8589934588, %rdx       # imm = 0x1FFFFFFFC
	andq	%rcx, %rdx
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	leaq	-4(%rdx), %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	shrl	$2, %ecx
	incl	%ecx
	movl	%r8d, %edi
	andl	$1, %edi
	movl	%edi, 88(%rsp)          # 4-byte Spill
	andl	$1, %eax
	movl	%eax, 104(%rsp)         # 4-byte Spill
	andl	$3, %ecx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movl	%r11d, %eax
	andl	$3, %eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	andl	$3, %r11d
	leal	-4(%rdx), %eax
	shrl	$2, %eax
	incl	%eax
	andl	$3, %eax
	negq	%rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movdqa	.LCPI15_1(%rip), %xmm0  # xmm0 = [1,1]
	xorl	%r9d, %r9d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB15_100:                             # %while.body.i.86
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_102 Depth 2
                                        #     Child Loop BB15_105 Depth 2
                                        #     Child Loop BB15_108 Depth 2
                                        #     Child Loop BB15_116 Depth 2
                                        #     Child Loop BB15_123 Depth 2
                                        #     Child Loop BB15_128 Depth 2
                                        #     Child Loop BB15_133 Depth 2
                                        #     Child Loop BB15_137 Depth 2
                                        #     Child Loop BB15_140 Depth 2
                                        #     Child Loop BB15_144 Depth 2
	testb	$7, %r9b
	setne	%cl
	orb	%sil, %cl
	jne	.LBB15_106
# BB#101:                               # %for.body.23.i.preheader
                                        #   in Loop: Header=BB15_100 Depth=1
	cmpl	$0, 60(%rsp)            # 4-byte Folded Reload
	movl	$0, %edi
	je	.LBB15_103
	.align	16, 0x90
.LBB15_102:                             # %for.body.23.i.prol
                                        #   Parent Loop BB15_100 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	176(%rsp,%rdi,8), %rcx
	movb	$0, (%rcx)
	incq	%rdi
	cmpl	%edi, %r11d
	jne	.LBB15_102
.LBB15_103:                             # %for.body.23.i.preheader.split
                                        #   in Loop: Header=BB15_100 Depth=1
	movq	80(%rsp), %rax          # 8-byte Reload
	cmpl	$3, %eax
	jb	.LBB15_106
# BB#104:                               # %for.body.23.i.preheader.split.split
                                        #   in Loop: Header=BB15_100 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	%eax, %ecx
	subl	%edi, %ecx
	leaq	200(%rsp), %rax
	leaq	(%rax,%rdi,8), %rdx
	.align	16, 0x90
.LBB15_105:                             # %for.body.23.i
                                        #   Parent Loop BB15_100 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rdx), %rdi
	movb	$0, (%rdi)
	movq	-16(%rdx), %rdi
	movb	$0, (%rdi)
	movq	-8(%rdx), %rdi
	movb	$0, (%rdi)
	movq	(%rdx), %rdi
	movb	$0, (%rdi)
	addq	$32, %rdx
	addl	$-4, %ecx
	jne	.LBB15_105
.LBB15_106:                             # %if.end.i.91
                                        #   in Loop: Header=BB15_100 Depth=1
	movslq	%ebp, %rcx
	movzbl	(%r13,%rcx), %r8d
	movl	96(%rsp), %eax          # 4-byte Reload
	incl	%ebp
	cmpl	$16, %eax
	jb	.LBB15_110
# BB#107:                               # %if.end.37.lr.ph.i
                                        #   in Loop: Header=BB15_100 Depth=1
	movslq	%ebp, %rcx
	leaq	(%rcx,%r13), %rdi
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB15_108:                             # %if.end.37.i
                                        #   Parent Loop BB15_100 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r8, %rdx
	shlq	$8, %rdx
	movzbl	(%rdi,%rcx), %r8d
	orq	%rdx, %r8
	incq	%rcx
	leal	1(%rcx), %edx
	cmpl	%r12d, %edx
	jl	.LBB15_108
# BB#109:                               #   in Loop: Header=BB15_100 Depth=1
	addl	%ecx, %ebp
.LBB15_110:                             # %do.end.i
                                        #   in Loop: Header=BB15_100 Depth=1
	movq	%rbp, 112(%rsp)         # 8-byte Spill
	xorl	%r10d, %r10d
	movq	120(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB15_118
# BB#111:                               # %for.body.48.lr.ph.i
                                        #   in Loop: Header=BB15_100 Depth=1
	movl	%r8d, %esi
	andl	%r14d, %esi
	cmpl	$0, 88(%rsp)            # 4-byte Folded Reload
	jne	.LBB15_113
# BB#112:                               #   in Loop: Header=BB15_100 Depth=1
	xorl	%edx, %edx
	jmp	.LBB15_114
.LBB15_113:                             # %for.body.48.i.prol
                                        #   in Loop: Header=BB15_100 Depth=1
	movq	176(%rsp), %rdx
	movzbl	(%rdx), %edi
	addl	%edi, %edi
	movl	%esi, %ebx
	andl	$1, %ebx
	orl	%edi, %ebx
	movb	%bl, (%rdx)
	shrl	%esi
	movl	$1, %edx
.LBB15_114:                             # %for.body.48.lr.ph.i.split
                                        #   in Loop: Header=BB15_100 Depth=1
	movq	120(%rsp), %rax         # 8-byte Reload
	cmpl	$1, %eax
	movl	%eax, %r10d
	je	.LBB15_118
# BB#115:                               # %for.body.48.lr.ph.i.split.split
                                        #   in Loop: Header=BB15_100 Depth=1
	movq	120(%rsp), %rax         # 8-byte Reload
	movl	%eax, %edi
	subl	%edx, %edi
	leaq	184(%rsp), %rax
	leaq	(%rax,%rdx,8), %rbx
	.align	16, 0x90
.LBB15_116:                             # %for.body.48.i
                                        #   Parent Loop BB15_100 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rbx), %rdx
	movzbl	(%rdx), %ebp
	addl	%ebp, %ebp
	movl	%esi, %ecx
	andl	$1, %ecx
	orl	%ebp, %ecx
	movb	%cl, (%rdx)
	movl	%esi, %ecx
	shrl	%ecx
	movq	(%rbx), %rdx
	movzbl	(%rdx), %ebp
	addl	%ebp, %ebp
	andl	$1, %ecx
	orl	%ebp, %ecx
	movb	%cl, (%rdx)
	shrl	$2, %esi
	andl	$63, %esi
	addq	$16, %rbx
	addl	$-2, %edi
	jne	.LBB15_116
# BB#117:                               #   in Loop: Header=BB15_100 Depth=1
	movq	120(%rsp), %rax         # 8-byte Reload
	movl	%eax, %r10d
.LBB15_118:                             # %for.cond.64.preheader.i
                                        #   in Loop: Header=BB15_100 Depth=1
	movq	128(%rsp), %rax         # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB15_134
# BB#119:                               # %for.body.78.lr.ph.i
                                        #   in Loop: Header=BB15_100 Depth=1
	movq	136(%rsp), %rax         # 8-byte Reload
	movb	18600(%rax), %cl
	movq	%r8, %rdx
	shrq	%cl, %rdx
	movl	%r14d, %ecx
	andl	%edx, %ecx
	xorl	%ebp, %ebp
	cmpl	$0, 104(%rsp)           # 4-byte Folded Reload
	movslq	%r10d, %rbx
	movq	%r13, %rax
	je	.LBB15_121
# BB#120:                               # %for.body.78.i.prol
                                        #   in Loop: Header=BB15_100 Depth=1
	movq	176(%rsp,%rbx,8), %rdx
	movzbl	(%rdx), %esi
	addl	%esi, %esi
	movl	%ecx, %ebp
	andl	$1, %ebp
	orl	%esi, %ebp
	movb	%bpl, (%rdx)
	shrl	%ecx
	incq	%rbx
	movl	$1, %ebp
.LBB15_121:                             # %for.body.78.lr.ph.i.split
                                        #   in Loop: Header=BB15_100 Depth=1
	cmpl	$0, 108(%rsp)           # 4-byte Folded Reload
	je	.LBB15_124
# BB#122:                               # %for.body.78.lr.ph.i.split.split
                                        #   in Loop: Header=BB15_100 Depth=1
	leaq	184(%rsp), %rdx
	leaq	(%rdx,%rbx,8), %rbx
	movq	128(%rsp), %rdx         # 8-byte Reload
	movl	%edx, %r13d
	subl	%ebp, %r13d
	.align	16, 0x90
.LBB15_123:                             # %for.body.78.i
                                        #   Parent Loop BB15_100 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rbx), %rdx
	movzbl	(%rdx), %esi
	addl	%esi, %esi
	movl	%ecx, %ebp
	andl	$1, %ebp
	orl	%esi, %ebp
	movb	%bpl, (%rdx)
	movl	%ecx, %edx
	shrl	%edx
	movq	(%rbx), %rsi
	movzbl	(%rsi), %ebp
	addl	%ebp, %ebp
	andl	$1, %edx
	orl	%ebp, %edx
	movb	%dl, (%rsi)
	shrl	$2, %ecx
	andl	$63, %ecx
	addq	$16, %rbx
	addl	$-2, %r13d
	jne	.LBB15_123
.LBB15_124:                             # %for.body.78.lr.ph.1.i
                                        #   in Loop: Header=BB15_100 Depth=1
	movq	128(%rsp), %rcx         # 8-byte Reload
	addl	%ecx, %r10d
	movq	136(%rsp), %rcx         # 8-byte Reload
	movb	18600(%rcx), %cl
	addb	%cl, %cl
	movq	%r8, %rdx
	shrq	%cl, %rdx
	movl	%r14d, %edi
	andl	%edx, %edi
	xorl	%edx, %edx
	cmpl	$0, 104(%rsp)           # 4-byte Folded Reload
	movslq	%r10d, %rbx
	je	.LBB15_126
# BB#125:                               # %for.body.78.1.i.prol
                                        #   in Loop: Header=BB15_100 Depth=1
	movq	176(%rsp,%rbx,8), %rdx
	movzbl	(%rdx), %esi
	addl	%esi, %esi
	movl	%edi, %ebp
	andl	$1, %ebp
	orl	%esi, %ebp
	movb	%bpl, (%rdx)
	shrl	%edi
	incq	%rbx
	movl	$1, %edx
.LBB15_126:                             # %for.body.78.lr.ph.1.i.split
                                        #   in Loop: Header=BB15_100 Depth=1
	cmpl	$0, 108(%rsp)           # 4-byte Folded Reload
	movq	%rax, %r13
	je	.LBB15_129
# BB#127:                               # %for.body.78.lr.ph.1.i.split.split
                                        #   in Loop: Header=BB15_100 Depth=1
	leaq	184(%rsp), %rax
	leaq	(%rax,%rbx,8), %rbx
	movq	128(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ebp
	subl	%edx, %ebp
	.align	16, 0x90
.LBB15_128:                             # %for.body.78.1.i
                                        #   Parent Loop BB15_100 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rbx), %rdx
	movzbl	(%rdx), %esi
	addl	%esi, %esi
	movl	%edi, %ecx
	andl	$1, %ecx
	orl	%esi, %ecx
	movb	%cl, (%rdx)
	movl	%edi, %ecx
	shrl	%ecx
	movq	(%rbx), %rdx
	movzbl	(%rdx), %esi
	addl	%esi, %esi
	andl	$1, %ecx
	orl	%esi, %ecx
	movb	%cl, (%rdx)
	shrl	$2, %edi
	andl	$63, %edi
	addq	$16, %rbx
	addl	$-2, %ebp
	jne	.LBB15_128
.LBB15_129:                             # %for.body.78.lr.ph.2.i
                                        #   in Loop: Header=BB15_100 Depth=1
	movq	128(%rsp), %rax         # 8-byte Reload
	addl	%eax, %r10d
	movq	136(%rsp), %rax         # 8-byte Reload
	imull	$3, 18600(%rax), %ecx
	shrq	%cl, %r8
	movl	%r14d, %ebx
	andl	%r8d, %ebx
	xorl	%edx, %edx
	cmpl	$0, 104(%rsp)           # 4-byte Folded Reload
	movslq	%r10d, %rdi
	je	.LBB15_131
# BB#130:                               # %for.body.78.2.i.prol
                                        #   in Loop: Header=BB15_100 Depth=1
	movq	176(%rsp,%rdi,8), %rdx
	movzbl	(%rdx), %esi
	addl	%esi, %esi
	movl	%ebx, %ecx
	andl	$1, %ecx
	orl	%esi, %ecx
	movb	%cl, (%rdx)
	shrl	%ebx
	incq	%rdi
	movl	$1, %edx
.LBB15_131:                             # %for.body.78.lr.ph.2.i.split
                                        #   in Loop: Header=BB15_100 Depth=1
	cmpl	$0, 108(%rsp)           # 4-byte Folded Reload
	je	.LBB15_134
# BB#132:                               # %for.body.78.lr.ph.2.i.split.split
                                        #   in Loop: Header=BB15_100 Depth=1
	leaq	184(%rsp), %rax
	leaq	(%rax,%rdi,8), %rdi
	movq	128(%rsp), %rax         # 8-byte Reload
	movl	%eax, %ebp
	subl	%edx, %ebp
	.align	16, 0x90
.LBB15_133:                             # %for.body.78.2.i
                                        #   Parent Loop BB15_100 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rdi), %rcx
	movzbl	(%rcx), %edx
	addl	%edx, %edx
	movl	%ebx, %esi
	andl	$1, %esi
	orl	%edx, %esi
	movb	%sil, (%rcx)
	movl	%ebx, %ecx
	shrl	%ecx
	movq	(%rdi), %rdx
	movzbl	(%rdx), %esi
	addl	%esi, %esi
	andl	$1, %ecx
	orl	%esi, %ecx
	movb	%cl, (%rdx)
	shrl	$2, %ebx
	andl	$63, %ebx
	addq	$16, %rdi
	addl	$-2, %ebp
	jne	.LBB15_133
.LBB15_134:                             # %for.inc.96.2.i
                                        #   in Loop: Header=BB15_100 Depth=1
	incl	%r9d
	testb	$7, %r9b
	setne	%cl
	movb	95(%rsp), %sil          # 1-byte Reload
	orb	%sil, %cl
	movq	112(%rsp), %rbp         # 8-byte Reload
	jne	.LBB15_145
# BB#135:                               # %overflow.checked254
                                        #   in Loop: Header=BB15_100 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	testq	%rax, %rax
	movl	$0, %edx
	je	.LBB15_142
# BB#136:                               # %vector.body250.preheader
                                        #   in Loop: Header=BB15_100 Depth=1
	cmpq	$0, 32(%rsp)            # 8-byte Folded Reload
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	$0, %edi
	je	.LBB15_138
	.align	16, 0x90
.LBB15_137:                             # %vector.body250.prol
                                        #   Parent Loop BB15_100 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqa	176(%rsp,%rdi,8), %xmm1
	paddq	%xmm0, %xmm1
	movdqa	192(%rsp,%rdi,8), %xmm2
	paddq	%xmm0, %xmm2
	movdqa	%xmm1, 176(%rsp,%rdi,8)
	movdqa	%xmm2, 192(%rsp,%rdi,8)
	addq	$4, %rdi
	incq	%rcx
	jne	.LBB15_137
.LBB15_138:                             # %vector.body250.preheader.split
                                        #   in Loop: Header=BB15_100 Depth=1
	cmpq	$12, 40(%rsp)           # 8-byte Folded Reload
	movq	%rax, %rdx
	jb	.LBB15_142
# BB#139:                               # %vector.body250.preheader.split.split
                                        #   in Loop: Header=BB15_100 Depth=1
	movq	%rax, %rcx
	subq	%rdi, %rcx
	leaq	288(%rsp), %rdx
	leaq	(%rdx,%rdi,8), %rdi
	.align	16, 0x90
.LBB15_140:                             # %vector.body250
                                        #   Parent Loop BB15_100 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqa	-112(%rdi), %xmm1
	paddq	%xmm0, %xmm1
	movdqa	-96(%rdi), %xmm2
	paddq	%xmm0, %xmm2
	movdqa	%xmm1, -112(%rdi)
	movdqa	%xmm2, -96(%rdi)
	movdqa	-80(%rdi), %xmm1
	paddq	%xmm0, %xmm1
	movdqa	-64(%rdi), %xmm2
	paddq	%xmm0, %xmm2
	movdqa	%xmm1, -80(%rdi)
	movdqa	%xmm2, -64(%rdi)
	movdqa	-48(%rdi), %xmm1
	paddq	%xmm0, %xmm1
	movdqa	-32(%rdi), %xmm2
	paddq	%xmm0, %xmm2
	movdqa	%xmm1, -48(%rdi)
	movdqa	%xmm2, -32(%rdi)
	movdqa	-16(%rdi), %xmm1
	paddq	%xmm0, %xmm1
	movdqa	(%rdi), %xmm2
	paddq	%xmm0, %xmm2
	movdqa	%xmm1, -16(%rdi)
	movdqa	%xmm2, (%rdi)
	subq	$-128, %rdi
	addq	$-16, %rcx
	jne	.LBB15_140
# BB#141:                               #   in Loop: Header=BB15_100 Depth=1
	movq	%rax, %rdx
.LBB15_142:                             # %middle.block251
                                        #   in Loop: Header=BB15_100 Depth=1
	cmpq	%rdx, 72(%rsp)          # 8-byte Folded Reload
	je	.LBB15_145
# BB#143:                               # %for.body.107.i.preheader
                                        #   in Loop: Header=BB15_100 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	%eax, %ecx
	subl	%edx, %ecx
	leaq	176(%rsp,%rdx,8), %rdx
	.align	16, 0x90
.LBB15_144:                             # %for.body.107.i
                                        #   Parent Loop BB15_100 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	incq	(%rdx)
	addq	$8, %rdx
	decl	%ecx
	jne	.LBB15_144
.LBB15_145:                             # %while.cond.backedge.i
                                        #   in Loop: Header=BB15_100 Depth=1
	movl	100(%rsp), %eax         # 4-byte Reload
	cmpl	%eax, %ebp
	movq	136(%rsp), %rbx         # 8-byte Reload
	jl	.LBB15_100
.LBB15_146:                             # %split_line_ge8.exit
	movl	18564(%rbx), %esi
	cmpl	$1, 18556(%rbx)
	sete	%cl
	movzbl	%cl, %edi
	leaq	176(%rsp), %r8
	movl	20(%rsp), %edx          # 4-byte Reload
	movq	%r15, %rcx
	callq	eprn_finalize
.LBB15_147:                             # %for.cond.preheader
	movl	18644(%rbx), %eax
	xorl	%r14d, %r14d
	testl	%eax, %eax
	je	.LBB15_157
# BB#148:
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB15_149:                             # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_151 Depth 2
	movq	%rcx, %rsi
	shlq	$4, %rsi
	movslq	8(%r15,%rsi), %rbp
	testq	%rbp, %rbp
	jle	.LBB15_156
# BB#150:                               # %if.then.124
                                        #   in Loop: Header=BB15_149 Depth=1
	leaq	8(%r15,%rsi), %rdx
	movq	(%r15,%rsi), %rsi
	leaq	-1(%rbp,%rsi), %rdi
	cmpb	$0, -1(%rbp,%rsi)
	sete	%bl
	cmpl	$2, %ebp
	jl	.LBB15_153
	.align	16, 0x90
.LBB15_151:                             # %land.rhs
                                        #   Parent Loop BB15_149 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	$1, %bl
	je	.LBB15_154
# BB#152:                               # %while.body
                                        #   in Loop: Header=BB15_151 Depth=2
	cmpb	$0, -1(%rdi)
	leaq	-1(%rdi), %rdi
	sete	%bl
	cmpq	%rsi, %rdi
	ja	.LBB15_151
.LBB15_153:                             # %while.end
                                        #   in Loop: Header=BB15_149 Depth=1
	xorl	%ebp, %ebp
	testb	%bl, %bl
	jne	.LBB15_155
.LBB15_154:                             # %if.else.149
                                        #   in Loop: Header=BB15_149 Depth=1
	incl	%edi
	subl	%esi, %edi
	movl	%edi, %ebp
.LBB15_155:                             # %if.end.157
                                        #   in Loop: Header=BB15_149 Depth=1
	movl	%ebp, (%rdx)
.LBB15_156:                             # %for.inc
                                        #   in Loop: Header=BB15_149 Depth=1
	incq	%rcx
	cmpl	%eax, %ecx
	jb	.LBB15_149
.LBB15_157:                             # %cleanup
	movl	%r14d, %eax
	addq	$440, %rsp              # imm = 0x1B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	eprn_get_planes, .Lfunc_end15-eprn_get_planes
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI16_0:
	.quad	1                       # 0x1
	.quad	1                       # 0x1
	.text
	.align	16, 0x90
	.type	split_line_le8,@function
split_line_le8:                         # @split_line_le8
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp50:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp52:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp53:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp54:
	.cfi_def_cfa_offset 56
	subq	$232, %rsp
.Ltmp55:
	.cfi_def_cfa_offset 288
.Ltmp56:
	.cfi_offset %rbx, -56
.Ltmp57:
	.cfi_offset %r12, -48
.Ltmp58:
	.cfi_offset %r13, -40
.Ltmp59:
	.cfi_offset %r14, -32
.Ltmp60:
	.cfi_offset %r15, -24
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movl	%edx, 92(%rsp)          # 4-byte Spill
	movq	%rsi, 120(%rsp)         # 8-byte Spill
	movq	%rdi, %r14
	movl	18560(%r14), %edi
	callq	eprn_bits_for_levels
	movl	%eax, %r12d
	movq	%r12, 112(%rsp)         # 8-byte Spill
	movl	18564(%r14), %edi
	callq	eprn_bits_for_levels
	movl	%eax, %r8d
	leal	(%r8,%r8,2), %eax
	addl	%r12d, %eax
	movl	%eax, 12(%rsp)          # 4-byte Spill
	testl	%eax, %eax
	jle	.LBB16_7
# BB#1:                                 # %for.body.preheader
	leal	(%r8,%r8,2), %eax
	leal	(%r12,%rax), %edx
	leal	-1(%r12,%rax), %ecx
	xorl	%eax, %eax
	testb	$3, %dl
	je	.LBB16_4
# BB#2:                                 # %for.body.prol.preheader
	leal	(%r8,%r8,2), %eax
	leal	(%rax,%r12), %edx
	andl	$3, %edx
	xorl	%eax, %eax
	movq	16(%rsp), %rsi          # 8-byte Reload
	.align	16, 0x90
.LBB16_3:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rdi
	movq	%rdi, 160(%rsp,%rax,8)
	incq	%rax
	addq	$16, %rsi
	cmpl	%eax, %edx
	jne	.LBB16_3
.LBB16_4:                               # %for.body.preheader.split
	cmpl	$3, %ecx
	jb	.LBB16_7
# BB#5:                                 # %for.body.preheader.split.split
	leal	(%r8,%r8,2), %ecx
	leal	(%rcx,%r12), %ecx
	subl	%eax, %ecx
	leaq	184(%rsp,%rax,8), %rdx
	addq	$3, %rax
	shlq	$4, %rax
	movq	16(%rsp), %rsi          # 8-byte Reload
	leaq	(%rax,%rsi), %rax
	.align	16, 0x90
.LBB16_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rax), %rsi
	movq	%rsi, -24(%rdx)
	movq	-32(%rax), %rsi
	movq	%rsi, -16(%rdx)
	movq	-16(%rax), %rsi
	movq	%rsi, -8(%rdx)
	movq	(%rax), %rsi
	movq	%rsi, (%rdx)
	addq	$32, %rdx
	addq	$64, %rax
	addl	$-4, %ecx
	jne	.LBB16_6
.LBB16_7:                               # %for.cond.5.preheader
	movzwl	108(%r14), %eax
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB16_13
# BB#8:                                 # %for.body.8.lr.ph
	leal	-1(%rax), %edx
	testb	$3, %al
	je	.LBB16_9
# BB#10:                                # %for.body.8.prol.preheader
	movl	%eax, %esi
	andl	$3, %esi
	xorl	%r13d, %r13d
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB16_11:                              # %for.body.8.prol
                                        # =>This Inner Loop Header: Depth=1
	incl	%ecx
	andl	$127, %r13d
	leal	1(%r13,%r13), %r13d
	cmpl	%ecx, %esi
	jne	.LBB16_11
	jmp	.LBB16_12
.LBB16_9:
	xorl	%r13d, %r13d
	xorl	%ecx, %ecx
.LBB16_12:                              # %for.body.8.lr.ph.split
	cmpl	$3, %edx
	jb	.LBB16_13
	.align	16, 0x90
.LBB16_67:                              # %for.body.8
                                        # =>This Inner Loop Header: Depth=1
	addl	$4, %ecx
	andl	$15, %r13d
	shll	$4, %r13d
	orl	$15, %r13d
	cmpl	%eax, %ecx
	jl	.LBB16_67
.LBB16_13:                              # %for.cond.14.preheader
	movl	18600(%r14), %eax
	xorl	%r15d, %r15d
	testl	%eax, %eax
	je	.LBB16_19
# BB#14:                                # %for.body.18.preheader
	leal	-1(%rax), %edx
	testb	$7, %al
                                        # implicit-def: CL
	je	.LBB16_17
# BB#15:                                # %for.body.18.prol.preheader
	movl	%eax, %esi
	andl	$7, %esi
	xorl	%ecx, %ecx
	xorl	%r15d, %r15d
	.align	16, 0x90
.LBB16_16:                              # %for.body.18.prol
                                        # =>This Inner Loop Header: Depth=1
	addb	%cl, %cl
	orb	$1, %cl
	incl	%r15d
	cmpl	%r15d, %esi
	jne	.LBB16_16
.LBB16_17:                              # %for.body.18.preheader.split
	cmpl	$7, %edx
	jb	.LBB16_18
	.align	16, 0x90
.LBB16_68:                              # %for.body.18
                                        # =>This Inner Loop Header: Depth=1
	addl	$8, %r15d
	movb	$-1, %cl
	cmpl	%eax, %r15d
	jb	.LBB16_68
.LBB16_18:                              # %for.cond.14.while.cond.preheader_crit_edge
	movzbl	%cl, %r15d
.LBB16_19:                              # %while.cond.preheader
	xorl	%r9d, %r9d
	cmpl	$0, 92(%rsp)            # 4-byte Folded Reload
	jle	.LBB16_64
# BB#20:                                # %while.body.lr.ph
	leal	(%r8,%r8,2), %eax
	leal	(%r12,%rax), %ecx
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	leal	-1(%r12,%rax), %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	leaq	1(%rax), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leal	-1(%r8), %edx
	movl	%edx, 152(%rsp)         # 4-byte Spill
	movabsq	$8589934588, %rdx       # imm = 0x1FFFFFFFC
	andq	%rax, %rdx
	movq	%rdx, 96(%rsp)          # 8-byte Spill
	leaq	-4(%rdx), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	shrl	$2, %eax
	incl	%eax
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	setle	%bl
	movb	%bl, 91(%rsp)           # 1-byte Spill
	movl	%r12d, %esi
	andl	$1, %esi
	movl	%esi, 108(%rsp)         # 4-byte Spill
	movl	%r8d, %esi
	andl	$1, %esi
	movl	%esi, 148(%rsp)         # 4-byte Spill
	andl	$3, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	%ecx, %eax
	andl	$3, %eax
	movl	%eax, 68(%rsp)          # 4-byte Spill
	andl	$3, %ecx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	leal	-4(%rdx), %eax
	shrl	$2, %eax
	incl	%eax
	andl	$3, %eax
	negq	%rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movdqa	.LCPI16_0(%rip), %xmm0  # xmm0 = [1,1]
	xorl	%eax, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	xorl	%r9d, %r9d
	.align	16, 0x90
.LBB16_21:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_23 Depth 2
                                        #     Child Loop BB16_26 Depth 2
                                        #     Child Loop BB16_28 Depth 2
                                        #       Child Loop BB16_34 Depth 3
                                        #       Child Loop BB16_41 Depth 3
                                        #       Child Loop BB16_46 Depth 3
                                        #       Child Loop BB16_66 Depth 3
                                        #     Child Loop BB16_55 Depth 2
                                        #     Child Loop BB16_58 Depth 2
                                        #     Child Loop BB16_62 Depth 2
	testb	$7, %r9b
	setne	%al
	orb	%bl, %al
	jne	.LBB16_27
# BB#22:                                # %for.body.33.preheader
                                        #   in Loop: Header=BB16_21 Depth=1
	cmpl	$0, 68(%rsp)            # 4-byte Folded Reload
	movl	$0, %ecx
	movq	56(%rsp), %rdx          # 8-byte Reload
	je	.LBB16_24
	.align	16, 0x90
.LBB16_23:                              # %for.body.33.prol
                                        #   Parent Loop BB16_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	160(%rsp,%rcx,8), %rax
	movb	$0, (%rax)
	incq	%rcx
	cmpl	%ecx, %edx
	jne	.LBB16_23
.LBB16_24:                              # %for.body.33.preheader.split
                                        #   in Loop: Header=BB16_21 Depth=1
	movq	80(%rsp), %rax          # 8-byte Reload
	cmpl	$3, %eax
	jb	.LBB16_27
# BB#25:                                # %for.body.33.preheader.split.split
                                        #   in Loop: Header=BB16_21 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	subl	%ecx, %eax
	leaq	184(%rsp), %rdx
	leaq	(%rdx,%rcx,8), %rcx
	.align	16, 0x90
.LBB16_26:                              # %for.body.33
                                        #   Parent Loop BB16_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rcx), %rdx
	movb	$0, (%rdx)
	movq	-16(%rcx), %rdx
	movb	$0, (%rdx)
	movq	-8(%rcx), %rdx
	movb	$0, (%rdx)
	movq	(%rcx), %rdx
	movb	$0, (%rdx)
	addq	$32, %rcx
	addl	$-4, %eax
	jne	.LBB16_26
.LBB16_27:                              # %if.end
                                        #   in Loop: Header=BB16_21 Depth=1
	movzwl	108(%r14), %ecx
	movl	$8, %eax
	xorl	%edx, %edx
	divl	%ecx
	jmp	.LBB16_28
	.align	16, 0x90
.LBB16_51:                              # %if.end.112.do.body_crit_edge
                                        #   in Loop: Header=BB16_28 Depth=2
	movzwl	108(%r14), %ecx
	movl	156(%rsp), %eax         # 4-byte Reload
.LBB16_28:                              # %do.body
                                        #   Parent Loop BB16_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_34 Depth 3
                                        #       Child Loop BB16_41 Depth 3
                                        #       Child Loop BB16_46 Depth 3
                                        #       Child Loop BB16_66 Depth 3
	movl	%eax, %r10d
	leal	-1(%r10), %esi
	movl	%esi, 156(%rsp)         # 4-byte Spill
	movq	120(%rsp), %rdx         # 8-byte Reload
	movq	128(%rsp), %rax         # 8-byte Reload
	movzbl	(%rdx,%rax), %r11d
	imull	%esi, %ecx
	shrl	%cl, %r11d
	andl	%r13d, %r11d
	xorl	%edx, %edx
	testl	%r12d, %r12d
	jle	.LBB16_36
# BB#29:                                # %for.body.57.lr.ph
                                        #   in Loop: Header=BB16_28 Depth=2
	movl	%r11d, %ebp
	andl	%r15d, %ebp
	cmpl	$0, 108(%rsp)           # 4-byte Folded Reload
	jne	.LBB16_31
# BB#30:                                #   in Loop: Header=BB16_28 Depth=2
	xorl	%esi, %esi
	jmp	.LBB16_32
	.align	16, 0x90
.LBB16_31:                              # %for.body.57.prol
                                        #   in Loop: Header=BB16_28 Depth=2
	movq	160(%rsp), %rsi
	movzbl	(%rsi), %edi
	addl	%edi, %edi
	movl	%ebp, %ecx
	andl	$1, %ecx
	orl	%edi, %ecx
	movb	%cl, (%rsi)
	shrl	%ebp
	movl	$1, %esi
.LBB16_32:                              # %for.body.57.lr.ph.split
                                        #   in Loop: Header=BB16_28 Depth=2
	cmpl	$1, %r12d
	movl	%r12d, %edx
	je	.LBB16_36
# BB#33:                                # %for.body.57.lr.ph.split.split
                                        #   in Loop: Header=BB16_28 Depth=2
	movl	%r12d, %ebx
	subl	%esi, %ebx
	leaq	168(%rsp), %rax
	leaq	(%rax,%rsi,8), %rdi
	.align	16, 0x90
.LBB16_34:                              # %for.body.57
                                        #   Parent Loop BB16_21 Depth=1
                                        #     Parent Loop BB16_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-8(%rdi), %rcx
	movzbl	(%rcx), %esi
	addl	%esi, %esi
	movl	%ebp, %edx
	andl	$1, %edx
	orl	%esi, %edx
	movb	%dl, (%rcx)
	movl	%ebp, %ecx
	shrl	%ecx
	movq	(%rdi), %rdx
	movzbl	(%rdx), %esi
	addl	%esi, %esi
	andl	$1, %ecx
	orl	%esi, %ecx
	movb	%cl, (%rdx)
	shrl	$2, %ebp
	andl	$63, %ebp
	addq	$16, %rdi
	addl	$-2, %ebx
	jne	.LBB16_34
# BB#35:                                #   in Loop: Header=BB16_28 Depth=2
	movl	%r12d, %edx
.LBB16_36:                              # %for.end.73
                                        #   in Loop: Header=BB16_28 Depth=2
	testl	%r8d, %r8d
	jle	.LBB16_50
# BB#37:                                # %for.body.91.lr.ph
                                        #   in Loop: Header=BB16_28 Depth=2
	movq	%r10, 136(%rsp)         # 8-byte Spill
	movb	18600(%r14), %cl
	movq	%r11, %rsi
	shrq	%cl, %rsi
	movl	%r15d, %r12d
	andl	%esi, %r12d
	xorl	%r10d, %r10d
	cmpl	$0, 148(%rsp)           # 4-byte Folded Reload
	movslq	%edx, %rdi
	movq	%r13, %rax
	movq	%r14, %r13
	je	.LBB16_39
# BB#38:                                # %for.body.91.prol
                                        #   in Loop: Header=BB16_28 Depth=2
	movq	160(%rsp,%rdi,8), %rsi
	movzbl	(%rsi), %ebp
	addl	%ebp, %ebp
	movl	%r12d, %ecx
	andl	$1, %ecx
	orl	%ebp, %ecx
	movb	%cl, (%rsi)
	shrl	%r12d
	incq	%rdi
	movl	$1, %r10d
.LBB16_39:                              # %for.body.91.lr.ph.split
                                        #   in Loop: Header=BB16_28 Depth=2
	cmpl	$0, 152(%rsp)           # 4-byte Folded Reload
	je	.LBB16_42
# BB#40:                                # %for.body.91.lr.ph.split.split
                                        #   in Loop: Header=BB16_28 Depth=2
	leaq	168(%rsp), %rcx
	leaq	(%rcx,%rdi,8), %r14
	movl	%r8d, %ebx
	subl	%r10d, %ebx
	.align	16, 0x90
.LBB16_41:                              # %for.body.91
                                        #   Parent Loop BB16_21 Depth=1
                                        #     Parent Loop BB16_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-8(%r14), %rcx
	movzbl	(%rcx), %esi
	addl	%esi, %esi
	movl	%r12d, %edi
	andl	$1, %edi
	orl	%esi, %edi
	movb	%dil, (%rcx)
	movl	%r12d, %ecx
	shrl	%ecx
	movq	(%r14), %rsi
	movzbl	(%rsi), %edi
	addl	%edi, %edi
	andl	$1, %ecx
	orl	%edi, %ecx
	movb	%cl, (%rsi)
	shrl	$2, %r12d
	andl	$63, %r12d
	addq	$16, %r14
	addl	$-2, %ebx
	jne	.LBB16_41
.LBB16_42:                              # %for.body.91.lr.ph.1
                                        #   in Loop: Header=BB16_28 Depth=2
	leal	(%rdx,%r8), %r10d
	movq	%r13, %r14
	movb	18600(%r14), %cl
	addb	%cl, %cl
	movq	%r11, %rdx
	shrq	%cl, %rdx
	movl	%r15d, %ebp
	andl	%edx, %ebp
	xorl	%esi, %esi
	cmpl	$0, 148(%rsp)           # 4-byte Folded Reload
	movslq	%r10d, %rdi
	je	.LBB16_44
# BB#43:                                # %for.body.91.1.prol
                                        #   in Loop: Header=BB16_28 Depth=2
	movq	160(%rsp,%rdi,8), %rdx
	movzbl	(%rdx), %esi
	addl	%esi, %esi
	movl	%ebp, %ecx
	andl	$1, %ecx
	orl	%esi, %ecx
	movb	%cl, (%rdx)
	shrl	%ebp
	incq	%rdi
	movl	$1, %esi
.LBB16_44:                              # %for.body.91.lr.ph.1.split
                                        #   in Loop: Header=BB16_28 Depth=2
	movq	112(%rsp), %r12         # 8-byte Reload
	movq	%rax, %r13
	cmpl	$0, 152(%rsp)           # 4-byte Folded Reload
	je	.LBB16_47
# BB#45:                                # %for.body.91.lr.ph.1.split.split
                                        #   in Loop: Header=BB16_28 Depth=2
	leaq	168(%rsp), %rax
	leaq	(%rax,%rdi,8), %rbx
	movl	%r8d, %edi
	subl	%esi, %edi
	.align	16, 0x90
.LBB16_46:                              # %for.body.91.1
                                        #   Parent Loop BB16_21 Depth=1
                                        #     Parent Loop BB16_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-8(%rbx), %rcx
	movzbl	(%rcx), %edx
	addl	%edx, %edx
	movl	%ebp, %esi
	andl	$1, %esi
	orl	%edx, %esi
	movb	%sil, (%rcx)
	movl	%ebp, %ecx
	shrl	%ecx
	movq	(%rbx), %rdx
	movzbl	(%rdx), %esi
	addl	%esi, %esi
	andl	$1, %ecx
	orl	%esi, %ecx
	movb	%cl, (%rdx)
	shrl	$2, %ebp
	andl	$63, %ebp
	addq	$16, %rbx
	addl	$-2, %edi
	jne	.LBB16_46
.LBB16_47:                              # %for.body.91.lr.ph.2
                                        #   in Loop: Header=BB16_28 Depth=2
	leal	(%r10,%r8), %edx
	imull	$3, 18600(%r14), %ecx
	shrq	%cl, %r11
	movl	%r15d, %ebx
	andl	%r11d, %ebx
	xorl	%esi, %esi
	cmpl	$0, 148(%rsp)           # 4-byte Folded Reload
	movslq	%edx, %rdi
	je	.LBB16_49
# BB#48:                                # %for.body.91.2.prol
                                        #   in Loop: Header=BB16_28 Depth=2
	movq	160(%rsp,%rdi,8), %rdx
	movzbl	(%rdx), %esi
	addl	%esi, %esi
	movl	%ebx, %ecx
	andl	$1, %ecx
	orl	%esi, %ecx
	movb	%cl, (%rdx)
	shrl	%ebx
	incq	%rdi
	movl	$1, %esi
.LBB16_49:                              # %for.body.91.lr.ph.2.split
                                        #   in Loop: Header=BB16_28 Depth=2
	movq	136(%rsp), %r10         # 8-byte Reload
	cmpl	$0, 152(%rsp)           # 4-byte Folded Reload
	je	.LBB16_50
# BB#65:                                # %for.body.91.lr.ph.2.split.split
                                        #   in Loop: Header=BB16_28 Depth=2
	leaq	168(%rsp), %rax
	leaq	(%rax,%rdi,8), %rbp
	movl	%r8d, %edi
	subl	%esi, %edi
	.align	16, 0x90
.LBB16_66:                              # %for.body.91.2
                                        #   Parent Loop BB16_21 Depth=1
                                        #     Parent Loop BB16_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-8(%rbp), %rcx
	movzbl	(%rcx), %edx
	addl	%edx, %edx
	movl	%ebx, %esi
	andl	$1, %esi
	orl	%edx, %esi
	movb	%sil, (%rcx)
	movl	%ebx, %ecx
	shrl	%ecx
	movq	(%rbp), %rdx
	movzbl	(%rdx), %esi
	addl	%esi, %esi
	andl	$1, %ecx
	orl	%esi, %ecx
	movb	%cl, (%rdx)
	shrl	$2, %ebx
	andl	$63, %ebx
	addq	$16, %rbp
	addl	$-2, %edi
	jne	.LBB16_66
.LBB16_50:                              # %if.end.112
                                        #   in Loop: Header=BB16_28 Depth=2
	incl	%r9d
	cmpl	$2, %r10d
	jge	.LBB16_51
# BB#52:                                # %do.end
                                        #   in Loop: Header=BB16_21 Depth=1
	incq	128(%rsp)               # 8-byte Folded Spill
	testb	$7, %r9b
	setne	%al
	movb	91(%rsp), %bl           # 1-byte Reload
	orb	%bl, %al
	jne	.LBB16_63
# BB#53:                                # %overflow.checked
                                        #   in Loop: Header=BB16_21 Depth=1
	cmpq	$0, 96(%rsp)            # 8-byte Folded Reload
	movl	$0, %edx
	je	.LBB16_60
# BB#54:                                # %vector.body.preheader
                                        #   in Loop: Header=BB16_21 Depth=1
	cmpq	$0, 32(%rsp)            # 8-byte Folded Reload
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	$0, %ecx
	je	.LBB16_56
	.align	16, 0x90
.LBB16_55:                              # %vector.body.prol
                                        #   Parent Loop BB16_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqa	160(%rsp,%rcx,8), %xmm1
	paddq	%xmm0, %xmm1
	movdqa	176(%rsp,%rcx,8), %xmm2
	paddq	%xmm0, %xmm2
	movdqa	%xmm1, 160(%rsp,%rcx,8)
	movdqa	%xmm2, 176(%rsp,%rcx,8)
	addq	$4, %rcx
	incq	%rax
	jne	.LBB16_55
.LBB16_56:                              # %vector.body.preheader.split
                                        #   in Loop: Header=BB16_21 Depth=1
	cmpq	$12, 40(%rsp)           # 8-byte Folded Reload
	movq	96(%rsp), %rdx          # 8-byte Reload
	jb	.LBB16_60
# BB#57:                                # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB16_21 Depth=1
	movq	96(%rsp), %rax          # 8-byte Reload
	subq	%rcx, %rax
	leaq	272(%rsp), %rdx
	leaq	(%rdx,%rcx,8), %rcx
	.align	16, 0x90
.LBB16_58:                              # %vector.body
                                        #   Parent Loop BB16_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqa	-112(%rcx), %xmm1
	paddq	%xmm0, %xmm1
	movdqa	-96(%rcx), %xmm2
	paddq	%xmm0, %xmm2
	movdqa	%xmm1, -112(%rcx)
	movdqa	%xmm2, -96(%rcx)
	movdqa	-80(%rcx), %xmm1
	paddq	%xmm0, %xmm1
	movdqa	-64(%rcx), %xmm2
	paddq	%xmm0, %xmm2
	movdqa	%xmm1, -80(%rcx)
	movdqa	%xmm2, -64(%rcx)
	movdqa	-48(%rcx), %xmm1
	paddq	%xmm0, %xmm1
	movdqa	-32(%rcx), %xmm2
	paddq	%xmm0, %xmm2
	movdqa	%xmm1, -48(%rcx)
	movdqa	%xmm2, -32(%rcx)
	movdqa	-16(%rcx), %xmm1
	paddq	%xmm0, %xmm1
	movdqa	(%rcx), %xmm2
	paddq	%xmm0, %xmm2
	movdqa	%xmm1, -16(%rcx)
	movdqa	%xmm2, (%rcx)
	subq	$-128, %rcx
	addq	$-16, %rax
	jne	.LBB16_58
# BB#59:                                #   in Loop: Header=BB16_21 Depth=1
	movq	96(%rsp), %rdx          # 8-byte Reload
.LBB16_60:                              # %middle.block
                                        #   in Loop: Header=BB16_21 Depth=1
	cmpq	%rdx, 72(%rsp)          # 8-byte Folded Reload
	je	.LBB16_63
# BB#61:                                # %for.body.124.preheader
                                        #   in Loop: Header=BB16_21 Depth=1
	leaq	160(%rsp,%rdx,8), %rax
	movq	48(%rsp), %rcx          # 8-byte Reload
	subl	%edx, %ecx
	.align	16, 0x90
.LBB16_62:                              # %for.body.124
                                        #   Parent Loop BB16_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	incq	(%rax)
	addq	$8, %rax
	decl	%ecx
	jne	.LBB16_62
.LBB16_63:                              # %while.cond.backedge
                                        #   in Loop: Header=BB16_21 Depth=1
	movq	128(%rsp), %rax         # 8-byte Reload
	cmpl	92(%rsp), %eax          # 4-byte Folded Reload
	jne	.LBB16_21
.LBB16_64:                              # %while.end
	movl	18564(%r14), %esi
	cmpl	$1, 18556(%r14)
	sete	%al
	movzbl	%al, %edi
	leaq	160(%rsp), %r8
	movl	12(%rsp), %edx          # 4-byte Reload
	movq	16(%rsp), %rcx          # 8-byte Reload
	callq	eprn_finalize
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	split_line_le8, .Lfunc_end16-split_line_le8
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
