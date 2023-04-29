<%@ Page Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true"
    CodeFile="sales_order_create.aspx.cs" Inherits="admin_sales_order_create" %>

<asp:Content ID="Content3" ContentPlaceHolderID="cph_content" runat="Server">
    <div id="messages">
    </div>
    <div class="content-header">
        <div id="order-header">
            <h3 class="icon-head head-sales-order">
                Create New Order</h3>
        </div>
        <div class="content-buttons-placeholder">
            <p class="content-buttons form-buttons">
                <button id="back_order_top_button" type="button" class="scalable back" onclick="setLocation('index.php/admin/sales_order/index/key/2d9fe41934717a44973ab972d437c5ca/');"
                    style="">
                    <span>Back</span></button>
                <button id="reset_order_top_button" type="button" class="scalable cancel" onclick="deleteConfirm('Are you sure you want to cancel this order?', 'index.php/admin/sales_order_create/cancel/key/bcedc4aa2cf4c23c235770239ed17d25/')"
                        style="display: none;">
                        <span>Cancel</span></button>
                <button id="submit_order_top_button" type="button" class="scalable save" onclick="order.submit()"
                            style="display: none;">
                            <span>Submit Order</span></button></p>
        </div>
    </div>

    

    <form id="edit_form" action="index.php/admin/sales_order_create/save/key/11f36f9be230891f0d25432409e4f152/"
    method="post">
    <div>
        <input name="form_key" value="OBSZfRRZ05NdQvIw" type="hidden"></div>
    <div id="order-messages">
    </div>
    <div id="order-customer-selector" style="display: block;">
        <div class="entry-edit">
            <div class="entry-edit-head">
                <div style="float: right;">
                    <button id="id_ef43b527e79a11173bf33aed161781a9" type="button" class="scalable add"
                        onclick="order.setCustomerId(false)" style="">
                        <span>Create New Customer</span></button></div>
                <h4 class="fieldset-legend">
                    Please select a customer</h4>
            </div>
            <div class="fieldset">
                <div id="sales_order_create_customer_grid">
                    <table class="actions" cellspacing="0">
                        <tbody>
                            <tr>
                                <td class="pager">
                                    Page
                                    <img src="sales_order_create_files/pager_arrow_left_off.gif" alt="Go to Previous page"
                                        class="arrow">
                                    <input name="page" value="1" class="input-text page" onkeypress="sales_order_create_customer_gridJsObject.inputPage(event, '1')"
                                        type="text">
                                    <img src="sales_order_create_files/pager_arrow_right_off.gif" alt="Go to Previous page"
                                        class="arrow">
                                    of 1 pages <span class="separator">|</span> View
                                    <select name="limit" onchange="sales_order_create_customer_gridJsObject.loadByElement(this)">
                                        <option value="20" selected="selected">20</option>
                                        <option value="30">30</option>
                                        <option value="50">50</option>
                                        <option value="100">100</option>
                                        <option value="200">200</option>
                                    </select>
                                    per page<span class="separator">|</span> Total 8 records found <span id="sales_order_create_customer_grid-total-count"
                                        class="no-display">8</span>
                                </td>
                                <td class="filter-actions a-right">
                                    <button id="id_4e95a548b945c57dda2f8c2933b44106" type="button" class="scalable" onclick="sales_order_create_customer_gridJsObject.resetFilter()"
                                        style="">
                                        <span>Reset Filter</span></button>
                                    <button id="id_892dbc4153a8bb2034ae311dacdf32d4" type="button" class="scalable task"
                                            onclick="sales_order_create_customer_gridJsObject.doFilter()" style="">
                                            <span>Search</span></button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="grid">
                        <div class="hor-scroll">
                            <table class="data" id="sales_order_create_customer_grid_table" cellspacing="0">
                                <col width="50">
                                <col>
                                <col width="150">
                                <col width="100">
                                <col width="120">
                                <col width="100">
                                <col width="100">
                                <thead>
                                    <tr class="headings">
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
                                            <span class="nobr"><a href="#" name="Telephone" title="asc" class="not-sort"><span
                                                class="sort-title">Telephone</span></a></span>
                                        </th>
                                        <th>
                                            <span class="nobr"><a href="#" name="billing_postcode" title="asc" class="not-sort">
                                                <span class="sort-title">Post Code</span></a></span>
                                        </th>
                                        <th>
                                            <span class="nobr"><a href="#" name="billing_country_id" title="asc" class="not-sort">
                                                <span class="sort-title">Country</span></a></span>
                                        </th>
                                        <th class="last">
                                            <span class="nobr"><a href="#" name="billing_regione" title="asc" class="not-sort"><span
                                                class="sort-title">County</span></a></span>
                                        </th>
                                    </tr>
                                    <tr class="filter">
                                        <th>
                                            <div class="field-100">
                                                <input name="entity_id" id="filter_entity_id" value="" class="input-text no-changes"
                                                    type="text"></div>
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
                                        <th class="last">
                                            <div class="field-100">
                                                <input name="billing_regione" id="filter_billing_regione" value="" class="input-text no-changes"
                                                    type="text"></div>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="even" title="19">
                                        <td class="a-right">
                                            <asp:HyperLink runat="server" ID="hypid" NavigateUrl="sales_order_create_1.aspx">19</asp:HyperLink>
                                        </td>
                                        <td class="">
                                            Robert Moorehouse
                                        </td>
                                        <td class="">
                                            robert@moorehouse.eu
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
                                        <td class="last">
                                            &nbsp;
                                        </td>
                                    </tr>
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

               

            </div>
        </div>
    </div>
    <div id="order-store-selector" style="display: none;">
        <div class="entry-edit">
            <div class="entry-edit-head">
                <div style="float: right;">
                </div>
                <h4 class="fieldset-legend">
                    Please select a store</h4>
            </div>
            <div class="fieldset">
            </div>
        </div>
    </div>
    <div id="order-data" style="display: none;">
        <div class="page-create-order">
            <p class="switcher">
                <label for="currency_switcher">
                    Order Currency:</label>
                <select id="currency_switcher" name="order[currency]" class="left-col-block" onchange="order.setCurrencyId(this.value)">
                    <option value="GBP" selected="selected">British Pound Sterling</option>
                </select>
            </p>
            <table width="100%" cellspacing="0">
                <tbody>
                    <tr>
                        <td>
                            <div id="order-search" style="display: none;" class="order-search-items">
                                <div class="entry-edit">
                                    <div class="entry-edit-head">
                                        <div style="float: right;">
                                            <button id="id_5a0fe8f0dc0d0d8620b9bceb1369e06e" type="button" class="scalable add"
                                                onclick="order.productGridAddSelected()" style="">
                                                <span>Add Selected Product(s) to Order</span></button></div>
                                        <h4 class="fieldset-legend head-catalog-product icon-head">
                                            Please select products to add</h4>
                                    </div>
                                    <div class="fieldset">
                                        <div id="sales_order_create_search_grid">
                                            <table class="actions" cellspacing="0">
                                                <tbody>
                                                    <tr>
                                                        <td class="pager">
                                                            Page
                                                            <img src="sales_order_create_files/pager_arrow_left_off.gif" alt="Go to Previous page"
                                                                class="arrow">
                                                            <input name="page" value="1" class="input-text page" onkeypress="sales_order_create_search_gridJsObject.inputPage(event, '11')"
                                                                type="text">
                                                            <a href="#" title="Next page" onclick="sales_order_create_search_gridJsObject.setPage('2');return false;">
                                                                <img src="sales_order_create_files/pager_arrow_right.gif" alt="Go to Next page" class="arrow"></a>
                                                            of 11 pages <span class="separator">|</span> View
                                                            <select name="limit" onchange="sales_order_create_search_gridJsObject.loadByElement(this)">
                                                                <option value="20" selected="selected">20</option>
                                                                <option value="30">30</option>
                                                                <option value="50">50</option>
                                                                <option value="100">100</option>
                                                                <option value="200">200</option>
                                                            </select>
                                                            per page<span class="separator">|</span> Total 220 records found <span id="sales_order_create_search_grid-total-count"
                                                                class="no-display">220</span>
                                                        </td>
                                                        <td class="filter-actions a-right">
                                                            <button id="id_52d467b4e5e7c8eabaf9f38ce3c91b8d" type="button" class="scalable" onclick="sales_order_create_search_gridJsObject.resetFilter()"
                                                                style="">
                                                                <span>Reset Filter</span></button>
                                                            <button id="id_7f8304469a1082706ccfa5fa0927fcc9" type="button" class="scalable task"
                                                                    onclick="sales_order_create_search_gridJsObject.doFilter()" style="">
                                                                    <span>Search</span></button>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <div class="grid">
                                                <div class="hor-scroll">
                                                    <table class="data" id="sales_order_create_search_grid_table" cellspacing="0">
                                                        <col width="60">
                                                        <col>
                                                        <col width="80">
                                                        <col width="100">
                                                        <col width="55">
                                                        <col width="1">
                                                        <thead>
                                                            <tr class="headings">
                                                                <th>
                                                                    <span class="nobr"><a href="#" name="entity_id" title="asc" class="sort-arrow-desc">
                                                                        <span class="sort-title">ID</span></a></span>
                                                                </th>
                                                                <th>
                                                                    <span class="nobr"><a href="#" name="name" title="asc" class="not-sort"><span class="sort-title">
                                                                        Product Name</span></a></span>
                                                                </th>
                                                                <th>
                                                                    <span class="nobr"><a href="#" name="sku" title="asc" class="not-sort"><span class="sort-title">
                                                                        SKU</span></a></span>
                                                                </th>
                                                                <th>
                                                                    <span class="nobr"><a href="#" name="price" title="asc" class="not-sort"><span class="sort-title">
                                                                        Price</span></a></span>
                                                                </th>
                                                                <th class="a-center">
                                                                    <span class="nobr">
                                                                        <input name="" onclick="sales_order_create_search_gridJsObject.checkCheckboxes(this)"
                                                                            class="checkbox" title="Select All" type="checkbox"></span>
                                                                </th>
                                                                <th class="no-link last">
                                                                    <span class="nobr">Qty To Add</span>
                                                                </th>
                                                            </tr>
                                                            <tr class="filter">
                                                                <th>
                                                                    <div class="field-100">
                                                                        <input name="entity_id" id="filter_entity_id" value="" class="input-text no-changes"
                                                                            type="text"></div>
                                                                </th>
                                                                <th>
                                                                    <div class="field-100">
                                                                        <input name="name" id="filter_name" value="" class="input-text no-changes" type="text"></div>
                                                                </th>
                                                                <th>
                                                                    <div class="field-100">
                                                                        <input name="sku" id="filter_sku" value="" class="input-text no-changes" type="text"></div>
                                                                </th>
                                                                <th>
                                                                    <div class="range">
                                                                        <div class="range-line">
                                                                            <span class="label">From:</span>
                                                                            <input name="price[from]" id="filter_price_from" value="" class="input-text no-changes"
                                                                                type="text"></div>
                                                                        <div class="range-line">
                                                                            <span class="label">To : </span>
                                                                            <input name="price[to]" id="filter_price_to" value="" class="input-text no-changes"
                                                                                type="text"></div>
                                                                    </div>
                                                                </th>
                                                                <th class="a-center">
                                                                    <span class="head-massaction">
                                                                        <select name="in_products" id="filter_in_products" class="no-changes">
                                                                            <option value="">Any</option>
                                                                            <option value="1">Yes</option>
                                                                            <option value="0">No</option>
                                                                        </select></span>
                                                                </th>
                                                                <th class="no-link last">
                                                                    &nbsp;
                                                                </th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr class="even" title="">
                                                                <td class="">
                                                                    298
                                                                </td>
                                                                <td class="">
                                                                    Jon test 1kg product
                                                                </td>
                                                                <td class="">
                                                                    111222
                                                                </td>
                                                                <td class="a-center a-right">
                                                                    £10.00
                                                                </td>
                                                                <td class="a-center">
                                                                    <input name="" value="298" class="checkbox" type="checkbox">
                                                                </td>
                                                                <td class="a-right last">
                                                                    <input disabled="disabled" name="qty" value="" class="input-text qty" type="text">
                                                                </td>
                                                            </tr>
                                                            <tr title="">
                                                                <td class="">
                                                                    297
                                                                </td>
                                                                <td class="">
                                                                    Thumbturn
                                                                </td>
                                                                <td class="">
                                                                    IFS 4.09
                                                                </td>
                                                                <td class="a-center a-right">
                                                                    £3.00
                                                                </td>
                                                                <td class="a-center">
                                                                    <input name="" value="297" class="checkbox" type="checkbox">
                                                                </td>
                                                                <td class="a-right last">
                                                                    <input disabled="disabled" name="qty" value="" class="input-text qty" type="text">
                                                                </td>
                                                            </tr>
                                                            <tr class="even" title="">
                                                                <td class="">
                                                                    294
                                                                </td>
                                                                <td class="">
                                                                    2-5 Overhead Closer
                                                                </td>
                                                                <td class="">
                                                                    IFN.AR1500
                                                                </td>
                                                                <td class="a-center a-right">
                                                                    £45.00
                                                                </td>
                                                                <td class="a-center">
                                                                    <input name="" value="294" class="checkbox" type="checkbox">
                                                                </td>
                                                                <td class="a-right last">
                                                                    <input disabled="disabled" name="qty" value="" class="input-text qty" type="text">
                                                                </td>
                                                            </tr>
                                                            <tr title="">
                                                                <td class="">
                                                                    293
                                                                </td>
                                                                <td class="">
                                                                    3D Adjustable hinge
                                                                </td>
                                                                <td class="">
                                                                    IFL 7.34
                                                                </td>
                                                                <td class="a-center a-right">
                                                                    £10.50
                                                                </td>
                                                                <td class="a-center">
                                                                    <input name="" value="293" class="checkbox" type="checkbox">
                                                                </td>
                                                                <td class="a-right last">
                                                                    <input disabled="disabled" name="qty" value="" class="input-text qty" type="text">
                                                                </td>
                                                            </tr>
                                                            <tr class="even" title="">
                                                                <td class="">
                                                                    292
                                                                </td>
                                                                <td class="">
                                                                    Thumbturn
                                                                </td>
                                                                <td class="">
                                                                    IFM 56.27
                                                                </td>
                                                                <td class="a-center a-right">
                                                                    £3.95
                                                                </td>
                                                                <td class="a-center">
                                                                    <input name="" value="292" class="checkbox" type="checkbox">
                                                                </td>
                                                                <td class="a-right last">
                                                                    <input disabled="disabled" name="qty" value="" class="input-text qty" type="text">
                                                                </td>
                                                            </tr>
                                                            <tr title="">
                                                                <td class="">
                                                                    291
                                                                </td>
                                                                <td class="">
                                                                    Euro Cylinder
                                                                </td>
                                                                <td class="">
                                                                    IFM 4.05
                                                                </td>
                                                                <td class="a-center a-right">
                                                                    £6.95
                                                                </td>
                                                                <td class="a-center">
                                                                    <input name="" value="291" class="checkbox" type="checkbox">
                                                                </td>
                                                                <td class="a-right last">
                                                                    <input disabled="disabled" name="qty" value="" class="input-text qty" type="text">
                                                                </td>
                                                            </tr>
                                                            <tr class="even" title="">
                                                                <td class="">
                                                                    290
                                                                </td>
                                                                <td class="">
                                                                    Oval Cylinder
                                                                </td>
                                                                <td class="">
                                                                    IFM 4.01
                                                                </td>
                                                                <td class="a-center a-right">
                                                                    £6.95
                                                                </td>
                                                                <td class="a-center">
                                                                    <input name="" value="290" class="checkbox" type="checkbox">
                                                                </td>
                                                                <td class="a-right last">
                                                                    <input disabled="disabled" name="qty" value="" class="input-text qty" type="text">
                                                                </td>
                                                            </tr>
                                                            <tr title="">
                                                                <td class="">
                                                                    289
                                                                </td>
                                                                <td class="">
                                                                    Turn/Release
                                                                </td>
                                                                <td class="">
                                                                    IFH50.08PCP.MNP
                                                                </td>
                                                                <td class="a-center a-right">
                                                                    £5.95
                                                                </td>
                                                                <td class="a-center">
                                                                    <input name="" value="289" class="checkbox" type="checkbox">
                                                                </td>
                                                                <td class="a-right last">
                                                                    <input disabled="disabled" name="qty" value="" class="input-text qty" type="text">
                                                                </td>
                                                            </tr>
                                                            <tr class="even" title="">
                                                                <td class="">
                                                                    288
                                                                </td>
                                                                <td class="">
                                                                    Std Key Escutch.
                                                                </td>
                                                                <td class="">
                                                                    IFH50.06PCP.MNP
                                                                </td>
                                                                <td class="a-center a-right">
                                                                    £3.55
                                                                </td>
                                                                <td class="a-center">
                                                                    <input name="" value="288" class="checkbox" type="checkbox">
                                                                </td>
                                                                <td class="a-right last">
                                                                    <input disabled="disabled" name="qty" value="" class="input-text qty" type="text">
                                                                </td>
                                                            </tr>
                                                            <tr title="">
                                                                <td class="">
                                                                    287
                                                                </td>
                                                                <td class="">
                                                                    Oval Escutcheon
                                                                </td>
                                                                <td class="">
                                                                    IFH50.05PCP.MNP
                                                                </td>
                                                                <td class="a-center a-right">
                                                                    £3.55
                                                                </td>
                                                                <td class="a-center">
                                                                    <input name="" value="287" class="checkbox" type="checkbox">
                                                                </td>
                                                                <td class="a-right last">
                                                                    <input disabled="disabled" name="qty" value="" class="input-text qty" type="text">
                                                                </td>
                                                            </tr>
                                                            <tr class="even" title="">
                                                                <td class="">
                                                                    286
                                                                </td>
                                                                <td class="">
                                                                    Euro Escutcheon
                                                                </td>
                                                                <td class="">
                                                                    IFH50.07PCP.MNP
                                                                </td>
                                                                <td class="a-center a-right">
                                                                    £3.55
                                                                </td>
                                                                <td class="a-center">
                                                                    <input name="" value="286" class="checkbox" type="checkbox">
                                                                </td>
                                                                <td class="a-right last">
                                                                    <input disabled="disabled" name="qty" value="" class="input-text qty" type="text">
                                                                </td>
                                                            </tr>
                                                            <tr title="">
                                                                <td class="">
                                                                    285
                                                                </td>
                                                                <td class="">
                                                                    Bathroom Turn/Release
                                                                </td>
                                                                <td class="">
                                                                    IFH 20.08
                                                                </td>
                                                                <td class="a-center a-right">
                                                                    £4.95
                                                                </td>
                                                                <td class="a-center">
                                                                    <input name="" value="285" class="checkbox" type="checkbox">
                                                                </td>
                                                                <td class="a-right last">
                                                                    <input disabled="disabled" name="qty" value="" class="input-text qty" type="text">
                                                                </td>
                                                            </tr>
                                                            <tr class="even" title="">
                                                                <td class="">
                                                                    284
                                                                </td>
                                                                <td class="">
                                                                    Escutcheon
                                                                </td>
                                                                <td class="">
                                                                    IFH 20.07
                                                                </td>
                                                                <td class="a-center a-right">
                                                                    £2.95
                                                                </td>
                                                                <td class="a-center">
                                                                    <input name="" value="284" class="checkbox" type="checkbox">
                                                                </td>
                                                                <td class="a-right last">
                                                                    <input disabled="disabled" name="qty" value="" class="input-text qty" type="text">
                                                                </td>
                                                            </tr>
                                                            <tr title="">
                                                                <td class="">
                                                                    283
                                                                </td>
                                                                <td class="">
                                                                    Lynx
                                                                </td>
                                                                <td class="">
                                                                    IFH20.20
                                                                </td>
                                                                <td class="a-center a-right">
                                                                    £12.95
                                                                </td>
                                                                <td class="a-center">
                                                                    <input name="" value="283" class="checkbox" type="checkbox">
                                                                </td>
                                                                <td class="a-right last">
                                                                    <input disabled="disabled" name="qty" value="" class="input-text qty" type="text">
                                                                </td>
                                                            </tr>
                                                            <tr class="even" title="">
                                                                <td class="">
                                                                    282
                                                                </td>
                                                                <td class="">
                                                                    Turn/Release
                                                                </td>
                                                                <td class="">
                                                                    IFH20.32
                                                                </td>
                                                                <td class="a-center a-right">
                                                                    £4.95
                                                                </td>
                                                                <td class="a-center">
                                                                    <input name="" value="282" class="checkbox" type="checkbox">
                                                                </td>
                                                                <td class="a-right last">
                                                                    <input disabled="disabled" name="qty" value="" class="input-text qty" type="text">
                                                                </td>
                                                            </tr>
                                                            <tr title="">
                                                                <td class="">
                                                                    281
                                                                </td>
                                                                <td class="">
                                                                    Std Key Escutch.
                                                                </td>
                                                                <td class="">
                                                                    IFH20.29
                                                                </td>
                                                                <td class="a-center a-right">
                                                                    £2.95
                                                                </td>
                                                                <td class="a-center">
                                                                    <input name="" value="281" class="checkbox" type="checkbox">
                                                                </td>
                                                                <td class="a-right last">
                                                                    <input disabled="disabled" name="qty" value="" class="input-text qty" type="text">
                                                                </td>
                                                            </tr>
                                                            <tr class="even" title="">
                                                                <td class="">
                                                                    280
                                                                </td>
                                                                <td class="">
                                                                    Oval Escutcheon
                                                                </td>
                                                                <td class="">
                                                                    IFH20.30
                                                                </td>
                                                                <td class="a-center a-right">
                                                                    £2.95
                                                                </td>
                                                                <td class="a-center">
                                                                    <input name="" value="280" class="checkbox" type="checkbox">
                                                                </td>
                                                                <td class="a-right last">
                                                                    <input disabled="disabled" name="qty" value="" class="input-text qty" type="text">
                                                                </td>
                                                            </tr>
                                                            <tr title="">
                                                                <td class="">
                                                                    279
                                                                </td>
                                                                <td class="">
                                                                    Euro Escutcheon
                                                                </td>
                                                                <td class="">
                                                                    IFH20.31
                                                                </td>
                                                                <td class="a-center a-right">
                                                                    £2.95
                                                                </td>
                                                                <td class="a-center">
                                                                    <input name="" value="279" class="checkbox" type="checkbox">
                                                                </td>
                                                                <td class="a-right last">
                                                                    <input disabled="disabled" name="qty" value="" class="input-text qty" type="text">
                                                                </td>
                                                            </tr>
                                                            <tr class="even" title="">
                                                                <td class="">
                                                                    278
                                                                </td>
                                                                <td class="">
                                                                    Turn/Release
                                                                </td>
                                                                <td class="">
                                                                    IFH20.18
                                                                </td>
                                                                <td class="a-center a-right">
                                                                    £4.95
                                                                </td>
                                                                <td class="a-center">
                                                                    <input name="" value="278" class="checkbox" type="checkbox">
                                                                </td>
                                                                <td class="a-right last">
                                                                    <input disabled="disabled" name="qty" value="" class="input-text qty" type="text">
                                                                </td>
                                                            </tr>
                                                            <tr title="">
                                                                <td class="">
                                                                    277
                                                                </td>
                                                                <td class="">
                                                                    Std Key Escutch.
                                                                </td>
                                                                <td class="">
                                                                    IFH20.15
                                                                </td>
                                                                <td class="a-center a-right">
                                                                    £2.95
                                                                </td>
                                                                <td class="a-center">
                                                                    <input name="" value="277" class="checkbox" type="checkbox">
                                                                </td>
                                                                <td class="a-right last">
                                                                    <input disabled="disabled" name="qty" value="" class="input-text qty" type="text">
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>

                                        

                                    </div>
                                </div>
                            </div>
                            <div id="order-items">
                                <div class="entry-edit">
                                    <div class="entry-edit-head">
                                        <h4 class="icon-head head-cart">
                                            Items Ordered</h4>
                                        <div class="form-buttons">
                                            <button id="id_8a473a6a5a6507a048ab298e090b3035" type="button" class="scalable add"
                                                onclick="order.productGridShow(this)" style="">
                                                <span>Add Products</span></button></div>
                                    </div>
                                    <div class="fieldset">
                                        <p class="a-center">
                                            No ordered items</p>
                                    </div>
                                </div>
                            </div>
                            <div id="order-form_account">
                                <div class="entry-edit">
                                    <div class="entry-edit-head">
                                        <h4 class="icon-head fieldset-legend head-account">
                                            Account Information</h4>
                                    </div>
                                    <div id="customer_account_fieds">
                                        <div class="fieldset" id="main">
                                            <div class="hor-scroll">
                                                <table class="form-list" cellspacing="0">
                                                    <tbody>
                                                        <tr>
                                                            <td class="label">
                                                                <label for="group_id">
                                                                    Customer Group <span class="required">*</span></label>
                                                            </td>
                                                            <td class="value">
                                                                <select id="group_id" name="order[account][group_id]" class="required-entry required-entry select">
                                                                    <option value="1">Standard Account</option>
                                                                    <option value="5">Trade Buyer</option>
                                                                </select>
                                                            </td>
                                                            <td id="note_group_id">
                                                                <small>&nbsp;</small>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="label">
                                                                <label for="email">
                                                                    Email <span class="required">*</span></label>
                                                            </td>
                                                            <td class="value">
                                                                <input id="email" name="order[account][email]" value="" class="required-entry required-entry input-text"
                                                                    type="text">
                                                            </td>
                                                            <td id="note_email">
                                                                <small>&nbsp;</small>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>

                                    <script type="text/javascript">order.accountFieldsBind($('customer_account_fieds'))</script>

                                </div>
                            </div>
                            <div id="order-addresses">
                                <div id="order-billing_address" class="box-left">

                                    <script type="text/javascript">
    order.billingAddressContainer = 'order-billing_address_fields';
                                    </script>

                                    <div class="entry-edit">
                                        <div class="entry-edit-head">
                                            <h4 class="icon-head fieldset-legend head-billing-address">
                                                Billing Address</h4>
                                        </div>
                                        <fieldset class="np">
                                            <div class="order-choose-address">
                                                Select from existing customer addresses:<br>
                                                <select id="order-billing_address_customer_address_id" name="order[billing_address][customer_address_id]"
                                                    style="width: 97.5%;" onchange="order.selectAddress(this, 'order-billing_address_fields')">
                                                    <option value="">Add New Address</option>
                                                </select>
                                                <br>
                                                &nbsp;
                                            </div>
                                            <div class="order-address" id="order-billing_address_fields">
                                                <div class="content">
                                                    <div class="hor-scroll">
                                                        <table class="form-list" cellspacing="0">
                                                            <tbody>
                                                                <tr>
                                                                    <td class="label">
                                                                        <label for="order-billing_address_city">
                                                                            City <span class="required">*</span></label>
                                                                    </td>
                                                                    <td class="value">
                                                                        <input id="order-billing_address_city" name="order[billing_address][city]" value=""
                                                                            class="required-entry required-entry input-text" type="text">
                                                                    </td>
                                                                    <td id="note_city">
                                                                        <small>&nbsp;</small>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="label">
                                                                        <label for="order-billing_address_country_id">
                                                                            Country <span class="required">*</span></label>
                                                                    </td>
                                                                    <td class="value">
                                                                        <select id="order-billing_address_country_id" name="order[billing_address][country_id]"
                                                                            class="required-entry required-entry select">
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
                                                                        <label for="order-billing_address_region">
                                                                            County <span style="display: none;" class="required">*</span></label>
                                                                    </td>
                                                                    <td class="value">
                                                                        <input id="order-billing_address_region" name="order[billing_address][region]" value=""
                                                                            class="input-text" type="text">
                                                                        <select disabled="disabled" id="order-billing_address_region_id" name="order[billing_address][region_id]"
                                                                            class="select required-entry" style="display: none;">
                                                                            <option value="">Please select</option>
                                                                        </select>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="label">
                                                                        <label for="order-billing_address_telephone">
                                                                            Telephone <span class="required">*</span></label>
                                                                    </td>
                                                                    <td class="value">
                                                                        <input id="order-billing_address_telephone" name="order[billing_address][telephone]"
                                                                            value="" class="required-entry required-entry input-text" type="text">
                                                                    </td>
                                                                    <td id="note_telephone">
                                                                        <small>&nbsp;</small>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="label">
                                                                        <label for="order-billing_address_postcode">
                                                                            Post Code <span class="required">*</span></label>
                                                                    </td>
                                                                    <td class="value">
                                                                        <input id="order-billing_address_postcode" name="order[billing_address][postcode]"
                                                                            value="" class="required-entry required-entry input-text" type="text">
                                                                    </td>
                                                                    <td id="note_postcode">
                                                                        <small>&nbsp;</small>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="label">
                                                                        <label for="order-billing_address_prefix">
                                                                            Prefix</label>
                                                                    </td>
                                                                    <td class="value">
                                                                        <input id="order-billing_address_prefix" name="order[billing_address][prefix]" value=""
                                                                            class="input-text" type="text">
                                                                    </td>
                                                                    <td id="note_prefix">
                                                                        <small>&nbsp;</small>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="label">
                                                                        <label for="order-billing_address_firstname">
                                                                            First Name <span class="required">*</span></label>
                                                                    </td>
                                                                    <td class="value">
                                                                        <input id="order-billing_address_firstname" name="order[billing_address][firstname]"
                                                                            value="" class="required-entry required-entry input-text" type="text">
                                                                    </td>
                                                                    <td id="note_firstname">
                                                                        <small>&nbsp;</small>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="label">
                                                                        <label for="order-billing_address_middlename">
                                                                            Middle Name/Initial</label>
                                                                    </td>
                                                                    <td class="value">
                                                                        <input id="order-billing_address_middlename" name="order[billing_address][middlename]"
                                                                            value="" class="input-text" type="text">
                                                                    </td>
                                                                    <td id="note_middlename">
                                                                        <small>&nbsp;</small>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="label">
                                                                        <label for="order-billing_address_lastname">
                                                                            Last Name <span class="required">*</span></label>
                                                                    </td>
                                                                    <td class="value">
                                                                        <input id="order-billing_address_lastname" name="order[billing_address][lastname]"
                                                                            value="" class="required-entry required-entry input-text" type="text">
                                                                    </td>
                                                                    <td id="note_lastname">
                                                                        <small>&nbsp;</small>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="label">
                                                                        <label for="order-billing_address_suffix">
                                                                            Suffix</label>
                                                                    </td>
                                                                    <td class="value">
                                                                        <input id="order-billing_address_suffix" name="order[billing_address][suffix]" value=""
                                                                            class="input-text" type="text">
                                                                    </td>
                                                                    <td id="note_suffix">
                                                                        <small>&nbsp;</small>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="label">
                                                                        <label for="order-billing_address_company">
                                                                            Company</label>
                                                                    </td>
                                                                    <td class="value">
                                                                        <input id="order-billing_address_company" name="order[billing_address][company]"
                                                                            value="" class="input-text" type="text">
                                                                    </td>
                                                                    <td id="note_company">
                                                                        <small>&nbsp;</small>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="label">
                                                                        <label for="order-billing_address_street0">
                                                                            Street Address <span class="required">*</span></label>
                                                                    </td>
                                                                    <td class="value">
                                                                        <div class="multi-input">
                                                                            <input id="order-billing_address_street0" name="order[billing_address][street][0]"
                                                                                value="" class="input-text required-entry" type="text">
                                                                        </div>
                                                                        <div class="multi-input">
                                                                            <input id="order-billing_address_street1" name="order[billing_address][street][1]"
                                                                                value="" class="input-text" type="text">
                                                                        </div>
                                                                    </td>
                                                                    <td id="note_street">
                                                                        <small>&nbsp;</small>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="label">
                                                                        <label for="order-billing_address_fax">
                                                                            Fax</label>
                                                                    </td>
                                                                    <td class="value">
                                                                        <input id="order-billing_address_fax" name="order[billing_address][fax]" value=""
                                                                            class="input-text" type="text">
                                                                    </td>
                                                                    <td id="note_fax">
                                                                        <small>&nbsp;</small>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                                <div class="order-save-in-address-book">
                                                    <input name="order[billing_address][save_in_address_book]" id="order-billing_address_save_in_address_book"
                                                        value="1" type="checkbox">
                                                    <label for="order-billing_address_save_in_address_book">
                                                        Save in address book</label>
                                                </div>
                                            </div>
                                            <div style="display: none;" id="address-billing-overlay" class="overlay">
                                                <span>Shipping address selection is not applicable</span></div>

                                            

                                        </fieldset>
                                    </div>
                                </div>
                                <div id="order-shipping_address" class="box-right">

                                   

                                    <div class="entry-edit">
                                        <div class="entry-edit-head">
                                            <h4 class="icon-head fieldset-legend head-shipping-address">
                                                Shipping Address</h4>
                                        </div>
                                        <fieldset class="np">
                                            <div class="order-choose-address">
                                                Select from existing customer addresses:<br>
                                                <select id="order-shipping_address_customer_address_id" name="order[shipping_address][customer_address_id]"
                                                    style="width: 97.5%;" onchange="order.selectAddress(this, 'order-shipping_address_fields')">
                                                    <option value="">Add New Address</option>
                                                </select>
                                                <br>
                                                <input id="order-shipping_same_as_billing" name="shipping_same_as_billing" onchange="order.setShippingAsBilling(this.checked)"
                                                    type="checkbox">
                                                <label for="order-shipping_same_as_billing" class="no-float">
                                                    Same As Billing Address</label>
                                            </div>
                                            <div class="order-address" id="order-shipping_address_fields">
                                                <div class="content">
                                                    <div class="hor-scroll">
                                                        <table class="form-list" cellspacing="0">
                                                            <tbody>
                                                                <tr>
                                                                    <td class="label">
                                                                        <label for="order-shipping_address_city">
                                                                            City <span class="required">*</span></label>
                                                                    </td>
                                                                    <td class="value">
                                                                        <input id="order-shipping_address_city" name="order[shipping_address][city]" value=""
                                                                            class="required-entry required-entry input-text" type="text">
                                                                    </td>
                                                                    <td id="note_city">
                                                                        <small>&nbsp;</small>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="label">
                                                                        <label for="order-shipping_address_country_id">
                                                                            Country <span class="required">*</span></label>
                                                                    </td>
                                                                    <td class="value">
                                                                        <select id="order-shipping_address_country_id" name="order[shipping_address][country_id]"
                                                                            class="required-entry required-entry select">
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
                                                                        <label for="order-shipping_address_region">
                                                                            County <span style="display: none;" class="required">*</span></label>
                                                                    </td>
                                                                    <td class="value">
                                                                        <input id="order-shipping_address_region" name="order[shipping_address][region]"
                                                                            value="" class="input-text" type="text">
                                                                        <select disabled="disabled" id="order-shipping_address_region_id" name="order[shipping_address][region_id]"
                                                                            class="select required-entry" style="display: none;">
                                                                            <option value="">Please select</option>
                                                                        </select>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="label">
                                                                        <label for="order-shipping_address_telephone">
                                                                            Telephone <span class="required">*</span></label>
                                                                    </td>
                                                                    <td class="value">
                                                                        <input id="order-shipping_address_telephone" name="order[shipping_address][telephone]"
                                                                            value="" class="required-entry required-entry input-text" type="text">
                                                                    </td>
                                                                    <td id="note_telephone">
                                                                        <small>&nbsp;</small>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="label">
                                                                        <label for="order-shipping_address_postcode">
                                                                            Post Code <span class="required">*</span></label>
                                                                    </td>
                                                                    <td class="value">
                                                                        <input id="order-shipping_address_postcode" name="order[shipping_address][postcode]"
                                                                            value="" class="required-entry required-entry input-text" type="text">
                                                                    </td>
                                                                    <td id="note_postcode">
                                                                        <small>&nbsp;</small>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="label">
                                                                        <label for="order-shipping_address_prefix">
                                                                            Prefix</label>
                                                                    </td>
                                                                    <td class="value">
                                                                        <input id="order-shipping_address_prefix" name="order[shipping_address][prefix]"
                                                                            value="" class="input-text" type="text">
                                                                    </td>
                                                                    <td id="note_prefix">
                                                                        <small>&nbsp;</small>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="label">
                                                                        <label for="order-shipping_address_firstname">
                                                                            First Name <span class="required">*</span></label>
                                                                    </td>
                                                                    <td class="value">
                                                                        <input id="order-shipping_address_firstname" name="order[shipping_address][firstname]"
                                                                            value="" class="required-entry required-entry input-text" type="text">
                                                                    </td>
                                                                    <td id="note_firstname">
                                                                        <small>&nbsp;</small>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="label">
                                                                        <label for="order-shipping_address_middlename">
                                                                            Middle Name/Initial</label>
                                                                    </td>
                                                                    <td class="value">
                                                                        <input id="order-shipping_address_middlename" name="order[shipping_address][middlename]"
                                                                            value="" class="input-text" type="text">
                                                                    </td>
                                                                    <td id="note_middlename">
                                                                        <small>&nbsp;</small>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="label">
                                                                        <label for="order-shipping_address_lastname">
                                                                            Last Name <span class="required">*</span></label>
                                                                    </td>
                                                                    <td class="value">
                                                                        <input id="order-shipping_address_lastname" name="order[shipping_address][lastname]"
                                                                            value="" class="required-entry required-entry input-text" type="text">
                                                                    </td>
                                                                    <td id="note_lastname">
                                                                        <small>&nbsp;</small>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="label">
                                                                        <label for="order-shipping_address_suffix">
                                                                            Suffix</label>
                                                                    </td>
                                                                    <td class="value">
                                                                        <input id="order-shipping_address_suffix" name="order[shipping_address][suffix]"
                                                                            value="" class="input-text" type="text">
                                                                    </td>
                                                                    <td id="note_suffix">
                                                                        <small>&nbsp;</small>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="label">
                                                                        <label for="order-shipping_address_company">
                                                                            Company</label>
                                                                    </td>
                                                                    <td class="value">
                                                                        <input id="order-shipping_address_company" name="order[shipping_address][company]"
                                                                            value="" class="input-text" type="text">
                                                                    </td>
                                                                    <td id="note_company">
                                                                        <small>&nbsp;</small>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="label">
                                                                        <label for="order-shipping_address_street0">
                                                                            Street Address <span class="required">*</span></label>
                                                                    </td>
                                                                    <td class="value">
                                                                        <div class="multi-input">
                                                                            <input id="order-shipping_address_street0" name="order[shipping_address][street][0]"
                                                                                value="" class="input-text required-entry" type="text">
                                                                        </div>
                                                                        <div class="multi-input">
                                                                            <input id="order-shipping_address_street1" name="order[shipping_address][street][1]"
                                                                                value="" class="input-text" type="text">
                                                                        </div>
                                                                    </td>
                                                                    <td id="note_street">
                                                                        <small>&nbsp;</small>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td class="label">
                                                                        <label for="order-shipping_address_fax">
                                                                            Fax</label>
                                                                    </td>
                                                                    <td class="value">
                                                                        <input id="order-shipping_address_fax" name="order[shipping_address][fax]" value=""
                                                                            class="input-text" type="text">
                                                                    </td>
                                                                    <td id="note_fax">
                                                                        <small>&nbsp;</small>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                                <div class="order-save-in-address-book">
                                                    <input name="order[shipping_address][save_in_address_book]" id="order-shipping_address_save_in_address_book"
                                                        value="1" type="checkbox">
                                                    <label for="order-shipping_address_save_in_address_book">
                                                        Save in address book</label>
                                                </div>
                                            </div>
                                            <div style="display: none; position: absolute; background-color: rgb(153, 153, 153);
                                                opacity: 0.8; width: 0px; height: 0px; top: 0px; left: 0px;" id="address-shipping-overlay"
                                                class="overlay">
                                                <span>Shipping address selection is not applicable</span>
                                            </div>


                                        </fieldset>
                                    </div>
                                </div>
                            </div>
                            <div class="clear">
                            </div>
                            <div id="order-methods">
                                <div id="order-billing_method" class="box-left payments">
                                    <div class="entry-edit">
                                        <div class="entry-edit-head">
                                            <div style="float: right;">
                                            </div>
                                            <h4 class="fieldset-legend head-payment-method icon-head">
                                                Payment Method</h4>
                                        </div>
                                        <div class="fieldset">
                                            <dl class="payment-methods">
                                                <dt>
                                                    <input id="p_method_checkmo" value="checkmo" name="payment[method]" title="Check / Money order"
                                                        onclick="payment.switchMethod('checkmo')" type="radio">
                                                    <label for="p_method_checkmo">
                                                        Check / Money order</label>
                                                </dt>
                                                <dd>
                                                    <ul id="payment_form_checkmo" style="display: none;">
                                                        <li>
                                                            <div class="input-box">
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </dd>
                                                <dt>
                                                    <input id="p_method_ccsave" value="ccsave" name="payment[method]" title="Credit Card (saved)"
                                                        onclick="payment.switchMethod('ccsave')" type="radio">
                                                    <label for="p_method_ccsave">
                                                        Credit Card (saved)</label>
                                                </dt>
                                                <dd>
                                                    <ul id="payment_form_ccsave" style="display: none;">
                                                        <li>
                                                            <div class="input-box">
                                                                <label for="ccsave_cc_owner">
                                                                    Name on Card <span class="required">*</span></label><br>
                                                                <input disabled="disabled" title="Name on Card" class="required-entry input-text"
                                                                    id="ccsave_cc_owner" name="payment[cc_owner]" value="" type="text">
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="input-box">
                                                                <label for="ccsave_cc_type">
                                                                    Credit Card Type <span class="required">*</span></label><br>
                                                                <select disabled="disabled" id="ccsave_cc_type" name="payment[cc_type]" class="required-entry validate-cc-type-select">
                                                                    <option value=""></option>
                                                                    <option value="AE">American Express</option>
                                                                    <option value="VI">Visa</option>
                                                                    <option value="MC">Master Card</option>
                                                                    <option value="DI">Discover</option>
                                                                </select>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="input-box">
                                                                <label for="ccsave_cc_number">
                                                                    Credit Card Number <span class="required">*</span></label><br>
                                                                <input disabled="disabled" id="ccsave_cc_number" name="payment[cc_number]" title="Credit Card Number"
                                                                    class="input-text validate-cc-number" value="" type="text">
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="input-box">
                                                                <label for="ccsave_expiration">
                                                                    Expiration Date <span class="required">*</span></label><br>
                                                                <select disabled="disabled" id="ccsave_expiration" style="width: 140px;" name="payment[cc_exp_month]"
                                                                    class="required-entry">
                                                                    <option value="0" selected="selected">Month</option>
                                                                    <option value="1">01 - January</option>
                                                                    <option value="2">02 - February</option>
                                                                    <option value="3">03 - March</option>
                                                                    <option value="4">04 - April</option>
                                                                    <option value="5">05 - May</option>
                                                                    <option value="6">06 - June</option>
                                                                    <option value="7">07 - July</option>
                                                                    <option value="8">08 - August</option>
                                                                    <option value="9">09 - September</option>
                                                                    <option value="10">10 - October</option>
                                                                    <option value="11">11 - November</option>
                                                                    <option value="12">12 - December</option>
                                                                </select>
                                                                <select disabled="disabled" id="ccsave_expiration_yr" style="width: 103px;" name="payment[cc_exp_year]"
                                                                    class="required-entry">
                                                                    <option value="" selected="selected">Year</option>
                                                                    <option value="2009">2009</option>
                                                                    <option value="2010">2010</option>
                                                                    <option value="2011">2011</option>
                                                                    <option value="2012">2012</option>
                                                                    <option value="2013">2013</option>
                                                                    <option value="2014">2014</option>
                                                                    <option value="2015">2015</option>
                                                                    <option value="2016">2016</option>
                                                                    <option value="2017">2017</option>
                                                                    <option value="2018">2018</option>
                                                                    <option value="2019">2019</option>
                                                                </select>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </dd>
                                                <dt>
                                                    <input id="p_method_free" value="free" name="payment[method]" title="No Payment Information Required"
                                                        onclick="payment.switchMethod('free')" type="radio">
                                                    <label for="p_method_free">
                                                        No Payment Information Required</label>
                                                </dt>
                                                <dd>
                                                </dd>
                                            </dl>

                                           
                                        </div>
                                    </div>
                                </div>
                                <div id="order-shipping_method" class="box-right">
                                    <div class="entry-edit">
                                        <div class="entry-edit-head">
                                            <div style="float: right;">
                                            </div>
                                            <h4 class="fieldset-legend head-shipping-method icon-head">
                                                Shipping Method</h4>
                                        </div>
                                        <div class="fieldset">
                                            <div id="order-shipping-method-summary">
                                                <a href="#" onclick="order.loadShippingRates();return false">Get shipping methods and
                                                    rates </a>
                                            </div>
                                            <div style="display: none; position: absolute; background-color: rgb(153, 153, 153);
                                                opacity: 0.8; width: 0px; height: 0px; top: 0px; left: 0px;" id="shipping-method-overlay"
                                                class="overlay">
                                                <span>Shipping method selection is not applicable</span>
                                            </div>

                                           

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="order-giftmessage">
                            </div>
                            <div class="clear">
                            </div>
                            <div class="box-left entry-edit">
                                <div class="entry-edit-head">
                                    <h4>
                                        Order History</h4>
                                </div>
                                <fieldset id="order-comment">
                                    <!--<h4 class="icon-head fieldset-legend head-comment">Order Comment</h4>-->
                                    <label for="order-comment">
                                        Order Comments</label><br>
                                    <textarea style="width: 98%; height: 8em;" id="order-comment" name="order[comment][customer_note]"
                                        rows="2" cols="15"></textarea>

                                    
                                </fieldset>
                            </div>
                            <div class="box-right entry-edit">
                                <div class="entry-edit-head">
                                    <h4>
                                        Order Totals</h4>
                                </div>
                                <div id="order-totals" class="order-totals">
                                    <!--<h4 class="icon-head fieldset-legend head-money">Order Totals</h4>-->
                                    <table width="100%" cellpadding="8" cellspacing="0">
                                        <tbody>
                                            <tr class="subtotal">
                                                <td style="" class="a-right" colspan="1">
                                                    Subtotal
                                                </td>
                                                <td style="" class="a-right">
                                                    <span class="price">£0.00</span>
                                                </td>
                                            </tr>
                                            <tr onclick="expandDetails(this, '.tax-details-1')" class="tax tax-total">
                                                <td style="" class="a-right" colspan="1">
                                                    <div class="tax-collapse">
                                                        VAT</div>
                                                </td>
                                                <td style="" class="a-right">
                                                    <span class="price">£0.00</span>
                                                </td>
                                            </tr>
                                            <tr class="grand_total">
                                                <td style="" class="a-right" colspan="1">
                                                    Grand Total
                                                </td>
                                                <td style="" class="a-right">
                                                    <span class="price">£0.00</span>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <div class="divider">
                                    </div>
                                    <div class="order-totals-bottom">
                                        <p>
                                            <label for="notify_customer" class="normal">
                                                Append Comments</label>
                                            <input id="notify_customer" name="order[comment][customer_note_notify]" value="1"
                                                type="checkbox">
                                        </p>
                                        <p>
                                            <label for="send_confirmation" class="normal">
                                                Email Order Confirmation</label>
                                            <input id="send_confirmation" name="order[send_confirmation]" value="1" checked="checked"
                                                type="checkbox">
                                        </p>
                                        <p>
                                            <button id="id_1023a726558af8ed275b15449068554d" type="button" class="scalable" onclick="order.submit()"
                                                style="">
                                                <span>Submit Order</span></button></p>
                                    </div>
                                </div>
                            </div>
                            <div class="clear">
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
