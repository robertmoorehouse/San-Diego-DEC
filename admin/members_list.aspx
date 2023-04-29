<%@ Page Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true"
    CodeFile="members_list.aspx.cs" Inherits="admin_members_list" %>

<asp:Content ID="Content3" ContentPlaceHolderID="cph_content" runat="Server">
    <div id="messages">
    </div>
    <div class="content-header">
        <table cellspacing="0">
            <tbody>
                <tr>
                    <td style="width: 50%;">
                        <h3 class="icon-head head-customer">
                            Manage Customers</h3>
                    </td>
                    <td class="form-buttons">
                        <asp:Button ID="btnAddnew" runat="server" Text="Add New Customer" CssClass="scalable save"
                    Style="border-width: 1px; border-style: solid; border-color: #ed6502 #a04300 #a04300 #ed6502;
                    padding: 0 7px 1px 7px; background: #ffac47 url(images/btn_bg.gif) repeat-x 0 100%;
                    color: #fff; font: bold 12px arial, helvetica, sans-serif; cursor: pointer; text-align: center !important;
                    white-space: nowrap;" OnClick="btnAddnew_Click" />
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div>
        <div id="customerGrid">
            <table class="actions" cellspacing="0">
                <tbody>
                    <tr>
                        <td class="pager">
                            Page
                            <img src="images/pager_arrow_left_off.gif" alt="Go to Previous page" class="arrow">
                            <input name="page" value="1" class="input-text page" onkeypress="cmsPageGridJsObject.inputPage(event, '1')"
                                type="text">
                            <img src="images/pager_arrow_right_off.gif" alt="Go to Previous page" class="arrow">
                            of 1 pages <span class="separator">|</span> View
                            <asp:DropDownList ID="ddlLimit" runat="server">
                                <asp:ListItem Value="20" Text="20"></asp:ListItem>
                                <asp:ListItem Value="30" Text="30"></asp:ListItem>
                                <asp:ListItem Value="50" Text="50"></asp:ListItem>
                                <asp:ListItem Value="100" Text="100"></asp:ListItem>
                                <asp:ListItem Value="200" Text="200"></asp:ListItem>
                            </asp:DropDownList>
                            per page<span class="separator">|</span>
                            <asp:Literal ID="results" runat="server" Text="" />
                        </td>
                        <td class="export a-right">
                            <img src="customers_list_files/icon_export.gif" alt="" class="v-middle">&nbsp; Export
                            to:
                            <select name="customerGrid_export" id="customerGrid_export" style="width: 8em;">
                                <option value="index.php/admin/customer/exportCsv/key/d7facdbf12291e45b2007fabfb8bb3ad/">
                                    CSV</option>
                                <option value="index.php/admin/customer/exportXml/key/02db8754449c59a8daefa48b7baf6329/">
                                    XML</option>
                            </select>
                            <button id="id_729f102cd9d30c1f947017cda0731b48" type="button" class="scalable task"
                                onclick="customerGridJsObject.doExport()" style="">
                                <span>Export</span></button>
                        </td>
                        <td class="filter-actions a-right">
                            <button id="id_df259ef15e5813906b6adb4787ae5245" type="button" class="scalable" onclick="customerGridJsObject.resetFilter()"
                                style="">
                                <span>Reset Filter</span></button>
                            <button id="id_7d48612df26b427f7a771395168dd988" type="button" class="scalable task"
                                onclick="customerGridJsObject.doFilter()" style="">
                                <span>Search</span></button>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div id="customerGrid_massaction">
                <table class="massaction" cellpadding="0" cellspacing="0">
                    <tbody>
                        <tr>
                            <td>
                                <a href="#" onclick="return customerGrid_massactionJsObject.selectAll()">Select All</a>
                                <span class="separator">|</span> <a href="#" onclick="return customerGrid_massactionJsObject.unselectAll()">
                                    Unselect All</a> <span class="separator">|</span>
                                <!--<a href="#" onclick="return customerGrid_massactionJsObject.selectVisible()">Select Visible</a>
        <span class="separator">|</span>
        <a href="#" onclick="return customerGrid_massactionJsObject.unselectVisible()">Unselect Visible</a>
        <span class="separator">|</span>-->
                                <strong id="customerGrid_massaction-count">0</strong> items selected
                            </td>
                            <td>
                                <div class="right">
                                    <div class="entry-edit">
                                        <form action="" id="customerGrid_massaction-form" method="post">
                                        <div>
                                            <input name="form_key" value="eLdcSgNt7s6d2los" type="hidden"></div>
                                        <fieldset>
                                            <span class="field-row">
                                                <label>
                                                    Actions</label>
                                                <select id="customerGrid_massaction-select" class="required-entry select absolute-advice">
                                                    <option value=""></option>
                                                    <option value="delete">Delete</option>
                                                    <option value="newsletter_subscribe">Subscribe to newsletter</option>
                                                    <option value="newsletter_unsubscribe">Unsubscribe from newsletter</option>
                                                    <option value="assign_group">Assign a customer group</option>
                                                </select>
                                            </span><span class="outer-span" id="customerGrid_massaction-form-hiddens"></span>
                                            <span class="outer-span" id="customerGrid_massaction-form-additional"></span><span
                                                class="field-row">
                                                <button id="id_770558139df48a2ce2485b2b3d8c217c" type="button" class="scalable" onclick="customerGrid_massactionJsObject.apply()"
                                                    style="">
                                                    <span>Submit</span></button>
                                            </span>
                                        </fieldset>
                                        </form>
                                    </div>
                                    <div class="no-display">
                                        <div id="customerGrid_massaction-item-delete-block">
                                        </div>
                                        <div id="customerGrid_massaction-item-newsletter_subscribe-block">
                                        </div>
                                        <div id="customerGrid_massaction-item-newsletter_unsubscribe-block">
                                        </div>
                                        <div id="customerGrid_massaction-item-assign_group-block">
                                            <div class="entry-edit">
                                                <span class="field-row">
                                                    <label for="visibility">
                                                        Group</label>
                                                    <select id="visibility" name="group" class="required-entry absolute-advice select">
                                                        <option value="" selected="selected"></option>
                                                        <option value="1">Standard Account</option>
                                                        <option value="5">Trade Buyer</option>
                                                    </select>
                                                </span>
                                            </div>
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
                    <asp:GridView ID="gvResults" OnPageIndexChanging="gvResults_PageIndexChanging" runat="server"
                        AutoGenerateColumns="false" Width="100%" AllowPaging="true" AllowSorting="true"
                        ShowFooter="true" ShowHeader="true" UseAccessibleHeader="false" BorderStyle="none"
                        BorderWidth="0" PagerSettings-Visible="true" PagerSettings-Mode="NumericFirstLast">
                        <Columns>
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    <table class="data" id="customerGrid_table" cellspacing="0">
                                        <col class="a-center" width="20">
                                        <col width="50">
                                        <col>
                                        <col width="150">
                                        <col width="100">
                                        <col width="100">
                                        <col width="90">
                                        <col width="100">
                                        <col width="100">
                                        <col>
                                        <col width="100">
                                        <thead>
                                            <tr class="headings">
                                                <th>
                                                    <span class="nobr"><a href="#" name="active" title="asc" class="sort-arrow-desc">
                                                        <span class="sort-title">Active</span></a></span>
                                                </th>
                                                <th>
                                                    <span class="nobr"><a href="#" name="entity_id" title="asc" class="sort-arrow-desc">
                                                        <span class="sort-title">ID</span></a></span>
                                                </th>
                                                <th>
                                                    <span class="nobr"><a href="#" name="name" title="asc" class="not-sort"><span class="sort-title">
                                                        Name</span></a></span>
                                                </th>
                                                <th>
                                                    <span class="nobr"><a href="#" name="email" title="asc" class="not-sort"><span class="sort-title">
                                                        Email</span></a></span>
                                                </th>
                                                <th>
                                                    <span class="nobr"><a href="#" name="group" title="asc" class="not-sort"><span class="sort-title">
                                                        Group</span></a></span>
                                                </th>
                                                <th>
                                                    <span class="nobr"><a href="#" name="Telephone" title="asc" class="not-sort"><span
                                                        class="sort-title">Telephone</span></a></span>
                                                </th>
                                                <th>
                                                    <span class="nobr"><a href="#" name="billing_postcode" title="asc" class="not-sort">
                                                        <span class="sort-title">Fax</span></a></span>
                                                </th>
                                                <th>
                                                    <span class="nobr"><a href="#" name="billing_country_id" title="asc" class="not-sort">
                                                        <span class="sort-title">Company</span></a></span>
                                                </th>
                                                <th>
                                                    <span class="nobr"><a href="#" name="billing_region" title="asc" class="not-sort"><span
                                                        class="sort-title">Position</span></a></span>
                                                </th>
                                                <th>
                                                    <span class="nobr"><a href="#" name="customer_since" title="asc" class="not-sort"><span
                                                        class="sort-title">Last Changed</span></a></span>
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
                                                            <input name="entity_id[from]" id="filter_entity_id_from" value="" class="input-text no-changes"
                                                                type="text"></div>
                                                        <div class="range-line">
                                                            <span class="label">To : </span>
                                                            <input name="entity_id[to]" id="filter_entity_id_to" value="" class="input-text no-changes"
                                                                type="text"></div>
                                                    </div>
                                                </th>
                                                <th>
                                                    <div class="field-100">
                                                        <input name="name" id="filter_name" value="" class="input-text no-changes" type="text"></div>
                                                </th>
                                                <th>
                                                    <div class="field-100">
                                                        <input name="email" id="filter_email" value="" class="input-text no-changes" type="text"></div>
                                                </th>
                                                <th>
                                                    <select name="group" id="filter_group" class="no-changes">
                                                        <option value=""></option>
                                                        <option value="web registration">web registration</option>
                                                        <option value="dec member">dec member</option>
                                                    </select>
                                                </th>
                                                <th>
                                                    <div class="field-100">
                                                        <input name="phone" id="filter_Telephone" value="" class="input-text no-changes"
                                                            type="text"></div>
                                                </th>
                                                <th>
                                                    <div class="field-100">
                                                        <input name="zip" id="filter_billing_postcode" value="" class="input-text no-changes"
                                                            type="text"></div>
                                                </th>
                                                <th>
                                                    <div class="field-100">
                                                        <input name="company" id="company" value="" class="input-text no-changes"
                                                            type="text"></div>
                                                </th>
                                                <th>
                                                    <div class="field-100">
                                                        <input name="position" id="filter_billing_region" value="" class="input-text no-changes"
                                                            type="text"></div>
                                                </th>
                                                <th>
                                                    <div class="range">
                                                        <div class="range-line date">
                                                            <span class="label">From:</span>
                                                            <input name="customer_since[from]" id="filter_customer_since1245364667.43_from" value=""
                                                                class="input-text no-changes" type="text">
                                                            <img src="customers_list_files/grid-cal.gif" alt="" class="v-middle" id="filter_customer_since1245364667.43_from_trig"
                                                                title="Date selector">
                                                        </div>
                                                        <div class="range-line date">
                                                            <span class="label">To :</span>
                                                            <input name="customer_since[to]" id="filter_customer_since1245364667.43_to" value=""
                                                                class="input-text no-changes" type="text">
                                                            <img src="customers_list_files/grid-cal.gif" alt="" class="v-middle" id="filter_customer_since1245364667.43_to_trig"
                                                                title="Date selector">
                                                        </div>
                                                    </div>
                                                    <input name="customer_since[locale]" value="en_GB" type="hidden">

                                                </th>
                                                <th class="no-link last">
                                                    &nbsp;
                                                </th>
                                            </tr>
                                        </thead>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <fieldset>
                                        <tbody>
                                            <tr class="even">
                                                <td class="a-left">
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("active") %>'></asp:Label>
                                                </td>
                                                <td class="a-left">
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                                                </td>
                                                <td class="a-left">
                                                    <asp:Label ID="Label5" runat="server" Text='<%# getFullName(DataBinder.Eval(Container.DataItem,"firstname"),DataBinder.Eval(Container.DataItem,"lastname")) %>'></asp:Label>
                                                </td>
                                                <td class="a-left">
                                                    <asp:Label ID="lblLayout" runat="server" Text='<%# Bind("emailaddress") %>'></asp:Label>
                                                </td>
                                                <td class="a-left">
                                                    <asp:Label ID="lblStatus" runat="server" Text='<%# Bind("customer_group") %>'></asp:Label>
                                                </td>
                                                <td class="a-left">
                                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("phone") %>'></asp:Label>
                                                </td>
                                                <td class="a-left">
                                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("fax") %>'></asp:Label>
                                                </td>
                                                <td class="a-left">
                                                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("company") %>'></asp:Label>
                                                </td>
                                                <td class="a-left">
                                                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("position") %>'></asp:Label>
                                                </td>
                                                <td class="a-left">
                                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("modified") %>'></asp:Label>
                                                </td>
                                                <td class="last">
                                                    <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                                                    <a href='members_addnew.aspx?member=<%# Eval("ID") %>'>Edit</a>
                                            </tr>
                                    </fieldset>
                                </ItemTemplate>
                                <AlternatingItemTemplate>
                                    <fieldset>
                                        <tbody>
                                            <tr class="even">
                                                <td class="a-left">
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("active") %>'></asp:Label>
                                                </td>
                                                <td class="a-left">
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                                                </td>
                                                <td class="a-left">
                                                    <asp:Label ID="Label5" runat="server" Text='<%# getFullName(DataBinder.Eval(Container.DataItem,"firstname"),DataBinder.Eval(Container.DataItem,"lastname")) %>'></asp:Label>
                                                </td>
                                                <td class="a-left">
                                                    <asp:Label ID="lblLayout" runat="server" Text='<%# Bind("emailaddress") %>'></asp:Label>
                                                </td>
                                                <td class="a-left">
                                                    <asp:Label ID="lblStatus" runat="server" Text='<%# Bind("customer_group") %>'></asp:Label>
                                                </td>
                                                <td class="a-left">
                                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("phone") %>'></asp:Label>
                                                </td>
                                                <td class="a-left">
                                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("fax") %>'></asp:Label>
                                                </td>
                                                <td class="a-left">
                                                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("company") %>'></asp:Label>
                                                </td>
                                                <td class="a-left">
                                                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("position") %>'></asp:Label>
                                                </td>
                                                <td class="a-left">
                                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("modified") %>'></asp:Label>
                                                </td>
                                                <td class="last">
                                                    <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                                                    <a href='members_addnew.aspx?member=<%# Eval("ID") %>'>Edit</a>
                                            </tr>
                                    </fieldset>
                                </AlternatingItemTemplate>
                                <FooterTemplate>
                                    </tbody> </table>
                                </FooterTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <%--<table class="data" id="customerGrid_table" cellspacing="0">
                        <col class="a-center" width="20">
                        <col width="50">
                        <col>
                        <col width="150">
                        <col width="100">
                        <col width="100">
                        <col width="90">
                        <col width="100">
                        <col width="100">
                        <col>
                        <col width="100">
                        <thead>
                            <tr class="headings">
                                <th>
                                    <span class="nobr">&nbsp;</span>
                                </th>
                                <th>
                                    <span class="nobr"><a href="#" name="entity_id" title="asc" class="sort-arrow-desc">
                                        <span class="sort-title">ID</span></a></span>
                                </th>
                                <th>
                                    <span class="nobr"><a href="#" name="name" title="asc" class="not-sort"><span class="sort-title">
                                        Name</span></a></span>
                                </th>
                                <th>
                                    <span class="nobr"><a href="#" name="email" title="asc" class="not-sort"><span class="sort-title">
                                        Email</span></a></span>
                                </th>
                                <th>
                                    <span class="nobr"><a href="#" name="group" title="asc" class="not-sort"><span class="sort-title">
                                        Group</span></a></span>
                                </th>
                                <th>
                                    <span class="nobr"><a href="#" name="Telephone" title="asc" class="not-sort"><span
                                        class="sort-title">Telephone</span></a></span>
                                </th>
                                <th>
                                    <span class="nobr"><a href="#" name="billing_postcode" title="asc" class="not-sort">
                                        <span class="sort-title">ZIP</span></a></span>
                                </th>
                                <th>
                                    <span class="nobr"><a href="#" name="billing_country_id" title="asc" class="not-sort">
                                        <span class="sort-title">Country</span></a></span>
                                </th>
                                <th>
                                    <span class="nobr"><a href="#" name="billing_region" title="asc" class="not-sort"><span
                                        class="sort-title">County</span></a></span>
                                </th>
                                <th>
                                    <span class="nobr"><a href="#" name="customer_since" title="asc" class="not-sort"><span
                                        class="sort-title">Customer Since</span></a></span>
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
                                            <input name="entity_id[from]" id="filter_entity_id_from" value="" class="input-text no-changes"
                                                type="text"></div>
                                        <div class="range-line">
                                            <span class="label">To : </span>
                                            <input name="entity_id[to]" id="filter_entity_id_to" value="" class="input-text no-changes"
                                                type="text"></div>
                                    </div>
                                </th>
                                <th>
                                    <div class="field-100">
                                        <input name="name" id="filter_name" value="" class="input-text no-changes" type="text"></div>
                                </th>
                                <th>
                                    <div class="field-100">
                                        <input name="email" id="filter_email" value="" class="input-text no-changes" type="text"></div>
                                </th>
                                <th>
                                    <select name="group" id="filter_group" class="no-changes">
                                        <option value=""></option>
                                        <option value="1">Standard Account</option>
                                        <option value="5">Trade Buyer</option>
                                    </select>
                                </th>
                                <th>
                                    <div class="field-100">
                                        <input name="Telephone" id="filter_Telephone" value="" class="input-text no-changes"
                                            type="text"></div>
                                </th>
                                <th>
                                    <div class="field-100">
                                        <input name="billing_postcode" id="filter_billing_postcode" value="" class="input-text no-changes"
                                            type="text"></div>
                                </th>
                                <th>
                                    <select name="billing_country_id" id="filter_billing_country_id" class="no-changes">
                                        <option value="">All countries</option>
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
                                </th>
                                <th>
                                    <div class="field-100">
                                        <input name="billing_region" id="filter_billing_region" value="" class="input-text no-changes"
                                            type="text"></div>
                                </th>
                                <th>
                                    <div class="range">
                                        <div class="range-line date">
                                            <span class="label">From:</span>
                                            <input name="customer_since[from]" id="filter_customer_since1245364667.43_from" value=""
                                                class="input-text no-changes" type="text">
                                            <img src="customers_list_files/grid-cal.gif" alt="" class="v-middle" id="filter_customer_since1245364667.43_from_trig"
                                                title="Date selector">
                                        </div>
                                        <div class="range-line date">
                                            <span class="label">To :</span>
                                            <input name="customer_since[to]" id="filter_customer_since1245364667.43_to" value=""
                                                class="input-text no-changes" type="text">
                                            <img src="customers_list_files/grid-cal.gif" alt="" class="v-middle" id="filter_customer_since1245364667.43_to_trig"
                                                title="Date selector">
                                        </div>
                                    </div>
                                    <input name="customer_since[locale]" value="en_GB" type="hidden"><script type="text/javascript">
            Calendar.setup({
                inputField : "filter_customer_since1245364667.43_from",
                ifFormat : "%d/%m/%Y",
                button : "filter_customer_since1245364667.43_from_trig",
                showsTime: false,
                align : "Bl",
                singleClick : true
            });
            Calendar.setup({
                inputField : "filter_customer_since1245364667.43_to",
                ifFormat : "%d/%m/%Y",
                button : "filter_customer_since1245364667.43_to_trig",
                showsTime: false,
                align : "Bl",
                singleClick : true
            });
                                    </script>
                                </th>
                                <th class="no-link last">
                                    &nbsp;
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="even pointer" title="index.php/admin/customer/edit/id/19/key/37f37cd094258bac4076c78647735a8c/">
                                <td class="a-center">
                                    <input name="" value="19" class="massaction-checkbox" type="checkbox">
                                </td>
                                <td class="a-right">
                                    19
                                </td>
                                <td class="">
                                    Tom Wilson
                                </td>
                                <td class="">
                                    thomaswilson_14@hotmail.com
                                </td>
                                <td class="">
                                    Standard Account
                                </td>
                                <td class="">
                                    &nbsp;
                                </td>
                                <td class="">
                                    &nbsp;
                                </td>
                                <td class="">
                                    &nbsp;
                                </td>
                                <td class="">
                                    &nbsp;
                                </td>
                                <td class="a-center">
                                    21 May 2009 12:09:29
                                </td>
                                <td class="last">
                                    <a href="members_membersinformation.aspx">
                                        Edit</a>
                                </td>
                            </tr>
                        </tbody>
                    </table>--%>
                </div>
            </div>
        </div>

       

    </div>
</asp:Content>
