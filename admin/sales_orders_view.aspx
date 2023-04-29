<%@ Page Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true"
    CodeFile="sales_orders_view.aspx.cs" Inherits="admin_sales_orders_view" %>

<asp:Content ID="Content3" ContentPlaceHolderID="cph_content" runat="Server">
    <div class="columns">
        <div class="side-col" id="page:left">
            <h3>
                Order View</h3>
            <ul id="sales_order_view_tabs" class="tabs">
                <li><a href="#" id="sales_order_view_tabs_order_info" name="order_info" title="Order Information"
                    class="tab-item-link active"><span><span class="changed" title="The information in this tab has been changed.">
                    </span><span class="error" title="This tab contains invalid data. Please solve the problem before saving.">
                    </span>Information</span> </a></li>
                <li><a href="#" id="sales_order_view_tabs_order_invoices" name="order_invoices" title="Order Invoices"
                    class="tab-item-link"><span><span class="changed" title="The information in this tab has been changed.">
                    </span><span class="error" title="This tab contains invalid data. Please solve the problem before saving.">
                    </span>Invoices</span> </a></li>
                <li><a href="#" id="sales_order_view_tabs_order_creditmemos" name="order_creditmemos"
                    title="Order Credit Memos" class="tab-item-link"><span><span class="changed" title="The information in this tab has been changed.">
                    </span><span class="error" title="This tab contains invalid data. Please solve the problem before saving.">
                    </span>Credit Memos</span> </a></li>
                <li><a href="#" id="sales_order_view_tabs_order_shipments" name="order_shipments"
                    title="Order Shipments" class="tab-item-link"><span><span class="changed" title="The information in this tab has been changed.">
                    </span><span class="error" title="This tab contains invalid data. Please solve the problem before saving.">
                    </span>Shipments</span> </a></li>
                <li><a href="index.php/admin/sales_order/commentsHistory/order_id/17/key/e1833b8c3ed4ff38aca80e29c2df65f6/"
                    id="sales_order_view_tabs_order_history" name="order_history" title="Order History"
                    class="tab-item-link ajax only notloaded"><span><span class="changed" title="The information in this tab has been changed.">
                    </span><span class="error" title="This tab contains invalid data. Please solve the problem before saving.">
                    </span>Comments History</span> </a></li>
            </ul>


        </div>
        <div class="main-col" id="content">
            <div class="main-col-inner">
                <div id="messages">
                </div>
                <div class="content-header">
                    <h3 class="icon-head head-sales-order">
                        Order # 100000020 | Order Date 27 May 2009 15:29:20</h3>
                    <div class="content-buttons-placeholder">
                        <p class="content-buttons form-buttons">
                            <button id="id_3ba55b6874ba1d1a40bbfa01744deb38" type="button" class="scalable back"
                                onclick="setLocation('index.php/admin/sales_order/index/order_id/17/key/2d9fe41934717a44973ab972d437c5ca/')"
                                style="">
                                <span>Back</span></button>
                            <button id="id_93ee319e8be3781de9bbdd71d1d7bef5" type="button" class="scalable" onclick="deleteConfirm('Are you sure? This order will be cancelled and a new one will be created instead', 'index.php/admin/sales_order_edit/start/order_id/17/key/6105b592d24a4f294220774472acabe3/');"
                                style="">
                                <span>Edit</span></button>
                            <button id="id_1facab7f69dc757fb33028c2ed4f73a1" type="button" class="scalable" onclick="deleteConfirm('Are you sure you want to cancel this order?', 'index.php/admin/sales_order/cancel/order_id/17/key/fdbee3747a5de91fecabc691e6f4e643/')"
                                style="">
                                <span>Cancel</span></button>
                            <button id="id_01b830f8d8dba611815293bab5b11c16" type="button" class="scalable" onclick="setLocation('index.php/admin/sales_order/hold/order_id/17/key/437e65bec955a7ee8513f4e5ba0ddbd3/')"
                                style="">
                                <span>Hold</span></button>
                            <a href="sales_order_invoice.aspx"><button id="id_9db03e324154af6e65964e551bd95f00" type="button" class="scalable" onclick="setLocation('index.php/admin/sales_order_invoice/start/order_id/17/key/21c3cca680b9ad33bb3199fe96b3f014/')"
                                style="">
                                <span>Invoice</span></button></a>
                            <button id="id_7eddc92ac818a97029b219e58229de22" type="button" class="scalable" onclick="setLocation('index.php/admin/sales_order_shipment/start/order_id/17/key/dd069c34663ddfca8e6700273f6afaf7/')"
                                style="">
                                <span>Ship</span></button>
                            <button id="id_e8475168ed9cb105ec99eb378a408808" type="button" class="scalable" onclick="setLocation('index.php/admin/sales_order_create/reorder/order_id/17/key/eafab6f77e7fa9df50637a2773864b4d/')"
                                style="">
                                <span>Reorder</span></button></p>
                    </div>
                </div>
                <div class="entry-edit" id="sales_order_view">
                    <div id="sales_order_view_tabs_order_info_content" style="">
                        <div>
                            <div id="order-messages">
                            </div>
                            <div class="box-left">
                                <!--Order Information-->
                                <div class="entry-edit">
                                    <div class="entry-edit-head">
                                        <h4 class="icon-head head-account">
                                            Order # 100000020 (Order confirmation email sent)</h4>
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
                            <input name="order_id" value="17" type="hidden">
                            <div class="box-left">
                                <!--Payment Method-->
                                <div class="entry-edit">
                                    <div class="entry-edit-head">
                                        <h4 class="icon-head head-payment-method">
                                            Payment Information</h4>
                                    </div>
                                    <fieldset>
                                        Check / Money order
                                        <div>
                                            Order was placed using GBP</div>
                                    </fieldset>
                                </div>
                            </div>
                            <div class="box-right">
                                <!--Shipping Method-->
                                <div class="entry-edit">
                                    <div class="entry-edit-head">
                                        <h4 class="icon-head head-shipping-method">
                                            Shipping &amp; Handling Information</h4>
                                    </div>
                                    <fieldset>
                                        <strong>Next day delivery - Table Rate</strong> <span class="price">£12.50</span>
                                    </fieldset>
                                </div>
                            </div>
                            <div class="clear">
                            </div>
                            <div class="clear">
                            </div>
                            <div class="entry-edit">
                                <div class="entry-edit-head">
                                    <h4 class="icon-head head-products">
                                        Items Ordered</h4>
                                </div>
                            </div>
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
                                        <col width="1">
                                        <col width="1">
                                        <thead>
                                            <tr class="headings">
                                                <th>
                                                    Product
                                                </th>
                                                <th>
                                                    <span class="nobr">Item Status</span>
                                                </th>
                                                <th>
                                                    <span class="nobr">Original Price</span>
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
                                                    <span class="nobr">Tax Percent</span>
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
                                                <td class="giftmessage-single-item">
                                                    <div id="giftmessage_item_27" class="item-container">
                                                        <div class="item-text">
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
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="a-center">
                                                    Ordered
                                                </td>
                                                <td class="a-right">
                                                    <span class="price">£12.95</span>
                                                </td>
                                                <td class="a-right">
                                                    <span class="price-excl-tax"><span class="price">£12.95</span> </span>
                                                    <br>
                                                </td>
                                                <td>
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
                                                <td class="a-right">
                                                    <span class="price-excl-tax"><span class="price">£64.75</span> </span>
                                                    <br>
                                                </td>
                                                <td class="a-right">
                                                    <span class="price">£0.00</span>
                                                </td>
                                                <td class="a-right">
                                                    0%
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
                            <div class="box-left">
                                <div class="entry-edit">
                                    <div class="entry-edit-head">
                                        <h4>
                                            Comments History</h4>
                                    </div>
                                    <fieldset>
                                        <div id="order_history_block">
                                            <div id="history_form" class="order-history-form">
                                                <div>
                                                    Add Order Comments</div>
                                                <span class="field-row">
                                                    <label class="normal" for="history_status">
                                                        Status</label><br>
                                                    <select name="history[status]" class="select" id="history_status">
                                                        <option value="pending" selected="selected">Pending</option>
                                                    </select>
                                                </span><span class="field-row">
                                                    <label class="normal" for="history_comment">
                                                        Comment</label>
                                                    <textarea name="history[comment]" rows="3" cols="5" style="height: 6em; width: 99%;"
                                                        id="history_comment"></textarea>
                                                </span>
                                                <div class="f-left">
                                                    <input name="history[is_customer_notified]" id="history_notify" value="1" type="checkbox">
                                                    <label class="normal" for="history_notify">
                                                        Notify Customer</label>
                                                </div>
                                                <div class="f-right">
                                                    <button id="id_01fa5556193843a5a52ac2ce4508f701" type="button" class="scalable save"
                                                        onclick="submitAndReloadArea($('order_history_block').parentNode, 'index.php/admin/sales_order/addComment/order_id/17/key/e15ba946a18244cf96512c834143ac0d/')"
                                                        style="">
                                                        <span>Submit Comment</span></button>
                                                </div>
                                                <div class="clear">
                                                </div>
                                            </div>
                                            <div class="divider">
                                            </div>
                                            <ul class="note-list">
                                                <li><strong>27 May 2009</strong> 15:29:20<span class="separator">|</span><strong>Pending</strong><br>
                                                    <small>Customer <strong class="subdue">Notified
                                                        <img src="Kal%20Digital%20Admin_files/ico_success.gif" alt="" width="16" height="16">
                                                    </strong></small></li>
                                            </ul>

                                           

                                        </div>
                                    </fieldset>
                                </div>
                            </div>
                            <div class="box-right entry-edit">
                                <div class="entry-edit-head">
                                    <h4>
                                        Order Totals</h4>
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
                                            <tr>
                                                <td class="label">
                                                    <strong>Total Paid</strong>
                                                </td>
                                                <td class="emph">
                                                    <strong><span class="price">£0.00</span></strong>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="label">
                                                    <strong>Total Refunded</strong>
                                                </td>
                                                <td class="emph">
                                                    <strong><span class="price">£0.00</span></strong>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="label">
                                                    <big><strong>Total Due</strong></big>
                                                </td>
                                                <td class="emph">
                                                    <big><strong><span class="price">£77.25</span></strong></big>
                                                </td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                            <div class="clear">
                            </div>
                        </div>
                    </div>
                    <div id="sales_order_view_tabs_order_invoices_content" style="display: none;">
                        <div id="order_invoices_grid">
                            <table class="actions" cellspacing="0">
                                <tbody>
                                    <tr>
                                        <td class="pager">
                                            Page
                                            <img src="Kal%20Digital%20Admin_files/pager_arrow_left_off.gif" alt="Go to Previous page"
                                                class="arrow">
                                            <input name="page" value="1" class="input-text page" onkeypress="order_invoices_gridJsObject.inputPage(event, '1')"
                                                type="text">
                                            <img src="Kal%20Digital%20Admin_files/pager_arrow_right_off.gif" alt="Go to Previous page"
                                                class="arrow">
                                            of 1 pages <span class="separator">|</span> View
                                            <select name="limit" onchange="order_invoices_gridJsObject.loadByElement(this)">
                                                <option value="20" selected="selected">20</option>
                                                <option value="30">30</option>
                                                <option value="50">50</option>
                                                <option value="100">100</option>
                                                <option value="200">200</option>
                                            </select>
                                            per page<span class="separator">|</span> Total 0 records found <span id="order_invoices_grid-total-count"
                                                class="no-display">0</span>
                                        </td>
                                        <td class="filter-actions a-right">
                                            <button id="id_41ba76886800409447d1a7eb8ce3925b" type="button" class="scalable" onclick="order_invoices_gridJsObject.resetFilter()"
                                                style="">
                                                <span>Reset Filter</span></button>
                                            <button id="id_4d6d832285f1e5752bcf456b48afdc29" type="button" class="scalable task"
                                                onclick="order_invoices_gridJsObject.doFilter()" style="">
                                                <span>Search</span></button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="grid">
                                <div class="hor-scroll">
                                    <table class="data" id="order_invoices_grid_table" cellspacing="0">
                                        <col width="120">
                                        <col>
                                        <col>
                                        <col>
                                        <col width="100">
                                        <thead>
                                            <tr class="headings">
                                                <th>
                                                    <span class="nobr"><a href="#" name="increment_id" title="asc" class="not-sort"><span
                                                        class="sort-title">Invoice #</span></a></span>
                                                </th>
                                                <th>
                                                    <span class="nobr"><a href="#" name="billing_name" title="asc" class="not-sort"><span
                                                        class="sort-title">Bill to Name</span></a></span>
                                                </th>
                                                <th>
                                                    <span class="nobr"><a href="#" name="created_at" title="asc" class="not-sort"><span
                                                        class="sort-title">Invoice Date</span></a></span>
                                                </th>
                                                <th>
                                                    <span class="nobr"><a href="#" name="state" title="asc" class="not-sort"><span class="sort-title">
                                                        Status</span></a></span>
                                                </th>
                                                <th class="last">
                                                    <span class="nobr"><a href="#" name="base_grand_total" title="asc" class="not-sort">
                                                        <span class="sort-title">Amount</span></a></span>
                                                </th>
                                            </tr>
                                            <tr class="filter">
                                                <th>
                                                    <div class="field-100">
                                                        <input name="increment_id" id="filter_increment_id" value="" class="input-text no-changes"
                                                            type="text"></div>
                                                </th>
                                                <th>
                                                    <div class="field-100">
                                                        <input name="billing_name" id="filter_billing_name" value="" class="input-text no-changes"
                                                            type="text"></div>
                                                </th>
                                                <th>
                                                    <div class="range">
                                                        <div class="range-line date">
                                                            <span class="label">From:</span>
                                                            <input name="created_at[from]" id="filter_created_at1245564443.56_from" value=""
                                                                class="input-text no-changes" type="text">
                                                            <img src="Kal%20Digital%20Admin_files/grid-cal.gif" alt="" class="v-middle" id="filter_created_at1245564443.56_from_trig"
                                                                title="Date selector">
                                                        </div>
                                                        <div class="range-line date">
                                                            <span class="label">To :</span>
                                                            <input name="created_at[to]" id="filter_created_at1245564443.56_to" value="" class="input-text no-changes"
                                                                type="text">
                                                            <img src="Kal%20Digital%20Admin_files/grid-cal.gif" alt="" class="v-middle" id="filter_created_at1245564443.56_to_trig"
                                                                title="Date selector">
                                                        </div>
                                                    </div>
                                                    <input name="created_at[locale]" value="en_GB" type="hidden">
                                                   

                                                </th>
                                                <th>
                                                    <select name="state" id="filter_state" class="no-changes">
                                                        <option value=""></option>
                                                        <option value="1">Pending</option>
                                                        <option value="2">Paid</option>
                                                        <option value="3">Cancelled</option>
                                                    </select>
                                                </th>
                                                <th class="last">
                                                    <div class="range">
                                                        <div class="range-line">
                                                            <span class="label">From:</span>
                                                            <input name="base_grand_total[from]" id="filter_base_grand_total_from" value="" class="input-text no-changes"
                                                                type="text"></div>
                                                        <div class="range-line">
                                                            <span class="label">To : </span>
                                                            <input name="base_grand_total[to]" id="filter_base_grand_total_to" value="" class="input-text no-changes"
                                                                type="text"></div>
                                                    </div>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="even">
                                                <td class="empty-text a-center" colspan="100">
                                                    No records found.
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        

                    </div>
                    <div id="sales_order_view_tabs_order_creditmemos_content" style="display: none;">
                        <div id="order_creditmemos_grid">
                            <table class="actions" cellspacing="0">
                                <tbody>
                                    <tr>
                                        <td class="pager">
                                            Page
                                            <img src="Kal%20Digital%20Admin_files/pager_arrow_left_off.gif" alt="Go to Previous page"
                                                class="arrow">
                                            <input name="page" value="1" class="input-text page" onkeypress="order_creditmemos_gridJsObject.inputPage(event, '1')"
                                                type="text">
                                            <img src="Kal%20Digital%20Admin_files/pager_arrow_right_off.gif" alt="Go to Previous page"
                                                class="arrow">
                                            of 1 pages <span class="separator">|</span> View
                                            <select name="limit" onchange="order_creditmemos_gridJsObject.loadByElement(this)">
                                                <option value="20" selected="selected">20</option>
                                                <option value="30">30</option>
                                                <option value="50">50</option>
                                                <option value="100">100</option>
                                                <option value="200">200</option>
                                            </select>
                                            per page<span class="separator">|</span> Total 0 records found <span id="order_creditmemos_grid-total-count"
                                                class="no-display">0</span>
                                        </td>
                                        <td class="filter-actions a-right">
                                            <button id="id_67ebbb1bfb3b8c9a3e64f81de41b472f" type="button" class="scalable" onclick="order_creditmemos_gridJsObject.resetFilter()"
                                                style="">
                                                <span>Reset Filter</span></button>
                                            <button id="id_9128e93ed095c4ad6841eefbe10836c8" type="button" class="scalable task"
                                                onclick="order_creditmemos_gridJsObject.doFilter()" style="">
                                                <span>Search</span></button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="grid">
                                <div class="hor-scroll">
                                    <table class="data" id="order_creditmemos_grid_table" cellspacing="0">
                                        <col width="120">
                                        <col>
                                        <col>
                                        <col>
                                        <col width="100">
                                        <thead>
                                            <tr class="headings">
                                                <th>
                                                    <span class="nobr"><a href="#" name="increment_id" title="asc" class="not-sort"><span
                                                        class="sort-title">Credit Memo #</span></a></span>
                                                </th>
                                                <th>
                                                    <span class="nobr"><a href="#" name="billing_name" title="asc" class="not-sort"><span
                                                        class="sort-title">Bill to Name</span></a></span>
                                                </th>
                                                <th>
                                                    <span class="nobr"><a href="#" name="created_at" title="asc" class="not-sort"><span
                                                        class="sort-title">Created At</span></a></span>
                                                </th>
                                                <th>
                                                    <span class="nobr"><a href="#" name="state" title="asc" class="not-sort"><span class="sort-title">
                                                        Status</span></a></span>
                                                </th>
                                                <th class="last">
                                                    <span class="nobr"><a href="#" name="base_grand_total" title="asc" class="not-sort">
                                                        <span class="sort-title">Refunded</span></a></span>
                                                </th>
                                            </tr>
                                            <tr class="filter">
                                                <th>
                                                    <div class="field-100">
                                                        <input name="increment_id" id="filter_increment_id" value="" class="input-text no-changes"
                                                            type="text"></div>
                                                </th>
                                                <th>
                                                    <div class="field-100">
                                                        <input name="billing_name" id="filter_billing_name" value="" class="input-text no-changes"
                                                            type="text"></div>
                                                </th>
                                                <th>
                                                    <div class="range">
                                                        <div class="range-line date">
                                                            <span class="label">From:</span>
                                                            <input name="created_at[from]" id="filter_created_at1245564443.6_from" value="" class="input-text no-changes"
                                                                type="text">
                                                            <img src="Kal%20Digital%20Admin_files/grid-cal.gif" alt="" class="v-middle" id="filter_created_at1245564443.6_from_trig"
                                                                title="Date selector">
                                                        </div>
                                                        <div class="range-line date">
                                                            <span class="label">To :</span>
                                                            <input name="created_at[to]" id="filter_created_at1245564443.6_to" value="" class="input-text no-changes"
                                                                type="text">
                                                            <img src="Kal%20Digital%20Admin_files/grid-cal.gif" alt="" class="v-middle" id="filter_created_at1245564443.6_to_trig"
                                                                title="Date selector">
                                                        </div>
                                                    </div>
                                                    <input name="created_at[locale]" value="en_GB" type="hidden">  

                                                </th>
                                                <th>
                                                    <select name="state" id="filter_state" class="no-changes">
                                                        <option value=""></option>
                                                        <option value="1">Pending</option>
                                                        <option value="2">Refunded</option>
                                                        <option value="3">Cancelled</option>
                                                    </select>
                                                </th>
                                                <th class="last">
                                                    <div class="range">
                                                        <div class="range-line">
                                                            <span class="label">From:</span>
                                                            <input name="base_grand_total[from]" id="filter_base_grand_total_from" value="" class="input-text no-changes"
                                                                type="text"></div>
                                                        <div class="range-line">
                                                            <span class="label">To : </span>
                                                            <input name="base_grand_total[to]" id="filter_base_grand_total_to" value="" class="input-text no-changes"
                                                                type="text"></div>
                                                    </div>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="even">
                                                <td class="empty-text a-center" colspan="100">
                                                    No records found.
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        

                    </div>
                    <div id="sales_order_view_tabs_order_shipments_content" style="display: none;">
                        <div id="order_shipments_grid">
                            <table class="actions" cellspacing="0">
                                <tbody>
                                    <tr>
                                        <td class="pager">
                                            Page
                                            <img src="Kal%20Digital%20Admin_files/pager_arrow_left_off.gif" alt="Go to Previous page"
                                                class="arrow">
                                            <input name="page" value="1" class="input-text page" onkeypress="order_shipments_gridJsObject.inputPage(event, '1')"
                                                type="text">
                                            <img src="Kal%20Digital%20Admin_files/pager_arrow_right_off.gif" alt="Go to Previous page"
                                                class="arrow">
                                            of 1 pages <span class="separator">|</span> View
                                            <select name="limit" onchange="order_shipments_gridJsObject.loadByElement(this)">
                                                <option value="20" selected="selected">20</option>
                                                <option value="30">30</option>
                                                <option value="50">50</option>
                                                <option value="100">100</option>
                                                <option value="200">200</option>
                                            </select>
                                            per page<span class="separator">|</span> Total 0 records found <span id="order_shipments_grid-total-count"
                                                class="no-display">0</span>
                                        </td>
                                        <td class="filter-actions a-right">
                                            <button id="id_df651cf5579dae4ebe38c08c7c0c0ae0" type="button" class="scalable" onclick="order_shipments_gridJsObject.resetFilter()"
                                                style="">
                                                <span>Reset Filter</span></button>
                                            <button id="id_4faeb32b94a51159cfc723f44b5d63d0" type="button" class="scalable task"
                                                onclick="order_shipments_gridJsObject.doFilter()" style="">
                                                <span>Search</span></button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="grid">
                                <div class="hor-scroll">
                                    <table class="data" id="order_shipments_grid_table" cellspacing="0">
                                        <col>
                                        <col>
                                        <col>
                                        <col width="100">
                                        <thead>
                                            <tr class="headings">
                                                <th>
                                                    <span class="nobr"><a href="#" name="increment_id" title="asc" class="not-sort"><span
                                                        class="sort-title">Shipment #</span></a></span>
                                                </th>
                                                <th>
                                                    <span class="nobr"><a href="#" name="shipping_name" title="asc" class="not-sort"><span
                                                        class="sort-title">Ship to Name</span></a></span>
                                                </th>
                                                <th>
                                                    <span class="nobr"><a href="#" name="created_at" title="asc" class="not-sort"><span
                                                        class="sort-title">Date Shipped</span></a></span>
                                                </th>
                                                <th class="last">
                                                    <span class="nobr"><a href="#" name="total_qty" title="asc" class="not-sort"><span
                                                        class="sort-title">Total Qty</span></a></span>
                                                </th>
                                            </tr>
                                            <tr class="filter">
                                                <th>
                                                    <div class="field-100">
                                                        <input name="increment_id" id="filter_increment_id" value="" class="input-text no-changes"
                                                            type="text"></div>
                                                </th>
                                                <th>
                                                    <div class="field-100">
                                                        <input name="shipping_name" id="filter_shipping_name" value="" class="input-text no-changes"
                                                            type="text"></div>
                                                </th>
                                                <th>
                                                    <div class="range">
                                                        <div class="range-line date">
                                                            <span class="label">From:</span>
                                                            <input name="created_at[from]" id="filter_created_at1245564443.61_from" value=""
                                                                class="input-text no-changes" type="text">
                                                            <img src="Kal%20Digital%20Admin_files/grid-cal.gif" alt="" class="v-middle" id="filter_created_at1245564443.61_from_trig"
                                                                title="Date selector">
                                                        </div>
                                                        <div class="range-line date">
                                                            <span class="label">To :</span>
                                                            <input name="created_at[to]" id="filter_created_at1245564443.61_to" value="" class="input-text no-changes"
                                                                type="text">
                                                            <img src="Kal%20Digital%20Admin_files/grid-cal.gif" alt="" class="v-middle" id="filter_created_at1245564443.61_to_trig"
                                                                title="Date selector">
                                                        </div>
                                                    </div>
                                                    <input name="created_at[locale]" value="en_GB" type="hidden">
                                                </th>
                                                <th class="last">
                                                    <div class="range">
                                                        <div class="range-line">
                                                            <span class="label">From:</span>
                                                            <input name="total_qty[from]" id="filter_total_qty_from" value="" class="input-text no-changes"
                                                                type="text"></div>
                                                        <div class="range-line">
                                                            <span class="label">To : </span>
                                                            <input name="total_qty[to]" id="filter_total_qty_to" value="" class="input-text no-changes"
                                                                type="text"></div>
                                                    </div>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="even">
                                                <td class="empty-text a-center" colspan="100">
                                                    No records found.
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        

                    </div>
                    <div id="sales_order_view_tabs_order_history_content" style="display: none;">
                        <div class="entry-edit">
                            <fieldset>
                                <ul class="note-list">
                                    <li><strong>27 May 2009</strong> 15:29:20<span class="separator">|</span> <strong>Pending</strong>
                                        <span class="separator">|</span><small>Customer <strong class="subdue">Notified
                                            <img src="Kal%20Digital%20Admin_files/ico_success.gif" alt="" width="16" height="16">
                                        </strong></small></li>
                                </ul>
                            </fieldset>
                        </div>
                    </div>
                </div>



            </div>
        </div>
    </div>
</asp:Content>
