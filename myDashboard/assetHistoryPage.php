<?php

    include "templates/header.php";

?>
        <div class="content" id="content">
            <div class="topbar">
                <a href="" id="togglebtn"><ion-icon name="menu-outline"></ion-icon></a>
                <a class="logout"><ion-icon name="log-out-outline"></ion-icon></a>
            </div>
                <h3>ASSET HISTORY</h3>
            <div class="display">


                <table class = "assetTable" id = "assetTable">

                    <thead class = "rowDisplay">
                        <tr>
                            <th class = "actionAss">ID</th>
                            <th class = "actionAss">DEVICE TYPE</th>
                            <th class = "actionAss">BRAND</th>
                            <th class = "actionAss">STATUS</th>
                            <th class = "actionAss">ASSIGNED TO</th>
                        </tr>
                    </thead>
                
                    <tbody  >

                        <?php
                        require_once('db_connector.php');


                            $sql = "SELECT transaction_table.trans_id as trans_id, transaction_table.asset_id as asset_id, transaction_table.lab_id as lab_id, transaction_table.sup_id as sup_id, transaction_table.asset_stat as asset_status, assets.asset_type as asset_type, assets.asset_quant as asset_quant, assets.asset_brand as asset_brand, assets.asset_desc as asset_desc,  CONCAT(supplier.sup_fname, ' ', supplier.sup_lname) as suplFulName,supplier.company_name as company_name, laboratories.lab_name as assign_lab FROM transaction_table INNER JOIN assets ON transaction_table.asset_id = assets.asset_id INNER JOIN laboratories ON transaction_table.lab_id = laboratories.lab_id INNER JOIN supplier ON transaction_table.sup_id = supplier.sup_id";
                        
                            $result = $connection->query($sql);

                            if(!$result){
                                die("Invalid query: ". $connection->error);
                            }

                            while($row = $result->fetch_assoc()){
                                echo "
                                <tbody class = 'table-row' data-company = '$row[company_name]', data-assetBrand = '$row[asset_brand]' data-status = '$row[asset_status]' data-contactSup = '$row[suplFulName]'data-description = '$row[asset_desc]' data-assetType = '$row[asset_type]'>
                                    <td  id = 'laboratoryRow'>$row[trans_id]</td>
                                    <td  id = 'laboratoryRow'>$row[asset_type]</td>
                                    <td id = 'laboratoryRow' >$row[asset_brand]</td>
                                    <td  id = 'laboratoryRow'>$row[asset_status]</td>
                                    <td id = 'laboratoryRow'>$row[assign_lab]</td>
                                ";
                                echo '</tr>';
                            }
                        ?>

                    </tbody>
                </table>
                
            </div>
        </div>
    </div>
 
    <script src="https://cdn.rawgit.com/davidshimjs/qrcodejs/gh-pages/qrcode.min.js"></script>
    <script>

        var sideBarToggle = true;

        togglebtn.addEventListener('click', (event) =>{
            event.preventDefault();

            if(sideBarToggle){
                sideBar.style.width = '8%';
                title.style.display = 'none';
                content.style.width = '95%';
                sideBar.style.transition = '1s';
                menu_list.style.marginTop = "193px";


                menuIcons = document.getElementsByClassName('textLink');
                for(var i =0; i<menuIcons.length; i++){
                    menuIcons[i].style.display = 'none';
                }
                sideBarToggle = false;
            }else{
                sideBar.style.width = '15%';
                title.style.display = 'block';
                content.style.width = '85%';
                menu_list.style.marginTop = "40px";

                menuIcons = document.getElementsByClassName('textLink');
                for(let i =0; i<menuIcons.length; i++){
                    menuIcons[i].style.display = 'block';
                }
                sideBarToggle = true; 
            }
            
        });

       

    </script>
</body>
</html>