# a class is composed of methods and variables.  
# Variables can keep track of differnt states and values inside of a class.


class Name
    attr_reader :title, :first_name, :middle_name, :last_name
    attr_writer #writer allows data to be written over
    attr_accessor :title, :first_name, :middle_name, :last_name #accessor does both read and write
    def initialize(title, first_name, middle_name,last_name)
        @title = title
        @first_name = first_name
        @middle_name = middle_name
        @last_name = last_name
    end

    def full_name
        @first_name + " " + @middle_name +  " " + @last_name
    end

    def full_name_with_title
        @title +  " " + full_name()
    end

    def to_s
        full_name_with_title
    end

end

name = Name.new("Mr.","John", "D.", "Leavell")
puts name.title
puts name.first_name
puts name.middle_name
puts name.last_name
puts name.full_name
puts name.full_name_with_title