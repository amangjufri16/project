<nav class="navbar navbar-expand-lg navbar-light bg-light background-color: orange"  >
<div style="display:inline-block;"> 
<img class = "gambar" src = "/projectfinal/assets/images/logo_2.png">
</div> 
  
  <div style="display:inline-block;" width: 700%; id="navbarSupportedContent">
    <ul class="nav navbar-nav navbar-right">

      <li class="nav-item active">
        <a class="nav-link" href="/projectfinal/pages/pasien.php"> pasien <span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item nav-active">
        <a class="nav-link" href="/projectfinal/pages/transaction.php">transaction</a>
      </li>
     
      <li class="nav-item">
        <a class="nav-link disabled" href="/projectfinal/pages/kamar.php">kamar</a>
      </li>

      <li class="nav-item">
        <a class="nav-link disabled" href="/projectfinal/pages/vasilitas_kamar.php">vasilitas kamar</a>
      </li>

      <li class="nav-item">
        <a class="nav-link disabled" href="/projectfinal/pages/vasilitas.php">vasilitas</a>
      </li>
      <?php 
            if (  $_SESSION['status'] == "login") { ?> 
            <li><a href="../logic/logout.php">logout</a></li>
            <?php  } else {?> 
                      
            <li><a href="../pages/login.php">login</a></li>
            <?php }?> 
    </ul>
  </div>
</nav>