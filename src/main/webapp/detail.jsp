<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Food Detail</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>

</head>
<html>
<body>
<style>
    #img{
        height: 400px;
        width:350px;
    }


    .modal-footer>:not(:first-child) {
        margin-left: .25rem;
    }

    .btn {
        cursor: pointer;
        outline: none;
        font-weight: 400;
        line-height: 1.25;
        text-align: center;
        white-space: nowrap;
        vertical-align: middle;
        border: 1px solid transparent;
        padding: .5rem 1rem;
        font-size: 1rem;
        border-radius: .25rem;
        transition: all .2s ease-in-out;
    }













    @media only screen and (min-width:540px ) and (max-width: 990px){
        .detail-div{
            display: flex;
            flex-direction: column;
        }
        .detail-content{
            text-align: justify;

        }
    }
</style>
<header>
    <jsp:include page="menu.jsp"></jsp:include>
</header>
<main class="container mt-3" >

    <div>

        <div class="row detail-div  mt-3">
            <div class="col-sm-5 order-sm-1 order-2">
                <img id="img" class="img-prd" src="${detail.image}" >
            </div>
            <div class="col-sm-7 order-sm-2 order-1">
                <h1 class="content-product-h3" style="margin-bottom:30px;">${detail.name}</h1>
                <div class="price">
                    Price: <span style="margin-bottom:30px;font-size: 30px;" class="text-primary money" > ${detail.price}  VND</span>
                    <hr>
                </div>
                Number:      <input style="margin-left: 20px;" aria-label="quantity" class="input-qty" max="1000" min="1" name="" type="number" value="1"><br>
                <div id="button" style="margin-top: 20px;"><hr>
                    <button id="btn-add-cart" type="button" class="btn btn-success btn-cart" style="margin-right: 15px;">Add To Cart</button>
                    <button id="btn-order" type="button" class="btn btn-success">Order</button>

                </div>
            </div>
        </div>
    </div>
    <div style="margin-top: 30px;color: red;">
        <p>  Giới thiệu món ăn </p><hr>
    </div>
    <div class="detail-content">${detail.script}</div>
</main>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
