select * from Student

select ClassID,COUNT(studentid)as StuCount 
from Student
group by ClassID


select * from Textbook where isbn like ''