module ApplicationHelper
  def data_inicio
    (DateTime.now - 100.years).year
  end

  def data_fim
    (DateTime.now - 18.years).year
  end
end
