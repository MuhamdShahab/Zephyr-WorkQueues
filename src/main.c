/*

Title: Work Queue
Source: https://docs.zephyrproject.org/latest/kernel/services/threads/workqueue.html


*/

#include <zephyr/kernel.h>

#define OUR_QUEUE_SIZE  1024
#define OUR_QUEUE_PRIORITY 5

K_THREAD_STACK_DEFINE(our_queue_area, OUR_QUEUE_SIZE); 

struct k_work_q our_work_q; 

struct k_work our_work;

static void our_work_fn(struct k_work *work)
{
    printk("I am the first task in the queue.");
}


void main(void)
{

    k_work_queue_init(&our_work_q);

    k_work_queue_start(&our_work_q, our_queue_area, K_THREAD_STACK_SIZEOF(our_queue_area), OUR_QUEUE_PRIORITY, NULL);

    k_work_init(&our_work, our_work_fn);

    k_work_submit_to_queue(&our_work_q, &our_work);

}
