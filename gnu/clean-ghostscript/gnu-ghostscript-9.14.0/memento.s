	.text
	.file	"memento.bc"
	.globl	Memento_breakpoint
	.align	16, 0x90
	.type	Memento_breakpoint,@function
Memento_breakpoint:                     # @Memento_breakpoint
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end0:
	.size	Memento_breakpoint, .Lfunc_end0-Memento_breakpoint
	.cfi_endproc

	.globl	Memento_checkBlock
	.align	16, 0x90
	.type	Memento_checkBlock,@function
Memento_checkBlock:                     # @Memento_checkBlock
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	Memento_checkBlock, .Lfunc_end1-Memento_checkBlock
	.cfi_endproc

	.globl	Memento_checkAllMemory
	.align	16, 0x90
	.type	Memento_checkAllMemory,@function
Memento_checkAllMemory:                 # @Memento_checkAllMemory
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	Memento_checkAllMemory, .Lfunc_end2-Memento_checkAllMemory
	.cfi_endproc

	.globl	Memento_check
	.align	16, 0x90
	.type	Memento_check,@function
Memento_check:                          # @Memento_check
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	Memento_check, .Lfunc_end3-Memento_check
	.cfi_endproc

	.globl	Memento_setParanoia
	.align	16, 0x90
	.type	Memento_setParanoia,@function
Memento_setParanoia:                    # @Memento_setParanoia
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end4:
	.size	Memento_setParanoia, .Lfunc_end4-Memento_setParanoia
	.cfi_endproc

	.globl	Memento_paranoidAt
	.align	16, 0x90
	.type	Memento_paranoidAt,@function
Memento_paranoidAt:                     # @Memento_paranoidAt
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end5:
	.size	Memento_paranoidAt, .Lfunc_end5-Memento_paranoidAt
	.cfi_endproc

	.globl	Memento_breakAt
	.align	16, 0x90
	.type	Memento_breakAt,@function
Memento_breakAt:                        # @Memento_breakAt
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end6:
	.size	Memento_breakAt, .Lfunc_end6-Memento_breakAt
	.cfi_endproc

	.globl	Memento_getBlockNum
	.align	16, 0x90
	.type	Memento_getBlockNum,@function
Memento_getBlockNum:                    # @Memento_getBlockNum
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end7:
	.size	Memento_getBlockNum, .Lfunc_end7-Memento_getBlockNum
	.cfi_endproc

	.globl	Memento_find
	.align	16, 0x90
	.type	Memento_find,@function
Memento_find:                           # @Memento_find
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end8:
	.size	Memento_find, .Lfunc_end8-Memento_find
	.cfi_endproc

	.globl	Memento_failAt
	.align	16, 0x90
	.type	Memento_failAt,@function
Memento_failAt:                         # @Memento_failAt
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end9:
	.size	Memento_failAt, .Lfunc_end9-Memento_failAt
	.cfi_endproc

	.globl	Memento_breakOnFree
	.align	16, 0x90
	.type	Memento_breakOnFree,@function
Memento_breakOnFree:                    # @Memento_breakOnFree
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end10:
	.size	Memento_breakOnFree, .Lfunc_end10-Memento_breakOnFree
	.cfi_endproc

	.globl	Memento_breakOnRealloc
	.align	16, 0x90
	.type	Memento_breakOnRealloc,@function
Memento_breakOnRealloc:                 # @Memento_breakOnRealloc
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end11:
	.size	Memento_breakOnRealloc, .Lfunc_end11-Memento_breakOnRealloc
	.cfi_endproc

	.globl	Memento_malloc
	.align	16, 0x90
	.type	Memento_malloc,@function
Memento_malloc:                         # @Memento_malloc
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	malloc                  # TAILCALL
.Lfunc_end12:
	.size	Memento_malloc, .Lfunc_end12-Memento_malloc
	.cfi_endproc

	.globl	Memento_free
	.align	16, 0x90
	.type	Memento_free,@function
Memento_free:                           # @Memento_free
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	free                    # TAILCALL
.Lfunc_end13:
	.size	Memento_free, .Lfunc_end13-Memento_free
	.cfi_endproc

	.globl	Memento_realloc
	.align	16, 0x90
	.type	Memento_realloc,@function
Memento_realloc:                        # @Memento_realloc
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	realloc                 # TAILCALL
.Lfunc_end14:
	.size	Memento_realloc, .Lfunc_end14-Memento_realloc
	.cfi_endproc

	.globl	Memento_calloc
	.align	16, 0x90
	.type	Memento_calloc,@function
Memento_calloc:                         # @Memento_calloc
	.cfi_startproc
# BB#0:                                 # %entry
	jmp	calloc                  # TAILCALL
.Lfunc_end15:
	.size	Memento_calloc, .Lfunc_end15-Memento_calloc
	.cfi_endproc

	.globl	Memento_listBlocks
	.align	16, 0x90
	.type	Memento_listBlocks,@function
Memento_listBlocks:                     # @Memento_listBlocks
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end16:
	.size	Memento_listBlocks, .Lfunc_end16-Memento_listBlocks
	.cfi_endproc

	.globl	Memento_listNewBlocks
	.align	16, 0x90
	.type	Memento_listNewBlocks,@function
Memento_listNewBlocks:                  # @Memento_listNewBlocks
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end17:
	.size	Memento_listNewBlocks, .Lfunc_end17-Memento_listNewBlocks
	.cfi_endproc

	.globl	Memento_setMax
	.align	16, 0x90
	.type	Memento_setMax,@function
Memento_setMax:                         # @Memento_setMax
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end18:
	.size	Memento_setMax, .Lfunc_end18-Memento_setMax
	.cfi_endproc

	.globl	Memento_stats
	.align	16, 0x90
	.type	Memento_stats,@function
Memento_stats:                          # @Memento_stats
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end19:
	.size	Memento_stats, .Lfunc_end19-Memento_stats
	.cfi_endproc

	.globl	Memento_label
	.align	16, 0x90
	.type	Memento_label,@function
Memento_label:                          # @Memento_label
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	retq
.Lfunc_end20:
	.size	Memento_label, .Lfunc_end20-Memento_label
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
