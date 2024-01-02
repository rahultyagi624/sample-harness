public class GradeCalculator {
    public static string calculateGrade(Integer marks){
        if(marks>=90 && marks<=100){
            return 'A';
        }
        else if(marks>=80 && marks<90){
            return 'B';
        }
        else if(marks>=70 && marks<80){
            return 'c';
        }
        else if(marks>=60 && marks<70){
            return 'D';
        }
        else if(marks>100){
            return 'Marks cannot be more than 100';
        }
        else{
            return 'F';
        }
        
    }

}