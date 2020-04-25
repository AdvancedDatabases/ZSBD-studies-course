CONNECT usr/pwd@//localhost:1521/pdb;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Italy</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>IT</countryId>
  </country>
  <postalCode>20158</postalCode>
  <city>Milano</city>
  <locationId>372</locationId>
  <address>9477 Glacier Hill Lane</address>
</location>
') where WAREHOUSE_ID = 1;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Brazil</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>BR</countryId>
  </country>
  <postalCode>07700-000</postalCode>
  <city>Caieiras</city>
  <locationId>864</locationId>
  <address>5236 Mifflin Center</address>
</location>
') where WAREHOUSE_ID = 3;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Portugal</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>PT</countryId>
  </country>
  <postalCode>2865-193</postalCode>
  <city>Pinhal General</city>
  <locationId>699</locationId>
  <address>6 Hovde Center</address>
</location>
') where WAREHOUSE_ID = 6;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Argentina</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>AR</countryId>
  </country>
  <postalCode>2840</postalCode>
  <city>Gualeguay</city>
  <locationId>675</locationId>
  <address>16237 Gateway Drive</address>
</location>
') where WAREHOUSE_ID = 7;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Canada</countryName>
    <region>
      <regionId>2</regionId>
      <regionName>North America</regionName>
    </region>
    <countryId>CA</countryId>
  </country>
  <postalCode>E3G</postalCode>
  <city>Powassan</city>
  <locationId>364</locationId>
  <address>4 Mariners Cove Hill</address>
</location>
') where WAREHOUSE_ID = 8;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Yunlu</city>
  <locationId>80</locationId>
  <address>15074 Gateway Plaza</address>
</location>
') where WAREHOUSE_ID = 10;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Shuiji</city>
  <locationId>731</locationId>
  <address>60605 Holmberg Alley</address>
</location>
') where WAREHOUSE_ID = 11;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Poland</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>PL</countryId>
  </country>
  <postalCode>62-220</postalCode>
  <city>Niechanowo</city>
  <locationId>415</locationId>
  <address>9235 Dapin Place</address>
</location>
') where WAREHOUSE_ID = 12;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>United States of America</countryName>
    <region>
      <regionId>2</regionId>
      <regionName>North America</regionName>
    </region>
    <countryId>US</countryId>
  </country>
  <postalCode>90610</postalCode>
  <city>Whittier</city>
  <locationId>408</locationId>
  <address>854 Springview Terrace</address>
</location>
') where WAREHOUSE_ID = 13;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Brazil</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>BR</countryId>
  </country>
  <postalCode>58322-000</postalCode>
  <city>Conde</city>
  <locationId>141</locationId>
  <address>0 Reinke Way</address>
</location>
') where WAREHOUSE_ID = 14;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Padaan</city>
  <locationId>721</locationId>
  <address>6476 Drewry Court</address>
</location>
') where WAREHOUSE_ID = 16;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Netherlands</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>NL</countryId>
  </country>
  <postalCode>7814</postalCode>
  <city>Emmen</city>
  <locationId>923</locationId>
  <address>93549 Brentwood Place</address>
</location>
') where WAREHOUSE_ID = 17;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Kuta</city>
  <locationId>667</locationId>
  <address>1276 Armistice Hill</address>
</location>
') where WAREHOUSE_ID = 19;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>United States of America</countryName>
    <region>
      <regionId>2</regionId>
      <regionName>North America</regionName>
    </region>
    <countryId>US</countryId>
  </country>
  <postalCode>98199</postalCode>
  <city>Seattle</city>
  <locationId>8</locationId>
  <address>2004 Charade Rd</address>
</location>
') where WAREHOUSE_ID = 21;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Pahonjean</city>
  <locationId>397</locationId>
  <address>9033 Vidon Court</address>
</location>
') where WAREHOUSE_ID = 23;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>United States of America</countryName>
    <region>
      <regionId>2</regionId>
      <regionName>North America</regionName>
    </region>
    <countryId>US</countryId>
  </country>
  <postalCode>62723</postalCode>
  <city>Springfield</city>
  <locationId>517</locationId>
  <address>41 Hanson Lane</address>
</location>
') where WAREHOUSE_ID = 26;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Russian Federation</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>RU</countryId>
  </country>
  <postalCode>171679</postalCode>
  <city>Krasnyy Kholm</city>
  <locationId>376</locationId>
  <address>68 Randy Way</address>
</location>
') where WAREHOUSE_ID = 27;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Pawitan</city>
  <locationId>51</locationId>
  <address>9341 Fieldstone Junction</address>
</location>
') where WAREHOUSE_ID = 28;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Fudian</city>
  <locationId>657</locationId>
  <address>4604 Colorado Plaza</address>
</location>
') where WAREHOUSE_ID = 29;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Hoi</city>
  <locationId>460</locationId>
  <address>43716 Riverside Way</address>
</location>
') where WAREHOUSE_ID = 30;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Taklale</city>
  <locationId>412</locationId>
  <address>669 Reinke Junction</address>
</location>
') where WAREHOUSE_ID = 31;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Zhaoqing</city>
  <locationId>504</locationId>
  <address>495 Clarendon Court</address>
</location>
') where WAREHOUSE_ID = 33;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>United States of America</countryName>
    <region>
      <regionId>2</regionId>
      <regionName>North America</regionName>
    </region>
    <countryId>US</countryId>
  </country>
  <postalCode>90055</postalCode>
  <city>Los Angeles</city>
  <locationId>244</locationId>
  <address>2681 Hooker Pass</address>
</location>
') where WAREHOUSE_ID = 35;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>France</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>FR</countryId>
  </country>
  <postalCode>95809 CEDEX</postalCode>
  <city>Cergy-Pontoise</city>
  <locationId>936</locationId>
  <address>196 Portage Terrace</address>
</location>
') where WAREHOUSE_ID = 36;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Xingquan</city>
  <locationId>161</locationId>
  <address>85 Division Court</address>
</location>
') where WAREHOUSE_ID = 37;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Canada</countryName>
    <region>
      <regionId>2</regionId>
      <regionName>North America</regionName>
    </region>
    <countryId>CA</countryId>
  </country>
  <postalCode>L1K</postalCode>
  <city>Oshawa</city>
  <locationId>380</locationId>
  <address>843 Scofield Plaza</address>
</location>
') where WAREHOUSE_ID = 38;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Brazil</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>BR</countryId>
  </country>
  <postalCode>88350-000</postalCode>
  <city>Brusque</city>
  <locationId>772</locationId>
  <address>954 Raven Court</address>
</location>
') where WAREHOUSE_ID = 40;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Russian Federation</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>RU</countryId>
  </country>
  <postalCode>184621</postalCode>
  <city>Safonovo</city>
  <locationId>378</locationId>
  <address>858 Fordem Place</address>
</location>
') where WAREHOUSE_ID = 41;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Brazil</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>BR</countryId>
  </country>
  <postalCode>26700-000</postalCode>
  <city>Mendes</city>
  <locationId>830</locationId>
  <address>4 Thompson Hill</address>
</location>
') where WAREHOUSE_ID = 42;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Brazil</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>BR</countryId>
  </country>
  <postalCode>55125-000</postalCode>
  <city>Toritama</city>
  <locationId>778</locationId>
  <address>81 Mayer Court</address>
</location>
') where WAREHOUSE_ID = 45;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Spain</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>ES</countryId>
  </country>
  <postalCode>12100</postalCode>
  <city>Castellon De La Plana/Castello De La Pla</city>
  <locationId>374</locationId>
  <address>02 Columbus Street</address>
</location>
') where WAREHOUSE_ID = 46;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Poland</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>PL</countryId>
  </country>
  <postalCode>36-046</postalCode>
  <city>Zglobien</city>
  <locationId>71</locationId>
  <address>104 Sloan Court</address>
</location>
') where WAREHOUSE_ID = 47;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Portugal</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>PT</countryId>
  </country>
  <postalCode>4800-260</postalCode>
  <city>Santa Maria do Souto</city>
  <locationId>263</locationId>
  <address>24715 Dryden Park</address>
</location>
') where WAREHOUSE_ID = 49;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Morocco</countryName>
    <region>
      <regionId>6</regionId>
      <regionName>Africa</regionName>
    </region>
    <countryId>MA</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Tabant</city>
  <locationId>219</locationId>
  <address>6003 Anderson Point</address>
</location>
') where WAREHOUSE_ID = 50;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Canada</countryName>
    <region>
      <regionId>2</regionId>
      <regionName>North America</regionName>
    </region>
    <countryId>CA</countryId>
  </country>
  <postalCode>T1G</postalCode>
  <city>Taber</city>
  <locationId>636</locationId>
  <address>97866 Transport Alley</address>
</location>
') where WAREHOUSE_ID = 51;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Lingcheng</city>
  <locationId>713</locationId>
  <address>1582 Burning Wood Center</address>
</location>
') where WAREHOUSE_ID = 52;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Puyuan</city>
  <locationId>398</locationId>
  <address>0 Roxbury Place</address>
</location>
') where WAREHOUSE_ID = 53;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Huanghe</city>
  <locationId>70</locationId>
  <address>322 Birchwood Trail</address>
</location>
') where WAREHOUSE_ID = 54;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Thailand</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>TH</countryId>
  </country>
  <postalCode>58120</postalCode>
  <city>Chulabhorn</city>
  <locationId>921</locationId>
  <address>032 Bartillon Trail</address>
</location>
') where WAREHOUSE_ID = 55;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>United States of America</countryName>
    <region>
      <regionId>2</regionId>
      <regionName>North America</regionName>
    </region>
    <countryId>US</countryId>
  </country>
  <postalCode>97255</postalCode>
  <city>Portland</city>
  <locationId>322</locationId>
  <address>42 Logan Crossing</address>
</location>
') where WAREHOUSE_ID = 56;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Xingfeng</city>
  <locationId>155</locationId>
  <address>74 Sundown Junction</address>
</location>
') where WAREHOUSE_ID = 57;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Mexico</countryName>
    <region>
      <regionId>2</regionId>
      <regionName>North America</regionName>
    </region>
    <countryId>MX</countryId>
  </country>
  <postalCode>29950</postalCode>
  <city>San Sebastian</city>
  <locationId>168</locationId>
  <address>47931 Oakridge Parkway</address>
</location>
') where WAREHOUSE_ID = 58;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Japan</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>JP</countryId>
  </country>
  <postalCode>498-0062</postalCode>
  <city>Kanie</city>
  <locationId>31</locationId>
  <address>40659 Bunting Point</address>
</location>
') where WAREHOUSE_ID = 59;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Xinmin</city>
  <locationId>180</locationId>
  <address>93662 Dahle Court</address>
</location>
') where WAREHOUSE_ID = 60;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Portugal</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>PT</countryId>
  </country>
  <postalCode>3405-400</postalCode>
  <city>Seixas</city>
  <locationId>489</locationId>
  <address>7 Iowa Street</address>
</location>
') where WAREHOUSE_ID = 61;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Sebewe</city>
  <locationId>478</locationId>
  <address>309 Reinke Lane</address>
</location>
') where WAREHOUSE_ID = 62;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>United States of America</countryName>
    <region>
      <regionId>2</regionId>
      <regionName>North America</regionName>
    </region>
    <countryId>US</countryId>
  </country>
  <postalCode>77386</postalCode>
  <city>Spring</city>
  <locationId>89</locationId>
  <address>8 Hansons Road</address>
