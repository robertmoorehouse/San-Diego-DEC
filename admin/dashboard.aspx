<%@ Page Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="admin_dashboard" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cph_content" Runat="Server">
<div class="dashboard-container">
        <table width="100%" cellspacing="25">
        <tbody><tr>
            <td>                        <div class="entry-edit">
                <div class="entry-edit-head"><h4>Lifetime Sales</h4></div>
                <fieldset class="a-center bold">
                    <span class="nowrap" style="font-size: 18px;"><span class="price">£1,950.64</span><span style="font-size: 14px; color: rgb(104, 104, 104);"></span></span>

                </fieldset>
            </div>
                        <div class="entry-edit">
                <div class="entry-edit-head"><h4>Average Orders</h4></div>
                <fieldset class="a-center bold">
                    <span class="nowrap" style="font-size: 18px;"><span class="price">£150.04</span><span style="font-size: 14px; color: rgb(104, 104, 104);"></span></span>
                </fieldset>
            </div>

                            <div class="entry-edit">
                    <div class="entry-edit-head"><h4>Last 5 Orders</h4></div>
                    <fieldset class="np"><div class="grid np">
<table style="border: 0pt none ;" id="lastOrdersGrid_table" cellspacing="0">
        <col>
        <col>
        <col width="100">
                <thead>
                            <tr class="headings">

                                    <th class="no-link"><span class="nobr">Customer</span></th>
                                    <th class="no-link"><span class="nobr">Items</span></th>
                                    <th class="no-link last"><span class="nobr">Grand Total</span></th>
                                </tr>
                    </thead>
        <tbody>
                <tr class="even" title="view/order_id/17/key/048cdf2e7a8c7d53f4febe87f82fb558/">

                    <td class="">robert moorehouse</td>
                    <td class="a-right">1</td>
                    <td class="a-right a-right last">£77.25</td>
                </tr>
            <tr title="view/order_id/16/key/048cdf2e7a8c7d53f4febe87f82fb558/">
                    <td class="">mike slater</td>
                    <td class="a-right">2</td>

                    <td class="a-right a-right last">£505.72</td>
                </tr>
            <tr class="even" title="view/order_id/15/key/048cdf2e7a8c7d53f4febe87f82fb558/">
                    <td class="">hassan</td>
                    <td class="a-right">2</td>
                    <td class="a-right a-right last">£505.72</td>
                </tr>

            <tr title="view/order_id/14/key/048cdf2e7a8c7d53f4febe87f82fb558/">
                    <td class="">kim</td>
                    <td class="a-right">2</td>
                    <td class="a-right a-right last">£505.72</td>
                </tr>
            <tr class="even" title="view/order_id/13/key/048cdf2e7a8c7d53f4febe87f82fb558/">
                    <td class="">josh</td>

                    <td class="a-right">1</td>
                    <td class="a-right a-right last">£14.42</td>
                </tr>
            </tbody>
</table>
</div>

</fieldset>
                </div>

                <div class="entry-edit">
                    <div class="entry-edit-head"><h4>Last 5 Search Terms</h4></div>
                    <fieldset class="np"><div class="grid np">
<table style="border: 0pt none ;" id="lastSearchGrid_table" cellspacing="0">
        <col />
        <col width="100" />
        <col width="100" />
                <thead>
                            <tr class="headings">

                                    <th class="no-link"><span class="nobr">Search Term</span></th>
                                    <th class="no-link"><span class="nobr">Results</span></th>
                                    <th class="no-link last"><span class="nobr">Number of Uses</span></th>
                                </tr>
                    </thead>
        <tbody>
                <tr class="even" title="/admin/catalog_search/edit/id/67/key/82a69984607c20d8bc1936b33d9a03e2/">

                    <td class="">scorpio</td>
                    <td class="a-right">1</td>
                    <td class="a-right last">1</td>
                </tr>
            <tr title="/admin/catalog_search/edit/id/66/key/82a69984607c20d8bc1936b33d9a03e2/">
                    <td class="">lunar</td>
                    <td class="a-right">1</td>

                    <td class="a-right last">1</td>
                </tr>
            <tr class="even" title="/admin/catalog_search/edit/id/65/key/82a69984607c20d8bc1936b33d9a03e2/">
                    <td class="">Neptune</td>
                    <td class="a-right">2</td>
                    <td class="a-right last">1</td>
                </tr>

            <tr title="/admin/catalog_search/edit/id/64/key/82a69984607c20d8bc1936b33d9a03e2/">
                    <td class="">alpine</td>
                    <td class="a-right">1</td>
                    <td class="a-right last">1</td>
                </tr>
            <tr class="even" title="/admin/catalog_search/edit/id/63/key/82a69984607c20d8bc1936b33d9a03e2/">
                    <td class="">olympus</td>

                    <td class="a-right">1</td>
                    <td class="a-right last">2</td>
                </tr>
            </tbody>
