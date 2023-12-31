<?php

namespace App\Observers;

use App\Models\order;
use Carbon\Carbon;

class OrderObserver
{
    /**
     * Handle the order "created" event.
     *
     * @param  \App\Models\order  $order
     * @return void
     */
    public function created(order $order)
    {
        //
    }

    /**
     * Handle the Order "creating" event.
     *
     * @param  \App\Models\Order  $order
     * @return void
     */
    public function creating(Order $order)
    {
        $now = Carbon::now();
        // SELECT max(number) from orders where year(created_at) = ?
        $number = Order::whereYear('created_at', '=', $now->year)->max('number');
                                // for cast the string to int (optinal)
        $order->number = $number? intval($number) + 1 : $now->year . '0001';

        if (!$order->shipping_name) {
            $order->shipping_name = $order->billing_name;
        }
        if (!$order->shipping_email) {
            $order->shipping_email = $order->billing_email;
        }
        if (!$order->shipping_phone) {
            $order->shipping_phone = $order->billing_phone;
        }
        if (!$order->shipping_address) {
            $order->shipping_address = $order->billing_address;
        }
        if (!$order->shipping_city) {
            $order->shipping_city = $order->billing_city;
        }
        if (!$order->shipping_country) {
            $order->shipping_country = $order->billing_country;
        }
    }

    /**
     * Handle the order "updated" event.
     *
     * @param  \App\Models\order  $order
     * @return void
     */
    public function updated(order $order)
    {
        //
    }

    /**
     * Handle the order "deleted" event.
     *
     * @param  \App\Models\order  $order
     * @return void
     */
    public function deleted(order $order)
    {
        //
    }

    /**
     * Handle the order "restored" event.
     *
     * @param  \App\Models\order  $order
     * @return void
     */
    public function restored(order $order)
    {
        //
    }

    /**
     * Handle the order "force deleted" event.
     *
     * @param  \App\Models\order  $order
     * @return void
     */
    public function forceDeleted(order $order)
    {
        //
    }
}
