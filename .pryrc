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

cohort_1808 = [
  "Ashley Levi",
  "Ashton Bailey",
  "Cole Vanacore",
  "Cody Price",
  "Derek Hanciles",
  "Jake Lauer",
  "Jamie Rushford",
  "Joel Smith",
  "Justin Torrance",
  "Kaylee Bunce",
  "Kylie Stanley",
  "Loryn Mason",
  "Mike Duke",
  "Sarah Ebbers",
  "Tanj McMeans",
]

s = Cohort.new(cohort_1808)