</table>
</div>

</fieldset>
                </div>

                <div class="entry-edit">
                    <div class="entry-edit-head"><h4>Top 5 Search Terms</h4></div>
                    <fieldset class="np"><div class="grid np">
<table style="border: 0pt none ;" id="topSearchGrid_table" cellspacing="0">
        <col>
        <col width="100">
        <col width="100">
                <thead>
                            <tr class="headings">

                                    <th class="no-link"><span class="nobr">Search Term</span></th>
                                    <th class="no-link"><span class="nobr">Results</span></th>
                                    <th class="no-link last"><span class="nobr">Number of Uses</span></th>
                                </tr>
                    </thead>
        <tbody>
                <tr class="even" title="/admin/catalog_search/edit/id/1/key/82a69984607c20d8bc1936b33d9a03e2/">

                    <td class="">1</td>
                    <td class="a-right">83</td>
                    <td class="a-right last">7</td>
                </tr>
            <tr title="/admin/catalog_search/edit/id/6/key/82a69984607c20d8bc1936b33d9a03e2/">
                    <td class="">a</td>
                    <td class="a-right">126</td>

                    <td class="a-right last">7</td>
                </tr>
            <tr class="even" title="/admin/catalog_search/edit/id/21/key/82a69984607c20d8bc1936b33d9a03e2/">
                    <td class="">aagdasgasg</td>
                    <td class="a-right">0</td>
                    <td class="a-right last">3</td>
                </tr>

            <tr title="/admin/catalog_search/edit/id/2/key/82a69984607c20d8bc1936b33d9a03e2/">
                    <td class="">jon</td>
                    <td class="a-right">3</td>
                    <td class="a-right last">3</td>
                </tr>
            <tr class="even" title="/admin/catalog_search/edit/id/16/key/82a69984607c20d8bc1936b33d9a03e2/">
                    <td class="">lever</td>

                    <td class="a-right">66</td>
                    <td class="a-right last">3</td>
                </tr>
            </tbody>
</table>
</div>

</fieldset>
                </div>

            </td>
            <td>
                <div class="entry-edit" style="border: 1px solid rgb(204, 204, 204);">
                    <!--  -->
<ul id="diagram_tab" class="tabs-horiz">
    <li>
        <a href="#" id="diagram_tab_orders" title="Orders" class="tab-item-link active">
            <span><span class="changed" title="The information in this tab has been changed."></span><span class="error" title="This tab contains invalid data. Please solve the problem before saving."></span>Orders</span>
        </a>

        
    </li>
    <li>
        <a href="#" id="diagram_tab_amounts" title="Amounts" class="tab-item-link">
            <span><span class="changed" title="The information in this tab has been changed."></span><span class="error" title="This tab contains invalid data. Please solve the problem before saving."></span>Amounts</span>
        </a>
        
    </li>
</ul>

                        <div id="diagram_tab_content"><div id="diagram_tab_orders_content" style=""><div style="margin: 20px;">

    <p class="switcher a-right" style="padding: 5px 10px;">Select Range:
    <select name="period" id="order_orders_period" onchange="changeDiagramsPeriod(this);">
                                <option value="24h">Last 24 hours</option>
                                <option value="7d">Last 7 days</option>
                                <option value="1m">Last Month</option>
                                <option value="1y">YTD</option>
                                <option value="2y">2YTD</option>

            </select></p><br>
            <p class="a-center" style="margin: 0pt auto; width: 587px; height: 300px;">No Data Found<br />
            Hassan, you need to use CSM -> Manage Pages, other paged still under development</p>
    </div>
</div><div id="diagram_tab_amounts_content" style="display: none;"><div style="margin: 20px;">
    <p class="switcher a-right" style="padding: 5px 10px;">Select Range:
    <select name="period" id="order_amounts_period" onchange="changeDiagramsPeriod(this);">
                                <option value="24h">Last 24 hours</option>
                                <option value="7d">Last 7 days</option>

                                <option value="1m">Last Month</option>
                                <option value="1y">YTD</option>
                                <option value="2y">2YTD</option>
            </select></p><br>
            <p class="a-center" style="margin: 0pt auto; width: 587px; height: 300px;">No Data Found</p>
    </div>
