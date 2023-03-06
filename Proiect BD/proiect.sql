

select jucator1, jucator2
from meci
where id_meci = (select id_meci
                from participa
                where rezultat = (select id_jucator
                                    from jucator
                                    where salariu_jucator = (select min(salariu_jucator)
                                                             from jucator)));
                                                             
                                         