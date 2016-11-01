class Conta
  attr_reader :numero, :nome, :saldo, :limite

  def initialize(params)
    @numero = params[:numero]
    @nome = params[:nome]
    @saldo = params[:saldo]
    @limite = params[:limite]
  end

  def sacar(saque)
    return false if saque > saldo + limite
    self.saldo -= saque
  end

  def depositar(deposito)
    self.saldo += deposito
  end

  def no_limite?
    saldo
  end

  def ==(conta)
    numero == conta.numero &&
    nome == conta.nome &&
    saldo == conta.saldo &&
    limite == conta.limite
  end

  private

  attr_writer :saldo
end
