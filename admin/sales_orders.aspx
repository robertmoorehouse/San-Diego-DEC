<%@ Page Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true"
    CodeFile="sales_orders.aspx.cs" Inherits="admin_sales_orders" %>

<asp:Content ID="Content3" ContentPlaceHolderID="cph_content" runat="Server">
    <div id="messages">
    </div>
    <div style="visibility: visible;" class="content-header">
        <table cellspacing="0">
            <tbody>
                <tr>
                    <td style="width: 50%;">
                        <h3 class="icon-head head-sales-order">
                            Orders</h3>
                    </td>
                    <td class="form-buttons">
                        <a href="sales_order_create.aspx"><button id="id_ba4d4e77815e269299ed27e3a82c9feb" type="button" class="scalable add"
                            onclick=""
                            style="">
                            <span>Create New Order</span></button></a>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div>
        <div id="sales_order_grid">
            <table class="actions" cellspacing="0">
                <tbody>
                    <tr>
                        <td class="pager">
                            Page
                            <img src="sales_orders_files/pager_arrow_left_off.gif" alt="Go to Previous page"
                                class="arrow">
                            <input name="page" value="1" class="input-text page" onkeypress="sales_order_gridJsObject.inputPage(event, '1')"
                                type="text">
                            <img src="sales_orders_files/pager_arrow_right_off.gif" alt="Go to Previous page"
                                class="arrow">
                            of 1 pages <span class="separator">|</span> View
                            <select name="limit" onchange="sales_order_gridJsObject.loadByElement(this)">
                                <option value="20" selected="selected">20</option>
                                <option value="30">30</option>
                                <option value="50">50</option>
                                <option value="100">100</option>
                                <option value="200">200</option>
                            </select>
                            per page<span class="separator">|</span> Total 18 records found <span id="sales_order_grid-total-count"
                                class="no-display">18</span>
                        </td>
                        <td class="filter-actions a-right">
                            <button id="id_be529edd1dfb8071aad5115e5fbc30a0" type="button" class="scalable" onclick="sales_order_gridJsObject.resetFilter()"
                                style="">
                                <span>Reset Filter</span></button>
                            <button id="id_963eb04ea68b32481fa2d0a27565cbd6" type="button" class="scalable task"
                                onclick="sales_order_gridJsObject.doFilter()" style="">
                                <span>Search</span></button>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div id="sales_order_grid_massaction">
                <table class="massaction" cellpadding="0" cellspacing="0">
                    <tbody>
                        <tr>
                            <td>
                                <a href="#" onclick="return sales_order_grid_massactionJsObject.selectAll()">Select
                                    All</a> <span class="separator">|</span> <a href="#" onclick="return sales_order_grid_massactionJsObject.unselectAll()">
                                        Unselect All</a> <span class="separator">|</span>
                                <!--<a href="#" onclick="return sales_order_grid_massactionJsObject.selectVisible()">Select Visible</a>
        <span class="separator">|</span>
        <a href="#" onclick="return sales_order_grid_massactionJsObject.unselectVisible()">Unselect Visible</a>
        <span class="separator">|</span>-->
                                <strong id="sales_order_grid_massaction-count">0</strong> items selected
                            </td>
                            <td>
                                <div class="right">
                                    <div class="entry-edit">
                                        <form action="" id="sales_order_grid_massaction-form" method="post">
                                        <div>
                                            <input name="form_key" value="eLdcSgNt7s6d2los" type="hidden"></div>
                                        <fieldset>
                                            <span class="field-row">
                                                <label>
                                                    Actions</label>
                                                <select id="sales_order_grid_massaction-select" class="required-entry select absolute-advice">
                                                    <option value=""></option>
                                                    <option value="cancel_order">Cancel</option>
                                                    <option value="hold_order">Hold</option>
                                                    <option value="unhold_order">Unhold</option>
                                                    <option value="pdfinvoices_order">Print Invoices</option>
                                                    <option value="pdfshipments_order">Print Packingslips</option>
                                                    <option value="pdfcreditmemos_order">Print Credit Memos</option>
                                                    <option value="pdfdocs_order">Print All</option>
                                                    <option value="delete_order">Delete</option>
                                                </select>
                                            </span><span class="outer-span" id="sales_order_grid_massaction-form-hiddens"></span>
                                            <span class="outer-span" id="sales_order_grid_massaction-form-additional"></span>
                                            <span class="field-row">
                                                <button id="id_04b6e802979d46bda7604c4369a66326" type="button" class="scalable" onclick="sales_order_grid_massactionJsObject.apply()"
                                                    style="">
                                                    <span>Submit</span></button>
                                            </span>
                                        </fieldset>
                                        </form>
                                    </div>
                                    <div class="no-display">
                                        <div id="sales_order_grid_massaction-item-cancel_order-block">
                                        </div>
                                        <div id="sales_order_grid_massaction-item-hold_order-block">
                                        </div>
                                        <div id="sales_order_grid_massaction-item-unhold_order-block">
                                        </div>
                                        <div id="sales_order_grid_massaction-item-pdfinvoices_order-block">
                                        </div>
                                        <div id="sales_order_grid_massaction-item-pdfshipments_order-block">
                                        </div>
                                        <div id="sales_order_grid_massaction-item-pdfcreditmemos_order-block">
                                        </div>
                                        <div id="sales_order_grid_massaction-item-pdfdocs_order-block">
                                        </div>
                                        <div id="sales_order_grid_massaction-item-delete_order-block">
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="grid">
                <div class="hor-scroll">
                    <table class="data" id="sales_order_grid_table" cellspacing="0">
                        <col class="a-center" width="20">
                        <col width="80">
                        <col width="100">
                        <col>
                        <col>
                        <col width="100">
                        <col width="100">
                        <col width="70">
                        <col width="50">
                        <thead>
                            <tr class="headings">
                                <th>
                                    <span class="nobr">&nbsp;</span>
                                </th>
                                <th>
                                    <span class="nobr"><a href="#" name="real_order_id" title="asc" class="not-sort"><span
                                        class="sort-title">Order #</span></a></span>
                                </th>
                                <th>
                                    <span class="nobr"><a href="#" name="created_at" title="asc" class="sort-arrow-desc">
                                        <span class="sort-title">Purchased On</span></a></span>
                                </th>
                                <th>
                                    <span class="nobr"><a href="#" name="billing_name" title="asc" class="not-sort"><span
                                        class="sort-title">Bill to Name</span></a></span>
                                </th>
                                <th>
                                    <span class="nobr"><a href="#" name="shipping_name" title="asc" class="not-sort"><span
                                        class="sort-title">Ship to Name</span></a></span>
                                </th>
                                <th>
                                    <span class="nobr"><a href="#" name="base_grand_total" title="asc" class="not-sort">
                                        <span class="sort-title">G.T. (Base)</span></a></span>
                                </th>
                                <th>
                                    <span class="nobr"><a href="#" name="grand_total" title="asc" class="not-sort"><span
                                        class="sort-title">G.T. (Purchased)</span></a></span>
                                </th>
                                <th>
                                    <span class="nobr"><a href="#" name="status" title="asc" class="not-sort"><span class="sort-title">
                                        Status</span></a></span>
                                </th>
                                <th class="no-link last">
                                    <span class="nobr">Action</span>
                                </th>
                            </tr>
                            <tr class="filter">
                                <th>
                                    <span class="head-massaction">
                                        <select name="massaction" id="filter_massaction" class="no-changes">
                                            <option value="">Any</option>
                                            <option value="1">Yes</option>
                                            <option value="0">No</option>
                                        </select></span>
                                </th>
                                <th>
                                    <div class="field-100">
                                        <input name="real_order_id" id="filter_real_order_id" value="" class="input-text no-changes"
                                            type="text"></div>
                                </th>
                                <th>
                                    <div class="range">
                                        <div class="range-line date">
                                            <span class="label">From:</span>
                                            <input name="created_at[from]" id="filter_created_at1245364075.12_from" value=""
                                                class="input-text no-changes" type="text">
                                            <img src="sales_orders_files/grid-cal.gif" alt="" class="v-middle" id="filter_created_at1245364075.12_from_trig"
                                                title="Date selector">
                                        </div>
                                        <div class="range-line date">
                                            <span class="label">To :</span>
                                            <input name="created_at[to]" id="filter_created_at1245364075.12_to" value="" class="input-text no-changes"
                                                type="text">
                                            <img src="sales_orders_files/grid-cal.gif" alt="" class="v-middle" id="filter_created_at1245364075.12_to_trig"
                                                title="Date selector">
                                        </div>
                                    </div>
                                    <input name="created_at[locale]" value="en_GB" type="hidden">

                                </th>
                                <th>
                                    <div class="field-100">
                                        <input name="billing_name" id="filter_billing_name" value="" class="input-text no-changes"
                                            type="text"></div>
                                </th>
                                <th>
                                    <div class="field-100">
                                        <input name="shipping_name" id="filter_shipping_name" value="" class="input-text no-changes"
                                            type="text"></div>
                                </th>
                                <th>
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
                                <th>
                                    <div class="range">
                                        <div class="range-line">
                                            <span class="label">From:</span>
                                            <input name="grand_total[from]" id="filter_grand_total_from" value="" class="input-text no-changes"
                                                type="text"></div>
                                        <div class="range-line">
                                            <span class="label">To : </span>
                                            <input name="grand_total[to]" id="filter_grand_total_to" value="" class="input-text no-changes"
                                                type="text"></div>
                                    </div>
                                </th>
                                <th>
                                    <select name="status" id="filter_status" class="no-changes">
                                        <option value=""></option>
                                        <option value="pending">Pending</option>
                                        <option value="pending_paypal">Pending PayPal</option>
                                        <option value="processing">Processing</option>
                                        <option value="holded">On Hold</option>
                                        <option value="complete">Complete</option>
                                        <option value="closed">Closed</option>
                                        <option value="canceled">Cancelled</option>
                                    </select>
                                </th>
                                <th class="no-link last">
                                    &nbsp;
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="pointer" title="index.php/admin/sales_order/view/order_id/5/key/048cdf2e7a8c7d53f4febe87f82fb558/">
                                <td class="a-center">
                                    <input name="" value="5" class="massaction-checkbox" type="checkbox">
                                </td>
                                <td class="">
                                    100000008
                                </td>
                                <td class="">
                                    13 May 2009 02:59:18
                                </td>
                                <td class="">
                                    jon pan
                                </td>
                                <td class="">
                                    jon pan
                                </td>
                                <td class="a-right">
                                    £17.08
                                </td>
                                <td class="a-right">
                                    £17.08
                                </td>
                                <td class="">
                                    Pending
                                </td>
                                <td class="last">
                                    <a href="sales_orders_view.aspx">
                                        View</a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

       

    </div>
</asp:Content>
