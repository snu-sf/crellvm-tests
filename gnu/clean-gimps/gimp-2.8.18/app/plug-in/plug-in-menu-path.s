	.text
	.file	"plug-in-menu-path.bc"
	.globl	plug_in_menu_path_map
	.align	16, 0x90
	.type	plug_in_menu_path_map,@function
plug_in_menu_path_map:                  # @plug_in_menu_path_map
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.plug_in_menu_path_map, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_22
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	cmpq	$0, -24(%rbp)
	je	.LBB0_7
# BB#6:                                 # %if.then.1
	movq	-24(%rbp), %rdi
	callq	gimp_strip_uline
	movq	%rax, -40(%rbp)
.LBB0_7:                                # %if.end.2
	movabsq	$menu_path_mappings, %rax
	movq	%rax, -32(%rbp)
.LBB0_8:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_21
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_str_has_prefix
	cmpl	$0, %eax
	je	.LBB0_19
# BB#10:                                # %if.then.7
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_15
# BB#11:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_8 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB0_14
# BB#12:                                # %lor.lhs.false
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	-16(%rbp), %rdi
	callq	strlen
	movslq	-44(%rbp), %rdi
	cmpq	%rdi, %rax
	jne	.LBB0_14
# BB#13:                                # %lor.lhs.false.16
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB0_15
.LBB0_14:                               # %if.then.20
                                        #   in Loop: Header=BB0_8 Depth=1
	jmp	.LBB0_20
.LBB0_15:                               # %if.end.21
	movq	-16(%rbp), %rdi
	callq	strlen
	movslq	-44(%rbp), %rdi
	cmpq	%rdi, %rax
	jbe	.LBB0_17
# BB#16:                                # %if.then.26
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movslq	-44(%rbp), %rsi
	addq	%rsi, %rcx
	movq	%rcx, %rsi
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -56(%rbp)
	jmp	.LBB0_18
.LBB0_17:                               # %if.else.29
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_strdup
	movq	%rax, -56(%rbp)
.LBB0_18:                               # %if.end.32
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-56(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	jmp	.LBB0_22
.LBB0_19:                               # %if.end.33
                                        #   in Loop: Header=BB0_8 Depth=1
	jmp	.LBB0_20
.LBB0_20:                               # %for.inc
                                        #   in Loop: Header=BB0_8 Depth=1
	movq	-32(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_8
.LBB0_21:                               # %for.end
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -8(%rbp)
.LBB0_22:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	plug_in_menu_path_map, .Lfunc_end0-plug_in_menu_path_map
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Plug-In"
	.size	.L.str, 13

	.type	.L__func__.plug_in_menu_path_map,@object # @__func__.plug_in_menu_path_map
.L__func__.plug_in_menu_path_map:
	.asciz	"plug_in_menu_path_map"
	.size	.L__func__.plug_in_menu_path_map, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"menu_path != NULL"
	.size	.L.str.1, 18

	.type	menu_path_mappings,@object # @menu_path_mappings
	.section	.rodata,"a",@progbits
	.align	16
menu_path_mappings:
	.quad	.L.str.2
	.quad	0
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	0
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	0
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	0
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	0
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	0
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	0
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.16
	.quad	.L.str.19
	.quad	.L.str.18
	.quad	.L.str.16
	.quad	.L.str.20
	.quad	.L.str.18
	.quad	.L.str.16
	.quad	.L.str.21
	.quad	.L.str.18
	.quad	.L.str.16
	.quad	.L.str.22
	.quad	.L.str.18
	.quad	.L.str.16
	.quad	0
	.quad	.L.str.5
	.quad	.L.str.23
	.quad	0
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	0
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	0
	.quad	.L.str.28
	.quad	.L.str.29
	.quad	0
	.quad	.L.str.26
	.quad	.L.str.30
	.quad	0
	.quad	.L.str.18
	.zero	24
	.size	menu_path_mappings, 456

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"<Toolbox>/Xtns/Languages"
	.size	.L.str.2, 25

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"<Image>/Filters/Languages"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"<Toolbox>/Xtns/Extensions"
	.size	.L.str.4, 26

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"<Image>/Filters/Extensions"
	.size	.L.str.5, 27

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"<Toolbox>/Xtns/Buttons"
	.size	.L.str.6, 23

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"<Image>/File/Create/Buttons"
	.size	.L.str.7, 28

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"<Toolbox>/Xtns/Logos"
	.size	.L.str.8, 21

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"<Image>/File/Create/Logos"
	.size	.L.str.9, 26

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"<Toolbox>/Xtns/Misc"
	.size	.L.str.10, 20

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"<Image>/File/Create/Misc"
	.size	.L.str.11, 25

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"<Toolbox>/Xtns/Patterns"
	.size	.L.str.12, 24

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"<Image>/File/Create/Patterns"
	.size	.L.str.13, 29

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"<Toolbox>/Xtns/Web Page Themes"
	.size	.L.str.14, 31

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"<Image>/File/Create/Web Page Themes"
	.size	.L.str.15, 36

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"<Toolbox>/Xtns"
	.size	.L.str.16, 15

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Buttons"
	.size	.L.str.17, 8

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"<Image>/File/Create"
	.size	.L.str.18, 20

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Logos"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Misc"
	.size	.L.str.20, 5

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Patterns"
	.size	.L.str.21, 9

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Web Page Themes"
	.size	.L.str.22, 16

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"<Toolbox>/Help"
	.size	.L.str.23, 15

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"<Image>/Help"
	.size	.L.str.24, 13

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"<Toolbox>/File/Acquire"
	.size	.L.str.25, 23

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"<Image>/File/Create/Acquire"
	.size	.L.str.26, 28

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"<Toolbox>"
	.size	.L.str.27, 10

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"<Image>"
	.size	.L.str.28, 8

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"<Image>/File/Acquire"
	.size	.L.str.29, 21

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"<Image>/File/New"
	.size	.L.str.30, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
