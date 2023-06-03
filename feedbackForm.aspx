<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedbackForm.aspx.cs" Inherits="feedbackForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>Feedback Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }

        .name-group {
    display: flex;
}

.name-group input[type="text"] {
    width: 50%;
    margin-right: 10px;
}

.subject-schedule-group,
.room-year-group {
    display: flex;
}

.subject-schedule-group input[type="text"],
.room-year-group input[type="text"] {
    width: 50%;
    margin-right: 10px;
}


        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            text-align: left;
            color: #316b96;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        .form-group input[type="text"],
        .form-group textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .form-group textarea {
            height: 100px;
        }

        .form-group .comment {
            font-style: italic;
            font-size: 12px;
            margin-top: 5px;
        }

        .form-group .radio-group label {
            display: inline-block;
            margin-right: 10px;
        }

        .form-group .radio-group input[type="radio"] {
            margin-right: 5px;
        }

        h1 {
    font-size: 24px;
  }

        .form-group .radio-group .radio-label {
            font-weight: normal;
        }

        .form-group .rating-group {
            display: flex;
            align-items: center;
            margin-top: 10px;
        }

        .form-group .rating-group label {
            margin-right: 10px;
        }

        .form-group .rating-group input[type="radio"] {
            margin-right: 5px;
        }

        .form-group .rating-group .radio-label {
            font-weight: normal;
        }

        .form-group .percentage {
            font-weight: bold;
            margin-top: 10px;
        }

        .form-group .comments {
            margin-top: 20px;
        }

        .form-group .comments textarea {
            height: 150px;
        }

        .form-group .submit-button {
            text-align: center;
        }

        .form-group .submit-button button {
            padding: 10px 20px;
            background-color: #4caf50;
            color: #ffffff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Feedback Form</h1>
        <form>
            <div class="form-group">

             <label for="name">Date:</label>
    <div class="name-group">
        <input type="text" id="Date" name="Date" required />
        <br />
    </div>
    <label for="name">Teacher's Name:</label>
    <div class="name-group">
        <input type="text" id="firstName" name="firstName" required>
        <input type="text" id="lastName" name="lastName" required>
    </div>
</div>
<div class="form-group">
    <label for="subjectSchedule">Subject:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Schedule:</label>
    <div class="subject-schedule-group">
        <input type="text" id="subject" name="subject" required>
        <input type="text" id="schedule" name="schedule" required>
    </div>
</div>
<div class="form-group">
    <label for="roomYear">Room Number:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; School Year:</label>
    <div class="room-year-group">
        <input type="text" id="room" name="room" required>
        <input type="text" id="year" name="year" required>
    </div>
</div>
             <p>Please fill out the form in evaluating your instructor for the semester. After completion, please press the submit button.</p>
             <p>For reference, the metric are as follows:</p>
             <p>1  - Poor</p>
             <p>2 - Below Average</p>
             <p>3 - Average</p>
             <p>4 - Good</p>
             <p>5 - Excellent</p>
       
 <div class="tabular">
     <table style="background-color: lightgrey;">
     
        <tr>
            <h1>Appearance and personal presentation</h1>

            <td>Teacher attends class in a well presentable manner</td>
            <td>
                <select name="rating1" id="rating1">
                    <option value="5">5</option>
                    <option value="4">4</option>
                    <option value="3">3</option>
                    <option value="2">2</option>
                    <option value="1">1</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Teacher shows enthusiasm when teaching in class</td>
            <td>
                <select name="rating2" id="rating2">
                    <option value="5">5</option>
                    <option value="4">4</option>
                    <option value="3">3</option>
                    <option value="2">2</option>
                    <option value="1">1</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Teacher shows initiative and flexibility in teaching</td>
            <td>
                <select name="rating3" id="rating3">
                    <option value="5">5</option>
                    <option value="4">4</option>
                    <option value="3">3</option>
                    <option value="2">2</option>
                    <option value="1">1</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Teacher is well articulated and shows full knowledge of the subject in teaching</td>
            <td>
                <select name="rating4" id="rating4">
                    <option value="5">5</option>
                    <option value="4">4</option>
                    <option value="3">3</option>
                    <option value="2">2</option>
                    <option value="1">1</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Teacher speaks loud and clear enough to be heard by the whole class</td>
            <td>
                <select name="rating5" id="rating5">
                    <option value="5">5</option>
                    <option value="4">4</option>
                    <option value="3">3</option>
                    <option value="2">2</option>
                    <option value="1">1</option>
                </select>
            </td>
        </tr>
        <tr>
        </tr>
         
        <tr>
        </tr>

    </table>
</div>

<div class="tabular">
       <table style="background-color: lightgrey;">
     
        <tr>
             <h1>Professional Practices</h1>

            <td>Teacher shows professionalism in class</td>
            <td>
                <select name="rating1" id="rating1">
                    <option value="5">5</option>
                    <option value="4">4</option>
                    <option value="3">3</option>
                    <option value="2">2</option>
                    <option value="1">1</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Teacher shows commitment to teaching the class</td>
            <td>
                <select name="rating2" id="rating2">
                    <option value="5">5</option>
                    <option value="4">4</option>
                    <option value="3">3</option>
                    <option value="2">2</option>
                    <option value="1">1</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Teacher encourages students to engage in class discussions and ask questions</td>
            <td>
                <select name="rating3" id="rating3">
                    <option value="5">5</option>
                    <option value="4">4</option>
                    <option value="3">3</option>
                    <option value="2">2</option>
                    <option value="1">1</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Teacher handles criticisms and suggestions professionally</td>
            <td>
                <select name="rating4" id="rating4">
                    <option value="5">5</option>
                    <option value="4">4</option>
                    <option value="3">3</option>
                    <option value="2">2</option>
                    <option value="1">1</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Teacher comes to class on time</td>
            <td>
                <select name="rating5" id="rating5">
                    <option value="5">5</option>
                    <option value="4">4</option>
                    <option value="3">3</option>
                    <option value="2">2</option>
                    <option value="1">1</option>
                </select>
            </td>
        </tr>

         <tr>
            <td>Teacher ends class on time</td>
            <td>
                <select name="rating5" id="rating5">
                    <option value="5">5</option>
                    <option value="4">4</option>
                    <option value="3">3</option>
                    <option value="2">2</option>
                    <option value="1">1</option>
                </select>
            </td>
        </tr>

    </table>
</div>

<div class="tabular">
      <table style="background-color: lightgrey;">
        <tr>
             <h1>Teaching Methods</h1>

            <td>Teacher shows well rounded knowledge over the subject matter</td>
            <td>
                <select name="rating1" id="rating1">
                    <option value="5">5</option>
                    <option value="4">4</option>
                    <option value="3">3</option>
                    <option value="2">2</option>
                    <option value="1">1</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Teacher has organized the lesson conducive for easy understanding of students</td>
            <td>
                <select name="rating2" id="rating2">
                    <option value="5">5</option>
                    <option value="4">4</option>
                    <option value="3">3</option>
                    <option value="2">2</option>
                    <option value="1">1</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Teacher shows dynamism and enthusiasm</td>
            <td>
                <select name="rating3" id="rating3">
                    <option value="5">5</option>
                    <option value="4">4</option>
                    <option value="3">3</option>
                    <option value="2">2</option>
                    <option value="1">1</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Teacher stimulates the critical thinking of students</td>
            <td>
                <select name="rating4" id="rating4">
                    <option value="5">5</option>
                    <option value="4">4</option>
                    <option value="3">3</option>
                    <option value="2">2</option>
                    <option value="1">1</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Teacher handles the class environment conducive for learning</td>
            <td>
                <select name="rating5" id="rating5">
                    <option value="5">5</option>
                    <option value="4">4</option>
                    <option value="3">3</option>
                    <option value="2">2</option>
                    <option value="1">1</option>
                </select>
            </td>
        </tr>


    </table>
</div>


            
<div class="tabular">
       <table style="background-color: lightgrey;">
        <tr>
             <h1>Disposition Towards Students</h1>

            <td>Teacher believes that students can learn from the class</td>
            <td>
                <select name="rating1" id="rating1">
                    <option value="5">5</option>
                    <option value="4">4</option>
                    <option value="3">3</option>
                    <option value="2">2</option>
                    <option value="1">1</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Teacher shows equal respect to various cultural backgrounds, individuals, religion, and race</td>
            <td>
                <select name="rating2" id="rating2">
                    <option value="5">5</option>
                    <option value="4">4</option>
                    <option value="3">3</option>
                    <option value="2">2</option>
                    <option value="1">1</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Teacher finds the students strengths as basis for growth and weaknesses for opportunities for improvement</td>
            <td>
                <select name="rating3" id="rating3">
                    <option value="5">5</option>
                    <option value="4">4</option>
                    <option value="3">3</option>
                    <option value="2">2</option>
                    <option value="1">1</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Teacher understands the weakness of a student and helps in the student's improvement</td>
            <td>
                <select name="rating5" id="rating5">
                    <option value="5">5</option>
                    <option value="4">4</option>
                    <option value="3">3</option>
                    <option value="2">2</option>
                    <option value="1">1</option>
                </select>
            </td>
        </tr>

  <form method="post" action="feedbackForm.aspx.cs">
  <!-- form inputs and other elements -->
  <div class="form-group submit-button">
    <button type="Submit">Submit</button>
  </div>
</form>
    </table>
</div>
<div class="form-group">
<label for="comments">Comments:</label>
<textarea id="comments" name="comments"></textarea>
</div>
<div class="form-group">
<div class="submit-button">
<button type="submit">Submit</button>
</div>
</div>
</form>
</div>
<script>
    // Calculate the percentage and display it
    function calculatePercentage() {
        const questionValues = [5, 5, 5, 5, 5]; // Array of question values
        let total = 0;
        for (let i = 0; i < questionValues.length; i++) {
            const questionValue = parseFloat(document.querySelector(`input[name="question${i + 1}"]:checked`).value);
            total += questionValue;
        }

        const percentage = (total / (questionValues.length * 5)) * 100;
        document.querySelector('.percentage').textContent = `Percentage: ${percentage.toFixed(2)}%`;
    }

    // Attach the calculatePercentage function to the form submission event
    document.querySelector('form').addEventListener('submit', function (event) {
        event.preventDefault(); // Prevent form submission

        calculatePercentage(); // Calculate the percentage

        // Display the feedback and percentage to the faculty member
        const name = document.querySelector('#name').value;
        const email = document.querySelector('#email').value;
        const feedback = document.querySelector('#feedback').value;
        const satisfaction = document.querySelector('input[name="satisfaction"]:checked').value;
        const comments = document.querySelector('#comments').value;

        const feedbackMessage = `
            Name: ${name}
            Email: ${email}
            Feedback: ${feedback}
            Overall Satisfaction: ${satisfaction}
            Percentage: ${percentage.toFixed(2)}%
            Comments: ${comments}
        `;

        alert(`Faculty Feedback:\n\n${feedbackMessage}`);
        this.reset(); // Reset the form
    });
</script>
</body>
</html>


