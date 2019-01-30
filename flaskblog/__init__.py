from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_bcrypt import Bcrypt
from flask_login import LoginManager


app = Flask(__name__)
app.config['SECRET_KEY'] = 'ae6a4226b227180a2b7164082cf21320'
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://stephenm:fnghulty1!@playgorunddb.cid6kypatran.us-east-1.rds.amazonaws.com'
db = SQLAlchemy(app)
bcrypt = Bcrypt(app)
login_manager = LoginManager(app)
login_manager.login_view = 'login'
login_manager.login_message_category = 'info'

from flaskblog import routes