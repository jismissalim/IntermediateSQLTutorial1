select *
from SQ_TutorialAlexAnalystYT..EmployeeDemographics

select *
from SQ_TutorialAlexAnalystYT..EmployeeSalary

-- join adalah perintah menggabungkan antar tabel
-- dalam join harus ada kolom yang sama (dalam kasus ini adalah employeeid

select *
from EmployeeDemographics
inner join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeId;
-- inner join menggabungkan semua baris yang ada nilainya
-- syaratnya harus mempunyai nilai kolom yang sama (employeeid)

insert into EmployeeDemographics values
(1011, 'Ryan', 'Howard', 26, 'Male')

insert into EmployeeDemographics (First_Name, Last_Name)
values ('Holly', 'Flax')

insert into EmployeeDemographics (EmployeeID, First_Name, Last_Name, Gender)
values (1013, 'Darryl', 'Philbin', 'Male')
-- pertama kita tambahkan data dulu untuk melakukan pengujian full outer join

select*
from EmployeeDemographics

insert into EmployeeSalary (EmployeeId, Salary)
values (1010, 47000)

insert into EmployeeSalary (Job_Title, Salary)
values ('Salesman', 47000)
-- memasukkan data baru ke tabel employee salary

select *
from EmployeeSalary


select *
from EmployeeDemographics
full outer join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeId;
-- full outer menggabungkan semua baris meskipun tidak ada nilai
-- sehingga ada hasilnya yang null
-- syaratnya harus mempunyai nilai kolom yang sama (employeeid)

select *
from EmployeeDemographics
left outer join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeId;
-- left outer menggabungkan semua baris di tabel kiri meskipun tidak ada nilai 
-- sedangkan pada tabel kanan yang ada null tidak dimasukkan
-- left outer join nama lainnya left join
-- sehingga ada hasilnya yang null
-- syaratnya harus mempunyai nilai kolom yang sama (employeeid)

select *
from EmployeeDemographics
right outer join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeId;
-- right outer menggabungkan semua baris di tabel kanan meskipun tidak ada nilai 
-- sedangkan pada tabel kiri yang ada null tidak dimasukkan
-- right outer join nama lainnya right join
-- sehingga ada hasilnya yang null
-- syaratnya harus mempunyai nilai kolom yang sama (employeeid)

select EmployeeDemographics.EmployeeID, First_Name, Last_Name, Job_Title, Salary
from EmployeeDemographics
inner join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeId;

select EmployeeDemographics.EmployeeID, First_Name, Last_Name, Salary
from EmployeeDemographics
inner join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeId
where First_Name <> 'Michael'
order by salary desc
-- menggabungkan data dengan menggunakan join 
-- where disini menfilterkan data 
-- dalam kasus ini mencari data kolom First_Name <> Michael
-- order by mengurutkan data dlm kasus ini gaji dari desc

select Job_title, avg(salary) as rata2_gaji
from EmployeeDemographics
inner join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeId
where Job_title = 'salesman'
group by job_title
-- melakukan penggabungan dan perhitungan serta perfilteran

