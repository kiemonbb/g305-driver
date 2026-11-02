#include<linux/module.h>
#include<linux/kernel.h>

MODULE_LICENSE("GPL");

static int __init test_module_init(void)
{
        printk(KERN_INFO "Hi\n");
        return 0;
}

static void __exit test_module_exit(void)
{
        printk(KERN_INFO "Bye\n");
}

module_init(test_module_init);
module_exit(test_module_exit);