</location>
') where WAREHOUSE_ID = 63;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Hangzhou</city>
  <locationId>197</locationId>
  <address>2702 Reinke Place</address>
</location>
') where WAREHOUSE_ID = 64;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Canada</countryName>
    <region>
      <regionId>2</regionId>
      <regionName>North America</regionName>
    </region>
    <countryId>CA</countryId>
  </country>
  <postalCode>M5V 2L7</postalCode>
  <city>Toronto</city>
  <locationId>9</locationId>
  <address>147 Spadina Ave</address>
</location>
') where WAREHOUSE_ID = 65;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Russian Federation</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>RU</countryId>
  </country>
  <postalCode>353250</postalCode>
  <city>Novodmitriyevskaya</city>
  <locationId>560</locationId>
  <address>68 Browning Parkway</address>
</location>
') where WAREHOUSE_ID = 66;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Viet Nam</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>VN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>My Tho</city>
  <locationId>643</locationId>
  <address>1187 Hoffman Drive</address>
</location>
') where WAREHOUSE_ID = 68;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Cibinong Satu</city>
  <locationId>819</locationId>
  <address>4050 Dottie Place</address>
</location>
') where WAREHOUSE_ID = 69;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Chile</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>CL</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Parral</city>
  <locationId>848</locationId>
  <address>76 Oneill Alley</address>
</location>
') where WAREHOUSE_ID = 70;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Brazil</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>BR</countryId>
  </country>
  <postalCode>79240-000</postalCode>
  <city>Jardim</city>
  <locationId>266</locationId>
  <address>3269 Northview Terrace</address>
</location>
') where WAREHOUSE_ID = 71;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Nanhai</city>
  <locationId>54</locationId>
  <address>9 Killdeer Circle</address>
</location>
') where WAREHOUSE_ID = 72;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Argentina</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>AR</countryId>
  </country>
  <postalCode>5113</postalCode>
  <city>Rio Ceballos</city>
  <locationId>981</locationId>
  <address>681 Fair Oaks Crossing</address>
</location>
') where WAREHOUSE_ID = 73;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Ngromo</city>
  <locationId>965</locationId>
  <address>80877 Summit Alley</address>
</location>
') where WAREHOUSE_ID = 75;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Darungan Lor</city>
  <locationId>524</locationId>
  <address>7 Upham Park</address>
</location>
') where WAREHOUSE_ID = 76;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>United States of America</countryName>
    <region>
      <regionId>2</regionId>
      <regionName>North America</regionName>
    </region>
    <countryId>US</countryId>
  </country>
  <postalCode>16522</postalCode>
  <city>Erie</city>
  <locationId>654</locationId>
  <address>0050 Debs Drive</address>
</location>
') where WAREHOUSE_ID = 77;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Poland</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>PL</countryId>
  </country>
  <postalCode>93-154</postalCode>
  <city>Osiedle-Nowiny</city>
  <locationId>795</locationId>
  <address>8827 Michigan Terrace</address>
</location>
') where WAREHOUSE_ID = 81;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Canada</countryName>
    <region>
      <regionId>2</regionId>
      <regionName>North America</regionName>
    </region>
    <countryId>CA</countryId>
  </country>
  <postalCode>YSW 9T2</postalCode>
  <city>Whitehorse</city>
  <locationId>10</locationId>
  <address>6092 Boxwood St</address>
</location>
') where WAREHOUSE_ID = 82;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Spain</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>ES</countryId>
  </country>
  <postalCode>30394</postalCode>
  <city>Cartagena</city>
  <locationId>200</locationId>
  <address>62 Trailsway Circle</address>
</location>
') where WAREHOUSE_ID = 83;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Czech Republic</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>CZ</countryId>
  </country>
  <postalCode>289 14</postalCode>
  <city>Poricany</city>
  <locationId>993</locationId>
  <address>952 American Lane</address>
</location>
') where WAREHOUSE_ID = 90;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Dayan</city>
  <locationId>169</locationId>
  <address>204 Marquette Center</address>
</location>
') where WAREHOUSE_ID = 92;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Brazil</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>BR</countryId>
  </country>
  <postalCode>14540-000</postalCode>
  <city>Igarapava</city>
  <locationId>148</locationId>
  <address>178 Grasskamp Alley</address>
</location>
') where WAREHOUSE_ID = 93;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Pule</city>
  <locationId>835</locationId>
  <address>4 Mayfield Court</address>
</location>
') where WAREHOUSE_ID = 97;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Brazil</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>BR</countryId>
  </country>
  <postalCode>59990-000</postalCode>
  <city>Armacao</city>
  <locationId>858</locationId>
  <address>1202 Ramsey Hill</address>
</location>
') where WAREHOUSE_ID = 99;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Russian Federation</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>RU</countryId>
  </country>
  <postalCode>601803</postalCode>
  <city>Vyshniy Volochek</city>
  <locationId>944</locationId>
  <address>2 Nancy Place</address>
</location>
') where WAREHOUSE_ID = 100;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Luoping</city>
  <locationId>895</locationId>
  <address>125 Trailsway Trail</address>
</location>
') where WAREHOUSE_ID = 101;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Portugal</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>PT</countryId>
  </country>
  <postalCode>9625-414</postalCode>
  <city>Porto Formoso</city>
  <locationId>416</locationId>
  <address>92 Riverside Alley</address>
</location>
') where WAREHOUSE_ID = 102;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Maoping</city>
  <locationId>875</locationId>
  <address>64832 Luster Road</address>
</location>
') where WAREHOUSE_ID = 103;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Portugal</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>PT</countryId>
  </country>
  <postalCode>2300-174</postalCode>
  <city>Fontainhas</city>
  <locationId>126</locationId>
  <address>0183 Crownhardt Lane</address>
</location>
') where WAREHOUSE_ID = 104;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Chengshan</city>
  <locationId>578</locationId>
  <address>25 Lotheville Road</address>
</location>
') where WAREHOUSE_ID = 105;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Brazil</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>BR</countryId>
  </country>
  <postalCode>53600-000</postalCode>
  <city>Igarassu</city>
  <locationId>693</locationId>
  <address>0741 Steensland Street</address>
</location>
') where WAREHOUSE_ID = 108;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Germany</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>DE</countryId>
  </country>
  <postalCode>70374</postalCode>
  <city>Stuttgart</city>
  <locationId>745</locationId>
  <address>169 Grayhawk Circle</address>
</location>
') where WAREHOUSE_ID = 109;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Argentina</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>AR</countryId>
  </country>
  <postalCode>4751</postalCode>
  <city>Hualfin</city>
  <locationId>506</locationId>
  <address>3336 Cambridge Junction</address>
</location>
') where WAREHOUSE_ID = 111;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Russian Federation</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>RU</countryId>
  </country>
  <postalCode>355011</postalCode>
  <city>Mukhen</city>
  <locationId>567</locationId>
  <address>880 Eagan Place</address>
</location>
') where WAREHOUSE_ID = 112;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Koktokay</city>
  <locationId>930</locationId>
  <address>1991 Glendale Road</address>
</location>
') where WAREHOUSE_ID = 114;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Russian Federation</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>RU</countryId>
  </country>
  <postalCode>353650</postalCode>
  <city>Kamyshevatskaya</city>
  <locationId>420</locationId>
  <address>33 Mesta Avenue</address>
</location>
') where WAREHOUSE_ID = 115;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Japan</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>JP</countryId>
  </country>
  <postalCode>989-2474</postalCode>
  <city>Asahi</city>
  <locationId>41</locationId>
  <address>706 Heath Center</address>
</location>
') where WAREHOUSE_ID = 116;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Oljoq</city>
  <locationId>250</locationId>
  <address>068 Golf View Lane</address>
</location>
') where WAREHOUSE_ID = 117;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Kalipare</city>
  <locationId>127</locationId>
  <address>1 Hallows Park</address>
</location>
') where WAREHOUSE_ID = 118;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Negararatu</city>
  <locationId>352</locationId>
  <address>77529 Steensland Road</address>
</location>
') where WAREHOUSE_ID = 120;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Liusi</city>
  <locationId>347</locationId>
  <address>940 Bluestem Way</address>
</location>
') where WAREHOUSE_ID = 121;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Japan</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>JP</countryId>
  </country>
  <postalCode>769-0105</postalCode>
  <city>Takamatsu-shi</city>
  <locationId>580</locationId>
  <address>22 Homewood Road</address>
</location>
') where WAREHOUSE_ID = 123;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Mangdang</city>
  <locationId>768</locationId>
  <address>59731 Cascade Center</address>
</location>
') where WAREHOUSE_ID = 124;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Botswana</countryName>
    <region>
      <regionId>6</regionId>
      <regionName>Africa</regionName>
    </region>
    <countryId>BW</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Maunatlala</city>
  <locationId>149</locationId>
  <address>47118 Prairieview Street</address>
</location>
') where WAREHOUSE_ID = 125;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Ganyi</city>
  <locationId>193</locationId>
  <address>505 Holy Cross Junction</address>
</location>
') where WAREHOUSE_ID = 127;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Nomhon</city>
  <locationId>122</locationId>
  <address>02 Sutteridge Pass</address>
</location>
') where WAREHOUSE_ID = 128;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Nigeria</countryName>
    <region>
      <regionId>6</regionId>
      <regionName>Africa</regionName>
    </region>
    <countryId>NG</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Ilare</city>
  <locationId>187</locationId>
  <address>4378 Randy Road</address>
</location>
') where WAREHOUSE_ID = 129;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Canada</countryName>
    <region>
      <regionId>2</regionId>
      <regionName>North America</regionName>
    </region>
    <countryId>CA</countryId>
  </country>
  <postalCode>N2Z</postalCode>
  <city>Grande Cache</city>
  <locationId>135</locationId>
  <address>61 Dexter Hill</address>
</location>
') where WAREHOUSE_ID = 130;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Brazil</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>BR</countryId>
  </country>
  <postalCode>97000-000</postalCode>
  <city>Santa Maria</city>
  <locationId>171</locationId>
  <address>9422 Boyd Trail</address>
</location>
') where WAREHOUSE_ID = 131;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Qingshuihe</city>
  <locationId>865</locationId>
  <address>1 Kim Road</address>
</location>
') where WAREHOUSE_ID = 132;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Argentina</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>AR</countryId>
  </country>
  <postalCode>3162</postalCode>
  <city>Aranguren</city>
  <locationId>157</locationId>
  <address>500 Swallow Way</address>
</location>
') where WAREHOUSE_ID = 133;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Ciparakan</city>
  <locationId>907</locationId>
  <address>30 Gulseth Pass</address>
</location>
') where WAREHOUSE_ID = 134;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Yuhang</city>
  <locationId>581</locationId>
  <address>90616 Novick Way</address>
</location>
') where WAREHOUSE_ID = 135;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Ipuh</city>
  <locationId>392</locationId>
  <address>4925 Spohn Drive</address>
</location>
') where WAREHOUSE_ID = 136;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Potikosin</city>
  <locationId>854</locationId>
  <address>154 Lunder Drive</address>
</location>
') where WAREHOUSE_ID = 139;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Huxu</city>
  <locationId>42</locationId>
  <address>12679 Lakewood Center</address>
