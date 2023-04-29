<%@ Page Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true"
    CodeFile="members_membersinformation.aspx.cs" Inherits="admin_members_membersinformation"
    %>

<asp:Content ID="Content3" ContentPlaceHolderID="cph_content" runat="Server">
    <div class="columns">
        <div class="side-col" id="page:left">
            <h3>
                Customer Information</h3>
            <ul id="customer_info_tabs" class="tabs">
                <li><a href="#" id="customer_info_tabs_view" name="view" title="Customer View" class="tab-item-link active">
                    <span><span class="changed" title="The information in this tab has been changed."></span>
                        <span class="error" title="This tab contains invalid data. Please solve the problem before saving.">
                        </span>Customer View</span> </a></li>
                <li><a href="#" id="customer_info_tabs_account" name="account" title="Account Information"
                    class="tab-item-link"><span><span class="changed" title="The information in this tab has been changed.">
                    </span><span class="error" title="This tab contains invalid data. Please solve the problem before saving.">
                    </span>Account Information</span> </a></li>
                <li><a href="#" id="customer_info_tabs_addresses" name="addresses" title="Addresses"
                    class="tab-item-link"><span><span class="changed" title="The information in this tab has been changed.">
                    </span><span class="error" title="This tab contains invalid data. Please solve the problem before saving.">
                    </span>Addresses</span> </a></li>
                <li><a href="index.php/admin/customer/orders/id/19/key/f10dbe4ff5fea3d74da9857b2e18b01e/"
                    id="customer_info_tabs_orders" name="orders" title="Orders" class="tab-item-link ajax notloaded">
                    <span><span class="changed" title="The information in this tab has been changed."></span>
                        <span class="error" title="This tab contains invalid data. Please solve the problem before saving.">
                        </span>Orders</span> </a></li>
                <li><a href="index.php/admin/customer/carts/id/19/key/6d0528de206a7395edd3da203a5746ef/"
                    id="customer_info_tabs_cart" name="cart" title="Shopping Cart" class="tab-item-link ajax notloaded">
                    <span><span class="changed" title="The information in this tab has been changed."></span>
                        <span class="error" title="This tab contains invalid data. Please solve the problem before saving.">
                        </span>Shopping Cart</span> </a></li>
                <li><a href="index.php/admin/customer/wishlist/id/19/key/5a754b7ecb76504bbe6ea0a787c1bc30/"
                    id="customer_info_tabs_wishlist" name="wishlist" title="Wishlist" class="tab-item-link ajax notloaded">
                    <span><span class="changed" title="The information in this tab has been changed."></span>
                        <span class="error" title="This tab contains invalid data. Please solve the problem before saving.">
                        </span>Wishlist</span> </a></li>
                <li><a href="#" id="customer_info_tabs_newsletter" name="newsletter" title="Newsletter"
                    class="tab-item-link"><span><span class="changed" title="The information in this tab has been changed.">
                    </span><span class="error" title="This tab contains invalid data. Please solve the problem before saving.">
                    </span>Newsletter</span> </a></li>
                <li><a href="index.php/admin/customer/productReviews/id/19/key/8ccfc0314d099baf7a4a14a82cc060f7/"
                    id="customer_info_tabs_reviews" name="reviews" title="Product Reviews" class="tab-item-link ajax notloaded">
                    <span><span class="changed" title="The information in this tab has been changed."></span>
                        <span class="error" title="This tab contains invalid data. Please solve the problem before saving.">
                        </span>Product Reviews</span> </a></li>
                <li><a href="index.php/admin/customer/productTags/id/19/key/f0829103b767554db6ba8276e12d0044/"
                    id="customer_info_tabs_tags" name="tags" title="Product Tags" class="tab-item-link ajax notloaded">
                    <span><span class="changed" title="The information in this tab has been changed."></span>
                        <span class="error" title="This tab contains invalid data. Please solve the problem before saving.">
                        </span>Product Tags</span> </a></li>
            </ul>

            <script type="text/javascript">
    customer_info_tabsJsTabs = new varienTabs('customer_info_tabs', 'edit_form', 'customer_info_tabs_view', []);
            </script>

        </div>
        <div class="main-col" id="content">
            <div class="main-col-inner">
                <div id="messages">
                </div>
                <div class="content-header">
                    <h3 class="icon-head head-customer">
                        Tom Wilson</h3>
                    <div class="content-buttons-placeholder">
                        <p class="content-buttons form-buttons">
                            <button id="id_800d1eb64f24673a9df41589245a49a5" type="button" class="scalable back"
                                onclick="setLocation('index.php/admin/customer/index/key/b25f789ad41c10da19937cbcd7dafd8a/')"
                                style="">
                                <span>Back</span></button>
                            <button id="id_5221fba5886d6bf8d46591f19824aa20" type="button" class="scalable" onclick="setLocation(window.location.href)"
                                    style="">
                                    <span>Reset</span></button>
                            <a href="sales_order_create_1.aspx"><button id="id_8239926e09c3df3779fa698f4688a52b" type="button" class="scalable add" onclick="setLocation('index.php/admin/sales_order_create/start/customer_id/19/key/dedcbd24a786d0c0f699ba8a4a22e3be/')"
                                        style="">
                                        <span>Create Order</span></button></a>
                            <button id="id_19acf914c8fda6cbaee028be456d736c" type="button" class="scalable delete" onclick="deleteConfirm('Are you sure you want to do this?', 'index.php/admin/customer/delete/id/19/key/adeedb873971e09396273e310e72e9d5/')"
                                            style="">
                                            <span>Delete Customer</span></button>
                            <button id="id_cc20ec0dee5706fd74d81825213f61e5" type="button" class="scalable save" onclick="editForm.submit();"
                                                style="">
                                                <span>Save Customer</span></button>
                            <button id="id_c84c6a5ba6397c3ce4f9611fab8725c7" type="button" class="scalable save" onclick="saveAndContinueEdit('index.php/admin/customer/save/back/edit/tab/{{tab_id}}/id/19/key/bf07a981e1dfdca52a43984bde9846a2/')"
                                                    style="">
                                                    <span>Save And Continue Edit</span></button></p>
                    </div>
                </div>
                <div class="entry-edit">
                    <form id="edit_form" action="index.php/admin/customer/save/key/bf07a981e1dfdca52a43984bde9846a2/"
                    method="post">
                    <div>
                        <input name="form_key" value="OUFq7hGPtXhbW1X3" type="hidden"></div>
                    <span class="field-row">
                        <input id="entity_id" name="customer_id" value="19" type="hidden">
                    </span>
                    <div id="customer_info_tabs_view_content" style="">
                        <div class="entry-edit">
                            <div class="entry-edit-head">
                                <h4 class="icon-head head-customer-view">
                                    Personal Information</h4>
                            </div>
                            <fieldset>
                                <table class="box-left" cellspacing="2">
                                    <tbody>
                                        <tr>
                                            <td>
                                                <strong>Last Logged In:</strong>
                                            </td>
                                            <td>
                                                21 May 2009 12:09:30 (Offline)
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <strong>Confirmed email:</strong>
                                            </td>
                                            <td>
                                                Confirmed
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <strong>Account Created on:</strong>
                                            </td>
                                            <td>
                                                21 May 2009 12:09:29
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <strong>Account Created in:</strong>
                                            </td>
                                            <td>
                                                Doors &amp; Hardware Direct
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <strong>Customer Group:</strong>
                                            </td>
                                            <td>
                                                Standard Account
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <address class="box-right">
                                    <strong>Primary Billing Address</strong><br>
                                    Customer doesn't have primary billing address
                                </address>
                            </fieldset>
                        </div>
                        <div class="entry-edit">
                            <div class="entry-edit-head">
                                <h4 class="icon-head head-customer-sales-statistics">
                                    Sales Statistics</h4>
                            </div>
                            <div class="grid">
                                <table class="data" cellspacing="0">
                                    <thead>
                                        <tr class="headings">
                                            <th>
                                                Website
                                            </th>
                                            <th>
                                                Store
                                            </th>
                                            <th>
                                                Store View
                                            </th>
                                            <th>
                                                Lifetime Sales
                                            </th>
                                            <th>
                                                Average Sale
                                            </th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <td colspan="3" class="label">
                                                <strong><big>All Store Views</big></strong>
                                            </td>
                                            <td class="emph">
                                                <strong><big><span class="price">£0.00</span></big></strong>
                                            </td>
                                            <td class="emph">
                                                <strong><big><span class="price">£0.00</span></big></strong>
                                            </td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                        <div class="clear">
                        </div>
                        <br>
                        <dl id="customerViewAccordion" class="accordion">
                            <dt id="dt-lastOrders" class=""><a href="index.php/admin/customer/lastOrders/id/19/key/94778d7e9a732ceb0d5fa50ddc3277e9/"
                                class="ajax">Recent Orders</a></dt><dd id="dd-lastOrders" class=""></dd>
                            <dt id="dt-shopingCart1" class=""><a href="index.php/admin/customer/viewCart/website_id/1/id/19/key/23e0e5a8318e798172c26a42fafcb415/"
                                class="ajax">Shopping Cart - 0 item(s)</a></dt><dd id="dd-shopingCart1" class=""></dd>
                            <dt id="dt-wishlist" class=""><a href="index.php/admin/customer/viewWishlist/id/19/key/40226f1ce7c13f925240036ce7774a2c/"
                                class="ajax">Wishlist - 0 item(s)</a></dt><dd id="dd-wishlist" class=""></dd></dl>

                        

                    </div>
                    <div id="customer_info_tabs_account_content" style="display: none;">
                        <div class="entry-edit">
                            <div class="entry-edit-head">
                                <h4 class="icon-head head-edit-form fieldset-legend">
                                    Account Information</h4>
                                <div class="form-buttons">
                                </div>
                            </div>
                            <div class="fieldset" id="_accountbase_fieldset">
                                <div class="hor-scroll">
                                    <table class="form-list" cellspacing="0">
                                        <tbody>
                                            <tr>
                                                <td class="label">
                                                    <label for="_accountgroup_desired">
                                                        Group Desired</label>
                                                </td>
                                                <td class="value">
                                                    <select id="_accountgroup_desired" name="account[group_desired]" class="select" disabled="disabled">
                                                        <option value="1" selected="selected">Standard Account</option>
                                                        <option value="5">Trade Buyer</option>
                                                    </select>
                                                </td>
                                                <td id="note_group_desired">
                                                    <small>&nbsp;</small>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="label">
                                                    <label for="_accountwebsite_id">
                                                        Associate to Website <span class="required">*</span></label>
                                                </td>
                                                <td class="value">
                                                    <select id="_accountwebsite_id" name="account[website_id]" class="required-entry required-entry select"
                                                        disabled="disabled">
                                                        <option value=""></option>
                                                        <option value="0">Admin</option>
                                                        <option value="1" selected="selected">Doors &amp; Hardware Direct Website</option>
                                                    </select>
                                                </td>
                                                <td id="note_website_id">
                                                    <small>&nbsp;</small>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="label">
                                                    <label for="_accountcreated_in">
                                                        Created From <span class="required">*</span></label>
                                                </td>
                                                <td class="value">
                                                    <input id="_accountcreated_in" name="account[created_in]" value="Doors &amp; Hardware Direct"
                                                        class="required-entry required-entry input-text" disabled="disabled" type="text">
                                                </td>
                                                <td id="note_created_in">
                                                    <small>&nbsp;</small>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="label">
                                                    <label for="_accountprefix">
                                                        Prefix</label>
                                                </td>
                                                <td class="value">
                                                    <input id="_accountprefix" name="account[prefix]" value="" class="input-text" type="text">
                                                </td>
                                                <td id="note_prefix">
                                                    <small>&nbsp;</small>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="label">
                                                    <label for="_accountfirstname">
                                                        First Name <span class="required">*</span></label>
                                                </td>
                                                <td class="value">
                                                    <input id="_accountfirstname" name="account[firstname]" value="Tom" class="required-entry required-entry input-text"
                                                        type="text">
                                                </td>
                                                <td id="note_firstname">
                                                    <small>&nbsp;</small>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="label">
                                                    <label for="_accountmiddlename">
                                                        Middle Name/Initial</label>
                                                </td>
                                                <td class="value">
                                                    <input id="_accountmiddlename" name="account[middlename]" value="" class="input-text"
                                                        type="text">
                                                </td>
                                                <td id="note_middlename">
                                                    <small>&nbsp;</small>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="label">
                                                    <label for="_accountlastname">
                                                        Last Name <span class="required">*</span></label>
                                                </td>
                                                <td class="value">
                                                    <input id="_accountlastname" name="account[lastname]" value="Wilson" class="required-entry required-entry input-text"
                                                        type="text">
                                                </td>
                                                <td id="note_lastname">
                                                    <small>&nbsp;</small>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="label">
                                                    <label for="_accountsuffix">
                                                        Suffix</label>
                                                </td>
                                                <td class="value">
                                                    <input id="_accountsuffix" name="account[suffix]" value="" class="input-text" type="text">
                                                </td>
                                                <td id="note_suffix">
                                                    <small>&nbsp;</small>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="label">
                                                    <label for="_accountemail">
                                                        Email <span class="required">*</span></label>
                                                </td>
                                                <td class="value">
                                                    <input id="_accountemail" name="account[email]" value="thomaswilson_14@hotmail.com"
                                                        class="required-entry required-entry validate-email input-text" type="text">
                                                </td>
                                                <td id="note_email">
                                                    <small>&nbsp;</small>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="label">
                                                    <label for="_accountgroup_id">
                                                        Customer Group <span class="required">*</span></label>
                                                </td>
                                                <td class="value">
                                                    <select id="_accountgroup_id" name="account[group_id]" class="required-entry required-entry select">
                                                        <option value="1" selected="selected">Standard Account</option>
                                                        <option value="5">Trade Buyer</option>
                                                    </select>
                                                </td>
                                                <td id="note_group_id">
                                                    <small>&nbsp;</small>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="label">
                                                    <label for="_accountdob">
                                                        Date Of Birth</label>
                                                </td>
                                                <td class="value">
                                                    <input name="account[dob]" id="_accountdob" value="" class="input-text" style="width: 100px;"
                                                        type="text">
                                                    <img src="customers_customerinformation_files/grid-cal.gif" alt="" class="v-middle"
                                                        id="_accountdob_trig" title="Select Date" style="">

                                                   

                                                </td>
                                                <td id="note_dob">
                                                    <small>&nbsp;</small>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" class="hidden">
                                                    <input id="_accountpassword_hash" name="account[password_hash]" value="325833d2660265cdff7f1b6cfcc78993:ru"
                                                        class="" type="hidden">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="label">
                                                    <label for="_accounttaxvat">
                                                        Tax/VAT number</label>
                                                </td>
                                                <td class="value">
                                                    <input id="_accounttaxvat" name="account[taxvat]" value="" class="input-text" type="text">
                                                </td>
                                                <td id="note_taxvat">
                                                    <small>&nbsp;</small>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="entry-edit-head">
                                <h4 class="icon-head head-edit-form fieldset-legend">
                                    Password Management</h4>
                                <div class="form-buttons">
                                </div>
                            </div>
                            <div class="fieldset" id="_accountpassword_fieldset">
                                <div class="hor-scroll">
                                    <table class="form-list" cellspacing="0">
                                        <tbody>
                                            <tr>
                                                <td class="label">
                                                    <label for="_accountnew_password">
                                                        New Password</label>
                                                </td>
                                                <td class="value">
                                                    <input id="_accountnew_password" name="account[new_password]" value="" class="validate-new-password input-text"
                                                        type="text">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="label">
                                                    <label>
                                                        &nbsp;</label>
                                                </td>
                                                <td class="value">
                                                    or
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="label">
                                                    <label>
                                                        &nbsp;</label>
                                                </td>
                                                <td class="value">
                                                    <input id="account-send-pass" name="account[new_password]" value="auto" onclick="setElementDisable('_accountnew_password', this.checked)"
                                                        type="checkbox">&nbsp;<label for="account-send-pass">Send auto-generated password</label>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="customer_info_tabs_addresses_content" style="display: none;">
                        <!-- Addresses list -->
                        <table class="form-edit" cellspacing="0">
                            <tbody>
                                <tr>
                                    <td class="address-list">
                                        <div class="entry-edit-head">
                                            <h4 class="icon-head head-customer-address-list">
                                                Customer Addresses</h4>
                                        </div>
                                        <div class="sub-btn-set">
                                            <button id="add_address_button" type="button" class="scalable add" onclick="customerAddresses.addNewAddress()"
                                                style="">
                                                <span>Add New Address</span></button></div>
                                        <ul id="address_list">
                                        </ul>
                                    </td>
                                    <td>
                                        <!-- Addresses forms -->
                                        <div class="entry-edit" id="address_form_container">
                                            <div id="no_address_message">
                                                This customer has no saved addresses.</div>
                                        </div>
                                        <!-- Template for adding address item to list -->
                                        <div id="address_item_template" class="no-display template">
                                            <a href="#" class="btn-remove-address">
                                                <img src="customers_customerinformation_files/cancel_icon.gif" alt="Remove address"
                                                    id="delete_button1">
                                            </a><a href="#" id="select_button_" class="select_button btn-edit-address">
                                                <img src="customers_customerinformation_files/edit_icon.gif" alt="Edit address">
                                            </a>
                                            <address>
                                                New Customer Address</address>
                                            <div class="address-type">
                                                <span class="address-type-line">
                                                    <input value="_template_" id="address_item_billing_template_" name="account[default_billing]"
                                                        title="Set as Default Billing Address" type="radio">
                                                    &nbsp;<label for="address_item_billing_template_">Default Billing Address</label>
                                                </span><span class="address-type-line">
                                                    <input value="_template_" id="address_item_shipping_template_" name="account[default_shipping]"
                                                        title="Set as Default Shipping Address" type="radio">
                                                    &nbsp;<label for="address_item_shipping_template_">Default Shipping Address</label>
                                                </span>
                                            </div>
                                        </div>
                                        <!-- Address form template -->
                                        <div id="address_form_template" class="no-display template">
                                            <div class="entry-edit-head">
                                                <h4 class="icon-head head-edit-form fieldset-legend">
                                                    Edit Customer's Address</h4>
                                                <div class="form-buttons">
                                                </div>
                                            </div>
                                            <div class="fieldset" id="_template_address_fieldset">
                                                <div class="hor-scroll">
                                                    <table class="form-list" cellspacing="0">
                                                        <tbody>
                                                            <tr>
                                                                <td class="label">
                                                                    <label for="_template_prefix">
                                                                        Prefix</label>
                                                                </td>
                                                                <td class="value">
                                                                    <input id="_template_prefix" name="address[_template_][prefix]" value="" class="input-text"
                                                                        type="text">
                                                                </td>
                                                                <td id="note_prefix">
                                                                    <small>&nbsp;</small>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="label">
                                                                    <label for="_template_firstname">
                                                                        First Name <span class="required">*</span></label>
                                                                </td>
                                                                <td class="value">
                                                                    <input id="_template_firstname" name="address[_template_][firstname]" value="" class="required-entry required-entry input-text"
                                                                        type="text">
                                                                </td>
                                                                <td id="note_firstname">
                                                                    <small>&nbsp;</small>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="label">
                                                                    <label for="_template_middlename">
                                                                        Middle Name/Initial</label>
                                                                </td>
                                                                <td class="value">
                                                                    <input id="_template_middlename" name="address[_template_][middlename]" value=""
                                                                        class="input-text" type="text">
                                                                </td>
                                                                <td id="note_middlename">
                                                                    <small>&nbsp;</small>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="label">
                                                                    <label for="_template_lastname">
                                                                        Last Name <span class="required">*</span></label>
                                                                </td>
                                                                <td class="value">
                                                                    <input id="_template_lastname" name="address[_template_][lastname]" value="" class="required-entry required-entry input-text"
                                                                        type="text">
                                                                </td>
                                                                <td id="note_lastname">
                                                                    <small>&nbsp;</small>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="label">
                                                                    <label for="_template_suffix">
                                                                        Suffix</label>
                                                                </td>
                                                                <td class="value">
                                                                    <input id="_template_suffix" name="address[_template_][suffix]" value="" class="input-text"
                                                                        type="text">
                                                                </td>
                                                                <td id="note_suffix">
                                                                    <small>&nbsp;</small>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="label">
                                                                    <label for="_template_company">
                                                                        Company</label>
                                                                </td>
                                                                <td class="value">
                                                                    <input id="_template_company" name="address[_template_][company]" value="" class="input-text"
                                                                        type="text">
                                                                </td>
                                                                <td id="note_company">
                                                                    <small>&nbsp;</small>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="label">
                                                                    <label for="_template_street0">
                                                                        Street Address <span class="required">*</span></label>
                                                                </td>
                                                                <td class="value">
                                                                    <div class="multi-input">
                                                                        <input id="_template_street0" name="address[_template_][street][0]" value="" class="input-text required-entry"
                                                                            type="text">
                                                                    </div>
                                                                    <div class="multi-input">
                                                                        <input id="_template_street1" name="address[_template_][street][1]" value="" class="input-text"
                                                                            type="text">
                                                                    </div>
                                                                </td>
                                                                <td id="note_street">
                                                                    <small>&nbsp;</small>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="label">
                                                                    <label for="_template_city">
                                                                        City <span class="required">*</span></label>
                                                                </td>
                                                                <td class="value">
                                                                    <input id="_template_city" name="address[_template_][city]" value="" class="required-entry required-entry input-text"
                                                                        type="text">
                                                                </td>
                                                                <td id="note_city">
                                                                    <small>&nbsp;</small>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="label">
                                                                    <label for="_template_country_id">
                                                                        Country <span class="required">*</span></label>
                                                                </td>
                                                                <td class="value">
                                                                    <select id="_template_country_id" name="address[_template_][country_id]" class="required-entry required-entry countries select">
                                                                        <option value="" selected="selected">&nbsp;</option>
                                                                        <option value="AF">Afghanistan</option>
                                                                        <option value="AX">Aland Islands</option>
                                                                        <option value="AL">Albania</option>
                                                                        <option value="DZ">Algeria</option>
                                                                        <option value="AS">American Samoa</option>
                                                                        <option value="AD">Andorra</option>
                                                                        <option value="AO">Angola</option>
                                                                        <option value="AI">Anguilla</option>
                                                                        <option value="AQ">Antarctica</option>
                                                                        <option value="AG">Antigua and Barbuda</option>
                                                                        <option value="AR">Argentina</option>
                                                                        <option value="AM">Armenia</option>
                                                                        <option value="AW">Aruba</option>
                                                                        <option value="AU">Australia</option>
                                                                        <option value="AT">Austria</option>
                                                                        <option value="AZ">Azerbaijan</option>
                                                                        <option value="BS">Bahamas</option>
                                                                        <option value="BH">Bahrain</option>
                                                                        <option value="BD">Bangladesh</option>
                                                                        <option value="BB">Barbados</option>
                                                                        <option value="BY">Belarus</option>
                                                                        <option value="BE">Belgium</option>
                                                                        <option value="BZ">Belize</option>
                                                                        <option value="BJ">Benin</option>
                                                                        <option value="BM">Bermuda</option>
                                                                        <option value="BT">Bhutan</option>
                                                                        <option value="BO">Bolivia</option>
                                                                        <option value="BA">Bosnia and Herzegovina</option>
                                                                        <option value="BW">Botswana</option>
                                                                        <option value="BV">Bouvet Island</option>
                                                                        <option value="BR">Brazil</option>
                                                                        <option value="IO">British Indian Ocean Territory</option>
                                                                        <option value="VG">British Virgin Islands</option>
                                                                        <option value="BN">Brunei</option>
                                                                        <option value="BG">Bulgaria</option>
                                                                        <option value="BF">Burkina Faso</option>
                                                                        <option value="BI">Burundi</option>
                                                                        <option value="KH">Cambodia</option>
                                                                        <option value="CM">Cameroon</option>
                                                                        <option value="CA">Canada</option>
                                                                        <option value="CV">Cape Verde</option>
                                                                        <option value="KY">Cayman Islands</option>
                                                                        <option value="CF">Central African Republic</option>
                                                                        <option value="TD">Chad</option>
                                                                        <option value="CL">Chile</option>
                                                                        <option value="CN">China</option>
                                                                        <option value="CX">Christmas Island</option>
                                                                        <option value="CC">Cocos Islands</option>
                                                                        <option value="CO">Colombia</option>
                                                                        <option value="KM">Comoros</option>
                                                                        <option value="CG">Congo - Brazzaville</option>
                                                                        <option value="CD">Congo - Kinshasa</option>
                                                                        <option value="CK">Cook Islands</option>
                                                                        <option value="CR">Costa Rica</option>
                                                                        <option value="HR">Croatia</option>
                                                                        <option value="CU">Cuba</option>
                                                                        <option value="CY">Cyprus</option>
                                                                        <option value="CZ">Czech Republic</option>
                                                                        <option value="DK">Denmark</option>
                                                                        <option value="DJ">Djibouti</option>
                                                                        <option value="DM">Dominica</option>
                                                                        <option value="DO">Dominican Republic</option>
                                                                        <option value="TL">East Timor</option>
                                                                        <option value="EC">Ecuador</option>
                                                                        <option value="EG">Egypt</option>
                                                                        <option value="SV">El Salvador</option>
                                                                        <option value="GQ">Equatorial Guinea</option>
                                                                        <option value="ER">Eritrea</option>
                                                                        <option value="EE">Estonia</option>
                                                                        <option value="ET">Ethiopia</option>
                                                                        <option value="FK">Falkland Islands</option>
                                                                        <option value="FO">Faroe Islands</option>
                                                                        <option value="FJ">Fiji</option>
                                                                        <option value="FI">Finland</option>
                                                                        <option value="FR">France</option>
                                                                        <option value="GF">French Guiana</option>
                                                                        <option value="PF">French Polynesia</option>
                                                                        <option value="TF">French Southern Territories</option>
                                                                        <option value="GA">Gabon</option>
                                                                        <option value="GM">Gambia</option>
                                                                        <option value="GE">Georgia</option>
                                                                        <option value="DE">Germany</option>
                                                                        <option value="GH">Ghana</option>
                                                                        <option value="GI">Gibraltar</option>
                                                                        <option value="GR">Greece</option>
                                                                        <option value="GL">Greenland</option>
                                                                        <option value="GD">Grenada</option>
                                                                        <option value="GP">Guadeloupe</option>
                                                                        <option value="GU">Guam</option>
                                                                        <option value="GT">Guatemala</option>
                                                                        <option value="GG">Guernsey</option>
                                                                        <option value="GN">Guinea</option>
                                                                        <option value="GW">Guinea-Bissau</option>
                                                                        <option value="GY">Guyana</option>
                                                                        <option value="HT">Haiti</option>
                                                                        <option value="HM">Heard Island and McDonald Islands</option>
                                                                        <option value="HN">Honduras</option>
                                                                        <option value="HK">Hong Kong</option>
                                                                        <option value="HU">Hungary</option>
                                                                        <option value="IS">Iceland</option>
                                                                        <option value="IN">India</option>
                                                                        <option value="ID">Indonesia</option>
                                                                        <option value="IR">Iran</option>
                                                                        <option value="IQ">Iraq</option>
                                                                        <option value="IE">Ireland</option>
                                                                        <option value="IM">Isle of Man</option>
                                                                        <option value="IL">Israel</option>
                                                                        <option value="IT">Italy</option>
                                                                        <option value="CI">Ivory Coast</option>
                                                                        <option value="JM">Jamaica</option>
                                                                        <option value="JP">Japan</option>
                                                                        <option value="JE">Jersey</option>
                                                                        <option value="JO">Jordan</option>
                                                                        <option value="KZ">Kazakhstan</option>
                                                                        <option value="KE">Kenya</option>
                                                                        <option value="KI">Kiribati</option>
                                                                        <option value="KW">Kuwait</option>
                                                                        <option value="KG">Kyrgyzstan</option>
                                                                        <option value="LA">Laos</option>
                                                                        <option value="LV">Latvia</option>
                                                                        <option value="LB">Lebanon</option>
                                                                        <option value="LS">Lesotho</option>
                                                                        <option value="LR">Liberia</option>
                                                                        <option value="LY">Libya</option>
                                                                        <option value="LI">Liechtenstein</option>
                                                                        <option value="LT">Lithuania</option>
                                                                        <option value="LU">Luxembourg</option>
                                                                        <option value="MO">Macau</option>
                                                                        <option value="MK">Macedonia</option>
                                                                        <option value="MG">Madagascar</option>
                                                                        <option value="MW">Malawi</option>
                                                                        <option value="MY">Malaysia</option>
                                                                        <option value="MV">Maldives</option>
                                                                        <option value="ML">Mali</option>
                                                                        <option value="MT">Malta</option>
                                                                        <option value="MH">Marshall Islands</option>
                                                                        <option value="MQ">Martinique</option>
                                                                        <option value="MR">Mauritania</option>
                                                                        <option value="MU">Mauritius</option>
                                                                        <option value="YT">Mayotte</option>
                                                                        <option value="FX">Metropolitan France</option>
                                                                        <option value="MX">Mexico</option>
                                                                        <option value="FM">Micronesia</option>
                                                                        <option value="MD">Moldova</option>
                                                                        <option value="MC">Monaco</option>
                                                                        <option value="MN">Mongolia</option>
                                                                        <option value="ME">Montenegro</option>
                                                                        <option value="MS">Montserrat</option>
                                                                        <option value="MA">Morocco</option>
                                                                        <option value="MZ">Mozambique</option>
                                                                        <option value="MM">Myanmar</option>
                                                                        <option value="NA">Namibia</option>
                                                                        <option value="NR">Nauru</option>
                                                                        <option value="NP">Nepal</option>
                                                                        <option value="NL">Netherlands</option>
                                                                        <option value="AN">Netherlands Antilles</option>
                                                                        <option value="NC">New Caledonia</option>
                                                                        <option value="NZ">New Zealand</option>
                                                                        <option value="NI">Nicaragua</option>
                                                                        <option value="NE">Niger</option>
                                                                        <option value="NG">Nigeria</option>
                                                                        <option value="NU">Niue</option>
                                                                        <option value="NF">Norfolk Island</option>
                                                                        <option value="KP">North Korea</option>
                                                                        <option value="MP">Northern Mariana Islands</option>
                                                                        <option value="NO">Norway</option>
                                                                        <option value="OM">Oman</option>
                                                                        <option value="PK">Pakistan</option>
                                                                        <option value="PW">Palau</option>
                                                                        <option value="PS">Palestinian Territory</option>
                                                                        <option value="PA">Panama</option>
                                                                        <option value="PG">Papua New Guinea</option>
                                                                        <option value="PY">Paraguay</option>
                                                                        <option value="PE">Peru</option>
                                                                        <option value="PH">Philippines</option>
                                                                        <option value="PN">Pitcairn</option>
                                                                        <option value="PL">Poland</option>
                                                                        <option value="PT">Portugal</option>
                                                                        <option value="PR">Puerto Rico</option>
                                                                        <option value="QA">Qatar</option>
                                                                        <option value="RE">Reunion</option>
                                                                        <option value="RO">Romania</option>
                                                                        <option value="RU">Russia</option>
                                                                        <option value="RW">Rwanda</option>
                                                                        <option value="BL">Saint Barthélemy</option>
                                                                        <option value="SH">Saint Helena</option>
                                                                        <option value="KN">Saint Kitts and Nevis</option>
                                                                        <option value="LC">Saint Lucia</option>
                                                                        <option value="MF">Saint Martin</option>
                                                                        <option value="PM">Saint Pierre and Miquelon</option>
                                                                        <option value="VC">Saint Vincent and the Grenadines</option>
                                                                        <option value="WS">Samoa</option>
                                                                        <option value="SM">San Marino</option>
                                                                        <option value="ST">Sao Tome and Principe</option>
                                                                        <option value="SA">Saudi Arabia</option>
                                                                        <option value="SN">Senegal</option>
                                                                        <option value="RS">Serbia</option>
                                                                        <option value="CS">Serbia and Montenegro</option>
                                                                        <option value="SC">Seychelles</option>
                                                                        <option value="SL">Sierra Leone</option>
                                                                        <option value="SG">Singapore</option>
                                                                        <option value="SK">Slovakia</option>
                                                                        <option value="SI">Slovenia</option>
                                                                        <option value="SB">Solomon Islands</option>
                                                                        <option value="SO">Somalia</option>
                                                                        <option value="ZA">South Africa</option>
                                                                        <option value="GS">South Georgia and the South Sandwich Islands</option>
                                                                        <option value="KR">South Korea</option>
                                                                        <option value="ES">Spain</option>
                                                                        <option value="LK">Sri Lanka</option>
                                                                        <option value="SD">Sudan</option>
                                                                        <option value="SR">Suriname</option>
                                                                        <option value="SJ">Svalbard and Jan Mayen</option>
                                                                        <option value="SZ">Swaziland</option>
                                                                        <option value="SE">Sweden</option>
                                                                        <option value="CH">Switzerland</option>
                                                                        <option value="SY">Syria</option>
                                                                        <option value="TW">Taiwan</option>
                                                                        <option value="TJ">Tajikistan</option>
                                                                        <option value="TZ">Tanzania</option>
                                                                        <option value="TH">Thailand</option>
                                                                        <option value="TG">Togo</option>
                                                                        <option value="TK">Tokelau</option>
                                                                        <option value="TO">Tonga</option>
                                                                        <option value="TT">Trinidad and Tobago</option>
                                                                        <option value="TN">Tunisia</option>
                                                                        <option value="TR">Turkey</option>
                                                                        <option value="TM">Turkmenistan</option>
                                                                        <option value="TC">Turks and Caicos Islands</option>
                                                                        <option value="TV">Tuvalu</option>
                                                                        <option value="VI">U.S. Virgin Islands</option>
                                                                        <option value="UG">Uganda</option>
                                                                        <option value="UA">Ukraine</option>
                                                                        <option value="AE">United Arab Emirates</option>
                                                                        <option value="GB">United Kingdom</option>
                                                                        <option value="US">United States</option>
                                                                        <option value="UM">United States Minor Outlying Islands</option>
                                                                        <option value="UY">Uruguay</option>
                                                                        <option value="UZ">Uzbekistan</option>
                                                                        <option value="VU">Vanuatu</option>
                                                                        <option value="VA">Vatican</option>
                                                                        <option value="VE">Venezuela</option>
                                                                        <option value="VN">Vietnam</option>
                                                                        <option value="WF">Wallis and Futuna</option>
                                                                        <option value="EH">Western Sahara</option>
                                                                        <option value="YE">Yemen</option>
                                                                        <option value="ZM">Zambia</option>
                                                                        <option value="ZW">Zimbabwe</option>
                                                                    </select>
                                                                </td>
                                                                <td id="note_country_id">
                                                                    <small>&nbsp;</small>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="label">
                                                                    <label for="_template_region">
                                                                        County <span class="required" style="display: none;">*</span></label>
                                                                </td>
                                                                <td class="value">
                                                                    <input id="_template_region" name="address[_template_][region]" value="" class="input-text">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="label">
                                                                    <label for="_template_postcode">
                                                                        Zip/Postal Code <span class="required">*</span></label>
                                                                </td>
                                                                <td class="value">
                                                                    <input id="_template_postcode" name="address[_template_][postcode]" value="" class="required-entry required-entry input-text"
                                                                        type="text">
                                                                </td>
                                                                <td id="note_postcode">
                                                                    <small>&nbsp;</small>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="label">
                                                                    <label for="_template_telephone">
                                                                        Telephone <span class="required">*</span></label>
                                                                </td>
                                                                <td class="value">
                                                                    <input id="_template_telephone" name="address[_template_][telephone]" value="" class="required-entry required-entry input-text"
                                                                        type="text">
                                                                </td>
                                                                <td id="note_telephone">
                                                                    <small>&nbsp;</small>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="label">
                                                                    <label for="_template_fax">
                                                                        Fax</label>
                                                                </td>
                                                                <td class="value">
                                                                    <input id="_template_fax" name="address[_template_][fax]" value="" class="input-text"
                                                                        type="text">
                                                                </td>
                                                                <td id="note_fax">
                                                                    <small>&nbsp;</small>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                            <button id="cancel_add_address_template_" type="button" class="scalable cancel delete-address"
                                                onclick="customerAddresses.cancelAdd(this)" style="">
                                                <span>Cancel</span></button>
                                        </div>
                                        <!-- -->

                                       

                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div id="customer_info_tabs_orders_content" style="display: none;">
                    </div>
                    <div id="customer_info_tabs_cart_content" style="display: none;">
                    </div>
                    <div id="customer_info_tabs_wishlist_content" style="display: none;">
                    </div>
                    <div id="customer_info_tabs_newsletter_content" style="display: none;">
                        <div class="entry-edit">
                            <div class="entry-edit-head">
                                <h4 class="icon-head head-edit-form fieldset-legend">
                                    Newsletter Information</h4>
                                <div class="form-buttons">
                                </div>
                            </div>
                            <div class="fieldset" id="_newsletterbase_fieldset">
                                <div class="hor-scroll">
                                    <table class="form-list" cellspacing="0">
                                        <tbody>
                                            <tr>
                                                <td class="label">
                                                    <label for="_newslettersubscription">
                                                        Subscribed to Newsletter?</label>
                                                </td>
                                                <td class="value">
                                                    <input id="_newslettersubscription" name="subscription" value="" type="checkbox">
                                                </td>
                                                <td id="note_subscription">
                                                    <small>&nbsp;</small>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div id="queueGrid">
                            <table class="actions" cellspacing="0">
                                <tbody>
                                    <tr>
                                        <td class="pager">
                                            Page
                                            <img src="customers_customerinformation_files/pager_arrow_left_off.gif" alt="Go to Previous page"
                                                class="arrow">
                                            <input name="page" value="1" class="input-text page" onkeypress="queueGridJsObject.inputPage(event, '1')"
                                                type="text">
                                            <img src="customers_customerinformation_files/pager_arrow_right_off.gif" alt="Go to Previous page"
                                                class="arrow">
                                            of 1 pages <span class="separator">|</span> View
                                            <select name="limit" onchange="queueGridJsObject.loadByElement(this)">
                                                <option value="20" selected="selected">20</option>
                                                <option value="30">30</option>
                                                <option value="50">50</option>
                                                <option value="100">100</option>
                                                <option value="200">200</option>
                                            </select>
                                            per page<span class="separator">|</span> Total 0 records found <span id="queueGrid-total-count"
                                                class="no-display">0</span>
                                        </td>
                                        <td class="filter-actions a-right">
                                            <button id="id_680b0867cc0c2e9cfcd0467296e0f0d3" type="button" class="scalable" onclick="queueGridJsObject.resetFilter()"
                                                style="">
                                                <span>Reset Filter</span></button>
                                            <button id="id_ca1918ce961f565e25f8dcc1501b0409" type="button" class="scalable task"
                                                    onclick="queueGridJsObject.doFilter()" style="">
                                                    <span>Search</span></button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="grid">
                                <div class="hor-scroll">
                                    <table class="data" id="queueGrid_table" cellspacing="0">
                                        <col width="10">
                                        <col>
                                        <col>
                                        <col>
                                        <col>
                                        <col>
                                        <col>
                                        <thead>
                                            <tr class="headings">
                                                <th>
                                                    <span class="nobr"><a href="#" name="queue_id" title="asc" class="not-sort"><span
                                                        class="sort-title">ID</span></a></span>
                                                </th>
                                                <th>
                                                    <span class="nobr"><a href="#" name="start_at" title="asc" class="sort-arrow-desc"><span
                                                        class="sort-title">Newsletter Start</span></a></span>
                                                </th>
                                                <th>
                                                    <span class="nobr"><a href="#" name="finish_at" title="asc" class="not-sort"><span
                                                        class="sort-title">Newsletter Finish</span></a></span>
                                                </th>
                                                <th>
                                                    <span class="nobr"><a href="#" name="letter_sent_at" title="asc" class="not-sort"><span
                                                        class="sort-title">Newsletter Received</span></a></span>
                                                </th>
                                                <th>
                                                    <span class="nobr"><a href="#" name="template_subject" title="asc" class="not-sort">
                                                        <span class="sort-title">Subject</span></a></span>
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
                                                    <div class="field-100">
                                                        <input name="queue_id" id="filter_queue_id" value="" class="input-text no-changes"
                                                            type="text"></div>
                                                </th>
                                                <th>
                                                    <div class="range">
                                                        <div class="range-line date">
                                                            <span class="label">From:</span>
                                                            <input name="start_at[from]" id="filter_start_at1245575351.97_from" value="" class="input-text no-changes"
                                                                type="text">
                                                            <img src="customers_customerinformation_files/grid-cal.gif" alt="" class="v-middle"
                                                                id="filter_start_at1245575351.97_from_trig" title="Date selector">
                                                        </div>
                                                        <div class="range-line date">
                                                            <span class="label">To :</span>
                                                            <input name="start_at[to]" id="filter_start_at1245575351.97_to" value="" class="input-text no-changes"
                                                                type="text">
                                                            <img src="customers_customerinformation_files/grid-cal.gif" alt="" class="v-middle"
                                                                id="filter_start_at1245575351.97_to_trig" title="Date selector">
                                                        </div>
                                                    </div>
                                                    <input name="start_at[locale]" value="en_GB" type="hidden">
                                                </th>
                                                <th>
                                                    <div class="range">
                                                        <div class="range-line date">
                                                            <span class="label">From:</span>
                                                            <input name="finish_at[from]" id="filter_finish_at1245575351.97_from" value="" class="input-text no-changes"
                                                                type="text">
                                                            <img src="customers_customerinformation_files/grid-cal.gif" alt="" class="v-middle"
                                                                id="filter_finish_at1245575351.97_from_trig" title="Date selector">
                                                        </div>
                                                        <div class="range-line date">
                                                            <span class="label">To :</span>
                                                            <input name="finish_at[to]" id="filter_finish_at1245575351.97_to" value="" class="input-text no-changes"
                                                                type="text">
                                                            <img src="customers_customerinformation_files/grid-cal.gif" alt="" class="v-middle"
                                                                id="filter_finish_at1245575351.97_to_trig" title="Date selector">
                                                        </div>
                                                    </div>
                                                    <input name="finish_at[locale]" value="en_GB" type="hidden">
                                                </th>
                                                <th>
                                                    <div class="range">
                                                        <div class="range-line date">
                                                            <span class="label">From:</span>
                                                            <input name="letter_sent_at[from]" id="filter_letter_sent_at1245575351.97_from" value=""
                                                                class="input-text no-changes" type="text">
                                                            <img src="customers_customerinformation_files/grid-cal.gif" alt="" class="v-middle"
                                                                id="filter_letter_sent_at1245575351.97_from_trig" title="Date selector">
                                                        </div>
                                                        <div class="range-line date">
                                                            <span class="label">To :</span>
                                                            <input name="letter_sent_at[to]" id="filter_letter_sent_at1245575351.97_to" value=""
                                                                class="input-text no-changes" type="text">
                                                            <img src="customers_customerinformation_files/grid-cal.gif" alt="" class="v-middle"
                                                                id="filter_letter_sent_at1245575351.97_to_trig" title="Date selector">
                                                        </div>
                                                    </div>
                                                    <input name="letter_sent_at[locale]" value="en_GB" type="hidden">
                                                </th>
                                                <th>
                                                    <div class="field-100">
                                                        <input name="template_subject" id="filter_template_subject" value="" class="input-text no-changes"
                                                            type="text"></div>
                                                </th>
                                                <th>
                                                    <select name="status" id="filter_status" class="no-changes">
                                                        <option value=""></option>
                                                        <option value="3">Sent</option>
                                                        <option value="2">Cancel</option>
                                                        <option value="0">Not Sent</option>
                                                        <option value="1">Sending</option>
                                                        <option value="4">Paused</option>
                                                    </select>
                                                </th>
                                                <th class="no-link last">
                                                    &nbsp;
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="even">
                                                <td class="empty-text a-center" colspan="100">
                                                    No Newsletter Found
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                       

                    </div>
                    <div id="customer_info_tabs_reviews_content" style="display: none;">
                    </div>
                    <div id="customer_info_tabs_tags_content" style="display: none;">
                    </div>
                    </form>
                </div>

               

            </div>
        </div>
    </div>
</asp:Content>
