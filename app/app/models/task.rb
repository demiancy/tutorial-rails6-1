class Task < ApplicationRecord
  belongs_to :project

  validates :status, inclusion: { in: ['not-started', 'in-progress', 'complete'] }

  STATUS_OPTIONS = [
    ['Not started', 'not-started'],
    ['In progress', 'in-progress'],
    ['Complete', 'complete']
  ]

  STATUS_COLORS = { 
    'not-started' => 'secondary', 
    'in-progress' => 'info' ,
    'complete'    => 'success'
  }

  STATUS_READABLE = { 
    'not-started' => 'Not started', 
    'in-progress' => 'In progress' ,
    'complete'    => 'Complete'
  }

  def color_class
    STATUS_COLORS[status]
  end

  def readable_status
    STATUS_READABLE[status]
  end

  def complete?
    status == 'complete'
  end

  def not_started?
    status == 'not-started'
  end

  def in_progress?
    status == 'in-progress'
  end
end