</location>
') where WAREHOUSE_ID = 140;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Pingshi</city>
  <locationId>531</locationId>
  <address>92692 Old Shore Drive</address>
</location>
') where WAREHOUSE_ID = 142;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Brazil</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>BR</countryId>
  </country>
  <postalCode>18260-000</postalCode>
  <city>Porangaba</city>
  <locationId>105</locationId>
  <address>35185 7th Trail</address>
</location>
') where WAREHOUSE_ID = 143;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Brazil</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>BR</countryId>
  </country>
  <postalCode>75460-000</postalCode>
  <city>Neropolis</city>
  <locationId>773</locationId>
  <address>3 Linden Center</address>
</location>
') where WAREHOUSE_ID = 144;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Portugal</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>PT</countryId>
  </country>
  <postalCode>2775-035</postalCode>
  <city>Junqueiro</city>
  <locationId>328</locationId>
  <address>37855 Rusk Court</address>
</location>
') where WAREHOUSE_ID = 145;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Tuba</city>
  <locationId>239</locationId>
  <address>834 Rutledge Place</address>
</location>
') where WAREHOUSE_ID = 147;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Portugal</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>PT</countryId>
  </country>
  <postalCode>4710-627</postalCode>
  <city>Vila Nova</city>
  <locationId>733</locationId>
  <address>9978 Summerview Crossing</address>
</location>
') where WAREHOUSE_ID = 150;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Sunduk</city>
  <locationId>153</locationId>
  <address>187 Pawling Street</address>
</location>
') where WAREHOUSE_ID = 151;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Brazil</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>BR</countryId>
  </country>
  <postalCode>76550-000</postalCode>
  <city>Porangatu</city>
  <locationId>226</locationId>
  <address>91 Sutteridge Court</address>
</location>
') where WAREHOUSE_ID = 152;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Essang</city>
  <locationId>809</locationId>
  <address>6 Rigney Alley</address>
</location>
') where WAREHOUSE_ID = 153;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Wotan</city>
  <locationId>214</locationId>
  <address>6 Brown Hill</address>
</location>
') where WAREHOUSE_ID = 155;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Nigeria</countryName>
    <region>
      <regionId>6</regionId>
      <regionName>Africa</regionName>
    </region>
    <countryId>NG</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Lafia</city>
  <locationId>785</locationId>
  <address>199 Tony Crossing</address>
</location>
') where WAREHOUSE_ID = 156;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Pora</city>
  <locationId>978</locationId>
  <address>03 Warrior Court</address>
</location>
') where WAREHOUSE_ID = 157;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Russian Federation</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>RU</countryId>
  </country>
  <postalCode>682803</postalCode>
  <city>Zavety Ilicha</city>
  <locationId>297</locationId>
  <address>46354 Karstens Point</address>
</location>
') where WAREHOUSE_ID = 158;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>United States of America</countryName>
    <region>
      <regionId>2</regionId>
      <regionName>North America</regionName>
    </region>
    <countryId>US</countryId>
  </country>
  <postalCode>88541</postalCode>
  <city>El Paso</city>
  <locationId>353</locationId>
  <address>9 Grover Drive</address>
</location>
') where WAREHOUSE_ID = 161;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Brazil</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>BR</countryId>
  </country>
  <postalCode>97540-000</postalCode>
  <city>Alegrete</city>
  <locationId>610</locationId>
  <address>0 Golf Hill</address>
</location>
') where WAREHOUSE_ID = 165;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Laoliangcang</city>
  <locationId>728</locationId>
  <address>0 Spaight Plaza</address>
</location>
') where WAREHOUSE_ID = 166;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Brazil</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>BR</countryId>
  </country>
  <postalCode>28890-000</postalCode>
  <city>Rio das Ostras</city>
  <locationId>90</locationId>
  <address>9 Toban Alley</address>
</location>
') where WAREHOUSE_ID = 167;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Poland</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>PL</countryId>
  </country>
  <postalCode>62-430</postalCode>
  <city>Powidz</city>
  <locationId>554</locationId>
  <address>2335 Dorton Place</address>
</location>
') where WAREHOUSE_ID = 169;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Tempursari Wetan</city>
  <locationId>34</locationId>
  <address>8 Cottonwood Hill</address>
</location>
') where WAREHOUSE_ID = 170;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Portugal</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>PT</countryId>
  </country>
  <postalCode>9555-145</postalCode>
  <city>Mosteiros</city>
  <locationId>648</locationId>
  <address>22842 Esker Court</address>
</location>
') where WAREHOUSE_ID = 171;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Karangmelok</city>
  <locationId>394</locationId>
  <address>3735 Washington Center</address>
</location>
') where WAREHOUSE_ID = 172;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Nigeria</countryName>
    <region>
      <regionId>6</regionId>
      <regionName>Africa</regionName>
    </region>
    <countryId>NG</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Lere</city>
  <locationId>112</locationId>
  <address>8503 Maple Circle</address>
</location>
') where WAREHOUSE_ID = 174;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Poland</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>PL</countryId>
  </country>
  <postalCode>21-060</postalCode>
  <city>Fajslawice</city>
  <locationId>723</locationId>
  <address>3 3rd Road</address>
</location>
') where WAREHOUSE_ID = 176;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Germany</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>DE</countryId>
  </country>
  <postalCode>81373</postalCode>
  <city>Munchen</city>
  <locationId>676</locationId>
  <address>9470 Drewry Center</address>
</location>
') where WAREHOUSE_ID = 178;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Noenoni</city>
  <locationId>639</locationId>
  <address>48 Warrior Pass</address>
</location>
') where WAREHOUSE_ID = 179;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Nigeria</countryName>
    <region>
      <regionId>6</regionId>
      <regionName>Africa</regionName>
    </region>
    <countryId>NG</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Misau</city>
  <locationId>295</locationId>
  <address>0 Artisan Circle</address>
</location>
') where WAREHOUSE_ID = 180;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Czech Republic</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>CZ</countryId>
  </country>
  <postalCode>257 21</postalCode>
  <city>Porici nad Sazavou</city>
  <locationId>925</locationId>
  <address>36102 Gerald Trail</address>
</location>
') where WAREHOUSE_ID = 181;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Chating</city>
  <locationId>82</locationId>
  <address>2 Farwell Place</address>
</location>
') where WAREHOUSE_ID = 182;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Zhushan</city>
  <locationId>308</locationId>
  <address>73330 Shopko Junction</address>
</location>
') where WAREHOUSE_ID = 183;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Russian Federation</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>RU</countryId>
  </country>
  <postalCode>423371</postalCode>
  <city>Sarmanovo</city>
  <locationId>188</locationId>
  <address>09925 Maple Trail</address>
</location>
') where WAREHOUSE_ID = 185;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Botswana</countryName>
    <region>
      <regionId>6</regionId>
      <regionName>Africa</regionName>
    </region>
    <countryId>BW</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Letsheng</city>
  <locationId>743</locationId>
  <address>72015 Vera Plaza</address>
</location>
') where WAREHOUSE_ID = 186;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Tianjin</city>
  <locationId>132</locationId>
  <address>46252 Lake View Point</address>
</location>
') where WAREHOUSE_ID = 188;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Mengyin</city>
  <locationId>120</locationId>
  <address>00 Carey Court</address>
</location>
') where WAREHOUSE_ID = 189;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Czech Republic</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>CZ</countryId>
  </country>
  <postalCode>417 41</postalCode>
  <city>Krupka</city>
  <locationId>472</locationId>
  <address>9 Crowley Plaza</address>
</location>
') where WAREHOUSE_ID = 190;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Wuxiang</city>
  <locationId>92</locationId>
  <address>1265 Pond Hill</address>
</location>
') where WAREHOUSE_ID = 191;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Colombia</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>CO</countryId>
  </country>
  <postalCode>703038</postalCode>
  <city>Sucre</city>
  <locationId>29</locationId>
  <address>90 4th Trail</address>
</location>
') where WAREHOUSE_ID = 193;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Czech Republic</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>CZ</countryId>
  </country>
  <postalCode>687 07</postalCode>
  <city>Tupesy</city>
  <locationId>445</locationId>
  <address>09189 Victoria Center</address>
</location>
') where WAREHOUSE_ID = 194;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Poland</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>PL</countryId>
  </country>
  <postalCode>05-088</postalCode>
  <city>Brochow</city>
  <locationId>847</locationId>
  <address>038 Spaight Way</address>
</location>
') where WAREHOUSE_ID = 198;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Canada</countryName>
    <region>
      <regionId>2</regionId>
      <regionName>North America</regionName>
    </region>
    <countryId>CA</countryId>
  </country>
  <postalCode>J0N</postalCode>
  <city>Oka</city>
  <locationId>223</locationId>
  <address>20 Pankratz Center</address>
</location>
') where WAREHOUSE_ID = 200;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Andir</city>
  <locationId>350</locationId>
  <address>80057 Melrose Junction</address>
</location>
') where WAREHOUSE_ID = 201;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Canada</countryName>
    <region>
      <regionId>2</regionId>
      <regionName>North America</regionName>
    </region>
    <countryId>CA</countryId>
  </country>
  <postalCode>S4A</postalCode>
  <city>Hearst</city>
  <locationId>182</locationId>
  <address>12513 Meadow Valley Parkway</address>
</location>
') where WAREHOUSE_ID = 202;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Malin</city>
  <locationId>335</locationId>
  <address>036 Helena Pass</address>
</location>
') where WAREHOUSE_ID = 203;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Japan</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>JP</countryId>
  </country>
  <postalCode>987-0352</postalCode>
  <city>Susaki</city>
  <locationId>941</locationId>
  <address>71 Buhler Way</address>
</location>
') where WAREHOUSE_ID = 204;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Japan</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>JP</countryId>
  </country>
  <postalCode>300-0636</postalCode>
  <city>Edosaki</city>
  <locationId>81</locationId>
  <address>7368 Magdeline Circle</address>
</location>
') where WAREHOUSE_ID = 205;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Brazil</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>BR</countryId>
  </country>
  <postalCode>96910-000</postalCode>
  <city>Embu Guacu</city>
  <locationId>575</locationId>
  <address>73196 Calypso Road</address>
</location>
') where WAREHOUSE_ID = 207;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Poland</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>PL</countryId>
  </country>
  <postalCode>19-411</postalCode>
  <city>Swietajno</city>
  <locationId>645</locationId>
  <address>87820 Bashford Plaza</address>
</location>
') where WAREHOUSE_ID = 208;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Czech Republic</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>CZ</countryId>
  </country>
  <postalCode>538 51</postalCode>
  <city>Chrast</city>
  <locationId>136</locationId>
  <address>51 Acker Center</address>
</location>
') where WAREHOUSE_ID = 209;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Gatak</city>
  <locationId>165</locationId>
  <address>1894 Judy Plaza</address>
</location>
') where WAREHOUSE_ID = 210;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Meilin</city>
  <locationId>319</locationId>
  <address>1 Miller Circle</address>
</location>
') where WAREHOUSE_ID = 211;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Poland</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>PL</countryId>
  </country>
  <postalCode>95-010</postalCode>
  <city>Strykow</city>
  <locationId>985</locationId>
  <address>194 Laurel Parkway</address>
