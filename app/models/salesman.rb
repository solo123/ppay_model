class Salesman < ActiveRecord::Base
  has_many :clients
  belongs_to :agent
  belongs_to :client
  has_and_belongs_to_many :contracts
  has_many :trade_sums, as: :sum_obj

  scope :free_salesmen, -> { where(agent_id: nil) }
	scope :free_client_salesmen, -> { where(client_id: nil) }

  def new_clients
    self.clients_all.where(join_date: Date.current.all_month)
  end
  def to_s
    self.name
  end
end
