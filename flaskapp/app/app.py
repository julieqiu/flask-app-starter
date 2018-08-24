from flask import Flask, render_template, request


app = Flask(__name__)


@app.route('/')
@app.route('/index')
def index():
    return render_template(
        'index.html',
    )


@app.route('/post/<int:post_id>', methods=['GET', 'POST'])
def single_product(product_id):
    """
    Display information about a specific post
    """
    query = request.args.get('query-param-name')
    data = None

    return render_template(
        'index.html',
        data=data,
        query=query,
    )