</location>
') where WAREHOUSE_ID = 212;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Denmark</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>DK</countryId>
  </country>
  <postalCode>1666</postalCode>
  <city>Kobenhavn</city>
  <locationId>55</locationId>
  <address>166 Bowman Road</address>
</location>
') where WAREHOUSE_ID = 214;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Germany</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>DE</countryId>
  </country>
  <postalCode>76199</postalCode>
  <city>Karlsruhe</city>
  <locationId>529</locationId>
  <address>49795 International Alley</address>
</location>
') where WAREHOUSE_ID = 215;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Japan</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>JP</countryId>
  </country>
  <postalCode>1689</postalCode>
  <city>Tokyo</city>
  <locationId>3</locationId>
  <address>2017 Shinjuku-ku</address>
</location>
') where WAREHOUSE_ID = 216;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Kendalrejo</city>
  <locationId>757</locationId>
  <address>34 Reinke Alley</address>
</location>
') where WAREHOUSE_ID = 217;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Lieyu</city>
  <locationId>125</locationId>
  <address>6 Ronald Regan Pass</address>
</location>
') where WAREHOUSE_ID = 218;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Yingchuan</city>
  <locationId>751</locationId>
  <address>4514 Magdeline Alley</address>
</location>
') where WAREHOUSE_ID = 219;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Sanzhou</city>
  <locationId>291</locationId>
  <address>0916 Harbort Hill</address>
</location>
') where WAREHOUSE_ID = 220;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>France</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>FR</countryId>
  </country>
  <postalCode>03017 CEDEX</postalCode>
  <city>Moulins</city>
  <locationId>196</locationId>
  <address>59 South Terrace</address>
</location>
') where WAREHOUSE_ID = 221;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Haiyangsuo</city>
  <locationId>800</locationId>
  <address>55 Browning Place</address>
</location>
') where WAREHOUSE_ID = 222;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Shengli</city>
  <locationId>918</locationId>
  <address>6042 Fuller Drive</address>
</location>
') where WAREHOUSE_ID = 223;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Kampungruweh</city>
  <locationId>630</locationId>
  <address>55469 Graedel Junction</address>
</location>
') where WAREHOUSE_ID = 224;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>France</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>FR</countryId>
  </country>
  <postalCode>24016 CEDEX</postalCode>
  <city>Perigueux</city>
  <locationId>825</locationId>
  <address>169 Ilene Terrace</address>
</location>
') where WAREHOUSE_ID = 225;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Viet Nam</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>VN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Thi Tran Tam Son</city>
  <locationId>922</locationId>
  <address>3208 Duke Court</address>
</location>
') where WAREHOUSE_ID = 226;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Japan</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>JP</countryId>
  </country>
  <postalCode>365-0023</postalCode>
  <city>Shobu</city>
  <locationId>258</locationId>
  <address>9 Westridge Road</address>
</location>
') where WAREHOUSE_ID = 227;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Dazi</city>
  <locationId>839</locationId>
  <address>0540 Scott Plaza</address>
</location>
') where WAREHOUSE_ID = 228;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Japan</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>JP</countryId>
  </country>
  <postalCode>999-6735</postalCode>
  <city>Kobayashi</city>
  <locationId>956</locationId>
  <address>21 Northport Hill</address>
</location>
') where WAREHOUSE_ID = 229;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Rupe</city>
  <locationId>142</locationId>
  <address>098 Crowley Drive</address>
</location>
') where WAREHOUSE_ID = 230;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Chisong</city>
  <locationId>891</locationId>
  <address>869 Hauk Circle</address>
</location>
') where WAREHOUSE_ID = 231;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Canada</countryName>
    <region>
      <regionId>2</regionId>
      <regionName>North America</regionName>
    </region>
    <countryId>CA</countryId>
  </country>
  <postalCode>P6A</postalCode>
  <city>Marathon</city>
  <locationId>483</locationId>
  <address>4929 Esch Lane</address>
</location>
') where WAREHOUSE_ID = 232;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Japan</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>JP</countryId>
  </country>
  <postalCode>6823</postalCode>
  <city>Hiroshima</city>
  <locationId>4</locationId>
  <address>9450 Kamiya-cho</address>
</location>
') where WAREHOUSE_ID = 235;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Saudi Arabia</countryName>
    <region>
      <regionId>5</regionId>
      <regionName>Middle East</regionName>
    </region>
    <countryId>SA</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Al Hufuf</city>
  <locationId>282</locationId>
  <address>80568 Duke Pass</address>
</location>
') where WAREHOUSE_ID = 236;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Zhongxing</city>
  <locationId>792</locationId>
  <address>3631 Comanche Place</address>
</location>
') where WAREHOUSE_ID = 237;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Nomhon</city>
  <locationId>892</locationId>
  <address>0361 Jenna Crossing</address>
</location>
') where WAREHOUSE_ID = 238;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Lamatuka</city>
  <locationId>351</locationId>
  <address>56 Montana Drive</address>
</location>
') where WAREHOUSE_ID = 240;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Guanchi</city>
  <locationId>998</locationId>
  <address>3277 Park Meadow Street</address>
</location>
') where WAREHOUSE_ID = 241;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Egypt</countryName>
    <region>
      <regionId>5</regionId>
      <regionName>Middle East</regionName>
    </region>
    <countryId>EG</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Shirbin</city>
  <locationId>836</locationId>
  <address>8137 Evergreen Circle</address>
</location>
') where WAREHOUSE_ID = 242;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Egypt</countryName>
    <region>
      <regionId>5</regionId>
      <regionName>Middle East</regionName>
    </region>
    <countryId>EG</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Farshut</city>
  <locationId>729</locationId>
  <address>629 Rockefeller Road</address>
</location>
') where WAREHOUSE_ID = 243;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Nigeria</countryName>
    <region>
      <regionId>6</regionId>
      <regionName>Africa</regionName>
    </region>
    <countryId>NG</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Modakeke</city>
  <locationId>30</locationId>
  <address>0 Kinsman Avenue</address>
</location>
') where WAREHOUSE_ID = 244;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>United States of America</countryName>
    <region>
      <regionId>2</regionId>
      <regionName>North America</regionName>
    </region>
    <countryId>US</countryId>
  </country>
  <postalCode>43210</postalCode>
  <city>Columbus</city>
  <locationId>253</locationId>
  <address>104 Elgar Avenue</address>
</location>
') where WAREHOUSE_ID = 245;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Shuinan</city>
  <locationId>101</locationId>
  <address>86 Mitchell Parkway</address>
</location>
') where WAREHOUSE_ID = 246;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Cinunjang</city>
  <locationId>767</locationId>
  <address>68558 Myrtle Place</address>
</location>
') where WAREHOUSE_ID = 247;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Japan</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>JP</countryId>
  </country>
  <postalCode>869-0233</postalCode>
  <city>Koga</city>
  <locationId>79</locationId>
  <address>173 Wayridge Junction</address>
</location>
') where WAREHOUSE_ID = 248;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Xiachengzi</city>
  <locationId>83</locationId>
  <address>542 Buena Vista Alley</address>
</location>
') where WAREHOUSE_ID = 249;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Siak Sri Indrapura</city>
  <locationId>371</locationId>
  <address>79380 Elmside Way</address>
</location>
') where WAREHOUSE_ID = 250;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Russian Federation</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>RU</countryId>
  </country>
  <postalCode>301333</postalCode>
  <city>Novyye Kuzminki</city>
  <locationId>970</locationId>
  <address>455 Londonderry Junction</address>
</location>
') where WAREHOUSE_ID = 251;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Jiahe</city>
  <locationId>900</locationId>
  <address>50 Mitchell Park</address>
</location>
') where WAREHOUSE_ID = 252;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Krajan Tambakrejo</city>
  <locationId>958</locationId>
  <address>21 Lakewood Drive</address>
</location>
') where WAREHOUSE_ID = 253;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Blobo</city>
  <locationId>828</locationId>
  <address>48 Fairview Road</address>
</location>
') where WAREHOUSE_ID = 254;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Jinping</city>
  <locationId>201</locationId>
  <address>9 Loomis Plaza</address>
</location>
') where WAREHOUSE_ID = 256;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>France</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>FR</countryId>
  </country>
  <postalCode>50404 CEDEX</postalCode>
  <city>Granville</city>
  <locationId>160</locationId>
  <address>39 Waywood Street</address>
</location>
') where WAREHOUSE_ID = 257;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Japan</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>JP</countryId>
  </country>
  <postalCode>959-3213</postalCode>
  <city>Ueno</city>
  <locationId>986</locationId>
  <address>64591 Northridge Road</address>
</location>
') where WAREHOUSE_ID = 258;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Russian Federation</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>RU</countryId>
  </country>
  <postalCode>660126</postalCode>
  <city>Sheregesh</city>
  <locationId>569</locationId>
  <address>06 Namekagon Parkway</address>
</location>
') where WAREHOUSE_ID = 259;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>United States of America</countryName>
    <region>
      <regionId>2</regionId>
      <regionName>North America</regionName>
    </region>
    <countryId>US</countryId>
  </country>
  <postalCode>25389</postalCode>
  <city>Charleston</city>
  <locationId>348</locationId>
  <address>7 Alpine Lane</address>
</location>
') where WAREHOUSE_ID = 260;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Russian Federation</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>RU</countryId>
  </country>
  <postalCode>141032</postalCode>
  <city>Vatutino</city>
  <locationId>243</locationId>
  <address>93073 Jay Center</address>
</location>
') where WAREHOUSE_ID = 261;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Ntaur Satu</city>
  <locationId>920</locationId>
  <address>017 7th Trail</address>
</location>
') where WAREHOUSE_ID = 262;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Brazil</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>BR</countryId>
  </country>
  <postalCode>55520-000</postalCode>
  <city>Ribeirao</city>
  <locationId>880</locationId>
  <address>0 Little Fleur Center</address>
</location>
') where WAREHOUSE_ID = 263;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Nigeria</countryName>
    <region>
      <regionId>6</regionId>
      <regionName>Africa</regionName>
    </region>
    <countryId>NG</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Mubi</city>
  <locationId>453</locationId>
  <address>7629 Hauk Lane</address>
</location>
') where WAREHOUSE_ID = 264;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Dianfang</city>
  <locationId>873</locationId>
  <address>5 Ridge Oak Way</address>
</location>
') where WAREHOUSE_ID = 265;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Czech Republic</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>CZ</countryId>
  </country>
  <postalCode>586 01</postalCode>
  <city>Jihlava</city>
  <locationId>659</locationId>
  <address>91 Butternut Road</address>
</location>
') where WAREHOUSE_ID = 266;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Poland</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>PL</countryId>
  </country>
  <postalCode>36-207</postalCode>
  <city>Niebocko</city>
  <locationId>514</locationId>
  <address>8524 Everett Alley</address>
</location>
') where WAREHOUSE_ID = 268;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Thailand</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>TH</countryId>
  </country>
  <postalCode>18110</postalCode>
  <city>Kaeng Khoi</city>
  <locationId>632</locationId>
  <address>3 Surrey Parkway</address>
</location>
') where WAREHOUSE_ID = 270;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Blangkejeren</city>
  <locationId>27</locationId>
  <address>412 Del Sol Terrace</address>
</location>
') where WAREHOUSE_ID = 271;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Brazil</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>BR</countryId>
  </country>
  <postalCode>58388-000</postalCode>
  <city>Alagoa Grande</city>
  <locationId>672</locationId>
  <address>8 Dexter Terrace</address>
