<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modern Calculator</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #1e1e1e;
            font-family: Arial, sans-serif;
            color: white;
        }
        .calculator {
            width: 300px;
            background: #2c2c2c;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
            text-align: center;
        }
        .display {
            width: 100%;
            height: 60px;
            font-size: 1.5em;
            text-align: right;
            padding: 10px;
            border-radius: 5px;
            border: none;
            background: #444;
            color: white;
        }
        .buttons {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 10px;
            margin-top: 20px;
        }
        button {
            width: 100%;
            height: 50px;
            font-size: 1.2em;
            border: none;
            border-radius: 5px;
            background: #666;
            color: white;
            cursor: pointer;
        }
        button:hover {
            background: #888;
        }
        .operator {
            background: #ff9500;
        }
        .operator:hover {
            background: #ffa733;
        }
        .equal {
            background: #28a745;
        }
        .equal:hover {
            background: #34d058;
        }
    </style>
</head>
<body>
    <div class="calculator">
        <form name="calculator" action="Calculator" method="post">
            <input class="display" name="display" type="text" value="<%= request.getAttribute("result") != null ? request.getAttribute("result") : "" %>">
            <div class="buttons">
                <button type="button" onclick="calculator.display.value=''">C</button>
                <button type="button" onclick="calculator.display.value+='/'" class="operator">/</button>
                <button type="button" onclick="calculator.display.value+='*'" class="operator">*</button>
                <button type="button" onclick="calculator.display.value+='-'" class="operator">-</button>
                <button type="button" onclick="calculator.display.value+='7'">7</button>
                <button type="button" onclick="calculator.display.value+='8'">8</button>
                <button type="button" onclick="calculator.display.value+='9'">9</button>
                <button type="button" onclick="calculator.display.value+='+'" class="operator">+</button>
                <button type="button" onclick="calculator.display.value+='4'">4</button>
                <button type="button" onclick="calculator.display.value+='5'">5</button>
                <button type="button" onclick="calculator.display.value+='6'">6</button>
                <button type="button" onclick="calculator.display.value+='1'">1</button>
                <button type="button" onclick="calculator.display.value+='2'">2</button>
                <button type="button" onclick="calculator.display.value+='3'">3</button>
                <button type="button" onclick="calculator.display.value+='0'">0</button>
                <button type="button" onclick="calculator.display.value+='00'">00</button>
                <button type="button" onclick="calculator.display.value+='.'">.</button>
                <button type="submit" class="equal">=</button>
            </div>
        </form>
    </div>
</body>
</html>
