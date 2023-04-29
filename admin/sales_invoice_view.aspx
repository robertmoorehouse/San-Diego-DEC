<%@ Page Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true"
    CodeFile="sales_invoice_view.aspx.cs" Inherits="admin_sales_invoice_view" %>

<asp:Content ID="Content3" ContentPlaceHolderID="cph_content" runat="Server">
    <div id="messages">
    </div>
    <div style="visibility: visible;" class="content-header">
        <h3 class="icon-head head-sales-order-invoice">
            Invoice #100000001 | Paid (Invoice email sent)</h3>
        <div class="content-buttons-placeholder">
            <p class="content-buttons form-buttons">
                <button id="id_76492f0066516efa1d456c76069f0ea6" type="button" class="scalable back"
                    onclick="setLocation('index.php/admin/sales_invoice/index/key/3787f84424e9f1531bce312c285dac68/')"
                    style="">
                    <span>Back</span></button>
                <button id="id_c1624d41a843f7a4d6fb8df7489a0c9a" type="button" class="scalable save"
                        onclick="setLocation('index.php/admin/sales_order_creditmemo/start/order_id/10/invoice_id/64/key/05af098d8b65269a1c549502b107cae1/')"
                        style="">
                        <span>Credit Memo</span></button>
                <button id="id_f40c69996520df75a939da2382a44f11" type="button" class="scalable save" onclick="setLocation('index.php/admin/sales_order_invoice/print/invoice_id/64/key/a9554494791f6e84ed3c9031348a535d/')"
                            style="">
                            <span>Print</span></button></p>
        </div>
    </div>
    <div class="box-left">
        <!--Order Information-->
        <div class="entry-edit">
            <div class="entry-edit-head">
                <a href="index.php/admin/sales_order/view/order_id/10/key/048cdf2e7a8c7d53f4febe87f82fb558/">
                    Order # 100000013</a> <strong>(Order confirmation email not sent)</strong>
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
                                <strong>21 May 2009 09:56:05</strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="label">
                                <label>
                                    Order Status</label>
                            </td>
                            <td>
                                <strong><span id="order_status">Processing</span></strong>
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
                        <tr>
                            <td class="label">
                                <label>
                                    Placed from IP</label>
                            </td>
                            <td>
                                <strong>81.134.95.225</strong>
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
        <!--Billing Address-->
        <div class="entry-edit">
            <div class="entry-edit-head">
                <h4 class="icon-head head-payment-method">
                    Payment Information</h4>
            </div>
            <fieldset>
                <div>
                    Sage Pay</div>
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
                <strong>1-3 day’s delivery (Less than 2kgs) - Royal Mail with a sign for service</strong>
                Total Shipping Charges: <span class="price">£4.50</span>
                <div>
                </div>
            </fieldset>
        </div>
    </div>
    <div class="clear">
    </div>
    <div class="entry-edit">
        <div class="entry-edit-head">
            <h4 class="icon-head head-products">
                Items Invoiced</h4>
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
                                    2
                                </td>
                                <td class="a-right">
                                    <span class="price-excl-tax"><span class="price">£25.90</span> </span>
                                    <br>
                                </td>
                                <td class="a-right">
                                    <span class="price">£0.00</span>
                                </td>
                                <td class="a-right">
                                    <span class="price">£0.00</span>
                                </td>
                                <td class="a-right last">
                                    <span class="price">£25.90</span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <br>
        </div>
    </div>
    <div class="box-left entry-edit">
        <div class="entry-edit-head">
            <h4>
                Invoice History</h4>
        </div>
        <fieldset>
            <div id="comments_block">
                <span class="field-row">
                    <label class="normal" for="history_comment">
                        Comment Text</label>
                    <textarea name="comment[comment]" rows="3" cols="5" style="height: 6em; width: 99%;"
                        id="history_comment"></textarea>
                </span>
                <div class="f-left">
                    <input name="comment[is_customer_notified]" id="history_notify" value="1" type="checkbox">
                    <label class="normal" for="history_notify">
                        Notify Customer</label>
                </div>
                <div class="f-right">
                    <button id="submit_comment_button" type="button" class="scalable save" onclick=""
                        style="">
                        <span>Submit Comment</span></button>
                </div>
                <div class="clear">
                </div>
                <ul class="note-list">
                </ul>

                

            </div>
        </fieldset>
    </div>
    <div class="box-right entry-edit" id="history_form">
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
                            <span class="price">£25.90</span>
                        </td>
                    </tr>
                    <tr>
                        <td class="label">
                            Shipping &amp; Handling
                        </td>
                        <td>
                            <span class="price">£4.50</span>
                        </td>
                    </tr>
                </tbody>
                <tfoot>
                    <tr>
                        <td class="label">
                            <strong><big>Grand Total </big></strong>
                        </td>
                        <td class="emph">
                            <big><strong><span class="price">£30.40</span></strong></big>
                        </td>
                    </tr>
                </tfoot>
            </table>
        </div>
    </div>
    <div class="clear">
    </div>

</asp:Content>