</location>
') where WAREHOUSE_ID = 272;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Poland</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>PL</countryId>
  </country>
  <postalCode>48-100</postalCode>
  <city>Glubczyce</city>
  <locationId>76</locationId>
  <address>26865 Esker Circle</address>
</location>
') where WAREHOUSE_ID = 274;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Thailand</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>TH</countryId>
  </country>
  <postalCode>25220</postalCode>
  <city>Na Di</city>
  <locationId>563</locationId>
  <address>09 Golden Leaf Circle</address>
</location>
') where WAREHOUSE_ID = 275;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Dushi</city>
  <locationId>972</locationId>
  <address>5 Basil Parkway</address>
</location>
') where WAREHOUSE_ID = 276;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Qiaotou</city>
  <locationId>85</locationId>
  <address>32091 Forster Park</address>
</location>
') where WAREHOUSE_ID = 278;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Mulan</city>
  <locationId>447</locationId>
  <address>3 Anzinger Plaza</address>
</location>
') where WAREHOUSE_ID = 279;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Colombia</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>CO</countryId>
  </country>
  <postalCode>417048</postalCode>
  <city>Pitalito</city>
  <locationId>698</locationId>
  <address>5 Claremont Point</address>
</location>
') where WAREHOUSE_ID = 280;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Italy</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>IT</countryId>
  </country>
  <postalCode>10934</postalCode>
  <city>Venice</city>
  <locationId>2</locationId>
  <address>93091 Calle della Testa</address>
</location>
') where WAREHOUSE_ID = 281;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Jambeyan</city>
  <locationId>929</locationId>
  <address>9 Saint Paul Place</address>
</location>
') where WAREHOUSE_ID = 282;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Erdaohe</city>
  <locationId>629</locationId>
  <address>9591 Drewry Street</address>
</location>
') where WAREHOUSE_ID = 284;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Argentina</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>AR</countryId>
  </country>
  <postalCode>8503</postalCode>
  <city>General Conesa</city>
  <locationId>273</locationId>
  <address>953 Bultman Parkway</address>
</location>
') where WAREHOUSE_ID = 285;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Huafeng</city>
  <locationId>440</locationId>
  <address>40820 Ohio Place</address>
</location>
') where WAREHOUSE_ID = 287;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Brazil</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>BR</countryId>
  </country>
  <postalCode>38900-000</postalCode>
  <city>Bambui</city>
  <locationId>58</locationId>
  <address>3077 Green Ridge Trail</address>
</location>
') where WAREHOUSE_ID = 288;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Wangliao</city>
  <locationId>474</locationId>
  <address>100 Miller Center</address>
</location>
') where WAREHOUSE_ID = 290;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Botswana</countryName>
    <region>
      <regionId>6</regionId>
      <regionName>Africa</regionName>
    </region>
    <countryId>BW</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Ghanzi</city>
  <locationId>737</locationId>
  <address>113 East Point</address>
</location>
') where WAREHOUSE_ID = 291;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Kuilehe</city>
  <locationId>631</locationId>
  <address>9 Banding Place</address>
</location>
') where WAREHOUSE_ID = 292;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Czech Republic</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>CZ</countryId>
  </country>
  <postalCode>788 16</postalCode>
  <city>Sobotin</city>
  <locationId>826</locationId>
  <address>9984 Warbler Lane</address>
</location>
') where WAREHOUSE_ID = 293;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Kesha</city>
  <locationId>56</locationId>
  <address>14 Ludington Street</address>
</location>
') where WAREHOUSE_ID = 294;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Poland</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>PL</countryId>
  </country>
  <postalCode>24-340</postalCode>
  <city>Jozefow</city>
  <locationId>215</locationId>
  <address>8 Towne Trail</address>
</location>
') where WAREHOUSE_ID = 295;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Russian Federation</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>RU</countryId>
  </country>
  <postalCode>301086</postalCode>
  <city>Kupavna</city>
  <locationId>859</locationId>
  <address>2 Reinke Center</address>
</location>
') where WAREHOUSE_ID = 296;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Bongsri</city>
  <locationId>642</locationId>
  <address>83 Village Park</address>
</location>
') where WAREHOUSE_ID = 297;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>United States of America</countryName>
    <region>
      <regionId>2</regionId>
      <regionName>North America</regionName>
    </region>
    <countryId>US</countryId>
  </country>
  <postalCode>93773</postalCode>
  <city>Fresno</city>
  <locationId>804</locationId>
  <address>85863 Elka Plaza</address>
</location>
') where WAREHOUSE_ID = 298;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Germany</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>DE</countryId>
  </country>
  <postalCode>65191</postalCode>
  <city>Wiesbaden</city>
  <locationId>46</locationId>
  <address>7107 Spaight Plaza</address>
</location>
') where WAREHOUSE_ID = 300;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>United States of America</countryName>
    <region>
      <regionId>2</regionId>
      <regionName>North America</regionName>
    </region>
    <countryId>US</countryId>
  </country>
  <postalCode>60681</postalCode>
  <city>Chicago</city>
  <locationId>994</locationId>
  <address>62172 4th Hill</address>
</location>
') where WAREHOUSE_ID = 301;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Colombia</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>CO</countryId>
  </country>
  <postalCode>472047</postalCode>
  <city>Algarrobo</city>
  <locationId>543</locationId>
  <address>614 Lillian Point</address>
</location>
') where WAREHOUSE_ID = 302;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Brazil</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>BR</countryId>
  </country>
  <postalCode>34800-000</postalCode>
  <city>Caete</city>
  <locationId>494</locationId>
  <address>19 Hooker Point</address>
</location>
') where WAREHOUSE_ID = 303;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Germany</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>DE</countryId>
  </country>
  <postalCode>45356</postalCode>
  <city>Essen</city>
  <locationId>680</locationId>
  <address>8 Dwight Road</address>
</location>
') where WAREHOUSE_ID = 304;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Colombia</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>CO</countryId>
  </country>
  <postalCode>250848</postalCode>
  <city>Macheta</city>
  <locationId>86</locationId>
  <address>54 Farmco Hill</address>
</location>
') where WAREHOUSE_ID = 305;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Brazil</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>BR</countryId>
  </country>
  <postalCode>57200-000</postalCode>
  <city>Penedo</city>
  <locationId>261</locationId>
  <address>9 Coleman Junction</address>
</location>
') where WAREHOUSE_ID = 307;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Annan</city>
  <locationId>104</locationId>
  <address>7166 Caliangt Crossing</address>
</location>
') where WAREHOUSE_ID = 308;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Huangbu</city>
  <locationId>837</locationId>
  <address>68978 Bartillon Hill</address>
</location>
') where WAREHOUSE_ID = 309;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>France</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>FR</countryId>
  </country>
  <postalCode>20195 CEDEX 1</postalCode>
  <city>Ajaccio</city>
  <locationId>163</locationId>
  <address>91992 Brown Way</address>
</location>
') where WAREHOUSE_ID = 310;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Poland</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>PL</countryId>
  </country>
  <postalCode>16-070</postalCode>
  <city>Choroszcz</city>
  <locationId>798</locationId>
  <address>7621 Victoria Park</address>
</location>
') where WAREHOUSE_ID = 311;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Lintingkou</city>
  <locationId>953</locationId>
  <address>4 Cherokee Junction</address>
</location>
') where WAREHOUSE_ID = 312;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Russian Federation</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>RU</countryId>
  </country>
  <postalCode>391846</postalCode>
  <city>Malakhovka</city>
  <locationId>167</locationId>
  <address>92147 2nd Trail</address>
</location>
') where WAREHOUSE_ID = 313;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Russian Federation</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>RU</countryId>
  </country>
  <postalCode>462159</postalCode>
  <city>Saraktash</city>
  <locationId>911</locationId>
  <address>70080 Burning Wood Plaza</address>
</location>
') where WAREHOUSE_ID = 314;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Canada</countryName>
    <region>
      <regionId>2</regionId>
      <regionName>North America</regionName>
    </region>
    <countryId>CA</countryId>
  </country>
  <postalCode>V5M</postalCode>
  <city>Mattawa</city>
  <locationId>678</locationId>
  <address>174 Hooker Way</address>
</location>
') where WAREHOUSE_ID = 315;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Fuquan</city>
  <locationId>24</locationId>
  <address>553 Heffernan Hill</address>
</location>
') where WAREHOUSE_ID = 316;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Xuefu</city>
  <locationId>274</locationId>
  <address>428 Russell Alley</address>
</location>
') where WAREHOUSE_ID = 317;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Argentina</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>AR</countryId>
  </country>
  <postalCode>2655</postalCode>
  <city>Wenceslao Escalante</city>
  <locationId>178</locationId>
  <address>4 Spohn Lane</address>
</location>
') where WAREHOUSE_ID = 319;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Brazil</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>BR</countryId>
  </country>
  <postalCode>25850-000</postalCode>
  <city>Paraiba do Sul</city>
  <locationId>276</locationId>
  <address>53 Burrows Parkway</address>
</location>
') where WAREHOUSE_ID = 320;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Suruhwadang</city>
  <locationId>296</locationId>
  <address>393 Havey Circle</address>
</location>
') where WAREHOUSE_ID = 321;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Chile</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>CL</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Calbuco</city>
  <locationId>260</locationId>
  <address>94072 Chive Parkway</address>
</location>
') where WAREHOUSE_ID = 322;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Jieshi</city>
  <locationId>938</locationId>
  <address>37826 Schmedeman Drive</address>
</location>
') where WAREHOUSE_ID = 323;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Russian Federation</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>RU</countryId>
  </country>
  <postalCode>623509</postalCode>
  <city>Baraba</city>
  <locationId>305</locationId>
  <address>7 Claremont Circle</address>
</location>
') where WAREHOUSE_ID = 326;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>South Africa</countryName>
    <region>
      <regionId>6</regionId>
      <regionName>Africa</regionName>
    </region>
    <countryId>ZA</countryId>
  </country>
  <postalCode>5122</postalCode>
  <city>Musina</city>
  <locationId>799</locationId>
  <address>581 Forest Run Crossing</address>
</location>
') where WAREHOUSE_ID = 327;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Brazil</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>BR</countryId>
  </country>
  <postalCode>60000-000</postalCode>
  <city>Fortaleza</city>
  <locationId>776</locationId>
  <address>0223 Sachtjen Alley</address>
</location>
') where WAREHOUSE_ID = 328;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Portugal</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>PT</countryId>
  </country>
  <postalCode>4970-434</postalCode>
  <city>Arcos de Valdevez</city>
  <locationId>530</locationId>
  <address>80318 Sutherland Pass</address>
</location>
') where WAREHOUSE_ID = 329;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Gaoping</city>
  <locationId>252</locationId>
  <address>7783 Bunker Hill Drive</address>
</location>
') where WAREHOUSE_ID = 330;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Sidenreng</city>
  <locationId>764</locationId>
  <address>74 Thierer Junction</address>
</location>
') where WAREHOUSE_ID = 331;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Hanchang</city>
  <locationId>686</locationId>
  <address>1020 Rutledge Pass</address>
</location>
') where WAREHOUSE_ID = 332;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Switzerland</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>CH</countryId>
  </country>
  <postalCode>3095</postalCode>
  <city>Bern</city>
  <locationId>21</locationId>
  <address>Murtenstrasse 921</address>
