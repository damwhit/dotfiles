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

cohort_1810 = [
  "Adam Niedzwiecki",
  "David Cisneros",
  "Duy Thanh Vu",
  "Dylan Hofmann",
  "Eric Weissman",
  "Gabriel Inzurriaga",
  "Heather Hartley",
  "Jeo D",
  "Justin Duncan",
  "Karin Ohman",
  "Kristen Hallstrom",
  "Mariel Waters",
  "Matthew Foxwell",
  "Niraj Aryal",
  "Sally Haefling",
  "Shannon Moranetz",
  "Tiffany Bachmann",
  "Tim Miller",
  "Tom Wilhoit",
  "Travis Gee",
  "Whitney Burton"
]

s = Cohort.new(cohort_1810)
