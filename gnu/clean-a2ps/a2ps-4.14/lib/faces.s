	.text
	.file	"faces.bc"
	.globl	string_to_face
	.align	16, 0x90
	.type	string_to_face,@function
string_to_face:                         # @string_to_face
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$face_and_name, %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movabsq	$face_and_name, %rax
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_4
# BB#3:                                 # %if.then
	movabsq	$face_and_name, %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %edx
	movl	%edx, -4(%rbp)
	jmp	.LBB0_7
.LBB0_4:                                # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_6:                                # %for.end
	movl	$-1, -4(%rbp)
.LBB0_7:                                # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	string_to_face, .Lfunc_end0-string_to_face
	.cfi_endproc

	.globl	face_to_string
	.align	16, 0x90
	.type	face_to_string,@function
face_to_string:                         # @face_to_string
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	_face_to_string
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	face_to_string, .Lfunc_end1-face_to_string
	.cfi_endproc

	.align	16, 0x90
	.type	_face_to_string,@function
_face_to_string:                        # @_face_to_string
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
	movl	%edi, -12(%rbp)
	movl	$0, -16(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$face_and_name, %rax
	movslq	-16(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movabsq	$face_and_name, %rax
	movl	-12(%rbp), %ecx
	movslq	-16(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	cmpl	8(%rax), %ecx
	jne	.LBB2_4
# BB#3:                                 # %if.then
	movabsq	$face_and_name, %rax
	movslq	-16(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_7
.LBB2_4:                                # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_5
.LBB2_5:                                # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB2_1
.LBB2_6:                                # %for.end
	movabsq	$.L.str.25, %rax
	movq	%rax, -8(%rbp)
.LBB2_7:                                # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	_face_to_string, .Lfunc_end2-_face_to_string
	.cfi_endproc

	.globl	face_self_print
	.align	16, 0x90
	.type	face_self_print,@function
face_self_print:                        # @face_self_print
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	callq	_face_to_string
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	%eax, -20(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	face_self_print, .Lfunc_end3-face_self_print
	.cfi_endproc

	.globl	face_eo_ps
	.align	16, 0x90
	.type	face_eo_ps,@function
face_eo_ps:                             # @face_eo_ps
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %edi
	movl	%edi, %eax
	movq	%rax, %rcx
	subq	$9, %rcx
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	ja	.LBB4_11
# BB#14:                                # %entry
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	.LJTI4_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB4_1:                                # %sw.bb
	movabsq	$.L.str, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_13
.LBB4_2:                                # %sw.bb.1
	movabsq	$.L.str.1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_13
.LBB4_3:                                # %sw.bb.2
	movabsq	$.L.str.2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_13
.LBB4_4:                                # %sw.bb.3
	movabsq	$.L.str.3, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_13
.LBB4_5:                                # %sw.bb.4
	movabsq	$.L.str.4, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_13
.LBB4_6:                                # %sw.bb.5
	movabsq	$.L.str.5, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_13
.LBB4_7:                                # %sw.bb.6
	movabsq	$.L.str.6, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_13
.LBB4_8:                                # %sw.bb.7
	movabsq	$.L.str.7, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_13
.LBB4_9:                                # %sw.bb.8
	movabsq	$.L.str.8, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_13
.LBB4_10:                               # %sw.bb.9
	movabsq	$.L.str.9, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_13
.LBB4_11:                               # %sw.default
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.10, %rdx
	movl	-12(%rbp), %ecx
	movb	$0, %al
	callq	error
# BB#12:                                # %sw.epilog
	movq	$0, -8(%rbp)
.LBB4_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	face_eo_ps, .Lfunc_end4-face_eo_ps
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_1
	.quad	.LBB4_3
	.quad	.LBB4_4
	.quad	.LBB4_7
	.quad	.LBB4_8
	.quad	.LBB4_9
	.quad	.LBB4_2
	.quad	.LBB4_10
	.quad	.LBB4_5
	.quad	.LBB4_6

	.text
	.globl	check_face_eo_font
	.align	16, 0x90
	.type	check_face_eo_font,@function
check_face_eo_font:                     # @check_face_eo_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-12(%rbp), %rax
	cmpl	$-1, base_faces(,%rax,4)
	je	.LBB5_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movslq	-12(%rbp), %rax
	movslq	base_faces(,%rax,4), %rax
	movq	-8(%rbp), %rcx
	cmpq	$0, 184(%rcx,%rax,8)
	jne	.LBB5_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB5_1 Depth=1
	movabsq	$.L.str.11, %rsi
	movl	$1, -16(%rbp)
	movq	stderr, %rdi
	movq	program_name, %rdx
	movb	$0, %al
	callq	fprintf
	movslq	-12(%rbp), %rdx
	movl	base_faces(,%rdx,4), %edi
	movq	stderr, %rsi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	face_self_print
	movabsq	$.L.str.12, %rsi
	movq	stderr, %rdi
	movslq	-12(%rbp), %rdx
	movl	base_faces(,%rdx,4), %edx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB5_4:                                # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_5
.LBB5_5:                                # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB5_1
.LBB5_6:                                # %for.end
	cmpl	$0, -16(%rbp)
	je	.LBB5_8
# BB#7:                                 # %if.then.11
	movabsq	$.L.str.13, %rdi
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movq	%rax, %rdx
	movb	$0, %al
	callq	error
.LBB5_8:                                # %if.end.13
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	check_face_eo_font, .Lfunc_end5-check_face_eo_font
	.cfi_endproc

	.globl	face_eo_font_is_set
	.align	16, 0x90
	.type	face_eo_font_is_set,@function
face_eo_font_is_set:                    # @face_eo_font_is_set
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	$1, -16(%rbp)
	movl	$0, -12(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$9, -12(%rbp)
	jg	.LBB6_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	$0, 184(%rcx,%rax,8)
	jne	.LBB6_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$0, -16(%rbp)
.LBB6_4:                                # %if.end
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_5
.LBB6_5:                                # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_1
.LBB6_6:                                # %for.end
	movl	-16(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end6:
	.size	face_eo_font_is_set, .Lfunc_end6-face_eo_font_is_set
	.cfi_endproc

	.globl	init_face_eo_font
	.align	16, 0x90
	.type	init_face_eo_font,@function
init_face_eo_font:                      # @init_face_eo_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$9, -12(%rbp)
	jg	.LBB7_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	$0, 184(%rcx,%rax,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB7_1
.LBB7_4:                                # %for.end
	popq	%rbp
	retq
.Lfunc_end7:
	.size	init_face_eo_font, .Lfunc_end7-init_face_eo_font
	.cfi_endproc

	.globl	face_eo_font_free
	.align	16, 0x90
	.type	face_eo_font_free,@function
face_eo_font_free:                      # @face_eo_font_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$9, -12(%rbp)
	jg	.LBB8_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_3
.LBB8_3:                                # %do.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB8_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB8_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	free
.LBB8_5:                                # %if.end
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_6
.LBB8_6:                                # %do.end
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_7
.LBB8_7:                                # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB8_1
.LBB8_8:                                # %for.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	face_eo_font_free, .Lfunc_end8-face_eo_font_free
	.cfi_endproc

	.globl	face_set_font
	.align	16, 0x90
	.type	face_set_font,@function
face_set_font:                          # @face_set_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	$0, 184(%rcx,%rax,8)
	je	.LBB9_3
# BB#2:                                 # %if.then
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	184(%rcx,%rax,8), %rdi
	callq	free
.LBB9_3:                                # %if.end
	jmp	.LBB9_4
.LBB9_4:                                # %do.end
	movq	-24(%rbp), %rdi
	callq	xstrdup
	movslq	-12(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	%rax, 184(%rcx,%rdi,8)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	face_set_font, .Lfunc_end9-face_set_font
	.cfi_endproc

	.type	base_faces,@object      # @base_faces
	.data
	.globl	base_faces
	.align	16
base_faces:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	7                       # 0x7
	.long	8                       # 0x8
	.long	9                       # 0x9
	.long	4294967295              # 0xffffffff
	.size	base_faces, 44

	.type	face_and_name,@object   # @face_and_name
	.section	.rodata,"a",@progbits
	.align	16
face_and_name:
	.quad	.L.str.14
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	.L.str.15
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.16
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.17
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.18
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.19
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.20
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.21
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.22
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.23
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.24
	.long	9                       # 0x9
	.zero	4
	.quad	0
	.long	4294967295              # 0xffffffff
	.zero	4
	.size	face_and_name, 192

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"p"
	.size	.L.str, 2

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"sy"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"k"
	.size	.L.str.2, 2

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"K"
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"c"
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"C"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"l"
	.size	.L.str.6, 2

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"L"
	.size	.L.str.7, 2

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"str"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"e"
	.size	.L.str.9, 2

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"face_eo_ps: %d"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%s: face `"
	.size	.L.str.11, 11

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"' (%d) has no specified font\n"
	.size	.L.str.12, 30

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"incomplete knowledge of faces"
	.size	.L.str.13, 30

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"NoFace"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Plain"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Keyword"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Keyword_strong"
	.size	.L.str.17, 15

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Label"
	.size	.L.str.18, 6

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Label_strong"
	.size	.L.str.19, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"String"
	.size	.L.str.20, 7

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Symbol"
	.size	.L.str.21, 7

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Error"
	.size	.L.str.22, 6

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Comment"
	.size	.L.str.23, 8

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Comment_strong"
	.size	.L.str.24, 15

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"UnknownFace"
	.size	.L.str.25, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