</location>
') where WAREHOUSE_ID = 333;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Datangzhuang</city>
  <locationId>869</locationId>
  <address>6 Rigney Avenue</address>
</location>
') where WAREHOUSE_ID = 334;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Canada</countryName>
    <region>
      <regionId>2</regionId>
      <regionName>North America</regionName>
    </region>
    <countryId>CA</countryId>
  </country>
  <postalCode>V7X</postalCode>
  <city>Wabana</city>
  <locationId>35</locationId>
  <address>306 Golf Course Drive</address>
</location>
') where WAREHOUSE_ID = 335;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Mexico</countryName>
    <region>
      <regionId>2</regionId>
      <regionName>North America</regionName>
    </region>
    <countryId>MX</countryId>
  </country>
  <postalCode>93228</postalCode>
  <city>Los Mangos</city>
  <locationId>527</locationId>
  <address>12308 Loomis Point</address>
</location>
') where WAREHOUSE_ID = 336;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>United States of America</countryName>
    <region>
      <regionId>2</regionId>
      <regionName>North America</regionName>
    </region>
    <countryId>US</countryId>
  </country>
  <postalCode>21747</postalCode>
  <city>Hagerstown</city>
  <locationId>802</locationId>
  <address>04 Warner Street</address>
</location>
') where WAREHOUSE_ID = 339;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Colombia</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>CO</countryId>
  </country>
  <postalCode>472028</postalCode>
  <city>Fundacion</city>
  <locationId>774</locationId>
  <address>2983 Meadow Ridge Court</address>
</location>
') where WAREHOUSE_ID = 340;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Goubangzi</city>
  <locationId>896</locationId>
  <address>19053 Larry Way</address>
</location>
') where WAREHOUSE_ID = 341;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Japan</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>JP</countryId>
  </country>
  <postalCode>964-0432</postalCode>
  <city>Mobara</city>
  <locationId>303</locationId>
  <address>2002 Northfield Avenue</address>
</location>
') where WAREHOUSE_ID = 342;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Dongping</city>
  <locationId>174</locationId>
  <address>1030 Continental Place</address>
</location>
') where WAREHOUSE_ID = 343;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Nigeria</countryName>
    <region>
      <regionId>6</regionId>
      <regionName>Africa</regionName>
    </region>
    <countryId>NG</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Ogwashi-Uku</city>
  <locationId>815</locationId>
  <address>87674 Warner Parkway</address>
</location>
') where WAREHOUSE_ID = 344;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Russian Federation</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>RU</countryId>
  </country>
  <postalCode>391448</postalCode>
  <city>Sasovo</city>
  <locationId>414</locationId>
  <address>62 Delaware Junction</address>
</location>
') where WAREHOUSE_ID = 346;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Beidao</city>
  <locationId>248</locationId>
  <address>603 Troy Place</address>
</location>
') where WAREHOUSE_ID = 347;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Argentina</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>AR</countryId>
  </country>
  <postalCode>5250</postalCode>
  <city>Concepcion del Bermejo</city>
  <locationId>356</locationId>
  <address>8757 Blue Bill Park Way</address>
</location>
') where WAREHOUSE_ID = 348;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Russian Federation</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>RU</countryId>
  </country>
  <postalCode>423110</postalCode>
  <city>Cheremshan</city>
  <locationId>283</locationId>
  <address>04 Fremont Terrace</address>
</location>
') where WAREHOUSE_ID = 349;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Portugal</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>PT</countryId>
  </country>
  <postalCode>2425-838</postalCode>
  <city>Marinha</city>
  <locationId>137</locationId>
  <address>64 Kinsman Lane</address>
</location>
') where WAREHOUSE_ID = 350;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Viet Nam</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>VN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Quan Bo_n</city>
  <locationId>454</locationId>
  <address>5329 Pennsylvania Trail</address>
</location>
') where WAREHOUSE_ID = 352;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Tuqiao</city>
  <locationId>623</locationId>
  <address>7218 Hudson Place</address>
</location>
') where WAREHOUSE_ID = 356;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Canada</countryName>
    <region>
      <regionId>2</regionId>
      <regionName>North America</regionName>
    </region>
    <countryId>CA</countryId>
  </country>
  <postalCode>G3L</postalCode>
  <city>Saint-Raymond</city>
  <locationId>110</locationId>
  <address>5 Sugar Point</address>
</location>
') where WAREHOUSE_ID = 357;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>France</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>FR</countryId>
  </country>
  <postalCode>75054 CEDEX 01</postalCode>
  <city>Paris 01</city>
  <locationId>106</locationId>
  <address>04239 Artisan Crossing</address>
</location>
') where WAREHOUSE_ID = 358;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Tangquan</city>
  <locationId>240</locationId>
  <address>434 West Way</address>
</location>
') where WAREHOUSE_ID = 359;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Kangle</city>
  <locationId>217</locationId>
  <address>04111 Ruskin Circle</address>
</location>
') where WAREHOUSE_ID = 360;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Brazil</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>BR</countryId>
  </country>
  <postalCode>17120-000</postalCode>
  <city>Agudos</city>
  <locationId>541</locationId>
  <address>9875 Acker Plaza</address>
</location>
') where WAREHOUSE_ID = 361;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Shanggan</city>
  <locationId>689</locationId>
  <address>3615 Forest Dale Trail</address>
</location>
') where WAREHOUSE_ID = 362;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Portugal</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>PT</countryId>
  </country>
  <postalCode>6120-705</postalCode>
  <city>Castelo</city>
  <locationId>906</locationId>
  <address>7480 Cardinal Hill</address>
</location>
') where WAREHOUSE_ID = 363;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Brazil</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>BR</countryId>
  </country>
  <postalCode>14765-000</postalCode>
  <city>Guajara Mirim</city>
  <locationId>600</locationId>
  <address>113 Warrior Center</address>
</location>
') where WAREHOUSE_ID = 364;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>United States of America</countryName>
    <region>
      <regionId>2</regionId>
      <regionName>North America</regionName>
    </region>
    <countryId>US</countryId>
  </country>
  <postalCode>40225</postalCode>
  <city>Louisville</city>
  <locationId>579</locationId>
  <address>78 Oak Parkway</address>
</location>
') where WAREHOUSE_ID = 368;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Poland</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>PL</countryId>
  </country>
  <postalCode>04-622</postalCode>
  <city>Podeblocie</city>
  <locationId>714</locationId>
  <address>0850 Lakewood Road</address>
</location>
') where WAREHOUSE_ID = 369;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Kepahiang</city>
  <locationId>793</locationId>
  <address>00140 Toban Avenue</address>
</location>
') where WAREHOUSE_ID = 370;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Russian Federation</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>RU</countryId>
  </country>
  <postalCode>433568</postalCode>
  <city>Novaya Mayna</city>
  <locationId>78</locationId>
  <address>30266 Kennedy Street</address>
</location>
') where WAREHOUSE_ID = 372;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Portugal</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>PT</countryId>
  </country>
  <postalCode>4830-184</postalCode>
  <city>Quinta</city>
  <locationId>999</locationId>
  <address>7 Texas Hill</address>
</location>
') where WAREHOUSE_ID = 373;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Gufeng</city>
  <locationId>107</locationId>
  <address>36323 Cordelia Hill</address>
</location>
') where WAREHOUSE_ID = 374;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Czech Republic</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>CZ</countryId>
  </country>
  <postalCode>688 01</postalCode>
  <city>Uhersky Brod</city>
  <locationId>405</locationId>
  <address>2 Lien Lane</address>
</location>
') where WAREHOUSE_ID = 375;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Kedungwringin</city>
  <locationId>1000</locationId>
  <address>8628 Knutson Trail</address>
</location>
') where WAREHOUSE_ID = 376;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Czech Republic</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>CZ</countryId>
  </country>
  <postalCode>391 61</postalCode>
  <city>Oparany</city>
  <locationId>788</locationId>
  <address>92805 Scofield Drive</address>
</location>
') where WAREHOUSE_ID = 378;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Poland</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>PL</countryId>
  </country>
  <postalCode>88-405</postalCode>
  <city>Gorzyce</city>
  <locationId>434</locationId>
  <address>4669 Bartelt Way</address>
</location>
') where WAREHOUSE_ID = 379;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Amagarapati</city>
  <locationId>696</locationId>
  <address>299 Debs Street</address>
</location>
') where WAREHOUSE_ID = 380;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Russian Federation</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>RU</countryId>
  </country>
  <postalCode>652120</postalCode>
  <city>Izhmorskiy</city>
  <locationId>411</locationId>
  <address>9 Center Drive</address>
</location>
') where WAREHOUSE_ID = 382;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Brazil</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>BR</countryId>
  </country>
  <postalCode>65715-000</postalCode>
  <city>Lago da Pedra</city>
  <locationId>585</locationId>
  <address>016 Declaration Crossing</address>
</location>
') where WAREHOUSE_ID = 383;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Russian Federation</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>RU</countryId>
  </country>
  <postalCode>182647</postalCode>
  <city>Tver</city>
  <locationId>363</locationId>
  <address>8933 Fair Oaks Lane</address>
</location>
') where WAREHOUSE_ID = 384;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Guling</city>
  <locationId>683</locationId>
  <address>42 Heath Trail</address>
</location>
') where WAREHOUSE_ID = 385;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>France</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>FR</countryId>
  </country>
  <postalCode>35538 CEDEX</postalCode>
  <city>Noyal-sur-Vilaine</city>
  <locationId>365</locationId>
  <address>72624 Blaine Terrace</address>
</location>
') where WAREHOUSE_ID = 386;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Sukakerta</city>
  <locationId>650</locationId>
  <address>14 Miller Alley</address>
</location>
') where WAREHOUSE_ID = 387;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Sirnasari</city>
  <locationId>690</locationId>
  <address>580 Washington Street</address>
</location>
') where WAREHOUSE_ID = 388;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Daping</city>
  <locationId>964</locationId>
  <address>1808 Truax Crossing</address>
</location>
') where WAREHOUSE_ID = 389;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Brazil</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>BR</countryId>
  </country>
  <postalCode>75400-000</postalCode>
  <city>Inhumas</city>
  <locationId>44</locationId>
  <address>7103 Kropf Road</address>
</location>
') where WAREHOUSE_ID = 390;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Colombia</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>CO</countryId>
  </country>
  <postalCode>520039</postalCode>
  <city>Pasto</city>
  <locationId>834</locationId>
  <address>06 Eliot Lane</address>
</location>
') where WAREHOUSE_ID = 391;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Argentina</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>AR</countryId>
  </country>
  <postalCode>3003</postalCode>
  <city>Helvecia</city>
  <locationId>551</locationId>
  <address>9113 Prairie Rose Drive</address>
</location>
') where WAREHOUSE_ID = 392;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Jordan</countryName>
    <region>
      <regionId>5</regionId>
      <regionName>Middle East</regionName>
    </region>
    <countryId>JO</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Hatim</city>
  <locationId>366</locationId>
  <address>007 Walton Street</address>
</location>
') where WAREHOUSE_ID = 393;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Russian Federation</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>RU</countryId>
  </country>
  <postalCode>143316</postalCode>
  <city>Naro-Fominsk</city>
  <locationId>37</locationId>
  <address>3867 Buena Vista Way</address>
