<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Страница</title>
        <script type="text/javascript" src="http://s3.amazonaws.com/codecademy-content/courses/hour-of-code/js/alphabet.js"></script>
        <script type="text/javascript" src="http://s3.amazonaws.com/codecademy-content/courses/hour-of-code/js/bubbles.js"></script>
        <script type="text/javascript" src="main.js"></script>
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
                $('#equation').val(equation);
            });
        });
    </script>
    <script type="text/javascript">
        $(document).ready(function(){
            $('#op1,#op2,#op3,#btn1,#btn2,#btn3,#btn4,#btn5,#btn6,#btn7,#btn8,#btn9,#btn0').click(function(){
                var equation = $('#equation').val();
                if(!equation)
                    equation="";
                equation = equation.concat($(this).attr("value"));
                $('#equation').val(equation);
            });
            $('#btnc').click(function(){
                $('#equation').val('');
            });
            $('#btncc').click(function(){
                var equation = $('#equation').val();
                $('#equation').val(equation.substring(0,equation.length-1));
            });
        });
    </script>

    <fieldset>
        <h3>Calculator</h3>
        <form>
            <fieldset title="Calculator" style="width:200px">
            <input type="text" id="equation">
            <br>
            <input type="button" id='op1' value="+"/>
            <input type="button" id='op2' value="-"/>
            <input type="button" id='op3' value="/"/>
            <input type="button" id='op1' value="*"/>
            <input type="button" id='op1' value="%"/>
            <input type="button" id='op1' value="("/>
            <input type="button" id='op1' value=")"/>
            <br>
            <input type="button" id='btn1' value="1"/>
            <input type="button" id='btn2' value="2"/>
            <input type="button" id='btn3' value="3"/>
            <br>
            <input type="button" id='btn4' value="4"/>
            <input type="button" id='btn5' value="5"/>
            <input type="button" id='btn6' value="6"/>
            <br>
            <input type="button" id='btn7' value="7"/>
            <input type="button" id='btn8' value="8"/>
            <input type="button" id='btn9' value="9"/>
            <br>
            <input type="button" id='btn0' value="0"/>
            <input type="button" id="btnc" value="c"/>
            <input type="button" id="btncc" value="cc"/>
            <input type="button" id="btnCalculate" value="="/>
        </form>
    </fieldset>

        <canvas id="myCanvas"></canvas>
</body>
</html>