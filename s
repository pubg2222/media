from tkinter import *
import tkinter as tk
import tkinter as ttk
from tkinter import Entry,Tk
from PIL import Image, ImageTk
from tkinter import messagebox
import webbrowser

root = Tk()

def map():

    webbrowser.open("https://maps.google.co.in")

def msg ():

    messagebox.showinfo("MSRTC Mobile Reservation","You will be redirected to next page")
     
def back():

    newWindow1=Toplevel(root)
    newWindow1.geometry("300x600")#widthxheight
    newWindow1.configure(bg="white")
    newWindow1.title("MSRTC Mobile Reservation")
    newWindow1.minsize(300,600)
    newWindow1.maxsize(300,600)

    icon = ImageTk.PhotoImage(Image.open("titleimg.png").resize((145, 130)))
    label = Label(newWindow1,image=icon,bg='white')
    label.image =icon
    label.place(x=67,y=35)

    title = Label(newWindow1,text="?????????? ????? ????? ?????? ???????",bg="white", fg="black",font=("devnagri",13,"bold")).place(x=15, y=210)

    title = Label(newWindow1,text="M.S.R.T.C",bg="white", fg="black",font=("calibri",16,"bold")).place(x=110, y=250)

    icon = ImageTk.PhotoImage(Image.open("msrtc.png").resize((160, 130)))
    label = Label(newWindow1,image=icon,bg='white')
    label.image =icon
    label.place(x=75,y=290)

    myButton= Button(newWindow1, text="Start", fg="White", bg="#FF4500",width="14", command=start)
    myButton.place(x=100,y=480)


def start():
    
    newWindow=Toplevel(root)
    newWindow.geometry("300x600")#widthxheight
    newWindow.configure(bg="white")
    newWindow.title("MSRTC Mobile Reservation")
    newWindow.minsize(300,600)
    newWindow.maxsize(300,600)

    img1 = ImageTk.PhotoImage(Image.open("screen.png").resize((300,68)))
    logo = Label(newWindow,image=img1, bg="white")
    logo.image=img1
    logo.place(x=-2,y=0)

    img2 = ImageTk.PhotoImage(Image.open("arrow.png").resize((23,23)))
    logo = Button(newWindow,image=img2,bg="#b452ff",borderwidth=0, command=back)
    logo.image=img2
    logo.place(x=1,y=5)

    img3 = ImageTk.PhotoImage(Image.open("msrtc.png").resize((22,20)))
    logo = Label(newWindow,image=img3)
    logo.image=img3
    logo.place(x=37,y=5)

    img4 = ImageTk.PhotoImage(Image.open("map.png").resize((20,16)))
    logo = Button(newWindow,image=img4,bg="#b452ff",borderwidth=0, command=map)
    logo.image=img4
    logo.place(x=267,y=5)

    bus1 = Label(newWindow,text="All Buses",bg="white", fg="Black",font=("calibri",13,"bold")).place(x=44, y=210)

    bus1 = ImageTk.PhotoImage(Image.open("bus1.png").resize((93,90)))
    logo = Button(newWindow,image=bus1,borderwidth=0,command=web)
    logo.image=bus1
    logo.place(x=33,y=110)

    bus2 = Label(newWindow,text="Shivneri",bg="white", fg="Black",font=("calibri",13,"bold")).place(x=189, y=210)

    bus2 = ImageTk.PhotoImage(Image.open("bus2.png").resize((110,95)))
    logo = Button(newWindow,image=bus2,borderwidth=0,command=web)
    logo.image=bus2
    logo.place(x=163,y=107)

    bus3 = Label(newWindow,text="Shivshahi",bg="white", fg="Black",font=("calibri",13,"bold")).place(x=44, y=380)
   
    bus3 = ImageTk.PhotoImage(Image.open("bus3.png").resize((110,106)))
    logo = Button(newWindow,image=bus3,borderwidth=0,command=web)
    logo.image=bus3
    logo.place(x=22,y=270)

    bus4 = Label(newWindow,text="Sleeper",bg="white", fg="Black",font=("calibri",13,"bold")).place(x=189, y=380)

    bus4 = ImageTk.PhotoImage(Image.open("bus4.png").resize((110,106)))
    logo = Button(newWindow,image=bus4,borderwidth=0,command=web)
    logo.image=bus4
    logo.place(x=164,y=270)
    
    img5 = Label(newWindow,text="Tour Packages",bg="white", fg="Black",font=("calibri",13,"bold")).place(x=98, y=530)
    
    img5 = ImageTk.PhotoImage(Image.open("tour.png").resize((230,70)))
    logo = Button(newWindow,image=img5,borderwidth=1,command=msg)
    logo.image=img5
    logo.place(x=34,y=450)

    heading = Label(newWindow,text="MSRTC Mobile Reservation",bg="#b452ff", fg="white",font=("calibri",13,"bold")).place(x=64, y=4)

    bottom = Label(newWindow,text="Please click on the bus",width="33",bg="#FF4500", fg="white",font=("calibri",13,"bold")).place(x=0, y=574)
 
    bus5 = ImageTk.PhotoImage(Image.open("bus5.png").resize((20, 20)))
    label = Label(newWindow,image=bus5,bg='white')
    label.image =bus5
    label.place(x=1,y=575)

def web ():

    webbrowser.open("https://msrtc.maharashtra.gov.in/")
     

root.geometry("300x600")#widthxheight
root.configure(bg="white")
root.title("MSRTC Mobile Reservation")
root.minsize(300,600)#width,height
root.maxsize(300,600)

icon = ImageTk.PhotoImage(Image.open("titleimg.png").resize((145, 130)))
label = Label(root,image=icon,bg='white')
label.image =icon
label.place(x=67,y=35)

title = Label(root,text="?????????? ????? ????? ?????? ???????",bg="white", fg="black",font=("devnagri",13,"bold")).place(x=15, y=210)

title = Label(root,text="M.S.R.T.C",bg="white", fg="black",font=("calibri",16,"bold")).place(x=110, y=250)

icon = ImageTk.PhotoImage(Image.open("msrtc.png").resize((160, 130)))
label = Label(root,image=icon,bg='white')
label.image =icon
label.place(x=75,y=290)

myButton= Button(root, text="Start", fg="White", bg="#FF4500",width="14", command=start)
myButton.place(x=100,y=480)
 
root.mainloop()
