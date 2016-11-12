	.text
	.file	"gimp-log.bc"
	.globl	gimp_log_init
	.align	16, 0x90
	.type	gimp_log_init,@function
gimp_log_init:                          # @gimp_log_init
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
	subq	$16, %rsp
	movabsq	$.L.str, %rdi
	callq	g_getenv
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.1, %rdi
	callq	g_getenv
	movq	%rax, -8(%rbp)
.LBB0_2:                                # %if.end
	cmpq	$0, -8(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then.3
	movabsq	$.L.str.2, %rdi
	movl	$1, %edx
	movq	-8(%rbp), %rsi
	callq	g_setenv
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB0_4:                                # %if.end.5
	cmpq	$0, -8(%rbp)
	je	.LBB0_11
# BB#5:                                 # %if.then.7
	movabsq	$.L.str.3, %rsi
	movq	-8(%rbp), %rdi
	callq	g_ascii_strcasecmp
	cmpl	$0, %eax
	jne	.LBB0_7
# BB#6:                                 # %if.then.9
	movl	$8, gimp_log_flags
	jmp	.LBB0_8
.LBB0_7:                                # %if.else
	movabsq	$log_keys, %rsi
	movl	$19, %edx
	movq	-8(%rbp), %rdi
	callq	g_parse_debug_string
	movl	%eax, gimp_log_flags
.LBB0_8:                                # %if.end.11
	movl	gimp_log_flags, %eax
	andl	$65536, %eax            # imm = 0x10000
	cmpl	$0, %eax
	je	.LBB0_10
# BB#9:                                 # %if.then.13
	callq	gimp_debug_enable_instances
.LBB0_10:                               # %if.end.14
	jmp	.LBB0_11
.LBB0_11:                               # %if.end.15
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_log_init, .Lfunc_end0-gimp_log_init
	.cfi_endproc

	.globl	gimp_log
	.align	16, 0x90
	.type	gimp_log,@function
gimp_log:                               # @gimp_log
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
	subq	$416, %rsp              # imm = 0x1A0
	testb	%al, %al
	movaps	%xmm7, -256(%rbp)       # 16-byte Spill
	movaps	%xmm6, -272(%rbp)       # 16-byte Spill
	movaps	%xmm5, -288(%rbp)       # 16-byte Spill
	movaps	%xmm4, -304(%rbp)       # 16-byte Spill
	movaps	%xmm3, -320(%rbp)       # 16-byte Spill
	movaps	%xmm2, -336(%rbp)       # 16-byte Spill
	movaps	%xmm1, -352(%rbp)       # 16-byte Spill
	movaps	%xmm0, -368(%rbp)       # 16-byte Spill
	movl	%edi, -372(%rbp)        # 4-byte Spill
	movq	%r9, -384(%rbp)         # 8-byte Spill
	movq	%r8, -392(%rbp)         # 8-byte Spill
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	movl	%edx, -404(%rbp)        # 4-byte Spill
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	je	.LBB1_2
# BB#1:                                 # %entry
	movaps	-368(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -192(%rbp)
	movaps	-352(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -176(%rbp)
	movaps	-336(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -160(%rbp)
	movaps	-320(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -144(%rbp)
	movaps	-304(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -128(%rbp)
	movaps	-288(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -112(%rbp)
	movaps	-272(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -96(%rbp)
	movaps	-256(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -80(%rbp)
.LBB1_2:                                # %entry
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, -200(%rbp)
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -208(%rbp)
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movl	-404(%rbp), %esi        # 4-byte Reload
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movl	-372(%rbp), %r8d        # 4-byte Reload
	movl	%r8d, -4(%rbp)
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	leaq	-240(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	leaq	16(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movl	$48, -60(%rbp)
	movl	$32, -64(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	leaq	-64(%rbp), %r8
	callq	gimp_logv
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_log, .Lfunc_end1-gimp_log
	.cfi_endproc

	.globl	gimp_logv
	.align	16, 0x90
	.type	gimp_logv,@function
gimp_logv:                              # @gimp_logv
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
	subq	$64, %rsp
	movabsq	$.L.str.4, %rax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%rax, -48(%rbp)
	movl	$0, -60(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-60(%rbp), %rax
	cmpq	$19, %rax
	jae	.LBB2_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movabsq	$log_keys, %rax
	movslq	-60(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %edx
	cmpl	-4(%rbp), %edx
	jne	.LBB2_4
# BB#3:                                 # %if.then
	movabsq	$log_keys, %rax
	movslq	-60(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB2_6
.LBB2_4:                                # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_5
.LBB2_5:                                # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB2_1
.LBB2_6:                                # %for.end
	cmpq	$0, -32(%rbp)
	je	.LBB2_8
# BB#7:                                 # %if.then.6
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_strdup_vprintf
	movq	%rax, -56(%rbp)
	jmp	.LBB2_9
.LBB2_8:                                # %if.else
	movabsq	$.L.str.5, %rdi
	callq	g_strdup
	movq	%rax, -56(%rbp)
.LBB2_9:                                # %if.end.8
	movl	$128, %esi
	movabsq	$.L.str.6, %rdx
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movl	-20(%rbp), %r8d
	movq	-56(%rbp), %r9
	movb	$0, %al
	callq	g_log
	movq	-56(%rbp), %rdi
	callq	g_free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_logv, .Lfunc_end2-gimp_logv
	.cfi_endproc

	.type	gimp_log_flags,@object  # @gimp_log_flags
	.bss
	.globl	gimp_log_flags
	.align	4
gimp_log_flags:
	.long	0                       # 0x0
	.size	gimp_log_flags, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GIMP_LOG"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_DEBUG"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"G_MESSAGES_DEBUG"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"help"
	.size	.L.str.3, 5

	.type	log_keys,@object        # @log_keys
	.section	.rodata,"a",@progbits
	.align	16
log_keys:
	.quad	.L.str.7
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.8
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.9
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.3
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.10
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.11
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str.12
	.long	64                      # 0x40
	.zero	4
	.quad	.L.str.13
	.long	128                     # 0x80
	.zero	4
	.quad	.L.str.14
	.long	256                     # 0x100
	.zero	4
	.quad	.L.str.15
	.long	512                     # 0x200
	.zero	4
	.quad	.L.str.16
	.long	1024                    # 0x400
	.zero	4
	.quad	.L.str.17
	.long	2048                    # 0x800
	.zero	4
	.quad	.L.str.18
	.long	4096                    # 0x1000
	.zero	4
	.quad	.L.str.19
	.long	8192                    # 0x2000
	.zero	4
	.quad	.L.str.20
	.long	16384                   # 0x4000
	.zero	4
	.quad	.L.str.21
	.long	32768                   # 0x8000
	.zero	4
	.quad	.L.str.22
	.long	65536                   # 0x10000
	.zero	4
	.quad	.L.str.23
	.long	131072                  # 0x20000
	.zero	4
	.quad	.L.str.24
	.long	262144                  # 0x40000
	.zero	4
	.size	log_keys, 304

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"unknown"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"called"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%s(%d): %s"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"tool-events"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"tool-focus"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"dnd"
	.size	.L.str.9, 4

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"dialog-factory"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"menus"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"save-dialog"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"image-scale"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"shadow-tiles"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"scale"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"wm"
	.size	.L.str.16, 3

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"floating-selection"
	.size	.L.str.17, 19

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"shm"
	.size	.L.str.18, 4

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"text-editing"
	.size	.L.str.19, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"key-events"
	.size	.L.str.20, 11

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"auto-tab-style"
	.size	.L.str.21, 15

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"instances"
	.size	.L.str.22, 10

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"rectangle-tool"
	.size	.L.str.23, 15

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"brush-cache"
	.size	.L.str.24, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
