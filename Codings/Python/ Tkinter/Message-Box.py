from tkinter import *
from tkinter import messagebox

window = Tk()
window.geometry("100x100")

messagebox.showerror("Error box", "This is an error message box")
messagebox.showwarning("Warning box", "This is a warning message box")
messagebox.askquestion("confirm dialog box", "Click yes or no")
messagebox.askokcancel("Redirection", "Redirecting you to google.com")
messagebox.askyesno("Application Proceeds", "Go to next page")

window.mainloop()
