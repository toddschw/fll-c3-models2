class User < ActiveRecord::Base
  belongs_to :code_school
  has_one :profile
  has_many :projects

  scope :active, -> { where(active: true) }
  scope :cohort, ->(number) { where(cohort: number) }
  scope :active_cohort, ->(number) { active.cohort(number) }

  # def self.active
  #   where(active: true)
  # end
  #
  # def self.cohort(number)
  #   where(cohort: number)
  # end

  # def self.current_cohort
  #   # current = Cohort.all.map(&:number).sort.last
  #   # or better yet
  #   current = Cohort.pluck(:number).sort.last
  #   cohort(current)
  # end
end
