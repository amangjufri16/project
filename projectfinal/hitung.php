<html>
        <head>
            <title>jumlah Gaji Karyawan</title>
        <style>
                table, th, td {
                border: 1px solid black;
                border-collapse: collapse;
                
                }

                th, td {
                padding: 5px;
                }

                th {
                text-align: center;
                }
                h2 {
                text-align: center;
                }
        </style>
        </head>
    <body>
        <?php
            $nama = $_POST['nama_anda'];
            $alamat = $_POST['alamat'];
            $absensi = $_POST['absensi'];
            $telfon = $_POST['nomor_telfon'];
            $jabatan = $_POST['jabatan'];
            $gaji = $_POST['gaji'];

                if($absensi < 5 )
                    {
                       $gajitotal =  $gaji - 10000 ;
                    }
                elseif($absensi == 5)
                        {
                            $gajitotal = $gaji - 100000  ; 
                        }
                elseif ($absensi  > 5)
                        {
                            $gajitotal = $gaji - 300000 ;
                        }
        ?>
        
        <div style="width:50%; margin:0 auto ">
            <h2> gaji pada bulan                 <?php echo date('m'); ?> </h2>
            <p> tanggal  :                       <?php echo date('l, d-m-Y'); ?> </p>
            <p> Nama     :                       <?php echo $nama ?> </p> 
            <p> Gaji Pokok :                     <?php echo $gaji ?> </p>
            <p> alamat :                         <?php echo $alamat ?> </p>
            <p> Nomor telfon :                   <?php echo $telfon ?> </p>
            <p> jabatan :                        <?php echo $jabatan ?> </p>

            <table style="width:100%">
                <tr>
                    <th> Nama </th>
                    <th> gaji pokok </th> 
                    <th> gaji akhir </th>
                </tr>
                <tr>
                    <td> <?php echo $nama ?> </td>
                    <td> <?php echo $gaji ?> </td>
                    <td> <?php echo $gajitotal ?> </td>
                </tr>
            </table>
        </div>
    </body>
</html>