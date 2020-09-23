<?php require_once('Connections/sle.php');
header('Content-type: text/html; charset=utf-8');
?>
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  <title>Directorio IDM</title>
</head>

<body>
  <div class="container">
    <?php
    mysqli_query($sle,"SET NAMES 'utf8'");
    mysqli_select_db($sle, $database_sle);
    $sql = "SELECT * FROM directorio";
    $resultado = mysqli_query($sle, $sql) or die(mysql_error());
    ?>

    <div class="row">
      <div class="col-md-12">
        <center><img src="imagenes/dosquebradas emprendedoora.png" class="img-fluid" alt="Responsive image" hspace="20" /></center>
        <hr>
      </div>

      <div class="col-md-12">
        <center>
          <form name="form1" method="post" onsubmit="return noespacios()" action="buscar1.php">
            <table>
              <tr>
                <td>Digite dependencia a consultar...</td>
                <td><input name="nombre1a" type="text" id="nombre1a" /></td>
              </tr>
              <tr>
                <td colspan="2"><br>
                  <center><input name="button" class="btn btn-success" type="submit" id="button" value="Consultar..." /></center>
                </td>
              </tr>
            </table>
          </form>
        </center>
      </div>
    </div>

    <hr>

    <div class="row">
      <div class="col-md-12">
        <center>
          <table class="table table-striped">
            <thead>
              <tr>
                <th><B>Id</B></th>
                <th><B>Nombres</B></th>
                <th><B>Apellidos</B></th>
                <th><B>Cargo</B></th>
                <th><B>Dependencia</B></th>
                <th><B>Telefono</B></th>
                <th><B>Correo</B></th>
                <!-- <th><B>Ciudad</B></th> -->
                <!-- <th><B>Departamento</B></th> -->
                <th><B>Pais</B></th>
                <!-- <th><B>Formacion academica</B></th> -->
                <!-- <th><B>Experiencia laboral</B></th> -->
              </tr>
            </thead>

            <tbody>
              <?php
              while ($row = mysqli_fetch_row($resultado)) {
                echo "<tr class='tituloFINAL'>";
                echo "<td>$row[11]</td> \n";
                echo "<td>$row[0]</td> \n";
                echo "<td>$row[1]</td> \n";
                echo "<td>$row[7]</td> \n";
                echo "<td>$row[8]</td> \n";
                echo "<td>$row[9]</td> \n";
                echo "<td>$row[10]</td> \n";
                //echo "<td>$row[2]</td> \n";
                //echo "<td>$row[3]</td> \n";
                echo "<td>$row[4]</td> \n";
                //echo "<td>$row[5]</td> \n";
                //echo "<td>$row[6]</td> \n";
                echo "</tr>";
              }
              ?>
            </tbody>
            </table>
        </center>
      </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </div>
</body>

</html>