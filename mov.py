
from flask import Flask,request,render_template, redirect,session,url_for
from flask_mysqldb import MySQL

app = Flask(__name__)
app.config['MYSQL_USER']="root"
app.config['MYSQL_PASSWORD']="2Mrinal@mysqlroot"
app.config['MYSQL_DB']="movie"
mysql = MySQL(app)
app.secret_key = "skeshmnbvfjjdjfjhjjj"



@app.route('/')
def first1():
    return render_template('first1.html')

@app.route('/second1')
def second():
    return render_template('second1.html') 

@app.route('/trailer',methods=["GET","POST"])
def trailer():
    cur=mysql.connection.cursor()
    cur.execute("select mname,trailer from trailer")
    data=cur.fetchall()
    cur.close()
    return render_template('trailer.html',data=data) 


@app.route('/comedy',methods=["GET","POST"])

def comedy():
    cur=mysql.connection.cursor()
    cur.execute("select sno,mname,duration,rate from comedy")
    data=cur.fetchall()
    cur.close()
    return render_template('comedy.html',data=data)
    
@app.route('/comedy2',methods=["GET","POST"])
def pop2():
    cur=mysql.connection.cursor()
    cur.execute("select * from comedy")
    data=cur.fetchall()
    cur.close()
    
    if request.method=="POST":
        sng=request.form.getlist('comedy2')   
        length=len(sng)
        print(sng)
        for x in range(length):
                cur=mysql.connection.cursor()
                cur.execute(f'select mname,duration from comedy where sno="{sng[x]}"')
                sdata=cur.fetchall()
                cur.close()
                print(sdata[0][0])
                print(sdata[0][1])
                cur=mysql.connection.cursor()
                cur.execute(f'''insert into wish values("{session['Email']}","{sdata[0][0]}","{sdata[0][1]}")  ''')
                mysql.connection.commit()
                cur.close()
        return redirect(url_for('thanks'))    

    return render_template('comedy2.html',data=data)    

@app.route('/newrelease',methods=["GET","POST"])
def new():
    cur=mysql.connection.cursor()
    cur.execute("select sno,mname,duration,rate from new")
    data=cur.fetchall()
    cur.close()
    return render_template('newrelease.html',data=data)  

@app.route('/newrelease2',methods=["GET","POST"])
def new2():
    cur=mysql.connection.cursor()
    cur.execute("select * from new")
    ndata=cur.fetchall()
    cur.close()
    if request.method=="POST":
        nw=request.form.getlist('new')
        print(nw,"hello")   
        length=len(nw)
        for x in range(length):
                cur=mysql.connection.cursor()
                cur.execute(f'select mname,duration from new where sno="{nw[x]}"')
                mdata=cur.fetchall()
                cur.close()
                print(mdata,"Hello")
                cur=mysql.connection.cursor()
                cur.execute(f'''insert into wish values("{session['Email']}","{mdata[0][0]}","{mdata[0][1]}") ''')
                mysql.connection.commit()
                cur.close()
        return redirect(url_for('thanks'))
        
    return render_template('newrelease2.html',data=ndata)      

@app.route('/horror',methods=["GET","POST"])
def horror():
    cur=mysql.connection.cursor()
    cur.execute("select sno,mname,duration,rate from hor")
    data=cur.fetchall()
    cur.close()
    return render_template('horror.html',data=data)

@app.route('/horror2',methods=["GET","POST"])
def bollywood2():
    cur=mysql.connection.cursor()
    cur.execute("select * from hor")
    bdata=cur.fetchall()
    cur.close()
    if request.method=="POST":
         nw=request.form.getlist('horror')   
         length=len(nw)
         print(nw)
         for x in range(length):
                 cur=mysql.connection.cursor()
                 cur.execute(f'select mname,duration from hor where sno="{nw[x]}"')
                 mdata=cur.fetchall()
                 cur.close()
                 print(mdata[0][0])
                 print(mdata[0][1])
                 cur=mysql.connection.cursor()
                 cur.execute(f'''insert into wish values("{session['Email']}","{mdata[0][0]}","{mdata[0][1]}") ''')
                 mysql.connection.commit()
                 cur.close()
         return redirect(url_for('thanks'))    
    return render_template('horror2.html',data=bdata)


@app.route('/act',methods=["GET","POST"])
def act():
    cur=mysql.connection.cursor()
    cur.execute("select sno,mname,duration,rate from action")
    data=cur.fetchall()
    cur.close()
    
    return render_template('act.html',data=data)

@app.route('/act2',methods=["GET","POST"])
def act2():
    cur=mysql.connection.cursor()
    cur.execute("select * from action")
    data=cur.fetchall()
    cur.close()
    if request.method=="POST":
         cl=request.form.getlist('act')   
         length=len(cl)
         print(cl,"Hi")
         for x in range(length):
                 cur=mysql.connection.cursor()
                 cur.execute(f'select mname,duration from action where sno="{cl[x]}"')
                 mdata=cur.fetchall()
                 cur.close()
                 print(mdata[0][0])
                 print(mdata[0][1])
                 cur=mysql.connection.cursor()
                 cur.execute(f'''insert into wish values("{session['Email']}","{mdata[0][0]}","{mdata[0][1]}") ''')
                 mysql.connection.commit()
                 cur.close()
         return redirect(url_for('thanks'))
    
    return render_template('act2.html',data=data)    

