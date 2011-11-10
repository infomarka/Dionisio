class Evento < ActiveRecord::Base
  belongs_to :user

  validates :titulo , :local, :data_inicio, :presence => true
  validate :validar_promoter

  before_save :definir_data_fim
  
  def definir_data_fim
    if self.data_fim.nil?
      self.data_fim = self.data_inicio.at_midnight + 1.day
    end
  end

  def validar_promoter
    #self.user ||= User.find self.user_id
    errors.add(:user, :promoter) unless self.user.promoter?
  end

end
