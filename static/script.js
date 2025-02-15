async function calculate() {
    const num1 = document.getElementById('num1').value;
    const num2 = document.getElementById('num2').value;

    try {
        const response = await fetch('/api/calculate', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({ num1, num2 })
        });

        const data = await response.json();
        document.getElementById('result').innerHTML = `Result: ${data.result}`;
    } catch (error) {
        console.error('Error:', error);
        document.getElementById('result').innerHTML = 'Error calculating result';
    }
}

// Test API connection when page loads
async function testAPI() {
    try {
        const response = await fetch('/api/test');
        const data = await response.json();
        console.log('API Test:', data.message);
    } catch (error) {
        console.error('API Test Error:', error);
    }
}

window.onload = testAPI; 