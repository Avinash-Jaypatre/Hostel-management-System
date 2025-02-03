<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Hostel Fee Payment</title>
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
    <div class="col-md-6 offset-3">
        <h2 class="text-center">Hostel Fee Payment</h2>
        <form action="/payFee" method="POST">
            <div class="form-group">
                <label for="feeAmount">Total Fee Amount:</label>
                <input type="number" class="form-control" id="feeAmount" name="feeAmount" value="5000" readonly />
            </div>
            <div class="form-group">
                <label for="paidAmount">Paid Amount:</label>
                <input type="number" class="form-control" id="paidAmount" name="paidAmount" required oninput="calculateRemainingFee()" />
            </div>
            <div class="form-group">
                <label for="remainingAmount">Remaining Fee:</label>
                <input type="number" class="form-control" id="remainingAmount" name="remainingAmount" readonly />
            </div>
            <div class="text-center">
           
            <button type="submit" class="btn btn-outline-warning">Pay Fee</button>
            </div>
        </form>
       </div>

        <br>
        <c:if test="${not empty remainingFee}">
            <div class="alert alert-info mt-4">
                <strong>Remaining Fee:</strong> ${remainingFee}
            </div>
        </c:if>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <script type="text/javascript">
     
        const totalFee = 5000;

      
        function calculateRemainingFee() {
           
            var paidAmount = parseFloat(document.getElementById('paidAmount').value);

           
            if (!isNaN(paidAmount)) {
              
                var remainingAmount = totalFee - paidAmount;

                
                document.getElementById('remainingAmount').value = remainingAmount.toFixed(2);
            } else {
               
                document.getElementById('remainingAmount').value = '';
            }
        }
    </script>
</body>
</html>
