package yantuck.yogaclass.models;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name="yogaclass")
public class Yoga {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @Size(min=1, message="Please input a Class Name")
    private String className;

    @NotNull
    @Size(min=1, message="Please input an Instructor")
    private String instructor;

    @NotNull
    @Size(min=1, message="Please input a weekday")
    private String weekDay;

    @NotNull
    @Min(value=1, message="Price must be greater than 0!")
    private Integer price;


    


    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="user_id")
    private User user;
    
    public Yoga() {
    }


    public Yoga(String classname, String instructor, String weekday, Integer price) {
        this.className = classname;
        this.instructor = instructor;
        this.weekDay = weekday;
        this.price = price;
    }



    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getClassName() {
        return this.className;
    }

    public void setClassName(String classname) {
        this.className = classname;
    }

    public String getInstructor() {
        return this.instructor;
    }

    public void setInstructor(String instructor) {
        this.instructor = instructor;
    }

    public String getWeekDay() {
        return this.weekDay;
    }

    public void setWeekDay(String weekday) {
        this.weekDay = weekday;
    }

    public User getUser() {
        return this.user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getPrice() {
        return this.price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }


    
}
