import streamlit as st 

st.title("🧮 simple calculator")

num1=st.number_input("enter the number")
num2=st.number_input("enter the another number")

operation=st.selectbox("select the operation",("+","-","*","/"))

if st.button("calculater"):
    if operation=="+":
        result=num1+num2
    elif operation=="-":
        result=num1-num2
        if num2>num1:
            result = -abs(result)
    elif operation=="*":
        result=num1*num2
    elif operation=="/":
        result=num1/num2 if num2!=0 else "undefined(cannot divide by Zero)"
    st.success(f"the result is {result}")
