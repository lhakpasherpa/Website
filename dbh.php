<html>

<?php

$dbServername = "localhost";
$dbUsername = "root";
$dbPassword = "";
$dbName = "websitedb";

$conn = mysqli_connect($dbServername, $dbUsername, $dbPassword, $dbName);
?>

       <table class="table">
        <tr>
          <th>Name</th>
          <th>Description </th>
        </tr>     

      <?php foreach ($_POST['data'] as $check) ?>
   <?php $sql = "SELECT * from `$check` ";
    $result = mysqli_query($conn,$sql); ?> 

       <?php while ($row = mysqli_fetch_assoc($result)): ?>   
     
        <tr>
          <td> <?php echo $row['name'];?></td>
          <td> <?php echo $row['description'];?></td>
    </tr>
    <?php endwhile; ?>
    </table>
    
    </html> 
 