@app.route('/drama',methods=["GET","POST"])
def drama():
    cur=mysql.connection.cursor()
    cur.execute("select sno,mname,duration,rate from drama")
    data=cur.fetchall()
    cur.close()
    return render_template('drama.html',data=data)  

@app.route('/drama2',methods=["GET","POST"])
def edm2():
    cur=mysql.connection.cursor()
    cur.execute("select * from drama")
    data=cur.fetchall()
    cur.close()
    if request.method=="POST":
         cl=request.form.getlist('drama')   
         length=len(cl)
         print(cl)
         for x in range(length):
                 cur=mysql.connection.cursor()
                 cur.execute(f'select mname,duration from drama where sno="{cl[x]}"')
                 mdata=cur.fetchall()
                 cur.close()
                 print(mdata[0][0])
                 print(mdata[0][1])
                 cur=mysql.connection.cursor()
                 cur.execute(f'''insert into wish values("{session['Email']}","{mdata[0][0]}","{mdata[0][1]}") ''')
                 mysql.connection.commit()
                 cur.close()
         return redirect(url_for('thanks'))
    return render_template('drama2.html',data=data)        


@app.route('/scifi',methods=["GET","POST"])
def scifi():
    cur=mysql.connection.cursor()
    cur.execute("select sno,mname,duration,rate from scifi")
    data=cur.fetchall()
    cur.close()
    return render_template('scifi.html',data=data)    

@app.route('/scifi2',methods=["GET","POST"])
def rock2():
    cur=mysql.connection.cursor()
    cur.execute("select * from scifi")
    data=cur.fetchall()
    cur.close()
    if request.method=="POST":
         cl=request.form.getlist('scifi')   
         length=len(cl)
         print(cl)
         for x in range(length):
                 cur=mysql.connection.cursor()
                 cur.execute(f'select mname,duration from scifi where sno="{cl[x]}"')
                 mdata=cur.fetchall()
                 cur.close()
                 print(mdata[0][0])
                 print(mdata[0][1])
                 cur=mysql.connection.cursor()
                 cur.execute(f'''insert into wish values("{session['Email']}","{mdata[0][0]}","{mdata[0][1]}") ''')
                 mysql.connection.commit()
                 cur.close()
         return redirect(url_for('thanks'))
    return render_template('scifi2.html',data=data)          

#     @app.route('/loginuser',methods=['GET','POST'])
# def login():
#     render_template('loginuser.html',msg='')

# @app.route('/d_albums',methods=["GET","POST"])
# def d_albums():
#     cur=mysql.connection.cursor()
#     cur.execute("select * from Albums")
#     data=cur.fetchall()
#     cur.close()
#     return render_template('d_albums.html',data=data)     

@app.route('/loginuser',methods =["GET","POST"])
def loginuser():
    if request.method == "POST":
        email=request.form['email']
        psw=request.form['psw']
        cur=mysql.connection.cursor()
        print(1)
        cur.execute(f'select * from signup where email ="{email}"')
        cusData = cur.fetchall()
        print(cusData)
        if cusData:
            if cusData[0][2] == psw:
                # session['Id'] = cusData[0][0]
                session['Name'] = cusData[0][0]
                session['Email']=cusData[0][1]
                print(session['Email'])
                return redirect('/second1')

            else:
                    print("Fail")
                    return render_template('loginuser.html')
        else:
                print("No user")
        
        
    return render_template('loginuser.html')

@app.route('/logout')
def logout():
    
    session.pop('Name')
    session.pop('Email')
    return render_template('logout.html')

@app.route('/reg',methods=['GET','POST'])
def reg():
    if request.method=="POST":
        name = request.form['name']
        email = request.form['email']
        psw = request.form['psw']
        phone = request.form['phone']
        cur = mysql.connection.cursor()
        cur.execute(f'insert into signup values("{name}","{email}","{psw}","{phone}")')
        mysql.connection.commit()
        cur.close()
        
    return render_template('reg.html')
    # else:
    #      return redirect('/second1')
@app.route('/movies',methods=['GET','POST'])
def movies():    
    cur=mysql.connection.cursor()
    cur.execute(f'''select movie,duration from wish where email="{session['Email']}" ''')
    data=cur.fetchall()
    cur.close()
    if request.method=="POST":
        cl=request.form.getlist('play')   
        length=len(cl)
        print(cl)
        for x in range(length):

            cur=mysql.connection.cursor()
            cur.execute(f'''select movie,duration from wish where movie="{cl[x]}" and email="{session['Email']}"''')
            mdata=cur.fetchall()
            cur.close()
            if len(mdata)!=0:
                curs=mysql.connection.cursor()
                curs.execute(f'''delete from wish where movie="{mdata[0][0]}" and email="{session['Email']}" ''')
                mysql.connection.commit()
                curs.close()
        return redirect(url_for('thanks'))
    return render_template('movies.html',data=data) 

@app.route('/Thanks')
def thanks():
    return render_template('thank.html') 

if __name__ == "__main__":
    app.run(debug=True,port=5015)