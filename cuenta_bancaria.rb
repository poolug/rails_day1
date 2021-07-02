class BankAccount
    attr_accessor :name_user
    attr_reader :vip, :number_account
    def initialize(name_user, number_account, vip = 0)
        if number_account.digits.count != 8
            raise RangeError, "Número de dígitos incorrecto"
        end

        if !(0..1).include? (vip)
            raise RangeError, "Número VIP incorrecto"
        end
        @name_user = name_user
        @number_account = number_account
        @vip = vip
    end
    def account_vip
        "#{self.vip}-#{self.number_account}"
    end
end

results = BankAccount.new("Marcos", 87654321, 1)

puts "Usuario: #{results.name_user}\nCuenta: #{results.account_vip}"