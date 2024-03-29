<?php
require_once('db_connector.php');

if(isset($_POST['status']) && isset($_POST['reqId'])) {
    $status = $_POST['status'];
    $id =  $_POST['reqId'];


    
    $sql = "UPDATE transaction_table SET lab_id = '$status' WHERE trans_id = '$id'";

    if ($connection->query($sql) === TRUE) {
    } else {
        $connection->error;
    }
}

    include "templates/header.php";

    

?>
        <div class="content" id="content">
            <div class="topbar">
                <a href="" id="togglebtn"><ion-icon name="menu-outline"></ion-icon></a>
                <a class="logout"><ion-icon name="log-out-outline"></ion-icon></a>
            </div>
            <div class="display">
                <h2 class = "listAssetTitle">LIST OF ASSET</h2>
                <button id = "viewStock" >VIEW STOCKS</button>

                <div id="popupFormAssetDisplay" class="popup-formAssetDisplay">
                    <button id = "cancelAssetDisplay" onclick = "cancelAsset()">Cancel</button>
                        <div class = "assetSpecificationDisplay" ID = "assetSpecificationDisplay">
                            <h6 class = "qrDisplay" id = "assetD">Asset ID:</h6>
                            <h5 class = "qrDisplay" id = "assetIdDisplay">15</h2><br>
                            <h6 class = "qrDisplay" id = "typeDisplayAss">DEVICE TYPE:</h6>
                            <h5 class = "qrDisplay" id = "deviceTypeAss">Mouse</h2><br>
                            <h6 class = "qrDisplay" id = "brandLblDisplay">BRAND:</h6>
                            <h5 class = "qrDisplay" id = "brandLblDisplayAss">Razer</h5><br>
                            <h6 class = "qrDisplay" id = "statusDisplayAss">STATUS:</h6>
                            <h5 class = "qrDisplay" id = "statusDisplayAsset">New</h5><br>
                            <h6 class = "qrDisplay" id = "descriptionDisplayAss">DESCRIPTION:</h6>
                            <h5 class = "qrDisplay" id = "descriptionDisplayAsset"></h5><br>
                            <h6 class = "qrDisplay" id = "companyDisplayAss">COMPANY SUPPLIER:</h6>
                            <h5 class = "qrDisplay" id = "companyDisplayAsset">asd</h5><br>
                            <button id = "qrCodeGenerate"onclick = "generateQrCode()">Generate Qr Code</button>
                        
                        <div class = "qrcode" id = "qrcode">
                            <h6>QR CODE</h3>
                        </div>

                        </div>

                    </div>

                    <div class="assetTableDisplay">

                        <table class = "assetTable" id = "assetTable">

                            <thead class = "assetRowDisplay">
                                <tr>
                                    <th class = "actionAss">ID</th>
                                    <th class = "actionAss">DEVICE TYPE</th>
                                    <th class = "actionAss">BRAND</th>
                                    <th class = "actionAss">STATUS</th>
                                    <th class = "actionAss">ASSIGNED TO</th>
                                </tr>
                            </thead>
                    <div class = "insideAssetTable">
                            <tbody  >
                    
                                <?php
                                require_once('db_connector.php');

                                $labNamesQuery = "SELECT lab_id, lab_name FROM laboratories";
                                $labNamesResult = $connection->query($labNamesQuery);
                                $labOptions = "";
                                if ($labNamesResult->num_rows > 0) {
                                    while ($labRow = $labNamesResult->fetch_assoc()) {
                                        $labOptions .= "<option value='$labRow[lab_id]'>$labRow[lab_name]</option>";
                                    }
                                }
                            


                                    $sql = "SELECT transaction_table.trans_id as trans_id, transaction_table.asset_id as asset_id, transaction_table.lab_id as lab_id, transaction_table.sup_id as sup_id, transaction_table.asset_stat as asset_status, assets.asset_type as asset_type, assets.asset_quant as asset_quant, assets.asset_brand as asset_brand, assets.asset_desc as asset_desc,  CONCAT(supplier.sup_fname, ' ', supplier.sup_lname) as suplFulName,supplier.company_name as company_name, laboratories.lab_name as assign_lab FROM transaction_table INNER JOIN assets ON transaction_table.asset_id = assets.asset_id INNER JOIN laboratories ON transaction_table.lab_id = laboratories.lab_id INNER JOIN supplier ON transaction_table.sup_id = supplier.sup_id";
                                   
                                    $result = $connection->query($sql);

                                    if(!$result){
                                        die("Invalid query: ". $connection->error);
                                    }

                                    while($row = $result->fetch_assoc()){
                                        echo "
                                        <tbody class = 'table-row' >
                                            <td data-company = '$row[company_name]', data-assetBrand = '$row[asset_brand]'  data-assetId = '$row[trans_id]' data-status = '$row[asset_status]' data-contactSup = '$row[suplFulName]'data-description = '$row[asset_desc]' data-assetType = '$row[asset_type]' class = 'assetDisplayRow' id = 'assetRow'>$row[trans_id]</td>
                                            <td data-company = '$row[company_name]', data-assetBrand = '$row[asset_brand]'  data-assetId = '$row[trans_id]' data-status = '$row[asset_status]' data-contactSup = '$row[suplFulName]'data-description = '$row[asset_desc]' data-assetType = '$row[asset_type]' class = 'assetDisplayRow' class = 'assetDisplayRow' id = 'assetRow'>$row[asset_type]</td>
                                            <td data-company = '$row[company_name]', data-assetBrand = '$row[asset_brand]'  data-assetId = '$row[trans_id]' data-status = '$row[asset_status]' data-contactSup = '$row[suplFulName]'data-description = '$row[asset_desc]' data-assetType = '$row[asset_type]' class = 'assetDisplayRow' id = 'assetRow' >$row[asset_brand]</td>
                                            <td data-company = '$row[company_name]', data-assetBrand = '$row[asset_brand]'  data-assetId = '$row[trans_id]' data-status = '$row[asset_status]' data-contactSup = '$row[suplFulName]'data-description = '$row[asset_desc]' data-assetType = '$row[asset_type]' class = 'assetDisplayRow' id = 'assetRow'>$row[asset_status]</td>
                                            <td id = 'assetRow'>
                                                <select class='status-dropdown' data-lab_id ='$row[lab_id]' data-trans_id ='$row[trans_id]'>
                                                    <option >$row[assign_lab]
                                                    </option>
                                                    $labOptions
                                                </select>
                                            </td>
                                        ";
                                        echo '</tr>';
                                    }
                                ?>
                    
                            </tbody>
                    </div>
                        </table>
                </div>
            </div>
        </div>
    </div>
 
    <script src="https://cdn.rawgit.com/davidshimjs/qrcodejs/gh-pages/qrcode.min.js"></script>
    <script>

        function generateQrCode(){
            let dynamicTextElements = document.querySelectorAll('.qrDisplay');
            let combinedText = Array.from(dynamicTextElements)
                .map(element => (element.textContent || element.innerText) + '\t \n')
                .join('');
            generateDynamicQRCode(combinedText);
            }
            
            function cancelAsset(){
                popupFormAssetDisplay.style.display = "none";
                location.reload();
            }

            function generateDynamicQRCode(text) {
                var qrcode = new QRCode(document.getElementById("qrcode"), {
                text: text,
                width: 180,
                height: 180,
            });
        }

          document.addEventListener('DOMContentLoaded', function() {
            var showAssetInfo = document.querySelectorAll('.assetDisplayRow');
            var labSelect = document.querySelectorAll('.status-dropdown');
           
            labSelect.forEach(function(statupdate) {
                statupdate.addEventListener('change', function () {
                    
                    if (event.target.classList.contains('status-dropdown')){
                        var selectedValue = event.target.value;
                    }
                        let transId = this.getAttribute("data-trans_id");
                        console.log(selectedValue);
                        console.log(transId);
                        var xhr = new XMLHttpRequest();
                        xhr.open("POST", "", true);
                        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                        xhr.send("status="+selectedValue+"&&reqId="+transId);
                });
            });
            showAssetInfo.forEach(function(row) {
                row.addEventListener('click', function() {
                    let assetIdInput = document.getElementById("assetIdDisplay");
                    let type = document.getElementById("deviceTypeAss");
                    let brand = document.getElementById("brandLblDisplayAss");
                    let status = document.getElementById("statusDisplayAsset");
                    let contactPerson = document.getElementById("contactPersonAsset");
                    let description = document.getElementById("descriptionDisplayAsset");
                    let companyDisp = document.getElementById("companyDisplayAsset");
                    let assetName = this.getAttribute('data-assetName');
                    let assetType = this.getAttribute('data-assetType');
                    let assetStat = this.getAttribute('data-status');
                    let assetSup = this.getAttribute('data-contactSup');
                    let company = this.getAttribute('data-company');
                    let assetDesc = this.getAttribute('data-description');
                    let assetbrand = this.getAttribute('data-assetBrand');
                    let assetSupplier = this.getAttribute('data-assetSup');
                    let assetId = this.getAttribute('data-assetId');
                    let supId = this.getAttribute('data-supId');
                    let h2Content = document.getElementById
                    ("titleOfForm");
                    popupFormAssetDisplay.style.display = "block";
                    assetIdInput.innerHTML = assetId;
                    type.innerHTML = assetType;
                    brand.innerHTML = assetbrand;
                    status.innerHTML = assetStat;
                    description.innerHTML = assetDesc;
                    companyDisp.innerHTML = company;
                });
            });
            
        });

        viewStock.addEventListener("click", function(){
            window.location.href = "http://localhost/asset/myDashboard/stockAsset.php";
        });

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