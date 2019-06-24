class Cohort
  attr_reader :students,
              :responders

  def initialize(students)
    @students = students
  end

  def pair
    s = students.dup.shuffle
    pairs = ""

    s.each_with_index do |student, n|
      if n % 2 == 0
        pairs += "#{student}"
      else
        pairs += " & #{student}\n"
      end
    end
    puts pairs
  end

  def pop
    @responders = students.dup if responders == [] || responders == nil
    responders.shuffle!.pop
  end
end

cohort_1811 = [
  "David Cisneros",
  "Elizabeth Asbell",
  "Edgar Eloy Munoz",
  "Eric Fitzsimons",
  "Gabriel Inzurriaga",
  "Isaac Sunoo",
  "Jacob Admire",
  "Jessica Hansen",
  "Justin Torrance",
  "Kimberly Myers",
  "Mason France",
  "Michael Krog",
  "Taylor Sperry",
  "Tom Wilhoit",
]


s = Cohort.new(cohort_1811)
