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

cohort_2010 = [
  'Alia Peterson',
  'Allison Dietz',
  'Alice Ruppert',
  'Ben Prat',
  'Boone Epstein',
  'Brian Forbes',
  'Cameron Aragon',
  'Chris Spohn',
  'Christina Cook',
  'Connie Hong',
  'Cole Fiscus',
  'Drew Bradley',
  'Elsa Fluss',
  'Eric Campbell',
  'Gabrielle Joyce',
  'Jeff Kersting',
  'Kelly Dinneen',
  'Kelsie Besinger',
  'Kevin Hartmann',
  'Kristen Bair',
  'Lucas Merchant',
  'Luke Mason',
  'Matthew Dean',
  'Max Bregman',
  'Rachel Buchta',
  'Richard Tyler',
  'Tashia Davis',
  'Thao Ma',
]


s = Cohort.new(cohort_2010)
