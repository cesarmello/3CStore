<sql:setDataSource var="dbconn" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/ed" user="root" password=""></sql:setDataSource>

<sql:query dataSource="${dbconn}" var="cat">
    select * from tbCategoria;
</sql:query>