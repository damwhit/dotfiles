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
  "Adam Niedzwiecki",
  "Ashley Levi",
  "Chris Meyer",
  "Cody Price",
  "David Cisneros",
  "Libby Yeh",
  "Eric Fitzsimmons",
  "Hillary Stewart",
  "Jake Lauer",
  "Jamie Rushford",
  "Justin Torrance",
  "Kaylee Bunce",
  "Kristen Hallstrom",
  "Kylie Stanley",
  "Lindsey Wilhite",
  "Loryn Mason",
  "Mariel Waters",
  "Matt Franzen",
  "Mike Duke",
  "Elly Torres",
  "Cole Vanacore",
  "Paul Vangelakos",
  "Sabrin Nasreddin",
  "Theo Bean"
]

s = Cohort.new(cohort_1808)
