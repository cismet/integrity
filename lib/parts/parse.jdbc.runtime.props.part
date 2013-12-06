cuser=`grep connection.username runtime.properties | sed s/^connection\.username=//`
cpass=`grep connection.password runtime.properties | sed s/^connection\.password=//`
chost=`grep connection.url runtime.properties | sed s/connection\.url=jdbc\:postgresql\:..// | sed s/\:/\\\\// | awk 'BEGIN{FS="/"}{print $1}'`
cport=`grep connection.url runtime.properties | sed s/connection\.url=jdbc\:postgresql\:..// | sed s/\:/\\\\// | awk 'BEGIN{FS="/"}{print $2}'`
cdbname=`grep connection.url runtime.properties | sed s/connection\.url=jdbc\:postgresql\:..// | sed s/\:/\\\\// | awk 'BEGIN{FS="/"}{print $3}'`

