module Manufacturer

    def show_company
      self.company
    end

    def set_company(company)
      self.company = company 
    end
#чтобы экземпляры класса не могли напрямую менять компанию, только через методы модуля
  protected
    attr_reader :company
  private
    attr_writer :company
end