</location>
') where WAREHOUSE_ID = 395;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>India</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>IN</countryId>
  </country>
  <postalCode>490231</postalCode>
  <city>Bombay</city>
  <locationId>12</locationId>
  <address>1298 Vileparle (E)</address>
</location>
') where WAREHOUSE_ID = 396;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>France</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>FR</countryId>
  </country>
  <postalCode>83404 CEDEX</postalCode>
  <city>Hyeres</city>
  <locationId>234</locationId>
  <address>5712 Lakewood Gardens Lane</address>
</location>
') where WAREHOUSE_ID = 397;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Wenlin</city>
  <locationId>832</locationId>
  <address>92834 Prairie Rose Crossing</address>
</location>
') where WAREHOUSE_ID = 398;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Pelem</city>
  <locationId>324</locationId>
  <address>69 Chive Way</address>
</location>
') where WAREHOUSE_ID = 399;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Sugihan</city>
  <locationId>649</locationId>
  <address>055 Schmedeman Plaza</address>
</location>
') where WAREHOUSE_ID = 400;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Belgium</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>BE</countryId>
  </country>
  <postalCode>6834</postalCode>
  <city>Bouillon</city>
  <locationId>568</locationId>
  <address>99 Birchwood Trail</address>
</location>
') where WAREHOUSE_ID = 401;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Malaysia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>MY</countryId>
  </country>
  <postalCode>05622</postalCode>
  <city>Alor Setar</city>
  <locationId>534</locationId>
  <address>867 Village Green Terrace</address>
</location>
') where WAREHOUSE_ID = 402;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Colombia</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>CO</countryId>
  </country>
  <postalCode>415047</postalCode>
  <city>Paicol</city>
  <locationId>354</locationId>
  <address>51712 Garrison Plaza</address>
</location>
') where WAREHOUSE_ID = 403;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Xinandu</city>
  <locationId>687</locationId>
  <address>39 High Crossing Plaza</address>
</location>
') where WAREHOUSE_ID = 404;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Russian Federation</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>RU</countryId>
  </country>
  <postalCode>623036</postalCode>
  <city>Staroutkinsk</city>
  <locationId>756</locationId>
  <address>007 Vahlen Pass</address>
</location>
') where WAREHOUSE_ID = 405;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Sendang</city>
  <locationId>862</locationId>
  <address>4938 Jenifer Trail</address>
</location>
') where WAREHOUSE_ID = 406;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Yangliu</city>
  <locationId>33</locationId>
  <address>640 Carberry Park</address>
</location>
') where WAREHOUSE_ID = 408;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Egypt</countryName>
    <region>
      <regionId>5</regionId>
      <regionName>Middle East</regionName>
    </region>
    <countryId>EG</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Idku</city>
  <locationId>128</locationId>
  <address>60153 Del Sol Plaza</address>
</location>
') where WAREHOUSE_ID = 409;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Yingshouyingzi</city>
  <locationId>242</locationId>
  <address>3 Gulseth Street</address>
</location>
') where WAREHOUSE_ID = 410;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>United Kingdom</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>UK</countryId>
  </country>
  <postalCode>OX9 9ZB</postalCode>
  <city>Oxford</city>
  <locationId>16</locationId>
  <address>Magdalen Centre, The Oxford Science Park</address>
</location>
') where WAREHOUSE_ID = 411;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Czech Republic</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>CZ</countryId>
  </country>
  <postalCode>772 00</postalCode>
  <city>Bukovany</city>
  <locationId>345</locationId>
  <address>106 Pepper Wood Street</address>
</location>
') where WAREHOUSE_ID = 412;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Shuangfeng</city>
  <locationId>790</locationId>
  <address>2 Holmberg Terrace</address>
</location>
') where WAREHOUSE_ID = 413;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Zhanbei</city>
  <locationId>115</locationId>
  <address>54115 Towne Hill</address>
</location>
') where WAREHOUSE_ID = 414;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Czech Republic</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>CZ</countryId>
  </country>
  <postalCode>407 22</postalCode>
  <city>Benesov nad Ploucnici</city>
  <locationId>213</locationId>
  <address>88 Crowley Place</address>
</location>
') where WAREHOUSE_ID = 417;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Russian Federation</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>RU</countryId>
  </country>
  <postalCode>164200</postalCode>
  <city>Nyandoma</city>
  <locationId>480</locationId>
  <address>61 Mallory Lane</address>
</location>
') where WAREHOUSE_ID = 418;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Argentina</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>AR</countryId>
  </country>
  <postalCode>9103</postalCode>
  <city>Rawson</city>
  <locationId>849</locationId>
  <address>89741 Mccormick Place</address>
</location>
') where WAREHOUSE_ID = 419;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Czech Republic</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>CZ</countryId>
  </country>
  <postalCode>389 01</postalCode>
  <city>Vodnany</city>
  <locationId>811</locationId>
  <address>70619 Corscot Terrace</address>
</location>
') where WAREHOUSE_ID = 420;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Czech Republic</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>CZ</countryId>
  </country>
  <postalCode>588 45</postalCode>
  <city>Dolni Cerekev</city>
  <locationId>808</locationId>
  <address>9 Southridge Hill</address>
</location>
') where WAREHOUSE_ID = 421;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>France</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>FR</countryId>
  </country>
  <postalCode>33515 CEDEX</postalCode>
  <city>Libourne</city>
  <locationId>658</locationId>
  <address>78 Vidon Junction</address>
</location>
') where WAREHOUSE_ID = 422;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Viet Nam</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>VN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Tien Phuoc</city>
  <locationId>96</locationId>
  <address>1 Maple Way</address>
</location>
') where WAREHOUSE_ID = 423;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>France</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>FR</countryId>
  </country>
  <postalCode>92980 CEDEX</postalCode>
  <city>Paris La Defense</city>
  <locationId>131</locationId>
  <address>1066 Lillian Road</address>
</location>
') where WAREHOUSE_ID = 424;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Xiage</city>
  <locationId>662</locationId>
  <address>2 Texas Trail</address>
</location>
') where WAREHOUSE_ID = 425;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Colombia</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>CO</countryId>
  </country>
  <postalCode>232517</postalCode>
  <city>San Carlos</city>
  <locationId>605</locationId>
  <address>74 Jenifer Center</address>
</location>
') where WAREHOUSE_ID = 426;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Cigedang</city>
  <locationId>121</locationId>
  <address>41 Steensland Point</address>
</location>
') where WAREHOUSE_ID = 427;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Colombia</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>CO</countryId>
  </country>
  <postalCode>191569</postalCode>
  <city>Corinto</city>
  <locationId>264</locationId>
  <address>47505 Charing Cross Hill</address>
</location>
') where WAREHOUSE_ID = 428;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Russian Federation</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>RU</countryId>
  </country>
  <postalCode>617200</postalCode>
  <city>Mendeleyevo</city>
  <locationId>595</locationId>
  <address>27998 Sloan Park</address>
</location>
') where WAREHOUSE_ID = 429;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Gansa</city>
  <locationId>570</locationId>
  <address>85 Mosinee Court</address>
</location>
') where WAREHOUSE_ID = 430;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Kugri</city>
  <locationId>886</locationId>
  <address>72 Buena Vista Trail</address>
</location>
') where WAREHOUSE_ID = 431;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Poland</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>PL</countryId>
  </country>
  <postalCode>99-200</postalCode>
  <city>Poddebice</city>
  <locationId>484</locationId>
  <address>2 Fisk Plaza</address>
</location>
') where WAREHOUSE_ID = 432;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Argentina</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>AR</countryId>
  </country>
  <postalCode>4624</postalCode>
  <city>Piedra del Aguila</city>
  <locationId>561</locationId>
  <address>5 High Crossing Hill</address>
</location>
') where WAREHOUSE_ID = 433;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Xianghe</city>
  <locationId>435</locationId>
  <address>3468 Fulton Drive</address>
</location>
') where WAREHOUSE_ID = 434;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Huaian</city>
  <locationId>843</locationId>
  <address>1798 Dottie Road</address>
</location>
') where WAREHOUSE_ID = 436;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Argentina</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>AR</countryId>
  </country>
  <postalCode>3364</postalCode>
  <city>El Soberbio</city>
  <locationId>302</locationId>
  <address>5 Service Junction</address>
</location>
') where WAREHOUSE_ID = 437;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Malaysia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>MY</countryId>
  </country>
  <postalCode>50933</postalCode>
  <city>Kuala Lumpur</city>
  <locationId>490</locationId>
  <address>7 Bartillon Trail</address>
</location>
') where WAREHOUSE_ID = 438;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Russian Federation</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>RU</countryId>
  </country>
  <postalCode>644002</postalCode>
  <city>Povenets</city>
  <locationId>846</locationId>
  <address>9659 Morning Park</address>
</location>
') where WAREHOUSE_ID = 439;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Malaysia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>MY</countryId>
  </country>
  <postalCode>91030</postalCode>
  <city>Tawau</city>
  <locationId>139</locationId>
  <address>0 Londonderry Pass</address>
</location>
') where WAREHOUSE_ID = 440;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>South Africa</countryName>
    <region>
      <regionId>6</regionId>
      <regionName>Africa</regionName>
    </region>
    <countryId>ZA</countryId>
  </country>
  <postalCode>2389</postalCode>
  <city>Piet Retief</city>
  <locationId>438</locationId>
  <address>13323 Bartelt Crossing</address>
</location>
') where WAREHOUSE_ID = 441;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Viet Nam</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>VN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Pleiku</city>
  <locationId>746</locationId>
  <address>46219 Fordem Hill</address>
</location>
') where WAREHOUSE_ID = 442;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Chenyang</city>
  <locationId>444</locationId>
  <address>08137 Vidon Terrace</address>
</location>
') where WAREHOUSE_ID = 443;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Xianxi</city>
  <locationId>134</locationId>
  <address>9477 School Road</address>
</location>
') where WAREHOUSE_ID = 444;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Switzerland</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>CH</countryId>
  </country>
  <postalCode>1730</postalCode>
  <city>Geneva</city>
  <locationId>20</locationId>
  <address>20 Rue des Corps-Saints</address>
</location>
') where WAREHOUSE_ID = 445;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Junchuan</city>
  <locationId>210</locationId>
  <address>825 Pepper Wood Road</address>
</location>
') where WAREHOUSE_ID = 446;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Kediren</city>
  <locationId>572</locationId>
  <address>9768 Farmco Trail</address>
</location>
') where WAREHOUSE_ID = 447;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Russian Federation</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>RU</countryId>
  </country>
  <postalCode>633375</postalCode>
  <city>Kovdor</city>
  <locationId>801</locationId>
  <address>0 Esch Junction</address>
</location>
') where WAREHOUSE_ID = 448;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Zhonghechang</city>
  <locationId>307</locationId>
  <address>38148 Elmside Circle</address>
</location>
') where WAREHOUSE_ID = 449;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Poland</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>PL</countryId>
  </country>
  <postalCode>82-420</postalCode>
  <city>Ryjewo</city>
  <locationId>91</locationId>
  <address>30980 Carey Parkway</address>
</location>
') where WAREHOUSE_ID = 451;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Brazil</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>BR</countryId>
  </country>
  <postalCode>84160-000</postalCode>
  <city>Castro</city>
  <locationId>48</locationId>
  <address>263 Rutledge Parkway</address>
