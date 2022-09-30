**free

       dcl-proc FnFormatoFecha Export;  
           dcl-pi *n like(wFechaT);
                 InDate Date(*ISO) Const;

           end-pi;
              //process
              
         
            wFecha = %Char(InDate:*Iso0);

            Return wFecha;
       end-proc; 

        dcl-proc FnFormatoTiempo Export;  
           dcl-pi *n like(wTiempoT);
                 InTiem Time(*ISO) Const;
           end-pi;
 
              //process
         
            wTime = %Char(InTime:*hms);

            Return wTime;

         end-proc;    