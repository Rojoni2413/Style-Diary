from flask import Flask, render_template, request, jsonify
from flask_mysqldb import MySQL
from datetime import datetime

app = Flask(__name__)

# MySQL Configuration
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'prjctDBMS12@' 
app.config['MYSQL_DB'] = 'festive_db'

mysql = MySQL(app)

def get_current_festival():
    today = datetime.now().strftime('%m-%d')
    
    
    if '04-05' <= today <= '04-09': 
        return 'eid'
    elif '04-10' <= today <= '04-30': 
        return 'boishakh'
    elif '10-01' <= today <= '10-25': 
        return 'puja'
    elif '12-01' <= today <= '12-16': 
        return 'bijoy-dibos'
    elif '12-17' <= today <= '12-31': 
        return 'christmas'
    else: 
        return 'default'

@app.route('/')
def home():
    active_festival = get_current_festival()
    cur = mysql.connection.cursor()
    
    
    cur.execute("SELECT name, price, image_url FROM products WHERE festival_tag = %s", (active_festival,))
    
    products = cur.fetchall()
    cur.close()
    return render_template('index.html', festival=active_festival, products=products)

@app.route('/search')
def search():
    search_query = request.args.get('query', '')
    active_festival = get_current_festival() 
    
    cur = mysql.connection.cursor()
    
    cur.execute("SELECT name, price, image_url FROM products WHERE name LIKE %s AND festival_tag = %s", 
                ('%' + search_query + '%', active_festival))
    
    results = cur.fetchall()
    cur.close()
    
    return render_template('index.html', festival=active_festival, products=results)

@app.route('/add_to_cart', methods=['POST'])
def add_to_cart():
    data = request.get_json()
    product_name = data.get('product_name', 'Unknown Product')
    print(f"DEBUG: Product Added - {product_name}")
    return jsonify({"status": "success", "message": f"{product_name} added to cart!"})

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        return "Login process initiated"
    return render_template('login.html')

if __name__ == '__main__':
    app.run(debug=True)