</location>
') where WAREHOUSE_ID = 452;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Canada</countryName>
    <region>
      <regionId>2</regionId>
      <regionName>North America</regionName>
    </region>
    <countryId>CA</countryId>
  </country>
  <postalCode>E8L</postalCode>
  <city>Inuvik</city>
  <locationId>951</locationId>
  <address>03972 Susan Hill</address>
</location>
') where WAREHOUSE_ID = 453;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Japan</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>JP</countryId>
  </country>
  <postalCode>818-0138</postalCode>
  <city>Onojo</city>
  <locationId>824</locationId>
  <address>04 Hintze Drive</address>
</location>
') where WAREHOUSE_ID = 454;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Japan</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>JP</countryId>
  </country>
  <postalCode>769-1613</postalCode>
  <city>Kanonjicho</city>
  <locationId>448</locationId>
  <address>7282 Northland Center</address>
</location>
') where WAREHOUSE_ID = 455;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Poland</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>PL</countryId>
  </country>
  <postalCode>07-320</postalCode>
  <city>Malkinia Gorna</city>
  <locationId>587</locationId>
  <address>9 Tennyson Avenue</address>
</location>
') where WAREHOUSE_ID = 456;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Qinghe</city>
  <locationId>932</locationId>
  <address>229 Summit Lane</address>
</location>
') where WAREHOUSE_ID = 457;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Viet Nam</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>VN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Thi Tran Trung Khanh</city>
  <locationId>781</locationId>
  <address>75297 Maple Terrace</address>
</location>
') where WAREHOUSE_ID = 458;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Canada</countryName>
    <region>
      <regionId>2</regionId>
      <regionName>North America</regionName>
    </region>
    <countryId>CA</countryId>
  </country>
  <postalCode>L9T</postalCode>
  <city>Watrous</city>
  <locationId>285</locationId>
  <address>16 Londonderry Circle</address>
</location>
') where WAREHOUSE_ID = 459;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Kamalaputi</city>
  <locationId>422</locationId>
  <address>15 Melvin Terrace</address>
</location>
') where WAREHOUSE_ID = 460;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Nifuboko</city>
  <locationId>584</locationId>
  <address>962 Oak Alley</address>
</location>
') where WAREHOUSE_ID = 461;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Spain</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>ES</countryId>
  </country>
  <postalCode>24010</postalCode>
  <city>Leon</city>
  <locationId>185</locationId>
  <address>9 Trailsway Way</address>
</location>
') where WAREHOUSE_ID = 462;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Russian Federation</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>RU</countryId>
  </country>
  <postalCode>186810</postalCode>
  <city>Pitkyaranta</city>
  <locationId>840</locationId>
  <address>79623 North Drive</address>
</location>
') where WAREHOUSE_ID = 463;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Cileles</city>
  <locationId>542</locationId>
  <address>6 Erie Park</address>
</location>
') where WAREHOUSE_ID = 464;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Selorejo</city>
  <locationId>143</locationId>
  <address>6 Raven Way</address>
</location>
') where WAREHOUSE_ID = 465;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Mexico</countryName>
    <region>
      <regionId>2</regionId>
      <regionName>North America</regionName>
    </region>
    <countryId>MX</countryId>
  </country>
  <postalCode>11932</postalCode>
  <city>Mexico City</city>
  <locationId>23</locationId>
  <address>Mariano Escobedo 9991</address>
</location>
') where WAREHOUSE_ID = 466;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Nigeria</countryName>
    <region>
      <regionId>6</regionId>
      <regionName>Africa</regionName>
    </region>
    <countryId>NG</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Zuru</city>
  <locationId>237</locationId>
  <address>61411 Delaware Court</address>
</location>
') where WAREHOUSE_ID = 467;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Miribanteng</city>
  <locationId>208</locationId>
  <address>837 Union Alley</address>
</location>
') where WAREHOUSE_ID = 468;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Kadengan</city>
  <locationId>299</locationId>
  <address>56878 Schmedeman Place</address>
</location>
') where WAREHOUSE_ID = 469;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Russian Federation</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>RU</countryId>
  </country>
  <postalCode>142390</postalCode>
  <city>Lvovskiy</city>
  <locationId>775</locationId>
  <address>15 Lakewood Gardens Crossing</address>
</location>
') where WAREHOUSE_ID = 470;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Panghadangan</city>
  <locationId>769</locationId>
  <address>9 Macpherson Park</address>
</location>
') where WAREHOUSE_ID = 471;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Thailand</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>TH</countryId>
  </country>
  <postalCode>45000</postalCode>
  <city>Roi Et</city>
  <locationId>512</locationId>
  <address>6 Roth Place</address>
</location>
') where WAREHOUSE_ID = 472;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Changbai</city>
  <locationId>660</locationId>
  <address>08 Talmadge Circle</address>
</location>
') where WAREHOUSE_ID = 473;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Poland</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>PL</countryId>
  </country>
  <postalCode>42-284</postalCode>
  <city>Herby</city>
  <locationId>952</locationId>
  <address>71 Buell Pass</address>
</location>
') where WAREHOUSE_ID = 474;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Adiwerna</city>
  <locationId>495</locationId>
  <address>49242 Gateway Plaza</address>
</location>
') where WAREHOUSE_ID = 475;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Portugal</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>PT</countryId>
  </country>
  <postalCode>2530-187</postalCode>
  <city>Nadrupe</city>
  <locationId>368</locationId>
  <address>61225 Arapahoe Plaza</address>
</location>
') where WAREHOUSE_ID = 476;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Nigeria</countryName>
    <region>
      <regionId>6</regionId>
      <regionName>Africa</regionName>
    </region>
    <countryId>NG</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Madagali</city>
  <locationId>564</locationId>
  <address>99944 Sachtjen Way</address>
</location>
') where WAREHOUSE_ID = 477;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Portugal</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>PT</countryId>
  </country>
  <postalCode>2760-012</postalCode>
  <city>Laveiras</city>
  <locationId>329</locationId>
  <address>2762 Warrior Parkway</address>
</location>
') where WAREHOUSE_ID = 478;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Nigeria</countryName>
    <region>
      <regionId>6</regionId>
      <regionName>Africa</regionName>
    </region>
    <countryId>NG</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Maru</city>
  <locationId>111</locationId>
  <address>60471 North Court</address>
</location>
') where WAREHOUSE_ID = 479;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Simpangpasir</city>
  <locationId>987</locationId>
  <address>10712 Grover Parkway</address>
</location>
') where WAREHOUSE_ID = 480;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Argentina</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>AR</countryId>
  </country>
  <postalCode>2121</postalCode>
  <city>Perez</city>
  <locationId>49</locationId>
  <address>60 Shelley Hill</address>
</location>
') where WAREHOUSE_ID = 481;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Portugal</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>PT</countryId>
  </country>
  <postalCode>4615-544</postalCode>
  <city>Bacelo</city>
  <locationId>431</locationId>
  <address>6161 Sycamore Plaza</address>
</location>
') where WAREHOUSE_ID = 482;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Colombia</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>CO</countryId>
  </country>
  <postalCode>706037</postalCode>
  <city>Palmito</city>
  <locationId>679</locationId>
  <address>0942 Basil Lane</address>
</location>
') where WAREHOUSE_ID = 483;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Gongnong</city>
  <locationId>582</locationId>
  <address>90692 Service Center</address>
</location>
') where WAREHOUSE_ID = 484;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Thailand</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>TH</countryId>
  </country>
  <postalCode>40210</postalCode>
  <city>Nong Ruea</city>
  <locationId>919</locationId>
  <address>51 Namekagon Parkway</address>
</location>
') where WAREHOUSE_ID = 485;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Brazil</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>BR</countryId>
  </country>
  <postalCode>56300-000</postalCode>
  <city>Petrolina</city>
  <locationId>652</locationId>
  <address>68596 Marcy Court</address>
</location>
') where WAREHOUSE_ID = 486;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Panama</countryName>
    <region>
      <regionId>2</regionId>
      <regionName>North America</regionName>
    </region>
    <countryId>PA</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Nueva Gorgona</city>
  <locationId>973</locationId>
  <address>24 Harbort Park</address>
</location>
') where WAREHOUSE_ID = 487;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Beiqijia</city>
  <locationId>833</locationId>
  <address>598 Holmberg Drive</address>
</location>
') where WAREHOUSE_ID = 488;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>United States of America</countryName>
    <region>
      <regionId>2</regionId>
      <regionName>North America</regionName>
    </region>
    <countryId>US</countryId>
  </country>
  <postalCode>32605</postalCode>
  <city>Gainesville</city>
  <locationId>949</locationId>
  <address>2 Mayer Drive</address>
</location>
') where WAREHOUSE_ID = 489;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Colombia</countryName>
    <region>
      <regionId>3</regionId>
      <regionName>South America</regionName>
    </region>
    <countryId>CO</countryId>
  </country>
  <postalCode>521508</postalCode>
  <city>Arboleda</city>
  <locationId>349</locationId>
  <address>409 Spenser Pass</address>
</location>
') where WAREHOUSE_ID = 490;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Terjan</city>
  <locationId>719</locationId>
  <address>249 Mockingbird Crossing</address>
</location>
') where WAREHOUSE_ID = 491;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Citeureup</city>
  <locationId>25</locationId>
  <address>60 Milwaukee Drive</address>
</location>
') where WAREHOUSE_ID = 492;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Doropayung</city>
  <locationId>763</locationId>
  <address>152 Granby Point</address>
</location>
') where WAREHOUSE_ID = 493;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Jishigang</city>
  <locationId>991</locationId>
  <address>77323 Jenna Lane</address>
</location>
') where WAREHOUSE_ID = 494;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Anhai</city>
  <locationId>383</locationId>
  <address>2901 Paget Avenue</address>
</location>
') where WAREHOUSE_ID = 495;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Naikoten Dua</city>
  <locationId>803</locationId>
  <address>34895 Thompson Parkway</address>
</location>
') where WAREHOUSE_ID = 496;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Indonesia</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>ID</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Praimarada</city>
  <locationId>315</locationId>
  <address>09391 Wayridge Drive</address>
</location>
') where WAREHOUSE_ID = 497;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>China</countryName>
    <region>
      <regionId>4</regionId>
      <regionName>Asia</regionName>
    </region>
    <countryId>CN</countryId>
  </country>
  <postalCode>None</postalCode>
  <city>Timeng</city>
  <locationId>159</locationId>
  <address>0 Quincy Court</address>
</location>
') where WAREHOUSE_ID = 498;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Poland</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>PL</countryId>
  </country>
  <postalCode>32-546</postalCode>
  <city>Psary</city>
  <locationId>983</locationId>
  <address>85819 Rigney Road</address>
</location>
') where WAREHOUSE_ID = 499;
update usr.warehouses set LOCATION = XMLType('<location>
  <country>
    <countryName>Czech Republic</countryName>
    <region>
      <regionId>1</regionId>
      <regionName>Europe</regionName>
    </region>
    <countryId>CZ</countryId>
  </country>
  <postalCode>783 56</postalCode>
  <city>Doloplazy</city>
  <locationId>175</locationId>
  <address>950 Ilene Drive</address>
</location>
') where WAREHOUSE_ID = 500;
COMMIT;
