<%@ Page Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true"
    CodeFile="sales_order_invoice.aspx.cs" Inherits="admin_sales_order_invoice" %>

<asp:Content ID="Content3" ContentPlaceHolderID="cph_content" runat="Server">
    <div id="messages">
    </div>
    <div class="content-header">
        <h3 class="icon-head head-sales-order-invoice">
            New Invoice for Order #100000020</h3>
        <div class="content-buttons-placeholder">
            <p class="content-buttons form-buttons">
                <button id="id_3e8e5dbd13b6ede51efaf1c62face9f4" type="button" class="scalable back"
                    onclick="setLocation('index.php/admin/sales_order/view/order_id/17/key/7363c43935cd424c904a3791fb32d3bb/')"
                    style="">
                    <span>Back</span></button>
                <button id="id_afcbbcdfb193f79f529b9b328c41c0d2" type="button" class="scalable" onclick="setLocation(window.location.href)"
                        style="">
                        <span>Reset</span></button></p>
        </div>
    </div>
    <form id="edit_form" method="post" action="index.php/admin/sales_order_invoice/save/order_id/17/key/0ab9536c496af64d2ac11b4a276aa6e2/">
    <div>
        <input name="form_key" value="OBSZfRRZ05NdQvIw" type="hidden"></div>
    <div class="box-left">
        <!--Order Information-->
        <div class="entry-edit">
            <div class="entry-edit-head">
                <a href="index.php/admin/sales_order/view/order_id/17/key/7363c43935cd424c904a3791fb32d3bb/">
                    Order # 100000020</a> <strong>(Order confirmation email sent)</strong>
            </div>
            <div class="fieldset">
                <table class="form-list" cellspacing="0">
                    <tbody>
                        <tr>
                            <td class="label">
                                <label>
                                    Order Date</label>
                            </td>
                            <td>
                                <strong>27 May 2009 15:29:20</strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="label">
                                <label>
                                    Order Status</label>
                            </td>
                            <td>
                                <strong><span id="order_status">Pending</span></strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="label">
                                <label>
                                    Purchased From</label>
                            </td>
                            <td>
                                <strong>Doors &amp; Hardware Direct Website<br>
                                    Doors &amp; Hardware Direct<br>
                                    Doors &amp; Hardware Direct</strong>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="box-right">
        <!--Account Information-->
        <div class="entry-edit">
            <div class="entry-edit-head">
                <h4 class="icon-head head-account">
                    Account Information</h4>
            </div>
            <div class="fieldset">
                <div class="hor-scroll">
                    <table class="form-list" cellspacing="0">
                        <tbody>
                            <tr>
                                <td class="label">
                                    <label>
                                        Customer Name</label>
                                </td>
                                <td>
                                    <strong>robert moorehouse</strong>
                                </td>
                            </tr>
                            <tr>
                                <td class="label">
                                    <label>
                                        Email</label>
                                </td>
                                <td>
                                    <a href="mailto:robert@moorehouse.eu"><strong>robert@moorehouse.eu</strong></a>
                                </td>
                            </tr>
                            <tr>
                                <td class="label">
                                    <label>
                                        Customer Group</label>
                                </td>
                                <td>
                                    <strong>Standard Account</strong>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="clear">
    </div>
    <div class="box-left">
        <!--Billing Address-->
        <div class="entry-edit">
            <div class="entry-edit-head">
                <h4 class="icon-head head-billing-address">
                    Billing Address</h4>
            </div>
            <fieldset>
                <address>
                    robert moorehouse<br>
                    KAl-Design<br>
                    33<br>
                    torksey st<br>
                    Kirton-in-lindsy, gainsbourgh, DN21<br>
                    United Kingdom<br>
                    T: 12345678
                    <br>
                    F: 12345678
                </address>
            </fieldset>
        </div>
    </div>
    <div class="box-right">
        <!--Shipping Address-->
        <div class="entry-edit">
            <div class="entry-edit-head">
                <h4 class="icon-head head-shipping-address">
                    Shipping Address</h4>
            </div>
            <fieldset>
                <address>
                    robert moorehouse<br>
                    KAl-Design<br>
                    33<br>
                    torksey st<br>
                    Kirton-in-lindsy, gainsbourgh, DN21<br>
                    United Kingdom<br>
                    T: 12345678
                    <br>
                    F: 12345678
                </address>
            </fieldset>
        </div>
    </div>
    <div class="clear">
    </div>
    <div class="box-left">
        <div class="entry-edit">
            <div class="entry-edit-head">
                <h4 class="icon-head head-payment-method">
                    Payment Information</h4>
            </div>
            <fieldset>
                <div>
                    Check / Money order</div>
                <div>
                    Order was placed using GBP</div>
            </fieldset>
        </div>
    </div>
    <div class="box-right">
        <!--Shipping Address-->
        <div class="entry-edit">
            <div class="entry-edit-head">
                <h4 class="icon-head head-shipping-method">
                    Shipping Information</h4>
            </div>
            <fieldset>
                <div>
                    <strong>Next day delivery - Table Rate</strong> Total Shipping Charges: <span class="price">
                        £12.50</span>
                </div>
                <p class="nm">
                    <label for="invoice_do_shipment" class="normal">
                        Create Shipment</label>
                    <input name="invoice[do_shipment]" id="invoice_do_shipment" value="1" onclick="if ( this.checked==true ) { document.getElementById('tracking').style.display = 'block'} else { document.getElementById('tracking').style.display = 'none' }"
                        type="checkbox">
                </p>
                <div id="tracking" style="display: none;">

                    

                    <div class="grid">
                        <table class="data" id="tracking_numbers_table" cellspacing="0">
                            <col width="100">
                            <col>
                            <col>
                            <col width="80">
                            <thead>
                                <tr class="headings">
                                    <th>
                                        Carrier
                                    </th>
                                    <th>
                                        Title
                                    </th>
                                    <th>
                                        Number
                                    </th>
                                    <th class="last">
                                        Action
                                    </th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <td colspan="4" class="a-center last" style="padding: 8px;">
                                        <button id="id_015b86596629d2226cacbe8b39bc0d52" type="button" class="scalable" onclick="trackingControl.add()"
                                            style="">
                                            <span>Add Tracking Number</span></button>
                                    </td>
                                </tr>
                            </tfoot>
                            <tbody id="track_row_container">
                                <tr id="track_row_template" class="template no-display">
                                    <td>
                                        <select name="tracking[__index__][carrier_code]" class="select carrier" style="width: 110px;"
                                            disabled="disabled">
                                            <option value="custom">Custom Value</option>
                                            <option value="dhl">DHL</option>
                                            <option value="fedex">Federal Express</option>
                                            <option value="ups">United Parcel Service</option>
                                            <option value="usps">United States Postal Service</option>
                                        </select>
                                    </td>
                                    <td>
                                        <input class="input-text number-title" name="tracking[__index__][title]" value=""
                                            disabled="disabled" type="text">
                                    </td>
                                    <td>
                                        <input class="input-text" name="tracking[__index__][number]" value="" disabled="disabled"
                                            type="text">
                                    </td>
                                    <td class="last">
                                        <a href="#" onclick="trackingControl.deleteRow(event);return false">Delete</a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                   
                </div>
            </fieldset>
        </div>
    </div>
    <div class="clear">
    </div>
    <div class="entry-edit">
        <div class="entry-edit-head">
            <h4 class="icon-head head-products">
                Items to Invoice</h4>
        </div>
    </div>
    <div id="invoice_item_container">
        <div class="grid np">
            <div class="hor-scroll">
                <table class="data order-tables" cellspacing="0">
                    <col>
                    <col width="1">
                    <col width="1">
                    <col width="1">
                    <col width="1">
                    <col width="1">
                    <col width="1">
                    <col width="1">
                    <thead>
                        <tr class="headings">
                            <th>
                                Product
                            </th>
                            <th>
                                Price
                            </th>
                            <th class="a-center">
                                Qty
                            </th>
                            <th>
                                <span class="nobr">Qty to Invoice</span>
                            </th>
                            <th>
                                Subtotal
                            </th>
                            <th>
                                <span class="nobr">VAT Amount</span>
                            </th>
                            <th>
                                <span class="nobr">Discount Amount</span>
                            </th>
                            <th class="last">
                                <span class="nobr">Row Total</span>
                            </th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <td colspan="2">
                                &nbsp;
                            </td>
                            <td colspan="3" class="a-center">
                                <button disabled="disabled" id="id_7d881aa8dccfc430ce94cbbc8b8de1df" type="button"
                                    class="scalable update-button disabled" onclick="submitAndReloadArea($('invoice_item_container'),'index.php/admin/sales_order_invoice/updateQty/order_id/17/key/73c5249ab8544c1890210ad5a9403ff3/')"
                                    style="">
                                    <span>Update Qty's</span></button>
                            </td>
                            <td colspan="3">
                                &nbsp;
                            </td>
                        </tr>
                    </tfoot>
                    <tbody class="even">
                        <tr class="border">
                            <td>
                                <h5 class="title">
                                    FB2 Mortice Deadlock</h5>
                                <div>
                                    <strong>SKU:</strong> IFM 17.05-IFM17.05KEY x 2no</div>
                                <dl class="item-options">
                                    <dt>Extra Keys</dt>
                                    <dd>
                                        2 extra keys
                                    </dd>
                                </dl>
                            </td>
                            <td class="a-right">
                                <span class="price-excl-tax"><span class="price">£12.95</span> </span>
                                <br>
                            </td>
                            <td class="a-center">
                                <table class="qty-table" cellspacing="0">
                                    <tbody>
                                        <tr>
                                            <td>
                                                Ordered
                                            </td>
                                            <td>
                                                <strong>5</strong>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                            <td class="a-center">
                                <input class="input-text qty-input" name="invoice[items][27]" value="5" type="text">
                            </td>
                            <td class="a-right">
                                <span class="price-excl-tax"><span class="price">£64.75</span> </span>
                                <br>
                            </td>
                            <td class="a-right">
                                <span class="price">£0.00</span>
                            </td>
                            <td class="a-right">
                                <span class="price">£0.00</span>
                            </td>
                            <td class="a-right last">
                                <span class="price">£64.75</span>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <br>
        <div class="clear">
        </div>
        <div class="box">
            <div class="entry-edit">
                <table width="100%" border="0" cellspacing="0">
                    <tbody>
                        <tr>
                            <td class="a-center">
                                <div>
                                    Paid Amount<br>
                                    <span class="price">£0.00</span>
                                </div>
                            </td>
                            <td class="a-center">
                                <div>
                                    Refund Amount<br>
                                    <span class="price">£0.00</span>
                                </div>
                            </td>
                            <td class="a-center">
                                <div>
                                    Shipping Amount<br>
                                    <span class="price">£0.00</span>
                                </div>
                            </td>
                            <td class="a-center">
                                <div>
                                    Shipping Refund<br>
                                    <span class="price">£0.00</span>
                                </div>
                            </td>
                            <td class="a-center">
                                <div class="grand-total">
                                    Order Grand Total<br>
                                    <span class="price">£77.25</span>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="clear">
        </div>
        <div class="box-left entry-edit">
            <div class="entry-edit-head">
                <h4>
                    Invoice History</h4>
            </div>
            <fieldset>
                <div id="history_form" class="order-history-form">
                    <span class="field-row">
                        <label class="normal" for="invoice_comment_text">
                            Invoice Comments</label>
                        <textarea id="invoice_comment_text" name="invoice[comment_text]" rows="3" cols="5"
                            style="height: 10em; width: 98%;"></textarea>
                    </span>
                    <div class="clear">
                    </div>
                </div>
            </fieldset>
        </div>
        <div class="box-right entry-edit" id="invoice_totals">
            <div class="entry-edit-head">
                <h4>
                    Invoice Totals</h4>
            </div>
            <div class="order-totals">
                <table width="100%" cellspacing="0">
                    <tbody>
                        <tr>
                            <td class="label">
                                Subtotal
                            </td>
                            <td>
                                <span class="price">£64.75</span>
                            </td>
                        </tr>
                        <tr>
                            <td class="label">
                                Shipping &amp; Handling
                            </td>
                            <td>
                                <span class="price">£12.50</span>
                            </td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td class="label">
                                <strong><big>Grand Total </big></strong>
                            </td>
                            <td class="emph">
                                <big><strong><span class="price">£77.25</span></strong></big>
                            </td>
                        </tr>
                    </tfoot>
                </table>
                <div class="order-totals-bottom">
                    <div class="divider">
                    </div>
                    <p>
                        <label class="normal" for="notify_customer">
                            Append Comments</label>
                        <input disabled="disabled" id="notify_customer" name="invoice[comment_customer_notify]"
                            value="1" type="checkbox">
                    </p>
                    <p>
                        <label class="normal" for="send_email">
                            Email Copy of Invoice</label>
                        <input id="send_email" name="invoice[send_email]" value="1" type="checkbox">
                    </p>
                    <div class="a-right">
                        <button id="id_32ebc4bcf9b63bb725576d5aa59df11c" type="button" class="scalable save submit-button"
                            onclick="$('edit_form').submit()" style="">
                            <span>Submit Invoice</span></button>
                    </div>
                </div>
            </div>
        </div>
        <div class="clear">
        </div>
        <table class="order-info-foot" width="100%" cellpadding="10" cellspacing="0">
            <tbody>
                <tr>
                    <td class="section">
                        <table id="comments_block" width="100%" cellpadding="0">
                            <tbody>
                                <tr>
                                    <td style="padding-right: 30px; width: 50%;">
                                        &nbsp;
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                    <td class="document-totals section">
                        &nbsp;
                    </td>
                </tr>
            </tbody>
        </table>

       

    </div>
</asp:Content>
