<table class="row"
       style="border-spacing:0;border-collapse:collapse;vertical-align:top;text-align:left;padding: 0;width:100%;position:relative;display:block;">
    <tbody>
    <tr style="padding: 0;vertical-align:top;text-align:left;">
        <td class="wrapper last"
            style="word-break:keep-all;-webkit-hyphens:auto;-moz-hyphens:auto;hyphens:auto;border-collapse:collapse !important;vertical-align:top;color:#222222;font-family:'Helvetica', 'Arial', sans-serif;font-weight:normal;margin: 0;text-align:left;font-size:14px;line-height:19px;position:relative;padding: 10px 0 0;">
            <table class="twelve columns"
                   style="border-spacing:0;border-collapse:collapse;padding: 0;vertical-align:top;text-align:left;margin: 0 auto;width:580px;">
                <tbody>
                <tr style="padding: 0;vertical-align:top;text-align:left;">
                    <td style="word-break:keep-all;-webkit-hyphens:auto;-moz-hyphens:auto;hyphens:auto;border-collapse:collapse !important;vertical-align:top;color:#222222;font-family:'Helvetica', 'Arial', sans-serif;font-weight:bold;margin: 0;text-align:left;font-size:18px;line-height:21px;padding: 20px 0 20px;">
                        <h1>Overdue Invoice: #{$invoice_num}</h1>

                        <p class="lead"
                           style="color:#222222;font-family:'Helvetica', 'Arial', sans-serif;font-weight:normal;padding: 0;text-align:left;margin: 0 0 10px;font-size:14px;line-height:21px;">
                            This is a billing notice that invoice no# {$invoice_num} which was generated
                            on {$invoice_date_created} is now overdue.
                        </p>
                    </td>
                    <td class="expander"
                        style="word-break:keep-all;-webkit-hyphens:auto;-moz-hyphens:auto;hyphens:auto;border-collapse:collapse !important;vertical-align:top;color:#222222;font-family:'Helvetica', 'Arial', sans-serif;font-weight:normal;margin: 0;text-align:left;font-size:14px;line-height:19px;visibility:hidden;width:0;padding: 0 !important;">
                        &nbsp;</td>
                </tr>
                <tr style="padding: 0;vertical-align:top;text-align:left;">
                    <td class="container"
                        style="color:#222222;font-family:'Helvetica', 'Arial', sans-serif;font-weight:normal;padding: 0;text-align:left;margin: 0 0 10px;font-size:14px;line-height:18px;padding-bottom: 20px;">
                        <h2>Invoice Items</h2>
                        {foreach key=num item=invoiceitem from=$invoice_items}
                            <p>
                                <strong>{$invoiceitem.type}</strong> &nbsp; Amount: {$invoiceitem.amount}
                            </p>
                            <ul>
                                <li>{$invoiceitem.description}</li>
                            </ul>
                        {/foreach}
                    </td>
                    <td class="expander"
                        style="word-break:keep-all;-webkit-hyphens:auto;-moz-hyphens:auto;hyphens:auto;border-collapse:collapse !important;vertical-align:top;color:#222222;font-family:'Helvetica', 'Arial', sans-serif;font-weight:normal;margin: 0;text-align:left;font-size:14px;line-height:19px;visibility:hidden;width:0;padding: 0 !important;">
                        &nbsp;
                    </td>
                </tr>
                <tr style="padding: 0;vertical-align:top;text-align:left;">
                    <td class="panel"
                        style="word-break:keep-all;-webkit-hyphens:auto;-moz-hyphens:auto;hyphens:auto;border-collapse:collapse !important;vertical-align:top;color:#222222;font-family:'Helvetica', 'Arial', sans-serif;font-weight:normal;margin: 0;text-align:left;font-size:14px;line-height:19px;padding: 10px !important;background: #ECF8FF none repeat scroll top left;border: 1px solid #b9e5ff;">
                        <ul>
                            <li>Responsible Party:&nbsp; <strong>
                                    {$client_first_name}&nbsp;{$client_last_name}
                                </strong>
                            </li>
                            <li>Sub-total:&nbsp; {$invoice_subtotal}</li>
                            <li>Credits:&nbsp; {$invoice_credit}</li>
                            <li>Amount Due:&nbsp; {$invoice_total}</li>
                            <li>Invoice Due Date:&nbsp;{$invoice_date_due}</li>
                            <li>Invoice Balance:&nbsp; {$invoice_balance}</li>
                            <li>Account Balance:&nbsp; {$invoice_total_balance_due}</li>
                        </ul>
                    </td>
                    <td class="expander"
                        style="word-break:keep-all;-webkit-hyphens:auto;-moz-hyphens:auto;hyphens:auto;border-collapse:collapse !important;vertical-align:top;color:#222222;font-family:'Helvetica', 'Arial', sans-serif;font-weight:normal;margin: 0;text-align:left;font-size:14px;line-height:19px;visibility:hidden;width:0;padding: 0 !important;">
                        &nbsp;</td>
                </tr>
                </tbody>
            </table>
        </td>
    </tr>
    </tbody>
</table>
<table class="row callout"
       style="border-spacing:0;border-collapse:collapse;vertical-align:top;text-align:left;padding: 0;width:100%;position:relative;display:block;">
    <tbody>
    <tr style="padding: 0;vertical-align:top;text-align:left;">
        <td class="wrapper last"
            style="word-break:keep-all;-webkit-hyphens:auto;-moz-hyphens:auto;hyphens:auto;border-collapse:collapse !important;vertical-align:top;color:#222222;font-family:'Helvetica', 'Arial', sans-serif;font-weight:normal;margin: 0;text-align:left;font-size:14px;line-height:19px;position:relative;padding: 10px 0 20px;">
            <table class="twelve columns"
                   style="border-spacing:0;border-collapse:collapse;padding: 0;vertical-align:top;text-align:left;margin: 0 auto;width:580px;">
                <tbody>
                <tr style="padding: 0;vertical-align:top;text-align:left;">
                    <td class="lead"
                        style="color:#222222;font-family:'Helvetica', 'Arial', sans-serif;font-weight:normal;padding: 0;text-align:left;margin: 0 0 10px;font-size:18px;line-height:21px;">
                        <p>{if $client_cc_number}Payment will be taken automatically on {$invoice_date_due} from your credit card ending with {$client_cc_number} expires on {$client_cc_expiry} that you have on record with us. To update or change the credit card details we hold for your account please login at {$invoice_link} and click Pay Now then following the instructions on screen{/if} {if $invoice_subscription_id}As you have a PayPal Subscription setup, payment will be taken automatically within the next few days. Please ensure you have enough funds in your PayPal account to cover it.{/if}
                            You can login to your client area to view and pay the invoice at {$invoice_link}
                        </p>
                    </td>
                    <td class="expander"
                        style="word-break:keep-all;-webkit-hyphens:auto;-moz-hyphens:auto;hyphens:auto;border-collapse:collapse !important;vertical-align:top;color:#222222;font-family:'Helvetica', 'Arial', sans-serif;font-weight:normal;margin: 0;text-align:left;font-size:14px;line-height:19px;visibility:hidden;width:0;padding: 0 !important;">
                        &nbsp;</td>
                </tr>
                </tbody>
            </table>
        </td>
    </tr>
    </tbody>
</table>
