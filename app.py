import streamlit as st
import sqlite3
import pandas as pd
import altair as alt
# streamlit run app.py

conn = sqlite3.connect("./utils/vivino.db")

def load_sql_file(file_name):
    with open(file_name, 'r') as file:
        return file.read()

st.set_page_config(page_title='Vivino market analysis Dashboard',
                   layout='wide',
                   initial_sidebar_state='collapsed')


#------------------------------------------------------------------------------------------------------------------------------------------#
# Center the title horizontally
container = st.container()
left_column, center_column, right_column = st.columns(3)
center_column.title("Vivino market analysis Dashboard 🍇📈")

#------------------------------------------------------------------------------------------------------------------------------------------#
# Adding separation line
st.markdown("<hr>", unsafe_allow_html=True)

#------------------------------------------------------------------------------------------------------------------------------------------#
# 
columns = st.columns(2)
query1 = load_sql_file('Q1.sql')
result1 = pd.read_sql_query(query1, conn)
columns[0].subheader('Top 10 Wines')
columns[0].write(result1)
columns[1].markdown("""
These top 10 wines represent the pinnacle of excellence in our collection, combining exceptional average ratings with a substantial number of ratings. 

By highlighting these wines and leveraging their reputation, we can attract new customers, enhance customer satisfaction, and ultimately boost our sales. 

Cheers to these remarkable wines and the increased success they will bring to our business!
""")

#------------------------------------------------------------------------------------------------------------------------------------------#
# Adding separation line
st.markdown("<hr>", unsafe_allow_html=True)
st.markdown("<hr>", unsafe_allow_html=True)

#------------------------------------------------------------------------------------------------------------------------------------------#
#
st.subheader('Top 10 Countries Eligible for Marketing Investment')
columns = st.columns(3)
query2 = load_sql_file('Q2.sql')
result2 = pd.read_sql_query(query2, conn)
# columns[0].subheader('Country Analysis')
columns[0].subheader('')
columns[0].write(result2)

columns[1].subheader('')
columns[1].markdown("""

Based on our available data, the top 10 countries selected should be prioritized for our marketing investment. 

These countries not only have the highest user base, indicating a larger potential market, but also have a robust wine industry suggested by a high count of wineries.

However, this recommendation is made with the understanding that further market factors would ideally be considered for a comprehensive strategy. 

""")

columns[2].subheader('Country Analysis')
chart_data = result2.set_index("Country")

chart1 = alt.Chart(result2).mark_bar(color='#6d071a').encode(
    x=alt.X('Users Count:Q', title='Users Count'),
    y=alt.Y('Country:N', sort='-x', title='Country')
)
columns[2].altair_chart(chart1, use_container_width=True)

chart2 = alt.Chart(result2).mark_bar(color='#6d071a').encode(
    x=alt.X('Wineries Count:Q', title='Wineries Count'),
    y=alt.Y('Country:N', sort='-x', title='Country')
)
columns[2].altair_chart(chart2, use_container_width=True)

#------------------------------------------------------------------------------------------------------------------------------------------#
# Adding separation line
st.markdown("<hr>", unsafe_allow_html=True)
st.markdown("<hr>", unsafe_allow_html=True)
#------------------------------------------------------------------------------------------------------------------------------------------#
#
#
st.subheader('The best winery')
columns = st.columns(3)
query3 = load_sql_file('Q3.sql')
result3 = pd.read_sql_query(query3, conn)
columns[0].subheader('')
columns[0].write(result3)

columns[1].markdown("""

dqsqdq

""")

query3e = load_sql_file('Q3_extra.sql')
result3e = pd.read_sql_query(query3e, conn)
columns[2].subheader('')
columns[2].write(result3e, index=False)
