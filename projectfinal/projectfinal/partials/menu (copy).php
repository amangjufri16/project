<div style="background-color:orange;" > 
            <div style="display:inline-block;"> 
                <img class = "gambar" src = "/projectfinal/assets/images/logo_2.png">
            </div> 
            <div style="padding-left:300px; display:inline-block; width:50% !important"> 
                <ul>
                    <li><a href="/projectfinal/pages/pasien.php">pasien</a></li>
                    <li><a href="/projectfinal/pages/transaction.php">transaction</a></li>
                    <li><a href="/projectfinal/pages/kamar.php">kamar</a></li>
                    <li><a href="/projectfinal/pages/vasilitas_kamar.php">fasilitas kamar</a></li>
                    <li><a href="/projectfinal/pages/vasilitas.php">fasilitas</a></li>
                    <?php 
                        if (  $_SESSION['status'] == "login") { ?> 
                         <li><a href="../logic/logout.php">logout</a></li>
                      <?php  } else {?> 
                      
                      <li><a href="../pages/login.php">login</a></li>
                      <?php }?> 
                </ul>
            </div> 
        </div>