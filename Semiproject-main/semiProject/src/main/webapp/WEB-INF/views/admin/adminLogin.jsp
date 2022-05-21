<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Login - SB Admin</title>
        <link href="/semiProject/resources/adminAssets/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="bg-info">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5" style="margin-top : 10%">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">관리자 페이지 로그인</h3></div>
                                    <div class="card-body">
                                        <form action="adminloginCheck.do">
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="inputId" type="text" name="adminId" placeholder="Id" value="admin1234"/>
                                                <label for="inputId">ID</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="inputPassword" type="password" name="adminPass" placeholder="Password" value="1234"/>
                                                <label for="inputPassword">Password</label>
                                            </div>
                                            <button type="submit" class="btn btn-primary">로그인</button> 
                                         </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
           
           
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/semiProject/resources/adminAssets/js/scripts.js"></script>
    </body>
</html>
