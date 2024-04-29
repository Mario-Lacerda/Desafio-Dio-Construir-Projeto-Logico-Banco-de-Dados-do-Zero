use oficina;
show tables;

-- Recuperação simples com select, filtro where;
select concat(c.Fname,' ',c.Lname) as nome_completo, v.plate as placa_carro   
	from client c, vehicle v
		where c.idClient = v.idClient_Vehicle;

-- Atributos derivados;
select sum(o.PartsPrice) as valor_atual_pecas 
	from orders o;
    
select count(p.Parts) as quantidade_pecas_compradas
	from partslist p;
    
-- Defina ordenações dos dados com Order by;
select o.OrderType as tipo_serviço, v.typeVehicle as tipo_veiculo
	from orders o, vehicle v
		where o.idOrder = v.idVehicle
			group by o.orderType, v.typeVehicle
				order by o.orderType;

-- Condições de filtros - Having statement;
select quantity
	from partslist
		group by quantity having 1;

-- Join entre tabelas;
select e.NameEmployee as nome_funcionario, o.OrderType
	from employees e inner join orders o
		on e.idEmployee = o.idOrder_employees;