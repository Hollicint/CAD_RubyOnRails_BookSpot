# README

<h2> Book Spot </h2>

- What is Book Spot
Book Spot is a location that a user can upload their most recently read books and leave notes as a reminder or to others who see their account their thoughts on the book. <br>
There is also  page that the user can store their Next Book to read, so what is on their book list next. They can fill in the form and leave a status on if they bough it or need to and a note section for further details

<h2> Programme </h2>
Book Spot is a Ruby on Rails Framework

<h3> Design Pattern </h3>
Repository Design Pattern <br>
base_repository - Main Template of the design = Super Class <br>
book_repository - Sub Class - calls Base class which  initializes in the Controller <br>
next_book_repository - Sub Class - calls Base class which  initializes in the Controller <br>

![image](https://github.com/user-attachments/assets/c7981205-7f49-4f85-95d3-6cec151f2656)


<h3> CICD </h3 

![image](https://github.com/user-attachments/assets/c2c1c74a-ec49-4377-b58a-372f9115dd3b)
![image](https://github.com/user-attachments/assets/75bbc369-06d2-4543-9ee3-19b225e14324)


<h2> Deployment</h2>
<h4> Heroku </h4> 
Currently does not work

https://cad-rubyonrails-bookspot-7b43e41c5d8a.herokuapp.com/

![image](https://github.com/user-attachments/assets/389fb112-e95d-4e50-ba48-6c0c7a1e43b2)

Currently run on localhost via rails s in cmd 

<h2> Testing </h2>
Steps

rails db:migrate RAILS_ENV=test - created Testing environment <br>
rails test  - Run all the test at once <br>
rails test:models  - run just the models test <br>
rails test:controllers - run just the controllers test <br>


<h3> Unit Testing </h3>
Testing is done on the Models Test section

![image](https://github.com/user-attachments/assets/dd8edc0c-9fb6-4673-ba31-7311228652ae)


<h3> Functional Testing </h3>
Testing is done on the Controller Test section

![image](https://github.com/user-attachments/assets/e8c2b832-33f8-41cf-aba1-15e94642a49e)


<h2> Site layout </h2>
<h3> home/index </h3>
<p>User can click Navbar & Footer Links to move around the site </p>

![image](https://github.com/user-attachments/assets/003667b3-43f7-4607-aa4c-3d4779aa9e46)

![image](https://github.com/user-attachments/assets/c8f496cf-dec1-4a58-8f40-c70d7236b3b1)

<h3> Add Book </h3>
<p>User is presented with a form to complete for the most recent read book </p>

![image](https://github.com/user-attachments/assets/be4080d2-9c0e-4bde-9da3-8b8d198c4a3e)

<h3> Book Collection </h3>
<p>User can view all the books they have read, they can click on them to view them individually and then have the option to Edit or Delete the book </p>

![image](https://github.com/user-attachments/assets/aecc401e-230e-4b30-b518-f1f9502bcf98)

![image](https://github.com/user-attachments/assets/9ebc05f2-ebe5-4345-846b-94d4527c57f7)

![image](https://github.com/user-attachments/assets/f25bbad6-784c-47af-b6a6-15992fe33186)

<h3> Need to read Books</h3>
<p>User is able to add a book that is on their for future reading, they can leave a status on if they bought it or need to and then they can leave a note with further details </p>

![image](https://github.com/user-attachments/assets/ac31b7b8-9298-4129-9774-13287f423fd6)

<h3> Contact Page</h3>
<p>User can complete a form to leave a note or comment to the staff </p>


![image](https://github.com/user-attachments/assets/5908b540-bc10-4d6a-bcde-dd04d04ce29f)

<h2>Credit</h2>
<p>HOLLY DOWLING : X21150117 - x21150117@student.ncirl.ie
</p>
