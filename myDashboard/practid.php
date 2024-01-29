<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RFID Scanner</title>
    <style>
        /* Add some basic styling */
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 20px;
        }
    </style>
</head>
<body>

<h1>RFID Scanner</h1>

<!-- Display the scanned RFID value -->
<p id="rfidValue">Scanned RFID: <span id="rfidResult"></span></p>

<!-- JavaScript to handle RFID scanning -->
<script>
    // Function to handle RFID scanning
    function handleRFIDScan(rfidValue) {
        // Update the displayed RFID value
        document.getElementById('rfidResult').textContent = rfidValue;
        // You can perform additional actions here, such as sending the RFID value to a server, etc.
    }

    // Simulate RFID scanning (replace this with actual RFID reader integration)
    function simulateRFIDScan() {
        // Generate a random RFID value for simulation
        const randomRFID = Math.floor(Math.random() * 1000000000);
        handleRFIDScan(randomRFID);
    }

    // Periodically simulate RFID scanning for demonstration purposes
    setInterval(simulateRFIDScan, 5000); // Simulate every 5 seconds
</script>

</body>