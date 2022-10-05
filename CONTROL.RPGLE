**free
      
      /copy COPY

      dcl-pr prEntrada;
        parNombre like (wNombreT);
        parId like(wIdT);
      end-pr;

    dcl-proc prEntrada Export;
        dcl-pi *n;
          InNombre like (wNombreT) Const;
          InId like(wIdT) Const;
          OutMsgId like(wMsgId);
        end-pi;

        //structures

        dcl-Ds DsUsuario likeDs(DsUsuarioT);

        //- Process

        DsUsuario.Nombre = InNombre;
        DsUsuario.Id = InId;
        DsUsuario.Fecha = FnFormatoFecha(%Date());
        DsUsuario.Tiempo = FnFormatoTiempo(%Time());

        PrInsertar(DsUsuario);
        
    End-proc             
