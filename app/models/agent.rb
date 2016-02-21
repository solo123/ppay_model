class Agent < ActiveRecord::Base
  has_and_belongs_to_many :contacts
  belongs_to :company
  belongs_to :cooperation_type, class_name: 'CodeTable'
  has_many :salesmen

  has_many :bank_cards, as: :bankcard_obj
  has_many :sales_commissions, as: :sales_commission_obj

  has_and_belongs_to_many :bulletin_board_systems

  accepts_nested_attributes_for :company
  accepts_nested_attributes_for :bank_cards
  accepts_nested_attributes_for :sales_commissions
  accepts_nested_attributes_for :contacts

  has_many :clients, through: :salesmen, source: :clients
  has_and_belongs_to_many :contracts

  def profit(amount, trade_sum_name)
    r = 0
    tc = CodeTable.find_code('trade_sum', trade_sum_name)
    if tc
      c = self.contracts.find_by(trade_sum_id: tc)
      r = c.caculate_profit(amount) if c
    end
    r
  end
end
