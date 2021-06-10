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

<?php
    mysqli_query($sle,"SET NAMES 'utf8'");
    mysqli_select_db($sle, $database_sle);
    $sql = "SELECT * FROM directorio";
    $resultado = mysqli_query($sle, $sql);
?>

<body>
  <div class="container">

    <br>
    <hr>

    <div class="row">
      <div class="col-md-12">
          <form name="form1" method="post" action="interfaceConsultaAdministrativa.php">
            <table>
              <tr>
                <td colspan="3"><B>API DE CONSULTA - IDM - Funcionarios vinculados</B></td>
              </tr>
              <tr>
                <td>Estimado funcionari@ por favor digite el <B>PIN de seguridad</B> para generar el listado respectivo </td>
                <td><input required  name="pin" type="number" id="pin" /></td>
                <td><input name="button" class="btn btn-success" type="submit" id="button" value="Validad PIN y generar listado" /></td>
              </tr>
            </table>
          </form>
      </div>
    </div>

    <hr>

    <?php if ((isset($_POST['pin'])) && $_POST['pin'] == '31417320' ) { ?>

    <div class="row">
      <div class="col-md-12">
        <center>
          <table border = '1'>
            <thead>
              <tr>
                <th><B>Nombres</B></th>
                <th><B>Apellidos</B></th>
                <th><B>Ciudad</B></th>
                <th><B>Departamento</B></th>
                <th><B>Pais</B></th>
                <th><B>Formacion</B></th>
                <th><B>Experiencia</B></th>
                <th><B>Cargo</B></th>
                <th><B>Dependencia</B></th>
                <th><B>Telefono</B></th>
                <th><B>Correo</B></th>
                <th><B>Id</B></th>
                <th><B>Documento</B></th>
                <th><B>Genero</B></th>
                <th><B>Antiguedad en el cargo</B></th>
                <th><B>Discapacidad</B></th>
                <th><B>Prepensionado</B></th>
                <th><B>Cabeza familia</B></th>
                <th><B>Pertenece a grupo</B></th>
                <th><B>Fuero sindical</B></th>
                <th><B>Perfil empleo</B></th>
                <th><B>Expectativa movilidad</B></th>
                <th><B>Nivel</B></th>
                <th><B>Codigo</B></th>
                <th><B>Grado</B></th>
                <th><B>Naturaleza empleo</B></th>
                <th><B>Vinculacion empleo</B></th>
                <th><B>Tipo vacancia</B></th>
                <th><B>Situacion administrativa</B></th>
              </tr>
            </thead>

            <tbody>
              <?php
              while ($row = mysqli_fetch_row($resultado)) {
                echo "<tr class='tituloFINAL'>";
                echo "<td><h4>$row[0]</h4></td> \n";
                echo "<td><h4>$row[1]</h4></td> \n";
                echo "<td><h6>$row[2]</h6></td> \n";
                echo "<td><h6>$row[3]</h6></td> \n";
                echo "<td><h6>$row[4]</h6></td> \n";
                echo "<td><h6>$row[5]</h6></td> \n";
                echo "<td><h6>$row[6]</h6></td> \n";
                echo "<td><h6>$row[7]</h6></td> \n";
                echo "<td><h6>$row[8]</h6></td> \n";
                echo "<td><h6>$row[9]</h6></td> \n";
                echo "<td><h6>$row[10]</h6></td> \n";
                echo "<td><h6>$row[11]</h6></td> \n";
                echo "<td><h6>$row[12]</h6></td> \n";
                echo "<td><h6>$row[13]</h6></td> \n";
                echo "<td><h6>$row[14]</h6></td> \n";
                echo "<td><h6>$row[15]</h6></td> \n";
                echo "<td><h6>$row[16]</h6></td> \n";
                echo "<td><h6>$row[17]</h6></td> \n";
                echo "<td><h6>$row[18]</h6></td> \n";
                echo "<td><h6>$row[19]</h6></td> \n";
                echo "<td><h6>$row[20]</h6></td> \n";
                echo "<td><h6>$row[21]</h6></td> \n";
                echo "<td><h6>$row[22]</h6></td> \n";
                echo "<td><h6>$row[23]</h6></td> \n";
                echo "<td><h6>$row[24]</h6></td> \n";
                echo "<td><h6>$row[25]</h6></td> \n";
                echo "<td><h6>$row[26]</h6></td> \n";
                echo "<td><h6>$row[27]</h6></td> \n";
                echo "<td><h6>$row[28]</h6></td> \n";
                echo "</tr>";
              }
              ?>
            </tbody>
          </table>
        </center>
      </div>
    </div>

    <?php } ?>


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </div>
</body>

</html>