</div></div>

                    <div style="margin: 20px;">
                        <div class="box">
    <div class="entry-edit">
        <table width="100%" cellspacing="0">
            <tbody><tr>
                            <td class="a-center bold">
                    <span>Revenue</span><br>
                    <span class="nowrap" style="font-size: 18px; color: rgb(234, 118, 1);"><span class="price">£1,950.64</span><span style="font-size: 14px; color: rgb(222, 137, 70);"></span></span>

                </td>
                            <td class="a-center bold">
                    <span>VAT</span><br>
                    <span class="nowrap" style="font-size: 18px; color: rgb(234, 118, 1);"><span class="price">£28.78</span><span style="font-size: 14px; color: rgb(222, 137, 70);"></span></span>
                </td>
                            <td class="a-center bold">
                    <span>Shipping</span><br>

                    <span class="nowrap" style="font-size: 18px; color: rgb(234, 118, 1);"><span class="price">£114.50</span><span style="font-size: 14px; color: rgb(222, 137, 70);"></span></span>
                </td>
                            <td class="a-center bold">
                    <span>Quantity</span><br>
                    <span class="nowrap" style="font-size: 18px; color: rgb(234, 118, 1);">13<span style="font-size: 14px; color: rgb(222, 137, 70);"></span></span>
                </td>
                        </tr>

        </tbody></table>
    </div>
</div>
                    </div>
                    <div style="margin: 20px;">
                        <!--  -->
<ul id="grid_tab" class="tabs-horiz">
    <li>
        <a href="#" id="grid_tab_reviewed_products" title="Bestsellers" class="tab-item-link active">
            <span><span class="changed" title="The information in this tab has been changed."></span><span class="error" title="This tab contains invalid data. Please solve the problem before saving."></span>Bestsellers</span>

        </a>
        
    </li>
    <li>
        <a href="/admin/dashboard/productsViewed/key/5f1975de1129fea2a67f477a69dfc34e/" id="grid_tab_ordered_products" title="Most Viewed Products" class="tab-item-link ajax notloaded">
            <span><span class="changed" title="The information in this tab has been changed."></span><span class="error" title="This tab contains invalid data. Please solve the problem before saving."></span>Most Viewed Products</span>
        </a>
        
    </li>
    <li>

        <a href="/admin/dashboard/customersNewest/key/7c792dd668e6d1cd46ab5e41d62877d5/" id="grid_tab_new_customers" title="New Customers" class="tab-item-link ajax notloaded">
            <span><span class="changed" title="The information in this tab has been changed."></span><span class="error" title="This tab contains invalid data. Please solve the problem before saving."></span>New Customers</span>
        </a>
        
    </li>
    <li>
        <a href="/admin/dashboard/customersMost/key/cf6d60e87364e36f6ad772210612ab7f/" id="grid_tab_customers" title="Customers" class="tab-item-link ajax notloaded">
            <span><span class="changed" title="The information in this tab has been changed."></span><span class="error" title="This tab contains invalid data. Please solve the problem before saving."></span>Customers</span>
        </a>

        
    </li>
</ul>

                        <div id="grid_tab_content"><div id="grid_tab_reviewed_products_content" style=""><div class="grid np">
<table style="border: 0pt none ;" id="productsOrderedGrid_table" cellspacing="0">
        <col>
        <col width="120">
        <col width="120">
                <thead>
                            <tr class="headings">

                                    <th class="no-link"><span class="nobr">Product Name</span></th>
                                    <th class="no-link"><span class="nobr">Price</span></th>
                                    <th class="no-link last"><span class="nobr">Quantity Ordered</span></th>
                                </tr>
                    </thead>
        <tbody>
                <tr class="even" title="/admin/catalog_product/edit/id/298/key/55ab312b3eda9c398e2ee15dbe92aa6a/">

                    <td class="">Jon test 1kg product</td>
                    <td class="a-right">£10.00</td>
                    <td class="a-right a-right last">165</td>
                </tr>
            <tr title="/admin/catalog_product/edit/id/149/key/55ab312b3eda9c398e2ee15dbe92aa6a/">
                    <td class="">FB2 Mortice Deadlock</td>
                    <td class="a-right">£9.95</td>

                    <td class="a-right a-right last">12</td>
                </tr>
            <tr class="even" title="/admin/catalog_product/edit/id/236/key/55ab312b3eda9c398e2ee15dbe92aa6a/">
                    <td class="">Contemporary</td>
                    <td class="a-right">£10.21</td>
                    <td class="a-right a-right last">4</td>
                </tr>

            <tr title="/admin/catalog_product/edit/id/219/key/55ab312b3eda9c398e2ee15dbe92aa6a/">
                    <td class="">Lauren</td>
                    <td class="a-right">£55.00</td>
                    <td class="a-right a-right last">2</td>
                </tr>
            </tbody>
</table>
</div>


</div><div id="grid_tab_ordered_products_content" style="display: none;"></div><div id="grid_tab_new_customers_content" style="display: none;"></div><div id="grid_tab_customers_content" style="display: none;"></div></div>
                    </div>
                </div>
            </td>
        </tr>
    </tbody></table>
</div>
                        </div>

</asp:Content>

