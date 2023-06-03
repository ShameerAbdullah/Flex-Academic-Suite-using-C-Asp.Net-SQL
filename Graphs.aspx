<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Graphs.aspx.cs" Inherits="Graphs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CGPA Comparison</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        h1 {
            color: #333333;
            text-align: center;
            margin: 20px 0;
        }

        form {
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
        }

        input[type="text"] {
            padding: 8px;
            font-size: 14px;
            border: 1px solid #dddddd;
            border-radius: 4px;
        }

        button {
            padding: 8px 16px;
            font-size: 14px;
            background-color: #555555;
            color: #ffffff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #333333;
        }

        canvas {
            display: block;
            margin: 0 auto;
            max-width: 600px;
        }
    </style>
</head>
<body>
    <h1>CGPA Comparison</h1>
    <form>
        <label for="rollNumber">Enter Roll Number:</label>
        <input type="text" id="rollNumber" name="rollNumber">
        <button type="button" onclick="fetchCGPAData()">Show CGPA Comparison</button>
    </form>

    <div>
        <canvas id="cgpaChart"></canvas>
    </div>

    <script>
        function fetchCGPAData() {
            const rollNumber = document.getElementById('rollNumber').value;

            $.ajax({
                type: 'POST',
                url: 'Graphs.aspx/FetchCGPAData',
                data: JSON.stringify({ rollNumber: rollNumber }),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function (response) {
                    const data = JSON.parse(response.d);

                    const colors = ['rgba(75, 192, 192, 1)', 'rgba(255, 99, 132, 1)', 'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)', 'rgba(153, 102, 255, 1)', 'rgba(255, 159, 64, 1)']; // Array of dark solid colors
                    const chartData = {
                        labels: data.Semester,
                        datasets: [{
                            label: 'CGPA',
                            data: data.CGPA,
                            backgroundColor: colors,
                            borderColor: 'rgba(75, 192, 192, 1)',
                            borderWidth: 1
                        }]
                    };

                    const ctx = document.getElementById('cgpaChart').getContext('2d');
                    new Chart(ctx, {
                        type: 'bar',
                        data: chartData,
                        options: {}
                    });
                },
                error: function (xhr, status, error) {
                    console.error(error);
                }
            });
        }
    </script>

</body>
</html>
