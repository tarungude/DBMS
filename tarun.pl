SET SERVEROUTPUT ON;
DECLARE
  student VARCHAR(30) := 'John Doe';
  grade VARCHAR(10) := 'B';
  marks NUMBER := &marks;
BEGIN
  dbms_output.put_line('Student name: ' || student); 
  dbms_output.put_line('Marks: ' || marks); 

  IF marks >= 90 THEN
    dbms_output.put_line('Grade: A' || grade); 
  ELSIF marks >= 75 AND marks <= 89 THEN
    dbms_output.put_line('Grade: B' || grade); 
  ELSE
    dbms_output.put_line('Grade: C' || grade);
  END IF;

  IF grade = 'A' THEN 
    dbms_output.put_line('Reward: Excellent');
  ELSIF grade = 'B' THEN  
    dbms_output.put_line('Reward: Good');
  ELSE   
    dbms_output.put_line('Reward: Needs Improvement');
  END IF;
END;