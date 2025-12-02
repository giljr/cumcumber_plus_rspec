# Todos

A simple project to demonstrate testing with **Cucumber** and **RSpec**.

---

#### 📥 Clone the Project

```sh
git clone git@github.com:giljr/cumcumber_plus_rspec.git
cd cumcumber_plus_rspec
```
#### 🧱 Rails 3.4.5
```sh

rbenv install --list-all | grep 3.4.5
rbenv install 3.4.5
```
bundle install

#### 🧪 Run the Tests
##### RSpec
```sh
bin/rspec spec/system/todos_spec.rb -fd
```
##### Cucumber
```
bin/cucumber
```

##### Type in the terminal:
```
cucumber --publish
```
And follow the link for report.

#### 📘 Tutorial

[Cucumber + RSpec: Tests That Speak and Tests That Guarantee](https://medium.com/jungletronics/cucumber-rspec-tests-that-speak-and-tests-that-guarantee-7b802c6a26d8) - 
From specification to automated testing without friction

Happy coding and happy testing!