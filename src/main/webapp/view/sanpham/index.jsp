<%@ page pageEncoding="utf-8" %>


        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Admin</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                crossorigin="anonymous">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
                crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
                integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
                crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
                integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
                crossorigin="anonymous"></script>


            <script>
                $('#myTab a').on('click', function (event) {
                    event.preventDefault()
                    $(this).tab('show')
                })
            </script>
        </head>

        <body>
            <main class="container-fluid">
               
                <jsp:include page="_header.jsp"/>
        
                <section class="row">
                    <div class="col mt-4">
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item" role="presentation"><a class="nav-link active" id="videoediting-tab"
                                    data-toggle="tab" href="#videoediting" role="tab" aria-controls="videoediting"
                                    aria-selected="true">Category Editing</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link" id="videolist-tab" data-toggle="tab"
                                    href="#videolist" role="tab" aria-controls="videolist" aria-selected="false">Category
                                    List</a></li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="videoediting" role="tabpanel"
                                aria-labelledby="videoediting-tab">
                                <form action="" method="post" enctype="multipart/form-data">

                                    <jsp:include page="_nhap.jsp"/>
                                    
                                </form>
                            </div>
                            <div class="tab-pane fade" id="videolist" role="tabpanel" aria-labelledby="videolist-tab">

                                <jsp:include page="_bang.jsp"/>
                                
                            </div>
                        </div>
        
                </section>
        
                <footer class="row"> </footer>
        
            </main>
        </body>

        </html>