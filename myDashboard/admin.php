<?php

require_once('db_connector.php');

$sql = "";
$admin_fname = "";
$admin_lname = "";
$admin_num = "";
$admin_email = "";

$errorMessage = "";
$successMessage = "";

if($_SERVER['REQUEST_METHOD'] == 'POST'){

    $admin_fname = $_POST["admin_fname"];
    $admin_lname = $_POST["admin_lname"];
    $admin_num = $_POST["admin_num"];
    $admin_email = $_POST["admin_email"];

    $operation = $_POST["postType"];

    do {

        if($operation == "add"){

            $sqlAdminname = "SELECT * FROM admins where admin_fname = '$admin_fname' AND admin_lname = '$admin_lname'";

            $resultAdminName = $connection->query($sqlAdminname);

            
            if ($resultAdminName->num_rows == 0) {

                $sql = "INSERT INTO admins (admin_fname, admin_lname,admin_num, admin_email) VALUES ('$admin_fname', '$admin_lname', '$admin_num', '$admin_email')";

                $result = $connection->query($sql);


                if(!$result){
                    $errorMessage = 'Invalid Query: ' .$connection->error;
                    break;
                }
                
            } else {
                echo "Full name already exists!";
            }


        }

        if($operation == "update"){

            $adminId = $_POST["adminId"];
            $admin_fname = $_POST["admin_fnameUpdate"];
            $admin_lname = $_POST["admin_lnameUpdate"];
            $admin_num = $_POST["admin_numUpdate"];
            $admin_email = $_POST["admin_emailUpdate"];

            $sql = "UPDATE admins set admin_fname = '$admin_fname', admin_lname = '$admin_lname', admin_num = '$admin_num', admin_email = '$admin_email' WHERE admin_id = '$adminId'";

            if ($connection->query($sql) === TRUE) {
            } else {
                $connection->error;
            }
        }

        header("location: /asset/myDashboard/admin.php");

    } while (false);

}

    if(isset($_POST['deleteAdmin'])) {
        $id = $_POST['deleteAdmin'];
        
        $sql = "DELETE FROM admins WHERE admin_id = $id";

        if ($connection->query($sql) === TRUE) {
            echo "Record deleted successfully";
        } else {
            echo "Error deleting record: " . $connection->error;
        }

        $connection->close();
    }

?>

<?php 

    include "templates/header.php";


?>
        <div class="content" id="content">
            <div class="topbar">
                <a href="" id="togglebtn"><ion-icon name="menu-outline"></ion-icon></a>
                <a  href="http://localhost/asset/AssetTracking/index.php" class="logout"><ion-icon name="log-out-outline"></ion-icon></a>
            </div>
            <div class="display">

                <div class = "suppAddTitle">
                    <h2>LIST OF ADMINS</h2>
                </div>

                <div class="adminTableDisplay">

                    <table class = "adminMainTable" >

                        <thead class = "adminHeaderTable">
                            <tr >
                                <th id = "adminCol">ID</th>
                                <th id = "adminCol">FIRST NAME</th>
                                <th id = "adminCol">LAST NAME</th>
                                <th id = "adminCol">CONTACT NUMBER</th>
                                <th id = "adminCol">EMAIL</th>
                            </tr>
                        </thead>

                        <tbody  >
                
                            <?php
                               require_once('db_connector.php');


                                $sql = "SELECT * From admins WHERE admin_role = 'Instructor'";
                                $result = $connection->query($sql);

                                if(!$result){
                                    die("Invalid query: ". $connection->error);
                                }

                                while($row = $result->fetch_assoc()){
                                    echo "
                                    <tbody  class = 'table-row'>
                                        <td   id = 'laboratoryRow'>$row[admin_id]</td>
                                        <td   id = 'laboratoryRow' style = 'padding-left = 400px;'>$row[admin_fname]</td>
                                        <td   id = 'laboratoryRow'>$row[admin_lname]</td>
                                        <td   id = 'laboratoryRow'>$row[admin_num]</td>
                                        <td id = 'laboratoryRow'>$row[admin_email]</td>
                                    ";
                                    echo '</tr>';
                                }
                            ?>
                
                        </tbody>

                     </table>
                </div>

                
            </div>
           
    </div>
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js">
    </script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js">
    </script>
    <script>

        let editable = true;

        // Toggle Sidebar
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