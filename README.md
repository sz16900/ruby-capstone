# CSS Linter

A beginner's CSS linter that checks for basic css rules: brackets, colon and semi colon inner structure. This is in part of the second Capstone project for the Microverse Full Stack Web Development curriculum. 
---

## Built With

- Ruby
- Rubocop
- Gem
- VS Code

---

## Screenshots

  ### Faulty CSS missing colon:
![Faulty CSS missing colon](https://github.com/sz16900/ruby-capstone/blob/readme/screenshots/bcss.png?raw=true)

  ### Faulty CSS missing colon warning in the console:
![Warning](https://github.com/sz16900/ruby-capstone/blob/readme/screenshots/brackets.png?raw=true)

## Pre-requisites

  <a href="https://www.ruby-lang.org/en/documentation/installation/">Ruby must be installed in your computer.</a>

---


## Installing Linter

When you have installed Ruby on your computer, clone the project. You can do this by first opening the terminal.

* Verify Ruby is installed on your computer.
* Open up your terminal.
* Clone the project to your computer. You can do this by typing: <b>git clone https://github.com/sz16900/ruby-capstone.git</b>
* Go to main folder: cd ruby-capstone
* Run linter by typing: bin/main.rb
* PRO TIP: make sure you have a .css file in the root directory (+2 files feauture scan coming soon!)
* Enjoy!

---

## Error List And Example:

* ## Unclosed Bracket
  
    - Bad Code
    ```css
    header {
      clear: both;
      width: 980px;
      height: 335px;
      margin: 100px auto;

    ```
    - Good Code
    ```css
    header {
      clear: both;
      width: 980px;
      height: 335px;
      margin: 100px auto;
    }
    ```

* ## Space Warning

    - Bad Code
    ```css
    header {
      clear: both;
     width: 980px;
      height: 335px;
      margin: 100px auto;
    }
    ```
    - Good Code
    ```css
    header {
      clear: both;
      width: 980px;
      height: 335px;
      margin: 100px auto;
    }
    ```

* ## Colon Error

    - Bad Code
    ```css
    header {
      clear: both;
      width: 980px;
      height 335px;
      margin: 100px auto;
    }
    ```
    - Good Code
    ```css
    header {
      clear: both;
      width: 980px;
      height: 335px;
      margin: 100px auto;
    }
    ```
* ## Semi-Colon Error

    - Bad Code
    ```css
    header {
      clear: both;
      width: 980px
      height 335px;
      margin: 100px auto;
    }
    ```
    - Good Code
    ```css
    header {
      clear: both;
      width: 980px;
      height: 335px;
      margin: 100px auto;
    }
    ```
---

## Features

As far as this version release of my linter, this program will check the following issues:

    • opening and closing brackets
      
    • indentation: makes sure that code inside the brackets has a space of 4
    
    • checks code inside brackets follows colon and semi-colon rules
      
    • will throw an error if code does not follow basic linting rules: i.e do not start new lines with empty speces
    

---

## Authors

👤 **Seth Zea**

- Github: [@sz16900](https://github.com/sz16900)
- Twitter: [@_sethzea_](https://twitter.com/_sethzea_)
- Linkedin: [Linkedin](https://www.linkedin.com/in/seth-zea/)

---

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- [Microverse](https://microverse.org)

---

## 📝 License

This project is [MIT](/LICENSE) licensed.

---
