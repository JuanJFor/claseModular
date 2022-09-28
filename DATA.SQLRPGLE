**free

       dcl-proc prInsertar Export;  
           dcl-pi *n ;

                 InUsuario likeDs(dsUsuarioT);

           end-pi;

              //process
               Exec SQL
             Insert Into USUARIO values(:InUsuario);

           return;
       end-proc;            