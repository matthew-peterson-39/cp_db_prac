from flask import Flask
from flask_sqlalchemy import SQLAlchemy

DB_NAME = 'flask_prac_db'

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = f'postgresql://matteater@localhost/{DB_NAME}'
db = SQLAlchemy(app)

class Student(db.Model):
    id = db.Column(db.Intger, primary_key=True)
    first_name = db.Column(db.String(20))
    last_name = db.Column(db.String(20))  
    age = db.Column(db.Integer)
    grade = db.Column(db.String(1))

    def __repr__(self):
        return self.first_name
    
