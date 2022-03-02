create database gestion_commerciale
use gestion_commerciale
--------------------------------------------
create table produit(id_produit int primary key,nom varchar(100),qte_stock int)
create table acquisition(id_acquisition int primary key,date_acquisition date,montant float)
create table detail_acquisition(id_acquisition int foreign key references acquisition(id_acquisition),id_produit int foreign key references produit(id_produit),prix_achat float,prix_vente float,qte int)
------------------------------------------------------------------------------------------------------------
create proc AjouterProduit (@id int, @Nom varchar(100), @Qte int)
as
begin

insert into produit values (@id, @Nom, @Qte)

end
---------------------------------------------------------------------------------------------------------

