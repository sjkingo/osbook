ENTRY(multiboot_entry) /* in boot.S */

SECTIONS
{
    /* Load the kernel at 1M of lower memory */
    . = 1M;

    /* Multiboot header and code: must be within the first 8K */
    .text ALIGN(4K) :
    {
        *(.mbhdr)
        *(.text)
    }

    /* Read-only data */
    .rodata ALIGN(4K) :
    {
        *(.rodata)
    }

    /* Read-write data (initialized) */
    .data ALIGN(4K) :
    {
        *(.data)
    }

    /* Read-write data (uninitialized) */
    .bss :
    {
        sbss = .;
        *(COMMON)
        *(.bss)
        ebss = .;
    }

    /* Kernel stack */
    .kstack :
    {
        *(.kstack)
    }

    /* Throw away some sections */
    /DISCARD/ :
    {
        *(.note.gnu.build-id)
        *(.comment)
    }
}
