
<%@ page import="java.sql.*"%>
<%!
String p;
String m;
%>
<%
	int i=1;
	String mail=request.getParameter("lemail");
	String pwd=request.getParameter("lpassword");
%>

<%
try{

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
String qry="select * from register";
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery(qry);
%>

<%
while(rs.next())
{
	p=rs.getString("password");
	m=rs.getString("email");
	if(m.equals(mail) && p.equals(pwd)){
	 i=2;
%>
<a href="dish.html">
<html>
    <head>
        <title>dishes</title>
        <style>
            table
            {
                border-collapse: collapse;	
            }			
            a
            {
                text-decoration:none;
            }
            a:hover
            {
                text-decoration:underline;
                color:white;
            }
            body
                {
                    background-image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSYiDbzw20qdbYv_Ulrhceg9BZUPaH0xCHWA&usqp=CAU";				
                    background-repeat:no-repeat;
                    background-size:100% 100%;
                }

        </style>
    </head>
    <body background="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEhpCVOa5_DTJYC_1aBIPMLB33gGJyMGL7tw&usqp=CAU">
        <a href="Home.html" target="blank"><font size="5" color="ORANGE" ><b>HOME</b></font> </a> 
        <table align="center">
                <tr>
                    <td colspan="4"><h1 align="center"><font color="yellow" size="6" >DISHES FOR FOOD LOVERS</h1></td>
                </tr>
                <tr>
                    <th align="center" height="50%" width="30%"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR119drj2ceaUAMpNuJ3Yk5dq4CDHmuaA2tFA&usqp=CAU"><br><br></div><div><class="language-menu"><fieldset id="select-language"><select id="language-selector" name="language"><option selected="" value="en-US">Chicken Biryani-Rs.250</option><option value="fr">Dum Biryani-Rs.300</option><option value="ja">Mutton Biryani-Rs.500</option><option value="zh-CN">Prawns Biryani-Rs.400</option></select></fieldset></form></div></aside></main><nav id="sidebar-quicklinks" class="sidebar"><div></div><br><a href="Cal1.html" target="blank"><font color="white" size="5">ORDER NOW</font></a></th>
                    <th align="center" height="50%" width="30%"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzRkoy0Qzap1XJBVc6sKM0tedAgEe-30b7Ew&usqp=CAU"><br><br></div><div><class="language-menu"><fieldset id="select-language"><select id="language-selector" name="language"><option selected="" value="en-US">Chees Pizza-Rs.500</option><option value="fr">Meat Pizza-Rs.800</option><option value="ja">Veggie Pizza-Rs.250</option><option value="zh-CN">Pepperoni Pizza-rs.450</option></select></fieldset></form></div></aside></main><nav id="sidebar-quicklinks" class="sidebar"><div></div><br><a href="Cal2.html" target="blank"><font color="white" size="5">ORDER NOW</f<br><br><br></font></a></th>
                    <th align="center" height="50%" width="30%"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWUxn38rfyn9GKpFdldEeczSvrpjPCrCeacA&usqp=CAU"><br><br></div><div><class="language-menu"><fieldset id="select-language"><select id="language-selector" name="language"><option selected="" value="en-US">Rice-Rs.70</option><option value="fr">Chapati-Rs.80</option><option value="ja">Fried Rice-Rs.110</option><option value="zh-CN">pulka-Rs.50</option></select></fieldset></form></div></aside></main><nav id="sidebar-quicklinks" class="sidebar"><div></div><br><a href="Cal3.html" target="blank"><font color="white" size="5">ORDER NOW</f<br><br><br></font></a></th>
                    <th align="center" height="50%" width="30%"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVLpoDjoHysPPuXD5eIguzeBSdTw8qJ9AakQ&usqp=CAU"><br><br><</div><div><class="language-menu"><fieldset id="select-language"><select id="language-selector" name="language"><option selected="" value="en-US">Dosa-Rs.40</option><option value="fr">Idle-Rs.30</option><option value="ja">Poori-Rs.50</option><option value="zh-CN">Vada</option></select></fieldset></form></div></aside></main><nav id="sidebar-quicklinks" class="sidebar"><div></div>br><a href="Cal4.html" target="blank"><font color="white" size="5">ORDER NOW</f<br><br><br></font></a></th>
                </tr>
                
                <tr>
                    <td align="center" height="55%" width="30%"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaw2WgAill58UWvxotbU7taJ_JWLQeeePtzA&usqp=CAU"><br><br></div><div><class="language-menu"><fieldset id="select-language"><select id="language-selector" name="language"><option selected="" value="en-US">Thums Up-Rs.55</option><option value="fr">Sprite-Rs.50</option><option value="ja">7up<option value="zh-CN">Mirinda-45</option></select></fieldset></form></div></aside></main><nav id="sidebar-quicklinks" class="sidebar"><div></div><br><a href="Cal5.html" target="_blank"><font color="white"  size="5">ORDER NOW</font></a></td>
                    <td align="center" height="55%" width="30%"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnu9kxb_tSj7Rjnux20lieUaaa2EEM8G11Fw&usqp=CAU"><br><br></div><div><class="language-menu"><fieldset id="select-language"><select id="language-selector" name="language"><option selected="" value="en-US">KFC-Rs.400</option><option value="fr">Drumstick Chicken Leg Fry-Rs.300</option><option value="ja">Chicken Drumstick Pepper fry-Rs.350</option><option value="zh-CN">Spicy leg -Rs.250</option></select></fieldset></form></div></aside></main><nav id="sidebar-quicklinks" class="sidebar"><div></div><br><a href="Cal6.html" target="_blank"><font color="white" size="5">ORDER NOW</font></a></td>
                    <td align="center" height="55%" width="30%"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwkCql6SrzKa1CouJJll0yS4cE72tscZJKUA&usqp=CAU"><br><br></div><div><class="language-menu"><fieldset id="select-language"><select id="language-selector" name="language"><option selected="" value="en-US">Samosa-Rs.30</option><option value="fr">Punugulu-Rs.30</option><option value="ja">Bajji-Rs.50</option><option value="zh-CN">Bonda-Rs.40</option></select></fieldset></form></div></aside></main><nav id="sidebar-quicklinks" class="sidebar"><div></div><br><a href="Cal7.html"target="_blank"><font color="white" size="5">ORDER NOW</font></a></td>
                    <td align="center" height="55%" width="3%"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLIw43bYUt4Tzh9dvGhtQgCeRNwwPgbdOb3g&usqp=CAU"><br><br></div><div><class="language-menu"><fieldset id="select-language"><select id="language-selector" name="language"><option selected="" value="en-US">Vegetable Rice-Rs.110</option><option value="fr">Tomato Rice-Rs.120</option><option value="ja">Pulihora-Rs.120</option><option value="zh-CN">Masala Rice-Rs.130</option></select></fieldset></form></div></aside></main><nav id="sidebar-quicklinks" class="sidebar"><div></div><br><a href="Cal8.html" target="_blank"><font color="white" size="5">ORDER NOW</font></a></td>
                </tr>
        </table>
    </body>
</html>



</a>
<%
	break;
}
}
	if(i==1){
%>
<h3>login failed!!</h3>
<a href="Home.html"><h3>login failed!!</h3></a>
<%

}
}

catch(Exception e)
{
out.println(e);
}
%>
