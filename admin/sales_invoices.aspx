<%@ Page Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true"
    CodeFile="sales_invoices.aspx.cs" Inherits="admin_sales_invoices" %>

<asp:Content ID="Content3" ContentPlaceHolderID="cph_content" runat="Server">
    <div id="messages">
    </div>
    <div class="content-header">
        <table cellspacing="0">
            <tbody>
                <tr>
                    <td style="width: 50%;">
                        <h3 class="icon-head head-sales-invoice">
                            Invoices</h3>
                    </td>
                    <td class="form-buttons">
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div>
        <div id="sales_invoice_grid">
            <table class="actions" cellspacing="0">
                <tbody>
                    <tr>
                        <td class="pager">
                            Page
                            <img src="sales_invoice_files/pager_arrow_left_off.gif" alt="Go to Previous page"
                                class="arrow">
                            <input name="page" value="1" class="input-text page" onkeypress="sales_invoice_gridJsObject.inputPage(event, '1')"
                                type="text">
                            <img src="sales_invoice_files/pager_arrow_right_off.gif" alt="Go to Previous page"
                                class="arrow">
                            of 1 pages <span class="separator">|</span> View
                            <select name="limit" onchange="sales_invoice_gridJsObject.loadByElement(this)">
                                <option value="20" selected="selected">20</option>
                                <option value="30">30</option>
                                <option value="50">50</option>
                                <option value="100">100</option>
                                <option value="200">200</option>
                            </select>
                            per page<span class="separator">|</span> Total 1 records found <span id="sales_invoice_grid-total-count"
                                class="no-display">1</span>
                        </td>
                        <td class="filter-actions a-right">
                            <button id="id_786216343b143eeb2fb443c2791c0432" type="button" class="scalable" onclick="sales_invoice_gridJsObject.resetFilter()"
                                style="">
                                <span>Reset Filter</span></button>
                            <button id="id_f175ee8198747f07e089c18a15aec930" type="button" class="scalable task"
                                    onclick="sales_invoice_gridJsObject.doFilter()" style="">
                                    <span>Search</span></button>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div id="sales_invoice_grid_massaction">
                <table class="massaction" cellpadding="0" cellspacing="0">
                    <tbody>
                        <tr>
                            <td>
                                <a href="#" onclick="return sales_invoice_grid_massactionJsObject.selectAll()">Select
                                    All</a> <span class="separator">|</span> <a href="#" onclick="return sales_invoice_grid_massactionJsObject.unselectAll()">
                                        Unselect All</a> <span class="separator">|</span>
                                <!--<a href="#" onclick="return sales_invoice_grid_massactionJsObject.selectVisible()">Select Visible</a>
        <span class="separator">|</span>
        <a href="#" onclick="return sales_invoice_grid_massactionJsObject.unselectVisible()">Unselect Visible</a>
        <span class="separator">|</span>-->
                                <strong id="sales_invoice_grid_massaction-count">0</strong> items selected
                            </td>
                            <td>
                                <div class="right">
                                    <div class="entry-edit">
                                        <form action="" id="sales_invoice_grid_massaction-form" method="post">
                                        <div>
                                            <input name="form_key" value="eLdcSgNt7s6d2los" type="hidden"></div>
                                        <fieldset>
                                            <span class="field-row">
                                                <label>
                                                    Actions</label>
                                                <select id="sales_invoice_grid_massaction-select" class="required-entry select absolute-advice">
                                                    <option value=""></option>
                                                    <option value="pdfinvoices_order">PDF Invoices</option>
                                                    <option value="delete_order">Delete</option>
                                                </select>
                                            </span><span class="outer-span" id="sales_invoice_grid_massaction-form-hiddens">
                                            </span><span class="outer-span" id="sales_invoice_grid_massaction-form-additional">
                                            </span><span class="field-row">
                                                <button id="id_d71abab5c763f840c0050d7fb064ef87" type="button" class="scalable" onclick="sales_invoice_grid_massactionJsObject.apply()"
                                                    style="">
                                                    <span>Submit</span></button>
                                            </span>
                                        </fieldset>
                                        </form>
                                    </div>
                                    <div class="no-display">
                                        <div id="sales_invoice_grid_massaction-item-pdfinvoices_order-block">
                                        </div>
                                        <div id="sales_invoice_grid_massaction-item-delete_order-block">
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
                    <table class="data" id="sales_invoice_grid_table" cellspacing="0">
                        <col class="a-center" width="20">
                        <col width="100">
                        <col>
                        <col width="100">
                        <col>
                        <col>
                        <col>
                        <col>
                        <col width="100">
                        <col width="50">
                        <thead>
                            <tr class="headings">
                                <th>
                                    <span class="nobr">&nbsp;</span>
                                </th>
                                <th>
                                    <span class="nobr"><a href="#" name="increment_id" title="asc" class="not-sort"><span
                                        class="sort-title">Invoice #</span></a></span>
                                </th>
                                <th>
                                    <span class="nobr"><a href="#" name="created_at" title="asc" class="sort-arrow-desc">
                                        <span class="sort-title">Invoice Date</span></a></span>
                                </th>
                                <th>
                                    <span class="nobr"><a href="#" name="order_increment_id" title="asc" class="not-sort">
                                        <span class="sort-title">Order #</span></a></span>
                                </th>
                                <th>
                                    <span class="nobr"><a href="#" name="order_created_at" title="asc" class="not-sort">
                                        <span class="sort-title">Order Date</span></a></span>
                                </th>
                                <th>
                                    <span class="nobr"><a href="#" name="billing_firstname" title="asc" class="not-sort">
                                        <span class="sort-title">Bill to First name</span></a></span>
                                </th>
                                <th>
                                    <span class="nobr"><a href="#" name="billing_lastname" title="asc" class="not-sort">
                                        <span class="sort-title">Bill to Last name</span></a></span>
                                </th>
                                <th>
                                    <span class="nobr"><a href="#" name="state" title="asc" class="not-sort"><span class="sort-title">
                                        Status</span></a></span>
                                </th>
                                <th>
                                    <span class="nobr"><a href="#" name="grand_total" title="asc" class="not-sort"><span
                                        class="sort-title">Amount</span></a></span>
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
                                    <div class="range">
                                        <div class="range-line">
                                            <span class="label">From:</span>
                                            <input name="increment_id[from]" id="filter_increment_id_from" value="" class="input-text no-changes"
                                                type="text"></div>
                                        <div class="range-line">
                                            <span class="label">To : </span>
                                            <input name="increment_id[to]" id="filter_increment_id_to" value="" class="input-text no-changes"
                                                type="text"></div>
                                    </div>
                                </th>
                                <th>
                                    <div class="range">
                                        <div class="range-line date">
                                            <span class="label">From:</span>
                                            <input name="created_at[from]" id="filter_created_at1245364181.37_from" value=""
                                                class="input-text no-changes" type="text">
                                            <img src="sales_invoice_files/grid-cal.gif" alt="" class="v-middle" id="filter_created_at1245364181.37_from_trig"
                                                title="Date selector">
                                        </div>
                                        <div class="range-line date">
                                            <span class="label">To :</span>
                                            <input name="created_at[to]" id="filter_created_at1245364181.37_to" value="" class="input-text no-changes"
                                                type="text">
                                            <img src="sales_invoice_files/grid-cal.gif" alt="" class="v-middle" id="filter_created_at1245364181.37_to_trig"
                                                title="Date selector">
                                        </div>
                                    </div>
                                    <input name="created_at[locale]" value="en_GB" type="hidden">
                                </th>
                                <th>
                                    <div class="range">
                                        <div class="range-line">
                                            <span class="label">From:</span>
                                            <input name="order_increment_id[from]" id="filter_order_increment_id_from" value=""
                                                class="input-text no-changes" type="text"></div>
                                        <div class="range-line">
                                            <span class="label">To : </span>
                                            <input name="order_increment_id[to]" id="filter_order_increment_id_to" value="" class="input-text no-changes"
                                                type="text"></div>
                                    </div>
                                </th>
                                <th>
                                    <div class="range">
                                        <div class="range-line date">
                                            <span class="label">From:</span>
                                            <input name="order_created_at[from]" id="filter_order_created_at1245364181.37_from"
                                                value="" class="input-text no-changes" type="text">
                                            <img src="sales_invoice_files/grid-cal.gif" alt="" class="v-middle" id="filter_order_created_at1245364181.37_from_trig"
                                                title="Date selector">
                                        </div>
                                        <div class="range-line date">
                                            <span class="label">To :</span>
                                            <input name="order_created_at[to]" id="filter_order_created_at1245364181.37_to" value=""
                                                class="input-text no-changes" type="text">
                                            <img src="sales_invoice_files/grid-cal.gif" alt="" class="v-middle" id="filter_order_created_at1245364181.37_to_trig"
                                                title="Date selector">
                                        </div>
                                    </div>
                                    <input name="order_created_at[locale]" value="en_GB" type="hidden">
                                </th>
                                <th>
                                    <div class="field-100">
                                        <input name="billing_firstname" id="filter_billing_firstname" value="" class="input-text no-changes"
                                            type="text"></div>
                                </th>
                                <th>
                                    <div class="field-100">
                                        <input name="billing_lastname" id="filter_billing_lastname" value="" class="input-text no-changes"
                                            type="text"></div>
                                </th>
                                <th>
                                    <select name="state" id="filter_state" class="no-changes">
                                        <option value=""></option>
                                        <option value="1">Pending</option>
                                        <option value="2">Paid</option>
                                        <option value="3">Cancelled</option>
                                    </select>
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
                                <th class="no-link last">
                                    &nbsp;
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="even pointer" title="index.php/admin/sales_invoice/view/invoice_id/64/key/dd8ba52c81954c07aceb028c9431e7a6/">
                                <td class="a-center">
                                    <input name="" value="64" class="massaction-checkbox" type="checkbox">
                                </td>
                                <td class="a-right">
                                    100000001
                                </td>
                                <td class="">
                                    21 May 2009 09:58:58
                                </td>
                                <td class="a-right">
                                    100000013
                                </td>
                                <td class="">
                                    21 May 2009 09:56:05
                                </td>
                                <td class="">
                                    Martyn
                                </td>
                                <td class="">
                                    Seiles
                                </td>
                                <td class="">
                                    Paid
                                </td>
                                <td class="a-right a-right">
                                    £30.40
                                </td>
                                <td class="last">
                                    <a href="sales_invoice_view.aspx">
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
