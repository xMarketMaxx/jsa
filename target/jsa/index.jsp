<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Страница</title>
    <script type="text/javascript" src="js/jquery-3.1.0.js"></script>
</head>
<body>
    <script type="text/javascript">
        $(document).ready(function(){
            $('#btnHello').click(function(){
                var fullname = $('#fullname').val();
                $.ajax({
                    type:'POST',
                    data:{fullname: fullname},
                    url:'AjaxController',
                    success: function(result){
                        $('#result1').html(result);
                    }
                });
            });
        });
    </script>

    <fieldset>
        <h3>Name</h3>
        <form>
         <input type="text" id="fullname">
           <input type="button" value="Hello" id="btnHello">
         <br>
         <span id="result1"></span>
        </form>
    </fieldset>
    <br>
    <script type="text/javascript">
        $(document).ready(function(){
            $('#btnCalculate').click(function(){
                var equation = $('#equation').val();
                equation = eval(equation);
                $('#result2').val(equation);
            });
        });
    </script>
    <fieldset>
        <h3>Calculator</h3>
        <form>
            <input type="text" id="equation">
            <input type="button" id='op1' value="+">
            <input type="button" id='op2' value="-">
            <input type="button" id='op3' value="/">
            <br>
            <input type="button" id='btn1' value="1">
            <input type="button" id='btn2' value="2">
            <input type="button" id='btn3' value="3">
            <br>
            <input type="button" id='btn4' value="4">
            <input type="button" id='btn5' value="5">
            <input type="button" id='btn6' value="6">
            <br>
            <input type="button" id='btn7' value="7">
            <input type="button" id='btn8' value="8">
            <input type="button" id='btn9' value="9">
            <br>
            <input type="button" id='btn0' value="0">
            <input type="button" id="btnCalculate" value="=">
            <input id="result2" value="" />
        </form>
    </fieldset>

</body>
</html>