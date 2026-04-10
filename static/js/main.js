/**
 * Style Diary - Main JavaScript
 */

document.addEventListener('DOMContentLoaded', function() {
    
    // 1. All "Add to Cart" Buttons Select Kora
    const cartButtons = document.querySelectorAll('.btn-login'); 

    // 2. Click Event Listener Jog Kora
    cartButtons.forEach(button => {
        button.addEventListener('click', function(e) {
            // Check kora jate link-er default reload kaj na kore
            if (this.tagName === 'A') {
                e.preventDefault();
            }

            // Card theke Product details neya
            const card = this.closest('.product-card');
            const name = card.querySelector('h3').innerText;
            const price = card.querySelector('.price-tag').innerText.replace('৳', '').trim();

            // Flask API call kora
            fetch('/add_to_cart', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    product_name: name,
                    product_price: price
                })
            })
            .then(response => response.json())
            .then(data => {
                if (data.status === 'success') {
                    // Notification dekhano
                    alert("Success: " + name + " bag-e add hoyeche!");
                } else {
                    alert("Error: Product add kora jayni.");
                }
            })
            .catch(error => {
                console.error('Error:', error);
                alert("Server-er sathe jogajog kora jachche na!");
            });
        });
    });
});