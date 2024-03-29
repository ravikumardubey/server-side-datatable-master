<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.css">


    <!-- jquery  -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.js"></script>

    <title>ServerSide DataTable</title>
</head>
<body>
    <div class="container">
        <div class="row">
            <h2 class="text-center">Server Side DataTable</h2>

            <div class="row" style="margin-top: 20px;">
                <div class="col-md-12">
                    <h4 class="text-center">Server Side DataTable</h4>
                    <table class="table table-bordered table-striped table-sm" id="datatable" style="margin-top: 20px;">
                        <thead>
                            <tr>
                                <th scope="col">Name</th>
                                <th scope="col">Email</th>
                                <th scope="col">Status</th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function () {

            /*
            * server side dataTable
            */
            $('#datatable').DataTable({
                processing: true,
                serverSide: true,
                pageLength : 10,
                lengthMenu: [ 10, 25, 50, 75, 100 ],
                ajax: ({
                    url: "datatable_action.php",
                    datatype: "json",
                })
            });
        });
    </script>
    
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>